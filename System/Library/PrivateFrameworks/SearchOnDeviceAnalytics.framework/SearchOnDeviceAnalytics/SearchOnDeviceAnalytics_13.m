unint64_t sub_21B0BD140()
{
  result = qword_27CD47110;
  if (!qword_27CD47110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47110);
  }

  return result;
}

void static SODAParams.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 57);
  v12 = *(a1 + 58);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  v15 = *(a2 + 8);
  v17 = *(a2 + 16);
  v16 = *(a2 + 24);
  v18 = *(a2 + 32);
  v19 = *(a2 + 33);
  v21 = *(a2 + 40);
  v20 = *(a2 + 48);
  v22 = *(a2 + 56);
  v23 = *(a2 + 57);
  v24 = *(a2 + 58);
  v25 = *(a2 + 64);
  v26 = *(a2 + 72);
  if (v3)
  {
    if (!v15)
    {
      goto LABEL_30;
    }

    if (*a1 == *a2 && v3 == v15)
    {
      if (v5 != v17)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v36 = *(a2 + 57);
      v37 = *(a1 + 56);
      v42 = *(a2 + 58);
      v38 = *(a1 + 57);
      v39 = *(a1 + 58);
      v44 = *(a2 + 72);
      v46 = *(a2 + 64);
      v40 = *(a1 + 72);
      v28 = *(a1 + 64);
      if ((sub_21B112D04() & 1) == 0)
      {
        goto LABEL_30;
      }

      v13 = v28;
      v14 = v40;
      v26 = v44;
      v25 = v46;
      v11 = v38;
      v12 = v39;
      v24 = v42;
      v23 = v36;
      v10 = v37;
      if (v5 != v17)
      {
        goto LABEL_30;
      }
    }
  }

  else if (v15 || v5 != v17)
  {
    goto LABEL_30;
  }

  if (v6)
  {
    if (!v18)
    {
      goto LABEL_30;
    }
  }

  else if ((v18 & 1) != 0 || v4 != v16)
  {
    goto LABEL_30;
  }

  if ((v7 ^ v19))
  {
    goto LABEL_30;
  }

  if (!v9)
  {
    if (v20 || ((v10 ^ v22) & 1) != 0)
    {
      goto LABEL_30;
    }

LABEL_35:
    if ((v11 ^ v23) & 1) != 0 || ((v12 ^ v24))
    {
      goto LABEL_30;
    }

    goto LABEL_37;
  }

  if (!v20)
  {
LABEL_30:
    OUTLINED_FUNCTION_11_7();
    return;
  }

  if (v8 == v21 && v9 == v20)
  {
    if (v10 == v22)
    {
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  v30 = v23;
  v31 = v10;
  v43 = v24;
  v32 = v11;
  v33 = v12;
  v45 = v26;
  v47 = v25;
  v41 = v13;
  if ((sub_21B112D04() & 1) == 0)
  {
    goto LABEL_30;
  }

  if ((v31 ^ v22))
  {
    goto LABEL_30;
  }

  if ((v32 ^ v30))
  {
    goto LABEL_30;
  }

  v13 = v41;
  v26 = v45;
  v25 = v47;
  if ((v33 ^ v43))
  {
    goto LABEL_30;
  }

LABEL_37:
  if (!v14 || !v26)
  {
    goto LABEL_30;
  }

  if (v13 == v25 && v14 == v26)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_11_7();

  sub_21B112D04();
}

uint64_t SODAParams.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47118, &qword_21B1295B8);
  v4 = OUTLINED_FUNCTION_1(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v20 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = v1[2];
  v28 = v1[3];
  v14 = *(v1 + 32);
  v26 = *(v1 + 33);
  v27 = v14;
  v15 = v1[5];
  v24 = v1[6];
  v25 = v15;
  LODWORD(v15) = *(v1 + 56);
  v22 = *(v1 + 57);
  v23 = v15;
  v21 = *(v1 + 58);
  v16 = v1[9];
  v20[1] = v1[8];
  v20[2] = v16;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0BD140();
  sub_21B112F44();
  v38 = 0;
  v18 = v29;
  sub_21B112AD4();
  if (!v18)
  {
    v37 = 1;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B34();
    v36 = 2;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AE4();
    v35 = 3;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v34 = 4;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AD4();
    v33 = 5;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v32 = 6;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v31 = 7;
    OUTLINED_FUNCTION_4_18();
    sub_21B112B24();
    v30 = 8;
    OUTLINED_FUNCTION_4_18();
    sub_21B112AD4();
  }

  return (*(v6 + 8))(v10, v3);
}

uint64_t PoirotUserTaskParameters<>.clientName.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20[0]);
  if (v20[1] == 1)
  {
    return 0;
  }

  v8 = v20[0];

  sub_21B0BC734(v20);
  return v8;
}

uint64_t PoirotUserTaskParameters<>.startTime.getter()
{
  v0 = sub_21B110F84();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  sub_21B1111F4();
  memcpy(__dst, __src, sizeof(__dst));
  if (__dst[1] == 1)
  {
    sub_21B110ED4();
    sub_21B110F44();
    v9 = v8;
    (*(v3 + 8))(v7, v0);
  }

  else
  {
    v9 = __dst[2];
    sub_21B0BC734(__dst);
  }

  return v9;
}

uint64_t PoirotUserTaskParameters<>.endTime.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;
  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.ignoreMaximumLookbackTime.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[33];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.mockSessionFilesPath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;

  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.persistTestData.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = v21[56];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.applyWarehouseTTL.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = v21[57];
    sub_21B0BC734(v21);
  }

  return v9 & 1;
}

uint64_t PoirotUserTaskParameters<>.dataWarehousePath.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v0 = sub_21B1111F4();
  OUTLINED_FUNCTION_3_21(v0, v1, v2, v3, v4, v5, v6, v7, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21[0]);
  OUTLINED_FUNCTION_5_19();
  if (v8)
  {
    return 0;
  }

  v9 = v22;

  sub_21B0BC734(v21);
  return v9;
}

uint64_t PoirotUserTaskParameters<>.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:recipeFolderPath:loggingPath:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13)
{
  OUTLINED_FUNCTION_10_9();
  v32 = v13 & 1;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v29 = v17;
  LOBYTE(v30) = v13 & 1;
  HIBYTE(v30) = v18;
  LOWORD(v31) = a12;
  BYTE2(v31) = a13;
  sub_21B0BDCA0();
  sub_21B0BDCF4();
  v19 = sub_21B0BDD48();
  return OUTLINED_FUNCTION_6_13(v19, v20, v21, v22, v23, &type metadata for SODAParams, v24, v19, v26, v27, v28, v29, v30, a10, a11, v31, 0, 0, v32);
}

uint64_t PoirotUserTaskParameters<>.init(clientName:startTime:endTime:ignoreMaximumLookbackTime:recipeFolderPath:loggingPath:mockSessionFilesPath:persistTestData:applyWarehouseTTL:makeUpload:dataWarehousePath:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_10_9();
  v34 = v15 & 1;
  v28 = v16;
  v29 = v17;
  v30 = v18;
  v31 = v19;
  LOBYTE(v32) = v15 & 1;
  HIBYTE(v32) = v20;
  LOWORD(v33) = a12;
  BYTE2(v33) = a13;
  sub_21B0BDCA0();
  sub_21B0BDCF4();
  v21 = sub_21B0BDD48();
  return OUTLINED_FUNCTION_6_13(v21, v22, v23, v24, v25, &type metadata for SODAParams, v26, v21, v28, v29, v30, v31, v32, a10, a11, v33, a14, a15, v34);
}

unint64_t sub_21B0BDCA0()
{
  result = qword_2811FAAD0;
  if (!qword_2811FAAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FAAD0);
  }

  return result;
}

unint64_t sub_21B0BDCF4()
{
  result = qword_27CD47120;
  if (!qword_27CD47120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47120);
  }

  return result;
}

unint64_t sub_21B0BDD48()
{
  result = qword_27CD47128;
  if (!qword_27CD47128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47128);
  }

  return result;
}

uint64_t sub_21B0BDDA4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 80))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_21B0BDDF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SODAParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SODAParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0BDFD8()
{
  result = qword_27CD47130;
  if (!qword_27CD47130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47130);
  }

  return result;
}

unint64_t sub_21B0BE030()
{
  result = qword_27CD47138;
  if (!qword_27CD47138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47138);
  }

  return result;
}

unint64_t sub_21B0BE088()
{
  result = qword_27CD47140;
  if (!qword_27CD47140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47140);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_22()
{

  return sub_21B112D04();
}

void *OUTLINED_FUNCTION_3_21(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char __dst)
{

  return memcpy(&__dst, &a9, 0x50uLL);
}

uint64_t OUTLINED_FUNCTION_6_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  return MEMORY[0x28219E498](v9, v8, v7, v10, va, a6, v11, v12);
}

double sub_21B0BE1EC()
{
  v2 = sub_21B1112A4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = sub_21B111514();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  sub_21B0BE7C4(v13 - v12);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BE8A8();
    v1 = v15;
    v16 = *(v5 + 8);
    v17 = OUTLINED_FUNCTION_10_10();
    v18(v17);
    v19 = OUTLINED_FUNCTION_2_23();
    v20(v19);
  }

  return v1;
}

uint64_t sub_21B0BE390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    goto LABEL_4;
  }

  v3 = sub_21B0D552C(*(a1 + 16), 0);
  sub_21B0BFA34(&v7, (v3 + 4), v1, a1);
  v5 = v4;

  sub_21AF9C4BC();
  if (v5 != v1)
  {
    __break(1u);
LABEL_4:
    v3 = MEMORY[0x277D84F90];
  }

  v7 = v3;
  sub_21B0BF034(&v7);
  return v7;
}

double sub_21B0BE474()
{
  v2 = sub_21B1112A4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = sub_21B111514();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  sub_21B0BE7C4(v15 - v14);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BE8A8();
    v1 = v18;
    v19 = *(v5 + 8);
    v20 = OUTLINED_FUNCTION_625();
    v21(v20);
    (*(v11 + 8))(v16, v8);
  }

  return v1;
}

double sub_21B0BE628()
{
  v2 = sub_21B1112A4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v8 = sub_21B111514();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  sub_21B0BE7C4(v13 - v12);
  if (!v0)
  {
    sub_21B111524();
    sub_21B0BED70();
    v1 = v15;
    v16 = *(v5 + 8);
    v17 = OUTLINED_FUNCTION_625();
    v18(v17);
    v19 = OUTLINED_FUNCTION_2_23();
    v20(v19);
  }

  return v1;
}

uint64_t sub_21B0BE7C4@<X0>(uint64_t a1@<X8>)
{
  sub_21B111534();
  result = sub_21B1114E4();
  if (result)
  {
    sub_21AF94BA0();
    swift_allocError();
    *v3 = 0xD000000000000013;
    *(v3 + 8) = 0x800000021B140710;
    *(v3 + 16) = 2;
    swift_willThrow();
    v4 = sub_21B111514();
    return (*(*(v4 - 8) + 8))(a1, v4);
  }

  return result;
}

uint64_t sub_21B0BE8A8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  OUTLINED_FUNCTION_1_1();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v59 - v6;
  v8 = sub_21B111334();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_1();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v59 - v18;
  v20 = sub_21B111294();
  sub_21B0DF074(0x73745F7472617473, 0xE800000000000000, v20, v7);

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_21AF94B38(v7);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_21B112904();

    OUTLINED_FUNCTION_9_12();
    v63 = v22 | 2;
    v64 = v21;
    v23 = sub_21B111294();
    v24 = sub_21B0BE390(v23);

    v25 = MEMORY[0x21CEE9880](v24, MEMORY[0x277D837D0]);
    v27 = v26;

    MEMORY[0x21CEE9770](v25, v27);

    v28 = v63;
    v29 = v64;
    sub_21AF94BA0();
    v30 = OUTLINED_FUNCTION_4_0();
    *v31 = v28;
    v31[1] = v29;
    return OUTLINED_FUNCTION_4_19(v30, v31);
  }

  v60 = v11;
  v61 = v19;
  v33 = *(v11 + 32);
  v33();
  v34 = sub_21B111294();
  sub_21B0DF074(0x73745F646E65, 0xE600000000000000, v34, v4);

  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_21AF94B38(v4);
    v63 = 0;
    v64 = 0xE000000000000000;
    sub_21B112904();

    OUTLINED_FUNCTION_9_12();
    v63 = v36;
    v64 = v35;
    v37 = sub_21B111294();
    v38 = sub_21B0BE390(v37);

    v39 = MEMORY[0x21CEE9880](v38, MEMORY[0x277D837D0]);
    v41 = v40;

    MEMORY[0x21CEE9770](v39, v41);

    v42 = v63;
    v43 = v64;
    sub_21AF94BA0();
    v44 = OUTLINED_FUNCTION_4_0();
    *v45 = v42;
    v45[1] = v43;
    OUTLINED_FUNCTION_4_19(v44, v45);
    return (*(v60 + 8))(v61, v8);
  }

  v46 = v60;
  (v33)(v16, v4, v8);
  v47 = v61;
  sub_21B111314();
  if (!OUTLINED_FUNCTION_12_9())
  {
    goto LABEL_16;
  }

  v48 = v62;
  sub_21B111314();
  if (!OUTLINED_FUNCTION_12_9())
  {
    v53 = 0x800000021B141180;
    sub_21AF94BA0();
    v54 = OUTLINED_FUNCTION_4_0();
    v56 = 0xD000000000000030;
    goto LABEL_18;
  }

  v49 = *(v46 + 8);
  v46 += 8;
  v50 = OUTLINED_FUNCTION_10_10();
  v49(v50);
  result = (v49)(v47, v8);
  v51 = v62;
  if (v48 >= 0.0)
  {
    v52 = v48;
  }

  else
  {
    v52 = 0.0;
  }

  if (v62 < 0.0)
  {
    v51 = 0.0;
  }

  if (v51 < v52)
  {
    v51 = v52;
  }

  if (v52 > v51)
  {
    __break(1u);
LABEL_16:
    v53 = 0x800000021B141140;
    sub_21AF94BA0();
    v54 = OUTLINED_FUNCTION_4_0();
    v56 = 0xD000000000000032;
LABEL_18:
    *v55 = v56;
    v55[1] = v53;
    OUTLINED_FUNCTION_4_19(v54, v55);
    v57 = *(v46 + 8);
    v58 = OUTLINED_FUNCTION_10_10();
    v57(v58);
    return (v57)(v47, v8);
  }

  return result;
}

uint64_t sub_21B0BED70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v26 - v2;
  v4 = sub_21B111334();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  v13 = sub_21B111294();
  sub_21B0DF074(0xD000000000000013, 0x800000021B140FC0, v13, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_21AF94B38(v3);
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_21B112904();

    v27 = 0xD000000000000020;
    v28 = 0x800000021B1411C0;
    v14 = sub_21B111294();
    v15 = sub_21B0BE390(v14);

    v16 = MEMORY[0x21CEE9880](v15, MEMORY[0x277D837D0]);
    v18 = v17;

    MEMORY[0x21CEE9770](v16, v18);

    v19 = v27;
    v20 = v28;
    sub_21AF94BA0();
    v21 = OUTLINED_FUNCTION_4_0();
    *v22 = v19;
    v22[1] = v20;
    return OUTLINED_FUNCTION_4_19(v21, v22);
  }

  else
  {
    (*(v7 + 32))(v12, v3, v4);
    sub_21B111314();
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_21AF94BA0();
      v24 = OUTLINED_FUNCTION_4_0();
      *v25 = 0xD000000000000034;
      v25[1] = 0x800000021B1411F0;
      OUTLINED_FUNCTION_4_19(v24, v25);
    }

    return (*(v7 + 8))(v12, v4);
  }
}

uint64_t sub_21B0BF034(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D62EC(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21B0BF0A0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21B0BF0A0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_21B112B74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_21B0BF25C(v7, v8, a1, v4);
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
    return sub_21B0BF194(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21B0BF194(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_21B112D04();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
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

void sub_21B0BF25C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_21B112D04();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_21B112D04()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_21B112D04() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4B14(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_21B0D4B14(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *a1;
      if (!*a1)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_21B0BF890((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_128;
  }

  sub_21B0BF764(&v92, *a1, a3);
LABEL_102:
}

uint64_t sub_21B0BF764(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_21B0D61A8(v5);
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
    sub_21B0BF890((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_21B0BF890(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_21AFCC250(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_21B112D04() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_21AFCC250(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_21B112D04() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

void sub_21B0BFA34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a4 + 64;
  v6 = *(a4 + 64);
  v8 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_6_14();
  v13 = v12 & v11;
  if (!v9)
  {
    v16 = 0;
LABEL_17:
    *a1 = a4;
    a1[1] = v7;
    a1[2] = ~v8;
    a1[3] = v16;
    a1[4] = v13;
    return;
  }

  v14 = v10;
  if (!v10)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v15 = v9;
    OUTLINED_FUNCTION_5_20();
    v19 = (v18 - v8) >> 6;
    while (v17 < v14)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_21;
      }

      if (!v13)
      {
        while (1)
        {
          v21 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            break;
          }

          if (v21 >= v19)
          {
            v13 = 0;
            goto LABEL_17;
          }

          v13 = *(v7 + 8 * v21);
          ++v16;
          if (v13)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
        break;
      }

      v21 = v16;
LABEL_12:
      v22 = (*(a4 + 48) + ((v21 << 10) | (16 * __clz(__rbit64(v13)))));
      v23 = v22[1];
      v13 &= v13 - 1;
      *v15 = *v22;
      v15[1] = v23;
      if (v20 == v14)
      {

        v16 = v21;
        goto LABEL_17;
      }

      v15 += 2;

      v17 = v20;
      v16 = v21;
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
}

void sub_21B0BFB80(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_1_1();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v32 - v14;
  v35 = a4;
  v17 = *(a4 + 64);
  v16 = a4 + 64;
  v18 = -1 << *(v16 - 32);
  OUTLINED_FUNCTION_6_14();
  v22 = v21 & v20;
  if (!a2)
  {
    v23 = 0;
LABEL_18:
    *a1 = v35;
    a1[1] = v16;
    a1[2] = ~v19;
    a1[3] = v23;
    a1[4] = v22;
    return;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v32 = v19;
    v33 = a1;
    OUTLINED_FUNCTION_5_20();
    v27 = (v25 - v26) >> 6;
    while (1)
    {
      if (v24 >= a3)
      {
        goto LABEL_21;
      }

      v28 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_22;
      }

      if (!v22)
      {
        while (1)
        {
          v29 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v29 >= v27)
          {
            v22 = 0;
            goto LABEL_16;
          }

          v22 = *(v16 + 8 * v29);
          ++v23;
          if (v22)
          {
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v29 = v23;
LABEL_12:
      OUTLINED_FUNCTION_8_16();
      v31 = *(v34 + 72);
      sub_21B0BFFD8(*(v35 + 56) + v31 * (v30 | (v29 << 6)), v12);
      sub_21B0C003C(v12, v15);
      sub_21B0C003C(v15, a2);
      if (v28 == a3)
      {
        break;
      }

      a2 += v31;
      v24 = v28;
      v23 = v29;
    }

    v23 = v29;
LABEL_16:
    v19 = v32;
    a1 = v33;
    goto LABEL_18;
  }

LABEL_23:
  __break(1u);
}

void sub_21B0BFD70(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_21B111CB4();
  v46 = OUTLINED_FUNCTION_1(v8);
  v47 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_1();
  v45 = v12 - v13;
  MEMORY[0x28223BE20](v14);
  v44 = &v37 - v15;
  v16 = *(a4 + 56);
  v43 = -1 << *(a4 + 32);
  OUTLINED_FUNCTION_6_14();
  v20 = v19 & v18;
  if (!a2)
  {
    v22 = 0;
LABEL_19:
    v36 = ~v43;
    *a1 = a4;
    a1[1] = v17;
    a1[2] = v36;
    a1[3] = v22;
    a1[4] = v20;
    return;
  }

  if (!a3)
  {
    v22 = 0;
    goto LABEL_19;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v38 = a1;
    v39 = v17;
    OUTLINED_FUNCTION_5_20();
    v25 = (v24 - v43) >> 6;
    v40 = v47 + 32;
    v41 = v47 + 16;
    v42 = v21;
    while (v23 < v21)
    {
      if (__OFADD__(v23, 1))
      {
        goto LABEL_23;
      }

      if (!v20)
      {
        v17 = v39;
        while (1)
        {
          v26 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v26 >= v25)
          {
            v20 = 0;
            a1 = v38;
            goto LABEL_19;
          }

          v20 = *(v39 + 8 * v26);
          ++v22;
          if (v20)
          {
            v48 = v23 + 1;
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }

      v48 = v23 + 1;
      v26 = v22;
LABEL_14:
      OUTLINED_FUNCTION_8_16();
      v28 = a4;
      v29 = *(a4 + 48);
      v31 = v46;
      v30 = v47;
      v32 = *(v47 + 72);
      v33 = v45;
      (*(v47 + 16))(v45, v29 + v32 * (v27 | (v26 << 6)), v46);
      v34 = *(v30 + 32);
      v35 = v44;
      v34(v44, v33, v31);
      v34(a2, v35, v31);
      v21 = v42;
      v23 = v48;
      if (v48 == v42)
      {
        v22 = v26;
        a1 = v38;
        v17 = v39;
        a4 = v28;
        goto LABEL_19;
      }

      a2 += v32;
      v22 = v26;
      a4 = v28;
    }

    __break(1u);
LABEL_23:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_21B0BFFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C003C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_4_19(uint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return swift_dynamicCast();
}

unint64_t sub_21B0C0144(char a1)
{
  result = 0x746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x6D5F656369766564;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x6D726F6674616C70;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 1684366707;
      break;
    case 6:
      result = 0x6C616E7265746E69;
      break;
    case 7:
      result = 0x765F657069636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21B0C023C()
{
  v0 = sub_21B112A34();

  if (v0 >= 8)
  {
    return 8;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21B0C02AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B0C023C();
  *a2 = result;
  return result;
}

unint64_t sub_21B0C02DC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21B0C0144(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_21B0C0318(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v29 - v10;
  *(v4 + 16) = 0;
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1))
  {
    v13 = v12;
    ObjectType = swift_getObjectType();
    *(v4 + 24) = (*(*(v13 + 8) + 8))();
    *(v4 + 32) = v15;
    *(v4 + 40) = a4;
    v16 = (*(v13 + 24))(ObjectType, v13);
    v18 = 0x2D6E776F6E6B6E75;
    if (v17)
    {
      v18 = v16;
    }

    v19 = 0xEE00746E65696C63;
    if (v17)
    {
      v19 = v17;
    }

    *(v4 + 48) = v18;
    *(v4 + 56) = v19;
    v20 = static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(a3, 0);
    v21 = type metadata accessor for FederatedIdentifierProvider();
    v22 = *(v21 + 48);
    v23 = *(v21 + 52);
    swift_allocObject();
    swift_unknownObjectRetain();
    v24 = a3;
    sub_21AFCD67C(v24, &type metadata for OSVariant, &off_282C96990, v20);
    sub_21AFCD74C(v11);

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    sub_21B0C1C94(v11, v4 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &qword_27CD43798, &qword_21B117AD0);
  }

  else
  {
    sub_21B0C1C40();
    swift_allocError();
    *v25 = 0xD00000000000002BLL;
    *(v25 + 8) = 0x800000021B1412D0;
    *(v25 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();

    type metadata accessor for ConstantsBlock();
    v26 = *(*v4 + 48);
    v27 = *(*v4 + 52);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t sub_21B0C0594()
{
  v2 = sub_21B1112A4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  sub_21B0C06D0();
  if (!v1)
  {
    sub_21B111274();
    sub_21B1114D4();
    swift_getObjectType();
    sub_21B111434();
    (*(v5 + 8))(v10, v2);
    *(v0 + 16) = 1;
  }

  return 1;
}

uint64_t sub_21B0C06D0()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v2);
  v4 = &v40 - v3;
  v5 = sub_21B111334();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v50 = (v12 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  v14 = OUTLINED_FUNCTION_1(v13);
  v46 = v15;
  v47 = v14;
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v14);
  v49 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v45 = (&v40 - v21);
  MEMORY[0x28223BE20](v20);
  v44 = &v40 - v22;
  v23 = 0;
  v48 = (v8 + 32);
  v42 = 0x800000021B12FFD0;
  v43 = 0x800000021B12FFF0;
  v51 = MEMORY[0x277D84F90];
LABEL_2:
  v24 = ~v23;
  for (i = &unk_282C921D8 + v23 + 32; ; ++i)
  {
    if (v24 == -9)
    {
      return sub_21B0C0B5C(v51);
    }

    v26 = *i;
    sub_21B0C0C10(*i, v4);
    if (v0)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v4, 1, v5) != 1)
    {
      v27 = *v48;
      (*v48)(v50, v4, v5);
      v41 = -v24;
      v28 = 0xE600000000000000;
      v29 = 0x746E65696C63;
      switch(v26)
      {
        case 1:
          v29 = 0x6D5F656369766564;
          v28 = 0xEC0000006C65646FLL;
          break;
        case 2:
          v29 = 0xD000000000000014;
          v28 = v42;
          break;
        case 3:
          v28 = 0xE800000000000000;
          v29 = 0x6D726F6674616C70;
          break;
        case 4:
          v29 = 0xD000000000000011;
          v28 = v43;
          break;
        case 5:
          v28 = 0xE400000000000000;
          v29 = 1684366707;
          break;
        case 6:
          v28 = 0xE800000000000000;
          v29 = 0x6C616E7265746E69;
          break;
        case 7:
          v29 = 0x765F657069636572;
          v28 = 0xEE006E6F69737265;
          break;
        default:
          break;
      }

      v30 = *(v47 + 48);
      v31 = v45;
      *v45 = v29;
      *(v31 + 8) = v28;
      v27(v31 + v30, v50, v5);
      v32 = v44;
      sub_21B0C1C94(v31, v44, &qword_27CD436C0, &qword_21B129840);
      sub_21B0C1C94(v32, v49, &qword_27CD436C0, &qword_21B129840);
      v33 = v51;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = *(v33 + 16);
        sub_21B0D519C();
        v33 = v37;
      }

      v34 = *(v33 + 16);
      if (v34 >= *(v33 + 24) >> 1)
      {
        sub_21B0D519C();
        v33 = v38;
      }

      *(v33 + 16) = v34 + 1;
      v35 = (*(v46 + 80) + 32) & ~*(v46 + 80);
      v51 = v33;
      sub_21B0C1C94(v49, v33 + v35 + *(v46 + 72) * v34, &qword_27CD436C0, &qword_21B129840);
      v23 = v41;
      goto LABEL_2;
    }

    sub_21AF99BE0(v4, &qword_27CD42C48, &qword_21B1141C0);
    --v24;
  }
}

uint64_t sub_21B0C0B5C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47160, &qword_21B129848);
    v1 = sub_21B112A14();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v4 = v1;

  sub_21B0C1744(v2, 1, &v4);

  return v4;
}

uint64_t sub_21B0C0C10@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  switch(a1)
  {
    case 1:
      v11 = sub_21B111A64();
      v17 = MEMORY[0x277D837D0];
      v15 = v11;
      v16 = v12;
      goto LABEL_15;
    case 2:
      v7 = sub_21B0C0DD0();
      if (v8)
      {
        v17 = MEMORY[0x277D837D0];
        v15 = v7;
        v16 = v8;
        sub_21B111554();
        result = __swift_destroy_boxed_opaque_existential_0(&v15);
        if (!v3)
        {
LABEL_16:
          v13 = sub_21B111334();
          return __swift_storeEnumTagSinglePayload(a2, 0, 1, v13);
        }
      }

      else
      {
        v14 = sub_21B111334();
        return __swift_storeEnumTagSinglePayload(a2, 1, 1, v14);
      }

      return result;
    case 3:
      v17 = MEMORY[0x277D837D0];
      v15 = 5459817;
      v16 = 0xE300000000000000;
      goto LABEL_15;
    case 4:
      v6 = v2[3];
      v5 = v2[4];
      goto LABEL_4;
    case 5:
      v17 = MEMORY[0x277D839B0];
      LOBYTE(v15) = 0;
      goto LABEL_15;
    case 6:
      if (qword_27CD42A18 != -1)
      {
        swift_once();
      }

      v17 = MEMORY[0x277D839B0];
      LOBYTE(v15) = byte_27CD6E890;
      goto LABEL_15;
    case 7:
      v10 = v2[5];
      v17 = MEMORY[0x277D83E88];
      v15 = v10;
      goto LABEL_15;
    default:
      v6 = v2[6];
      v5 = v2[7];
LABEL_4:
      v17 = MEMORY[0x277D837D0];
      v15 = v6;
      v16 = v5;

LABEL_15:
      result = sub_21B111344();
      if (!v3)
      {
        goto LABEL_16;
      }

      return result;
  }
}

uint64_t sub_21B0C0DD0()
{
  v1 = sub_21B110FB4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43798, &qword_21B117AD0) - 8) + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - v12;
  sub_21B0C1BF0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &v17 - v12, &qword_27CD43798, &qword_21B117AD0);
  v14 = sub_21B111BF4();
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21AF99BE0(v13, &qword_27CD43798, &qword_21B117AD0);
    return 0;
  }

  else
  {
    sub_21B111BC4();
    (*(*(v14 - 8) + 8))(v13, v14);
    v15 = sub_21B110F94();
    (*(v4 + 8))(v9, v1);
  }

  return v15;
}

uint64_t sub_21B0C0F8C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 56);

  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics14ConstantsBlock_federatedIdentifier, &qword_27CD43798, &qword_21B117AD0);
  return v0;
}

uint64_t sub_21B0C0FD4()
{
  sub_21B0C0F8C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for ConstantsBlock()
{
  result = qword_27CD47148;
  if (!qword_27CD47148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0C1080()
{
  sub_21B0C1134();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21B0C1134()
{
  if (!qword_27CD47158)
  {
    sub_21B111BF4();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD47158);
    }
  }
}

uint64_t sub_21B0C118C()
{
  v1 = *v0;
  sub_21B0C0594();
  return 1;
}

void sub_21B0C11B4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47170, &unk_21B12B960);
  v44 = a2;
  v7 = sub_21B112A04();
  if (!*(v5 + 16))
  {
LABEL_30:

LABEL_31:
    *v3 = v7;
    return;
  }

  v42 = v3;
  v43 = v5;
  v8 = 0;
  v10 = (v5 + 64);
  v9 = *(v5 + 64);
  v11 = *(v5 + 32);
  OUTLINED_FUNCTION_1_20();
  v14 = v13 & v12;
  v16 = (v15 + 63) >> 6;
  v17 = v7 + 8;
  if ((v13 & v12) == 0)
  {
LABEL_6:
    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v16)
      {
        break;
      }

      v20 = v10[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_11;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_31;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      sub_21B0CFEC4(0, (v41 + 63) >> 6, v10);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v21 = v18 | (v8 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(*(v5 + 56) + 8 * v21);
    if ((v44 & 1) == 0)
    {
      v26 = v22[1];

      v27 = v25;
    }

    v28 = v7[5];
    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    v29 = sub_21B112F14();
    OUTLINED_FUNCTION_4_20(v29);
    if (((v32 << v31) & ~v17[v30]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_17();
LABEL_22:
    OUTLINED_FUNCTION_5_21();
    *(v17 + v37) |= v38;
    v40 = (v7[6] + 16 * v39);
    *v40 = v23;
    v40[1] = v24;
    *(v7[7] + 8 * v39) = v25;
    ++v7[2];
    v5 = v43;
    if (!v14)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_13();
  while (++v33 != v35 || (v34 & 1) == 0)
  {
    v36 = v33 == v35;
    if (v33 == v35)
    {
      v33 = 0;
    }

    v34 |= v36;
    if (v17[v33] != -1)
    {
      OUTLINED_FUNCTION_6_15();
      goto LABEL_22;
    }
  }

LABEL_33:
  __break(1u);
}

void sub_21B0C1428(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v62 = a3(0);
  OUTLINED_FUNCTION_1(v62);
  v12 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v15);
  v61 = &v54 - v16;
  v17 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v18 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v59 = a2;
  v19 = sub_21B112A04();
  if (!*(v17 + 16))
  {
LABEL_31:

LABEL_32:
    *v8 = v19;
    return;
  }

  v20 = 0;
  v22 = (v17 + 64);
  v21 = *(v17 + 64);
  v23 = *(v17 + 32);
  OUTLINED_FUNCTION_1_20();
  v26 = v25 & v24;
  v28 = (v27 + 63) >> 6;
  v55 = v8;
  v56 = (v12 + 16);
  v57 = v17;
  v58 = v12;
  v60 = (v12 + 32);
  v29 = v19 + 8;
  if ((v25 & v24) == 0)
  {
LABEL_6:
    v31 = v20;
    while (1)
    {
      v20 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v20 >= v28)
      {
        break;
      }

      v32 = v22[v20];
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v26 = (v32 - 1) & v32;
        goto LABEL_11;
      }
    }

    if ((v59 & 1) == 0)
    {

      v8 = v55;
      goto LABEL_32;
    }

    v53 = 1 << *(v17 + 32);
    v8 = v55;
    if (v53 >= 64)
    {
      sub_21B0CFEC4(0, (v53 + 63) >> 6, v22);
    }

    else
    {
      *v22 = -1 << v53;
    }

    *(v17 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
LABEL_11:
    v33 = v30 | (v20 << 6);
    v34 = *(v17 + 56);
    v35 = (*(v17 + 48) + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    v38 = *(v58 + 72);
    v39 = v34 + v38 * v33;
    if (v59)
    {
      (*v60)(v61, v39, v62);
    }

    else
    {
      (*v56)(v61, v39, v62);
    }

    v40 = v19[5];
    sub_21B112EC4();
    _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
    v41 = sub_21B112F14();
    OUTLINED_FUNCTION_4_20(v41);
    if (((v44 << v43) & ~v29[v42]) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_8_17();
LABEL_23:
    OUTLINED_FUNCTION_5_21();
    *(v29 + v49) |= v50;
    v52 = (v19[6] + 16 * v51);
    *v52 = v37;
    v52[1] = v36;
    (*v60)((v19[7] + v38 * v51), v61, v62);
    ++v19[2];
    v17 = v57;
    if (!v26)
    {
      goto LABEL_6;
    }
  }

  OUTLINED_FUNCTION_7_13();
  while (++v45 != v47 || (v46 & 1) == 0)
  {
    v48 = v45 == v47;
    if (v45 == v47)
    {
      v45 = 0;
    }

    v46 |= v48;
    if (v29[v45] != -1)
    {
      OUTLINED_FUNCTION_6_15();
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_21B0C1744(uint64_t a1, char a2, uint64_t *a3)
{
  v52 = a3;
  v6 = sub_21B111334();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v51 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD436C0, &qword_21B129840);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10);
  v49 = (v42 - v14);
  v48 = *(a1 + 16);
  if (!v48)
  {
LABEL_13:

    return;
  }

  v42[1] = v3;
  v43 = a1;
  v15 = 0;
  v47 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
  v16 = *(v12 + 48);
  v45 = v7;
  v46 = v16;
  v50 = (v7 + 32);
  v44 = v6;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_21B112E54();
      __break(1u);
      goto LABEL_22;
    }

    v17 = v13;
    v18 = v49;
    sub_21B0C1BF0(v47 + *(v13 + 72) * v15, v49, &qword_27CD436C0, &qword_21B129840);
    v20 = v18[1];
    v55 = *v18;
    v19 = v55;
    v56 = v20;
    v21 = *v50;
    (*v50)(v51, v18 + v46, v6);
    v22 = *v52;
    v24 = sub_21AF98B58(v19, v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477B0, &qword_21B114230);
      sub_21B1129A4();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v33 = v51;
    v34 = *v52;
    *(*v52 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v35 = (v34[6] + 16 * v24);
    *v35 = v19;
    v35[1] = v20;
    v36 = v34[7] + *(v45 + 72) * v24;
    v6 = v44;
    v21(v36, v33, v44);
    v37 = v34[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_20;
    }

    ++v15;
    v34[2] = v39;
    a2 = 1;
    a1 = v43;
    v13 = v17;
    if (v48 == v15)
    {
      goto LABEL_13;
    }
  }

  v29 = v52;
  sub_21B0C1428(v27, a2 & 1, MEMORY[0x277D3E038], &qword_27CD47160, &qword_21B129848);
  v30 = *v29;
  v31 = sub_21AF98B58(v19, v20);
  if ((v28 & 1) != (v32 & 1))
  {
    goto LABEL_21;
  }

  v24 = v31;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v40 = swift_allocError();
  swift_willThrow();
  v57 = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  if ((swift_dynamicCast() & 1) == 0)
  {

    (*(v45 + 8))(v51, v44);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_21B112904();
  MEMORY[0x21CEE9770](0xD00000000000001BLL, 0x800000021B1412B0);
  sub_21B112954();
  MEMORY[0x21CEE9770](39, 0xE100000000000000);
  sub_21B1129C4();
  __break(1u);
}

uint64_t sub_21B0C1BF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(v4, v5);
  return v4;
}

unint64_t sub_21B0C1C40()
{
  result = qword_27CD47178;
  if (!qword_27CD47178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47178);
  }

  return result;
}

uint64_t sub_21B0C1C94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_10_11(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(v4, v5);
  return v4;
}

uint64_t sub_21B0C1CF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_21B0C1D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTagSinglePayload for ConstantsBlock.Constant(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ConstantsBlock.Constant(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_21B0C1EEC()
{
  result = qword_27CD47180;
  if (!qword_27CD47180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47188, qword_21B129910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47180);
  }

  return result;
}

unint64_t sub_21B0C1F54()
{
  result = qword_27CD47190;
  if (!qword_27CD47190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47190);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_10_11(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_21B0C204C(void *a1)
{
  v125 = a1;
  v1 = sub_21B111CB4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v158 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B110F84();
  v9 = OUTLINED_FUNCTION_1(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v157 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  v148 = &v117 - v16;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v17);
  v147 = &v117 - v18;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_24();
  v152 = v20;
  v124 = sub_21B111DA4();
  v21 = OUTLINED_FUNCTION_1(v124);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_9_1();
  v123 = v26;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_24();
  v122 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  OUTLINED_FUNCTION_9_1();
  v146 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v154 = &v117 - v33;
  OUTLINED_FUNCTION_12();
  v35 = MEMORY[0x28223BE20](v34);
  v37 = &v117 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v117 - v39;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_24();
  v153 = v41;
  v138 = sub_21B111AE4();
  v42 = OUTLINED_FUNCTION_1(v138);
  v44 = v43;
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_9_1();
  v137 = v47;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_24();
  v139 = v49;
  v50 = sub_21B111AB4();
  sub_21B0C2C38(&qword_27CD46FD0, MEMORY[0x277D39DE0]);
  v51 = sub_21B112334();
  v134 = *(v50 + 16);
  if (v134)
  {
    v52 = 0;
    v54 = *(v44 + 16);
    v53 = v44 + 16;
    v130 = v54;
    v55 = (*(v53 + 64) + 32) & ~*(v53 + 64);
    v117 = v50;
    v129 = v50 + v55;
    v128 = v53 + 72;
    v135 = v53 - 8;
    v121 = v23 + 104;
    v131 = v53;
    v127 = *(v53 + 56);
    v120 = v23 + 16;
    v126 = *MEMORY[0x277D39D98];
    v119 = v23 + 8;
    v155 = v4 + 16;
    v156 = (v11 + 32);
    v118 = *MEMORY[0x277D39E10];
    v142 = v11 + 16;
    v141 = v11 + 8;
    v140 = v11 + 40;
    v143 = (v4 + 8);
    v145 = v1;
    v149 = v11;
    v133 = v37;
    v132 = v40;
    v56 = v153;
    v57 = v138;
    v144 = v4;
    while (1)
    {
      v136 = v52;
      v58 = v139;
      v59 = v130;
      v130(v139, v129 + v127 * v52, v57);
      v59(v137, v58, v57);
      v60 = v137;
      OUTLINED_FUNCTION_5_4(v159 + 8);
      v62 = v61(v60, v57);
      if (v62 == v126)
      {
        OUTLINED_FUNCTION_5_4(&v153);
        v63 = v122;
        v64 = v124;
        v65(v122, v118, v124);
        OUTLINED_FUNCTION_5_4(&v152);
        v66 = v123;
        v67(v123, v63, v64);
        v160 = 0;
        memset(v159, 0, sizeof(v159));
        v68 = objc_opt_self();
        v69 = v125;
        v70 = v125;
        v71 = [v68 defaultManager];
        v72 = type metadata accessor for RegisteredRecipeEnvironment();
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        swift_allocObject();
        v59 = sub_21B0C7920(v66, 0, 0, v159, v69, v71);
        sub_21B0C7B98();
        v76 = v75;

        if (v76)
        {
          OUTLINED_FUNCTION_5_4(&v151);
          v77(v63, v64);
          v78 = OUTLINED_FUNCTION_6_16();
        }

        else
        {
          v59 = v132;
          sub_21B110F34();
          OUTLINED_FUNCTION_5_4(&v151);
          v84(v63, v64);
          v78 = v59;
          v79 = 0;
        }

        __swift_storeEnumTagSinglePayload(v78, v79, 1, v8);
        v11 = v149;
        v83 = v133;
        v56 = v153;
      }

      else
      {
        v80 = OUTLINED_FUNCTION_6_16();
        __swift_storeEnumTagSinglePayload(v80, v81, 1, v8);
        OUTLINED_FUNCTION_5_4(&v161);
        v82(v60, v57);
        v83 = v133;
      }

      sub_21B0C2BC8(v59, v56);
      sub_21AFD1CB0(v56, v83);
      if (__swift_getEnumTagSinglePayload(v83, 1, v8) != 1)
      {
        break;
      }

      sub_21AFD1D20(v56);
      OUTLINED_FUNCTION_5_4(&v161);
      v85 = OUTLINED_FUNCTION_5_22();
      v86(v85);
      sub_21AFD1D20(v83);
LABEL_36:
      v52 = v136 + 1;
      v57 = v138;
      if (v136 + 1 == v134)
      {
        goto LABEL_37;
      }
    }

    v87 = *v156;
    (*v156)(v152, v83, v8);
    v88 = sub_21B111AC4();
    v56 = v153;
    v89 = 0;
    v150 = *(v88 + 16);
    v151 = v88;
    while (1)
    {
      if (v150 == v89)
      {

        sub_21AFD1D20(v56);
        OUTLINED_FUNCTION_5_4(&v161);
        v113 = OUTLINED_FUNCTION_5_22();
        v114(v113);
        OUTLINED_FUNCTION_5_4(&v162);
        v115(v152, v8);
        goto LABEL_36;
      }

      v90 = *(v4 + 72);
      v91 = v151 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + v90 * v89;
      v92 = *(v4 + 16);
      v92(v158, v91, v1);
      if (v51[2])
      {
        v93 = sub_21B0B5D3C();
        if (v94)
        {
          (*(v11 + 16))(v154, v51[7] + *(v11 + 72) * v93, v8);
          v95 = 0;
        }

        else
        {
          v95 = 1;
        }

        v96 = v146;
      }

      else
      {
        v95 = 1;
        v96 = v146;
      }

      v97 = v154;
      __swift_storeEnumTagSinglePayload(v154, v95, 1, v8);
      sub_21B0C2BC8(v97, v96);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v96, 1, v8);
      v99 = v148;
      v100 = v152;
      if (EnumTagSinglePayload == 1)
      {
        sub_21B110EF4();
        sub_21AFD1D20(v96);
      }

      else
      {
        v87(v148, v96, v8);
      }

      sub_21B0C2C38(&qword_27CD47198, MEMORY[0x277CC9578]);
      if (sub_21B1123A4())
      {
        OUTLINED_FUNCTION_5_4(&v162);
        v101(v99, v8);
        OUTLINED_FUNCTION_5_4(&v163);
        v102 = v147;
        v103(v147, v100, v8);
      }

      else
      {
        v102 = v147;
        v87(v147, v99, v8);
      }

      v87(v157, v102, v8);
      swift_isUniquelyReferenced_nonNull_native();
      *&v159[0] = v51;
      v104 = sub_21B0B5D3C();
      if (__OFADD__(v51[2], (v105 & 1) == 0))
      {
        break;
      }

      v106 = v104;
      v107 = v105;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471A0, &qword_21B129A30);
      if (sub_21B112994())
      {
        v108 = sub_21B0B5D3C();
        v11 = v149;
        if ((v107 & 1) != (v109 & 1))
        {
          goto LABEL_40;
        }

        v106 = v108;
      }

      else
      {
        v11 = v149;
      }

      v56 = v153;
      v51 = *&v159[0];
      if (v107)
      {
        (*(v11 + 40))(*(*&v159[0] + 56) + *(v11 + 72) * v106, v157, v8);
        v1 = v145;
      }

      else
      {
        *(*&v159[0] + 8 * (v106 >> 6) + 64) |= 1 << v106;
        v1 = v145;
        v92((v51[6] + v106 * v90), v158, v145);
        v87(v51[7] + *(v11 + 72) * v106, v157, v8);
        v110 = v51[2];
        v111 = __OFADD__(v110, 1);
        v112 = v110 + 1;
        if (v111)
        {
          goto LABEL_39;
        }

        v51[2] = v112;
      }

      (*v143)(v158, v1);
      ++v89;
      v4 = v144;
    }

    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    result = sub_21B112E54();
    __break(1u);
  }

  else
  {
LABEL_37:

    return v51;
  }

  return result;
}

uint64_t sub_21B0C2BC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C2C38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_5_22()
{
  result = *(v0 - 288);
  v2 = *(v0 - 296);
  return result;
}

void sub_21B0C2CA8()
{
  v1 = v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp;
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp + 8))
  {
    v2 = *(*(v0 + 16) + 16);
    if ((v2 * 1200) >> 64 == (1200 * v2) >> 63)
    {
      *v1 = *(v0 + 24) - (1200 * v2);
      *(v1 + 8) = 0;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v3 = *v1;
  }
}

void sub_21B0C2CFC()
{
  sub_21B0C2CA8();
  if ((*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) * 1200) >> 64 != (1200 * *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex)) >> 63)
  {
    __break(1u);
  }
}

uint64_t sub_21B0C2D40(uint64_t a1, double a2)
{
  v5 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  v6 = sub_21B111164();
  result = __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = 0;
  v8 = v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  v9 = *(a1 + 16);
  if (v9 < 0)
  {
    __break(1u);
  }

  else
  {
    v10 = (v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
    *v10 = 0;
    v10[1] = v9;
    return v2;
  }

  return result;
}

void sub_21B0C2DF0(char a1, double a2, double a3)
{
  sub_21B0C2CA8();
  v8 = (a2 - v7) / 1200.0;
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(v3 + 24) < a3)
  {
    v9 = *(*(v3 + 16) + 16);
    goto LABEL_12;
  }

  v10 = (a3 - *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator____lazy_storage___firstTimestamp)) / 1200.0;
  if (COERCE_UNSIGNED_INT64(fabs(v10)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v10 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v10 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    if (*(*(v3 + 16) + 16) < v9)
    {
      v9 = *(*(v3 + 16) + 16);
    }

LABEL_12:
    v11 = v8 & ~(v8 >> 63);
    if (v9 >= v11)
    {
      v12 = (v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
      *v12 = v11;
      v12[1] = v9;
      *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) = a1 & 1;
      return;
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
}

void sub_21B0C2F28()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  if (sub_21B0C3138())
  {
    sub_21B0C2CFC();
    Double.fromUnixToReferenceTime.getter(v10);
    v11 = *(v0 + 16);
    sub_21AFA92B4(*(v2 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex));
    if (v1)
    {
      return;
    }

    sub_21B111144();
    v12 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v12);
    v13 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    OUTLINED_FUNCTION_0_20();
    v14 = v2 + v13;
    v15 = v9;
  }

  else
  {
    v16 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v7, 1, 1, v16);
    v17 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    OUTLINED_FUNCTION_0_20();
    v14 = v2 + v17;
    v15 = v7;
  }

  sub_21B0C3570(v15, v14);
  swift_endAccess();
}

void sub_21B0C3094()
{
  v1 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange);
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed) == 1)
  {
    v2 = v1[1];
    v3 = __OFSUB__(v2, 1);
    v1 = (v2 - 1);
    if (!v3)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v1 = *v1;
LABEL_6:
  *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = v1;
  sub_21B0C2F28();
}

void sub_21B0C30EC()
{
  if (*(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_reversed))
  {
    v1 = -1;
  }

  else
  {
    v1 = 1;
  }

  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex);
  v3 = __OFADD__(v2, v1);
  v4 = v2 + v1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex) = v4;
    sub_21B0C2F28();
  }
}

uint64_t sub_21B0C3138()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndex);
  v6 = v5 >= *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange) && v5 < *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_fileIndexRange + 8);
  v7 = v6;
  if (!v6)
  {
    v8 = sub_21B111164();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v8);
    v9 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
    swift_beginAccess();
    sub_21B0C3570(v4, v0 + v9);
    swift_endAccess();
  }

  return v7;
}

uint64_t sub_21B0C322C()
{
  v1 = v0[2];

  sub_21B0C35E0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v2, v3);
}

uint64_t type metadata accessor for SessionFilesEnumerator()
{
  result = qword_27CD471B0;
  if (!qword_27CD471B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21B0C32EC()
{
  sub_21B0C33B8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21B0C33B8()
{
  if (!qword_27CD471C0)
  {
    sub_21B111164();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD471C0);
    }
  }
}

uint64_t sub_21B0C3410@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics22SessionFilesEnumerator_currentElement;
  swift_beginAccess();
  return sub_21B0C3500(v3 + v4, a1);
}

uint64_t sub_21B0C3500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C3570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C35E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471C8, &unk_21B12AEF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_20()
{

  return swift_beginAccess();
}

uint64_t sub_21B0C3668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a1;
  v36 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = sub_21B111DE4();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_21B111DA4();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  v28 = &v35 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a3, v13);
  if ((*(v16 + 88))(v20, v13) == *MEMORY[0x277D39E38])
  {

    v29 = v35;
    sub_21B111D84();
    if (__swift_getEnumTagSinglePayload(v12, 1, v21) == 1)
    {
      sub_21AF94004(v12);
      v37 = sub_21B111DB4();
      v38 = v30;
      MEMORY[0x21CEE9770](46, 0xE100000000000000);
      MEMORY[0x21CEE9770](v29, a2);

      sub_21B111D84();
      (*(v16 + 8))(a3, v13);
      if (__swift_getEnumTagSinglePayload(v10, 1, v21) == 1)
      {
        sub_21AF94004(v10);
        v31 = 1;
        v32 = v36;
        return __swift_storeEnumTagSinglePayload(v32, v31, 1, v21);
      }

      v12 = v10;
    }

    else
    {
      (*(v16 + 8))(a3, v13);
    }

    v33 = *(v24 + 32);
    v33(v28, v12, v21);
    v32 = v36;
    v33(v36, v28, v21);
    v31 = 0;
    return __swift_storeEnumTagSinglePayload(v32, v31, 1, v21);
  }

  result = sub_21B1129C4();
  __break(1u);
  return result;
}

uint64_t SODAUserHostEnvironment.__allocating_init(recipeName:recipeLocation:recipeDataSources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(a1, a2, a3, a4);
  return v11;
}

uint64_t SODAUserHostEnvironment.recipeName.getter()
{
  OUTLINED_FUNCTION_13_3();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SODAUserHostEnvironment.recipeName.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_4();
  v5 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_21B0C3B60()
{
  OUTLINED_FUNCTION_13_3();
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t sub_21B0C3B8C(uint64_t a1, char a2)
{
  result = OUTLINED_FUNCTION_14_4();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t sub_21B0C3C40(double a1)
{
  result = OUTLINED_FUNCTION_14_4();
  *(v1 + 48) = a1;
  return result;
}

uint64_t SODAUserHostEnvironment.ignoreMaximumLookbackTime.setter(char a1)
{
  result = OUTLINED_FUNCTION_14_4();
  *(v1 + 56) = a1;
  return result;
}

uint64_t SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_21B110F84();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  *(v5 + 56) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  *(v5 + 32) = 0;
  *(v5 + 40) = 1;
  sub_21B110F74();
  sub_21B110F44();
  v16 = v15;
  (*(v11 + 8))(v14, v10);
  *(v5 + 48) = v16;
  v17 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  v18 = sub_21B110D94();
  OUTLINED_FUNCTION_4_1(v18);
  (*(v19 + 32))(v5 + v17, a3);
  *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeDataSources) = a4;
  return v5;
}

uint64_t sub_21B0C3F08@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  v4 = sub_21B110D94();
  OUTLINED_FUNCTION_4_1(v4);
  return (*(v5 + 16))(a1, v1 + v3);
}

uint64_t sub_21B0C3F74@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D3DF70];
  v3 = sub_21B1112C4();
  v4 = OUTLINED_FUNCTION_4_1(v3);
  v6 = *(v5 + 104);

  return v6(a1, v2, v4);
}

uint64_t SODAUserHostEnvironment.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeLocation;
  v3 = sub_21B110D94();
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(v0 + v2);
  v5 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics23SODAUserHostEnvironment_recipeDataSources);

  return v0;
}

uint64_t SODAUserHostEnvironment.__deallocating_deinit()
{
  SODAUserHostEnvironment.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_21B0C412C(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 152))();
  return sub_21B0C41A8;
}

void sub_21B0C41A8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t type metadata accessor for SODAUserHostEnvironment()
{
  result = qword_27CD471D0;
  if (!qword_27CD471D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0C42F4()
{
  result = sub_21B110D94();
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

uint64_t OUTLINED_FUNCTION_4_21()
{

  return swift_beginAccess();
}

uint64_t sub_21B0C45F8(void *a1, void *a2, char a3)
{
  v3 = 5;
  switch(a3)
  {
    case 1:
    case 2:
    case 3:
      v9 = a1;
      sub_21B0C66D8(a1, a2, a3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43840, &unk_21B128610);
      if (swift_dynamicCast())
      {
        sub_21AF81D68(v7, v10);
        v4 = v11;
        v5 = v12;
        __swift_project_boxed_opaque_existential_0(v10, v11);
        v3 = (*(v5 + 16))(v4, v5);
        __swift_destroy_boxed_opaque_existential_0(v10);
      }

      else
      {
        v8 = 0;
        memset(v7, 0, sizeof(v7));
        sub_21AFD4408(v7);
        v3 = 6;
      }

      break;
    case 4:
      return v3;
    case 5:
      v3 = 24;
      break;
    case 6:
      v3 = 23;
      break;
    case 8:
      v3 = 0x90D0D09u >> (8 * a1);
      break;
    default:
      v3 = 9;
      break;
  }

  return v3;
}

void *sub_21B0C4748(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  v1[3] = sub_21B112334();
  v1[4] = v3;
  v1[2] = a1;
  return v1;
}

uint64_t sub_21B0C47A0()
{
  v4 = *(v0 + 16);
  type metadata accessor for DataWarehouseControllerV2();
  sub_21B0C65A0(&qword_27CD471E8, v1, type metadata accessor for DataWarehouseControllerV2);

  v2 = sub_21B1115B4();

  return v2;
}

uint64_t sub_21B0C486C()
{
  swift_beginAccess();

  v1 = *(v0 + 24);
  swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 24);
  sub_21B0ECD0C();
  *(v0 + 24) = v3;
  return swift_endAccess();
}

uint64_t sub_21B0C491C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_21B0C63DC(sub_21B0D4B3C);
  v5 = *(*(v2 + 32) + 16);
  sub_21B0C6468(v5, sub_21B0D4B3C);
  v6 = *(v2 + 32);
  *(v6 + 16) = v5 + 1;
  v7 = v6 + 16 * v5;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v2 + 32) = v6;
  return swift_endAccess();
}

void *sub_21B0C49E4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t sub_21B0C4A14()
{
  v0 = sub_21B0C49E4();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

unint64_t sub_21B0C4A68(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

unint64_t sub_21B0C4B08()
{
  sub_21B112904();

  v0 = sub_21B112B84();
  MEMORY[0x21CEE9770](v0);

  return 0xD000000000000016;
}

void *sub_21B0C4B9C(uint64_t a1)
{
  v60 = *MEMORY[0x277D85DE8];
  v54 = sub_21B111BA4();
  v3 = OUTLINED_FUNCTION_1(v54);
  v56 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v52 = v8 - v7;
  v9 = sub_21B110D94();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v1[2] = 6;
  if (qword_27CD42460 != -1)
  {
    swift_once();
  }

  v55 = v1;
  v1[5] = qword_27CD6E6D8;
  v18 = objc_opt_self();

  v19 = [v18 defaultManager];
  sub_21B111B34();
  sub_21B110D44();
  v20 = *(v12 + 8);
  v20(v17, v9);
  v21 = sub_21B1123D4();

  v22 = [v19 fileExistsAtPath_];

  if ((v22 & 1) == 0)
  {
    v51 = a1;
    sub_21B111B34();
    v23 = sub_21B110CE4();
    v20(v17, v9);
    v58[0] = 0;
    v24 = [v19 createDirectoryAtURL:v23 withIntermediateDirectories:1 attributes:0 error:v58];

    if (!v24)
    {
      v38 = v58[0];
      v31 = sub_21B110C84();

      swift_willThrow();
      a1 = v51;
      goto LABEL_10;
    }

    v25 = v58[0];
    a1 = v51;
  }

  sub_21B111B54();
  v26 = sub_21B111714();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  v29 = v53;
  v30 = sub_21B111724();
  v31 = v29;
  if (!v29)
  {
    v32 = v55;
    v33 = v56;
    v55[4] = v30;
    v34 = v54;
    (*(v33 + 16))(v52, a1, v54);
    v35 = type metadata accessor for MetricStore();
    v36 = *(v35 + 48);
    v37 = *(v35 + 52);
    swift_allocObject();

    sub_21AF9591C();
    v32[3] = v47;
    v58[0] = v32;
    v48 = v32[4];
    type metadata accessor for DataWarehouseControllerV2();
    sub_21B0C65A0(&qword_27CD471E8, v49, type metadata accessor for DataWarehouseControllerV2);

    sub_21B1115A4();

    (*(v56 + 8))(a1, v34);
    goto LABEL_14;
  }

LABEL_10:
  v39 = v54;
  v32 = v55;
  v40 = v56;
  v57 = v31;
  v41 = v31;
  v42 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
  if (swift_dynamicCast())
  {
    (*(v40 + 8))(a1, v39);

    sub_21B0C6560(v58[0], v58[1], v59);
  }

  else
  {

    sub_21AF99C38();
    OUTLINED_FUNCTION_4_0();
    *v44 = v31;
    v44[1] = 0;
    OUTLINED_FUNCTION_5_23(v44, 1);
    (*(v40 + 8))(a1, v39);
  }

  v43 = v32[5];

  type metadata accessor for DataWarehouseControllerV2();
  swift_deallocPartialClassInstance();
LABEL_14:
  v45 = *MEMORY[0x277D85DE8];
  return v32;
}

void sub_21B0C5178(uint64_t a1, void (*a2)(void))
{
  v4 = *(v2 + 24);
  a2();
  if (v3)
  {
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD435E0, &qword_21B117100);
    if (swift_dynamicCast())
    {
      sub_21B0C6560(v7, v8, v9);
    }

    else
    {
      sub_21AF99C38();
      OUTLINED_FUNCTION_4_0();
      *v6 = v3;
      v6[1] = 0;
      OUTLINED_FUNCTION_5_23(v6, 1);
    }
  }
}

uint64_t sub_21B0C522C(uint64_t a1, uint64_t a2)
{
  if (qword_27CD429E8 != -1)
  {
    swift_once();
  }

  v5 = qword_27CD6E7B8 == a1 && unk_27CD6E7C0 == a2;
  if (v5 || (sub_21B112D04() & 1) != 0)
  {
    if (qword_27CD429F8 != -1)
    {
      swift_once();
    }

    v6 = &qword_27CD6E7D8;
  }

  else
  {
    if (qword_27CD42440 != -1)
    {
      swift_once();
    }

    v9 = qword_2811FAB08 == a1 && qword_2811FAB10 == a2;
    if (!v9 && (sub_21B112D04() & 1) == 0)
    {
      sub_21AF99C38();
      OUTLINED_FUNCTION_4_0();
      *v10 = a1;
      v10[1] = a2;
      OUTLINED_FUNCTION_5_23(v10, 6);

      return v2;
    }

    if (qword_27CD42450 != -1)
    {
      swift_once();
    }

    v6 = &qword_27CD6E6B8;
  }

  v2 = *v6;
  v7 = v6[1];

  return v2;
}

uint64_t sub_21B0C53D0(uint64_t a1)
{
  v4 = sub_21B1117B4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = v11 - v10;
  type metadata accessor for Inspector();
  swift_allocObject();

  v14 = sub_21B0C4748(v13);
  v41[3] = v14;
  sub_21B0C65A0(&qword_27CD471E0, 255, type metadata accessor for Inspector);
  sub_21B111674();
  if (v2)
  {
  }

  swift_beginAccess();
  v16 = *(v14[4] + 16);
  if (v16)
  {
    if (v16 == *(*(v1 + 40) + 16))
    {
    }

    else
    {
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v25 = sub_21B1122D4();
      __swift_project_value_buffer(v25, qword_2811FAB28);

      v26 = sub_21B1122B4();
      v27 = sub_21B112714();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v28 = 136315138;
        v29 = v14[4];

        v31 = MEMORY[0x21CEE9880](v30, MEMORY[0x277D837D0]);
        v38 = v27;
        v33 = v32;

        v34 = sub_21AFCEC24(v31, v33, v41);

        *(v28 + 4) = v34;
        _os_log_impl(&dword_21AF80000, v26, v38, "Critical tables are missing: %s. Cleaning warehouse.", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
      }

      sub_21B0C5D80(a1, v14);
    }

    return 0;
  }

  else
  {
    swift_beginAccess();
    if (*(v14[3] + 16))
    {
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v17 = sub_21B1122D4();
      __swift_project_value_buffer(v17, qword_2811FAB28);

      v18 = sub_21B1122B4();
      v19 = sub_21B112714();

      if (os_log_type_enabled(v18, v19))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v42 = v37;
        *v36 = 136315138;
        v39 = v7;
        v20 = v14[3];

        v35 = v19;
        v21 = sub_21B112314();
        v23 = v22;
        v7 = v39;

        v24 = sub_21AFCEC24(v21, v23, &v42);

        *(v36 + 4) = v24;
        _os_log_impl(&dword_21AF80000, v18, v35, "The following schemas changed: %s", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
      }
    }

    sub_21B1116F4();
    sub_21B1117A4();
    (*(v7 + 8))(v12, v4);

    if (v42 <= 1)
    {
      return 1;
    }

    else
    {
      return v42;
    }
  }
}

uint64_t sub_21B0C5904()
{
  v1 = sub_21B1117B4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  sub_21B0C4B08();
  sub_21B1116F4();
  if (v0)
  {
  }

  sub_21B111794();
  return (*(v4 + 8))(v9, v1);
}

uint64_t sub_21B0C5A14()
{
  v1 = sub_21B1117B4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  result = sub_21B1116F4();
  if (!v0)
  {
    sub_21B1117A4();
    return (*(v4 + 8))(v9, v1);
  }

  return result;
}

unint64_t sub_21B0C5B30(uint64_t a1, unint64_t a2)
{
  result = sub_21B0C4A68(a2);
  if (((1 << result) & 0x79) == 0)
  {
    if (((1 << result) & 6) != 0)
    {
      return sub_21B0C5A14();
    }

    else
    {
      sub_21AF99C38();
      v3 = OUTLINED_FUNCTION_4_0();
      return OUTLINED_FUNCTION_4_22(v3, v4);
    }
  }

  return result;
}

uint64_t sub_21B0C5BAC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v5 = sub_21B1117B4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v20 - v14;
  v16 = sub_21B0C4A68(a2);
  if (v16 >= 6)
  {
    if (v16 != 6)
    {
      sub_21AF99C38();
      v18 = OUTLINED_FUNCTION_4_0();
      return OUTLINED_FUNCTION_4_22(v18, v19);
    }
  }

  else
  {
    result = sub_21B1116F4();
    if (v2)
    {
      return result;
    }

    sub_21B111794();
    v3 = 0;
    (*(v8 + 8))(v15, v5);
  }

  sub_21B0C4B08();
  sub_21B1116F4();
  if (v3)
  {
  }

  sub_21B111794();
  return (*(v8 + 8))(v13, v5);
}

void sub_21B0C5D80(uint64_t a1, uint64_t a2)
{
  sub_21B1116C4();
  if (v2)
  {
    sub_21B112904();

    swift_beginAccess();
    v4 = *(a2 + 32);

    v6 = MEMORY[0x21CEE9880](v5, MEMORY[0x277D837D0]);
    v8 = v7;

    MEMORY[0x21CEE9770](v6, v8);

    sub_21AF99C38();
    OUTLINED_FUNCTION_4_0();
    *v9 = 0xD000000000000014;
    v9[1] = 0x800000021B141570;
    OUTLINED_FUNCTION_5_23(v9, 5);
  }
}

uint64_t sub_21B0C5EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a3;
  v24 = sub_21B1117B4();
  v6 = *(v24 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v24);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B111664();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = MEMORY[0x28223BE20](v9);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 40);
  v34 = *(v15 + 16);
  if (v34)
  {
    v30 = v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    result = swift_beginAccess();
    v16 = 0;
    v28 = v10;
    v29 = v10 + 16;
    v23 = (v6 + 8);
    v31 = (v10 + 8);
    v27 = v15;
    while (v16 < *(v15 + 16))
    {
      (*(v10 + 16))(v14, v30 + *(v10 + 72) * v16, v9);
      v17 = a2;
      v18 = *(a2 + 32);

      v32 = sub_21B111654();
      v33 = v19;
      MEMORY[0x28223BE20](v32);
      *(&v23 - 2) = &v32;
      v20 = sub_21B0C64B0(sub_21AF99780, (&v23 - 4), v18);

      if (!v20)
      {
        v32 = 0x42415420504F5244;
        v33 = 0xEB0000000020454CLL;
        v21 = sub_21B111654();
        MEMORY[0x21CEE9770](v21);

        v22 = v25;
        sub_21B1116F4();
        if (v3)
        {
          (*v31)(v14, v9);
        }

        sub_21B111794();
        (*v23)(v22, v24);
      }

      ++v16;
      result = (*v31)(v14, v9);
      a2 = v17;
      v15 = v27;
      v10 = v28;
      if (v34 == v16)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_21B0C6248()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return v0;
}

uint64_t sub_21B0C6278()
{
  sub_21B0C6248();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_21B0C63DC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_21B0C6468(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

BOOL sub_21B0C64B0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

void sub_21B0C6560(void *a1, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 1:
    case 2:
    case 3:

      break;
    default:
      return;
  }
}

uint64_t sub_21B0C65A0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_23SearchOnDeviceAnalytics17WarehouseIncidentO(uint64_t a1)
{
  if ((*(a1 + 16) & 8) != 0)
  {
    return (*a1 + 8);
  }

  else
  {
    return *(a1 + 16) & 0xF;
  }
}

uint64_t sub_21B0C6604(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t sub_21B0C6644(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
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

uint64_t sub_21B0C6688(uint64_t result, unsigned int a2)
{
  if (a2 >= 8)
  {
    *result = a2 - 8;
    *(result + 8) = 0;
    LOBYTE(a2) = 8;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_21B0C66B0(uint64_t a1)
{
  result = sub_21AF99C38();
  *(a1 + 8) = result;
  return result;
}

id sub_21B0C66D8(id result, id a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 4:
    case 5:
    case 6:
    case 7:

      break;
    case 1:
    case 2:
    case 3:
      result = result;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_22(uint64_t a1, uint64_t a2)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 8;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_5_23@<X0>(uint64_t a1@<X1>, char a2@<W8>)
{
  *(a1 + 16) = a2;

  return swift_willThrow();
}

uint64_t sub_21B0C67B8(uint64_t a1, uint64_t a2)
{
  v2 = (*(*(a2 + 8) + 32))();
  if (v2)
  {
    v3 = v2;
    swift_getObjectType();
    result = dynamic_cast_existential_1_conditional(v3);
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_0_21();
  result = sub_21B1129C4();
  __break(1u);
  return result;
}

uint64_t sub_21B0C6850(void *a1)
{
  type metadata accessor for SODAPoirotV1ToV2DataMigrator();
  sub_21B0E4184(a1);
  sub_21B0E4CA8();
}

uint64_t sub_21B0C68B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a3;
  v5 = sub_21B111DE4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v27 - v15;
  v17 = sub_21B111CB4();
  v18 = OUTLINED_FUNCTION_1(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v27 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 24))(a1, a2);
  if (!v25)
  {
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v5);
    goto LABEL_6;
  }

  sub_21B111DD4();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
LABEL_6:
    sub_21B0C6B8C(v16);
    return (*(v20 + 104))(v28, *MEMORY[0x277D39DD8], v17);
  }

  (*(v8 + 16))(v12, v16, v5);
  if ((*(v8 + 88))(v12, v5) == *MEMORY[0x277D39E38])
  {
    (*(v20 + 104))(v24, *MEMORY[0x277D39DD8], v17);
    (*(v8 + 8))(v16, v5);
    return (*(v20 + 32))(v28, v24, v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_21();
    result = sub_21B1129C4();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0C6B8C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD471F0, &unk_21B129F00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

const char *SODAFeatureFlags.feature.getter()
{
  if (*v0)
  {
    return "spotlight_data_warehouse_v1_end_of_life";
  }

  else
  {
    return "search_analytics_worker";
  }
}

unint64_t sub_21B0C6C54()
{
  result = qword_2811FA890;
  if (!qword_2811FA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811FA890);
  }

  return result;
}

uint64_t sub_21B0C6CB0(char a1)
{
  v4[3] = &type metadata for SODAFeatureFlags;
  v4[4] = sub_21B0C6C54();
  LOBYTE(v4[0]) = a1;
  v2 = sub_21B1111D4();
  __swift_destroy_boxed_opaque_existential_0(v4);
  return v2 & 1;
}

uint64_t SODAFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v1);
  return sub_21B112F14();
}

unint64_t sub_21B0C6DA4()
{
  result = qword_27CD471F8;
  if (!qword_27CD471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD471F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SODAFeatureFlags(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0C6F34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47268, &qword_21B12A138);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v26 - v11;
  sub_21AF99A84(a3, v26 - v11, &qword_27CD47268, &qword_21B12A138);
  v13 = sub_21B112654();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v12, &qword_27CD47268, &qword_21B12A138);
  }

  else
  {
    sub_21B112644();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21B112634();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21B112484() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_21AF99BE0(a3, &qword_27CD47268, &qword_21B12A138);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21AF99BE0(a3, &qword_27CD47268, &qword_21B12A138);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21B0C7218()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  result = sub_21B0C94B0(0xD000000000000024, 0x800000021B141850);
  if (!result)
  {
    result = OUTLINED_FUNCTION_10_12();
    __break(1u);
  }

  return result;
}

uint64_t sub_21B0C72E8()
{
  v0 = sub_21B111DE4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  sub_21B111D64();
  v9 = sub_21B111DC4();
  (*(v3 + 8))(v8, v0);
  return v9;
}

uint64_t sub_21B0C73D8(unsigned int *a1)
{
  v4 = sub_21B111DA4();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v10 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  (*(v7 + 104))(v2, *a1, v4);
  LOBYTE(a1) = sub_21AFACAE4(v1 + v10, v2);
  (*(v7 + 8))(v2, v4);
  return a1 & 1;
}

void sub_21B0C74C0(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for SODAAssetProvider();
  v6 = OUTLINED_FUNCTION_4_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v9 = sub_21B111E34();
  v10 = OUTLINED_FUNCTION_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v17 = v16 - v15;
  v18 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider;
  swift_beginAccess();
  sub_21AF99A84(v1 + v18, &v31, &unk_27CD47240, &unk_21B12B2D0);
  if (v32)
  {
    sub_21AF81D68(&v31, &v33);
    sub_21AF81D68(&v33, a1);
  }

  else
  {
    sub_21AF99BE0(&v31, &unk_27CD47240, &unk_21B12B2D0);
    v19 = sub_21B0C7784();
    v28 = v20;
    v29 = v19;
    sub_21B111D54();
    v21 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_config);
    a1[3] = v5;
    a1[4] = &off_282C930E0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    v22 = [objc_opt_self() sharedManager];
    *(v2 + 3) = sub_21AF9406C(0, &qword_27CD47260, 0x277D779F8);
    *(v2 + 4) = &off_282C92FB8;
    *v2 = v22;
    *(v2 + 5) = v29;
    *(v2 + 6) = v28;
    (*(v12 + 16))(&v2[v5[6]], v17, v9);
    v23 = sub_21B111E04();
    v24 = &v2[v5[7]];
    *v24 = v23;
    v24[1] = v25;
    if (v21)
    {
      swift_getObjectType();
      v26 = sub_21AFCD620();
    }

    else
    {
      v26 = 0;
    }

    (*(v12 + 8))(v17, v9);
    v2[v5[8]] = v26 & 1;
    sub_21B0C9774(v2, boxed_opaque_existential_1);
    v34 = v5;
    v35 = &off_282C930E0;
    v27 = __swift_allocate_boxed_opaque_existential_1(&v33);
    sub_21B0C97D8(boxed_opaque_existential_1, v27);
    swift_beginAccess();
    sub_21B0C983C(&v33, v3 + v18);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0C7784()
{
  v1 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  v2 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  if (v2)
  {
    v3 = v1[1];
    v4 = v2;
  }

  else
  {
    type metadata accessor for SODAActivityMonitor();
    v4 = swift_allocObject();
    type metadata accessor for ActivityMonitor();
    swift_allocObject();
    *(v4 + 16) = sub_21B0B522C();
    v5 = sub_21AFD0228();
    v6 = *v1;
    *v1 = v4;
    v1[1] = v5;

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v4;
}

uint64_t sub_21B0C7834()
{
  v1 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();
  MEMORY[0x21CEE9770](0x6174537478656E2ELL, 0xEA00000000007472);
  return v1;
}

uint64_t sub_21B0C7890()
{
  sub_21B112904();
  v0 = _s23SearchOnDeviceAnalytics17CASupportedRecipeV8rawValueSSvg_0();

  MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B141830);
  return v0;
}

uint64_t sub_21B0C7920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v12 = sub_21B110F84();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_cutoffTime;
  sub_21B110F74();
  sub_21B110F44();
  v23 = v22;
  (*(v15 + 8))(v20, v12);
  *(v7 + v21) = v23;
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_ignoreMaximumLookbackTime) = 0;
  v24 = v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v25 = (v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  *v25 = 0;
  v25[1] = 0;
  v26 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  v27 = sub_21B111DA4();
  v28 = *(v27 - 8);
  (*(v28 + 16))(v7 + v26, a1, v27);
  if (a5)
  {
    v29 = a5;
  }

  else
  {
    sub_21AF9406C(0, &qword_27CD437B8, 0x277CBEBD0);
    v29 = sub_21B0C7218();
  }

  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults) = v29;
  v30 = *v25;
  *v25 = a2;
  v25[1] = a3;
  v31 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  swift_beginAccess();
  sub_21B0C92D4(a4, v24);
  swift_endAccess();
  v32 = static ConfigPlistLoader.loadConfig(fileManager:userDefaults:)(a6, a5);

  swift_unknownObjectRelease();
  sub_21AF99BE0(a4, &unk_27CD47240, &unk_21B12B2D0);
  (*(v28 + 8))(a1, v27);
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_config) = v32;
  *(v7 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_fileManager) = a6;
  return v7;
}

uint64_t sub_21B0C7BE0(void (*a1)(void))
{
  v2 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  a1();
  v3 = sub_21B1123D4();

  v4 = [v2 objectForKey_];

  if (v4)
  {
    sub_21B112864();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_21AF99BE0(v9, &unk_27CD47250, &qword_21B12A130);
    return 0;
  }
}

void sub_21B0C7D00(uint64_t a1, char a2, void (*a3)(void))
{
  v5 = *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  if (a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_21B112674();
  }

  a3();
  v7 = sub_21B1123D4();

  [v5 setValue:v6 forKey:v7];
  swift_unknownObjectRelease();
}

uint64_t sub_21B0C7DA4@<X0>(uint64_t a1@<X8>)
{
  v1 = sub_21B111DE4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_21B111E34();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  sub_21B0C74C0(v36);
  __swift_project_boxed_opaque_existential_0(v36, v36[3]);
  sub_21B111D54();
  v19 = sub_21B111E14();
  v32 = v20;
  v33 = v19;
  (*(v13 + 8))(v18, v10);
  sub_21B111D64();
  v21 = sub_21B111DB4();
  v23 = v22;
  (*(v4 + 8))(v9, v1);
  v24 = sub_21B111D34();
  v26 = v25;
  v27 = sub_21B111D24();
  v29 = v28;
  v35[3] = &type metadata for RecipeAssetSpecifier;
  v35[4] = &off_282C96F80;
  v30 = swift_allocObject();
  v35[0] = v30;
  v30[2] = v33;
  v30[3] = v32;
  v30[4] = v21;
  v30[5] = v23;
  v30[6] = v24;
  v30[7] = v26;
  v30[8] = v27;
  v30[9] = v29;
  v30[10] = v27;
  v30[11] = v29;

  sub_21AFC5C84(v35, a1);
  __swift_destroy_boxed_opaque_existential_0(v35);
  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_21B0C7FD4()
{
  v1 = sub_21B111DA4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName, v1);
  v10 = (*(v4 + 88))(v9, v1);
  if (v10 == *MEMORY[0x277D39E10])
  {
    v11 = &unk_282C8D8D0;
    return sub_21AF9EBB0(v11);
  }

  if (v10 == *MEMORY[0x277D39E08])
  {
    v11 = &unk_282C8D8F8;
    return sub_21AF9EBB0(v11);
  }

  if (v10 == *MEMORY[0x277D39DF8])
  {
    v11 = &unk_282C8D920;
    return sub_21AF9EBB0(v11);
  }

  if (v10 == *MEMORY[0x277D39E00])
  {
    v11 = &unk_282C8D948;
    return sub_21AF9EBB0(v11);
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = sub_21B1129C4();
  __break(1u);
  return result;
}

void sub_21B0C815C(uint64_t a1@<X8>)
{
  v3 = sub_21B110CA4();
  v4 = OUTLINED_FUNCTION_1(v3);
  v47 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_21B110D94();
  v12 = OUTLINED_FUNCTION_1(v11);
  v48 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v46 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v46 - v27;
  v29 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
  v30 = sub_21B1123D4();
  LODWORD(v29) = [v29 BOOLForKey_];

  if (!v29)
  {
    v31 = *MEMORY[0x277D3DF70];
    v32 = sub_21B1112C4();
    OUTLINED_FUNCTION_4_1(v32);
    v34 = *(v33 + 104);
    OUTLINED_FUNCTION_77();

    __asm { BRAA            X3, X16 }
  }

  sub_21B111A34();
  __swift_storeEnumTagSinglePayload(v28, 0, 1, v11);
  sub_21AF99A84(v28, v23, &qword_27CD43750, &qword_21B117A30);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v23, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_21AF99BE0(v23, &qword_27CD43750, &qword_21B117A30);
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v11);
    v38 = [objc_opt_self() defaultManager];
    v39 = [v38 temporaryDirectory];

    sub_21B110D34();
    sub_21AF99BE0(v28, &qword_27CD43750, &qword_21B117A30);
    v40 = __swift_getEnumTagSinglePayload(v26, 1, v11);
    v41 = v48;
    if (v40 != 1)
    {
      sub_21AF99BE0(v26, &qword_27CD43750, &qword_21B117A30);
    }
  }

  else
  {
    v49 = 0x6F4C657069636572;
    v50 = 0xEA00000000007367;
    v42 = v47;
    (*(v47 + 104))(v10, *MEMORY[0x277CC91D8], v3);
    sub_21AFC921C();
    sub_21B110D84();
    (*(v42 + 8))(v10, v3);
    sub_21AF99BE0(v28, &qword_27CD43750, &qword_21B117A30);
    v41 = v48;
    (*(v48 + 8))(v23, v11);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v11);
    (*(v41 + 32))(v18, v26, v11);
  }

  (*(v41 + 32))(a1, v18, v11);
  v43 = *MEMORY[0x277D3DF68];
  v44 = sub_21B1112C4();
  OUTLINED_FUNCTION_4_1(v44);
  (*(v45 + 104))(a1, v43);
  OUTLINED_FUNCTION_77();
}

uint64_t sub_21B0C8624()
{
  result = sub_21B0C7784();
  v2 = *(v1 + 8);
  return result;
}

uint64_t sub_21B0C8640()
{
  v1 = sub_21B111DA4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  (*(v4 + 16))(v8 - v7, v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName, v1);
  v10 = (*(v4 + 88))(v9, v1);
  if (v10 == *MEMORY[0x277D39E10])
  {
    goto LABEL_2;
  }

  if (v10 == *MEMORY[0x277D39E08])
  {
    goto LABEL_6;
  }

  if (v10 == *MEMORY[0x277D39DF8])
  {
LABEL_2:
    v11 = 1;
    return v11 & 1;
  }

  if (v10 == *MEMORY[0x277D39E00])
  {
LABEL_6:
    v11 = sub_21B0C8798();
    return v11 & 1;
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = OUTLINED_FUNCTION_10_12();
  __break(1u);
  return result;
}

uint64_t sub_21B0C8798()
{
  v1 = v0;
  v48 = sub_21B110F84();
  v2 = OUTLINED_FUNCTION_1(v48);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C28, &unk_21B113F30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - v12;
  v14 = sub_21B111DA4();
  v15 = OUTLINED_FUNCTION_1(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v47 - v23;
  sub_21B0C8B1C(v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    sub_21AF99BE0(v13, &qword_27CD42C28, &unk_21B113F30);
    OUTLINED_FUNCTION_9_13();
    v47 = 156;
    OUTLINED_FUNCTION_0_21();
    result = OUTLINED_FUNCTION_10_12();
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v24, v13, v14);
    (*(v17 + 16))(v22, v24, v14);
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    v25 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_userDefaults);
    v26 = *(v1 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_fileManager);
    v27 = type metadata accessor for RegisteredRecipeEnvironment();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    v30 = v25;
    sub_21B0C7920(v22, 0, 0, v49, v25, v26);
    v31 = sub_21B0C7B98();
    LOBYTE(v26) = v32;

    v33 = sub_21B0C7B98();
    v35 = sub_21AFC9A34(v31, v26 & 1, v33, v34 & 1);
    if (v36)
    {
      (*(v17 + 8))(v24, v14);
      return 0;
    }

    else
    {
      v38 = *&v35;
      sub_21B110F74();
      sub_21B110F44();
      v40 = v39;
      (*(v4 + 8))(v9, v48);
      v41 = sub_21B0C7BC8();
      sub_21AFC9BB4(v41, v42 & 1, *&v40, v38);
      v44 = v43;
      sub_21B0C7CE8(v40, 0);
      sub_21B0C96FC(COERCE_DOUBLE(1), 1.0);
      v46 = v45;
      (*(v17 + 8))(v24, v14);
      return v46 <= v44;
    }
  }

  return result;
}

uint64_t sub_21B0C8B1C@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v5 = sub_21B111DA4();
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  (*(v8 + 16))(v2, v3, v5);
  v11 = (*(v8 + 88))(v2, v5);
  if (v11 == *MEMORY[0x277D39E10])
  {
    goto LABEL_2;
  }

  if (v11 == *MEMORY[0x277D39E08])
  {
    goto LABEL_6;
  }

  if (v11 == *MEMORY[0x277D39DF8])
  {
LABEL_2:
    v12 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v12, 1, v5);
  }

  if (v11 == *MEMORY[0x277D39E00])
  {
LABEL_6:
    (*(v8 + 104))(a1);
    v12 = 0;
    return __swift_storeEnumTagSinglePayload(a1, v12, 1, v5);
  }

  OUTLINED_FUNCTION_9_13();
  OUTLINED_FUNCTION_0_21();
  result = OUTLINED_FUNCTION_10_12();
  __break(1u);
  return result;
}

void sub_21B0C8CA0()
{
  v1 = sub_21B111DE4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = sub_21B111E34();
  v11 = OUTLINED_FUNCTION_1(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_414();
  v16 = sub_21B111DA4();
  v17 = OUTLINED_FUNCTION_1(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = sub_21B111D74();
  v26 = *(v25 + 16);
  if (v26)
  {
    v28 = *(v19 + 16);
    v27 = v19 + 16;
    v29 = v25 + ((*(v27 + 64) + 32) & ~*(v27 + 64));
    v49 = *(v27 + 56);
    v50 = v28;
    v47 = (v4 + 8);
    v48 = (v13 + 8);
    v51 = v16;
    v46 = (v27 - 8);
    do
    {
      v54 = v26;
      v50(v24, v29, v16);
      sub_21B111D54();
      v30 = sub_21B111E14();
      v52 = v31;
      v53 = v30;
      (*v48)(v0, v10);
      sub_21B111D64();
      v32 = v10;
      v33 = sub_21B111DB4();
      v34 = v0;
      v36 = v35;
      (*v47)(v9, v1);
      v37 = v24;
      v38 = v9;
      v39 = sub_21B111D34();
      v40 = v1;
      v42 = v41;
      v43 = sub_21B111D24();
      v55[0] = v53;
      v55[1] = v52;
      v55[2] = v33;
      v55[3] = v36;
      v10 = v32;
      v0 = v34;
      v16 = v51;
      v55[4] = v39;
      v55[5] = v42;
      v9 = v38;
      v1 = v40;
      v24 = v37;
      v55[6] = v43;
      v55[7] = v44;
      v55[8] = v43;
      v55[9] = v44;

      sub_21B0C98AC(v55);
      sub_21B0CA094(v55);
      (*v46)(v37, v51);
      v29 += v49;
      v26 = v54 - 1;
    }

    while (v54 != 1);

    OUTLINED_FUNCTION_77();
  }

  else
  {
    OUTLINED_FUNCTION_77();
  }
}

uint64_t sub_21B0C8F9C()
{
  v1 = OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_knownRecipeName;
  v2 = sub_21B111DA4();
  OUTLINED_FUNCTION_4_1(v2);
  (*(v3 + 8))(v0 + v1);

  v4 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment_config);
  swift_unknownObjectRelease();
  sub_21AF99BE0(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__recipeLocationProvider, &unk_27CD47240, &unk_21B12B2D0);
  v5 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics27RegisteredRecipeEnvironment__activityMonitor);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_21B0C9054()
{
  sub_21B0C8F9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for RegisteredRecipeEnvironment()
{
  result = qword_27CD47230;
  if (!qword_27CD47230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0C9100()
{
  result = sub_21B111DA4();
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

void (*sub_21B0C921C(uint64_t a1))(uint64_t a1)
{
  *(a1 + 16) = v1;
  *a1 = sub_21B0C7B98();
  *(a1 + 8) = v3 & 1;
  return sub_21B0C926C;
}

uint64_t sub_21B0C92D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_21B0C9344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_21B1123D4();

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
    v11 = sub_21B1122E4();

    if (a4)
    {
LABEL_3:
      v12 = sub_21B1122E4();

      goto LABEL_6;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:
  v13 = sub_21B110F84();
  v14 = 0;
  if (__swift_getEnumTagSinglePayload(a5, 1, v13) != 1)
  {
    v14 = sub_21B110F14();
    (*(*(v13 - 8) + 8))(a5, v13);
  }

  v15 = [v6 initWithName:v10 assetSets:v11 usageAliases:v12 expires:v14];

  return v15;
}

id sub_21B0C94B0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_21B1123D4();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_21B0C9514(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21B0C960C;

  return v7(a1);
}

uint64_t sub_21B0C960C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_6_17();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

void sub_21B0C96FC(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    sub_21B0B33E8(0x20000000000001uLL);
  }
}

uint64_t sub_21B0C9774(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SODAAssetProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C97D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SODAAssetProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C983C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CD47240, &unk_21B12B2D0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0C98AC(const void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47268, &qword_21B12A138);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47270, &qword_21B12A140);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v62 - v7;
  v63 = sub_21B110F84();
  v65 = *(v63 - 8);
  v9 = *(v65 + 64);
  v10 = MEMORY[0x28223BE20](v63);
  MEMORY[0x28223BE20](v10);
  v12 = &v62 - v11;
  v70[3] = &type metadata for RecipeAssetSpecifier;
  v70[4] = &off_282C96F80;
  v13 = swift_allocObject();
  v70[0] = v13;
  memcpy((v13 + 16), a1, 0x50uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47278, &qword_21B12A148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B113D90;
  strcpy((inited + 32), "com.apple.odla");
  *(inited + 47) = -18;
  memcpy(__dst, (v13 + 16), sizeof(__dst));
  v15 = __dst[2];
  v16 = __dst[3];
  v18 = __dst[4];
  v17 = __dst[5];
  sub_21B0CA0E8(a1, v71);
  *(inited + 48) = sub_21B0E3CF0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47280, &qword_21B12A150);
  v19 = sub_21B112334();
  sub_21B110F64();
  sub_21B110EE4();
  v71[0] = 0x2D73657069636572;
  v71[1] = 0xE800000000000000;
  v20 = v16;
  v21 = v63;
  MEMORY[0x21CEE9770](v15, v20);
  MEMORY[0x21CEE9770](45, 0xE100000000000000);
  MEMORY[0x21CEE9770](v18, v17);
  v22 = v71[0];
  v23 = v71[1];
  v24 = *(v65 + 16);
  v64 = v12;
  v24(v8, v12, v21);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v21);
  v25 = objc_allocWithZone(MEMORY[0x277D77A08]);
  v26 = sub_21B0C9344(v22, v23, v19, 0, v8);
  if (v26)
  {
    v27 = v26;
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v28 = sub_21B1122D4();
    __swift_project_value_buffer(v28, qword_2811FAB28);
    sub_21AF92198(v70, &v68);
    v29 = sub_21B1122B4();
    v30 = sub_21B1126F4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136315138;
      v33 = __swift_project_boxed_opaque_existential_0(&v68, v69);
      memcpy(v71, v33, sizeof(v71));
      v34 = sub_21B0E3C60();
      v36 = v35;
      __swift_destroy_boxed_opaque_existential_0(&v68);
      v37 = sub_21AFCEC24(v34, v36, v67);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_21AF80000, v29, v30, "Subscribing to known assetSpecifierID: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x21CEEA9A0](v32, -1, -1);
      MEMORY[0x21CEEA9A0](v31, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(&v68);
    }

    v57 = sub_21B112654();
    v58 = v62;
    __swift_storeEnumTagSinglePayload(v62, 1, 1, v57);
    sub_21AF92198(v70, &v68);
    v59 = swift_allocObject();
    v59[2] = 0;
    v59[3] = 0;
    sub_21AF81D68(&v68, (v59 + 4));
    v59[9] = v27;
    v60 = v27;
    sub_21B0C6F34(0, 0, v58, &unk_21B12A158, v59);

    (*(v65 + 8))(v64, v21);
  }

  else
  {
    v38 = v21;
    if (qword_2811FAAD8 != -1)
    {
      swift_once();
    }

    v39 = sub_21B1122D4();
    __swift_project_value_buffer(v39, qword_2811FAB28);
    sub_21AF92198(v70, &v68);
    sub_21AF92198(v70, v67);
    v40 = sub_21B1122B4();
    v41 = sub_21B112704();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v66 = v43;
      *v42 = 136315650;
      v44 = __swift_project_boxed_opaque_existential_0(&v68, v69);
      v46 = v44[2];
      v45 = v44[3];
      v47 = v44[4];
      v48 = v44[5];
      v71[0] = 0x2D73657069636572;
      v71[1] = 0xE800000000000000;
      MEMORY[0x21CEE9770](v46, v45);
      MEMORY[0x21CEE9770](45, 0xE100000000000000);
      MEMORY[0x21CEE9770](v47, v48);
      v49 = v71[0];
      v50 = v71[1];
      __swift_destroy_boxed_opaque_existential_0(&v68);
      v51 = sub_21AFCEC24(v49, v50, &v66);

      *(v42 + 4) = v51;
      *(v42 + 12) = 2080;
      *(v42 + 14) = sub_21AFCEC24(0x6C7070612E6D6F63, 0xEE00616C646F2E65, &v66);
      *(v42 + 22) = 2080;
      v52 = __swift_project_boxed_opaque_existential_0(v67, v67[3]);
      memcpy(v71, v52, sizeof(v71));
      sub_21B0E3CF0();
      v53 = sub_21B112314();
      v55 = v54;

      __swift_destroy_boxed_opaque_existential_0(v67);
      v56 = sub_21AFCEC24(v53, v55, &v66);

      *(v42 + 24) = v56;
      _os_log_impl(&dword_21AF80000, v40, v41, "Failed to initialize UAFAssetSetSubscription for subscription name %s, assetSetName: %s, usageTypes: %s", v42, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x21CEEA9A0](v43, -1, -1);
      MEMORY[0x21CEEA9A0](v42, -1, -1);

      (*(v65 + 8))(v64, v38);
    }

    else
    {

      (*(v65 + 8))(v64, v38);
      __swift_destroy_boxed_opaque_existential_0(&v68);
      __swift_destroy_boxed_opaque_existential_0(v67);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

uint64_t sub_21B0CA144(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[9];
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_5_24(v6);
  *v7 = v8;
  v7[1] = sub_21B0CA1FC;

  return sub_21AFC8478(a1, v3, v4, (v1 + 4), v5);
}

uint64_t sub_21B0CA1FC()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  OUTLINED_FUNCTION_6_17();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_21B0CA2E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_24(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_23(v4);

  return v7(v6);
}

uint64_t sub_21B0CA380()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_5_24(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_4_23(v4);

  return v7(v6);
}

uint64_t OUTLINED_FUNCTION_4_23(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_10_12()
{

  return sub_21B1129C4();
}

uint64_t Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent.init(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v44 = a1;
  v51 = a2;
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  v5 = (v4 - 8);
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v43[0] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21B110D94();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  a3[2] = MEMORY[0x277D84F90];
  v16 = a3 + v5[8];
  sub_21B111EB4();
  v17 = v5[9];
  v18 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ReportMetadata(0);
  OUTLINED_FUNCTION_1_21(v18);
  v19 = v5[10];
  v20 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_GlobalDimensions(0);
  OUTLINED_FUNCTION_1_21(v20);
  type metadata accessor for UploadBlock();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  v23 = sub_21B1123D4();
  v24 = sub_21B1123D4();
  v25 = [v22 URLForResource:v23 withExtension:v24];

  if (v25)
  {
    sub_21B110D34();

    (*(v9 + 32))(v15, v13, v8);
    v26 = sub_21B110B84();
    v27 = *(v26 + 48);
    v28 = *(v26 + 52);
    swift_allocObject();
    sub_21B110B74();
    v29 = v43[1];
    v30 = sub_21B110DC4();
    if (!v29)
    {
      v35 = v30;
      v36 = v31;
      sub_21AFC5618();
      sub_21B110B64();
      v37 = OUTLINED_FUNCTION_0_22();
      v38(v37);
      sub_21AF99728(v35, v36);

      v49[0] = v45;
      v49[1] = v46;
      v49[2] = v47;
      v50 = v48;
      v39 = v44;
      v40 = v51;
      sub_21AF99818(v44, v51);
      sub_21AF99728(0, 0xC000000000000000);
      sub_21AF99818(v39, v40);
      sub_21AF99728(v39, v40);
      *&v45 = v39;
      *(&v45 + 1) = v40;
      *&v46 = 0;
      v41 = v43[0];
      sub_21B0CA8D8(v49, v43[0]);
      sub_21B0CAA60(v49);
      sub_21AF99728(v39, v40);
      sub_21AF99728(v45, *(&v45 + 1));
      sub_21B0CA87C(a3);
      return sub_21B0CAAB4(v41, a3);
    }

    v32 = OUTLINED_FUNCTION_0_22();
    v33(v32);
  }

  else
  {
    sub_21AFC53EC();
    swift_allocError();
    *v34 = 0;
    swift_willThrow();
  }

  sub_21B0CA87C(a3);
  return sub_21AF99728(v44, v51);
}

uint64_t sub_21B0CA87C(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21B0CA8D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v5 = *(v2 + 16);
  v6 = __OFADD__(v5, 10);
  v7 = v5 + 10;
  if (v6)
  {
    __break(1u);
    return result;
  }

  v8 = result;
  v23 = a2;
  *(v4 + 16) = v7;
  sub_21AFC5454(result, &v16);
  AvroRecord.init(schema:)(&v17, v8);
  rawValue = v8->fields._rawValue;
  v10 = rawValue[2];
  if (!v10)
  {
LABEL_8:
    v22 = v17;
    sub_21B0CAB18();
    v15 = &v22;
    return sub_21AFC5398(v15);
  }

  v11 = rawValue + 6;
  while (1)
  {
    v13 = *(v11 - 2);
    v12 = *(v11 - 1);
    v14 = *v11;

    ByteBuffer.readAvroValue(_:)(v14, v18);
    if (v19 != 255)
    {
      break;
    }

LABEL_7:
    v11 += 3;

    if (!--v10)
    {
      goto LABEL_8;
    }
  }

  v20[0] = v18[0];
  v20[1] = v18[1];
  v20[2] = v18[2];
  v20[3] = v18[3];
  v21 = v19;
  AvroRecord.set(_:forField:)(v20, v13, v12);
  if (!v3)
  {
    sub_21B0CACC8(v18);
    goto LABEL_7;
  }

  sub_21B0CACC8(v18);

  v16 = v17;
  v15 = &v16;
  return sub_21AFC5398(v15);
}

uint64_t sub_21B0CAAB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0CAB18()
{
  v0 = sub_21B111F04();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  AvroRecord.subscript.getter();
  if (v8 == 255)
  {
    sub_21B0CAD30();
    swift_allocError();
    *v3 = 0;
    return swift_willThrow();
  }

  else
  {
    v9 = v7[0];
    v10 = v7[1];
    v11 = v7[2];
    v12 = v7[3];
    v13 = v8;
    AvroValue.getPrimitive<A>()(MEMORY[0x277CC9318], v5);
    if (*(&v5[0] + 1) >> 60 == 15)
    {
      sub_21B0CAD30();
      swift_allocError();
      *v2 = 1;
      swift_willThrow();
    }

    else
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsUploadEvent(0);
      v6 = 0;
      memset(v5, 0, sizeof(v5));
      sub_21B111EF4();
      sub_21AFC5504();
      sub_21B1120E4();
    }

    return sub_21B0CACC8(v7);
  }
}

uint64_t sub_21B0CACC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47288, &unk_21B12A180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0CAD30()
{
  result = qword_27CD47290;
  if (!qword_27CD47290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47290);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TranslationUtilError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21B0CAE64()
{
  result = qword_27CD47298;
  if (!qword_27CD47298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47298);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, a1);
}

uint64_t getEnumTagSinglePayload for ResourceAccessOutcome(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x83)
  {
    if (a2 + 125 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 125) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 126;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7E;
  v5 = v6 - 126;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ResourceAccessOutcome(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 125 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 125) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x83)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x82)
  {
    v6 = ((a2 - 131) >> 8) + 1;
    *result = a2 + 125;
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
          *result = a2 + 125;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_21B0CB0E0(char a1)
{
  OUTLINED_FUNCTION_4_24();
  MEMORY[0x21CEEA150](qword_21B12A3D0[a1]);
  return sub_21B112F14();
}

uint64_t sub_21B0CB7CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = OUTLINED_FUNCTION_4_24();
  a3(v4);
  OUTLINED_FUNCTION_7_14();
  return sub_21B112F14();
}

uint64_t sub_21B0CB858(uint64_t a1, void (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_24();
  a2(a1);
  OUTLINED_FUNCTION_3_22();

  return sub_21B112F14();
}

uint64_t sub_21B0CB8A8(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A568[a1]);
  return sub_21B112F14();
}

uint64_t sub_21B0CB8FC()
{
  OUTLINED_FUNCTION_4_24();
  OUTLINED_FUNCTION_0_23();
  return sub_21B112F14();
}

uint64_t sub_21B0CB940(uint64_t a1)
{
  OUTLINED_FUNCTION_4_24();
  MEMORY[0x21CEEA150](a1);
  return sub_21B112F14();
}

uint64_t sub_21B0CB980()
{
  OUTLINED_FUNCTION_4_24();
  sub_21B0CB9C0();
  return sub_21B112F14();
}

uint64_t sub_21B0CB9C0()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBAE0()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBBC0()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBC28()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBCA4(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 4:
      OUTLINED_FUNCTION_6_18();
      break;
    default:
      break;
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBDC8()
{
  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBE30(uint64_t a1, char a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_22();
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CBEB0(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
    case 2:
      OUTLINED_FUNCTION_6_18();
      break;
    default:
      break;
  }

  _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_21B0CC164()
{
  OUTLINED_FUNCTION_2_24();
  if (!v0)
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_5_25();

  return sub_21B112F14();
}

uint64_t sub_21B0CC1E8()
{
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_5_25();

  return sub_21B112F14();
}

uint64_t sub_21B0CC26C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_21B112EC4();
  a3(a2);
  OUTLINED_FUNCTION_3_22();

  return sub_21B112F14();
}

uint64_t sub_21B0CC2C0()
{
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_5_25();

  return sub_21B112F14();
}

uint64_t sub_21B0CC340()
{
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_5_25();

  return sub_21B112F14();
}

uint64_t sub_21B0CC3AC()
{
  sub_21B112EC4();
  OUTLINED_FUNCTION_0_23();
  return sub_21B112F14();
}

uint64_t sub_21B0CC3E4(uint64_t a1, char a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A3D0[a2]);
  return sub_21B112F14();
}

uint64_t sub_21B0CC434(uint64_t a1, char a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](qword_21B12A568[a2]);
  return sub_21B112F14();
}

uint64_t sub_21B0CC488(uint64_t a1, uint64_t a2)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a2);
  return sub_21B112F14();
}

uint64_t sub_21B0CCA8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v5 = sub_21B112EC4();
  a4(v5);
  OUTLINED_FUNCTION_7_14();
  return sub_21B112F14();
}

uint64_t sub_21B0CCAE0()
{
  OUTLINED_FUNCTION_2_24();
  OUTLINED_FUNCTION_5_25();

  return sub_21B112F14();
}

uint64_t sub_21B0CCB40()
{
  OUTLINED_FUNCTION_2_24();
  sub_21B0CB9C0();
  return sub_21B112F14();
}

uint64_t sub_21B0CCB7C(uint64_t a1)
{
  v3 = a1 - 496;
  if (!(!v2 & v1))
  {
    result = 45;
    switch(v3)
    {
      case 0:
        return 15;
      case 1:
        return 16;
      case 2:
        return 17;
      case 3:
        return 18;
      case 4:
        return 19;
      case 5:
        return 20;
      case 6:
        return 21;
      case 7:
        return 22;
      case 8:
        return 23;
      case 9:
        return 24;
      case 10:
        return 25;
      case 11:
        return 26;
      case 12:
        return 27;
      case 13:
        return 28;
      case 14:
        return 29;
      case 15:
        return 30;
      case 16:
        return 31;
      case 17:
        return 32;
      case 18:
        return 33;
      case 19:
        return 34;
      case 20:
        return 35;
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 45:
      case 46:
      case 47:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 63:
      case 64:
      case 65:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 71:
      case 72:
      case 73:
      case 74:
      case 75:
      case 76:
      case 77:
      case 78:
      case 82:
      case 83:
        return 126;
      case 54:
        return 36;
      case 55:
        return 37;
      case 56:
        return 38;
      case 57:
        return 39;
      case 58:
        return 40;
      case 59:
        return 41;
      case 60:
        return 42;
      case 61:
        return 43;
      case 62:
        return 44;
      case 79:
        return result;
      case 80:
        return 46;
      case 81:
        return 47;
      case 84:
        return 48;
      case 85:
        return 49;
      case 86:
        return 50;
      case 87:
        return 51;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 700:
      return 56;
    case 701:
      return 57;
    case 702:
      return 58;
    case 1101:
      return 78;
    case 1102:
      return 79;
    case 1200:
      return 80;
    case 1420:
      return 105;
    case 1600:
      return 121;
    case 1601:
      return 122;
    case 1700:
      return 123;
    case 1701:
      return 124;
    case 1702:
      return 125;
  }

  return 126;
}

uint64_t sub_21B0CD19C(uint64_t result)
{
  switch(result)
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
    case 20:
    case 21:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 50:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
    case 67:
    case 100:
      return result;
    case 22:
    case 36:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 64:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
      goto LABEL_9;
    default:
      if ((result - 200) >= 3 && (result - 600) >= 3 && (result - 300) >= 2 && (result - 400) >= 2 && result != 500 && result != 700)
      {
LABEL_9:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_21B0CD240@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21B0CCB7C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_21B0CD26C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_21B0CD188(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_21B0CD2E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_21B0CD19C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_21B0CD328()
{
  result = qword_27CD472A0;
  if (!qword_27CD472A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472A0);
  }

  return result;
}

unint64_t sub_21B0CD380()
{
  result = qword_27CD472A8;
  if (!qword_27CD472A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_23()
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_21B112EC4();
}

uint64_t OUTLINED_FUNCTION_3_22()
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t OUTLINED_FUNCTION_4_24()
{

  return sub_21B112EC4();
}

uint64_t OUTLINED_FUNCTION_5_25()
{

  return _s9SwiftAvro13InternalErrorV4hash4intoys6HasherVz_tF_0();
}

uint64_t OUTLINED_FUNCTION_7_14()
{

  return sub_21B112374();
}

uint64_t type metadata accessor for LegacyMessageManifest()
{
  result = qword_27CD472B0;
  if (!qword_27CD472B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0CD52C()
{
  result = sub_21B111954();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_21B0CD598()
{
  v0 = sub_21B112A34();

  return v0 != 0;
}

BOOL sub_21B0CD5EC@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_21B0CD598();
  *a2 = result;
  return result;
}

BOOL sub_21B0CD65C@<W0>(_BYTE *a1@<X8>)
{
  result = sub_21B0CD598();
  *a1 = result;
  return result;
}

uint64_t sub_21B0CD688(uint64_t a1)
{
  v2 = sub_21B0CDBB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0CD6C4(uint64_t a1)
{
  v2 = sub_21B0CDBB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0CD700@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v66 = type metadata accessor for LegacyFieldManifest();
  v3 = OUTLINED_FUNCTION_1(v66);
  v70 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v69 = v8 - v7;
  v9 = sub_21B111954();
  v10 = OUTLINED_FUNCTION_1(v9);
  v71 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD472C0, &qword_21B12A9A0);
  v18 = OUTLINED_FUNCTION_1(v17);
  v68 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v18);
  v23 = &v59 - v22;
  v24 = type metadata accessor for LegacyMessageManifest();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0CDBB4();
  v30 = v72;
  sub_21B112F34();
  if (v30)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v72 = v28;
  v64 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD472D0, &unk_21B12A9A8);
  sub_21B0CDC08();
  sub_21B112A84();
  v31 = v23;
  v33 = v73;
  v62 = v9;
  v63 = a1;
  v60 = v31;
  v61 = v17;
  v59 = 0;
  if (!v73)
  {
    v33 = sub_21B112334();
  }

  v35 = v71;
  v34 = v72;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47168, &unk_21B129850);
  result = sub_21B1129F4();
  v36 = result;
  v37 = 0;
  v38 = v33 + 64;
  v39 = 1 << *(v33 + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & *(v33 + 64);
  v42 = (v39 + 63) >> 6;
  v65 = result + 64;
  v66 = v33;
  while (1)
  {
    v43 = v69;
    if (!v41)
    {
      break;
    }

    v44 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
LABEL_16:
    v49 = v44 | (v37 << 6);
    v50 = (*(v66 + 48) + 16 * v49);
    v51 = *v50;
    v52 = v50[1];
    sub_21B0CDCEC(*(v66 + 56) + *(v70 + 72) * v49, v69);
    *(v65 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v53 = (v36[6] + 16 * v49);
    *v53 = v51;
    v53[1] = v52;
    v54 = v36[7];
    v55 = sub_21B111874();
    result = (*(*(v55 - 8) + 32))(v54 + *(*(v55 - 8) + 72) * v49, v43, v55);
    v56 = v36[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_20;
    }

    v36[2] = v58;

    v35 = v71;
    v34 = v72;
  }

  v45 = v37;
  v46 = v64;
  v47 = v68;
  while (1)
  {
    v37 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      break;
    }

    if (v37 >= v42)
    {

      sub_21B111934();
      (*(v47 + 8))(v60, v61);
      (*(v35 + 32))(v34, v46, v62);
      sub_21B0CDD50(v34, v67);
      return __swift_destroy_boxed_opaque_existential_0(v63);
    }

    v48 = *(v38 + 8 * v37);
    ++v45;
    if (v48)
    {
      v44 = __clz(__rbit64(v48));
      v41 = (v48 - 1) & v48;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_21B0CDBB4()
{
  result = qword_27CD472C8;
  if (!qword_27CD472C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472C8);
  }

  return result;
}

unint64_t sub_21B0CDC08()
{
  result = qword_27CD472D8;
  if (!qword_27CD472D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD472D0, &unk_21B12A9A8);
    sub_21B0CDC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472D8);
  }

  return result;
}

unint64_t sub_21B0CDC94()
{
  result = qword_27CD472E0;
  if (!qword_27CD472E0)
  {
    type metadata accessor for LegacyFieldManifest();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472E0);
  }

  return result;
}

uint64_t sub_21B0CDCEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyFieldManifest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21B0CDD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyMessageManifest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for LegacyMessageManifest.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0CDE64()
{
  result = qword_27CD472E8;
  if (!qword_27CD472E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472E8);
  }

  return result;
}

unint64_t sub_21B0CDEBC()
{
  result = qword_27CD472F0;
  if (!qword_27CD472F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472F0);
  }

  return result;
}

unint64_t sub_21B0CDF14()
{
  result = qword_27CD472F8;
  if (!qword_27CD472F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD472F8);
  }

  return result;
}

uint64_t type metadata accessor for LegacyEnumManifest()
{
  result = qword_27CD47300;
  if (!qword_27CD47300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21B0CDFDC()
{
  result = sub_21B111834();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_21B0CE048(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_21B112D04();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_21B0CE0D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21B0CE048(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_21B0CE0FC(uint64_t a1)
{
  v2 = sub_21B0CE3D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21B0CE138(uint64_t a1)
{
  v2 = sub_21B0CE3D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21B0CE174@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47310, &qword_21B12AB50);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LegacyEnumManifest();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21B0CE3D0();
  sub_21B112F34();
  if (!v2)
  {
    v14 = v5;
    v15 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47320, &qword_21B12AB58);
    sub_21B0CE424();
    sub_21B112A84();
    if (!v19)
    {
      sub_21B112334();
    }

    sub_21B0CE4A8(MEMORY[0x277D84F90]);
    sub_21B111824();
    (*(v14 + 8))(v8, v4);
    sub_21B0CE5B4(v12, v15);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_21B0CE3D0()
{
  result = qword_27CD47318;
  if (!qword_27CD47318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47318);
  }

  return result;
}

unint64_t sub_21B0CE424()
{
  result = qword_27CD47328;
  if (!qword_27CD47328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47320, &qword_21B12AB58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47328);
  }

  return result;
}

unint64_t sub_21B0CE4A8(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v2 = MEMORY[0x277D84F98];
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD47330, &qword_21B12AB60);
  v2 = sub_21B112A14();
  v3 = *(a1 + 16);
  if (!v3)
  {
LABEL_9:

    return v2;
  }

  v4 = (a1 + 48);
  while (1)
  {
    v6 = *(v4 - 2);
    v5 = *(v4 - 1);
    v7 = *v4;
    result = sub_21B0CE618(v6);
    if (v9)
    {
      break;
    }

    *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v2[6] + 8 * result) = v6;
    v10 = (v2[7] + 16 * result);
    *v10 = v5;
    v10[1] = v7;
    v11 = v2[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      goto LABEL_11;
    }

    v4 += 3;
    v2[2] = v13;
    sub_21AF99818(v5, v7);
    if (!--v3)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_21B0CE5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LegacyEnumManifest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21B0CE618(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_21B112EB4();

  return sub_21B0CE65C(a1, v4);
}

unint64_t sub_21B0CE65C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

_BYTE *storeEnumTagSinglePayload for LegacyEnumManifest.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0CE76C()
{
  result = qword_27CD47338;
  if (!qword_27CD47338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47338);
  }

  return result;
}

unint64_t sub_21B0CE7C4()
{
  result = qword_27CD47340;
  if (!qword_27CD47340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47340);
  }

  return result;
}

unint64_t sub_21B0CE81C()
{
  result = qword_27CD47348;
  if (!qword_27CD47348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47348);
  }

  return result;
}

uint64_t sub_21B0CE870@<X0>(uint64_t a1@<X8>)
{
  v38[1] = a1;
  v2 = sub_21B110CA4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v39 = v4;
  v40 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_1_1();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v38 - v16;
  v18 = sub_21B110D94();
  v19 = OUTLINED_FUNCTION_1(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_1();
  v26 = v24 - v25;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_4_25();
  type metadata accessor for SessionSchemaProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v29 = [objc_opt_self() bundleForClass_];
  v30 = [v29 resourceURL];

  if (v30)
  {
    sub_21B110D34();

    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  __swift_storeEnumTagSinglePayload(v14, v31, 1, v18);
  sub_21AFA6428(v14, v17);
  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    sub_21B0D074C(v17);
    sub_21B0D07B4();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    strcpy(v41, "feedback.dsc");
    HIBYTE(v41[6]) = 0;
    v41[7] = -5120;
    v34 = v39;
    v33 = v40;
    (*(v39 + 104))(v9, *MEMORY[0x277CC91D8], v40);
    sub_21AFC921C();
    sub_21B110D84();
    (*(v34 + 8))(v9, v33);
    v35 = *(v21 + 8);
    v35(v17, v18);
    (*(v21 + 32))(v1, v26, v18);
    v36 = v42;
    sub_21B110DC4();
    if (!v36)
    {
      sub_21B1118B4();
    }

    v37 = OUTLINED_FUNCTION_3_23();
    return (v35)(v37);
  }
}

uint64_t sub_21B0CEBD0(uint64_t result)
{
  v1 = 0;
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(result + 56);
  for (i = (v3 + 63) >> 6; v5; v2 |= *(*(result + 48) + (v8 | (v7 << 6))) < 2u)
  {
    v7 = v1;
LABEL_9:
    v8 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
  }

  while (1)
  {
    v7 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      break;
    }

    if (v7 >= i)
    {
      return v2 & 1;
    }

    v5 = *(result + 56 + 8 * v7);
    ++v1;
    if (v5)
    {
      v1 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21B0CEC74(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_21B0CFF28();
  v4 = MEMORY[0x21CEE9920](v2, &type metadata for SODADataSource, v3);
  v10 = v4;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 32;
    do
    {
      sub_21B0CFF7C(&v9, *(a1 + v6++));
      --v5;
    }

    while (v5);

    return v10;
  }

  else
  {
    v7 = v4;
  }

  return v7;
}

uint64_t SODADataSource.hashValue.getter()
{
  v1 = *v0;
  sub_21B112EC4();
  MEMORY[0x21CEEA150](v1);
  return sub_21B112F14();
}

unint64_t sub_21B0CEDAC()
{
  result = qword_27CD47350;
  if (!qword_27CD47350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47350);
  }

  return result;
}

unint64_t sub_21B0CEE04()
{
  result = qword_27CD47358;
  if (!qword_27CD47358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD47360, &qword_21B12ACD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47358);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SODADataSource(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_21B0CEF58()
{
  v0 = 0;
  v1 = MEMORY[0x277D84F90];
  do
  {
    v2 = byte_282C8D970[v0 + 32];
    if (v2 <= 1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21AFCC57C(0, *(v1 + 16) + 1, 1);
      }

      v4 = *(v1 + 16);
      v3 = *(v1 + 24);
      if (v4 >= v3 >> 1)
      {
        sub_21AFCC57C((v3 > 1), v4 + 1, 1);
      }

      *(v1 + 16) = v4 + 1;
      *(v1 + v4 + 32) = v2;
    }

    ++v0;
  }

  while (v0 != 3);

  return sub_21B0CEC74(v1);
}

uint64_t sub_21B0CF044(uint64_t a1, char *a2, uint64_t a3)
{
  v75 = a3;
  v76 = a2;
  v71 = a1;
  v68 = sub_21B111924();
  v4 = OUTLINED_FUNCTION_1(v68);
  v70 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_1();
  v67 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v72 = &v65 - v12;
  MEMORY[0x28223BE20](v11);
  v66 = &v65 - v13;
  v14 = sub_21B110D94();
  v73 = OUTLINED_FUNCTION_1(v14);
  v74 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_1_1();
  v69 = v18 - v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_4_25();
  v21 = sub_21B111CB4();
  v22 = OUTLINED_FUNCTION_1(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v65 - v32;
  v34 = sub_21B111BA4();
  v35 = OUTLINED_FUNCTION_1(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_1();
  v42 = v40 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v65 - v44;
  sub_21B0D0808(v75, v33);
  (*(v24 + 104))(v29, *MEMORY[0x277D39DD8], v21);
  v46 = v76;
  v47 = v77;
  result = sub_21B111B44();
  if (!v47)
  {
    v75 = v42;
    v76 = v37;
    v77 = v34;
    sub_21B111B94();
    sub_21B110D44();
    v49 = v74 + 8;
    v50 = *(v74 + 8);
    v50(v3, v73);
    v51 = sub_21B1123D4();

    v52 = [v46 fileExistsAtPath_];

    if (v52)
    {
      v74 = v49;
      v53 = v70;
      v54 = v68;
      (*(v70 + 16))(v72, v71, v68);
      v55 = v69;
      v75 = v45;
      sub_21B111B94();
      sub_21B110DC4();
      v50(v55, v73);
      sub_21B1118B4();
      v59 = v76;
      v60 = v72;
      sub_21B111904();
      v61 = (v59 + 8);
      v62 = *(v53 + 8);
      v63 = v71;
      v62(v71, v54);
      v64 = OUTLINED_FUNCTION_3_23();
      (v62)(v64);
      v62(v60, v54);
      (*v61)(v75, v77);
      return (*(v53 + 32))(v63, v66, v54);
    }

    else
    {
      v56 = v75;
      v57 = (v76 + 16);
      v58 = v77;
      (*(v76 + 2))(v75, v45, v77);
      type metadata accessor for DataWarehouseControllerV2();
      swift_allocObject();
      sub_21B0C4B9C(v56);

      return (*(v57 - 1))(v45, v58);
    }
  }

  return result;
}

uint64_t sub_21B0CF5F8(void (*a1)(uint64_t, id), void *a2, uint64_t a3)
{
  v69 = a3;
  v70 = a2;
  v67 = a1;
  v3 = sub_21B110D94();
  v4 = OUTLINED_FUNCTION_1(v3);
  v65 = v5;
  v66 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2();
  v64 = v9 - v8;
  v10 = sub_21B1117B4();
  v11 = OUTLINED_FUNCTION_1(v10);
  v63 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_1();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v68 = &v63 - v19;
  v20 = sub_21B111CB4();
  v21 = OUTLINED_FUNCTION_1(v20);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v28 = v27 - v26;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v32 = &v63 - v31;
  v33 = sub_21B111BA4();
  v34 = OUTLINED_FUNCTION_1(v33);
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  sub_21B0D0808(v69, v32);
  (*(v23 + 104))(v28, *MEMORY[0x277D39DD8], v20);
  v42 = v70;
  v43 = v73;
  result = sub_21B111B44();
  if (!v43)
  {
    v73 = v36;
    v45 = v33;
    v69 = v17;
    v70 = v10;
    v46 = v63;
    sub_21B1110F4();
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_21B112904();

    v71 = 0xD000000000000011;
    v72 = 0x800000021B1418C0;
    v47 = v64;
    sub_21B111B54();
    sub_21AFC9108();
    v48 = v66;
    v49 = sub_21B112B84();
    MEMORY[0x21CEE9770](v49);

    (*(v65 + 8))(v47, v48);
    MEMORY[0x21CEE9770](0x2053412027, 0xE500000000000000);
    v50 = sub_21B111B64();
    MEMORY[0x21CEE9770](v50);

    sub_21B1116F4();
    v66 = v41;

    sub_21B111794();
    v51 = *(v46 + 8);
    v52 = v70;
    v51(v68, v70);
    v68 = sub_21B1110F4();
    type metadata accessor for MetricStore();
    v53 = v66;
    v54 = sub_21B111B64();
    sub_21AF97A48(v53, v54, v55, v56, v57, v58, v59, v60, v63, v64);
    v67 = v51;

    v61 = v69;
    sub_21B1116F4();

    sub_21B111794();
    v67(v61, v52);
    OUTLINED_FUNCTION_5_26();
    return v62(v66, v45);
  }

  return result;
}

uint64_t sub_21B0CFB70()
{
  v0 = sub_21B111DA4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1_1();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = v23 - v10;
  v12 = sub_21B111D74();
  v29 = MEMORY[0x277D84FA0];
  v13 = *(v12 + 16);
  if (v13)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = *(v14 + 64);
    v23[1] = v12;
    v18 = v12 + ((v17 + 32) & ~v17);
    v28 = *(v14 + 56);
    v27 = *MEMORY[0x277D39E10];
    v26 = *MEMORY[0x277D39E08];
    v25 = *MEMORY[0x277D39DF8];
    v24 = *MEMORY[0x277D39E00];
    while (1)
    {
      v15(v11, v18, v0);
      v15(v8, v11, v0);
      v19 = (*(v14 + 72))(v8, v0);
      v20 = &unk_282C8D8D0;
      if (v19 != v27)
      {
        v20 = &unk_282C8D8F8;
        if (v19 != v26)
        {
          v20 = &unk_282C8D920;
          if (v19 != v25)
          {
            v20 = &unk_282C8D948;
            if (v19 != v24)
            {
              break;
            }
          }
        }
      }

      v21 = sub_21AF9EBB0(v20);
      sub_21B0CFDE8(v21);
      (*(v14 - 8))(v11, v0);
      v18 += v28;
      if (!--v13)
      {

        return v29;
      }
    }

    result = sub_21B1129C4();
    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_21B0CFDE8(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_21B0CFF7C(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_21B0CFEC4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_21B12AC80;
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

unint64_t sub_21B0CFF28()
{
  result = qword_27CD47368;
  if (!qword_27CD47368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47368);
  }

  return result;
}

BOOL sub_21B0CFF7C(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a2);
  v7 = sub_21B112F14();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v10)
    {
      break;
    }

    if (*(*(v5 + 48) + v9) == a2)
    {
      goto LABEL_6;
    }

    v7 = v9 + 1;
  }

  v11 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  sub_21B0D02B8(a2, v9, isUniquelyReferenced_nonNull_native);
  *v2 = v14;
LABEL_6:
  result = v10 == 0;
  *a1 = a2;
  return result;
}

uint64_t sub_21B0D006C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  result = sub_21B1128C4();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_21B0CFEC4(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_21B112EC4();
    MEMORY[0x21CEEA150](v17);
    result = sub_21B112F14();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_21B0D02B8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_21B0D006C(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_21B0D0530(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_21B112EC4();
      MEMORY[0x21CEEA150](v5);
      result = sub_21B112F14();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = result & v14;
        if (((*(v12 + 56 + (((result & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v14)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2) == v5)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_21B0D03F0();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = v5;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_15:
    result = sub_21B112E44();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }

  return result;
}

void *sub_21B0D03F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  v2 = *v0;
  v3 = sub_21B1128B4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_21B0D0530(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  result = sub_21B1128C4();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_21B112EC4();
        MEMORY[0x21CEEA150](v16);
        result = sub_21B112F14();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_21B0D074C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_21B0D07B4()
{
  result = qword_27CD47370;
  if (!qword_27CD47370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47370);
  }

  return result;
}

uint64_t sub_21B0D0808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for SODADataSourceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_21B0D0928()
{
  result = qword_27CD47378;
  if (!qword_27CD47378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD47378);
  }

  return result;
}

uint64_t sub_21B0D09A8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  OUTLINED_FUNCTION_25(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v12 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v13 = OUTLINED_FUNCTION_4_1(v12);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v18 = v17 - v16;
  if (__swift_getEnumTagSinglePayload(a1, 1, v19) == 1)
  {
    sub_21AF99BE0(a1, &qword_27CD42FB0, &qword_21B114A20);
    sub_21B0D2D18(a2, v11);
    OUTLINED_FUNCTION_1_23();
    sub_21B0D3050(a2, v20);
    return sub_21AF99BE0(v11, &qword_27CD42FB0, &qword_21B114A20);
  }

  else
  {
    sub_21B0D2F84(a1, v18);
    v22 = *v3;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    sub_21B0ECAA4();
    *v3 = v25;
    OUTLINED_FUNCTION_1_23();
    return sub_21B0D3050(a2, v23);
  }
}