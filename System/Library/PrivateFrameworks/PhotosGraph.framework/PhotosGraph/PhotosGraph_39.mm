unint64_t sub_22F3EC244(char *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = a1;

  sub_22F1AB0EC(v9);
  v1 = *(v9[0] + 2);
  if (v1)
  {
    v2 = 0;
    v3 = (v9[0] + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = sub_22F1D226C(v4, v5);

      v2 ^= (v2 << 6) + (v2 >> 2) + 2654435769u + v6;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v2;
}

char *sub_22F3EC34C(id a1, uint64_t a2, void *a3, void *a4, void *a5, unint64_t a6, unint64_t a7, uint64_t a8)
{
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v82 = qword_2810B4E90;
  sub_22F1B560C("MusicCurator - extractMusicCurationFeatures", 43, 2u, 0, 1, qword_2810B4E90, v107);
  sub_22F741700();
  v97 = v104;
  v98 = v103;
  v95 = v106;
  v96 = v105;
  v114 = 0;
  if (a4)
  {
    v14 = a4;
    sub_22F38C26C(v14, &v108);
    if (v8)
    {

      goto LABEL_17;
    }

    v76 = a8;
    v79 = a4;
    v16 = v109;
    v90 = v108;
    v91 = v110;
    v88 = v111;
    v89 = v112;

    v86 = v16;
    v114 = v16;
    v15 = a7;
    a8 = v76;
  }

  else
  {
    v79 = 0;
    v88 = 0;
    v89 = 0;
    v86 = 0;
    v90 = 0;
    v91 = 0;
    v15 = a7;
  }

  sub_22F7416A0();
  if (!v8)
  {
    v100 = 0;
    if (a3)
    {
      v17 = swift_unknownObjectRetain();
      v18 = sub_22F3E0F14(v17);
      v20 = v19;
      v74 = v21;
      v75 = v18;
      v73 = v22;
      swift_unknownObjectRelease();
      v100 = v20 & 1;
    }

    else
    {
      v73 = 0;
      v74 = 0;
      v75 = 0;
    }

    sub_22F7416A0();
    if (a5)
    {
      v23 = a5;
      v72 = sub_22F1EFEEC(v23, v103);
    }

    else
    {
      v72 = 0;
    }

    sub_22F7416A0();
    v77 = a8;
    v24 = sub_22F295D88(v15, a6, v79, 227, a5, v104);
    v70 = a6;
    v80 = v24;
    if (a5 && a3)
    {
      v68 = a1;
      v26 = v24;
      swift_unknownObjectRetain();
      v27 = a5;
      v28 = v26;
      v31 = sub_22F296B4C(a3, v27, v105);
      v34 = sub_22F297324(v28, v31, *(v77 + OBJC_IVAR___PGMusicFeatureExtractionContext_configuration + 156));
      swift_unknownObjectRelease();

      a1 = v68;
    }

    else
    {
      v34 = v24;
    }

    sub_22F1B560C("MusicCurator - extractMusicCurationFeatures - refinement", 56, 2u, 0, 1, v82, v113);
    v29 = sub_22F297A88(v34);
    v69 = a1;

    v30 = v29;
    v32 = sub_22F297E7C(v30);

    v33 = v32;
    v35 = sub_22F29845C(v33);

    v36 = v35;
    v78 = sub_22F3EB684(v77, v36);
    v83 = v37;
    v66 = v101;
    v67 = v102;
    v65 = v36;

    sub_22F1B2BBC(0);
    v93 = v15;
    if (v15 >> 62)
    {
      goto LABEL_56;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
    {
      v39 = MEMORY[0x277D84F90];
      if (!i)
      {
        break;
      }

      v101 = MEMORY[0x277D84F90];
      result = sub_22F146454(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        return result;
      }

      v40 = 0;
      v39 = v101;
      while (1)
      {
        v41 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if ((v93 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x2319016F0](v40, v93);
        }

        else
        {
          if (v40 >= *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_55;
          }

          v42 = *(v93 + 8 * v40 + 32);
        }

        v43 = v42;
        result = [v42 uuid];
        if (!result)
        {
          goto LABEL_58;
        }

        v44 = result;
        v45 = sub_22F740E20();
        v47 = v46;

        v101 = v39;
        v49 = v39[2];
        v48 = v39[3];
        if (v49 >= v48 >> 1)
        {
          sub_22F146454((v48 > 1), v49 + 1, 1);
          v39 = v101;
        }

        v39[2] = v49 + 1;
        v50 = &v39[2 * v49];
        v50[4] = v45;
        v50[5] = v47;
        ++v40;
        if (v41 == i)
        {
          goto LABEL_37;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      ;
    }

LABEL_37:
    v51 = sub_22F3EC244(v39);

    if (!v75 || (v52 = v75, !*(v75 + 16)))
    {
      if (!v91)
      {
        v52 = 0;
        goto LABEL_43;
      }

      v52 = v91;
    }

LABEL_43:
    v53 = sub_22F161858(v70);
    v54 = v90;
    v55 = v114;
    if (!v91)
    {
      v54 = 0;
    }

    v94 = v54;
    if (v91)
    {

      v85 = v89;
      v87 = v88;
    }

    else
    {
      v71 = 0;
      v85 = 0;
      v87 = 0;
    }

    if (v72)
    {
    }

    v56 = (v91 == 0) | v55;
    if (v75)
    {
      v57 = v74;

      v64 = v73;
    }

    else
    {
      v64 = 0;
      v57 = 0;
    }

    v58 = (v75 == 0) | v100;
    v59 = type metadata accessor for MusicCurationFeatures();
    v60 = objc_allocWithZone(v59);
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_memoryCategory] = v69;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_memorySubcategory] = a2;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_curatorEvents] = v53;
    v61 = &v60[OBJC_IVAR___PGMusicCurationFeatures_eventCollectionDuration];
    *v61 = v94;
    v61[8] = v56 & 1;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_eventRatioByLanguageCode] = v71;
    v62 = &v60[OBJC_IVAR___PGMusicCurationFeatures_mostFrequentMeaningLabel];
    *v62 = v87;
    v62[1] = v85;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_performerIdentifiers] = v52;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_inferredUserLanguageCodes] = v72;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID] = v78;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_scoreByAssetCollectionMaestroKeyword] = v83;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_consistentHash] = v51;
    v63 = &v60[OBJC_IVAR___PGMusicCurationFeatures_location];
    *v63 = v64;
    v63[1] = v57;
    v60[OBJC_IVAR___PGMusicCurationFeatures_shouldAvoidColorGrading] = v58 & 1;
    *&v60[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame] = 0;
    v99.receiver = v60;
    v99.super_class = v59;
    a1 = objc_msgSendSuper2(&v99, sel_init);

    sub_22F3ECE3C(v75);
    sub_22F3ECDEC(v90, v114, v91);
    sub_22F1B2BBC(0);

    return a1;
  }

  sub_22F3ECDEC(v90, v86, v91);
LABEL_17:
  sub_22F1B2BBC(0);

  return a1;
}

uint64_t sub_22F3ECDEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_22F3ECE3C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_22F3ECE7C()
{
  result = qword_27DAB43E0;
  if (!qword_27DAB43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB43E0);
  }

  return result;
}

void sub_22F3ECED0()
{
  if (!qword_27DAB43E8)
  {
    v0 = _s5ErrorOMa_0();
    if (!v1)
    {
      atomic_store(v0, &qword_27DAB43E8);
    }
  }
}

unint64_t sub_22F3ECF4C()
{
  result = qword_27DAB4478;
  if (!qword_27DAB4478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB4478);
  }

  return result;
}

uint64_t sub_22F3ECFD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_22F3ECED0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F3ED050(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*(a3 + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = *result;
  v7 = *(result + 8);
  v8 = *a2;
  v9 = a2[1];
  result = sub_22F1229E8(*result, v7);
  if ((v10 & 1) == 0)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (!*(a3 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = *(*(a3 + 56) + 4 * result);
  result = sub_22F1229E8(v8, v9);
  if (v12)
  {
    v13 = *(*(a3 + 56) + 4 * result);
    if (v13 >= v11)
    {
      if (v11 >= v13)
      {
        v15 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
        swift_beginAccess();
        if (*(a4 + v15) == 1)
        {
          v16 = 0;
          MEMORY[0x2319033C0](&v16, 8);
          v14 = (v16 & 0x20000) == 0;
          return v14 & 1;
        }

        if (v8 != v6 || v9 != v7)
        {
          v14 = sub_22F742040();
          return v14 & 1;
        }
      }

      v14 = 0;
    }

    else
    {
      v14 = 1;
    }

    return v14 & 1;
  }

LABEL_18:
  __break(1u);
  return result;
}

BOOL sub_22F3ED1CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_22F1229E8(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v7 = sub_22F1515F8(v6);

  v9 = sub_22F1515F8(v8);

  v10 = sub_22F360C78(v9, v7);

  return (v10 & 1) == 0;
}

void *sub_22F3ED278(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, float))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_22F3ED308(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_22F3ED308(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, float))
{
  v23 = 0;
  v22 = result;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a3 + 56) + 4 * v14);

    v19 = a4(v16, v17, v18);

    if (v19)
    {
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_22F1B153C(v22, a2, v23, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_22F1B153C(v22, a2, v23, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3ED474(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, float))
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_22F3ED308(v8, v6, v4, a2);
    if (v2)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v11 = swift_slowAlloc();
  v12 = sub_22F3ED278(v11, v6, v4, a2);
  result = MEMORY[0x2319033A0](v11, -1, -1);
  if (!v2)
  {
    result = v12;
  }

LABEL_4:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22F3ED5F4(char *a1, uint64_t a2)
{
  v5 = sub_22F7406F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *&a1[OBJC_IVAR___PGMusicCurationFeatures_keywordsDataFrame];
  if (!v10)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D90);
    v18 = sub_22F740B70();
    v19 = sub_22F7415E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22F0FC000, v18, v19, "[electSongForKeywordRules] No keywordsDataFrame found, falling back to default maestroSongScoresBySongID", v20, 2u);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    goto LABEL_15;
  }

  v11 = v10;
  v12 = [v11 rowLabels];
  if (!v12)
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v21 = sub_22F740B90();
    __swift_project_value_buffer(v21, qword_2810B4D90);
    v22 = sub_22F740B70();
    v23 = sub_22F7415C0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22F0FC000, v22, v23, "[electSongForKeywordRules] keywordsDataFrame found but empty. Default to maestroSongScoresBySongID", v24, 2u);
      MEMORY[0x2319033A0](v24, -1, -1);
    }

LABEL_15:
    a2 = *&a1[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID];

    return a2;
  }

  v37 = v11;
  v13 = v12;
  sub_22F741180();

  sub_22F7406E0();
  v14 = sub_22F7406C0();
  v15 = sub_22F7406D0();

  v16 = *(v15 + 16);

  if (v16)
  {
    (*(v6 + 8))(v9, v5);

    a2 = *&a1[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID];
  }

  else
  {
    v26 = MusicCuratorContext.extractSongIdKeywordMappings()();
    if (v2)
    {
      (*(v6 + 8))(v9, v5);
    }

    else
    {
      v27 = *&a1[OBJC_IVAR___PGMusicCurationFeatures_maestroSongScoresBySongID];
      MEMORY[0x28223BE20](v26);
      v36[-2] = v28;
      v36[-1] = v14;
      v36[0] = v29;
      a2 = sub_22F3ED474(v29, sub_22F3EF9C4);
      v36[1] = 0;

      v30 = v37;
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v31 = sub_22F740B90();
      __swift_project_value_buffer(v31, qword_2810B4D90);
      v32 = a1;

      v33 = sub_22F740B70();
      v34 = sub_22F7415C0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 134218240;
        *(v35 + 4) = *(v36[0] + 16);

        *(v35 + 12) = 2048;
        *(v35 + 14) = *(a2 + 16);

        _os_log_impl(&dword_22F0FC000, v33, v34, "[electSongForKeywordRules] Songs before: %ld. Songs after: %ld", v35, 0x16u);
        MEMORY[0x2319033A0](v35, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v9, v5);
    }
  }

  return a2;
}

unint64_t sub_22F3EDB10(uint64_t *__src, uint64_t *a2, unint64_t a3, uint64_t *__dst, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 15;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 4;
  v12 = a3 - a2;
  v13 = a3 - a2 + 15;
  if ((a3 - a2) >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 4;
  if (v11 < v13 >> 4)
  {
    v16 = __dst;
    if (__dst != __src || &__src[2 * v11] <= __dst)
    {
      memmove(__dst, __src, 16 * v11);
    }

    v17 = &v16[2 * v11];
    v54 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
    result = swift_beginAccess();
    if (v9 >= 16 && a2 < v7)
    {
      v19 = a2;
      __srca = v17;
      while (1)
      {
        if (!*(a5 + 16))
        {
          __break(1u);
          goto LABEL_71;
        }

        v20 = v8;
        v21 = *v19;
        v22 = v19[1];
        v23 = v19;
        v24 = v16;
        v25 = *v16;
        v26 = v16[1];

        result = sub_22F1229E8(v21, v22);
        if ((v27 & 1) == 0)
        {
          goto LABEL_72;
        }

        if (!*(a5 + 16))
        {
          goto LABEL_75;
        }

        v28 = *(*(a5 + 56) + 4 * result);
        result = sub_22F1229E8(v25, v26);
        if ((v29 & 1) == 0)
        {
          goto LABEL_76;
        }

        v30 = *(*(a5 + 56) + 4 * result);
        if (v30 < v28)
        {

LABEL_18:
          v31 = v23;
          v19 = v23 + 2;
          v32 = v20;
          v17 = __srca;
          v16 = v24;
          if (v20 == v23)
          {
            goto LABEL_20;
          }

LABEL_19:
          *v32 = *v31;
          goto LABEL_20;
        }

        if (v28 < v30)
        {
          break;
        }

        if (*(a6 + v54))
        {
          v59 = 0;
          MEMORY[0x2319033C0](&v59, 8);
          v33 = v59;

          if ((v33 & 0x20000) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          if (v25 == v21 && v26 == v22)
          {
            break;
          }

          v34 = sub_22F742040();

          if (v34)
          {
            goto LABEL_18;
          }
        }

LABEL_25:
        v31 = v24;
        v16 = v24 + 2;
        v32 = v20;
        v17 = __srca;
        v19 = v23;
        if (v20 != v24)
        {
          goto LABEL_19;
        }

LABEL_20:
        v8 = v32 + 2;
        if (v16 >= v17 || v19 >= v7)
        {
          goto LABEL_63;
        }
      }

      goto LABEL_25;
    }

LABEL_63:
    result = v8;
LABEL_66:
    if (result != v16 || result >= v16 + ((v17 - v16 + (v17 - v16 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0))
    {
      memmove(result, v16, 16 * ((v17 - v16) / 16));
    }

    return 1;
  }

  if (__dst != a2 || &a2[2 * v14] <= __dst)
  {
    v35 = __dst;
    memmove(__dst, a2, 16 * v14);
    __dst = v35;
  }

  __srcb = __dst;
  v17 = &__dst[2 * v14];
  v55 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_beginAccess();
  if (v12 < 16)
  {
    v16 = __srcb;
    result = a2;
    goto LABEL_66;
  }

  result = a2;
  v16 = __srcb;
  if (a2 <= v8)
  {
    goto LABEL_66;
  }

  v52 = v8;
LABEL_40:
  v53 = (result - 16);
  v36 = (v7 - 16);
  while (*(a5 + 16))
  {
    v37 = v36;
    v38 = v17;
    v39 = *(v17 - 2);
    v41 = *(v17 - 1);
    v40 = (v17 - 2);
    v42 = *(result - 16);
    v43 = *(result - 8);
    v44 = result;

    result = sub_22F1229E8(v39, v41);
    if ((v45 & 1) == 0)
    {
      goto LABEL_73;
    }

    if (!*(a5 + 16))
    {
      goto LABEL_74;
    }

    v46 = *(*(a5 + 56) + 4 * result);
    result = sub_22F1229E8(v42, v43);
    if ((v47 & 1) == 0)
    {
      goto LABEL_77;
    }

    v48 = *(*(a5 + 56) + 4 * result);
    if (v48 < v46)
    {

LABEL_58:
      v51 = v37 + 1 == v44;
      v7 = v37;
      v17 = v38;
      if (!v51)
      {
        *v37 = *v53;
      }

      v16 = __srcb;
      if (v38 <= __srcb || (result = v53, v53 <= v52))
      {
        result = v53;
        goto LABEL_66;
      }

      goto LABEL_40;
    }

    if (v46 < v48)
    {
LABEL_48:

      goto LABEL_55;
    }

    if (*(a6 + v55))
    {
      v59 = 0;
      MEMORY[0x2319033C0](&v59, 8);
      v49 = v59;

      if ((v49 & 0x20000) == 0)
      {
        goto LABEL_58;
      }
    }

    else
    {
      if (v42 == v39 && v43 == v41)
      {
        goto LABEL_48;
      }

      v50 = sub_22F742040();

      if (v50)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    result = v44;
    if (v37 + 1 != v38)
    {
      *v37 = *v40;
    }

    v36 = v37 - 1;
    v17 = v40;
    if (v40 <= __srcb)
    {
      v17 = v40;
      v16 = __srcb;
      goto LABEL_66;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

void sub_22F3EE008(char **a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v9 = a1;
  v10 = *a1;

  v25 = a5;
  v26 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_15:
    v26 = sub_22F3F5F98(v26);
  }

  v21 = v9;
  *v9 = v26;
  v12 = v26 + 16;
  v11 = *(v26 + 2);
  if (v11 < 2)
  {
LABEL_10:

    *v21 = v26;
  }

  else
  {
    v22 = (v26 + 16);
    while (1)
    {
      v13 = *a3;
      if (!*a3)
      {
        break;
      }

      v14 = &v26[16 * v11];
      v15 = *v14;
      v16 = &v12[16 * v11];
      v9 = *(v16 + 1);
      __src = (v13 + 16 * *v14);
      v27 = (v13 + 16 * *v16);
      v17 = v13 + 16 * v9;

      v18 = v25;
      sub_22F3EDB10(__src, v27, v17, a2, a4, v18);
      if (v6)
      {

        *v21 = v26;
        swift_bridgeObjectRelease_n();
        return;
      }

      if (v9 < v15)
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      v12 = v26 + 16;
      v19 = *v22;
      if (v11 - 2 >= *v22)
      {
        goto LABEL_13;
      }

      *v14 = v15;
      *(v14 + 1) = v9;
      v20 = v19 - v11;
      if (v19 < v11)
      {
        goto LABEL_14;
      }

      v11 = v19 - 1;
      memmove(v16, v16 + 16, 16 * v20);
      *v22 = v11;
      if (v11 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v21 = v26;

    __break(1u);
  }
}

uint64_t sub_22F3EE1EC(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v142 = MEMORY[0x277D84F90];
  v7 = a3[1];
  if (v7 < 1)
  {
    swift_bridgeObjectRetain_n();
    v116 = a6;
LABEL_121:
    v117 = *a1;
    if (!*a1)
    {
      goto LABEL_160;
    }

    v118 = a6;
    sub_22F3EE008(&v142, v117, a3, a5, v118);
    if (!v134)
    {

      swift_bridgeObjectRelease_n();
    }

LABEL_124:
    swift_bridgeObjectRelease_n();
  }

  v135 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
  swift_bridgeObjectRetain_n();
  v128 = a6;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v132 = v9;
    if (v8 + 1 >= v7)
    {
      v35 = a5;
      goto LABEL_38;
    }

    v12 = *a3;
    v13 = (*a3 + 16 * v11);
    v14 = v13[1];
    v141[0] = *v13;
    v141[1] = v14;
    v15 = (v12 + 16 * v10);
    v16 = v15[1];
    v140[0] = *v15;
    v140[1] = v16;

    v17 = sub_22F3ED050(v141, v140, a5, v128);
    if (v134)
    {

      goto LABEL_124;
    }

    v18 = v17;

    swift_beginAccess();
    v121 = v10;
    v11 = v10 + 2;
    if (v10 + 2 >= v7)
    {
LABEL_25:
      v35 = a5;
      if ((v18 & 1) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    v19 = v15 + 3;
    do
    {
      if (!*(a5 + 16))
      {
        goto LABEL_136;
      }

      v20 = v11;
      v21 = *v19;
      v22 = v19[1];
      v23 = v19 + 2;
      v24 = v19[2];
      v25 = *(v19 - 1);

      v26 = sub_22F1229E8(v22, v24);
      if ((v27 & 1) == 0)
      {
        goto LABEL_137;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_138;
      }

      v28 = *(*(a5 + 56) + 4 * v26);
      v29 = sub_22F1229E8(v25, v21);
      if ((v30 & 1) == 0)
      {
        goto LABEL_139;
      }

      v31 = *(*(a5 + 56) + 4 * v29);
      if (v31 < v28)
      {

        v9 = v132;
        v11 = v20;
        if ((v18 & 1) == 0)
        {
          v35 = a5;
          v10 = v121;
          goto LABEL_38;
        }
      }

      else
      {
        if (v28 >= v31)
        {
          if (*(a6 + v135) == 1)
          {
            v141[0] = 0;
            MEMORY[0x2319033C0](v141, 8);
            v32 = v141[0];

            v33 = (*&v32 & 0x20000) == 0;
            goto LABEL_24;
          }

          if (v25 != v22 || v21 != v24)
          {
            v33 = sub_22F742040();

LABEL_24:
            v9 = v132;
            v34 = v18 ^ v33;
            v11 = v20;
            if (v34)
            {
              goto LABEL_25;
            }

            goto LABEL_10;
          }
        }

        v9 = v132;
        v11 = v20;
        if (v18)
        {
          v35 = a5;
          goto LABEL_31;
        }
      }

LABEL_10:
      ++v11;
      v19 = v23;
    }

    while (v7 != v11);
    v11 = v7;
    v35 = a5;
    if ((v18 & 1) == 0)
    {
LABEL_29:
      v10 = v121;
      goto LABEL_38;
    }

LABEL_31:
    v10 = v121;
    if (v11 < v121)
    {
      goto LABEL_155;
    }

    if (v121 < v11)
    {
      v36 = 0;
      v37 = 16 * v11;
      v38 = 16 * v121;
      v39 = v121;
      do
      {
        if (v39 != v11 + v36 - 1)
        {
          v40 = *a3;
          if (!*a3)
          {
            goto LABEL_158;
          }

          v41 = (v40 + v38);
          v42 = v40 + v37;
          v43 = *v41;
          v44 = v41[1];
          *v41 = *(v42 - 16);
          *(v42 - 16) = v43;
          *(v42 - 8) = v44;
        }

        ++v39;
        --v36;
        v37 -= 16;
        v38 += 16;
      }

      while (v39 < v11 + v36);
    }

LABEL_38:
    v45 = a3[1];
    if (v11 >= v45)
    {
      goto LABEL_69;
    }

    if (__OFSUB__(v11, v10))
    {
      goto LABEL_152;
    }

    if (v11 - v10 >= a4)
    {
      goto LABEL_69;
    }

    v46 = v10 + a4;
    if (__OFADD__(v10, a4))
    {
      goto LABEL_153;
    }

    if (v46 >= v45)
    {
      v46 = a3[1];
    }

    if (v46 < v10)
    {
      goto LABEL_154;
    }

    if (v11 == v46)
    {
      goto LABEL_69;
    }

    v137 = *a3;
    v47 = (*a3 + 16 * v11);
    v48 = v10 - v11;
    v123 = v46;
LABEL_49:
    swift_beginAccess();
    v124 = v11;
    v126 = v48;
    v49 = (v137 + 16 * v11);
    v51 = *v49;
    v50 = v49[1];
    __dst = v47;
LABEL_50:
    if (!*(v35 + 16))
    {
      break;
    }

    v52 = *(v47 - 2);
    v53 = *(v47 - 1);

    v54 = sub_22F1229E8(v51, v50);
    if ((v55 & 1) == 0)
    {
      goto LABEL_129;
    }

    if (!*(v35 + 16))
    {
      goto LABEL_130;
    }

    v56 = *(*(v35 + 56) + 4 * v54);
    v57 = sub_22F1229E8(v52, v53);
    if ((v58 & 1) == 0)
    {
      goto LABEL_131;
    }

    v59 = *(*(v35 + 56) + 4 * v57);
    if (v59 < v56)
    {

      goto LABEL_63;
    }

    if (v56 < v59)
    {
      goto LABEL_47;
    }

    if (*(a6 + v135))
    {
      v141[0] = 0;
      MEMORY[0x2319033C0](v141, 8);
      v60 = v141[0];

      if ((v60 & 0x20000) != 0)
      {
        goto LABEL_67;
      }

LABEL_63:
      if (!v137)
      {
        goto LABEL_156;
      }

      v51 = *v47;
      v50 = v47[1];
      *v47 = *(v47 - 1);
      *(v47 - 1) = v50;
      *(v47 - 2) = v51;
      v47 -= 2;
      v62 = __CFADD__(v48++, 1);
      v35 = a5;
      if (v62)
      {
        goto LABEL_48;
      }

      goto LABEL_50;
    }

    if (v52 == v51 && v53 == v50)
    {
LABEL_47:

      goto LABEL_48;
    }

    v61 = sub_22F742040();

    if (v61)
    {
      goto LABEL_63;
    }

LABEL_67:
    v35 = a5;
LABEL_48:
    v11 = v124 + 1;
    v47 = __dst + 2;
    v48 = v126 - 1;
    if (v124 + 1 != v123)
    {
      goto LABEL_49;
    }

    v11 = v123;
    v9 = v132;
LABEL_69:
    if (v11 < v10)
    {
      goto LABEL_151;
    }

    v125 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
    }

    v64 = *(v9 + 2);
    v63 = *(v9 + 3);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      v9 = sub_22F13D970((v63 > 1), v64 + 1, 1, v9);
    }

    *(v9 + 2) = v65;
    v66 = v9 + 32;
    v67 = &v9[16 * v64 + 32];
    *v67 = v10;
    *(v67 + 1) = v11;
    v142 = v9;
    __dsta = *a1;
    if (!*a1)
    {
      goto LABEL_159;
    }

    if (v64)
    {
      v133 = v9;
      v127 = v9 + 32;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v9 + 4);
          v70 = *(v9 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_90:
          if (v72)
          {
            goto LABEL_142;
          }

          v85 = &v9[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_145;
          }

          v91 = &v66[16 * v68];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_148;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_149;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_111;
          }

          goto LABEL_104;
        }

        v95 = &v9[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_104:
        if (v90)
        {
          goto LABEL_144;
        }

        v98 = &v66[16 * v68];
        v100 = *v98;
        v99 = *(v98 + 1);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_147;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_111:
        if (v68 - 1 >= v65)
        {
          goto LABEL_132;
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_157;
        }

        v107 = &v66[16 * v68 - 16];
        v108 = *v107;
        v109 = v68;
        v110 = &v66[16 * v68];
        v111 = *(v110 + 1);
        v112 = (v106 + 16 * *v107);
        v113 = (v106 + 16 * *v110);
        v138 = v106 + 16 * v111;

        v114 = v128;
        sub_22F3EDB10(v112, v113, v138, __dsta, a5, v114);
        if (v134)
        {

          v142 = v133;

          goto LABEL_124;
        }

        v9 = v133;
        if (v111 < v108)
        {
          goto LABEL_133;
        }

        v115 = *(v133 + 2);
        if (v109 > v115)
        {
          goto LABEL_134;
        }

        *v107 = v108;
        *(v107 + 1) = v111;
        if (v109 >= v115)
        {
          goto LABEL_135;
        }

        v65 = v115 - 1;
        memmove(v110, v110 + 16, 16 * (v115 - 1 - v109));
        *(v133 + 2) = v115 - 1;
        v66 = v127;
        if (v115 <= 2)
        {
LABEL_3:
          v142 = v9;
          goto LABEL_4;
        }
      }

      v73 = &v66[16 * v65];
      v74 = *(v73 - 8);
      v75 = *(v73 - 7);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_140;
      }

      v78 = *(v73 - 6);
      v77 = *(v73 - 5);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_141;
      }

      v80 = &v9[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_143;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_146;
      }

      if (v84 >= v76)
      {
        v102 = &v66[16 * v68];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_150;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_111;
      }

      goto LABEL_90;
    }

LABEL_4:
    v7 = a3[1];
    v8 = v125;
    if (v125 >= v7)
    {
      goto LABEL_121;
    }
  }

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

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_159:

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:

  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_22F3EEBB4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v27 = OBJC_IVAR___PGMusicCuratorContext_isMemoryCreationCuration;
    v9 = (*a4 + 16 * a3);
    v10 = result - a3;
LABEL_6:
    result = swift_beginAccess();
    v25 = v9;
    v26 = v7;
    v11 = (v8 + 16 * v7);
    v13 = *v11;
    v12 = v11[1];
    v14 = v10;
    while (*(a5 + 16))
    {
      v16 = *(v9 - 2);
      v15 = *(v9 - 1);

      result = sub_22F1229E8(v13, v12);
      if ((v17 & 1) == 0)
      {
        goto LABEL_25;
      }

      if (!*(a5 + 16))
      {
        goto LABEL_26;
      }

      v18 = *(*(a5 + 56) + 4 * result);
      result = sub_22F1229E8(v16, v15);
      if ((v19 & 1) == 0)
      {
        goto LABEL_27;
      }

      v20 = *(*(a5 + 56) + 4 * result);
      if (v20 >= v18)
      {
        if (v18 < v20)
        {
          goto LABEL_4;
        }

        if (*(a6 + v27))
        {
          v29 = 0;
          MEMORY[0x2319033C0](&v29, 8);
          v21 = v29;

          if ((v21 & 0x20000) != 0)
          {
            goto LABEL_5;
          }
        }

        else
        {
          if (v16 == v13 && v15 == v12)
          {
LABEL_4:

LABEL_5:
            v7 = v26 + 1;
            v9 = v25 + 2;
            --v10;
            if (v26 + 1 == a2)
            {
              return result;
            }

            goto LABEL_6;
          }

          v22 = sub_22F742040();

          if ((v22 & 1) == 0)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
      }

      if (!v8)
      {
        goto LABEL_28;
      }

      v13 = *v9;
      v12 = v9[1];
      *v9 = *(v9 - 1);
      *(v9 - 1) = v12;
      *(v9 - 2) = v13;
      v9 -= 2;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  return result;
}

void sub_22F3EEDC0(uint64_t *a1, uint64_t a2, void *a3)
{
  v6 = a1[1];
  swift_bridgeObjectRetain_n();
  v7 = a3;
  v8 = sub_22F742000();
  if (v8 >= v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      if (v6)
      {

        v12 = v7;
        sub_22F3EEBB4(0, v6, 1, a1, a2, v12);
        swift_bridgeObjectRelease_n();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      return;
    }

LABEL_12:
    __break(1u);
    return;
  }

  if (v6 < -1)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = v8;
  v10 = v6 / 2;
  if (v6 <= 1)
  {
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v11 = sub_22F741200();
    *(v11 + 16) = v10;
  }

  v14[0] = (v11 + 32);
  v14[1] = v10;

  v13 = v7;
  sub_22F3EE1EC(v14, v15, a1, v9, a2, v13);

  *(v11 + 16) = 0;
  swift_bridgeObjectRelease_n();
}

uint64_t sub_22F3EEF5C(char **a1, uint64_t a2, void *a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  v7 = a3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_22F3F651C(v6);
  }

  v8 = *(v6 + 2);
  v11[0] = (v6 + 32);
  v11[1] = v8;

  v9 = v7;
  sub_22F3EEDC0(v11, a2, v9);

  *a1 = v6;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_22F3EF030(char *a1, _BYTE *a2, uint64_t a3)
{
  v7 = type metadata accessor for SongSource();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v73 - v13;
  v15 = OBJC_IVAR___PGMusicCuratorContext_bypassMusicForTopicElection;
  swift_beginAccess();
  if (a2[v15])
  {
    return MEMORY[0x277D84FA0];
  }

  v84 = v8;
  v85 = v11;
  v83 = v7;
  v86 = v14;
  v81 = a1;
  v95 = v3;
  if (qword_2810A9B30 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("Music For Topic Elector", 23, 2u, 0, 1, qword_2810B4E30, v94);
  v17 = sub_22F7416E0();
  v87 = v18;
  v78 = a3;
  v88 = v19;
  v89 = v20;
  v21 = *&a2[OBJC_IVAR___PGMusicCuratorContext_cache];
  v22 = sub_22F25F004();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v23 = swift_allocObject();
  v79 = xmmword_22F770DF0;
  *(v23 + 16) = xmmword_22F770DF0;
  *(v23 + 56) = MEMORY[0x277D837D0];
  v24 = sub_22F153470();
  *(v23 + 64) = v24;
  *(v23 + 32) = 0x696669746E656469;
  *(v23 + 40) = 0xEA00000000007265;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v23 + 96) = v25;
  v26 = sub_22F25F050();
  v82 = a2;
  v27 = v26;
  *(v23 + 104) = v26;
  *(v23 + 72) = &unk_2843DAA98;
  v28 = sub_22F741560();
  v29 = v95;
  v30 = sub_22F1935BC();
  v95 = v29;
  if (v29)
  {
  }

  v73 = v27;
  v74 = v25;
  v75 = v24;
  v76 = v22;
  v77 = v21;
  v31 = v17;
  v33 = v87;
  v32 = v88;
  v34 = v89;
  v35 = v30;

  if (!*(v35 + 16))
  {

    v40 = v95;
    v41 = v33;
LABEL_11:
    v42 = v77;
    goto LABEL_12;
  }

  v36 = v85;
  sub_22F1684A8(v35 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v85);

  v37 = v36;
  v38 = v86;
  sub_22F3EF960(v37, v86);
  v39 = v95;
  static MaestroMusicMatrixGenerator.maestroSongsInfo()(v90);
  v40 = v39;
  if (v39)
  {

    return sub_22F16850C(v38);
  }

  v41 = v33;
  if (*&v38[*(v83 + 24)] < 1)
  {

    sub_22F16850C(v38);
    goto LABEL_11;
  }

  v43 = &v38[*(v83 + 44)];
  v44 = *(v43 + 1);
  if (!v44)
  {

    sub_22F16850C(v38);

    goto LABEL_11;
  }

  if (*v43 == v91 && v44 == v92)
  {

    sub_22F16850C(v38);
    goto LABEL_22;
  }

  LODWORD(v95) = sub_22F742040();

  sub_22F16850C(v38);
  v42 = v77;
  if (v95)
  {
    goto LABEL_22;
  }

LABEL_12:
  sub_22F28AC68(v42, v41);
  if (v40)
  {
  }

LABEL_22:
  sub_22F7416A0();
  sub_22F7416A0();
  v45 = sub_22F3ED5F4(v81, v82);
  v46 = 0;
  v47 = v45;
  v48 = *(v45 + 16);
  if (v48)
  {
    v95 = 0;
    v49 = sub_22F10B348(v48, 0);
    v50 = sub_22F120B3C(v90, v49 + 32, v48, v47);
    v51 = v91;
    v85 = v92;
    v86 = v90[0];
    v84 = v93;
    swift_bridgeObjectRetain_n();
    v52 = v82;
    sub_22F0FF590();
    if (v50 != v48)
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v46 = v95;
    v53 = v82;
  }

  else
  {
    swift_bridgeObjectRetain_n();
    v53 = v82;
    v54 = v82;
    v49 = MEMORY[0x277D84F90];
  }

  v90[0] = v49;
  v55 = v53;
  sub_22F3EEF5C(v90, v47, v55);
  v51 = v46;
  if (v46)
  {

    __break(1u);
    return result;
  }

  swift_bridgeObjectRelease_n();

  v48 = sub_22F39A078(*&v55[OBJC_IVAR___PGMusicCuratorContext_configuration + 160], v90[0]);
  v59 = v32;
  if ((v58 & 1) == 0)
  {
    goto LABEL_30;
  }

  v47 = v58;
  v49 = v57;
  v32 = v56;
  sub_22F742070();
  swift_unknownObjectRetain_n();
  v63 = swift_dynamicCastClass();
  if (!v63)
  {
    swift_unknownObjectRelease();
    v63 = MEMORY[0x277D84F90];
  }

  v64 = *(v63 + 16);

  if (__OFSUB__(v47 >> 1, v49))
  {
    goto LABEL_42;
  }

  if (v64 != (v47 >> 1) - v49)
  {
LABEL_43:
    swift_unknownObjectRelease();
    v58 = v47;
    v57 = v49;
    v56 = v32;
    v59 = v88;
LABEL_30:
    sub_22F10AB90(v48, v56, v57, v58);
    v61 = v60;
    v62 = v31;
LABEL_37:
    swift_unknownObjectRelease();
    goto LABEL_38;
  }

  v61 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v62 = v31;
  v59 = v88;
  if (!v61)
  {
    v61 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

LABEL_38:
  sub_22F7416A0();
  if (v51)
  {
  }

  v65 = v59;
  v66 = swift_allocObject();
  *(v66 + 16) = v79;
  v67 = v75;
  *(v66 + 56) = MEMORY[0x277D837D0];
  *(v66 + 64) = v67;
  *(v66 + 32) = 0x44496D616461;
  *(v66 + 40) = 0xE600000000000000;
  v68 = v73;
  *(v66 + 96) = v74;
  *(v66 + 104) = v68;
  *(v66 + 72) = v61;

  v69 = sub_22F741560();
  v90[0] = 0;
  v90[1] = 0;
  LOWORD(v91) = 1;
  v70 = v89;
  v71 = sub_22F196B2C(v69, v90, v89);

  sub_22F1B2BBC(0);
  sub_22F7416A0();
  v72 = sub_22F151734(v71);

  return v72;
}

uint64_t sub_22F3EF960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SongSource();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F3EF9CC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F3F6724(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F3F1850(v6);
  return sub_22F741BB0();
}

uint64_t sub_22F3EFA48(void *a1, uint64_t a2)
{
  v5 = v3;
  v6 = v2;
  v58[1] = *MEMORY[0x277D85DE8];
  v8 = [a1 set];
  v9 = sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  sub_22F3F26A0();
  v10 = sub_22F741420();

  v11 = [objc_allocWithZone(MEMORY[0x277D22C88]) initWithProgressReporter_];
  v12 = [v11 childProgressReporterToCheckpoint_];
  v13 = [v11 childProgressReporterToCheckpoint_];
  v53 = v6;
  v54 = v13;
  v51 = v12;
  v52 = v11;
  v55 = v3;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x277D84FA0];
    v58[0] = MEMORY[0x277D84FA0];
    sub_22F7419C0();
    v15 = sub_22F741A40();
    if (v15)
    {
      v6 = &selRef_floatVector;
      v12 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
      v11 = -1;
      do
      {
        v56 = v15;
        swift_dynamicCast();
        if ([v57 hasAddressNodes] && objc_msgSend(v57, sel_numberOfAssetsInExtendedCuration) > 0)
        {
          v4 = v57;
          v16 = v14[2];
          if (v14[3] <= v16)
          {
            sub_22F1121A8(v16 + 1);
          }

          v14 = v58[0];
          v17 = *(v58[0] + 40);
          v18 = sub_22F741800();
          v19 = v58[0] + 56;
          v20 = -1 << *(v58[0] + 32);
          v21 = v18 & ~v20;
          v22 = v21 >> 6;
          if (((-1 << v21) & ~*(v58[0] + 56 + 8 * (v21 >> 6))) != 0)
          {
            v23 = __clz(__rbit64((-1 << v21) & ~*(v58[0] + 56 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = 0;
            v25 = (63 - v20) >> 6;
            do
            {
              if (++v22 == v25 && (v24 & 1) != 0)
              {
                __break(1u);
                goto LABEL_49;
              }

              v26 = v22 == v25;
              if (v22 == v25)
              {
                v22 = 0;
              }

              v24 |= v26;
              v27 = *(v19 + 8 * v22);
            }

            while (v27 == -1);
            v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          }

          *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
          *(v14[6] + 8 * v23) = v4;
          ++v14[2];
        }

        else
        {
        }

        v15 = sub_22F741A40();
      }

      while (v15);
    }

LABEL_40:
    v11 = v52;
    v6 = v53;
    v12 = v51;
    goto LABEL_41;
  }

  v28 = *(v10 + 32);
  v29 = v28 & 0x3F;
  v30 = ((1 << v28) + 63) >> 6;
  v48 = v30;
  if (v29 <= 0xD)
  {
LABEL_23:
    v47[1] = v47;
    MEMORY[0x28223BE20](v13);
    v49 = v47 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v31);
    v50 = 0;
    v6 = 0;
    v11 = v10 + 56;
    v32 = 1 << *(v10 + 32);
    v33 = -1;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    v34 = v33 & *(v10 + 56);
    v12 = ((v32 + 63) >> 6);
    while (v34)
    {
      v35 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
LABEL_34:
      v9 = v35 | (v6 << 6);
      v4 = *(*(v10 + 48) + 8 * v9);
      if ([v4 hasAddressNodes])
      {
        v38 = [v4 numberOfAssetsInExtendedCuration];

        if (v38 > 0)
        {
          *&v49[(v9 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v9;
          if (__OFADD__(v50++, 1))
          {
            __break(1u);
LABEL_39:
            v14 = sub_22F1B9864(v49, v48, v50, v10);
            goto LABEL_40;
          }
        }
      }

      else
      {
      }
    }

    v36 = v6;
    while (1)
    {
      v6 = (v36 + 1);
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v6 >= v12)
      {
        goto LABEL_39;
      }

      v37 = *(v11 + 8 * v6);
      v36 = (v36 + 1);
      if (v37)
      {
        v35 = __clz(__rbit64(v37));
        v34 = (v37 - 1) & v37;
        goto LABEL_34;
      }
    }

LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v45 = 8 * v30;

  v4 = v45;
  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_23;
  }

  v4 = swift_slowAlloc();
  v46 = sub_22F3F2398(v4, v48, v10, sub_22F3F0014, 0);
  v55 = v5;
  if (v5)
  {
LABEL_56:

    result = MEMORY[0x2319033A0](v4, -1, -1);
    __break(1u);
    return result;
  }

  v14 = v46;

  MEMORY[0x2319033A0](v4, -1, -1);
LABEL_41:
  v58[0] = sub_22F10AD6C(v14);
  v40 = v55;
  sub_22F3EF9CC(v58);
  v9 = v40;
  if (v40)
  {

    __break(1u);
    goto LABEL_56;
  }

  v4 = v58[0];
  if (v58[0] < 0 || (v58[0] & 0x4000000000000000) != 0)
  {
LABEL_50:
    v41 = sub_22F741A00();
    goto LABEL_45;
  }

  v41 = *(v58[0] + 16);
LABEL_45:
  *(v6 + OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_numberOfMomentsAfterFilter) = v41;
  sub_22F7416A0();
  if (v9)
  {
  }

  else
  {
    v42 = v54;
    sub_22F3F0068(v4);
  }

  v43 = *MEMORY[0x277D85DE8];
  return v4;
}

id sub_22F3F0014(id *a1)
{
  v1 = *a1;
  result = [*a1 hasAddressNodes];
  if (result)
  {
    return ([v1 numberOfAssetsInExtendedCuration] > 0);
  }

  return result;
}

void sub_22F3F0068(unint64_t a1)
{
  v2 = v1;
  v3 = a1;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v5 = 0;
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    v20 = v3 & 0xC000000000000001;
    v17 = i;
    while (1)
    {
      if (v20)
      {
        v6 = MEMORY[0x2319016F0](v5, v3);
      }

      else
      {
        if (v5 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v6 bestAddressNode];
      if (v9)
      {
        v10 = v9;
        v11 = [objc_allocWithZone(PGGraphAddressNodeCollection) initWithNode_];
        v12 = sub_22F740E20();
        v14 = v2;
        v15 = v3;
        v16 = sub_22F3F022C(v12, v13, v11, v7, v18);

        i = v17;

        v3 = v15;
        v2 = v14;
      }

      sub_22F741680();

      if (v2)
      {
        return;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    sub_22F741A00();
  }

LABEL_17:
  sub_22F7416A0();
}

char *sub_22F3F022C(uint64_t a1, uint64_t a2, void *a3, id a4, char *a5)
{
  v11 = a1;
  if (sub_22F740E20() == a1 && v12 == a2)
  {

    goto LABEL_18;
  }

  v14 = sub_22F742040();

  if (v14)
  {
LABEL_18:
    v21 = [a3 cityNodes];
    v22 = [v21 firstNode];
    goto LABEL_19;
  }

  if (sub_22F740E20() == v11 && v15 == a2)
  {

    goto LABEL_37;
  }

  v17 = sub_22F742040();

  if (v17)
  {
LABEL_37:
    v21 = [a3 stateNodes];
    v22 = [v21 firstNode];
    goto LABEL_19;
  }

  if (sub_22F740E20() == v11 && v18 == a2)
  {
  }

  else
  {
    v20 = sub_22F742040();

    if ((v20 & 1) == 0)
    {
LABEL_33:
      v34 = [a3 areaNodes];
      v35 = swift_allocObject();
      *(v35 + 16) = a5;
      *(v35 + 24) = a4;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_22F3F24F4;
      *(v36 + 24) = v35;
      aBlock[4] = sub_22F1F68E8;
      aBlock[5] = v36;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22F107E24;
      aBlock[3] = &block_descriptor_60;
      v37 = _Block_copy(aBlock);
      v38 = a4;
      v39 = a5;

      [v34 enumerateUsingBlock_];
      _Block_release(v37);

      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return 0;
      }

LABEL_45:
      __break(1u);
      goto LABEL_46;
    }
  }

  v21 = [a3 countryNodes];
  v22 = [v21 firstNode];
LABEL_19:
  v23 = v22;

  if (!v23)
  {
    goto LABEL_33;
  }

  v83 = a2;
  v5 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v24 = *&a5[v5];
  v25 = *(v24 + 16);
  v84 = v23;
  if (v25)
  {

    v26 = sub_22F1229E8(v11, v83);
    if (v27)
    {
      v82 = a5;
      v6 = *(*(v24 + 56) + 8 * v26);

      v80 = a3;
      v81 = a4;
      v79 = v11;
      if (!(v6 >> 62))
      {
        v28 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28)
        {
          goto LABEL_24;
        }

LABEL_47:

        a4 = v81;
        a5 = v82;
        v11 = v79;
        goto LABEL_48;
      }

LABEL_46:
      v28 = sub_22F741A00();
      if (v28)
      {
LABEL_24:
        v29 = 0;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v30 = MEMORY[0x2319016F0](v29, v6);
          }

          else
          {
            if (v29 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_44;
            }

            v30 = *(v6 + 8 * v29 + 32);
          }

          v31 = v30;
          v32 = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            __break(1u);
LABEL_44:
            __break(1u);
            goto LABEL_45;
          }

          sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
          v33 = *&v31[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
          if (sub_22F741810())
          {
            break;
          }

          ++v29;
          if (v32 == v28)
          {
            goto LABEL_47;
          }
        }

        v42 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
        swift_beginAccess();
        v41 = v31;
        v43 = v81;
        MEMORY[0x231900D00]();
        if (*((*&v31[v42] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v31[v42] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v77 = *((*&v31[v42] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        swift_endAccess();

        v44 = v41;
        v45 = v83;
        v46 = v79;
        goto LABEL_57;
      }

      goto LABEL_47;
    }
  }

LABEL_48:
  v47 = v11;
  v48 = type metadata accessor for LocationNodeCache();
  v49 = objc_allocWithZone(v48);
  v50 = MEMORY[0x277D84F90];
  *&v49[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_children] = MEMORY[0x277D84F90];
  v51 = v84;
  *&v49[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode] = v84;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_22F771EB0;
  *(v52 + 32) = a4;
  *&v49[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation] = v52;
  v87.receiver = v49;
  v87.super_class = v48;
  v53 = v51;
  v54 = a4;
  v55 = objc_msgSendSuper2(&v87, sel_init);
  v56 = *&a5[v5];
  v57 = *(v56 + 16);
  v41 = v55;
  if (v57)
  {

    v58 = v47;
    v45 = v83;
    v59 = sub_22F1229E8(v47, v83);
    if (v60)
    {
      v50 = *(*(v56 + 56) + 8 * v59);
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v45 = v83;
    v58 = v47;
  }

  v85 = v50;
  MEMORY[0x231900D00]();
  if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v74 = v45;
    v75 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
    v45 = v74;
  }

  sub_22F741220();
  v61 = v85;
  swift_beginAccess();

  v62 = *&a5[v5];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v86 = *&a5[v5];
  *&a5[v5] = 0x8000000000000000;
  sub_22F132290(v61, v58, v45, isUniquelyReferenced_nonNull_native);

  *&a5[v5] = v86;
  swift_endAccess();
  v46 = v58;
  v44 = 0;
LABEL_57:
  v64 = sub_22F3F2514(v46, v45);
  if (v65)
  {
    v66 = sub_22F3F022C(v64);

    if (v66)
    {
      v67 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_children;
      v68 = swift_beginAccess();
      v69 = *&v41[v67];
      v85 = v66;
      MEMORY[0x28223BE20](v68);
      v78[2] = &v85;

      v70 = sub_22F1C39A8(sub_22F3F2648, v78, v69);

      if ((v70 & 1) == 0)
      {
        swift_beginAccess();
        v71 = v66;
        MEMORY[0x231900D00]();
        if (*((*&v41[v67] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v41[v67] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((*&v41[v67] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();
        swift_endAccess();
      }
    }
  }

  v72 = v84;
  return v41;
}

uint64_t sub_22F3F0A8C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache;
  swift_beginAccess();
  v8 = *(a3 + v7);
  if (*(v8 + 16))
  {
    v9 = *(a3 + v7);

    v10 = sub_22F12350C(a1);
    if (v11)
    {
      v12 = *(*(v8 + 56) + 8 * v10);
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v20 = v12;
  v13 = a4;
  MEMORY[0x231900D00]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  sub_22F741220();
  swift_beginAccess();
  v14 = a1;
  v15 = *(a3 + v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + v7);
  *(a3 + v7) = 0x8000000000000000;
  sub_22F133680(v20, v14, isUniquelyReferenced_nonNull_native);

  *(a3 + v7) = v19;
  return swift_endAccess();
}

void sub_22F3F0BF4(uint64_t a1)
{
  v23 = a1;
  v22 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v2 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = *(v1 + v2);

  v10 = 0;
  while (1)
  {
    v11 = v10;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v10 << 9) | (8 * v12);
    v14 = *(*(v3 + 48) + v13);
    v15 = *(*(v3 + 56) + v13);
    v24 = v23;
    MEMORY[0x28223BE20](v9);
    v21[2] = &v24;
    v17 = v16;

    v18 = sub_22F1C39A8(sub_22F3F248C, v21, v15);

    if (v18)
    {
      v19 = v17;
      MEMORY[0x231900D00]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();

      v22 = v25;
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = *(v3 + 64 + 8 * v10);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22F3F0DEC(void *a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_areaCache;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (!*(v4 + 16))
  {
    goto LABEL_16;
  }

  v5 = *(v1 + v3);

  v6 = sub_22F12350C(a1);
  if ((v7 & 1) == 0)
  {

LABEL_16:
    v16 = [a1 UUID];
    if (!v16)
    {
      v16 = [a1 fullname];
    }

    v17 = v16;
    v18 = sub_22F740E20();
    v11 = v19;

    sub_22F2FCEA4();
    swift_allocError();
    *v20 = v18;
    *(v20 + 8) = v11;
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = 2;
    swift_willThrow();
    return v11;
  }

  v8 = *(*(v4 + 56) + 8 * v6);

  if (v8 >> 62)
  {
LABEL_24:
    v9 = sub_22F741A00();
  }

  else
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = 0;
  v11 = 0;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2319016F0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v13 = *(v8 + 8 * v10 + 32);
    }

    v14 = v13;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v15 = [v13 numberOfAssetsInExtendedCuration];
    if (!v15)
    {
      v15 = [v14 numberOfAssets];
    }

    ++v10;
    v12 = __OFADD__(v11, v15);
    v11 += v15;
    if (v12)
    {
      goto LABEL_23;
    }
  }

  return v11;
}

uint64_t sub_22F3F0FF4(void *a1)
{
  v3 = [a1 label];
  if (!v3)
  {
    v20 = [a1 UUID];
    v21 = sub_22F740E20();
    v23 = v22;

    sub_22F2FCEA4();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
LABEL_18:
    swift_willThrow();
    return v23;
  }

  v4 = v3;
  v5 = sub_22F740E20();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
LABEL_17:
    v25 = [a1 UUID];
    v26 = sub_22F740E20();
    v23 = v27;

    sub_22F2FCEA4();
    swift_allocError();
    *v28 = v26;
    *(v28 + 8) = v23;
    *(v28 + 16) = v5;
    *(v28 + 24) = v7;
    *(v28 + 32) = 1;
    goto LABEL_18;
  }

  v10 = sub_22F1229E8(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_17;
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + 8 * v12);

  if (v13 >> 62)
  {
    goto LABEL_38;
  }

  for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v15 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2319016F0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
      v19 = *&v17[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
      if (sub_22F741810())
      {

        v30 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_momentsAtThisLocation;
        swift_beginAccess();
        v31 = *&v17[v30];
        if (v31 >> 62)
        {
          if (v31 < 0)
          {
            v37 = *&v17[v30];
          }

          v13 = sub_22F741A00();
        }

        else
        {
          v13 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v32 = 0;
        v23 = 0;
        while (v13 != v32)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x2319016F0](v32, v31);
          }

          else
          {
            if (v32 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_36;
            }

            v34 = *(v31 + 8 * v32 + 32);
          }

          v35 = v34;
          if (__OFADD__(v32, 1))
          {
            goto LABEL_35;
          }

          v36 = [v34 numberOfAssetsInExtendedCuration];
          if (!v36)
          {
            v36 = [v35 numberOfAssets];
          }

          ++v32;
          v33 = __OFADD__(v23, v36);
          v23 += v36;
          if (v33)
          {
            goto LABEL_37;
          }
        }

        return v23;
      }

      ++v15;
      if (v18 == i)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    ;
  }

LABEL_39:

  return 0;
}

uint64_t sub_22F3F1380(void *a1)
{
  v3 = [a1 label];
  if (!v3)
  {
    v20 = [a1 UUID];
    v21 = sub_22F740E20();
    v23 = v22;

    sub_22F2FCEA4();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    *(v24 + 32) = 0;
    return swift_willThrow();
  }

  v4 = v3;
  v5 = sub_22F740E20();
  v7 = v6;

  v8 = OBJC_IVAR____TtC11PhotosGraph26TripFeatureProcessorHelper_locationDictionaryCache;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (!*(v9 + 16))
  {
LABEL_17:
    v25 = [a1 UUID];
    v26 = sub_22F740E20();
    v28 = v27;

    sub_22F2FCEA4();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = v5;
    *(v29 + 24) = v7;
    *(v29 + 32) = 1;
    return swift_willThrow();
  }

  v10 = sub_22F1229E8(v5, v7);
  if ((v11 & 1) == 0)
  {

    goto LABEL_17;
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + 8 * v12);

  if (v13 >> 62)
  {
LABEL_30:
    v14 = sub_22F741A00();
    if (v14)
    {
      goto LABEL_6;
    }

LABEL_31:

    return MEMORY[0x277D84F90];
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_6:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2319016F0](v15, v13);
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    sub_22F120634(0, &qword_2810A8EC0, 0x277D82BB8);
    v19 = *&v17[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];
    if (sub_22F741810())
    {
      break;
    }

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_31;
    }
  }

  v31 = OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_children;
  swift_beginAccess();
  v32 = *&v17[v31];
  if (v32 >> 62)
  {
    if (v32 < 0)
    {
      v39 = *&v17[v31];
    }

    v33 = sub_22F741A00();
    if (v33)
    {
      goto LABEL_21;
    }

LABEL_35:

    return MEMORY[0x277D84F90];
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v33)
  {
    goto LABEL_35;
  }

LABEL_21:
  v40 = MEMORY[0x277D84F90];

  result = sub_22F741BD0();
  if (v33 < 0)
  {
    __break(1u);
  }

  else
  {
    v34 = 0;
    do
    {
      if ((v32 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x2319016F0](v34, v32);
      }

      else
      {
        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      ++v34;
      v37 = *&v35[OBJC_IVAR____TtC11PhotosGraph17LocationNodeCache_locationNode];

      sub_22F741BA0();
      v38 = *(v40 + 16);
      sub_22F741BE0();
      sub_22F741BF0();
      sub_22F741BB0();
    }

    while (v33 != v34);

    return v40;
  }

  return result;
}

id sub_22F3F17AC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TripFeatureProcessorHelper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F3F1850(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &qword_2810A90E0, off_27887B100);
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F3F1A60(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_22F3F1964(0, v2, 1, a1);
  }
}

void sub_22F3F1964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      v11 = *v10;
      v12 = v8;
      v13 = v11;
      [v12 timestampUTCStart];
      v15 = v14;
      [v13 timestampUTCStart];
      v17 = v16;

      if (v15 > v17)
      {
LABEL_4:
        ++v4;
        v6 += 8;
        --v7;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v18 = *v10;
      v8 = *(v10 + 8);
      *v10 = v8;
      *(v10 + 8) = v18;
      v10 -= 8;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F3F1A60(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v9 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v8 = sub_22F3F5F98(v8);
    }

    v99 = v5;
    v100 = *(v8 + 2);
    if (v100 >= 2)
    {
      while (*a3)
      {
        v5 = v100 - 1;
        v101 = *&v8[16 * v100];
        v102 = *&v8[16 * v100 + 24];
        sub_22F3F20D8((*a3 + 8 * v101), (*a3 + 8 * *&v8[16 * v100 + 16]), (*a3 + 8 * v102), v9);
        if (v99)
        {
          goto LABEL_98;
        }

        if (v102 < v101)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v100 - 2 >= *(v8 + 2))
        {
          goto LABEL_115;
        }

        v103 = &v8[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_22F3F5F0C(v100 - 1);
        v100 = *(v8 + 2);
        if (v100 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_125;
    }

LABEL_98:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 < v6)
    {
      v105 = v5;
      v11 = *(*a3 + 8 * v10);
      v5 = 8 * v7;
      v12 = v7;
      v13 = (*a3 + 8 * v7);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = v11;
      v17 = v15;
      [v16 timestampUTCStart];
      v19 = v18;
      [v17 timestampUTCStart];
      v21 = v20;

      v22 = v12 + 2;
      while (v6 != v22)
      {
        v23 = *(v14 - 1);
        v24 = *v14;
        v25 = v23;
        [v24 timestampUTCStart];
        v27 = v26;
        [v25 timestampUTCStart];
        v29 = v28;

        ++v22;
        ++v14;
        if (v19 <= v21 == v27 > v29)
        {
          v6 = (v22 - 1);
          break;
        }
      }

      v9 = v12;
      if (v19 <= v21)
      {
        if (v6 < v12)
        {
          goto LABEL_118;
        }

        if (v12 < v6)
        {
          v30 = 8 * v6 - 8;
          v31 = v6;
          v32 = v12;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v5);
              *(v34 + v5) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            v32 = (v32 + 1);
            v30 -= 8;
            v5 += 8;
          }

          while (v32 < v31);
        }
      }

      v10 = v6;
      v5 = v105;
    }

    v35 = a3[1];
    if (v10 < v35)
    {
      if (__OFSUB__(v10, v9))
      {
        goto LABEL_117;
      }

      if (v10 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_119;
        }

        if (v9 + a4 >= v35)
        {
          v36 = a3[1];
        }

        else
        {
          v36 = (v9 + a4);
        }

        if (v36 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v10 != v36)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v10 < v9)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
    }

    v54 = *(v8 + 2);
    v53 = *(v8 + 3);
    v55 = v54 + 1;
    if (v54 >= v53 >> 1)
    {
      v8 = sub_22F13D970((v53 > 1), v54 + 1, 1, v8);
    }

    *(v8 + 2) = v55;
    v56 = &v8[16 * v54];
    *(v56 + 4) = v9;
    *(v56 + 5) = v10;
    v57 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v111 = v10;
    if (v54)
    {
      while (1)
      {
        v58 = v55 - 1;
        if (v55 >= 4)
        {
          break;
        }

        if (v55 == 3)
        {
          v59 = *(v8 + 4);
          v60 = *(v8 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_57:
          if (v62)
          {
            goto LABEL_105;
          }

          v75 = &v8[16 * v55];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_108;
          }

          v81 = &v8[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_112;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v55 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v85 = &v8[16 * v55];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_71:
        if (v80)
        {
          goto LABEL_107;
        }

        v88 = &v8[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_78:
        v96 = v58 - 1;
        if (v58 - 1 >= v55)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v97 = *&v8[16 * v96 + 32];
        v9 = *&v8[16 * v58 + 40];
        sub_22F3F20D8((*a3 + 8 * v97), (*a3 + 8 * *&v8[16 * v58 + 32]), (*a3 + 8 * v9), v57);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v9 < v97)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v96 >= *(v8 + 2))
        {
          goto LABEL_102;
        }

        v98 = &v8[16 * v96];
        *(v98 + 4) = v97;
        *(v98 + 5) = v9;
        sub_22F3F5F0C(v58);
        v55 = *(v8 + 2);
        if (v55 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v8[16 * v55 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_103;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_104;
      }

      v70 = &v8[16 * v55];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_106;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_109;
      }

      if (v74 >= v66)
      {
        v92 = &v8[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_113;
        }

        if (v61 < v95)
        {
          v58 = v55 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v111;
    v6 = a3[1];
    if (v111 >= v6)
    {
      goto LABEL_88;
    }
  }

  v106 = v5;
  v37 = v9;
  v38 = *a3;
  v39 = *a3 + 8 * v10 - 8;
  v107 = v37;
  v40 = v37 - v10;
  v109 = v36;
LABEL_30:
  v110 = v10;
  v41 = *(v38 + 8 * v10);
  v42 = v40;
  v43 = v39;
  while (1)
  {
    v44 = *v43;
    v45 = v41;
    v46 = v44;
    [v45 timestampUTCStart];
    v48 = v47;
    [v46 timestampUTCStart];
    v50 = v49;

    if (v48 > v50)
    {
LABEL_29:
      v10 = v110 + 1;
      v39 += 8;
      --v40;
      if ((v110 + 1) != v109)
      {
        goto LABEL_30;
      }

      v10 = v109;
      v5 = v106;
      v9 = v107;
      goto LABEL_37;
    }

    if (!v38)
    {
      break;
    }

    v51 = *v43;
    v41 = *(v43 + 8);
    *v43 = v41;
    *(v43 + 8) = v51;
    v43 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_22F3F20D8(void **__src, void **a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = a2 - __src;
  v8 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v8 = a2 - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != a2 || &a2[v12] <= a4)
    {
      v25 = a2;
      memmove(a4, a2, 8 * v12);
      a2 = v25;
    }

    v24 = a2;
    v14 = &v4[v12];
    if (v10 >= 8 && a2 > v6)
    {
      v41 = v4;
LABEL_26:
      __dst = v24;
      v26 = v24 - 1;
      --v5;
      v27 = v14;
      do
      {
        v28 = v5 + 1;
        v29 = *--v27;
        v30 = v26;
        v31 = *v26;
        v32 = v29;
        v33 = v31;
        [v32 timestampUTCStart];
        v35 = v34;
        [v33 timestampUTCStart];
        v37 = v36;

        if (v35 <= v37)
        {
          v38 = v30;
          if (v28 != __dst)
          {
            *v5 = *v30;
          }

          v4 = v41;
          if (v14 <= v41 || (v24 = v38, v38 <= v6))
          {
            v24 = v38;
            goto LABEL_37;
          }

          goto LABEL_26;
        }

        if (v28 != v14)
        {
          *v5 = *v27;
        }

        --v5;
        v14 = v27;
        v26 = v30;
      }

      while (v27 > v41);
      v14 = v27;
      v24 = __dst;
      v4 = v41;
    }
  }

  else
  {
    v13 = a2;
    if (a4 != __src || &__src[v9] <= a4)
    {
      memmove(a4, __src, 8 * v9);
    }

    v14 = &v4[v9];
    if (v7 >= 8 && v13 < v5)
    {
      while (1)
      {
        v15 = *v4;
        v16 = *v13;
        v17 = v15;
        [v16 timestampUTCStart];
        v19 = v18;
        [v17 timestampUTCStart];
        v21 = v20;

        if (v19 <= v21)
        {
          break;
        }

        v22 = v4;
        v23 = v6 == v4++;
        if (!v23)
        {
          goto LABEL_16;
        }

LABEL_17:
        ++v6;
        if (v4 >= v14 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v22 = v13;
      v23 = v6 == v13++;
      if (v23)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v22;
      goto LABEL_17;
    }

LABEL_19:
    v24 = v6;
  }

LABEL_37:
  if (v24 != v4 || v24 >= (v4 + ((v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v24, v4, 8 * (v14 - v4));
  }

  return 1;
}

void *sub_22F3F2398(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_22F35F6BC(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_22F3F2428(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  return sub_22F741810() & 1;
}

uint64_t sub_22F3F248C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  return sub_22F741810() & 1;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F3F2514(uint64_t a1, uint64_t a2)
{
  if (sub_22F740E20() == a1 && v4 == a2)
  {
    v7 = &kPGGraphNodeLocationState;
LABEL_18:

    goto LABEL_19;
  }

  v6 = sub_22F742040();

  v7 = &kPGGraphNodeLocationState;
  if (v6)
  {
LABEL_19:
    v14 = *v7;
    return sub_22F740E20();
  }

  if (sub_22F740E20() == a1 && v8 == a2)
  {
    v7 = kPGGraphNodeLocationCity;
    goto LABEL_18;
  }

  v10 = sub_22F742040();

  v7 = kPGGraphNodeLocationCity;
  if (v10)
  {
    goto LABEL_19;
  }

  if (sub_22F740E20() == a1 && v11 == a2)
  {
    v7 = kPGGraphNodeLocationArea;
    goto LABEL_18;
  }

  v13 = sub_22F742040();

  if (v13)
  {
    v7 = kPGGraphNodeLocationArea;
    goto LABEL_19;
  }

  return 0;
}

uint64_t sub_22F3F2648(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for LocationNodeCache();
  return sub_22F741810() & 1;
}

unint64_t sub_22F3F26A0()
{
  result = qword_2810A90D0;
  if (!qword_2810A90D0)
  {
    sub_22F120634(255, &qword_2810A90E0, off_27887B100);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A90D0);
  }

  return result;
}

void *sub_22F3F2708(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22F741D00();

    if (v4)
    {
      sub_22F120634(0, &qword_27DAB14B0, 0x277CD9968);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_22F123978(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t sub_22F3F27CC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F1064C0(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_22F3F5050(v6);
  return sub_22F741BB0();
}

uint64_t sub_22F3F2848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v26 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      v19 = *(v6 + 40);
      sub_22F742170();

      sub_22F740D60();
      v20 = sub_22F7421D0();
      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      if ((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
      {
        v23 = ~v21;
        while (1)
        {
          v24 = (*(v6 + 48) + 16 * v22);
          v25 = *v24 == v18 && v24[1] == v17;
          if (v25 || (sub_22F742040() & 1) != 0)
          {
            break;
          }

          v22 = (v22 + 1) & v23;
          if (((*(v11 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v26;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22F3F2A30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v12 = 0;
  v13 = -1;
  v6 = swift_allocObject();
  v6[2] = &v12;
  v6[3] = a1;
  v6[4] = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_22F3F6714;
  *(v7 + 24) = v6;
  aBlock[4] = sub_22F2A2214;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_18_1;
  v8 = _Block_copy(aBlock);

  [v3 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v8);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v13 == 255)
  {
LABEL_7:
    result = sub_22F741D40();
    __break(1u);
    return result;
  }

  v9 = v12;
  if (v13)
  {
    swift_willThrow();
  }

  return v9;
}

void sub_22F3F2C20(void *a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  v5 = [a1 graph];
  a3(&v8);

  v9 = 0;
  v6 = *a2;
  *a2 = v8;
  v7 = *(a2 + 8);
  *(a2 + 8) = 0;
  sub_22F1D2184(v6, v7);
}

uint64_t sub_22F3F2CC8()
{
  v0 = sub_22F740B90();
  __swift_allocate_value_buffer(v0, qword_2810B4F90);
  __swift_project_value_buffer(v0, qword_2810B4F90);
  return sub_22F740B80();
}

uint64_t PublicEventReader.readPublicEventDataForMoment(with:)(uint64_t a1, unint64_t a2)
{
  v52 = a1;
  v53 = a2;
  v3 = sub_22F740AD0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v50 - v9;
  v11 = sub_22F740B90();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22F740B10();
  v54 = *(v16 - 8);
  v55 = v16;
  v17 = *(v54 + 64);
  *&v18 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v20 = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v2;
  if ([v21 isReady])
  {
    v51 = v21;
    if (qword_2810AB218 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v11, qword_2810B4F90);
    v23 = *(v12 + 16);
    v50[1] = v22;
    v23(v15);
    sub_22F740AE0();
    sub_22F740AC0();
    v24 = sub_22F740AF0();
    v25 = sub_22F741740();
    if (sub_22F741830())
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_22F740AB0();
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v24, v25, v27, "PublicEventReader.readPublicEventDataForMoment", "", v26, 2u);
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    (*(v4 + 16))(v7, v10, v3);
    v28 = sub_22F740B50();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    sub_22F740B40();
    (*(v4 + 8))(v10, v3);
    v31 = v53;

    v32 = sub_22F740B70();
    v33 = sub_22F7415C0();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v56[0] = v35;
      *v34 = 136315138;
      *(v34 + 4) = sub_22F145F20(v52, v31, v56);
      _os_log_impl(&dword_22F0FC000, v32, v33, "PublicEventReader.readPublicEventDataForMoment: reading public event data for moment with UUID %s", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v34, -1, -1);
    }

    v36 = v56[6];
    v37 = sub_22F73FA60();
    v56[3] = v37;
    v56[4] = sub_22F350D8C();
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(*(v37 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A808], v37);
    LOBYTE(v37) = sub_22F73FA20();
    __swift_destroy_boxed_opaque_existential_0(v56);
    v39 = v51;
    if (v37)
    {
      v40 = [v51 workingContext];
      MEMORY[0x28223BE20](v40);
      v50[-4] = v52;
      v50[-3] = v31;
      v50[-2] = v39;
      v41 = v40;
      v42 = sub_22F3F2A30(sub_22F3F5010, &v50[-6]);
      if (v36)
      {

        sub_22F3F47F0(v20, "PublicEventReader.readPublicEventDataForMoment", 46, 2);

        (*(v54 + 8))(v20, v55);
        return v41;
      }

      v41 = v42;
    }

    else
    {
      v46 = sub_22F740B70();
      v47 = sub_22F7415F0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_22F0FC000, v46, v47, "PublicEventReader.readPublicEventDataForMoment: returning empty array because ShazamPublicEvents feature flag is not enabled", v48, 2u);
        MEMORY[0x2319033A0](v48, -1, -1);
      }

      v41 = MEMORY[0x277D84F90];
    }

    sub_22F3F47F0(v20, "PublicEventReader.readPublicEventDataForMoment", 46, 2);

    (*(v54 + 8))(v20, v55);
    return v41;
  }

  if (qword_2810AB218 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v11, qword_2810B4F90);
  v43 = sub_22F740B70();
  v41 = sub_22F7415E0();
  if (os_log_type_enabled(v43, v41))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_22F0FC000, v43, v41, "PublicEventReader.readPublicEventDataForMoment - graph not ready", v44, 2u);
    MEMORY[0x2319033A0](v44, -1, -1);
  }

  sub_22F3F3438();
  swift_allocError();
  *v45 = 0;
  *(v45 + 8) = 0;
  *(v45 + 16) = 3;
  swift_willThrow();
  return v41;
}

unint64_t sub_22F3F3438()
{
  result = qword_2810AB220[0];
  if (!qword_2810AB220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810AB220);
  }

  return result;
}

void sub_22F3F348C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v9 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771340;
  *(v10 + 32) = a2;
  *(v10 + 40) = a3;

  v11 = sub_22F741160();

  v12 = [v9 momentNodesForArrayOfUUIDs:v11 inGraph:a1];

  if ([v12 isEmpty])
  {
    if (qword_2810AB218 != -1)
    {
      swift_once();
    }

    v13 = sub_22F740B90();
    __swift_project_value_buffer(v13, qword_2810B4F90);

    v14 = sub_22F740B70();
    v15 = sub_22F7415E0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v30[0] = v17;
      *v16 = 136315138;
      *(v16 + 4) = sub_22F145F20(a2, a3, v30);
      _os_log_impl(&dword_22F0FC000, v14, v15, "PublicEventReader.readPublicEventDataForMoment: moment node not found for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x2319033A0](v17, -1, -1);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    sub_22F3F3438();
    swift_allocError();
    *v18 = a2;
    *(v18 + 8) = a3;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  else
  {
    v19 = [v12 publicEventNodes];
    v20 = PublicEventReader.preferredPublicEventInfo(from:)(v19);
    if (!v4)
    {
      v22 = v20;
      if (!v20)
      {

        *a4 = MEMORY[0x277D84F90];
        goto LABEL_10;
      }

      v30[0] = 0;
      v23 = [objc_opt_self() archivedDataWithRootObject:v20 requiringSecureCoding:1 error:v30];
      v24 = v30[0];
      if (v23)
      {
        v25 = sub_22F73F510();
        v27 = v26;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44A8, &unk_22F78B5A0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_22F771340;
        *(v28 + 32) = v25;
        *(v28 + 40) = v27;
        sub_22F15C3C4(v25, v27);

        sub_22F133BF0(v25, v27);
        *a4 = v28;
        goto LABEL_10;
      }

      v29 = v24;
      sub_22F73F370();

      swift_willThrow();
    }
  }

LABEL_10:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t PublicEventReader.preferredPublicEventInfo(from:)(void *a1)
{
  if ([a1 count] >= 1)
  {
    v30 = MEMORY[0x277D84F98];
    v2 = swift_allocObject();
    *(v2 + 16) = &v30;
    v3 = swift_allocObject();
    *(v3 + 16) = sub_22F3F5030;
    *(v3 + 24) = v2;
    aBlock[4] = sub_22F1F68E8;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_61;
    v4 = _Block_copy(aBlock);

    [a1 enumerateUsingBlock_];
    _Block_release(v4);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {

        v6 = sub_22F741A00();

        if (v6 >= 2)
        {
LABEL_5:

          v8 = sub_22F10B20C(v7);

          PublicEventReader.preferredPublicEventNode(from:)(v9, v8);
          v11 = v10;

          if (!v11 || (v12 = sub_22F3F2708(v11, v30), v11, !v12))
          {
            if (qword_2810AB218 != -1)
            {
              swift_once();
            }

            v13 = sub_22F740B90();
            __swift_project_value_buffer(v13, qword_2810B4F90);
            v14 = sub_22F740B70();
            v15 = sub_22F7415E0();
            if (os_log_type_enabled(v14, v15))
            {
              v16 = swift_slowAlloc();
              *v16 = 0;
              _os_log_impl(&dword_22F0FC000, v14, v15, "PublicEventReader.preferredPublicEventInfo - expected to have found a preferred event node", v16, 2u);
              MEMORY[0x2319033A0](v16, -1, -1);
            }

            sub_22F3F3438();
            swift_allocError();
            *v17 = xmmword_22F781B40;
            *(v17 + 16) = 3;
            swift_willThrow();
            v12 = v30;

            return v12;
          }

LABEL_25:

          return v12;
        }
      }

      else if (*(v30 + 16) >= 2)
      {
        goto LABEL_5;
      }

      if (qword_2810AB218 != -1)
      {
        swift_once();
      }

      v22 = sub_22F740B90();
      __swift_project_value_buffer(v22, qword_2810B4F90);
      v23 = sub_22F740B70();
      v24 = sub_22F7415F0();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134217984;
        swift_beginAccess();
        if ((v30 & 0xC000000000000001) != 0)
        {

          v26 = sub_22F741A00();
        }

        else
        {
          v26 = *(v30 + 16);
        }

        *(v25 + 4) = v26;
        _os_log_impl(&dword_22F0FC000, v23, v24, "PublicEventReader.preferredPublicEventInfo - event info by node count: %ld", v25, 0xCu);
        MEMORY[0x2319033A0](v25, -1, -1);
      }

      swift_beginAccess();

      v12 = sub_22F15AC50(v27);

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_28;
  }

  if (qword_2810AB218 != -1)
  {
LABEL_28:
    swift_once();
  }

  v18 = sub_22F740B90();
  __swift_project_value_buffer(v18, qword_2810B4F90);
  v19 = sub_22F740B70();
  v20 = sub_22F7415F0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_22F0FC000, v19, v20, "PublicEventReader.preferredPublicEventInfo - input collection is empty", v21, 2u);
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  return 0;
}

void PublicEventReader.readPublicEventDataForAsset(with:)(void *a1, unint64_t a2)
{
  v3 = v2;
  v84 = a2;
  v82 = a1;
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v77 - v10;
  v12 = sub_22F740B90();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F740B10();
  v80 = *(v17 - 8);
  v81 = v17;
  v18 = *(v80 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = *v3;
  if (qword_2810AB218 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_2810B4F90);
  (*(v13 + 16))(v16, v21, v12);
  sub_22F740AE0();
  sub_22F740AC0();
  v79 = v20;
  v22 = sub_22F740AF0();
  v23 = sub_22F741740();
  if (sub_22F741830())
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_22F740AB0();
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v22, v23, v25, "PublicEventReader.readPublicEventDataForAsset", "", v24, 2u);
    MEMORY[0x2319033A0](v24, -1, -1);
  }

  (*(v5 + 16))(v8, v11, v4);
  v26 = sub_22F740B50();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = sub_22F740B40();
  (*(v5 + 8))(v11, v4);
  v30 = v84;

  v31 = sub_22F740B70();
  v32 = sub_22F7415C0();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v83[0] = v34;
    *v33 = 136315138;
    v35 = v82;
    *(v33 + 4) = sub_22F145F20(v82, v30, v83);
    _os_log_impl(&dword_22F0FC000, v31, v32, "PublicEventReader.readPublicEventDataForAsset: reading public event data for asset %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2319033A0](v34, -1, -1);
    MEMORY[0x2319033A0](v33, -1, -1);
  }

  else
  {

    v35 = v82;
  }

  v36 = sub_22F73FA60();
  v83[3] = v36;
  v83[4] = sub_22F350D8C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
  (*(*(v36 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D3A808], v36);
  LOBYTE(v36) = sub_22F73FA20();
  __swift_destroy_boxed_opaque_existential_0(v83);
  if ((v36 & 1) == 0)
  {
    v64 = sub_22F740B70();
    v65 = sub_22F7415F0();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_22F0FC000, v64, v65, "PublicEventReader.readPublicEventDataForAsset: returning empty array because ShazamPublicEvents feature flag is not enabled", v66, 2u);
      MEMORY[0x2319033A0](v66, -1, -1);
    }

    v61 = v79;
    goto LABEL_25;
  }

  v82 = [v78 photoLibrary];
  v38 = [v82 librarySpecificFetchOptions];
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v40 = sub_22F740DF0();
  v41 = [ObjCClassFromMetadata localIdentifierWithUUID_];

  if (!v41)
  {

    v67 = sub_22F740B70();
    v68 = sub_22F7415E0();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v83[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_22F145F20(v35, v30, v83);
      _os_log_impl(&dword_22F0FC000, v67, v68, "PublicEventReader.readPublicEventDataForAsset: local identifier for asset UUID %s does not exist", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v70);
      MEMORY[0x2319033A0](v70, -1, -1);
      MEMORY[0x2319033A0](v69, -1, -1);
    }

    v61 = v79;
    v63 = v80;
    sub_22F3F3438();
    swift_allocError();
    *v71 = v35;
    *(v71 + 8) = v30;
    v72 = 1;
    goto LABEL_35;
  }

  v77[0] = v29;
  v42 = sub_22F740E20();
  v44 = v43;

  sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
  v45 = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_22F771340;
  *(v46 + 56) = MEMORY[0x277D837D0];
  *(v46 + 32) = v42;
  *(v46 + 40) = v44;

  v47 = sub_22F741160();

  v48 = v38;
  v49 = [v45 fetchMomentsForAssetsWithLocalIdentifiers:v47 options:v38];

  if (!v49)
  {
    goto LABEL_41;
  }

  v50 = [v49 fetchedObjects];

  if (!v50)
  {

    v38 = v48;
LABEL_32:

    v73 = sub_22F740B70();
    v74 = sub_22F7415E0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v83[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_22F145F20(v35, v30, v83);
      _os_log_impl(&dword_22F0FC000, v73, v74, "PublicEventReader.readPublicEventDataForAsset: missing moment for asset with UUID %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v76);
      MEMORY[0x2319033A0](v76, -1, -1);
      MEMORY[0x2319033A0](v75, -1, -1);
    }

    v61 = v79;
    v63 = v80;
    sub_22F3F3438();
    swift_allocError();
    *v71 = v35;
    *(v71 + 8) = v30;
    v72 = 2;
LABEL_35:
    *(v71 + 16) = v72;
    swift_willThrow();

    v62 = v81;
    goto LABEL_36;
  }

  v51 = sub_22F741180();

  if (v51 >> 62)
  {
    v52 = sub_22F741A00();
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = v48;
  if (!v52)
  {

    goto LABEL_32;
  }

  if ((v51 & 0xC000000000000001) == 0)
  {
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v53 = *(v51 + 32);
      swift_unknownObjectRetain();
      goto LABEL_18;
    }

    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  MEMORY[0x2319016F0](0, v51);
LABEL_18:

  objc_opt_self();
  v54 = swift_dynamicCastObjCClass();
  if (!v54)
  {

    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v83[0] = v78;
  v55 = [v54 uuid];
  if (v55)
  {
    v56 = v55;

    v57 = sub_22F740E20();
    v59 = v58;

    v60 = v77[1];
    PublicEventReader.readPublicEventDataForMoment(with:)(v57, v59);
    v61 = v79;
    if (v60)
    {

      swift_unknownObjectRelease();
      v63 = v80;
      v62 = v81;
LABEL_36:
      sub_22F3F47F0(v61, "PublicEventReader.readPublicEventDataForAsset", 45, 2);

      (*(v63 + 8))(v61, v62);
      return;
    }

    swift_unknownObjectRelease();
LABEL_25:
    sub_22F3F47F0(v61, "PublicEventReader.readPublicEventDataForAsset", 45, 2);

    (*(v80 + 8))(v61, v81);
    return;
  }

LABEL_42:
  __break(1u);
}

uint64_t sub_22F3F47F0(uint64_t a1, const char *a2, uint64_t a3, char a4)
{
  v23 = a2;
  v5 = sub_22F740B20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_22F740AD0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = sub_22F740AF0();
  sub_22F740B30();
  v22 = sub_22F741730();
  result = sub_22F741830();
  if ((result & 1) == 0)
  {
LABEL_13:

    return (*(v11 + 8))(v14, v10);
  }

  if ((a4 & 1) == 0)
  {
    v17 = v23;
    if (v23)
    {
LABEL_9:

      sub_22F740B60();

      if ((*(v6 + 88))(v9, v5) == *MEMORY[0x277D85B00])
      {
        v18 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v9, v5);
        v18 = "";
      }

      v19 = swift_slowAlloc();
      *v19 = 0;
      v20 = sub_22F740AB0();
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v15, v22, v20, v17, v18, v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v23 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v23 & 0xFFFFF800) != 0xD800)
  {
    if (v23 >> 16 <= 0x10)
    {
      v17 = &v24;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_22F3F4A8C(void *a1, uint64_t a2, uint64_t *a3)
{
  if ([a1 supportsEventExperience])
  {
    v5 = [a1 publicEventInfo];
    if (v5)
    {
      v6 = v5;
      v7 = *a3;
      if ((*a3 & 0xC000000000000001) != 0)
      {
        if (v7 < 0)
        {
          v8 = *a3;
        }

        else
        {
          v8 = v7 & 0xFFFFFFFFFFFFFF8;
        }

        v9 = v5;
        v10 = sub_22F741A00();
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          return;
        }

        *a3 = sub_22F3F61E0(v8, v10 + 1);
      }

      else
      {
        v11 = *a3;
        v12 = v5;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v14 = *a3;
      sub_22F1337EC(v6, a1, isUniquelyReferenced_nonNull_native);
      *a3 = v14;
    }
  }
}

void __swiftcall PublicEventReader.preferredPublicEventNode(from:)(PGGraphPublicEventNode_optional *__return_ptr retstr, Swift::OpaquePointer from)
{

  v5 = sub_22F36C4C0(v2);
  sub_22F3F27CC(&v5);
  v3 = v5;
  if (v5 < 0 || (v5 & 0x4000000000000000) != 0)
  {
    if (sub_22F741A00())
    {
      goto LABEL_4;
    }

LABEL_9:

    return;
  }

  if (!*(v5 + 16))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2319016F0](0, v3);
    goto LABEL_7;
  }

  if (*(v3 + 16))
  {
    v4 = *(v3 + 32);
LABEL_7:

    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_22F3F4C30()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F770DF0;
  v1 = objc_opt_self();
  v2 = [v1 musicConcerts];
  v3 = sub_22F740E20();
  v5 = v4;

  *(inited + 32) = v3;
  *(inited + 40) = v5;
  v6 = [v1 sports];
  v7 = sub_22F740E20();
  v9 = v8;

  *(inited + 48) = v7;
  *(inited + 56) = v9;
  v10 = sub_22F1515F8(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_27DAB44A0 = v10;
  return result;
}

BOOL sub_22F3F4D34(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (qword_27DAAFE20 != -1)
  {
    swift_once();
  }

  v4 = qword_27DAB44A0;

  v5 = [v2 categories];
  v6 = sub_22F741420();

  LOBYTE(v5) = sub_22F3F2848(v6, v4);

  v7 = qword_27DAB44A0;

  v8 = [v3 categories];
  v9 = sub_22F741420();

  v10 = sub_22F3F2848(v9, v7);

  if (v5)
  {
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 1;
  }

  v11 = [v2 businessNode];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 venueCapacity];
  }

  else
  {
    v13 = sub_22F73EE70();
  }

  v14 = [v3 businessNode];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 venueCapacity];
  }

  else
  {
    v16 = sub_22F73EE70();
  }

  if (v13 == sub_22F73EE70() || v16 == sub_22F73EE70())
  {
    v17 = sub_22F73EE70();
    if (v13 >= 200 && v13 != v17)
    {
      return 1;
    }

    v19 = sub_22F73EE70();
    if (v16 >= 200 && v16 != v19)
    {
      return 0;
    }
  }

  else if (v13 != v16)
  {
    return v16 < v13;
  }

  v20 = [v2 eventIdentifier];
  v21 = sub_22F740E20();
  v23 = v22;

  v24 = [v3 eventIdentifier];
  v25 = sub_22F740E20();
  v27 = v26;

  if (v21 == v25 && v23 == v27)
  {

    return 0;
  }

  else
  {
    v28 = sub_22F742040();

    return v28 & 1;
  }
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F3F5050(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_22F3F5254(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_22F3F5164(0, v2, 1, a1);
  }
}

void sub_22F3F5164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = a3;
    v6 = *a4;
    v7 = *a4 + 8 * a3 - 8;
    v8 = a1 - a3;
LABEL_4:
    v9 = *(v6 + 8 * v5);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v20 = v9;
      v19 = *v7;
      v11 = v19;
      v12 = v9;
      v13 = v11;
      v14 = sub_22F3F4D34(&v20, &v19);

      if (v4)
      {
        break;
      }

      if (v14)
      {
        if (!v6)
        {
          __break(1u);
          return;
        }

        v15 = *v7;
        v9 = *(v7 + 8);
        *v7 = v9;
        *(v7 + 8) = v15;
        v7 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v5;
      v7 = v18 + 8;
      --v8;
      if (v5 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22F3F5254(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_116:
    v4 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_118;
    }

    goto LABEL_155;
  }

  v6 = a4;
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    v119 = v8;
    if (v7 + 1 >= v5)
    {
      ++v7;
    }

    else
    {
      v11 = *a3;
      v12 = *(*a3 + 8 * v10);
      v13 = v9;
      v14 = *(*a3 + 8 * v9);
      v130 = v14;
      v131 = v12;
      v4 = v12;
      v15 = v14;
      v16 = sub_22F3F4D34(&v131, &v130);
      if (v126)
      {

        return;
      }

      v17 = v16;

      v18 = v13 + 2;
      v117 = v13;
      v19 = 8 * v13;
      v20 = (v11 + 8 * v13 + 16);
      while (v5 != v18)
      {
        v21 = *v20;
        v130 = *(v20 - 1);
        v22 = v130;
        v131 = v21;
        v4 = v21;
        v23 = v22;
        v24 = sub_22F3F4D34(&v131, &v130);

        ++v18;
        ++v20;
        if ((v17 ^ v24))
        {
          v5 = v18 - 1;
          break;
        }
      }

      v8 = v119;
      if (v17)
      {
        v25 = v117;
        if (v5 < v117)
        {
          goto LABEL_149;
        }

        if (v117 < v5)
        {
          v26 = 8 * v5 - 8;
          v27 = v5;
          while (1)
          {
            if (v25 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_153;
              }

              v28 = *(v29 + v19);
              *(v29 + v19) = *(v29 + v26);
              *(v29 + v26) = v28;
            }

            ++v25;
            v26 -= 8;
            v19 += 8;
            if (v25 >= v27)
            {
              goto LABEL_20;
            }
          }
        }

        v7 = v5;
        v9 = v117;
      }

      else
      {
LABEL_20:
        v7 = v5;
        v9 = v117;
      }
    }

    v30 = a3[1];
    if (v7 >= v30)
    {
      goto LABEL_65;
    }

    if (__OFSUB__(v7, v9))
    {
      goto LABEL_145;
    }

    if (v7 - v9 >= v6)
    {
      goto LABEL_65;
    }

    v31 = v9 + v6;
    if (__OFADD__(v9, v6))
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
      return;
    }

    if (v31 >= v30)
    {
      v31 = a3[1];
    }

    if (v31 < v9)
    {
      goto LABEL_148;
    }

    if (v7 == v31)
    {
      goto LABEL_65;
    }

    v127 = *a3;
    v32 = *a3 + 8 * v7 - 8;
    v118 = v9;
    v33 = v9 - v7;
    v121 = v31;
    while (2)
    {
      v123 = v32;
      v124 = v7;
      v34 = *(v127 + 8 * v7);
      v122 = v33;
      v35 = v33;
      while (1)
      {
        v128 = v35;
        v36 = *v32;
        v37 = qword_27DAAFE20;
        v38 = v34;
        v39 = v36;
        if (v37 != -1)
        {
          swift_once();
        }

        v40 = qword_27DAB44A0;

        v129 = v38;
        v41 = [v38 categories];
        v42 = sub_22F741420();

        v4 = sub_22F3F2848(v42, v40);

        v43 = qword_27DAB44A0;

        v44 = [v39 categories];
        v45 = sub_22F741420();

        v46 = sub_22F3F2848(v45, v43);

        if (v4)
        {
          v47 = v129;
          if ((v46 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v47 = v129;
          if (v46)
          {
            goto LABEL_50;
          }
        }

        v48 = [v47 businessNode];
        if (v48)
        {
          v49 = v48;
          v50 = [v48 venueCapacity];
        }

        else
        {
          v50 = sub_22F73EE70();
        }

        v51 = [v39 businessNode];
        if (v51)
        {
          v52 = v51;
          v4 = [v51 venueCapacity];
        }

        else
        {
          v4 = sub_22F73EE70();
        }

        if (v50 != sub_22F73EE70() && v4 != sub_22F73EE70())
        {
          break;
        }

        v53 = sub_22F73EE70();
        if (v50 < 200 || v50 == v53)
        {
          v54 = sub_22F73EE70();
          if (v4 >= 200 && v4 != v54)
          {
LABEL_31:

            goto LABEL_32;
          }

          goto LABEL_55;
        }

LABEL_50:

LABEL_60:
        if (!v127)
        {
          goto LABEL_150;
        }

        v63 = *v32;
        v34 = *(v32 + 8);
        *v32 = v34;
        *(v32 + 8) = v63;
        v32 -= 8;
        v35 = v128 + 1;
        if (v128 == -1)
        {
          goto LABEL_32;
        }
      }

      if (v50 != v4)
      {

        if (v4 >= v50)
        {
          goto LABEL_32;
        }

        goto LABEL_60;
      }

LABEL_55:
      v55 = [v47 eventIdentifier];
      v56 = sub_22F740E20();
      v58 = v57;

      v59 = [v39 eventIdentifier];
      v60 = sub_22F740E20();
      v4 = v61;

      if (v56 != v60 || v58 != v4)
      {
        v62 = sub_22F742040();

        if ((v62 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_60;
      }

LABEL_32:
      v7 = v124 + 1;
      v32 = v123 + 8;
      v33 = v122 - 1;
      if (v124 + 1 != v121)
      {
        continue;
      }

      break;
    }

    v7 = v121;
    v9 = v118;
    v8 = v119;
LABEL_65:
    if (v7 < v9)
    {
      goto LABEL_144;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
    }

    v65 = *(v8 + 2);
    v64 = *(v8 + 3);
    v66 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v8 = sub_22F13D970((v64 > 1), v65 + 1, 1, v8);
    }

    *(v8 + 2) = v66;
    v67 = &v8[16 * v65];
    *(v67 + 4) = v9;
    *(v67 + 5) = v7;
    v68 = *a1;
    if (!*a1)
    {
      goto LABEL_154;
    }

    if (v65)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_116;
    }
  }

  while (1)
  {
    v69 = v66 - 1;
    if (v66 >= 4)
    {
      v74 = &v8[16 * v66 + 32];
      v75 = *(v74 - 64);
      v76 = *(v74 - 56);
      v80 = __OFSUB__(v76, v75);
      v77 = v76 - v75;
      if (v80)
      {
        goto LABEL_131;
      }

      v79 = *(v74 - 48);
      v78 = *(v74 - 40);
      v80 = __OFSUB__(v78, v79);
      v72 = v78 - v79;
      v73 = v80;
      if (v80)
      {
        goto LABEL_132;
      }

      v81 = &v8[16 * v66];
      v83 = *v81;
      v82 = *(v81 + 1);
      v80 = __OFSUB__(v82, v83);
      v84 = v82 - v83;
      if (v80)
      {
        goto LABEL_134;
      }

      v80 = __OFADD__(v72, v84);
      v85 = v72 + v84;
      if (v80)
      {
        goto LABEL_137;
      }

      if (v85 >= v77)
      {
        v103 = &v8[16 * v69 + 32];
        v105 = *v103;
        v104 = *(v103 + 1);
        v80 = __OFSUB__(v104, v105);
        v106 = v104 - v105;
        if (v80)
        {
          goto LABEL_143;
        }

        if (v72 < v106)
        {
          v69 = v66 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    if (v66 == 3)
    {
      v70 = *(v8 + 4);
      v71 = *(v8 + 5);
      v80 = __OFSUB__(v71, v70);
      v72 = v71 - v70;
      v73 = v80;
LABEL_85:
      if (v73)
      {
        goto LABEL_133;
      }

      v86 = &v8[16 * v66];
      v88 = *v86;
      v87 = *(v86 + 1);
      v89 = __OFSUB__(v87, v88);
      v90 = v87 - v88;
      v91 = v89;
      if (v89)
      {
        goto LABEL_136;
      }

      v92 = &v8[16 * v69 + 32];
      v94 = *v92;
      v93 = *(v92 + 1);
      v80 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v80)
      {
        goto LABEL_139;
      }

      if (__OFADD__(v90, v95))
      {
        goto LABEL_140;
      }

      if (v90 + v95 >= v72)
      {
        if (v72 < v95)
        {
          v69 = v66 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_99;
    }

    v96 = &v8[16 * v66];
    v98 = *v96;
    v97 = *(v96 + 1);
    v80 = __OFSUB__(v97, v98);
    v90 = v97 - v98;
    v91 = v80;
LABEL_99:
    if (v91)
    {
      goto LABEL_135;
    }

    v99 = &v8[16 * v69];
    v101 = *(v99 + 4);
    v100 = *(v99 + 5);
    v80 = __OFSUB__(v100, v101);
    v102 = v100 - v101;
    if (v80)
    {
      goto LABEL_138;
    }

    if (v102 < v90)
    {
      goto LABEL_3;
    }

LABEL_106:
    v107 = v69 - 1;
    if (v69 - 1 >= v66)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_151;
    }

    v4 = v8;
    v108 = *&v8[16 * v107 + 32];
    v109 = *&v8[16 * v69 + 40];
    sub_22F3F5B70((*a3 + 8 * v108), (*a3 + 8 * *&v8[16 * v69 + 32]), (*a3 + 8 * v109), v68);
    if (v126)
    {
      goto LABEL_126;
    }

    if (v109 < v108)
    {
      goto LABEL_129;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v4 = sub_22F3F5F98(v8);
    }

    if (v107 >= *(v4 + 16))
    {
      goto LABEL_130;
    }

    v110 = v4 + 16 * v107;
    *(v110 + 32) = v108;
    *(v110 + 40) = v109;
    v132 = v4;
    sub_22F3F5F0C(v69);
    v8 = v132;
    v66 = *(v132 + 16);
    if (v66 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  v8 = sub_22F3F5F98(v8);
LABEL_118:
  v132 = v8;
  v111 = *(v8 + 2);
  if (v111 >= 2)
  {
    while (*a3)
    {
      v112 = *&v8[16 * v111];
      v113 = v8;
      v114 = *&v8[16 * v111 + 24];
      sub_22F3F5B70((*a3 + 8 * v112), (*a3 + 8 * *&v8[16 * v111 + 16]), (*a3 + 8 * v114), v4);
      if (v126)
      {
        goto LABEL_126;
      }

      if (v114 < v112)
      {
        goto LABEL_141;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_22F3F5F98(v8);
      }

      if (v111 - 2 >= *(v113 + 2))
      {
        goto LABEL_142;
      }

      v115 = &v113[16 * v111];
      *v115 = v112;
      *(v115 + 1) = v114;
      v132 = v113;
      sub_22F3F5F0C(v111 - 1);
      v8 = v132;
      v111 = *(v132 + 16);
      if (v111 <= 1)
      {
        goto LABEL_126;
      }
    }

    goto LABEL_152;
  }

LABEL_126:
}

uint64_t sub_22F3F5B70(void **__dst, void **__src, void **a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_22F3F4D34(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= v21 + (v44 & 0xFFFFFFFFFFFFFFF8))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = v21 + 8;
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = &v16[-a4 + 7];
    if (&v16[-a4] >= 0)
    {
      v46 = &v16[-a4];
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = &v16[v28];
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *(v31 - 1);
    v31 -= 8;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_22F3F4D34(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = (v6 + 1);
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= &v51[v40 & 0xFFFFFFFFFFFFFFF8] || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

uint64_t sub_22F3F5F0C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22F3F5F98(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_22F3F5FAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0860, &qword_22F770A80);
    v2 = sub_22F741DE0();
    v20 = v2;
    sub_22F741CA0();
    v3 = sub_22F741D10();
    if (v3)
    {
      v4 = v3;
      sub_22F120634(0, &qword_2810A90E0, off_27887B100);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        type metadata accessor for MomentRelevanceData(0);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_22F12B228(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_22F741800();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_22F741D10();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_22F3F61E0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0888, &qword_22F770AA0);
    v2 = sub_22F741DE0();
    v20 = v2;
    sub_22F741CA0();
    v3 = sub_22F741D10();
    if (v3)
    {
      v4 = v3;
      sub_22F120634(0, &qword_27DAB0590, off_27887B2F8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_22F120634(0, &qword_27DAB14B0, 0x277CD9968);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_22F12F988(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_22F741800();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_22F741D10();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph17PublicEventReaderV5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22F3F6660(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_22F3F66A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_22F3F66EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

__n128 MomentGraphCluster.__allocating_init(momentNode:assetFetchResult:supportedFeatureExtractors:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = *a3;
  v8 = *(a3 + 16);
  *(v6 + 32) = *a3;
  *(v6 + 48) = v8;
  return result;
}

uint64_t MomentGraphCluster.init(momentNode:assetFetchResult:supportedFeatureExtractors:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = a3[1];
  *(v3 + 32) = *a3;
  *(v3 + 48) = v4;
  return v3;
}

uint64_t sub_22F3F67A4()
{
  if (qword_27DAAFD78 != -1)
  {
    swift_once();
  }

  v2 = qword_27DAD0E68;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("MomentGraphClusterFeaturizer", 28, 2u, v3, 0, v2, v11);
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  v10[0] = v0[4];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;

  sub_22F3F6BFC(v10);
  v8 = v7;

  sub_22F1B2BBC(v1 != 0);

  return v8;
}

uint64_t sub_22F3F6900()
{
  v1 = [*(v0 + 16) UUID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    sub_22F176540();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0x8000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_22F3F699C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44B0, &qword_22F78B5B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6564496C61636F6CLL;
  *(inited + 16) = xmmword_22F771340;
  *(inited + 40) = 0xEF7265696669746ELL;
  v2 = [*(v0 + 16) UUID];
  if (v2)
  {
    v3 = v2;
    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    v4 = [swift_getObjCClassFromMetadata() localIdentifierWithUUID_];

    if (v4)
    {
      v5 = sub_22F740E20();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(inited + 48) = v5;
    *(inited + 56) = v7;
    sub_22F15046C(inited);
    swift_setDeallocating();
    sub_22F3F7310(inited + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
    sub_22F3F7378();
    sub_22F740CF0();
  }

  else
  {
    sub_22F176540();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0x8000000000000000;
    swift_willThrow();
    v9 = *(inited + 40);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44B8, &qword_22F78B5B8);
    return swift_arrayDestroy();
  }
}

uint64_t sub_22F3F6BA0()
{
  if (qword_27DAAFD78 != -1)
  {
    swift_once();
  }
}

void sub_22F3F6BFC(void *a1)
{
  v3 = v1;
  v4 = a1[1];
  v25 = a1[2];
  v5 = a1[3];
  v6 = sub_22F7416D0();
  v8 = v7;
  v10 = v9;
  v11 = *(v3 + 16);
  v12 = [v11 collection];
  v13 = sub_22F2F4FAC(v12, v4);
  if (v2)
  {
  }

  else
  {
    v24 = v5;
    v14 = v13;

    v15 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v15;
    sub_22F3F758C(v14, sub_22F3F8D7C, 0, isUniquelyReferenced_nonNull_native, &v26);

    v17 = v26;
    v18 = v8;
    v19 = sub_22F2F4FAC(v11, v25);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v17;
    sub_22F3F758C(v19, sub_22F3F8D7C, 0, v20, &v26);

    v21 = v26;
    v22 = sub_22F2F4FAC(*(v3 + 24), v24);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = v21;
    sub_22F3F758C(v22, sub_22F3F8D7C, 0, v23, &v26);
  }
}

uint64_t MomentGraphCluster.deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return v0;
}

uint64_t MomentGraphCluster.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22F3F6F14()
{
  v1 = [*(*v0 + 16) UUID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    sub_22F176540();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0x8000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_22F3F6FD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F777170;
  v1 = *MEMORY[0x277CD9AA8];
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x277CD9A78];
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x277CD9AD8];
  *(v0 + 64) = sub_22F740E20();
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x277CD9B10];
  *(v0 + 80) = sub_22F740E20();
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x277CD9AD0];
  *(v0 + 96) = sub_22F740E20();
  *(v0 + 104) = v10;
  v11 = *MEMORY[0x277CD9B18];
  *(v0 + 112) = sub_22F740E20();
  *(v0 + 120) = v12;
  return v0;
}

void sub_22F3F70A0(void *a1, void *a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = a3[1];
  v7 = a3[2];
  v8 = a3[3];
  v9 = [a1 fetchAssetCollectionInPhotoLibrary_];
  if (v9)
  {
    v10 = v9;
    v25 = a1;
    v11 = [a2 librarySpecificFetchOptions];
    sub_22F3F6FD8();
    v24 = v5;
    v12 = sub_22F741160();

    [v11 setFetchPropertySets_];

    v13 = objc_opt_self();
    v14 = v11;
    v15 = [v13 fetchAssetsInAssetCollection:v10 options:v14];

    type metadata accessor for MomentGraphCluster();
    v16 = swift_allocObject();
    v16[2] = v25;
    v16[3] = v15;
    v16[4] = v24;
    v16[5] = v6;
    v16[6] = v7;
    v16[7] = v8;
  }

  else
  {

    v17 = [a1 localIdentifier];
    if (!v17)
    {
      sub_22F740E20();
      v17 = sub_22F740DF0();
    }

    sub_22F120634(0, &qword_2810A8EA8, 0x277CD98F8);
    v18 = [swift_getObjCClassFromMetadata() uuidFromLocalIdentifier_];

    if (v18)
    {
      v19 = sub_22F740E20();
      v21 = v20;
    }

    else
    {
      v21 = 0xEE003E6469757520;
      v19 = 0x676E697373696D3CLL;
    }

    v22 = sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    sub_22F176540();
    swift_allocError();
    *v23 = v19;
    v23[1] = v21;
    v23[2] = v22;
    swift_willThrow();
  }
}

uint64_t sub_22F3F7310(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44B8, &qword_22F78B5B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F3F7378()
{
  result = qword_27DAB2CC8;
  if (!qword_27DAB2CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1048, &qword_22F78B5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2CC8);
  }

  return result;
}

unint64_t sub_22F3F73F4(uint64_t a1)
{
  result = sub_22F3F741C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F3F741C()
{
  result = qword_27DAB44C0;
  if (!qword_27DAB44C0)
  {
    type metadata accessor for MomentGraphCluster();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB44C0);
  }

  return result;
}

uint64_t sub_22F3F758C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v49 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v40 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v41 = v6;
  while (v9)
  {
    v44 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v48[0] = *v17;
    v48[1] = v18;
    v48[2] = v19;

    a2(&v45, v48);

    v20 = v45;
    v21 = v46;
    v22 = v47;
    v23 = *v49;
    v25 = sub_22F1229E8(v45, v46);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v44 & 1) == 0)
      {
        sub_22F1348B4();
      }
    }

    else
    {
      v30 = v49;
      sub_22F1262C4(v28, v44 & 1);
      v31 = *v30;
      v32 = sub_22F1229E8(v20, v21);
      if ((v29 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v25 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v49;
    if (v29)
    {

      v12 = v34[7];
      v13 = *(v12 + 8 * v25);
      *(v12 + 8 * v25) = v22;
    }

    else
    {
      v34[(v25 >> 6) + 8] |= 1 << v25;
      v35 = (v34[6] + 16 * v25);
      *v35 = v20;
      v35[1] = v21;
      *(v34[7] + 8 * v25) = v22;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v14;
    v6 = v41;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22F0FF590();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v44 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F3F7890()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18ZKWPeopleThreshold_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F3F78D4(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18ZKWPeopleThreshold_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

PhotosGraph::PersonPayload_optional __swiftcall PersonPayload.init(personNode:)(PGGraphPersonNode *personNode)
{
  v3 = v1;
  v4 = [(PGGraphPersonNode *)personNode localIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22F740E20();
    v8 = v7;

    v9 = [(PGGraphPersonNode *)personNode collection];
    v10 = [(PGGraphPersonNodeCollection *)v9 momentNodes];

    v11 = [(MAElementCollection *)v10 count];
  }

  else
  {

    v6 = 0;
    v8 = 0;
    v11 = 0;
  }

  *v3 = v6;
  v3[1] = v8;
  v3[2] = v11;
  result.value.score = v14;
  result.value.localIdentifier._object = v13;
  result.value.localIdentifier._countAndFlagsBits = v12;
  result.is_nil = v15;
  return result;
}

uint64_t Array<A>.filteredMoreThanMeanScore()(uint64_t result, double a2, double a3, double a4, double a5, double a6, double a7, double a8, __n128 a9)
{
  v9 = 0;
  v10 = *(result + 16);
  a9.n128_f32[0] = v10;
  v11 = result + 32;
  v12 = v10 & 3;
  if ((v10 & 3) == 0)
  {
    v12 = 4;
  }

  v13 = vdup_lane_s32(a9.n128_u64[0], 0);
  v14 = v10 - v12;
  v15 = (result + 96);
  v16 = result + 48;
  v17 = MEMORY[0x277D84F90];
LABEL_4:
  v18 = v9;
  while (1)
  {
    if (v18 == v10)
    {
      return v17;
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      goto LABEL_23;
    }

    if (v10 >= 5)
    {
      v20 = 0.0;
      v21 = v14;
      v22 = v15;
      do
      {
        v23 = v22 - 6;
        v24 = vld3q_f64(v23);
        v25 = vld3q_f64(v22);
        *&v24 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(v24)), v13);
        v26 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(v25)), v13);
        v20 = (((v20 + *&v24) + *(&v24 + 1)) + v26.f32[0]) + v26.f32[1];
        v22 += 12;
        v21 -= 4;
      }

      while (v21);
      v19 = v14;
    }

    else
    {
      v19 = 0;
      v20 = 0.0;
    }

    v27 = (v11 + 24 * v18);
    v28 = v27[2];
    v29 = v10 - v19;
    v30 = (v16 + 24 * v19);
    do
    {
      v31 = *v30;
      v30 += 3;
      v20 = v20 + (v31 / a9.n128_f32[0]);
      --v29;
    }

    while (v29);
    v18 = v9;
    if (v20 <= v28)
    {
      v39 = a9;
      v32 = v27[1];
      v37 = *v27;

      result = swift_isUniquelyReferenced_nonNull_native();
      v38 = v32;
      if ((result & 1) == 0)
      {
        result = sub_22F146F04(0, *(v17 + 16) + 1, 1);
      }

      v34 = *(v17 + 16);
      v33 = *(v17 + 24);
      v35 = v34 + 1;
      a9 = v39;
      if (v34 >= v33 >> 1)
      {
        result = sub_22F146F04((v33 > 1), v34 + 1, 1);
        v35 = v34 + 1;
        a9 = v39;
      }

      *(v17 + 16) = v35;
      v36 = (v17 + 24 * v34);
      v36[4] = v37;
      v36[5] = v38;
      v36[6] = v28;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_22F3F7CF8()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph18ZKWPeopleThreshold_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F3F7DCC()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17ZKWPeopleBirthday_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F3F7E10(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph17ZKWPeopleBirthday_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_22F3F7F7C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph17ZKWPeopleBirthday_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

PhotosGraph::PersonPayload __swiftcall PersonPayload.init(localIdentifier:score:)(Swift::String localIdentifier, Swift::Int score)
{
  *v2 = localIdentifier;
  v2[1]._countAndFlagsBits = score;
  result.localIdentifier = localIdentifier;
  result.score = score;
  return result;
}

float Array<A>.meanScore()(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  *&a3 = v3;
  if (v3 >= 5)
  {
    v6 = *(a1 + 16) & 3;
    if ((v3 & 3) == 0)
    {
      v6 = 4;
    }

    v4 = v3 - v6;
    v7 = vdup_lane_s32(*&a3, 0);
    v8 = (a1 + 96);
    result = 0.0;
    v9 = v4;
    do
    {
      v10 = v8 - 6;
      v11 = vld3q_f64(v10);
      v12 = vld3q_f64(v8);
      *&v11 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(v11)), v7);
      v13 = vdiv_f32(vcvt_f32_f64(vcvtq_f64_s64(v12)), v7);
      result = (((result + *&v11) + *(&v11 + 1)) + v13.f32[0]) + v13.f32[1];
      v8 += 12;
      v9 -= 4;
    }

    while (v9);
  }

  else
  {
    v4 = 0;
    result = 0.0;
  }

  v14 = v3 - v4;
  v15 = (a1 + 24 * v4 + 48);
  do
  {
    v16 = *v15;
    v15 += 3;
    result = result + (v16 / *&a3);
    --v14;
  }

  while (v14);
  return result;
}

uint64_t sub_22F3F82B0()
{
  result = sub_22F740B90();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

__n128 CachedMomentGraphCluster.__allocating_init(momentNode:cachedFeaturesByName:featureExtractors:graph:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  result = *a3;
  v9 = *(a3 + 16);
  *(v7 + 32) = *a3;
  *(v7 + 48) = v9;
  return result;
}

uint64_t CachedMomentGraphCluster.init(momentNode:cachedFeaturesByName:featureExtractors:graph:)(uint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  v8 = a3[1];
  *(v4 + 32) = *a3;
  *(v4 + 48) = v8;
  return v4;
}

id CachedMomentGraphCluster.featurize(progressReporter:)()
{
  v2 = v1;
  v3 = v0;
  if (qword_27DAAFD78 != -1)
  {
    swift_once();
  }

  v4 = qword_27DAD0E68;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("CachedMomentGraphClusterFeaturizer", 34, 2u, v5, 0, v4, v31);
  v6 = sub_22F7416B0();
  v30 = v7;
  v8 = v3[4];
  v9 = v3[5];
  v11 = v3[6];
  v10 = v3[7];
  v12 = v3[2];

  v13 = [v12 collection];
  v14 = sub_22F2F4FAC(v13, v9);
  if (v2)
  {

    sub_22F1B2BBC(1);
  }

  else
  {
    v29 = v6;
    v15 = v14;

    v16 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v16;
    sub_22F3F758C(v15, sub_22F3F8D7C, 0, isUniquelyReferenced_nonNull_native, &v32);

    v18 = v32;
    v19 = v3[4];
    v20 = v3[5];
    v21 = v3[6];
    v22 = v3[7];

    v23 = sub_22F2F4FAC(v12, v21);

    v24 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    sub_22F3F758C(v23, sub_22F3F8D7C, 0, v24, &v32);

    v25 = v32;
    v26 = v3[3];

    v27 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v25;
    sub_22F3F758C(v26, sub_22F3F8D7C, 0, v27, &v32);

    v13 = v32;
    sub_22F7416A0();

    sub_22F1B2BBC(0);
  }

  return v13;
}

uint64_t CachedMomentGraphCluster.logger()()
{
  if (qword_27DAAFD78 != -1)
  {
    swift_once();
  }
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CachedMomentGraphCluster.uuid()()
{
  v1 = [*(v0 + 16) UUID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22F740E20();
    v5 = v4;

    v6 = v3;
    v7 = v5;
  }

  else
  {
    sub_22F176540();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0x8000000000000000;
    v6 = swift_willThrow();
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t CachedMomentGraphCluster.encode(to:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44B0, &qword_22F78B5B0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6564496C61636F6CLL;
  *(inited + 16) = xmmword_22F771340;
  *(inited + 40) = 0xEF7265696669746ELL;
  v2 = [*(v0 + 16) UUID];
  if (v2)
  {
    v3 = v2;
    sub_22F26FBF8();
    v4 = [swift_getObjCClassFromMetadata() localIdentifierWithUUID_];

    if (v4)
    {
      v5 = sub_22F740E20();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    *(inited + 48) = v5;
    *(inited + 56) = v7;
    sub_22F15046C(inited);
    swift_setDeallocating();
    sub_22F3F7310(inited + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
    sub_22F3F7378();
    sub_22F740CF0();
  }

  else
  {
    sub_22F176540();
    swift_allocError();
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0x8000000000000000;
    swift_willThrow();
    v9 = *(inited + 40);

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB44B8, &qword_22F78B5B8);
    return swift_arrayDestroy();
  }
}

uint64_t CachedMomentGraphCluster.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  return v0;
}

uint64_t CachedMomentGraphCluster.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t sub_22F3F8D7C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_22F3F8DC4(uint64_t a1)
{
  result = sub_22F3F8DEC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F3F8DEC()
{
  result = qword_27DAB44E8;
  if (!qword_27DAB44E8)
  {
    type metadata accessor for CachedMomentGraphCluster();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB44E8);
  }

  return result;
}

void sub_22F3FE01C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Unwind_Resume(a1);
}

void sub_22F403E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F4055B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F40A420(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 240), 8);
  _Block_object_dispose((v1 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_22F40E8AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F40FDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F411630(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_22F412374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F412A4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F412FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1215(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1408(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F41D5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_22F41DD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F41E540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22F420848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F420DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

__CFString *PGNSStringForMobilityType(unint64_t a1)
{
  if (a1 > 4)
  {
    return 0;
  }

  else
  {
    return off_27887F2D0[a1];
  }
}

void sub_22F423AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_22F42716C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_22F42A590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_22F42ABFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{
  _Block_object_dispose(&a38, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose((v48 - 216), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3417(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F42E014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3805(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F42E428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_22F42EC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F42F850(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_22F42FCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F431058(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x350], 8);
  _Block_object_dispose(&STACK[0x2E8], 8);
  _Block_object_dispose(&STACK[0x308], 8);
  _Unwind_Resume(a1);
}

void sub_22F43454C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F43508C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F4356EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 64), 8);
  _Unwind_Resume(a1);
}

__CFString *PGStringFromSuggestionNotificationUserType(unsigned int a1)
{
  if (a1 > 4)
  {
    return @"Unknown";
  }

  else
  {
    return off_27887F698[a1];
  }
}

void sub_22F43A5CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F43C9A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4845(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F43DBC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_22F43E884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a69, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

void sub_22F441D20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5540(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F442BB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F44396C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

void sub_22F4444F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22F44CA54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6276(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22F450D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SearchLog()
{
  if (SearchLog_onceToken != -1)
  {
    dispatch_once(&SearchLog_onceToken, &__block_literal_global_6827);
  }

  v1 = SearchLog_log;

  return v1;
}

void __SearchLog_block_invoke()
{
  v0 = os_log_create("com.apple.PhotosGraph.ZeroKeyword", "SearchLogPerformance");
  v1 = SearchLog_log;
  SearchLog_log = v0;
}

id personUUIDsFromPersonLocalIdentifiers(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x277CD9938] uuidFromLocalIdentifier:{*(*(&v11 + 1) + 8 * i), v11}];
        if (v8)
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t searchIndexCategoryForLocationLabel(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Area"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Street"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"District"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"City"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"County"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"State"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"Country"])
  {
    v2 = 12;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _locationNameByCategoryForLocation(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = v1;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    do
    {
      v6 = [v5 label];
      v7 = searchIndexCategoryForLocationLabel(v6);

      if (v7)
      {
        v8 = [v5 name];
        if (v7 == 12)
        {
          v9 = [MEMORY[0x277CBEAF8] currentLocale];
          v10 = [v9 localizedStringForCountryCode:v8];
          v11 = v10;
          if (v10)
          {
            v12 = v10;
          }

          else
          {
            v12 = v8;
          }

          v13 = v12;

          v8 = v13;
        }

        v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v7];
        [v2 setObject:v8 forKeyedSubscript:v14];

        v15 = [v5 locationNodeCollection];
        v16 = [v15 parentLocationNodes];
        v17 = [v16 anyNode];

        v5 = v16;
      }

      else
      {
        v8 = [v5 locationNodeCollection];
        v15 = [v8 parentLocationNodes];
        v17 = [v15 anyNode];
      }

      v5 = v17;
    }

    while (v17);
  }

  return v2;
}

id locationNamesByCategoryForAddress(void *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [v1 collection];
  v4 = [v3 areaNodes];
  v5 = [v4 temporarySet];

  v6 = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v19 + 1) + 8 * i) name];
        if ([v12 length])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  [v2 setObject:v6 forKeyedSubscript:&unk_2844824C0];
  v13 = [v1 collection];
  v14 = [v13 parentLocationNodes];
  v15 = [v14 anyNode];

  v16 = _locationNameByCategoryForLocation(v15);
  [v2 addEntriesFromDictionary:v16];

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

id filteredKeywords(void *a1, unint64_t a2, unint64_t a3, double a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = v7;
  v56 = a2;
  if (a2 > a3)
  {
    v9 = +[PGLogging sharedLogging];
    v10 = [v9 loggingConnection];

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v71 = v56;
      v72 = 2048;
      v73 = a3;
      _os_log_error_impl(&dword_22F0FC000, v10, OS_LOG_TYPE_ERROR, "Error: min element count %ld is greater than max element count %ld", buf, 0x16u);
    }

    v11 = MEMORY[0x277CBEBF8];
LABEL_31:

    goto LABEL_32;
  }

  v12 = [v7 count];
  v11 = MEMORY[0x277CBEBF8];
  if (a3 && v12)
  {
    v51 = a3;
    v13 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"score" ascending:0];
    v69 = v13;
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v69 count:1];

    v53 = v14;
    v54 = v8;
    v15 = [v8 sortedArrayUsingDescriptors:v14];
    v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v17 = v15;
    v18 = [v17 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v62;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v62 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = MEMORY[0x277CCABB0];
          [*(*(&v61 + 1) + 8 * i) score];
          v23 = [v22 numberWithDouble:?];
          [v16 addObject:v23];
        }

        v19 = [v17 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v19);
    }

    v24 = [MEMORY[0x277CCA9C0] expressionForConstantValue:v16];
    v25 = MEMORY[0x277CCA9C0];
    v67 = v24;
    v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
    v27 = [v25 expressionForFunction:@"average:" arguments:v26];
    v28 = [v27 expressionValueWithObject:0 context:0];
    [v28 doubleValue];
    v30 = v29;

    v31 = MEMORY[0x277CCA9C0];
    v52 = v24;
    v66 = v24;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v33 = [v31 expressionForFunction:@"stddev:" arguments:v32];
    v34 = [v33 expressionValueWithObject:0 context:0];
    [v34 doubleValue];
    v36 = v35;

    v11 = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v37 = v17;
    v38 = [v37 countByEnumeratingWithState:&v57 objects:v65 count:16];
    if (v38)
    {
      v39 = v38;
      v55 = 0;
      v40 = *v58;
LABEL_16:
      v41 = 0;
      v42 = v55;
      v55 += v39;
      if (v51 >= v42)
      {
        v43 = v51 - v42;
      }

      else
      {
        v43 = 0;
      }

      while (1)
      {
        if (*v58 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v44 = *(*(&v57 + 1) + 8 * v41);
        [v44 score];
        if (v43 == v41)
        {
          break;
        }

        if (fmin(erfc((v30 - v45) / v36 * 0.707106781) * 0.5, 1.0) < a4 && v42 >= v56)
        {
          break;
        }

        v47 = [v44 zeroKeyword];
        if (v47)
        {
          v48 = [v44 zeroKeyword];
          [v11 addObject:v48];
        }

        ++v42;

        if (v39 == ++v41)
        {
          v39 = [v37 countByEnumeratingWithState:&v57 objects:v65 count:16];
          if (v39)
          {
            goto LABEL_16;
          }

          break;
        }
      }
    }

    v10 = v53;
    v8 = v54;
    goto LABEL_31;
  }

LABEL_32:

  v49 = *MEMORY[0x277D85DE8];

  return v11;
}

id holidayNodeZeroKeyword(void *a1)
{
  v1 = a1;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6844;
  v21 = __Block_byref_object_dispose__6845;
  v22 = 0;
  v2 = +[PGGraphMomentNode contentScoreSortDescriptors];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __holidayNodeZeroKeyword_block_invoke;
  v14 = &unk_278889050;
  v16 = &v17;
  v3 = v2;
  v15 = v3;
  [v1 enumerateCelebratingMomentNodesUsingBlock:&v11];
  v4 = MEMORY[0x277D276C8];
  v5 = [v1 name];
  v6 = [v4 localizedNameForName:v5];

  v7 = v18[5];
  if (v7)
  {
    v8 = [v7 localIdentifier];
    v9 = zeroKeywordWithAttributes(4, 8, v6, 0, 0, v8);
  }

  else
  {
    v9 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

void sub_22F453898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6844(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __holidayNodeZeroKeyword_block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  v7 = v4;
  if (v6)
  {
    if (compareWithSortDescriptors(v4, v6, *(a1 + 32)) != -1)
    {
      goto LABEL_5;
    }

    v5 = *(*(a1 + 40) + 8);
  }

  objc_storeStrong((v5 + 40), a2);
LABEL_5:
}

id zeroKeywordWithAttributes(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v28 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v13)
  {
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v11;
    }

    if (!v16)
    {
      goto LABEL_10;
    }

    v17 = MEMORY[0x277D3ADA8];
    v18 = v16;
    v15 = [[v17 alloc] initWithText:v18 userCategory:a2 matchType:2];

    if (!v15)
    {
      goto LABEL_10;
    }

LABEL_9:
    v19 = _zeroKeywordWithToken(a1, v11, v14, v15);
    goto LABEL_13;
  }

  v15 = [objc_alloc(MEMORY[0x277D3ADA8]) initWithIdentifier:v13 userCategory:a2];
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = 138412802;
    v23 = v13;
    v24 = 2112;
    v25 = v11;
    v26 = 2112;
    v27 = v12;
    _os_log_error_impl(&dword_22F0FC000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Nil query token with searchIdentifier %@, title %@, searchText %@", &v22, 0x20u);
  }

  v15 = 0;
  v19 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id _zeroKeywordWithToken(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = MEMORY[0x277CBEB38];
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = [v7 dictionaryWithCapacity:4];
  v12 = [MEMORY[0x277CCABB0] numberWithInteger:a1];
  [v11 setObject:v12 forKeyedSubscript:*MEMORY[0x277D3B1E0]];

  [v11 setObject:v10 forKeyedSubscript:*MEMORY[0x277D3B1D8]];
  [v11 setObject:v9 forKeyedSubscript:*MEMORY[0x277D3B180]];

  [v11 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3B1D0]];

  return v11;
}

uint64_t compareWithSortDescriptors(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = a3;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v16 + 1) + 8 * v11) compareObject:v5 toObject:{v6, v16}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

id _bestAssetIdentifiersForSeasonNode(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v130[1] = *MEMORY[0x277D85DE8];
  v84 = a1;
  v73 = a2;
  v80 = a3;
  v81 = a4;
  v74 = a5;
  v9 = SearchLog();
  v10 = os_signpost_id_generate(v9);
  v11 = v9;
  v12 = v11;
  spid = v10;
  v71 = v10 - 1;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "Season - Best Asset Identifier", "", buf, 2u);
  }

  v75 = v12;

  v79 = [v84 name];
  v78 = [v84 graph];
  v13 = [v80 curationCriteriaFactory];
  v82 = [v13 curationCriteriaWithSeasonName:v79 client:2];

  v77 = [v82 scenesTrait];
  v76 = [v77 sceneNames];
  v92 = [PGGraphSceneNodeCollection sceneNodesForSceneNames:v76 inGraph:v78];
  v87 = [v92 count] != 0;
  v14 = [v84 collection];
  v83 = [v14 dateNodes];

  v15 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = ___bestAssetIdentifiersForSeasonNode_block_invoke;
  v121[3] = &unk_2788875A8;
  v16 = v15;
  v122 = v16;
  [v83 enumerateNodesUsingBlock:v121];
  v17 = MEMORY[0x277CCAC98];
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = ___bestAssetIdentifiersForSeasonNode_block_invoke_2;
  v119[3] = &unk_27887F9E0;
  v72 = v16;
  v120 = v72;
  v18 = [v17 sortDescriptorWithKey:@"self" ascending:0 comparator:v119];
  v130[0] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v130 count:1];
  v20 = [v83 sortedArrayUsingDescriptors:v19];

  *buf = 0;
  v116 = buf;
  v117 = 0x2020000000;
  v118 = 0;
  v90 = [MEMORY[0x277CBEB18] array];
  v91 = [MEMORY[0x277CBEB18] array];
  v89 = [MEMORY[0x277CBEB18] array];
  v111 = 0;
  v112 = &v111;
  v113 = 0x2020000000;
  v114 = 0;
  v107 = 0u;
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  obj = v20;
  v21 = [obj countByEnumeratingWithState:&v107 objects:v129 count:16];
  if (v21)
  {
    v22 = *v108;
LABEL_6:
    v23 = 0;
    while (1)
    {
      if (*v108 != v22)
      {
        objc_enumerationMutation(obj);
      }

      v24 = [*(*(&v107 + 1) + 8 * v23) collection];
      v25 = [v24 momentNodes];
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = ___bestAssetIdentifiersForSeasonNode_block_invoke_3;
      v98[3] = &unk_27887FA08;
      v106 = v87;
      v99 = v92;
      v103 = buf;
      v100 = v90;
      v26 = v91;
      v105 = xmmword_22F78BF70;
      v101 = v26;
      v104 = &v111;
      v102 = v89;
      [v25 enumerateNodesUsingBlock:v98];

      LOBYTE(v24) = *(v112 + 24);
      if (v24)
      {
        break;
      }

      if (v21 == ++v23)
      {
        v21 = [obj countByEnumeratingWithState:&v107 objects:v129 count:16];
        if (v21)
        {
          goto LABEL_6;
        }

        break;
      }
    }
  }

  if (![v90 count] && !objc_msgSend(v89, "count"))
  {
    v39 = +[PGLogging sharedLogging];
    v28 = [v39 loggingConnection];

    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *v127 = 138412290;
      v128 = v79;
      _os_log_error_impl(&dword_22F0FC000, v28, OS_LOG_TYPE_ERROR, "Did not find moment nodes for season %@", v127, 0xCu);
    }

    v40 = MEMORY[0x277CBEBF8];
    goto LABEL_49;
  }

  v27 = [v84 name];
  v28 = [v81 keyAssetLocalIdentifierForNodeIdentifier:v27 withAssociatedMomentUUIDs:v91];

  if (!v28)
  {
    v29 = objc_alloc_init(PGKeyAssetCurationOptions);
    [(PGKeyAssetCurationOptions *)v29 setUseContextualCurationOnly:1];
    if (v82)
    {
      v30 = [v73 librarySpecificFetchOptions];
      [v30 setIncludeAssetSourceTypes:5];
      v31 = [MEMORY[0x277CCAC30] predicateWithFormat:@"moment.uuid in %@", v91];
      if ([v92 count])
      {
        v32 = MEMORY[0x277CCAC30];
        v33 = [v92 sceneIdentifiers];
        v34 = [v32 predicateWithFormat:@"SUBQUERY(additionalAttributes.sceneClassifications, $scene, ANY $scene.sceneIdentifier IN %@).@count != 0", v33];

        v35 = MEMORY[0x277CCA920];
        v126[0] = v31;
        v126[1] = v34;
        v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v126 count:2];
        v37 = [v35 andPredicateWithSubpredicates:v36];

        v38 = v37;
      }

      else
      {
        v38 = v31;
      }

      v69 = v38;
      [v30 setInternalPredicate:?];
      v43 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
      v125[0] = v43;
      v44 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"curationScore" ascending:0];
      v125[1] = v44;
      v45 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
      v125[2] = v45;
      v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v125 count:3];
      [v30 setSortDescriptors:v46];

      [v30 setFetchLimit:25];
      v47 = +[PGCurationManager assetPropertySetsForCuration];
      [v30 addFetchPropertySets:v47];

      v86 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v30];
      v88 = [MEMORY[0x277CD97B8] transientAssetCollectionWithAssetFetchResult:? title:?];
      v48 = [v91 firstObject];
      v28 = [v80 curatedKeyAssetIdentifierForCollectionUUID:v48 curatedAssetCollection:v88 options:v29 criteria:v82 curationContext:v74];

      if (v28)
      {
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v49 = v86;
        v50 = [v49 countByEnumeratingWithState:&v94 objects:v124 count:16];
        if (v50)
        {
          v51 = *v95;
LABEL_28:
          v52 = 0;
          while (1)
          {
            if (*v95 != v51)
            {
              objc_enumerationMutation(v49);
            }

            v53 = *(*(&v94 + 1) + 8 * v52);
            v54 = [v53 localIdentifier];
            v55 = [v54 isEqualToString:v28];

            if (v55)
            {
              break;
            }

            if (v50 == ++v52)
            {
              v50 = [v49 countByEnumeratingWithState:&v94 objects:v124 count:16];
              if (v50)
              {
                goto LABEL_28;
              }

              goto LABEL_34;
            }
          }

          v56 = v53;

          if (!v56)
          {
            goto LABEL_38;
          }

          v42 = [v73 librarySpecificFetchOptions];

          [v42 setFetchLimit:1];
          v57 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v56 withType:3 options:v42];
          v58 = [v84 name];
          v59 = [v57 firstObject];
          v60 = [v59 uuid];
          [v81 setKeyAssetLocalIdentifier:v28 forNodeIdentifier:v58 withAssociatedMomentUUID:v60];
        }

        else
        {
LABEL_34:
          v56 = v49;
          v42 = v30;
        }
      }

      else
      {
LABEL_38:
        v42 = v30;
      }
    }

    else
    {
      v41 = +[PGLogging sharedLogging];
      v42 = [v41 loggingConnection];

      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *v127 = 138412290;
        v128 = v79;
        _os_log_error_impl(&dword_22F0FC000, v42, OS_LOG_TYPE_ERROR, "Did not find curation criteria for season %@", v127, 0xCu);
      }

      v28 = 0;
    }
  }

  v61 = v75;
  v62 = v61;
  if (v71 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v61))
  {
    *v127 = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v62, OS_SIGNPOST_INTERVAL_END, spid, "Season - Best Asset Identifier", "", v127, 2u);
  }

  if (v28)
  {
    goto LABEL_48;
  }

  v63 = +[PGLogging sharedLogging];
  v64 = [v63 loggingConnection];

  if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
  {
    *v127 = 138412290;
    v128 = v79;
    _os_log_impl(&dword_22F0FC000, v64, OS_LOG_TYPE_INFO, "Did not find contextual asset for season %@", v127, 0xCu);
  }

  v93 = 0;
  v28 = bestAssetIdentifierForMomentNodes(v89, &v93, v74);
  v65 = v93;
  v66 = [v84 name];
  [v81 setKeyAssetLocalIdentifier:v28 forNodeIdentifier:v66 withAssociatedMomentUUID:v65];

  if (v28)
  {
LABEL_48:
    v123 = v28;
    v40 = [MEMORY[0x277CBEA60] arrayWithObjects:&v123 count:1];
LABEL_49:

    goto LABEL_50;
  }

  v40 = MEMORY[0x277CBEBF8];
LABEL_50:
  _Block_object_dispose(&v111, 8);

  _Block_object_dispose(buf, 8);
  v67 = *MEMORY[0x277D85DE8];

  return v40;
}

void sub_22F45493C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

void ___bestAssetIdentifiersForSeasonNode_block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = MEMORY[0x277CCABB0];
  v4 = a2;
  v5 = [v3 numberWithInteger:{objc_msgSend(v4, "year")}];
  [v2 setObject:v5 forKey:v4];
}

uint64_t ___bestAssetIdentifiersForSeasonNode_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:a2];
  v8 = [*(a1 + 32) objectForKey:v6];

  v9 = [v7 compare:v8];
  return v9;
}

void ___bestAssetIdentifiersForSeasonNode_block_invoke_3(uint64_t a1, void *a2, _BYTE *a3)
{
  v15 = a2;
  v5 = [v15 isSmartInteresting];
  v6 = v15;
  if ((v5 & 1) != 0 || (v7 = [v15 isInteresting], v6 = v15, v7))
  {
    v8 = [v6 collection];
    v9 = [v8 sceneNodes];

    if (*(a1 + 96) == 1 && [v9 intersectsCollection:*(a1 + 32)])
    {
      v10 = [v15 numberOfAssets];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 24) + v10;
      if (v12 < *(a1 + 80))
      {
        *(v11 + 24) = v12;
        [*(a1 + 40) addObject:v15];
        v13 = *(a1 + 48);
        v14 = [v15 uuid];
        [v13 addObject:v14];

        if (*(*(*(a1 + 64) + 8) + 24) >= *(a1 + 88))
        {
          *(*(*(a1 + 72) + 8) + 24) = 1;
          *a3 = 1;
        }
      }
    }

    else
    {
      [*(a1 + 56) addObject:v15];
    }

    v6 = v15;
  }
}

char *bestAssetIdentifierForMomentNodes(void *a1, void *a2, void *a3)
{
  v70 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = a3;
  v7 = SearchLog();
  v8 = os_signpost_id_generate(v7);
  v9 = v7;
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_22F0FC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "MomentNodes - BestAssetIdentifiers", "", buf, 2u);
  }

  if ([v5 count])
  {
    v51 = v8 - 1;
    v52 = a2;
    spid = v8;
    v11 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v5, "count")}];
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v12 = v5;
    v13 = [v12 countByEnumeratingWithState:&v62 objects:v69 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v63;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v63 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v62 + 1) + 8 * i) uuid];
          [v11 addObject:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v62 objects:v69 count:16];
      }

      while (v14);
    }

    v18 = [v6 photoLibrary];
    v19 = [MEMORY[0x277CCAC30] predicateWithFormat:@"moment.uuid IN (%@)", v11];
    v20 = [v18 librarySpecificFetchOptions];
    v56 = v19;
    [v20 setInternalPredicate:v19];
    v21 = +[PGCurationManager assetPropertySetsForCuration];
    [v20 setFetchPropertySets:v21];

    [v20 setCacheSizeForFetch:10];
    [v20 setChunkSizeForFetch:10];
    [v20 setIncludeAssetSourceTypes:5];
    v22 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"curationScore" ascending:0];
    v68[0] = v22;
    v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"overallAestheticScore" ascending:0];
    v68[1] = v23;
    v24 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"uuid" ascending:1];
    v68[2] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
    [v20 setSortDescriptors:v25];

    v26 = [MEMORY[0x277CD97A8] fetchAssetsWithOptions:v20];
    v27 = [v26 count];
    if (v27)
    {
      v53 = v18;
      v54 = v6;
      v49 = v10;
      v50 = v5;
      v28 = 0;
      v29 = 0;
      v30 = 0x277CCA000uLL;
      v55 = v26;
      do
      {
        context = objc_autoreleasePoolPush();
        if (&v27[-v29] >= 0xA)
        {
          v31 = 10;
        }

        else
        {
          v31 = &v27[-v29];
        }

        v32 = [*(v30 + 2680) indexSetWithIndexesInRange:{v29, v31}];
        v33 = [v26 objectsAtIndexes:v32];

        [MEMORY[0x277CD97A8] prefetchOnAssets:v33 options:31 curationContext:v6];
        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v34 = v33;
        v35 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v59;
          while (2)
          {
            for (j = 0; j != v36; ++j)
            {
              if (*v59 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v39 = *(*(&v58 + 1) + 8 * j);
              if (![v39 clsAvoidIfPossibleAsKeyItemForMemories:1 allowGuestAsset:1])
              {
                v40 = v39;

                objc_autoreleasePoolPop(context);
                v28 = v40;
                v6 = v54;
                v26 = v55;
                goto LABEL_30;
              }

              if (!v28)
              {
                v28 = v39;
              }
            }

            v36 = [v34 countByEnumeratingWithState:&v58 objects:v67 count:16];
            if (v36)
            {
              continue;
            }

            break;
          }
        }

        objc_autoreleasePoolPop(context);
        v29 += 10;
        v6 = v54;
        v26 = v55;
        v30 = 0x277CCA000;
      }

      while (v29 < v27);
LABEL_30:
      if (v28)
      {
        v27 = [v28 localIdentifier];
        v10 = v49;
        if (v52)
        {
          v41 = [v53 librarySpecificFetchOptions];
          [v41 setFetchLimit:1];
          v42 = [MEMORY[0x277CD97B8] fetchAssetCollectionsContainingAsset:v28 withType:3 options:v41];
          v43 = [v42 firstObject];
          *v52 = [v43 uuid];

          v26 = v55;
        }

        v44 = v49;
        v45 = v44;
        v5 = v50;
        if (v51 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_22F0FC000, v45, OS_SIGNPOST_INTERVAL_END, spid, "MomentNodes - BestAssetIdentifiers", "", buf, 2u);
        }
      }

      else
      {
        v27 = 0;
        v10 = v49;
        v5 = v50;
      }

      v18 = v53;
    }
  }

  else
  {
    v27 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v27;
}

id seasonNodeZeroKeyword(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v22[0] = 0;
  v22[1] = v22;
  v22[2] = 0x2020000000;
  v22[3] = 0;
  v14 = [v9 collection];
  v15 = [v14 dateNodes];
  v16 = [v15 momentNodes];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __seasonNodeZeroKeyword_block_invoke;
  v21[3] = &unk_27887FA30;
  v21[4] = v22;
  v21[5] = v23;
  v21[6] = &v24;
  [v16 enumerateNodesUsingBlock:v21];

  if (*(v25 + 24))
  {
    v17 = _bestAssetIdentifiersForSeasonNode(v9, v10, v11, v12, v13);
    v18 = [v9 localizedName];
    if ([v17 count])
    {
      v19 = zeroKeywordWithAttributes(8, 8, v18, v18, 0, v17);
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  _Block_object_dispose(v22, 8);
  _Block_object_dispose(v23, 8);
  _Block_object_dispose(&v24, 8);

  return v19;
}

void sub_22F4553D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void __seasonNodeZeroKeyword_block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 isInteresting])
  {
    ++*(*(a1[4] + 8) + 24);
  }

  v6 = [v5 numberOfAssets];

  *(*(a1[5] + 8) + 24) += v6;
  if (*(*(a1[4] + 8) + 24))
  {
    if (*(*(a1[5] + 8) + 24) >= 8uLL)
    {
      *(*(a1[6] + 8) + 24) = 1;
      *a3 = 1;
    }
  }
}