_BYTE *storeEnumTagSinglePayload for QueryTokenSuggestion.CategoryType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xED)
  {
    v6 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
          *result = a2 + 18;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StoryGenerationDiagnosticContext.GenerationStage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEF)
  {
    if (a2 + 17 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 17) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 18;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v5 = v6 - 18;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for QueryTokenSuggestion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PersonalEventBackingItem.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_1C7043744(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PersonalEventBackingItem.DateRangeCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C70438D0()
{
  result = qword_1EC216490;
  if (!qword_1EC216490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216490);
  }

  return result;
}

unint64_t sub_1C7043928()
{
  result = qword_1EC216498;
  if (!qword_1EC216498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216498);
  }

  return result;
}

unint64_t sub_1C7043980()
{
  result = qword_1EC2164A0;
  if (!qword_1EC2164A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164A0);
  }

  return result;
}

unint64_t sub_1C70439D8()
{
  result = qword_1EC2164A8;
  if (!qword_1EC2164A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164A8);
  }

  return result;
}

unint64_t sub_1C7043A30()
{
  result = qword_1EC2164B0;
  if (!qword_1EC2164B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164B0);
  }

  return result;
}

unint64_t sub_1C7043A88()
{
  result = qword_1EDD0E710;
  if (!qword_1EDD0E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E710);
  }

  return result;
}

unint64_t sub_1C7043AE0()
{
  result = qword_1EDD0E718;
  if (!qword_1EDD0E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0E718);
  }

  return result;
}

unint64_t sub_1C7043B38()
{
  result = qword_1EC2164B8;
  if (!qword_1EC2164B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164B8);
  }

  return result;
}

unint64_t sub_1C7043B90()
{
  result = qword_1EC2164C0;
  if (!qword_1EC2164C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164C0);
  }

  return result;
}

unint64_t sub_1C7043BE8()
{
  result = qword_1EC2164C8;
  if (!qword_1EC2164C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164C8);
  }

  return result;
}

unint64_t sub_1C7043C40()
{
  result = qword_1EC2164D0;
  if (!qword_1EC2164D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164D0);
  }

  return result;
}

unint64_t sub_1C7043C98()
{
  result = qword_1EC2164D8;
  if (!qword_1EC2164D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164D8);
  }

  return result;
}

unint64_t sub_1C7043CF0()
{
  result = qword_1EC2164E0;
  if (!qword_1EC2164E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164E0);
  }

  return result;
}

unint64_t sub_1C7043D48()
{
  result = qword_1EC2164E8;
  if (!qword_1EC2164E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164E8);
  }

  return result;
}

unint64_t sub_1C7043DA0()
{
  result = qword_1EC2164F0;
  if (!qword_1EC2164F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164F0);
  }

  return result;
}

unint64_t sub_1C7043DF8()
{
  result = qword_1EC2164F8;
  if (!qword_1EC2164F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2164F8);
  }

  return result;
}

unint64_t sub_1C7043E50()
{
  result = qword_1EC216500;
  if (!qword_1EC216500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216500);
  }

  return result;
}

unint64_t sub_1C7043EA4()
{
  result = qword_1EC216508;
  if (!qword_1EC216508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216508);
  }

  return result;
}

unint64_t sub_1C7043EF8()
{
  result = qword_1EDD086F8;
  if (!qword_1EDD086F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD086F8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_89_4@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;
  *(v1 - 65) = 0;

  return sub_1C70425BC();
}

uint64_t OUTLINED_FUNCTION_95_4()
{

  return sub_1C7551B4C();
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return swift_isUniquelyReferenced_nonNull_native();
}

void *OUTLINED_FUNCTION_121_3(void *__src, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char __dst)
{

  return memcpy(&__dst, __src, 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_123_2()
{

  return sub_1C7551CBC();
}

uint64_t OUTLINED_FUNCTION_124_2()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_126_3()
{

  return sub_1C7551D2C();
}

uint64_t OUTLINED_FUNCTION_132_3()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t), uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_1C7040234(va, a2, a3, a4, a5);
}

void *OUTLINED_FUNCTION_160_0@<X0>(uint64_t a1@<X8>)
{

  return memmove(v1, (v1 + 16), 16 * a1);
}

uint64_t OUTLINED_FUNCTION_161_0()
{

  return sub_1C7551C6C();
}

void OUTLINED_FUNCTION_162_0()
{

  JUMPOUT(0x1CCA5E460);
}

uint64_t OUTLINED_FUNCTION_163_1@<X0>(char a1@<W8>)
{
  *(v1 - 96) = a1;

  return sub_1C7551B6C();
}

uint64_t OUTLINED_FUNCTION_165_0()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t OUTLINED_FUNCTION_166_1()
{

  return sub_1C7551C1C();
}

uint64_t OUTLINED_FUNCTION_167_0()
{

  return sub_1C7551F5C();
}

void OUTLINED_FUNCTION_168_0()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_169_0()
{

  return sub_1C7551F5C();
}

uint64_t OUTLINED_FUNCTION_170_0()
{

  return sub_1C7551F5C();
}

uint64_t static MemoryCreationURLBuilder.navigationURL(query:launchType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - v9;
  v40 = sub_1C754D8DC();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v36 - v17;
  sub_1C754D96C();
  OUTLINED_FUNCTION_3_0();
  v38 = v20;
  v39 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *a3;
  sub_1C754D95C();
  sub_1C754D94C();
  MEMORY[0x1CCA59E50](0xD000000000000011, 0x80000001C759A450);
  if (!a2)
  {
    goto LABEL_8;
  }

  v24 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v24 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v36 = v4;
    sub_1C754D8CC();
    sub_1C6FB23E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v26 = v25;
    v28 = *(v25 + 16);
    v27 = *(v25 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1C6FB23E0(v27 > 1, v28 + 1, 1, v25);
      v26 = v35;
    }

    *(v26 + 16) = v28 + 1;
    (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v28, v18, v40);
  }

  else
  {
LABEL_8:
    v26 = MEMORY[0x1E69E7CC0];
  }

  switch(v23)
  {
    case 10:
      break;
    default:
      sub_1C754D8CC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB23E0(0, *(v26 + 16) + 1, 1, v26);
        v26 = v33;
      }

      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1C6FB23E0(v29 > 1, v30 + 1, 1, v26);
        v26 = v34;
      }

      *(v26 + 16) = v30 + 1;
      (*(v12 + 32))(v26 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v30, v15, v40);
      break;
  }

  sub_1C754D91C();
  sub_1C754D92C();
  v31 = sub_1C754DD2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v31) == 1)
  {
    sub_1C7044B24(v10);
    sub_1C7044B8C();
    swift_allocError();
    swift_willThrow();
    return (*(v38 + 8))(v22, v39);
  }

  else
  {
    (*(v38 + 8))(v22, v39);
    return (*(*(v31 - 8) + 32))(v37, v10, v31);
  }
}

uint64_t sub_1C7044B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7044B8C()
{
  result = qword_1EC216528;
  if (!qword_1EC216528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216528);
  }

  return result;
}

_BYTE *sub_1C7044BF0(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C7044CA0()
{
  result = qword_1EC216530;
  if (!qword_1EC216530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216530);
  }

  return result;
}

uint64_t sub_1C7044CF8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a3 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v8 = (a3 + 48);
  while (v6 != v5)
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    v11 = *(v8 - 2);
    v15[0] = v5;
    v15[1] = v11;
    v15[2] = v9;
    v15[3] = v10;
    sub_1C75504FC();
    sub_1C75504FC();
    a1(&v14, v15);
    if (v3)
    {

      return v7;
    }

    if (v14)
    {
      MEMORY[0x1CCA5D040](v12);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v7 = v16;
    }

    v8 += 3;
    ++v5;
  }

  return v7;
}

void sub_1C7044E38(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v4 = 0;
  v5 = *(a3 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  while (v5 != v4)
  {
    if (v4 >= v5)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v6 = *(type metadata accessor for AssetSummaryInfo(0) - 8);
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_16;
    }

    a1(&v21, v25 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v4);
    if (v3)
    {

      return;
    }

    v9 = v21;
    v8 = v22;
    v11 = v23;
    v10 = v24;
    if (v22)
    {
      v12 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB2708();
        v12 = v17;
      }

      v13 = v12;
      v14 = *(v12 + 16);
      v19 = v13;
      v15 = v14 + 1;
      if (v14 >= *(v13 + 24) >> 1)
      {
        sub_1C6FB2708();
        v15 = v14 + 1;
        v19 = v18;
      }

      *(v19 + 16) = v15;
      v16 = (v19 + 32 * v14);
      v16[4] = v9;
      v16[5] = v8;
      v16[6] = v11;
      v16[7] = v10;
      v4 = v7;
    }

    else
    {
      sub_1C7045EFC(v21, 0);
      ++v4;
    }
  }
}

void sub_1C7044FEC(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v20 = a3 & 0xC000000000000001;
  v21 = sub_1C6FB6304();
  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v19 = a3;
  v6 = MEMORY[0x1E69E7CC0];
  while (v21 != v5)
  {
    if (v20)
    {
      v7 = MEMORY[0x1CCA5DDD0](v5, v19);
    }

    else
    {
      if (v5 >= *(v18 + 16))
      {
        goto LABEL_20;
      }

      v7 = *(v19 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      return;
    }

    v26 = v7;
    a1(&v22, &v26);
    if (v3)
    {

      return;
    }

    v9 = v23;
    if (v23)
    {
      v10 = v22;
      v11 = v24;
      v12 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1DA0();
        v6 = v15;
      }

      v13 = *(v6 + 16);
      if (v13 >= *(v6 + 24) >> 1)
      {
        sub_1C6FB1DA0();
        v6 = v16;
      }

      *(v6 + 16) = v13 + 1;
      v14 = v6 + 32 * v13;
      *(v14 + 32) = v10;
      *(v14 + 40) = v9;
      *(v14 + 48) = v11;
      *(v14 + 56) = v12 & 1;
      *(v14 + 57) = HIBYTE(v12) & 1;
    }

    else
    {
    }

    ++v5;
  }
}

void sub_1C7045190(void (*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  while (v7 != v6)
  {
    if (v6 >= v7)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216548) - 8);
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_15;
    }

    a1(&v20, a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {

      return;
    }

    v10 = v21;
    ++v6;
    if (v21)
    {
      v19 = v20;
      v11 = v22;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v11 = v17;
      }

      v12 = v11;
      v13 = *(v11 + 16);
      v22 = v12;
      v14 = v13 + 1;
      if (v13 >= *(v12 + 24) >> 1)
      {
        sub_1C6FB1814();
        v14 = v13 + 1;
        v22 = v18;
      }

      v15 = v22;
      *(v22 + 16) = v14;
      v16 = v15 + 16 * v13;
      *(v16 + 32) = v19;
      *(v16 + 40) = v10;
      v6 = v9;
    }
  }
}

id static PHCollectionList.folder(with:reuseFolderIfExisting:in:)(uint64_t a1, uint64_t a2, char a3, id a4)
{
  if ((a3 & 1) != 0 && (v7 = [a4 librarySpecificFetchOptions], sub_1C6F65BE8(0, &qword_1EDD0FAD0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80), v8 = swift_allocObject(), *(v8 + 16) = xmmword_1C75604F0, v9 = MEMORY[0x1E69E6158], *(v8 + 56) = MEMORY[0x1E69E6158], v10 = sub_1C6F6D524(), strcpy((v8 + 32), "localizedTitle"), *(v8 + 47) = -18, *(v8 + 96) = v9, *(v8 + 104) = v10, *(v8 + 64) = v10, *(v8 + 72) = a1, *(v8 + 80) = a2, sub_1C75504FC(), v11 = sub_1C755112C(), objc_msgSend(v7, sel_setPredicate_, v11), v11, v12 = objc_msgSend(objc_opt_self(), sel_fetchCollectionListsWithType_subtype_options_, 2, 100, v7), v13 = objc_msgSend(v12, sel_firstObject), v12, v7, v13))
  {
    return v13;
  }

  else
  {
    return static PHCollectionList.create(with:in:)(a1, a2, a4);
  }
}

uint64_t PHCollectionList.add(albums:preserveOrdersInAlbums:progressReporter:)(uint64_t a1, char a2, uint64_t a3)
{
  v8 = sub_1C754F2CC();
  if (v4)
  {
    goto LABEL_4;
  }

  MEMORY[0x1EEE9AC00](v8);
  v13[2] = a3;
  v13[3] = a1;
  v13[4] = v3;
  v14 = a2 & 1;
  v9 = sub_1C7044CF8(sub_1C7045A6C, v13, a1);
  PHCollectionList.add(albums:)(v9);
  if (v10)
  {

LABEL_4:
    v11 = sub_1C754F2FC();
    return (*(*(v11 - 8) + 8))(a3, v11);
  }

  return sub_1C754F2EC();
}

id static PHCollectionList.create(with:in:)(uint64_t a1, uint64_t a2, void *a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_16();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = v6;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_23();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_2;
  v9 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  LODWORD(a2) = [a3 performChangesAndWait:v9 error:aBlock];
  _Block_release(v9);
  v10 = aBlock[0];
  if (!a2)
  {
    v18 = aBlock[0];
    sub_1C754DBEC();

LABEL_6:
    swift_willThrow();

    return v18;
  }

  v11 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C755BAB0;
  swift_beginAccess();
  v13 = *(v6 + 24);
  *(v12 + 32) = *(v6 + 16);
  *(v12 + 40) = v13;
  sub_1C75504FC();
  v14 = v10;
  v15 = sub_1C7550B3C();

  v16 = [a3 librarySpecificFetchOptions];
  v17 = [v11 fetchCollectionListsWithLocalIdentifiers:v15 options:v16];

  v18 = [v17 firstObject];
  if (!v18)
  {
    sub_1C7045C80();
    swift_allocError();
    *v19 = 0;
    goto LABEL_6;
  }

  return v18;
}

uint64_t sub_1C7045898(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = objc_opt_self();
  v5 = sub_1C755065C();
  v6 = [v4 creationRequestForCollectionListWithTitle_];

  v7 = [v6 placeholderForCreatedCollectionList];
  v8 = [v7 localIdentifier];

  v9 = sub_1C755068C();
  v11 = v10;

  swift_beginAccess();
  *(a3 + 16) = v9;
  *(a3 + 24) = v11;
}

void sub_1C704598C(void *a1@<X0>, void *a2@<X3>, char a3@<W4>, void *a4@<X8>)
{
  v8 = a1[1];
  v9 = a1[2];
  v10 = a1[3];
  sub_1C754F2DC();
  if (!v4)
  {
    v11 = [a2 photoLibrary];
    if (v11)
    {
      v12 = v11;
      sub_1C6F65BE8(0, &qword_1EDD0FA88);
      v13 = static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(v10, v8, v9, v12, a3 & 1);

      *a4 = v13;
    }

    else
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PHCollectionList.add(albums:)(Swift::OpaquePointer albums)
{
  v2 = v1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  v5 = [v2 photoLibrary];
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  OUTLINED_FUNCTION_3_16();
  v7 = swift_allocObject();
  v7[2]._rawValue = v2;
  v7[3]._rawValue = albums._rawValue;
  v7[4]._rawValue = v4;
  OUTLINED_FUNCTION_0_21();
  OUTLINED_FUNCTION_1_23();
  aBlock[2] = v8;
  aBlock[3] = &block_descriptor_12;
  v9 = _Block_copy(aBlock);
  v10 = v2;
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [v6 performChangesAndWait:v9 error:aBlock];
  _Block_release(v9);

  v12 = aBlock[0];
  if (v11)
  {
    swift_beginAccess();
    v13 = *(v4 + 16);
    if (v13 != 2)
    {
      sub_1C7045C80();
      swift_allocError();
      *v14 = v13 & 1;
      swift_willThrow();
    }

    v15 = v12;
  }

  else
  {
    v16 = aBlock[0];
    sub_1C754DBEC();

    swift_willThrow();
  }
}

unint64_t sub_1C7045C80()
{
  result = qword_1EC216538;
  if (!qword_1EC216538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216538);
  }

  return result;
}

void sub_1C7045CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() changeRequestForCollectionList_];
  if (v4)
  {
    v5 = v4;
    sub_1C6F65BE8(0, &qword_1EDD0FA88);
    v6 = sub_1C7550B3C();
    [v5 addChildCollections_];
  }

  else
  {
    swift_beginAccess();
    *(a3 + 16) = 1;
  }
}

_BYTE *_s5ErrorOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7045EA8()
{
  result = qword_1EC216540;
  if (!qword_1EC216540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216540);
  }

  return result;
}

uint64_t sub_1C7045EFC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1C7045F48()
{
  sub_1C7047818();
  result = sub_1C755146C();
  qword_1EDD28C70 = result;
  return result;
}

uint64_t sub_1C7045FB4()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD28C58);
  __swift_project_value_buffer(v0, qword_1EDD28C58);
  if (qword_1EDD0B048 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD28C70;
  return sub_1C754FF2C();
}

uint64_t QueryAnnotatorV2.init(personGroundingProcessor:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EDD0B040 != -1)
  {
    swift_once();
  }

  v4 = sub_1C754FF1C();
  v5 = __swift_project_value_buffer(v4, qword_1EDD28C58);
  (*(*(v4 - 8) + 16))(a2, v5, v4);
  v6 = a2 + *(type metadata accessor for QueryAnnotatorV2() + 20);

  return sub_1C6F699F8(a1, v6);
}

uint64_t type metadata accessor for QueryAnnotatorV2()
{
  result = qword_1EDD0B030;
  if (!qword_1EDD0B030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id static QueryAnnotatorV2.prewarmGroundingComponents()()
{
  v0 = objc_opt_self();

  return [v0 prewarm];
}

uint64_t QueryAnnotatorV2.queryAnnotation(with:photoLibrary:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[87] = v8;
  v9[86] = a8;
  v9[85] = a7;
  v9[84] = a6;
  v9[83] = a5;
  v9[82] = a4;
  v9[81] = a3;
  v9[80] = a2;
  v9[79] = a1;
  v10 = sub_1C754DF6C();
  v9[88] = v10;
  OUTLINED_FUNCTION_18(v10);
  v9[89] = v11;
  v9[90] = swift_task_alloc();
  v9[91] = swift_task_alloc();
  v12 = sub_1C754F2FC();
  v9[92] = v12;
  OUTLINED_FUNCTION_18(v12);
  v9[93] = v13;
  v9[94] = swift_task_alloc();
  v9[95] = swift_task_alloc();
  v9[96] = swift_task_alloc();
  v9[97] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v9[98] = swift_task_alloc();
  v14 = sub_1C754F38C();
  v9[99] = v14;
  OUTLINED_FUNCTION_18(v14);
  v9[100] = v15;
  v9[101] = swift_task_alloc();
  v9[102] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7046384, 0, 0);
}

uint64_t sub_1C7046384()
{
  v36 = v0;
  v1 = v0[98];
  v2 = v0[83];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  OUTLINED_FUNCTION_5_18();
  sub_1C754F60C();
  v3 = sub_1C754F61C();
  v0[103] = v3;
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v3);
  sub_1C754F16C();
  sub_1C7047600(v1);
  sub_1C754F2CC();
  v28 = v0[82];
  v26 = v0[81];
  v4 = v0[80];
  __swift_project_boxed_opaque_existential_1(v0[83], v2[3]);
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  v5 = objc_opt_self();
  v35[0] = [v5 queryAnnotationPromptBindingNumberOfPersonAndPetNames];
  v35[1] = [v5 queryAnnotationPromptBindingNumberOfLocationNames];
  sub_1C74762C4(v4, v26, v35, v28, v31);
  v6 = v0[93];
  v29 = v0[92];
  v7 = v0[97];
  v27 = v0[95];
  v23 = v0[80];
  v24 = v0[81];
  v8 = v31[1];
  v25 = v31[0];
  v0[104] = v31[0];
  v0[105] = v8;
  v9 = v32;
  v10 = v33;
  v0[106] = v32;
  v0[107] = v10;
  v11 = v34;
  v0[108] = v34;
  v30 = v7;
  v31[0] = v9;
  sub_1C75504FC();
  v12 = sub_1C75504FC();
  sub_1C6FD2568(v12);
  v0[77] = v31[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C703328C();
  v13 = OUTLINED_FUNCTION_6_19();
  v15 = v14;

  v0[78] = v11;
  v16 = OUTLINED_FUNCTION_6_19();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755F060;
  *(inited + 32) = 0x6D6F725072657375;
  *(inited + 40) = 0xEA00000000007470;
  *(inited + 48) = v23;
  *(inited + 56) = v24;
  *(inited + 64) = 0x73656D616ELL;
  *(inited + 72) = 0xE500000000000000;
  *(inited + 80) = v13;
  *(inited + 88) = v15;
  *(inited + 96) = 0x54746E6572727563;
  *(inited + 104) = 0xEB00000000656D69;
  *(inited + 112) = v25;
  *(inited + 120) = v8;
  *(inited + 128) = 0x6E6F697461636F6CLL;
  *(inited + 136) = 0xE900000000000073;
  *(inited + 144) = v16;
  *(inited + 152) = v18;
  sub_1C75504FC();
  sub_1C75504FC();
  v0[109] = sub_1C75504DC();
  sub_1C754DF5C();
  v20 = *(v6 + 32);
  v0[110] = v20;
  v0[111] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v27, v30, v29);
  v21 = swift_task_alloc();
  v0[112] = v21;
  *v21 = v0;
  v21[1] = sub_1C704694C;

  return sub_1C735BAEC();
}

uint64_t sub_1C704694C()
{
  *(*v1 + 904) = v0;

  if (v0)
  {

    v2 = sub_1C7047490;
  }

  else
  {
    v2 = sub_1C7046AA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C7046AA8()
{
  v1 = v0[110];
  v2 = v0[103];
  v31 = v0[113];
  v3 = v0[98];
  v4 = v0[96];
  v5 = v0[94];
  v6 = v0[92];
  memcpy(v0 + 35, v0 + 22, 0x68uLL);
  sub_1C754DF5C();
  sub_1C754DEAC();
  v0[114] = v7;
  v1(v5, v4, v6);
  __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
  OUTLINED_FUNCTION_5_18();
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v2);
  sub_1C754F16C();
  sub_1C7047600(v3);
  sub_1C754F2CC();
  v0[115] = v31;
  if (v31)
  {
    v8 = v0[101];
    v9 = v0[100];
    v28 = v0[94];
    v10 = v0[93];
    v24 = v0[99];
    v26 = v0[92];
    __swift_project_boxed_opaque_existential_1(v0 + 72, v0[75]);
    sub_1C754F1AC();

    v30 = *(v9 + 8);
    v30(v8, v24);
    (*(v10 + 8))(v28, v26);
    v11 = v0[102];
    v12 = v0[93];
    v27 = v0[99];
    v29 = v0[92];
    v13 = v0[91];
    v14 = v0[90];
    v15 = v0[89];
    v16 = v0[88];
    v25 = v0[84];
    v17 = v0[83];
    sub_1C7047668((v0 + 35));
    v18 = *(v15 + 8);
    v18(v14, v16);
    v18(v13, v16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 72));
    OUTLINED_FUNCTION_0_22(v17, v17[3]);
    sub_1C754F1AC();
    v30(v11, v27);
    (*(v12 + 8))(v25, v29);
    OUTLINED_FUNCTION_1_24();

    OUTLINED_FUNCTION_43();

    return v19();
  }

  else
  {
    memcpy(v0 + 48, v0 + 35, 0x68uLL);
    v21 = swift_task_alloc();
    v0[116] = v21;
    *v21 = v0;
    v21[1] = sub_1C7046E48;
    v22 = v0[81];
    v23 = v0[80];

    return sub_1C717F244((v0 + 48), v23, v22);
  }
}

uint64_t sub_1C7046E48(uint64_t a1)
{
  *(*v1 + 936) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C7046F48, 0, 0);
}

uint64_t sub_1C7046F48()
{
  v41 = v0;
  if (*(v0 + 352) == 7562617 && *(v0 + 360) == 0xE300000000000000)
  {
    v36 = 1;
  }

  else
  {
    v36 = OUTLINED_FUNCTION_7_11();
  }

  if (*(v0 + 368) == 7562617 && *(v0 + 376) == 0xE300000000000000)
  {
    v32 = 1;
  }

  else
  {
    v32 = OUTLINED_FUNCTION_7_11();
  }

  v3 = *(v0 + 936);
  v39 = *(v0 + 920);
  v4 = *(v0 + 912);
  v5 = *(v0 + 864);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v8 = *(v0 + 840);
  v9 = *(v0 + 832);
  v10 = *(v0 + 648);
  v11 = *(v0 + 640);
  memcpy(__dst, (v0 + 280), 0x68uLL);
  sub_1C717F724(__dst, (v0 + 514));
  __dst[0] = 0;
  *(v0 + 488) = v11;
  *(v0 + 496) = v10;
  *(v0 + 504) = v3;
  *(v0 + 512) = v36 & 1;
  *(v0 + 513) = v32 & 1;
  *(v0 + 520) = v9;
  *(v0 + 528) = v8;
  *(v0 + 536) = v7;
  *(v0 + 544) = v6;
  *(v0 + 552) = v5;
  *(v0 + 560) = v4;
  *(v0 + 568) = 0;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754F2EC();
  v12 = *(v0 + 808);
  v13 = *(v0 + 800);
  v37 = *(v0 + 792);
  if (v39)
  {
    sub_1C70476BC(v0 + 488);
    OUTLINED_FUNCTION_0_22((v0 + 576), *(v0 + 600));
    sub_1C754F1AC();

    v34 = *(v13 + 8);
    v34(v12, v37);
    v14 = *(v0 + 816);
    v15 = *(v0 + 744);
    v38 = *(v0 + 736);
    v16 = *(v0 + 728);
    v17 = *(v0 + 720);
    v18 = *(v0 + 712);
    v19 = *(v0 + 704);
    v31 = *(v0 + 672);
    v33 = *(v0 + 792);
    v20 = *(v0 + 664);
    sub_1C7047668(v0 + 280);
    v21 = *(v18 + 8);
    v21(v17, v19);
    v21(v16, v19);
    __swift_destroy_boxed_opaque_existential_1(v0 + 576);
    OUTLINED_FUNCTION_0_22(v20, v20[3]);
    sub_1C754F1AC();
    v34(v14, v33);
    (*(v15 + 8))(v31, v38);
    OUTLINED_FUNCTION_1_24();
  }

  else
  {
    OUTLINED_FUNCTION_0_22((v0 + 576), *(v0 + 600));
    sub_1C754F1AC();
    sub_1C7047668(v0 + 280);

    v35 = *(v13 + 8);
    v35(v12, v37);
    sub_1C754F2EC();
    v22 = *(v0 + 816);
    v25 = *(v0 + 792);
    v26 = *(v0 + 728);
    v27 = *(v0 + 704);
    v28 = *(v0 + 664);
    v29 = *(v0 + 632);
    v30 = *(*(v0 + 712) + 8);
    v30(*(v0 + 720), v27);
    v30(v26, v27);
    __swift_destroy_boxed_opaque_existential_1(v0 + 576);
    memcpy(v29, (v0 + 488), 0x51uLL);
    OUTLINED_FUNCTION_0_22(v28, v28[3]);
    sub_1C754F1AC();
    v35(v22, v25);
  }

  OUTLINED_FUNCTION_43();

  return v23();
}

uint64_t sub_1C7047490()
{
  v1 = v0[102];
  v2 = v0[100];
  v3 = v0[96];
  v4 = v0[93];
  v5 = v0[92];
  v10 = v0[84];
  v11 = v0[99];
  v6 = v0[83];
  (*(v0[89] + 8))(v0[91], v0[88]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v7 = *(v4 + 8);
  v7(v3, v5);
  OUTLINED_FUNCTION_0_22(v6, v6[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v11);
  v7(v10, v5);
  OUTLINED_FUNCTION_3_17();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C7047600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C7047738()
{
  result = sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    result = sub_1C70477BC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1C70477BC()
{
  result = qword_1EDD07998;
  if (!qword_1EDD07998)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDD07998);
  }

  return result;
}

unint64_t sub_1C7047818()
{
  result = qword_1EDD0FA60;
  if (!qword_1EDD0FA60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD0FA60);
  }

  return result;
}

void sub_1C704785C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v5 = sub_1C719D92C(v2);
    v6 = 0;
    v7 = v2 + 56;
    v22 = v2 + 64;
    v23 = v1;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v27 = v4;
        v26 = v3;
        v9 = sub_1C75506FC();
        v11 = v10;
        v12 = *(v28 + 16);
        if (v12 >= *(v28 + 24) >> 1)
        {
          sub_1C6F7ED9C();
        }

        *(v28 + 16) = v12 + 1;
        v13 = v28 + 16 * v12;
        *(v13 + 32) = v9;
        *(v13 + 40) = v11;
        if (v27)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v14 = 1 << *(v25 + 32);
        if (v5 >= v14)
        {
          goto LABEL_26;
        }

        v15 = *(v24 + 8 * v8);
        if ((v15 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v26)
        {
          goto LABEL_28;
        }

        v16 = v15 & (-2 << (v5 & 0x3F));
        if (v16)
        {
          v14 = __clz(__rbit64(v16)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v17 = v8 << 6;
          v18 = v8 + 1;
          v19 = (v22 + 8 * v8);
          while (v18 < (v14 + 63) >> 6)
          {
            v21 = *v19++;
            v20 = v21;
            v17 += 64;
            ++v18;
            if (v21)
            {
              sub_1C6F9ED50(v5, v26, 0);
              v14 = __clz(__rbit64(v20)) + v17;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v5, v26, 0);
        }

LABEL_19:
        if (++v6 == v23)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v14;
        if (v14 < 0)
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
}

void sub_1C7047A98(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  if (v3 < v4)
  {
    *a2 = v3;
    *(a2 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 258;
    return;
  }

  v38 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  v39 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  v6 = 0;
  v7 = (a1 + 32);
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(a1 + 16);
  if (!v3)
  {
LABEL_10:
    v13 = *(v39 + 32);
    OUTLINED_FUNCTION_124_3();
    if (v17 ^ v18 | v16)
    {
      if (v15 > -9.22337204e18)
      {
        if (v15 < 9.22337204e18)
        {
          v19 = 0;
          v20 = v15;
          v34 = *(v14 + 16);
          v35 = v15;
          if (v34 > v15)
          {
            v20 = *(v14 + 16);
          }

          v40 = v20;
          v21 = a1 + 32;
          v22 = MEMORY[0x1E69E7CC0];
          v36 = a1 + 32;
LABEL_17:
          v23 = (v21 + (v19 << 7));
          while (v3 != v19)
          {
            if (v19 >= v3)
            {
              __break(1u);
LABEL_38:
              __break(1u);
              goto LABEL_39;
            }

            memcpy(__dst, v23, 0x80uLL);
            v24 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              goto LABEL_38;
            }

            if (__dst[14])
            {
              sub_1C6FBC6B8();
              OUTLINED_FUNCTION_9_10();
              v32 = swift_allocError();
              OUTLINED_FUNCTION_134_1(v32, v33);

              return;
            }

            v25 = __dst[13];
            sub_1C6FB7BB8(__dst, v41);
            if ([v25 count] >= v40)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1C716D668();
              }

              v27 = *(v22 + 16);
              v26 = *(v22 + 24);
              if (v27 >= v26 >> 1)
              {
                OUTLINED_FUNCTION_15(v26);
                OUTLINED_FUNCTION_146();
                sub_1C716D668();
              }

              *(v22 + 16) = v27 + 1;
              memcpy((v22 + (v27 << 7) + 32), __dst, 0x80uLL);
              v19 = v24;
              v21 = v36;
              goto LABEL_17;
            }

            sub_1C6FBC664(__dst);
            ++v19;
            v23 += 128;
          }

          v30 = *(v22 + 16);

          if (v30 >= v38)
          {
            *a2 = 0;
            *(a2 + 8) = 0;
            *(a2 + 24) = 0;
            *(a2 + 16) = 0;
          }

          else
          {
            *a2 = v8;
            if (v34 >= v35)
            {
              *(a2 + 8) = v40;
              *(a2 + 16) = 0;
              v31 = 259;
            }

            else
            {
              *(a2 + 8) = v6;
              *(a2 + 16) = v13;
              v31 = 262;
            }

            *(a2 + 24) = v31;
          }

          return;
        }

LABEL_41:
        __break(1u);
        return;
      }
    }

    else
    {
LABEL_39:
      __break(1u);
    }

    __break(1u);
    goto LABEL_41;
  }

  while (1)
  {
    memcpy(__dst, v7, 0x80uLL);
    if (__dst[14])
    {
      break;
    }

    v10 = __dst[13];
    sub_1C6FB7BB8(__dst, v41);
    sub_1C6FBC70C(v10);
    v11 = [v10 count];
    if (v11 < v8)
    {
      v8 = v11;
    }

    v12 = [v10 count];
    sub_1C6FBC718(v10);
    sub_1C6FBC664(__dst);
    if (v12 > v6)
    {
      v6 = v12;
    }

    v7 += 128;
    if (!--v9)
    {
      goto LABEL_10;
    }
  }

  sub_1C6FBC6B8();
  OUTLINED_FUNCTION_9_10();
  v28 = swift_allocError();
  OUTLINED_FUNCTION_134_1(v28, v29);
}

uint64_t sub_1C7047DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_42();
  v11 = v9;
  v13 = v12;
  v10[238] = v11;
  v10[237] = a9;
  v10[236] = v14;
  v10[235] = v15;
  v10[234] = v16;
  v10[233] = v17;
  v10[232] = v18;
  v10[231] = v19;
  v10[230] = v20;
  v10[239] = *v11;
  v21 = sub_1C754DFFC();
  OUTLINED_FUNCTION_76(v21);
  v10[240] = OUTLINED_FUNCTION_77();
  v22 = sub_1C754F2FC();
  v10[241] = v22;
  OUTLINED_FUNCTION_18(v22);
  v10[242] = v23;
  v10[243] = swift_task_alloc();
  v10[244] = swift_task_alloc();
  v10[245] = swift_task_alloc();
  v10[246] = swift_task_alloc();
  v24 = sub_1C754F38C();
  v10[247] = v24;
  OUTLINED_FUNCTION_18(v24);
  v10[248] = v25;
  v10[249] = OUTLINED_FUNCTION_77();
  memcpy(v10 + 2, v13, 0x130uLL);
  v26 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v26, v27, v28);
}

uint64_t sub_1C7047F60()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[236];
  v2 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v2, v3);
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v4 = v0[235];
  OUTLINED_FUNCTION_70(v0[236], *(v1 + 24));
  OUTLINED_FUNCTION_116_3();
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_139_1(v0 + 40);
  v5 = *(v4 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  v0[250] = v5;
  v6 = swift_task_alloc();
  v0[251] = v6;
  *v6 = v0;
  v6[1] = sub_1C70481D0;
  v7 = OUTLINED_FUNCTION_61_3(v0[230]);

  return sub_1C704C3D0(v7, v8, v9, v10, v5);
}

uint64_t sub_1C70481D0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 2016) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C70482BC()
{
  OUTLINED_FUNCTION_123();
  v11 = v0;
  v1 = [objc_opt_self() chapterCurationRandomizerSeed];
  v0[253] = v1;
  if (v1)
  {
    v2 = [v1 unsignedLongLongValue];
    v0[226] = &type metadata for Random.Arc4Random;
    v0[227] = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v2, (v0 + 223));
  }

  else
  {
    v3 = v0[240];
    sub_1C754DFEC();
    v0[226] = &type metadata for Random.Arc4Random;
    v0[227] = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v3, (v0 + 223));
  }

  if (v0[250])
  {
    v10 = 14;
    StoryGenerationDiagnosticContext.generationStage.setter(&v10);
  }

  v4 = v0[231];
  OUTLINED_FUNCTION_139_1(v0 + 78);
  v5 = v4[4];
  OUTLINED_FUNCTION_10_3(v4);
  v9 = (*(v5 + 48) + **(v5 + 48));
  v6 = swift_task_alloc();
  v0[254] = v6;
  *v6 = v0;
  v6[1] = sub_1C704847C;
  v7 = OUTLINED_FUNCTION_57_0();

  return v9(v7);
}

uint64_t sub_1C704847C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_49_0();
  v13 = v12;
  OUTLINED_FUNCTION_47();
  v15 = v14;
  OUTLINED_FUNCTION_6_4();
  *v16 = v15;
  v17 = *v11;
  OUTLINED_FUNCTION_14();
  *v18 = v17;
  v15[255] = v13;
  v15[256] = v10;

  if (v10)
  {

    OUTLINED_FUNCTION_13();

    return MEMORY[0x1EEE6DFA0](v19, v20, v21);
  }

  else
  {
    v22 = v15[246];
    v23 = v15[244];
    v24 = v15[242];
    v25 = v15[241];
    v26 = *(v24 + 32);
    v15[257] = v26;
    v15[258] = (v24 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v26(v23, v22, v25);
    v27 = swift_task_alloc();
    v15[259] = v27;
    *v27 = v17;
    v27[1] = sub_1C7048648;
    v28 = OUTLINED_FUNCTION_61_3(v15[230]);

    return sub_1C704C678(v28, v29, v30, v31, v32, v13, v33, v34, a9, a10);
  }
}

uint64_t sub_1C7048648()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2080) = v5;
  *(v3 + 2088) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7048774()
{
  v38 = v0;
  v1 = 0;
  v2 = *(v0 + 2080);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = (v2 + 32 + (v1 << 7));
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    memcpy((v0 + 1232), v5, 0x80uLL);
    v6 = *(v0 + 1336);
    if (*(v0 + 1344))
    {
      v7 = OUTLINED_FUNCTION_67_5();
      sub_1C6FBC70C(v7);
      goto LABEL_10;
    }

    sub_1C6FB7BB8(v0 + 1232, v0 + 1360);
    sub_1C6FBC70C(v6);
    if ([v6 count] <= 0)
    {
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      v8 = swift_allocError();
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 3;
      *(v9 + 24) = 12;
      sub_1C6FBC664(v0 + 1232);
      sub_1C6FBC718(v6);
      v6 = v8;
LABEL_10:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1E00();
        v4 = v12;
      }

      v11 = *(v4 + 16);
      v10 = *(v4 + 24);
      if (v11 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_15(v10);
        OUTLINED_FUNCTION_146();
        sub_1C6FB1E00();
        v4 = v13;
      }

      ++v1;
      *(v4 + 16) = v11 + 1;
      *(v4 + 8 * v11 + 32) = v6;
      goto LABEL_2;
    }

    sub_1C6FBC664(v0 + 1232);
    sub_1C6FBC718(v6);
    v5 += 16;
    ++v1;
  }

  if (*(v4 + 16) >= 2uLL)
  {
    v22 = *(v0 + 2024);
    OUTLINED_FUNCTION_72_3();
    v23 = *(v0 + 1928);
    v34 = v24;
    v36 = *(v0 + 1896);

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v25[1] = 0;
    v25[2] = 0;
    *v25 = v4;
    OUTLINED_FUNCTION_73_3(v25, 10);
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1(v0 + 1784);
    v19 = *(v3 + 8);
    v19(v2, v23);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1744);
    v26 = OUTLINED_FUNCTION_85_2();
    OUTLINED_FUNCTION_70(v26, v27);
    OUTLINED_FUNCTION_85_2();
    sub_1C754F1AC();
    v5[1](v34);
    v20 = v36;
    v21 = v23;
LABEL_19:
    v19(v20, v21);
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_17_13();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v0 + 2088);

  sub_1C754F2DC();
  if (v14)
  {
    v15 = *(v0 + 2024);
    OUTLINED_FUNCTION_72_3();
    v16 = *(v0 + 1928);
    v33 = v17;
    v35 = *(v0 + 1896);
    v18 = *(v0 + 1888);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1784);

    v19 = *(v3 + 8);
    v19(v2, v16);
    __swift_destroy_boxed_opaque_existential_1(v0 + 1744);
    OUTLINED_FUNCTION_70(v18, v18[3]);
    sub_1C754F1AC();
    v5[1](v33);
    v20 = v35;
    v21 = v16;
    goto LABEL_19;
  }

  if (*(v0 + 2000))
  {
    v37[0] = 15;
    StoryGenerationDiagnosticContext.generationStage.setter(v37);
  }

  v30 = *(v0 + 2056);
  OUTLINED_FUNCTION_139_1((v0 + 928));
  OUTLINED_FUNCTION_99_3();
  v30();
  v31 = swift_task_alloc();
  *(v0 + 2096) = v31;
  *v31 = v0;
  v31[1] = sub_1C7048BB8;
  OUTLINED_FUNCTION_61_3(*(v0 + 2080));
  OUTLINED_FUNCTION_129();

  sub_1C704E668();
}

uint64_t sub_1C7048BB8()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 2104) = v7;
  *(v5 + 2112) = v0;

  if (!v0)
  {
    *(v5 + 2144) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7048CDC()
{
  OUTLINED_FUNCTION_115_0();
  v71 = v1;
  if (*(v1 + 2144))
  {
    v10 = *(v1 + 2024);
    OUTLINED_FUNCTION_14_13();
    __swift_destroy_boxed_opaque_existential_1(v1 + 1784);

    __swift_destroy_boxed_opaque_existential_1(v1 + 1744);
    OUTLINED_FUNCTION_0_22(v0, v0[3]);
    OUTLINED_FUNCTION_103_4();
    v11 = OUTLINED_FUNCTION_22_12();
    v12(v11);
    v13 = OUTLINED_FUNCTION_55_3();
    v14(v13);
    v15 = *(v1 + 2104);
    v16 = *(v1 + 2144);
    OUTLINED_FUNCTION_10_15();

    OUTLINED_FUNCTION_82_0();

    return v17(v15, v16 & 1);
  }

  else
  {
    v19 = 0;
    v20 = (v1 + 16);
    v21 = *(v1 + 2104);
    *(v1 + 1824) = MEMORY[0x1E69E7CD0];
    v22 = *(v21 + 16);
    v23 = v21 + 32;
    v60 = (v1 + 16);
    v61 = v1;
    v63 = v22;
    v64 = v21;
    v62 = v21 + 32;
    while (v19 != v22)
    {
      if (v19 >= *(v21 + 16))
      {
        goto LABEL_38;
      }

      v2 = memcpy((v1 + 1488), (v23 + (v19 << 7)), 0x80uLL);
      if ((*(v1 + 1600) & 1) == 0)
      {
        v24 = *(v1 + 1592);
        sub_1C6FB7BB8(v1 + 1488, v1 + 1616);
        sub_1C6FBC70C(v24);
        v25 = [v24 fetchedObjects];
        if (v25)
        {
          v26 = v25;
          v65 = v24;
          v67 = v19;
          sub_1C6F65BE8(0, &qword_1EDD0FA70);
          OUTLINED_FUNCTION_63();
          v27 = sub_1C7550B5C();

          v28 = sub_1C6FB6304();
          if (v28)
          {
            v29 = v28;
            v70[0] = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C();
            if ((v29 & 0x8000000000000000) == 0)
            {
              v30 = 0;
              v31 = v70[0];
              while (1)
              {
                v32 = (v27 & 0xC000000000000001) != 0 ? MEMORY[0x1CCA5DDD0](v30, v27) : *(v27 + 8 * v30 + 32);
                v33 = v32;
                v34 = [v33 uuid];
                if (v34)
                {
                  v35 = v34;
                  v36 = sub_1C755068C();
                  v38 = v37;
                }

                else
                {
                  v36 = 0;
                  v38 = 0;
                }

                if (!v38)
                {
                  break;
                }

                v70[0] = v31;
                v40 = *(v31 + 16);
                v39 = *(v31 + 24);
                if (v40 >= v39 >> 1)
                {
                  OUTLINED_FUNCTION_15(v39);
                  OUTLINED_FUNCTION_146();
                  sub_1C6F7ED9C();
                  v31 = v70[0];
                }

                ++v30;
                *(v31 + 16) = v40 + 1;
                v41 = v31 + 16 * v40;
                *(v41 + 32) = v36;
                *(v41 + 40) = v38;
                if (v29 == v30)
                {

                  v20 = v60;
                  v1 = v61;
                  goto LABEL_26;
                }
              }

              __break(1u);
LABEL_38:
              __break(1u);
            }

            __break(1u);
            return MEMORY[0x1EEE2A6A0](v2, v3, v4, v5, v6, v7, v8, v9);
          }

          v31 = MEMORY[0x1E69E7CC0];
LABEL_26:
          v22 = v63;
          v21 = v64;
          v24 = v65;
          v19 = v67;
          v23 = v62;
        }

        else
        {
          v31 = MEMORY[0x1E69E7CC0];
        }

        sub_1C73978C4(v31);
        sub_1C6FBC664(v1 + 1488);
        sub_1C6FBC718(v24);
      }

      ++v19;
    }

    v42 = *(v1 + 2112);
    v43 = *(v1 + 1904);
    v44 = *(*(v1 + 1824) + 16);

    memcpy(__dst, (v43 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration), 0x4CuLL);
    memcpy(v70, v20, sizeof(v70));
    static FreeformStoryGenerator.validate(numberOfCuratedAssets:configuration:storyElements:)(v44, __dst);
    if (!v42)
    {
      sub_1C754F2DC();
      v52 = *(v1 + 1912);
      v53 = *(v1 + 1904);
      v54 = *(v1 + 1896);
      v55 = v21;
      v56 = *(v1 + 1776);
      __swift_project_boxed_opaque_existential_1((v1 + 1744), *(v1 + 1768));
      v57 = swift_task_alloc();
      *(v1 + 2120) = v57;
      v57[2] = v54;
      v57[3] = v55;
      v57[4] = v20;
      v57[5] = v53;
      v57[6] = v52;
      v58 = swift_task_alloc();
      *(v1 + 2128) = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560);
      *v58 = v1;
      v58[1] = sub_1C7049280;
      v73 = v56;
      OUTLINED_FUNCTION_44();

      return MEMORY[0x1EEE2A6A0](v2, v3, v4, v5, v6, v7, v8, v9);
    }

    v45 = *(v1 + 2104);
    v46 = *(v1 + 2024);
    v47 = *(v1 + 1936);
    v66 = *(v1 + 1896);
    v68 = *(v1 + 1928);
    v48 = *(v1 + 1888);
    __swift_destroy_boxed_opaque_existential_1(v1 + 1784);

    sub_1C6F9ED74(v45, 0);
    __swift_destroy_boxed_opaque_existential_1(v1 + 1744);
    OUTLINED_FUNCTION_0_22(v48, v48[3]);
    sub_1C754F1AC();
    v49 = OUTLINED_FUNCTION_457();
    v50(v49);
    (*(v47 + 8))(v66, v68);
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_36_6();

    OUTLINED_FUNCTION_6_0();

    return v51();
  }
}

uint64_t sub_1C7049280()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 2136) = v0;

  sub_1C6F9ED74(*(v2 + 2104), 0);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1C70493C0()
{
  OUTLINED_FUNCTION_115_0();
  v1 = v0[250];
  v2 = v0[229];
  if (v1)
  {
    v3 = v0[232];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000001FLL);
    sub_1C73E69B8(*v3);
    MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_57_3();
    sub_1C716A8F0(v4, v5, v1, v2);
  }

  v6 = v0[267];
  sub_1C754F2EC();
  v7 = v0[253];
  v8 = v0[236];
  __swift_destroy_boxed_opaque_existential_1((v0 + 223));

  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1((v0 + 218));
    OUTLINED_FUNCTION_10_3(v8);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v9 = OUTLINED_FUNCTION_15_1();
    v10(v9);
    OUTLINED_FUNCTION_98_3();
    OUTLINED_FUNCTION_36_6();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_87_5();

    __asm { BRAA            X1, X16 }
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 218));
  v13 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v13, v14);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  v15 = OUTLINED_FUNCTION_15_1();
  v16(v15);
  OUTLINED_FUNCTION_98_3();
  OUTLINED_FUNCTION_17_13();

  OUTLINED_FUNCTION_82_0();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C70495EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1936);
  v16 = *(v14 + 1928);
  v32 = *(v14 + 1896);
  v33 = *(v14 + 1976);
  v17 = *(v14 + 1888);

  __swift_destroy_boxed_opaque_existential_1(v14 + 1784);
  v18 = *(v15 + 8);
  v19 = OUTLINED_FUNCTION_15_1();
  v18(v19);
  v20 = OUTLINED_FUNCTION_82();
  v18(v20);
  __swift_destroy_boxed_opaque_existential_1(v14 + 1744);
  OUTLINED_FUNCTION_0_22(v17, v17[3]);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v18)(v32, v16);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C704971C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = *(v14 + 1936);
  v16 = *(v14 + 1928);
  v32 = *(v14 + 1896);
  v33 = *(v14 + 1976);

  __swift_destroy_boxed_opaque_existential_1(v14 + 1784);
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_57_3();
  v17(v18);
  __swift_destroy_boxed_opaque_existential_1(v14 + 1744);
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v17)(v32, v16);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C7049834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_14_13();

  __swift_destroy_boxed_opaque_existential_1(v13 + 1784);
  __swift_destroy_boxed_opaque_existential_1(v13 + 1744);
  OUTLINED_FUNCTION_0_22(v12, v12[3]);
  OUTLINED_FUNCTION_103_4();
  v15 = OUTLINED_FUNCTION_22_12();
  v16(v15);
  v17 = OUTLINED_FUNCTION_55_3();
  v18(v17);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C704990C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_14_13();

  __swift_destroy_boxed_opaque_existential_1(v13 + 1784);
  __swift_destroy_boxed_opaque_existential_1(v13 + 1744);
  OUTLINED_FUNCTION_0_22(v12, v12[3]);
  OUTLINED_FUNCTION_103_4();
  v15 = OUTLINED_FUNCTION_22_12();
  v16(v15);
  v17 = OUTLINED_FUNCTION_55_3();
  v18(v17);
  OUTLINED_FUNCTION_10_15();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1C70499E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (![objc_opt_self() enableChapterValidator])
  {
    v13 = *(a1 + 16);
    result = sub_1C75504FC();
    v42 = MEMORY[0x1E69E7CD0];
    if (!v13)
    {
      if (a3)
      {
LABEL_6:
        sub_1C755180C();

        sub_1C733C094(v42);
        v14 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v14);

        v13 = a3;
        sub_1C7161CDC(0xD000000000000017, 0x80000001C759A990);
      }

LABEL_7:
      v15 = sub_1C733C094(v42);
      v16 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 24);
      if (v15 >= v16)
      {

        return a1;
      }

      sub_1C733C094(v42);
      OUTLINED_FUNCTION_24_2();

      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      a1 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = v16;
      *(v17 + 16) = 0;
      v18 = 4;
LABEL_12:
      *(v17 + 24) = v18;
      return a1;
    }

LABEL_15:
    v35 = a3;
    v21 = 0;
    v36 = a1 + 32;
    v37 = v13;
    v38 = a1;
    do
    {
      if (v21 >= *(a1 + 16))
      {
        __break(1u);
        return result;
      }

      v40 = v21;
      v22 = v36 + 104 * v21;
      v23 = *(v22 + 40);
      v24 = *(v22 + 64);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v41 = v23;
      sub_1C75504FC();
      sub_1C75504FC();
      v25 = v24;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      if ([v25 fetchedObjectIDs])
      {
        v26 = OUTLINED_FUNCTION_300();
        sub_1C6F65BE8(v26, &qword_1EDD0FAB0);
        v27 = sub_1C7550B5C();
      }

      else
      {
        v27 = MEMORY[0x1E69E7CC0];
      }

      sub_1C7397BB0(v27);
      v28 = *(v41 + 16);
      if (v28)
      {
        v39 = v25;
        v29 = sub_1C75504FC() + 64;
        do
        {
          v30 = *(v29 - 16);
          sub_1C75504FC();
          v31 = v30;
          sub_1C75504FC();
          sub_1C75504FC();
          v32 = [v31 fetchedObjectIDs];
          if (v32)
          {
            v33 = v32;
            sub_1C6F65BE8(0, &qword_1EDD0FAB0);
            OUTLINED_FUNCTION_63();
            v34 = sub_1C7550B5C();
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          sub_1C7397BB0(v34);

          v29 += 40;
          --v28;
        }

        while (v28);

        swift_bridgeObjectRelease_n();
        v13 = v37;
        a1 = v38;
      }

      else
      {

        v13 = v37;
        a1 = v38;
      }

      v21 = v40 + 1;
    }

    while (v40 + 1 != v13);
    a3 = v35;
    if (v35)
    {
      goto LABEL_6;
    }

    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_41_3();
  result = sub_1C7054CAC(v7, v8, a3);
  v10 = result;
  if ((v11 & 1) == 0)
  {
    v13 = *(result + 16);
    if (v13 < 2)
    {
      v19 = OUTLINED_FUNCTION_12_5();
      sub_1C6F9ED74(v19, v20);
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      a1 = swift_allocError();
      *v17 = v13;
      *(v17 + 8) = xmmword_1C755FEA0;
      v18 = 2;
      goto LABEL_12;
    }

    v42 = MEMORY[0x1E69E7CD0];
    a1 = result;
    goto LABEL_15;
  }

  sub_1C70554BC();
  OUTLINED_FUNCTION_9_10();
  a1 = swift_allocError();
  *v12 = v10;
  return a1;
}

uint64_t sub_1C7049E94()
{
  OUTLINED_FUNCTION_42();
  v2 = v0;
  v4 = v3;
  v1[220] = v2;
  v1[219] = v5;
  v1[218] = v6;
  v1[217] = v7;
  v1[216] = v8;
  v1[221] = *v2;
  v9 = sub_1C754F38C();
  v1[222] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[223] = v10;
  v1[224] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v4, 0x130uLL);
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1C7049F84()
{
  OUTLINED_FUNCTION_31();
  v1 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v1, v2);
  OUTLINED_FUNCTION_71_2();
  sub_1C754F2CC();
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1728);
  v5 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  sub_1C7055874(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher, v0 + 1640);
  type metadata accessor for FreeformStoryChapterGenerator();
  OUTLINED_FUNCTION_137();
  *(v0 + 1800) = sub_1C73995B8(v5, (v0 + 1640));
  OUTLINED_FUNCTION_10_3(v4);
  *(v0 + 1704) = swift_getAssociatedTypeWitness();
  *(v0 + 1712) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0((v0 + 1680));
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1808) = v6;
  *v6 = v7;
  v6[1] = sub_1C704A22C;
  OUTLINED_FUNCTION_93_0();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C704A22C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1816) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704A328()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1768);
  v3 = *(v0 + 1736);
  v4 = *(v3 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 1824) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0);
  v5 = swift_task_alloc();
  *(v0 + 1832) = v5;
  v6 = *(v0 + 1744);
  *(v5 + 16) = v0 + 1680;
  *(v5 + 24) = v6;
  *(v5 + 40) = v1;
  *(v5 + 48) = v0 + 16;
  *(v5 + 56) = v4;
  *(v5 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216590);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 1840) = v7;
  *v7 = v8;
  v7[1] = sub_1C704A474;
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_88_0();

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1C704A474()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 1848) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1C704A574()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1720);
  *(v0 + 1856) = v3;
  *(v0 + 1864) = *(v3 + 16);
  sub_1C754F2DC();
  if (v2)
  {
    OUTLINED_FUNCTION_111_2();
    v4 = *(v0 + 1744);

    __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
    OUTLINED_FUNCTION_10_3(v4);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v5 = OUTLINED_FUNCTION_15_1();
    v6(v5);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v7 + 8))(v1);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_93_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_10_3(*(v0 + 1728));
  v10 = swift_task_alloc();
  *(v0 + 1872) = v10;
  *v10 = v0;
  v10[1] = sub_1C704A76C;
  OUTLINED_FUNCTION_57_0();
  OUTLINED_FUNCTION_93_0();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1C704A76C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  v3[235] = v5;
  v3[236] = v6;
  v3[237] = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704A87C()
{
  v82 = v0;
  v1 = *(v0 + 1856);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    __src = (v0 + 728);
    v66 = (v0 + 1040);
    v70 = (v0 + 1144);
    v4 = (v1 + 32);
    v5 = (v0 + 360);
    v67 = *(v0 + 1864) - 1;
    v71 = *(v0 + 1824);
    v6 = *(v0 + 1896);
    v7 = MEMORY[0x1E69E7CC0];
    v69 = v2 - 1;
    v8 = 0.2;
    while (v3 < v2)
    {
      v73 = v3;
      memcpy((v0 + 320), v4, 0x98uLL);
      v74 = *(v0 + 336);
      v9 = *(v0 + 344);
      sub_1C70555F8(v0 + 320, v0 + 472, &qword_1EC214DC0);
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v10, qword_1EDD28B68);
      sub_1C6FC061C(v5, v0 + 624);
      v11 = sub_1C754FEEC();
      v12 = sub_1C75511BC();
      sub_1C70552E0(v5);
      v72 = v4;
      v75 = v6;
      if (os_log_type_enabled(v11, v12))
      {
        v14 = *(v0 + 376);
        v13 = *(v0 + 384);
        v15 = OUTLINED_FUNCTION_41_0();
        v68 = v7;
        v16 = OUTLINED_FUNCTION_20_1();
        __dst[0] = v16;
        *v15 = 136642819;
        sub_1C75504FC();
        v17 = sub_1C6F765A4(v14, v13, __dst);

        *(v15 + 4) = v17;
        _os_log_impl(&dword_1C6F5C000, v11, v12, "Successfully created chapter %{sensitive}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v16);
        v7 = v68;
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      if (v74 == *(v0 + 1880) && v9 == *(v0 + 1888))
      {

        v20 = 0;
      }

      else
      {
        v19 = sub_1C7551DBC();

        v20 = 0;
        if ((v19 & 1) == 0)
        {
          v21 = *(v0 + 464);
          if (v21)
          {
            if (v21 == v67)
            {
              v20 = 2;
            }

            else
            {
              v20 = 3;
            }
          }

          else
          {
            v20 = 1;
          }
        }
      }

      v79 = *v5;
      v80 = *(v0 + 376);
      memcpy(__dst, (v0 + 393), 0x47uLL);
      v22 = *(v0 + 376);
      *__src = *v5;
      *(v0 + 744) = v22;
      *(v0 + 760) = v20;
      memcpy((v0 + 761), (v0 + 393), 0x47uLL);
      v23 = *(v0 + 744);
      v24 = *(v0 + 752);
      v25 = *(v0 + 728);
      v26 = *(v0 + 736);
      sub_1C6FC061C(v5, v0 + 832);
      sub_1C6FC061C(__src, v0 + 936);
      sub_1C75504FC();
      sub_1C75504FC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1EB4();
        v7 = v29;
      }

      v28 = *(v7 + 16);
      v27 = *(v7 + 24);
      if (v28 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_15(v27);
        sub_1C6FB1EB4();
        v7 = v30;
      }

      *(v7 + 16) = v28 + 1;
      memcpy((v7 + 104 * v28 + 32), __src, 0x68uLL);
      *(v0 + 1560) = v23;
      *(v0 + 1568) = v24;
      *(v0 + 1576) = v25;
      *(v0 + 1584) = v26;
      *(v0 + 1592) = 0u;
      *(v0 + 1608) = 0u;
      *(v0 + 1624) = 0u;
      if (v71)
      {

        sub_1C7031BAC((v0 + 1560));
        sub_1C703307C(v0 + 1560);
      }

      else
      {
        sub_1C703307C(v0 + 1560);
      }

      sub_1C754F2DC();
      if (v75)
      {
        v31 = *(v0 + 1792);
        v32 = *(v0 + 1784);
        v76 = *(v0 + 1776);
        __srca = *(v0 + 1752);
        v33 = *(v0 + 1744);

        sub_1C70552E0(v5);
        *v66 = v79;
        *(v0 + 1056) = v80;
        *(v0 + 1072) = v20;
        memcpy((v0 + 1073), __dst, 0x47uLL);
        sub_1C70552E0(v66);

        __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
        OUTLINED_FUNCTION_10_3(v33);
        sub_1C754F1AC();
        (*(v32 + 8))(v31, v76);
        sub_1C754F2FC();
        OUTLINED_FUNCTION_3();
        (*(v34 + 8))(__srca);
        goto LABEL_47;
      }

      *v70 = v79;
      *(v0 + 1160) = v80;
      *(v0 + 1176) = v20;
      memcpy((v0 + 1177), __dst, 0x47uLL);
      sub_1C70552E0(v70);
      sub_1C70552E0(v5);
      if (v69 == v73)
      {

        v6 = 0;
        goto LABEL_32;
      }

      v6 = 0;
      v8 = v8 + 0.8 / *(v0 + 1864);
      v2 = *(*(v0 + 1856) + 16);
      v4 = v72 + 152;
      v3 = v73 + 1;
    }

    __break(1u);
    goto LABEL_54;
  }

  v6 = *(v0 + 1896);
  v7 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v35 = *(v7 + 16);
  v36 = 32;
  if (!v35)
  {
LABEL_35:
    if (qword_1EDD09CF0 == -1)
    {
LABEL_36:
      v37 = sub_1C754FF1C();
      __swift_project_value_buffer(v37, qword_1EDD28B68);
      OUTLINED_FUNCTION_24_2();
      sub_1C75504FC();
      sub_1C75504FC();
      v38 = sub_1C754FEEC();
      sub_1C75511AC();

      v39 = OUTLINED_FUNCTION_140_0();
      v40 = *(v0 + 1888);
      if (v39)
      {
        v41 = *(v0 + 1880);
        v42 = OUTLINED_FUNCTION_23_1();
        __dst[0] = swift_slowAlloc();
        *v42 = 136315394;
        v43 = sub_1C6F765A4(v41, v40, __dst);

        *(v42 + 4) = v43;
        *(v42 + 12) = 2080;
        v44 = sub_1C7050F8C(v7);
        v46 = sub_1C6F765A4(v44, v45, __dst);

        *(v42 + 14) = v46;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v47, v48, v49, v50, v42, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_10_1();
LABEL_42:

        goto LABEL_45;
      }

      goto LABEL_45;
    }

LABEL_54:
    OUTLINED_FUNCTION_0_23();
    swift_once();
    goto LABEL_36;
  }

  while (1)
  {
    memcpy((v0 + 1248), (v7 + v36), 0x68uLL);
    if (!*(v0 + 1280))
    {
      break;
    }

    v36 += 104;
    if (!--v35)
    {
      goto LABEL_35;
    }
  }

  v51 = *(v0 + 1272);
  v52 = *(v0 + 1264);
  sub_1C6FC061C(v0 + 1248, v0 + 1352);

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v53 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v53, qword_1EDD28B68);
  sub_1C6FC061C(v0 + 1248, v0 + 1456);
  v38 = sub_1C754FEEC();
  v54 = sub_1C75511BC();
  sub_1C70552E0(v0 + 1248);
  if (os_log_type_enabled(v38, v54))
  {
    v55 = OUTLINED_FUNCTION_41_0();
    v56 = OUTLINED_FUNCTION_20_1();
    __dst[0] = v56;
    *v55 = 136315138;
    sub_1C75504FC();
    v57 = sub_1C6F765A4(v52, v51, __dst);

    *(v55 + 4) = v57;
    _os_log_impl(&dword_1C6F5C000, v38, v54, "Key chapter is '%s'", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v56);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
    sub_1C70552E0(v0 + 1248);
    goto LABEL_42;
  }

  sub_1C70552E0(v0 + 1248);
LABEL_45:
  sub_1C754F2EC();
  v58 = *(v0 + 1744);

  if (v6)
  {

    __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
    OUTLINED_FUNCTION_10_3(v58);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v59 = OUTLINED_FUNCTION_15_1();
    v60(v59);
LABEL_47:

    OUTLINED_FUNCTION_6_0();

    return v61();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
    OUTLINED_FUNCTION_10_3(v58);
    OUTLINED_FUNCTION_41_3();
    sub_1C754F1AC();
    v63 = OUTLINED_FUNCTION_15_1();
    v64(v63);

    OUTLINED_FUNCTION_116();

    return v65(v7);
  }
}

void sub_1C704B1B0()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_92_4();
  __swift_deallocate_boxed_opaque_existential_1(v0 + 1680);
  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C704B280()
{
  OUTLINED_FUNCTION_75_1();
  v1 = *(v0 + 1752);

  __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
  v2 = OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_0_22(v2, v3);
  OUTLINED_FUNCTION_103_4();
  v4 = OUTLINED_FUNCTION_22_12();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();

  return v7();
}

void sub_1C704B370()
{
  OUTLINED_FUNCTION_75_1();
  OUTLINED_FUNCTION_92_4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 1680);
  v2 = OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_0_22(v2, v3);
  sub_1C754F1AC();
  v4 = OUTLINED_FUNCTION_57_0();
  v5(v4);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v6 + 8))(v1);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C704B440()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[127] = v0;
  v1[126] = v4;
  v1[125] = v5;
  v1[124] = v6;
  v1[123] = v7;
  v1[122] = v2;
  v1[121] = v8;
  v9 = sub_1C754F2FC();
  v1[128] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[129] = v10;
  v1[130] = swift_task_alloc();
  v1[131] = swift_task_alloc();
  v1[132] = swift_task_alloc();
  v1[133] = swift_task_alloc();
  v11 = sub_1C754F38C();
  v1[134] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[135] = v12;
  v1[136] = OUTLINED_FUNCTION_77();
  memcpy(v1 + 2, v3, 0x130uLL);
  v13 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1C704B588()
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v1 = v0[125];
  v2 = OUTLINED_FUNCTION_154();
  OUTLINED_FUNCTION_141_1(v2, v3);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = v0[133];
  v12 = v0[131];
  v5 = v0[129];
  v6 = v0[128];
  v7 = v0[122];
  OUTLINED_FUNCTION_70(v0[125], *(v1 + 24));
  OUTLINED_FUNCTION_116_3();
  sub_1C754F15C();
  sub_1C754F2BC();
  sub_1C754F2BC();
  memcpy(v0 + 40, v7, 0x130uLL);
  v8 = *(v5 + 32);
  v0[137] = v8;
  v0[138] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v8(v12, v4, v6);
  v9 = swift_task_alloc();
  v0[139] = v9;
  *v9 = v0;
  v9[1] = sub_1C704B7EC;
  OUTLINED_FUNCTION_61_3(v0[121]);
  OUTLINED_FUNCTION_17_1();

  return sub_1C7049E94();
}

uint64_t sub_1C704B7EC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 1120) = v4;
  *(v2 + 1128) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C704B8F4()
{
  v1 = v0[141];
  sub_1C754F2DC();
  if (v1)
  {
    v2 = v0[132];
    v3 = v0[129];
    v4 = v0[128];
    v20 = v0[126];
    v5 = v0[125];
    __swift_destroy_boxed_opaque_existential_1((v0 + 116));

    v6 = *(v3 + 8);
    v6(v2, v4);
    OUTLINED_FUNCTION_0_22(v5, v5[3]);
    sub_1C754F1AC();
    v7 = OUTLINED_FUNCTION_120_3();
    v8(v7);
    v6(v20, v4);
    OUTLINED_FUNCTION_54_7();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_129();

    __asm { BRAA            X1, X16 }
  }

  v11 = v0[137];
  OUTLINED_FUNCTION_139_1(v0 + 78);
  OUTLINED_FUNCTION_99_3();
  v11();
  v12 = swift_task_alloc();
  v0[142] = v12;
  *v12 = v0;
  v12[1] = sub_1C704BAD8;
  OUTLINED_FUNCTION_61_3(v0[140]);
  OUTLINED_FUNCTION_129();

  return sub_1C704BF9C(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1C704BAD8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1144) = v5;
  *(v3 + 1152) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C704BBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[124];
  v16 = *(v15 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v16)
  {
    v17 = v14[143];
    sub_1C75504FC();
    sub_1C716260C(0xD000000000000014, 0x80000001C759A950, v16, v17);
  }

  v18 = v14[144];
  sub_1C754F2EC();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + 116));

    v19 = OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_0_22(v19, v20);
    OUTLINED_FUNCTION_103_4();
    v21 = OUTLINED_FUNCTION_457();
    v22(v21);
    OUTLINED_FUNCTION_54_7();

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    v43 = v14[130];
    v32 = v14[125];
    __swift_destroy_boxed_opaque_existential_1((v14 + 116));
    OUTLINED_FUNCTION_0_22(v32, v32[3]);
    sub_1C754F1AC();
    v33 = OUTLINED_FUNCTION_57_0();
    v34(v33);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_17_1();

    return v37(v35, v36, v37, v38, v39, v40, v41, v42, a9, v43, a11, a12, a13, a14);
  }
}

uint64_t sub_1C704BDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_31();
  v15 = v14[129];
  v16 = v14[128];
  v32 = v14[126];
  v33 = v14[134];
  __swift_destroy_boxed_opaque_existential_1((v14 + 116));
  v17 = *(v15 + 8);
  v18 = OUTLINED_FUNCTION_57_3();
  v17(v18);
  v19 = OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_0_22(v19, v20);
  sub_1C754F1AC();
  v21 = OUTLINED_FUNCTION_120_3();
  v22(v21);
  (v17)(v32, v16);
  OUTLINED_FUNCTION_105_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v32, v33, a12, a13, a14);
}

uint64_t sub_1C704BEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 1000);
  __swift_destroy_boxed_opaque_existential_1(v12 + 928);
  OUTLINED_FUNCTION_0_22(v13, v13[3]);
  OUTLINED_FUNCTION_103_4();
  v14 = OUTLINED_FUNCTION_22_12();
  v15(v14);
  v16 = OUTLINED_FUNCTION_55_3();
  v17(v16);
  OUTLINED_FUNCTION_105_4();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1C704BF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a6;
  v7[7] = v6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v8 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C704BFCC()
{
  OUTLINED_FUNCTION_115_0();
  if (**(v0 + 32) > 0x1Fu)
  {
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    v2 = *(v1 + 8);
    sub_1C75504FC();
    v3 = OUTLINED_FUNCTION_43_2();
    v2(v3);
    goto LABEL_4;
  }

  sub_1C754F2CC();
  v6 = *(v0 + 40);
  v7 = *(*(v0 + 56) + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 73);
  v8 = *(type metadata accessor for StoryGenerationSession(0) + 24);
  v9 = *(v6 + v8);
  if (v7 < 0xFE)
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v10 = swift_allocError();
    *(v22 + 8) = 0;
    *(v22 + 16) = 0;
    *v22 = 6;
    *(v22 + 24) = 12;
  }

  else
  {
    v10 = sub_1C70499E4(*(v0 + 16), *(v0 + 24), *(v6 + v8));
    if ((v11 & 1) == 0)
    {
      v12 = qword_1EDD09CF0;
      sub_1C75504FC();
      if (v12 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v13 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v13, qword_1EDD28B68);
      v14 = sub_1C754FEEC();
      v15 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v15))
      {
        v16 = OUTLINED_FUNCTION_127();
        *v16 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v17, v18, v19, v20, v16, 2u);
        OUTLINED_FUNCTION_37();
      }

      v21 = 0;
LABEL_22:
      sub_1C754F2EC();
      sub_1C6FDE438(v10, v21);
LABEL_4:
      OUTLINED_FUNCTION_116();
      OUTLINED_FUNCTION_108_3();

      __asm { BRAA            X2, X16 }
    }
  }

  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v23 = sub_1C754FF1C();
  __swift_project_value_buffer(v23, qword_1EDD28B68);
  v24 = OUTLINED_FUNCTION_24_2();
  v25 = sub_1C754FEEC();
  v26 = sub_1C75511BC();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = OUTLINED_FUNCTION_41_0();
    v28 = OUTLINED_FUNCTION_102();
    *v27 = 138412290;
    v29 = v10;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 4) = v30;
    *v28 = v30;
    OUTLINED_FUNCTION_88_1();
    _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
    sub_1C6FB5FC8(v28, &qword_1EC215190);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
  }

  if (v9)
  {
    v36 = *(v0 + 32);
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70]();
    sub_1C73E69B8(*v36);
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
    OUTLINED_FUNCTION_78_4();
    MEMORY[0x1CCA5CD70]();
    sub_1C7161CDC(v37, v38);
  }

  **(v0 + 32) = 32;
  sub_1C75504FC();
  v21 = 1;
  goto LABEL_22;
}

uint64_t sub_1C704C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a4;
  v6[5] = a5;
  v6[2] = a1;
  v6[3] = a3;
  v7 = *(a2 + 168);
  v6[6] = v5;
  v6[7] = v7;
  v8 = OUTLINED_FUNCTION_24_1();
  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C704C404()
{
  OUTLINED_FUNCTION_75_1();
  if ([objc_opt_self() dontSplitMomentsAcrossChaptersForImplicitMontage] && (v1 = **(v0 + 24), v1 <= 0x1F) && (v1 & 1) == 0)
  {
    v5 = *(v0 + 40);
    sub_1C7464138();
    v2 = v6;
    v7 = sub_1C70548E8(v6, v5);
    if (v8)
    {
      v9 = v7;

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      __swift_project_value_buffer(v10, qword_1EDD28B68);
      v11 = OUTLINED_FUNCTION_24_2();
      v12 = sub_1C754FEEC();
      sub_1C75511BC();
      sub_1C6F9EDA4(v9, 1);
      if (OUTLINED_FUNCTION_140_0())
      {
        v13 = OUTLINED_FUNCTION_41_0();
        v14 = OUTLINED_FUNCTION_102();
        *v13 = 138412290;
        v15 = v9;
        v16 = _swift_stdlib_bridgeErrorToNSError();
        *(v13 + 4) = v16;
        *v14 = v16;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v17, v18, v19, v20, v13, 0xCu);
        sub_1C6FB5FC8(v14, &qword_1EC215190);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_37();
      }

      v21 = *(v0 + 40);

      if (v21)
      {
        v22 = *(v0 + 24);
        OUTLINED_FUNCTION_90_3();
        sub_1C755180C();
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70]();
        sub_1C73E69B8(*v22);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70](0xD00000000000001ALL);
        OUTLINED_FUNCTION_78_4();
        MEMORY[0x1CCA5CD70]();
        sub_1C7161CDC(v23, v24);
        sub_1C6F9EDA4(v9, 1);
      }

      else
      {
        sub_1C6F9EDA4(v9, 1);
      }

      v2 = 0;
      **(v0 + 24) = 32;
    }
  }

  else
  {
    v2 = 0;
  }

  OUTLINED_FUNCTION_116();

  return v3(v2);
}

uint64_t sub_1C704C678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_42();
  v13 = v12;
  v11[381] = v10;
  v11[380] = a10;
  v11[379] = a9;
  v11[378] = v14;
  v11[377] = v15;
  v11[376] = v16;
  v11[375] = v17;
  v11[374] = v18;
  v11[373] = v19;
  v11[372] = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  OUTLINED_FUNCTION_76(v21);
  v11[382] = swift_task_alloc();
  v11[383] = swift_task_alloc();
  v22 = sub_1C754F38C();
  v11[384] = v22;
  OUTLINED_FUNCTION_18(v22);
  v11[385] = v23;
  v11[386] = OUTLINED_FUNCTION_77();
  memcpy(v11 + 40, v13, 0x130uLL);
  v24 = OUTLINED_FUNCTION_24_1();
  return OUTLINED_FUNCTION_133_2(v24, v25, v26);
}

uint64_t sub_1C704C78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = v12[379];
  OUTLINED_FUNCTION_141_1(v13, v13[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v14 = 0;
  v135 = v13;
  v140 = (v12 + 333);
  v131 = v12 + 348;
  v145 = v12 + 354;
  v24 = v12[376];
  v148 = v12;
  v25 = v12[77];
  v142 = v12[381] + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  LOBYTE(__dst[0]) = *(v142 + 72);
  v26 = static FreeformStoryGenerator.Configuration.traitTitle(of:from:)(__dst, v25);
  sub_1C704785C(v26);

  v27 = 0;
  v28 = *(v24 + 16);
  v29 = v24 + 40;
  v130 = MEMORY[0x1E69E7CC0];
  v143 = v24 + 40;
LABEL_5:
  v30 = (v29 + 16 * v27);
  while (v28 != v27)
  {
    if (v27 >= v28)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    if (__OFADD__(v27, 1))
    {
      goto LABEL_55;
    }

    v32 = *(v30 - 1);
    v31 = *v30;
    OUTLINED_FUNCTION_41_3();
    v33 = sub_1C75506FC();
    v26 = v34;
    v148[354] = v33;
    v148[355] = v34;
    v14 = swift_task_alloc();
    *(v14 + 16) = v145;
    sub_1C75504FC();
    v35 = sub_1C70735F4();

    if (v35)
    {
      v26 = v130;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v130;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C6F7ED9C();
        v26 = __dst[0];
      }

      v38 = *(v26 + 16);
      v37 = *(v26 + 24);
      v14 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        OUTLINED_FUNCTION_15(v37);
        sub_1C6F7ED9C();
        v26 = __dst[0];
      }

      *(v26 + 16) = v14;
      v130 = v26;
      v39 = v26 + 16 * v38;
      *(v39 + 32) = v32;
      *(v39 + 40) = v31;
      ++v27;
      v29 = v143;
      goto LABEL_5;
    }

    ++v27;
    v30 += 2;
  }

  v28 = v148;
  v14 = *(v148[372] + 16);
  if (v14)
  {
    v30 = *(v142 + 40);
    v40 = v30 + v14;
    if (__OFADD__(v30, v14))
    {
      goto LABEL_56;
    }

    v26 = (v40 - 1);
    if (__OFSUB__(v40, 1))
    {
LABEL_57:
      __break(1u);
    }

    else if (qword_1EDD09CF0 == -1)
    {
LABEL_20:
      v41 = v26 / v14;
      v42 = sub_1C754FF1C();
      v28[387] = __swift_project_value_buffer(v42, qword_1EDD28B68);
      v43 = sub_1C754FEEC();
      v44 = sub_1C75511BC();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = OUTLINED_FUNCTION_20_1();
        *v45 = 134218496;
        *(v45 + 4) = v14;
        *(v45 + 12) = 2048;
        *(v45 + 14) = v30;
        *(v45 + 22) = 2048;
        *(v45 + 24) = v41;
        _os_log_impl(&dword_1C6F5C000, v43, v44, "Curating %ld chapters, aiming for %ld assets in total, target is %ld assets per chapter", v45, 0x20u);
        OUTLINED_FUNCTION_37();
      }

      v133 = v14;
      v46 = v28[381];
      v47 = v28[377];
      v48 = v28[375];
      v146 = v28[374];

      v49 = *(v47 + *(type metadata accessor for StoryGenerationSession(0) + 24));
      v28[388] = v49;
      memcpy(__dst, v28 + 40, sizeof(__dst));
      v51 = *(v46 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
      v52 = v41;
      v53 = *(v46 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 16);
      v150 = *(v46 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      v50 = v150;
      v151 = v51;
      v152 = v53;
      sub_1C7055874(v46 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyAssetsFetcher, (v28 + 338));
      sub_1C7055874(v46 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_aiEventReporting, v140);
      type metadata accessor for FreeformStoryChapterCurator();
      OUTLINED_FUNCTION_137();
      sub_1C6FDE884((v148 + 40), (v148 + 2));

      sub_1C75504FC();

      v54 = v50;

      v55 = v148;
      v134 = sub_1C71A12F8(v52, __dst, v146, v48, v130, &v150, (v148 + 338), v49, v140);
      v148[389] = v134;
      v56 = [objc_opt_self() forceSequentialAssetCurationCalls];
      v57 = sub_1C754FEEC();
      v58 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v58))
      {
        v59 = OUTLINED_FUNCTION_41_0();
        v60 = OUTLINED_FUNCTION_20_1();
        __dst[0] = v60;
        *v59 = 136315138;
        if (v56)
        {
          v61 = 0x69746E6575716573;
        }

        else
        {
          v61 = 0x65727275636E6F63;
        }

        if (v56)
        {
          v62 = 0xEC000000796C6C61;
        }

        else
        {
          v62 = 0xEC000000796C746ELL;
        }

        v63 = sub_1C6F765A4(v61, v62, __dst);

        *(v59 + 4) = v63;
        _os_log_impl(&dword_1C6F5C000, v57, v58, "Running chapter curations %s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v60);
        OUTLINED_FUNCTION_10_1();
        OUTLINED_FUNCTION_109();
      }

      v64 = v135;
      sub_1C754F2DC();
      v132 = v56;
      v72 = v148[372];
      v150 = MEMORY[0x1E69E7CC0];
      sub_1C716DB00(0, v133, 0);
      v73 = (v72 + 32);
      v74 = 1;
      v144 = v150;
      v147 = 0;
      while (1)
      {
        v138 = v55[383];
        v75 = v55[379];
        v139 = v55[373];
        v141 = v55[382];
        memcpy(v55 + 227, v73, 0x68uLL);
        v136 = v73;
        memcpy(v55 + 240, v73, 0x68uLL);
        __swift_project_boxed_opaque_existential_1(v75, v64[3]);
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1C6FC061C((v148 + 227), (v148 + 292));
        sub_1C755180C();

        __dst[0] = 0x4372657470616843;
        __dst[1] = 0xEF6E6F6974617275;
        v148[369] = v74;
        v76 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v76);

        v55 = v148;
        sub_1C754F17C();

        v77 = OUTLINED_FUNCTION_15_1();
        __swift_mutable_project_boxed_opaque_existential_0(v77, v78);
        OUTLINED_FUNCTION_55();
        v79 = sub_1C755057C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
        v80 = swift_allocBox();
        v82 = v81;
        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;

        sub_1C755180C();

        __dst[0] = 0x4372657470616843;
        __dst[1] = 0xEF6E6F6974617275;
        v148[371] = v74;
        v83 = sub_1C7551D8C();
        MEMORY[0x1CCA5CD70](v83);

        sub_1C754F29C();

        v137 = sub_1C754F2FC();
        __swift_storeEnumTagSinglePayload(v82, 0, 1, v137);
        v84 = sub_1C7550D5C();
        v85 = OUTLINED_FUNCTION_67_5();
        __swift_storeEnumTagSinglePayload(v85, v86, 1, v84);
        sub_1C7055874((v55 + 328), (v55 + 343));
        v87 = swift_allocObject();
        *(v87 + 16) = 0;
        *(v87 + 24) = 0;
        *(v87 + 32) = v132;
        *(v87 + 40) = v147;
        *(v87 + 48) = v79;
        *(v87 + 56) = v80;
        *(v87 + 64) = v134;
        memcpy((v87 + 72), v148 + 240, 0x68uLL);
        *(v87 + 176) = v139;
        sub_1C6F699F8((v148 + 343), v87 + 184);
        sub_1C70555F8(v138, v141, &qword_1EC2158F8);
        v88 = OUTLINED_FUNCTION_67_5();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v88, v89, v84);

        v91 = v148[382];
        v92 = (v148 + 240);
        if (EnumTagSinglePayload == 1)
        {
          sub_1C6FC061C(v92, (v148 + 253));
          sub_1C75504FC();

          v93 = OUTLINED_FUNCTION_82();
          sub_1C6FB5FC8(v93, v94);
        }

        else
        {
          sub_1C6FC061C(v92, (v148 + 305));
          sub_1C75504FC();

          sub_1C7550D4C();
          OUTLINED_FUNCTION_62_2();
          (*(v95 + 8))(v91, v84);
        }

        v96 = *(v87 + 16);
        swift_unknownObjectRetain();

        v64 = v135;
        if (v96)
        {
          swift_getObjectType();
          v97 = sub_1C7550C8C();
          v99 = v98;
          swift_unknownObjectRelease();
        }

        else
        {
          v97 = 0;
          v99 = 0;
        }

        v100 = v144;
        sub_1C6FB5FC8(v148[383], &qword_1EC2158F8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
        if (v99 | v97)
        {
          *v131 = 0;
          v131[1] = 0;
          v148[350] = v97;
          v148[351] = v99;
        }

        v101 = swift_task_create();
        v148[390] = v101;
        __swift_destroy_boxed_opaque_existential_1((v148 + 328));

        memcpy(__dst, v148 + 240, 0x68uLL);
        v150 = v144;
        v103 = v144[2];
        v102 = v144[3];
        if (v103 >= v102 >> 1)
        {
          v105 = OUTLINED_FUNCTION_15(v102);
          sub_1C716DB00(v105, v103 + 1, 1);
          v100 = v150;
        }

        v148[391] = v100;
        v100[2] = v103 + 1;
        v104 = &v100[14 * v103];
        memcpy(v104 + 4, __dst, 0x68uLL);
        v104[17] = v101;
        if (v133 == v74)
        {
          break;
        }

        v144 = v100;
        v147 = v101;
        ++v74;
        v73 = v136 + 104;
      }

      v114 = v100[2];
      v148[392] = v114;
      v148[395] = MEMORY[0x1E69E7CC0];
      v148[394] = 0;
      v148[393] = 0x3FE0000000000000;
      v115 = v148[391];
      if (v114)
      {
        if (*(v115 + 16))
        {
          memcpy(v148 + 158, (v115 + 32), 0x70uLL);
          v148[396] = v148[171];
          sub_1C70555F8((v148 + 158), (v148 + 200), &qword_1EC216578);
          sub_1C754F2DC();
          OUTLINED_FUNCTION_114_3();
          sub_1C75504FC();
          v116 = swift_task_alloc();
          v148[399] = v116;
          v148[400] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
          *v116 = v148;
          OUTLINED_FUNCTION_42_8();
          OUTLINED_FUNCTION_76_3();
          OUTLINED_FUNCTION_44();
        }

        else
        {
          __break(1u);
        }

        return MEMORY[0x1EEE6DE18](v106, v107, v108, v109, v110, v111, v112, v113, a9, a10, a11, a12);
      }

      else
      {

        sub_1C754F2EC();
        OUTLINED_FUNCTION_115_3();

        v118 = OUTLINED_FUNCTION_98_1();
        OUTLINED_FUNCTION_0_22(v118, v119);
        sub_1C754F1AC();
        v120 = OUTLINED_FUNCTION_57_0();
        v121(v120);

        OUTLINED_FUNCTION_116();
        OUTLINED_FUNCTION_44();

        return v124(v122, v123, v124, v125, v126, v127, v128, v129, a9, a10, a11, a12);
      }
    }

    OUTLINED_FUNCTION_0_23();
    swift_once();
    goto LABEL_20;
  }

  v65 = v148[380];

  sub_1C6FE0D14();
  OUTLINED_FUNCTION_9_10();
  swift_allocError();
  v66[1] = 0;
  v66[2] = 0;
  *v66 = 4;
  OUTLINED_FUNCTION_73_3(v66, 12);
  swift_willThrow();
  v67 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v67, v68);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  v69 = OUTLINED_FUNCTION_15_1();
  v70(v69);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v71 + 8))(v65);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_1C704D668()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3208) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v110 = v12;
  v14 = *(v12 + 1712);
  v15 = *(v12 + 1720);
  v16 = *(v12 + 1728);
  v17 = *(v12 + 1729);
  memcpy((v12 + 2544), (v12 + 1736), 0x50uLL);
  sub_1C75504FC();
  v107 = v17;
  v18 = OUTLINED_FUNCTION_21_13();
  if (v17)
  {
    sub_1C70553C8(v18, v19, v20, 1);
    v21 = sub_1C754FEEC();
    v22 = sub_1C755119C();

    v23 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v23, v24, v25, 1);
    if (os_log_type_enabled(v21, v22))
    {
      v13 = *(v12 + 3184);
      LODWORD(v108) = v16;
      v16 = v15;
      v26 = OUTLINED_FUNCTION_23_1();
      v27 = OUTLINED_FUNCTION_102();
      v28 = OUTLINED_FUNCTION_20_1();
      v109 = v28;
      *v26 = 136643075;
      v29 = OUTLINED_FUNCTION_112_1();
      *(v26 + 4) = sub_1C6F765A4(v29, v30, v31);
      *(v26 + 12) = 2112;
      sub_1C70553F8();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      *v32 = v14;
      *(v32 + 8) = v16;
      *(v32 + 16) = v108 & 1;
      OUTLINED_FUNCTION_41_3();
      sub_1C70553D8();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v33;
      *v27 = v33;
      _os_log_impl(&dword_1C6F5C000, v21, v22, "Failed to curate chapter %{sensitive}s: %@", v26, 0x16u);
      sub_1C6FB5FC8(v27, &qword_1EC215190);
      OUTLINED_FUNCTION_109();
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_109();
      v15 = v16;
      LOBYTE(v16) = v108;
      OUTLINED_FUNCTION_109();
    }

    sub_1C70553F8();
    OUTLINED_FUNCTION_9_10();
    v34 = swift_allocError();
    *v35 = v14;
    *(v35 + 8) = v15;
    *(v35 + 16) = v16 & 1;
    memcpy((v12 + 1136), (v12 + 1264), 0x68uLL);
    LOBYTE(v109) = 1;
    *(v12 + 1240) = v34;
    *(v12 + 1248) = 1;
    *(v12 + 1256) = MEMORY[0x1E69E7CC8];
    v36 = OUTLINED_FUNCTION_21_13();
    sub_1C70553C8(v36, v37, v38, 1);
    sub_1C6FC061C(v12 + 1264, v12 + 2232);
    sub_1C6FB7BB8(v12 + 1136, v12 + 1008);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = *(v12 + 3160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04();
      v42 = isUniquelyReferenced_nonNull_native;
    }

    v43 = *(v42 + 24);
    if (*(v42 + 16) >= v43 >> 1)
    {
      OUTLINED_FUNCTION_15(v43);
      sub_1C6FB1B04();
      v42 = isUniquelyReferenced_nonNull_native;
    }

    v44 = OUTLINED_FUNCTION_97_2(isUniquelyReferenced_nonNull_native, v40, v41, v42);
    memcpy(v44, (v12 + 1136), 0x80uLL);
    v45 = *(v12 + 3184);
    if (v13)
    {
      v46 = *(v12 + 3176);
      *(v12 + 2864) = 0;
      *(v12 + 2872) = 0xE000000000000000;
      sub_1C755180C();

      *(v12 + 2848) = 0xD000000000000024;
      *(v12 + 2856) = 0x80000001C759A7C0;
      MEMORY[0x1CCA5CD70](v46, v45);

      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      if (v16)
      {
        v47 = 0xD000000000000022;
      }

      else
      {
        v47 = 0xD00000000000001FLL;
      }

      if (v16)
      {
        v48 = "d to curate chapter ";
      }

      else
      {
        v48 = "et IDs In Response";
      }

      MEMORY[0x1CCA5CD70](v47, v48 | 0x8000000000000000);

      sub_1C7161CDC(*(v12 + 2848), *(v12 + 2856));
      sub_1C6FBC664(v12 + 1136);
      goto LABEL_25;
    }

    sub_1C703307C(v12 + 2544);
    v73 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v73, v74, v75, 1);

    sub_1C6FBC664(v12 + 1136);
  }

  else
  {
    sub_1C70553C8(v18, v19, v20, 0);
    v49 = sub_1C754FEEC();
    v50 = sub_1C75511BC();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = *(v12 + 3184);
      v52 = *(v12 + 3176);
      v53 = OUTLINED_FUNCTION_23_1();
      v13 = OUTLINED_FUNCTION_20_1();
      v109 = v13;
      *v53 = 136643075;
      *(v53 + 4) = sub_1C6F765A4(v52, v51, &v109);
      *(v53 + 12) = 2048;
      *(v53 + 14) = [v14 count];
      v54 = OUTLINED_FUNCTION_154();
      sub_1C70553E0(v54, v55, v16, 0);
      _os_log_impl(&dword_1C6F5C000, v49, v50, "Successfully curated chapter %{sensitive}s with %ld assets", v53, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v56 = OUTLINED_FUNCTION_154();
      sub_1C70553E0(v56, v57, v16, 0);
    }

    memcpy((v12 + 752), (v12 + 1264), 0x68uLL);
    LOBYTE(v109) = 0;
    *(v12 + 856) = v14;
    *(v12 + 864) = 0;
    *(v12 + 872) = MEMORY[0x1E69E7CC8];
    v58 = OUTLINED_FUNCTION_154();
    sub_1C70553C8(v58, v59, v16, 0);
    sub_1C6FC061C(v12 + 1264, v12 + 2128);
    sub_1C6FB7BB8(v12 + 752, v12 + 880);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v12 + 3160);
    if ((v60 & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB1B04();
      v63 = v60;
    }

    v64 = *(v63 + 24);
    if (*(v63 + 16) >= v64 >> 1)
    {
      OUTLINED_FUNCTION_15(v64);
      sub_1C6FB1B04();
      v63 = v60;
    }

    v65 = OUTLINED_FUNCTION_97_2(v60, v61, v62, v63);
    memcpy(v65, (v12 + 752), 0x80uLL);
    v66 = *(v12 + 3184);
    if (v13)
    {
      v67 = *(v12 + 3176);
      *(v12 + 2896) = 0;
      *(v12 + 2904) = 0xE000000000000000;
      sub_1C755180C();
      v68 = *(v12 + 2904);
      *(v12 + 2880) = *(v12 + 2896);
      *(v12 + 2888) = v68;
      MEMORY[0x1CCA5CD70](0xD000000000000028, 0x80000001C759A840);
      MEMORY[0x1CCA5CD70](v67, v66);
      MEMORY[0x1CCA5CD70](0x206874697720, 0xE600000000000000);
      *(v12 + 2960) = [v14 count];
      v69 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v69);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
      sub_1C7161CDC(*(v12 + 2880), *(v12 + 2888));

      *(v12 + 2928) = 0;
      *(v12 + 2936) = 0xE000000000000000;
      sub_1C755180C();

      *(v12 + 2912) = 0xD000000000000010;
      *(v12 + 2920) = 0x80000001C759A870;
      MEMORY[0x1CCA5CD70](v67, v66);

      MEMORY[0x1CCA5CD70](1819113518, 0xE400000000000000);
      sub_1C6FB7BB8(v12 + 752, v12 + 624);
      OUTLINED_FUNCTION_82();
      sub_1C7162388();
      sub_1C6FBC664(v12 + 752);
LABEL_25:

      sub_1C7031BAC((v12 + 2544));
      sub_1C703307C(v12 + 2544);
      v70 = OUTLINED_FUNCTION_21_13();
      sub_1C70553E0(v70, v71, v72, v107);

      goto LABEL_28;
    }

    sub_1C703307C(v12 + 2544);
    sub_1C6FBC664(v12 + 752);

    v76 = OUTLINED_FUNCTION_21_13();
    sub_1C70553E0(v76, v77, v78, 0);
  }

LABEL_28:
  v79 = *(v12 + 3208);
  sub_1C754F2DC();
  if (v79)
  {
    v80 = *(v12 + 3088);
    v81 = *(v12 + 3080);
    v82 = *(v12 + 3072);
    v83 = *(v12 + 3040);
    v84 = *(v12 + 3032);

    sub_1C70552E0(v12 + 1264);

    OUTLINED_FUNCTION_70(v84, v84[3]);
    sub_1C754F1AC();
    (*(v81 + 8))(v80, v82);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v85 + 8))(v83);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_84_3();

    __asm { BRAA            X1, X16 }
  }

  v88 = *(v12 + 3144);
  v89 = *(v12 + 3136);

  sub_1C70552E0(v12 + 1264);
  v97 = *(v12 + 3152) + 1;
  *(v12 + 3160) = v108;
  *(v12 + 3152) = v97;
  *(v12 + 3144) = 0.5 / (v89 + v89) + v88 + 0.5 / (v89 + v89);
  v98 = *(v12 + 3128);
  if (v97 == *(v12 + 3136))
  {

    sub_1C754F2EC();
    OUTLINED_FUNCTION_115_3();
    v99 = *(v12 + 3032);

    OUTLINED_FUNCTION_0_22(v99, v99[3]);
    sub_1C754F1AC();
    v100 = OUTLINED_FUNCTION_457();
    v101(v100);

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_84_3();

    __asm { BRAA            X2, X16 }
  }

  if (v97 >= *(v98 + 16))
  {
    __break(1u);
  }

  else
  {
    memcpy((v12 + 1264), (v98 + 112 * v97 + 32), 0x70uLL);
    *(v12 + 3168) = *(v12 + 1368);
    sub_1C70555F8(v12 + 1264, v12 + 1600, &qword_1EC216578);
    sub_1C754F2DC();
    OUTLINED_FUNCTION_114_3();
    sub_1C75504FC();
    v104 = swift_task_alloc();
    *(v12 + 3192) = v104;
    *(v12 + 3200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
    *v104 = v12;
    OUTLINED_FUNCTION_42_8();
    OUTLINED_FUNCTION_76_3();
    OUTLINED_FUNCTION_84_3();
  }

  return MEMORY[0x1EEE6DE18](v98, v90, v91, v92, v93, v94, v95, v96, a9, a10, a11, a12);
}

uint64_t sub_1C704E2D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24_4();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_31();
  a20 = v22;
  v25 = v22[401];
  sub_1C75504FC();
  v26 = v25;
  v27 = sub_1C754FEEC();
  sub_1C755119C();

  if (OUTLINED_FUNCTION_140_0())
  {
    v28 = v22[398];
    v29 = v22[397];
    v30 = OUTLINED_FUNCTION_23_1();
    v31 = OUTLINED_FUNCTION_102();
    v32 = OUTLINED_FUNCTION_20_1();
    a9 = v32;
    *v30 = 136643075;
    v33 = sub_1C6F765A4(v29, v28, &a9);
    OUTLINED_FUNCTION_136_1(v33);
    v34 = _swift_stdlib_bridgeErrorToNSError();
    *(v30 + 14) = v34;
    *v31 = v34;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v35, v36, v37, v38, v30, 0x16u);
    sub_1C6FB5FC8(v31, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  if (v22[388])
  {
    v39 = v22[401];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    v40 = a10;
    v22[352] = a9;
    v22[353] = v40;
    MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C759A7C0);
    v41 = OUTLINED_FUNCTION_154();
    MEMORY[0x1CCA5CD70](v41);

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v22[368] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(v22[352]);
  }

  v43 = 1;
  for (i = 32; ; i += 112)
  {
    v45 = v22[391];
    if ((v43 - 1) >= *(v45 + 16))
    {
      __break(1u);
      return result;
    }

    v46 = v22[392];
    memcpy(v22 + 186, (v45 + i), 0x70uLL);
    sub_1C70555F8((v22 + 186), (v22 + 172), &qword_1EC216578);
    sub_1C70552E0((v22 + 186));
    v47 = OUTLINED_FUNCTION_112_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v47);
    sub_1C7550E1C();

    if (v43 == v46)
    {
      break;
    }

    ++v43;
  }

  v48 = v22[380];
  v49 = v22[379];

  swift_willThrow();

  sub_1C70552E0((v22 + 158));

  OUTLINED_FUNCTION_70(v49, v49[3]);
  OUTLINED_FUNCTION_75();
  sub_1C754F1AC();
  v50 = OUTLINED_FUNCTION_98_1();
  v51(v50);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v52 + 8))(v48);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_17_1();

  return v54(v53, v54, v55, v56, v57, v58, v59, v60, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_1C704E668()
{
  OUTLINED_FUNCTION_42();
  v1[85] = v0;
  v1[84] = v2;
  v1[83] = v3;
  v1[82] = v4;
  v1[81] = v5;
  v1[80] = v6;
  v1[79] = v7;
  v8 = sub_1C754F38C();
  v1[86] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[87] = v9;
  v1[88] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C704E724()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 648);
  v2 = *(v0 + 640);
  v3 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_141_1(v3, v4);
  OUTLINED_FUNCTION_71_2();
  v5 = OUTLINED_FUNCTION_457();
  OUTLINED_FUNCTION_70(v5, v6);
  sub_1C754F15C();
  memcpy((v0 + 16), v2, 0x130uLL);
  *(v0 + 752) = *v1;
  v7 = swift_task_alloc();
  *(v0 + 712) = v7;
  *v7 = v0;
  v7[1] = sub_1C704E848;
  OUTLINED_FUNCTION_61_3(*(v0 + 632));
  OUTLINED_FUNCTION_142();

  return sub_1C7051B14();
}

uint64_t sub_1C704E848()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_6_4();
  *v6 = v5;
  *v6 = *v1;
  *(v5 + 720) = v7;
  *(v5 + 728) = v0;

  if (!v0)
  {
    *(v5 + 754) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C704E95C()
{
  OUTLINED_FUNCTION_115_0();
  if ((*(v0 + 754) & 1) == 0)
  {
    v9 = *(v0 + 656);
    if (*(v9 + *(type metadata accessor for StoryGenerationSession(0) + 24)))
    {
      sub_1C7161CDC(0xD000000000000045, 0x80000001C759A650);
    }

LABEL_14:
    v10 = *(v0 + 664);
    __swift_destroy_boxed_opaque_existential_1(v0 + 576);
    v11 = *(v10 + 24);
    v12 = OUTLINED_FUNCTION_57_0();
    __swift_project_boxed_opaque_existential_1(v12, v13);
    OUTLINED_FUNCTION_26_8();
    sub_1C754F1AC();
    v14 = *(v0 + 704);
    OUTLINED_FUNCTION_12_16();
    v15(v14);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v16 + 8))(v11);

    OUTLINED_FUNCTION_82_0();
    OUTLINED_FUNCTION_108_3();

    __asm { BRAA            X3, X16 }
  }

  v1 = *(v0 + 656);
  v2 = *(v0 + 720);
  v3 = *(v1 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  *(v0 + 736) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_90_3();
    sub_1C755180C();
    *(v0 + 616) = v31;
    *(v0 + 624) = v32;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD00000000000003ALL);
    *(v0 + 753) = v2;
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(*(v0 + 616));
  }

  if (qword_1EDD0A988 != -1)
  {
    swift_once();
  }

  if (byte_1EC218F88 != 2)
  {
    goto LABEL_14;
  }

  v4 = **(v0 + 648);
  if (v4 <= 0x1F && (v4 & 1) == 0)
  {
    v19 = *(v0 + 664);
    sub_1C705501C();
    OUTLINED_FUNCTION_9_10();
    v20 = swift_allocError();
    *v21 = v2;
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    v22[1] = 0;
    v22[2] = 0;
    *v22 = v20;
    OUTLINED_FUNCTION_73_3(v22, 11);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v0 + 576);
    v23 = *(v19 + 24);
    v24 = OUTLINED_FUNCTION_154();
    __swift_project_boxed_opaque_existential_1(v24, v25);
    OUTLINED_FUNCTION_26_8();
    sub_1C754F1AC();
    v26 = *(v0 + 704);
    OUTLINED_FUNCTION_12_16();
    v27(v26);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v28 + 8))(v23);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_108_3();

    __asm { BRAA            X1, X16 }
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 744) = v5;
  *v5 = v6;
  v5[1] = sub_1C704ECD4;
  OUTLINED_FUNCTION_108_3();

  return sub_1C70526E8();
}

uint64_t sub_1C704ECD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v1 = *v0;
  OUTLINED_FUNCTION_14();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C704EDB8()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[81];
  memcpy(v0 + 40, v0 + 56, 0x80uLL);
  v2 = *v1;
  switch(v2 >> 5)
  {
    case 1u:
      goto LABEL_10;
    case 2u:
    case 4u:
      goto LABEL_13;
    case 3u:
      if (v2 == 96)
      {
        goto LABEL_10;
      }

LABEL_13:
      v18 = v0[83];
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      v19[1] = 0;
      v19[2] = 0;
      *v19 = v2;
      OUTLINED_FUNCTION_73_3(v19, 9);
      swift_willThrow();
      sub_1C6FBC664((v0 + 40));
      __swift_destroy_boxed_opaque_existential_1((v0 + 72));
      v20 = *(v18 + 24);
      v21 = OUTLINED_FUNCTION_154();
      __swift_project_boxed_opaque_existential_1(v21, v22);
      OUTLINED_FUNCTION_26_8();
      sub_1C754F1AC();
      v23 = v0[88];
      OUTLINED_FUNCTION_12_16();
      v24(v23);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v25 + 8))(v20);

      OUTLINED_FUNCTION_43();

      result = v26();
      break;
    default:
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v3 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v3, qword_1EDD28B68);
      v4 = sub_1C754FEEC();
      v5 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v5))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_6(&dword_1C6F5C000, v6, v7, "Failed to create non-chronological Montage, downgrading to chronological.");
        OUTLINED_FUNCTION_109();
      }

      v8 = v0[92];

      if (v8)
      {
        v9 = v0[81];
        OUTLINED_FUNCTION_56_0();
        sub_1C755180C();
        MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C759A5C0);
        sub_1C73E69B8(*v9);
        OUTLINED_FUNCTION_104();
        OUTLINED_FUNCTION_10_2();
        MEMORY[0x1CCA5CD70](0xD00000000000001BLL);
        OUTLINED_FUNCTION_138_2(v27);
      }

      *v0[81] = 33;
LABEL_10:
      v10 = v0[83];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_1C755BAB0;
      memcpy((v11 + 32), v0 + 40, 0x80uLL);
      __swift_destroy_boxed_opaque_existential_1((v0 + 72));
      __swift_project_boxed_opaque_existential_1(v10, v10[3]);
      OUTLINED_FUNCTION_63();
      sub_1C754F1AC();
      v12 = v0[88];
      OUTLINED_FUNCTION_12_16();
      v13(v12);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_3();
      (*(v14 + 8))(v10);

      OUTLINED_FUNCTION_82_0();
      v15 = OUTLINED_FUNCTION_12_5();

      result = v16(v15);
      break;
  }

  return result;
}

uint64_t sub_1C704F11C()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 664);
  __swift_destroy_boxed_opaque_existential_1(v0 + 576);
  v2 = *(v1 + 24);
  v3 = OUTLINED_FUNCTION_57_0();
  __swift_project_boxed_opaque_existential_1(v3, v4);
  OUTLINED_FUNCTION_26_8();
  sub_1C754F1AC();
  v5 = *(v0 + 704);
  OUTLINED_FUNCTION_12_16();
  v6(v5);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v7 + 8))(v2);

  OUTLINED_FUNCTION_43();

  return v8();
}

void static FreeformStoryGenerator.validate(numberOfCuratedAssets:configuration:storyElements:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  if (v3 > a1)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_124_3();
  if (!(v7 ^ v8 | v6))
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v5 <= -9.22337204e18)
  {
    goto LABEL_12;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v3 = *(v4 + 24) >= v5 ? v5 : *(v4 + 24);
  if (v3 > a1)
  {
LABEL_10:
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    *v9 = a1;
    v9[1] = v3;
    v9[2] = 0;
    OUTLINED_FUNCTION_73_3(v9, 5);
    swift_willThrow();
  }
}

_BYTE *_s27MontageChapterCurationErrorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C704F398()
{
  result = qword_1EC216558;
  if (!qword_1EC216558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216558);
  }

  return result;
}

uint64_t sub_1C704F3EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C754F2FC();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C704F4C0, 0, 0);
}

uint64_t sub_1C704F4C0()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_113_3();
  v1();
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_1C704F5C4;
  OUTLINED_FUNCTION_61_3(*(v0 + 32));
  OUTLINED_FUNCTION_88_0();

  return static FreeformStoryGenerator.updateChapterCuratedAssetsHighlights(storyChapters:queryTokens:storyGenerationCache:progressReporter:)(v3, v4, v5, v6);
}

uint64_t sub_1C704F5C4()
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
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C704F6CC()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 16) = *(v0 + 112);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C704F73C()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C704F7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[180] = v12;
  v8[179] = a8;
  v8[178] = a7;
  v8[177] = a6;
  v8[176] = a5;
  v8[175] = a4;
  v8[174] = a3;
  v8[173] = a2;
  v8[172] = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216598);
  v8[181] = v9;
  v8[182] = *(v9 - 8);
  v8[183] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v8[184] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C704F8CC, 0, 0);
}

uint64_t sub_1C704F8CC()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = swift_allocObject();
  *(v0 + 1480) = v1;
  *(v1 + 16) = 0;
  v2 = OUTLINED_FUNCTION_43_2();
  OUTLINED_FUNCTION_70(v2, v3);
  OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_99_3();
  v4();
  sub_1C7550E8C();

  swift_beginAccess();
  OUTLINED_FUNCTION_24_1();
  OUTLINED_FUNCTION_142();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C704F9E8()
{
  OUTLINED_FUNCTION_75_1();
  sub_1C7055658(v0 + 928, v0 + 976);
  if (*(v0 + 1016))
  {
    sub_1C6F699F8((v0 + 976), v0 + 1024);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 1024, *(v0 + 1048));
    OUTLINED_FUNCTION_24_2();
    sub_1C755150C();
    v1 = *(v0 + 1096);
    v8 = *(v0 + 1080);
    v9 = *(v0 + 1064);
    sub_1C70556B4(v0 + 928);
    sub_1C7055874(v0 + 1024, v0 + 928);
    *(v0 + 968) = 1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 1024);
    *(v0 + 1536) = v1;
    *(v0 + 1520) = v8;
    *(v0 + 1504) = v9;
    v2 = OUTLINED_FUNCTION_24_1();

    return MEMORY[0x1EEE6DFA0](v2, v3, v4);
  }

  else
  {
    sub_1C6F699F8((v0 + 976), v0 + 1184);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 1184, *(v0 + 1208));
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1488) = v5;
    *v5 = v6;
    v5[1] = sub_1C704FB74;

    return MEMORY[0x1EEE6D8C8](v0 + 1224);
  }
}

uint64_t sub_1C704FB74()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 1496) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C704FC70()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 1256);
  v6 = *(v0 + 1240);
  v7 = *(v0 + 1224);
  sub_1C70556B4(v0 + 928);
  sub_1C7055874(v0 + 1184, v0 + 928);
  *(v0 + 968) = 0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 1184);
  *(v0 + 1536) = v1;
  *(v0 + 1520) = v6;
  *(v0 + 1504) = v7;
  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C704FD04()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1(v0 + 1184);
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C704FD60()
{
  OUTLINED_FUNCTION_42();
  *(v0 + 1368) = *(v0 + 1496);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  swift_willThrowTypedImpl();
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C704FDE4()
{
  OUTLINED_FUNCTION_42();
  sub_1C7055708(v0 + 928);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C704FE60()
{
  v1 = *(v0 + 1512);
  if (!v1)
  {
    sub_1C7055708(v0 + 928);
    goto LABEL_11;
  }

  v38 = *(v0 + 1528);
  v2 = *(v0 + 1480);
  __swift_project_boxed_opaque_existential_1(*(v0 + 1400), *(*(v0 + 1400) + 24));
  *(v0 + 1304) = 0;
  *(v0 + 1312) = 0xE000000000000000;
  sub_1C755180C();

  *(v0 + 1288) = 0x4372657470616843;
  *(v0 + 1296) = 0xEF6E6F6974616572;
  v4 = *(v2 + 16);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_15;
  }

  v37 = v1;
  v7 = *(v0 + 1480);
  *(v0 + 1352) = v6;
  v8 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v8);

  sub_1C754F17C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v9 = swift_allocBox();
  v11 = v10;
  *(v0 + 1336) = 0;
  *(v0 + 1344) = 0xE000000000000000;
  sub_1C755180C();

  *(v0 + 1320) = 0x4372657470616843;
  *(v0 + 1328) = 0xEF6E6F6974616572;
  v12 = *(v7 + 16);
  v5 = __OFADD__(v12, 1);
  v13 = v12 + 1;
  if (v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v33 = *(v0 + 1504);
  v34 = *(v0 + 1520);
  v14 = *(v0 + 1472);
  v35 = *(v0 + 1440);
  v36 = *(v0 + 1480);
  v15 = *(v0 + 1432);
  v16 = *(v0 + 1424);
  v17 = *(v0 + 1416);
  *(v0 + 1360) = v13;
  v18 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v18);

  sub_1C754F29C();

  v19 = sub_1C754F2FC();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v19);
  sub_1C7550D5C();
  v20 = OUTLINED_FUNCTION_67_5();
  __swift_storeEnumTagSinglePayload(v20, v21, 1, v22);
  sub_1C7055874(v0 + 1104, v0 + 1144);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v9;
  *(v23 + 40) = v17;
  *(v23 + 48) = v33;
  *(v23 + 56) = v37;
  *(v23 + 64) = v34;
  *(v23 + 72) = v38;
  memcpy((v23 + 88), v16, 0x130uLL);
  sub_1C6F699F8((v0 + 1144), v23 + 392);
  *(v23 + 432) = v15;
  *(v23 + 440) = v36;
  *(v23 + 448) = v35;

  sub_1C6FDE884(v16, v0 + 16);

  LOBYTE(v23) = sub_1C7050D8C(v14, &unk_1C7564C58, v23);
  sub_1C6FB5FC8(v14, &qword_1EC2158F8);
  v3 = __swift_destroy_boxed_opaque_existential_1(v0 + 1104);
  if ((v23 & 1) == 0)
  {
    sub_1C7055708(v0 + 928);

LABEL_11:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    OUTLINED_FUNCTION_57_0();
    sub_1C7550E7C();
    *(v0 + 1544) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_53_8(&qword_1EC2165A0, &qword_1EC216598);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 1552) = v30;
    *v30 = v31;
    v3 = OUTLINED_FUNCTION_33_8(v30);

    return MEMORY[0x1EEE6D8C8](v3);
  }

  v24 = *(v0 + 1480);
  v25 = *(v24 + 16);
  v5 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v5)
  {
LABEL_16:
    __break(1u);
    return MEMORY[0x1EEE6D8C8](v3);
  }

  *(v24 + 16) = v26;

  v27 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v27, v28, v29);
}

uint64_t sub_1C70502C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  v3[195] = v0;

  if (v0)
  {
    (*(v3[182] + 8))(v3[183], v3[181]);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70503E8()
{
  OUTLINED_FUNCTION_123();
  memcpy(v0 + 59, v0 + 40, 0x98uLL);
  if (sub_1C6F9ED5C((v0 + 59)) == 1)
  {
    v1 = v0[193];
    v2 = v0[172];
    (*(v0[182] + 8))(v0[183], v0[181]);
    memcpy(v0 + 78, v0 + 40, 0x98uLL);
    sub_1C6FB5FC8((v0 + 78), &qword_1EC2165A8);
    *v2 = v1;

    OUTLINED_FUNCTION_43();

    return v3();
  }

  else
  {
    memcpy(v0 + 97, v0 + 40, 0x98uLL);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v0[193];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_24_0();
      sub_1C6FB24E8();
      v6 = v11;
    }

    v7 = *(v6 + 16);
    if (v7 >= *(v6 + 24) >> 1)
    {
      sub_1C6FB24E8();
      v6 = v12;
    }

    *(v6 + 16) = v7 + 1;
    memcpy((v6 + 152 * v7 + 32), v0 + 97, 0x98uLL);
    v0[193] = v6;
    OUTLINED_FUNCTION_53_8(&qword_1EC2165A0, &qword_1EC216598);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[194] = v8;
    *v8 = v9;
    v10 = OUTLINED_FUNCTION_33_8();

    return MEMORY[0x1EEE6D8C8](v10);
  }
}

uint64_t sub_1C70505E0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t sub_1C7050650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[83] = v13;
  v8[82] = v12;
  v8[81] = a8;
  v8[80] = a7;
  v8[79] = a6;
  v8[78] = a5;
  v8[77] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v8[84] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[85] = v9;
  v8[86] = *(v9 - 8);
  v8[87] = swift_task_alloc();
  v8[88] = swift_task_alloc();
  v8[89] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C7050784, 0, 0);
}

uint64_t sub_1C7050784()
{
  OUTLINED_FUNCTION_115_0();
  OUTLINED_FUNCTION_107_3();
  v1 = OUTLINED_FUNCTION_43_2();
  sub_1C705544C(v1, v2);
  OUTLINED_FUNCTION_27_9();
  if (v3)
  {
    v4 = *(v0 + 672);
    v5 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v5, v6, v7) != 1)
    {
      sub_1C6FB5FC8(v4, &unk_1EC218C90);
    }

    return OUTLINED_FUNCTION_31_8();
  }

  else
  {
    v9 = *(v0 + 640);
    v10 = *(v0 + 632);
    v11 = *(*(v0 + 688) + 32);
    (v11)(*(v0 + 704), *(v0 + 672), *(v0 + 680));
    v12 = *(v10 + 32);
    v13 = *(v10 + 16);
    *(v0 + 424) = *v10;
    *(v0 + 440) = v13;
    *(v0 + 456) = v12;
    *(v0 + 736) = 3;
    memcpy((v0 + 16), v9, 0x130uLL);
    OUTLINED_FUNCTION_113_3();
    v11();
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v0 + 720) = v14;
    *v14 = v15;
    v14[1] = sub_1C7050960;
    v16 = *(v0 + 696);
    v17 = *(v0 + 656);
    v18 = *(v0 + 648);

    return sub_1C7398254(v0 + 320, v0 + 424, (v0 + 736), (v0 + 16), v18, v16, v17);
  }
}

uint64_t sub_1C7050960()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7050A5C()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v1 = v0[83];
  v2 = v0[79];
  v3 = v0[77];
  v4 = *v2;
  v5 = *(v2 + 16);
  *(v3 + 32) = *(v2 + 32);
  *v3 = v4;
  *(v3 + 16) = v5;
  memcpy((v3 + 40), v0 + 40, 0x68uLL);
  swift_beginAccess();
  *(v3 + 144) = *(v1 + 16);
  sub_1C70558D4(v2, (v0 + 63));

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

void sub_1C7050B30()
{
  OUTLINED_FUNCTION_115_0();
  v22 = v0;
  if (qword_1EDD09CF0 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v1 = v0[91];
  v2 = v0[79];
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v3, qword_1EDD28B68);
  sub_1C70558D4(v2, (v0 + 58));
  v4 = v1;
  v5 = sub_1C754FEEC();
  sub_1C755119C();
  sub_1C7055930(v2);

  if (OUTLINED_FUNCTION_140_0())
  {
    v6 = v0[79];
    v7 = OUTLINED_FUNCTION_23_1();
    v8 = OUTLINED_FUNCTION_102();
    v9 = OUTLINED_FUNCTION_20_1();
    v21[0] = v9;
    *v7 = 136643075;
    v10 = sub_1C6F765A4(*v6, *(v6 + 8), v21);
    OUTLINED_FUNCTION_136_1(v10);
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    *v8 = v11;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v12, v13, v14, v15, v7, 0x16u);
    sub_1C6FB5FC8(v8, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_37();
    OUTLINED_FUNCTION_109();
  }

  if (v0[82])
  {
    v16 = v0[91];
    v17 = v0[79];
    OUTLINED_FUNCTION_56_0();
    sub_1C755180C();
    v18 = v21[1];
    v0[74] = v21[0];
    v0[75] = v18;
    OUTLINED_FUNCTION_10_2();
    MEMORY[0x1CCA5CD70](0xD000000000000021);
    MEMORY[0x1CCA5CD70](*v17, v17[1]);
    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    v0[76] = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C75519EC();
    OUTLINED_FUNCTION_138_2(v0[74]);
  }

  swift_willThrow();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_87_5();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C7050D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v17 - v7;
  v9 = *v3;
  v10 = swift_taskGroup_addPending();
  if (v10)
  {
    sub_1C70555F8(a1, v8, &qword_1EC2158F8);
    v11 = sub_1C7550D5C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v11) == 1)
    {
      sub_1C6FB5FC8(v8, &qword_1EC2158F8);
    }

    else
    {
      sub_1C7550D4C();
      (*(*(v11 - 8) + 8))(v8, v11);
    }

    if (*(a3 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1C7550C8C();
      v14 = v13;
      swift_unknownObjectRelease();
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DC0);
    v15 = (v14 | v12);
    if (v14 | v12)
    {
      v18[0] = 0;
      v18[1] = 0;
      v15 = v18;
      v18[2] = v12;
      v18[3] = v14;
    }

    v17[1] = 1;
    v17[2] = v15;
    v17[3] = v9;
    swift_task_create();
  }

  return v10 & 1;
}

uint64_t sub_1C7050F8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v3 = (a1 + 88);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;
      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      sub_1C75504FC();
      if (v7 >= v6 >> 1)
      {
        sub_1C6F7ED9C();
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = v5;
      *(v8 + 40) = v4;
      v3 += 13;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  sub_1C705575C(&qword_1EDD0CF58, &unk_1EC217A00);
  v9 = sub_1C75505FC();

  return v9;
}

uint64_t sub_1C70510D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 560) = v13;
  *(v8 + 544) = v12;
  *(v8 + 536) = a8;
  *(v8 + 528) = a6;
  *(v8 + 520) = a5;
  *(v8 + 121) = a4;
  *(v8 + 512) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  *(v8 + 568) = swift_task_alloc();
  v9 = sub_1C754F2FC();
  *(v8 + 576) = v9;
  *(v8 + 584) = *(v9 - 8);
  *(v8 + 592) = swift_task_alloc();
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C705120C, 0, 0);
}

uint64_t sub_1C705120C()
{
  OUTLINED_FUNCTION_123();
  v3 = *(v1 + 520);
  v4 = *(v1 + 121) != 1 || v3 == 0;
  if (v4)
  {
    OUTLINED_FUNCTION_126_4();
    *(v1 + 472) = &type metadata for Random.Arc4Random;
    *(v1 + 480) = sub_1C7054F1C();
    Random.Arc4Random.init(seed:)(v2, v1 + 448);
    OUTLINED_FUNCTION_107_3();
    v5 = OUTLINED_FUNCTION_43_2();
    sub_1C705544C(v5, v6);
    OUTLINED_FUNCTION_27_9();
    if (v4)
    {
      v7 = *(v1 + 568);
      v8 = OUTLINED_FUNCTION_69_2();
      if (__swift_getEnumTagSinglePayload(v8, v9, v10) != 1)
      {
        sub_1C6FB5FC8(v7, &unk_1EC218C90);
      }

      OUTLINED_FUNCTION_118_2();
      return OUTLINED_FUNCTION_31_8();
    }

    else
    {
      v13 = OUTLINED_FUNCTION_68_6();
      v2(v13);
      memcpy((v1 + 240), v3, 0x68uLL);
      if (v0)
      {
        sub_1C6FE3768(**(v1 + 544), *(*(v1 + 544) + 8), *(v1 + 552));
      }

      v14 = OUTLINED_FUNCTION_123_3();
      v2(v14);
      swift_task_alloc();
      OUTLINED_FUNCTION_48();
      *(v1 + 632) = v15;
      *v15 = v16;
      OUTLINED_FUNCTION_28_5(v15);

      return sub_1C719EE4C();
    }
  }

  else
  {

    v12 = swift_task_alloc();
    *(v1 + 616) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    *v12 = v1;
    v12[1] = sub_1C7051448;
    OUTLINED_FUNCTION_99_3();

    return MEMORY[0x1EEE6DA20]();
  }
}

uint64_t sub_1C7051448()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  memcpy((v2 + 16), (v2 + 128), 0x69uLL);
  sub_1C6FB5FC8(v2 + 16, &qword_1EC216588);
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C705154C()
{
  OUTLINED_FUNCTION_123();

  OUTLINED_FUNCTION_126_4();
  *(v2 + 472) = &type metadata for Random.Arc4Random;
  *(v2 + 480) = sub_1C7054F1C();
  Random.Arc4Random.init(seed:)(v3, v2 + 448);
  OUTLINED_FUNCTION_107_3();
  v4 = OUTLINED_FUNCTION_43_2();
  sub_1C705544C(v4, v5);
  OUTLINED_FUNCTION_27_9();
  if (v6)
  {
    v7 = *(v2 + 568);
    v8 = OUTLINED_FUNCTION_69_2();
    if (__swift_getEnumTagSinglePayload(v8, v9, v10) != 1)
    {
      sub_1C6FB5FC8(v7, &unk_1EC218C90);
    }

    OUTLINED_FUNCTION_118_2();
    return OUTLINED_FUNCTION_31_8();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_68_6();
    v3(v12);
    memcpy((v2 + 240), v1, 0x68uLL);
    if (v0)
    {
      sub_1C6FE3768(**(v2 + 544), *(*(v2 + 544) + 8), *(v2 + 552));
    }

    v13 = OUTLINED_FUNCTION_123_3();
    v3(v13);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v2 + 632) = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_28_5(v14);

    return sub_1C719EE4C();
  }
}

uint64_t sub_1C70516BC()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 640) = v0;
  *(v6 + 648) = *v7;
  *(v6 + 122) = *(v6 + 360);
  *(v6 + 123) = *(v6 + 361);
  *(v6 + 664) = *(v8 + 368);
  *(v6 + 672) = *(v6 + 376);
  v9 = *(v8 + 392);
  v10 = *(v6 + 416);
  *(v6 + 696) = *(v6 + 400);
  *(v6 + 688) = v9;
  *(v6 + 712) = v10;
  *(v6 + 728) = *(v6 + 432);

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C7051860()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 688);
  v2 = *(v0 + 680);
  v3 = *(v0 + 664);
  v4 = *(v0 + 123);
  v5 = *(v0 + 122);
  v6 = *(v0 + 512);
  v7 = *(v0 + 696);
  v8 = *(v0 + 712);
  v9 = *(v0 + 728);
  *v6 = *(v0 + 648);
  *(v6 + 16) = v5;
  *(v6 + 17) = v4;
  *(v6 + 24) = v3;
  *(v6 + 40) = v2;
  *(v6 + 48) = v1;
  *(v6 + 56) = v7;
  *(v6 + 72) = v8;
  *(v6 + 88) = v9;
  __swift_destroy_boxed_opaque_existential_1(v0 + 448);

  OUTLINED_FUNCTION_43();

  return v10();
}

uint64_t sub_1C7051934()
{
  OUTLINED_FUNCTION_49_0();
  __swift_destroy_boxed_opaque_existential_1(v0 + 448);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C70519BC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  *v5 = v2;
  v5[1] = sub_1C6F738F4;
  v8 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6DA10](a1, a2, v6, v7, v8);
}

uint64_t sub_1C7051AA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);

  return sub_1C7550E1C();
}

uint64_t sub_1C7051B14()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  *(v1 + 344) = v6;
  *(v1 + 352) = v0;
  *(v1 + 328) = v7;
  *(v1 + 336) = v8;
  v9 = sub_1C754F38C();
  *(v1 + 360) = v9;
  OUTLINED_FUNCTION_18(v9);
  *(v1 + 368) = v10;
  *(v1 + 376) = OUTLINED_FUNCTION_77();
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  *(v1 + 384) = TokenCategoryType;
  OUTLINED_FUNCTION_76(TokenCategoryType);
  v12 = OUTLINED_FUNCTION_77();
  v13 = *(v5 + 208);
  *(v1 + 392) = v12;
  *(v1 + 400) = v13;
  *(v1 + 321) = *v3;
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7051BFC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = *(v0 + 321);
  switch(v1 >> 5)
  {
    case 1uLL:
      goto LABEL_16;
    case 2uLL:
    case 4uLL:
      goto LABEL_19;
    case 3uLL:
      if (v1 == 96)
      {
        goto LABEL_16;
      }

LABEL_19:
      sub_1C6FE0D14();
      OUTLINED_FUNCTION_9_10();
      swift_allocError();
      v19[1] = 0;
      v19[2] = 0;
      *v19 = v1;
      OUTLINED_FUNCTION_73_3(v19, 9);
      swift_willThrow();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_87_5();

      __asm { BRAA            X1, X16 }

      return result;
    default:
      v2 = *(v0 + 392);
      swift_storeEnumTagMultiPayload();
      *(swift_task_alloc() + 16) = v2;
      v3 = sub_1C707351C();

      OUTLINED_FUNCTION_48_7();
      sub_1C7055128();
      if (v3)
      {
LABEL_16:

        OUTLINED_FUNCTION_82_0();
        OUTLINED_FUNCTION_69_2();
        OUTLINED_FUNCTION_87_5();

        __asm { BRAA            X3, X16 }
      }

      v4 = *(v0 + 352);
      v5 = *(v0 + 328);
      OUTLINED_FUNCTION_141_1(*(v0 + 344), *(*(v0 + 344) + 24));
      OUTLINED_FUNCTION_132();
      v6 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 16);
      *(v0 + 272) = 8;
      *(v0 + 280) = v6;
      *(v0 + 288) = v6;
      *(v0 + 296) = 5;
      *(v0 + 304) = 0x3FE0000000000000;
      v7 = *(v4 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      type metadata accessor for FreeformStoryCurator();
      OUTLINED_FUNCTION_137();
      result = FreeformStoryCurator.init(configuration:photoLibrary:)((v0 + 272), v7);
      v9 = 0;
      *(v0 + 408) = result;
      v10 = *(v5 + 16);
      v11 = v5 + 32;
      v12 = MEMORY[0x1E69E7CC0];
      break;
  }

LABEL_4:
  *(v0 + 416) = v12;
  v13 = (v11 + (v9 << 7));
  while (v10 != v9)
  {
    if (v9 >= v10)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    result = memcpy((v0 + 16), v13, 0x80uLL);
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_26;
    }

    if ((*(v0 + 128) & 1) == 0)
    {
      sub_1C6FB7BB8(v0 + 16, v0 + 144);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C716D668();
      }

      v16 = *(v12 + 16);
      v15 = *(v12 + 24);
      if (v16 >= v15 >> 1)
      {
        OUTLINED_FUNCTION_15(v15);
        sub_1C716D668();
      }

      *(v12 + 16) = v16 + 1;
      result = memcpy((v12 + (v16 << 7) + 32), (v0 + 16), 0x80uLL);
      v9 = v14;
      goto LABEL_4;
    }

    ++v9;
    v13 += 128;
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 424) = v22;
  *v22 = v23;
  v22[1] = sub_1C7051F78;
  OUTLINED_FUNCTION_87_5();

  return FreeformStoryCurator.finalizeChapterCurations(storyChapters:)(v24, v25);
}

uint64_t sub_1C7051F78()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 432) = v0;

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7052098()
{
  v88 = v0;
  v1 = *(v0 + 312);
  if (*(v0 + 320))
  {
    if (*(v0 + 320) == 1)
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v2 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v2, qword_1EDD28B68);
      v3 = sub_1C754FEEC();
      v4 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v4))
      {
        v5 = OUTLINED_FUNCTION_23_1();
        *v5 = 134218240;
        *(v5 + 4) = v1;
        *(v5 + 12) = 2048;
        *(v5 + 14) = 0x3FE0000000000000;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v6, v7, v8, v9, v5, 0x16u);
        OUTLINED_FUNCTION_37();
      }

      v10 = 1;
      v1 = 3;
    }

    else
    {
      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v32 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v32, qword_1EDD28B68);
      v33 = sub_1C754FEEC();
      v34 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v34))
      {
        *OUTLINED_FUNCTION_127() = 0;
        OUTLINED_FUNCTION_88_1();
        _os_log_impl(v35, v36, v37, v38, v39, 2u);
        OUTLINED_FUNCTION_10_1();

        sub_1C7055178(v1, 2);
      }

      else
      {
      }

      v10 = 1;
      v1 = 4;
    }

LABEL_24:
    v41 = *(v0 + 368);
    v40 = *(v0 + 376);
    v42 = *(v0 + 360);
    OUTLINED_FUNCTION_70(*(v0 + 344), *(*(v0 + 344) + 24));
    OUTLINED_FUNCTION_112_1();
    sub_1C754F1AC();
    (*(v41 + 8))(v40, v42);

    OUTLINED_FUNCTION_82_0();

    return v43(v1, v10);
  }

  v11 = qword_1EDD09CF0;
  sub_1C75504FC();
  if (v11 != -1)
  {
    OUTLINED_FUNCTION_0_23();
    swift_once();
  }

  v12 = sub_1C754FF1C();
  __swift_project_value_buffer(v12, qword_1EDD28B68);
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_66(v14))
  {
    v15 = OUTLINED_FUNCTION_127();
    *v15 = 0;
    OUTLINED_FUNCTION_57_5();
    _os_log_impl(v16, v17, v18, v19, v15, 2u);
    OUTLINED_FUNCTION_37();
  }

  v20 = *(v0 + 336);

  v21 = *(v20 + *(type metadata accessor for StoryGenerationSession(0) + 24));
  if (v21)
  {
    sub_1C75504FC();
    sub_1C716A8F0(0xD000000000000018, 0x80000001C759A770, v21, v1);
  }

  v22 = *(v0 + 432);
  sub_1C7047A98(v1, v85);
  if (!v22)
  {
    v45 = v85[0];
    v44 = v85[1];
    v46 = v85[2];
    v47 = v86;
    if (v87)
    {
      v48 = OUTLINED_FUNCTION_12_5();
      sub_1C7055178(v48, v49);
      v50 = OUTLINED_FUNCTION_11_13();
      sub_1C7055188(v50, v51, v52, v53);
      v54 = sub_1C754FEEC();
      v55 = sub_1C75511BC();
      v56 = OUTLINED_FUNCTION_11_13();
      sub_1C70551B0(v56, v57, v58, v59, 1);
      if (os_log_type_enabled(v54, v55))
      {
        v60 = OUTLINED_FUNCTION_41_0();
        v84 = OUTLINED_FUNCTION_102();
        *v60 = 138412290;
        sub_1C6FE0D14();
        OUTLINED_FUNCTION_9_10();
        swift_allocError();
        *v61 = v45;
        *(v61 + 8) = v44;
        *(v61 + 16) = v46;
        *(v61 + 24) = v47;
        v62 = OUTLINED_FUNCTION_11_13();
        sub_1C7055188(v62, v63, v64, v65);
        v66 = _swift_stdlib_bridgeErrorToNSError();
        *(v60 + 4) = v66;
        *v84 = v66;
        _os_log_impl(&dword_1C6F5C000, v54, v55, "Failed generating chapters that match the criteria: %@.", v60, 0xCu);
        sub_1C6FB5FC8(v84, &qword_1EC215190);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v67 = OUTLINED_FUNCTION_12_5();
      sub_1C7055178(v67, v68);
      v10 = 1;
      v69 = OUTLINED_FUNCTION_11_13();
      sub_1C70551B0(v69, v70, v71, v72, 1);

      v1 = 2;
    }

    else
    {
      v73 = sub_1C754FEEC();
      v74 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v74))
      {
        v75 = OUTLINED_FUNCTION_127();
        *v75 = 0;
        _os_log_impl(&dword_1C6F5C000, v73, v74, "Successfully generated chapters that match the criteria, proceeding.", v75, 2u);
        OUTLINED_FUNCTION_109();

        v76 = OUTLINED_FUNCTION_11_13();
        sub_1C70551B0(v76, v77, v78, v79, 0);
        v80 = OUTLINED_FUNCTION_12_5();
        sub_1C7055178(v80, v81);
      }

      else
      {

        v82 = OUTLINED_FUNCTION_12_5();
        sub_1C7055178(v82, v83);
      }

      v10 = 0;
    }

    goto LABEL_24;
  }

  v23 = *(v0 + 344);
  v24 = OUTLINED_FUNCTION_12_5();
  sub_1C7055178(v24, v25);

  v26 = OUTLINED_FUNCTION_12_5();
  sub_1C7055178(v26, v27);
  OUTLINED_FUNCTION_10_3(v23);
  OUTLINED_FUNCTION_41_3();
  sub_1C754F1AC();
  v28 = OUTLINED_FUNCTION_15_1();
  v29(v28);

  OUTLINED_FUNCTION_6_0();

  return v30();
}

uint64_t sub_1C7052638()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();

  v0 = OUTLINED_FUNCTION_57_3();
  OUTLINED_FUNCTION_0_22(v0, v1);
  sub_1C754F1AC();
  v2 = OUTLINED_FUNCTION_57_0();
  v3(v2);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_142();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1C70526E8()
{
  OUTLINED_FUNCTION_42();
  v1[83] = v0;
  v1[82] = v2;
  v1[81] = v3;
  v1[80] = v4;
  v5 = sub_1C754DFFC();
  v1[84] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[85] = v6;
  v1[86] = OUTLINED_FUNCTION_77();
  v7 = type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  OUTLINED_FUNCTION_76(v7);
  v1[87] = OUTLINED_FUNCTION_77();
  v8 = sub_1C754F38C();
  v1[88] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[89] = v9;
  v1[90] = OUTLINED_FUNCTION_77();
  v10 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C7052804()
{
  v179 = v0;
  v1 = v0;
  v2 = v0 + 608;
  v3 = *(v0 + 656);
  v4 = *(v0 + 648);
  v5 = v3[3];
  OUTLINED_FUNCTION_141_1(v3, v5);
  OUTLINED_FUNCTION_132();
  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = *(v4 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  v166 = v1;
  __src = (v4 + 32);
  v163 = v8;
  for (i = v2; ; v2 = i)
  {
    *(v1 + 736) = v7;
    *(v1 + 728) = v9;
    if (v6 == v8)
    {
      v45 = *(v1 + 664);
      v9 = *(v45 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
      *(v1 + 744) = v9;
      v46 = sub_1C6FB6304();
      v2 = v45 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
      if (v46 < *(v45 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 48))
      {
        v16 = v46;
        if (qword_1EDD09CF0 != -1)
        {
          goto LABEL_97;
        }

        goto LABEL_54;
      }

      if (qword_1EDD09CF0 != -1)
      {
        OUTLINED_FUNCTION_0_23();
        swift_once();
      }

      v68 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v68, qword_1EDD28B68);
      v69 = sub_1C754FEEC();
      v70 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v70))
      {
        v71 = OUTLINED_FUNCTION_127();
        *v71 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v72, v73, v74, v75, v71, 2u);
LABEL_82:
        OUTLINED_FUNCTION_109();
      }

LABEL_84:

      v117 = *(v1 + 664);
      v118 = objc_autoreleasePoolPush();
      sub_1C70545E8(v117, v7, v178);
      v119 = v1;
      v120 = *(v1 + 744);
      v164 = v119[90];
      v167 = v119[89];
      v171 = v119[88];
      v176 = v119[87];
      v121 = v119[86];
      v122 = v119[85];
      v152 = v119[84];
      v158 = v119[91];
      __srca = v119[82];
      v123 = v119[80];

      objc_autoreleasePoolPop(v118);
      v155 = v178[0];
      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      sub_1C739D74C(ObjCClassFromMetadata);
      sub_1C71BA830(MEMORY[0x1E69E7CC0], v132, v125, v126, v127, v128, v129, v130, v131, v147, v148, v149, v150, v152, v155, v158, __srca, v164, v167, v171, v176, v177, v178[0], v178[1], v178[2]);

      v133 = objc_allocWithZone(MEMORY[0x1E69788E0]);
      v134 = v120;
      OUTLINED_FUNCTION_5_10();
      sub_1C71C8A5C();
      v136 = v135;
      OUTLINED_FUNCTION_85_2();
      v137 = sub_1C75504DC();
      OUTLINED_FUNCTION_85_2();
      v138 = sub_1C75504DC();
      v139 = v136;
      OUTLINED_FUNCTION_81_5();
      sub_1C75504FC();
      v140 = v139;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C754DFEC();
      v141 = sub_1C754DF8C();
      v143 = v142;
      OUTLINED_FUNCTION_81_5();

      (*(v122 + 8))(v121, v153);
      *v123 = v141;
      *(v123 + 8) = v143;
      *(v123 + 16) = 0;
      *(v123 + 24) = 0xE000000000000000;
      *(v123 + 32) = 3;
      OUTLINED_FUNCTION_59_4();
      *(v123 + 40) = v159;
      *(v123 + 48) = v144;
      *(v123 + 56) = 0xEA00000000006E6FLL;
      *(v123 + 64) = v140;
      *(v123 + 72) = v137;
      *(v123 + 80) = v138;
      *(v123 + 88) = 0;
      *(v123 + 96) = 0;
      *(v123 + 104) = v156;
      *(v123 + 112) = 0;
      *(v123 + 120) = MEMORY[0x1E69E7CC8];
      OUTLINED_FUNCTION_70(__srcb, __srcb[3]);
      OUTLINED_FUNCTION_75();
      sub_1C754F1AC();
      (*(v168 + 8))(v165, v172);

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_130_0();

      __asm { BRAA            X1, X16 }
    }

    v169 = v6;
    memcpy((v1 + 16), &__src[128 * v6], 0x80uLL);
    if (*(v1 + 128))
    {
      sub_1C6FB7BB8(v1 + 16, v1 + 144);
      goto LABEL_36;
    }

    v10 = *(v1 + 120);
    sub_1C6FB7BB8(v1 + 16, v1 + 272);
    sub_1C6FBC70C(v10);
    if ([v10 fetchedObjects])
    {
      v11 = OUTLINED_FUNCTION_300();
      sub_1C6F65BE8(v11, &qword_1EDD0FA70);
      v12 = sub_1C7550B5C();
    }

    else
    {
      v12 = MEMORY[0x1E69E7CC0];
    }

    if (v12 >> 62)
    {
      v13 = sub_1C75516BC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v7 >> 62;
    if (v7 >> 62)
    {
      v15 = sub_1C75516BC();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v15 + v13;
    if (__OFADD__(v15, v13))
    {
      goto LABEL_90;
    }

    v154 = v13;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v14)
      {
        v17 = v7 & 0xFFFFFFFFFFFFFF8;
        v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
        if (v18 >= v16)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_18:
      sub_1C75516BC();
      goto LABEL_19;
    }

    if (v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v7 = sub_1C75518CC();
    v17 = v7 & 0xFFFFFFFFFFFFFF8;
    v18 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
LABEL_20:
    v19 = *(v17 + 16);
    v16 = v18 - v19;
    v20 = v17 + 8 * v19;
    v151 = v17;
    if (v12 >> 62)
    {
      v22 = sub_1C75516BC();
      if (!v22)
      {
LABEL_34:

        if (v154 > 0)
        {
          goto LABEL_91;
        }

        goto LABEL_35;
      }

      v23 = v22;
      v24 = sub_1C75516BC();
      if (v16 < v24)
      {
        goto LABEL_94;
      }

      if (v23 < 1)
      {
        goto LABEL_96;
      }

      v148 = v24;
      v149 = v10;
      v150 = v9;
      v173 = v7;
      sub_1C705575C(&qword_1EDD06A58, &unk_1EC215150);
      for (j = 0; j != v23; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215150);
        v16 = sub_1C6FDD09C(v2, j, v12);
        v27 = *v26;
        (v16)(v2, 0);
        *(v20 + 32 + 8 * j) = v27;
      }

      v1 = v166;
      v7 = v173;
      v21 = v148;
    }

    else
    {
      v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v21)
      {
        goto LABEL_34;
      }

      if (v16 < v21)
      {
        goto LABEL_95;
      }

      sub_1C6F65BE8(0, &qword_1EDD0FA70);
      swift_arrayInitWithCopy();
    }

    if (v21 < v154)
    {
      goto LABEL_91;
    }

    if (v21 > 0)
    {
      v28 = *(v151 + 16);
      v29 = __OFADD__(v28, v21);
      v30 = v28 + v21;
      if (v29)
      {
        goto LABEL_93;
      }

      *(v151 + 16) = v30;
    }

LABEL_35:
    sub_1C6FBC718(v10);
LABEL_36:
    v31 = *(v1 + 56);
    v32 = *(v31 + 16);
    v33 = v9[2];
    v16 = v33 + v32;
    if (__OFADD__(v33, v32))
    {
      break;
    }

    sub_1C75504FC();
    if (!swift_isUniquelyReferenced_nonNull_native() || v16 > v9[3] >> 1)
    {
      sub_1C6FB25A8();
      v9 = v34;
    }

    v174 = v7;
    if (*(v31 + 16))
    {
      if ((v9[3] >> 1) - v9[2] < v32)
      {
        goto LABEL_89;
      }

      swift_arrayInitWithCopy();

      v35 = v9[2];
      if (v32)
      {
        v29 = __OFADD__(v35, v32);
        v35 += v32;
        if (v29)
        {
          goto LABEL_92;
        }

        v9[2] = v35;
      }
    }

    else
    {

      if (v32)
      {
        goto LABEL_88;
      }

      v35 = v9[2];
    }

    v36 = v1;
    v37 = *(v1 + 64);
    v38 = v36[9];
    v39 = v36[10];
    v5 = v36[11];
    v40 = v36[12];
    v41 = v9[3];
    sub_1C75504FC();
    v42 = v39;
    sub_1C75504FC();
    sub_1C75504FC();
    if (v35 >= v41 >> 1)
    {
      OUTLINED_FUNCTION_146();
      sub_1C6FB25A8();
      v9 = v44;
    }

    v9[2] = v35 + 1;
    v43 = &v9[5 * v35];
    v43[4] = v37;
    v43[5] = v38;
    v43[6] = v42;
    v43[7] = v5;
    v43[8] = v40;
    v8 = v163;
    v1 = v166;
    sub_1C6FBC664(v166 + 16);
    v6 = v169 + 1;
    v7 = v174;
  }

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
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  OUTLINED_FUNCTION_0_23();
  swift_once();
LABEL_54:
  v47 = sub_1C754FF1C();
  *(v1 + 752) = __swift_project_value_buffer(v47, qword_1EDD28B68);
  v48 = sub_1C754FEEC();
  v49 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v49))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_91();
    _os_log_impl(v50, v51, v52, v53, v54, 2u);
    OUTLINED_FUNCTION_37();
  }

  v55 = MEMORY[0x1E69E7CC0];
  if (!v16)
  {
LABEL_70:
    *(v1 + 760) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215168);
    v76 = swift_allocObject();
    *(v76 + 16) = xmmword_1C75604F0;
    *(v76 + 32) = sub_1C755068C();
    *(v76 + 40) = v77;
    v78 = *(v2 + 40);
    *(v76 + 72) = MEMORY[0x1E69E6530];
    *(v76 + 48) = v78;
    *(v76 + 80) = sub_1C755068C();
    *(v76 + 88) = v79;
    *(v76 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215170);
    *(v76 + 96) = v55;
    sub_1C75504FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0);
    v80 = v1;
    v1 = sub_1C75504DC();
    v80[96] = v1;
    v81 = [v9 photoAnalysisClient];
    v9 = v80;
    v80[97] = v81;
    if (v81)
    {
      v82 = v81;
      v83 = objc_allocWithZone(MEMORY[0x1E69BE630]);
      v56 = v82;
      v49 = [v83 initWithServiceProvider_];
      if (qword_1EC213F98 != -1)
      {
        goto LABEL_99;
      }

      goto LABEL_72;
    }

    v69 = sub_1C754FEEC();
    v111 = sub_1C755119C();
    if (OUTLINED_FUNCTION_66(v111))
    {
      v112 = OUTLINED_FUNCTION_127();
      *v112 = 0;
      OUTLINED_FUNCTION_57_5();
      _os_log_impl(v113, v114, v115, v116, v112, 2u);
      v1 = v80;
      goto LABEL_82;
    }

    v1 = v80;
    goto LABEL_84;
  }

  v178[0] = MEMORY[0x1E69E7CC0];
  v56 = v178;
  sub_1C716C9F0(0, v16 & ~(v16 >> 63), 0);
  if ((v16 & 0x8000000000000000) == 0)
  {
    v170 = v9;
    v175 = v47;
    v57 = 0;
    v55 = v178[0];
    v58 = v7 & 0xC000000000000001;
    v59 = v7;
    do
    {
      if (v58)
      {
        v60 = MEMORY[0x1CCA5DDD0](v57, v7);
      }

      else
      {
        v60 = *(v7 + 8 * v57 + 32);
      }

      v61 = v60;
      v62 = sub_1C70CAC04(v60);
      v64 = v63;

      v178[0] = v55;
      v66 = *(v55 + 16);
      v65 = *(v55 + 24);
      if (v66 >= v65 >> 1)
      {
        sub_1C716C9F0(v65 > 1, v66 + 1, 1);
        v55 = v178[0];
      }

      ++v57;
      *(v55 + 16) = v66 + 1;
      v67 = v55 + 16 * v66;
      *(v67 + 32) = v62;
      *(v67 + 40) = v64;
      v7 = v59;
    }

    while (v16 != v57);
    v1 = v166;
    v9 = v170;
    v47 = v175;
    goto LABEL_70;
  }

  __break(1u);
LABEL_99:
  swift_once();
LABEL_72:
  v84 = v9[87];
  __swift_project_value_buffer(v47, qword_1EC219F58);
  OUTLINED_FUNCTION_62_2();
  (*(v85 + 16))(v84);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180);
  v87 = (v84 + *(v86 + 28));
  v88 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v89 = [v88 processName];

  v90 = sub_1C755068C();
  v92 = v91;

  *v87 = v90;
  v87[1] = v92;
  *(v84 + *(v86 + 32)) = v49;
  v93 = MEMORY[0x1E69E7CC0];
  v94 = v163;
  if (v163)
  {
    v178[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D9B8(0, v163, 0);
    v93 = v178[0];
    v95 = __src;
    do
    {
      memcpy(v9 + 50, v95, 0x68uLL);
      sub_1C6FC061C((v9 + 50), (v9 + 63));
      v178[0] = v93;
      v97 = *(v93 + 16);
      v96 = *(v93 + 24);
      if (v97 >= v96 >> 1)
      {
        v98 = OUTLINED_FUNCTION_15(v96);
        sub_1C716D9B8(v98, v97 + 1, 1);
        v93 = v178[0];
      }

      *(v93 + 16) = v97 + 1;
      memcpy((v93 + 104 * v97 + 32), v9 + 50, 0x68uLL);
      v95 += 128;
      --v94;
    }

    while (v94);
  }

  v9[98] = sub_1C70541E8(v93);

  v99 = sub_1C75504FC();
  v100 = sub_1C71CD90C(v99);
  v9[99] = v100;
  v101 = swift_task_alloc();
  v9[100] = v101;
  *(v101 + 16) = v100;
  *(v101 + 24) = v1;
  v102 = swift_task_alloc();
  v9[101] = v102;
  *v102 = v9;
  v102[1] = sub_1C7053600;
  OUTLINED_FUNCTION_61_3(0x4164657461727563);
  OUTLINED_FUNCTION_130_0();

  return sub_1C729961C(v103, v104, v105, v106, v107, v108);
}

uint64_t sub_1C7053600()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 816) = v5;
  *(v3 + 824) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C705370C()
{
  v100 = v0;
  v1 = v0[102];

  if (*(v1 + 16))
  {

    sub_1C75504FC();
    v2 = sub_1C754FEEC();
    v3 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v3))
    {
      v4 = OUTLINED_FUNCTION_41_0();
      *v4 = 134217984;
      *(v4 + 4) = *(v1 + 16);

      OUTLINED_FUNCTION_91();
      _os_log_impl(v5, v6, v7, v8, v9, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    v16 = 0;
    v17 = v0[102];
    v95 = v0;
    v18 = v0[98];
    v99[0] = MEMORY[0x1E69E7CC0];
    v19 = *(v1 + 16);
    v92 = v17 + 32;
    v20 = v17 + 40;
    v85 = MEMORY[0x1E69E7CC0];
    v88 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v21 = v20 + 16 * v16;
    while (v19 != v16)
    {
      if (v16 >= *(v1 + 16))
      {
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      if (*(v18 + 16))
      {
        sub_1C75504FC();
        v22 = OUTLINED_FUNCTION_112_1();
        v24 = sub_1C6F78124(v22, v23);
        if (v25)
        {
          v26 = *(*(v18 + 56) + 8 * v24);

          MEMORY[0x1CCA5D040](v27);
          v28 = *((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((v99[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v28 >> 1)
          {
            OUTLINED_FUNCTION_15(v28);
            sub_1C7550B9C();
          }

          ++v16;
          OUTLINED_FUNCTION_154();
          sub_1C7550BEC();
          v85 = v99[0];
          goto LABEL_9;
        }
      }

      v21 += 16;
      ++v16;
    }

    v89 = v18;
    v29 = sub_1C706D7E0(v95[95]);
    v30 = 0;
    v98 = MEMORY[0x1E69E7CC0];
    v31 = v29 + 56;
    while (1)
    {
      if (v30 == v19)
      {
        v0 = v95;

        OUTLINED_FUNCTION_7_12();
        sub_1C7055128();
        v15 = v85;
        goto LABEL_41;
      }

      if (v30 >= *(v1 + 16))
      {
        goto LABEL_49;
      }

      v32 = (v92 + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      ++v30;
      if (!*(v29 + 16))
      {
        break;
      }

      sub_1C7551F3C();
      sub_1C7551F5C();
      sub_1C75504FC();
      sub_1C75505AC();
      v35 = sub_1C7551FAC();
      v36 = -1 << *(v29 + 32);
      v37 = v35 & ~v36;
      if ((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37))
      {
        v38 = ~v36;
        v39 = *(v29 + 48);
        while (1)
        {
          v40 = (v39 + 16 * v37);
          v41 = v40[1];
          if (v41)
          {
            v42 = *v40 == v34 && v41 == v33;
            if (v42 || (sub_1C7551DBC() & 1) != 0)
            {
              break;
            }
          }

          v37 = (v37 + 1) & v38;
          if (((*(v31 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v37) & 1) == 0)
          {
            goto LABEL_34;
          }
        }

LABEL_36:
      }

      else
      {
LABEL_34:
        if (!*(v89 + 16))
        {
          goto LABEL_36;
        }

        v43 = sub_1C6F78124(v34, v33);
        if ((v44 & 1) == 0)
        {
          goto LABEL_36;
        }

        v45 = *(*(v89 + 56) + 8 * v43);

        MEMORY[0x1CCA5D040](v46);
        v47 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v98 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v47 >> 1)
        {
          OUTLINED_FUNCTION_15(v47);
          sub_1C7550B9C();
        }

        OUTLINED_FUNCTION_55();
        sub_1C7550BEC();
        v88 = v98;
      }
    }

    sub_1C75504FC();
    goto LABEL_34;
  }

  v10 = sub_1C754FEEC();
  v11 = sub_1C755119C();
  if (OUTLINED_FUNCTION_128(v11))
  {
    *OUTLINED_FUNCTION_127() = 0;
    OUTLINED_FUNCTION_6(&dword_1C6F5C000, v12, v13, "Re-curation unexpectedly returned 0 assets.");
    OUTLINED_FUNCTION_109();
  }

  v14 = v0[97];

  OUTLINED_FUNCTION_7_12();
  sub_1C7055128();
  v15 = v0[92];
  v88 = MEMORY[0x1E69E7CC0];
LABEL_41:
  v48 = v0[103];
  v49 = v0[83];
  v50 = objc_autoreleasePoolPush();
  sub_1C70545E8(v49, v15, v99);
  if (v48)
  {

    objc_autoreleasePoolPop(v50);
  }

  else
  {
    v51 = v0[93];
    v86 = v0[90];
    v90 = v0[89];
    v93 = v0[88];
    v96 = v0[87];
    v52 = v0[86];
    v53 = v0[85];
    OUTLINED_FUNCTION_125_3();
    v54 = v0[80];

    objc_autoreleasePoolPop(v50);
    v79 = v99[0];
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1C739D74C(ObjCClassFromMetadata);
    sub_1C71BA830(v88, v63, v56, v57, v58, v59, v60, v61, v62, v77, v79, v81, v83, v86, v88, v90, v93, v96, v97, v98, v99[0], v99[1], v99[2], v99[3], v99[4]);

    v64 = objc_allocWithZone(MEMORY[0x1E69788E0]);
    v65 = v51;
    OUTLINED_FUNCTION_5_10();
    sub_1C71C8A5C();
    v67 = v66;
    OUTLINED_FUNCTION_15_1();
    v68 = sub_1C75504DC();
    OUTLINED_FUNCTION_15_1();
    v69 = sub_1C75504DC();
    v70 = v67;
    OUTLINED_FUNCTION_81_5();
    sub_1C75504FC();
    v71 = v70;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C754DFEC();
    v72 = sub_1C754DF8C();
    v74 = v73;
    OUTLINED_FUNCTION_81_5();

    (*(v53 + 8))(v52, v78);
    *v54 = v72;
    *(v54 + 8) = v74;
    *(v54 + 16) = 0;
    *(v54 + 24) = 0xE000000000000000;
    *(v54 + 32) = 3;
    OUTLINED_FUNCTION_59_4();
    *(v54 + 40) = v82;
    *(v54 + 48) = v75;
    *(v54 + 56) = 0xEA00000000006E6FLL;
    *(v54 + 64) = v71;
    *(v54 + 72) = v68;
    *(v54 + 80) = v69;
    *(v54 + 88) = 0;
    *(v54 + 96) = 0;
    *(v54 + 104) = v80;
    *(v54 + 112) = 0;
    *(v54 + 120) = MEMORY[0x1E69E7CC8];
    OUTLINED_FUNCTION_10_3(v84);
    OUTLINED_FUNCTION_113_3();
    sub_1C754F1AC();
    (*(v91 + 8))(v87, v94);

    OUTLINED_FUNCTION_43();

    v76();
  }
}

uint64_t sub_1C7053E00()
{
  v63 = v0;
  v1 = v0[103];

  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[103];
    v6 = OUTLINED_FUNCTION_41_0();
    v7 = OUTLINED_FUNCTION_102();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    OUTLINED_FUNCTION_91();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    sub_1C6FB5FC8(v7, &qword_1EC215190);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  v15 = v0[103];
  v16 = v0[97];

  OUTLINED_FUNCTION_7_12();
  sub_1C7055128();
  v17 = v0[92];
  v18 = v0[83];
  v19 = objc_autoreleasePoolPush();
  sub_1C70545E8(v18, v17, v62);
  v20 = v0[93];
  v55 = v0[90];
  v57 = v0[89];
  v59 = v0[88];
  v61 = v0[87];
  v21 = v0[86];
  v22 = v0[85];
  OUTLINED_FUNCTION_125_3();
  v23 = v0[80];

  objc_autoreleasePoolPop(v19);
  v49 = v62[0];
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C739D74C(ObjCClassFromMetadata);
  sub_1C71BA830(MEMORY[0x1E69E7CC0], v32, v25, v26, v27, v28, v29, v30, v31, v47, v49, v51, v53, v55, v57, v59, v61, v62[0], v62[1], v62[2], v62[3], v62[4], v62[5], v62[6], v62[7]);

  v33 = objc_allocWithZone(MEMORY[0x1E69788E0]);
  v34 = v20;
  OUTLINED_FUNCTION_5_10();
  sub_1C71C8A5C();
  v36 = v35;
  OUTLINED_FUNCTION_85_2();
  v37 = sub_1C75504DC();
  OUTLINED_FUNCTION_85_2();
  v38 = sub_1C75504DC();
  v39 = v36;
  OUTLINED_FUNCTION_81_5();
  sub_1C75504FC();
  v40 = v39;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C754DFEC();
  v41 = sub_1C754DF8C();
  v43 = v42;
  OUTLINED_FUNCTION_81_5();

  (*(v22 + 8))(v21, v48);
  *v23 = v41;
  *(v23 + 8) = v43;
  *(v23 + 16) = 0;
  *(v23 + 24) = 0xE000000000000000;
  *(v23 + 32) = 3;
  OUTLINED_FUNCTION_59_4();
  *(v23 + 40) = v52;
  *(v23 + 48) = v44;
  *(v23 + 56) = 0xEA00000000006E6FLL;
  *(v23 + 64) = v40;
  *(v23 + 72) = v37;
  *(v23 + 80) = v38;
  *(v23 + 88) = 0;
  *(v23 + 96) = 0;
  *(v23 + 104) = v50;
  *(v23 + 112) = 0;
  *(v23 + 120) = MEMORY[0x1E69E7CC8];
  OUTLINED_FUNCTION_70(v54, v54[3]);
  OUTLINED_FUNCTION_154();
  sub_1C754F1AC();
  (*(v58 + 8))(v56, v60);

  OUTLINED_FUNCTION_43();

  return v45();
}

uint64_t sub_1C70541E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = a1 + 32;
    v4 = MEMORY[0x1E69E7CC8];
    v34 = a1 + 32;
    v35 = *(a1 + 16);
    while (1)
    {
      v5 = v3 + 104 * v2;
      v6 = *(v5 + 40);
      v39 = *(v6 + 16);
      if (v39)
      {
        v37 = v2;
        v7 = *(v5 + 64);
        v40 = v6 + 32;
        sub_1C75504FC();
        swift_bridgeObjectRetain_n();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v36 = v7;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v8 = 0;
        v38 = v6;
        while (2)
        {
          if (v8 >= *(v6 + 16))
          {
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            result = sub_1C7551E4C();
            __break(1u);
            return result;
          }

          v9 = *(v40 + 40 * v8 + 16);
          sub_1C75504FC();
          v10 = v9;
          sub_1C75504FC();
          sub_1C75504FC();
          v41 = v10;
          if ([v10 fetchedObjects])
          {
            v11 = OUTLINED_FUNCTION_300();
            sub_1C6F65BE8(v11, &qword_1EDD0FA70);
            v12 = sub_1C7550B5C();
          }

          else
          {
            v12 = MEMORY[0x1E69E7CC0];
          }

          v42 = v8 + 1;
          v13 = 0;
          v43 = sub_1C6FB6304();
          while (v43 != v13)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v14 = MEMORY[0x1CCA5DDD0](v13, v12);
            }

            else
            {
              if (v13 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_33;
              }

              v14 = *(v12 + 8 * v13 + 32);
            }

            if (__OFADD__(v13, 1))
            {
              __break(1u);
LABEL_33:
              __break(1u);
LABEL_34:
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            v15 = v14;
            v16 = sub_1C6FCA214(v15);
            if (!v17)
            {
              goto LABEL_37;
            }

            v18 = v16;
            v19 = v17;
            v20 = v15;
            swift_isUniquelyReferenced_nonNull_native();
            v21 = sub_1C6F78124(v18, v19);
            if (__OFADD__(v4[2], (v22 & 1) == 0))
            {
              goto LABEL_34;
            }

            v23 = v21;
            v24 = v22;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215188);
            if (sub_1C7551A2C())
            {
              v25 = sub_1C6F78124(v18, v19);
              if ((v24 & 1) != (v26 & 1))
              {
                goto LABEL_38;
              }

              v23 = v25;
            }

            if (v24)
            {

              v27 = v4[7];
              v28 = *(v27 + 8 * v23);
              *(v27 + 8 * v23) = v20;
            }

            else
            {
              v4[(v23 >> 6) + 8] |= 1 << v23;
              v29 = (v4[6] + 16 * v23);
              *v29 = v18;
              v29[1] = v19;
              *(v4[7] + 8 * v23) = v20;

              v30 = v4[2];
              v31 = __OFADD__(v30, 1);
              v32 = v30 + 1;
              if (v31)
              {
                goto LABEL_35;
              }

              v4[2] = v32;
            }

            ++v13;
          }

          v6 = v38;
          ++v8;
          if (v42 != v39)
          {
            continue;
          }

          break;
        }

        swift_bridgeObjectRelease_n();

        v3 = v34;
        v1 = v35;
        v2 = v37;
      }

      if (++v2 == v1)
      {
        return v4;
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

void sub_1C70545E8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext + 8);
  v6 = *(a1 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);

  v7 = [v6 librarySpecificFetchOptions];
  [v7 setSharingFilter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C7564A90;
  v9 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 1);
  v10 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v8 + 40) = sub_1C6F6AF98(1684632949, 0xE400000000000000, 1);
  sub_1C71F8834(v8, v7);
  v11 = sub_1C6FB6304();
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v11;
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C716D6A4();
    if (v13 < 0)
    {
      goto LABEL_17;
    }

    v22 = a3;
    v14 = 0;
    v12 = v25;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA5DDD0](v14, a2);
      }

      else
      {
        if ((v14 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          sub_1C7551AAC();
          __break(1u);
          return;
        }

        if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v15 = *(a2 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = [v15 objectID];
      v24 = sub_1C6F65BE8(0, &qword_1EDD0FAB0);

      *&v23 = v17;
      v25 = v12;
      v18 = *(v12 + 16);
      if (v18 >= *(v12 + 24) >> 1)
      {
        sub_1C716D6A4();
        v12 = v25;
      }

      ++v14;
      *(v12 + 16) = v18 + 1;
      sub_1C6F9ED18(&v23, (v12 + 32 * v18 + 32));
      if (v13 == v14)
      {
        a3 = v22;
        break;
      }
    }
  }

  v19 = objc_opt_self();
  v20 = sub_1C740A230(v12, v7, v19);
  if (!v20)
  {
    goto LABEL_18;
  }

  v21 = v20;

  *a3 = v21;
}

uint64_t sub_1C70548E8(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 16);
  v6 = v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration;
  v7 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_configuration + 8);
  if (v5 >= v7)
  {
    v13 = 0;
    v14 = a1 + 64;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 64);
    v18 = (v15 + 63) >> 6;
    do
    {
      if (!v17)
      {
        while (1)
        {
          v19 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          if (v19 >= v18)
          {
            break;
          }

          ++v13;
          if (*(v14 + 8 * v19))
          {
            goto LABEL_10;
          }
        }

        v36 = 0;
        v37 = 0;
        v38 = 1 << *(a1 + 32);
        v39 = -1;
        if (v38 < 64)
        {
          v39 = ~(-1 << v38);
        }

        v40 = v39 & *(a1 + 64);
        v41 = (v38 + 63) >> 6;
        do
        {
          if (!v40)
          {
            do
            {
              v42 = v36 + 1;
              if (__OFADD__(v36, 1))
              {
                goto LABEL_34;
              }

              if (v42 >= v41)
              {
                goto LABEL_24;
              }

              ++v36;
            }

            while (!*(v14 + 8 * v42));
          }

          OUTLINED_FUNCTION_109_2();
          v45 = *(*(*(a1 + 56) + ((v43 << 9) | (8 * v44))) + 16);
          v46 = __OFADD__(v37, v45);
          v37 += v45;
        }

        while (!v46);
        __break(1u);
LABEL_24:
        if (a2)
        {
          sub_1C755180C();

          v51[0] = 0xD000000000000020;
          v51[1] = 0x80000001C759A8F0;
          v47 = sub_1C7551D8C();
          MEMORY[0x1CCA5CD70](v47);

          sub_1C7161CDC(0xD000000000000020, 0x80000001C759A8F0);
        }

        v48 = *(v6 + 24);
        if (v37 < v48)
        {
          sub_1C6FE0D14();
          OUTLINED_FUNCTION_9_10();
          v9 = swift_allocError();
          *v8 = v37;
          *(v8 + 8) = v48;
          *(v8 + 16) = 0;
          v10 = 4;
          goto LABEL_28;
        }

        return 0;
      }

LABEL_10:
      OUTLINED_FUNCTION_109_2();
      v22 = v21 | (v20 << 6);
      v3 = *(*(*(a1 + 56) + 8 * v22) + 16);
      v4 = *(v6 + 16);
    }

    while (v3 >= v4);
    v23 = (*(a1 + 48) + 16 * v22);
    v6 = *v23;
    a2 = v23[1];
    v24 = qword_1EDD09CF0;
    sub_1C75504FC();
    sub_1C75504FC();
    if (v24 != -1)
    {
LABEL_35:
      OUTLINED_FUNCTION_0_23();
      swift_once();
    }

    v25 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v25, qword_1EDD28B68);
    sub_1C75504FC();
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_20_1();
      v29 = OUTLINED_FUNCTION_20_1();
      v51[0] = v29;
      *v28 = 136315650;
      v30 = sub_1C6F765A4(v6, a2, v51);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2048;
      *(v28 + 14) = v3;
      *(v28 + 22) = 2048;
      *(v28 + 24) = v4;
      OUTLINED_FUNCTION_88_1();
      _os_log_impl(v31, v32, v33, v34, v35, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v29);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_10_1();
    }

    else
    {
    }

    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v50 = v3;
    *(v50 + 8) = v4;
    *(v50 + 16) = 0;
    *(v50 + 24) = 3;
  }

  else
  {
    sub_1C6FE0D14();
    OUTLINED_FUNCTION_9_10();
    v9 = swift_allocError();
    *v8 = v5;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    v10 = 2;
LABEL_28:
    *(v8 + 24) = v10;
  }

  return v9;
}

uint64_t sub_1C7054CAC(uint64_t a1, void *a2, uint64_t a3)
{
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v42, a2, sizeof(v42));
  v10 = a2[26];
  memcpy(v41, a2 + 27, sizeof(v41));
  swift_storeEnumTagMultiPayload();
  v27[2] = v9;
  sub_1C75504FC();
  v11 = sub_1C706CC1C(sub_1C7055510, v27, v10);
  OUTLINED_FUNCTION_48_7();
  sub_1C7055128();
  v12 = *(v11 + 2);

  v13 = v12 < 2;
  v14 = objc_opt_self();
  [v14 chapterValidatorMatchingRatioThresholdPerShotForFocusedChapters];
  v16 = v15;
  [v14 chapterValidatorMinimumRatioOfMatchingShotsForFocusedChapters];
  v18 = v17;
  v19 = [v14 chapterValidatorMinimumNumberOfMatchingShotsForFocusedChapters];
  [v14 chapterValidatorMinimumRatioOfNonoverlappingAssetsForDistinctShot];
  v21 = v20;
  v22 = [v14 chapterValidatorMinimumNumberOfRetrievedFilteredAssetPerChapter];
  [v14 chapterValidatorMinimumCoverageOfStoryAssetsInFinalChapters];
  v31[0] = v13;
  v31[1] = v13;
  v31[2] = 0;
  v32 = 2;
  v33 = v16;
  v34 = v18;
  v35 = v19;
  v36 = 0;
  v37 = 0x3FE0000000000000;
  v38 = v21;
  v39 = v22;
  v40 = v23;
  v24 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence22FreeformStoryGenerator_storyPhotoLibraryContext);
  type metadata accessor for FreeformStoryChapterValidator();
  OUTLINED_FUNCTION_137();

  sub_1C70B0168(v31, v24, a3);
  memcpy(v28, v42, sizeof(v28));
  v29 = v10;
  memcpy(v30, v41, sizeof(v30));
  v25 = sub_1C70AF904(a1, v28);

  return v25;
}

unint64_t sub_1C7054F1C()
{
  result = qword_1EDD06CE8[0];
  if (!qword_1EDD06CE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD06CE8);
  }

  return result;
}

uint64_t sub_1C7054F70()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_142();

  return sub_1C704F3EC(v3, v4, v5, v6, v7, v8);
}

unint64_t sub_1C705501C()
{
  result = qword_1EC216568;
  if (!qword_1EC216568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216568);
  }

  return result;
}

uint64_t sub_1C7055070()
{
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_123();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_142();

  return sub_1C72A2C40(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_1C7055128()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C7055178(uint64_t a1, char a2)
{
  if (!a2)
  {
  }

  return result;
}

id sub_1C7055188(id result, id a2, uint64_t a3, char a4)
{
  if (a4 == 11)
  {
    return result;
  }

  if (a4 == 10 || !a4)
  {
    return sub_1C75504FC();
  }

  return result;
}

void sub_1C70551B0(void *a1, id a2, uint64_t a3, char a4, char a5)
{
  if (a5)
  {
    sub_1C70551BC(a1, a2, a3, a4);
  }
}

void sub_1C70551BC(void *a1, id a2, uint64_t a3, char a4)
{
  if (a4 == 11)
  {
  }

  else if (a4 == 10 || !a4)
  {
  }
}

uint64_t sub_1C7055204()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_44();

  return sub_1C70510D4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7055334()
{
  OUTLINED_FUNCTION_42();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_5_2(v1);
  *v2 = v3;
  v2[1] = sub_1C6F739D4;
  v4 = OUTLINED_FUNCTION_119_3();

  return sub_1C70519BC(v4, v0);
}

id sub_1C70553C8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_1C70553D8();
  }

  else
  {
    return a1;
  }
}

void sub_1C70553E0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_1C70553F0();
  }

  else
  {
  }
}

unint64_t sub_1C70553F8()
{
  result = qword_1EC216580;
  if (!qword_1EC216580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC216580);
  }

  return result;
}

uint64_t sub_1C705544C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C70554BC()
{
  result = qword_1EDD08190;
  if (!qword_1EDD08190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08190);
  }

  return result;
}

uint64_t sub_1C7055530()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_113_3();
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_44();

  return sub_1C704F7A0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C70555F8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  OUTLINED_FUNCTION_12();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C705575C(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    OUTLINED_FUNCTION_63();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C70557A0()
{
  OUTLINED_FUNCTION_115_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_5_2(v0);
  *v1 = v2;
  v1[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_119_3();
  OUTLINED_FUNCTION_75();
  OUTLINED_FUNCTION_87_5();

  return sub_1C7050650(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7055874(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_62_2();
  (*v3)(a2);
  return a2;
}

uint64_t OUTLINED_FUNCTION_53_8(unint64_t *a1, uint64_t *a2)
{

  return sub_1C705575C(a1, a2);
}

uint64_t OUTLINED_FUNCTION_54_7()
{
}

uint64_t OUTLINED_FUNCTION_92_4()
{
}

uint64_t OUTLINED_FUNCTION_103_4()
{

  return sub_1C754F1AC();
}

uint64_t OUTLINED_FUNCTION_105_4()
{
}

uint64_t OUTLINED_FUNCTION_107_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_114_3()
{
  v0[397] = v0[160];
  result = v0[161];
  v0[398] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_133_2(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return MEMORY[0x1EEE6DFA0](a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_134_1(uint64_t a1, _BYTE *a2)
{
  *a2 = 2;

  return swift_willThrow();
}

id OUTLINED_FUNCTION_136_1(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2112;

  return v2;
}

void OUTLINED_FUNCTION_138_2(uint64_t a1)
{

  sub_1C7161CDC(a1, v1);
}

void *OUTLINED_FUNCTION_139_1(void *a1)
{

  return memcpy(a1, (v1 + 16), 0x130uLL);
}

uint64_t sub_1C7055CDC()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD09AE0);
  __swift_project_value_buffer(v0, qword_1EDD09AE0);
  return sub_1C754FEFC();
}

uint64_t PersonalTraitGenerator.__allocating_init(configuration:storyPhotoLibraryContext:)(const void *a1, uint64_t *a2)
{
  v4 = swift_allocObject();
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = a2[2];
  memcpy((v4 + 16), a1, 0xD8uLL);
  *(v4 + 232) = v5;
  *(v4 + 240) = v6;
  *(v4 + 248) = v7;
  return v4;
}

uint64_t PersonalTraitGenerator.init(configuration:storyPhotoLibraryContext:)(void *__src, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = a2[2];
  memcpy((v2 + 16), __src, 0xD8uLL);
  *(v2 + 232) = v3;
  *(v2 + 240) = v4;
  *(v2 + 248) = v5;
  return v2;
}

uint64_t PersonalTraitGenerator.generate(from:assetUUIDs:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[15] = v4;
  v1[16] = v0;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = sub_1C754F38C();
  v1[17] = v8;
  v1[18] = *(v8 - 8);
  v1[19] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7055EFC()
{
  __swift_project_boxed_opaque_existential_1(v0[14], *(v0[14] + 24));
  sub_1C754F1CC();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[20] = v1;
  *v1 = v2;
  v1[1] = sub_1C7055FDC;
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];

  return sub_1C7056238(v6, v0 + 2, v4, v5, v3);
}

uint64_t sub_1C7055FDC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C70560D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_70(*(v0 + 112), *(*(v0 + 112) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7056188()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  OUTLINED_FUNCTION_70(*(v0 + 112), *(*(v0 + 112) + 24));
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C7056238(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[429] = v5;
  v6[428] = a5;
  v6[427] = a4;
  v6[426] = a3;
  v6[425] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8);
  v6[430] = swift_task_alloc();
  v8 = sub_1C754F2FC();
  v6[431] = v8;
  v6[432] = *(v8 - 8);
  v6[433] = swift_task_alloc();
  v6[434] = swift_task_alloc();
  v6[435] = swift_task_alloc();
  v6[436] = swift_task_alloc();
  v6[437] = swift_task_alloc();
  memcpy(v6 + 390, a2, 0x50uLL);

  return MEMORY[0x1EEE6DFA0](sub_1C7056384, 0, 0);
}

uint64_t sub_1C7056384()
{
  v63 = v0;
  sub_1C754F2CC();
  v1 = *(v0 + 3448);
  v57 = *(v0 + 3440);
  v2 = *(v0 + 3432);
  v3 = *(v0 + 3416);
  v59 = *(v0 + 3408);
  sub_1C754F2BC();
  sub_1C754F2BC();
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C754F17C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v4 = swift_allocBox();
  v6 = v5;
  *(v0 + 3504) = v4;
  sub_1C754F29C();
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v1);
  v7 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v7);
  sub_1C6FB5E28(v0 + 3240, v0 + 3280);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v4;
  v8[5] = v2;
  memcpy(v8 + 6, (v0 + 3120), 0x50uLL);
  v8[16] = v59;
  sub_1C6FD80E4((v0 + 3280), (v8 + 17));

  sub_1C7027A20(v0 + 3120, v0 + 3040);
  sub_1C75504FC();
  sub_1C7293D80();
  *(v0 + 3512) = v9;
  type metadata accessor for LibraryUnderstandingAvailabilityMonitor();
  memcpy((v0 + 16), (v2 + 16), 0xD8uLL);
  memcpy((v0 + 448), (v2 + 16), 0xD8uLL);
  sub_1C70592B4(v0 + 16, v0 + 664);
  static LibraryUnderstandingAvailabilityMonitor.isAvailableForPersonalTraits(configuration:)(v0 + 448, (v0 + 3384));
  memcpy((v0 + 1096), (v0 + 448), 0xD8uLL);
  sub_1C7059364(v0 + 1096);
  v10 = *(v0 + 3384);
  *(v0 + 3376) = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v11 = sub_1C754FF1C();
    __swift_project_value_buffer(v11, qword_1EDD09AE0);
    sub_1C75504FC();
    v12 = sub_1C754FEEC();
    v13 = sub_1C75511BC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v60 = v4;
      *v14 = 136315138;
      sub_1C705968C();
      v15 = sub_1C7550F9C();
      v17 = v16;

      v18 = sub_1C6F765A4(v15, v17, &v60);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C6F5C000, v12, v13, "Library Understanding for Personal Trait is not available for the following reasons: %s.", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    __swift_project_value_buffer(v11, qword_1EDD09AE0);
    sub_1C754FEEC();
    v39 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v39))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v40, v41, "Using the Entity Net data source for Personal Traits in addition to the graph");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_18_9();
    v42 = v4[29];
    type metadata accessor for PersonalTraitGenerator.VUAssetSampler();
    swift_allocObject();
    sub_1C75504FC();
    v43 = sub_1C7499708(v11, v42);
    OUTLINED_FUNCTION_27_10(v43);
    memcpy((v0 + 1744), v4 + 2, 0xD8uLL);
    OUTLINED_FUNCTION_15_16();
    swift_allocObject();
    *(v0 + 3576) = PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)((v0 + 1744), (v0 + 3320));
    OUTLINED_FUNCTION_8_12();
    sub_1C70596E0(v44, v45);
    v46 = OUTLINED_FUNCTION_21_14();
    v47(v46);
    sub_1C70592B4(v0 + 1528, v0 + 1960);
    v48 = &unk_1EDD09000;

    v49 = swift_task_alloc();
    *(v0 + 3584) = v49;
    *v49 = v0;
    OUTLINED_FUNCTION_4_14(v49);
    OUTLINED_FUNCTION_25_7();

    return PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(v50, v51, v52, v53);
  }

  else
  {
    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v19 = sub_1C754FF1C();
    *(v0 + 3520) = __swift_project_value_buffer(v19, qword_1EDD09AE0);
    v20 = sub_1C754FEEC();
    v21 = sub_1C75511BC();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_127();
      *v22 = 0;
      _os_log_impl(&dword_1C6F5C000, v20, v21, "Using the Library Understanding data source for Personal Traits in addition to the graph", v22, 2u);
      OUTLINED_FUNCTION_109();
    }

    v58 = *(v0 + 3472);
    v23 = *(v0 + 3456);
    v55 = *(v0 + 3480);
    v56 = *(v0 + 3448);
    v24 = *(v0 + 3432);
    v25 = *(v0 + 3416);

    v26 = *(v24 + 240);
    v27 = *(v24 + 248);
    v60 = *(v24 + 232);
    v61 = v26;
    v62 = v27;
    type metadata accessor for PersonalTraitGenerator.MomentSampler();
    swift_allocObject();
    sub_1C75504FC();
    v28 = v60;

    v29 = OUTLINED_FUNCTION_15_1();
    *(v0 + 3528) = sub_1C749B0EC(v29, v30, 0, v31);
    OUTLINED_FUNCTION_70(v25, v3[3]);
    sub_1C754F17C();
    sub_1C754F29C();
    OUTLINED_FUNCTION_26_9((v0 + 2824));
    OUTLINED_FUNCTION_26_9((v0 + 1312));
    v32 = *(v24 + 232);
    v33 = *(v24 + 240);
    v34 = *(v24 + 248);
    *(v0 + 3344) = v32;
    *(v0 + 3352) = v33;
    *(v0 + 3360) = v34;
    type metadata accessor for PersonalTraitLibraryUnderstandingDataSource();
    swift_allocObject();
    sub_1C70592B4(v0 + 2824, v0 + 232);
    v35 = v32;

    *(v0 + 3536) = PersonalTraitLibraryUnderstandingDataSource.init(configuration:storyPhotoLibraryContext:)((v0 + 1312), (v0 + 3344));
    sub_1C70596E0(&qword_1EC2165D0, type metadata accessor for PersonalTraitGenerator.MomentSampler);
    (*(v23 + 32))(v58, v55, v56);

    v36 = swift_task_alloc();
    *(v0 + 3544) = v36;
    *v36 = v0;
    v36[1] = sub_1C7056C8C;
    OUTLINED_FUNCTION_25_7();

    return PersonalTraitLibraryUnderstandingDataSource.generatePersonalTraits(assetSampler:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7056C8C(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *v5 = *v2;
  *(v4 + 3552) = v1;

  if (!v1)
  {
    *(v4 + 3560) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7056DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD2904();

  __swift_destroy_boxed_opaque_existential_1((v10 + 400));
  v11 = OUTLINED_FUNCTION_15_1();
  v12(v11);
  v13 = v10[444];
  sub_1C754F2CC();
  if (v13)
  {
    OUTLINED_FUNCTION_17_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v10 + 405));

    v14 = OUTLINED_FUNCTION_15_1();
    v15(v14);
    OUTLINED_FUNCTION_24_13();
    v16 = OUTLINED_FUNCTION_0_24();
    v17(v16);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    v27 = v10[426];
    OUTLINED_FUNCTION_26_9(v10 + 272);
    OUTLINED_FUNCTION_26_9(v10 + 299);
    v28 = *(v27 + 16);
    type metadata accessor for PersonalTraitSelector(0);
    OUTLINED_FUNCTION_137();
    sub_1C70592B4((v10 + 272), (v10 + 326));
    v10[451] = PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(v10 + 299, v28);
    v29 = swift_task_alloc();
    v10[452] = v29;
    v10[453] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    v10[454] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    *v29 = v10;
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DA10](v30, v31, v32, v33, v34);
  }
}

uint64_t sub_1C7057020(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 3592) = v1;

  if (!v1)
  {
    *(v5 + 3600) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7057134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  sub_1C6FD2904();

  v11 = v10[449];
  sub_1C754F2CC();
  if (v11)
  {
    OUTLINED_FUNCTION_17_14();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1((v10 + 405));

    v12 = OUTLINED_FUNCTION_15_1();
    v13(v12);
    OUTLINED_FUNCTION_24_13();
    v14 = OUTLINED_FUNCTION_0_24();
    v15(v14);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_88_0();

    return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  else
  {
    v25 = v10[426];
    OUTLINED_FUNCTION_26_9(v10 + 272);
    OUTLINED_FUNCTION_26_9(v10 + 299);
    v26 = *(v25 + 16);
    type metadata accessor for PersonalTraitSelector(0);
    OUTLINED_FUNCTION_137();
    sub_1C70592B4((v10 + 272), (v10 + 326));
    v10[451] = PersonalTraitSelector.init(configuration:totalNumberOfAssets:)(v10 + 299, v26);
    v27 = swift_task_alloc();
    v10[452] = v27;
    v10[453] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    v10[454] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    *v27 = v10;
    OUTLINED_FUNCTION_6_20();
    OUTLINED_FUNCTION_88_0();

    return MEMORY[0x1EEE6DA10](v28, v29, v30, v31, v32);
  }
}

uint64_t sub_1C7057368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 3640) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C705746C()
{
  v31 = v0;
  v1 = *(v0 + 3640);
  v29._rawValue = *(v0 + 3368);
  sub_1C6FD2904();
  sub_1C754F2DC();
  if (v1)
  {
    OUTLINED_FUNCTION_22_13();
    v2 = *(v0 + 3488);
    v3 = *(v0 + 3456);
    v4 = *(v0 + 3448);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 3240);

    (*(v3 + 8))(v2, v4);
LABEL_10:
    OUTLINED_FUNCTION_24_13();
    v19 = OUTLINED_FUNCTION_0_24();
    v20(v19);

    OUTLINED_FUNCTION_43();
    goto LABEL_11;
  }

  PersonalTraitSelector.selectTraits(from:)(v29);
  if (v5)
  {
    OUTLINED_FUNCTION_22_13();
    v6 = *(v0 + 3488);
    v7 = *(v0 + 3456);
    v8 = *(v0 + 3448);

    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v0 + 3240);

    (*(v7 + 8))(v6, v8);
    goto LABEL_10;
  }

  rawValue = v29._rawValue;
  v10 = v30;
  if (qword_1EDD09AD8 != -1)
  {
    OUTLINED_FUNCTION_1_25();
  }

  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EDD09AE0);
  sub_1C75504FC();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = v15;
    *v14 = 136315138;
    v30 = v10;
    v16 = PersonalTraitSelector.SelectionResult.description.getter();
    v18 = sub_1C6F765A4(v16, v17, &v28);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Personal traits selection results:\n\n%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  sub_1C754F2DC();
  sub_1C754F2EC();
  v22 = rawValue;
  v23 = *(v0 + 3456);
  v26 = *(v0 + 3424);
  v27 = *(v0 + 3448);
  v24 = *(v0 + 3400);

  *v24 = v22;
  v24[1] = v10;
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1(v0 + 3240);

  (*(v23 + 8))(v26, v27);

  OUTLINED_FUNCTION_43();
LABEL_11:

  return v25();
}

uint64_t sub_1C7057938()
{
  v4 = *(v1 + 3552);
  *(v1 + 3392) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  if ((swift_dynamicCast() & 1) != 0 && *(v1 + 3648) == 1)
  {

    v6 = sub_1C754FEEC();
    v7 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v7))
    {
      v8 = OUTLINED_FUNCTION_127();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v0, "Not enough processing of overnight Library Understanding themes", v8, 2u);
      OUTLINED_FUNCTION_109();
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v1 + 3200);

    if (qword_1EDD09AD8 != -1)
    {
      OUTLINED_FUNCTION_1_25();
    }

    v18 = sub_1C754FF1C();
    __swift_project_value_buffer(v18, qword_1EDD09AE0);
    sub_1C754FEEC();
    v19 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v19))
    {
      *OUTLINED_FUNCTION_127() = 0;
      OUTLINED_FUNCTION_6(&dword_1C6F5C000, v20, v21, "Using the Entity Net data source for Personal Traits in addition to the graph");
      OUTLINED_FUNCTION_109();
    }

    OUTLINED_FUNCTION_18_9();
    v22 = *(v2 + 232);
    type metadata accessor for PersonalTraitGenerator.VUAssetSampler();
    swift_allocObject();
    sub_1C75504FC();
    v23 = sub_1C7499708(v0, v22);
    OUTLINED_FUNCTION_27_10(v23);
    memcpy((v1 + 1744), (v2 + 16), 0xD8uLL);
    OUTLINED_FUNCTION_15_16();
    swift_allocObject();
    *(v1 + 3576) = PersonalTraitEntityNetDataSource.init(configuration:storyPhotoLibraryContext:)((v1 + 1744), (v1 + 3320));
    OUTLINED_FUNCTION_8_12();
    sub_1C70596E0(v24, v25);
    v26 = OUTLINED_FUNCTION_21_14();
    v27(v26);
    sub_1C70592B4(v1 + 1528, v1 + 1960);
    v28 = v3;

    v29 = swift_task_alloc();
    *(v1 + 3584) = v29;
    *v29 = v1;
    v30 = OUTLINED_FUNCTION_4_14(v29);

    return PersonalTraitEntityNetDataSource.generateLibraryBasedPersonalTraits(assetSampler:eventRecorder:progressReporter:)(v30, v31, v32, v33);
  }

  else
  {
    v9 = *(v1 + 3496);
    v10 = *(v1 + 3488);
    v11 = *(v1 + 3456);
    v12 = *(v1 + 3448);

    __swift_destroy_boxed_opaque_existential_1(v1 + 3200);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
    sub_1C7550E1C();

    __swift_destroy_boxed_opaque_existential_1(v1 + 3240);

    v13 = *(v11 + 8);
    v13(v10, v12);
    v13(v9, v12);
    v14 = OUTLINED_FUNCTION_0_24();
    v15(v14);

    OUTLINED_FUNCTION_43();

    return v16();
  }
}

uint64_t sub_1C7057D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2165B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1(v10 + 3240);

  v11 = OUTLINED_FUNCTION_15_1();
  v12(v11);
  v13 = OUTLINED_FUNCTION_0_24();
  v14(v13);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1C7057E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_75_1();
  v11 = v10[436];
  v12 = v10[432];
  v13 = v10[431];

  sub_1C7550E1C();

  __swift_destroy_boxed_opaque_existential_1((v10 + 405));

  (*(v12 + 8))(v11, v13);
  v14 = OUTLINED_FUNCTION_0_24();
  v15(v14);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_88_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1C7057F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[15] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218C90);
  v8[20] = swift_task_alloc();
  v9 = sub_1C754F2FC();
  v8[21] = v9;
  v8[22] = *(v9 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C7058088, 0, 0);
}

uint64_t sub_1C7058088()
{
  OUTLINED_FUNCTION_75_1();
  v1 = v0[25];
  v3 = v0[20];
  v2 = v0[21];
  swift_beginAccess();
  sub_1C705544C(v1, v3);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v0[20];
    if (__swift_getEnumTagSinglePayload(v4, 1, v0[21]) != 1)
    {
      sub_1C7059728(v4);
    }

    return sub_1C7551AAC();
  }

  else
  {
    v6 = v0[23];
    v7 = v0[24];
    v8 = v0[21];
    v9 = v0[17];
    v10 = *(v0[22] + 32);
    v10(v7, v0[20], v8);
    memcpy(v0 + 2, v9, 0x50uLL);
    v10(v6, v7, v8);
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    v0[26] = v11;
    *v11 = v12;
    v11[1] = sub_1C7058260;

    return PersonalTraitGenerator.generateGraphBasedPersonalTraits(from:assetUUIDs:eventRecorder:progressReporter:)();
  }
}

uint64_t sub_1C7058260(uint64_t a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 216) = v1;

  if (!v1)
  {
    *(v5 + 224) = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C7058374()
{
  OUTLINED_FUNCTION_42();
  **(v0 + 120) = *(v0 + 224);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C70583F0()
{
  OUTLINED_FUNCTION_42();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PersonalTraitGenerator.generateGraphBasedPersonalTraits(from:assetUUIDs:eventRecorder:progressReporter:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[163] = v0;
  v1[162] = v4;
  v1[161] = v5;
  v1[160] = v6;
  type metadata accessor for PhotoAnalysisMomentGraphService(0);
  v1[164] = swift_task_alloc();
  v7 = sub_1C754F38C();
  v1[165] = v7;
  v1[166] = *(v7 - 8);
  v1[167] = swift_task_alloc();
  memcpy(v1 + 137, v3, 0x50uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7058564()
{
  v60 = v0;
  v1 = v0[161];
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v4 = v0[163];
  v5 = [*(v4 + 232) photoAnalysisClient];
  v0[168] = v5;
  if (!v5)
  {
    v21 = v0[167];
    v22 = v0[166];
    v23 = v0[165];
    v24 = v0[162];
    v25 = v0[161];
    sub_1C7059190();
    swift_allocError();
    *v26 = 0;
    v26[1] = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_70(v25, v1[3]);
    sub_1C754F1AC();
    (*(v22 + 8))(v21, v23);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v27 + 8))(v24);

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_20_4();

    __asm { BRAA            X1, X16 }
  }

  v6 = v5;
  v55 = v4;
  v7 = objc_allocWithZone(MEMORY[0x1E69BE620]);
  v56 = v6;
  v8 = [v7 initWithServiceProvider_];
  if (qword_1EC213F98 != -1)
  {
    swift_once();
  }

  v9 = v0[164];
  v10 = sub_1C754FF1C();
  v11 = __swift_project_value_buffer(v10, qword_1EC219F58);
  (*(*(v10 - 8) + 16))(v9, v11, v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20);
  v13 = (v9 + *(v12 + 28));
  v14 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v15 = [v14 processName];

  v16 = sub_1C755068C();
  v18 = v17;

  *v13 = v16;
  v13[1] = v18;
  *(v9 + *(v12 + 32)) = v8;
  sub_1C754DBCC();
  OUTLINED_FUNCTION_137();
  v0[169] = sub_1C754DBBC();
  memcpy(v0 + 147, v0 + 137, 0x50uLL);
  sub_1C7059260();
  v19 = sub_1C754DBAC();
  v0[170] = v19;
  v0[171] = v20;
  v28 = v19;
  v29 = v20;
  v30 = v0[163];
  memcpy(v0 + 2, (v30 + 16), 0xD8uLL);
  memcpy(v0 + 29, (v30 + 16), 0xD8uLL);
  sub_1C70592B4((v0 + 2), (v0 + 56));
  sub_1C7059310();
  v31 = sub_1C754DBAC();
  v0[172] = v31;
  v0[173] = v32;
  v33 = v31;
  v34 = v32;
  v35 = v0[163];
  v36 = v0[160];
  memcpy(v0 + 110, v0 + 29, 0xD8uLL);
  sub_1C7059364((v0 + 110));
  v37 = sub_1C75504FC();
  v38 = sub_1C706D154(v37);
  v39 = *(v35 + 240);
  v40 = *(v35 + 248);
  v57 = *(v55 + 232);
  v58 = v39;
  v59 = v40;
  v41 = v57;

  v42 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v38, &v57);
  v0[174] = v42;

  v43 = swift_task_alloc();
  v0[175] = v43;
  v43[2] = v36;
  v43[3] = v42;
  v43[4] = v28;
  v43[5] = v29;
  v43[6] = v33;
  v43[7] = v34;
  v43[8] = v39;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  v0[176] = v44;
  *v44 = v45;
  v44[1] = sub_1C7058BFC;
  OUTLINED_FUNCTION_20_4();

  return sub_1C7299A58(v46, v47, v48, v49, v50, v51, v52);
}