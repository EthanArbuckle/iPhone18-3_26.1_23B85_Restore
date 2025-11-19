unint64_t sub_1C72BF74C()
{
  result = qword_1EC21A340;
  if (!qword_1EC21A340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A340);
  }

  return result;
}

uint64_t sub_1C72BF7A0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A328);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C72BF818()
{
  result = qword_1EC21A350;
  if (!qword_1EC21A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A350);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendDiagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C72BF948(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1C72BF99C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_1C72BFA24()
{
  result = qword_1EC21A358;
  if (!qword_1EC21A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A358);
  }

  return result;
}

unint64_t sub_1C72BFA7C()
{
  result = qword_1EDD0A000;
  if (!qword_1EDD0A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A000);
  }

  return result;
}

unint64_t sub_1C72BFAD4()
{
  result = qword_1EDD0A008;
  if (!qword_1EDD0A008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0A008);
  }

  return result;
}

unint64_t sub_1C72BFB28()
{
  result = qword_1EDD09FF8;
  if (!qword_1EDD09FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FF8);
  }

  return result;
}

unint64_t sub_1C72BFB7C()
{
  result = qword_1EC21A370;
  if (!qword_1EC21A370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A370);
  }

  return result;
}

unint64_t sub_1C72BFBD0()
{
  result = qword_1EC21A378;
  if (!qword_1EC21A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A378);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMBackendDiagnostics.ModelTypeContext.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C72BFD6C()
{
  result = qword_1EC21A380;
  if (!qword_1EC21A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A380);
  }

  return result;
}

unint64_t sub_1C72BFDC4()
{
  result = qword_1EDD09FE8;
  if (!qword_1EDD09FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FE8);
  }

  return result;
}

unint64_t sub_1C72BFE1C()
{
  result = qword_1EDD09FF0;
  if (!qword_1EDD09FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD09FF0);
  }

  return result;
}

void sub_1C72BFE70(uint64_t a1)
{
  v2 = 0;
  v16 = *(a1 + 16);
  v15 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = 32 * v2; ; i += 32)
  {
    if (v16 == v2)
    {

      return;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v5 = *(a1 + i + 32);
    v4 = *(a1 + i + 40);
    v6 = *(a1 + i + 48);
    v7 = *(a1 + i + 56);
    v8 = *(a1 + i + 57);
    swift_bridgeObjectRetain_n();
    v9 = sub_1C70F082C(v17, v5, v4);

    if (v9)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v11 = v15;
      v18 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716D818();
        v11 = v18;
      }

      v12 = *(v11 + 16);
      v13 = v12 + 1;
      if (v12 >= *(v11 + 24) >> 1)
      {
        sub_1C716D818();
        v13 = v12 + 1;
        v11 = v18;
      }

      ++v2;
      *(v11 + 16) = v13;
      v15 = v11;
      v14 = v11 + 32 * v12;
      *(v14 + 32) = v5;
      *(v14 + 40) = v4;
      *(v14 + 48) = v6;
      *(v14 + 56) = v7;
      *(v14 + 57) = v8;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_1C72BFFE8(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = sub_1C6FB6304();
  v8 = v7;
  if (v7 >= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v7;
  }

  v32 = MEMORY[0x1E69E7CC0];
  result = sub_1C716D7F8(0, v9 & ~(v9 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v31 = a2 >> 62;
    v28 = a2;
    v26 = a1;
    if (!v9)
    {
      v13 = a2 & 0xFFFFFFFFFFFFFF8;
      v30 = a2 & 0xC000000000000001;
      goto LABEL_22;
    }

    v11 = 0;
    v12 = a1 + 32;
    v30 = a2 & 0xC000000000000001;
    v13 = a2 & 0xFFFFFFFFFFFFFF8;
    v27 = v12;
    while (v6 != v11)
    {
      v14 = *(v27 + 8 * v11);
      if (v31)
      {
        result = sub_1C75516BC();
      }

      else
      {
        result = *(v13 + 16);
      }

      if (v11 == result)
      {
        goto LABEL_41;
      }

      if (v30)
      {
        sub_1C75504FC();
        v15 = MEMORY[0x1CCA5DDD0](v11, a2);
      }

      else
      {
        if (v11 >= *(v13 + 16))
        {
          goto LABEL_45;
        }

        v15 = *(a2 + 8 * v11 + 32);
        sub_1C75504FC();
        swift_unknownObjectRetain();
      }

      v16 = a3(v14, v15);
      if (v3)
      {
        swift_unknownObjectRelease();

        return v32;
      }

      v17 = v16;
      swift_unknownObjectRelease();

      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        result = sub_1C716D7F8((v18 > 1), v19 + 1, 1);
      }

      ++v11;
      *(v32 + 16) = v19 + 1;
      *(v32 + 8 * v19 + 32) = v17;
      a2 = v28;
      if (v9 == v11)
      {
LABEL_22:
        while (v6 != v9)
        {
          if (v9 >= v6)
          {
            goto LABEL_42;
          }

          if (__OFADD__(v9, 1))
          {
            goto LABEL_43;
          }

          v20 = *(v26 + 32 + 8 * v9);
          if (v31)
          {
            result = sub_1C75516BC();
          }

          else
          {
            result = *(v13 + 16);
          }

          if (v9 == result)
          {
            return v32;
          }

          if (v30)
          {
            sub_1C75504FC();
            v21 = MEMORY[0x1CCA5DDD0](v9, a2);
          }

          else
          {
            if (v9 >= *(v13 + 16))
            {
              goto LABEL_44;
            }

            v21 = *(a2 + 8 * v9 + 32);
            sub_1C75504FC();
            swift_unknownObjectRetain();
          }

          v22 = a3(v20, v21);
          if (v3)
          {

            swift_unknownObjectRelease();

            return v32;
          }

          v23 = v22;
          swift_unknownObjectRelease();

          v25 = *(v32 + 16);
          v24 = *(v32 + 24);
          if (v25 >= v24 >> 1)
          {
            result = sub_1C716D7F8((v24 > 1), v25 + 1, 1);
          }

          *(v32 + 16) = v25 + 1;
          *(v32 + 8 * v25 + 32) = v23;
          ++v9;
          a2 = v28;
        }

        return v32;
      }
    }

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
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1C72C0340(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 16);
  v7 = sub_1C6FB6304();
  v8 = sub_1C6FB6304();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  if (v9 >= v6)
  {
    v10 = v6;
  }

  else
  {
    v10 = v9;
  }

  v47 = MEMORY[0x1E69E7CC0];
  sub_1C716D888();
  if (v10 < 0)
  {
LABEL_63:
    __break(1u);
LABEL_64:

    __break(1u);
    return;
  }

  v46 = a2 >> 62;
  v44 = a3 >> 62;
  v40 = v5;
  v41 = a3;
  v11 = a3;
  v42 = a2;
  if (v10)
  {
    v45 = a2 & 0xC000000000000001;
    v35 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = a3 & 0xFFFFFFFFFFFFFF8;
    v43 = a3 & 0xC000000000000001;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v37 = a3 & 0xFFFFFFFFFFFFFF8;
    v13 = 4;
    v14 = v10;
    while (v13 - v6 != 4)
    {
      v15 = *(v5 + 8 * v13);
      if (v46)
      {
        v16 = sub_1C75516BC();
      }

      else
      {
        v16 = *(v35 + 16);
      }

      v17 = v13 - 4;
      if (v13 - 4 == v16)
      {
        goto LABEL_57;
      }

      if (v45)
      {
        sub_1C75504FC();
        v18 = MEMORY[0x1CCA5DDD0](v13 - 4, v42);
      }

      else
      {
        if (v17 >= *(v35 + 16))
        {
          goto LABEL_62;
        }

        v19 = *(v42 + 8 * v13);
        sub_1C75504FC();
        v18 = v19;
      }

      v7 = v18;
      if (v44)
      {
        v20 = sub_1C75516BC();
      }

      else
      {
        v20 = *(v12 + 16);
      }

      if (v17 == v20)
      {
        goto LABEL_64;
      }

      if (v43)
      {
        v21 = MEMORY[0x1CCA5DDD0](v13 - 4, v11);
      }

      else
      {
        if (v17 >= *(v12 + 16))
        {
          goto LABEL_58;
        }

        v21 = *(v11 + 8 * v13);
        swift_unknownObjectRetain();
      }

      v22 = *(v47 + 16);
      if (v22 >= *(v47 + 24) >> 1)
      {
        sub_1C716D888();
      }

      *(v47 + 16) = v22 + 1;
      v23 = (v47 + 24 * v22);
      v23[4] = v15;
      v23[5] = v7;
      v23[6] = v21;
      ++v13;
      --v14;
      v5 = v40;
      v11 = v41;
      v12 = v37;
      if (!v14)
      {
        a2 = v42;
        v24 = v6;
        v7 = v35;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  v45 = a2 & 0xC000000000000001;
  v12 = a3 & 0xFFFFFFFFFFFFFF8;
  v43 = a3 & 0xC000000000000001;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = v6;
LABEL_32:
  v38 = a2 + 32;
  v39 = v5 + 32;
  v36 = v11 + 32;
  v25 = v7;
  for (i = v12; v24 != v10; v12 = i)
  {
    if (v10 >= v24)
    {
      goto LABEL_59;
    }

    v27 = *(v39 + 8 * v10);
    v28 = v46 ? sub_1C75516BC() : v7[2];
    if (v10 == v28)
    {
      break;
    }

    if (v45)
    {
      sub_1C75504FC();
      v30 = MEMORY[0x1CCA5DDD0](v10, v42);
    }

    else
    {
      if (v10 >= v7[2])
      {
        goto LABEL_60;
      }

      v29 = *(v38 + 8 * v10);
      sub_1C75504FC();
      v30 = v29;
    }

    v7 = v30;
    if (v44)
    {
      v31 = sub_1C75516BC();
    }

    else
    {
      v31 = *(v12 + 16);
    }

    if (v10 == v31)
    {

      break;
    }

    if (v43)
    {
      v32 = MEMORY[0x1CCA5DDD0](v10, v41);
    }

    else
    {
      if (v10 >= *(v12 + 16))
      {
        goto LABEL_61;
      }

      v32 = *(v36 + 8 * v10);
      swift_unknownObjectRetain();
    }

    v33 = *(v47 + 16);
    if (v33 >= *(v47 + 24) >> 1)
    {
      sub_1C716D888();
    }

    *(v47 + 16) = v33 + 1;
    v34 = (v47 + 24 * v33);
    v34[4] = v27;
    v34[5] = v7;
    v34[6] = v32;
    ++v10;
    v24 = v6;
    v7 = v25;
  }
}

uint64_t sub_1C72C079C(uint64_t a1, void *a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v4 = a2;

    return sub_1C6FF5694(v3, v4);
  }

  else
  {

    return j__swift_continuation_throwingResume();
  }
}

void PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.init(with:)(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 10000;
  sub_1C6F65BE8(0, &qword_1EDD0FA60);
  v4 = sub_1C755146C();
  a2[1] = v4;
  v5 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  *(a2 + v5[7]) = a1;
  v6 = objc_allocWithZone(PNTextEmbeddingService);
  v7 = v4;
  v8 = a1;
  *(a2 + v5[8]) = [v6 init];
  v9 = (a2 + v5[9]);
  v9[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
  v9[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  v11 = v8;
  sub_1C754FEFC();
  type metadata accessor for PhotosSearchQueryManagerProxy();
  swift_allocObject();
  *boxed_opaque_existential_0 = sub_1C72FC904(v11, 0);
  sub_1C754FF2C();
}

uint64_t type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher()
{
  result = qword_1EDD0F900;
  if (!qword_1EDD0F900)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.preheat(eventRecorder:)()
{
  OUTLINED_FUNCTION_42();
  v1[183] = v0;
  v1[177] = v2;
  v3 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_18(v3);
  v1[189] = v4;
  v1[195] = *(v5 + 64);
  v1[201] = swift_task_alloc();
  v1[207] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  OUTLINED_FUNCTION_76(v6);
  v1[213] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[214] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[215] = v8;
  v1[216] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72C0BD0, 0, 0);
}

uint64_t sub_1C72C0BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v17 = *(v16 + 1704);
  v18 = *(v16 + 1656);
  v38 = *(v16 + 1560);
  v39 = *(v16 + 1608);
  v19 = *(v16 + 1512);
  v20 = *(v16 + 1464);
  v21 = *(v16 + 1416);
  __swift_project_boxed_opaque_existential_1(v21, v21[3]);
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  sub_1C754F61C();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  sub_1C754F16C();
  sub_1C6FB5FC8(v17, &qword_1EC214BF0);
  sub_1C72C6E78(v20, v18);
  sub_1C6FB5E28(v21, v16 + 1336);
  v26 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v27 = swift_allocObject();
  *(v16 + 1736) = v27;
  sub_1C72C6EDC(v18, v27 + v26);
  sub_1C6FD80E4((v16 + 1336), v27 + ((v26 + v38 + 7) & 0xFFFFFFFFFFFFFFF8));
  swift_asyncLet_begin();
  sub_1C72C6E78(v20, v39);
  v28 = swift_allocObject();
  *(v16 + 1744) = v28;
  sub_1C72C6EDC(v39, v28 + v26);
  swift_asyncLet_begin();
  OUTLINED_FUNCTION_17_1();

  return MEMORY[0x1EEE6DEC0](v29, v30, v31, v32, v33, v34, v35, v36, a9, v38, v39, a12, a13, a14, a15, a16);
}

uint64_t sub_1C72C0DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(v17 + 1752) = v16;
  if (v16)
  {
    return MEMORY[0x1EEE6DEB0](v17 + 656, a2, sub_1C72C0F74, v17 + 1376);
  }

  else
  {
    return MEMORY[0x1EEE6DEC0](v17 + 656, a2, sub_1C72C0E08, v17 + 1472, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_1C72C0E08(uint64_t a1, uint64_t a2)
{
  *(v3 + 1760) = v2;
  if (v2)
  {
    v4 = sub_1C72C1064;
    v5 = v3 + 656;
    v6 = v3 + 1520;
  }

  else
  {
    v4 = sub_1C72C0E48;
    v5 = v3 + 656;
    v6 = v3 + 1616;
  }

  return MEMORY[0x1EEE6DEB0](v5, a2, v4, v6);
}

uint64_t sub_1C72C0E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1728);
  v16 = *(v14 + 1720);
  v17 = *(v14 + 1712);
  v27 = *(v14 + 1656);
  v28 = *(v14 + 1608);
  OUTLINED_FUNCTION_70(*(v14 + 1416), *(*(v14 + 1416) + 24));
  sub_1C754F1AC();
  (*(v16 + 8))(v15, v17);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27, v28, a12, a13, a14);
}

uint64_t sub_1C72C0FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_56();
  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C72C10A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_15_56();
  (*(v16 + 8))(v14, v15);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C72C1154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1C72C1174, 0, 0);
}

uint64_t sub_1C72C1174()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 36));
  v3 = v2[3];
  v4 = v2[4];
  OUTLINED_FUNCTION_70(v2, v3);
  OUTLINED_FUNCTION_31_2();
  v9 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_1C71D2AB8;
  v7 = v0[3];

  return v9(v7, v3, v4);
}

uint64_t sub_1C72C12C0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = v0[18];
  v2 = *(v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 32));
  v0[2] = v0;
  v0[3] = sub_1C72C13C8;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BE0);
  OUTLINED_FUNCTION_62(v4);
  v0[11] = 1107296256;
  v0[12] = sub_1C72C079C;
  v0[13] = &block_descriptor_58;
  v0[14] = v3;
  [v2 prewarmWithCompletionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72C13C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 152) = v4;
  if (v4)
  {
    v5 = sub_1C711BBA8;
  }

  else
  {
    v5 = sub_1C711BB84;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[25] = a4;
  v5[26] = v4;
  v5[23] = a2;
  v5[24] = a3;
  v5[22] = a1;
  return OUTLINED_FUNCTION_0_67(sub_1C72C14E8);
}

uint64_t sub_1C72C14E8()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[24];
  if (*v1)
  {
    if (*v1 == 1)
    {
      v2 = *(v1 + 8);
      if (v2 == 1)
      {
        v3 = v0[23];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        v4 = swift_allocObject();
        v0[28] = v4;
        *(v4 + 16) = xmmword_1C7565670;
        *(v4 + 32) = v3;
        v5 = v3;
        v6 = swift_task_alloc();
        v0[29] = v6;
        *v6 = v0;
        v7 = OUTLINED_FUNCTION_38_26(v6);

        return sub_1C72C2158(v7, v8, v9);
      }

      goto LABEL_15;
    }

    v22 = v0[23];
    v23 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
    v24 = v22;
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = v0[23];
      v28 = OUTLINED_FUNCTION_41_0();
      v29 = swift_slowAlloc();
      *v28 = 138739971;
      *(v28 + 4) = v27;
      *v29 = v27;
      v30 = v27;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Perform metadata and embedding search for query %{sensitive}@", v28, 0xCu);
      sub_1C6FB5FC8(v29, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v31 = v0[24];

    v2 = *(v31 + 8);
    if (v2 != 1)
    {
LABEL_15:
      sub_1C72C7108();
      OUTLINED_FUNCTION_166_0();
      *v37 = v2;
      *(v37 + 8) = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_43();

      return v38();
    }

    v32 = v0[26];
    sub_1C72CBA00((v0 + 2));
    v33 = (v32 + *(v23 + 36));
    v13 = v33[3];
    v14 = v33[4];
    OUTLINED_FUNCTION_70(v33, v13);
    OUTLINED_FUNCTION_31_2();
    v39 = (v34 + *v34);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[32] = v35;
    *v35 = v36;
    v35[1] = sub_1C72C1BD0;
    v19 = v0[25];
    v21 = v0[23];
    v20 = v0 + 19;
    v18 = v0 + 2;
  }

  else
  {
    v11 = v0[26];
    v12 = (v11 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 36));
    v13 = v12[3];
    v14 = v12[4];
    OUTLINED_FUNCTION_70(v12, v13);
    OUTLINED_FUNCTION_31_2();
    v39 = (v15 + *v15);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[27] = v16;
    *v16 = v17;
    v16[1] = sub_1C72C1908;
    v18 = v0[24];
    v19 = v0[25];
    v20 = v0[22];
    v21 = v0[23];
  }

  return (v39)(v20, v21, v18, v19, v13, v14);
}

uint64_t sub_1C72C1908()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  OUTLINED_FUNCTION_43();

  return v3();
}

uint64_t sub_1C72C19E8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 240) = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    v6 = sub_1C72C202C;
  }

  else
  {

    v6 = sub_1C72C1AF8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1C72C1AF8()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 240);
  if (v1[2])
  {
    v2 = *(v0 + 176);
    v3 = v1[4];
    v4 = v1[5];
    v5 = v1[6];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v6 = v4;

    *v2 = v3;
    v2[1] = v6;
    v2[2] = v5;
  }

  else
  {

    sub_1C72C7108();
    v8 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_32_29(v8, v9);
    swift_willThrow();
  }

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C72C1BD0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 264) = v0;

  if (v0)
  {
    v7 = sub_1C72C2088;
  }

  else
  {
    v7 = sub_1C72C1CCC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C72C1CCC()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 184);
  *(v0 + 272) = *(v0 + 152);
  *(v0 + 288) = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = swift_allocObject();
  *(v0 + 296) = v2;
  *(v2 + 16) = xmmword_1C7565670;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 304) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_26(v4);

  return sub_1C72C2158(v5, v6, v7);
}

uint64_t sub_1C72C1DAC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_20();
  *v5 = v4;
  *(v7 + 312) = v6;
  *(v7 + 320) = v0;

  if (v0)
  {
    v8 = sub_1C72C20E4;
  }

  else
  {
    v8 = sub_1C72C1ED8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1C72C1ED8()
{
  v13 = v0;
  v1 = v0[39];
  v2 = v0[35];
  if (v1[2])
  {
    v3 = v0[22];
    v4 = v1[4];
    v5 = v1[5];
    v6 = v1[6];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v7 = v5;

    v12[0] = v4;
    v12[1] = v7;
    v12[2] = v6;
    FreeformStoryFetching.Result.merging(_:)(v12, v3);
    sub_1C70DF138((v0 + 2));

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_43();
  }

  else
  {

    sub_1C72C7108();
    v9 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_32_29(v9, v10);
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_1C70DF138((v0 + 2));
    OUTLINED_FUNCTION_43();
  }

  return v8();
}

uint64_t sub_1C72C202C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C72C2088()
{
  OUTLINED_FUNCTION_42();
  sub_1C70DF138(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C72C20E4()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 280);

  swift_unknownObjectRelease();
  sub_1C70DF138(v0 + 16);
  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C72C2158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v5 = sub_1C754F38C();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72C226C, 0, 0);
}

uint64_t sub_1C72C226C()
{
  OUTLINED_FUNCTION_20_48();
  v1 = v0[26];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_51_1();
  v3 = sub_1C754F61C();
  v0[30] = v3;
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v3);
  sub_1C754F16C();
  sub_1C6FB5FC8(v1, &qword_1EC214BF0);
  OUTLINED_FUNCTION_70(v2, v2[3]);
  sub_1C754F15C();
  v7 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  v0[31] = v7;
  v8 = v7;
  v9 = sub_1C72C5D20(v0[21]);
  v0[32] = v9;
  v10 = v9;
  v11 = [v9 resultLimit];
  v12 = sub_1C6FB6304();
  v13 = v12;
  v82 = v0;
  if (v11 >= 1)
  {
    if (v12)
    {
      v88 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_24_30();
      sub_1C6F7ED9C();
      if (v13 < 0)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v22 = 0;
      v23 = v0[20];
      v24 = v88;
      v25 = v23 & 0xC000000000000001;
      v84 = v23 + 32;
      do
      {
        if (v25)
        {
          v26 = MEMORY[0x1CCA5DDD0](v22, v82[20]);
        }

        else
        {
          v26 = *(v84 + 8 * v22);
        }

        v27 = v26;
        v28 = [v27 string];
        v29 = sub_1C755068C();
        v31 = v30;

        v89 = v24;
        v33 = *(v24 + 16);
        v32 = *(v24 + 24);
        v34 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          OUTLINED_FUNCTION_4_73(v32);
          v37 = v36;
          sub_1C6F7ED9C();
          v34 = v37;
          v24 = v89;
        }

        ++v22;
        *(v24 + 16) = v34;
        v35 = v24 + 16 * v33;
        *(v35 + 32) = v29;
        *(v35 + 40) = v31;
      }

      while (v13 != v22);
      v81 = v24;
      v0 = v82;
      OUTLINED_FUNCTION_20_48();
    }

    else
    {
      v38 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v38)
      {
        v50 = MEMORY[0x1E69E7CC0];
LABEL_45:

        v0[33] = v50;
        v72 = v0[23];
        OUTLINED_FUNCTION_70(v0 + 2, v0[5]);
        OUTLINED_FUNCTION_51_1();
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v73, v74, v75, v3);
        v76 = swift_task_alloc();
        v0[34] = v76;
        *(v76 + 16) = v72;
        *(v76 + 24) = v50;
        v77 = swift_task_alloc();
        v0[35] = v77;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3E8);
        *v77 = v0;
        v77[1] = sub_1C72C2A2C;
        OUTLINED_FUNCTION_128_0();

        return MEMORY[0x1EEE2A678](v14, v15, v16, v17, v18, v19, v20, v21);
      }

      v81 = MEMORY[0x1E69E7CC0];
    }

    v80 = v38;
    v87 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v49 = 0;
    v50 = v87;
    v14 = v81;
    v79 = v3;
    while (v49 < *(v14 + 16))
    {
      v83 = v49;
      sub_1C75504FC();
      v51 = sub_1C75507FC();
      v86 = v50;
      if (v51)
      {
        v52 = v51;
        v91 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_24_30();
        sub_1C716D8D4();
        if (v52 < 0)
        {
          goto LABEL_49;
        }

        v53 = v91;
        do
        {
          v54 = sub_1C755095C();
          v56 = v55;
          v57 = sub_1C755065C();
          IsSingleEmoji = CEMStringIsSingleEmoji();

          if (IsSingleEmoji)
          {

            v56 = 0xE100000000000000;
            v54 = 32;
          }

          v60 = *(v91 + 16);
          v59 = *(v91 + 24);
          if (v60 >= v59 >> 1)
          {
            OUTLINED_FUNCTION_4_73(v59);
            sub_1C716D8D4();
          }

          *(v91 + 16) = v60 + 1;
          v61 = v91 + 16 * v60;
          *(v61 + 32) = v54;
          *(v61 + 40) = v56;
          sub_1C755080C();
          --v52;
        }

        while (v52);
        v0 = v82;
        OUTLINED_FUNCTION_20_48();
      }

      else
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      v0[12] = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3D8);
      sub_1C72C77F8();
      v62 = sub_1C755096C();
      v64 = v63;

      v50 = v86;
      v65 = *(v86 + 16);
      if (v65 >= *(v86 + 24) >> 1)
      {
        sub_1C6F7ED9C();
        v50 = v86;
      }

      v49 = v83 + 1;
      *(v50 + 16) = v65 + 1;
      v66 = v50 + 16 * v65;
      *(v66 + 32) = v62;
      *(v66 + 40) = v64;
      v14 = v81;
      v3 = v79;
      if (v83 + 1 == v80)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v12)
  {
    v90 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_24_30();
    sub_1C716D888();
    if (v13 < 0)
    {
LABEL_51:
      __break(1u);
      return MEMORY[0x1EEE2A678](v14, v15, v16, v17, v18, v19, v20, v21);
    }

    v39 = 0;
    v40 = v0[20];
    v41 = v90;
    v42 = v40 & 0xC000000000000001;
    v85 = v40 + 32;
    v43 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v42)
      {
        v44 = MEMORY[0x1CCA5DDD0](v39, v0[20]);
      }

      else
      {
        v44 = *(v85 + 8 * v39);
      }

      v45 = v44;
      v47 = *(v90 + 16);
      v46 = *(v90 + 24);
      if (v47 >= v46 >> 1)
      {
        OUTLINED_FUNCTION_4_73(v46);
        sub_1C716D888();
        v43 = MEMORY[0x1E69E7CC0];
      }

      ++v39;
      *(v90 + 16) = v47 + 1;
      v48 = (v90 + 24 * v47);
      v48[4] = v43;
      v48[5] = v45;
      v48[6] = 0;
      v0 = v82;
    }

    while (v13 != v39);
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  v68 = v0[28];
  v67 = v0[29];
  v69 = v0[27];
  OUTLINED_FUNCTION_70(v0[22], *(v0[22] + 24));
  sub_1C754F1AC();
  (*(v68 + 8))(v67, v69);

  v70 = v0[1];

  return v70(v41);
}

uint64_t sub_1C72C2A2C()
{
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  sub_1C6FB5FC8(*(v2 + 200), &qword_1EC214BF0);

  if (v0)
  {
    v5 = sub_1C72C3600;
  }

  else
  {
    v5 = sub_1C72C2BA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C72C2BA8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 184);
  v5 = *(v0 + 88);
  v148 = *(v0 + 80);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  v10 = swift_task_alloc();
  v10[2] = v5;
  v10[3] = v4;
  v10[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3F0);
  v136 = v6;
  sub_1C754F18C();
  if (v1)
  {
    v11 = *(v0 + 248);
    v12 = *(v0 + 256);
    sub_1C6FB5FC8(*(v0 + 192), &qword_1EC214BF0);
  }

  else
  {
    sub_1C6FB5FC8(*(v0 + 192), &qword_1EC214BF0);

    v13 = *(v0 + 104);
    v14 = *(v13 + 16);
    v15 = *(v5 + 16);

    if (v14 == v15)
    {
      v16 = *(v0 + 184);
      v144 = *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 24);
      v17 = sub_1C754FEEC();
      v18 = sub_1C75511BC();
      v19 = os_log_type_enabled(v17, v18);
      v20 = MEMORY[0x1E69E7CC0];
      if (v19)
      {
        v142 = v16;
        v21 = OUTLINED_FUNCTION_41_0();
        v145 = OUTLINED_FUNCTION_20_1();
        *v21 = 136315138;
        swift_getKeyPath();
        v22 = *(v13 + 16);
        if (v22)
        {
          v139 = v21;
          LODWORD(v140) = v18;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v23 = 32;
          v24 = v20;
          do
          {
            *(v0 + 152) = *(v13 + v23);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v26)
            {
              OUTLINED_FUNCTION_4_73(v25);
              sub_1C716D854();
              v24 = v20;
            }

            OUTLINED_FUNCTION_34_28();
            v23 += 8;
            --v22;
          }

          while (v22);

          v20 = MEMORY[0x1E69E7CC0];
          LOBYTE(v18) = v140;
        }

        else
        {

          v24 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6530]);
        v37 = OUTLINED_FUNCTION_41_29();
        v45 = OUTLINED_FUNCTION_39_30(v37, v38, v39, v40, v41, v42, v43, v44);

        *(v21 + 4) = v45;
        _os_log_impl(&dword_1C6F5C000, v17, v18, "Number of unthresholded embedding search results per query: %s", v21, 0xCu);
        OUTLINED_FUNCTION_25_33(v46, v47, v48, v49, v50, v51, v52, v53, v136, v138, v139, v140, v142, v144, v145);
        OUTLINED_FUNCTION_109();

        v36 = v148;
        v16 = v141;
      }

      else
      {

        v36 = v148;
      }

      v54 = *(v0 + 184);
      v55 = *(v0 + 168);
      v56 = sub_1C75504FC();
      v57 = sub_1C72C6370(v56);

      swift_beginAccess();
      *(v0 + 104) = v57;

      v58 = swift_task_alloc();
      *(v58 + 16) = v54;
      *(v58 + 24) = v55;
      sub_1C75504FC();
      sub_1C75504FC();
      v59 = sub_1C72BFFE8(v57, v36, sub_1C72C7920);

      *(v0 + 104) = v59;

      v60 = sub_1C754FEEC();
      v61 = sub_1C75511BC();
      if (os_log_type_enabled(v60, v61))
      {
        v143 = v16;
        v62 = OUTLINED_FUNCTION_41_0();
        v146 = OUTLINED_FUNCTION_20_1();
        *v62 = 136315138;
        swift_getKeyPath();
        v63 = *(v59 + 16);
        if (v63)
        {
          LODWORD(v139) = v61;
          v140 = v62;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v64 = 32;
          v65 = v20;
          do
          {
            *(v0 + 136) = *(v59 + v64);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v26)
            {
              OUTLINED_FUNCTION_4_73(v66);
              sub_1C716D854();
              v65 = v20;
            }

            OUTLINED_FUNCTION_34_28();
            v64 += 8;
            --v63;
          }

          while (v63);

          v20 = MEMORY[0x1E69E7CC0];
          v62 = v140;
        }

        else
        {

          v65 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v65, MEMORY[0x1E69E6530]);
        v67 = OUTLINED_FUNCTION_41_29();
        v75 = OUTLINED_FUNCTION_39_30(v67, v68, v69, v70, v71, v72, v73, v74);

        *(v62 + 4) = v75;
        OUTLINED_FUNCTION_49_19(&dword_1C6F5C000, v76, v77, "Number of thresholded embedding search results per query: %s");
        OUTLINED_FUNCTION_25_33(v78, v79, v80, v81, v82, v83, v84, v85, v136, v138, v139, v140, v143, v144, v146);
        OUTLINED_FUNCTION_109();

        v36 = v148;
        v16 = v141;
      }

      else
      {
      }

      v86 = sub_1C72FF86C(*(v0 + 248));
      if (v86)
      {
        v87 = v86;
        v88 = sub_1C75504FC();
        v89 = sub_1C72C6680(v88, v87);

        *(v0 + 104) = v89;

        v59 = v89;
      }

      v90 = [*(v0 + 248) maxSearchResults];
      if (v90 >= 1)
      {
        v91 = *(v59 + 16);
        v92 = MEMORY[0x1E69E7CC0];
        if (v91)
        {
          v93 = v90;
          v141 = v16;
          v149 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          v94 = OUTLINED_FUNCTION_24_30();
          sub_1C716D7F8(v94, v91, 0);
          v92 = v149;
          v95 = 32;
          do
          {
            v96 = *(v59 + v95);
            if (v96[2] <= v93)
            {
              sub_1C75504FC();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EF8);
              v97 = swift_allocObject();
              v98 = _swift_stdlib_malloc_size(v97);
              v97[2] = v93;
              v97[3] = 2 * ((v98 - 32) / 32);
              swift_arrayInitWithCopy();
              v96 = v97;
            }

            v100 = *(v149 + 16);
            v99 = *(v149 + 24);
            if (v100 >= v99 >> 1)
            {
              v101 = OUTLINED_FUNCTION_4_73(v99);
              sub_1C716D7F8(v101, v100 + 1, 1);
            }

            *(v149 + 16) = v100 + 1;
            *(v149 + 8 * v100 + 32) = v96;
            v95 += 8;
            --v91;
          }

          while (v91);

          v36 = v148;
        }

        *(v0 + 104) = v92;

        v59 = v92;
        v20 = MEMORY[0x1E69E7CC0];
      }

      v102 = sub_1C754FEEC();
      v103 = sub_1C75511BC();
      if (os_log_type_enabled(v102, v103))
      {
        v104 = OUTLINED_FUNCTION_41_0();
        v147 = OUTLINED_FUNCTION_20_1();
        *v104 = 136315138;
        swift_getKeyPath();
        v105 = *(v59 + 16);
        if (v105)
        {
          LODWORD(v141) = v103;
          v144 = v104;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v106 = 32;
          v107 = v20;
          do
          {
            *(v0 + 120) = *(v59 + v106);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v26)
            {
              OUTLINED_FUNCTION_4_73(v108);
              sub_1C716D854();
              v107 = v20;
            }

            OUTLINED_FUNCTION_34_28();
            v106 += 8;
            --v105;
          }

          while (v105);

          v104 = v144;
        }

        else
        {

          v107 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v107, MEMORY[0x1E69E6530]);
        v109 = OUTLINED_FUNCTION_41_29();
        v117 = OUTLINED_FUNCTION_39_30(v109, v110, v111, v112, v113, v114, v115, v116);

        *(v104 + 4) = v117;
        OUTLINED_FUNCTION_49_19(&dword_1C6F5C000, v118, v119, "Number of final embedding search results per query: %s");
        OUTLINED_FUNCTION_25_33(v120, v121, v122, v123, v124, v125, v126, v127, v137, v138, v139, v140, v141, v144, v147);
        OUTLINED_FUNCTION_109();

        v36 = v148;
      }

      else
      {
      }

      v129 = *(v0 + 248);
      v128 = *(v0 + 256);
      v130 = *(v0 + 160);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C72C0340(v59, v130, v36);

      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_1(v0 + 16);
      v132 = *(v0 + 224);
      v131 = *(v0 + 232);
      v133 = *(v0 + 216);
      OUTLINED_FUNCTION_70(*(v0 + 176), *(*(v0 + 176) + 24));
      sub_1C754F1AC();
      (*(v132 + 8))(v131, v133);

      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X2, X16 }
    }

    v27 = *(v0 + 248);
    v28 = *(v0 + 256);

    sub_1C72C7108();
    v29 = OUTLINED_FUNCTION_166_0();
    OUTLINED_FUNCTION_32_29(v29, v30);
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v32 = *(v0 + 224);
  v31 = *(v0 + 232);
  v33 = *(v0 + 216);
  OUTLINED_FUNCTION_70(*(v0 + 176), *(*(v0 + 176) + 24));
  sub_1C754F1AC();
  (*(v32 + 8))(v31, v33);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_128_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C72C3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 248);

  __swift_destroy_boxed_opaque_existential_1(v12 + 16);
  v26 = *(v12 + 288);
  v14 = *(v12 + 224);
  v15 = *(v12 + 232);
  v16 = *(v12 + 216);
  OUTLINED_FUNCTION_70(*(v12 + 176), *(*(v12 + 176) + 24));
  sub_1C754F1AC();
  (*(v14 + 8))(v15, v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performBatchSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  if (!*a2)
  {
    v19 = (v3 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 36));
    OUTLINED_FUNCTION_70(v19, v19[3]);
    v20 = OUTLINED_FUNCTION_16_49();
    return v21(v20);
  }

  if (*a2 == 1)
  {
    if (*(a2 + 8) == 1)
    {
      v14 = OUTLINED_FUNCTION_16_49();

      return sub_1C72C3A8C(v14, v15, v16, v17);
    }

LABEL_14:
    v35 = MEMORY[0x1EEE9AC00](v11);
    *(&v37 - 4) = a1;
    *(&v37 - 3) = v36;
    *(&v37 - 16) = 0;
    (*(v9 + 104))(v13, *MEMORY[0x1E69E8650], v7, v35);
    return sub_1C7550DFC();
  }

  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_41_0();
    v40 = v9;
    v25 = v24;
    v38 = v24;
    v39 = OUTLINED_FUNCTION_20_1();
    v42 = v39;
    *v25 = 136642819;
    v26 = sub_1C6F65BE8(0, &qword_1EDD0CE30);
    v27 = MEMORY[0x1CCA5D090](a1, v26);
    v41 = a3;
    LOBYTE(v25) = v23;
    v29 = sub_1C6F765A4(v27, v28, &v42);

    v30 = v38;
    *(v38 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v22, v25, "Perform metadata and embedding search for queries %{sensitive}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_109();
    v9 = v40;
    OUTLINED_FUNCTION_109();
  }

  if (*(a2 + 8) != 1)
  {
    goto LABEL_14;
  }

  v31 = OUTLINED_FUNCTION_16_49();

  return sub_1C72C3E68(v31, v32, v33, v34);
}

uint64_t sub_1C72C3A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v24 = a1;
  v28 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v22 = sub_1C754F38C();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F60C();
  v16 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C754F16C();
  sub_1C6FB5FC8(v9, &qword_1EC214BF0);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F17C();
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C754F16C();
  sub_1C6FB5FC8(v9, &qword_1EC214BF0);
  v29 = v26;
  v30 = v24;
  v31 = v27;
  v32 = v34;
  v33 = v12;
  (*(v5 + 104))(v23, *MEMORY[0x1E69E8650], v25);
  sub_1C7550DFC();
  v17 = *(v10 + 8);
  v18 = v12;
  v19 = v22;
  v17(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  return (v17)(v15, v19);
}

uint64_t sub_1C72C3E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a1;
  v47 = a4;
  v5 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  v6 = v5 - 8;
  v45 = *(v5 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0);
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v50 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1C754F38C();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v36 - v17;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F60C();
  v38 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
  sub_1C754F16C();
  sub_1C6FB5FC8(v11, &qword_1EC214BF0);
  sub_1C72CBA00(v60);
  v18 = v40;
  v19 = (v40 + *(v6 + 44));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v21 + 24))(v56, v60, a3, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  v48 = swift_allocBox();
  sub_1C7550DBC();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v41 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F17C();
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
  v22 = v49;
  sub_1C754F16C();
  sub_1C6FB5FC8(v11, &qword_1EC214BF0);
  sub_1C6FB5E28(v59, v58);
  v23 = v51;
  v24 = v22;
  v25 = v52;
  (*(v51 + 16))(v53, v24, v52);
  sub_1C72C6E78(v18, v54);
  sub_1C72C7318(v55, v57);
  v26 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v45 + 80) + v28 + 8) & ~*(v45 + 80);
  v30 = (v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v48;
  sub_1C6FD80E4(v58, v31 + 24);
  (*(v23 + 32))(v31 + v26, v53, v25);
  *(v31 + v27) = v37;
  *(v31 + v28) = v39;
  sub_1C72C6EDC(v54, v31 + v29);
  *(v31 + v30) = v56;
  memcpy((v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)), v57, 0x81uLL);

  sub_1C75504FC();
  sub_1C7550DEC();
  v32 = v52;
  v33 = *(v51 + 8);
  v33(v49, v52);
  (*(v46 + 8))(v50, v42);
  sub_1C70DF138(v60);
  __swift_destroy_boxed_opaque_existential_1(v59);

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v34 = v43;
  sub_1C754F1AC();
  return (v33)(v34, v32);
}

uint64_t sub_1C72C44F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v43 = a5;
  v41 = a4;
  v46 = a3;
  v40 = a2;
  v42 = a1;
  v48 = sub_1C754F38C();
  v47 = *(v48 - 8);
  v45 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v35 = &v34 - v13;
  v15 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v16;
  v38 = v16;
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v39 = &v34 - v20;
  v22 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  sub_1C72C6E78(a2, v18);
  sub_1C72C7318(v41, __src);
  sub_1C6FB5E28(v43, v49);
  (*(v11 + 16))(v14, a1, v10);
  v23 = v47;
  (*(v47 + 16))(v9, v44, v48);
  v24 = *(v37 + 80);
  v25 = (v24 + 32) & ~v24;
  v44 = v24 | 7;
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 151) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v11 + 80) + v27 + 40) & ~*(v11 + 80);
  v29 = (v12 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1C72C6EDC(v18, v30 + v25);
  *(v30 + v26) = v46;
  memcpy((v30 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)), __src, 0x81uLL);
  sub_1C6FD80E4(v49, v30 + v27);
  (*(v11 + 32))(v30 + v28, v35, v34);
  (*(v47 + 32))(v30 + v29, v36, v48);
  sub_1C75504FC();
  v31 = sub_1C6FEB80C(0, 0, v39, &unk_1C7580090, v30);
  sub_1C72C6E78(v40, v18);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_1C72C6EDC(v18, v32 + ((v24 + 24) & ~v24));
  return sub_1C7550D7C();
}

uint64_t sub_1C72C49B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v16;
  v8[10] = a5;
  v8[11] = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8);
  v8[14] = v12;
  v8[15] = *(v12 - 8);
  v8[16] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[17] = v13;
  *v13 = v8;
  v13[1] = sub_1C72C4AE4;

  return sub_1C72C2158(a5, a6, a7);
}

uint64_t sub_1C72C4AE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v5 = sub_1C72C4D00;
  }

  else
  {
    v5 = sub_1C72C4BE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C72C4BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (*(v12 + 120) + 8);
    v16 = (v13 + 48);
    do
    {
      v17 = *(v12 + 128);
      v18 = *(v12 + 112);
      v20 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = *v16;
      v16 += 3;
      *(v12 + 48) = v20;
      *(v12 + 56) = v19;
      *(v12 + 64) = v21;
      *(v12 + 72) = 0;
      swift_unknownObjectRetain();
      sub_1C75504FC();
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
      sub_1C7550D8C();
      (*v15)(v17, v18);
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_30_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  sub_1C7550D9C();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1C72C4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  result = sub_1C6FB6304();
  if (result)
  {
    v14 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v15 = 0;
    v16 = *(v12 + 152);
    v17 = *(v12 + 80);
    v18 = v17 & 0xC000000000000001;
    v19 = v17 + 32;
    v20 = (*(v12 + 120) + 8);
    do
    {
      if (v18)
      {
        v21 = MEMORY[0x1CCA5DDD0](v15, *(v12 + 80));
      }

      else
      {
        v21 = *(v19 + 8 * v15);
      }

      v22 = *(v12 + 152);
      v23 = *(v12 + 128);
      v24 = *(v12 + 112);
      ++v15;
      *(v12 + 16) = v21;
      *(v12 + 24) = v16;
      *(v12 + 32) = 0;
      *(v12 + 40) = 1;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
      sub_1C7550D8C();
      (*v20)(v23, v24);
    }

    while (v14 != v15);
  }

  OUTLINED_FUNCTION_30_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  sub_1C7550D9C();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C72C4E50(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v4 + 16);
  v13(&v24 - v11, a1, v3, v10);
  v14 = (*(v4 + 88))(v12, v3);
  v15 = *MEMORY[0x1E69E8618];
  v26 = *(v4 + 8);
  v26(v12, v3);
  if (v14 == v15)
  {
    sub_1C7550E1C();
  }

  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  (v13)(v8, a1, v3);
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    (v13)(v25, v8, v3);
    v20 = sub_1C75506EC();
    v22 = v21;
    v26(v8, v3);
    v23 = sub_1C6F765A4(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "EmbeddingSearch stream terminated in state %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  else
  {

    v26(v8, v3);
  }
}

uint64_t sub_1C72C514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v11;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a1;
  v8[22] = a3;
  v8[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8);
  v8[30] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72C51EC, 0, 0);
}

uint64_t sub_1C72C51EC()
{
  OUTLINED_FUNCTION_42();
  swift_beginAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 248) = v1;
  *v1 = v2;
  v1[1] = sub_1C72C5294;
  v3 = *(v0 + 232);

  return MEMORY[0x1EEE6D9D0](v0 + 16, v3);
}

uint64_t sub_1C72C5294()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1C72C5384, 0, 0);
}

uint64_t sub_1C72C5384()
{
  v75 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 256) = v2;
  *(v0 + 264) = v1;
  *(v0 + 272) = v3;
  v4 = *(v0 + 40);
  *(v0 + 41) = v4;
  if (v4 == 255)
  {
    v6 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
    sub_1C754F1AC();
    *v6 = v2;
    *(v6 + 8) = v1;
    *(v6 + 16) = v3;
    *(v6 + 24) = -1;
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(v0 + 168);
    *v5 = v2;
    *(v5 + 8) = v1;
    *(v5 + 16) = v3;
    *(v5 + 24) = 1;
    goto LABEL_14;
  }

  v7 = *(v0 + 192);
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 168);
    v10 = v1;
    v11 = v8;
    v12 = OUTLINED_FUNCTION_17_58();
    sub_1C710A128(v12, v13, v14, v15);
    *v9 = v1;
    *(v9 + 8) = v8;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    goto LABEL_14;
  }

  v16 = *(v0 + 200);
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v1;
    v19 = OUTLINED_FUNCTION_17_58();
    sub_1C72C7764(v19, v20, v21, v22);
    v23 = *(v17 + 16);
    sub_1C75504FC();
    if (v23 && (sub_1C6FC2A2C(), (v25 & 1) != 0))
    {
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v28 = *(v0 + 256);
      v68 = *(v0 + 168);
      v29 = (*(v17 + 56) + 24 * v24);
      v31 = *v29;
      v30 = v29[1];
      v32 = v29[2];
      swift_unknownObjectRetain();
      sub_1C75504FC();
      v33 = v30;

      v71 = v28;
      v72 = v27;
      v73 = v26;
      v74[0] = v31;
      v74[1] = v33;
      v74[2] = v32;
      v34 = OUTLINED_FUNCTION_19_53();
      sub_1C72C7764(v34, v35, v36, v37);
      FreeformStoryFetching.Result.merging(_:)(v74, &v69);

      v38 = OUTLINED_FUNCTION_19_53();
      sub_1C710A128(v38, v39, v40, v41);
      v42 = OUTLINED_FUNCTION_19_53();
      sub_1C710A128(v42, v43, v44, v45);
      v46 = v72;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v47 = v70;
      *v68 = v69;
      *(v68 + 16) = v47;
      *(v68 + 24) = 0;
    }

    else
    {

      type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
      v48 = sub_1C754FEEC();
      v49 = sub_1C755119C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1C6F5C000, v48, v49, "Metadata Search returned a result for a query for which Embedding Search did not return a result or an error.", v50, 2u);
        OUTLINED_FUNCTION_109();
      }

      v51 = *(v0 + 264);
      v52 = *(v0 + 168);

      sub_1C72C7108();
      v53 = OUTLINED_FUNCTION_166_0();
      *v54 = 0;
      *(v54 + 8) = 1;
      OUTLINED_FUNCTION_14_49();
      OUTLINED_FUNCTION_14_49();
      *v52 = v51;
      *(v52 + 8) = v53;
      *(v52 + 16) = 0;
      *(v52 + 24) = 1;
    }

LABEL_14:
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v57 = v1;
  v58 = OUTLINED_FUNCTION_17_58();
  sub_1C72C7764(v58, v59, v60, v61);
  v62 = swift_task_alloc();
  *(v0 + 280) = v62;
  *v62 = v0;
  v62[1] = sub_1C72C5718;
  OUTLINED_FUNCTION_128_0();

  return sub_1C72C2158(v63, v64, v65);
}

uint64_t sub_1C72C5718()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v4;
  *(v2 + 296) = v0;

  if (v0)
  {
    v5 = sub_1C72C5C58;
  }

  else
  {
    v5 = sub_1C72C581C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C72C581C()
{
  v64 = v0;
  v1 = *(v0 + 288);
  v2 = 0;
  v56 = v1;
  v57 = *(v1 + 16);
  v3 = (v1 + 48);
  v4 = MEMORY[0x1E69E7CC8];
  while (v57 != v2)
  {
    if (v2 >= *(v56 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v6 = *(v3 - 2);
    v5 = *(v3 - 1);
    v7 = *v3;
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v8 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v63[0] = v4;
    sub_1C6FC2A2C();
    if (__OFADD__(v4[2], (v10 & 1) == 0))
    {
      goto LABEL_26;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3D0);
    v4 = v63[0];
    if (sub_1C7551A2C())
    {
      sub_1C6FC2A2C();
      if ((v12 & 1) != (v14 & 1))
      {
        sub_1C6F65BE8(0, &qword_1EDD0CE30);

        sub_1C7551E4C();
        return;
      }

      v11 = v13;
    }

    if (v12)
    {
      v15 = (*(v63[0] + 56) + 24 * v11);
      v16 = v15[1];
      *v15 = v6;
      v15[1] = v8;
      v15[2] = v7;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v63[0] + 8 * (v11 >> 6) + 64) |= 1 << v11;
      *(v4[6] + 8 * v11) = v8;
      v17 = (v4[7] + 24 * v11);
      *v17 = v6;
      v17[1] = v8;
      v17[2] = v7;

      swift_unknownObjectRelease();
      v18 = v4[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_27;
      }

      v4[2] = v20;
    }

    v3 += 3;
    ++v2;
  }

  v21 = v55[25];

  swift_beginAccess();
  *(v21 + 16) = v4;
  sub_1C75504FC();

  if (v4[2] && (sub_1C6FC2A2C(), (v23 & 1) != 0))
  {
    v25 = v55[33];
    v24 = v55[34];
    v26 = v55[32];
    v27 = v55[21];
    v28 = (v4[7] + 24 * v22);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v32 = v30;

    v60 = v26;
    v61 = v25;
    v62 = v24;
    v63[0] = v29;
    v63[1] = v32;
    v63[2] = v31;
    v33 = OUTLINED_FUNCTION_21_47();
    sub_1C72C7764(v33, v34, v35, v36);
    FreeformStoryFetching.Result.merging(_:)(v63, &v58);

    v37 = OUTLINED_FUNCTION_21_47();
    sub_1C710A128(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_21_47();
    sub_1C710A128(v41, v42, v43, v44);
    v45 = v61;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v46 = v59;
    *v27 = v58;
    *(v27 + 16) = v46;
    *(v27 + 24) = 0;
  }

  else
  {

    type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "Metadata Search returned a result for a query for which Embedding Search did not return a result or an error.", v49, 2u);
      OUTLINED_FUNCTION_109();
    }

    v50 = v55[33];
    v51 = v55[21];

    sub_1C72C7108();
    v52 = OUTLINED_FUNCTION_166_0();
    *v53 = 0;
    *(v53 + 8) = 1;
    OUTLINED_FUNCTION_48_20();
    OUTLINED_FUNCTION_48_20();
    *v51 = v50;
    *(v51 + 8) = v52;
    *(v51 + 16) = 0;
    *(v51 + 24) = 1;
  }

  OUTLINED_FUNCTION_43();

  v54();
}

uint64_t sub_1C72C5C58()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[24];
  v4 = v0[21];
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_14_49();
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v1;
  v6 = v1;

  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C72C5D20(uint64_t a1)
{
  v4 = v1;
  v6 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  if (v2)
  {
    return v3;
  }

  result = sub_1C72C7948(v6);
  if (result)
  {
    v8 = result;
    if (*v4 >= *(result + 16))
    {
      sub_1C6F65BE8(0, &qword_1EDD068A0);
      v10 = sub_1C71CD85C(v8);
      v11 = sub_1C73B944C(v10);

      return v11;
    }
  }

  v9 = *(a1 + 56);
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E69BE598]) initWithResultLimit_];
    [v3 setFullScan_];
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72C5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72C5E3C, 0, 0);
}

uint64_t sub_1C72C5E3C()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[20];
  v2 = *(v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 32));
  v3 = sub_1C7550B3C();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72C5F70;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0);
  OUTLINED_FUNCTION_62(v5);
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_27;
  v0[14] = v4;
  [v2 requestTextEmbeddings:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72C5F70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1C7122914;
  }

  else
  {
    v5 = sub_1C72C6070;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void *sub_1C72C6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);

  v14 = sub_1C6FB6304();
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v31 = MEMORY[0x1E69E7CC0];
    result = sub_1C716E42C(0, v14 & ~(v14 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v15 = v31;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v18, v13);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease_n();
      a9 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C716E42C((v20 > 1), v21 + 1, 1);
      }

      ++v18;
      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v19;
    }

    while (v16 != v18);
  }

  v22 = *(v12 + 152);
  *v22 = v13;
  v22[1] = v15;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1C72C61C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v9 = sub_1C754DD2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6F65BE8(0, &unk_1EDD0CD50);
  v13 = [*(a2 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher() + 28)) photoLibraryURL];
  sub_1C754DCCC();

  v14 = sub_1C73B9014(a1, v12, a3);
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v14;
  result = (*(v10 + 8))(v12, v9);
  *a4 = v16;
  return result;
}

uint64_t sub_1C72C6344@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C6FB6324(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C72C6370(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C716D7F8(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      v5 = sub_1C75504FC();
      sub_1C72BFE70(v5);
      v7 = v6;

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C716D7F8((v8 > 1), v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C72C6460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[5];
  v7 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v6);
  (*(v7 + 8))(a2, v6, v7);
  if (!v3)
  {
    v9 = v8;
    type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
    v10 = sub_1C754FEEC();
    v11 = sub_1C755118C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "Threshold for query: %f", v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    v13 = 0;
    v14 = *(a1 + 16);
    v15 = a1 + 56;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v17 = (v15 + 32 * v13);
    while (v14 != v13)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }

      v19 = v17;
      v20 = *v17;
      v17 += 4;
      ++v13;
      if ((v20 & 1) == 0)
      {
        v21 = *(v19 - 1);
        if (v9 <= v21)
        {
          v23 = *(v17 - 7);
          v22 = *(v17 - 6);
          v24 = *(v17 - 31);
          sub_1C75504FC();
          v27 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C716D818();
          }

          v25 = *(v16 + 16);
          if (v25 >= *(v16 + 24) >> 1)
          {
            sub_1C716D818();
          }

          *(v16 + 16) = v25 + 1;
          v26 = v16 + 32 * v25;
          *(v26 + 32) = v27;
          *(v26 + 40) = v22;
          *(v26 + 48) = v21;
          *(v26 + 56) = 0;
          *(v26 + 57) = v24;
          v13 = v18;
          goto LABEL_6;
        }
      }
    }
  }
}

uint64_t sub_1C72C6680(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a1;
    v48 = MEMORY[0x1E69E7CC0];
    sub_1C716D7F8(0, v4, 0);
    v7 = 0;
    v39 = v48;
    v36 = v4;
    v37 = v6 + 32;
    v8 = a2 + 56;
LABEL_3:
    v9 = *(v37 + 8 * v7);
    v38 = v7 + 1;
    v44 = *(v9 + 16);
    v41 = v9 + 32;
    sub_1C75504FC();
    v10 = 0;
    v40 = v9;
    while (1)
    {
LABEL_4:
      if (v10 == v44)
      {

        v22 = v39;
        v48 = v39;
        v24 = *(v39 + 16);
        v23 = *(v39 + 24);
        v6 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          sub_1C716D7F8((v23 > 1), v24 + 1, 1);
          v22 = v48;
        }

        *(v22 + 16) = v6;
        v39 = v22;
        *(v22 + 8 * v24 + 32) = v5;
        v7 = v38;
        v5 = MEMORY[0x1E69E7CC0];
        if (v38 == v36)
        {
          v25 = v39;
          goto LABEL_25;
        }

        goto LABEL_3;
      }

      v11 = v10;
      if (v10 >= *(v9 + 16))
      {
        break;
      }

      ++v10;
      if (*(a2 + 16))
      {
        v12 = (v41 + 32 * v11);
        v14 = *v12;
        v13 = v12[1];
        v43 = v12[2];
        v6 = *(v12 + 24);
        v42 = *(v12 + 25);
        sub_1C7551F3C();
        swift_bridgeObjectRetain_n();
        sub_1C75505AC();
        v15 = sub_1C7551FAC();
        v16 = ~(-1 << *(a2 + 32));
        do
        {
          v2 = v15 & v16;
          if (((*(v8 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_4;
          }

          v17 = (*(a2 + 48) + 16 * v2);
          if (*v17 == v14 && v17[1] == v13)
          {
            break;
          }

          v19 = sub_1C7551DBC();
          v15 = v2 + 1;
        }

        while ((v19 & 1) == 0);

        v47 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D818();
          v5 = v47;
        }

        v20 = *(v5 + 16);
        v2 = v20 + 1;
        if (v20 >= *(v5 + 24) >> 1)
        {
          sub_1C716D818();
          v5 = v47;
        }

        *(v5 + 16) = v2;
        v21 = v5 + 32 * v20;
        *(v21 + 32) = v14;
        *(v21 + 40) = v13;
        *(v21 + 48) = v43;
        *(v21 + 56) = v6;
        *(v21 + 57) = v42;
        v9 = v40;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_25:
  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  sub_1C75504FC();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  LOBYTE(v8) = sub_1C75511BC();

  v39 = v25;
  if (os_log_type_enabled(v2, v8))
  {
    v6 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v46[0] = v10;
    *v6 = 134218242;
    *(v6 + 4) = *(a2 + 16);

    *(v6 + 12) = 2080;
    swift_getKeyPath();
    v26 = *(v25 + 16);
    if (v26)
    {
      v45 = v10;
      v48 = v5;
      sub_1C716D854();
      v27 = v5;
      v28 = v25 + 32;
      do
      {
        sub_1C75504FC();
        swift_getAtKeyPath();

        v29 = v47;
        v48 = v27;
        v30 = *(v27 + 16);
        if (v30 >= *(v27 + 24) >> 1)
        {
          sub_1C716D854();
          v27 = v48;
        }

        *(v27 + 16) = v30 + 1;
        *(v27 + 8 * v30 + 32) = v29;
        v28 += 8;
        --v26;
      }

      while (v26);

      v10 = v45;
      goto LABEL_35;
    }

LABEL_34:

    v27 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v31 = MEMORY[0x1CCA5D090](v27, MEMORY[0x1E69E6530]);
    v33 = v32;

    v34 = sub_1C6F765A4(v31, v33, v46);

    *(v6 + 14) = v34;
    _os_log_impl(&dword_1C6F5C000, v2, v8, "Number of scoping assets: %ld, number of scoped search results per query: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);

    return v39;
  }

  return v39;
}

void sub_1C72C6B44(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  if (!(a2 >> 62))
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
    sub_1C7550D9C();
    return;
  }

  v11 = sub_1C75516BC();
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = (v7 + 8);
    v14 = a4 & 1;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA5DDD0](v12, a2, v8);
      }

      else
      {
        v15 = *(a2 + 8 * v12 + 32);
      }

      v16 = v15;
      ++v12;
      sub_1C72C7108();
      v17 = swift_allocError();
      *v18 = v20;
      *(v18 + 8) = v14;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      v24 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
      sub_1C7550D8C();
      (*v13)(v10, v6);
    }

    while (v11 != v12);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C72C6D20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;

  return PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.preheat(eventRecorder:)();
}

uint64_t sub_1C72C6DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C6F738F4;

  return PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(a1, a2, a3, a4);
}

uint64_t sub_1C72C6E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72C6EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72C6F40()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F739D4;

  return sub_1C72C1154(v3, v0 + v6, v0 + v8);
}

uint64_t sub_1C72C7038()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_76(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C6F739D4;

  return sub_1C72C12A0(v3, v0 + v6);
}

unint64_t sub_1C72C7108()
{
  result = qword_1EC21A390;
  if (!qword_1EC21A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A390);
  }

  return result;
}

unint64_t sub_1C72C7190()
{
  result = sub_1C6F65BE8(319, &qword_1EDD0FA60);
  if (v1 <= 0x3F)
  {
    result = sub_1C754FF1C();
    if (v2 <= 0x3F)
    {
      result = sub_1C6F65BE8(319, &qword_1EDD10110);
      if (v3 <= 0x3F)
      {
        result = sub_1C6F65BE8(319, &qword_1EDD0CDB8);
        if (v4 <= 0x3F)
        {
          result = sub_1C72C729C();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1C72C729C()
{
  result = qword_1EDD0D9C0[0];
  if (!qword_1EDD0D9C0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDD0D9C0);
  }

  return result;
}

uint64_t sub_1C72C7374()
{
  OUTLINED_FUNCTION_115_0();
  v1 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_18(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0);
  OUTLINED_FUNCTION_18(v2);
  v3 = sub_1C754F38C();
  OUTLINED_FUNCTION_76(v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_44();

  return sub_1C72C49B8(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1C72C754C(uint64_t a1)
{
  v3 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_76(v3);
  v4 = *(v1 + 16);

  sub_1C72C4E50(a1, v4);
}

uint64_t sub_1C72C75BC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = sub_1C754F38C();
  OUTLINED_FUNCTION_18(v1);
  v2 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
  OUTLINED_FUNCTION_18(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_44();

  return sub_1C72C514C(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_1C72C7764(id result, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C72C777C(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_1C72C777C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    v5 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v5 = a2;
  }

  return v5;
}

unint64_t sub_1C72C77F8()
{
  result = qword_1EDD06AC0;
  if (!qword_1EDD06AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC21A3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06AC0);
  }

  return result;
}

uint64_t sub_1C72C785C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C6F738F4;

  return sub_1C72C5E18(v3, v5, v4);
}

uint64_t sub_1C72C7948(void *a1)
{
  v2 = [a1 scopedIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C7550F8C();

  return v3;
}

uint64_t StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(unsigned __int8 *a1, uint64_t a2, void *__src)
{
  v4 = v3;
  v270 = a2;
  i = *a1;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1EDD0ED88 != -1)
  {
    goto LABEL_154;
  }

  while (1)
  {
    v6 = sub_1C754FF1C();
    v269 = __swift_project_value_buffer(v6, &dword_1EDD28D48);
    v7 = sub_1C754FEEC();
    sub_1C755118C();
    v8 = OUTLINED_FUNCTION_72();
    v275 = v4;
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_13_3();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v4 = swift_slowAlloc();
      *&v285[0] = v4;
      *v10 = 136315138;
      if (i)
      {
        v11 = 0x6973754D78656C66;
      }

      else
      {
        v11 = 0x73754D656C707061;
      }

      if (i)
      {
        v12 = 0xE900000000000063;
      }

      else
      {
        v12 = 0xEA00000000006369;
      }

      v13 = sub_1C6F765A4(v11, v12, v285);

      *(v10 + 4) = v13;
      OUTLINED_FUNCTION_8();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      v19 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v19);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v268 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    v272 = sub_1C75504DC();
    type metadata accessor for StoryMusicCurationOptions();
    OUTLINED_FUNCTION_13_60();
    if (!v21)
    {
      goto LABEL_95;
    }

    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
    v24 = *(v20 + 40);
    v25 = *(v20 + 56);
    v26 = *(v20 + 64);
    *&v285[0] = v22;
    *(&v285[0] + 1) = v23;
    *&v285[1] = v24;
    *(&v285[1] + 1) = v21;
    v265 = v21;
    v260 = v25;
    *&v285[2] = v25;
    LODWORD(v264) = v26;
    HIDWORD(v264) = v26 >> 8;
    WORD4(v285[2]) = v26 & 0xFF01;
    v7 = v285;
    if (!StoryPromptAttributes.hasMusicCurationIngredients()())
    {
      goto LABEL_95;
    }

    if (!v22)
    {
      HIDWORD(v258) = i;
      v4 = v275;
      goto LABEL_71;
    }

    v4 = v275;
    v276 = v24;
    if (v22[2])
    {
      sub_1C6FB632C(0);
      v28 = v22[4];
      v27 = v22[5];
      sub_1C75504FC();
      v29._countAndFlagsBits = v28;
      v29._object = v27;
      v31 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v29, 0, 1);
      if (v30)
      {

        return i;
      }

      v278 = v23;
      v32._countAndFlagsBits = v28;
      v32._object = v27;
      v33 = StoryMusicCurator.isSongTitleAMoodRequest(_:)(v32);

      if (v33)
      {
        v275 = 0;
        sub_1C755068C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v34 = swift_allocObject();
        *(v34 + 16) = xmmword_1C755BAB0;
        *(v34 + 32) = v31;
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        OUTLINED_FUNCTION_24_31(v35);
        sub_1C75504FC();
        OUTLINED_FUNCTION_37_28();
        *&v284[0] = 0;
        __swift_mutable_project_boxed_opaque_existential_0(v283, *(&v283[1] + 1));
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v36);
        OUTLINED_FUNCTION_14_0();
        (*(v39 + 16))(v38 - v37);
        sub_1C709D024();
        OUTLINED_FUNCTION_39_31();
        v40 = *&v284[0];
        v285[0] = v31;
        sub_1C6FB5E8C();
        sub_1C755153C();
        v41 = sub_1C755065C();

        v42 = PHMemoryMoodForString();

        sub_1C755068C();
        OUTLINED_FUNCTION_38_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218308);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1C755BAB0;
        if (v42 < 0)
        {
          goto LABEL_159;
        }

        *(v43 + 32) = v42;
        v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38);
        OUTLINED_FUNCTION_24_31(v44);
        swift_isUniquelyReferenced_nonNull_native();
        *&v284[0] = v40;
        OUTLINED_FUNCTION_44_25();
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v45);
        OUTLINED_FUNCTION_14_0();
        (*(v48 + 16))(v47 - v46);
        sub_1C709D038();
        OUTLINED_FUNCTION_39_31();
        v272 = *&v284[0];
        v49 = v271 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
        OUTLINED_FUNCTION_58_13();
        v50 = type metadata accessor for StoryMusicCurationDiagnostics();
        *(v49 + *(v50 + 56)) = 2;
        v51 = PHStringForMemoryMood();
        if (v51)
        {
          v52 = v51;
          v7 = sub_1C755068C();
          v54 = v53;
        }

        else
        {
          v7 = 0;
          v54 = 0;
        }

        v4 = v30;
        i = i;
        OUTLINED_FUNCTION_8_62();
        v23 = v278;
        v61 = (v49 + *(v50 + 48));
        *v61 = v7;
        v61[1] = v54;

        v24 = v276;
      }

      else
      {
        sub_1C755068C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_1C755BAB0;
        *(v55 + 32) = v31;
        v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        OUTLINED_FUNCTION_24_31(v56);
        LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
        *&v284[0] = v272;
        __swift_mutable_project_boxed_opaque_existential_0(v283, *(&v283[1] + 1));
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v57);
        OUTLINED_FUNCTION_14_0();
        v59 = OUTLINED_FUNCTION_26_37(v58);
        v60(v59);
        sub_1C709D024();
        OUTLINED_FUNCTION_39_31();
        v4 = 0;
        v272 = *&v284[0];
      }
    }

    v62 = *(v23 + 16);
    v63 = v271;
    HIDWORD(v258) = i;
    if (!v62)
    {
      goto LABEL_34;
    }

    *&v285[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v64 = 0;
    v65 = *&v285[0];
    v4 = v23 + 40;
    v279 = v23;
    do
    {
      if (v64 >= *(v23 + 16))
      {
        goto LABEL_153;
      }

      v66 = *(v4 - 8);
      i = *v4;
      sub_1C75504FC();
      v67._countAndFlagsBits = v66;
      v67._object = i;
      LOBYTE(v7) = v63;
      v68 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v67, 0, 0);
      v275 = v69;
      if (v69)
      {

        goto LABEL_84;
      }

      *&v285[0] = v65;
      v71 = *(v65 + 16);
      v70 = *(v65 + 24);
      i = v71 + 1;
      if (v71 >= v70 >> 1)
      {
        OUTLINED_FUNCTION_15(v70);
        v7 = v285;
        sub_1C6F7ED9C();
        v65 = *&v285[0];
      }

      ++v64;
      *(v65 + 16) = i;
      *(v65 + 16 * v71 + 32) = v68;
      v4 += 16;
      v63 = v271;
      v23 = v279;
    }

    while (v62 != v64);
    sub_1C755068C();
    OUTLINED_FUNCTION_30_33();
    *(&v285[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *&v285[0] = v65;
    OUTLINED_FUNCTION_18_43();
    *&v284[0] = v4;
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v72);
    OUTLINED_FUNCTION_14_0();
    v74 = OUTLINED_FUNCTION_26_37(v73);
    v75(v74);
    OUTLINED_FUNCTION_7_61();
    sub_1C709D024();
    OUTLINED_FUNCTION_34_29();
    v272 = *&v284[0];
    v4 = 0;
    v24 = v276;
    OUTLINED_FUNCTION_8_62();
LABEL_34:
    v76 = *(v24 + 16);
    if (!v76)
    {
      goto LABEL_71;
    }

    *&v285[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_45_25();
    sub_1C6F7ED9C();
    v77 = 0;
    v78 = *&v285[0];
    i = v24 + 40;
    v280 = v76;
LABEL_36:
    if (v77 >= *(v24 + 16))
    {
      break;
    }

    v79 = v78;
    v80 = *(i - 8);
    v81 = *i;
    sub_1C75504FC();
    v82._countAndFlagsBits = v80;
    v82._object = v81;
    v84 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v82, 1, 1);
    if (v83)
    {

      return i;
    }

    v78 = v79;
    *&v285[0] = v79;
    v86 = *(v79 + 16);
    v85 = *(v79 + 24);
    v87 = v86 + 1;
    if (v86 >= v85 >> 1)
    {
      OUTLINED_FUNCTION_15(v85);
      v89 = v88;
      sub_1C6F7ED9C();
      v87 = v89;
      v78 = *&v285[0];
    }

    ++v77;
    *(v78 + 16) = v87;
    *(v78 + 32 + 16 * v86) = v84;
    i += 16;
    v4 = 0;
    v24 = v276;
    if (v280 != v77)
    {
      goto LABEL_36;
    }

    v7 = 0;
    v90 = MEMORY[0x1E69E7CC0];
    v91 = v78 + 32;
    v275 = v83;
    v262 = v87;
    v263 = v78;
    v261 = v78 + 32;
    while (v7 != v87)
    {
      sub_1C6FB632C(v7);
      if (__OFADD__(v7, 1))
      {
        goto LABEL_156;
      }

      v266 = v7 + 1;
      v267 = v90;
      v92 = (v91 + 16 * v7);
      v277 = *v92;
      v93 = qword_1EC2142B8;
      v281 = v92[1];
      sub_1C75504FC();
      if (v93 != -1)
      {
        swift_once();
      }

      v94 = 0;
      v273 = off_1EC21CB50;
      v274 = *(off_1EC21CB50 + 2);
      for (i = off_1EC21CB50 + 80; ; i += 56)
      {
        if (v274 == v94)
        {
          v276 = v277;
          v95 = v281;
          goto LABEL_65;
        }

        if (v94 >= v273[2])
        {
          __break(1u);
          goto LABEL_151;
        }

        v95 = *(i - 32);
        v276 = *(i - 40);
        sub_1C75506FC();
        if (v90 == OUTLINED_FUNCTION_51_18() && v7 == v96)
        {
          break;
        }

        v98 = OUTLINED_FUNCTION_43_28();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();

        if (v98)
        {
          goto LABEL_64;
        }

        sub_1C75506FC();
        v99 = OUTLINED_FUNCTION_51_18();
        v4 = v100;
        if (v98 == v99 && v7 == v100)
        {
          goto LABEL_63;
        }

        v90 = OUTLINED_FUNCTION_43_28();

        if (v90)
        {
          goto LABEL_64;
        }

        ++v94;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_63:

LABEL_64:

LABEL_65:
      v90 = v267;
      swift_isUniquelyReferenced_nonNull_native();
      v4 = v275;
      OUTLINED_FUNCTION_8_62();
      v91 = v261;
      if ((v102 & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v90 = v106;
      }

      v104 = *(v90 + 16);
      v103 = *(v90 + 24);
      v87 = v262;
      if (v104 >= v103 >> 1)
      {
        OUTLINED_FUNCTION_15(v103);
        sub_1C6FB1814();
        v87 = v262;
        v90 = v107;
      }

      *(v90 + 16) = v104 + 1;
      v105 = v90 + 16 * v104;
      *(v105 + 32) = v276;
      *(v105 + 40) = v95;
      ++v7;
    }

    sub_1C755068C();
    OUTLINED_FUNCTION_30_33();
    *(&v285[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *&v285[0] = v90;
    sub_1C6FCABEC(v285, v283);
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_2_90();
    MEMORY[0x1EEE9AC00](v108);
    v110 = OUTLINED_FUNCTION_1_97(v109, v258);
    v111(v110);
    OUTLINED_FUNCTION_7_61();
    sub_1C709D024();
    OUTLINED_FUNCTION_34_29();
    OUTLINED_FUNCTION_25_34();
LABEL_71:
    v112 = v265;
    i = *(v265 + 16);
    if (!i)
    {
      goto LABEL_89;
    }

    v4 = 0;
    v113 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v114 = v112 + 32 * v4;
LABEL_74:
      if (i == v4)
      {
        *&v285[0] = v113;
        v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
        sub_1C703328C();
        v124 = sub_1C75505FC();
        v126 = v125;

        v127._countAndFlagsBits = v124;
        v127._object = v126;
        v128 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v127, 1, 1);
        v275 = v129;
        if (v129)
        {

LABEL_84:

          return i;
        }

        sub_1C755068C();
        OUTLINED_FUNCTION_30_33();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
        v130 = swift_allocObject();
        *(v130 + 16) = xmmword_1C755BAB0;
        *(v130 + 32) = v128;
        *(&v285[1] + 1) = v123;
        *&v285[0] = v130;
        OUTLINED_FUNCTION_18_43();
        OUTLINED_FUNCTION_9_67();
        OUTLINED_FUNCTION_2_90();
        MEMORY[0x1EEE9AC00](v131);
        v133 = OUTLINED_FUNCTION_1_97(v132, v258);
        v134(v133);
        OUTLINED_FUNCTION_7_61();
        sub_1C709D024();
        OUTLINED_FUNCTION_34_29();
        v135 = *&v284[0];
        v136 = sub_1C755068C();
        v272 = v135;
        sub_1C6FE3750(v136, v137);

        v7 = *(&v285[1] + 1);
        sub_1C7030CDC(v285, &qword_1EC216D30);
        if (v7)
        {
          v7 = sub_1C754FEEC();
          sub_1C755118C();
          v138 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v138, v139))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_8();
            _os_log_impl(v140, v141, v142, v143, v144, 2u);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v4 = 0;
LABEL_89:
          i = HIDWORD(v258);
        }

        else
        {
          v236 = 0;
          v237 = v265;
          v238 = MEMORY[0x1E69E7CC0];
          v239 = MEMORY[0x1E69E7CC0];
LABEL_132:
          v240 = (v265 + 56 + 32 * v236);
          while (i != v236)
          {
            if (v236 >= *(v237 + 16))
            {
              goto LABEL_157;
            }

            v241 = v240 + 32;
            ++v236;
            v242 = *v240;
            v240 += 32;
            if ((v242 & 1) == 0)
            {
              v243 = *(v241 - 5);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB3170();
                v239 = v246;
              }

              v245 = *(v239 + 16);
              v244 = *(v239 + 24);
              v7 = v245 + 1;
              if (v245 >= v244 >> 1)
              {
                OUTLINED_FUNCTION_15(v244);
                sub_1C6FB3170();
                v239 = v247;
              }

              *(v239 + 16) = v7;
              *(v239 + 8 * v245 + 32) = v243;
              OUTLINED_FUNCTION_8_62();
              goto LABEL_132;
            }
          }

          v248 = *(v239 + 16);
          if (v248)
          {
            *&v285[0] = v238;
            OUTLINED_FUNCTION_45_25();
            sub_1C716E330();
            v249 = 32;
            v250 = *&v285[0];
            do
            {
              v251 = *(v239 + v249);
              if (v251 < 0)
              {
                goto LABEL_158;
              }

              *&v285[0] = v250;
              v253 = *(v250 + 16);
              v252 = *(v250 + 24);
              if (v253 >= v252 >> 1)
              {
                OUTLINED_FUNCTION_15(v252);
                v7 = v285;
                sub_1C716E330();
                v250 = *&v285[0];
              }

              *(v250 + 16) = v253 + 1;
              *(v250 + 8 * v253 + 32) = v251;
              v249 += 8;
              --v248;
            }

            while (v248);

            i = HIDWORD(v258);
            OUTLINED_FUNCTION_8_62();
          }

          else
          {

            v250 = MEMORY[0x1E69E7CC0];
            i = HIDWORD(v258);
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v285[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38);
          *&v285[0] = v250;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v254);
          v256 = OUTLINED_FUNCTION_1_97(v255, v258);
          v257(v256);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D038();
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
          v4 = 0;
        }

        v275 = v4;
        if ((v264 & 1) == 0)
        {
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v285[1] + 1) = MEMORY[0x1E69E6810];
          *&v285[0] = v260;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v145);
          v147 = OUTLINED_FUNCTION_1_97(v146, v258);
          v148(v147);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D1AC();
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
        }

        if (HIDWORD(v264) != 2)
        {
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v285[1] + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v285[0]) = BYTE4(v264) & 1;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v149);
          v151 = OUTLINED_FUNCTION_1_97(v150, v258);
          v152(v151);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D30C();
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
        }

        OUTLINED_FUNCTION_13_60();
LABEL_95:
        if (i)
        {

LABEL_98:
          v153 = *(*v270 + 16);
          v154 = (*v270 + 32);
          while (1)
          {
            if (!v153)
            {
              goto LABEL_109;
            }

            if (*v154 == 1)
            {
              break;
            }

            OUTLINED_FUNCTION_14_50();
            OUTLINED_FUNCTION_42_27();
            ++v154;
            --v153;
            if (v7)
            {
              goto LABEL_104;
            }
          }

LABEL_104:
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v283[1] + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v283[0]) = 1;
          sub_1C6FCABEC(v283, v284);
          OUTLINED_FUNCTION_37_28();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v155);
          v157 = OUTLINED_FUNCTION_1_97(v156, v258);
          v158(v157);
          sub_1C709D30C();
          __swift_destroy_boxed_opaque_existential_1(v284);

          v272 = v287;
          memcpy(v285, __dst, sizeof(v285));
          if (sub_1C70808D8(v285) == 1 || (v159 = sub_1C755068C(), sub_1C6FE3750(v159, v160), , v161 = *(&v283[1] + 1), sub_1C7030CDC(v283, &qword_1EC216D30), v161))
          {
            v7 = sub_1C754FEEC();
            sub_1C755118C();
            v162 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v162, v163))
            {
              *OUTLINED_FUNCTION_127() = 0;
              OUTLINED_FUNCTION_8();
              _os_log_impl(v164, v165, v166, v167, v168, 2u);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            OUTLINED_FUNCTION_13_60();
LABEL_109:
            if (!i)
            {
              goto LABEL_123;
            }

            goto LABEL_110;
          }

          v169 = sub_1C754FEEC();
          v170 = sub_1C755118C();
          v171 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v171, v172))
          {
            v4 = OUTLINED_FUNCTION_127();
            *v4 = 0;
            _os_log_impl(&dword_1C6F5C000, v169, v170, "[packageSpecificationOptions] Using curated fallback mood pass in, since none was set on the specificationOptions", v4, 2u);
            v173 = OUTLINED_FUNCTION_2_44();
            MEMORY[0x1CCA5F8E0](v173);
          }

          HIDWORD(v258) = i;

          memcpy(v283, v285, sizeof(v283));
          MusicMood.moodsMaestroKeywordsDictionary(shouldIncludeCompatibleMoods:shouldIncludeIncompatibleMoods:)(1);
          sub_1C739C6C4(v174, v175, v176, v177, v178, v179, v180, v181, v258, v260, v261, v262, v263, v264, v265, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276);
          *&v283[0] = v182;
          sub_1C7179420(v283);
          if (v275)
          {
            goto LABEL_160;
          }

          v183 = 0;
          v184 = *&v283[0];
          v282 = *(*&v283[0] + 16);
          v185 = (*&v283[0] + 40);
          v7 = MEMORY[0x1E69E7CC0];
          while (v282 != v183)
          {
            if (v183 >= *(v184 + 16))
            {
              goto LABEL_152;
            }

            v186 = *(v185 - 1);
            v4 = *v185;
            sub_1C75504FC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v7 = v189;
            }

            i = *(v7 + 16);
            v187 = *(v7 + 24);
            if (i >= v187 >> 1)
            {
              OUTLINED_FUNCTION_15(v187);
              sub_1C6FB1814();
              v7 = v190;
            }

            *(v7 + 16) = i + 1;
            v188 = v7 + 16 * i;
            *(v188 + 32) = v186;
            *(v188 + 40) = v4;
            v185 += 3;
            ++v183;
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          *(&v283[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
          *&v283[0] = v7;
          sub_1C6FCABEC(v283, v284);
          OUTLINED_FUNCTION_37_28();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v191);
          v193 = OUTLINED_FUNCTION_1_97(v192, v258);
          v194(v193);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D024();
          __swift_destroy_boxed_opaque_existential_1(v284);

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215080);
          v195 = swift_allocObject();
          *(v195 + 16) = xmmword_1C755BAB0;
          memcpy(v283, v285, sizeof(v283));
          *(v195 + 32) = MusicMood.closestPHMemoryMood()();
          *(&v283[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D40);
          *&v283[0] = v195;
          sub_1C6FCABEC(v283, v284);
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v196);
          v198 = OUTLINED_FUNCTION_1_97(v197, v259);
          v199(v198);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D46C();
          __swift_destroy_boxed_opaque_existential_1(v284);

          v272 = v287;
          OUTLINED_FUNCTION_13_60();
          OUTLINED_FUNCTION_8_62();
          if (HIDWORD(v258))
          {
LABEL_110:

            i = v272;
            goto LABEL_124;
          }
        }

        else
        {
          OUTLINED_FUNCTION_14_50();
          OUTLINED_FUNCTION_42_27();
          if (v7)
          {
            goto LABEL_98;
          }
        }

LABEL_123:
        OUTLINED_FUNCTION_14_50();
        OUTLINED_FUNCTION_42_27();
        i = v272;
        if (v7)
        {
LABEL_124:
          v200 = sub_1C754FEEC();
          sub_1C755118C();
          v201 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v201, v202))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_8();
            _os_log_impl(v203, v204, v205, v206, v207, 2u);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          v208 = sub_1C72CA9C4(v270);
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D48);
          *(&v285[1] + 1) = v209;
          *&v285[0] = v208;
          sub_1C6FCABEC(v285, v283);
          swift_isUniquelyReferenced_nonNull_native();
          *&v284[0] = i;
          OUTLINED_FUNCTION_44_25();
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v210);
          OUTLINED_FUNCTION_14_0();
          v212 = OUTLINED_FUNCTION_26_37(v211);
          v213(v212);
          sub_1C709D480();
          OUTLINED_FUNCTION_39_31();
          v214 = *&v284[0];
          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          v215 = sub_1C72CAE0C(v270);
          *(&v285[1] + 1) = v209;
          *&v285[0] = v215;
          sub_1C6FCABEC(v285, v283);
          swift_isUniquelyReferenced_nonNull_native();
          *&v284[0] = v214;
          __swift_mutable_project_boxed_opaque_existential_0(v283, *(&v283[1] + 1));
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v216);
          v218 = OUTLINED_FUNCTION_1_97(v217, v258);
          v219(v218);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D480();
          OUTLINED_FUNCTION_39_31();
          i = *&v284[0];
        }

        v220 = sub_1C754FEEC();
        sub_1C755118C();
        v221 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v221, v222))
        {
          OUTLINED_FUNCTION_13_3();
          v223 = swift_slowAlloc();
          OUTLINED_FUNCTION_98();
          v224 = swift_slowAlloc();
          *&v285[0] = v224;
          *v223 = 136315138;
          sub_1C75504FC();
          v225 = sub_1C75504BC();
          v227 = v226;

          v228 = sub_1C6F765A4(v225, v227, v285);

          *(v223 + 4) = v228;
          OUTLINED_FUNCTION_8();
          _os_log_impl(v229, v230, v231, v232, v233, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v224);
          v234 = OUTLINED_FUNCTION_2_44();
          MEMORY[0x1CCA5F8E0](v234);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        return i;
      }

      if (v4 < *(v112 + 16))
      {
        v115 = (v114 + 32);
        ++v4;
        v116 = *(v114 + 40);
        v114 += 32;
        if (v116)
        {
          v117 = *v115;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v113 = v121;
          }

          v119 = *(v113 + 16);
          v118 = *(v113 + 24);
          v112 = v265;
          if (v119 >= v118 >> 1)
          {
            OUTLINED_FUNCTION_15(v118);
            sub_1C6FB1814();
            v112 = v265;
            v113 = v122;
          }

          *(v113 + 16) = v119 + 1;
          v120 = v113 + 16 * v119;
          *(v120 + 32) = v117;
          *(v120 + 40) = v116;
          continue;
        }

        goto LABEL_74;
      }

      break;
    }

LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
LABEL_154:
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

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
  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(Swift::String from, Swift::Bool removeOtherTerms, Swift::Bool removeSongTerms)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v7 = sub_1C754D84C();
  OUTLINED_FUNCTION_29();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  if (sub_1C75507FC() < 1)
  {
    sub_1C75504FC();
    v49 = object;
  }

  else
  {
    LOBYTE(v104) = removeSongTerms;
    LOBYTE(v105) = removeOtherTerms;
    v100 = countAndFlagsBits;
    v110 = countAndFlagsBits;
    v111 = object;
    sub_1C754D7FC();
    v114 = sub_1C6FB5E8C();
    v14 = sub_1C755154C();
    v16 = v15;
    v18 = *(v9 + 8);
    v17 = v9 + 8;
    v101 = v18;
    v18(v13, v7);
    v19 = v14;
    v112 = v14;
    v113 = v16;
    if (qword_1EDD0ED88 != -1)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, &dword_1EDD28D48);
    v21 = sub_1C754FEEC();
    sub_1C755118C();
    v22 = OUTLINED_FUNCTION_72();
    v107 = v17;
    v102 = v13;
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_53();
      v24 = swift_slowAlloc();
      v110 = v24;
      *v13 = 136315138;
      sub_1C75504FC();
      v25 = sub_1C6F765A4(v19, v16, &v110);

      *(v13 + 4) = v25;
      OUTLINED_FUNCTION_11_55();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v17 = v107;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v32);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v33);
    }

    v13 = 0xD000000000000017;
    v103 = v7;
    if (v104)
    {
      type metadata accessor for MusicLocalizer();
      v34 = OUTLINED_FUNCTION_3_84();
      v36 = static MusicLocalizer.localizedStringsList(forKey:)(v34, v35);
      sub_1C75504FC();
      v37 = sub_1C72CB24C(v36, v19, v16);
      v39 = v38;

      OUTLINED_FUNCTION_58_13();
      v112 = v37;
      v113 = v39;

      v40 = sub_1C754FEEC();
      v41 = sub_1C755118C();
      v42 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v42, v43))
      {
        OUTLINED_FUNCTION_13_3();
        v44 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v45 = swift_slowAlloc();
        v110 = v45;
        *v44 = 136315138;
        sub_1C75504FC();
        v7 = v37;
        v46 = sub_1C6F765A4(v37, v39, &v110);

        *(v44 + 4) = v46;
        v37 = v7;
        _os_log_impl(&dword_1C6F5C000, v40, v41, "(cleanupQUText) After songSynonyms removed: %s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        v13 = 0xD000000000000017;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v47);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v48);
      }

      v17 = v107;
    }

    else
    {
      v39 = v16;
      v37 = v19;
    }

    v106 = object;
    if (v105)
    {
      type metadata accessor for MusicLocalizer();
      v50 = OUTLINED_FUNCTION_3_84();
      v52 = static MusicLocalizer.localizedStringsList(forKey:)(v50, v51);
      sub_1C75504FC();
      sub_1C72CB24C(v52, v37, v39);
      OUTLINED_FUNCTION_40_32();

      OUTLINED_FUNCTION_58_13();
      v112 = v17;
      v113 = v7;

      v53 = sub_1C754FEEC();
      sub_1C755118C();
      v54 = OUTLINED_FUNCTION_17_59();
      v105 = v17;
      if (os_log_type_enabled(v54, v55))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_53();
        v56 = swift_slowAlloc();
        v110 = v56;
        MEMORY[0xD000000000000017] = 136315138;
        sub_1C75504FC();
        v57 = sub_1C6F765A4(v17, v7, &v110);

        MEMORY[0xD00000000000001B] = v57;
        OUTLINED_FUNCTION_11_55();
        _os_log_impl(v58, v59, v60, v61, v62, v63);
        __swift_destroy_boxed_opaque_existential_1(v56);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v64);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v65);
      }

      v66 = static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000027, 0x80000001C75A95F0);
      v104 = v7;
      v67 = sub_1C75506FC();
      v16 = v68;
      v19 = 0;
      v17 = *(v66 + 16);
      object = (v66 + 40);
      v7 = 1;
      v13 = MEMORY[0x1E69E6158];
      while (v17 != v19)
      {
        if (v19 >= *(v66 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        ++v19;
        v70 = *(object - 1);
        v69 = *object;
        v110 = v67;
        v111 = v16;
        v108 = v70;
        v109 = v69;
        v7 = (sub_1C75515AC() ^ 1) & v7;
        object += 2;
      }

      v37 = v105;
      v71 = v106;
      v39 = v104;
      if ((v7 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for MusicLocalizer();
    v72 = OUTLINED_FUNCTION_3_84();
    v74 = static MusicLocalizer.localizedStringsList(forKey:)(v72, v73);
    sub_1C75504FC();
    v37 = sub_1C72CB24C(v74, v37, v39);
    v76 = v75;

    OUTLINED_FUNCTION_58_13();
    v112 = v37;
    v113 = v76;

    v77 = sub_1C754FEEC();
    sub_1C755118C();
    v78 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v78, v79))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_53();
      v80 = swift_slowAlloc();
      v108 = v80;
      *v13 = 136315138;
      sub_1C75504FC();
      v81 = sub_1C6F765A4(v37, v76, &v108);
      v39 = v76;
      v82 = v37;
      v83 = v81;

      *(v13 + 4) = v83;
      v37 = v82;
      OUTLINED_FUNCTION_11_55();
      _os_log_impl(v84, v85, v86, v87, v88, v89);
      __swift_destroy_boxed_opaque_existential_1(v80);
      v90 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v90);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v91);
    }

    else
    {

      v39 = v76;
    }

    v71 = v106;
LABEL_23:
    v108 = v37;
    v109 = v39;
    sub_1C75504FC();
    sub_1C754D7FC();
    countAndFlagsBits = sub_1C755154C();
    v49 = v92;
    v101(v102, v103);
    swift_bridgeObjectRelease_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v93 = sub_1C754FEEC();
    v94 = sub_1C755117C();

    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      *v95 = 136315394;
      *(v95 + 4) = sub_1C6F765A4(v100, v71, &v108);
      *(v95 + 12) = 2080;
      v96 = sub_1C6F765A4(countAndFlagsBits, v49, &v108);

      *(v95 + 14) = v96;
      _os_log_impl(&dword_1C6F5C000, v93, v94, "(cleanupQUText) Transformed from: '%s' --> '%s'", v95, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  v97 = countAndFlagsBits;
  v98 = v49;
  result._object = v98;
  result._countAndFlagsBits = v97;
  return result;
}

Swift::Bool __swiftcall StoryMusicCurator.isSongTitleAMoodRequest(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1C754D84C();
  OUTLINED_FUNCTION_29();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v121 = countAndFlagsBits;
  v122 = object;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  sub_1C755154C();
  (*(v5 + 8))(v9, v3);
  v10 = sub_1C75506FC();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  v119 = countAndFlagsBits;
  v116 = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7580160;
  type metadata accessor for MusicLocalizer();
  *(inited + 32) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9640);
  *(inited + 40) = v15;
  *(inited + 48) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75A9660);
  *(inited + 56) = v16;
  *(inited + 64) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A9680);
  *(inited + 72) = v17;
  OUTLINED_FUNCTION_10_2();
  *(inited + 80) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, v18);
  *(inited + 88) = v19;
  v20 = OUTLINED_FUNCTION_3_84();
  *(inited + 96) = static MusicLocalizer.localizedString(forKey:)(v20, v21);
  *(inited + 104) = v22;
  OUTLINED_FUNCTION_10_2();
  *(inited + 112) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v23);
  *(inited + 120) = v24;
  OUTLINED_FUNCTION_10_2();
  *(inited + 128) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v25);
  *(inited + 136) = v26;
  v27 = OUTLINED_FUNCTION_3_84();
  *(inited + 144) = static MusicLocalizer.localizedString(forKey:)(v27, v28);
  *(inited + 152) = v29;
  *(inited + 160) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75A9740);
  *(inited + 168) = v30;
  *(inited + 176) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A9760);
  *(inited + 184) = v31;
  OUTLINED_FUNCTION_10_2();
  *(inited + 192) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v32);
  *(inited + 200) = v33;
  *(inited + 208) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A97A0);
  *(inited + 216) = v34;
  *(inited + 224) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A97C0);
  *(inited + 232) = v35;
  *(inited + 240) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75A97E0);
  *(inited + 248) = v36;
  OUTLINED_FUNCTION_10_2();
  *(inited + 256) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v37);
  *(inited + 264) = v38;
  OUTLINED_FUNCTION_10_2();
  *(inited + 272) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v39);
  *(inited + 280) = v40;
  v41 = OUTLINED_FUNCTION_3_84();
  *(inited + 288) = static MusicLocalizer.localizedString(forKey:)(v41, v42);
  *(inited + 296) = v43;
  v44 = OUTLINED_FUNCTION_3_84();
  *(inited + 304) = static MusicLocalizer.localizedString(forKey:)(v44, v45);
  *(inited + 312) = v46;
  *(inited + 320) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A9880);
  *(inited + 328) = v47;
  *(inited + 336) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75A98A0);
  *(inited + 344) = v48;
  *(inited + 352) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A98C0);
  *(inited + 360) = v49;
  v50 = OUTLINED_FUNCTION_3_84();
  *(inited + 368) = static MusicLocalizer.localizedString(forKey:)(v50, v51);
  *(inited + 376) = v52;
  OUTLINED_FUNCTION_10_2();
  *(inited + 384) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v53);
  *(inited + 392) = v54;
  *(inited + 400) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ALL, 0x80000001C75A9920);
  *(inited + 408) = v55;
  *(inited + 416) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000013, 0x80000001C75A9940);
  *(inited + 424) = v56;
  *(inited + 432) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75A98A0);
  *(inited + 440) = v57;
  v58 = OUTLINED_FUNCTION_3_84();
  *(inited + 448) = static MusicLocalizer.localizedString(forKey:)(v58, v59);
  *(inited + 456) = v60;
  *(inited + 464) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A9880);
  *(inited + 472) = v61;
  *(inited + 480) = 0x796C6C6973;
  *(inited + 488) = 0xE500000000000000;
  *(inited + 496) = 0x7275746E65766461;
  *(inited + 504) = 0xEB0000000073756FLL;
  *(inited + 512) = 0x676E697469637865;
  *(inited + 520) = 0xE800000000000000;
  *(inited + 528) = 0x676E6978616C6572;
  *(inited + 536) = 0xE800000000000000;
  *(inited + 544) = 0x746165627075;
  *(inited + 552) = 0xE600000000000000;
  *(inited + 560) = 0x6974617669746F6DLL;
  *(inited + 568) = 0xEB0000000020676ELL;
  *(inited + 576) = 0x697461746964656DLL;
  *(inited + 584) = 0xEA00000000006576;
  *(inited + 592) = 0x6974616D656E6963;
  *(inited + 600) = 0xE900000000000063;
  *(inited + 608) = 0x7265626D6F73;
  *(inited + 616) = 0xE600000000000000;
  *(inited + 624) = 0x7972676E61;
  *(inited + 632) = 0xE500000000000000;
  *(inited + 640) = 0x7972616373;
  *(inited + 648) = 0xE500000000000000;
  *(inited + 656) = 0x6F6972657473796DLL;
  *(inited + 664) = 0xEA00000000007375;
  *(inited + 672) = 0x65736E6570737573;
  *(inited + 680) = 0xEB000000006C7566;
  *(inited + 688) = 0x73756F69727563;
  *(inited + 696) = 0xE700000000000000;
  *(inited + 704) = 1836212599;
  *(inited + 712) = 0xE400000000000000;
  v62 = static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000017, 0x80000001C75A9620);
  v63 = OUTLINED_FUNCTION_3_84();
  v65 = static MusicLocalizer.localizedStringsList(forKey:)(v63, v64);
  v121 = v62;
  sub_1C6FD2568(v65);
  v66 = v62;
  v67 = *(v62 + 16);
  v68 = MEMORY[0x1E69E7CC0];
  if (v67)
  {
    v120 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v69 = v120;
    v70 = (v66 + 40);
    do
    {
      v71 = *(v70 - 1);
      v72 = *v70;
      v121 = 25180;
      v122 = 0xE200000000000000;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v71, v72);
      MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

      v74 = *(v120 + 16);
      v73 = *(v120 + 24);
      if (v74 >= v73 >> 1)
      {
        OUTLINED_FUNCTION_15(v73);
        sub_1C6F7ED9C();
      }

      *(v120 + 16) = v74 + 1;
      v75 = v120 + 16 * v74;
      *(v75 + 32) = 25180;
      *(v75 + 40) = 0xE200000000000000;
      v70 += 2;
      --v67;
    }

    while (v67);

    v68 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v69 = MEMORY[0x1E69E7CC0];
  }

  v121 = v69;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v117 = sub_1C75505FC();
  v118 = v76;

  sub_1C6F7ED9C();
  v77 = 0;
  v78 = v68;
  do
  {
    v79 = *(inited + v77 + 32);
    v80 = *(inited + v77 + 40);
    v121 = 25180;
    v122 = 0xE200000000000000;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v79, v80);
    MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

    v82 = *(v78 + 16);
    v81 = *(v78 + 24);
    if (v82 >= v81 >> 1)
    {
      OUTLINED_FUNCTION_15(v81);
      sub_1C6F7ED9C();
    }

    *(v78 + 16) = v82 + 1;
    v83 = v78 + 16 * v82;
    *(v83 + 32) = 25180;
    *(v83 + 40) = 0xE200000000000000;
    v77 += 16;
  }

  while (v77 != 688);
  swift_setDeallocating();
  sub_1C6FDC9DC();
  v84 = sub_1C75505FC();
  v86 = v85;

  v121 = 3817256;
  v122 = 0xE300000000000000;
  MEMORY[0x1CCA5CD70](v84, v86);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](0x3A3F282029, 0xE500000000000000);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](v117, v118);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v87 = sub_1C754FF1C();
  __swift_project_value_buffer(v87, &dword_1EDD28D48);
  sub_1C75504FC();
  v88 = sub_1C754FEEC();
  v89 = sub_1C755118C();

  if (os_log_type_enabled(v88, v89))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_53();
    v90 = swift_slowAlloc();
    v121 = v90;
    *v118 = 136315138;
    *(v118 + 4) = sub_1C6F765A4(3817256, 0xE300000000000000, &v121);
    OUTLINED_FUNCTION_11_55();
    _os_log_impl(v91, v92, v93, v94, v95, v96);
    __swift_destroy_boxed_opaque_existential_1(v90);
    v97 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v97);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v98 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v99 = sub_1C71C8B80(3817256, 0xE300000000000000, 1);
  v100 = sub_1C755065C();
  MEMORY[0x1CCA5CE10](v119, v116);
  v101 = sub_1C755065C();
  v102 = OUTLINED_FUNCTION_48_21();
  v104 = [v102 v103];

  v105 = sub_1C755068C();
  v107 = v106;

  v108 = HIBYTE(v107) & 0xF;
  if ((v107 & 0x2000000000000000) == 0)
  {
    v108 = v105 & 0xFFFFFFFFFFFFLL;
  }

  if (!v108 || (sub_1C75504FC(), v109 = sub_1C75507FC(), , v109 < 3))
  {
    sub_1C75504FC();
    v111 = sub_1C754FEEC();
    v112 = sub_1C755118C();

    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v113 = 136315394;
      *(v113 + 4) = sub_1C6F765A4(v119, v116, &v121);
      *(v113 + 12) = 2080;
      sub_1C75504FC();
      v114 = sub_1C6F765A4(v105, v107, &v121);

      *(v113 + 14) = v114;
      _os_log_impl(&dword_1C6F5C000, v111, v112, "[isSongTitleAMoodRequest] MOOD detected in title. Original song title = %s, modifiedText = %s", v113, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v115 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v115);
    }

    return 1;
  }

  else
  {
LABEL_23:

    return 0;
  }
}

uint64_t sub_1C72CA9C4(uint64_t a1)
{
  sub_1C6FA7014();
  v7 = sub_1C75504DC();
  v8 = type metadata accessor for StoryMusicCurationOptions();
  v9 = *(a1 + *(v8 + 60));
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_22_49();
    v10 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v1)
          {
            while (1)
            {
              v12 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                __break(1u);
                goto LABEL_32;
              }

              if (v12 >= v4)
              {
                break;
              }

              v1 = *(v2 + 8 * v12);
              ++v10;
              if (v1)
              {
                v11 = v7;
                v10 = v12;
                goto LABEL_9;
              }
            }

            if (qword_1EDD0ED88 == -1)
            {
              goto LABEL_22;
            }

LABEL_32:
            OUTLINED_FUNCTION_0_35();
            swift_once();
LABEL_22:
            v46 = sub_1C754FF1C();
            __swift_project_value_buffer(v46, &dword_1EDD28D48);
            v47 = sub_1C754FEEC();
            sub_1C755117C();
            v48 = OUTLINED_FUNCTION_17_59();
            if (os_log_type_enabled(v48, v49))
            {
              OUTLINED_FUNCTION_13_3();
              swift_slowAlloc();
              OUTLINED_FUNCTION_12_53();
              swift_slowAlloc();
              OUTLINED_FUNCTION_47_21();
              *v2 = 136315138;
              sub_1C75504FC();
              sub_1C75504BC();
              OUTLINED_FUNCTION_40_32();

              OUTLINED_FUNCTION_33_29(v50, v51, v52);
              OUTLINED_FUNCTION_56_21();
              *(v2 + 4) = v75;
              OUTLINED_FUNCTION_11_55();
              _os_log_impl(v53, v54, v55, v56, v57, v58);
              __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
              v59 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v59);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            return v7;
          }

          v11 = v7;
LABEL_9:
          OUTLINED_FUNCTION_27_36();
          v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          sub_1C75504FC();
          LODWORD(v14) = v5;
          v15 = [v13 initWithFloat_];
          if (v15)
          {
            break;
          }

          v16 = OUTLINED_FUNCTION_2_56();
          v7 = v11;
          v18 = sub_1C6F78124(v16, v17);
          v20 = v19;

          if (v20)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
            OUTLINED_FUNCTION_46_23();
            sub_1C7551A2C();
            OUTLINED_FUNCTION_53_27();

            sub_1C7551A4C();
          }
        }

        isUniquelyReferenced_nonNull_native = v15;
        LODWORD(v74) = swift_isUniquelyReferenced_nonNull_native();
        v21 = OUTLINED_FUNCTION_2_56();
        sub_1C6F78124(v21, v22);
        OUTLINED_FUNCTION_35_22();
        if (v23)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
        OUTLINED_FUNCTION_46_23();
        v24 = sub_1C7551A2C();
        if (v24)
        {
          break;
        }

        if ((v74 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:

        OUTLINED_FUNCTION_52_23(v38, v39, v40, v41, v42, v43, v44, v45, v73, v74, v75, v11);
      }

      v32 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v32, v33);
      OUTLINED_FUNCTION_49_20();
      if (!v35)
      {
        goto LABEL_35;
      }

      if (v34)
      {
        goto LABEL_20;
      }

LABEL_17:
      OUTLINED_FUNCTION_19_54(v24, v25, v26, v27, v28, v29, v30, v31, v73, v74, v75, v11);
      if (v23)
      {
        goto LABEL_34;
      }

      v7 = v37;
      *(v37 + 16) = v36;
    }
  }

  v60 = MusicCommonUtility.weightByUserLanguage(scoreForSecondaryLanguages:)(*(a1 + *(v8 + 72)));

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v61 = sub_1C754FF1C();
  __swift_project_value_buffer(v61, &dword_1EDD28D48);
  v62 = sub_1C754FEEC();
  sub_1C755117C();
  v63 = OUTLINED_FUNCTION_17_59();
  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_13_3();
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    swift_slowAlloc();
    OUTLINED_FUNCTION_47_21();
    *v65 = 136315138;
    sub_1C75504FC();
    sub_1C75504BC();
    OUTLINED_FUNCTION_40_32();

    OUTLINED_FUNCTION_33_29(v66, v67, v68);
    OUTLINED_FUNCTION_56_21();
    *(v65 + 4) = v9;
    OUTLINED_FUNCTION_50_23(&dword_1C6F5C000, v69, v70, "[packageLanguageDictionary] Using system detected languages: %s");
    __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
    v71 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v71);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v60;
}

uint64_t sub_1C72CAE0C(uint64_t a1)
{
  sub_1C6FA7014();
  v7 = sub_1C75504DC();
  v8 = *(a1 + *(type metadata accessor for StoryMusicCurationOptions() + 64));
  if (*(v8 + 16))
  {
    OUTLINED_FUNCTION_22_49();
    v9 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v1)
          {
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
                goto LABEL_32;
              }

              if (v11 >= v4)
              {
                break;
              }

              v1 = *(v2 + 8 * v11);
              ++v9;
              if (v1)
              {
                v10 = v7;
                v9 = v11;
                goto LABEL_9;
              }
            }

            if (qword_1EDD0ED88 == -1)
            {
              goto LABEL_22;
            }

LABEL_32:
            OUTLINED_FUNCTION_0_35();
            swift_once();
LABEL_22:
            v45 = sub_1C754FF1C();
            __swift_project_value_buffer(v45, &dword_1EDD28D48);
            v46 = sub_1C754FEEC();
            sub_1C755117C();
            v47 = OUTLINED_FUNCTION_17_59();
            if (os_log_type_enabled(v47, v48))
            {
              OUTLINED_FUNCTION_13_3();
              swift_slowAlloc();
              OUTLINED_FUNCTION_12_53();
              swift_slowAlloc();
              OUTLINED_FUNCTION_47_21();
              *v2 = 136315138;
              sub_1C75504FC();
              sub_1C75504BC();
              OUTLINED_FUNCTION_40_32();

              OUTLINED_FUNCTION_33_29(v49, v50, v51);
              OUTLINED_FUNCTION_56_21();
              *(v2 + 4) = v74;
              OUTLINED_FUNCTION_11_55();
              _os_log_impl(v52, v53, v54, v55, v56, v57);
              __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
              v58 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v58);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            return v7;
          }

          v10 = v7;
LABEL_9:
          OUTLINED_FUNCTION_27_36();
          v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          sub_1C75504FC();
          LODWORD(v13) = v5;
          v14 = [v12 initWithFloat_];
          if (v14)
          {
            break;
          }

          v15 = OUTLINED_FUNCTION_2_56();
          v7 = v10;
          v17 = sub_1C6F78124(v15, v16);
          v19 = v18;

          if (v19)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
            OUTLINED_FUNCTION_46_23();
            sub_1C7551A2C();
            OUTLINED_FUNCTION_53_27();

            sub_1C7551A4C();
          }
        }

        isUniquelyReferenced_nonNull_native = v14;
        LODWORD(v73) = swift_isUniquelyReferenced_nonNull_native();
        v20 = OUTLINED_FUNCTION_2_56();
        sub_1C6F78124(v20, v21);
        OUTLINED_FUNCTION_35_22();
        if (v22)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8);
        OUTLINED_FUNCTION_46_23();
        v23 = sub_1C7551A2C();
        if (v23)
        {
          break;
        }

        if ((v73 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:

        OUTLINED_FUNCTION_52_23(v37, v38, v39, v40, v41, v42, v43, v44, v72, v73, v74, v10);
      }

      v31 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v31, v32);
      OUTLINED_FUNCTION_49_20();
      if (!v34)
      {
        goto LABEL_35;
      }

      if (v33)
      {
        goto LABEL_20;
      }

LABEL_17:
      OUTLINED_FUNCTION_19_54(v23, v24, v25, v26, v27, v28, v29, v30, v72, v73, v74, v10);
      if (v22)
      {
        goto LABEL_34;
      }

      v7 = v36;
      *(v36 + 16) = v35;
    }
  }

  v59 = MusicCommonUtility.weightByUserRegion()();

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v60 = sub_1C754FF1C();
  __swift_project_value_buffer(v60, &dword_1EDD28D48);
  v61 = sub_1C754FEEC();
  sub_1C755117C();
  v62 = OUTLINED_FUNCTION_17_59();
  if (os_log_type_enabled(v62, v63))
  {
    OUTLINED_FUNCTION_13_3();
    v64 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    swift_slowAlloc();
    OUTLINED_FUNCTION_47_21();
    *v64 = 136315138;
    sub_1C75504FC();
    sub_1C75504BC();
    OUTLINED_FUNCTION_40_32();

    OUTLINED_FUNCTION_33_29(v65, v66, v67);
    OUTLINED_FUNCTION_56_21();
    *(v64 + 4) = v8;
    OUTLINED_FUNCTION_50_23(&dword_1C6F5C000, v68, v69, "[packageRegionDictionary] Using system detected region: %s");
    __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
    v70 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v70);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v59;
}

uint64_t sub_1C72CB24C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v7 = (a1 + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v8, v9);
      MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

      v10 = *(v26 + 16);
      if (v10 >= *(v26 + 24) >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v26 + 16) = v10 + 1;
      v11 = v26 + 16 * v10;
      *(v11 + 32) = 25180;
      *(v11 + 40) = 0xE200000000000000;
      v7 += 2;
      --v5;
    }

    while (v5);
    v4 = a2;
    v3 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v12 = sub_1C75505FC();
  v14 = v13;

  MEMORY[0x1CCA5CD70](v12, v14);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);

  v15 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v16 = sub_1C71C8B80(3817256, 0xE300000000000000, 1);
  v17 = sub_1C755065C();
  MEMORY[0x1CCA5CE10](v4, v3);
  v18 = sub_1C755065C();
  v19 = OUTLINED_FUNCTION_48_21();
  v21 = [v19 v20];

  v22 = sub_1C755068C();
  return v22;
}

_OWORD *OUTLINED_FUNCTION_24_31(uint64_t a1)
{
  *(v1 + 384) = a1;
  *(v1 + 360) = v2;

  return sub_1C6FCABEC((v1 + 360), (v1 + 200));
}

uint64_t OUTLINED_FUNCTION_42_27()
{
}

uint64_t OUTLINED_FUNCTION_43_28()
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_50_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_27()
{
}

uint64_t OUTLINED_FUNCTION_56_21()
{
}

uint64_t FreeformStoryFetching.Options.init(assetsFetcherType:searchQueryResultTypes:searchResultType:scopingAssetUUIDs:maxSearchResults:maxRankedAssetSearchResults:spotlightQueryUnderstandingTypes:disableSafetyCheck:embeddingGenerationTimeout:thresholdingModel:embeddingSearchLimit:embeddingSearchFullScan:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 *a12, uint64_t a13, char a14)
{
  *a9 = *a1;
  *(a9 + 8) = a3;
  *(a9 + 72) = a2;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11 & 1;
  *(a9 + 56) = a13;
  result = sub_1C6F699F8(a12, a9 + 16);
  *(a9 + 64) = a14;
  return result;
}

uint64_t FreeformStoryFetching.Result.uuids.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = v11;
    v4 = (v1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v11 + 16);
      v8 = *(v11 + 24);
      sub_1C75504FC();
      if (v7 >= v8 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v11 + 16) = v7 + 1;
      v9 = v11 + 16 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t FreeformStoryFetching.FetcherType.rawValue.getter()
{
  v1 = 0x6E69646465626D65;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1C72CB85C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A430);
    v3 = sub_1C7551B0C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C72CD5B4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void static FreeformStoryFetching.fetcher(with:isForTesting:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ([objc_opt_self() enableMediaAnalysisEmbeddingSearch])
  {
    a3[3] = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher();
    a3[4] = &protocol witness table for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.init(with:)(a1, boxed_opaque_existential_0);
  }

  else
  {
    a3[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher();
    a3[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
    v7 = __swift_allocate_boxed_opaque_existential_0(a3);
    sub_1C754FEFC();
    type metadata accessor for PhotosSearchQueryManagerProxy();
    swift_allocObject();
    *v7 = sub_1C72FC904(a1, a2 & 1);
  }
}

__n128 sub_1C72CBA00@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v13 = *(v1 + 88);
  v14 = *(v1 + 72);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  *(a1 + 40) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(a1 + 48) = &off_1F46ACFD0;
  v8 = objc_opt_self();
  sub_1C75504FC();
  v9 = [v8 currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 16) = 4;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10 == 0;
  *a1 = 0;
  *(a1 + 8) = v3;
  result = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v13;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = v6;
  *(a1 + 128) = v7;
  *(a1 + 56) = 4000;
  *(a1 + 64) = 0;
  return result;
}

uint64_t FreeformStoryFetching.Result.merging(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = v2[1];
  v6 = v2[2];
  v36[0] = *v2;
  swift_unknownObjectRetain();
  sub_1C75504FC();
  sub_1C75504FC();
  v7 = v5;
  sub_1C6FD2494(v4);
  v8 = v36[0];
  v9 = *(v36[0] + 16);
  if (v9)
  {
    v31 = v7;
    v32 = v6;
    v33 = a2;
    v36[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D920(0, v9, 0);
    v10 = v36[0];
    v30 = v8;
    v11 = (v8 + 57);
    do
    {
      v12 = *(v11 - 25);
      v13 = *(v11 - 17);
      v14 = *(v11 - 9);
      HIDWORD(v34) = *(v11 - 1);
      v15 = *v11;
      v36[0] = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      swift_bridgeObjectRetain_n();
      if (v17 >= v16 >> 1)
      {
        sub_1C716D920(v16 > 1, v17 + 1, 1);
        v10 = v36[0];
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 48 * v17;
      *(v18 + 32) = v12;
      *(v18 + 40) = v13;
      *(v18 + 48) = v12;
      *(v18 + 56) = v13;
      *(v18 + 64) = v14;
      *(v18 + 72) = BYTE4(v34);
      *(v18 + 73) = v15;
      v11 += 32;
      --v9;
    }

    while (v9);

    v6 = v32;
    a2 = v33;
    v7 = v31;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v19 = sub_1C72CB85C(v10);
  sub_1C739BEE8(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v31, v32, v33, v34, v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8], v36[9], v36[10]);
  v36[0] = v27;
  sub_1C72CC3A8(v36);

  *a2 = v36[0];
  a2[1] = v7;
  a2[2] = v6;
  return result;
}

id FreeformStoryFetching.Options.searchFetchOptions.getter()
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6978A70]) init];
  if (*(v0 + 80))
  {
    v3 = sub_1C7550F7C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setScopedIdentifiers_];

  [v2 setSearchQueryResultTypes_];
  [v2 setMaxSearchResults_];
  [v2 setMaxRankedAssetSearchResults_];
  [v2 setSpotlightQUTypes_];
  [v2 setDisableSafetyCheck_];
  [v2 setEnableQueryMatchDetails_];
  [v2 setCollectionThreshold_];
  [v2 setMinNumberOfResultsForNextTokenGeneration_];
  if ((*(v0 + 128) & 1) == 0)
  {
    [v2 setEmbeddingGenerationTimeout_];
  }

  v4 = 1u >> (*v0 & 7);
  [v2 setDisableMetadataSearch_];
  [v2 setDisableSemanticSearch_];
  if (([objc_opt_self() enableMediaAnalysisEmbeddingSearch] & 1) == 0)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    (*(v6 + 16))(v5, v6);
    if (v1)
    {
      if (qword_1EC213FD8 != -1)
      {
        swift_once();
      }

      v7 = sub_1C754FF1C();
      __swift_project_value_buffer(v7, qword_1EC21A400);
      v8 = sub_1C754FEEC();
      v9 = sub_1C755119C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C6F5C000, v8, v9, "The thresholdingModel failed to provide a baseThresholdForQueryCalibration, this is a configuration error and the client must use a compatible ThresholdingModel.", v10, 2u);
        MEMORY[0x1CCA5F8E0](v10, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
      [v2 setEmbeddingRelevanceThreshold_];
    }
  }

  return v2;
}

uint64_t FreeformStoryFetching.Result.QueryInfo.init(attributedQueryString:queryEmbedding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FreeformStoryFetching.Result.init(retrievalInfos:queryInfo:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

uint64_t sub_1C72CBFA8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A400);
  __swift_project_value_buffer(v0, qword_1EC21A400);
  return sub_1C754FEFC();
}

PhotosIntelligence::FreeformStoryFetching::FetcherType_optional __swiftcall FreeformStoryFetching.FetcherType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C72CC0C0@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryFetching.FetcherType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FreeformStoryFetching.Result.RetrievalInfo.uuid.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

PhotosIntelligence::FreeformStoryFetching::Result::RetrievalInfo __swiftcall FreeformStoryFetching.Result.RetrievalInfo.init(uuid:cosineSimilarityScore:isMetadataMatch:)(Swift::String uuid, Swift::Double_optional cosineSimilarityScore, Swift::Bool isMetadataMatch)
{
  *v4 = uuid;
  *(v4 + 16) = *&cosineSimilarityScore.is_nil;
  *(v4 + 24) = isMetadataMatch;
  *(v4 + 25) = v3;
  result.uuid = uuid;
  result.cosineSimilarityScore.value = cosineSimilarityScore.value;
  result.cosineSimilarityScore.is_nil = cosineSimilarityScore.is_nil;
  return result;
}

id FreeformStoryFetching.Result.queryInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 8);
  *a1 = v4;
  a1[1] = v2;
  swift_unknownObjectRetain();

  return v4;
}

uint64_t FreeformStoryFetching.Result.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A9980);
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0xD000000000000032, 0x80000001C75A99A0);
  v4 = [v1 description];
  v5 = sub_1C755068C();
  v7 = v6;

  MEMORY[0x1CCA5CD70](v5, v7);

  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75A99E0);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](0x7D0A7D202020200ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1C72CC3A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A8C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C72CCBF0(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1C72CC418()
{
  result = qword_1EC21A418;
  if (!qword_1EC21A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A418);
  }

  return result;
}

unint64_t sub_1C72CC470()
{
  result = qword_1EC21A420;
  if (!qword_1EC21A420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A428);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A420);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryFetching(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for FreeformStoryFetching.FetcherType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C72CC65C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1C72CC69C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1C72CC72C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_1C72CC76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C72CC7D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72CC814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of FreeformStoryAssetsFetcher.preheat(eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C72CD860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FreeformStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C72CCAE8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C72CCAE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C72CCBF0(uint64_t *a1)
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
      sub_1C72CCD80(v7, v8, a1, v4);
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
    return sub_1C72CCCE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C72CCCE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 25;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        if (*(v8 - 1))
        {
          break;
        }

        v9 = *(v8 - 9);
        if ((*(v8 - 33) & 1) == 0 && *(v8 - 41) >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = (v8 - 25);
        v12 = *(v8 - 57);
        v11 = *(v8 - 41);
        *(v8 - 32) = *v8;
        v8 -= 32;
        v13 = *(v8 + 7);
        v14 = *(v8 + 15);
        *v10 = v12;
        v10[1] = v11;
        *(v8 - 25) = v13;
        *(v8 - 17) = v14;
        *(v8 - 9) = v9;
        *(v8 - 1) = 0;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C72CCD80(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v86 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v82 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3 + 32 * v6;
        v10 = *a3 + 32 * v8;
        if (*(v9 + 24))
        {
          v11 = 0;
        }

        else
        {
          v11 = (*(v10 + 24) & 1) != 0 || *(v10 + 16) < *(v9 + 16);
        }

        if (v5 <= v8 + 2)
        {
          v6 = v8 + 2;
        }

        else
        {
          v6 = v5;
        }

        v12 = 32 * v8;
        v13 = (v10 + 88);
        for (i = 2; v8 + i < v5; ++i)
        {
          if (*v13)
          {
            if (v11)
            {
              v6 = v8 + i;
              goto LABEL_24;
            }
          }

          else if (*(v13 - 4))
          {
            if (!v11)
            {
              v6 = v8 + i;
              goto LABEL_38;
            }
          }

          else if (((v11 ^ (*(v13 - 5) >= *(v13 - 1))) & 1) == 0)
          {
            v6 = v8 + i;
            break;
          }

          v13 += 4;
        }

        if (!v11)
        {
          goto LABEL_38;
        }

LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_129;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 32;
          v16 = v6;
          v17 = v8;
          do
          {
            if (v17 != --v16)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v19 = v18 + v12;
              v20 = v18 + v15;
              v21 = *v19;
              v22 = *(v19 + 8);
              v23 = *(v19 + 16);
              v24 = *(v19 + 24);
              v25 = *(v19 + 25);
              v26 = v12 != v15 || v19 >= v20 + 32;
              if (v26)
              {
                v27 = *(v20 + 16);
                *v19 = *v20;
                *(v19 + 16) = v27;
              }

              *v20 = v21;
              *(v20 + 8) = v22;
              *(v20 + 16) = v23;
              *(v20 + 24) = v24;
              *(v20 + 25) = v25;
            }

            ++v17;
            v15 -= 32;
            v12 += 32;
          }

          while (v17 < v16);
          v5 = a3[1];
        }
      }

LABEL_38:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_130;
          }

          if (v8 + a4 < v5)
          {
            v5 = v8 + a4;
          }

          if (v5 < v8)
          {
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
            return;
          }

          if (v6 != v5)
          {
            v28 = *a3;
            v29 = *a3 + 32 * v6 + 25;
            v30 = v8 - v6;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                if (*(v32 - 1))
                {
                  break;
                }

                v33 = *(v32 - 9);
                if ((*(v32 - 33) & 1) == 0 && *(v32 - 41) >= v33)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_132;
                }

                v34 = (v32 - 25);
                v36 = *(v32 - 57);
                v35 = *(v32 - 41);
                *(v32 - 32) = *v32;
                v32 -= 32;
                v37 = *(v32 + 7);
                v38 = *(v32 + 15);
                *v34 = v36;
                v34[1] = v35;
                *(v32 - 25) = v37;
                *(v32 - 17) = v38;
                *(v32 - 9) = v33;
                *(v32 - 1) = 0;
                v26 = __CFADD__(v31++, 1);
              }

              while (!v26);
              ++v6;
              v29 += 32;
              --v30;
            }

            while (v6 != v5);
            v6 = v5;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v80;
      }

      v39 = v7[2];
      v40 = v39 + 1;
      if (v39 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v81;
      }

      v7[2] = v40;
      v41 = v7 + 4;
      v42 = &v7[2 * v39 + 4];
      *v42 = v8;
      v42[1] = v6;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_135;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = &v41[2 * v40 - 2];
          v45 = &v7[2 * v40];
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = v7[4];
            v47 = v7[5];
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_76:
            if (v49)
            {
              goto LABEL_117;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_120;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_125;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v40 < 2)
          {
            goto LABEL_119;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_91:
          if (v64)
          {
            goto LABEL_122;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_124;
          }

          if (v71 < v63)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v43 - 1 >= v40)
          {
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
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v75 = &v41[2 * v43 - 2];
          v76 = *v75;
          v77 = &v41[2 * v43];
          v78 = v77[1];
          sub_1C72CD410((*a3 + 32 * *v75), (*a3 + 32 * *v77), (*a3 + 32 * v78), v84);
          if (v86)
          {
            goto LABEL_110;
          }

          if (v78 < v76)
          {
            goto LABEL_112;
          }

          v79 = v7[2];
          if (v43 > v79)
          {
            goto LABEL_113;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v79)
          {
            goto LABEL_114;
          }

          v40 = v79 - 1;
          memmove(&v41[2 * v43], v77 + 2, 16 * (v79 - 1 - v43));
          v7[2] = v79 - 1;
          if (v79 <= 2)
          {
            goto LABEL_105;
          }
        }

        v50 = &v41[2 * v40];
        v51 = *(v50 - 8);
        v52 = *(v50 - 7);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_115;
        }

        v55 = *(v50 - 6);
        v54 = *(v50 - 5);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_116;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_118;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_121;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_126;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      a4 = v82;
      if (v6 >= v5)
      {
        v87 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_136;
  }

  sub_1C72CD2E4(&v87, *a1, a3);
LABEL_110:
}

uint64_t sub_1C72CD2E4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C72CD410((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C72CD410(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1C7423D00(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v18 = v7;
        goto LABEL_32;
      }

      if ((v6[24] & 1) != 0 || (v4[24] & 1) == 0 && *(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_12;
  }

  sub_1C7423D00(a2, (a3 - a2) / 32, a4);
  v15 = &v4[32 * v9];
LABEL_17:
  v16 = 0;
  v17 = v15;
  v18 = v6;
  while (1)
  {
    v10 = &v17[v16];
    if (&v17[v16] <= v4 || v6 <= v7)
    {
      break;
    }

    if ((*(v10 - 8) & 1) == 0)
    {
      v15 = &v17[v16];
      if ((*(v6 - 8) & 1) != 0 || *(v6 - 2) < *(v15 - 2))
      {
        v6 -= 32;
        v22 = &v5[v16];
        v5 = &v5[v16 - 32];
        if (v22 != v18)
        {
          v23 = *(v18 - 1);
          *v5 = *v6;
          *(v5 + 1) = v23;
        }

        goto LABEL_17;
      }
    }

    v20 = &v5[v16];
    if (v10 != &v5[v16])
    {
      v21 = *(v10 - 1);
      *(v20 - 2) = *(v10 - 2);
      *(v20 - 1) = v21;
    }

    v16 -= 32;
  }

LABEL_32:
  v24 = (v10 - v4) / 32;
  if (v18 != v4 || v18 >= &v4[32 * v24])
  {
    memmove(v18, v4, 32 * v24);
  }

  return 1;
}

uint64_t sub_1C72CD5B4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v46 = *(a1 + 16);
  v5 = (a1 + 73);
  while (1)
  {
    if (v46 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(v5 - 41);
    v7 = *(v5 - 33);
    v8 = *(v5 - 25);
    v9 = *(v5 - 17);
    v10 = *(v5 - 9);
    v11 = *(v5 - 1);
    v12 = *v5;
    sub_1C75504FC();
    sub_1C75504FC();
    if (!v7)
    {
    }

    v13 = v6;
    v14 = v5;
    v15 = v9;
    v16 = a2;
    v50 = v10;
    v48 = v8;
    v51 = v12;
    v17 = *a3;
    v18 = v13;
    v20 = sub_1C6F78124(v13, v7);
    v21 = v17[2];
    v22 = (v19 & 1) == 0;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_29;
    }

    v23 = v19;
    if (v17[3] >= v21 + v22)
    {
      if ((v16 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A438);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7353E98();
      v24 = sub_1C6F78124(v18, v7);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_31;
      }

      v20 = v24;
    }

    v26 = v15;
    v27 = *a3;
    v28 = v14;
    if (v23)
    {
      v45 = 32 * v20;
      v29 = v27[7] + 32 * v20;
      v30 = *(v29 + 8);
      v49 = *v29;
      v31 = *(v29 + 16);
      v32 = *(v29 + 24);
      v33 = *(v29 + 25);
      sub_1C75504FC();

      if (v32)
      {
        v34 = v50;
      }

      else
      {
        v34 = v31;
      }

      v35 = v31;
      if (v31 <= v50)
      {
        v35 = v50;
      }

      v36 = v27[7] + v45;
      if ((v32 | v11))
      {
        v37 = v32 & v11;
      }

      else
      {
        v37 = 0;
      }

      if ((v32 | v11))
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      *v36 = v49;
      *(v36 + 8) = v30;
      *(v36 + 16) = v38;
      *(v36 + 24) = v37;
      *(v36 + 25) = (v33 | v51) & 1;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      v39 = (v27[6] + 16 * v20);
      *v39 = v18;
      v39[1] = v7;
      v40 = v27[7] + 32 * v20;
      *v40 = v48;
      *(v40 + 8) = v26;
      *(v40 + 16) = v50;
      *(v40 + 24) = v11;
      *(v40 + 25) = v51;
      v41 = v27[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_30;
      }

      v27[2] = v43;
    }

    v5 = v28 + 48;
    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MessagesBackdrop.Gating.FailureCode.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1C7551B2C();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t MessagesBackdrop.Gating.FailureCode.rawValue.getter()
{
  result = 0x726F6353706F7263;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E756F4365636166;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x736E6961746E6F63;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

unint64_t sub_1C72CD9CC@<X0>(unint64_t *a1@<X8>)
{
  result = MessagesBackdrop.Gating.FailureCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72CDAA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BA90;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C755068C();
  *(v0 + 88) = v4;
  result = sub_1C755068C();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_1EC21A440 = v0;
  return result;
}

uint64_t static MessagesBackdrop.Gating.requiredFetchPropertySets.getter()
{
  if (qword_1EC213FE0 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t static AssetGating.EligibilityChecker<>.buildMessagesBackdropEligibilityChecker(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (!*a1)
  {
    sub_1C6FB44D0();
    OUTLINED_FUNCTION_7_26();
    if (v6)
    {
      OUTLINED_FUNCTION_0_131();
      v2 = v20;
    }

    sub_1C72CE40C();
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_6_7(v2 + v3 * v9, v22, v25);
    if (v3 + 2 > *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_2_91();
      v2 = v21;
    }

    sub_1C72CE3B8();
    OUTLINED_FUNCTION_4_74();
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    sub_1C6FB44D0();
    OUTLINED_FUNCTION_7_26();
    if (v6)
    {
      OUTLINED_FUNCTION_0_131();
      v2 = v19;
    }

    sub_1C72CE3B8();
    OUTLINED_FUNCTION_1_98();
    v8 = v2 + v3 * v7;
LABEL_11:
    OUTLINED_FUNCTION_6_7(v8, v22, v25);
    goto LABEL_13;
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_13:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB44D0();
    v2 = v15;
  }

  v10 = *(v2 + 16);
  if (v10 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_131();
    v2 = v16;
  }

  sub_1C72CE2BC();
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_6_7(v2 + v10 * v11, v22, v25);
  if ((v10 + 2) > *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_91();
    v2 = v17;
  }

  sub_1C72CE310();
  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_6_7(v12, v23, v26);
  if ((v10 + 3) > *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_131();
    v2 = v18;
  }

  sub_1C72CE364();
  OUTLINED_FUNCTION_1_98();
  result = OUTLINED_FUNCTION_6_7(v2 + (v10 + 2) * v13, v24, v27);
  *a2 = v5;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1C72CDDA8(void *a1)
{
  v2 = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CD0];
  if ([a1 syndicationEligibility] <= 0)
  {
    sub_1C755180C();

    v5[0] = 0xD000000000000012;
    v5[1] = 0x80000001C75A9AB0;
    [a1 syndicationEligibility];
    v3 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v3);

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A9AD0);
    sub_1C70F58A8(v5, 1, 0xD000000000000012, 0x80000001C75A9AB0);

    return v6;
  }

  return v2;
}

void sub_1C72CDEB8(void *a1)
{
  v3[3] = MEMORY[0x1E69E7CD0];
  v1 = [a1 mediaAnalysisProperties];
  v2 = [v1 faceCount];

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 - 4 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    sub_1C70F58A8(v3, 3, 0xD000000000000028, 0x80000001C75A9A80);
  }
}

uint64_t sub_1C72CDF6C(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CD0];
  v8 = 0.0;
  v9 = MEMORY[0x1E69E7CD0];
  v3 = [a1 mediaAnalysisProperties];
  v4 = [v3 faceCount];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  [objc_opt_self() bestWallpaperCropForAsset:a1 classification:v5 outputCropScore:&v8 outputLayoutAcceptable:0];
  if (v8 < 0.4)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x6F637320706F7243, 0xEC000000203A6572);
    v6 = sub_1C7550F3C();
    MEMORY[0x1CCA5CD70](v6);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A9A00);
    sub_1C7550F5C();
    sub_1C70F58A8(&v10, 2, v10, v11);

    return v9;
  }

  return v2;
}

void sub_1C72CE110(void *a1)
{
  v15[10] = MEMORY[0x1E69E7CD0];
  v1 = [a1 characterRecognitionProperties];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 algorithmVersion];
    v4 = sub_1C72CE8F0(v2);
    if (v5 >> 60 == 15)
    {
      if (v3 > 0)
      {

        return;
      }
    }

    else
    {
      sub_1C70B5C10(v4, v5);
    }

    sub_1C70F58A8(v15, 5, 0xD000000000000013, 0x80000001C75A9A60);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A4A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = 0;
    *(inited + 40) = 0xD000000000000038;
    *(inited + 48) = 0x80000001C75A9A20;
    sub_1C707EFDC(inited, v7, v8, v9, v10, v11, v12, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7], v15[8], v15[9]);
  }
}

uint64_t sub_1C72CE22C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7CD0];
  if (([objc_opt_self() assetIsSafeForWidgetDisplay_] & 1) == 0)
  {
    sub_1C70F58A8(&v3, 4, 0xD000000000000021, 0x80000001C759DE30);

    return v4;
  }

  return v1;
}

unint64_t sub_1C72CE2BC()
{
  result = qword_1EC21A448;
  if (!qword_1EC21A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A448);
  }

  return result;
}

unint64_t sub_1C72CE310()
{
  result = qword_1EC21A450;
  if (!qword_1EC21A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A450);
  }

  return result;
}

unint64_t sub_1C72CE364()
{
  result = qword_1EC21A458;
  if (!qword_1EC21A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A458);
  }

  return result;
}

unint64_t sub_1C72CE3B8()
{
  result = qword_1EC21A460;
  if (!qword_1EC21A460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A460);
  }

  return result;
}

unint64_t sub_1C72CE40C()
{
  result = qword_1EC21A468;
  if (!qword_1EC21A468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A468);
  }

  return result;
}

unint64_t sub_1C72CE464()
{
  result = qword_1EC21A470;
  if (!qword_1EC21A470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A470);
  }

  return result;
}

unint64_t sub_1C72CE4B8(void *a1)
{
  a1[1] = sub_1C72CE4F8();
  a1[2] = sub_1C72CE54C();
  a1[3] = sub_1C72CE5A0();
  result = sub_1C72CE5F4();
  a1[4] = result;
  return result;
}

unint64_t sub_1C72CE4F8()
{
  result = qword_1EC21A478;
  if (!qword_1EC21A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A478);
  }

  return result;
}

unint64_t sub_1C72CE54C()
{
  result = qword_1EC21A480;
  if (!qword_1EC21A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A480);
  }

  return result;
}

unint64_t sub_1C72CE5A0()
{
  result = qword_1EC21ABB0;
  if (!qword_1EC21ABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21ABB0);
  }

  return result;
}

unint64_t sub_1C72CE5F4()
{
  result = qword_1EC21A488;
  if (!qword_1EC21A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A488);
  }

  return result;
}

unint64_t sub_1C72CE648(uint64_t a1)
{
  result = sub_1C72CE670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C72CE670()
{
  result = qword_1EC21A490;
  if (!qword_1EC21A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A490);
  }

  return result;
}

_BYTE *_s6GatingOwst(_BYTE *result, int a2, int a3)
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

_BYTE *_s6GatingO11FailureCodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C72CE89C()
{
  result = qword_1EC21A498;
  if (!qword_1EC21A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC21A498);
  }

  return result;
}

uint64_t sub_1C72CE8F0(void *a1)
{
  v1 = [a1 characterRecognitionData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C754DDEC();

  return v3;
}

uint64_t static PNDetailsViewAssetFetcher.fetchPreviewAssets(forCollection:options:)(void *a1, void *a2)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v116 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754E35C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6F7FC78())
  {
    v120 = v9;
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99();
LABEL_3:
  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EDD0CD68);
  v17 = a1;
  v18 = sub_1C754FEEC();
  v19 = sub_1C755117C();

  v20 = os_log_type_enabled(v18, v19);
  v122 = v6;
  v123 = v4;
  v121 = v10;
  v118 = v15;
  v119 = v12;
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_41_0();
    v22 = OUTLINED_FUNCTION_20_1();
    v126 = v22;
    *v21 = 136315138;
    v23 = [v17 localIdentifier];
    v24 = a2;
    v25 = sub_1C755068C();
    v27 = v26;

    v28 = v25;
    a2 = v24;
    v29 = sub_1C6F765A4(v28, v27, &v126);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Start fetching preview assets for collection %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132();
  }

  v30 = qword_1EDD0CD90;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v31 = v30;
  PerformanceMeasure.init(name:log:)();
  v32 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  objc_opt_self();
  v33 = OUTLINED_FUNCTION_4_75();
  if (!v33)
  {
LABEL_11:
    objc_opt_self();
    v40 = OUTLINED_FUNCTION_4_75();
    if (v40)
    {
      v41 = v40;
      v37 = v17;
      v42 = [a2 fetchOptions];
      [v42 copy];

      sub_1C75515CC();
      sub_1C6F65BE8(0, &qword_1EDD0FAC8);
      if (swift_dynamicCast())
      {
        v43 = v124;
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

LABEL_19:
      v47 = [v37 photoLibrary];
      if (!v47)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v48 = v47;
      swift_unknownObjectRelease();
      v43 = [v48 librarySpecificFetchOptions];

LABEL_21:
      [v43 setHighlightCurationType_];
      v49 = [objc_opt_self() fetchCuratedAssetsInAssetCollection:v41 options:v43];
      if (v49)
      {
        v39 = v49;

        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_65;
    }

    goto LABEL_16;
  }

  v34 = v33;
  v35 = v17;
  v17 = [v34 isGenerative];
  v36 = objc_opt_self();
  v37 = v35;
  v38 = [a2 fetchOptions];
  if (v17)
  {
    v39 = [v36 fetchCustomUserAssetsInMemory:v34 options:v38];

    if (v39)
    {
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_11;
  }

  v39 = [v36 fetchCuratedAssetsInAssetCollection:v34 options:v38];

  if (v39)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_16:
  objc_opt_self();
  v44 = OUTLINED_FUNCTION_4_75();
  if (v44)
  {
    v41 = v44;
    v45 = objc_opt_self();
    v37 = v17;
    v46 = [a2 fetchOptions];
    v39 = [v45 fetchKeyAssetsInAssetCollection:v41 options:v46];

    if (!v39)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_23:

LABEL_24:
LABEL_25:
    sub_1C6F85170();

    return v39;
  }

  objc_opt_self();
  v51 = OUTLINED_FUNCTION_4_75();
  if (!v51)
  {
    v80 = [a2 fetchOptions];
    [v80 copy];

    sub_1C75515CC();
    swift_unknownObjectRelease();
    sub_1C6F65BE8(0, &qword_1EDD0FAC8);
    swift_dynamicCast();
    v81 = v124;
    [v124 setFetchLimit_];
    if (sub_1C72D0E24(v81) || sub_1C72D0E94(v81))
    {

LABEL_36:
      [a2 setCurationLength_];
      [a2 setFetchOptions_];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v83 = [ObjCClassFromMetadata fetchEditorialAssetsForCollection:v17 options:a2];
      v39 = [ObjCClassFromMetadata addingKeyAssetForObject:v17 toAssets:v83 options:a2];

      goto LABEL_24;
    }

    objc_opt_self();
    v97 = OUTLINED_FUNCTION_4_75();
    if (v97)
    {
      v98 = v97;
      v99 = v17;
      if ([v98 assetCollectionSubtype] == 101)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
        v100 = swift_allocObject();
        *(v100 + 16) = xmmword_1C75604F0;
        v101 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v102 = sub_1C6F6AF98(0x736D75626C61, 0xE600000000000000, 0);
        v103 = sub_1C6F65BE8(0, &qword_1EDD108F0);
        v123 = v99;
        v104 = v103;
        *(v100 + 56) = v103;
        *(v100 + 32) = v102;
        v105 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v106 = OUTLINED_FUNCTION_7_62();
        *(v100 + 88) = v104;
        *(v100 + 64) = v106;
        sub_1C70E7F40(v100, v81);

        goto LABEL_36;
      }
    }

    objc_opt_self();
    v107 = OUTLINED_FUNCTION_4_75() == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0);
    v108 = swift_allocObject();
    *(v108 + 16) = xmmword_1C75604F0;
    v109 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v110 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, v107);
    v111 = sub_1C6F65BE8(0, &qword_1EDD108F0);
    *(v108 + 56) = v111;
    *(v108 + 32) = v110;
    v112 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v113 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
    *(v108 + 88) = v111;
    *(v108 + 64) = v113;
    sub_1C70E7F40(v108, v81);
    goto LABEL_36;
  }

  v52 = v51;
  v53 = swift_getObjCClassFromMetadata();
  v54 = v17;
  v39 = [v53 fetchEditorialAssetsForCollection:v52 options:a2];
  v55 = [v39 fetchedObjectIDs];
  if (!v55)
  {

    goto LABEL_24;
  }

  v56 = v55;
  v117 = v54;
  v116 = sub_1C6F65BE8(0, &qword_1EDD0FAB0);
  v57 = sub_1C7550B5C();

  sub_1C754DE4C();
  v59 = v58;
  v60 = v118;
  sub_1C754E34C();
  v61 = v120;
  sub_1C754DF5C();
  v62 = sub_1C754E30C();
  (v122)[1](v61, v123);
  (v119)[1](v60, v121);
  v63 = (v59 + v62) / 86400.0;
  if (COERCE__INT64(fabs(v63)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_60;
  }

  if (v63 <= -1.0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v122 = v53;
  v123 = v52;
  if (v63 >= 1.84467441e19)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v121 = v32;
  v64 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  sub_1C71BA844(v57, v72, v65, v66, v67, v68, v69, v70, v71, v116, v117, v118, v119, v57, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131);
  v73 = sub_1C7550B3C();

  v119 = v64;
  v74 = PFShuffledArrayWithRandomNumberGenerator();

  v75 = sub_1C7550B5C();
  sub_1C75504FC();
  sub_1C7033F04(20, v75);
  v77 = v76;
  v79 = v78;
  if ((v78 & 1) == 0)
  {
LABEL_32:
    sub_1C739CDE8();
LABEL_43:
    swift_unknownObjectRelease();
    goto LABEL_44;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v84 = swift_dynamicCastClass();
  if (!v84)
  {
    swift_unknownObjectRelease();
    v84 = MEMORY[0x1E69E7CC0];
  }

  v85 = *(v84 + 16);

  if (__OFSUB__(v79 >> 1, v77))
  {
    goto LABEL_62;
  }

  if (v85 != (v79 >> 1) - v77)
  {
LABEL_63:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v86 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v86)
  {
    goto LABEL_43;
  }

LABEL_44:
  v87 = sub_1C71BBCB0();

  [a2 setCurationLength_];
  if (sub_1C72D0EF0([a2 fetchOptions]) || sub_1C72D0F68(objc_msgSend(a2, sel_fetchOptions)))
  {

    if (v87)
    {
LABEL_47:
      sub_1C75504FC();
      v88 = sub_1C7550B3C();

      goto LABEL_50;
    }
  }

  else
  {
    v89 = [a2 fetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v90 = swift_allocObject();
    *(v90 + 16) = xmmword_1C7564A90;
    v91 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v90 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
    v92 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v90 + 40) = OUTLINED_FUNCTION_7_62();
    sub_1C71F8834(v90, v89);

    if (v87)
    {
      goto LABEL_47;
    }
  }

  v88 = 0;
LABEL_50:
  v93 = objc_opt_self();
  v94 = [a2 fetchOptions];
  v95 = [v93 fetchVisibleAssetsWithObjectIDs:v88 options:v94];

  if (v95)
  {

    v96 = [v122 addingKeyAssetForObject:v123 toAssets:v95 options:a2];

    v39 = v96;
    goto LABEL_25;
  }

LABEL_66:
  v126 = 0;
  v127 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000032, 0x80000001C75A9B90);
  v124 = sub_1C70CAC04(v123);
  v125 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
  v115 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v115);

  result = OUTLINED_FUNCTION_3_85();
  __break(1u);
  return result;
}

uint64_t static PNDetailsViewAssetFetcher.fetchEditorialAssets(forCollection:options:)(void *a1, id a2)
{
  if (sub_1C6F7FC78())
  {
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99();
LABEL_3:
  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0CD68);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_20_1();
    v58[0] = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, v58);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching editorial assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132();
  }

  v15 = qword_1EDD0CD90;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  v17 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  objc_opt_self();
  v18 = OUTLINED_FUNCTION_4_75();
  if (v18)
  {
    v19 = v18;
    type metadata accessor for PersonCuration();
    v20 = v5;
    v21 = [a2 fetchOptions];
    v22 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(v19, v21, 1);

    v23 = [swift_getObjCClassFromMetadata() addingKeyAssetForObject:v19 toAssets:v22 options:a2];
LABEL_11:
    v27 = v23;

LABEL_12:
    sub_1C6F85170();

    return v27;
  }

  objc_opt_self();
  v24 = OUTLINED_FUNCTION_4_75();
  if (v24)
  {
    v25 = v24;
    type metadata accessor for PersonCuration();
    v20 = v5;
    v26 = [a2 fetchOptions];
    v22 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(v25, v26, 1, [a2 includeOthersInSocialGroupAssets]);

    v23 = [swift_getObjCClassFromMetadata() addingKeyAssetForObject:v25 toAssets:v22 options:a2];
    goto LABEL_11;
  }

  objc_opt_self();
  v29 = OUTLINED_FUNCTION_4_75();
  if (v29)
  {
    v30 = v29;
    v31 = v5;
    if ([v30 isGenerative])
    {
      v5 = objc_opt_self();
      v31 = v31;
      a2 = [a2 fetchOptions];
      v27 = [v5 fetchCustomUserAssetsInMemory:v30 options:a2];

      if (!v27)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v27 = sub_1C72D00AC(v30, a2);
    }

    goto LABEL_22;
  }

LABEL_17:
  objc_opt_self();
  v32 = OUTLINED_FUNCTION_4_75();
  if (v32)
  {
    v33 = v32;
    v34 = objc_opt_self();
    v35 = v5;
    v36 = [a2 fetchOptions];
    v27 = [v34 fetchExtendedCuratedAssetsInAssetCollection:v33 options:v36];

    if (v27)
    {

LABEL_22:
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    v37 = OUTLINED_FUNCTION_4_75();
    if (v37)
    {
      v38 = v37;
      v39 = v5;
      v40 = [a2 fetchOptions];
      [v40 copy];

      sub_1C75515CC();
      swift_unknownObjectRelease();
      sub_1C6F65BE8(0, &qword_1EDD0FAC8);
      swift_dynamicCast();
      sub_1C6F65BE8(0, &qword_1EDD0FAD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1C755BAB0;
      *(v41 + 56) = MEMORY[0x1E69E6158];
      *(v41 + 64) = sub_1C6F6D524();
      *(v41 + 32) = 0xD00000000000001CLL;
      *(v41 + 40) = 0x80000001C75A2960;
      v42 = sub_1C755112C();
      v43 = [v57 internalPredicate];
      v56 = v42;
      if (v43)
      {
        v44 = v43;
        sub_1C6F65BE8(0, &qword_1EDD0FA80);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1C7564A90;
        *(v45 + 32) = v44;
        *(v45 + 40) = v42;
        v46 = v44;
        v47 = v42;
        v48 = v46;
        v49 = v47;
        v50 = sub_1C6F6E5C4();
        [v57 setInternalPredicate_];
      }

      else
      {
        [v57 setInternalPredicate_];
      }

      v51 = objc_opt_self();
      v52 = v57;
      v27 = [v51 fetchAssetsInAssetCollection:v38 options:v52];

      if ([v27 count])
      {
      }

      else
      {
        v53 = [a2 fetchOptions];
        v54 = [v51 fetchAssetsInAssetCollection:v38 options:v53];

        v27 = v54;
      }

      goto LABEL_12;
    }
  }

  v58[0] = 0;
  v58[1] = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A9BF0);
  swift_getObjectType();
  v55 = sub_1C755204C();
  MEMORY[0x1CCA5CD70](v55);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A9C20);
  result = OUTLINED_FUNCTION_3_85();
  __break(1u);
  return result;
}

id sub_1C72D00AC(void *a1, id a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a2 curationLength];
  if ((v4 - 1) >= 5)
  {
    if (!v4)
    {
      v10 = objc_opt_self();
      v11 = [a2 fetchOptions];
      v7 = [v10 fetchCustomUserAssetsInMemory:a1 options:v11];

      if (v7 && [v7 count])
      {
        return v7;
      }

      v12 = [a2 fetchOptions];
      v13 = [v10 fetchCuratedAssetsInAssetCollection:a1 options:v12];

      v7 = v13;
      if (v13)
      {
        return v7;
      }

      sub_1C755180C();

      v21 = 0xD000000000000021;
      v22 = 0x80000001C75A9ED0;
      v23 = sub_1C70CAC04(a1);
      v24 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
      v15 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v15);
    }
  }

  else
  {
    v5 = [a2 curationLength];
    switch(v5)
    {
      case 1:
        break;
      case 2:
      case 5:
        v5 = 2;
        break;
      case 3:
        v5 = 4;
        break;
      case 4:
        v5 = 0;
        break;
      default:
        goto LABEL_20;
    }

    sub_1C75504DC();
    v6 = sub_1C755048C();

    v21 = 0;
    v7 = [a1 fetchAssetsWithCurationOfLength:v5 options:v6 error:&v21];

    if (v7)
    {
      v8 = v21;
      return v7;
    }

    v16 = v21;
    v17 = sub_1C754DBEC();

    swift_willThrow();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A9E90);
    v23 = sub_1C70CAC04(a1);
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
    v19 = sub_1C75506EC();
    MEMORY[0x1CCA5CD70](v19);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A9EB0);
    v20 = [a2 curationLength];
    switch(v20)
    {
      case 1:
        goto LABEL_19;
      case 2:
      case 5:
        v20 = 2;
        goto LABEL_19;
      case 3:
        v20 = 4;
        goto LABEL_19;
      case 4:
        v20 = 0;
LABEL_19:
        v23 = v20;
        type metadata accessor for PHMemoryCurationLength(0);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
        v23 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
        sub_1C75519EC();
        break;
      default:
        break;
    }
  }

LABEL_20:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

void static PNDetailsViewAssetFetcher.fetchMovieAssets(forCollection:options:)(void *a1, void *a2)
{
  if (sub_1C6F7FC78())
  {
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99();
LABEL_3:
  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0CD68);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_20_1();
    v28[0] = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, v28);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching movie assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132();
  }

  v15 = qword_1EDD0CD90;
  type metadata accessor for PerformanceMeasure();
  OUTLINED_FUNCTION_137();
  v16 = v15;
  PerformanceMeasure.init(name:log:)();
  v17 = [a2 fetchOptions];
  [v17 copy];

  sub_1C75515CC();
  sub_1C6F65BE8(0, &qword_1EDD0FAC8);
  if (swift_dynamicCast())
  {
    v18 = v27;
    swift_unknownObjectRelease();
  }

  else
  {
    v19 = [v5 photoLibrary];
    if (!v19)
    {
      goto LABEL_22;
    }

    v20 = v19;
    swift_unknownObjectRelease();
    v18 = [v20 librarySpecificFetchOptions];
  }

  if (!__OFSUB__(*MEMORY[0x1E6978FE8], 1))
  {
    [v18 setFetchLimit_];
    [a2 setFetchOptions_];
    objc_opt_self();
    v21 = OUTLINED_FUNCTION_6_74();
    if (v21)
    {
      v22 = [objc_opt_self() fetchMovieAssetsForPerson:v21 options:a2];
    }

    else
    {
      objc_opt_self();
      v23 = OUTLINED_FUNCTION_6_74();
      if (v23)
      {
        v24 = v23;
        v25 = objc_opt_self();
        v26 = v5;
        [v25 fetchMovieAssetsForSocialGroup:v24 options:a2];

        goto LABEL_17;
      }

      v22 = [swift_getObjCClassFromMetadata() fetchEditorialAssetsForCollection:v5 options:a2];
    }

    v22;
LABEL_17:

    sub_1C6F85170();

    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1C72D0A08(void *a1, void *a2, id a3)
{
  v5 = [a3 fetchOptions];
  v6 = static KeyAssetFetcher.fetchKeyAsset(for:options:)(a1, v5);

  v7 = [v6 fetchedObjectIDsSet];
  if (v7)
  {
    v8 = v7;
    sub_1C6F65BE8(0, &qword_1EDD0FAB0);
    sub_1C72B96F4();
    v9 = sub_1C7550F8C();

    v10 = [a2 fetchedObjectIDsSet];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    v12 = sub_1C7550F8C();

    if (sub_1C733C094(v9) < 1 || (sub_1C72B89D0(v12, v9), (v13 & 1) != 0))
    {

      goto LABEL_6;
    }

    v15 = sub_1C733C094(v12);
    v16 = sub_1C733C094(v9);
    sub_1C75504FC();
    if (v16 < v15)
    {
      v17 = sub_1C733C094(v12);
      v18 = sub_1C733C094(v9);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
      {
        __break(1u);
LABEL_16:
        sub_1C755180C();

        sub_1C70CAC04(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620);
        v27 = sub_1C75506EC();
        MEMORY[0x1CCA5CD70](v27);

        result = sub_1C7551AAC();
        __break(1u);
        return result;
      }

      sub_1C7033F5C(v20, v12);
      sub_1C706F204(v29);
    }

    sub_1C75504FC();
    v21 = sub_1C75504FC();
    sub_1C707446C(v21, v9);
    v23 = sub_1C739C704(v22);

    v24 = objc_opt_self();
    v25 = [a3 fetchOptions];
    v26 = sub_1C72D0FF8(v23, v25, v24);

    if (v26)
    {

      return v26;
    }

    goto LABEL_16;
  }

LABEL_7:

  return a2;
}

uint64_t sub_1C72D0E24(void *a1)
{
  v1 = [a1 sortDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &qword_1EDD108F0);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0E94(void *a1)
{
  v1 = [a1 internalSortDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0EF0(void *a1)
{
  v2 = [a1 sortDescriptors];

  if (!v2)
  {
    return 0;
  }

  sub_1C6F65BE8(0, &qword_1EDD108F0);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0F68(void *a1)
{
  v2 = [a1 internalSortDescriptors];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C7550B5C();

  return v3;
}

id sub_1C72D0FF8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAB0);
  v5 = sub_1C7550B3C();
  v6 = [a3 fetchVisibleAssetsWithObjectIDs:v5 options:a2];

  return v6;
}

uint64_t sub_1C72D1080()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A4D0);
  __swift_project_value_buffer(v0, qword_1EC21A4D0);
  return sub_1C754FEFC();
}

void MusicCelebrationEventsUtility.allCelebrationEventKeywords()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A9938, 1, a3, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28);
  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 16);
  v12 = v8 + 56;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    sub_1C6FB5E8C();
    v14 = sub_1C755152C();
    v15 = *(v14 + 16);
    v16 = *(v13 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_17;
    }

    v17 = v14;
    if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v13 + 24) >> 1)
    {
      sub_1C6FB1814();
      v13 = v18;
    }

    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_2_93();
      if (v19 != v20)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_1_100();

      if (v15)
      {
        v21 = *(v13 + 16);
        v20 = __OFADD__(v21, v15);
        v22 = v21 + v15;
        if (v20)
        {
          goto LABEL_20;
        }

        *(v13 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_18;
      }
    }

    v12 += 48;
    ++v10;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t MusicCelebrationEventsUtility.filteredCelebrationEventKeywords(from:using:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v33[0] = *(v2 - 1);
      v33[1] = v4;
      sub_1C6FB5E8C();
      v5 = sub_1C755152C();
      v6 = *(v5 + 16);
      v7 = *(v3 + 16);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        break;
      }

      v9 = v5;
      if (!swift_isUniquelyReferenced_nonNull_native() || v8 > *(v3 + 24) >> 1)
      {
        sub_1C6FB1814();
        v3 = v10;
      }

      if (*(v9 + 16))
      {
        OUTLINED_FUNCTION_2_93();
        if (v11 != v12)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_1_100();

        if (v6)
        {
          v13 = *(v3 + 16);
          v12 = __OFADD__(v13, v6);
          v14 = v13 + v6;
          if (v12)
          {
            goto LABEL_27;
          }

          *(v3 + 16) = v14;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_25;
        }
      }

      v2 += 2;
      if (!--v1)
      {
        goto LABEL_13;
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
    OUTLINED_FUNCTION_0_133();
LABEL_20:
    v28 = sub_1C754FF1C();
    __swift_project_value_buffer(v28, qword_1EC21A4D0);

    v20 = sub_1C754FEEC();
    v21 = sub_1C755117C();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v33[0] = v23;
      *v22 = 136315138;
      v29 = sub_1C7550F9C();
      v31 = sub_1C6F765A4(v29, v30, v33);

      *(v22 + 4) = v31;
      v27 = "[filteredCelebrationEventKeywords] No filtering applied. Keywords: %s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_13:
  v15 = sub_1C75504FC();
  v16 = sub_1C706D154(v15);
  v8 = sub_1C72B8CBC(v3, v16);

  if (*(v8 + 16) < 2uLL || (sub_1C7009C30(0x74617262656C6543, 0xEB000000006E6F69, v8) & 1) == 0)
  {
    if (qword_1EC213FE8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 0x74617262656C6543;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_1C74C3924();
  v8 = v18;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  if (qword_1EC213FE8 != -1)
  {
    OUTLINED_FUNCTION_0_133();
  }

  v19 = sub_1C754FF1C();
  __swift_project_value_buffer(v19, qword_1EC21A4D0);

  v20 = sub_1C754FEEC();
  v21 = sub_1C755117C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v33[0] = v23;
    *v22 = 136315138;
    v24 = sub_1C7550F9C();
    v26 = sub_1C6F765A4(v24, v25, v33);

    *(v22 + 4) = v26;
    v27 = "[filteredCelebrationEventKeywords] Filtered out generic celebration keyword. Keywords: %s";
LABEL_22:
    _os_log_impl(&dword_1C6F5C000, v20, v21, v27, v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x1CCA5F8E0](v23, -1, -1);
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
  }

LABEL_23:

  return v8;
}

_BYTE *storeEnumTagSinglePayload for MusicCelebrationEventsUtility(_BYTE *result, int a2, int a3)
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