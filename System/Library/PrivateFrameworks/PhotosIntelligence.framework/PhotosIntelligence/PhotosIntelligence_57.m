uint64_t sub_1C7396D14()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;

  if (v0)
  {
    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    OUTLINED_FUNCTION_41();

    return MEMORY[0x1EEE6DFA0](v6, v7, v8);
  }
}

uint64_t sub_1C7396E2C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = sub_1C754FEEC();
  v2 = sub_1C755118C();
  if (OUTLINED_FUNCTION_21_0(v2))
  {
    v3 = *(v0 + 16);
    v4 = swift_slowAlloc();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_18_5(&dword_1C6F5C000, v5, v6, "Completed task: %ld");
    OUTLINED_FUNCTION_109();
  }

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C7396EE4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1C6F739D4;

  return sub_1C7396B68(v2, v3, v4);
}

uint64_t type metadata accessor for AsyncStreamWorker()
{
  result = qword_1EDD0ACE8;
  if (!qword_1EDD0ACE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C7397004()
{
  sub_1C739722C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of AsyncStreamWorker.enqueue(block:)()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v8 = (*(*v0 + 168) + **(*v0 + 168));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1C6F738F4;

  return v8(v5, v3);
}

void sub_1C739722C()
{
  if (!qword_1EDD06A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21B048);
    v0 = sub_1C7550DAC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDD06A30);
    }
  }
}

uint64_t sub_1C739729C()
{
  OUTLINED_FUNCTION_123();
  v2 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B050) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v0 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_2(v6);
  *v7 = v8;
  v7[1] = sub_1C6F738F4;

  return sub_1C73964F0(v2, v0 + v4, v5);
}

void static FreeformStoryChapterGenerator.storyAssets(from:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v40 = a2;
  v2 = MEMORY[0x1E69E7CD0];
  v56 = MEMORY[0x1E69E7CD0];
  v44 = *(a1 + 16);
  if (v44)
  {
    v3 = 0;
    v43 = a1 + 32;
    v4 = 0x1FB1F5000;
    do
    {
      v5 = (v43 + 104 * v3);
      v6 = v5[1];
      v7 = v4;
      v8 = v5[3];
      v9 = v5[5];
      v11 = v5[7];
      v10 = v5[8];
      v13 = v5[9];
      v12 = v5[10];
      v14 = v5[11];
      v48 = v5[12];
      sub_1C75504FC();
      v53 = v6;
      v15 = v8;
      sub_1C75504FC();
      sub_1C75504FC();
      v54 = v9;
      sub_1C75504FC();
      v52 = v11;
      sub_1C75504FC();
      v16 = v10;
      sub_1C75504FC();
      v51 = v12;
      sub_1C75504FC();
      v50 = v14;
      sub_1C75504FC();
      v49 = v16;
      v17 = [v16 v7 + 2473];
      if (v17)
      {
        v18 = v17;
        sub_1C6F65BE8(0, &qword_1EDD0FA70);
        v19 = sub_1C7550B5C();
      }

      else
      {
        v19 = MEMORY[0x1E69E7CC0];
      }

      OUTLINED_FUNCTION_11_65();
      sub_1C7397E84(v19, v20, sub_1C70F1000);
      v21 = *(v54 + 16);
      v4 = &selRef_clsSceneClassifications;
      if (v21)
      {
        v45 = v13;
        v46 = v15;
        v47 = v3;
        v22 = sub_1C75504FC() + 64;
        do
        {
          v23 = *(v22 - 16);
          sub_1C75504FC();
          v24 = v23;
          sub_1C75504FC();
          sub_1C75504FC();
          v25 = [v24 fetchedObjects];
          if (v25)
          {
            v26 = v25;
            sub_1C6F65BE8(0, &qword_1EDD0FA70);
            v27 = sub_1C7550B5C();
          }

          else
          {
            v27 = MEMORY[0x1E69E7CC0];
          }

          OUTLINED_FUNCTION_11_65();
          sub_1C7397E84(v27, v28, sub_1C70F1000);

          v22 += 40;
          --v21;
        }

        while (v21);

        swift_bridgeObjectRelease_n();
        v3 = v47;
      }

      else
      {
      }

      ++v3;
    }

    while (v3 != v44);
    v2 = v56;
  }

  v29 = sub_1C739CF80(v2, sub_1C70D4548, sub_1C70D0788);

  sub_1C755068C();
  sub_1C71BA830(v29, v37, v30, v31, v32, v33, v34, v35, v36, v40, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);

  v38 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v39 = v41;
  sub_1C71C8A5C();
}

void sub_1C7397760()
{
  OUTLINED_FUNCTION_300();
  v7 = type metadata accessor for Hastings.Feature();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_36();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_45_33();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_33();
  v11 = v3 + 56;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v6)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      OUTLINED_FUNCTION_49_27(v13);
      sub_1C739D9A0(v2, v0);
      sub_1C70F0B34();
      sub_1C739D944(v1);
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return;
    }

    ++v4;
    if (*(v11 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1C73978C4(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = *(result + 16);
  v4 = (result + 40);
  while (v3 != v2)
  {
    if (v2 >= *(v1 + 16))
    {
      __break(1u);
      return result;
    }

    ++v2;
    v6 = *(v4 - 1);
    v5 = *v4;
    sub_1C75504FC();
    sub_1C70F082C(&v7, v6, v5);

    v4 += 2;
  }
}

void sub_1C739796C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_11();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    while (1)
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
      v12 = *v11;
      v13 = v11[1];
      sub_1C75504FC();
      sub_1C70F082C(&v14, v12, v13);

      if (!v6)
      {
        goto LABEL_3;
      }
    }
  }

  while (1)
  {
LABEL_3:
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v9 >= v8)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }
}

void sub_1C7397A5C(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  OUTLINED_FUNCTION_11();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  if ((v5 & v4) != 0)
  {
    do
    {
      v9 = v2;
LABEL_7:
      v10 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v11 = (*(a1 + 48) + 48 * (v10 | (v9 << 6)));
      v12 = v11[2];
      v15 = v11[1];
      v16 = v12;
      v14 = *v11;
      v17 = v14;
      v18 = v15;
      v19 = v12;
      sub_1C6FCA460(&v17, &v13);
      sub_1C6FCA4BC(&v18, &v13);
      sub_1C6FCA4BC(&v18 + 8, &v13);
      sub_1C6FCA4BC(&v19, &v13);
      sub_1C6FCA4BC(&v19 + 8, &v13);
      sub_1C70F21F4();
    }

    while (v6);
  }

  while (1)
  {
    v9 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v9 >= v8)
    {

      return;
    }

    v6 = *(v3 + 8 * v9);
    ++v2;
    if (v6)
    {
      v2 = v9;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1C7397BDC()
{
  OUTLINED_FUNCTION_300();
  v7 = type metadata accessor for Hastings.Feature();
  v8 = OUTLINED_FUNCTION_18(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_29_36();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_45_33();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_38_33();
  v11 = v3 + 64;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v6)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      OUTLINED_FUNCTION_49_27(v13);
      sub_1C739D9A0(v2, v0);
      sub_1C70F0B34();
      sub_1C739D944(v1);
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return;
    }

    ++v4;
    if (*(v11 + 8 * v12))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1C7397D14()
{
  OUTLINED_FUNCTION_300();
  v1 = type metadata accessor for Hastings.Feature() - 8;
  MEMORY[0x1EEE9AC00](v1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - v4;
  v6 = *(v0 + 16);
  if (v6)
  {
    v7 = v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v8 = *(v3 + 72);
    do
    {
      v9 = OUTLINED_FUNCTION_154();
      sub_1C72373C4(v9, v10);
      sub_1C70F0B34();
      sub_1C739D944(v5);
      v7 += v8;
      --v6;
    }

    while (v6);
  }
}

void sub_1C7397E84(uint64_t a1, uint64_t (*a2)(void), void (*a3)(id *, id))
{
  v5 = a2();
  for (i = 0; v5 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = OUTLINED_FUNCTION_154();
      v7 = MEMORY[0x1CCA5DDD0](v8);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    a3(&v9, v7);
  }
}

void sub_1C7397F84(uint64_t a1, void (*a2)(_BYTE *, uint64_t, uint64_t, uint64_t))
{
  v6 = 0;
  v7 = a1 + 56;
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_31_40();
  if (v3)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_7_78();
      v10 = (*(a1 + 48) + 24 * v9);
      v11 = *(v10 + 1);
      v12 = *(v10 + 2);
      v13 = *v10;
      sub_1C75504FC();
      a2(v14, v13, v11, v12);
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v2)
    {
      break;
    }

    ++v6;
    if (*(v7 + 8 * v8))
    {
      goto LABEL_5;
    }
  }
}

void sub_1C7398074(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_1C755165C();
    sub_1C6F65BE8(0, &qword_1EDD0FAB0);
    sub_1C72B96F4();
    sub_1C7550FEC();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = (a1 + 56);
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = (v8 & *(a1 + 56));
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v13)
    {
LABEL_18:
      sub_1C6F61E88();
      return;
    }

    while (1)
    {
      sub_1C70F25A0(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1C75516FC())
      {
        sub_1C6F65BE8(0, &qword_1EDD0FAB0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = (v9 + 1);
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = v2[v11];
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1C7398254(uint64_t a1, uint64_t a2, _BYTE *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 1008) = v7;
  *(v8 + 1000) = a7;
  *(v8 + 992) = a6;
  *(v8 + 984) = a5;
  *(v8 + 976) = a4;
  *(v8 + 968) = a1;
  v12 = sub_1C754DFFC();
  *(v8 + 1016) = v12;
  OUTLINED_FUNCTION_18(v12);
  *(v8 + 1024) = v13;
  *(v8 + 1032) = swift_task_alloc();
  v14 = sub_1C754F2FC();
  *(v8 + 1040) = v14;
  OUTLINED_FUNCTION_18(v14);
  *(v8 + 1048) = v15;
  *(v8 + 1056) = swift_task_alloc();
  *(v8 + 1064) = swift_task_alloc();
  *(v8 + 1072) = swift_task_alloc();
  *(v8 + 1080) = swift_task_alloc();
  v16 = sub_1C754F38C();
  *(v8 + 1088) = v16;
  OUTLINED_FUNCTION_18(v16);
  *(v8 + 1096) = v17;
  *(v8 + 1104) = swift_task_alloc();
  *(v8 + 1112) = *a2;
  *(v8 + 1128) = *(a2 + 16);
  *(v8 + 1136) = *(a2 + 24);
  *(v8 + 1232) = *a3;
  memcpy((v8 + 16), a4, 0x130uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C7398430()
{
  v1 = OUTLINED_FUNCTION_154();
  __swift_project_boxed_opaque_existential_1(v1, v2);
  sub_1C754F1CC();
  v3 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_70(v3, v4);
  sub_1C754F15C();
  sub_1C754F2CC();
  v5 = v0[131];
  v6 = v0[122];
  sub_1C754F2BC();
  memcpy(v0 + 40, v6, 0x130uLL);
  v0[144] = *(v5 + 32);
  v0[145] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7 = OUTLINED_FUNCTION_154();
  v8(v7);
  v9 = swift_task_alloc();
  v0[146] = v9;
  *v9 = v0;
  v9[1] = sub_1C73986BC;
  v10 = v0[143];
  v11 = v0[134];

  return sub_1C7399648(v10, 100, (v0 + 40), (v0 + 116), v11);
}

uint64_t sub_1C73986BC()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1176) = v4;
  *(v2 + 1184) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C73987CC()
{
  v42 = v0;
  v1 = 0;
  v2 = v0[143];
  v33 = v2;
  v34 = *(v2 + 16);
  v3 = v0[148];
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v0[149] = v5;
    if (v34 == v1)
    {
      break;
    }

    if (v1 >= *(v33 + 16))
    {
      __break(1u);
      return;
    }

    v6 = v0[147];
    v7 = v0[125];
    v8 = *v4;
    v36[0] = *(v4 - 1);
    v36[1] = v8;
    sub_1C75504FC();
    sub_1C739ADD8(v36, v6, v7, &v37);

    v10 = v37;
    v9 = v38;
    v12 = v39;
    v11 = v40;
    v13 = v41;
    if (v38)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB25A8();
        v5 = v17;
      }

      v14 = *(v5 + 16);
      v15 = v5;
      if (v14 >= *(v5 + 24) >> 1)
      {
        sub_1C6FB25A8();
        v15 = v18;
      }

      *(v15 + 16) = v14 + 1;
      v5 = v15;
      v16 = (v15 + 40 * v14);
      v16[4] = v10;
      v16[5] = v9;
      v16[6] = v12;
      v16[7] = v11;
      v16[8] = v13;
      v0 = v32;
    }

    else
    {
      sub_1C739DA04(v37, 0, v39);
    }

    v4 += 2;
    ++v1;
  }

  sub_1C754F2DC();
  if (v3)
  {
    v19 = v0[131];
    v35 = v0[130];
    v20 = v0[124];
    v21 = v0[123];
    __swift_destroy_boxed_opaque_existential_1((v0 + 116));

    OUTLINED_FUNCTION_70(v21, v21[3]);
    sub_1C754F1AC();
    v22 = OUTLINED_FUNCTION_15_1();
    v23(v22);
    (*(v19 + 8))(v20, v35);
    OUTLINED_FUNCTION_10_69();

    OUTLINED_FUNCTION_6_0();

    v24();
  }

  else
  {
    v25 = v0[144];
    v26 = v0[142];
    v27 = v0[141];
    sub_1C754F2BC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
    v28 = swift_allocObject();
    v0[150] = v28;
    *(v28 + 16) = xmmword_1C755BAB0;
    *(v28 + 32) = v27;
    *(v28 + 40) = v26;
    memcpy(v0 + 78, v0 + 2, 0x130uLL);
    v29 = OUTLINED_FUNCTION_154();
    v25(v29);
    swift_bridgeObjectRetain_n();
    v30 = swift_task_alloc();
    v0[151] = v30;
    *v30 = v0;
    v30[1] = sub_1C7398B78;
    v31 = v0[132];

    sub_1C7399648(v28, 0, (v0 + 78), (v0 + 116), v31);
  }
}

uint64_t sub_1C7398B78(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *(v4 + 1216) = v1;

  if (v1)
  {
  }

  else
  {
    *(v4 + 1224) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7398CB8()
{
  v78 = v0;
  v1 = sub_1C6FE1070(*(v0 + 1128), *(v0 + 1136), *(v0 + 1224));
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = ~v6;

  if (v8)
  {
    if (v7)
    {
      sub_1C75504FC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA64(v9, v10, v11, v12);
      v13 = sub_1C754FEEC();
      v14 = sub_1C755119C();

      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v15, v16, v17, v18);
      if (os_log_type_enabled(v13, v14))
      {
        v73 = *(v0 + 1128);
        v74 = *(v0 + 1136);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v21 = v1;
        v22 = swift_slowAlloc();
        v76 = v22;
        *v19 = 136380931;
        *(v19 + 4) = sub_1C6F765A4(v73, v74, &v76);
        *(v19 + 12) = 2112;
        sub_1C6FE369C(v21, v3, v5, 1);
        v23 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 14) = v23;
        *v20 = v23;
        _os_log_impl(&dword_1C6F5C000, v13, v14, "Retrieval failed for fallback query '%{private}s': %@", v19, 0x16u);
        sub_1C6FB5FC8(v20, &qword_1EC215190);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        __swift_destroy_boxed_opaque_existential_1(v22);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      if (*(v0 + 1000))
      {
        v24 = *(v0 + 1136);
        v25 = *(v0 + 1128);
        OUTLINED_FUNCTION_50_28();

        OUTLINED_FUNCTION_37_35("Retrieval failed for fallback query '");
        MEMORY[0x1CCA5CD70](v25, v24);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        sub_1C7161CDC(v76, v77);
      }

      v26 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
      OUTLINED_FUNCTION_61_0();
      sub_1C75504DC();
      OUTLINED_FUNCTION_61_0();
      v28 = v27;
      v29 = sub_1C75504DC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v30, v31, v32, v33);
    }

    else
    {
      v42 = v1;
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_17_71();
      sub_1C739DA7C(v43, v44, v45, v46);
      v26 = v42;
      v29 = v5;
      v28 = v3;
    }
  }

  else
  {
    if (qword_1EDD08268 != -1)
    {
      OUTLINED_FUNCTION_1_117();
      swift_once();
    }

    v34 = sub_1C754FF1C();
    __swift_project_value_buffer(v34, qword_1EDD08270);
    v35 = sub_1C754FEEC();
    v36 = sub_1C755119C();
    if (os_log_type_enabled(v35, v36))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v37, v38, "Retrieved assets from fallback query is unexpectedly nil, did searchd crash?");
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    v39 = *(v0 + 1000);

    if (v39)
    {
      v40 = *(v0 + 1136);
      v41 = *(v0 + 1128);
      OUTLINED_FUNCTION_50_28();

      OUTLINED_FUNCTION_37_35("Retrieval failed for fallback query '");
      MEMORY[0x1CCA5CD70](v41, v40);
      MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
      sub_1C7161CDC(v76, v77);
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    v28 = OUTLINED_FUNCTION_48_25();
    v29 = OUTLINED_FUNCTION_48_25();
  }

  v47 = *(v0 + 1216);
  sub_1C754F2EC();
  v48 = *(v0 + 1192);
  if (v47)
  {
    v49 = *(v0 + 1104);
    v50 = *(v0 + 1096);
    v75 = *(v0 + 1088);
    v51 = *(v0 + 984);
    __swift_destroy_boxed_opaque_existential_1(v0 + 928);

    OUTLINED_FUNCTION_70(v51, v51[3]);
    sub_1C754F1AC();
    (*(v50 + 8))(v49, v75);
    OUTLINED_FUNCTION_10_69();

    OUTLINED_FUNCTION_6_0();
  }

  else
  {
    v69 = *(v0 + 1232);
    v62 = *(v0 + 1136);
    v66 = *(v0 + 1120);
    v67 = *(v0 + 1112);
    v68 = *(v0 + 1128);
    v70 = *(v0 + 1104);
    v71 = *(v0 + 1096);
    v72 = *(v0 + 1088);
    v53 = *(v0 + 1032);
    v54 = *(v0 + 1024);
    v65 = *(v0 + 1016);
    v55 = *(v0 + 968);
    sub_1C75504FC();
    sub_1C75504FC();
    v56 = v26;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DFEC();
    v57 = sub_1C754DF8C();
    v63 = v58;
    v64 = v57;

    (*(v54 + 8))(v53, v65);
    __swift_destroy_boxed_opaque_existential_1(v0 + 928);
    *(v55 + 88) = 0;
    *(v55 + 96) = 0;
    *v55 = v64;
    *(v55 + 8) = v63;
    *(v55 + 16) = v67;
    *(v55 + 24) = v66;
    *(v55 + 32) = v69;
    *(v55 + 40) = v48;
    *(v55 + 48) = v68;
    *(v55 + 56) = v62;
    *(v55 + 64) = v56;
    *(v55 + 72) = v28;
    *(v55 + 80) = v29;
    v59 = OUTLINED_FUNCTION_154();
    OUTLINED_FUNCTION_70(v59, v60);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v71 + 8))(v70, v72);

    OUTLINED_FUNCTION_43();
  }

  return v52();
}

uint64_t sub_1C739935C()
{
  OUTLINED_FUNCTION_14_59();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_43_34();
  v4(v3, v0);
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C739942C()
{
  OUTLINED_FUNCTION_14_59();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  v3 = OUTLINED_FUNCTION_43_34();
  v4(v3, v0);
  OUTLINED_FUNCTION_32_36();

  OUTLINED_FUNCTION_43();

  return v5();
}

uint64_t sub_1C739953C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD08270);
  __swift_project_value_buffer(v0, qword_1EDD08270);
  return sub_1C754FEFC();
}

uint64_t sub_1C73995B8(uint64_t a1, __int128 *a2)
{
  sub_1C754FEFC();
  *(v2 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_photoLibrary) = a1;
  sub_1C6FD80E4(a2, v2 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher);
  return v2;
}

uint64_t sub_1C7399648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[48] = a5;
  v6[49] = v5;
  v6[46] = a2;
  v6[47] = a4;
  v6[45] = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  v6[50] = v8;
  v6[51] = *(v8 - 8);
  v6[52] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  v6[53] = v9;
  v6[54] = *(v9 - 8);
  v6[55] = swift_task_alloc();
  v10 = sub_1C754F38C();
  v6[56] = v10;
  v6[57] = *(v10 - 8);
  v6[58] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *(a3 + 168);
  v6[59] = v11;
  v6[60] = v12;
  v6[61] = *(a3 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1C73997FC, 0, 0);
}

uint64_t sub_1C73997FC()
{
  v1 = v0[23].i64[1];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0[22].i64[1] + 16);
  if (!v2)
  {
    v10 = v0[24].i64[0];
    sub_1C75504DC();
    v11 = OUTLINED_FUNCTION_61_0();
    OUTLINED_FUNCTION_70(v11, v12);
    sub_1C754F1AC();
    v13 = OUTLINED_FUNCTION_15_1();
    v14(v13);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v15 + 8))(v10);

    OUTLINED_FUNCTION_94_1();

    __asm { BRAA            X2, X16 }
  }

  v3 = [*(v0[24].i64[1] + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_photoLibrary) librarySpecificFetchOptions];
  v0[31].i64[0] = v3;
  if (qword_1EDD08290 != -1)
  {
    swift_once();
  }

  v4 = v0[22].i64[1];
  v5 = sub_1C7550B3C();
  [v3 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C7564A90;
  v7 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v6 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v6, v3);
  v43 = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  sub_1C6F65BE8(0, &qword_1EDD0CE30);
  v9 = v4 + 40;
  do
  {
    sub_1C75504FC();
    OUTLINED_FUNCTION_61_0();
    sub_1C7073450();
    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
    v9 += 16;
    --v2;
  }

  while (v2);
  sub_1C754F2DC();
  if (qword_1EDD08268 != -1)
  {
    OUTLINED_FUNCTION_1_117();
    swift_once();
  }

  v18 = sub_1C754FF1C();
  v0[31].i64[1] = __swift_project_value_buffer(v18, qword_1EDD08270);
  sub_1C75504FC();
  v19 = sub_1C754FEEC();
  v20 = sub_1C755117C();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    *(v21 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v19, v20, "Start query batch for story chapters with %ld", v21, 0xCu);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {
  }

  v0[11].i64[0] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v0[11].i64[1] = &off_1F46ACFD0;
  v22 = objc_opt_self();
  sub_1C75504FC();
  v23 = [v22 currentUnifiedEmbeddingVersion];
  v24 = v23;
  if (v23)
  {
    v25 = [v23 integerValue];
  }

  else
  {
    v25 = 0;
  }

  v0[9].i8[8] = 3;
  v0[10].i64[0] = v25;
  v0[10].i8[8] = v24 == 0;
  sub_1C754F2DC();
  v26 = v0[30].i64[1];
  v41 = v0[30].i64[0];
  v27 = v0[24].i64[1];
  v40 = v0[23].i64[1];
  v42 = v22;
  v28 = v0[23].i64[0];
  v29 = [objc_opt_self() shotlistMatchingEmbeddingSearchRetrievalLimit];
  sub_1C6FB5E28(&v0[9].i64[1], v0[2].i64);
  v0[1].i8[0] = 1;
  v0[1].i64[1] = 1;
  v0[5].i64[1] = 1;
  v0[6].i64[0] = v26;
  v0[6].i64[1] = v28;
  v0[7] = vdupq_n_s64(1uLL);
  v0[8].i8[0] = 1;
  v0[8].i64[1] = 700;
  v0[9].i8[0] = 0;
  v0[4].i64[1] = v29;
  v0[5].i8[0] = 0;
  v31 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher + 24);
  v30 = *(v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher + 32);
  OUTLINED_FUNCTION_70((v27 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher), v31);
  v39 = *(v30 + 24);
  sub_1C75504FC();
  v39(v43, v0 + 1, v40, v31, v30);
  v0[32].i64[0] = sub_1C7238810(v41, v26);
  v0[13].i64[1] = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  v0[14].i64[0] = &off_1F46ACFD0;
  v32 = [v42 currentUnifiedEmbeddingVersion];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 integerValue];
  }

  else
  {
    v34 = 0;
  }

  v0[12].i8[0] = 2;
  v0[12].i64[1] = v34;
  v0[13].i8[0] = v33 == 0;
  sub_1C754F2DC();
  __swift_project_boxed_opaque_existential_1(v0[23].i64[1], v1[3]);
  sub_1C754F1CC();
  v0[32].i64[1] = sub_1C6FB6304();

  sub_1C7550DBC();
  v0[33].i64[0] = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_logger;
  v0[34].i64[1] = MEMORY[0x1E69E7CC8];
  v0[34].i64[0] = 0x3FD3333333333333;
  v0[33].i64[1] = 0;
  v35 = swift_task_alloc();
  v0[35].i64[0] = v35;
  *v35 = v0;
  OUTLINED_FUNCTION_9_77(v35);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_94_1();

  return MEMORY[0x1EEE6D9C8](v36);
}

uint64_t sub_1C739A134()
{
  v1 = *v0;
  OUTLINED_FUNCTION_40();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C739A228()
{
  v144 = v0;
  v1 = *(v0 + 232);
  v2 = *(v0 + 256);
  v142 = v0 + 16;
  if (v2 == 255)
  {
    v138 = v0 + 152;
    v140 = v0 + 192;
    v17 = *(v0 + 536);
    v18 = *(v0 + 376);
    (*(*(v0 + 408) + 8))(*(v0 + 416), *(v0 + 400));

    OUTLINED_FUNCTION_70(v18, v18[3]);
    sub_1C754F1AC();
    sub_1C754F2EC();
    if (!v17)
    {
      v61 = *(v0 + 464);
      v62 = *(v0 + 448);
      v63 = *(v0 + 456);
      v64 = *(v0 + 376);

      v65 = *(v63 + 8);
      v65(v61, v62);
      v66 = OUTLINED_FUNCTION_15_1();
      v67(v66);
      sub_1C70DF138(v142);
      __swift_destroy_boxed_opaque_existential_1(v138);
      __swift_destroy_boxed_opaque_existential_1(v140);
      OUTLINED_FUNCTION_70(v64, v64[3]);
      sub_1C754F1AC();
      v68 = OUTLINED_FUNCTION_57_0();
      (v65)(v68);

      OUTLINED_FUNCTION_24_38();

      __asm { BRAA            X2, X16 }
    }

    v137 = *(v0 + 472);
    v20 = *(v0 + 456);
    v19 = *(v0 + 464);
    v21 = *(v0 + 448);
    v22 = *(v0 + 424);
    v23 = *(v0 + 376);

    v24 = *(v20 + 8);
    v24(v19, v21);
    v25 = OUTLINED_FUNCTION_43_34();
    v26(v25, v22);
    sub_1C70DF138(v142);
    __swift_destroy_boxed_opaque_existential_1(v138);
    __swift_destroy_boxed_opaque_existential_1(v140);

    OUTLINED_FUNCTION_70(v23, v23[3]);
    sub_1C754F1AC();
    v24(v137, v21);
LABEL_6:

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_24_38();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 240);
  v3 = *(v0 + 248);
  v5 = *(v0 + 536);
  v133 = objc_autoreleasePoolPush();
  sub_1C754F2DC();
  v135 = v3;
  v136 = v4;
  v132 = v1;
  v134 = v2;
  if (v5)
  {

    v6 = *(v0 + 496);
    v7 = *(v0 + 464);
    v129 = *(v0 + 472);
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    v10 = *(v0 + 432);
    v11 = *(v0 + 416);
    v124 = *(v0 + 424);
    v125 = *(v0 + 440);
    v12 = *(v0 + 400);
    v13 = *(v0 + 408);
    v14 = *(v0 + 376);
    v131 = *(v0 + 384);
    objc_autoreleasePoolPop(v133);
    sub_1C710A128(v132, v136, v135, v134);

    (*(v13 + 8))(v11, v12);
    v15 = *(v8 + 8);
    v15(v7, v9);
    (*(v10 + 8))(v125, v124);
    sub_1C70DF138(v142);
    __swift_destroy_boxed_opaque_existential_1(v0 + 152);
    __swift_destroy_boxed_opaque_existential_1(v0 + 192);

    OUTLINED_FUNCTION_70(v14, v14[3]);
    sub_1C754F1AC();
    v15(v129, v9);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v131);
    goto LABEL_6;
  }

  v29 = *(v0 + 544);
  v141 = *(v0 + 520);
  if ((v2 & 1) == 0)
  {
    v71 = *(v0 + 512);
    *(v0 + 312) = v1;
    *(v0 + 320) = v4;
    *(v0 + 328) = v3;
    sub_1C739B2D4((v0 + 312), (v0 + 192), v71, (v0 + 288));
    v72 = *(v0 + 288);
    v139 = *(v0 + 296);
    v73 = MEMORY[0x1E69E7CC8];
    v74 = *(v72 + 16);
LABEL_22:
    v75 = 32 * v5;
    while (v74 != v5)
    {
      if (v5 >= *(v72 + 16))
      {
        __break(1u);
        goto LABEL_54;
      }

      v76 = v75 + 32;
      ++v5;
      v77 = *(v72 + v75 + 56);
      v75 += 32;
      if ((v77 & 1) == 0)
      {
        v78 = *(v72 + v76);
        v79 = *(v72 + v76 + 8);
        v80 = *(v72 + v76 + 16);
        sub_1C75504FC();
        swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 352) = v73;
        v127 = v78;
        v54 = sub_1C6F78124(v78, v79);
        if (__OFADD__(v73[2], (v81 & 1) == 0))
        {
          goto LABEL_56;
        }

        v82 = v54;
        v83 = v81;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DE0);
        v54 = sub_1C7551A2C();
        if (v54)
        {
          v84 = v79;
          v54 = sub_1C6F78124(v127, v79);
          if ((v83 & 1) != (v85 & 1))
          {
            goto LABEL_15;
          }

          v82 = v54;
        }

        else
        {
          v84 = v79;
        }

        v73 = *(v0 + 352);
        if (v83)
        {
          *(v73[7] + 8 * v82) = v80;
        }

        else
        {
          v73[(v82 >> 6) + 8] |= 1 << v82;
          v86 = (v73[6] + 16 * v82);
          *v86 = v127;
          v86[1] = v84;
          *(v73[7] + 8 * v82) = v80;
          v87 = v73[2];
          v88 = __OFADD__(v87, 1);
          v89 = v87 + 1;
          if (v88)
          {
            goto LABEL_57;
          }

          v73[2] = v89;
        }

        v3 = v135;
        goto LABEL_22;
      }
    }

    if (v3)
    {
      swift_unknownObjectRetain_n();
      v90 = sub_1C75504FC();
      sub_1C739D5B0(v90);
      v130 = v91;

      swift_unknownObjectRelease();
      v1 = v132;
    }

    else
    {
      v107 = sub_1C754FEEC();
      v108 = sub_1C755119C();
      v1 = v132;
      if (os_log_type_enabled(v107, v108))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v109, v110, "No query embedding info for search results, but we expected to have performed embedding or complete search.");
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      v130 = sub_1C75504DC();
    }

    v111 = *(v0 + 496);
    v112 = objc_opt_self();
    v113 = sub_1C75504FC();
    v114 = sub_1C71CD90C(v113);
    v115 = sub_1C739DA94(v114, v111, v112);
    if (!v115)
    {
      v115 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
    }

    v116 = v115;
    v92 = *(v0 + 552);
    v117 = [v136 string];
    v126 = sub_1C755068C();
    v119 = v118;

    sub_1C75504FC();
    v128 = v116;
    sub_1C75504FC();
    swift_isUniquelyReferenced_nonNull_native();
    v143[0] = v92;
    v120 = OUTLINED_FUNCTION_323();
    sub_1C6FC9A1C(v120, v121, v130, 0, v126, v119);
    v94 = v136;

    swift_unknownObjectRelease();

    v93 = v134;
    v104 = v135;
    v105 = v133;
    v106 = v141;
    goto LABEL_50;
  }

  v30 = v1;
  sub_1C75504FC();
  v31 = v4;
  v32 = sub_1C754FEEC();
  v33 = sub_1C755119C();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = *(v0 + 360);
    v35 = swift_slowAlloc();
    v143[0] = swift_slowAlloc();
    *v35 = 136643331;
    v36 = [v30 string];
    v37 = sub_1C755068C();
    v39 = v38;

    v40 = sub_1C6F765A4(v37, v39, v143);

    *(v35 + 4) = v40;
    *(v35 + 12) = 2080;
    v41 = MEMORY[0x1CCA5D090](v34, MEMORY[0x1E69E6158]);
    v43 = sub_1C6F765A4(v41, v42, v143);

    *(v35 + 14) = v43;
    *(v35 + 22) = 2080;
    v1 = v132;
    swift_getErrorValue();
    v44 = sub_1C7551EAC();
    v46 = sub_1C6F765A4(v44, v45, v143);

    *(v35 + 24) = v46;
    _os_log_impl(&dword_1C6F5C000, v32, v33, "Error retrieving assets for query '%{sensitive}s' with queries %s, error: %s", v35, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    v4 = v136;
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v47 = *(v0 + 552);
  v48 = v4;
  v49 = [v30 string];
  v50 = sub_1C755068C();
  v52 = v51;

  v53 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 336) = v47;
  v54 = sub_1C6F78124(v50, v52);
  if (__OFADD__(*(v47 + 16), (v55 & 1) == 0))
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v56 = v54;
  v57 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215268);
  v54 = sub_1C7551A2C();
  if ((v54 & 1) == 0)
  {
LABEL_39:
    v92 = *(v0 + 336);
    v93 = v134;
    v94 = v136;
    if (v57)
    {
      v95 = v92[7] + 32 * v56;
      v96 = *v95;
      v97 = *(v95 + 8);
      v98 = *(v95 + 16);
      v99 = *(v95 + 24);
      *v95 = v136;
      *(v95 + 8) = 0;
      *(v95 + 16) = 0;
      *(v95 + 24) = 1;
      sub_1C6FCA52C(v96, v97, v98, v99);
LABEL_43:
      v104 = v135;
      v105 = v133;
      v106 = v141;

LABEL_50:
      objc_autoreleasePoolPop(v105);
      sub_1C710A128(v1, v94, v104, v93);
      *(v0 + 552) = v92;
      *(v0 + 544) = v29 + 0.7 / (v106 + v106);
      *(v0 + 536) = 0;
      v122 = swift_task_alloc();
      *(v0 + 560) = v122;
      *v122 = v0;
      OUTLINED_FUNCTION_9_77();
      OUTLINED_FUNCTION_41();
      OUTLINED_FUNCTION_24_38();

      return MEMORY[0x1EEE6D9C8](v54);
    }

    v92[(v56 >> 6) + 8] |= 1 << v56;
    v100 = (v92[6] + 16 * v56);
    *v100 = v50;
    v100[1] = v52;
    v101 = v92[7] + 32 * v56;
    *(v101 + 8) = 0;
    *(v101 + 16) = 0;
    *v101 = v136;
    *(v101 + 24) = 1;
    v102 = v92[2];
    v88 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (!v88)
    {
      v92[2] = v103;
      sub_1C75504FC();
      goto LABEL_43;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    return MEMORY[0x1EEE6D9C8](v54);
  }

  v54 = sub_1C6F78124(v50, v52);
  if ((v57 & 1) == (v58 & 1))
  {
    v56 = v54;
    goto LABEL_39;
  }

LABEL_15:
  OUTLINED_FUNCTION_24_38();

  return sub_1C7551E4C();
}

double sub_1C739ADD8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a3;
  v6 = *a1;
  v5 = a1[1];
  v7 = sub_1C6FE1070(*a1, v5, a2);
  if (v10 == -1)
  {
    sub_1C75504FC();
    v19 = sub_1C754FEEC();
    v20 = sub_1C755119C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_1C6F765A4(v6, v5, &v28);
      _os_log_impl(&dword_1C6F5C000, v19, v20, "Could not find retrieved asset result for shot query %{private}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1CCA5F8E0](v22, -1, -1);
      MEMORY[0x1CCA5F8E0](v21, -1, -1);
    }

    if (v30)
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_1C755180C();

      v28 = 0xD00000000000002CLL;
      v29 = 0x80000001C75AD100;
      MEMORY[0x1CCA5CD70](v6, v5);
      MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
      sub_1C7161CDC(v28, v29);
    }

    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    v11 = v7;
    v12 = v8;
    v13 = v9;
    v14 = v10;
    if (v10)
    {
      sub_1C75504FC();
      sub_1C739DA64(v11, v12, v13, v14);
      v15 = sub_1C754FEEC();
      v16 = sub_1C755119C();

      sub_1C739DA7C(v11, v12, v13, v14);
      if (os_log_type_enabled(v15, v16))
      {
        log = v15;
        v17 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v28 = v27;
        *v17 = 136380931;
        *(v17 + 4) = sub_1C6F765A4(v6, v5, &v28);
        *(v17 + 12) = 2112;
        sub_1C6FE369C(v11, v12, v13, 1);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v17 + 14) = v18;
        *v25 = v18;
        _os_log_impl(&dword_1C6F5C000, log, v16, "Retrieval failed for shot query '%{private}s': %@", v17, 0x16u);
        sub_1C6FB5FC8(v25, &qword_1EC215190);
        MEMORY[0x1CCA5F8E0](v25, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x1CCA5F8E0](v27, -1, -1);
        MEMORY[0x1CCA5F8E0](v17, -1, -1);
      }

      else
      {
      }

      if (v30)
      {
        v28 = 0;
        v29 = 0xE000000000000000;
        sub_1C755180C();

        v28 = 0xD00000000000002CLL;
        v29 = 0x80000001C75AD100;
        MEMORY[0x1CCA5CD70](v6, v5);
        MEMORY[0x1CCA5CD70](39, 0xE100000000000000);
        sub_1C7161CDC(v28, v29);
        sub_1C739DA7C(v11, v12, v13, v14);
      }

      else
      {
        sub_1C739DA7C(v11, v12, v13, v14);
      }

      *(a4 + 32) = 0;
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
    }

    else
    {
      v24 = v7;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C739DA7C(v11, v12, v13, v14);
      *a4 = v6;
      *(a4 + 8) = v5;
      *(a4 + 16) = v11;
      *(a4 + 24) = v12;
      *(a4 + 32) = v13;
    }
  }

  return result;
}

uint64_t sub_1C739B230()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755F060;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  result = sub_1C755068C();
  *(v0 + 80) = result;
  *(v0 + 88) = v5;
  qword_1EDD28A18 = v0;
  return result;
}

void sub_1C739B2D4(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (v8)
  {
    v10 = a2[3];
    v11 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v10);
    v12 = v6;
    v13 = *(v11 + 8);
    v50 = v12;
    v14 = swift_unknownObjectRetain_n();
    v13(v14, v10, v11);
    if (v4)
    {
      swift_unknownObjectRelease_n();

      return;
    }

    v20 = v15;
    v48 = v8;
    v21 = 0;
    v54 = *(v7 + 16);
    v52 = v7 + 32;
    v51 = MEMORY[0x1E69E7CC0];
    v53 = v7;
    while (1)
    {
      if (v21 == v54)
      {
        swift_bridgeObjectRetain_n();
        v40 = v50;
        v41 = v48;
        swift_unknownObjectRetain_n();
        swift_retain_n();
        v42 = v40;
        sub_1C75504FC();
        v43 = sub_1C754FEEC();
        v44 = sub_1C755117C();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          *v45 = 134218496;
          v46 = *(FreeformStoryFetching.Result.uuids.getter() + 16);
          swift_unknownObjectRelease();

          *(v45 + 4) = v46;
          swift_unknownObjectRelease();

          *(v45 + 12) = 2048;
          v47 = *(v51 + 16);

          *(v45 + 14) = v47;
          v41 = v48;

          *(v45 + 22) = 2048;
          *(v45 + 24) = *(a3 + 16);

          _os_log_impl(&dword_1C6F5C000, v43, v44, "Filtered %ld down to %ld from re-thresholding on %ld assets.", v45, 0x20u);
          MEMORY[0x1CCA5F8E0](v45, -1, -1);

          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease_n();

          swift_bridgeObjectRelease_n();
        }

        *a4 = v51;
        a4[1] = v42;
        a4[2] = v41;
        return;
      }

      if (v21 >= *(v7 + 16))
      {
        __break(1u);
        return;
      }

      v22 = (v52 + 32 * v21);
      v23 = *v22;
      v24 = *(v22 + 1);
      v55 = v22[2];
      v25 = *(v22 + 24);
      v26 = *(v22 + 25);
      ++v21;
      if (!*(a3 + 16))
      {
        break;
      }

      sub_1C7551F3C();
      swift_bridgeObjectRetain_n();
      sub_1C75505AC();
      v27 = sub_1C7551FAC();
      v28 = ~(-1 << *(a3 + 32));
      do
      {
        v29 = v27 & v28;
        if (((*(a3 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {

          goto LABEL_24;
        }

        v30 = (*(a3 + 48) + 16 * v29);
        if (*v30 == *&v23 && v30[1] == v24)
        {
          break;
        }

        v32 = sub_1C7551DBC();
        v27 = v29 + 1;
      }

      while ((v32 & 1) == 0);

      if (v26)
      {
        goto LABEL_24;
      }

      if (v25)
      {
        v33 = sub_1C754FEEC();
        v34 = sub_1C755119C();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_1C6F5C000, v33, v34, "Unexpectedly found a search result that isn't a metadata match and has no embedding similarity score.", v35, 2u);
          MEMORY[0x1CCA5F8E0](v35, -1, -1);
        }

LABEL_30:

        v7 = v53;
      }

      else
      {
        if (v20 > v55)
        {
          goto LABEL_30;
        }

        v25 = 0;
LABEL_24:
        v36 = v51;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D818();
          v36 = v51;
        }

        v37 = *(v36 + 16);
        v38 = v37 + 1;
        if (v37 >= *(v36 + 24) >> 1)
        {
          sub_1C716D818();
          v38 = v37 + 1;
          v36 = v51;
        }

        *(v36 + 16) = v38;
        v51 = v36;
        v39 = v36 + 32 * v37;
        *(v39 + 32) = v23;
        *(v39 + 40) = v24;
        *(v39 + 48) = v55;
        *(v39 + 56) = v25;
        *(v39 + 57) = v26;
        v7 = v53;
      }
    }

    sub_1C75504FC();
    goto LABEL_24;
  }

  v16 = sub_1C754FEEC();
  v17 = sub_1C755119C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "No query embedding info for search results, but we expected to have performed embedding or complete search.", v18, 2u);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  *a4 = v7;
  a4[1] = v6;
  a4[2] = 0;
  sub_1C75504FC();
  v19 = v6;
}

uint64_t static FreeformStoryChapterGenerator.storyCuratedAssets(from:photoLibrary:fetchPropertySets:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4 = *(a1 + 16);
  v58 = a3;
  v56 = a2;
  if (!v4)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_45:
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v44 = sub_1C739D74C(ObjCClassFromMetadata);
    v46 = v45;
    sub_1C71BA844(v6, v53, v45, v47, v48, v49, v50, v51, v52, v56, v58, v60, v61, v62.n128_i64[0], v62.n128_i64[1], v63, v64, v65, v66, v67, v68, v69, v70[0], v70[1], v70[2]);
    v55 = v54;

    objc_allocWithZone(MEMORY[0x1E69788E0]);
    sub_1C75504FC();
    return sub_1C70E7DFC(v55, v57, v44, v46, v59, 0, 0, 0);
  }

  v5 = 0;
  v72 = a1 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  a4.n128_u64[0] = 136315138;
  v62 = a4;
  v7 = &unk_1C7585C00;
  v61 = v4;
  while (1)
  {
    memcpy(__dst, (v72 + (v5 << 7)), 0x80uLL);
    if (__dst[14])
    {
      sub_1C6FB7BB8(__dst, v70);
      if (qword_1EDD08268 != -1)
      {
        OUTLINED_FUNCTION_1_117();
        swift_once();
      }

      v8 = sub_1C754FF1C();
      __swift_project_value_buffer(v8, qword_1EDD08270);
      sub_1C6FB7BB8(__dst, v70);
      v9 = sub_1C754FEEC();
      v10 = sub_1C755119C();
      sub_1C6FBC664(__dst);
      if (os_log_type_enabled(v9, v10))
      {
        v11 = __dst[2];
        v12 = __dst[3];
        v13 = v6;
        v14 = swift_slowAlloc();
        v15 = v4;
        v16 = swift_slowAlloc();
        v70[0] = v16;
        *v14 = v62.n128_u32[0];
        sub_1C75504FC();
        v17 = sub_1C6F765A4(v11, v12, v70);

        *(v14 + 4) = v17;
        _os_log_impl(&dword_1C6F5C000, v9, v10, "Chapter %s is not curated", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v4 = v15;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        v6 = v13;
        v7 = &unk_1C7585C00;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      sub_1C6FBC664(__dst);
      goto LABEL_40;
    }

    v18 = __dst[13];
    sub_1C6FB7BB8(__dst, v70);
    sub_1C6FBC70C(v18);
    v68 = v18;
    if ([v18 fetchedObjectIDs])
    {
      v19 = OUTLINED_FUNCTION_300();
      sub_1C6F65BE8(v19, &qword_1EDD0FAB0);
      v20 = sub_1C7550B5C();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    v21 = v20 >> 62 ? sub_1C75516BC() : *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = v6 >> 62;
    result = v6 >> 62 ? sub_1C75516BC() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = v21;
    v24 = __OFADD__(result, v21);
    v25 = result + v21;
    if (v24)
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v22)
      {
        v26 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v25 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_1C75516BC();
      goto LABEL_23;
    }

    if (v22)
    {
      goto LABEL_22;
    }

LABEL_23:
    result = sub_1C75518CC();
    v6 = result;
    v26 = result & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v67 = v5;
    v27 = *(v26 + 16);
    v28 = (*(v26 + 24) >> 1) - v27;
    v29 = v26 + 8 * v27;
    v65 = v26;
    if (v20 >> 62)
    {
      v33 = sub_1C75516BC();
      if (!v33)
      {
LABEL_38:

        if (v69 > 0)
        {
          goto LABEL_47;
        }

        goto LABEL_39;
      }

      v34 = v33;
      v66 = v20;
      result = sub_1C75516BC();
      if (v28 < result)
      {
        goto LABEL_49;
      }

      if (v34 < 1)
      {
        goto LABEL_51;
      }

      v63 = result;
      v64 = v6;
      v35 = v7;
      v36 = v29 + 32;
      sub_1C739D7B0();
      for (i = 0; i != v34; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215608);
        v38 = sub_1C6FDD09C(v70, i, v66);
        v40 = *v39;
        v38(v70, 0);
        *(v36 + 8 * i) = v40;
      }

      v32 = v63;
      v7 = v35;
      v4 = v61;
    }

    else
    {
      v30 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v20;
      if (!v30)
      {
        goto LABEL_38;
      }

      v32 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v66 = v31;
      if (v28 < v30)
      {
        goto LABEL_50;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FAB0);
      swift_arrayInitWithCopy();
    }

    if (v32 < v69)
    {
      goto LABEL_47;
    }

    if (v32 > 0)
    {
      v41 = *(v65 + 16);
      v24 = __OFADD__(v41, v32);
      v42 = v41 + v32;
      if (v24)
      {
        goto LABEL_48;
      }

      *(v65 + 16) = v42;
    }

LABEL_39:
    sub_1C6FBC718(v68);
    sub_1C6FBC664(__dst);
    v5 = v67;
LABEL_40:
    if (++v5 == v4)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
  return result;
}

uint64_t FreeformStoryChapterGenerator.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC18PhotosIntelligence29FreeformStoryChapterGenerator_storyAssetsFetcher);
  return v0;
}

uint64_t FreeformStoryChapterGenerator.__deallocating_deinit()
{
  FreeformStoryChapterGenerator.deinit();

  return swift_deallocClassInstance();
}

void sub_1C739BF14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v27;
  a26 = v29;
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = v28;
    v33 = OUTLINED_FUNCTION_15_70();
    v35 = v34(v33);
    v32(&a10, v35 + 32, v31, v26);
    OUTLINED_FUNCTION_47_3();
    OUTLINED_FUNCTION_33_0();
    if (!v36)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_13_5();
}

void sub_1C739C274()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1C739C320(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = OUTLINED_FUNCTION_323();
  v8 = sub_1C707F97C(v6, v7, v1, v2, v3, v4, v5);
  if (!v8)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v9 = v8;
  v10 = sub_1C70CE988();
  v11 = OUTLINED_FUNCTION_323();
  sub_1C6FD8078(v11, v12, v1);
  v13 = OUTLINED_FUNCTION_15_1();
  sub_1C6FD8078(v13, v14, v4);
  sub_1C75504FC();
  v15 = sub_1C6FD78E4(v17, (v10 + 32), v9);
  sub_1C6FB5FC8(v17, &qword_1EC21B068);
  if (v15 != v9)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v10;
}

void sub_1C739C4D0()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E8);
      v5 = OUTLINED_FUNCTION_28_34();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      OUTLINED_FUNCTION_51_23();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C624()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010);
      v5 = OUTLINED_FUNCTION_28_34();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C744(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v9 = OUTLINED_FUNCTION_28_34();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_35_25();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != a3)
    {
      sub_1C6F65BE8(0, a5);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C834(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(void))
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v6)
  {
    if (v6 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
      v9 = OUTLINED_FUNCTION_28_34();
      _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_35_25();
      v9[2] = v6;
      v9[3] = v10;
    }

    if (v5 != a3)
    {
      a5(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C8FC()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215058);
      v5 = OUTLINED_FUNCTION_23_46();
      v6 = _swift_stdlib_malloc_size(v5);
      OUTLINED_FUNCTION_3_99(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739C9FC()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215028);
      v5 = OUTLINED_FUNCTION_23_46();
      v6 = _swift_stdlib_malloc_size(v5);
      OUTLINED_FUNCTION_3_99(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CAD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void (*a5)(unint64_t, void), void (*a6)(void))
{
  v6 = a4 >> 1;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  if (a4 >> 1 != a3)
  {
    a5((a4 >> 1) - a3, 0);
    if (v6 != a3)
    {
      a6(0);
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_7;
  }
}

void sub_1C739CD40()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215078);
      v5 = OUTLINED_FUNCTION_23_46();
      v6 = _swift_stdlib_malloc_size(v5);
      OUTLINED_FUNCTION_3_99(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CDE8()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739CEA0()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215090);
      v5 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v5);
      OUTLINED_FUNCTION_6_92(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

char *sub_1C739CF80(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_1C75516BC();
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_1C75504FC();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_1C6F61E88();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return a2;
}

void sub_1C739D040()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD0);
      v5 = OUTLINED_FUNCTION_23_46();
      v6 = _swift_stdlib_malloc_size(v5);
      OUTLINED_FUNCTION_3_99(v6);
    }

    if (v2 != v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8);
      OUTLINED_FUNCTION_51_23();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739D1DC()
{
  OUTLINED_FUNCTION_12_67();
  if (v3)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v0)
  {
    OUTLINED_FUNCTION_2_110();
    if (v4 == v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CF0);
      v5 = OUTLINED_FUNCTION_23_46();
      v6 = _swift_stdlib_malloc_size(v5);
      OUTLINED_FUNCTION_3_99(v6);
    }

    if (v2 != v1)
    {
      OUTLINED_FUNCTION_39_37();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1C739D3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_14_9();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;
    sub_1C75504FC();
    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_13_5();
}

uint64_t sub_1C739D494(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for MusicKeywordCompletion();
      result = sub_1C7550BBC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v1;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

uint64_t sub_1C739D504(uint64_t result, unint64_t *a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    if (result)
    {
      sub_1C6F65BE8(0, a2);
      result = sub_1C7550BBC();
      *((result & 0xFFFFFFFFFFFFFF8) + 0x10) = v2;
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

void sub_1C739D5B0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2169F8);
  v2 = sub_1C7551AEC();
  v3 = v2;
  v4 = 0;
  v26 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v25 = v2 + 64;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = (*(v26 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      v19 = *(*(v26 + 56) + 8 * v15);
      swift_getObjectType();
      sub_1C75504FC();
      v20 = PNTextEmbeddingResult.calibratedScoreForImageSearch(with:)(v19);
      *(v25 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v21 = (v3[6] + 16 * v15);
      *v21 = v18;
      v21[1] = v17;
      *(v3[7] + 8 * v15) = v20;
      v22 = v3[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v3[2] = v24;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        swift_unknownObjectRelease();
        return;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1C739D74C(void *a1)
{
  v1 = [a1 fetchType];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C755068C();

  return v3;
}

unint64_t sub_1C739D7B0()
{
  result = qword_1EDD0FAE8;
  if (!qword_1EDD0FAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC215608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0FAE8);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryChapterGenerator()
{
  result = qword_1EDD08250;
  if (!qword_1EDD08250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C739D868()
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

uint64_t sub_1C739D944(uint64_t a1)
{
  v2 = type metadata accessor for Hastings.Feature();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C739D9A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Hastings.Feature();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C739DA04(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

id sub_1C739DA64(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C6FE369C(result, a2, a3, a4 & 1);
  }

  return result;
}

void sub_1C739DA7C(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_1C6FCA52C(a1, a2, a3, a4 & 1);
  }
}

id sub_1C739DA94(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C7550B3C();

  v6 = [a3 fetchAssetsWithUUIDs:v5 options:a2];

  return v6;
}

uint64_t OUTLINED_FUNCTION_32_36()
{
}

uint64_t OUTLINED_FUNCTION_50_28()
{
  *(v0 - 96) = 0;
  *(v0 - 88) = 0xE000000000000000;

  return sub_1C755180C();
}

void static Cropping.Spatial3D.getCropRequirements(for:with:)(void *a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  v4 = 1;
  switch(*a2)
  {
    case 1:
      PFDeviceScreenSize();
      v47.f64[1] = v46;
      *a3 = vmulq_f64(v47, vdupq_n_s64(0x3FD555475A31A4BEuLL));
      goto LABEL_17;
    case 2:
      goto LABEL_5;
    case 3:
      OUTLINED_FUNCTION_55_1();
      v4 = sub_1C7551DBC();
LABEL_5:

      v7 = static Cropping.Spatial3D.targetSizeForWidget(square:)(v4 & 1);
      v61 = v8;
      v9 = static Cropping.Utilities.normalizedSuggestedCropRect(for:targetSize:)(a1, v7, v8);
      v59 = v10;
      v60 = v9;
      v12 = v11;
      v14 = v13;
      sub_1C754F72C();
      sub_1C754F71C();
      v16 = v15;
      v64.origin.x = static Cropping.Utilities.normalizedFaceAreaRect(for:)(a1);
      x = v64.origin.x;
      y = v64.origin.y;
      width = v64.size.width;
      height = v64.size.height;
      if (CGRectIsNull(v64) || (v65.origin.x = x, v65.origin.y = y, v65.size.width = width, v65.size.height = height, CGRectIsEmpty(v65)) || (v66.size.width = v12 * (1.0 - v16), v66.size.height = v14 * (1.0 - v16), v66.origin.x = v60 + v12 * 0.5 + v66.size.width * -0.5, v66.origin.y = v59 + v14 * 0.5 + v66.size.height * -0.5, v67.origin.x = x, v67.origin.y = y, v67.size.width = width, v67.size.height = height, CGRectContainsRect(v66, v67)))
      {
        sub_1C754F71C();
        v22 = v21 + 1.0;
        v23 = v7 * v22;
        v24 = v61 * v22;
        if (qword_1EC214158 != -1)
        {
          OUTLINED_FUNCTION_0_158();
        }

        v25 = round(v23);
        v26 = round(v24);
        v27 = sub_1C754FF1C();
        __swift_project_value_buffer(v27, qword_1EC25B948);
        v28 = a1;
        v29 = sub_1C754FEEC();
        v30 = sub_1C75511BC();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v31 = 136315906;
          v32 = [v28 localIdentifier];
          v33 = sub_1C755068C();
          v35 = v34;

          v36 = sub_1C6F765A4(v33, v35, &v63);

          *(v31 + 4) = v36;
          *(v31 + 12) = 2082;
          if (v3 == 3)
          {
            v37 = 0xE900000000000032;
          }

          else
          {
            v37 = 0xE900000000000031;
          }

          v38 = OUTLINED_FUNCTION_55_1();
          v39 = sub_1C6F765A4(v38, v37, &v63);

          *(v31 + 14) = v39;
          *(v31 + 22) = 2082;
          type metadata accessor for CGSize(0);
          v40 = sub_1C75506EC();
          v42 = sub_1C6F765A4(v40, v41, &v63);

          *(v31 + 24) = v42;
          *(v31 + 32) = 2082;
          *v62 = v25;
          *&v62[1] = v26;
          v43 = sub_1C75506EC();
          v45 = sub_1C6F765A4(v43, v44, &v63);

          *(v31 + 34) = v45;
          _os_log_impl(&dword_1C6F5C000, v29, v30, "Asset %s widget display size for %{public}s is %{public}s scaled to %{public}s", v31, 0x2Au);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        *a3 = v25;
        *(a3 + 8) = v26;
LABEL_17:
        *(a3 + 16) = 0;
      }

      else
      {
        if (qword_1EC214158 != -1)
        {
          OUTLINED_FUNCTION_0_158();
        }

        v48 = sub_1C754FF1C();
        __swift_project_value_buffer(v48, qword_1EC25B948);
        v49 = a1;
        v50 = sub_1C754FEEC();
        v51 = sub_1C755117C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v62[0] = v53;
          *v52 = 136315138;
          v54 = [v49 localIdentifier];
          v55 = sub_1C755068C();
          v57 = v56;

          v58 = sub_1C6F765A4(v55, v57, v62);

          *(v52 + 4) = v58;
          _os_log_impl(&dword_1C6F5C000, v50, v51, "Asset %s would have face area cutoff by inset", v52, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v53);
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        *a3 = xmmword_1C7569120;
LABEL_3:
        *(a3 + 16) = 1;
      }

      return;
    default:
      *a3 = 0;
      *(a3 + 8) = 0;
      goto LABEL_3;
  }
}

double static Cropping.Spatial3D.insetForSpatial3DPadding(cropRect:)(double a1, double a2, double a3)
{
  sub_1C754F72C();
  sub_1C754F71C();
  return a1 + a3 * 0.5 + (1.0 - v5) * a3 * -0.5;
}

double static Cropping.Spatial3D.targetSizeForWidget(square:)(char a1)
{
  IsIPad = PLPhysicalDeviceIsIPad();
  v3 = objc_opt_self();
  v4 = 2;
  if (IsIPad)
  {
    v4 = 4;
  }

  if (a1)
  {
    v5 = 3;
  }

  else
  {
    v5 = v4;
  }

  [v3 widgetSizeForFamily_];
  v7 = v6;
  PFDeviceScreenScale();
  return v7 * v8;
}

_BYTE *_s9Spatial3DVwst(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C739E244(uint64_t a1)
{
  v35 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v31 = v5;
  v6 = *(a1 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v38 = MEMORY[0x1E69E7CC0];
  sub_1C716D74C(0, v6, 0);
  v7 = v38;
  result = sub_1C719D92C(a1);
  v11 = result;
  v12 = 0;
  v13 = a1 + 56;
  v34 = v3;
  v30 = a1 + 64;
  v14 = 1;
  v15 = v31;
  v32 = v6;
  v33 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v11 < v14 << *(a1 + 32))
    {
      v16 = v11 >> 6;
      v17 = v14 << v11;
      if ((*(v13 + 8 * (v11 >> 6)) & (v14 << v11)) == 0)
      {
        goto LABEL_25;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_26;
      }

      v37 = v10;
      v36 = v9;
      v18 = a1;
      sub_1C754E06C();
      v19 = v15;
      v21 = *(v38 + 16);
      v20 = *(v38 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C716D74C(v20 > 1, v21 + 1, 1);
      }

      *(v38 + 16) = v21 + 1;
      result = (*(v34 + 32))(v38 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v21, v19, v35);
      if (v37)
      {
        goto LABEL_30;
      }

      v14 = 1;
      v22 = 1 << *(v18 + 32);
      if (v11 >= v22)
      {
        goto LABEL_27;
      }

      v15 = v19;
      a1 = v18;
      v13 = v33;
      v23 = *(v33 + 8 * v16);
      if ((v23 & v17) == 0)
      {
        goto LABEL_28;
      }

      if (*(a1 + 36) != v36)
      {
        goto LABEL_29;
      }

      v24 = v23 & (-2 << (v11 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v16 << 6;
        v26 = v16 + 1;
        v27 = (v30 + 8 * v16);
        while (v26 < (v22 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = OUTLINED_FUNCTION_9_78(v11, v36);
            v22 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = OUTLINED_FUNCTION_9_78(v11, v36);
LABEL_19:
        v15 = v31;
      }

      if (++v12 == v32)
      {
        return v7;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      v11 = v22;
      if (v22 < 0)
      {
        break;
      }
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
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1C739E530(uint64_t a1)
{
  v39 = sub_1C754E07C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_14();
  v38 = v5;
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v43 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v10 = sub_1C719D92C(a1);
    result = v43;
    v11 = 0;
    v12 = a1 + 56;
    v33 = a1 + 64;
    v34 = v6;
    v13 = 1;
    v35 = v3;
    v36 = a1;
    v37 = a1 + 56;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < v13 << *(a1 + 32))
      {
        v14 = v10 >> 6;
        v15 = v13 << v10;
        if ((*(v12 + 8 * (v10 >> 6)) & (v13 << v10)) == 0)
        {
          goto LABEL_24;
        }

        if (*(a1 + 36) != v8)
        {
          goto LABEL_25;
        }

        v42 = v9;
        v40 = v11;
        v41 = v8;
        v16 = result;
        (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v10, v39);
        v17 = sub_1C754E05C();
        v19 = v18;
        (*(v3 + 8))(v38, v39);
        result = v16;
        v20 = *(v16 + 16);
        if (v20 >= *(v16 + 24) >> 1)
        {
          sub_1C6F7ED9C();
          result = v16;
        }

        *(result + 16) = v20 + 1;
        v21 = result + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v19;
        v12 = v37;
        if (v42)
        {
          goto LABEL_29;
        }

        v3 = v35;
        a1 = v36;
        v13 = 1;
        v22 = 1 << *(v36 + 32);
        if (v10 >= v22)
        {
          goto LABEL_26;
        }

        v23 = *(v37 + 8 * v14);
        if ((v23 & v15) == 0)
        {
          goto LABEL_27;
        }

        if (*(v36 + 36) != v41)
        {
          goto LABEL_28;
        }

        v24 = v23 & (-2 << (v10 & 0x3F));
        if (v24)
        {
          v22 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
          v25 = v34;
        }

        else
        {
          v26 = v14 << 6;
          v27 = v14 + 1;
          v25 = v34;
          v28 = (v33 + 8 * v14);
          while (v27 < (v22 + 63) >> 6)
          {
            v30 = *v28++;
            v29 = v30;
            v26 += 64;
            ++v27;
            if (v30)
            {
              v31 = result;
              OUTLINED_FUNCTION_9_78(v10, v41);
              result = v31;
              v22 = __clz(__rbit64(v29)) + v26;
              goto LABEL_19;
            }
          }

          v32 = result;
          OUTLINED_FUNCTION_9_78(v10, v41);
          result = v32;
        }

LABEL_19:
        v11 = v40 + 1;
        if (v40 + 1 == v25)
        {
          return result;
        }

        v9 = 0;
        v8 = *(v36 + 36);
        v10 = v22;
        if (v22 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C739E834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C739E8F4;

  return SafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)(a1, a2, a3, a4);
}

uint64_t sub_1C739E8F4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t SafetyController.validateUserPromptLanguage(userPrompt:queryTokens:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[7] = a4;
  v5[8] = v4;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_1C754F38C();
  v5[9] = v6;
  v5[10] = *(v6 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C739EAC4, v4, 0);
}

uint64_t sub_1C739EAC4()
{
  v55 = v0;
  v1 = v0[7];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v0[4];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  v6 = sub_1C72E0384(v5);
  sub_1C739E244(v6);

  sub_1C706D4E4();
  v8 = sub_1C739E530(v7);

  sub_1C706D154(v8);
  v9 = sub_1C739F118(v4, v3, v2, v1) ^ 1;
  v53 = v9 & 1;
  v54 = 0;
  OUTLINED_FUNCTION_252();
  if (v9)
  {
    OUTLINED_FUNCTION_2_111();

    type metadata accessor for SafetyError(0);
    sub_1C73036D0();
    swift_allocError();
    *v17 = 3;
    goto LABEL_5;
  }

  v10 = v0[4];
  v11 = v0[5];
  LOBYTE(v53) = 17;
  v12 = *(static TextSanitizer.tokenize(_:supportedLanguage:)(v10, v11, &v53) + 16);

  if (v12 < 5)
  {
LABEL_3:
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    sub_1C707DEC4();
    v27 = static TextSanitizer.removeCategories(in:queryTokens:categories:)(v15, v14, v13, v16);
    v2 = v28;

    LOBYTE(v53) = 17;
    v29 = *(static TextSanitizer.tokenize(_:supportedLanguage:)(v27, v2, &v53) + 16);

    if (v29 < 5)
    {

      v41 = 0;
    }

    else
    {
      sub_1C75504FC();
      v30 = sub_1C754FEEC();
      v31 = sub_1C75511BC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v53 = v52;
        *v32 = 136642819;
        v0[2] = v27;
        v0[3] = v2;
        sub_1C75504FC();
        v33 = sub_1C755097C();
        v35 = sub_1C6F765A4(v33, v34, &v53);

        *(v32 + 4) = v35;
        _os_log_impl(&dword_1C6F5C000, v30, v31, "[validateUserPromptLanguage] Partial user prompt (for LID): %{sensitive}s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v52);
        MEMORY[0x1CCA5F8E0](v52, -1, -1);
        MEMORY[0x1CCA5F8E0](v32, -1, -1);
      }

      v36 = HIBYTE(v2) & 0xF;
      if ((v2 & 0x2000000000000000) == 0)
      {
        v36 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        OUTLINED_FUNCTION_3_100();
        static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v37, v38, v39, v40);

        v41 = v53;
        v53 = v53 | 0x100;
        v54 = 0;
        OUTLINED_FUNCTION_252();
        OUTLINED_FUNCTION_5_85();
        switch(v41)
        {
          case 1:
            v42 = 0;
            v43 = "confidentlySupported";
            break;
          case 2:
            v43 = "confidentlyNotSupported";
            break;
          case 3:
            v42 = 0;
            v43 = "probablyNotSupported";
            break;
          default:
            goto LABEL_30;
        }

        goto LABEL_30;
      }

      v41 = 256;
    }

    v53 = v41;
    v54 = 0;
    OUTLINED_FUNCTION_252();
    LOBYTE(v41) = 0;
    OUTLINED_FUNCTION_5_85();
LABEL_30:
    if (v42 && (v43 | 0x8000000000000000) == 0x80000001C7596500)
    {
      goto LABEL_32;
    }

    v50 = OUTLINED_FUNCTION_7_79();

    if (v50)
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_2_111();
    type metadata accessor for SafetyError(0);
    sub_1C73036D0();
    swift_allocError();
    *v51 = v41;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v2, v1[3]);
    OUTLINED_FUNCTION_27();
    v18 = OUTLINED_FUNCTION_4_89();
    v19(v18);

    v20 = v0[1];
    v21 = 0;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_3_100();
  static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v23, v24, v25, v26);
  v44 = v53;
  v53 = v53;
  v54 = 0;
  OUTLINED_FUNCTION_252();
  v45 = 1;
  v46 = "unsupportedCharacters";
  switch(v44)
  {
    case 1:
      v45 = 0;
      v46 = "confidentlySupported";
      break;
    case 2:
      v46 = "confidentlyNotSupported";
      break;
    case 3:
      v45 = 0;
      v46 = "probablyNotSupported";
      break;
    default:
      break;
  }

  if (v45 && (v46 | 0x8000000000000000) == 0x80000001C7596500)
  {
  }

  else
  {
    v47 = OUTLINED_FUNCTION_7_79();

    if ((v47 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

LABEL_32:

LABEL_33:
  __swift_project_boxed_opaque_existential_1(v0[7], v1[3]);
  OUTLINED_FUNCTION_27();
  v48 = OUTLINED_FUNCTION_4_89();
  v49(v48);

  v20 = v0[1];
  v21 = 1;
LABEL_6:

  return v20(v21);
}

uint64_t sub_1C739F118(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v4;
  v63 = a2;
  v10 = sub_1C754F38C();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4[3];
  v54 = a4;
  __swift_project_boxed_opaque_existential_1(a4, v13);
  v55 = v12;
  sub_1C754F1CC();
  if (*(a3 + 16))
  {
    v15 = sub_1C754FEEC();
    v16 = sub_1C75511BC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1C6F5C000, v15, v16, "[validateUserPromptGibberish] The user prompt has annotations, it is not considered gibberish", v17, 2u);
      MEMORY[0x1CCA5F8E0](v17, -1, -1);
    }

    LOBYTE(v18) = 1;
    goto LABEL_5;
  }

  v51 = v6;
  v21 = sub_1C72E0384(v14);
  sub_1C739E244(v21);

  sub_1C706D4E4();
  v23 = sub_1C739E530(v22);
  v24 = v5;

  v25 = sub_1C706D154(v23);
  v66 = 17;
  result = static TextSanitizer.tokenize(_:supportedLanguage:)(a1, v63, &v66);
  v26 = result;
  v61 = *(result + 16);
  if (v61)
  {
    v50 = v10;
    v27 = 0;
    v60 = v51 + OBJC_IVAR____TtC18PhotosIntelligence16SafetyController_storyPhotoLibraryContext;
    v59 = "unsupportedCharacters";
    v62 = 0x80000001C7596500;
    v28 = (result + 56);
    v58 = "confidentlySupported";
    v52 = "probablyNotSupported";
    v53 = "confidentlyNotSupported";
    while (1)
    {
      if (v61 == v27)
      {

        LOBYTE(v18) = 1;
        v10 = v50;
        goto LABEL_5;
      }

      if (v27 >= *(v26 + 16))
      {
        __break(1u);
        return result;
      }

      v29 = v26;
      v31 = *(v28 - 3);
      v30 = *(v28 - 2);
      v32 = *(v28 - 1);
      v33 = *v28;
      sub_1C75504FC();
      v57 = v32;
      v34 = MEMORY[0x1CCA5CC40](v31, v30, v32, v33);
      static TextSanitizer.validateLanguageWithLexicon(_:supportedLanguageIdentifiers:storyGenerationCache:)(v34, v35, v25, &v65);
      if (v24)
      {

        __swift_project_boxed_opaque_existential_1(v54, v54[3]);
        v18 = v55;
        sub_1C754F1AC();
        (*(v56 + 8))(v18, v50);
        return v18 & 1;
      }

      v36 = v59;
      switch(v65)
      {
        case 1:
        case 3:
          goto LABEL_16;
        case 2:
          v36 = v53;
          break;
        default:
          break;
      }

      if ((v36 | 0x8000000000000000) == v62)
      {
      }

      else
      {
LABEL_16:
        v63 = 0;
        v37 = sub_1C7551DBC();

        if ((v37 & 1) == 0)
        {

          sub_1C75504FC();
          v41 = sub_1C754FEEC();
          v42 = sub_1C75511BC();

          if (os_log_type_enabled(v41, v42))
          {
            v43 = swift_slowAlloc();
            v44 = swift_slowAlloc();
            v64 = v44;
            *v43 = 136642819;
            v45 = MEMORY[0x1CCA5CC40](v31, v30, v57, v33);
            v47 = v46;

            v48 = sub_1C6F765A4(v45, v47, &v64);

            *(v43 + 4) = v48;
            _os_log_impl(&dword_1C6F5C000, v41, v42, "[validateUserPromptGibberish] The user prompt has no annotation, and the token %{sensitive}s was not inferred as in a currently supported languages, the user prompt is then considered gibberish", v43, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v44);
            MEMORY[0x1CCA5F8E0](v44, -1, -1);
            MEMORY[0x1CCA5F8E0](v43, -1, -1);
          }

          else
          {
          }

          LOBYTE(v18) = 0;
          v10 = v50;
          goto LABEL_5;
        }

        v24 = v63;
      }

      v28 += 4;
      ++v27;
      v26 = v29;
    }
  }

  v38 = sub_1C754FEEC();
  v39 = sub_1C75511BC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_1C6F5C000, v38, v39, "[validateUserPromptGibberish] The user prompt tokenization is empty, it can be considered gibberish", v40, 2u);
    MEMORY[0x1CCA5F8E0](v40, -1, -1);
  }

  LOBYTE(v18) = 0;
LABEL_5:
  __swift_project_boxed_opaque_existential_1(v54, v54[3]);
  v19 = v55;
  sub_1C754F1AC();
  (*(v56 + 8))(v19, v10);
  return v18 & 1;
}

void sub_1C739F768(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (PFOSVariantHasInternalDiagnostics() && *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v3 = sub_1C754FF1C();
    oslog = OUTLINED_FUNCTION_18_55(v3, qword_1EDD289D8);
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = OUTLINED_FUNCTION_127();
      *v5 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, a2, "LLM Call: Skipping public diagnostics as user is internal.", v5, 2u);
      OUTLINED_FUNCTION_109();
    }
  }

  else
  {
    if (qword_1EC214138 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC25B920);
    sub_1C73A1920(&qword_1EC25B928, __dst);

    os_unfair_lock_unlock(&dword_1EC25B920);
  }
}

void sub_1C739F8D8(const void *a1, uint64_t a2)
{
  v4 = sub_1C75506DC();
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PFOSVariantHasInternalDiagnostics() && *(a2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v24 = sub_1C754FF1C();
    v30 = OUTLINED_FUNCTION_18_55(v24, qword_1EDD289D8);
    sub_1C755118C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v30, v25))
    {
      v26 = OUTLINED_FUNCTION_127();
      *v26 = 0;
      _os_log_impl(&dword_1C6F5C000, v30, a2, "Storyteller: Skipping public diagnostics as user is internal.", v26, 2u);
      OUTLINED_FUNCTION_109();
    }

    v27 = v30;
  }

  else
  {
    memcpy(__dst, a1, sizeof(__dst));
    v8 = sub_1C73A1B7C(__dst);
    v9 = sub_1C6F66C14(__dst);
    if (v8 == 1)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159();
      }

      v10 = sub_1C754FF1C();
      v11 = OUTLINED_FUNCTION_18_55(v10, qword_1EDD289D8);
      v12 = sub_1C755118C();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v13 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v13);
      v14 = "Storyteller: Wrong enum send to function.";
LABEL_13:
      _os_log_impl(&dword_1C6F5C000, v11, v12, v14, v4, 2u);
      OUTLINED_FUNCTION_109();
LABEL_14:

      return;
    }

    v15 = v9;
    v16 = *v9;
    *&v31 = 0xA3A7365756C6156;
    *(&v31 + 1) = 0xE800000000000000;
    sub_1C739FD74(v16);
    v18 = v17;
    MEMORY[0x1CCA5CD70]();

    MEMORY[0x1CCA5CD70](2570, 0xE200000000000000);
    v35 = v31;
    MEMORY[0x1CCA5CD70](0xA3A79726F7453, 0xE700000000000000);
    v19 = *(v15 + 3);
    v31 = *(v15 + 1);
    v32 = v19;
    v20 = *(v15 + 7);
    v33 = *(v15 + 5);
    v34 = v20;
    v21 = FreeformStoryCompletionSync.description.getter();
    MEMORY[0x1CCA5CD70](v21);

    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    sub_1C75506CC();
    sub_1C755069C();
    OUTLINED_FUNCTION_89_0();

    (*(v5 + 8))(v7, v4);
    if (v18 >> 60 == 15)
    {
      if (qword_1EDD07C00 != -1)
      {
        OUTLINED_FUNCTION_0_159();
      }

      v22 = sub_1C754FF1C();
      v11 = OUTLINED_FUNCTION_18_55(v22, qword_1EDD289D8);
      v12 = sub_1C755119C();
      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_14;
      }

      v23 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v23);
      v14 = "Storyteller: couldn't encode string.";
      goto LABEL_13;
    }

    if (qword_1EC214140 != -1)
    {
      OUTLINED_FUNCTION_1_118();
    }

    os_unfair_lock_lock(&dword_1EC25B930);
    sub_1C739FF6C(&qword_1EC25B938);
    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214120 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_11_66();
    sub_1C7161C08();
    v28 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v28, v29);
  }
}

void sub_1C739FD74(uint64_t a1)
{
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
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (v7 << 10) | (16 * v10);
    v12 = (*(a1 + 48) + v11);
    v13 = (*(a1 + 56) + v11);
    v15 = *v13;
    v14 = v13[1];
    v16 = sub_1C73A1430(*v12, v12[1]);
    if (v17)
    {
      v22 = v16;
      v23 = v17;
      sub_1C75504FC();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](592442, 0xE300000000000000);
      MEMORY[0x1CCA5CD70](v15, v14);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v8 = v20;
      }

      v18 = *(v8 + 16);
      if (v18 >= *(v8 + 24) >> 1)
      {
        sub_1C6FB1814();
        v8 = v21;
      }

      *(v8 + 16) = v18 + 1;
      v19 = v8 + 16 * v18;
      *(v19 + 32) = v22;
      *(v19 + 40) = v23;
    }
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
      sub_1C703328C();
      sub_1C75505FC();

      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v7;
    if (v5)
    {
      v7 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

double sub_1C739FF6C(uint64_t *a1)
{
  if (qword_1EC214120 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B900;
  v2 = *algn_1EC25B908;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Story Details");
  *(v6 + 62) = -4864;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

uint64_t sub_1C73A0040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[113] = a5;
  v5[112] = a4;
  v6 = sub_1C75506DC();
  v5[114] = v6;
  OUTLINED_FUNCTION_18(v6);
  v5[115] = v7;
  v5[116] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754DF6C();
  v5[117] = v8;
  OUTLINED_FUNCTION_18(v8);
  v5[118] = v9;
  v5[119] = OUTLINED_FUNCTION_77();
  sub_1C754F2FC();
  v5[120] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  v5[121] = v10;
  OUTLINED_FUNCTION_18(v10);
  v5[122] = v11;
  v5[123] = OUTLINED_FUNCTION_77();

  return MEMORY[0x1EEE6DFA0](sub_1C73A01B0, 0, 0);
}

uint64_t sub_1C73A01B0()
{
  if (PFOSVariantHasInternalDiagnostics() && *(*(v0 + 896) + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) != 1)
  {
    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v27 = sub_1C754FF1C();
    v23 = OUTLINED_FUNCTION_18_55(v27, qword_1EDD289D8);
    v24 = sub_1C755118C();
    if (!os_log_type_enabled(v23, v24))
    {
      goto LABEL_18;
    }

    v25 = OUTLINED_FUNCTION_127();
    *v25 = 0;
    v26 = "Query Understanding: Skipping public diagnostics as user is internal.";
    goto LABEL_17;
  }

  memcpy((v0 + 16), *(v0 + 904), 0x90uLL);
  if (sub_1C73A1B7C(v0 + 16) == 1)
  {
    v1 = *(v0 + 904);
    v2 = sub_1C6F66C14(v0 + 16);
    memcpy((v0 + 304), v2, 0x90uLL);
    v4 = *(v0 + 304);
    v3 = *(v0 + 312);
    *(v0 + 992) = v4;
    *(v0 + 1000) = v3;
    v5 = *(v0 + 336);
    *(v0 + 1008) = *(v0 + 320);
    *(v0 + 1024) = v5;
    v6 = *(v0 + 440);
    *(v0 + 1040) = v6;
    type metadata accessor for PromptSanitizer();
    v7 = swift_allocObject();
    *(v0 + 1048) = v7;
    v8 = OBJC_IVAR____TtC18PhotosIntelligence15PromptSanitizer_logger;
    memcpy((v0 + 160), v1, 0x90uLL);
    v9 = sub_1C6F66C14(v0 + 160);
    sub_1C73A1B88(v9, v0 + 448);
    if (qword_1EDD0B9A0 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 984);
    v11 = *(v0 + 976);
    v12 = *(v0 + 968);
    v13 = sub_1C754FF1C();
    *(v0 + 1056) = v13;
    v14 = __swift_project_value_buffer(v13, qword_1EDD0B9A8);
    (*(*(v13 - 8) + 16))(v7 + v8, v14, v13);
    *(v0 + 1064) = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    OUTLINED_FUNCTION_10_2();
    sub_1C7069CE4(0xD000000000000018, v15, v16);
    sub_1C754E11C();
    *(v0 + 1072) = sub_1C754E04C();
    *(v0 + 1080) = v17;
    (*(v11 + 8))(v10, v12);
    v18 = MEMORY[0x1E69E7CC0];
    *(v0 + 592) = MEMORY[0x1E69E7CC0];
    *(v0 + 600) = v18;
    *(v0 + 608) = v18;
    *(v0 + 616) = v18;
    *(v0 + 624) = v18;
    *(v0 + 632) = v18;
    *(v0 + 640) = v18;
    *(v0 + 648) = v18;
    *(v0 + 656) = v18;
    *(v0 + 664) = v18;
    sub_1C754F41C();
    *(v0 + 856) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0);
    *(v0 + 864) = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_0((v0 + 832));
    MEMORY[0x1CCA5B6D0]();
    sub_1C754F30C();
    v19 = swift_task_alloc();
    *(v0 + 1088) = v19;
    *v19 = v0;
    v19[1] = sub_1C73A0644;
    v20 = *(v0 + 960);

    return PromptSanitizer.sanitizePrompt(from:extendedTokens:queryTokens:eventRecorder:progressReporter:)(v4, (v0 + 592), v6, v0 + 832, v20);
  }

  sub_1C6F66C14(v0 + 16);
  if (qword_1EDD07C00 != -1)
  {
    OUTLINED_FUNCTION_0_159();
  }

  v22 = sub_1C754FF1C();
  v23 = OUTLINED_FUNCTION_18_55(v22, qword_1EDD289D8);
  v24 = sub_1C755118C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = OUTLINED_FUNCTION_127();
    *v25 = 0;
    v26 = "Query Understanding: Wrong enum send to function.";
LABEL_17:
    _os_log_impl(&dword_1C6F5C000, v23, v24, v26, v25, 2u);
    OUTLINED_FUNCTION_109();
  }

LABEL_18:

  OUTLINED_FUNCTION_7_80();

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_1C73A0644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v5;
  *(*v5 + 1096) = v4;

  if (v4)
  {

    memcpy(v9 + 84, v9 + 74, 0x50uLL);
    sub_1C7027A58((v9 + 84));
    v10 = sub_1C73A0DA8;
  }

  else
  {
    v9[138] = a4;
    v9[139] = a2;
    v9[140] = a1;
    memcpy(v9 + 94, v9 + 74, 0x50uLL);
    sub_1C7027A58((v9 + 94));

    __swift_destroy_boxed_opaque_existential_1((v9 + 104));
    v10 = sub_1C73A07D8;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

void sub_1C73A07D8()
{
  v48 = v0;
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1120);
  v46 = *(v0 + 1096);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 1072);
  v5 = *(v0 + 1064);
  OUTLINED_FUNCTION_22_1();
  sub_1C755180C();

  OUTLINED_FUNCTION_13_72();
  __dst[0] = v6;
  __dst[1] = v7;
  MEMORY[0x1CCA5CD70](v4, v3);

  v8 = OUTLINED_FUNCTION_5_86();
  MEMORY[0x1CCA5CD70](v8);
  sub_1C754DF5C();
  v9 = sub_1C754DECC();
  v10 = OUTLINED_FUNCTION_323();
  v11(v10);
  v12 = [v5 stringFromDate_];

  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000011);
  if (v1)
  {
  }

  else
  {
    v1 = 0x80000001C75AD310;
    v2 = 0xD000000000000029;
  }

  OUTLINED_FUNCTION_19_64();
  v16 = *(v0 + 1008);
  MEMORY[0x1CCA5CD70](v2, v1);

  if (v16)
  {
    v17 = *(v0 + 1032);
    v18 = *(v0 + 1024);
    v16 = *(v0 + 1016);
    v19 = *(v0 + 1008);
    v20 = *(v0 + 1000);
    OUTLINED_FUNCTION_22_1();
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](v3 + 8, 0x80000001C75AD360);
    *(v0 + 872) = *(v16 + 16);
    v21 = sub_1C7551D8C();
    v3 = v22;
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_19_64();

    MEMORY[0x1CCA5CD70](v3 + 5, 0x80000001C75AD380);
    *(v0 + 880) = *(v18 + 16);
    v23 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v23);

    v24 = OUTLINED_FUNCTION_6_93();
    MEMORY[0x1CCA5CD70](v24);
    *(v0 + 888) = v17;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_15_71();
    v25 = sub_1C75505FC();
    v27 = v26;
    sub_1C7318A10(v20, v19);

    MEMORY[0x1CCA5CD70](v25, v27);

    MEMORY[0x1CCA5CD70](__dst[0], __dst[1]);
  }

  v28 = *(v0 + 928);
  v29 = *(v0 + 920);
  v30 = *(v0 + 912);
  OUTLINED_FUNCTION_22_1();
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](v3 + 3, 0x80000001C75AD340);
  memcpy(__dst, (v0 + 352), 0x51uLL);
  QueryAnnotation.description.getter();
  v32 = v31;
  v34 = v33;
  sub_1C70476BC(v0 + 352);
  MEMORY[0x1CCA5CD70](v32, v34);

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  sub_1C75506CC();
  sub_1C755069C();
  OUTLINED_FUNCTION_89_0();

  (*(v29 + 8))(v28, v30);
  if (v16 >> 60 == 15)
  {

    if (qword_1EDD07C00 != -1)
    {
      OUTLINED_FUNCTION_0_159();
    }

    v35 = OUTLINED_FUNCTION_18_55(*(v0 + 1056), qword_1EDD289D8);
    sub_1C755119C();
    OUTLINED_FUNCTION_16_1();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v37);
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v38, v39, "Query Understanding: couldn't encode string.");
      OUTLINED_FUNCTION_109();
    }

    v40 = *(v0 + 992);

LABEL_21:
    OUTLINED_FUNCTION_7_80();

    v45 = *(v0 + 8);

    v45();
    return;
  }

  if (qword_1EC214140 != -1)
  {
    OUTLINED_FUNCTION_1_118();
  }

  os_unfair_lock_lock(&dword_1EC25B930);
  sub_1C73A135C(&qword_1EC25B938);
  if (!v46)
  {

    os_unfair_lock_unlock(&dword_1EC25B930);
    if (qword_1EC214128 != -1)
    {
      OUTLINED_FUNCTION_4_90();
    }

    v41 = *(v0 + 1064);
    v42 = *(v0 + 992);
    OUTLINED_FUNCTION_11_66();
    sub_1C7161C08();

    v43 = OUTLINED_FUNCTION_15_1();
    sub_1C70B5C10(v43, v44);
    goto LABEL_21;
  }

  os_unfair_lock_unlock(&dword_1EC25B930);
}

uint64_t sub_1C73A0DA8()
{
  v38 = v0;
  OUTLINED_FUNCTION_19_64();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));
  v2 = v0[135];
  v3 = v0[134];
  v4 = v0[133];
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  sub_1C755180C();

  OUTLINED_FUNCTION_13_72();
  __dst[0] = v8;
  __dst[1] = v9;
  MEMORY[0x1CCA5CD70](v3, v2);

  v10 = OUTLINED_FUNCTION_5_86();
  MEMORY[0x1CCA5CD70](v10);
  sub_1C754DF5C();
  v11 = sub_1C754DECC();
  (*(v6 + 8))(v5, v7);
  v12 = [v4 stringFromDate_];

  v13 = sub_1C755068C();
  v15 = v14;

  MEMORY[0x1CCA5CD70](v13, v15);

  OUTLINED_FUNCTION_10_2();
  MEMORY[0x1CCA5CD70](0xD000000000000011);
  v16 = v0[126];
  MEMORY[0x1CCA5CD70](v1 + 24, 0x80000001C75AD310);

  if (v16)
  {
    v17 = v0[129];
    v18 = v0[128];
    v19 = v0[127];
    v36 = v0[126];
    v20 = v0[125];
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](v1 + 8, 0x80000001C75AD360);
    v0[109] = *(v19 + 16);
    OUTLINED_FUNCTION_323();
    v21 = sub_1C7551D8C();
    v1 = v22;
    MEMORY[0x1CCA5CD70](v21);
    OUTLINED_FUNCTION_19_64();

    MEMORY[0x1CCA5CD70](v1 + 5, 0x80000001C75AD380);
    v0[110] = *(v18 + 16);
    OUTLINED_FUNCTION_323();
    v23 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v23);

    v24 = OUTLINED_FUNCTION_6_93();
    MEMORY[0x1CCA5CD70](v24);
    v0[111] = v17;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    sub_1C703328C();
    OUTLINED_FUNCTION_15_71();
    sub_1C75505FC();
    sub_1C7318A10(v20, v36);

    v25 = OUTLINED_FUNCTION_323();
    MEMORY[0x1CCA5CD70](v25);

    MEMORY[0x1CCA5CD70](__dst[0], __dst[1]);
  }

  v26 = v0[116];
  v27 = v0[115];
  v28 = v0[114];
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_1C755180C();
  sub_1C75504FC();

  MEMORY[0x1CCA5CD70](v1 + 3, 0x80000001C75AD340);
  memcpy(__dst, v0 + 44, 0x51uLL);
  QueryAnnotation.description.getter();
  OUTLINED_FUNCTION_89_0();
  sub_1C70476BC((v0 + 44));
  v29 = OUTLINED_FUNCTION_15_1();
  MEMORY[0x1CCA5CD70](v29);

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  sub_1C75506CC();
  sub_1C755069C();
  OUTLINED_FUNCTION_89_0();

  (*(v27 + 8))(v26, v28);
  if (qword_1EC214140 != -1)
  {
    OUTLINED_FUNCTION_1_118();
  }

  os_unfair_lock_lock(&dword_1EC25B930);
  sub_1C73A135C(&qword_1EC25B938);

  os_unfair_lock_unlock(&dword_1EC25B930);
  if (qword_1EC214128 != -1)
  {
    OUTLINED_FUNCTION_4_90();
  }

  v30 = v0[133];
  v31 = v0[124];
  OUTLINED_FUNCTION_11_66();
  sub_1C7161C08();

  v32 = OUTLINED_FUNCTION_15_1();
  sub_1C70B5C10(v32, v33);
  OUTLINED_FUNCTION_7_80();

  v34 = v0[1];

  return v34();
}

double sub_1C73A135C(uint64_t *a1)
{
  if (qword_1EC214128 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC25B910;
  v2 = *algn_1EC25B918;
  sub_1C75504FC();
  sub_1C6FB0D6C();
  v4 = *(*a1 + 16);
  sub_1C6FB1594();
  v5 = *a1;
  *(v5 + 16) = v4 + 1;
  v6 = v5 + (v4 << 6);
  *(v6 + 32) = v3;
  *(v6 + 40) = v2;
  strcpy((v6 + 48), "Query Details");
  *(v6 + 62) = -4864;
  result = 0.0;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0u;
  *a1 = v5;
  return result;
}

unint64_t sub_1C73A1430(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_2();
  v5 = v3 == 0xD000000000000012 && v4 == a2;
  if (v5 || (v6 = v3, (OUTLINED_FUNCTION_6_2() & 1) != 0))
  {
    OUTLINED_FUNCTION_8_72();
    return 0xD00000000000001ALL;
  }

  v7 = 0x6E6F63206566694CLL;
  OUTLINED_FUNCTION_10_2();
  v10 = v6 == 0xD000000000000012 && v9 == a2;
  if (!v10 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
  {
    v7 = 0x69742079726F7453;
    v11 = v6 == 0x74695479726F7473 && a2 == 0xEA0000000000656CLL;
    if (!v11 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
    {
      OUTLINED_FUNCTION_10_2();
      v13 = v6 == 0xD000000000000010 && v12 == a2;
      if (v13 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
      {
        goto LABEL_23;
      }

      v7 = 0x6B6361626C6C6146;
      v14 = v6 == 0x6B6361626C6C6166 && a2 == 0xED00007972657551;
      if (!v14 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_10_2();
        v16 = v6 == 0xD000000000000015 && v15 == a2;
        if (v16 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
        {
          OUTLINED_FUNCTION_8_72();
          return 0xD000000000000012;
        }

        v7 = 0x7972657551;
        OUTLINED_FUNCTION_10_2();
        v18 = v6 == 0xD000000000000018 && v17 == a2;
        if (!v18 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
        {
          v7 = 0x7254207475706E49;
          OUTLINED_FUNCTION_10_2();
          v20 = v6 == 0xD000000000000013 && v19 == a2;
          if (!v20 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
          {
            v7 = 0x54207463656C6553;
            OUTLINED_FUNCTION_10_2();
            v22 = v6 == 0xD000000000000019 && v21 == a2;
            if (!v22 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
            {
              v7 = 0x6B63616279616C50;
              OUTLINED_FUNCTION_10_2();
              v24 = v6 == 0xD000000000000016 && v23 == a2;
              if (!v24 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
              {
                v7 = 0x2072657470616843;
                OUTLINED_FUNCTION_10_2();
                v26 = v6 == 0xD000000000000013 && v25 == a2;
                if (!v26 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
                {
                  OUTLINED_FUNCTION_10_2();
                  v28 = v6 == 0xD000000000000013 && v27 == a2;
                  if (v28 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                  {
LABEL_23:
                    OUTLINED_FUNCTION_8_72();
                    return 0xD000000000000014;
                  }

                  OUTLINED_FUNCTION_10_2();
                  v30 = v6 == 0xD000000000000013 && v29 == a2;
                  if (v30 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                  {
                    OUTLINED_FUNCTION_8_72();
                    return 0xD00000000000001DLL;
                  }

                  else
                  {
                    v31 = v6 == 0x6D726F6665657266 && a2 == 0xEF73746550736148;
                    if (v31 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                    {
                      OUTLINED_FUNCTION_8_72();
                      return 0xD000000000000019;
                    }

                    else
                    {
                      OUTLINED_FUNCTION_10_2();
                      v33 = v6 == 0xD00000000000001FLL && v32 == a2;
                      if (v33 || (OUTLINED_FUNCTION_6_2() & 1) != 0)
                      {
                        OUTLINED_FUNCTION_8_72();
                        return 0xD000000000000015;
                      }

                      else
                      {
                        v7 = 0x636F6C20656D6F48;
                        OUTLINED_FUNCTION_10_2();
                        v35 = v6 == 0xD00000000000001FLL && v34 == a2;
                        if (!v35 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
                        {
                          v7 = 0x61636F6C20706F54;
                          OUTLINED_FUNCTION_10_2();
                          v37 = v6 == 0xD00000000000001FLL && v36 == a2;
                          if (!v37 && (OUTLINED_FUNCTION_6_2() & 1) == 0)
                          {
                            v38 = v6 == 0x737469617274 && a2 == 0xE600000000000000;
                            if (!v38 && (OUTLINED_FUNCTION_6_2() & 1) == 0 && (v6 != 0x6D6F725072657375 || a2 != 0xEA00000000007470))
                            {
                              OUTLINED_FUNCTION_6_2();
                            }

                            return 0;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v7;
}

void sub_1C73A1920(uint64_t *a1, const void *a2)
{
  sub_1C73A1EE0(a2, v7);
  sub_1C73A1BF8(a1, a2);
  if (*(*a1 + 16) < v4)
  {
    __break(1u);
  }

  else
  {
    sub_1C71596B4(v4);
    sub_1C6FB0DD0();
    v5 = *(*a1 + 16);
    sub_1C6FB15F0();
    v6 = *a1;
    *(v6 + 16) = v5 + 1;
    memcpy((v6 + 144 * v5 + 32), a2, 0x90uLL);
    *a1 = v6;
    sub_1C73A1EE0(a2, v7);
  }
}

uint64_t sub_1C73A19E4(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v4 = 0;
  v5 = *(a1 + 16);
  for (i = (a1 + 32); ; i += 144)
  {
    if (v5 == v4)
    {
      sub_1C73A1F3C(a2);
      return 0;
    }

    memcpy(v12, i, sizeof(v12));
    memcpy(v13, i, sizeof(v13));
    memcpy(v14, __dst, sizeof(v14));
    memcpy(v15, i, sizeof(v15));
    v7 = sub_1C73A1B7C(v15);
    sub_1C6F66C14(v15);
    if (v7 != 1)
    {
      break;
    }

    memcpy(v17, a2, sizeof(v17));
    v8 = sub_1C73A1B7C(v17);
    sub_1C6F66C14(v17);
    if (v8 == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    sub_1C73A1EE0(v12, v11);
    sub_1C73A1EE0(a2, v11);
    sub_1C73A1F90(v13);
    ++v4;
  }

  memcpy(v16, a2, sizeof(v16));
  v9 = sub_1C73A1B7C(v16);
  sub_1C6F66C14(v16);
  if (v9 == 1)
  {
    goto LABEL_7;
  }

LABEL_9:
  sub_1C73A1EE0(v12, v11);
  sub_1C73A1EE0(a2, v11);
  sub_1C73A1F90(v13);
  sub_1C73A1F3C(a2);
  return v4;
}

uint64_t sub_1C73A1B88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B070);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1C73A1BF8(uint64_t *a1, const void *a2)
{
  memcpy(__dst, a2, sizeof(__dst));
  v5 = *a1;
  sub_1C73A1EE0(a2, v23);
  v6 = sub_1C73A19E4(v5, a2);
  if (v2)
  {
    sub_1C73A1F3C(a2);
    return;
  }

  if (v7)
  {
LABEL_4:
    sub_1C73A1F3C(a2);
    return;
  }

  v8 = v6;
  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    for (i = 144 * v6 + 176; ; i += 144)
    {
      v11 = *(v5 + 16);
      if (v9 == v11)
      {
        goto LABEL_4;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      memcpy(__src, (v5 + i), sizeof(__src));
      memmove(v23, (v5 + i), 0x90uLL);
      memcpy(v24, __dst, sizeof(v24));
      memcpy(v25, __src, sizeof(v25));
      v12 = sub_1C73A1B7C(v25);
      sub_1C6F66C14(v25);
      if (v12 == 1)
      {
        memcpy(v27, a2, sizeof(v27));
        v13 = sub_1C73A1B7C(v27);
        sub_1C6F66C14(v27);
        if (v13 == 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        memcpy(v26, a2, sizeof(v26));
        v16 = sub_1C73A1B7C(v26);
        sub_1C6F66C14(v26);
        if (v16 != 1)
        {
LABEL_22:
          sub_1C73A1EE0(a2, v21);
          sub_1C73A1EE0(__src, v21);
          sub_1C73A1F90(v23);
          goto LABEL_23;
        }
      }

      sub_1C73A1EE0(a2, v21);
      sub_1C73A1EE0(__src, v21);
      sub_1C73A1F90(v23);
      if (v9 != v8)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_25;
        }

        v14 = *(v5 + 16);
        if (v8 >= v14)
        {
          goto LABEL_26;
        }

        memcpy(v20, (v5 + 32 + 144 * v8), sizeof(v20));
        if (v9 >= v14)
        {
          goto LABEL_27;
        }

        memcpy(v21, (v5 + i), sizeof(v21));
        sub_1C73A1EE0(v20, v19);
        sub_1C73A1EE0(v21, v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C70E42F0();
          v5 = v17;
        }

        if (v8 >= *(v5 + 16))
        {
          goto LABEL_28;
        }

        v15 = v5 + 144 * v8;
        memcpy(v18, (v15 + 32), sizeof(v18));
        memcpy((v15 + 32), v21, 0x90uLL);
        sub_1C73A1F3C(v18);
        if (v9 >= *(v5 + 16))
        {
          goto LABEL_29;
        }

        memcpy(v19, (v5 + i), sizeof(v19));
        memcpy((v5 + i), v20, 0x90uLL);
        sub_1C73A1F3C(v19);
        *a1 = v5;
      }

      ++v8;
LABEL_23:
      ++v9;
    }
  }

  __break(1u);
}

uint64_t sub_1C73A1F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B078);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void static PNSuggestionWallpaperUtilities.filterMessagesBackdropSuggestions(_:fallback:)(uint64_t a1, char a2)
{
  v4 = sub_1C6FB6304();
  for (i = 0; v4 != i; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1CCA5DDD0](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_16;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (a2)
    {
      if ([v6 type] != 8)
      {
        goto LABEL_9;
      }
    }

    else if (!sub_1C73A2124(v6))
    {
LABEL_9:

      continue;
    }

    sub_1C755192C();
    sub_1C755196C();
    sub_1C755197C();
    sub_1C755193C();
  }
}

BOOL sub_1C73A2124(void *a1)
{
  if ([a1 type] != 14)
  {
    return 0;
  }

  if ([a1 subtype] == 1502)
  {
    return 1;
  }

  return [a1 subtype] == 1501;
}

uint64_t static PNSuggestionWallpaperUtilities.fetchFallbackMessagesBackdropSuggestions(in:)(uint64_t a1)
{
  v3 = a1;
  v2 = xmmword_1C7585E50;
  return MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v2);
}

uint64_t static PNSuggestionWallpaperUtilities.fetchSharedWithYouMessagesBackdropSuggestions(in:)(uint64_t a1)
{
  v3 = a1;
  v2 = xmmword_1C756AD70;
  return MessagesBackdrop.Fetcher.fetchMessagesBackdropSuggestions(presentationTarget:)(&v2);
}

uint64_t StoryMusicCurator.requestMaestroMusicCuration(for:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 592) = v0;
  *(v1 + 584) = v4;
  *(v1 + 576) = v5;
  v6 = sub_1C754F38C();
  *(v1 + 600) = v6;
  OUTLINED_FUNCTION_18(v6);
  *(v1 + 608) = v7;
  *(v1 + 616) = swift_task_alloc();
  *(v1 + 624) = swift_task_alloc();
  *(v1 + 672) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C73A2410()
{
  v84 = v0;
  v2 = [*(*(v0 + 592) + 16) photoAnalysisClient];
  *(v0 + 632) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 672);
    __swift_project_boxed_opaque_existential_1(*(v0 + 584), *(*(v0 + 584) + 24));
    v76 = v3;
    if (v4)
    {
      OUTLINED_FUNCTION_6_94();
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46();
      }

      v5 = *(v0 + 576);
      v6 = sub_1C754FF1C();
      __swift_project_value_buffer(v6, &dword_1EDD28D48);
      sub_1C75504FC();
      v7 = sub_1C754FEEC();
      sub_1C755118C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_41_0();
        v3 = OUTLINED_FUNCTION_31_0();
        v83[0] = v3;
        *v5 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
        v8 = sub_1C75504BC();
        v1 = v9;
        v10 = sub_1C6F765A4(v8, v9, v83);

        *(v5 + 4) = v10;
        OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v11, v12, "(PAD pass thru) Request Flex Music Curation with options: %s");
        __swift_destroy_boxed_opaque_existential_1(v3);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v13 = *(v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88);
      OUTLINED_FUNCTION_99_1();
      v14 = sub_1C7551AEC();
      v15 = 0;
      v16 = v13 + 64;
      OUTLINED_FUNCTION_7_81();
      v77 = v17;
      for (i = v13; v3; *(v14 + 16) = v31)
      {
        OUTLINED_FUNCTION_84_5();
LABEL_14:
        v20 = v18 | (v15 << 6);
        v21 = (*(i + 48) + 16 * v20);
        v22 = v21[1];
        v81 = *v21;
        sub_1C6F774EC(*(i + 56) + 32 * v20, v0 + 272);
        sub_1C6F774EC(v0 + 272, v0 + 304);
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
        if (swift_dynamicCast())
        {
          v23 = *(v0 + 512);
          v24 = *(v0 + 520);
        }

        else
        {
          sub_1C6F774EC(v0 + 272, v0 + 336);
          v23 = sub_1C75506EC();
          v24 = v25;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 272);
        OUTLINED_FUNCTION_24_39((v20 >> 3) & 0x1FFFFFFFFFFFFFF8, v75, v76, v77);
        v27 = (v26 + 16 * v20);
        *v27 = v81;
        v27[1] = v22;
        v28 = (*(v14 + 56) + 16 * v20);
        *v28 = v23;
        v28[1] = v24;
        v29 = *(v14 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_50;
        }
      }

      v19 = v15;
      while (1)
      {
        v15 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        if (v15 >= v1)
        {
          v67 = v0 + 16;
          v68 = *(v0 + 592) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
          swift_beginAccess();
          *(v68 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 156)) = v14;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
          v69 = sub_1C755048C();
          *(v0 + 656) = v69;
          *(v0 + 16) = v0;
          *(v0 + 56) = v0 + 528;
          *(v0 + 24) = sub_1C73A2E8C;
          v70 = swift_continuation_init();
          *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
          *(v0 + 144) = MEMORY[0x1E69E9820];
          *(v0 + 152) = 1107296256;
          *(v0 + 160) = sub_1C73A3188;
          *(v0 + 168) = &block_descriptor_35;
          *(v0 + 176) = v70;
          [v76 requestFlexMusicCurationWithOptions:v69 reply:v0 + 144];
          goto LABEL_45;
        }

        ++v19;
        if (*(v16 + 8 * v15))
        {
          OUTLINED_FUNCTION_34_35();
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    else
    {
      OUTLINED_FUNCTION_6_94();
      if (qword_1EDD0ED88 != -1)
      {
        OUTLINED_FUNCTION_0_46();
      }

      v41 = *(v0 + 576);
      v42 = sub_1C754FF1C();
      __swift_project_value_buffer(v42, &dword_1EDD28D48);
      sub_1C75504FC();
      v43 = sub_1C754FEEC();
      sub_1C755118C();

      if (OUTLINED_FUNCTION_140_0())
      {
        OUTLINED_FUNCTION_41_0();
        v3 = OUTLINED_FUNCTION_31_0();
        v83[0] = v3;
        *v41 = 136315138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
        v44 = sub_1C75504BC();
        v1 = v45;
        v46 = sub_1C6F765A4(v44, v45, v83);

        *(v41 + 4) = v46;
        OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v47, v48, "(PAD pass thru) Request Apple Music Curation with options: %s");
        __swift_destroy_boxed_opaque_existential_1(v3);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v49 = *(v0 + 576);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AD88);
      OUTLINED_FUNCTION_24_2();
      v50 = sub_1C7551AEC();
      v51 = 0;
      v52 = v49 + 64;
      OUTLINED_FUNCTION_7_81();
      v78 = v53;
      for (j = v49; v3; *(v50 + 16) = v66)
      {
        OUTLINED_FUNCTION_84_5();
LABEL_37:
        v56 = v54 | (v51 << 6);
        v57 = (*(j + 48) + 16 * v56);
        v58 = v57[1];
        v82 = *v57;
        sub_1C6F774EC(*(j + 56) + 32 * v56, v0 + 368);
        sub_1C6F774EC(v0 + 368, v0 + 400);
        sub_1C75504FC();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
        if (swift_dynamicCast())
        {
          v59 = *(v0 + 544);
          v60 = *(v0 + 552);
        }

        else
        {
          sub_1C6F774EC(v0 + 368, v0 + 432);
          v59 = sub_1C75506EC();
          v60 = v61;
        }

        __swift_destroy_boxed_opaque_existential_1(v0 + 368);
        OUTLINED_FUNCTION_24_39((v56 >> 3) & 0x1FFFFFFFFFFFFFF8, v75, v76, v78);
        v63 = (v62 + 16 * v56);
        *v63 = v82;
        v63[1] = v58;
        v64 = (*(v50 + 56) + 16 * v56);
        *v64 = v59;
        v64[1] = v60;
        v65 = *(v50 + 16);
        v30 = __OFADD__(v65, 1);
        v66 = v65 + 1;
        if (v30)
        {
          goto LABEL_51;
        }
      }

      v55 = v51;
      while (1)
      {
        v51 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          break;
        }

        if (v51 >= v1)
        {
          v67 = v0 + 80;
          v71 = *(v0 + 592) + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
          swift_beginAccess();
          *(v71 + *(type metadata accessor for StoryMusicCurationDiagnostics() + 152)) = v50;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
          v72 = sub_1C755048C();
          *(v0 + 640) = v72;
          *(v0 + 80) = v0;
          *(v0 + 120) = v0 + 560;
          *(v0 + 88) = sub_1C73A2CE8;
          v73 = swift_continuation_init();
          v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
          OUTLINED_FUNCTION_3_101(v74);
          *(v0 + 216) = 1107296256;
          *(v0 + 224) = sub_1C73A3188;
          *(v0 + 232) = &block_descriptor_4;
          *(v0 + 240) = v73;
          [v76 requestMusicCurationWithOptions:v72 reply:v0 + 208];
LABEL_45:

          return MEMORY[0x1EEE6DEC8](v67);
        }

        ++v55;
        if (*(v52 + 8 * v51))
        {
          OUTLINED_FUNCTION_34_35();
          goto LABEL_37;
        }
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  if (qword_1EDD0ED88 != -1)
  {
LABEL_52:
    OUTLINED_FUNCTION_0_46();
  }

  v32 = sub_1C754FF1C();
  __swift_project_value_buffer(v32, &dword_1EDD28D48);
  v33 = sub_1C754FEEC();
  v34 = sub_1C755119C();
  if (OUTLINED_FUNCTION_21_0(v34))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v35, v36, "(PAD pass thru) curateMusicFromMaestroKeywordScores photoAnalysisClientNotAvailable");
    OUTLINED_FUNCTION_109();
  }

  sub_1C70EB0F0();
  v37 = swift_allocError();
  OUTLINED_FUNCTION_30_40(v37, v38);

  OUTLINED_FUNCTION_43();

  return v39();
}

uint64_t sub_1C73A2CE8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 648) = *(v3 + 112);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A2E8C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 664) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 640);
  v12 = *(v10 + 632);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A30DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 656);
  v12 = *(v10 + 632);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A3188(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    v8 = sub_1C755068C();

    return sub_1C6FF0C9C(v4, v8, v7);
  }
}

uint64_t StoryMusicCurator.requestRecentlyUsedSongs(for:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 416) = v4;
  *(v1 + 424) = v0;
  v5 = sub_1C754F38C();
  *(v1 + 432) = v5;
  OUTLINED_FUNCTION_18(v5);
  *(v1 + 440) = v6;
  *(v1 + 448) = swift_task_alloc();
  *(v1 + 456) = swift_task_alloc();
  *(v1 + 504) = *v3;
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73A3938()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 480) = *(v3 + 112);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v23 = *(v20 + 472);
  sub_1C75504FC();

  v24 = *(v20 + 456);
  v25 = *(v20 + 432);
  v26 = *(v20 + 440);
  __swift_project_boxed_opaque_existential_1(*(v20 + 416), *(*(v20 + 416) + 24));
  OUTLINED_FUNCTION_99_1();
  sub_1C754F1AC();
  (*(v26 + 8))(v24, v25);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  sub_1C755118C();

  v29 = OUTLINED_FUNCTION_140_0();
  v30 = *(v20 + 464);
  if (v29)
  {
    OUTLINED_FUNCTION_41_0();
    v31 = OUTLINED_FUNCTION_31_0();
    a10 = v31;
    *v25 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    v32 = sub_1C75504BC();
    v34 = v33;

    v35 = sub_1C6F765A4(v32, v34, &a10);

    *(v25 + 4) = v35;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v36, v37, "(PAD pass thru) requestRecentlyUsedSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_3();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C73A3C10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 496) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A3D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_309();
  a19 = v21;
  a20 = v22;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v23 = *(v20 + 488);
  sub_1C75504FC();

  v25 = *(v20 + 440);
  v24 = *(v20 + 448);
  v26 = *(v20 + 432);
  __swift_project_boxed_opaque_existential_1(*(v20 + 416), *(*(v20 + 416) + 24));
  OUTLINED_FUNCTION_99_1();
  sub_1C754F1AC();
  (*(v25 + 8))(v24, v26);
  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  sub_1C755118C();

  v29 = OUTLINED_FUNCTION_140_0();
  v30 = *(v20 + 464);
  if (v29)
  {
    OUTLINED_FUNCTION_41_0();
    v31 = OUTLINED_FUNCTION_31_0();
    a10 = v31;
    *v26 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    v32 = sub_1C75504BC();
    v34 = v33;

    v35 = sub_1C6F765A4(v32, v34, &a10);

    *(v26 + 4) = v35;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v36, v37, "(PAD pass thru) requestRecentlyUsedSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_53();
  OUTLINED_FUNCTION_20_3();

  return v40(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
}

uint64_t sub_1C73A3EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 472);
  v12 = *(v10 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C73A3F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = *(v10 + 488);
  v12 = *(v10 + 464);
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  v13 = OUTLINED_FUNCTION_9_79();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t StoryMusicCurator.requestAndCacheAppleMusicSongs(with:eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[21] = v2;
  v1[22] = v0;
  v1[20] = v3;
  v4 = sub_1C754F38C();
  v1[23] = v4;
  OUTLINED_FUNCTION_18(v4);
  v1[24] = v5;
  v1[25] = swift_task_alloc();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C73A40D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = [*(*(v12 + 176) + 16) photoAnalysisClient];
  *(v12 + 208) = v13;
  if (v13)
  {
    v14 = v13;
    __swift_project_boxed_opaque_existential_1(*(v12 + 168), *(*(v12 + 168) + 24));
    sub_1C754F1CC();
    v15 = sub_1C7550B3C();
    *(v12 + 216) = v15;
    sub_1C75504DC();
    v16 = sub_1C755048C();
    *(v12 + 224) = v16;

    *(v12 + 16) = v12;
    *(v12 + 56) = v12 + 144;
    *(v12 + 24) = sub_1C73A4394;
    v17 = swift_continuation_init();
    *(v12 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217910);
    *(v12 + 80) = MEMORY[0x1E69E9820];
    *(v12 + 88) = 1107296256;
    *(v12 + 96) = sub_1C73A3188;
    *(v12 + 104) = &block_descriptor_14_0;
    *(v12 + 112) = v17;
    [v14 requestSongsForAdamIDs:v15 options:v16 reply:v12 + 80];
    OUTLINED_FUNCTION_44();

    return MEMORY[0x1EEE6DEC8](v18);
  }

  else
  {
    if (qword_1EDD0ED88 != -1)
    {
      OUTLINED_FUNCTION_0_46();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, &dword_1EDD28D48);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v22))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v23, v24, "(PAD pass thru) requestAndCacheAppleMusicSongs photoAnalysisClientNotAvailable");
      OUTLINED_FUNCTION_109();
    }

    sub_1C70EB0F0();
    v25 = swift_allocError();
    OUTLINED_FUNCTION_30_40(v25, v26);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_44();

    return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }
}

uint64_t sub_1C73A4394()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 232) = *(v3 + 48);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C73A4490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_94_0();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_115_0();
  a18 = v20;
  v24 = *(v20 + 216);
  v26 = *(v20 + 144);
  v25 = *(v20 + 152);

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_46();
  }

  v27 = sub_1C754FF1C();
  __swift_project_value_buffer(v27, &dword_1EDD28D48);
  OUTLINED_FUNCTION_24_2();
  sub_1C75504FC();
  v28 = sub_1C754FEEC();
  v29 = sub_1C755118C();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_41_0();
    v30 = OUTLINED_FUNCTION_17_6();
    a9 = v30;
    *v21 = 136315138;
    *(v21 + 4) = sub_1C6F765A4(v26, v25, &a9);
    OUTLINED_FUNCTION_21_2(&dword_1C6F5C000, v31, v32, "(PAD pass thru) requestAndCacheAppleMusicSongs response: %s");
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  v33 = *(v20 + 200);
  v34 = *(v20 + 208);
  v35 = *(v20 + 184);
  v36 = *(v20 + 192);
  __swift_project_boxed_opaque_existential_1(*(v20 + 168), *(*(v20 + 168) + 24));
  sub_1C754F1AC();

  (*(v36 + 8))(v33, v35);

  OUTLINED_FUNCTION_44();

  return v40(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
}

uint64_t sub_1C73A4618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_309();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[28];
  v15 = v12[26];
  v14 = v12[27];
  v17 = v12[24];
  v16 = v12[25];
  v18 = v12[23];
  swift_willThrow();

  OUTLINED_FUNCTION_1_119();
  (*(v17 + 8))(v16, v18);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_20_3();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C73A46BC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;

    return sub_1C6FF5694(v4, v5);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    v7 = sub_1C75504AC();

    return sub_1C6FF5698(v4, v7);
  }
}

uint64_t AssetRichDescriptionsDataSource.init(storyPhotoLibraryContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = a1[2];
  sub_1C7047818();
  result = sub_1C755146C();
  *a2 = result;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t AssetRichDescriptionsDataSource.getGeneralHighlightDictionary(for:progressReporter:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v3[2] = a1;
  v3[3] = v6;
  type metadata accessor for AssetMediaAnalyzer();
  v7 = swift_task_alloc();
  v3[4] = v7;
  *v7 = v3;
  v7[1] = sub_1C73A492C;
  v8 = MEMORY[0x1E69E7CC0];
  v9 = MEMORY[0x1E69E7CC0];

  return static AssetMediaAnalyzer.requestHighlightInformation(for:queries:characterUUIDs:progressReporter:)(a1, v8, v9, a2);
}

uint64_t sub_1C73A492C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = sub_1C73A4B88;
  }

  else
  {
    v5 = sub_1C73A4A34;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C73A4A34()
{
  v2 = v1[3];
  sub_1C75504FC();
  sub_1C755118C();
  OUTLINED_FUNCTION_21_4();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[5];
  if (v4)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    v6 = swift_slowAlloc();
    *v6 = 134218496;
    *(v6 + 4) = sub_1C6FB6304();
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v5 + 16);
    *(v6 + 22) = 2048;
    v7 = sub_1C6FB6304();
    v8 = *(v5 + 16);

    v10 = v7 - v8;
    if (__OFSUB__(v7, v8))
    {
      __break(1u);
      return result;
    }

    v11 = v1[3];
    *(v6 + 24) = v10;

    _os_log_impl(&dword_1C6F5C000, v11, v0, "Highlight information for %ld fully processed video assets are requested, %ld successfully returned and %ld dropped.", v6, 0x20u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v12 = v1[5];
  v13 = v1[1];

  return v13(v12);
}

uint64_t sub_1C73A4B88()
{
  v1 = *(v0 + 48);
  sub_1C755119C();
  sub_1C754FDFC();
  sub_1C75504DC();

  v2 = OUTLINED_FUNCTION_4_91();

  return v3(v2);
}

uint64_t AssetRichDescriptionsDataSource.findVideosWithoutHighlight(from:progressReporter:testDictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 128) = a2;
  *(v4 + 136) = a3;
  *(v4 + 120) = a1;
  *(v4 + 144) = *v3;
  *(v4 + 200) = *(v3 + 16);
  *(v4 + 160) = *(v3 + 24);
  v5 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C73A4C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  v16 = v14[15];
  v17 = swift_allocObject();
  v18 = MEMORY[0x1E69E7CC0];
  v14[21] = v17;
  *(v17 + 16) = v18;
  v19 = (v17 + 16);
  if ([v16 count] < 1 || (v20 = v14[15], v21 = objc_msgSend(objc_opt_self(), sel_baseVideoHighlightVersion), v22 = swift_allocObject(), *(v22 + 16) = v21, *(v22 + 24) = v17, v14[6] = sub_1C73A6E7C, v14[7] = v22, v14[2] = MEMORY[0x1E69E9820], v14[3] = 1107296256, v14[4] = sub_1C7067B48, v14[5] = &block_descriptor_36, v23 = _Block_copy(v14 + 2), , , objc_msgSend(v20, sel_enumerateObjectsUsingBlock_, v23), _Block_release(v23), swift_beginAccess(), !sub_1C6FB6304()))
  {
    v45 = v14[16];

    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v46 + 8))(v45);
LABEL_19:
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_17_1();

    v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
    return;
  }

  v24 = v14[17];
  if (!*(v24 + 16))
  {
    v56 = v14[20];
    v57 = *(v14 + 100);
    *(v14 + 4) = *(v14 + 9);
    *(v14 + 40) = v57;
    v14[11] = v56;
    v14[22] = *v19;
    sub_1C75504FC();
    v58 = swift_task_alloc();
    v14[23] = v58;
    *v58 = v14;
    v58[1] = sub_1C73A509C;
    OUTLINED_FUNCTION_17_1();

    AssetRichDescriptionsDataSource.getGeneralHighlightDictionary(for:progressReporter:)(v59, v60);
    return;
  }

  v25 = v14[16];
  v26 = sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  v28 = *(v27 + 8);
  sub_1C75504FC();
  v28(v25, v26);
  v29 = *(v24 + 16);
  v30 = v14[17];
  v31 = v14[21];
  if (!v29)
  {

    goto LABEL_19;
  }

  a10 = sub_1C7080ED4(v14[17]);
  v32 = *(v31 + 16);
  sub_1C6FB6304();
  OUTLINED_FUNCTION_18_56();
  v33 = 0;
  a11 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v26 == v33)
    {

      v55 = sub_1C706D154(a11);
      sub_1C7238810(a10, v55);

      goto LABEL_19;
    }

    if (v15)
    {
      v34 = MEMORY[0x1CCA5DDD0](v33, v32);
    }

    else
    {
      if (v33 >= *(v30 + 16))
      {
        goto LABEL_28;
      }

      v34 = *(v32 + 8 * v33 + 32);
    }

    v35 = v34;
    v36 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    v37 = sub_1C70CAC04(v34);
    v39 = v38;

    ++v33;
    if (v39)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_8_73();
        a11 = v43;
      }

      v41 = *(a11 + 16);
      v40 = *(a11 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_15(v40);
        sub_1C6FB1814();
        a11 = v44;
      }

      *(a11 + 16) = v41 + 1;
      v42 = a11 + 16 * v41;
      *(v42 + 32) = v37;
      *(v42 + 40) = v39;
      v33 = v36;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t sub_1C73A509C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *(v6 + 192) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73A51A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  v17 = *(v15 + 192);
  v18 = *(v15 + 168);
  if (*(v17 + 16))
  {
    a10 = sub_1C7080ED4(*(v15 + 192));
    v19 = *(v18 + 16);
    sub_1C6FB6304();
    OUTLINED_FUNCTION_18_56();
    v20 = 0;
    a11 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v14 == v20)
      {

        v32 = sub_1C706D154(a11);
        sub_1C7238810(a10, v32);

        goto LABEL_17;
      }

      if (v16)
      {
        v21 = MEMORY[0x1CCA5DDD0](v20, v19);
      }

      else
      {
        if (v20 >= *(v17 + 16))
        {
          goto LABEL_21;
        }

        v21 = *(v19 + 8 * v20 + 32);
      }

      v22 = v21;
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v24 = sub_1C70CAC04(v21);
      v26 = v25;

      ++v20;
      if (v26)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_8_73();
          a11 = v30;
        }

        v28 = *(a11 + 16);
        v27 = *(a11 + 24);
        if (v28 >= v27 >> 1)
        {
          OUTLINED_FUNCTION_15(v27);
          OUTLINED_FUNCTION_137_0();
          sub_1C6FB1814();
          a11 = v31;
        }

        *(a11 + 16) = v28 + 1;
        v29 = a11 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v20 = v23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {

LABEL_17:
    OUTLINED_FUNCTION_4_91();
    OUTLINED_FUNCTION_17_1();

    v35(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, a14);
  }
}

void sub_1C73A5350(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ([a1 isVideo])
  {
    v8 = [a1 mediaAnalysisProperties];
    v9 = [v8 mediaAnalysisVersion];

    if (a4 < 1 || v9 >= a4)
    {
      swift_beginAccess();
      v11 = a1;
      MEMORY[0x1CCA5D040]();
      sub_1C6FB6328(*((*(a5 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_1C7550BEC();
      swift_endAccess();
    }
  }
}

uint64_t AssetRichDescriptionsDataSource.generateAssetSummaryInfos(for:characterUUIDs:chapter:eventRecorder:progressReporter:diagnosticContext:)(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 368) = a5;
  *(v7 + 376) = a6;
  *(v7 + 352) = a2;
  *(v7 + 360) = a4;
  *(v7 + 344) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088);
  *(v7 + 384) = swift_task_alloc();
  v9 = type metadata accessor for AssetSummaryInfo(0);
  *(v7 + 392) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v7 + 400) = v10;
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = swift_task_alloc();
  v11 = sub_1C754F2FC();
  *(v7 + 424) = v11;
  OUTLINED_FUNCTION_18(v11);
  *(v7 + 432) = v12;
  *(v7 + 440) = swift_task_alloc();
  *(v7 + 448) = swift_task_alloc();
  *(v7 + 456) = swift_task_alloc();
  *(v7 + 464) = swift_task_alloc();
  v13 = sub_1C754F38C();
  *(v7 + 472) = v13;
  OUTLINED_FUNCTION_18(v13);
  *(v7 + 480) = v14;
  *(v7 + 488) = swift_task_alloc();
  memcpy((v7 + 16), a3, 0x68uLL);
  *(v7 + 496) = *v6;
  *(v7 + 632) = *(v6 + 16);
  *(v7 + 512) = *(v6 + 24);
  v15 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C73A562C()
{
  v1 = *(v0 + 360);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v2 = *(v0 + 504);
  v3 = *(v0 + 360);
  sub_1C754F2BC();
  sub_1C754F2BC();
  __swift_project_boxed_opaque_existential_1(v3, v1[3]);
  sub_1C754F15C();
  v4 = v2;

  v5 = sub_1C75504FC();
  v6 = sub_1C706D154(v5);
  v7 = StoryGenerationCache.assetSummaryInfo(for:)(v6);
  *(v0 + 520) = v7;

  v8 = sub_1C75504FC();
  sub_1C706D154(v8);
  v9 = *(v7 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = *(v0 + 416);
    v12 = *(v0 + 400);
    v45 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v10 = v45;
    v43 = v7;
    v13 = v7 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      v15 = *(v0 + 416);
      sub_1C73A7000(v13, v15, type metadata accessor for AssetSummaryInfo);
      v16 = *v15;
      v17 = *(v11 + 8);
      sub_1C75504FC();
      sub_1C73A6E84(v15);
      v19 = *(v45 + 16);
      v18 = *(v45 + 24);
      if (v19 >= v18 >> 1)
      {
        OUTLINED_FUNCTION_15(v18);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C();
      }

      *(v45 + 16) = v19 + 1;
      v20 = v45 + 16 * v19;
      *(v20 + 32) = v16;
      *(v20 + 40) = v17;
      v13 += v14;
      --v9;
    }

    while (v9);
    v7 = v43;
  }

  v21 = *(v0 + 496);
  sub_1C74C3924();
  v23 = v22;

  v24 = sub_1C71CD85C(v23);
  *(v0 + 320) = v24;
  sub_1C755117C();
  OUTLINED_FUNCTION_21_4();
  if (os_log_type_enabled(v21, v25))
  {
    v26 = *(v0 + 496);
    sub_1C75504FC();
    v27 = swift_slowAlloc();
    *v27 = 134218240;
    *(v27 + 4) = *(v7 + 16);

    *(v27 + 12) = 2048;
    *(v27 + 14) = *(v24 + 16);
    _os_log_impl(&dword_1C6F5C000, v26, v10, "Found %ld cached asset summary infos, and need to fetch asset summary infos for %ld assets", v27, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  v29 = *(v0 + 504);
  v28 = *(v0 + 512);
  v30 = *(v0 + 632);
  v31 = *(v0 + 496);
  v42 = *(v0 + 448);
  v44 = *(v0 + 464);
  v32 = *(v0 + 432);
  v41 = *(v0 + 424);
  v40 = objc_autoreleasePoolPush();
  __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
  v33 = swift_task_alloc();
  *(v33 + 16) = v31;
  *(v33 + 24) = v29;
  *(v33 + 32) = v30;
  *(v33 + 40) = v28;
  *(v33 + 48) = v0 + 320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F80);
  sub_1C754F1DC();
  *(v0 + 528) = 0;

  v34 = *(v0 + 328);
  *(v0 + 536) = v34;
  objc_autoreleasePoolPop(v40);
  *(v0 + 264) = v31;
  *(v0 + 272) = v29;
  *(v0 + 280) = v30;
  *(v0 + 288) = v28;
  v35 = *(v32 + 32);
  *(v0 + 544) = v35;
  *(v0 + 552) = (v32 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v35(v42, v44, v41);
  v36 = sub_1C75504DC();
  *(v0 + 560) = v36;
  v37 = swift_task_alloc();
  *(v0 + 568) = v37;
  *v37 = v0;
  v37[1] = sub_1C73A5B80;
  v38 = *(v0 + 448);

  return AssetRichDescriptionsDataSource.findVideosWithoutHighlight(from:progressReporter:testDictionary:)(v34, v38, v36);
}

uint64_t sub_1C73A5B80()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *(v6 + 576) = v5;

  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C73A5C88()
{
  v1 = v0[72];
  v2 = v1;
  if (*(v1 + 16))
  {
    v3 = v0[47];
    v2 = v0[72];
    if (v3)
    {
      sub_1C75504FC();
      sub_1C7162B24(0xD000000000000011, 0x80000001C75AD600, v3, v1);
      v2 = v0[72];
    }
  }

  swift_beginAccess();
  v4 = v0[40];
  v50 = v4 + 32;
  v52 = *(v4 + 16);
  v5 = v0;
  v6 = v4;
  sub_1C75504FC();
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v47 = v1;
  for (i = v5; ; v5 = i)
  {
    v5[73] = v8;
LABEL_6:
    if (v7 == v52)
    {
      break;
    }

    if (v7 >= *(v6 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v9 = (v50 + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
    ++v7;
    if (*(v1 + 16))
    {
      sub_1C7551F3C();
      sub_1C75504FC();
      sub_1C75505AC();
      v12 = sub_1C7551FAC();
      v13 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v14 = v12 & v13;
        if (((*(v2 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        v15 = (*(v2 + 48) + 16 * v14);
        if (*v15 != v11 || v15[1] != v10)
        {
          v17 = sub_1C7551DBC();
          v12 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_6;
      }
    }

    else
    {
      sub_1C75504FC();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6F7ED9C();
    }

    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    if (v19 >= v18 >> 1)
    {
      OUTLINED_FUNCTION_15(v18);
      OUTLINED_FUNCTION_137_0();
      sub_1C6F7ED9C();
    }

    *(v8 + 16) = v19 + 1;
    v20 = v8 + 16 * v19;
    *(v20 + 32) = v11;
    *(v20 + 40) = v10;
    v1 = v47;
  }

  v21 = i[62];

  i[40] = v8;

  sub_1C755117C();
  OUTLINED_FUNCTION_21_4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = i[62];
    sub_1C75504FC();
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = *(v1 + 16);

    _os_log_impl(&dword_1C6F5C000, v23, v6, "Not fetching %ld asset summary infos because they are videos without highlight uuid set.", v24, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  v25 = i[66];
  sub_1C754F2DC();
  if (v25)
  {
    v26 = i[67];
    v27 = i[60];
    v28 = i[61];
    v51 = i[59];
    v29 = i[54];
    v45 = i[53];
    v46 = i[57];
    v30 = i[45];
    v48 = i[46];

    __swift_destroy_boxed_opaque_existential_1((i + 28));
    v31 = *(v29 + 8);
    v31(v46, v45);
    OUTLINED_FUNCTION_10_3(v30);
    sub_1C754F1AC();
    (*(v27 + 8))(v28, v51);
    v31(v48, v45);
    OUTLINED_FUNCTION_1_120();

    OUTLINED_FUNCTION_43();

    v32();
  }

  else
  {
    v33 = *(i + 316);
    v34 = i[63];
    (i[68])(i[55], i[57], i[53]);
    sub_1C75504FC();
    v35 = v34;

    v36 = [v35 librarySpecificFetchOptions];
    i[74] = v36;
    [v36 setSharingFilter_];

    v37 = objc_opt_self();
    v38 = v36;
    v39 = sub_1C6FCA158(v8, v36, v37);
    i[75] = v39;

    if (!v39)
    {
LABEL_34:
      __break(1u);
      return;
    }

    memcpy(i + 15, i + 2, 0x68uLL);
    v40 = swift_task_alloc();
    i[76] = v40;
    *v40 = i;
    v40[1] = sub_1C73A61E0;
    v41 = i[64];
    v42 = i[55];
    v43 = i[47];
    v44 = i[44];

    sub_1C74B075C(v39, v44, i + 15, v41, (i + 28), v42, v43);
  }
}

uint64_t sub_1C73A61E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v5;
  *(v3 + 624) = v0;

  if (v0)
  {

    v6 = sub_1C73A6B44;
  }

  else
  {
    v6 = sub_1C73A62F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C73A62F4()
{
  v78 = v0;
  v1 = *(v0 + 624);
  v2 = *(v0 + 600);
  v3 = *(v0 + 584);
  v5 = *(v0 + 504);
  v4 = *(v0 + 512);
  v6 = *(v0 + 632);

  v7 = objc_autoreleasePoolPush();
  sub_1C75504FC();
  v8 = objc_autoreleasePoolPush();
  sub_1C74C0AD4(v3, v5, v6, v4, &rawValue);
  if (!v1)
  {
    v69 = v7;
    v11 = *(v0 + 536);
    v12 = *(v0 + 512);
    v13 = *(v0 + 632);
    v75 = *(v0 + 496);

    objc_autoreleasePoolPop(v8);
    v14 = rawValue;
    __swift_project_boxed_opaque_existential_1((v0 + 224), *(v0 + 248));
    v15 = swift_task_alloc();
    *(v15 + 16) = v75;
    *(v15 + 32) = v13;
    *(v15 + 40) = v12;
    *(v15 + 48) = v11;
    *(v15 + 56) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B090);
    sub_1C754F1DC();

    v16 = *(v0 + 336);
    sub_1C754F2DC();
    v68 = v16;
    v17 = *(v0 + 584);
    v18 = *(v17 + 16);
    v19 = *(v0 + 616);
    if (!v18)
    {

      v20._rawValue = MEMORY[0x1E69E7CC0];
LABEL_21:
      v48 = *(v0 + 512);
      v49 = *(v0 + 496);
      objc_autoreleasePoolPop(v69);
      StoryGenerationCache.cache(_:)(v20);
      sub_1C755117C();
      OUTLINED_FUNCTION_21_4();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = *(v0 + 496);
        sub_1C75504FC();
        v52 = swift_slowAlloc();
        *v52 = 134217984;
        *(v52 + 4) = *(v20._rawValue + 2);

        _os_log_impl(&dword_1C6F5C000, v51, v48, "Caching %ld new asset summary infos", v52, 0xCu);
        OUTLINED_FUNCTION_109();
      }

      sub_1C754F2EC();
      v53 = *(v0 + 496);
      v54 = sub_1C755117C();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = *(v0 + 496);
        v56 = *(v0 + 344);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v57 = swift_slowAlloc();
        *v57 = 134218240;
        v58 = *(v56 + 16);

        *(v57 + 4) = v58;

        *(v57 + 12) = 2048;
        rawValue = v20._rawValue;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C6FD27FC();
        v59 = rawValue[2];

        *(v57 + 14) = v59;

        _os_log_impl(&dword_1C6F5C000, v55, v54, "Needed %ld asset summary info. Found %ld summary infos from the cache and through fetching.", v57, 0x16u);
        OUTLINED_FUNCTION_109();
      }

      v60 = *(v0 + 536);
      v61 = *(v0 + 504);
      v63 = *(v0 + 480);
      v62 = *(v0 + 488);
      v64 = *(v0 + 472);
      v65 = *(v0 + 360);
      rawValue = v20._rawValue;
      sub_1C6FD27FC();

      __swift_destroy_boxed_opaque_existential_1(v0 + 224);
      __swift_project_boxed_opaque_existential_1(v65, v65[3]);
      sub_1C754F1AC();
      (*(v63 + 8))(v62, v64);

      OUTLINED_FUNCTION_329();

      __asm { BRAA            X2, X16 }
    }

    v72 = *(v0 + 400);
    v73 = *(v0 + 408);
    v71 = *(v0 + 392);
    rawValue = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    sub_1C716DEA0(0, v18, 0);
    v20._rawValue = rawValue;
    v21 = (v17 + 40);
    v22 = v68;
    v74 = v19;
    while (1)
    {
      v24 = *(v21 - 1);
      v23 = *v21;
      v25 = *(v19 + 16);
      sub_1C75504FC();
      if (v25 && (v26 = sub_1C6F78124(v24, v23), (v27 & 1) != 0))
      {
        v28 = (*(v19 + 56) + 16 * v26);
        v29 = v28[1];
        v76 = *v28;
        sub_1C75504FC();
      }

      else
      {
        v76 = 0;
        v29 = 0;
      }

      if (!*(v22 + 16))
      {
        break;
      }

      v30 = sub_1C6F78124(v24, v23);
      v31 = *(v0 + 384);
      if ((v32 & 1) == 0)
      {
        goto LABEL_15;
      }

      v33 = v30;
      v70 = v20._rawValue;
      v34 = *(v22 + 56);
      v35 = type metadata accessor for AssetDescriptionInfo(0);
      OUTLINED_FUNCTION_12();
      v37 = v34 + *(v36 + 72) * v33;
      v20._rawValue = v70;
      sub_1C73A7000(v37, v31, type metadata accessor for AssetDescriptionInfo);
      v38 = v31;
      v39 = 0;
      v40 = v35;
      v22 = v68;
LABEL_16:
      __swift_storeEnumTagSinglePayload(v38, v39, 1, v40);
      v41 = *(v0 + 408);
      sub_1C73A6F2C(*(v0 + 384), v41 + *(v71 + 24));
      *v41 = v24;
      v73[1] = v23;
      v73[2] = v76;
      v73[3] = v29;
      rawValue = v20._rawValue;
      v43 = *(v20._rawValue + 2);
      v42 = *(v20._rawValue + 3);
      if (v43 >= v42 >> 1)
      {
        OUTLINED_FUNCTION_15(v42);
        OUTLINED_FUNCTION_137_0();
        sub_1C716DEA0(v45, v46, v47);
        v20._rawValue = rawValue;
      }

      v44 = *(v0 + 408);
      *(v20._rawValue + 2) = v43 + 1;
      sub_1C73A6F9C(v44, v20._rawValue + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v43);
      v21 += 2;
      --v18;
      v19 = v74;
      if (!v18)
      {

        goto LABEL_21;
      }
    }

    v31 = *(v0 + 384);
LABEL_15:
    v40 = type metadata accessor for AssetDescriptionInfo(0);
    v38 = v31;
    v39 = 1;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_329();

  objc_autoreleasePoolPop(v9);
}

uint64_t sub_1C73A6B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  v15 = *(v14 + 600);
  v16 = *(v14 + 536);
  v17 = *(v14 + 504);
  v19 = *(v14 + 480);
  v18 = *(v14 + 488);
  v20 = *(v14 + 432);
  v33 = *(v14 + 424);
  v21 = *(v14 + 360);
  v31 = *(v14 + 472);
  v32 = *(v14 + 368);

  __swift_destroy_boxed_opaque_existential_1(v14 + 224);
  OUTLINED_FUNCTION_10_3(v21);
  sub_1C754F1AC();
  (*(v19 + 8))(v18, v31);
  (*(v20 + 8))(v32, v33);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, v31, v32, v33, a12, a13, a14);
}

void sub_1C73A6C90(void *a1@<X1>, unsigned __int16 a2@<W2>, void *a3@<X8>)
{
  v5 = a1;

  v6 = [v5 librarySpecificFetchOptions];
  [v6 setSharingFilter_];

  Property = static AssetDescriber.requiredFetchPropertySets.getter();
  sub_1C6FCA0EC(Property, v6);
  v8 = objc_opt_self();
  swift_beginAccess();
  v9 = sub_1C75504FC();
  v10 = sub_1C739DA94(v9, v6, v8);
  if (v10)
  {
    v11 = v10;

    *a3 = v11;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C73A6D84@<X0>(void *a1@<X1>, void *a2@<X4>, uint64_t a3@<X5>, void *a4@<X8>)
{
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v9 = sub_1C75504DC();
  v10 = objc_autoreleasePoolPush();
  sub_1C71FD578(a2, v8, a3, v9, &v12, &v13);
  objc_autoreleasePoolPop(v10);

  if (!v4)
  {
    *a4 = v13;
  }

  return result;
}

uint64_t sub_1C73A6E84(uint64_t a1)
{
  v2 = type metadata accessor for AssetSummaryInfo(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C73A6F2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B088);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A6F9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetSummaryInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A7000(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void static QueryToken.disambiguatedPersonQueryToken(with:personUUID:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v46 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - v11;
  v13 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v47 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_112();
  sub_1C754E2CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v16 = swift_allocObject();
  v45 = xmmword_1C755BAB0;
  *(v16 + 16) = xmmword_1C755BAB0;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  v17 = objc_opt_self();
  sub_1C75504FC();
  v18 = [v17 entityCategoryTypeKeyForEntityTypeCategory_];
  if (v18)
  {
    v19 = sub_1C755068C();
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D20);
    inited = swift_initStackObject();
    *(inited + 16) = v45;
    *(inited + 32) = v19;
    *(inited + 40) = v21;
    *(inited + 48) = v16;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    v18 = sub_1C75504DC();
  }

  (*(v47 + 16))(v12, v5, v13);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v13);
  if (v18)
  {
    sub_1C70C14F8(v18);
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v25 = v46;
  v26 = sub_1C7349A54(v46, a2, v12, v24);
  sub_1C6F65BE8(0, &qword_1EC217FE0);
  v27 = sub_1C71C3DE4();
  sub_1C6F65BE8(0, &qword_1EDD0CDB0);
  v28 = v27;
  *&v45 = v26;
  v29 = sub_1C734406C(v28, v26);
  v30 = [v29 suggestion];
  if (v30)
  {
    v31 = v30;
    v32 = v13;
    v33 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v33, &v55);
    sub_1C72D5B04();
  }

  else
  {
    v34 = [v29 QUToken];
    if (!v34)
    {
      v32 = v13;
      goto LABEL_11;
    }

    v31 = v34;
    v32 = v13;
    sub_1C72D5FAC(v34, v25, a2, 0, v35, v36, v37, v38, v45, *(&v45 + 1), v46, v47, v48, v49, v50, v51, v52, v53, v54, v55);
  }

LABEL_11:
  sub_1C72D533C();
  v40 = v39;
  v41 = v25;
  v43 = v42;

  (*(v47 + 8))(v5, v32);
  LOBYTE(v55) = 1;
  sub_1C75504FC();

  v44 = v55;
  *a5 = v40;
  a5[1] = v43;
  a5[2] = v41;
  a5[3] = a2;
  OUTLINED_FUNCTION_0_160(v44);
}

void static QueryToken.disambiguatedDateQueryToken(with:startDate:endDate:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v66 = a1;
  v67 = a2;
  v8 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v68 = &v62 - v16;
  sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v70 = v18;
  v71 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v69 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C754E2CC();
  v20 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
  v65 = a3;
  if (v20)
  {
    v21 = sub_1C755068C();
    v62 = a4;
    v22 = v21;
    v23 = a3;
    v25 = v24;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B098);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v22;
    *(inited + 40) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217288);
    v27 = *(v10 + 72);
    v28 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1C75604F0;
    v30 = v29 + v28;
    v31 = *(v10 + 16);
    v31(v30, v23, v8);
    a4 = v62;
    (v31)(v30 + v27);
    *(inited + 48) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217158);
    v20 = sub_1C75504DC();
  }

  v32 = v68;
  v33 = v71;
  (*(v70 + 16))(v68, v69, v71);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v33);
  if (v20)
  {
    sub_1C70C150C(v20);
    v35 = v34;
  }

  else
  {
    v35 = 0;
  }

  v37 = v66;
  v36 = v67;
  v38 = a4;
  v39 = objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v40 = sub_1C7349A54(v37, v36, v68, v35);
  v41 = *(v10 + 16);
  v42 = v63;
  v41(v63, v65, v8);
  v43 = v64;
  v41(v64, v38, v8);
  v44 = objc_allocWithZone(MEMORY[0x1E6978A98]);
  v45 = sub_1C71C8C5C(v42, v43);
  sub_1C6F65BE8(0, &qword_1EDD0CDB0);
  v46 = v45;
  v47 = v40;
  v48 = sub_1C734406C(v46, v40);
  v49 = [v48 suggestion];
  if (v49)
  {
    v50 = v49;
    v51 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v51, v74);
    sub_1C72D5B04();
  }

  else
  {
    v52 = [v48 QUToken];
    if (!v52)
    {
      goto LABEL_11;
    }

    v50 = v52;
    sub_1C72D5FAC(v52, v37, v36, 0, v53, v54, v55, v56, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73);
  }

LABEL_11:
  sub_1C72D533C();
  v58 = v57;
  v60 = v59;

  (*(v70 + 8))(v69, v71);
  v74[0] = 1;
  sub_1C75504FC();

  v61 = v74[0];
  *a5 = v58;
  a5[1] = v60;
  a5[2] = v37;
  a5[3] = v36;
  OUTLINED_FUNCTION_0_160(v61);
}

void static QueryToken.disambiguatedPersonalEventQueryToken(with:meaningLabel:momentUUIDs:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v49 = a2;
  v51 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FD8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_1C754E2FC();
  OUTLINED_FUNCTION_3_0();
  v52 = v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_112();
  sub_1C754E2CC();
  v15 = [objc_opt_self() entityCategoryTypeKeyForEntityTypeCategory_];
  if (v15)
  {
    v16 = v15;
    v17 = v5;
    v18 = sub_1C755068C();
    v20 = v19;

    v21 = objc_allocWithZone(MEMORY[0x1E6978A60]);
    sub_1C75504FC();
    sub_1C75504FC();
    v22 = sub_1C73A7E74(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v18;
    *(inited + 40) = v20;
    v5 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1C7565670;
    *(v24 + 32) = v22;
    *(inited + 48) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217150);
    v25 = sub_1C75504DC();
  }

  else
  {
    v25 = 0;
  }

  (*(v52 + 16))(v11, v5, v12);
  v50 = v12;
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v12);
  if (v25)
  {
    sub_1C70C1520(v25);
    v27 = v26;
  }

  else
  {
    v27 = 0;
  }

  v28 = v51;
  v29 = v49;
  v30 = objc_allocWithZone(MEMORY[0x1E6978A78]);
  sub_1C75504FC();
  v31 = sub_1C7349A54(v28, v29, v11, v27);
  sub_1C6F65BE8(0, &qword_1EC217FE0);
  sub_1C75504FC();
  v32 = sub_1C73A7E00();
  sub_1C6F65BE8(0, &qword_1EDD0CDB0);
  v33 = v32;
  v34 = v31;
  v35 = sub_1C734406C(v33, v31);
  v36 = [v35 suggestion];
  if (v36)
  {
    v37 = v36;
    v38 = [objc_opt_self() PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_];
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)(v38, &v60);
    sub_1C72D5B04();
  }

  else
  {
    v39 = [v35 QUToken];
    if (!v39)
    {
      v28 = v51;
      goto LABEL_12;
    }

    v37 = v39;
    v28 = v51;
    sub_1C72D5FAC(v39, v51, v29, 0, v40, v41, v42, v43, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  }

LABEL_12:
  sub_1C72D533C();
  v45 = v44;
  v47 = v46;

  (*(v52 + 8))(v5, v50);
  LOBYTE(v60) = 1;
  sub_1C75504FC();

  v48 = v60;
  *a5 = v45;
  a5[1] = v47;
  a5[2] = v28;
  a5[3] = v29;
  OUTLINED_FUNCTION_0_160(v48);
}

id sub_1C73A7E00()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C7550B3C();

  v2 = [v0 initForPersonalEventFilterWithMomentUUIDs_];

  return v2;
}

id sub_1C73A7E74(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_1C755065C();
  }

  else
  {
    v3 = 0;
  }

  v4 = sub_1C7550B3C();

  v5 = [v2 initWithMeaningLabel:v3 momentUUIDs:v4];

  return v5;
}

uint64_t Hastings.AssetDependencyRequirement.id.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t Hastings.AssetDependencyRequirement.init(anchorAssetUUIDs:dependentAssetUUIDs:groupIDByAssetUUID:id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[2] = result;
  a6[3] = a2;
  a6[4] = a3;
  *a6 = a4;
  a6[1] = a5;
  return result;
}

__n128 Hastings.AssetDependencyRequirement.init(assetDependencySet:id:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, __n128 *a4@<X8>)
{
  v4 = a1[1].n128_u64[0];
  result = *a1;
  a4[1] = *a1;
  a4[2].n128_u64[0] = v4;
  a4->n128_u64[0] = a2;
  a4->n128_u64[1] = a3;
  return result;
}

uint64_t Hastings.AssetDependencyRequirement.newEvaluation()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  v7 = MEMORY[0x1E69E7CD0];
  a1[4] = v6;
  a1[5] = v7;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();

  return sub_1C75504FC();
}

__n128 Hastings.AssetDependencyRequirement.Evaluation.init(requirement:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1C73A8004(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C75A3360 == a2;
    if (v6 || (sub_1C7551DBC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001C75A3380 == a2;
      if (v7 || (sub_1C7551DBC() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x80000001C75AD620 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_1C7551DBC();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C73A815C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73A81F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C73A8004(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C73A8218(uint64_t a1)
{
  v2 = sub_1C73A8490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73A8254(uint64_t a1)
{
  v2 = sub_1C73A8490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Hastings.AssetDependencyRequirement.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = v1[2];
  v14 = v1[3];
  v15 = v7;
  v13 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C73A8490();
  sub_1C755200C();
  LOBYTE(v18) = 0;
  v8 = v16;
  sub_1C7551CCC();
  if (!v8)
  {
    v9 = v13;
    v10 = v14;
    v18 = v15;
    v17 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0);
    sub_1C70380C8();
    OUTLINED_FUNCTION_1();
    v18 = v10;
    v17 = 2;
    OUTLINED_FUNCTION_1();
    v18 = v9;
    v17 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C6FB5CAC();
    sub_1C7551D2C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1C73A8490()
{
  result = qword_1EC21B0B0;
  if (!qword_1EC21B0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0B0);
  }

  return result;
}

uint64_t sub_1C73A84EC@<X0>(uint64_t *a1@<X8>)
{
  result = Hastings.AssetDependencyRequirement.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.id.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.updateFulfillment(with:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 32);
  if (sub_1C7009C30(*a1, v4, v5))
  {
    if (*(v6 + 16))
    {
      v7 = sub_1C6F78124(v3, v4);
      if (v8)
      {
        v9 = (*(v6 + 56) + 16 * v7);
        v10 = *v9;
        v11 = v9[1];
        sub_1C75504FC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v2 + 40);
        sub_1C73A873C(v10, v11, isUniquelyReferenced_nonNull_native);
        *(v2 + 40) = v15;
        if (!v13)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t Hastings.AssetDependencyRequirement.Evaluation.evaluationResult(of:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = *a1;
  v8 = a1[1];
  if ((sub_1C7009C30(*a1, v8, v4) & 1) != 0 && (v9 = sub_1C6FE0F8C(v7, v8, v5), v10))
  {
    v11 = sub_1C7009C30(v9, v10, v6);

    v12 = sub_1C754F5BC();
    v13 = *(*(v12 - 8) + 104);
    if (v11)
    {
      v14 = MEMORY[0x1E69C1970];
    }

    else
    {
      v14 = MEMORY[0x1E69C1968];
    }

    v18 = *v14;
    v17 = a2;
  }

  else
  {
    v15 = *MEMORY[0x1E69C1970];
    v16 = sub_1C754F5BC();
    v13 = *(*(v16 - 8) + 104);
    v12 = v16;
    v17 = a2;
    v18 = v15;
  }

  return v13(v17, v18, v12);
}

uint64_t sub_1C73A873C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v3;
  sub_1C7551F3C();
  sub_1C75505AC();
  v7 = sub_1C7551FAC();
  v8 = ~(-1 << *(v6 + 32));
  v9 = 1;
  while (1)
  {
    v10 = v7 & v8;
    v11 = (v7 & v8) >> 6;
    v12 = 1 << (v7 & v8);
    v13 = v12 & *(v6 + 56 + 8 * v11);
    if (!v13)
    {
      break;
    }

    v14 = (*(v6 + 48) + 16 * v10);
    v15 = *v14 == a1 && v14[1] == a2;
    if (v15 || (sub_1C7551DBC() & 1) != 0)
    {
      v9 = 0;
      break;
    }

    v7 = v10 + 1;
  }

  v16 = *(v6 + 16);
  v17 = v16 + v9;
  if (__OFADD__(v16, v9))
  {
    __break(1u);
    goto LABEL_34;
  }

  v18 = *(v6 + 24);
  v19 = v33;
  if (v18 < v17 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1C72E69CC();
      goto LABEL_20;
    }

    if (v18 < v17)
    {
      sub_1C72F50B0();
LABEL_20:
      v20 = *v33;
      sub_1C7551F3C();
      sub_1C75505AC();
      v21 = sub_1C7551FAC();
      v22 = ~(-1 << *(v20 + 32));
      while (1)
      {
        v10 = v21 & v22;
        v11 = (v21 & v22) >> 6;
        v12 = 1 << (v21 & v22);
        if ((v12 & *(v20 + 56 + 8 * v11)) == 0)
        {
          break;
        }

        v23 = (*(v20 + 48) + 16 * v10);
        v24 = *v23 == a1 && v23[1] == a2;
        if (v24 || (sub_1C7551DBC() & 1) != 0)
        {
          v19 = v33;
          if (!v13)
          {
            goto LABEL_35;
          }

          goto LABEL_29;
        }

        v21 = v10 + 1;
      }

      v19 = v33;
      if (v13)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }

    sub_1C72F28DC();
  }

  if (v13)
  {
LABEL_29:
    v25 = (*(*v19 + 48) + 16 * v10);
    result = *v25;
    *v25 = a1;
    v25[1] = a2;
    return result;
  }

LABEL_31:
  v27 = *v19;
  *(*v19 + 8 * v11 + 56) |= v12;
  v28 = (*(v27 + 48) + 16 * v10);
  *v28 = a1;
  v28[1] = a2;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    result = 0;
    *(v27 + 16) = v31;
    return result;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  result = sub_1C7551E3C();
  __break(1u);
  return result;
}

unint64_t sub_1C73A8970()
{
  result = qword_1EC21B0B8;
  if (!qword_1EC21B0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0B8);
  }

  return result;
}

unint64_t sub_1C73A89C8()
{
  result = qword_1EC21B0C0;
  if (!qword_1EC21B0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0C0);
  }

  return result;
}

unint64_t sub_1C73A8A20()
{
  result = qword_1EC21B0C8;
  if (!qword_1EC21B0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0C8);
  }

  return result;
}

unint64_t sub_1C73A8A78()
{
  result = qword_1EC216910;
  if (!qword_1EC216910)
  {
    type metadata accessor for Hastings.Asset(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216910);
  }

  return result;
}

unint64_t sub_1C73A8AD4()
{
  result = qword_1EC21B0D0;
  if (!qword_1EC21B0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0D0);
  }

  return result;
}

_BYTE *_s26AssetDependencyRequirementV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C73A8C28()
{
  result = qword_1EC21B0D8;
  if (!qword_1EC21B0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0D8);
  }

  return result;
}

unint64_t sub_1C73A8C80()
{
  result = qword_1EC21B0E0;
  if (!qword_1EC21B0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0E0);
  }

  return result;
}

unint64_t sub_1C73A8CD8()
{
  result = qword_1EC21B0E8;
  if (!qword_1EC21B0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21B0E8);
  }

  return result;
}

uint64_t sub_1C73A8D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C754F38C();
  v6[8] = v7;
  OUTLINED_FUNCTION_18(v7);
  v6[9] = v8;
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for FreeformStory();
  OUTLINED_FUNCTION_18(v9);
  v6[11] = v10;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v11 = sub_1C754F2FC();
  v6[15] = v11;
  OUTLINED_FUNCTION_18(v11);
  v6[16] = v12;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73A8EB4, 0, 0);
}

uint64_t sub_1C73A8EB4()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    v2 = v0[3];
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000021, 0x80000001C75AD670);
    sub_1C73E69B8(*v2);
    sub_1C7161CDC(0, 0xE000000000000000);
  }

  v4 = v0[17];
  v3 = v0[18];
  v5 = v0[15];
  v6 = v0[16];
  v7 = v0[7];
  sub_1C754F29C();
  (*(v6 + 32))(v4, v3, v5);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1C754F1CC();
  _s9GeneratorVMa_1();
  v8 = swift_task_alloc();
  v0[19] = v8;
  *v8 = v0;
  v8[1] = sub_1C73A9090;

  return sub_1C73EB534();
}

uint64_t sub_1C73A9090()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1C73A9314;
  }

  else
  {
    v2 = sub_1C73A91A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C73A91A4()
{
  v1 = v0[14];
  v2 = v0[12];
  v12 = v0[11];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[7];
  v6 = v0[8];
  v7 = v0[2];
  sub_1C73A9410(v0[13], v1);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v3, v6);
  sub_1C73A9474(v1, v2);
  sub_1C6FB0E00();
  v8 = *(*v7 + 16);
  sub_1C6FB164C();
  sub_1C73A94D8(v1);
  v9 = *v7;
  *(v9 + 16) = v8 + 1;
  sub_1C73A9410(v2, v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8);
  *v7 = v9;

  v10 = v0[1];

  return v10();
}

uint64_t sub_1C73A9314()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  sub_1C754F1AC();
  (*(v1 + 8))(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1C73A9410(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformStory();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A9474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FreeformStory();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C73A94D8(uint64_t a1)
{
  v2 = type metadata accessor for FreeformStory();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C73A9550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v73 = a5;
  v74 = a6;
  v72 = a4;
  v80 = a2;
  v83 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  OUTLINED_FUNCTION_3_0();
  v81 = v6;
  v82 = v7;
  v75 = *(v8 + 64);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v78 = v64 - v10;
  v77 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v79 = v11;
  v84 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_58_26();
  v76 = v14 - v15;
  v16 = type metadata accessor for StoryGenerationSession(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v71 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v67 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = _s9GeneratorVMa_1();
  v22 = OUTLINED_FUNCTION_18(v21);
  v69 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v66 = v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140);
  v27 = OUTLINED_FUNCTION_72_18(v26, &v86);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v33 = v64 - v32;
  v65 = v64 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v34);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v35);
  v37 = v64 - v36;
  v70 = v64 - v36;
  sub_1C754F2FC();
  v68 = swift_allocBox();
  sub_1C754F29C();
  v38 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  v64[0] = v29;
  (*(v29 + 16))(v33, v72, v26);
  sub_1C7055874(v73, v85);
  OUTLINED_FUNCTION_11_67();
  v39 = v80;
  v40 = OUTLINED_FUNCTION_15_1();
  sub_1C73B0468(v40, v41, v42);
  OUTLINED_FUNCTION_0_161();
  sub_1C73B0468(v74, v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v43);
  v44 = v79;
  v45 = *(v79 + 16);
  v73 = v79 + 16;
  v74 = v45;
  v45(v76, v39, v77);
  v46 = v82;
  (*(v82 + 16))(v78, v83, v81);
  v47 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v48 = (v31 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 47) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v69 + 80) + v49 + 8) & ~*(v69 + 80);
  v51 = (v25 + *(v71 + 80) + v50) & ~*(v71 + 80);
  v52 = *(v44 + 80);
  v53 = (v20 + v52 + v51) & ~v52;
  v54 = (v84 + *(v46 + 80) + v53) & ~*(v46 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  (*(v64[0] + 32))(v55 + v47, v65, v64[1]);
  sub_1C6F699F8(v85, v55 + v48);
  *(v55 + v49) = v68;
  OUTLINED_FUNCTION_10_70();
  sub_1C73B0518(v66, v55 + v50, v56);
  OUTLINED_FUNCTION_9_80();
  sub_1C73B0518(v67, v55 + v51, v57);
  v58 = *(v79 + 32);
  v60 = v76;
  v59 = v77;
  v58(v55 + v53, v76, v77);
  (*(v82 + 32))(v55 + v54, v78, v81);

  v61 = sub_1C6FEB80C(0, 0, v70, &unk_1C7586330, v55);
  v74(v60, v80, v59);
  v62 = swift_allocObject();
  *(v62 + 16) = v61;
  v58(v62 + ((v52 + 24) & ~v52), v60, v59);
  sub_1C7550E9C();
}

uint64_t sub_1C73A9B3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v11;
  v8[9] = v12;
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a4;
  v8[5] = a5;
  sub_1C754F2FC();
  v8[10] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73A9BC8, 0, 0);
}

uint64_t sub_1C73A9BC8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 80);
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  v4 = *(v0 + 48);
  v5 = *(v0 + 64);
  *(v3 + 16) = *(v0 + 32);
  *(v3 + 32) = v1;
  *(v3 + 40) = v4;
  *(v3 + 56) = v5;
  *(v3 + 72) = v2;
  v6 = swift_task_alloc();
  *(v0 + 104) = v6;
  *v6 = v0;
  v6[1] = sub_1C73A9CEC;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C73A9CEC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 112) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73A9DF0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 88);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  v3 = v2;
  os_unfair_lock_unlock((v1 + 16));
  *(v0 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C73A9E9C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 112);

  *(v0 + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  sub_1C7550EBC();
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73A9F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[52] = v18;
  v8[53] = v19;
  v8[50] = a7;
  v8[51] = a8;
  v8[48] = a5;
  v8[49] = a6;
  v8[46] = a3;
  v8[47] = a4;
  v8[45] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  v8[54] = v9;
  v10 = *(v9 - 8);
  v8[55] = v10;
  v8[56] = *(v10 + 64);
  v8[57] = swift_task_alloc();
  v11 = sub_1C754FF1C();
  v8[58] = v11;
  v12 = *(v11 - 8);
  v8[59] = v12;
  v8[60] = *(v12 + 64);
  v8[61] = swift_task_alloc();
  v13 = *(type metadata accessor for StoryGenerationSession(0) - 8);
  v8[62] = v13;
  v8[63] = *(v13 + 64);
  v8[64] = swift_task_alloc();
  v14 = *(_s9GeneratorVMa_1() - 8);
  v8[65] = v14;
  v8[66] = *(v14 + 64);
  v8[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v8[68] = swift_task_alloc();
  v8[69] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B150);
  v8[70] = v15;
  v8[71] = *(v15 - 8);
  v8[72] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AA1F0, 0, 0);
}

uint64_t sub_1C73AA1F0()
{
  OUTLINED_FUNCTION_42();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B140);
  sub_1C7550DBC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 584) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_19_65(v1);

  return MEMORY[0x1EEE6DB90](v3);
}

uint64_t sub_1C73AA284()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C73AA380()
{
  if (*(v0 + 40))
  {
    v50 = *(v0 + 552);
    v1 = *(v0 + 536);
    v48 = v1;
    v60 = *(v0 + 528);
    v58 = *(v0 + 520);
    v68 = *(v0 + 512);
    v61 = *(v0 + 504);
    v59 = *(v0 + 496);
    v72 = *(v0 + 488);
    v63 = *(v0 + 480);
    v66 = *(v0 + 472);
    v70 = *(v0 + 456);
    v71 = *(v0 + 464);
    v62 = *(v0 + 448);
    v67 = *(v0 + 440);
    v69 = *(v0 + 432);
    v65 = *(v0 + 424);
    v54 = *(v0 + 408);
    v55 = *(v0 + 416);
    v53 = *(v0 + 400);
    v2 = *(v0 + 376);
    v49 = *(v0 + 392);
    v64 = *(v0 + 360);
    sub_1C6F699F8((v0 + 16), v0 + 56);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v3 = OUTLINED_FUNCTION_49_3();
    v5 = v4(v3);
    v7 = v6;
    __swift_project_boxed_opaque_existential_1(v2, v2[3]);
    strcpy((v0 + 272), "CuratedStory ");
    *(v0 + 286) = -4864;
    v56 = v7;
    v57 = v5;
    MEMORY[0x1CCA5CD70](v5, v7);
    sub_1C754F17C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
    v52 = swift_allocBox();
    v9 = v8;
    strcpy((v0 + 288), "CuratedStory");
    *(v0 + 301) = 0;
    *(v0 + 302) = -5120;
    *(v0 + 304) = v5;
    *(v0 + 312) = v7;
    *(v0 + 320) = 32;
    *(v0 + 328) = 0xE100000000000000;
    *(v0 + 336) = 0;
    *(v0 + 344) = 0xE000000000000000;
    sub_1C6FB5E8C();
    v10 = sub_1C755155C();
    MEMORY[0x1CCA5CD70](v10);

    sub_1C754F29C();

    v11 = sub_1C754F2FC();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v11);
    v12 = sub_1C7550D5C();
    v13 = v50;
    v51 = v12;
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v12);
    OUTLINED_FUNCTION_11_67();
    sub_1C73B0468(v49, v1, v14);
    sub_1C7055874(v0 + 56, v0 + 136);
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v53, v68, v15);
    sub_1C7055874(v0 + 96, v0 + 176);
    (*(v66 + 16))(v72, v54, v71);
    (*(v67 + 16))(v70, v55, v69);
    v16 = (*(v58 + 80) + 40) & ~*(v58 + 80);
    v17 = (v60 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
    v18 = (*(v59 + 80) + v17 + 40) & ~*(v59 + 80);
    v19 = (v61 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
    v20 = (v19 + 47) & 0xFFFFFFFFFFFFFFF8;
    v21 = (*(v66 + 80) + v20 + 16) & ~*(v66 + 80);
    v22 = (v63 + *(v67 + 80) + v21) & ~*(v67 + 80);
    v23 = swift_allocObject();
    *(v23 + 2) = 0;
    *(v23 + 3) = 0;
    *(v23 + 4) = v52;
    OUTLINED_FUNCTION_10_70();
    sub_1C73B0518(v48, v24 + v16, v25);
    sub_1C6F699F8((v0 + 136), &v23[v17]);
    OUTLINED_FUNCTION_9_80();
    sub_1C73B0518(v68, &v23[v18], v26);
    sub_1C6F699F8((v0 + 176), &v23[v19]);
    v27 = &v23[v20];
    *v27 = v57;
    v27[1] = v56;
    (*(v66 + 32))(&v23[v21], v72, v71);
    (*(v67 + 32))(&v23[v22], v70, v69);
    *&v23[(v62 + v22 + 7) & 0xFFFFFFFFFFFFFFF8] = v65;
    v28 = *v64;

    if (swift_taskGroup_addPending())
    {
      sub_1C712A774(*(v0 + 552), *(v0 + 544), &qword_1EC2158F8);
      v29 = OUTLINED_FUNCTION_69_2();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v29, v30, v51);
      v32 = *(v0 + 544);
      if (EnumTagSinglePayload == 1)
      {
        sub_1C6FB5FC8(*(v0 + 544), &qword_1EC2158F8);
      }

      else
      {
        sub_1C7550D4C();
        OUTLINED_FUNCTION_62_2();
        (*(v37 + 8))(v32, v51);
      }

      if (*(v23 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = sub_1C7550C8C();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = v40 | v38;
      if (v40 | v38)
      {
        v41 = v0 + 216;
        *(v0 + 216) = 0;
        *(v0 + 224) = 0;
        *(v0 + 232) = v38;
        *(v0 + 240) = v40;
      }

      *(v0 + 248) = 1;
      *(v0 + 256) = v41;
      *(v0 + 264) = v28;
      swift_task_create();
    }

    sub_1C6FB5FC8(*(v0 + 552), &qword_1EC2158F8);
    __swift_destroy_boxed_opaque_existential_1(v0 + 96);

    __swift_destroy_boxed_opaque_existential_1(v0 + 56);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 584) = v42;
    *v42 = v43;
    v47 = OUTLINED_FUNCTION_19_65(v42, v44, v45, v46);

    return MEMORY[0x1EEE6DB90](v47);
  }

  else
  {
    v33 = *(v0 + 576);
    OUTLINED_FUNCTION_39_38();
    v34(v33);

    OUTLINED_FUNCTION_25();

    return v35();
  }
}

uint64_t sub_1C73AAA20()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 576);
  OUTLINED_FUNCTION_39_38();
  v2(v1);

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C73AAADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 520) = v16;
  *(v8 + 504) = v15;
  *(v8 + 488) = v14;
  *(v8 + 472) = a7;
  *(v8 + 480) = a8;
  *(v8 + 456) = a5;
  *(v8 + 464) = a6;
  v9 = sub_1C7550CBC();
  *(v8 + 528) = v9;
  *(v8 + 536) = *(v9 - 8);
  *(v8 + 544) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B158);
  *(v8 + 552) = v10;
  *(v8 + 560) = *(v10 - 8);
  *(v8 + 568) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  *(v8 + 576) = swift_task_alloc();
  v11 = sub_1C754F2FC();
  *(v8 + 584) = v11;
  *(v8 + 592) = *(v11 - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  *(v8 + 616) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73AACD8, 0, 0);
}

uint64_t sub_1C73AACD8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[77];
  v2 = v0[72];
  swift_beginAccess();
  sub_1C705544C(v1, v2);
  v3 = OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_71_16(v3, v4);
  if (v5)
  {
    v6 = v0[72];
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FB5FC8(v6, &unk_1EC218C90);
    }

    return OUTLINED_FUNCTION_51_24();
  }

  else
  {
    v11 = *(v0[74] + 32);
    (v11)(v0[76], v0[72], v0[73]);
    v12 = OUTLINED_FUNCTION_90();
    v11(v12);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[78] = v13;
    *v13 = v14;
    v13[1] = sub_1C73AAE6C;
    v15 = v0[75];
    v16 = v0[59];
    v17 = v0[60];
    v18 = v0[58];

    return sub_1C73AB7B0((v0 + 2), v18, v16, v17, v15);
  }
}

uint64_t sub_1C73AAE6C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 632) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AAF64()
{
  OUTLINED_FUNCTION_115_0();
  v42 = v0;
  sub_1C73AFCEC(v0 + 16, v0 + 72);
  v1 = *(v0 + 472);
  if (*(v0 + 120))
  {
    v2 = *(v0 + 112);
    sub_1C6F699F8((v0 + 72), v0 + 184);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      v4 = *(v0 + 488);
      v3 = *(v0 + 496);
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_69_21();
      v40 = v6 + 2;
      v41 = v5;
      MEMORY[0x1CCA5CD70](v4, v3);
      sub_1C7161CDC(v40, v41);
    }

    sub_1C7055874(v0 + 184, v0 + 224);
    v7 = v2;
    v8 = sub_1C754FEEC();
    v9 = sub_1C75511BC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v12 = OUTLINED_FUNCTION_20_1();
      v40 = v12;
      *v10 = 136315394;
      sub_1C7055874(v0 + 224, v0 + 264);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8);
      v13 = sub_1C75506EC();
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1(v0 + 224);
      v16 = sub_1C6F765A4(v13, v15, &v40);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2112;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 14) = v18;
      *v11 = v18;
      _os_log_impl(&dword_1C6F5C000, v8, v9, "Curated story %s failed validation with error %@", v10, 0x16u);
      sub_1C6FB5FC8(v11, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 224);
    }

    v35 = v0 + 184;
  }

  else
  {
    sub_1C6F699F8((v0 + 72), v0 + 304);
    if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_69_21();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v19, v20, v21, v22, v23, v24, v25, v26, v40, v41);
    }

    sub_1C7055874(v0 + 304, v0 + 344);
    v27 = sub_1C754FEEC();
    v28 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v28))
    {
      v29 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_20_1();
      v40 = v30;
      *v29 = 136315138;
      sub_1C7055874(v0 + 344, v0 + 384);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DD8);
      v31 = sub_1C75506EC();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_1(v0 + 344);
      v34 = sub_1C6F765A4(v31, v33, &v40);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_1C6F5C000, v27, v28, "Curated story %s passed validation", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v0 + 344);
    }

    v35 = v0 + 304;
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  sub_1C73AFCEC(v0 + 16, v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B138);
  sub_1C7550EAC();
  v36 = OUTLINED_FUNCTION_57_0();
  v37(v36);
  sub_1C73AFD24(v0 + 16);
  OUTLINED_FUNCTION_65_24();

  OUTLINED_FUNCTION_25();

  return v38();
}

uint64_t sub_1C73AB3B8()
{
  OUTLINED_FUNCTION_115_0();
  v56 = v0;
  v1 = *(v0 + 632);
  *(v0 + 448) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 472);

    v4 = OUTLINED_FUNCTION_66_2();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    OUTLINED_FUNCTION_74_15();
    v6 = OUTLINED_FUNCTION_57_0();
    v7(v6);
    if (*(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_37_36();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v8, v9, v10, v11, v12, v13, v14, v15, v54, v55);
    }

    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C755119C();

    if (os_log_type_enabled(v16, v17))
    {
      v19 = *(v0 + 488);
      v18 = *(v0 + 496);
      v20 = swift_slowAlloc();
      v21 = OUTLINED_FUNCTION_20_1();
      v54 = v21;
      *v20 = 136315138;
      *(v20 + 4) = sub_1C6F765A4(v19, v18, &v54);
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Cancelled CuratedStory %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    (*(*(v0 + 536) + 8))(*(v0 + 544), *(v0 + 528));
    v22 = *(v0 + 448);
  }

  else
  {
    v23 = *(v0 + 472);

    v24 = OUTLINED_FUNCTION_66_2();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_74_15();
    v26 = OUTLINED_FUNCTION_57_0();
    v27(v26);
    if (*(v23 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      OUTLINED_FUNCTION_56_0();
      sub_1C755180C();

      OUTLINED_FUNCTION_37_36();
      OUTLINED_FUNCTION_17_21();
      OUTLINED_FUNCTION_24_8(v28, v29, v30, v31, v32, v33, v34, v35, v54, v55);
    }

    v36 = *(v0 + 632);
    sub_1C75504FC();
    v37 = v36;
    v38 = sub_1C754FEEC();
    v39 = sub_1C755119C();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 632);
      v42 = *(v0 + 488);
      v41 = *(v0 + 496);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = OUTLINED_FUNCTION_20_1();
      v54 = v45;
      *v43 = 136315394;
      *(v43 + 4) = sub_1C6F765A4(v42, v41, &v54);
      *(v43 + 12) = 2112;
      v46 = v40;
      v47 = _swift_stdlib_bridgeErrorToNSError();
      *(v43 + 14) = v47;
      *v44 = v47;
      _os_log_impl(&dword_1C6F5C000, v38, v39, "Failed CuratedStory %s: %@", v43, 0x16u);
      sub_1C6FB5FC8(v44, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v48 = *(v0 + 520);
    os_unfair_lock_lock((v48 + 16));
    if (!*(v48 + 24))
    {
      v49 = *(v0 + 632);
      *(v48 + 24) = v49;
      v50 = v49;
    }

    v51 = *(v0 + 632);
    os_unfair_lock_unlock((*(v0 + 520) + 16));
    v22 = v51;
  }

  OUTLINED_FUNCTION_65_24();

  OUTLINED_FUNCTION_25();

  return v52();
}

uint64_t sub_1C73AB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[218] = v5;
  v6[217] = a5;
  v6[216] = a4;
  v6[215] = a3;
  v6[214] = a2;
  v6[213] = a1;
  v6[219] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B160);
  v6[220] = swift_task_alloc();
  v6[221] = swift_task_alloc();
  v6[222] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story(0);
  v6[223] = swift_task_alloc();
  v6[224] = type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Generator(0);
  v6[225] = swift_task_alloc();
  v6[226] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2156D8);
  v6[227] = swift_task_alloc();
  v6[228] = swift_task_alloc();
  v6[229] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Story(0);
  v6[230] = swift_task_alloc();
  v6[231] = type metadata accessor for FreeformStoryGeneration.Montage.Curated.Generator(0);
  v6[232] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v6[233] = v7;
  v6[234] = *(v7 - 8);
  v6[235] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73AB9D4, 0, 0);
}

uint64_t sub_1C73AB9D4()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[216];
  v2 = v0[214];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C7055874(v2, (v0 + 198));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2170A8);
  if (swift_dynamicCast())
  {
    v3 = v0[232];
    v4 = v0[218];
    v5 = v0[215];
    memcpy(v0 + 149, v0 + 2, 0x188uLL);
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v5, v3 + v6, v7);
    v8 = _s9GeneratorVMa_1();
    v0[236] = v8;
    v9 = *(v4 + *(v8 + 24));
    v10 = qword_1EC213C70;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = v0[232];
    v12 = v0[231];
    v13 = sub_1C754FF1C();
    __swift_project_value_buffer(v13, qword_1EC2156A0);
    OUTLINED_FUNCTION_62_2();
    (*(v14 + 16))(v11);
    *(v11 + *(v12 + 28)) = v9;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[237] = v15;
    *v15 = v16;
    v15[1] = sub_1C73ABF4C;
    OUTLINED_FUNCTION_17_1();

    return sub_1C6FDEDD8();
  }

  else
  {
    if (!swift_dynamicCast())
    {
      v42 = v0[235];
      v43 = v0[234];
      v44 = v0[233];
      v45 = v0[217];
      v46 = v0[216];
      __swift_project_boxed_opaque_existential_1(v0[214], *(v0[214] + 24));
      v47 = OUTLINED_FUNCTION_49_3();
      v48(v47);
      sub_1C70BFAC4();
      swift_allocError();
      *v49 = v53;
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1((v0 + 198));
      __swift_project_boxed_opaque_existential_1(v46, v1[3]);
      sub_1C754F1AC();
      (*(v43 + 8))(v42, v44);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v50 + 8))(v45);
      OUTLINED_FUNCTION_34_36();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_17_1();

      __asm { BRAA            X1, X16 }
    }

    v19 = v0[225];
    v20 = v0[218];
    v21 = v0[215];
    memcpy(v0 + 100, v0 + 51, 0x188uLL);
    v22 = _s9GeneratorVMa_1();
    v0[239] = v22;
    v23 = *(v20 + *(v22 + 24));
    v24 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 40);
    v25 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 64);
    v0[240] = v25;
    v26 = [objc_opt_self() maximumNumberOfAssetsToCurateOnForHastingsCuration];
    OUTLINED_FUNCTION_0_161();
    sub_1C73B0468(v21, v19 + v27, v28);
    if (qword_1EC213E20 != -1)
    {
      swift_once();
    }

    v29 = v0[225];
    v30 = v0[224];
    v31 = sub_1C754FF1C();
    __swift_project_value_buffer(v31, qword_1EC217E68);
    OUTLINED_FUNCTION_62_2();
    (*(v32 + 16))(v29);
    v33 = (v29 + v30[5]);
    *v33 = v24;
    v33[1] = v25;
    v33[2] = v26;
    *(v29 + v30[7]) = v23;
    v34 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
    v35 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
    v36 = *(v23 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
    v37 = v29 + v30[8];
    *v37 = v34;
    *(v37 + 8) = v35;
    *(v37 + 16) = v36;

    v38 = v34;

    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[241] = v39;
    *v39 = v40;
    v39[1] = sub_1C73AC344;
    OUTLINED_FUNCTION_17_1();

    return sub_1C7144C3C();
  }
}

uint64_t sub_1C73ABF4C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1904) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AC044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_66_23();
  if (v17 == 1)
  {
    sub_1C6FE0BCC(*(v16 + 1840), *(v16 + 1824));
    v18 = OUTLINED_FUNCTION_57_0();
    sub_1C712A774(v18, v19, v20);
    OUTLINED_FUNCTION_49_3();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v22 = *(v16 + 1840);
    v23 = *(v16 + 1832);
    v24 = *(v16 + 1824);
    v25 = *(v16 + 1816);
    if (EnumCaseMultiPayload == 1)
    {
      v26 = *(v16 + 1704);
      v27 = *v25;
      v26[3] = v23;
      v26[4] = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
      __swift_allocate_boxed_opaque_existential_0(v26);
      OUTLINED_FUNCTION_7_82();
      sub_1C73B0518(v22, v28, v29);
      sub_1C6FB5FC8(v24, &qword_1EC2156D8);
      v26[5] = v27;
      v30 = 1;
      goto LABEL_7;
    }

    *(v16 + 1688) = v23;
    *(v16 + 1696) = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0((v16 + 1664));
    OUTLINED_FUNCTION_7_82();
    sub_1C73B0518(v25, v34, v35);
    sub_1C6FB5FC8(v24, &qword_1EC2156D8);
    OUTLINED_FUNCTION_29_37();
    sub_1C73B04C4(v22, v36);
  }

  else
  {
    v31 = *(v16 + 1840);
    *(v16 + 1688) = *(v16 + 1832);
    *(v16 + 1696) = &protocol witness table for FreeformStoryGeneration.Montage.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0((v16 + 1664));
    OUTLINED_FUNCTION_7_82();
    sub_1C73B0518(v31, v32, v33);
  }

  sub_1C6F699F8((v16 + 1664), *(v16 + 1704));
  v30 = 0;
LABEL_7:
  v37 = *(v16 + 1856);
  *(*(v16 + 1704) + 48) = v30;
  OUTLINED_FUNCTION_40_39(v37);
  sub_1C6FE3B1C(v16 + 1192);
  OUTLINED_FUNCTION_27_44();
  v38 = OUTLINED_FUNCTION_57_0();
  v39(v38);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C73AC250()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_40_39(*(v0 + 1856));
  sub_1C6FE3B1C(v0 + 1192);
  OUTLINED_FUNCTION_54_28();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_34_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73AC344()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1936) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AC43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_126_0();
  OUTLINED_FUNCTION_58_9();
  OUTLINED_FUNCTION_66_23();
  v17 = v16[223];
  if (v18 == 1)
  {
    if (*(v17 + 440))
    {
      v19 = 0;
    }

    else
    {
      v19 = [*(v17 + 432) count];
    }

    v22 = v16[240];
    if (v19 >= v22)
    {
      sub_1C73B0468(v16[223], v16[221], type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
      OUTLINED_FUNCTION_66_2();
    }

    else
    {
      v23 = v16[221];
      sub_1C6FE0D14();
      v24 = swift_allocError();
      *v25 = v19;
      *(v25 + 8) = v22;
      *(v25 + 16) = 0;
      *(v25 + 24) = 5;
      *v23 = v24;
      OUTLINED_FUNCTION_57_0();
    }

    swift_storeEnumTagMultiPayload();
    sub_1C712A774(v16[221], v16[220], &qword_1EC21B160);
    OUTLINED_FUNCTION_66_2();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v27 = v16[223];
    v28 = v16[222];
    v29 = v16[221];
    v30 = v16[220];
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v16[213];
      v32 = *v30;
      v31[3] = v28;
      v31[4] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
      __swift_allocate_boxed_opaque_existential_0(v31);
      OUTLINED_FUNCTION_6_95();
      sub_1C73B0518(v27, v33, v34);
      sub_1C6FB5FC8(v29, &qword_1EC21B160);
      v31[5] = v32;
      v35 = 1;
      goto LABEL_13;
    }

    v16[206] = v28;
    v16[207] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0(v16 + 203);
    OUTLINED_FUNCTION_6_95();
    sub_1C73B0518(v30, v36, v37);
    sub_1C6FB5FC8(v29, &qword_1EC21B160);
    sub_1C73B04C4(v27, type metadata accessor for FreeformStoryGeneration.Chronological.Curated.Story);
  }

  else
  {
    v16[206] = v16[222];
    v16[207] = &protocol witness table for FreeformStoryGeneration.Chronological.Curated.Story;
    __swift_allocate_boxed_opaque_existential_0(v16 + 203);
    OUTLINED_FUNCTION_6_95();
    sub_1C73B0518(v17, v20, v21);
  }

  sub_1C6F699F8((v16 + 203), v16[213]);
  v35 = 0;
LABEL_13:
  v38 = v16[225];
  *(v16[213] + 48) = v35;
  OUTLINED_FUNCTION_38_34(v38);
  sub_1C70BFB74((v16 + 100));
  OUTLINED_FUNCTION_27_44();
  v39 = OUTLINED_FUNCTION_57_0();
  v40(v39);

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_129();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12, a13, a14, a15, a16);
}

void sub_1C73AC6EC()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_38_34(*(v0 + 1800));
  sub_1C70BFB74(v0 + 800);
  OUTLINED_FUNCTION_54_28();
  v1 = OUTLINED_FUNCTION_57_0();
  v2(v1);
  OUTLINED_FUNCTION_34_36();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C73AC7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v78 = a7;
  v79 = a6;
  v77 = a5;
  v75 = a4;
  v86 = a2;
  v87 = a1;
  v83 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v81 = v7;
  v82 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_58_26();
  v80 = v10 - v11;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0);
  OUTLINED_FUNCTION_3_0();
  v74 = v12;
  v76 = *(v13 + 64);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v64 - v15;
  v16 = type metadata accessor for StoryGenerationSession(0);
  v17 = OUTLINED_FUNCTION_18(v16);
  v73 = v18;
  v72 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_58_26();
  v22 = v20 - v21;
  v68 = v20 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8);
  v24 = OUTLINED_FUNCTION_72_18(v23, &v89);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v30 = &v64 - v29;
  v67 = &v64 - v29;
  v31 = _s9GeneratorVMa_1();
  v32 = OUTLINED_FUNCTION_18(v31);
  v70 = v33;
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v65 = &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v36);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v64 - v38;
  v71 = &v64 - v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v69 = swift_allocBox();
  v41 = v40;
  sub_1C754F29C();
  v42 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v41, 0, 1, v42);
  v43 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v39, 1, 1, v43);
  OUTLINED_FUNCTION_11_67();
  sub_1C73B0468(v86, &v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
  (*(v26 + 16))(v30, v75, v23);
  sub_1C7055874(v77, v88);
  OUTLINED_FUNCTION_0_161();
  sub_1C73B0468(v78, v22, v45);
  v46 = v74;
  (*(v74 + 16))(v85, v87, v84);
  v47 = (*(v70 + 80) + 40) & ~*(v70 + 80);
  v48 = (v35 + *(v26 + 80) + v47) & ~*(v26 + 80);
  v49 = (v28 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 47) & 0xFFFFFFFFFFFFFFF8;
  v51 = (*(v73 + 80) + v50 + 8) & ~*(v73 + 80);
  v52 = (v72 + *(v46 + 80) + v51) & ~*(v46 + 80);
  v53 = swift_allocObject();
  *(v53 + 2) = 0;
  *(v53 + 3) = 0;
  *(v53 + 4) = v69;
  OUTLINED_FUNCTION_10_70();
  sub_1C73B0518(v65, v54 + v47, v55);
  (*(v26 + 32))(&v53[v48], v67, v66);
  sub_1C6F699F8(v88, &v53[v49]);
  *&v53[v50] = v79;
  OUTLINED_FUNCTION_9_80();
  sub_1C73B0518(v68, &v53[v51], v56);
  (*(v46 + 32))(&v53[v52], v85, v84);

  v57 = sub_1C6FEB80C(0, 0, v71, &unk_1C75862C0, v53);
  v59 = v80;
  v58 = v81;
  v60 = v83;
  (*(v81 + 16))(v80, v86, v83);
  v61 = (*(v58 + 80) + 24) & ~*(v58 + 80);
  v62 = swift_allocObject();
  *(v62 + 16) = v57;
  (*(v58 + 32))(v62 + v61, v59, v60);
  sub_1C7550E9C();
}

uint64_t sub_1C73ACDAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = v12;
  v8[12] = v13;
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v8[13] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C73ACED0, 0, 0);
}

uint64_t sub_1C73ACED0()
{
  OUTLINED_FUNCTION_31();
  v1 = *(v0 + 144);
  v2 = *(v0 + 104);
  swift_beginAccess();
  sub_1C705544C(v1, v2);
  v3 = OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_71_16(v3, v4);
  if (v5)
  {
    v6 = *(v0 + 104);
    v7 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v9) != 1)
    {
      sub_1C6FB5FC8(v6, &unk_1EC218C90);
    }

    return OUTLINED_FUNCTION_51_24();
  }

  else
  {
    v11 = *(v0 + 80);
    v12 = *(v0 + 56);
    v13 = *(*(v0 + 120) + 32);
    v20 = *(v0 + 88);
    (v13)(*(v0 + 136), *(v0 + 104), *(v0 + 112));
    v14 = OUTLINED_FUNCTION_90();
    v13(v14);
    v15 = swift_task_alloc();
    *(v0 + 152) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v11;
    *(v15 + 32) = v20;
    v16 = swift_task_alloc();
    *(v0 + 160) = v16;
    *v16 = v0;
    v16[1] = sub_1C73AD0A4;
    v17 = *(v0 + 128);
    v19 = *(v0 + 64);
    v18 = *(v0 + 72);

    return sub_1C73ADF24(v19, v18, v17, &unk_1C75862D8, v15);
  }
}

uint64_t sub_1C73AD0A4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD1A8()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C73AD240()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 168);

  *(v0 + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0);
  sub_1C7550EBC();

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C73AD2EC()
{
  OUTLINED_FUNCTION_31();
  v1 = _s9GeneratorVMa_1();
  OUTLINED_FUNCTION_18(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F8);
  OUTLINED_FUNCTION_18(v2);
  v3 = type metadata accessor for StoryGenerationSession(0);
  OUTLINED_FUNCTION_18(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0);
  OUTLINED_FUNCTION_76(v4);
  OUTLINED_FUNCTION_75_16();
  v5 = swift_task_alloc();
  *(v0 + 16) = v5;
  *v5 = v0;
  v5[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_56_26();
  OUTLINED_FUNCTION_17_1();

  return sub_1C73ACDAC(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1C73AD510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a1;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B130);
  v7[5] = v12;
  v7[6] = *(v12 - 8);
  v7[7] = swift_task_alloc();
  type metadata accessor for CuratedStory();
  v7[8] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[9] = v13;
  v14 = swift_task_alloc();
  v7[10] = v14;
  *v14 = v7;
  v14[1] = sub_1C73AD684;

  return sub_1C73AD970(v13, a1, a5, a2, a3);
}

uint64_t sub_1C73AD684()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD77C()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 24);
  if (*(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
  {
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();

    OUTLINED_FUNCTION_37_36();
    v25 = v3;
    v26 = v2;
    v4 = OUTLINED_FUNCTION_49_3();
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v6 = OUTLINED_FUNCTION_15_1();
    v8 = v7(v6);
    MEMORY[0x1CCA5CD70](v8);

    OUTLINED_FUNCTION_24_8(v9, v10, v11, v12, v13, v14, v15, v16, v25, v26);
  }

  v17 = *(v0 + 72);
  v18 = OUTLINED_FUNCTION_57_0();
  sub_1C73B0468(v18, v19, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21B0F0);
  sub_1C7550EAC();
  v21 = OUTLINED_FUNCTION_15_1();
  v22(v21);
  sub_1C73B04C4(v17, type metadata accessor for CuratedStory);

  OUTLINED_FUNCTION_25();

  return v23();
}

uint64_t sub_1C73AD900()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C73AD970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[172] = v5;
  v6[171] = a5;
  v6[170] = a4;
  v6[169] = a3;
  v6[168] = a2;
  v6[167] = a1;
  OUTLINED_FUNCTION_41();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73AD9B0()
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v1 = v0[168];
  _s9GeneratorVMa_1();
  v0[173] = v1[3];
  v2 = v1[4];
  v0[174] = v2;
  v3 = OUTLINED_FUNCTION_49_3();
  v0[175] = __swift_project_boxed_opaque_existential_1(v3, v4);
  v5 = *(v2 + 40);
  v0[176] = v5;
  v0[177] = (v2 + 40) & 0xFFFFFFFFFFFFLL | 0x524E000000000000;
  v0[165] = &type metadata for FreeformStoryCompletionSync;
  v0[166] = sub_1C6FB5578();
  v0[162] = swift_allocObject();
  v6 = OUTLINED_FUNCTION_15_1();
  v5(v6);
  v7 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v9 = OUTLINED_FUNCTION_15_1();
  v10(v9);
  v11 = OUTLINED_FUNCTION_49_3();
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v13 = OUTLINED_FUNCTION_15_1();
  v0[178] = v14(v13);
  v15 = v1[3];
  v16 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v15);
  OUTLINED_FUNCTION_74_15();
  v18 = v17(v15, v16);
  result = sub_1C6FCA214(v18);
  v0[179] = v20;
  if (v20)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[180] = v21;
    *v21 = v22;
    v21[1] = sub_1C73ADB98;
    OUTLINED_FUNCTION_88_0();

    return FreeformStoryGenerator.title(from:storyElements:curatedChapters:keyAssetUUID:diagnosticContext:eventRecorder:progressReporter:)();
  }

  else
  {
    __break(1u);
  }

  return result;
}