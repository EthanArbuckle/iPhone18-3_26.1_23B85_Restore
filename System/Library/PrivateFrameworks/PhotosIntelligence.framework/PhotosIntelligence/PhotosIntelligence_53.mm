uint64_t sub_1C7351EAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v57 = v1;
  if (v1)
  {
    v67 = MEMORY[0x1E69E7CC0];
    sub_1C716D5B0(0, v1, 0);
    v2 = v67;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v7 = *(v67 + 16);
      v6 = *(v67 + 24);
      v8 = v7 + 1;
      sub_1C75504FC();
      if (v7 >= v6 >> 1)
      {
        sub_1C716D5B0((v6 > 1), v7 + 1, 1);
      }

      *(v67 + 16) = v8;
      *(v67 + 8 * v7 + 32) = v5;
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v8 = *(MEMORY[0x1E69E7CC0] + 16);
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v8 == v9)
    {

      sub_1C73529C8();
      if (!v63)
      {
        v19 = v18;

        v64 = sub_1C6FB6304();
        v20 = 0;
        v61 = v19 & 0xC000000000000001;
        v21 = MEMORY[0x1E69E7CC8];
        v58 = v19;
        v60 = v19 & 0xFFFFFFFFFFFFFF8;
        while (v64 != v20)
        {
          if (v61)
          {
            v22 = MEMORY[0x1CCA5DDD0](v20, v19);
          }

          else
          {
            if (v20 >= *(v60 + 16))
            {
              goto LABEL_67;
            }

            v22 = *(v19 + 8 * v20 + 32);
          }

          v23 = v22;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_66;
          }

          v24 = sub_1C70CAC04(v22);
          if (!v25)
          {
            goto LABEL_70;
          }

          v26 = v24;
          v27 = v25;
          v28 = v23;
          swift_isUniquelyReferenced_nonNull_native();
          v29 = sub_1C6F78124(v26, v27);
          if (__OFADD__(v21[2], (v30 & 1) == 0))
          {
            goto LABEL_68;
          }

          v31 = v29;
          v32 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188);
          if (sub_1C7551A2C())
          {
            v33 = sub_1C6F78124(v26, v27);
            if ((v32 & 1) != (v34 & 1))
            {
              goto LABEL_71;
            }

            v31 = v33;
          }

          if (v32)
          {

            v35 = v21[7];
            v36 = *(v35 + 8 * v31);
            *(v35 + 8 * v31) = v28;
          }

          else
          {
            v21[(v31 >> 6) + 8] |= 1 << v31;
            v37 = (v21[6] + 16 * v31);
            *v37 = v26;
            v37[1] = v27;
            *(v21[7] + 8 * v31) = v28;

            v38 = v21[2];
            v16 = __OFADD__(v38, 1);
            v39 = v38 + 1;
            if (v16)
            {
              goto LABEL_69;
            }

            v21[2] = v39;
          }

          ++v20;
          v19 = v58;
        }

        if (!v57)
        {

          return MEMORY[0x1E69E7CC0];
        }

        v68 = MEMORY[0x1E69E7CC0];
        sub_1C716E0A0();
        v40 = 0;
        v8 = v68;
        v59 = a1 + 32;
        do
        {
          v65 = v40 + 1;
          v41 = MEMORY[0x1E69E7CC0];
          v66 = MEMORY[0x1E69E7CC0];
          v42 = *(v59 + 16 * v40 + 8);
          v43 = *(v42 + 16);
          v62 = *(v59 + 16 * v40);
          sub_1C75504FC();
          sub_1C75504FC();
          v44 = 0;
          v45 = v42 + 40;
LABEL_44:
          v46 = (v45 + 16 * v44);
          while (v43 != v44)
          {
            if (v44 >= *(v42 + 16))
            {
              __break(1u);
              goto LABEL_61;
            }

            if (v21[2])
            {
              v47 = *(v46 - 1);
              v48 = *v46;
              sub_1C75504FC();
              v49 = sub_1C6F78124(v47, v48);
              if (v50)
              {
                v51 = *(v21[7] + 8 * v49);

                MEMORY[0x1CCA5D040](v52);
                if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1C7550B9C();
                }

                ++v44;
                sub_1C7550BEC();
                v41 = v66;
                v45 = v42 + 40;
                goto LABEL_44;
              }
            }

            v46 += 2;
            ++v44;
          }

          v53 = *(v68 + 16);
          if (v53 >= *(v68 + 24) >> 1)
          {
            sub_1C716E0A0();
          }

          *(v68 + 16) = v53 + 1;
          v54 = v68 + 24 * v53;
          *(v54 + 32) = v62;
          *(v54 + 48) = v41;
          v40 = v65;
        }

        while (v65 != v57);
      }

      return v8;
    }

    if (v9 >= *(v2 + 16))
    {
      break;
    }

    v11 = *(v2 + 8 * v9 + 32);
    v12 = *(v11 + 16);
    v13 = *(v10 + 16);
    if (__OFADD__(v13, v12))
    {
      goto LABEL_62;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v13 + v12 > *(v10 + 24) >> 1)
    {
      sub_1C6FB1814();
      v10 = v14;
    }

    if (*(v11 + 16))
    {
      if ((*(v10 + 24) >> 1) - *(v10 + 16) < v12)
      {
        goto LABEL_64;
      }

      swift_arrayInitWithCopy();

      if (v12)
      {
        v15 = *(v10 + 16);
        v16 = __OFADD__(v15, v12);
        v17 = v15 + v12;
        if (v16)
        {
          goto LABEL_65;
        }

        *(v10 + 16) = v17;
      }
    }

    else
    {

      if (v12)
      {
        goto LABEL_63;
      }
    }

    ++v9;
  }

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
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t PersonalTraitEntityNetDataSource.personalTraitBySceneIdentifier(clusterRepresentativeAssets:clusterAssetUUIDs:)(uint64_t a1, uint64_t a2)
{
  v71 = type metadata accessor for PersonalTrait();
  OUTLINED_FUNCTION_3_0();
  v68 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_2();
  v66 = v7;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v8);
  v65 = (&v61 - v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A18);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v61 - v11;
  v12 = sub_1C7352D80(a1);
  v63 = *(a2 + 16);
  v64 = a2;
  v62 = sub_1C6FB6304();
  v13 = *(v2 + 176);
  v14 = v12;
  v15 = v13 * v62;
  v16 = v12 + 64;
  v17 = 1 << *(v12 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v12 + 64);
  v20 = (v17 + 63) >> 6;
  sub_1C75504FC();
  v21 = 0;
  v73 = MEMORY[0x1E69E7CC8];
  *&v22 = 134217984;
  v67 = v22;
  v69 = v12;
  while (v19)
  {
LABEL_9:
    v24 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = (v21 << 9) | (8 * v24);
    v26 = *(*(v14 + 56) + v25);
    if (v15 <= v26)
    {
      v27 = *(*(v14 + 48) + v25);
      v28 = sub_1C7355C00(v27);
      if (!v29)
      {
        goto LABEL_18;
      }

      v30 = v28;
      v31 = v29;
      v72 = v27;
      v32 = [v27 extendedSceneClassId];
      v33 = v32;
      v34 = v73;
      if (v73[2] && (sub_1C6FCABD0(v32), v34 = v73, (v35 & 1) != 0))
      {
        OUTLINED_FUNCTION_2_100();
        v36 = v70;
        sub_1C7355E5C(v37, v70);
        __swift_storeEnumTagSinglePayload(v36, 0, 1, v71);

        sub_1C6FD7FC8(v36, &qword_1EC217A18);
        if (qword_1EDD07960 != -1)
        {
          OUTLINED_FUNCTION_18_53();
          swift_once();
        }

        v38 = sub_1C754FF1C();
        __swift_project_value_buffer(v38, qword_1EDD07968);
        v39 = sub_1C754FEEC();
        v40 = sub_1C755119C();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = v67;
          *(v41 + 4) = v33;
          _os_log_impl(&dword_1C6F5C000, v39, v40, "Encountered multiple sceneNodes for scene identifier %llu", v41, 0xCu);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        v14 = v69;
        v27 = v72;
LABEL_18:
      }

      else
      {
        __swift_storeEnumTagSinglePayload(v70, 1, 1, v71);
        sub_1C6FD7FC8(v70, &qword_1EC217A18);
        v42 = static PersonalTraitScorer.calculateEntityNetScoreForCluster(clusterSize:numberOfRepresentativeAssetsWithTrait:numberOfRepresentativeAssetsForCluster:)(v63, v26, v62);
        v43 = v64;
        v44 = v65;
        *v65 = v30;
        v44[1] = v31;
        v44[2] = v43;
        v45 = v71;
        *(v44 + v71[7]) = 1;
        v46 = v44 + v45[8];
        *v46 = v33;
        *(v46 + 1) = 0;
        v46[16] = 0;
        *(v44 + v45[9]) = v42;
        *(v44 + v45[10]) = MEMORY[0x1E69E7CC0];
        sub_1C75504FC();
        sub_1C754DFEC();
        OUTLINED_FUNCTION_2_100();
        sub_1C7355E5C(v44, v66);
        swift_isUniquelyReferenced_nonNull_native();
        v73 = v33;
        v74 = v34;
        v47 = sub_1C6FCABD0(v33);
        if (__OFADD__(v34[2], (v48 & 1) == 0))
        {
          goto LABEL_30;
        }

        v49 = v47;
        v50 = v48;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD20);
        v51 = sub_1C7551A2C();
        v52 = v72;
        if (v51)
        {
          v53 = v73;
          v54 = sub_1C6FCABD0(v73);
          if ((v50 & 1) != (v55 & 1))
          {
            goto LABEL_32;
          }

          v49 = v54;
          v14 = v69;
        }

        else
        {
          v14 = v69;
          v53 = v73;
        }

        v73 = v74;
        if (v50)
        {
          sub_1C718F5D4(v66, v74[7] + *(v68 + 72) * v49);

          sub_1C7245414(v65);
        }

        else
        {
          v74[(v49 >> 6) + 8] |= 1 << v49;
          *(v73[6] + 8 * v49) = v53;
          OUTLINED_FUNCTION_2_100();
          sub_1C7355EB4(v66, v56);

          sub_1C7245414(v65);
          v57 = v73[2];
          v58 = __OFADD__(v57, 1);
          v59 = v57 + 1;
          if (v58)
          {
            goto LABEL_31;
          }

          v73[2] = v59;
        }
      }
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      return v73;
    }

    v19 = *(v16 + 8 * v23);
    ++v21;
    if (v19)
    {
      v21 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C73529C8()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_1C7352A7C(v1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_1C7352A7C(uint64_t a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X8>)
{
  v43 = a2;
  if (qword_1EDD07988 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDD07990;
  type metadata accessor for PerformanceMeasure();
  swift_allocObject();
  v6 = v5;
  PerformanceMeasure.init(name:log:)();
  v7 = *(a1 + 240);
  v8 = *(a1 + 232);

  v9 = [v8 librarySpecificFetchOptions];
  [v9 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C75604F0;
  *(v10 + 32) = sub_1C755068C();
  *(v10 + 40) = v11;
  *(v10 + 48) = sub_1C755068C();
  *(v10 + 56) = v12;
  sub_1C70B81C8(v10, v9);
  v13 = sub_1C75504FC();
  v14 = sub_1C706D154(v13);
  v15 = *(a1 + 232);
  v16 = *(a1 + 240);
  v17 = *(a1 + 248);
  v39 = v15;
  LOWORD(v40) = v16;
  v41 = v17;
  v18 = v15;

  v19 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v14, &v39);

  v20 = v39;

  v21 = objc_opt_self();
  sub_1C71BA844(v19, v29, v22, v23, v24, v25, v26, v27, v28, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, vars0, vars8);
  v31 = sub_1C740A230(v30, v9, v21);
  if (v31)
  {
    v32 = v31;

    v33 = [v32 fetchedObjects];

    if (v33)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      v34 = sub_1C7550B5C();
      v35 = [objc_allocWithZone(CLSCurationSession) init];
      [v35 prepareAssets_];
      [v21 prefetchScenesOnAssets_];

      sub_1C6F85170();

      *a3 = v34;
    }

    else
    {
      sub_1C7355E08();
      v36 = swift_allocError();
      *v37 = 1;
      swift_willThrow();

      *v43 = v36;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C7352D80(uint64_t a1)
{
  v28 = sub_1C6FB6304();
  v2 = 0;
  v26 = a1 & 0xC000000000000001;
  v3 = MEMORY[0x1E69E7CC8];
  v27 = a1;
  v25 = a1 + 32;
LABEL_2:
  if (v2 == v28)
  {
    return v3;
  }

  sub_1C6FB6330(v2, v26 == 0, v27);
  if (v26)
  {
    v4 = MEMORY[0x1CCA5DDD0](v2, v27);
  }

  else
  {
    v4 = *(v25 + 8 * v2);
  }

  v5 = __OFADD__(v2++, 1);
  if (v5)
  {
    goto LABEL_31;
  }

  v29 = v4;
  sub_1C7352FFC(v4);
  v7 = v6;
  v8 = sub_1C6FB6304();
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {

      goto LABEL_2;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1CCA5DDD0](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_27;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1C6FC3484();
    if (__OFADD__(v3[2], (v13 & 1) == 0))
    {
      goto LABEL_28;
    }

    v14 = v12;
    v15 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD48);
    if (sub_1C7551A2C())
    {
      sub_1C6F65BE8(0, &qword_1EDD06988);
      sub_1C6FC3484();
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_32;
      }

      v14 = v16;
      if (v15)
      {
        goto LABEL_20;
      }
    }

    else if (v15)
    {
      goto LABEL_20;
    }

    v3[(v14 >> 6) + 8] |= 1 << v14;
    *(v3[6] + 8 * v14) = v11;
    *(v3[7] + 8 * v14) = 0;
    v18 = v3[2];
    v5 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v5)
    {
      goto LABEL_30;
    }

    v3[2] = v19;
    v20 = v11;
LABEL_20:
    v21 = v3[7];
    v22 = *(v21 + 8 * v14);
    v5 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v5)
    {
      goto LABEL_29;
    }

    *(v21 + 8 * v14) = v23;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7352FFC(void *a1)
{
  if ([a1 hasCurationModel])
  {
    v2 = [a1 curationModel];
    v3 = [v2 entityNetModel];

    if (v3)
    {
      v4 = [a1 clsSceneClassifications];
      sub_1C6F65BE8(0, &qword_1EDD0CE08);
      sub_1C7080178(&qword_1EDD0CE00, &qword_1EDD0CE08);
      v5 = sub_1C7550F8C();

      sub_1C7353254(v5, v3);

      return;
    }
  }

  if (qword_1EDD07960 != -1)
  {
    swift_once();
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EDD07968);
  v7 = a1;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (!os_log_type_enabled(v8, v9))
  {

    goto LABEL_10;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v16 = v11;
  *v10 = 136315138;
  v12 = sub_1C70CAC04(v7);
  v14 = v13;

  if (v14)
  {
    v15 = sub_1C6F765A4(v12, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Unknown scene model for asset %s.", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1CCA5F8E0](v11, -1, -1);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
LABEL_10:

    return;
  }

  __break(1u);
}

void sub_1C7353254(uint64_t a1, id a2)
{
  v3 = v2;
  v6 = [a2 sceneTaxonomy];
  [a2 version];
  v7 = sub_1C7551D8C();
  v9 = v8;
  v10 = a2;

  sub_1C75504FC();
  v63 = v3;
  v61 = v6;
  sub_1C735007C(a1, v10, v3, v7, v9, v61);
  v12 = v11;

  v13 = 0;
  v14 = *(v12 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {
      v25 = *(v16 + 16);
      if (v25)
      {
        sub_1C755195C();
        v26 = 40;
        do
        {
          v27 = *(v16 + v26);
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v26 += 16;
          --v25;
        }

        while (v25);

        v28 = v15;
      }

      else
      {

        v28 = MEMORY[0x1E69E7CC0];
      }

      v62 = sub_1C706F690(v28);
      v29 = *(v63 + 24);
      v30 = *(v12 + 16);
      if (v30)
      {
        sub_1C755195C();
        v31 = 40;
        do
        {
          v32 = *(v12 + v31);
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          v31 += 16;
          --v30;
        }

        while (v30);

        v33 = v15;
      }

      else
      {

        v33 = MEMORY[0x1E69E7CC0];
      }

      v34 = sub_1C6FB6304();
      v35 = 0;
      v36 = v33 & 0xC000000000000001;
      v60 = v33;
      v65 = v33 + 32;
      v66 = v33 & 0xFFFFFFFFFFFFFF8;
      v37 = v63;
      for (i = v33 & 0xC000000000000001; ; v36 = i)
      {
        while (1)
        {
LABEL_23:
          if (v35 == v34)
          {

            return;
          }

          if (v36)
          {
            v38 = MEMORY[0x1CCA5DDD0](v35, v60);
          }

          else
          {
            if (v35 >= *(v66 + 16))
            {
              goto LABEL_56;
            }

            v38 = *(v65 + 8 * v35);
          }

          v39 = v38;
          if (__OFADD__(v35++, 1))
          {
            goto LABEL_55;
          }

          v41 = [v38 name];
          v42 = sub_1C755068C();
          v44 = v43;

          if ((*(v37 + 56) & 1) == 0)
          {
            break;
          }

LABEL_29:

LABEL_30:
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
        }

        v45 = v34;
        v46 = *(v37 + 16);
        if (*(v46 + 16))
        {
          sub_1C7551F3C();
          sub_1C75505AC();
          v47 = sub_1C7551FAC();
          v48 = ~(-1 << *(v46 + 32));
          do
          {
            v49 = v47 & v48;
            if (((*(v46 + 56 + (((v47 & v48) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v47 & v48)) & 1) == 0)
            {

              v37 = v63;
              goto LABEL_51;
            }

            v50 = (*(v46 + 48) + 16 * v49);
            if (*v50 == v42 && v50[1] == v44)
            {
              break;
            }

            v52 = sub_1C7551DBC();
            v47 = v49 + 1;
          }

          while ((v52 & 1) == 0);
          v34 = v45;
          v37 = v63;
          v36 = i;
          if (*(v29 + 16))
          {
            sub_1C7551F3C();
            sub_1C75505AC();
            v53 = sub_1C7551FAC();
            v54 = ~(-1 << *(v29 + 32));
            while (1)
            {
              v55 = v53 & v54;
              if (((*(v29 + 56 + (((v53 & v54) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v53 & v54)) & 1) == 0)
              {
                break;
              }

              v56 = (*(v29 + 48) + 16 * v55);
              if (*v56 != v42 || v56[1] != v44)
              {
                v58 = sub_1C7551DBC();
                v53 = v55 + 1;
                if ((v58 & 1) == 0)
                {
                  continue;
                }
              }

              sub_1C7353A30(v39, v62);
              if (v59)
              {
                goto LABEL_30;
              }

              goto LABEL_23;
            }
          }

          goto LABEL_29;
        }

LABEL_51:
        v34 = v45;
      }
    }

    if (v13 >= *(v12 + 16))
    {
      break;
    }

    v67 = *(v12 + 16 * v13 + 32);
    v17 = v67;
    v18 = *(&v67 + 1);
    [v17 boundingBox];
    x = v68.origin.x;
    y = v68.origin.y;
    width = v68.size.width;
    height = v68.size.height;
    if (CGRectGetHeight(v68) > 0.0 && (v69.origin.x = x, v69.origin.y = y, v69.size.width = width, v69.size.height = height, CGRectGetWidth(v69) > 0.0))
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716EC4C(0, *(v16 + 16) + 1, 1);
      }

      v24 = *(v16 + 16);
      v23 = *(v16 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_1C716EC4C(v23 > 1, v24 + 1, 1);
      }

      ++v13;
      *(v16 + 16) = v24 + 1;
      *(v16 + 16 * v24 + 32) = v67;
    }

    else
    {

      ++v13;
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

id sub_1C7353840(uint64_t a1, uint64_t a2, uint64_t a3, id a4)
{
  v5 = v4;
  v10 = *v4;
  if (*(*v4 + 16) && (v11 = sub_1C6F78124(a2, a3), (v12 & 1) != 0) && (v13 = *(*(v10 + 56) + 8 * v11), *(v13 + 16)) && (v14 = sub_1C6FCABD0(a1), (v15 & 1) != 0))
  {
    v16 = *(*(v13 + 56) + 8 * v14);
    v17 = v16;
  }

  else
  {
    v16 = [a4 nodeForExtendedSceneClassId_];
    if (v16)
    {
      if (sub_1C6FE3768(a2, a3, v10))
      {

        v19 = sub_1C7353DD8(v27, a2, a3);
        if (*v18)
        {
          v20 = v18;
          v21 = v16;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = *v20;
          sub_1C6FC97CC(v21, a1, isUniquelyReferenced_nonNull_native);
          *v20 = v26;
        }

        (v19)(v27, 0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C755BAB0;
        *(inited + 32) = a1;
        *(inited + 40) = v16;
        sub_1C6F65BE8(0, &qword_1EDD06988);
        v24 = v16;
        sub_1C75504DC();
        swift_isUniquelyReferenced_nonNull_native();
        v27[0] = *v5;
        sub_1C6FC97B8();
        *v5 = v27[0];
      }
    }
  }

  return v16;
}

void sub_1C7353A30(void *a1, uint64_t a2)
{
  sub_1C700A6EC();
  if (v4)
  {
    return;
  }

  v5 = [a1 parents];
  sub_1C6F65BE8(0, &qword_1EDD06988);
  sub_1C7080178(&qword_1EDD06980, &qword_1EDD06988);
  v6 = sub_1C7550F8C();

  if ((v6 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C7550FEC();
    v6 = v29;
    v7 = v30;
    v8 = v31;
    v9 = v32;
    v10 = v33;
  }

  else
  {
    v9 = 0;
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);
  }

  v25 = v7;
  v14 = (v8 + 64) >> 6;
  v26 = v6;
  while (v6 < 0)
  {
    if (!sub_1C75516FC() || (swift_dynamicCast(), v17 = v28, v27 = v10, !v28))
    {
LABEL_27:
      sub_1C6F61E88();
      return;
    }

LABEL_18:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v18 = v17;
      v19 = sub_1C755170C();

      v10 = v27;
      if (v19)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (*(a2 + 16))
      {
        v20 = sub_1C75513DC();
        v21 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v22 = v20 & v21;
          if (((*(a2 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
          {
            break;
          }

          v23 = *(*(a2 + 48) + 8 * v22);
          v24 = sub_1C75513EC();

          v20 = v22 + 1;
          if (v24)
          {

            goto LABEL_27;
          }
        }
      }

      v7 = v25;
      v6 = v26;
      v10 = v27;
    }
  }

  v15 = v9;
  v16 = v10;
  if (v10)
  {
LABEL_14:
    v27 = (v16 - 1) & v16;
    v17 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v17)
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v9 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_27;
    }

    v16 = *(v7 + 8 * v9);
    ++v15;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t PersonalTraitEntityNetDataSource.deinit()
{
  memcpy(v3, (v0 + 16), 0xD8uLL);
  sub_1C7059364(v3);
  v1 = *(v0 + 232);

  return v0;
}

uint64_t PersonalTraitEntityNetDataSource.__deallocating_deinit()
{
  PersonalTraitEntityNetDataSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1C7353DD8(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1C73558B8(v6, a2, a3);
  return sub_1C7353E4C;
}

void sub_1C7353E4C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void sub_1C7353E98()
{
  OUTLINED_FUNCTION_25_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A430);
  OUTLINED_FUNCTION_39_35();
  v25 = v1;
  v3 = sub_1C7551AFC();
  if (!*(v2 + 16))
  {
LABEL_27:

    *v0 = v3;
    return;
  }

  v24 = v2;
  v4 = 0;
  v5 = v2;
  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_33_34();
  if (!v1)
  {
LABEL_4:
    v6 = v4;
    while (1)
    {
      v4 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v6;
      if (*(v5 + 8 * v4))
      {
        OUTLINED_FUNCTION_78_0();
        v1 = v8 & v7;
        goto LABEL_9;
      }
    }

    if (v25)
    {
      OUTLINED_FUNCTION_17_69();
      if (v20 != v21)
      {
        OUTLINED_FUNCTION_20_54(v19);
      }

      else
      {
        v22 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v22, v23, v5);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_99_6();
LABEL_9:
    OUTLINED_FUNCTION_31_39();
    v11 = (v10 + 32 * v9);
    v12 = v11[1];
    v28 = v11[2];
    v29 = *v11;
    v26 = *(v11 + 25);
    v27 = *(v11 + 24);
    if ((v25 & 1) == 0)
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_20_6();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_28_32(v14);
    v18 = v17 + 32 * v16;
    *v18 = v29;
    *(v18 + 8) = v12;
    *(v18 + 16) = v28;
    *(v18 + 24) = v27;
    *(v18 + 25) = v26;
    OUTLINED_FUNCTION_47_1();
    v2 = v24;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_33();
    if (!v13)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354094()
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v22)
    {
      OUTLINED_FUNCTION_12_63();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_20_54(v17);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v20, v21, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v11 = *(v10 + 8 * v9);
    if ((v22 & 1) == 0)
    {
      sub_1C75504FC();
    }

    OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v13);
    *(v16 + 8 * v15) = v11;
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v12)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354280(uint64_t a1, int a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v54 = a6;
  v8 = v6;
  v10 = OUTLINED_FUNCTION_19_1();
  v51 = *(v11(v10) - 8);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v48 - v13;
  v14 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v52 = a2;
  v15 = OUTLINED_FUNCTION_40_38();
  if (!v14[2])
  {
LABEL_30:

LABEL_31:
    *v8 = v15;
    return;
  }

  v49 = v6;
  v50 = v14;
  v16 = 0;
  v17 = v14 + 8;
  OUTLINED_FUNCTION_90_1();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  v23 = v15 + 8;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v25;
      if (v17[v16])
      {
        OUTLINED_FUNCTION_78_0();
        v20 = v27 & v26;
        goto LABEL_9;
      }
    }

    if ((v52 & 1) == 0)
    {

      v8 = v49;
      goto LABEL_31;
    }

    OUTLINED_FUNCTION_17_69();
    v8 = v49;
    if (v44 != v45)
    {
      *v17 = -1 << v43;
    }

    else
    {
      v46 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v46, v47, v17);
    }

    v14[2] = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v24 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
LABEL_9:
    v28 = v24 | (v16 << 6);
    v29 = v14[7];
    v30 = (v14[6] + 16 * v28);
    v32 = *v30;
    v31 = v30[1];
    v33 = *(v51 + 72);
    v34 = v29 + v33 * v28;
    if (v52)
    {
      sub_1C7355EB4(v34, v53);
    }

    else
    {
      sub_1C7355E5C(v34, v53);
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_20_6();
    if (v35)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_22:
    OUTLINED_FUNCTION_98_0();
    *(v23 + v39) |= v40;
    v42 = (v15[6] + 16 * v41);
    *v42 = v32;
    v42[1] = v31;
    sub_1C7355EB4(v53, v15[7] + v33 * v41);
    ++v15[2];
    v14 = v50;
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v35)
    {
      if (v37)
      {
        break;
      }
    }

    if (v36 == v38)
    {
      v36 = 0;
    }

    if (v23[v36] != -1)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_1C7354548(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for PersonalTrait();
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD60);
  v37 = a2;
  result = sub_1C7551AFC();
  v10 = result;
  if (!*(v8 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v10;
    return result;
  }

  v35 = v3;
  v11 = 0;
  v12 = (v8 + 64);
  v13 = 1 << *(v8 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v8 + 64);
  v16 = (v13 + 63) >> 6;
  v17 = result + 64;
  if (!v15)
  {
LABEL_7:
    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v11 >= v16)
      {
        break;
      }

      v20 = v12[v11];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v15 = (v20 - 1) & v20;
        goto LABEL_12;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v33 = 1 << *(v8 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      sub_1C71FAC38(0, (v33 + 63) >> 6, v8 + 64);
    }

    else
    {
      *v12 = -1 << v33;
    }

    *(v8 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_12:
    v21 = v18 | (v11 << 6);
    v22 = *(*(v8 + 48) + 8 * v21);
    v23 = *(v36 + 72);
    v24 = *(v8 + 56) + v23 * v21;
    if (v37)
    {
      sub_1C7355EB4(v24, v7);
    }

    else
    {
      sub_1C7355E5C(v24, v7);
    }

    result = sub_1C7551F2C();
    v25 = -1 << *(v10 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v17 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    *(*(v10 + 48) + 8 * v28) = v22;
    result = sub_1C7355EB4(v7, *(v10 + 56) + v23 * v28);
    ++*(v10 + 16);
    if (!v15)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v17 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_1C735488C()
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD78);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v22)
    {
      OUTLINED_FUNCTION_12_63();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_20_54(v17);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v20, v21, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v11 = *(v10 + 4 * v9);
    if ((v22 & 1) == 0)
    {
      sub_1C75504FC();
    }

    OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v13);
    *(v16 + 4 * v15) = v11;
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v12)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C73549EC()
{
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217168);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_28:

    *v0 = v2;
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v22)
    {
      OUTLINED_FUNCTION_12_63();
      if (v18 != v19)
      {
        OUTLINED_FUNCTION_20_54(v17);
      }

      else
      {
        v20 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v20, v21, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v11 = (v10 + 32 * v9);
    if (v22)
    {
      sub_1C6F9ED18(v11, v23);
    }

    else
    {
      sub_1C6F774EC(v11, v23);
      sub_1C75504FC();
    }

    OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v12)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_20:
    OUTLINED_FUNCTION_3_94(v13);
    sub_1C6F9ED18(v23, (v16 + 32 * v15));
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v12)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v12)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_20;
    }
  }

LABEL_30:
  __break(1u);
}

void sub_1C7354B70()
{
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217170);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_38_31();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    return;
  }

  v23 = v1;
  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_12_63();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_20_54(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v21, v22, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v11 = *(v10 + 8 * v9);
    if ((v24 & 1) == 0)
    {
      sub_1C75504FC();
      v12 = v11;
    }

    OUTLINED_FUNCTION_45_30();
    OUTLINED_FUNCTION_37_31();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v14);
    *(v17 + 8 * v16) = v11;
    OUTLINED_FUNCTION_47_1();
    v1 = v23;
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v13)
    {
      if (v15)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v13)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354CF4()
{
  OUTLINED_FUNCTION_54_26();
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD80);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_40_38();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_27:

    *v0 = v2;
    OUTLINED_FUNCTION_53_30();
    return;
  }

  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if (v2)
    {
      OUTLINED_FUNCTION_12_63();
      if (v17 != v18)
      {
        OUTLINED_FUNCTION_20_54(v16);
      }

      else
      {
        v19 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v19, v20, v4);
      }

      *(v1 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    v21 = *(v10 + 16 * v9);
    if ((v2 & 1) == 0)
    {
      sub_1C75504FC();
      sub_1C6FEB1B0(v21, *(&v21 + 1));
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_3_94(v12);
    *(v15 + 16 * v14) = v21;
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v11)
    {
      if (v13)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v11)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7354E90()
{
  OUTLINED_FUNCTION_25_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_39_35();
  v24 = v1;
  v4 = sub_1C7551AFC();
  if (!*(v2 + 16))
  {
LABEL_27:

    *v0 = v4;
    return;
  }

  v23 = v2;
  v5 = 0;
  v6 = v2;
  OUTLINED_FUNCTION_1_109();
  OUTLINED_FUNCTION_33_34();
  if (!v1)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v5 >= v0)
      {
        break;
      }

      ++v7;
      if (*(v6 + 8 * v5))
      {
        OUTLINED_FUNCTION_78_0();
        v1 = v9 & v8;
        goto LABEL_9;
      }
    }

    if (v24)
    {
      OUTLINED_FUNCTION_17_69();
      if (v19 != v20)
      {
        OUTLINED_FUNCTION_20_54(v18);
      }

      else
      {
        v21 = OUTLINED_FUNCTION_66_1();
        sub_1C71FAC38(v21, v22, v6);
      }

      *(v2 + 16) = 0;
    }

    goto LABEL_27;
  }

  while (1)
  {
    OUTLINED_FUNCTION_99_6();
LABEL_9:
    OUTLINED_FUNCTION_31_39();
    v12 = *(v11 + 8 * v10);
    if ((v24 & 1) == 0)
    {
      sub_1C75504FC();
      sub_1C75504FC();
    }

    OUTLINED_FUNCTION_45_30();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_20_6();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_19:
    OUTLINED_FUNCTION_98_0();
    OUTLINED_FUNCTION_28_32(v15);
    *(v17 + 8 * v16) = v12;
    OUTLINED_FUNCTION_47_1();
    v2 = v23;
    if (!v1)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v13)
    {
      if (v14)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_33();
    if (!v13)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_19;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1C7355054(uint64_t a1, int a2, uint64_t *a3, uint64_t a4)
{
  v7 = v4;
  OUTLINED_FUNCTION_19_1();
  type metadata accessor for Hastings.Feature();
  OUTLINED_FUNCTION_3_0();
  v45 = v10;
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_44_0();
  v47 = a2;
  sub_1C7551AFC();
  v14 = v13;
  OUTLINED_FUNCTION_102_10();
  if (!v15)
  {
LABEL_28:

LABEL_29:
    *v7 = a4;
    return;
  }

  v43 = v7;
  v44 = v13;
  v16 = 0;
  v17 = v13 + 8;
  OUTLINED_FUNCTION_90_1();
  v20 = v19 & v18;
  v22 = (v21 + 63) >> 6;
  if ((v19 & v18) == 0)
  {
LABEL_4:
    v24 = v16;
    while (1)
    {
      v16 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v16 >= v22)
      {
        break;
      }

      ++v24;
      if (v17[v16])
      {
        OUTLINED_FUNCTION_78_0();
        v20 = v26 & v25;
        goto LABEL_9;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_17_69();
    v7 = v43;
    if (v38 != v39)
    {
      *v17 = -1 << v37;
    }

    else
    {
      v40 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v40, v41, v17);
    }

    v14[2] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_99_6();
LABEL_9:
    v27 = v23 | (v16 << 6);
    v28 = *(v45 + 72);
    v29 = v14[6] + v28 * v27;
    if (v47)
    {
      sub_1C7355EB4(v29, v12);
      v48 = *(v14[7] + 8 * v27);
    }

    else
    {
      sub_1C7355E5C(v29, v12);
      v48 = *(v14[7] + 8 * v27);
      sub_1C75504FC();
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C75505AC();

    sub_1C754F58C();
    sub_1C7355CC4();
    sub_1C755059C();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_6_85();
    OUTLINED_FUNCTION_20_6();
    if (v32)
    {
      break;
    }

    v33 = __clz(__rbit64(v31)) | v30 & 0x7FFFFFFFFFFFFFC0;
    v14 = v44;
LABEL_20:
    *(a4 + 64 + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v33;
    sub_1C7355EB4(v12, *(a4 + 48) + v28 * v33);
    *(*(a4 + 56) + 8 * v33) = v48;
    OUTLINED_FUNCTION_47_1();
    if (!v20)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  v14 = v44;
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v32)
    {
      if (v34)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_34_33();
    if (!v32)
    {
      v33 = __clz(__rbit64(~v36)) + (v35 << 6);
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C7355434()
{
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD38);
  OUTLINED_FUNCTION_44_0();
  HIDWORD(v29) = v2;
  OUTLINED_FUNCTION_40_38();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_28:

LABEL_29:
    *v0 = v2;
    return;
  }

  v28 = v0;
  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if ((v29 & 0x100000000) == 0)
    {

      v0 = v28;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_12_63();
    v0 = v28;
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_20_54(v23);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v26, v27, v4);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    if ((v29 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_43_33(v9);
      v32 = v13;
      v33 = v12;
      v34 = *(v14 + 34);
      v35 = *(v14 + 36);
    }

    else
    {
      v15 = v10 + v9 * v11;
      v16 = *v15;
      v17 = *(v15 + 16);
      *&v37[13] = *(v15 + 29);
      v36 = v16;
      *v37 = v17;
      v34 = *&v37[18];
      v35 = v37[20];
      v32 = v37[16];
      v33 = v37[17];
      v30 = v16;
      v31 = v17;
      sub_1C75504FC();
      sub_1C7355D1C(&v36, v38);
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_20:
    OUTLINED_FUNCTION_3_94(v19);
    OUTLINED_FUNCTION_49_23(v21, v28, v29, v30, v31);
    *(v22 + 32) = v32;
    *(v22 + 33) = v33;
    *(v22 + 34) = v34;
    *(v22 + 36) = v35;
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v18)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

void sub_1C7355628()
{
  OUTLINED_FUNCTION_7_73();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD40);
  OUTLINED_FUNCTION_44_0();
  HIDWORD(v29) = v2;
  OUTLINED_FUNCTION_40_38();
  OUTLINED_FUNCTION_102_10();
  if (!v6)
  {
LABEL_28:

LABEL_29:
    *v0 = v2;
    return;
  }

  v28 = v0;
  OUTLINED_FUNCTION_0_146();
  if (!v3)
  {
LABEL_4:
    v7 = v5;
    while (1)
    {
      v5 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v5 >= v0)
      {
        break;
      }

      OUTLINED_FUNCTION_36_29();
      if (v8)
      {
        OUTLINED_FUNCTION_13_68();
        goto LABEL_9;
      }
    }

    if ((v29 & 0x100000000) == 0)
    {

      v0 = v28;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_12_63();
    v0 = v28;
    if (v24 != v25)
    {
      OUTLINED_FUNCTION_20_54(v23);
    }

    else
    {
      v26 = OUTLINED_FUNCTION_66_1();
      sub_1C71FAC38(v26, v27, v4);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_44_1();
LABEL_9:
    OUTLINED_FUNCTION_21_52();
    if ((v29 & 0x100000000) != 0)
    {
      OUTLINED_FUNCTION_43_33(v9);
      v32 = v13;
      v33 = v12;
      v34 = *(v14 + 34);
      v35 = *(v14 + 36);
      v36 = *(v14 + 38);
      LOBYTE(v37) = *(v14 + 39);
    }

    else
    {
      v15 = (v10 + v9 * v11);
      v16 = *v15;
      v17 = v15[1];
      v39 = v15[2].n128_u64[0];
      v38[0] = v16;
      v38[1] = v17;
      v37 = HIBYTE(v39);
      v36 = BYTE6(v39);
      v35 = WORD2(v39);
      v34 = BYTE2(v39);
      v32 = v39 & 1;
      v33 = BYTE1(v39);
      v30 = v16;
      v31 = v17;
      sub_1C75504FC();
      sub_1C7355D78(v38, v40);
    }

    sub_1C7551F3C();
    sub_1C75505AC();
    sub_1C7551FAC();
    OUTLINED_FUNCTION_5_78();
    if (v18)
    {
      break;
    }

    OUTLINED_FUNCTION_16();
LABEL_20:
    OUTLINED_FUNCTION_3_94(v19);
    OUTLINED_FUNCTION_49_23(v21, v28, v29, v30, v31);
    *(v22 + 32) = v32;
    *(v22 + 33) = v33;
    *(v22 + 34) = v34;
    *(v22 + 36) = v35;
    *(v22 + 38) = v36;
    *(v22 + 39) = v37;
    OUTLINED_FUNCTION_47_1();
    if (!v3)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_15_0();
  while (1)
  {
    OUTLINED_FUNCTION_95_2();
    if (v18)
    {
      if (v20)
      {
        break;
      }
    }

    OUTLINED_FUNCTION_23_43();
    if (!v18)
    {
      OUTLINED_FUNCTION_14_1();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

uint64_t sub_1C7355848@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD00);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD18);
  result = sub_1C73D91E4(a2 + *(v4 + 48), *a1);
  *a2 = result;
  return result;
}

void (*sub_1C73558B8(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1C7355BCC(v6);
  v6[9] = sub_1C73559B0(v6 + 4, a2, a3);
  return sub_1C7355950;
}

void sub_1C7355950(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1C73559B0(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1C6F78124(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215298);
  if (sub_1C7551A2C())
  {
    v14 = sub_1C6F78124(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1C7551E4C();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v16 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  return sub_1C7355AF0;
}

void sub_1C7355AF0(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    if (v3)
    {
      *(*(*v1[3] + 56) + 8 * v4) = v2;
    }

    else
    {
      sub_1C6FCABE4(v4);
      sub_1C75504FC();
    }
  }

  else if ((*a1)[5])
  {
    sub_1C71691DC(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD58);
    sub_1C7551A4C();
  }

  sub_1C75504FC();

  free(v1);
}

uint64_t (*sub_1C7355BCC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C7355BF4;
}

uint64_t sub_1C7355C00(void *a1)
{
  v1 = [a1 localizedLabel];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C7355CC4()
{
  result = qword_1EC215238;
  if (!qword_1EC215238)
  {
    sub_1C754F58C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC215238);
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

unint64_t sub_1C7355E08()
{
  result = qword_1EC21AD68;
  if (!qword_1EC21AD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AD68);
  }

  return result;
}

uint64_t sub_1C7355E5C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

uint64_t sub_1C7355EB4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_19_1();
  v4(v3);
  OUTLINED_FUNCTION_12();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for PersonalTraitEntityNetDataSource.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7355FFC()
{
  result = qword_1EC21ADA0;
  if (!qword_1EC21ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ADA0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_40_38()
{

  return sub_1C7551AFC();
}

uint64_t sub_1C73560C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  OUTLINED_FUNCTION_99_0();
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;
  OUTLINED_FUNCTION_99_0();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = &unk_1C7584778;
  v9[5] = v8;
  sub_1C73578FC(0, 0, v6, &unk_1C7584788, v9);
}

id sub_1C73561C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v46 = &v38 - v4;
  v41 = sub_1C754F3FC();
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v48 = &v38 - v7;
  v8 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  v44 = *(v8 - 1);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  *(v1 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_embeddingSearchLimit) = 12000;
  *(&v38 - v11) = 10000;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  v13 = a1;
  v14 = sub_1C755146C();
  *(v12 + 1) = v14;
  *&v12[v8[7]] = v13;
  v15 = objc_allocWithZone(PNTextEmbeddingService);
  v16 = v13;
  v40 = v16;
  v17 = v14;
  *&v12[v8[8]] = [v15 init];
  v18 = &v12[v8[9]];
  v18[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  v18[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  swift_allocObject();
  *boxed_opaque_existential_0 = sub_1C72FC904(v16, 0);
  sub_1C754FF2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ADC8);
  v20 = v47;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1C75604F0;
  sub_1C754F3EC();
  sub_1C754F3DC();
  *&v50 = v21;
  sub_1C7357F80();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21ADD0);
  sub_1C7357FD8();
  v22 = v48;
  v23 = v41;
  sub_1C75515FC();
  v24 = v39;
  (*(v20 + 16))(v39, v22, v23);
  type metadata accessor for StoryGenerationEventRecorder();
  swift_allocObject();
  v25 = *(StoryGenerationEventRecorder.init(options:)(v24) + OBJC_IVAR____TtC18PhotosIntelligence28StoryGenerationEventRecorder_rootEventRecorder);
  v26 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v46, 1, 1, v26);
  v27 = v42;
  sub_1C72C6E78(v12, v42);
  v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  v29 = (v43 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1C72C6EDC(v27, v30 + v28);
  *(v30 + v29) = v25;
  swift_retain_n();
  sub_1C7293D70();

  v31 = v45;
  v32 = &v45[OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_eventRecorder];
  v33 = sub_1C754F41C();
  v34 = MEMORY[0x1E69C1888];
  *(v32 + 3) = v33;
  *(v32 + 4) = v34;
  *v32 = v25;
  v51 = v8;
  v52 = &protocol witness table for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher;
  v35 = __swift_allocate_boxed_opaque_existential_0(&v50);
  sub_1C72C6EDC(v12, v35);

  (*(v47 + 8))(v48, v23);
  sub_1C6F699F8(&v50, v31 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_fetcher);
  v49.receiver = v31;
  v49.super_class = PNBackgroundMemoriesEmbeddingSearcher;
  v36 = objc_msgSendSuper2(&v49, sel_init);

  return v36;
}

uint64_t sub_1C735676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1C73567B4, 0, 0);
}

uint64_t sub_1C73567B4()
{
  v1 = v0[8];
  v2 = MEMORY[0x1E69C1888];
  v0[5] = v0[9];
  v0[6] = v2;
  v0[2] = v1;

  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1C7356874;

  return PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.preheat(eventRecorder:)();
}

uint64_t sub_1C7356874()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v3 + 88) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v3 + 16);
    OUTLINED_FUNCTION_43();

    return v9();
  }
}

uint64_t sub_1C7356998()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t PNBackgroundMemoriesEmbeddingSearcher.performSearch(with:retrievalThreshold:)()
{
  OUTLINED_FUNCTION_42();
  v1[36] = v2;
  v1[37] = v0;
  v1[35] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  v1[38] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[39] = v5;
  v1[40] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  v1[41] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[42] = v7;
  v1[43] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7356B3C()
{
  v1 = *(v0 + 288);
  *(v0 + 216) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(v0 + 224) = &off_1F46ACFD0;
  v2 = [objc_opt_self() currentUnifiedEmbeddingVersion];
  v3 = v2;
  if (v1 == 1)
  {
    v4 = 5;
    if (!v2)
    {
LABEL_3:
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v4 = 4;
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  v5 = [v2 integerValue];

LABEL_6:
  v6 = v3 == 0;
  *(v0 + 192) = v4;
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  *(v0 + 200) = v5;
  *(v0 + 208) = v6;
  sub_1C6F699F8((v0 + 192), v0 + 152);
  sub_1C6FB5E28(v0 + 152, v0 + 32);
  v9 = *(v7 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_embeddingSearchLimit);
  *(v0 + 16) = 1;
  *(v0 + 24) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 1;
  *(v0 + 112) = vdupq_n_s64(1uLL);
  *(v0 + 128) = 1;
  *(v0 + 136) = 0;
  *(v0 + 144) = 1;
  *(v0 + 72) = v9;
  *(v0 + 80) = 0;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v12 = *(v0 + 280);
    v20 = MEMORY[0x1E69E7CC0];
    sub_1C755195C();
    sub_1C6F65BE8(0, &qword_1EDD0CE30);
    v13 = v12 + 40;
    do
    {
      sub_1C75504FC();
      sub_1C7073450();
      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
      v13 += 16;
      --v10;
    }

    while (v10);
    v11 = v20;
  }

  v14 = *(v0 + 296);
  v15 = *(v14 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_fetcher + 24);
  v16 = *(v14 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_fetcher + 32);
  __swift_project_boxed_opaque_existential_1((v14 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_fetcher), v15);
  (*(v16 + 24))(v11, v0 + 16, v14 + OBJC_IVAR___PNBackgroundMemoriesEmbeddingSearcher_eventRecorder, v15, v16);

  sub_1C7550DBC();
  *(v0 + 352) = MEMORY[0x1E69E7CC8];
  v17 = swift_task_alloc();
  *(v0 + 360) = v17;
  *v17 = v0;
  OUTLINED_FUNCTION_1_110(v17);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6D9C8](v18);
}

uint64_t sub_1C7356DF0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7356ED8()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  if (v2 == 255)
  {
    v13 = *(v0 + 336);
    v12 = *(v0 + 344);
    v14 = *(v0 + 328);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    (*(v13 + 8))(v12, v14);
    sub_1C70DF138(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 152);

    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = *(v0 + 240);
  v4 = *(v0 + 248);
  if (v2)
  {
    v5 = *(v0 + 256);
    v6 = *(v0 + 336);
    v45 = *(v0 + 328);
    v47 = *(v0 + 344);
    v7 = *(v0 + 232);
    v8 = *(v0 + 312);
    v43 = *(v0 + 304);
    v44 = *(v0 + 320);

    swift_willThrow();
    v9 = v3;
    sub_1C710A128(v7, v3, v4, v5);
    (*(v8 + 8))(v44, v43);
    (*(v6 + 8))(v47, v45);
    sub_1C70DF138(v0 + 16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 152);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X1, X16 }
  }

  v17 = [v3 string];
  v46 = sub_1C755068C();
  v48 = v18;

  v19 = *(v1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    *(v0 + 264) = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v20 = *(v0 + 264);
    v21 = (v1 + 40);
    do
    {
      v22 = *(v21 - 1);
      v23 = *v21;
      *(v0 + 264) = v20;
      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      sub_1C75504FC();
      if (v25 >= v24 >> 1)
      {
        sub_1C6F7ED9C();
        v20 = *(v0 + 264);
      }

      *(v20 + 16) = v25 + 1;
      v26 = v20 + 16 * v25;
      *(v26 + 32) = v22;
      *(v26 + 40) = v23;
      v21 += 4;
      --v19;
    }

    while (v19);
  }

  v27 = *(v0 + 352);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 272) = v27;
  v28 = sub_1C6F78124(v46, v48);
  if (__OFADD__(*(v27 + 16), (v29 & 1) == 0))
  {
    __break(1u);
    goto LABEL_29;
  }

  v30 = v28;
  v31 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0);
  if ((sub_1C7551A2C() & 1) == 0)
  {
    if ((v31 & 1) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  v32 = sub_1C6F78124(v46, v48);
  if ((v31 & 1) == (v33 & 1))
  {
    v30 = v32;
    if ((v31 & 1) == 0)
    {
LABEL_23:
      v36 = *(v0 + 272);
      v36[(v30 >> 6) + 8] |= 1 << v30;
      v37 = (v36[6] + 16 * v30);
      *v37 = v46;
      v37[1] = v48;
      *(v36[7] + 8 * v30) = v20;
      OUTLINED_FUNCTION_13_69();
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (!v39)
      {
        v36[2] = v40;
LABEL_25:
        *(v0 + 352) = v36;
        v41 = swift_task_alloc();
        *(v0 + 360) = v41;
        *v41 = v0;
        OUTLINED_FUNCTION_1_110();
        OUTLINED_FUNCTION_41();
        OUTLINED_FUNCTION_94_1();

        return MEMORY[0x1EEE6D9C8](v28);
      }

LABEL_29:
      __break(1u);
      return MEMORY[0x1EEE6D9C8](v28);
    }

LABEL_21:

    v36 = *(v0 + 272);
    *(v36[7] + 8 * v30) = v20;

    OUTLINED_FUNCTION_13_69();
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_94_1();

  return sub_1C7551E4C();
}

uint64_t sub_1C735738C(int a1, int a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v4[4] = sub_1C7550B5C();
  a4;
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_1C7357468;

  return PNBackgroundMemoriesEmbeddingSearcher.performSearch(with:retrievalThreshold:)();
}

uint64_t sub_1C7357468()
{
  OUTLINED_FUNCTION_123();
  v2 = v0;
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v5 = *(v3 + 24);
  v6 = *(v3 + 16);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;

  if (v0)
  {
    if (v5)
    {
      v9 = *(v4 + 24);
      v10 = sub_1C754DBDC();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v5)
    {
      v12 = *(v4 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      v10 = sub_1C755048C();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_43();

  return v13();
}

void __swiftcall PNBackgroundMemoriesEmbeddingSearcher.init()(PNBackgroundMemoriesEmbeddingSearcher *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1C735772C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1C6F739D4;

  return v6();
}

uint64_t sub_1C7357814(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1C6F738F4;

  return v7();
}

uint64_t sub_1C73578FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_1C70A3CFC(a3, v22 - v10);
  v12 = sub_1C7550D5C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C6F678CC(v11);
  }

  else
  {
    sub_1C7550D4C();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = sub_1C7550C8C();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = sub_1C755071C() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_1C6F678CC(a3);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C6F678CC(a3);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_1C7357B98(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C6F73F48;

  return v6(a1);
}

uint64_t sub_1C7357CA4()
{
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_86(v1);

  return v3(v2);
}

uint64_t sub_1C7357D44()
{
  OUTLINED_FUNCTION_123();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_6_86(v1);

  return v3(v2);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_99_0();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C7357E20()
{
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  v3 = OUTLINED_FUNCTION_54();

  return v4(v3);
}

uint64_t sub_1C7357ED8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  v3 = OUTLINED_FUNCTION_54();

  return v4(v3);
}

unint64_t sub_1C7357F80()
{
  result = qword_1EDD06CB8;
  if (!qword_1EDD06CB8)
  {
    sub_1C754F3FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06CB8);
  }

  return result;
}

unint64_t sub_1C7357FD8()
{
  result = qword_1EDD06AD0;
  if (!qword_1EDD06AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21ADD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06AD0);
  }

  return result;
}

uint64_t sub_1C735803C()
{
  OUTLINED_FUNCTION_123();
  v1 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_18(v1);
  v4 = *(v0 + 24);
  v5 = *(v0 + ((*(v3 + 64) + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v7[1] = sub_1C6F738F4;
  v9 = OUTLINED_FUNCTION_54();

  return sub_1C735676C(v9, v10, v4, v11, v5);
}

uint64_t sub_1C7358154()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09BE0);
  __swift_project_value_buffer(v0, qword_1EDD09BE0);
  return sub_1C754FEFC();
}

uint64_t sub_1C735825C(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(a1, 1, a3, a4, a5, a6, a7, a8, v26, v27, v28, v29, v30, v31);
  v10 = v9;
  v11 = 0;
  v12 = *(v9 + 16);
  v13 = (v9 + 40);
  v14 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    if (v11 >= *(v10 + 16))
    {
      __break(1u);
      goto LABEL_15;
    }

    v16 = *(v13 - 1);
    v15 = *v13;
    sub_1C75504FC();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB1814();
      v14 = v19;
    }

    v17 = *(v14 + 16);
    if (v17 >= *(v14 + 24) >> 1)
    {
      sub_1C6FB1814();
      v14 = v20;
    }

    *(v14 + 16) = v17 + 1;
    v18 = v14 + 16 * v17;
    *(v18 + 32) = v16;
    *(v18 + 40) = v15;
    v13 += 6;
    ++v11;
  }

  if (qword_1EDD09BD8 == -1)
  {
    goto LABEL_10;
  }

LABEL_15:
  OUTLINED_FUNCTION_0_147();
  swift_once();
LABEL_10:
  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, qword_1EDD09BE0);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C755118C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v14 + 16);

    _os_log_impl(&dword_1C6F5C000, v22, v23, a2, v24, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v14;
}

uint64_t static MaestroKeywordResolver.maestroKeyword(for:)(uint64_t a1, unint64_t a2)
{
  static StoryMusicEmbeddingTerms.termByDisplayName(_:)();
  if (v12)
  {
    v4 = v13;
    sub_1C75504FC();
    sub_1C72B9804(v11, v12);
  }

  else
  {
    if (qword_1EDD09BD8 != -1)
    {
      OUTLINED_FUNCTION_0_147();
      swift_once();
    }

    v5 = sub_1C754FF1C();
    __swift_project_value_buffer(v5, qword_1EDD09BE0);
    OUTLINED_FUNCTION_24_2();
    sub_1C75504FC();
    v6 = sub_1C754FEEC();
    v7 = sub_1C755119C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v11 = v9;
      *v8 = 136315138;
      *(v8 + 4) = sub_1C6F765A4(a1, a2, &v11);
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Didn't find a maestro keyword for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    return 0;
  }

  return v4;
}

uint64_t static MaestroKeywordResolver.resolveLLMKeywordsToMaestro(for:)(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  v2 = sub_1C6FB6304();
  if (v2)
  {
    v3 = v2;
    if (v2 >= 1)
    {
      v4 = 0;
      v68 = MEMORY[0x1E69E7CC0];
      v69 = v2;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1CCA5DDD0](v4, a1);
        }

        else
        {
          v5 = *(a1 + 8 * v4 + 32);
        }

        sub_1C75504FC();
        static StoryMusicEmbeddingTerms.termByDisplayName(_:)();

        v6 = v74;
        if (!v74)
        {
          if (qword_1EDD09BD8 != -1)
          {
            OUTLINED_FUNCTION_0_147();
            swift_once();
          }

          v31 = sub_1C754FF1C();
          __swift_project_value_buffer(v31, qword_1EDD09BE0);

          v32 = sub_1C754FEEC();
          v33 = sub_1C755119C();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v73 = v35;
            *v34 = 136315138;
            v36 = *(v5 + 16);
            v37 = *(v5 + 24);
            sub_1C75504FC();
            v38 = sub_1C6F765A4(v36, v37, &v73);

            *(v34 + 4) = v38;
            _os_log_impl(&dword_1C6F5C000, v32, v33, "Unable to resolve LLM keyword: %s", v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v35);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();
          }

          goto LABEL_31;
        }

        v7 = v73;
        v9 = v75;
        v8 = v76;
        v11 = v77;
        v10 = v78;
        v12 = *(v5 + 32);
        if (qword_1EDD09550 != -1)
        {
          swift_once();
        }

        v13 = COERCE_DOUBLE(sub_1C6FE0FE8(qword_1EDD09558, unk_1EDD09560, v11));
        if (v14)
        {
          if (v12 < 0.85)
          {
            goto LABEL_25;
          }
        }

        else if (v12 < v13)
        {
LABEL_25:
          if (qword_1EDD09BD8 != -1)
          {
            OUTLINED_FUNCTION_0_147();
            swift_once();
          }

          v39 = sub_1C754FF1C();
          __swift_project_value_buffer(v39, qword_1EDD09BE0);

          v40 = OUTLINED_FUNCTION_1_111();
          sub_1C72B97A0(v40, v41);
          v42 = sub_1C754FEEC();
          v43 = sub_1C755118C();

          v44 = OUTLINED_FUNCTION_1_111();
          sub_1C72B9804(v44, v45);
          if (os_log_type_enabled(v42, v43))
          {
            v65 = v9;
            v46 = v7;
            v47 = swift_slowAlloc();
            log = v42;
            v72 = swift_slowAlloc();
            *v47 = 136315394;
            v48 = MusicKeywordCompletion.description.getter();
            sub_1C6F765A4(v48, v49, &v72);
            OUTLINED_FUNCTION_24_2();

            *(v47 + 4) = v5;
            *(v47 + 12) = 2080;
            v73 = v46;
            v74 = v6;
            v75 = v65;
            v76 = v8;
            v77 = v11;
            v78 = v10;
            v64 = StoryMusicEmbeddingTerm.description.getter();
            v51 = v50;
            sub_1C72B9804(v46, v6);
            v52 = sub_1C6F765A4(v64, v51, &v72);

            *(v47 + 14) = v52;
            _os_log_impl(&dword_1C6F5C000, log, v43, "(Threshold un-met) Keyword %s did not meet the threshold for: %s", v47, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();
          }

          else
          {

            v53 = OUTLINED_FUNCTION_1_111();
            sub_1C72B9804(v53, v54);
          }

          goto LABEL_30;
        }

        if (qword_1EDD09BD8 != -1)
        {
          OUTLINED_FUNCTION_0_147();
          swift_once();
        }

        v15 = sub_1C754FF1C();
        __swift_project_value_buffer(v15, qword_1EDD09BE0);

        v16 = OUTLINED_FUNCTION_1_111();
        sub_1C72B97A0(v16, v17);
        v18 = sub_1C754FEEC();
        v19 = sub_1C755118C();

        v20 = OUTLINED_FUNCTION_1_111();
        sub_1C72B9804(v20, v21);
        v70 = v7;
        if (os_log_type_enabled(v18, v19))
        {
          v67 = v19;
          v22 = swift_slowAlloc();
          v72 = swift_slowAlloc();
          *v22 = 136315394;
          v23 = MusicKeywordCompletion.description.getter();
          v25 = v10;
          v26 = sub_1C6F765A4(v23, v24, &v72);

          *(v22 + 4) = v26;
          *(v22 + 12) = 2080;
          v73 = v70;
          v74 = v6;
          v75 = v9;
          v76 = v8;
          v77 = v11;
          v78 = v25;
          v27 = StoryMusicEmbeddingTerm.description.getter();
          sub_1C6F765A4(v27, v28, &v72);
          OUTLINED_FUNCTION_24_2();

          *(v22 + 14) = &v73;
          _os_log_impl(&dword_1C6F5C000, v18, v67, "(Threshold met) Keyword %s meet the threshold for: %s", v22, 0x16u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        v29 = *(v5 + 32);
        type metadata accessor for MusicKeywordCompletion();
        swift_allocObject();
        MusicKeywordCompletion.init(keyword:score:)(v9, v8, v29);
        sub_1C75504FC();
        v30 = sub_1C72B9804(v70, v6);
        MEMORY[0x1CCA5D040](v30);
        if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C7550B9C();
        }

        sub_1C7550BEC();
        v68 = v79;

LABEL_30:
        v3 = v69;
LABEL_31:
        if (v3 == ++v4)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
    goto LABEL_43;
  }

  v68 = v1;
LABEL_34:
  type metadata accessor for MusicKeywordCompletion();
  v55 = static MusicKeywordCompletion.removeLowerScoringDuplicates(from:)(v68);

  v79 = v55;
  if (!sub_1C6FB6304())
  {
    if (qword_1EDD09BD8 == -1)
    {
LABEL_36:
      v56 = sub_1C754FF1C();
      __swift_project_value_buffer(v56, qword_1EDD09BE0);
      v57 = sub_1C754FEEC();
      v58 = sub_1C755119C();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&dword_1C6F5C000, v57, v58, "None of the LLM keywords resolved to Maestro. Adding fallback keyword as a failsafe", v59, 2u);
        OUTLINED_FUNCTION_109();
      }

      swift_allocObject();
      v60 = OUTLINED_FUNCTION_2_101();
      MusicKeywordCompletion.init(keyword:score:)(v60, v61, v62);
      MEMORY[0x1CCA5D040]();
      if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      return v79;
    }

LABEL_43:
    OUTLINED_FUNCTION_0_147();
    swift_once();
    goto LABEL_36;
  }

  return v55;
}

uint64_t static MaestroKeywordResolver.fallbackKeyword()()
{
  type metadata accessor for MusicKeywordCompletion();
  swift_allocObject();
  v0 = OUTLINED_FUNCTION_2_101();
  return MusicKeywordCompletion.init(keyword:score:)(v0, v1, v2);
}

uint64_t MusicCommonUtility.weightByUserLanguage(scoreForSecondaryLanguages:)(float a1)
{
  v2 = sub_1C754E13C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2177A8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v64 - v10;
  v12 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  v19 = sub_1C754E08C();
  v66 = sub_1C6FA7014();
  v20 = sub_1C75504DC();
  v21 = 0;
  v22 = *(v19 + 16);
  v70 = v20;
  v71 = (v14 + 8);
  v23 = v19 + 40;
  v72 = (v4 + 8);
  v73 = -v22;
  v68 = v19;
  v69 = v8;
  v67 = v19 + 40;
LABEL_2:
  while (2)
  {
    for (i = v23 + 16 * v21++; ; i += 16)
    {
      if (v73 + v21 == 1)
      {

        return v70;
      }

      if ((v21 - 1) >= *(v19 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      sub_1C75504FC();
      sub_1C754E03C();
      sub_1C754E14C();
      sub_1C754E12C();
      (*v72)(v8, v2);
      v25 = sub_1C754E07C();
      if (__swift_getEnumTagSinglePayload(v11, 1, v25) == 1)
      {
        (*v71)(v18, v12);
        sub_1C7030CDC(v11, &qword_1EC2177A8);
        goto LABEL_13;
      }

      v26 = v2;
      v12 = sub_1C754E05C();
      v28 = v27;
      (*(*(v25 - 8) + 8))(v11, v25);
      v29 = v21 == 1 ? 1.0 : a1;
      v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);
      *&v31 = v29;
      v32 = [v30 initWithFloat_];
      if (v32)
      {
        break;
      }

      v33 = v70;
      v34 = sub_1C6F78124(v12, v28);
      v12 = v35;

      if (v12)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v74 = v33;
        v12 = v33[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
        sub_1C7551A2C();
        v56 = v74;

        v70 = v56;
        sub_1C7551A4C();
        v57 = OUTLINED_FUNCTION_0_148();
        v58(v57);
        v2 = v26;
        v19 = v68;
        v8 = v69;
        v23 = v67;
        goto LABEL_2;
      }

      v36 = OUTLINED_FUNCTION_0_148();
      v37(v36);
      v2 = v26;
      v19 = v68;
      v8 = v69;
LABEL_13:
      ++v21;
    }

    v38 = v32;
    v39 = v70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v39;
    v40 = sub_1C6F78124(v12, v28);
    v42 = v39[2];
    v43 = (v41 & 1) == 0;
    v44 = __OFADD__(v42, v43);
    v45 = v42 + v43;
    if (v44)
    {
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      break;
    }

    v46 = v40;
    LODWORD(v70) = v41;
    v64[1] = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
    if ((sub_1C7551A2C() & 1) == 0)
    {
      v23 = v67;
      if (v70)
      {
        goto LABEL_22;
      }

LABEL_18:
      v49 = v46;
      v50 = v74;
      v74[(v49 >> 6) + 8] |= 1 << v49;
      v51 = (v50[6] + 16 * v49);
      *v51 = v12;
      v51[1] = v28;
      *(v50[7] + 8 * v49) = v38;
      v52 = OUTLINED_FUNCTION_0_148();
      v53(v52);
      v54 = v50[2];
      v44 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (!v44)
      {
        v70 = v50;
        v50[2] = v55;
        goto LABEL_23;
      }

      goto LABEL_27;
    }

    v47 = sub_1C6F78124(v12, v28);
    v23 = v67;
    if ((v70 & 1) == (v48 & 1))
    {
      v46 = v47;
      if ((v70 & 1) == 0)
      {
        goto LABEL_18;
      }

LABEL_22:

      v70 = v74;
      v59 = v74[7];
      v60 = *(v59 + 8 * v46);
      *(v59 + 8 * v46) = v38;

      v61 = OUTLINED_FUNCTION_0_148();
      v62(v61);
LABEL_23:
      v2 = v26;
      v19 = v68;
      v8 = v69;
      continue;
    }

    break;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MusicCommonUtility.weightByUserRegion()()
{
  v0 = sub_1C754E15C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  sub_1C754E11C();
  v7 = sub_1C754E09C();
  (*(v2 + 8))(v6, v0);
  v8 = [v7 objectForKey_];

  if (v8)
  {
    sub_1C75515CC();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (!*(&v14 + 1))
  {
    sub_1C7030CDC(v15, &qword_1EC219770);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    sub_1C6FA7014();
    return sub_1C75504DC();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C58);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = v11;
  *(inited + 40) = v12;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  sub_1C6FA7014();
  return sub_1C75504DC();
}

uint64_t MusicCommonUtility.expandWeightByKeyword(_:)(uint64_t a1)
{
  v16 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  sub_1C75504FC();
  for (i = 0; v5; i = v8)
  {
    v8 = i;
LABEL_8:
    v9 = __clz(__rbit64(v5)) | (v8 << 6);
    v10 = (*(a1 + 48) + 16 * v9);
    v11 = v10[1];
    v12 = *(*(a1 + 56) + 4 * v9);
    v14[0] = *v10;
    v14[1] = v11;
    v15 = v12;
    sub_1C75504FC();
    sub_1C735970C(&v16, v14);
    v5 &= v5 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v6)
    {

      return v16;
    }

    v5 = *(v2 + 8 * v8);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C735970C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  sub_1C7161490();
  sub_1C7099334();
  v3 = sub_1C75505BC();
  v4 = *(v3 + 16);
  if (v4)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = 0;
    v6 = v38;
    v7 = (v3 + 56);
    while (v5 < *(v3 + 16))
    {
      v9 = *(v7 - 3);
      v8 = *(v7 - 2);
      v10 = v6;
      v11 = *(v7 - 1);
      v12 = *v7;
      sub_1C75504FC();
      v13 = v11;
      v6 = v10;
      v14 = MEMORY[0x1CCA5CC40](v9, v8, v13, v12);
      v16 = v15;

      v17 = v6[2];
      if (v17 >= v6[3] >> 1)
      {
        sub_1C6F7ED9C();
      }

      ++v5;
      v6[2] = v17 + 1;
      v18 = &v6[2 * v17];
      v18[4] = v14;
      v18[5] = v16;
      v7 += 4;
      if (v4 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v36 = v6[2];
    if (!v36)
    {
    }

    v19 = 0;
    v20 = v6 + 5;
    v35 = v6;
    while (v19 < v6[2])
    {
      v22 = *(v20 - 1);
      v21 = *v20;
      sub_1C75504FC();
      swift_isUniquelyReferenced_nonNull_native();
      v39 = *a1;
      v23 = sub_1C6F78124(v22, v21);
      if (__OFADD__(v39[2], (v24 & 1) == 0))
      {
        goto LABEL_24;
      }

      v25 = v23;
      v26 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215340);
      if (sub_1C7551A2C())
      {
        v27 = sub_1C6F78124(v22, v21);
        if ((v26 & 1) != (v28 & 1))
        {
          goto LABEL_26;
        }

        v25 = v27;
      }

      v6 = v35;
      if (v26)
      {

        v29 = v39;
        *(v39[7] + 4 * v25) = v2;
      }

      else
      {
        v29 = v39;
        v39[(v25 >> 6) + 8] |= 1 << v25;
        v30 = (v39[6] + 16 * v25);
        *v30 = v22;
        v30[1] = v21;
        *(v39[7] + 4 * v25) = v2;
        v31 = v39[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_25;
        }

        v39[2] = v33;
      }

      ++v19;
      *a1 = v29;
      v20 += 2;
      if (v36 == v19)
      {
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicCommonUtility(_BYTE *result, int a2, int a3)
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

uint64_t PerformanceMeasure.__allocating_init(name:log:)()
{
  OUTLINED_FUNCTION_0_149();
  v0 = swift_allocObject();
  PerformanceMeasure.init(name:log:)();
  return v0;
}

uint64_t PerformanceMeasure.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence18PerformanceMeasure_signpostID;
  sub_1C754FE4C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

PhotosIntelligence::LLMBackendType_optional __swiftcall LLMBackendType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::LLMBackendEnvironment_optional __swiftcall LLMBackendEnvironment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t LLMBackendType.rawValue.getter()
{
  result = 0x6B6361626C6C6166;
  switch(*v0)
  {
    case 1:
      result = 0x7361676550736D67;
      break;
    case 2:
      result = 0x626D696854736D67;
      break;
    case 3:
      result = 0x7665446E4F736D67;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t LLMBackendEnvironment.description.getter()
{
  if (*v0)
  {
    return 0x676E6967617473;
  }

  else
  {
    return 0x7972726163;
  }
}

void LLMModelType.pegasusBaseUrl.getter()
{
  switch(*v0)
  {
    case 5:
      OUTLINED_FUNCTION_11_61();
      break;
    default:
      return;
  }
}

void LLMModelType.defaultSamplingParameters.getter(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      type metadata accessor for LLMWrapperUtils();
      v16 = 0;
      v10 = objc_opt_self();
      v4 = sub_1C735B430(v10, &selRef_freeformStoryPegasusParameters);
      v5 = &v16;
      goto LABEL_14;
    case 2:
      type metadata accessor for LLMWrapperUtils();
      v17 = 0;
      v3 = objc_opt_self();
      v4 = sub_1C735B430(v3, &selRef_assetCurationPegasusParameters);
      v5 = &v17;
      goto LABEL_14;
    case 3:
      type metadata accessor for LLMWrapperUtils();
      v18 = 0;
      v11 = objc_opt_self();
      v4 = sub_1C735B430(v11, &selRef_globalTraitsPegasusParameters);
      v5 = &v18;
      goto LABEL_14;
    case 6:
      type metadata accessor for LLMWrapperUtils();
      v19 = 1;
      v15 = objc_opt_self();
      v4 = sub_1C735B430(v15, &selRef_freeformStoryPegasusParameters);
      v5 = &v19;
      goto LABEL_14;
    case 8:
      type metadata accessor for LLMWrapperUtils();
      v20 = 1;
      v7 = objc_opt_self();
      v4 = sub_1C735B430(v7, &selRef_assetCurationPegasusParameters);
      v5 = &v20;
      goto LABEL_14;
    case 9:
      type metadata accessor for LLMWrapperUtils();
      v21 = 1;
      v12 = objc_opt_self();
      v4 = sub_1C735B430(v12, &selRef_globalTraitsPegasusParameters);
      v5 = &v21;
      goto LABEL_14;
    case 0xB:
      type metadata accessor for LLMWrapperUtils();
      v22 = 2;
      v6 = objc_opt_self();
      v4 = sub_1C735B430(v6, &selRef_freeformStoryThimbleParameters);
      v5 = &v22;
      goto LABEL_14;
    case 0xD:
      type metadata accessor for LLMWrapperUtils();
      v23 = 2;
      v14 = objc_opt_self();
      v4 = sub_1C735B430(v14, &selRef_assetCurationThimbleParameters);
      v5 = &v23;
      goto LABEL_14;
    case 0xE:
      type metadata accessor for LLMWrapperUtils();
      v24 = 2;
      v8 = objc_opt_self();
      v4 = sub_1C735B430(v8, &selRef_globalTraitsThimbleParameters);
      v5 = &v24;
      goto LABEL_14;
    case 0xF:
      type metadata accessor for LLMWrapperUtils();
      v25 = 3;
      v9 = objc_opt_self();
      v4 = sub_1C735B430(v9, &selRef_freeformStoryOnDeviceParameters);
      v5 = &v25;
      goto LABEL_14;
    case 0x11:
      type metadata accessor for LLMWrapperUtils();
      v26[0] = 3;
      v13 = objc_opt_self();
      v4 = sub_1C735B430(v13, &selRef_globalTraitsOnDeviceParameters);
      v5 = v26;
LABEL_14:
      static LLMWrapperUtils.samplingParameters(for:parameters:)(v5, v4, a1);

      break;
    default:
      v26[17] = 1;
      v26[9] = 1;
      v26[1] = 1;
      OUTLINED_FUNCTION_4_84(1);
      break;
  }
}

uint64_t LLMBackendType.description.getter()
{
  result = 0x6B6361626C6C6166;
  switch(*v0)
  {
    case 1:
      result = 0x736750736D67;
      break;
    case 2:
      result = 0x6C6254736D67;
      break;
    case 3:
      result = 0x446E4F736D67;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int __swiftcall LLMBackendType.asInt()()
{
  result = sub_1C710E08C(*v0, &unk_1F46A86B8);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C735A1A4@<X0>(uint64_t *a1@<X8>)
{
  result = LLMBackendType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Int __swiftcall LLMBackendEnvironment.asInt()()
{
  result = sub_1C710E258(*v0, &unk_1F46AA5C8);
  if (v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1C735A2F8@<X0>(uint64_t *a1@<X8>)
{
  result = LLMBackendEnvironment.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void static LLMWrapperUtils.samplingParameters(for:parameters:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    v65[0] = 1;
    v67 = 1;
    OUTLINED_FUNCTION_4_84(1);
    return;
  }

  v4 = *a1;
  if (v4 < 2)
  {
    OUTLINED_FUNCTION_7_74();
    if (v66)
    {
      if (OUTLINED_FUNCTION_0_150())
      {
LABEL_5:
        LOBYTE(v5) = 0;
        v6 = v63;
        goto LABEL_55;
      }
    }

    else
    {
      sub_1C6FE32F4(v65);
    }

    OUTLINED_FUNCTION_7_74();
    if (v66)
    {
      if (OUTLINED_FUNCTION_0_150())
      {
        v7 = sub_1C735B104(v63, v64);
        if (v8)
        {
          v6 = 0;
        }

        else
        {
          v6 = v7;
        }

        v5 = v8 << 31 >> 31;
        goto LABEL_55;
      }

LABEL_54:
      v6 = 0;
      LOBYTE(v5) = -1;
      goto LABEL_55;
    }

LABEL_53:
    sub_1C6FE32F4(v65);
    goto LABEL_54;
  }

  if (v4 == 2)
  {
    sub_1C6FE3750(1265659764, 0xE400000000000000, a2);
    if (v66)
    {
      if (OUTLINED_FUNCTION_0_150())
      {
LABEL_14:
        v6 = v63;
LABEL_39:
        LOBYTE(v5) = 1;
        goto LABEL_55;
      }
    }

    else
    {
      sub_1C6FE32F4(v65);
    }

    OUTLINED_FUNCTION_6_87();
    if (!v66)
    {
LABEL_44:
      sub_1C6FE32F4(v65);
      goto LABEL_45;
    }

    if ((OUTLINED_FUNCTION_0_150() & 1) == 0)
    {
      goto LABEL_45;
    }

    v17 = OUTLINED_FUNCTION_1_112(v9, v10, v11, v12, v13, v14, v15, v16, v62, *&v63);
    if (!(v19 ^ v20 | v18))
    {
      goto LABEL_107;
    }

    if (v17 <= -9.22337204e18)
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    OUTLINED_FUNCTION_26();
    if (v19)
    {
      goto LABEL_38;
    }

    __break(1u);
    goto LABEL_30;
  }

  sub_1C6FE3750(1265659764, 0xE400000000000000, a2);
  if (!v66)
  {
LABEL_30:
    sub_1C6FE32F4(v65);
    goto LABEL_31;
  }

  if (OUTLINED_FUNCTION_0_150())
  {
    goto LABEL_14;
  }

LABEL_31:
  OUTLINED_FUNCTION_6_87();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      v30 = OUTLINED_FUNCTION_1_112(v22, v23, v24, v25, v26, v27, v28, v29, v62, *&v63);
      if (!(v19 ^ v20 | v18))
      {
        goto LABEL_108;
      }

      if (v30 <= -9.22337204e18)
      {
LABEL_110:
        __break(1u);
LABEL_111:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_26();
      if (!v19)
      {
        goto LABEL_111;
      }

LABEL_38:
      v6 = v21;
      goto LABEL_39;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  OUTLINED_FUNCTION_7_74();
  if (!v66)
  {
    goto LABEL_44;
  }

  if (OUTLINED_FUNCTION_0_150())
  {
    goto LABEL_5;
  }

LABEL_45:
  OUTLINED_FUNCTION_6_87();
  if (!v66)
  {
    goto LABEL_53;
  }

  if ((OUTLINED_FUNCTION_0_150() & 1) == 0)
  {
    goto LABEL_54;
  }

  sub_1C71BCBCC(v63, v64);
  if (v32)
  {
    v6 = 0;
  }

  else
  {
    v6 = v31;
  }

  if (v32)
  {
    LOBYTE(v5) = -1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

LABEL_55:
  OUTLINED_FUNCTION_13_70();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      v33 = 0;
      v34 = v63;
      goto LABEL_64;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  OUTLINED_FUNCTION_13_70();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      v34 = sub_1C735B104(v63, v64);
      v33 = v35;
      goto LABEL_64;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  v34 = 0;
  v33 = 1;
LABEL_64:
  OUTLINED_FUNCTION_9_74();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      v36 = 0;
      v37 = v63;
      goto LABEL_82;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  OUTLINED_FUNCTION_9_74();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      v46 = OUTLINED_FUNCTION_1_112(v38, v39, v40, v41, v42, v43, v44, v45, v62, *&v63);
      if (!(v19 ^ v20 | v18))
      {
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      if (v46 <= -9.22337204e18)
      {
LABEL_103:
        __break(1u);
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      OUTLINED_FUNCTION_26();
      if (!v19)
      {
        goto LABEL_105;
      }

      v36 = 0;
      v37 = v47;
      goto LABEL_82;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  OUTLINED_FUNCTION_9_74();
  if (v66)
  {
    if (OUTLINED_FUNCTION_0_150())
    {
      sub_1C71BCBCC(v63, v64);
      v37 = v48;
      v36 = v49;
      goto LABEL_82;
    }
  }

  else
  {
    sub_1C6FE32F4(v65);
  }

  v37 = 0;
  v36 = 1;
LABEL_82:
  OUTLINED_FUNCTION_5_79();
  if (!v66)
  {
    sub_1C6FE32F4(v65);
LABEL_86:
    OUTLINED_FUNCTION_5_79();
    if (v66)
    {
      if (OUTLINED_FUNCTION_0_150())
      {
        v60 = OUTLINED_FUNCTION_1_112(v52, v53, v54, v55, v56, v57, v58, v59, v62, *&v63);
        if (v19 ^ v20 | v18)
        {
          if (v60 > -9.22337204e18)
          {
            OUTLINED_FUNCTION_26();
            if (v19)
            {
              v50 = 0;
              v51 = v61;
              goto LABEL_100;
            }

            goto LABEL_106;
          }

          goto LABEL_104;
        }

        goto LABEL_102;
      }
    }

    else
    {
      sub_1C6FE32F4(v65);
    }

    OUTLINED_FUNCTION_5_79();
    if (v66)
    {
      if (OUTLINED_FUNCTION_0_150())
      {
        sub_1C71BCBCC(v63, v64);
        goto LABEL_100;
      }
    }

    else
    {
      sub_1C6FE32F4(v65);
    }

    v51 = 0;
    v50 = 1;
    goto LABEL_100;
  }

  if (!OUTLINED_FUNCTION_0_150())
  {
    goto LABEL_86;
  }

  v50 = 0;
  v51 = v63;
LABEL_100:
  v65[0] = v33 & 1;
  v67 = v50 & 1;
  *a3 = v34;
  *(a3 + 8) = v33 & 1;
  *(a3 + 16) = v6;
  *(a3 + 24) = v5;
  *(a3 + 32) = v37;
  *(a3 + 40) = v36 & 1;
  *(a3 + 48) = v51;
  *(a3 + 56) = v50 & 1;
}

PhotosIntelligence::LLMModelType_optional __swiftcall LLMModelType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

void LLMModelType.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 3:
    case 5:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0x10:
    case 0x11:
    case 0x12:
    case 0x13:
      OUTLINED_FUNCTION_14_57();
      break;
    case 2:
    case 6:
    case 0xB:
    case 0xF:
      OUTLINED_FUNCTION_11_61();
      break;
    default:
      return;
  }
}

void sub_1C735AE08(void *a1@<X8>)
{
  LLMModelType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

uint64_t static LLMWrapperUtils.systemUserPrompt(systemPrompt:userPrompt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = a1 == 0xD000000000000036 && 0x80000001C759B7F0 == a2;
  if (v8 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C755180C();
    v9 = OUTLINED_FUNCTION_12_64();
    v10 = 0xE90000000000003ELL;
  }

  else
  {
    sub_1C755180C();
    v9 = OUTLINED_FUNCTION_12_64();
    v10 = 0xEA0000000000203ELL;
  }

  MEMORY[0x1CCA5CD70](v9, v10);
  MEMORY[0x1CCA5CD70](a1, a2);
  MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75ABF80);
  MEMORY[0x1CCA5CD70](a3, a4);
  MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75ABFA0);
  return 0;
}

uint64_t static LLMWrapperUtils.llmWrapperForCurrentBackend(fallback:gmsPegasus:gmsThimble:gmsOnDevice:)@<X0>(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *a4;
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(&v16);
  switch(v16)
  {
    case 1:
      v13 = v7;
      v10 = &v13;
      break;
    case 2:
      v14 = v8;
      v10 = &v14;
      break;
    case 3:
      v15 = v9;
      v10 = &v15;
      break;
    default:
      v12 = v6;
      v10 = &v12;
      break;
  }

  return LLMWrapper.init(modelType:)(v10, a5);
}

uint64_t sub_1C735B104(uint64_t a1, uint64_t a2)
{
  sub_1C735B9CC(a1, a2);

  return 0;
}

void static LLMWrapperUtils.samplingParametersForCurrentBackend(pegasus:thimble:onDevice:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(&v11);
  if (v11 == 2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a3;
  }

  if (v11 >= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = a1;
  }

  v10 = v11;
  static LLMWrapperUtils.samplingParameters(for:parameters:)(&v10, v9, a4);
}

void static LLMWrapperUtils.samplingParametersWithRandomSeedIfNotSet(from:logger:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = a1[2];
  v6 = *(a1 + 24);
  v7 = a1[4];
  v8 = *(a1 + 40);
  if (a1[7])
  {
    v9 = sub_1C7337458(0x8000000000000000);
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    if (os_log_type_enabled(v10, v11))
    {
      v14 = v3;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v9;
      v13 = "Random seed set to %ld.";
LABEL_6:
      _os_log_impl(&dword_1C6F5C000, v10, v11, v13, v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      v3 = v14;
    }
  }

  else
  {
    v9 = a1[6];
    v10 = sub_1C754FEEC();
    v11 = sub_1C75511BC();
    if (os_log_type_enabled(v10, v11))
    {
      v14 = v3;
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v9;
      v13 = "User default random seed set to %ld.";
      goto LABEL_6;
    }
  }

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v7;
  *(a2 + 40) = v8;
  *(a2 + 48) = v9;
  *(a2 + 56) = 0;
}

_BYTE *sub_1C735B37C@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

uint64_t sub_1C735B430(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_1C75504AC();

  return v4;
}

unint64_t sub_1C735B49C()
{
  result = qword_1EC21ADD8;
  if (!qword_1EC21ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ADD8);
  }

  return result;
}

unint64_t sub_1C735B524()
{
  result = qword_1EC21ADF0;
  if (!qword_1EC21ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ADF0);
  }

  return result;
}

unint64_t sub_1C735B5AC()
{
  result = qword_1EC21AE08;
  if (!qword_1EC21AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AE08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LLMBackendEnvironment(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LLMModelType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C735B8D0()
{
  result = qword_1EDD0C320;
  if (!qword_1EDD0C320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C320);
  }

  return result;
}

unint64_t sub_1C735B924()
{
  result = qword_1EDD09FC8;
  if (!qword_1EDD09FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FC8);
  }

  return result;
}

unint64_t sub_1C735B978()
{
  result = qword_1EDD0C048;
  if (!qword_1EDD0C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C048);
  }

  return result;
}

BOOL sub_1C735B9CC(uint64_t a1, uint64_t a2)
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
  v4 = _swift_stdlib_strtod_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

uint64_t sub_1C735BAEC()
{
  OUTLINED_FUNCTION_42();
  v1[81] = v0;
  v1[80] = v2;
  v1[79] = v3;
  v1[78] = v4;
  v1[77] = v5;
  v1[76] = v6;
  v1[75] = v7;
  v8 = sub_1C754E15C();
  v1[82] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[83] = v9;
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v10 = sub_1C754FA7C();
  v1[86] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[87] = v11;
  v1[88] = OUTLINED_FUNCTION_77();
  v12 = sub_1C754E72C();
  v1[89] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[90] = v13;
  v1[91] = swift_task_alloc();
  v1[92] = swift_task_alloc();
  v1[93] = swift_task_alloc();
  v1[94] = type metadata accessor for LLMConfiguration(0);
  v1[95] = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v1[96] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F38C();
  v1[97] = v14;
  OUTLINED_FUNCTION_18(v14);
  v1[98] = v15;
  v1[99] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v16, v17, v18);
}

uint64_t sub_1C735BD1C()
{
  v91 = v0;
  v2 = *(v0 + 768);
  v3 = *(v0 + 624);
  v4 = *(v0 + 616);
  v5 = v4[4];
  v6 = __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C754F60C();
  v7 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v7);
  sub_1C754F16C();
  sub_1C6FD7FC8(v2, &qword_1EC214BF0);
  sub_1C754F2CC();
  v8 = sub_1C735CC80();
  *(v0 + 800) = v8;
  if (!v8)
  {
    v12 = *(v0 + 792);
    OUTLINED_FUNCTION_11_62();
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v3, v4[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v1 + 8))(v12, v6);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v13 + 8))(v5);
    OUTLINED_FUNCTION_4_85();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_38_4();

    __asm { BRAA            X1, X16 }
  }

  v9 = v8;
  type metadata accessor for LLMConfigurationProvider();
  if (qword_1EC214040 != -1)
  {
    OUTLINED_FUNCTION_3_95();
  }

  v10 = *(v0 + 760);
  v11 = *(v0 + 648);
  LOBYTE(v89[0]) = byte_1EC21AE20;
  static LLMConfigurationProvider.configuration(for:logger:)(v89, v11, v10);
  v16 = *(v0 + 760);
  v17 = *(v0 + 752);
  v18 = *(v0 + 704);
  v19 = *(v0 + 696);
  v20 = *(v0 + 688);
  v21 = *(v0 + 664);
  v22 = *(v0 + 656);
  v85 = *(v0 + 680);
  loga = *(v0 + 632);
  v23 = (v16 + v17[10]);
  v24 = *v23;
  v25 = v23[1];
  v26 = v23[2];
  *(v0 + 577) = *(v23 + 41);
  *(v0 + 552) = v25;
  *(v0 + 568) = v26;
  *(v0 + 536) = v24;
  v27 = v23[1];
  v89[0] = *v23;
  v89[1] = v27;
  v90[0] = v23[2];
  *(v90 + 9) = *(v23 + 41);
  static LLMWrapper.gmsSamplingParameters(from:)();
  (*(v19 + 16))(v18, v16 + v17[6], v20);
  v28 = v17[11];
  v29 = *(v21 + 16);
  v29(v85, v16 + v28, v22);
  if (loga)
  {
    v30 = *(v0 + 632);
    sub_1C75504FC();
    if (sub_1C71656D8())
    {
      v31 = *(v0 + 608);
      v32 = (v30 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
      os_unfair_lock_lock(v32);
      sub_1C735CD44(&v32[2], v31, (v0 + 536));
      os_unfair_lock_unlock(v32);
    }
  }

  v33 = *(v0 + 744);
  v34 = *(v0 + 736);
  v35 = *(v0 + 720);
  v36 = *(v0 + 712);
  v29(*(v0 + 672), *(v0 + 680), *(v0 + 656));
  v37 = *(v35 + 16);
  v37(v34, v33, v36);
  sub_1C75504FC();
  v38 = sub_1C754FEEC();
  v39 = sub_1C75511BC();

  log = v38;
  v40 = os_log_type_enabled(v38, v39);
  v41 = *(v0 + 736);
  if (v40)
  {
    v84 = *(v0 + 720);
    v82 = *(v0 + 728);
    v83 = *(v0 + 712);
    v42 = *(v0 + 672);
    v86 = v39;
    v43 = *(v0 + 664);
    v80 = *(v0 + 736);
    v81 = v37;
    v44 = *(v0 + 656);
    v45 = swift_slowAlloc();
    *&v89[0] = swift_slowAlloc();
    *v45 = 136643331;
    v46 = sub_1C75504BC();
    v48 = sub_1C6F765A4(v46, v47, v89);

    *(v45 + 4) = v48;
    *(v45 + 12) = 2080;
    sub_1C735E864(&qword_1EDD0CB88, MEMORY[0x1E6969770]);
    v49 = sub_1C7551D8C();
    v51 = v50;
    v52 = *(v43 + 8);
    v52(v42, v44);
    v53 = sub_1C6F765A4(v49, v51, v89);

    *(v45 + 14) = v53;
    *(v45 + 22) = 2080;
    v81(v82, v80, v83);
    v54 = sub_1C75506EC();
    v56 = v55;
    v57 = *(v84 + 8);
    v57(v80, v83);
    v58 = sub_1C6F765A4(v54, v56, v89);

    *(v45 + 24) = v58;
    _os_log_impl(&dword_1C6F5C000, log, v86, "Generating query understanding completion using GMS one-shot path with prompt bindings %{sensitive}s, locale %s, and sampling parameters: %s", v45, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
    v59 = *(v0 + 720);
    v60 = *(v0 + 712);
    v61 = *(v0 + 672);
    v62 = *(v0 + 664);
    v63 = *(v0 + 656);

    v57 = *(v59 + 8);
    v57(v41, v60);
    v52 = *(v62 + 8);
    v52(v61, v63);
  }

  *(v0 + 816) = v52;
  *(v0 + 808) = v57;
  v64 = *(v0 + 744);
  v65 = *(v0 + 704);
  v66 = *(v0 + 680);
  v67 = *(v0 + 608);
  __swift_project_boxed_opaque_existential_1(*(v0 + 640), *(*(v0 + 640) + 24));
  *(v0 + 593) = 1;
  v68 = swift_task_alloc();
  *(v0 + 824) = v68;
  v68[2] = v65;
  v68[3] = v67;
  v68[4] = v9;
  v68[5] = v64;
  v68[6] = v66;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 832) = v69;
  *v69 = v70;
  v69[1] = sub_1C735C4C0;
  OUTLINED_FUNCTION_38_4();

  return sub_1C70597B4(v71, v72, v73, v74, v75, v76, v77);
}

uint64_t sub_1C735C4C0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 840) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C735C5C4()
{
  memcpy(v0 + 15, v0 + 2, 0x68uLL);
  sub_1C735E798((v0 + 15), (v0 + 28));
  v1 = sub_1C754FEEC();
  v2 = sub_1C75511BC();
  sub_1C7047668((v0 + 15));
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v33 = v4;
    *v3 = 136642819;
    memcpy(v0 + 41, v0 + 15, 0x68uLL);
    sub_1C735E798((v0 + 15), (v0 + 54));
    v5 = sub_1C75506EC();
    v7 = sub_1C6F765A4(v5, v6, &v33);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1C6F5C000, v1, v2, "Generated query understanding completion %{sensitive}s from GMS one-shot templated completion SPI", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v8 = v0[105];
  sub_1C754F2EC();
  v29 = v0[102];
  v30 = v0[101];
  v9 = v0[98];
  v31 = v0[97];
  v32 = v0[99];
  if (v8)
  {
    v27 = v0[89];
    v28 = v0[93];
    v10 = v0[88];
    v11 = v0[87];
    v12 = v0[86];
    v13 = v0[85];
    v14 = v0[82];
    v15 = v0[77];
    sub_1C706CB5C(v0[95]);

    sub_1C7047668((v0 + 15));
    v29(v13, v14);
    (*(v11 + 8))(v10, v12);
    v30(v28, v27);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1C754F1AC();
    (*(v9 + 8))(v32, v31);

    OUTLINED_FUNCTION_4_85();
  }

  else
  {
    v25 = v0[89];
    v26 = v0[93];
    v24 = v0[88];
    v16 = v0[87];
    v17 = v0[86];
    v18 = v0[85];
    v19 = v0[82];
    v20 = v0[77];
    v21 = v0[75];
    sub_1C706CB5C(v0[95]);

    memcpy(v21, v0 + 15, 0x68uLL);
    v29(v18, v19);
    (*(v16 + 8))(v24, v17);
    v30(v26, v25);
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    sub_1C754F1AC();
    (*(v9 + 8))(v32, v31);
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_38_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C735CA04()
{
  v15 = v0[101];
  v16 = v0[99];
  v1 = v0[98];
  v2 = v0[95];
  v12 = v0[102];
  v13 = v0[89];
  v14 = v0[93];
  v3 = v0[88];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[85];
  v7 = v0[82];
  v17 = v0[97];
  v18 = v0[78];
  v8 = v0[77];

  sub_1C706CB5C(v2);
  v12(v6, v7);
  (*(v4 + 8))(v3, v5);
  v15(v14, v13);
  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  sub_1C754F1AC();
  (*(v1 + 8))(v16, v17);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v9 + 8))(v18);
  OUTLINED_FUNCTION_4_85();

  OUTLINED_FUNCTION_43();

  return v10();
}

void sub_1C735CBF0()
{
  type metadata accessor for LLMWrapperUtils();
  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  static LLMWrapperUtils.queryUnderstandingModelType(for:)(&byte_1EC21AE20);
}

uint64_t sub_1C735CC80()
{
  if (qword_1EC214048 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B7A0);
  v0 = qword_1EC25B7A8;
  if (!qword_1EC25B7A8)
  {
    if (qword_1EC214040 != -1)
    {
      OUTLINED_FUNCTION_3_95();
    }

    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B7A8 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B7A0);
  return v0;
}

void sub_1C735CD44(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (qword_1EC214040 != -1)
  {
    swift_once();
  }

  v6 = byte_1EC21AE20;
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a1 + 64);
  v8 = sub_1C6FC296C();
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58);
  if (sub_1C7551A2C())
  {
    v12 = sub_1C6FC296C();
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_7;
    }

LABEL_11:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_7:
  *(a1 + 64) = v7;
  if ((v11 & 1) == 0)
  {
    sub_1C6FCABDC(v10, v6, MEMORY[0x1E69E7CC0], v7);
  }

  v14 = *(v7 + 56) + 8 * v10;
  sub_1C6FB0734();
  v15 = *(*v14 + 16);
  sub_1C6FB0FE8();
  v16 = *v14;
  *(v16 + 16) = v15 + 1;
  v17 = v16 + 72 * v15;
  *(v17 + 32) = a2;
  v18 = a3[1];
  *(v17 + 40) = *a3;
  *(v17 + 56) = v18;
  *(v17 + 72) = a3[2];
  *(v17 + 81) = *(a3 + 41);
}

uint64_t sub_1C735CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v7[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C735CF84, 0, 0);
}

uint64_t sub_1C735CF84()
{
  v1 = v0[9];
  v2 = sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_66_2();
  v4(v3);
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[10] = v5;
  *v5 = v6;
  v5[1] = sub_1C735D074;
  v7 = v0[9];
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[4];
  v11 = v0[5];
  v12 = v0[2];
  v13 = v0[3];

  return sub_1C735D1D0(v12, v10, v7, v13, v11, v8, v9);
}

uint64_t sub_1C735D074()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v6 = *(v5 + 72);
  v7 = *v1;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v3 + 88) = v0;

  sub_1C6FD7FC8(v6, &qword_1EC214DF8);
  if (v0)
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_43();

    return v12();
  }
}

uint64_t sub_1C735D1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v7[29] = a6;
  v7[30] = a7;
  v7[27] = a4;
  v7[28] = a5;
  v7[25] = a2;
  v7[26] = a3;
  v7[24] = a1;
  v7[31] = *a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v7[32] = v8;
  v7[33] = *(v8 - 8);
  v7[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v7[35] = swift_task_alloc();
  v7[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v7[37] = swift_task_alloc();
  v9 = sub_1C754EECC();
  v7[38] = v9;
  v7[39] = *(v9 - 8);
  v7[40] = swift_task_alloc();
  v10 = sub_1C754EEEC();
  v7[41] = v10;
  v7[42] = *(v10 - 8);
  v7[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v7[44] = swift_task_alloc();
  v11 = sub_1C754FD9C();
  v7[45] = v11;
  v7[46] = *(v11 - 8);
  v7[47] = swift_task_alloc();
  v7[48] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v7[49] = v12;
  v7[50] = *(v12 - 8);
  v7[51] = swift_task_alloc();
  v13 = sub_1C755029C();
  v7[52] = v13;
  v7[53] = *(v13 - 8);
  v7[54] = swift_task_alloc();
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v7[57] = swift_task_alloc();
  v7[58] = swift_task_alloc();
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C735D5A8, 0, 0);
}

uint64_t sub_1C735D5A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v54 = *(v26 + 472);
  v28 = *(v26 + 440);
  v27 = *(v26 + 448);
  v30 = *(v26 + 424);
  v29 = *(v26 + 432);
  v31 = *(v26 + 416);
  v51 = *(v26 + 408);
  v48 = *(v26 + 456);
  v49 = *(v26 + 400);
  v52 = *(v26 + 392);
  v53 = *(v26 + 464);
  v50 = *(v26 + 232);
  v55 = *(v26 + 352);
  v32 = *(v26 + 200);
  *(swift_task_alloc() + 16) = v32;
  sub_1C75502AC();

  sub_1C755028C();
  v33 = *(v30 + 8);
  *(v26 + 488) = v33;
  *(v26 + 496) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v33(v29, v31);
  sub_1C754DF8C();
  *(v26 + 504) = sub_1C735E864(&qword_1EDD06CA8, MEMORY[0x1E69C61F8]);
  sub_1C75503AC();

  v33(v28, v31);
  sub_1C70BFEC0();
  sub_1C75503DC();

  v33(v27, v31);
  *(v26 + 512) = sub_1C754E72C();
  OUTLINED_FUNCTION_12();
  v35 = *(v34 + 16);
  *(v26 + 520) = v35;
  *(v26 + 528) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v35(v51, v50);
  *(v26 + 600) = *MEMORY[0x1E69A1370];
  v36 = *(v49 + 104);
  *(v26 + 536) = v36;
  *(v26 + 544) = (v49 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v36(v51);
  sub_1C75503BC();
  v37 = *(v49 + 8);
  *(v26 + 552) = v37;
  *(v26 + 560) = (v49 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v51, v52);
  v33(v48, v31);
  sub_1C755037C();
  v33(v53, v31);
  sub_1C755038C();
  v33(v54, v31);
  v38 = sub_1C754FD8C();
  __swift_storeEnumTagSinglePayload(v55, 1, 1, v38);
  sub_1C754FD7C();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v26 + 568) = v44;
  *v44 = v45;
  v44[1] = sub_1C735D970;
  v46 = *(v26 + 280);

  return MEMORY[0x1EEE0B310](v46, 0xD00000000000001CLL, 0x80000001C75AC020, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

uint64_t sub_1C735D970()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C735DA6C()
{
  v1 = *(v0 + 280);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1C6FD7FC8(v1, &qword_1EC214E08);
  }

  else
  {
    v41 = *(v0 + 552);
    v40 = *(v0 + 536);
    v39 = *(v0 + 600);
    v38 = *(v0 + 520);
    v37 = *(v0 + 512);
    v48 = *(v0 + 488);
    v43 = *(v0 + 472);
    v44 = *(v0 + 480);
    v46 = *(v0 + 416);
    v47 = *(v0 + 424);
    v35 = *(v0 + 408);
    v36 = *(v0 + 392);
    v31 = *(v0 + 368);
    v32 = *(v0 + 360);
    v33 = *(v0 + 384);
    v49 = *(v0 + 344);
    v45 = *(v0 + 336);
    v3 = *(v0 + 328);
    v30 = *(v0 + 320);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v7 = *(v0 + 288);
    v6 = *(v0 + 296);
    v34 = *(v0 + 232);
    v42 = *(v0 + 200);
    v28 = *(v7 + 48);
    v29 = *(v2 + 48);
    v8 = *(v45 + 32);
    v8(v6, v1, v3);
    v9 = *(v5 + 32);
    v9(v6 + v28, v1 + v29, v4);
    v10 = *(v7 + 48);
    v8(v49, v6, v3);
    v9(v30, v6 + v10, v4);
    sub_1C754EEBC();
    (*(v31 + 8))(v33, v32);
    v11 = OUTLINED_FUNCTION_57_0();
    v12(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0xD00000000000004FLL;
    *(inited + 40) = 0x80000001C75973D0;
    v38(v35, v34, v37);
    v40(v35, v39, v36);
    *(inited + 72) = v37;
    __swift_allocate_boxed_opaque_existential_0((inited + 48));
    sub_1C754EBEC();
    v14 = OUTLINED_FUNCTION_57_0();
    v41(v14);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_1C755BAB0;
    strcpy((v15 + 32), "promptTemplate");
    *(v15 + 47) = -18;
    v16 = sub_1C754FA7C();
    *(v15 + 72) = v16;
    *(v15 + 80) = sub_1C735E864(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v15 + 48));
    (*(*(v16 - 8) + 16))(boxed_opaque_existential_0, v42, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    sub_1C75504DC();
    sub_1C754EEAC();

    (*(v5 + 8))(v30, v4);
    (*(v45 + 8))(v49, v3);
    v48(v44, v46);
    (*(v47 + 32))(v44, v43, v46);
  }

  v18 = *(v0 + 488);
  v19 = *(v0 + 472);
  v20 = *(v0 + 416);
  v21 = *(v0 + 240);
  sub_1C755039C();
  *(v0 + 184) = v21;
  sub_1C75503CC();
  v18(v19, v20);
  v22 = swift_task_alloc();
  *(v0 + 584) = v22;
  v23 = sub_1C735E864(&qword_1EDD0CB38, MEMORY[0x1E69DA470]);
  v24 = sub_1C735E810();
  *v22 = v0;
  v22[1] = sub_1C735E030;
  v25 = *(v0 + 256);
  v26 = *(v0 + 192);

  return MEMORY[0x1EEE0A3A0](v26, &type metadata for QueryUnderstandingCompletion, &type metadata for QueryUnderstandingCompletion, v25, &type metadata for QueryUnderstandingCompletion, v23, v24);
}

uint64_t sub_1C735E030()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C735E190()
{
  v1 = v0[61];
  v2 = v0[60];
  v3 = v0[52];
  (*(v0[46] + 8))(v0[48], v0[45]);
  v1(v2, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C735E2EC()
{
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66_2();
  v0(v3);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C735E3FC()
{
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_66_2();
  v0(v3);
  OUTLINED_FUNCTION_59_0();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C735E50C()
{
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754FA7C();
  sub_1C735E864(&qword_1EDD06CB0, MEMORY[0x1E69A14E8]);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v4 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v5 + v4, v3, v0);
  MEMORY[0x1CCA5C7D0](v5);

  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C735E6C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v3 + 16) = v11;
  *v11 = v12;
  v11[1] = sub_1C6F738F4;

  return sub_1C735CEDC(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_1C735E810()
{
  result = qword_1EC21AE28;
  if (!qword_1EC21AE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AE28);
  }

  return result;
}

uint64_t sub_1C735E864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t static FreeformStoryGenerator.Configuration.traitTitle(of:from:)(unsigned __int8 *a1, uint64_t a2)
{
  v4 = type metadata accessor for PersonalTrait();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *a1;
    v9 = a2 + 32;
    v10 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C6FB5E28(v9, v23);
      sub_1C6FB5E28(v23, v22);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10);
      v11 = swift_dynamicCast();
      if (v11)
      {
        sub_1C7245414(v6);
      }

      if (v8)
      {
        if (v8 != 1 || v11)
        {
LABEL_8:
          v12 = v24;
          v13 = v25;
          __swift_project_boxed_opaque_existential_1(v23, v24);
          v14 = (*(v13 + 32))(v12, v13);
          v16 = v15;
          __swift_destroy_boxed_opaque_existential_1(v23);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v10 = v19;
          }

          v17 = *(v10 + 16);
          if (v17 >= *(v10 + 24) >> 1)
          {
            sub_1C6FB1814();
            v10 = v20;
          }

          *(v10 + 16) = v17 + 1;
          v18 = v10 + 16 * v17;
          *(v18 + 32) = v14;
          *(v18 + 40) = v16;
          goto LABEL_15;
        }
      }

      else if ((v11 & 1) == 0)
      {
        goto LABEL_8;
      }

      __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_15:
      v9 += 40;
      if (!--v7)
      {
        return sub_1C706D154(v10);
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
  return sub_1C706D154(v10);
}

uint64_t FreeformStoryGenerator.Configuration.init(minimumNumberOfStorytellingAssets:minimumNumberOfChaptersPerStory:minimumNumberOfAssetsPerChapter:minimumNumberOfStoryAssetsForMontage:maximumRatioInNumberOfAssetsBetweenLargestAndShortestChapters:targetNumberOfCuratedAssets:minimumNumberOfCuratedAssets:minimumRatioOfCuratedAssetsToStorytellingAssetsIfNotManyCuratedAssets:absoluteMinimumNumberOfCuratedAssetsForStory:traitsToPassToLLMCuration:forceStoryType:persistNonPendingMemory:pipelineType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, char *a12, char a13, char *a14)
{
  v14 = *a8;
  v15 = *a12;
  v16 = *a14;
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a10;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a11;
  *(a9 + 64) = a7;
  *(a9 + 72) = v14;
  *(a9 + 73) = v15;
  *(a9 + 74) = a13;
  *(a9 + 75) = v16;
  return result;
}

uint64_t FreeformStoryGenerator.Configuration.TraitType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t sub_1C735EBDC()
{
  result = qword_1EC21AE30;
  if (!qword_1EC21AE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AE30);
  }

  return result;
}

uint64_t sub_1C735EC38(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 76))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 74);
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

uint64_t sub_1C735EC84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 76) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 76) = 0;
    }

    if (a2)
    {
      *(result + 74) = a2 + 1;
    }
  }

  return result;
}

_BYTE *_s13ConfigurationV9TraitTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C735EDC8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422E04();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C71F0AF8(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C735EE34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x55514D4C4C7369 && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x694274706D6F7270 && a2 == 0xEE0073676E69646ELL;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7274537972657571 && a2 == 0xEB00000000676E69;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6B6F547972657571 && a2 == 0xEB00000000736E65;
        if (v8 || (sub_1C7551DBC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001BLL && 0x80000001C75AC100 == a2;
          if (v9 || (sub_1C7551DBC() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000013 && 0x80000001C75AC120 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_1C7551DBC();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1C735F03C(char a1)
{
  result = 0x55514D4C4C7369;
  switch(a1)
  {
    case 1:
      result = 0x694274706D6F7270;
      break;
    case 2:
      result = 0x7274537972657571;
      break;
    case 3:
      result = 0x6B6F547972657571;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    case 5:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C735F118(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - v5;
  v7 = v1[1];
  v22 = v1[2];
  v23 = v7;
  v8 = v1[3];
  v20 = v1[4];
  v21 = v8;
  v9 = v1[5];
  v18 = v1[6];
  v19 = v9;
  v10 = v1[7];
  v16 = v1[8];
  v17 = v10;
  v11 = v1[10];
  v15[1] = v1[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C735FF18();
  sub_1C755200C();
  LOBYTE(v25) = 0;
  v12 = v24;
  sub_1C7551CDC();
  if (!v12)
  {
    v13 = v16;
    v25 = v23;
    v26 = v22;
    v27 = v21;
    v28 = v20;
    v29 = v19;
    v30 = 1;
    sub_1C717FBD4(v23, v22);
    sub_1C73189BC();
    sub_1C7551CBC();
    sub_1C7318A10(v25, v26);
    LOBYTE(v25) = 2;
    sub_1C7551CCC();
    v25 = v13;
    v30 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068);
    sub_1C735FF6C(&qword_1EDD0D068, sub_1C7224B4C);
    sub_1C7551D2C();
    LOBYTE(v25) = 4;
    sub_1C7551D0C();
    v25 = v11;
    v30 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C6FF60E4(&qword_1EDD0CF60);
    sub_1C7551D2C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C735F438@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE48);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C735FF18();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v30) = 0;
  v9 = sub_1C7551BCC();
  LOBYTE(__src[0]) = 1;
  sub_1C7318AC8();
  sub_1C7551BAC();
  v28 = v30;
  v27 = v31;
  v23 = v32;
  v24 = v33;
  v25 = v34;
  LOBYTE(v30) = 2;
  v10 = sub_1C7551BBC();
  v26 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219068);
  LOBYTE(__src[0]) = 3;
  sub_1C735FF6C(&qword_1EDD0D060, sub_1C7224E6C);
  sub_1C7551C1C();
  v22 = v10;
  v12 = v30;
  LOBYTE(v30) = 4;
  v21 = sub_1C7551BFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v41 = 5;
  sub_1C6FF60E4(&qword_1EDD0CF50);
  sub_1C7551C1C();
  v20 = v9 & 1;
  (*(v6 + 8))(v8, v5);
  v19 = v42;
  LOBYTE(__src[0]) = v9 & 1;
  __src[1] = v28;
  v13 = v27;
  v14 = v23;
  __src[2] = v27;
  __src[3] = v23;
  v15 = v24;
  v16 = v25;
  __src[4] = v24;
  __src[5] = v25;
  v17 = v26;
  __src[6] = v22;
  __src[7] = v26;
  __src[8] = v12;
  __src[9] = v21;
  __src[10] = v42;
  memcpy(a2, __src, 0x58uLL);
  sub_1C735FFE4(__src, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  LOBYTE(v30) = v20;
  v31 = v28;
  v32 = v13;
  v33 = v14;
  v34 = v15;
  v35 = v16;
  v36 = v22;
  v37 = v17;
  v38 = v12;
  v39 = v21;
  v40 = v19;
  return sub_1C735FD34(&v30);
}

uint64_t sub_1C735F9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C735EE34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C735F9C8(uint64_t a1)
{
  v2 = sub_1C735FF18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C735FA04(uint64_t a1)
{
  v2 = sub_1C735FF18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static QueryUnderstandingDiagnosticsGenerator.save(isLLMQU:promptBindings:queryString:queryTokens:retrievedAssetUUIDs:in:)(char a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  result = PFOSVariantHasInternalDiagnostics();
  if (result)
  {
    __src[0] = a5;
    sub_1C75504FC();
    sub_1C735EDC8(__src);
    if (v6)
    {

      __break(1u);
    }

    else
    {
      v16 = __src[0];
      v25 = a6;
      sub_1C75504FC();
      sub_1C70401E8();
      v17 = *(a6 + 16);
      LOBYTE(__src[0]) = a1 & 1;
      __src[1] = v10;
      __src[2] = v11;
      __src[3] = v12;
      __src[4] = v13;
      __src[5] = v14;
      __src[6] = a3;
      __src[7] = a4;
      __src[8] = v16;
      __src[9] = v17;
      __src[10] = v25;
      sub_1C754DBCC();
      swift_allocObject();
      sub_1C717FBD4(v10, v11);
      sub_1C75504FC();
      sub_1C754DBBC();
      sub_1C754DB9C();
      memcpy(__dst, __src, sizeof(__dst));
      sub_1C735FCE0();
      v18 = sub_1C754DBAC();
      v20 = v19;
      sub_1C735FD34(__src);
      sub_1C7161C08();
      sub_1C6FC1640(v18, v20);
    }
  }

  return result;
}

unint64_t sub_1C735FCE0()
{
  result = qword_1EDD07F10;
  if (!qword_1EDD07F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F10);
  }

  return result;
}

unint64_t sub_1C735FD64()
{
  result = qword_1EC21AE38;
  if (!qword_1EC21AE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AE38);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryUnderstandingDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C735FE74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1C735FEB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C735FF18()
{
  result = qword_1EDD07F28;
  if (!qword_1EDD07F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F28);
  }

  return result;
}

uint64_t sub_1C735FF6C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219068);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for QueryUnderstandingDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C73600FC()
{
  result = qword_1EC21AE50;
  if (!qword_1EC21AE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21AE50);
  }

  return result;
}

unint64_t sub_1C7360154()
{
  result = qword_1EDD07F18;
  if (!qword_1EDD07F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F18);
  }

  return result;
}

unint64_t sub_1C73601AC()
{
  result = qword_1EDD07F20;
  if (!qword_1EDD07F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07F20);
  }

  return result;
}

uint64_t sub_1C7360200(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = 0;
  v8 = *(a2 + 16);
  v9 = a2 + 32;
  v26 = a2 + 32;
  while (2)
  {
    for (i = (v9 + 120 * v7); ; i += 120)
    {
      if (v8 == v7)
      {
        return a1;
      }

      if (v7 >= v8)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      memcpy(__dst, i, 0x78uLL);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_23;
      }

      if (!*(*a3 + 16))
      {
        break;
      }

      sub_1C6FCA6E4(__dst, v24);
      sub_1C6FC2A70();
      if ((v11 & 1) == 0)
      {
        goto LABEL_10;
      }

LABEL_11:
      sub_1C6FDD548(__dst);
      ++v7;
    }

    sub_1C6FCA6E4(__dst, v24);
LABEL_10:
    v12 = __dst[12];
    if (!__dst[12])
    {
      goto LABEL_11;
    }

    v23 = v4;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v24[0] = a1;
    v13 = sub_1C6FC2A70();
    if (__OFADD__(a1[2], (v14 & 1) == 0))
    {
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      break;
    }

    v15 = v13;
    v16 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215300);
    if ((sub_1C7551A2C() & 1) == 0)
    {
      goto LABEL_16;
    }

    v17 = sub_1C6FC2A70();
    if ((v16 & 1) == (v18 & 1))
    {
      v15 = v17;
LABEL_16:
      a1 = v24[0];
      if (v16)
      {
        *(*(v24[0] + 56) + 8 * v15) = v12;

        sub_1C6FDD548(__dst);
LABEL_20:
        ++v7;
        v4 = v23;
        v9 = v26;
        continue;
      }

      *(v24[0] + 8 * (v15 >> 6) + 64) |= 1 << v15;
      memcpy((a1[6] + 120 * v15), __dst, 0x78uLL);
      *(a1[7] + 8 * v15) = v12;
      v19 = a1[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (!v20)
      {
        a1[2] = v21;
        goto LABEL_20;
      }

      goto LABEL_25;
    }

    break;
  }

  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

void sub_1C7360418(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = a1;
    v46 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v6 = v46;
    v7 = sub_1C719D92C(v4);
    v10 = v9;
    v11 = a2;
    v12 = 0;
    v13 = v4 + 56;
    v39 = v4 + 64;
    v40 = v3;
    v41 = v4 + 56;
    if ((v7 & 0x8000000000000000) == 0)
    {
      while (v7 < 1 << *(v4 + 32))
      {
        v14 = v7 >> 6;
        v15 = 1 << v7;
        if ((*(v13 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
        {
          goto LABEL_26;
        }

        if (*(v4 + 36) != v10)
        {
          goto LABEL_27;
        }

        v16 = v8;
        v42 = v12;
        v17 = v4;
        v18 = v7;
        v43 = *(*(v4 + 48) + v7);
        v19 = v11;
        sub_1C736B2E0(&v43, v11, &v44);
        if (v2)
        {
          goto LABEL_31;
        }

        v20 = v44;
        v21 = v45;
        v46 = v6;
        v22 = *(v6 + 16);
        v23 = v22 + 1;
        if (v22 >= *(v6 + 24) >> 1)
        {
          v38 = v44;
          v37 = v45;
          sub_1C6F7ED9C();
          v20 = v38;
          v23 = v22 + 1;
          v21 = v37;
          v6 = v46;
        }

        *(v6 + 16) = v23;
        v24 = v6 + 16 * v22;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        if (v16)
        {
          goto LABEL_32;
        }

        v25 = 1 << *(v17 + 32);
        if (v18 >= v25)
        {
          goto LABEL_28;
        }

        v4 = v17;
        v13 = v41;
        v26 = *(v41 + 8 * v14);
        if ((v26 & v15) == 0)
        {
          goto LABEL_29;
        }

        if (*(v4 + 36) != v10)
        {
          goto LABEL_30;
        }

        v27 = v18;
        v11 = v19;
        v28 = v26 & (-2 << (v18 & 0x3F));
        if (v28)
        {
          v25 = __clz(__rbit64(v28)) | v18 & 0x7FFFFFFFFFFFFFC0;
          v29 = v40;
        }

        else
        {
          v30 = v14 << 6;
          v31 = v14 + 1;
          v29 = v40;
          v32 = (v39 + 8 * v14);
          while (v31 < (v25 + 63) >> 6)
          {
            v34 = *v32++;
            v33 = v34;
            v30 += 64;
            ++v31;
            if (v34)
            {
              v35 = v11;
              sub_1C6F9ED50(v27, v10, 0);
              v11 = v35;
              v25 = __clz(__rbit64(v33)) + v30;
              goto LABEL_20;
            }
          }

          v36 = v11;
          sub_1C6F9ED50(v27, v10, 0);
          v11 = v36;
        }

LABEL_20:
        v12 = v42 + 1;
        if (v42 + 1 == v29)
        {

          return;
        }

        v8 = 0;
        v10 = *(v4 + 36);
        v7 = v25;
        v2 = 0;
        if (v25 < 0)
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
LABEL_31:

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_1C73606D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 40);
  if (v6)
  {
    while (1)
    {
      v8 = *v7;
      v10[0] = *(v7 - 1);
      v10[1] = v8;
      sub_1C75504FC();
      sub_1C7366D34(v10, a2, a3);
      if (v3)
      {
        break;
      }

      v7 += 2;
      if (!--v6)
      {
      }
    }
  }
}

uint64_t sub_1C7360780(uint64_t *a1)
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
  sub_1C736D66C(v6);
  return sub_1C755193C();
}

uint64_t sub_1C73607FC()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 216) = v4;
  *(v1 + 224) = v0;
  *(v1 + 200) = v5;
  *(v1 + 208) = v6;
  *(v1 + 184) = v7;
  *(v1 + 192) = v8;
  v9 = sub_1C754F38C();
  *(v1 + 232) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 240) = v10;
  *(v1 + 248) = swift_task_alloc();
  *(v1 + 256) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *v3;
  *(v1 + 264) = v11;
  *(v1 + 272) = v12;
  *(v1 + 58) = *(v3 + 8);
  *(v1 + 59) = *(v3 + 9);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C73608E0()
{
  OUTLINED_FUNCTION_115_0();
  v1 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v1, v2);
  OUTLINED_FUNCTION_71_2();
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v3, v4);
  sub_1C754F15C();
  sub_1C754F2CC();
  v5 = swift_task_alloc();
  *(v0 + 280) = v5;
  *v5 = v0;
  v5[1] = sub_1C7360ACC;

  return sub_1C7362044();
}

uint64_t sub_1C7360ACC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  *(v2 + 288) = v1;
  *(v2 + 296) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C7360BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[37];
  sub_1C754F2DC();
  v14 = v12[36];
  if (v13)
  {
    v16 = v12[25];
    v15 = v12[26];
    __swift_destroy_boxed_opaque_existential_1((v12 + 14));

    OUTLINED_FUNCTION_70(v16, v16[3]);
    OUTLINED_FUNCTION_455();
    sub_1C754F1AC();
    v17 = OUTLINED_FUNCTION_15_1();
    v20(v17, v19);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v21 + 8))(v15);
    OUTLINED_FUNCTION_109_12();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    v18 = sub_1C70A854C(v12[36], v12 + 14);
    v12[38] = v18;
    v12[39] = sub_1C73625E0(v14, v18);

    sub_1C754F2DC();
    sub_1C7362774();
    v12[40] = v31;
    sub_1C754F2DC();
    v32 = swift_task_alloc();
    v12[41] = v32;
    *v32 = v12;
    v32[1] = sub_1C7360E78;
    OUTLINED_FUNCTION_455();
    OUTLINED_FUNCTION_44();

    return sub_1C736368C();
  }
}

uint64_t sub_1C7360E78()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 336) = v5;
  *(v3 + 344) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7360F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v15 = *(v12 + 344);
  sub_1C754F2DC();
  if (v15)
  {
    OUTLINED_FUNCTION_100_14();

    OUTLINED_FUNCTION_70(v14, v14[3]);
    OUTLINED_FUNCTION_145_2();
    sub_1C754F1AC();
    v16 = OUTLINED_FUNCTION_55();
    v17(v16);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v18 + 8))(v13);
    OUTLINED_FUNCTION_109_12();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v28 = swift_task_alloc();
    *(v12 + 352) = v28;
    *v28 = v12;
    v28[1] = sub_1C7361114;
    OUTLINED_FUNCTION_44();

    return sub_1C7363C18();
  }
}

uint64_t sub_1C7361114()
{
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  *(v2 + 360) = v6;
  *(v2 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7361258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v15 = *(v12 + 368);
  sub_1C754F2DC();
  if (v15)
  {
    OUTLINED_FUNCTION_100_14();

    OUTLINED_FUNCTION_70(v14, v14[3]);
    OUTLINED_FUNCTION_145_2();
    sub_1C754F1AC();
    v16 = OUTLINED_FUNCTION_55();
    v17(v16);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v18 + 8))(v13);
    OUTLINED_FUNCTION_109_12();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
  }

  else
  {
    v28 = *(v12 + 360);
    v29 = *(v12 + 320);
    v30 = *(v12 + 59);
    v31 = *(v12 + 58);
    v32 = *(v12 + 272);
    OUTLINED_FUNCTION_141_1((v12 + 112), *(v12 + 136));
    sub_1C754F1CC();
    if (v30)
    {
      v33 = 256;
    }

    else
    {
      v33 = 0;
    }

    v34 = v33 | v31;
    *(v12 + 60) = *(type metadata accessor for QueryGenerator() + 40);
    *(v12 + 16) = 3;
    *(v12 + 24) = v28;
    *(v12 + 32) = v29;
    *(v12 + 40) = 257;
    *(v12 + 48) = v32;
    *(v12 + 56) = v34;
    swift_bridgeObjectRetain_n();
    sub_1C75504FC();
    sub_1C75504FC();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v12 + 376) = v35;
    *v35 = v36;
    v35[1] = sub_1C7361484;
    OUTLINED_FUNCTION_44();

    return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v37, v38);
  }
}

uint64_t sub_1C7361484()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 384) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73615D4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = *(v0 + 360);
    v3 = *(v0 + 160);
    v4 = sub_1C75504FC();
    sub_1C716A74C(v4);
    sub_1C7364A20(v2, v1);
    OUTLINED_FUNCTION_103_0();
  }

  else
  {
    v3 = *(v0 + 360);
  }

  *(v0 + 392) = v3;
  v5 = *(v0 + 320);
  v14 = *(v0 + 272);
  v6 = *(v0 + 240);
  if (*(v0 + 59))
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  v13 = v7 | *(v0 + 58);
  OUTLINED_FUNCTION_70((v0 + 112), *(v0 + 136));
  sub_1C754F1AC();
  *(v0 + 400) = *(v6 + 8);
  *(v0 + 408) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8 = OUTLINED_FUNCTION_455();
  v9(v8);
  OUTLINED_FUNCTION_141_1((v0 + 112), *(v0 + 136));
  OUTLINED_FUNCTION_119_12();
  sub_1C754F1CC();
  *(v0 + 64) = 4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v5;
  *(v0 + 88) = 257;
  *(v0 + 96) = v14;
  *(v0 + 104) = v13;
  sub_1C75504FC();
  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 416) = v10;
  *v10 = v11;
  v10[1] = sub_1C7361904;

  return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v0 + 168, v0 + 64);
}

uint64_t sub_1C73617D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[33];
  v14 = v12[29];
  v15 = v12[30];
  v17 = v12[25];
  v16 = v12[26];

  OUTLINED_FUNCTION_70(v12 + 14, v12[17]);
  sub_1C754F1AC();
  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_55();
  v18(v19);
  __swift_destroy_boxed_opaque_existential_1((v12 + 14));
  OUTLINED_FUNCTION_70(v17, v17[3]);
  OUTLINED_FUNCTION_95_1();
  sub_1C754F1AC();
  (v18)(v13, v14);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v20 + 8))(v16);
  OUTLINED_FUNCTION_110_9();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1C7361904()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 424) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7361A48()
{
  v1 = v0[21];
  if (v1)
  {
    v2 = v0[49];
    v3 = sub_1C75504FC();
    sub_1C716A74C(v3);
    v22 = sub_1C7364A20(v2, v1);
  }

  else
  {
    v22 = v0[49];
  }

  v19 = v0[53];
  v4 = v0[50];
  OUTLINED_FUNCTION_70(v0 + 14, v0[17]);
  sub_1C754F1AC();
  v5 = OUTLINED_FUNCTION_55();
  v4(v5);
  sub_1C754F2DC();
  if (v19)
  {
    v18 = v0[50];
    v6 = v0[33];
    v7 = v0[29];
    v8 = v0[25];
    v20 = v0[26];
    __swift_destroy_boxed_opaque_existential_1((v0 + 14));

    OUTLINED_FUNCTION_70(v8, v8[3]);
    sub_1C754F1AC();
    v18(v6, v7);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v9 + 8))(v20);
    OUTLINED_FUNCTION_109_12();
  }

  else
  {
    sub_1C754F2EC();
    v21 = v0[50];
    v10 = v0[40];
    v11 = v0[38];
    v12 = v0[33];
    v15 = v0[29];
    v16 = v0[25];
    v17 = v0[23];
    __swift_destroy_boxed_opaque_existential_1((v0 + 14));
    *v17 = v22;
    v17[1] = v11;
    v17[2] = v10;
    OUTLINED_FUNCTION_70(v16, v16[3]);
    OUTLINED_FUNCTION_145_2();
    sub_1C754F1AC();
    v21(v12, v15);
  }

  OUTLINED_FUNCTION_43();

  return v13();
}

uint64_t sub_1C7361D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[50];
  v14 = v12[25];
  v27 = v12[26];

  OUTLINED_FUNCTION_58_16(v12 + 14);
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_55();
  v13(v15);
  __swift_destroy_boxed_opaque_existential_1((v12 + 14));
  OUTLINED_FUNCTION_58_16(v14);
  sub_1C754F1AC();
  v16 = OUTLINED_FUNCTION_455();
  v13(v16);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v17 + 8))(v27);
  OUTLINED_FUNCTION_110_9();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, v27, a10, a11, a12);
}

uint64_t sub_1C7361E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_15_68();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);
  OUTLINED_FUNCTION_110_9();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7361EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_15_68();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);
  OUTLINED_FUNCTION_110_9();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7361F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_15_68();
  v11 = OUTLINED_FUNCTION_39_1();
  v12(v11);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(v10);
  OUTLINED_FUNCTION_110_9();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

uint64_t sub_1C7362044()
{
  OUTLINED_FUNCTION_42();
  v1[73] = v0;
  v5 = OUTLINED_FUNCTION_133_8(v2, v3, v4);
  v1[74] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[75] = v6;
  v1[76] = OUTLINED_FUNCTION_77();
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73620E4()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 560);
  OUTLINED_FUNCTION_141_1(*(v0 + 568), *(*(v0 + 568) + 24));
  OUTLINED_FUNCTION_134_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
  sub_1C7043EF8();
  v2 = sub_1C75504DC();
  *(v0 + 616) = v2;
  type metadata accessor for QueryGenerator();
  *(v0 + 496) = 0;
  *(v0 + 504) = v1;
  *(v0 + 512) = v2;
  OUTLINED_FUNCTION_131_5();
  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 624) = v3;
  *v3 = v4;
  v3[1] = sub_1C7362228;

  return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v0 + 544, v0 + 496);
}

uint64_t sub_1C7362228()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 632) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C736233C()
{
  v36 = v0;
  v2 = *(v0 + 544);
  if (!v2)
  {
    OUTLINED_FUNCTION_58_16(*(v0 + 568));
    sub_1C75504FC();
    goto LABEL_16;
  }

  v3 = *(v0 + 560);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C716A74C(v2);
  v4 = *(v3 + 16);
  if (!v4)
  {

    goto LABEL_15;
  }

  v5 = *(v0 + 560);
  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_96_13();
  while (1)
  {
    OUTLINED_FUNCTION_138_5((v0 + 16));
    OUTLINED_FUNCTION_138_5(v34);
    v6 = OUTLINED_FUNCTION_142_3();
    OUTLINED_FUNCTION_103_9(v6, v7, v8, v9, v10, v11, v12, v13, v29, v31, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
    if (v5)
    {
      break;
    }

    OUTLINED_FUNCTION_141_7((v0 + 376), v14, v15, v16, v17, v18, v19, v20, v30, v32, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
    sub_1C6FDD548(v0 + 376);
    memcpy(v35, __src, sizeof(v35));
    OUTLINED_FUNCTION_125_7();
    if (v22)
    {
      OUTLINED_FUNCTION_15(v21);
      OUTLINED_FUNCTION_177();
      sub_1C716D7D8();
    }

    OUTLINED_FUNCTION_102_12();
    if (!v4)
    {

LABEL_15:
      OUTLINED_FUNCTION_58_16(*(v0 + 568));
LABEL_16:
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      v25 = OUTLINED_FUNCTION_55();
      v26(v25);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_91_14();

      __asm { BRAA            X2, X16 }
    }

    v5 = 0;
    v1 += 120;
    --v4;
  }

  OUTLINED_FUNCTION_141_7((v0 + 256), v14, v15, v16, v17, v18, v19, v20, v30, v32, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
  sub_1C6FDD548(v0 + 256);
  OUTLINED_FUNCTION_91_14();
}

uint64_t sub_1C7362534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 568);

  OUTLINED_FUNCTION_38_6(v11);
  v12 = OUTLINED_FUNCTION_39_1();
  v13(v12);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10);
}

void *sub_1C73625E0(void *a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16))
  {
    v3 = a1[2];
    if (v3)
    {
      v13 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_106_3();
      sub_1C716D7D8();
      v5 = (v2 + 4);
      v2 = v13;
      while (1)
      {
        memcpy(__dst, v5, sizeof(__dst));
        if (!*(a2 + 16))
        {
          break;
        }

        sub_1C6FCA6E4(__dst, __src);
        sub_1C6FC2A70();
        if ((v6 & 1) == 0)
        {
          goto LABEL_8;
        }

        memcpy(__src, __dst, sizeof(__src));
        sub_1C6FCA6E4(__dst, v11);
        v7 = sub_1C75504FC();
        QueryToken.addRetrievalResults(_:)(v7);
        sub_1C6FDD548(__dst);

LABEL_9:
        memcpy(v11, __src, sizeof(v11));
        v13 = v2;
        v9 = v2[2];
        v8 = v2[3];
        if (v9 >= v8 >> 1)
        {
          OUTLINED_FUNCTION_15(v8);
          sub_1C716D7D8();
          v2 = v13;
        }

        v2[2] = v9 + 1;
        memcpy(&v2[15 * v9 + 4], v11, 0x78uLL);
        v5 += 120;
        if (!--v3)
        {
          return v2;
        }
      }

      sub_1C6FCA6E4(__dst, __src);
LABEL_8:
      memcpy(__src, __dst, sizeof(__src));
      goto LABEL_9;
    }

    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    sub_1C75504FC();
  }

  return v2;
}

void sub_1C7362774()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v143 = v3;
  v5 = v4;
  v6 = v175;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_14_2();
  v148 = v8;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_140_1();
  v152 = v10;
  v11 = OUTLINED_FUNCTION_37_3();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v11);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_2();
  v149 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v150 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v151 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v168 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_140_1();
  v165 = v21;
  v22 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v22);
  v24 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v170 = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_2();
  v163 = v26;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_140_1();
  v164 = v28;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v140 = v30;
  v141 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_0();
  v33 = v32 - v31;
  v144 = v2;
  v34 = OUTLINED_FUNCTION_294();
  OUTLINED_FUNCTION_141_1(v34, v35);
  v139 = v33;
  OUTLINED_FUNCTION_119_12();
  sub_1C754F1CC();
  v176 = MEMORY[0x1E69E7CC8];
  v155 = *(v5 + 16);
  v142 = v5;
  if (v155)
  {
    v156 = 0;
    v37 = 0;
    v147 = 0;
    v154 = v5 + 32;
    v157 = MEMORY[0x1E69E7CC8];
    *&v36 = 136642819;
    v146 = v36;
    *&v36 = 136315395;
    v160 = v36;
    v38 = TokenCategoryType;
    isUniquelyReferenced_nonNull_native = v163;
    v40 = v165;
    v161 = v0;
    while (1)
    {
      v159 = v37;
      memcpy(v175, (v154 + 120 * v37), sizeof(v175));
      v41 = v175[12];
      v166 = v175[2];
      v167 = v175[3];
      if (v175[12])
      {
        if (v175[13])
        {
          v42 = v175[13];
        }

        else
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        v43 = v175[10];
        v171 = *(v175[10] + 16);
        if (v171)
        {
          v158 = v42;
          OUTLINED_FUNCTION_85_13();
          v169 = v43 + v44;
          OUTLINED_FUNCTION_107_10();
          v153 = v41;
          sub_1C75504FC();
          sub_1C75504FC();
          v172 = v43;
          sub_1C75504FC();
          v45 = 0;
          v6 = v164;
          while (1)
          {
            if (v45 >= *(v172 + 16))
            {
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
              goto LABEL_90;
            }

            OUTLINED_FUNCTION_4_86();
            sub_1C71AC0CC(v46, v6, v47);
            OUTLINED_FUNCTION_2_102();
            sub_1C71AC0CC(v6, v40, v48);
            swift_storeEnumTagMultiPayload();
            static QueryTokenCategoryType.~= infix(_:_:)();
            v50 = v49;
            OUTLINED_FUNCTION_0_151();
            sub_1C736F5E4(v168, v51);
            if (v50)
            {
              goto LABEL_20;
            }

            if (qword_1EDD0E0C8 != -1)
            {
              OUTLINED_FUNCTION_39_36();
              swift_once();
            }

            __swift_project_value_buffer(v38, qword_1EDD0E0D0);
            OUTLINED_FUNCTION_116_12();
            static QueryTokenCategoryType.~= infix(_:_:)();
            if (v52)
            {
              goto LABEL_20;
            }

            if (qword_1EDD0E0A0 != -1)
            {
              OUTLINED_FUNCTION_38();
              swift_once();
            }

            __swift_project_value_buffer(v38, qword_1EDD0E0A8);
            OUTLINED_FUNCTION_116_12();
            static QueryTokenCategoryType.~= infix(_:_:)();
            if (v53)
            {
              goto LABEL_20;
            }

            if (qword_1EC213CC0 != -1)
            {
              OUTLINED_FUNCTION_37_32();
              swift_once();
            }

            __swift_project_value_buffer(v38, &qword_1EC216260);
            OUTLINED_FUNCTION_116_12();
            static QueryTokenCategoryType.~= infix(_:_:)();
            if (v54)
            {
LABEL_20:
              OUTLINED_FUNCTION_4_86();
              sub_1C71AC0CC(v6, isUniquelyReferenced_nonNull_native, v55);
              OUTLINED_FUNCTION_107_10();
              v56 = sub_1C754FEEC();
              v41 = v6;
              v57 = sub_1C75511BC();
              sub_1C6FDD548(v175);
              if (os_log_type_enabled(v56, v57))
              {
                v58 = OUTLINED_FUNCTION_23_1();
                v174 = swift_slowAlloc();
                *v58 = v160;
                QueryTokenCategoryType.string.getter(v173);
                v59 = 0xE400000000000000;
                v60 = 1701736302;
                switch(v173[0])
                {
                  case 1:
                    v59 = 0xE600000000000000;
                    v61 = 1936876912;
                    goto LABEL_56;
                  case 2:
                    v60 = 0x67416E6F73726570;
                    v79 = 0x6570795465;
                    goto LABEL_38;
                  case 3:
                    v60 = 1702125924;
                    break;
                  case 4:
                    OUTLINED_FUNCTION_188();
                    v59 = v80 + 20;
                    v60 = 0x6144664F74726170;
                    break;
                  case 5:
                    OUTLINED_FUNCTION_437();
                    v59 = v95 + 1529;
                    v60 = 0x6557664F74726170;
                    break;
                  case 6:
                    v59 = 0xE600000000000000;
                    v61 = 1935762803;
LABEL_56:
                    v60 = v61 & 0xFFFF0000FFFFFFFFLL | 0x6E6F00000000;
                    break;
                  case 7:
                    v59 = 0xE800000000000000;
                    v77 = 1633906540;
                    goto LABEL_51;
                  case 8:
                    v60 = 0x4C636972656E6567;
                    v59 = 0xEF6E6F697461636FLL;
                    break;
                  case 9:
                    v60 = 1952540791;
                    break;
                  case 0xA:
                    v60 = 0x764563696C627570;
                    v59 = 0xEB00000000746E65;
                    break;
                  case 0xB:
                    v60 = 0x6C616E6F73726570;
                    v79 = 0x746E657645;
LABEL_38:
                    v59 = v79 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
                    break;
                  case 0xC:
                    v60 = 0x746954636973756DLL;
                    v59 = 0xEA0000000000656CLL;
                    break;
                  case 0xD:
                    OUTLINED_FUNCTION_207();
                    v59 = v96 + 1284;
                    v60 = 0x747241636973756DLL;
                    break;
                  case 0xE:
                    OUTLINED_FUNCTION_437();
                    v59 = v78 + 6;
                    v60 = 0x6E6547636973756DLL;
                    break;
                  case 0xF:
                    v60 = 1685024621;
                    break;
                  case 0x10:
                    v59 = 0xE800000000000000;
                    v77 = 1634891108;
LABEL_51:
                    v60 = v77 | 0x6E6F697400000000;
                    break;
                  case 0x11:
                    v59 = 0xE600000000000000;
                    v60 = 0x706972547369;
                    break;
                  case 0x12:
                    v60 = 0x6D69546C6C417369;
                    v59 = 0xE900000000000065;
                    break;
                  case 0x13:
                    OUTLINED_FUNCTION_188();
                    v59 = v97 + 13;
                    v60 = 0x6564724F74726F73;
                    break;
                  default:
                    break;
                }

                isUniquelyReferenced_nonNull_native = v163;
                sub_1C736F5E4(v163, type metadata accessor for QueryTokenSuggestion);
                v98 = OUTLINED_FUNCTION_294();
                sub_1C6F765A4(v98, v99, v100);
                OUTLINED_FUNCTION_31_37();
                *(v58 + 4) = v60;
                *(v58 + 12) = 2085;
                v41 = v167;
                sub_1C75504FC();
                v101 = OUTLINED_FUNCTION_123_9();
                sub_1C6F765A4(v101, v167, v102);
                OUTLINED_FUNCTION_312_1();

                *(v58 + 14) = v59;
                OUTLINED_FUNCTION_140_7(&dword_1C6F5C000, v56, v57, "Ignore the %s query token (%{sensitive}s)");
                swift_arrayDestroy();
                OUTLINED_FUNCTION_109();
                OUTLINED_FUNCTION_37();

                OUTLINED_FUNCTION_0_151();
                v40 = v165;
                sub_1C736F5E4(v165, v103);
                v6 = v164;
                sub_1C736F5E4(v164, type metadata accessor for QueryTokenSuggestion);
                v38 = TokenCategoryType;
              }

              else
              {

                sub_1C736F5E4(isUniquelyReferenced_nonNull_native, type metadata accessor for QueryTokenSuggestion);
                OUTLINED_FUNCTION_0_151();
                sub_1C736F5E4(v40, v62);
                v63 = OUTLINED_FUNCTION_294();
                sub_1C736F5E4(v63, v64);
                v6 = v41;
              }
            }

            else
            {
              OUTLINED_FUNCTION_2_102();
              sub_1C71AC0CC(v40, v151, v65);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v66 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0) + 48);
                sub_1C7026200(v151, v152);
                sub_1C7026200(v151 + v66, v148);
                v67 = sub_1C754DABC();
                if (__swift_getEnumTagSinglePayload(v152, 1, v67) == 1 && __swift_getEnumTagSinglePayload(v148, 1, v67) == 1)
                {
                  OUTLINED_FUNCTION_107_10();
                  v68 = sub_1C754FEEC();
                  v69 = sub_1C75511BC();
                  sub_1C6FDD548(v175);
                  if (os_log_type_enabled(v68, v69))
                  {
                    OUTLINED_FUNCTION_41_0();
                    v70 = OUTLINED_FUNCTION_31_0();
                    OUTLINED_FUNCTION_49_24(v70);
                    v145 = v68;
                    sub_1C75504FC();
                    v71 = OUTLINED_FUNCTION_123_9();
                    v73 = sub_1C6F765A4(v71, v167, v72);

                    *(v152 + 4) = v73;
                    v68 = v145;
                    OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v145, v69, "Ignore the ungrounded date query token (%{sensitive}s)");
                    OUTLINED_FUNCTION_33_26();
                    isUniquelyReferenced_nonNull_native = v163;
                    OUTLINED_FUNCTION_109();
                    OUTLINED_FUNCTION_37();
                  }

                  OUTLINED_FUNCTION_0_151();
                  v40 = v165;
                  sub_1C736F5E4(v165, v74);
                  OUTLINED_FUNCTION_1_113();
                  sub_1C736F5E4(v6, v75);
                  v41 = &unk_1C75606A0;
                  sub_1C6FB5FC8(v152, &qword_1EC218C50);
                  sub_1C6FB5FC8(v148, &qword_1EC218C50);
                  goto LABEL_62;
                }

                sub_1C6FB5FC8(v152, &qword_1EC218C50);
                v81 = OUTLINED_FUNCTION_294();
                sub_1C6FB5FC8(v81, v82);
                v40 = v165;
              }

              else
              {
                OUTLINED_FUNCTION_0_151();
                sub_1C736F5E4(v151, v76);
              }

              OUTLINED_FUNCTION_2_102();
              sub_1C71AC0CC(v40, v150, v83);
              OUTLINED_FUNCTION_43_2();
              if (swift_getEnumCaseMultiPayload() != 3)
              {
                OUTLINED_FUNCTION_0_151();
                sub_1C736F5E4(v150, v92);
LABEL_47:
                OUTLINED_FUNCTION_2_102();
                sub_1C71AC0CC(v40, v149, v93);
                OUTLINED_FUNCTION_43_2();
                if (swift_getEnumCaseMultiPayload())
                {
                  OUTLINED_FUNCTION_0_151();
                  sub_1C736F5E4(v149, v94);
                }

                else
                {
                  v104 = *v149;
                  sub_1C75504FC();
                  sub_1C73606D8(v104, &v176, v153);
                  v38 = TokenCategoryType;
                }

                v41 = v157;
                QueryTokenCategoryType.string.getter(v173);
                v105 = v173[0];
                sub_1C6F6E5B4(v156);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v174 = v157;
                sub_1C6FC3264();
                OUTLINED_FUNCTION_13_2();
                v6 = (v108 + v109);
                if (__OFADD__(v108, v109))
                {
                  goto LABEL_88;
                }

                v110 = v106;
                v41 = v107;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AE78);
                v111 = sub_1C7551A2C();
                v112 = v174;
                if (v111)
                {
                  v113 = sub_1C6FC3264();
                  v6 = v164;
                  if ((v41 & 1) != (v114 & 1))
                  {
                    sub_1C7551E4C();
                    __break(1u);
                    return;
                  }

                  v110 = v113;
                  if (v41)
                  {
                    goto LABEL_73;
                  }

LABEL_71:
                  OUTLINED_FUNCTION_1_3(&v112[v110 >> 6]);
                  *(v112[6] + v110) = v105;
                  *(v112[7] + 8 * v110) = MEMORY[0x1E69E7CC0];
                  OUTLINED_FUNCTION_43_1();
                  if (v116)
                  {
                    goto LABEL_89;
                  }

                  v112[2] = v115;
                }

                else
                {
                  v6 = v164;
                  if ((v41 & 1) == 0)
                  {
                    goto LABEL_71;
                  }
                }

LABEL_73:
                v157 = v112;
                v117 = v112[7];
                v118 = *(v117 + 8 * v110);
                v119 = swift_isUniquelyReferenced_nonNull_native();
                *(v117 + 8 * v110) = v118;
                if ((v119 & 1) == 0)
                {
                  OUTLINED_FUNCTION_24_0();
                  sub_1C6FB226C();
                  v118 = v125;
                  *(v117 + 8 * v110) = v125;
                }

                v121 = *(v118 + 16);
                v120 = *(v118 + 24);
                v41 = v121 + 1;
                if (v121 >= v120 >> 1)
                {
                  OUTLINED_FUNCTION_15(v120);
                  OUTLINED_FUNCTION_90_9();
                  sub_1C6FB226C();
                  *(v117 + 8 * v110) = v126;
                }

                OUTLINED_FUNCTION_0_151();
                sub_1C736F5E4(v165, v122);
                OUTLINED_FUNCTION_1_113();
                sub_1C736F5E4(v6, v123);
                v124 = *(v117 + 8 * v110);
                v40 = v165;
                *(v124 + 16) = v41;
                *(v124 + 8 * v121 + 32) = v158;
                sub_1C75504FC();
                v156 = sub_1C6FC0A88;
                isUniquelyReferenced_nonNull_native = v163;
                goto LABEL_62;
              }

              v84 = *(*v150 + 16);

              if (v84)
              {
                goto LABEL_47;
              }

              OUTLINED_FUNCTION_107_10();
              v85 = sub_1C754FEEC();
              v41 = sub_1C75511BC();
              sub_1C6FDD548(v175);
              if (os_log_type_enabled(v85, v41))
              {
                OUTLINED_FUNCTION_41_0();
                v86 = OUTLINED_FUNCTION_31_0();
                OUTLINED_FUNCTION_49_24(v86);
                v145 = v85;
                sub_1C75504FC();
                v87 = OUTLINED_FUNCTION_123_9();
                v89 = sub_1C6F765A4(v87, v167, v88);

                *(v40 + 4) = v89;
                v85 = v145;
                OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v145, v41, "Ignore the ungrounded partOfDay query token (%{sensitive}s)");
                OUTLINED_FUNCTION_33_26();
                isUniquelyReferenced_nonNull_native = v163;
                OUTLINED_FUNCTION_109();
                v40 = v165;
                OUTLINED_FUNCTION_109();
              }

              OUTLINED_FUNCTION_0_151();
              sub_1C736F5E4(v40, v90);
              OUTLINED_FUNCTION_1_113();
              sub_1C736F5E4(v6, v91);
            }

LABEL_62:
            if (v171 == ++v45)
            {

              sub_1C6FDD548(v175);
              v6 = v175;
              goto LABEL_82;
            }
          }
        }

        sub_1C75504FC();
      }

      else
      {
        OUTLINED_FUNCTION_107_10();
        v127 = sub_1C754FEEC();
        v128 = sub_1C75511BC();
        if (OUTLINED_FUNCTION_23_0(v128))
        {
          OUTLINED_FUNCTION_41_0();
          v129 = OUTLINED_FUNCTION_31_0();
          OUTLINED_FUNCTION_49_24(v129);
          sub_1C75504FC();
          sub_1C6FDD548(v175);
          v130 = OUTLINED_FUNCTION_123_9();
          v132 = sub_1C6F765A4(v130, v167, v131);

          *(v40 + 4) = v132;
          OUTLINED_FUNCTION_282_1(&dword_1C6F5C000, v127, OS_LOG_TYPE_DEFAULT, "Ignore the query token (%{sensitive}s) when consolidating the metadata assets because there are no retrieved assets");
          OUTLINED_FUNCTION_33_26();
          isUniquelyReferenced_nonNull_native = v163;
          OUTLINED_FUNCTION_109();
          v40 = v165;
          OUTLINED_FUNCTION_109();
        }

        else
        {

          sub_1C6FDD548(v175);
        }
      }

LABEL_82:
      v37 = v159 + 1;
      if (v159 + 1 == v155)
      {
        goto LABEL_85;
      }
    }
  }

  v156 = 0;
  v157 = MEMORY[0x1E69E7CC8];
  v147 = 0;
  v38 = TokenCategoryType;
LABEL_85:
  isUniquelyReferenced_nonNull_native = v157;
  v133 = sub_1C75504FC();
  v41 = sub_1C706EDE0(v133);
  if (qword_1EDD099E8 != -1)
  {
LABEL_90:
    swift_once();
  }

  v134 = __swift_project_value_buffer(v38, qword_1EDD099F0);
  MEMORY[0x1EEE9AC00](v134);
  *(&v138 - 2) = v135;
  v136 = sub_1C707351C();
  sub_1C7366EA0(isUniquelyReferenced_nonNull_native, v6[15], v41, v136, v143);

  OUTLINED_FUNCTION_58_16(v144);
  v137 = v139;
  sub_1C754F1AC();
  (*(v140 + 8))(v137, v141);
  sub_1C6F6E5B4(v156);
  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C736368C()
{
  OUTLINED_FUNCTION_42();
  v1[74] = v0;
  v1[73] = v2;
  v6 = OUTLINED_FUNCTION_133_8(v3, v4, v5);
  v1[75] = v6;
  OUTLINED_FUNCTION_18(v6);
  v1[76] = v7;
  v1[77] = OUTLINED_FUNCTION_77();
  v8 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7363730()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 568);
  v2 = *(v0 + 560);
  OUTLINED_FUNCTION_141_1(*(v0 + 576), *(*(v0 + 576) + 24));
  OUTLINED_FUNCTION_71_2();
  type metadata accessor for QueryGenerator();
  *(v0 + 496) = 1;
  *(v0 + 504) = v2;
  *(v0 + 512) = v1;
  OUTLINED_FUNCTION_131_5();
  sub_1C75504FC();
  sub_1C75504FC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 624) = v3;
  *v3 = v4;
  v3[1] = sub_1C7363844;

  return QueryAssetsRetrievalProcessor.performAssetsRetrieval(with:eventRecorder:diagnosticContext:)(v0 + 544, v0 + 496);
}

uint64_t sub_1C7363844()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 632) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7363958()
{
  v36 = v0;
  v2 = *(v0 + 544);
  if (!v2)
  {
    OUTLINED_FUNCTION_58_16(*(v0 + 576));
    sub_1C75504FC();
    goto LABEL_16;
  }

  v3 = *(v0 + 560);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C716A74C(v2);
  v4 = *(v3 + 16);
  if (!v4)
  {

    goto LABEL_15;
  }

  v5 = *(v0 + 560);
  OUTLINED_FUNCTION_101_14();
  OUTLINED_FUNCTION_96_13();
  while (1)
  {
    OUTLINED_FUNCTION_138_5((v0 + 16));
    OUTLINED_FUNCTION_138_5(v34);
    v6 = OUTLINED_FUNCTION_142_3();
    OUTLINED_FUNCTION_103_9(v6, v7, v8, v9, v10, v11, v12, v13, v29, v31, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
    if (v5)
    {
      break;
    }

    OUTLINED_FUNCTION_141_7((v0 + 376), v14, v15, v16, v17, v18, v19, v20, v30, v32, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
    sub_1C6FDD548(v0 + 376);
    memcpy(v35, __src, sizeof(v35));
    OUTLINED_FUNCTION_125_7();
    if (v22)
    {
      OUTLINED_FUNCTION_15(v21);
      OUTLINED_FUNCTION_177();
      sub_1C716D7D8();
    }

    OUTLINED_FUNCTION_102_12();
    if (!v4)
    {

LABEL_15:
      OUTLINED_FUNCTION_58_16(*(v0 + 576));
LABEL_16:
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      v25 = OUTLINED_FUNCTION_55();
      v26(v25);

      OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_91_14();

      __asm { BRAA            X2, X16 }
    }

    v5 = 0;
    v1 += 120;
    --v4;
  }

  OUTLINED_FUNCTION_141_7((v0 + 256), v14, v15, v16, v17, v18, v19, v20, v30, v32, __src[0], __src[1], __src[2], __src[3], __src[4], __src[5], __src[6], __src[7], __src[8], __src[9], __src[10], __src[11], __src[12], __src[13], __src[14], v34[0]);
  sub_1C6FDD548(v0 + 256);
  OUTLINED_FUNCTION_91_14();
}