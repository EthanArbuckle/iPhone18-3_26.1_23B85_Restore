unint64_t sub_220F43C88()
{
  result = qword_27CF9F248;
  if (!qword_27CF9F248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F248);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherMapCameraFocus(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 33))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for WeatherMapCameraFocus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

double sub_220F43DA4(double a1, double a2)
{
  if ((*(v2 + 32) & 1) == 0)
  {
    return *v2;
  }

  v3 = a1 / *(v2 + 16);
  v4 = a2 / *(v2 + 24);
  if (v4 < v3)
  {
    v3 = v4;
  }

  v5 = log2(v3) + 21.0;
  result = 0.0;
  if (v5 >= 0.0)
  {
    return v5;
  }

  return result;
}

void sub_220F43DF8()
{
  if (*(v0 + 32))
  {
    sub_220FC0FE0();
    MKMapPointForCoordinate(v1);
  }

  else
  {
    sub_220FC0FE0();
    MKMapPointForCoordinate(v2);
    MKMapRectMakeWithZoomLevel();
  }
}

uint64_t sub_220F43E8C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  if (v4)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220FC8E10;
    *(inited + 32) = 1701869940;
    *(inited + 40) = 0xE400000000000000;
    v6 = MEMORY[0x277D837D0];
    *(inited + 48) = 1952671090;
    *(inited + 56) = 0xE400000000000000;
    *(inited + 72) = v6;
    *(inited + 80) = 0x7463655270616DLL;
    *(inited + 88) = 0xE700000000000000;
    type metadata accessor for MKMapRect(0);
    *(inited + 120) = v7;
    v8 = swift_allocObject();
    *(inited + 96) = v8;
    *(v8 + 16) = v3;
    *(v8 + 40) = v1[3];
    *(v8 + 24) = *(v1 + 1);
  }

  else
  {
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_220FC8E10;
    v10 = MEMORY[0x277D837D0];
    *(v9 + 32) = 1701869940;
    *(v9 + 40) = 0xE400000000000000;
    *(v9 + 48) = 0x6576654C6D6F6F7ALL;
    *(v9 + 56) = 0xE90000000000006CLL;
    *(v9 + 72) = v10;
    *(v9 + 80) = 0x6576654C6D6F6F7ALL;
    *(v9 + 88) = 0xE90000000000006CLL;
    *(v9 + 120) = MEMORY[0x277D85048];
    *(v9 + 96) = v3;
  }

  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F250);
  a1[4] = sub_220F4409C();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_220FC12A0();
}

uint64_t sub_220F4405C()
{
  sub_220F44100();

  return sub_220FC1290();
}

unint64_t sub_220F4409C()
{
  result = qword_27CF9F258;
  if (!qword_27CF9F258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CF9F250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F258);
  }

  return result;
}

unint64_t sub_220F44100()
{
  result = qword_27CF9F260;
  if (!qword_27CF9F260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F260);
  }

  return result;
}

uint64_t MKMapRect.shortDescription.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x6E696769726FLL;
  *(inited + 40) = 0xE600000000000000;
  type metadata accessor for MKMapPoint(0);
  *(inited + 48) = a2;
  *(inited + 56) = a3;
  *(inited + 72) = v11;
  *(inited + 80) = 1702521203;
  *(inited + 88) = 0xE400000000000000;
  type metadata accessor for MKMapSize(0);
  *(inited + 120) = v12;
  *(inited + 96) = a4;
  *(inited + 104) = a5;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F268);
  a1[4] = sub_220E5D7E8(&qword_2812C5F58, &qword_27CF9F268);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for MKMapRect(0);
  OUTLINED_FUNCTION_0_69();
  return sub_220FC12A0();
}

uint64_t sub_220F442B4()
{
  sub_220F4473C(&qword_2812C5B18, type metadata accessor for MKMapRect);

  return sub_220FC1290();
}

uint64_t MKMapPoint.shortDescription.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  v7 = MEMORY[0x277D839F8];
  *(inited + 48) = a2;
  *(inited + 72) = v7;
  *(inited + 80) = 121;
  *(inited + 88) = 0xE100000000000000;
  *(inited + 120) = v7;
  *(inited + 96) = a3;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F270);
  a1[4] = sub_220E5D7E8(&unk_2812C5F68, &qword_27CF9F270);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for MKMapPoint(0);
  OUTLINED_FUNCTION_0_69();
  return sub_220FC12A0();
}

uint64_t sub_220F4444C()
{
  sub_220F4473C(&qword_27CF9F288, type metadata accessor for MKMapPoint);

  return sub_220FC1290();
}

uint64_t MKMapSize.shortDescription.getter@<X0>(uint64_t *a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC8E10;
  *(inited + 32) = 0x6874646977;
  *(inited + 40) = 0xE500000000000000;
  v7 = MEMORY[0x277D839F8];
  *(inited + 48) = a2;
  *(inited + 72) = v7;
  *(inited + 80) = 0x746867696568;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 120) = v7;
  *(inited + 96) = a3;
  sub_220FC2600();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F278);
  a1[4] = sub_220E5D7E8(&qword_2812C5F50, &qword_27CF9F278);
  __swift_allocate_boxed_opaque_existential_1(a1);
  type metadata accessor for MKMapSize(0);
  OUTLINED_FUNCTION_0_69();
  return sub_220FC12A0();
}

uint64_t sub_220F446D0()
{
  sub_220F4473C(&qword_27CF9F280, type metadata accessor for MKMapSize);

  return sub_220FC1290();
}

uint64_t sub_220F4473C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MSAAType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_220F44860()
{
  result = [v0 supportsTextureSampleCount_];
  if (result)
  {
    if ([v0 supportsFamily_])
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_220F448AC()
{
  v0 = sub_220FC37A0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_220F448F8(char a1)
{
  if (!a1)
  {
    return 0x6F70707553746F6ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x4D496D6F74737563;
}

uint64_t sub_220F44984@<X0>(_BYTE *a1@<X8>)
{
  result = sub_220F448AC();
  *a1 = result;
  return result;
}

uint64_t sub_220F449B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_220F448F8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_220F449E4()
{
  result = qword_27CF9F290;
  if (!qword_27CF9F290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF9F290);
  }

  return result;
}

uint64_t sub_220F44A38()
{
  v0 = sub_220FC0B10();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220FC0A20();
  OUTLINED_FUNCTION_6();
  v9 = v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F298);
  (*(v9 + 104))(v13, *MEMORY[0x277D6D040], v7);
  (*(v2 + 104))(v6, *MEMORY[0x277D6D098], v0);
  result = sub_220FC0B80();
  qword_2812CE5E0 = result;
  return result;
}

void sub_220F44BD8(void *a1, uint64_t a2, void *a3, char a4, double a5)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_220FC3920();
  v11 = a3[3];
  if (v11)
  {
    v12 = __swift_project_boxed_opaque_existential_1(a3, a3[3]);
    v21[1] = v21;
    v13 = a4;
    v14 = a2;
    v15 = *(v11 - 8);
    v16 = MEMORY[0x28223BE20](v12, v12);
    v18 = v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_220FC3920();
    (*(v15 + 8))(v18, v11);
    a2 = v14;
    a4 = v13;
    __swift_destroy_boxed_opaque_existential_0(a3);
  }

  else
  {
    v19 = 0;
  }

  v20 = [swift_getObjCClassFromMetadata() timerWithTimeInterval:v10 target:a2 selector:v19 userInfo:a4 & 1 repeats:a5];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  OUTLINED_FUNCTION_67();
}

id sub_220F44D90(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v12 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v13 = sub_220FC01D0();
  v14 = [v12 initWithCoordinate:v13 altitude:a2 horizontalAccuracy:a3 verticalAccuracy:a4 timestamp:{a5, a6}];

  sub_220FC02B0();
  OUTLINED_FUNCTION_2();
  (*(v15 + 8))(a1);
  return v14;
}

void sub_220F44E64()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v9);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_81_0();
  sub_220ECC944(v6, v0, &unk_27CF9EB90);
  v12 = sub_220FC2AE0();
  v13 = OUTLINED_FUNCTION_49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, v14, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_220E3B2DC(v0, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    (*(v16 + 8))(v0, v12);
  }

  v17 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v17)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    OUTLINED_FUNCTION_0_58();
    v19 = swift_allocObject();
    *(v19 + 16) = v4;
    *(v19 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_220FC2A30();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  OUTLINED_FUNCTION_50_0();
  sub_220FC2770();
  OUTLINED_FUNCTION_0_58();
  v18 = swift_allocObject();
  *(v18 + 16) = v4;
  *(v18 + 24) = v2;

  swift_task_create();
  OUTLINED_FUNCTION_60_2();

LABEL_9:
  OUTLINED_FUNCTION_35_4();
}

void sub_220F4510C()
{
  OUTLINED_FUNCTION_48_2();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v7);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_81_0();
  sub_220ECC944(v6, v0, &unk_27CF9EB90);
  v10 = sub_220FC2AE0();
  v11 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v11, v12, v10) == 1)
  {
    sub_220E3B2DC(v0, &unk_27CF9EB90);
  }

  else
  {
    sub_220FC2AD0();
    OUTLINED_FUNCTION_12();
    (*(v13 + 8))(v0, v10);
  }

  if (*(v2 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_220FC2A30();
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_0_58();
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  *(v14 + 24) = v2;
  swift_task_create();

  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220F452D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[18] = a3;
  v4[19] = a4;
  v4[16] = a1;
  v4[17] = a2;
  v5 = sub_220FBFDC0();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E518);
  v4[23] = swift_task_alloc();
  v6 = sub_220FC3060();
  v4[24] = v6;
  v4[25] = *(v6 - 8);
  v4[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F45430, 0, 0);
}

uint64_t sub_220F45430()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  v0[15] = v0[17];
  sub_220FC3070();
  sub_220F524F4(&qword_27CF9E520, MEMORY[0x277CC9D78]);

  OUTLINED_FUNCTION_93();
  sub_220FC2BA0();
  v0[27] = *MEMORY[0x277D76428];
  OUTLINED_FUNCTION_71_3();
  sub_220F524F4(v1, v2);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[28] = v3;
  *v3 = v4;
  OUTLINED_FUNCTION_47_5(v3);
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x282200308](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_220F45548()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  v3[29] = v0;

  if (v0)
  {
    (*(v3[25] + 8))(v3[26], v3[24]);
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_220F4565C()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_44_6(*(v0 + 184));
  if (v17)
  {
    (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
    v1 = 1;
LABEL_4:
    __swift_storeEnumTagSinglePayload(*(v0 + 128), v1, 1, *(v0 + 160));

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_61_0();

    return v3(v2, v3, v4, v5, v6, v7, v8, v9);
  }

  v11 = *(*(v0 + 168) + 32);
  OUTLINED_FUNCTION_61_3();
  v11();
  v12 = sub_220FBFDB0();
  if (!v12)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
LABEL_21:
    sub_220E3B2DC(v0 + 56, &unk_27CF9D6B0);
    goto LABEL_22;
  }

  v13 = v12;
  *(v0 + 88) = sub_220FC2700();
  *(v0 + 96) = v14;
  sub_220FC3540();
  if (*(v13 + 16) && (v15 = sub_220F19514(), (v16 & 1) != 0))
  {
    sub_220E21408(*(v13 + 56) + 32 * v15, v0 + 56);
  }

  else
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
  }

  sub_220E81E90(v0 + 16);
  if (!*(v0 + 80))
  {
    goto LABEL_21;
  }

  if (swift_dynamicCast())
  {
    v17 = *(v0 + 104) == *(v0 + 144) && *(v0 + 112) == *(v0 + 152);
    if (v17)
    {

LABEL_26:
      (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
      OUTLINED_FUNCTION_61_3();
      v11();
      v1 = 0;
      goto LABEL_4;
    }

    v18 = sub_220FC3940();

    if (v18)
    {
      goto LABEL_26;
    }
  }

LABEL_22:
  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  OUTLINED_FUNCTION_71_3();
  sub_220F524F4(v19, v20);
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 224) = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_47_5();
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x282200308](v23, v24, v25, v26, v27, v28, v29, v30);
}

id sub_220F45918()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *&v4 = MEMORY[0x28223BE20](v2 - 8, v3).n128_u64[0];
  v6 = &v12 - v5;
  result = [*(v0 + 112) setEnabled_];
  if ((*(v0 + 121) & 1) == 0)
  {
    v8 = sub_220FC2AE0();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
    sub_220FC2AB0();

    v9 = sub_220FC2AA0();
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D85700];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v1;
    sub_220F9BB1C(0, 0, v6, &unk_220FD5BB0, v10);
  }

  return result;
}

uint64_t sub_220F45A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_220FC2AB0();
  v4[4] = sub_220FC2AA0();

  return MEMORY[0x2822009F8](sub_220F45AB4, a4, 0);
}

uint64_t sub_220F45AB4()
{
  OUTLINED_FUNCTION_32();
  sub_220F48048();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v0 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

uint64_t sub_220F45B3C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v45 = &v42 - v5;
  v44 = type metadata accessor for WeatherMapOverlay();
  MEMORY[0x28223BE20](v44, v6);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v42 - v10;
  v12 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  MEMORY[0x28223BE20](v12, v13);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v42 - v17;
  v19 = sub_220FC02B0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220ECC944(a1, v18, &qword_27CF9EBC0);
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    v24 = &qword_27CF9EBC0;
    v25 = v18;
LABEL_5:
    sub_220E3B2DC(v25, v24);
    return 0;
  }

  (*(v20 + 32))(v23, v18, v19);
  v26 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
  swift_beginAccess();
  sub_220ECC944(v1 + v26, v11, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    (*(v20 + 8))(v23, v19);
    v24 = &qword_27CF9D090;
    v25 = v11;
    goto LABEL_5;
  }

  v29 = v46;
  sub_220F52498(v11, v46, type metadata accessor for SonifierDataState.OverlayFrames);
  v30 = *(v29 + *(v12 + 36));
  if (!v30)
  {
    goto LABEL_25;
  }

  v31 = *(v30 + 16);
  if (!v31)
  {
    goto LABEL_25;
  }

  v32 = v45;
  sub_220ECC944(v29, v45, &unk_27CF9EB80);
  v33 = v44;
  if (__swift_getEnumTagSinglePayload(v32, 1, v44) == 1)
  {
    (*(v20 + 8))(v23, v19);
    sub_220E3B2DC(v32, &unk_27CF9EB80);
LABEL_14:
    sub_220F522E8();
    return 0;
  }

  v34 = v43;
  sub_220F52498(v32, v43, type metadata accessor for WeatherMapOverlay);
  if (v31 == 1)
  {
    sub_220F522E8();
    (*(v20 + 8))(v23, v19);
    goto LABEL_14;
  }

  v35 = v34 + *(v33 + 28);
  v36 = type metadata accessor for WeatherMapOverlayTimeConstraints();
  sub_220FC0150();
  v38 = v37;
  sub_220FC0150();
  v40 = v38 - v39;
  if (v40 < 0.0 || v40 >= *(v35 + *(v36 + 24)))
  {
    sub_220F522E8();
LABEL_25:
    (*(v20 + 8))(v23, v19);
LABEL_26:
    sub_220F522E8();
    return 0;
  }

  v41 = round(v40 / *(v35 + *(v36 + 28)));
  sub_220F522E8();
  result = (*(v20 + 8))(v23, v19);
  if ((*&v41 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (v41 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v41 < 9.22337204e18)
  {
    v27 = v41;
    if ((v41 & 0x8000000000000000) == 0)
    {
      sub_220F522E8();
      if (v31 > v27)
      {
        return v27;
      }

      return 0;
    }

    goto LABEL_26;
  }

LABEL_29:
  __break(1u);
  return result;
}

void sub_220F46104(uint64_t a1, char a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex + 8);
  if (a2)
  {
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex + 8))
    {
      return;
    }

    goto LABEL_7;
  }

  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex) != a1)
  {
    v3 = 1;
  }

  if (v3)
  {
LABEL_7:
    if ((*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_liveModeState + 16) & 1) == 0)
    {
      sub_220F480A0(*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_liveModeState), *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_liveModeState + 8));
    }
  }
}

void sub_220F46150(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex;
  v4 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex);
  v5 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex + 8);
  *v3 = a1;
  *(v3 + 8) = a2 & 1;
  sub_220F46104(v4, v5);
}

uint64_t sub_220F4617C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier____lazy_storage___disableMapOverlaySonification;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier____lazy_storage___disableMapOverlaySonification);
  if (v2 == 2)
  {
    if (qword_2812CA1B0 != -1)
    {
      swift_once();
    }

    type metadata accessor for WeatherMapOverlaySonifier();
    OUTLINED_FUNCTION_0_70();
    sub_220F524F4(v3, v4);
    OUTLINED_FUNCTION_83();
    sub_220FC0A00();
    if (v7)
    {
      LOBYTE(v2) = 1;
    }

    else
    {
      if (qword_2812CA198 != -1)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_83();
      sub_220FC0A00();
      LOBYTE(v2) = v6;
    }

    *(v0 + v1) = v2;
  }

  return v2 & 1;
}

void sub_220F462A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_48_2();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v27);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v28, v29);
  v31 = &a9 - v30;
  swift_defaultActor_initialize();
  *(v18 + 112) = [objc_allocWithZone(MEMORY[0x277D757F8]) init];
  *(v18 + 120) = 0;
  sub_220FC02B0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex;
  *v36 = 0;
  *(v36 + 8) = 1;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_valueSpace) = 0x3FE8000000000000;
  type metadata accessor for SonifierDataState.OverlayFrames(0);
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  v41 = v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_gestureStart;
  *v41 = 0;
  *(v41 + 8) = 0;
  *(v41 + 16) = 1;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier____lazy_storage___disableMapOverlaySonification) = 2;
  v42 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_overlayDataState;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  __swift_storeEnumTagSinglePayload(v18 + v42, 1, 3, v43);
  v44 = v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_liveModeState;
  *v44 = 0;
  *(v44 + 8) = 0;
  *(v44 + 16) = 1;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_audioSessionCategoryHasBeenSet) = 0;
  v45 = v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState;
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  *v45 = 0;
  *(v45 + 24) = 3;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverJitterThreshold) = 0x4014000000000000;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverInterval) = 0x3FE0000000000000;
  *(v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_isTrackingGesture) = 0;
  sub_220E1E30C(v26, v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_geocodeManager);
  sub_220E1E30C(v24, v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_locationMetadataManager);
  sub_220E1E30C(v22, v18 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_appConfigurationManager);
  sub_220FC2AE0();
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
  OUTLINED_FUNCTION_69();
  v50 = swift_allocObject();
  v50[2] = 0;
  v50[3] = 0;
  v50[4] = v18;

  v51 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v51, v52, v31, v53, v50);

  __swift_destroy_boxed_opaque_existential_0(v22);
  __swift_destroy_boxed_opaque_existential_0(v24);
  __swift_destroy_boxed_opaque_existential_0(v26);
  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220F4655C()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 24) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F465D4()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 16);

  sub_220F46664();
  v2 = *(v1 + 112);
  [v2 setEnabled_];
  [v2 addTarget:v1 action:sel_handleGestureWithRecognizer_];
  OUTLINED_FUNCTION_32_0();

  return v3();
}

uint64_t sub_220F46664()
{
  v16 = sub_220FC0E70();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v2);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220FC0CA0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_appConfigurationManager), *(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_appConfigurationManager + 24));

  sub_220FC0F40();
  sub_220FC0C90();
  (*(v6 + 8))(v9, v5);
  sub_220FC0E20();
  (*(v1 + 8))(v4, v16);
  sub_220F4617C();
  sub_220EDDC1C();
  if (qword_2812C5EC8 != -1)
  {
    swift_once();
  }

  v10 = sub_220FC17A0();
  __swift_project_value_buffer(v10, qword_2812C5ED0);

  v11 = sub_220FC1780();
  v12 = sub_220FC2E30();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = sub_220EDDB94() & 1;

    _os_log_impl(&dword_220E15000, v11, v12, "Enable map overlay sonification: %{BOOL}d", v13, 8u);
    MEMORY[0x223D9DDF0](v13, -1, -1);
  }

  else
  {
  }
}

void sub_220F4696C()
{
  OUTLINED_FUNCTION_48_2();
  v3 = v2;
  v4 = type metadata accessor for SonifierDataState(0);
  v5 = OUTLINED_FUNCTION_8_0(v4);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v10, v11);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v24[-v14];
  v16 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_overlayDataState;
  OUTLINED_FUNCTION_32_2();
  sub_220ECCF3C(v3, v0 + v16);
  swift_endAccess();
  OUTLINED_FUNCTION_11_18();
  v17 = OUTLINED_FUNCTION_48_3();
  sub_220F5228C(v17, v18, v19);
  if (__swift_getEnumTagSinglePayload(v8, 3, v9))
  {
    OUTLINED_FUNCTION_10_22();
    sub_220F522E8();
    type metadata accessor for SonifierDataState.OverlayFrames(0);
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    v15 = v1;
  }

  else
  {
    sub_220ECCFA0(v8, v15);
  }

  sub_220F46AE4(v15);
  sub_220E3B2DC(v15, &qword_27CF9D090);
  OUTLINED_FUNCTION_35_4();
}

void sub_220F46AE4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBC0);
  OUTLINED_FUNCTION_8_0(v3);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  v157 = &v147 - v6;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_4();
  v154 = v9 - v10;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v11, v12);
  v158 = &v147 - v13;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v147 - v16;
  v18 = OUTLINED_FUNCTION_109();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(v18);
  v20 = OUTLINED_FUNCTION_8_0(v19);
  MEMORY[0x28223BE20](v20, v21);
  OUTLINED_FUNCTION_4();
  v156 = v22 - v23;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v147 - v26;
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v30, v31);
  v33 = &v147 - v32;
  v34 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v35, v36);
  OUTLINED_FUNCTION_4();
  v155 = v37 - v38;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v147 - v41;
  MEMORY[0x28223BE20](v43, v44);
  v153 = &v147 - v45;
  OUTLINED_FUNCTION_64();
  MEMORY[0x28223BE20](v46, v47);
  v49 = &v147 - v48;
  v160 = a1;
  sub_220ECC944(a1, v33, &qword_27CF9D090);
  OUTLINED_FUNCTION_44_6(v33);
  if (v50)
  {
    sub_220E3B2DC(v33, &qword_27CF9D090);
LABEL_39:
    v49 = v161;
LABEL_40:
    sub_220ECC944(v160, v27, &qword_27CF9D090);
    OUTLINED_FUNCTION_44_6(v27);
    if (!v50)
    {
      v55 = v34;
      OUTLINED_FUNCTION_70_0();
      sub_220F52498(v27, v42, v84);
      if (qword_27CF9C008 != -1)
      {
        goto LABEL_79;
      }

      goto LABEL_48;
    }

    sub_220E3B2DC(v27, &qword_27CF9D090);
    a1 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
    OUTLINED_FUNCTION_10();
    swift_beginAccess();
    v79 = v156;
    sub_220ECC944(v49 + a1, v156, &qword_27CF9D090);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v79, 1, v34);
    sub_220E3B2DC(v79, &qword_27CF9D090);
    if (EnumTagSinglePayload == 1)
    {
      return;
    }

    v27 = v34;
    if (qword_27CF9C008 == -1)
    {
LABEL_44:
      v81 = __swift_project_value_buffer(v159, qword_27CF9CBF8);
      v82 = v154;
      sub_220ECC944(v81, v154, &qword_27CF9CF70);
      v83 = sub_220FC17A0();
      OUTLINED_FUNCTION_44_6(v82);
      if (v50)
      {
        sub_220E3B2DC(v82, &qword_27CF9CF70);
      }

      else
      {
        v98 = sub_220FC1780();
        v99 = sub_220FC2E30();
        if (OUTLINED_FUNCTION_21_0(v99))
        {
          *OUTLINED_FUNCTION_20_0() = 0;
          OUTLINED_FUNCTION_30_8();
          _os_log_impl(v101, v102, v103, v104, v105, 2u);
          v82 = v154;
          OUTLINED_FUNCTION_15();
        }

        OUTLINED_FUNCTION_14_8();
        (*(v106 + 8))(v82, v83);
      }

      OUTLINED_FUNCTION_42();
      __swift_storeEnumTagSinglePayload(v107, v108, v109, v27);
      OUTLINED_FUNCTION_32_2();
      sub_220F52428(v1, v49 + a1);
      swift_endAccess();
      sub_220F46150(0, 1);
      return;
    }

LABEL_87:
    OUTLINED_FUNCTION_2_26();
    goto LABEL_44;
  }

  v152 = v1;
  OUTLINED_FUNCTION_70_0();
  sub_220F52498(v33, v49, v51);
  v1 = *(v49 + *(v34 + 36));
  if (!v1)
  {
    OUTLINED_FUNCTION_2_41();
    sub_220F522E8();
    v1 = v152;
    goto LABEL_39;
  }

  v52 = (v49 + *(v34 + 20));
  v53 = *v52;
  if ((*v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_81;
  }

  if (v53 <= -9.22337204e18)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  if (v53 >= 9.22337204e18)
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v54 = v52[1];
  if ((*&v54 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v54 >= 9.22337204e18)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v151 = v42;
  v42 = v53 * v54;
  if ((v53 * v54) >> 64 != v42 >> 63)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v150 = v49;
  v147 = v17;
  v49 = 0;
  v55 = *(v1 + 16);
  v56 = v1 + 40;
  v57 = MEMORY[0x277D84F90];
LABEL_13:
  v58 = (v56 + 16 * v49);
  while (v55 != v49)
  {
    if (v49 >= *(v1 + 16))
    {
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      OUTLINED_FUNCTION_2_26();
LABEL_48:
      v85 = __swift_project_value_buffer(v159, qword_27CF9CBF8);
      v86 = v158;
      sub_220ECC944(v85, v158, &qword_27CF9CF70);
      v87 = sub_220FC17A0();
      OUTLINED_FUNCTION_44_6(v86);
      if (v50)
      {
        sub_220E3B2DC(v86, &qword_27CF9CF70);
        v88 = v157;
      }

      else
      {
        OUTLINED_FUNCTION_5_30();
        v151 = v42;
        v89 = v155;
        sub_220F5228C(v42, v155, v90);
        v91 = sub_220FC1780();
        v92 = sub_220FC2E30();
        if (os_log_type_enabled(v91, v92))
        {
          v94 = OUTLINED_FUNCTION_76_0();
          v162[0] = swift_slowAlloc();
          *v94 = 136315138;
          v95 = *(v89 + *(v55 + 36));
          v96 = v157;
          if (v95)
          {
            v97 = *(v95 + 16);
          }

          else
          {
            v97 = 0;
          }

          *&v163 = v97;
          BYTE8(v163) = v95 == 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F128);
          v127 = sub_220FC2750();
          v129 = v128;
          OUTLINED_FUNCTION_2_41();
          sub_220F522E8();
          v130 = sub_220E20FF8(v127, v129, v162);

          *(v94 + 4) = v130;
          _os_log_impl(&dword_220E15000, v91, v92, "Updating weather map overlay sonifier frames. Consistency checks passed with %s frames available.", v94, 0xCu);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_14_0();

          v49 = v161;
          v88 = v96;
        }

        else
        {

          OUTLINED_FUNCTION_2_41();
          sub_220F522E8();
          v88 = v157;
        }

        OUTLINED_FUNCTION_14_8();
        (*(v131 + 8))(v158, v87);
        v42 = v151;
      }

      OUTLINED_FUNCTION_5_30();
      sub_220F5228C(v42, v1, v132);
      __swift_storeEnumTagSinglePayload(v1, 0, 1, v55);
      v133 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
      OUTLINED_FUNCTION_32_2();
      sub_220F52428(v1, v49 + v133);
      swift_endAccess();
      sub_220ECC944(v49 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_selectedDate, v88, &qword_27CF9EBC0);
      v134 = sub_220F45B3C(v88);
      v136 = v135;
      OUTLINED_FUNCTION_83();
      sub_220E3B2DC(v137, v138);
      sub_220F46150(v134, v136 & 1);
      goto LABEL_70;
    }

    ++v49;
    v59 = v58 + 2;
    v60 = *v58;
    v61 = *v58 >> 60;
    v58 += 2;
    if (v61 <= 0xE)
    {
      v62 = *(v59 - 3);
      v63 = OUTLINED_FUNCTION_120();
      sub_220E567FC(v63, v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v148 = v56;
      v149 = v34;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_220F370B4(0, *(v57 + 16) + 1, 1, v57);
        v57 = v69;
      }

      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_220F370B4(v66 > 1, v67 + 1, 1, v57);
        v57 = v70;
      }

      *(v57 + 16) = v67 + 1;
      v68 = v57 + 16 * v67;
      *(v68 + 32) = v62;
      *(v68 + 40) = v60;
      v56 = v148;
      v34 = v149;
      goto LABEL_13;
    }
  }

  v1 = *(v57 + 16);
  if (!v1)
  {
LABEL_37:

    OUTLINED_FUNCTION_2_41();
    sub_220F522E8();
    v49 = v161;
    v42 = v151;
    v1 = v152;
    goto LABEL_40;
  }

  v71 = 0;
  v49 = v57 + 40;
  while (2)
  {
    if (v71 >= *(v57 + 16))
    {
      goto LABEL_76;
    }

    v72 = *(v49 - 8);
    ++v71;
    switch(*v49 >> 62)
    {
      case 1:
        if (__OFSUB__(HIDWORD(v72), v72))
        {
          goto LABEL_77;
        }

        v55 = HIDWORD(v72) - v72;
        goto LABEL_34;
      case 2:
        v74 = *(v72 + 16);
        v73 = *(v72 + 24);
        v55 = v73 - v74;
        if (__OFSUB__(v73, v74))
        {
          goto LABEL_78;
        }

LABEL_34:
        v75 = OUTLINED_FUNCTION_120();
        sub_220E567FC(v75, v76);
        goto LABEL_35;
      case 3:
        if (v42)
        {
          goto LABEL_59;
        }

        goto LABEL_36;
      default:
        v55 = BYTE6(*v49);
LABEL_35:
        if (v55 == v42)
        {
LABEL_36:
          v77 = OUTLINED_FUNCTION_120();
          sub_220E565AC(v77, v78);
          v49 += 16;
          if (v1 == v71)
          {
            goto LABEL_37;
          }

          continue;
        }

LABEL_59:
        v110 = v34;

        v111 = v161;
        if (qword_27CF9C008 != -1)
        {
          OUTLINED_FUNCTION_2_26();
        }

        v112 = __swift_project_value_buffer(v159, qword_27CF9CBF8);
        v113 = v147;
        sub_220ECC944(v112, v147, &qword_27CF9CF70);
        v114 = sub_220FC17A0();
        OUTLINED_FUNCTION_44_6(v113);
        v115 = v150;
        v116 = v153;
        if (v50)
        {
          sub_220E3B2DC(v113, &qword_27CF9CF70);
        }

        else
        {
          OUTLINED_FUNCTION_5_30();
          sub_220F5228C(v115, v116, v117);
          v118 = sub_220FC1780();
          v119 = sub_220FC2E30();
          if (OUTLINED_FUNCTION_21_0(v119))
          {
            v121 = OUTLINED_FUNCTION_76_0();
            v160 = swift_slowAlloc();
            v162[0] = v160;
            *v121 = 136446210;
            v163 = *(v116 + *(v110 + 20));
            type metadata accessor for CGSize(0);
            v122 = sub_220FC2750();
            v124 = v123;
            OUTLINED_FUNCTION_2_41();
            sub_220F522E8();
            v125 = sub_220E20FF8(v122, v124, v162);

            *(v121 + 4) = v125;
            v111 = v161;
            OUTLINED_FUNCTION_58_3(&dword_220E15000, v126, v119, "Invalidating provided weather map overlay sonifier frames due to inconsistent size %{public}s. Expecting another update to come.");
            __swift_destroy_boxed_opaque_existential_0(v160);
            OUTLINED_FUNCTION_32_1();
            OUTLINED_FUNCTION_15();
          }

          else
          {

            OUTLINED_FUNCTION_2_41();
            sub_220F522E8();
          }

          OUTLINED_FUNCTION_14_8();
          (*(v139 + 8))(v147, v114);
        }

        sub_220F46150(0, 1);
        v140 = OUTLINED_FUNCTION_120();
        sub_220E565AC(v140, v141);
        v142 = v152;
        OUTLINED_FUNCTION_42();
        __swift_storeEnumTagSinglePayload(v143, v144, v145, v110);
        v146 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
        OUTLINED_FUNCTION_32_2();
        sub_220F52428(v142, v111 + v146);
        swift_endAccess();
LABEL_70:
        OUTLINED_FUNCTION_2_41();
        sub_220F522E8();
        return;
    }
  }
}

void sub_220F4769C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_48_2();
  a17 = v19;
  a18 = v20;
  v22 = v21;
  v23 = type metadata accessor for SonifierDataState(0);
  v24 = OUTLINED_FUNCTION_29(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24, v29);
  v30 = &a9 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v31);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32, v33);
  v35 = &a9 - v34;
  v36 = sub_220FC2AE0();
  OUTLINED_FUNCTION_38_9(v36);
  OUTLINED_FUNCTION_11_18();
  sub_220F5228C(v22, v30, v37);
  OUTLINED_FUNCTION_0_70();
  v40 = sub_220F524F4(v38, v39);
  v41 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v42 = (v28 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  *(v43 + 16) = v18;
  *(v43 + 24) = v40;
  sub_220F52498(v30, v43 + v41, type metadata accessor for SonifierDataState);
  *(v43 + v42) = v18;
  OUTLINED_FUNCTION_132();
  v44 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v44, v45, v35, v46, v43);

  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220F47840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220F47860, a5, 0);
}

uint64_t sub_220F47860()
{
  OUTLINED_FUNCTION_32();
  sub_220F1FAC8();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_220EC3840;
  v3 = OUTLINED_FUNCTION_48_3();

  return sub_220F47914(v3, v4, 0x4010000000000000, 0);
}

uint64_t sub_220F47914(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 80) = a4;
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F479BC, v4, 0);
}

uint64_t sub_220F479BC()
{
  if (qword_27CF9C008 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  v2 = *(v0 + 56);
  v3 = __swift_project_value_buffer(*(v0 + 48), qword_27CF9CBF8);
  sub_220ECC944(v3, v2, &qword_27CF9CF70);
  v4 = sub_220FC17A0();
  v5 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v5, v6, v4) == 1)
  {
    sub_220E3B2DC(*(v0 + 56), &qword_27CF9CF70);
  }

  else
  {

    v7 = sub_220FC1780();
    sub_220FC2E30();

    if (OUTLINED_FUNCTION_112())
    {
      swift_slowAlloc();
      OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_16_6(7.2225e-34);
      v8 = OUTLINED_FUNCTION_50_0();
      *(v1 + 14) = sub_220E20FF8(v8, v9, v10);
      OUTLINED_FUNCTION_72_1();
      _os_log_impl(v11, v12, v13, v14, v1, 0x16u);
      OUTLINED_FUNCTION_80_0();
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_14_8();
    (*(v15 + 8))();
  }

  v16 = *(v0 + 80);
  v17 = *(v0 + 32);
  v19 = *(v0 + 16);
  v18 = *(v0 + 24);
  OUTLINED_FUNCTION_0_70();
  sub_220F524F4(v20, v21);
  v22 = swift_task_alloc();
  *(v0 + 64) = v22;
  *(v22 + 16) = v17;
  *(v22 + 24) = v16 & 1;
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  v23 = swift_task_alloc();
  *(v0 + 72) = v23;
  *v23 = v0;
  v23[1] = sub_220EC3C6C;
  OUTLINED_FUNCTION_61_3();

  return MEMORY[0x2822007B8](v24, v25, v26, 0xD000000000000032, v27, v28, v22, v29);
}

double sub_220F47C44()
{
  v2 = v0;
  v51 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_81_0();
  v6 = type metadata accessor for SonifierDataState(0);
  v7 = OUTLINED_FUNCTION_8_0(v6);
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_15_8();
  MEMORY[0x28223BE20](v9, v10);
  v12 = v49 - v11;
  v13 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_audioSessionCategoryHasBeenSet;
  if ((*(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_audioSessionCategoryHasBeenSet) & 1) == 0)
  {
    v14 = [objc_opt_self() sharedInstance];
    v15 = *MEMORY[0x277CB8030];
    v16 = *MEMORY[0x277CB80A8];
    v50[0] = 0;
    v17 = [v14 setCategory:v15 mode:v16 options:1 error:v50];

    v18 = v50[0];
    if (v17)
    {
      *(v0 + v13) = 1;
      v19 = v18;
    }

    else
    {
      v20 = v50[0];
      v21 = sub_220FBFFE0();

      swift_willThrow();
      if (qword_27CF9C008 != -1)
      {
        OUTLINED_FUNCTION_2_26();
      }

      v22 = __swift_project_value_buffer(v3, qword_27CF9CBF8);
      sub_220ECC944(v22, v0, &qword_27CF9CF70);
      v23 = sub_220FC17A0();
      v24 = OUTLINED_FUNCTION_49();
      if (__swift_getEnumTagSinglePayload(v24, v25, v23) == 1)
      {

        sub_220E3B2DC(v0, &qword_27CF9CF70);
      }

      else
      {
        v26 = v21;
        v27 = sub_220FC1780();
        v28 = sub_220FC2E10();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = OUTLINED_FUNCTION_76_0();
          v30 = swift_slowAlloc();
          *v29 = 138412290;
          v31 = v21;
          v32 = _swift_stdlib_bridgeErrorToNSError();
          *(v29 + 4) = v32;
          *v30 = v32;
          _os_log_impl(&dword_220E15000, v27, v28, "Failed to begin live mode session. Unable to set audio session category: %@", v29, 0xCu);
          sub_220E3B2DC(v30, &qword_27CF9EF80);
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_15();
        }

        else
        {
        }

        OUTLINED_FUNCTION_12();
        v33 = OUTLINED_FUNCTION_96();
        v34(v33);
      }
    }
  }

  v35 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_overlayDataState;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_11_18();
  sub_220F5228C(v2 + v35, v12, v36);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v12, 3, v37))
  {
    OUTLINED_FUNCTION_11_18();
    sub_220F5228C(v2 + v35, v1, v38);
    sub_220F4769C(v1, v39, v40, v41, v42, v43, v44, v45, v49[0], v49[1], v50[0], v50[1], v50[2], v51, v52, v53, v54, v55);
    OUTLINED_FUNCTION_10_22();
    sub_220F522E8();
  }

  else
  {
    OUTLINED_FUNCTION_10_22();
    sub_220F522E8();
    v47 = v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_liveModeState;
    if (*(v47 + 16) == 1)
    {
      OUTLINED_FUNCTION_81();
      if (!v48)
      {
        [objc_opt_self() start];
        *&result = 1;
        *v47 = xmmword_220FD04A0;
        *(v47 + 16) = 1;
      }
    }
  }

  return result;
}

void sub_220F48048()
{
  OUTLINED_FUNCTION_64_3();
  if (!v1 || (OUTLINED_FUNCTION_81(), v2))
  {
    [objc_opt_self() stop];
    *v0 = 0;
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
  }
}

void sub_220F480A0(double a1, double a2)
{
  OUTLINED_FUNCTION_64_3();
  if (!v5 || (OUTLINED_FUNCTION_81(), v6))
  {
    sub_220F48120(a1, a2);
    [objc_opt_self() updateValue_];
    *v2 = a1;
    *(v2 + 8) = a2;
    *(v2 + 16) = 0;
  }
}

uint64_t sub_220F48120(double a1, double a2)
{
  v5 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v18 - v11;
  v13 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex);
  v14 = *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex + 8);
  v15 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
  swift_beginAccess();
  sub_220ECC944(v2 + v15, v12, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5))
  {
    return sub_220E3B2DC(v12, &qword_27CF9D090);
  }

  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  sub_220F5228C(v12, v8, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v12, &qword_27CF9D090);
  sub_220F1FD44(v17, a1, a2);
  return sub_220F522E8();
}

double sub_220F4832C()
{
  OUTLINED_FUNCTION_64_3();
  if (!v1 || (OUTLINED_FUNCTION_81(), v3))
  {
    [objc_opt_self() updateValue_];
    *&result = 2;
    *v0 = xmmword_220FD04B0;
    *(v0 + 16) = 1;
  }

  return result;
}

uint64_t sub_220F48390(double a1, double a2)
{
  v5 = v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState;
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24) - 2 >= 2)
  {
    v6 = *(v5 + 16);
    if (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24))
    {
      v8 = *v5;
      v7 = *(v5 + 8);

      sub_220FC2B00();
      sub_220ECC534(v8, v7, v6, 1);
    }

    else
    {
      [*(v5 + 16) invalidate];
    }
  }

  sub_220E1966C(0, &qword_27CF9E590);
  OUTLINED_FUNCTION_57_2();
  v19[3] = type metadata accessor for WeatherMapOverlaySonifier();
  v19[0] = v2;
  v17 = 0u;
  v18 = 0u;

  sub_220F44BD8(v19, sel_hoverTimerFiredWithTimer_, &v17, 0, 0.5);
  v10 = v9;
  v11 = [objc_opt_self() mainRunLoop];
  [v11 addTimer:v10 forMode:*MEMORY[0x277CBE640]];

  v12 = *v5;
  v13 = *(v5 + 8);
  v14 = *(v5 + 16);
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 16) = v10;
  v15 = *(v5 + 24);
  *(v5 + 24) = 0;

  return sub_220ECC534(v12, v13, v14, v15);
}

uint64_t sub_220F48518(double a1, double a2)
{
  if (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24) > 2u || sqrt((*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 8) - a2) * (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 8) - a2) + (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState) - a1) * (*(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState) - a1)) > 5.0)
  {
    return sub_220F48390(a1, a2);
  }

  return result;
}

uint64_t sub_220F48560()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24) - 2 >= 2)
  {
    if (*(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24))
    {

      sub_220FC2B00();
      OUTLINED_FUNCTION_61_3();
      sub_220ECC534(v2, v3, v4, 1);
    }

    else
    {
      [*(v1 + 16) invalidate];
    }
  }

  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  *v1 = 0;
  v8 = *(v1 + 24);
  *(v1 + 24) = 3;

  return sub_220ECC534(v5, v6, v7, v8);
}

uint64_t sub_220F48624()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_45_3();
  v5 = v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState;
  v6 = *(v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24);
  if (v6 == 1)
  {
    v8 = *(v5 + 8);
    v7 = *(v5 + 16);
    v9 = *v5;

    sub_220FC2B00();
    sub_220ECC534(v9, v8, v7, 1);
    v6 = *(v5 + 24);
  }

  if (v6 > 2)
  {

    return sub_220F48560();
  }

  else
  {
    v11 = *v5;
    v10 = *(v5 + 8);
    sub_220FC2AE0();
    v12 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
    OUTLINED_FUNCTION_0_70();
    v18 = sub_220F524F4(v16, v17);
    v19 = swift_allocObject();
    v19[2] = v1;
    v19[3] = v18;
    v19[4] = v1;
    v19[5] = v11;
    v19[6] = v10;
    OUTLINED_FUNCTION_132();
    v20 = OUTLINED_FUNCTION_3_22();
    v23 = sub_220F9BB1C(v20, v21, v0, v22, v19);
    v25 = *v5;
    v24 = *(v5 + 8);
    v26 = *(v5 + 16);
    *v5 = v11;
    *(v5 + 8) = v10;
    *(v5 + 16) = v23;
    v27 = *(v5 + 24);
    *(v5 + 24) = 1;
    return sub_220ECC534(v25, v24, v26, v27);
  }
}

uint64_t sub_220F487D8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 216) = a1;
  *(v6 + 224) = a2;
  *(v6 + 208) = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *(v6 + 232) = swift_task_alloc();
  v7 = sub_220FC36D0();
  *(v6 + 240) = v7;
  *(v6 + 248) = *(v7 - 8);
  *(v6 + 256) = swift_task_alloc();
  *(v6 + 264) = swift_task_alloc();
  v8 = sub_220FC36E0();
  *(v6 + 272) = v8;
  *(v6 + 280) = *(v8 - 8);
  *(v6 + 288) = swift_task_alloc();
  *(v6 + 296) = type metadata accessor for WeatherMapOverlayTimeConstraints();
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = type metadata accessor for SonifierDataState.OverlayFrames(0);
  *(v6 + 320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  *(v6 + 328) = swift_task_alloc();
  *(v6 + 336) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB80);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = type metadata accessor for WeatherMapOverlay();
  *(v6 + 360) = swift_task_alloc();
  v9 = sub_220FC0FD0();
  *(v6 + 368) = v9;
  *(v6 + 376) = *(v9 - 8);
  *(v6 + 384) = swift_task_alloc();
  v10 = sub_220FC1070();
  *(v6 + 392) = v10;
  *(v6 + 400) = *(v10 - 8);
  *(v6 + 408) = swift_task_alloc();
  v11 = sub_220FC02B0();
  *(v6 + 416) = v11;
  v12 = *(v11 - 8);
  *(v6 + 424) = v12;
  *(v6 + 432) = *(v12 + 64);
  *(v6 + 440) = swift_task_alloc();
  *(v6 + 448) = swift_task_alloc();
  *(v6 + 456) = swift_task_alloc();
  *(v6 + 464) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  *(v6 + 504) = swift_task_alloc();
  *(v6 + 512) = swift_task_alloc();
  *(v6 + 520) = swift_task_alloc();
  *(v6 + 528) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F48C0C, 0, 0);
}

uint64_t sub_220F48C0C()
{
  OUTLINED_FUNCTION_19();
  *(v0 + 536) = sub_220FC2AB0();
  *(v0 + 544) = sub_220FC2AA0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F48C90()
{
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 216);
  v1 = *(v0 + 224);
  v3 = *(v0 + 208);

  sub_220F4C100(v3, (v0 + 161), v2, v1);
  *(v0 + 552) = 0;
  v4 = *(v0 + 208);
  *(v0 + 162) = *(v0 + 161);

  return MEMORY[0x2822009F8](sub_220F48D60, v4, 0);
}

uint64_t sub_220F48D60()
{
  OUTLINED_FUNCTION_88_0();
  if (*(v0 + 162) == 1 && (v1 = sub_220F4C294(*(v0 + 216), *(v0 + 224)), (v3 & 1) == 0))
  {
    v6 = v1;
    v7 = v2;
    *(v0 + 560) = v2;
    *(v0 + 568) = v1;
    if (qword_27CF9C008 != -1)
    {
      OUTLINED_FUNCTION_2_26();
    }

    v8 = *(v0 + 528);
    v9 = __swift_project_value_buffer(*(v0 + 464), qword_27CF9CBF8);
    *(v0 + 576) = v9;
    sub_220ECC944(v9, v8, &qword_27CF9CF70);
    v10 = sub_220FC17A0();
    *(v0 + 584) = v10;
    v11 = OUTLINED_FUNCTION_49();
    if (__swift_getEnumTagSinglePayload(v11, v12, v10) == 1)
    {
      sub_220E3B2DC(*(v0 + 528), &qword_27CF9CF70);
    }

    else
    {
      v13 = sub_220FC1780();
      v14 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_21_0(v14))
      {
        v15 = OUTLINED_FUNCTION_20_0();
        *v15 = 0;
        _os_log_impl(&dword_220E15000, v13, v14, "Overlay sonifier hover triggered. Requesting model for hovered location.", v15, 2u);
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_12();
      v16 = OUTLINED_FUNCTION_50_0();
      v17(v16);
    }

    v18 = *(v0 + 456);
    v19 = *(v0 + 208);
    sub_220E1966C(0, &qword_27CF9E4F8);
    sub_220FC0670();
    v20 = OUTLINED_FUNCTION_107();
    *(v0 + 592) = sub_220F44D90(v18, v20, v21, v22, v23, v24);
    OUTLINED_FUNCTION_0_70();
    v27 = sub_220F524F4(v25, v26);
    *(v0 + 600) = v27;
    v28 = swift_task_alloc();
    *(v0 + 608) = v28;
    v28[2] = v19;
    v28[3] = v6;
    v28[4] = v7;
    v29 = swift_task_alloc();
    *(v0 + 616) = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E500);
    *v29 = v0;
    v29[1] = sub_220F49128;
    OUTLINED_FUNCTION_47_3();

    return MEMORY[0x2822007B8](v0 + 184, v19, v27, v30, v31, v32, v28, v33);
  }

  else
  {
    sub_220F48560();
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_14_17();

    OUTLINED_FUNCTION_32_0();

    return v4();
  }
}

uint64_t sub_220F49128()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F4923C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_88_0();
  v27 = *(v26 + 184);
  *(v26 + 624) = v27;
  if (!v27)
  {
    v33 = OUTLINED_FUNCTION_59_3();
    sub_220ECC944(v33, *(v26 + 520), &qword_27CF9CF70);
    v34 = OUTLINED_FUNCTION_24_6();
    if (__swift_getEnumTagSinglePayload(v34, v35, 0) != 1)
    {
      v46 = sub_220FC1780();
      v47 = sub_220FC2E10();
      if (OUTLINED_FUNCTION_71_1(v47))
      {
        v48 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_122(v48);
        OUTLINED_FUNCTION_60(&dword_220E15000, v49, v50, "Did not get a model for the requested location. This was not expected.");
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_14_8();
      v51 = OUTLINED_FUNCTION_48_3();
      goto LABEL_24;
    }

    v27 = *(v26 + 520);

LABEL_8:
    sub_220E3B2DC(v27, &qword_27CF9CF70);
LABEL_25:
    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_7_23();
    v85 = v75;

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_63_3();

    return v77(v76, v77, v78, v79, v80, v81, v82, v83, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v85, a23, a24, a25, a26);
  }

  v28 = *(v26 + 552);
  sub_220FC2B50();
  *(v26 + 632) = v28;
  if (v28)
  {
    v29 = *(v26 + 592);

    v30 = OUTLINED_FUNCTION_59_3();
    v31 = *(v26 + 472);
    sub_220ECC944(v30, v31, &qword_27CF9CF70);
    OUTLINED_FUNCTION_18_14(v31);
    if (!v32)
    {
      v40 = v28;
      v41 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v43 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v44 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v44);
        OUTLINED_FUNCTION_58_3(&dword_220E15000, v45, v31, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v43, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v51 = *(v26 + 472);
      v52 = *(*(*(v26 + 584) - 8) + 8);
LABEL_24:
      v52(v51);
      goto LABEL_25;
    }

    goto LABEL_8;
  }

  v36 = OUTLINED_FUNCTION_59_3();
  sub_220ECC944(v36, *(v26 + 512), &qword_27CF9CF70);
  v37 = OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_131(v37, v38);
  if (v39 == 1)
  {
    sub_220E3B2DC(*(v26 + 512), &qword_27CF9CF70);
  }

  else
  {
    v53 = sub_220FC1780();
    v54 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_71_1(v54))
    {
      v55 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_122(v55);
      OUTLINED_FUNCTION_60(&dword_220E15000, v56, v57, "Requesting reverse geocoded location for hover point.");
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_14_8();
    v58 = OUTLINED_FUNCTION_48_3();
    v59(v58);
  }

  v60 = *(v26 + 568);
  v61 = *(v26 + 560);
  v62 = *(v26 + 208);
  v63 = swift_task_alloc();
  *(v26 + 640) = v63;
  v63[2] = v62;
  v63[3] = v60;
  v63[4] = v61;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v26 + 648) = v64;
  *v64 = v65;
  v64[1] = sub_220F496BC;
  OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_63_3();

  return MEMORY[0x2822007B8](v66, v67, v68, v69, v70, v71, v72, v73);
}

uint64_t sub_220F496BC()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F497D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_88_0();
  v27 = v26[79];
  sub_220FC2B50();
  v26[82] = v27;
  if (v27)
  {
    v28 = v26[78];
    v29 = v26[74];
    v30 = OUTLINED_FUNCTION_79_0();
    v31(v30);

    v32 = OUTLINED_FUNCTION_59_3();
    v33 = v26[59];
    sub_220ECC944(v32, v33, &qword_27CF9CF70);
    OUTLINED_FUNCTION_18_14(v33);
    if (v34)
    {

      sub_220E3B2DC(v28, &qword_27CF9CF70);
    }

    else
    {
      v39 = v27;
      v40 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v42 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v43 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v43);
        OUTLINED_FUNCTION_58_3(&dword_220E15000, v44, v33, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v42, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v56 = OUTLINED_FUNCTION_12_19();
      (*(v57 + 8))(v56);
    }

    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_7_23();
    v67 = v58;

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_63_3();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, v67, a23, a24, a25, a26);
  }

  else
  {
    v35 = OUTLINED_FUNCTION_59_3();
    sub_220ECC944(v35, v26[63], &qword_27CF9CF70);
    v36 = OUTLINED_FUNCTION_24_6();
    OUTLINED_FUNCTION_131(v36, v37);
    if (v38 == 1)
    {
      sub_220E3B2DC(v26[63], &qword_27CF9CF70);
    }

    else
    {
      v45 = sub_220FC1780();
      v46 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_71_1(v46))
      {
        v47 = OUTLINED_FUNCTION_20_0();
        OUTLINED_FUNCTION_122(v47);
        OUTLINED_FUNCTION_60(&dword_220E15000, v48, v49, "Getting description for closest significant location to hover point.");
        OUTLINED_FUNCTION_15();
      }

      OUTLINED_FUNCTION_14_8();
      v50 = OUTLINED_FUNCTION_48_3();
      v51(v50);
    }

    v52 = swift_task_alloc();
    v26[83] = v52;
    *v52 = v26;
    v52[1] = sub_220F49B4C;
    OUTLINED_FUNCTION_63_3();

    return sub_220F4CDD0(v53);
  }
}

uint64_t sub_220F49B4C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_17();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_8();
  *v4 = v3;
  *(v6 + 672) = v5;
  *(v6 + 680) = v7;

  v8 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

void sub_220F49C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_88_0();
  v27 = v26[85];
  v28 = v26[84];
  v29 = v26[78];
  v31 = v26[47];
  v30 = v26[48];
  v32 = v26[46];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D060);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220FC9EF0;
  sub_220FC0FF0();
  v34 = sub_220FC0FC0();
  v36 = v35;
  (*(v31 + 8))(v30, v32);
  *(inited + 32) = v34;
  *(inited + 40) = v36;
  *(inited + 48) = v28;
  *(inited + 56) = v27;
  v37 = *(v29 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription + 8);
  *(inited + 64) = *(v29 + OBJC_IVAR____TtC11WeatherMaps29MapLocationAccessibilityModel_accessibilityDescription);
  *(inited + 72) = v37;

  v38 = 0;
  v39 = MEMORY[0x277D84F90];
LABEL_2:
  v40 = v38 - 1;
  v41 = 16 * v38 + 40;
  while (v40 != 2)
  {
    if (++v40 > 2)
    {
      __break(1u);
LABEL_43:
      __break(1u);
      return;
    }

    v42 = v41 + 16;
    v43 = *(inited + v41);
    v41 += 16;
    if (v43)
    {
      v44 = *(inited + v42 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F36F34(0, *(v39 + 16) + 1, 1, v39);
        v39 = v48;
      }

      v46 = *(v39 + 16);
      v45 = *(v39 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_220F36F34(v45 > 1, v46 + 1, 1, v39);
        v39 = v49;
      }

      v38 = v40 + 1;
      *(v39 + 16) = v46 + 1;
      v47 = v39 + 16 * v46;
      *(v47 + 32) = v44;
      *(v47 + 40) = v43;
      goto LABEL_2;
    }
  }

  swift_setDeallocating();
  sub_220E56120();
  v50 = 0;
  v51 = *(v39 + 16);
  v52 = MEMORY[0x277D84F90];
LABEL_12:
  v53 = (v39 + 40 + 16 * v50);
  while (v51 != v50)
  {
    if (v50 >= *(v39 + 16))
    {
      goto LABEL_43;
    }

    v55 = *(v53 - 1);
    v54 = *v53;
    v53 += 2;
    ++v50;
    v56 = HIBYTE(v54) & 0xF;
    if ((v54 & 0x2000000000000000) == 0)
    {
      v56 = v55 & 0xFFFFFFFFFFFFLL;
    }

    if (v56)
    {

      a22 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_220F0B298(0, *(v52 + 16) + 1, 1);
      }

      v58 = *(v52 + 16);
      v57 = *(v52 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_220F0B298((v57 > 1), v58 + 1, 1);
      }

      *(v52 + 16) = v58 + 1;
      v59 = v52 + 16 * v58;
      *(v59 + 32) = v55;
      *(v59 + 40) = v54;
      goto LABEL_12;
    }
  }

  v60 = v26[82];

  v26[24] = v52;
  v61 = OUTLINED_FUNCTION_0_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(v61);
  OUTLINED_FUNCTION_61_3();
  sub_220E453D4(v62, v63);
  sub_220FC2670();
  v65 = v64;

  v26[86] = v65;
  sub_220FC2B50();
  v26[87] = v60;
  if (v60)
  {
    v66 = v26[78];
    v67 = v26[74];
    v68 = OUTLINED_FUNCTION_79_0();
    v69(v68);

    v70 = OUTLINED_FUNCTION_59_3();
    v71 = v26[59];
    sub_220ECC944(v70, v71, &qword_27CF9CF70);
    OUTLINED_FUNCTION_18_14(v71);
    if (v72)
    {

      sub_220E3B2DC(v66, &qword_27CF9CF70);
    }

    else
    {
      v76 = v60;
      v77 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v79 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v80 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v80);
        OUTLINED_FUNCTION_58_3(&dword_220E15000, v81, v71, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v79, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v98 = OUTLINED_FUNCTION_12_19();
      (*(v99 + 8))(v98);
    }

    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_14_17();

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_63_3();

    v101(v100, v101, v102, v103, v104, v105, v106, v107, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
  }

  else
  {
    v73 = OUTLINED_FUNCTION_59_3();
    v74 = v26[62];
    sub_220ECC944(v73, v74, &qword_27CF9CF70);
    OUTLINED_FUNCTION_131(v74, 1);
    if (v75 == 1)
    {
      sub_220E3B2DC(v26[62], &qword_27CF9CF70);
    }

    else
    {
      v82 = sub_220FC1780();
      v83 = sub_220FC2E30();
      if (OUTLINED_FUNCTION_21_0(v83))
      {
        v84 = OUTLINED_FUNCTION_20_0();
        *v84 = 0;
        OUTLINED_FUNCTION_72_1();
        _os_log_impl(v85, v86, v87, v88, v84, 2u);
        OUTLINED_FUNCTION_32_1();
      }

      v89 = v26[73];
      v90 = v26[62];

      OUTLINED_FUNCTION_12();
      (*(v91 + 8))(v90, v89);
    }

    v92 = swift_task_alloc();
    v26[88] = v92;
    *v92 = v26;
    v92[1] = sub_220F4A2A0;
    OUTLINED_FUNCTION_63_3();

    sub_220F47914(v93, v94, v95, v96);
  }
}

uint64_t sub_220F4A2A0()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F4A3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(uint64_t, void *), void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_134();
  v30 = OUTLINED_FUNCTION_59_3();
  sub_220ECC944(v30, *(v28 + 488), &qword_27CF9CF70);
  v31 = OUTLINED_FUNCTION_24_6();
  OUTLINED_FUNCTION_131(v31, v32);
  if (v33 == 1)
  {
    sub_220E3B2DC(*(v28 + 488), &qword_27CF9CF70);
  }

  else
  {
    v34 = sub_220FC1780();
    v35 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_71_1(v35))
    {
      v36 = OUTLINED_FUNCTION_20_0();
      OUTLINED_FUNCTION_122(v36);
      OUTLINED_FUNCTION_60(&dword_220E15000, v37, v38, "Potentially playing forecast sequence for hover point.");
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_14_8();
    v39 = OUTLINED_FUNCTION_48_3();
    v40(v39);
  }

  v41 = *(v28 + 208);
  if (*(v41 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex + 8))
  {
LABEL_12:
    v62 = *(v28 + 696);
    sub_220FC2B50();
    v63 = v62;
    v64 = *(v28 + 624);
    v65 = *(v28 + 592);
    v66 = OUTLINED_FUNCTION_79_0();
    v67(v66);

    if (!v63)
    {
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  v42 = *(v41 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frameIndex);
  v43 = *(v28 + 336);
  v44 = *(v28 + 312);
  v45 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220ECC944(v41 + v45, v43, &qword_27CF9D090);
  v46 = OUTLINED_FUNCTION_49();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, v47, v44);
  v49 = *(v28 + 344);
  v50 = *(v28 + 352);
  v51 = *(v28 + 336);
  if (EnumTagSinglePayload)
  {
    sub_220E3B2DC(*(v28 + 336), &qword_27CF9D090);
    v52 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v50);
LABEL_10:
    v60 = *(v28 + 344);
    v61 = &unk_27CF9EB80;
LABEL_11:
    sub_220E3B2DC(v60, v61);
    goto LABEL_12;
  }

  v29 = *(v28 + 320);
  OUTLINED_FUNCTION_5_30();
  v55 = OUTLINED_FUNCTION_109();
  sub_220F5228C(v55, v56, v57);
  sub_220E3B2DC(v51, &qword_27CF9D090);
  sub_220ECC944(v29, v49, &unk_27CF9EB80);
  OUTLINED_FUNCTION_2_41();
  sub_220F522E8();
  v58 = OUTLINED_FUNCTION_24_6();
  if (__swift_getEnumTagSinglePayload(v58, v59, v50) == 1)
  {
    goto LABEL_10;
  }

  v93 = *(v28 + 328);
  v94 = *(v28 + 312);
  sub_220F52498(*(v28 + 344), *(v28 + 360), type metadata accessor for WeatherMapOverlay);
  sub_220ECC944(v41 + v45, v93, &qword_27CF9D090);
  v95 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v95, v96, v94))
  {
    v97 = *(v28 + 328);
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    v61 = &qword_27CF9D090;
    v60 = v97;
    goto LABEL_11;
  }

  v99 = *(v28 + 320);
  v98 = *(v28 + 328);
  v100 = *(v28 + 312);
  OUTLINED_FUNCTION_5_30();
  v101 = OUTLINED_FUNCTION_96();
  sub_220F5228C(v101, v102, v103);
  sub_220E3B2DC(v98, &qword_27CF9D090);
  v63 = *(v99 + *(v100 + 36));

  OUTLINED_FUNCTION_2_41();
  sub_220F522E8();
  if (!v63)
  {
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    goto LABEL_12;
  }

  if (v63[2] <= 1uLL)
  {
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();

    goto LABEL_12;
  }

  *(v28 + 164) = *(*(v28 + 352) + 28);
  OUTLINED_FUNCTION_23_13();
  v108 = sub_220F5228C(v104 + v105, v106, v107);
  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    return MEMORY[0x2822009F8](v108, v109, v110);
  }

  v111 = *(v28 + 584);
  v29 = *(v28 + 576);
  v112 = *(v28 + 480);
  v113 = *(v28 + 304);
  sub_220FC0230();
  OUTLINED_FUNCTION_22_13();
  sub_220F522E8();
  sub_220FC0220();
  v114 = OUTLINED_FUNCTION_93();
  sub_220ECC944(v114, v115, v116);
  if (__swift_getEnumTagSinglePayload(v112, 1, v111) == 1)
  {
    sub_220E3B2DC(*(v28 + 480), &qword_27CF9CF70);
  }

  else
  {
    v117 = sub_220FC1780();
    v118 = sub_220FC2E30();
    if (OUTLINED_FUNCTION_21_0(v118))
    {
      *OUTLINED_FUNCTION_20_0() = 0;
      OUTLINED_FUNCTION_30_8();
      _os_log_impl(v119, v120, v121, v122, v123, 2u);
      OUTLINED_FUNCTION_14_0();
    }

    v124 = *(v28 + 584);
    v29 = *(v28 + 480);

    OUTLINED_FUNCTION_12();
    (*(v125 + 8))(v29, v124);
  }

  v64 = v63[2];
  *(v28 + 712) = v64;

  if (v64 < v42)
  {
    goto LABEL_48;
  }

  v126 = *(v28 + 696);
  *(v28 + 720) = v42;
  if (v42 != *(v28 + 712))
  {
    v63 = *(v28 + 440);
    v132 = *(v28 + 296);
    v131 = *(v28 + 304);
    OUTLINED_FUNCTION_23_13();
    sub_220F5228C(v134 + v133, v131, v135);
    v64 = (v131 + *(v132 + 20));
    sub_220FC0230();
    OUTLINED_FUNCTION_22_13();
    sub_220F522E8();
    sub_220FC0220();
    sub_220FC2B50();
    *(v28 + 736) = v126;
    if (v126)
    {
      v136 = OUTLINED_FUNCTION_43_5();
      v137(v136);
      v138 = sub_220FC2AE0();
      v139 = OUTLINED_FUNCTION_26_14(v138);
      v140(v139, v64, v113);
      OUTLINED_FUNCTION_118();
      v29 = (v142 & ~v141);
      v143 = swift_allocObject();
      OUTLINED_FUNCTION_36_8(v143);
      OUTLINED_FUNCTION_121();
      v144();

      OUTLINED_FUNCTION_13_18();

      sub_220E3B2DC(v126, &unk_27CF9EB90);
      swift_willThrow();

      a15(a14, v113);
      OUTLINED_FUNCTION_1_59();
      sub_220F522E8();
      (*(a19 + 8))(a21, a20);
LABEL_13:
      v68 = OUTLINED_FUNCTION_59_3();
      v69 = *(v28 + 472);
      sub_220ECC944(v68, v69, &qword_27CF9CF70);
      OUTLINED_FUNCTION_18_14(v69);
      if (v70)
      {

        sub_220E3B2DC(v64, &qword_27CF9CF70);
      }

      else
      {
        v71 = v63;
        v72 = sub_220FC1780();
        sub_220FC2E30();

        if (OUTLINED_FUNCTION_112())
        {
          OUTLINED_FUNCTION_76_0();
          v74 = OUTLINED_FUNCTION_58_2();
          *v29 = 138412290;
          v75 = v63;
          v76 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_78(v76);
          OUTLINED_FUNCTION_30_8();
          _os_log_impl(v77, v78, v79, v80, v81, 0xCu);
          sub_220E3B2DC(v74, &qword_27CF9EF80);
          OUTLINED_FUNCTION_32_1();
          OUTLINED_FUNCTION_14_0();
        }

        else
        {
        }

        v82 = OUTLINED_FUNCTION_12_19();
        (*(v83 + 8))(v82);
      }

LABEL_20:
      OUTLINED_FUNCTION_4_39();
      OUTLINED_FUNCTION_14_17();

      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_37_6();

      return v85(v84, v85, v86, v87, v88, v89, v90, v91, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
    }

    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_37_6();

    return MEMORY[0x2822009F8](v108, v109, v110);
  }

  sub_220FC2B50();
  *(v28 + 728) = v126;
  if (v126)
  {
    OUTLINED_FUNCTION_89_0();

    v127 = OUTLINED_FUNCTION_96();
    v128(v127);
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    v129 = OUTLINED_FUNCTION_93();
    v130(v129);
    goto LABEL_13;
  }

  v145 = swift_task_alloc();
  *(v28 + 784) = v145;
  *v145 = v28;
  OUTLINED_FUNCTION_48_5(v145);
  OUTLINED_FUNCTION_37_6();

  return sub_220F4DD60(v146, v147);
}

uint64_t sub_220F4AC5C()
{
  OUTLINED_FUNCTION_19();
  swift_weakInit();
  *(v0 + 744) = sub_220FC2AA0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4ACE0()
{
  OUTLINED_FUNCTION_35();

  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_4;
  }

  v2 = Strong + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    swift_getObjectType();
    OUTLINED_FUNCTION_0_70();
    sub_220F524F4(v4, v5);
    v6 = *(v3 + 32);

    OUTLINED_FUNCTION_60_3();
    v6();

    swift_unknownObjectRelease();
LABEL_4:
    swift_weakDestroy();
    goto LABEL_6;
  }

  swift_weakDestroy();

LABEL_6:
  v7 = *(v0 + 208);

  return MEMORY[0x2822009F8](sub_220F4AE28, v7, 0);
}

uint64_t sub_220F4AE28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_88_0();
  v27 = *(v26 + 736);
  sub_220FC2B50();
  if (v27)
  {
    v72 = *(v26 + 624);
    v70 = *(v26 + 592);
    v28 = *(v26 + 448);
    v68 = v28;
    v29 = *(v26 + 432);
    v75 = v27;
    v30 = *(v26 + 416);
    v69 = *(v26 + 400);
    v73 = *(v26 + 392);
    v74 = *(v26 + 408);
    v71 = *(v26 + 360);
    v31 = *(v26 + 232);
    v32 = *(*(v26 + 424) + 8);
    (v32)(*(v26 + 440), v30);
    v33 = sub_220FC2AE0();
    v34 = OUTLINED_FUNCTION_26_14(v33);
    v35(v34, v28, v30);
    OUTLINED_FUNCTION_118();
    v36 = swift_allocObject();
    OUTLINED_FUNCTION_36_8(v36);
    OUTLINED_FUNCTION_121();
    v37();

    OUTLINED_FUNCTION_13_18();

    sub_220E3B2DC(v31, &unk_27CF9EB90);
    swift_willThrow();

    (v32)(v28, v30);
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    (*(v69 + 8))(v74, v73);
    v38 = OUTLINED_FUNCTION_59_3();
    v39 = *(v26 + 472);
    sub_220ECC944(v38, v39, &qword_27CF9CF70);
    OUTLINED_FUNCTION_18_14(v39);
    if (v40)
    {

      sub_220E3B2DC(v29, &qword_27CF9CF70);
    }

    else
    {
      v45 = v75;
      v46 = sub_220FC1780();
      sub_220FC2E30();

      if (OUTLINED_FUNCTION_112())
      {
        OUTLINED_FUNCTION_76_0();
        v48 = OUTLINED_FUNCTION_58_2();
        *v32 = 138412290;
        v49 = v75;
        v50 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v50);
        OUTLINED_FUNCTION_30_8();
        _os_log_impl(v51, v52, v53, v54, v55, 0xCu);
        sub_220E3B2DC(v48, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v56 = OUTLINED_FUNCTION_12_19();
      (*(v57 + 8))(v56);
    }

    OUTLINED_FUNCTION_4_39();
    OUTLINED_FUNCTION_7_23();
    v76 = v58;

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_63_3();

    return v60(v59, v60, v61, v62, v63, v64, v65, v66, a9, a10, a11, a12, a13, a14, v68, v69, v70, v71, v72, v73, v74, v76, a23, a24, a25, a26);
  }

  else
  {
    sub_220FC39C0();
    *(v26 + 168) = xmmword_220FD57A0;
    *(v26 + 144) = 0;
    *(v26 + 152) = 0;
    *(v26 + 160) = 1;
    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_63_3();

    return MEMORY[0x2822009F8](v41, v42, v43);
  }
}

uint64_t sub_220F4B1E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v12 = v10[31];
  v11 = v10[32];
  v13 = v10[30];
  OUTLINED_FUNCTION_65_3();
  sub_220F524F4(v14, v15);
  OUTLINED_FUNCTION_48_3();
  sub_220FC39A0();
  OUTLINED_FUNCTION_64_4();
  sub_220F524F4(v16, v17);
  sub_220FC36F0();
  v18 = *(v12 + 8);
  v10[94] = v18;
  v10[95] = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v11, v13);
  v19 = swift_task_alloc();
  v10[96] = v19;
  *v19 = v10;
  v19[1] = sub_220F4B338;
  OUTLINED_FUNCTION_40_0();

  return MEMORY[0x2822008C8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10);
}

uint64_t sub_220F4B338()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_8();
  *v6 = v5;
  *(v3 + 776) = v0;

  if (v0)
  {
    (*(v3 + 752))(*(v3 + 264), *(v3 + 240));
    v7 = sub_220F4B900;
    v8 = 0;
  }

  else
  {
    v9 = *(v3 + 752);
    v10 = *(v3 + 264);
    v11 = *(v3 + 240);
    v12 = *(v3 + 208);
    v9(v10, v11);
    v13 = OUTLINED_FUNCTION_96();
    v14(v13);
    v7 = sub_220F4B48C;
    v8 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, 0);
}

uint64_t sub_220F4B48C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void (*a15)(void, void *), void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_134();
  (*(v30[53] + 8))(v30[55], v30[52]);
  v33 = v30[97];
  v34 = v30[90] + 1;
  v30[90] = v34;
  if (v34 == v30[89])
  {
    sub_220FC2B50();
    v30[91] = v33;
    if (v33)
    {
      OUTLINED_FUNCTION_89_0();

      v35 = OUTLINED_FUNCTION_96();
      v36(v35);
      OUTLINED_FUNCTION_1_59();
      sub_220F522E8();
      v37 = OUTLINED_FUNCTION_93();
      v38(v37);
LABEL_6:
      v53 = OUTLINED_FUNCTION_59_3();
      v54 = v30[59];
      sub_220ECC944(v53, v54, &qword_27CF9CF70);
      OUTLINED_FUNCTION_18_14(v54);
      if (v55)
      {

        sub_220E3B2DC(v29, &qword_27CF9CF70);
      }

      else
      {
        v56 = v28;
        v57 = sub_220FC1780();
        sub_220FC2E30();

        if (OUTLINED_FUNCTION_112())
        {
          OUTLINED_FUNCTION_76_0();
          v59 = OUTLINED_FUNCTION_58_2();
          *v31 = 138412290;
          v60 = v28;
          v61 = _swift_stdlib_bridgeErrorToNSError();
          OUTLINED_FUNCTION_78(v61);
          OUTLINED_FUNCTION_30_8();
          _os_log_impl(v62, v63, v64, v65, v66, 0xCu);
          sub_220E3B2DC(v59, &qword_27CF9EF80);
          OUTLINED_FUNCTION_32_1();
          OUTLINED_FUNCTION_14_0();
        }

        else
        {
        }

        v76 = OUTLINED_FUNCTION_12_19();
        (*(v77 + 8))(v76);
      }

      OUTLINED_FUNCTION_4_39();
      OUTLINED_FUNCTION_14_17();

      OUTLINED_FUNCTION_32_0();
      OUTLINED_FUNCTION_37_6();

      return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28);
    }

    v67 = swift_task_alloc();
    v30[98] = v67;
    *v67 = v30;
    OUTLINED_FUNCTION_48_5(v67);
    OUTLINED_FUNCTION_37_6();

    return sub_220F4DD60(v68, v69);
  }

  else
  {
    v28 = v30[55];
    v40 = v30[37];
    v39 = v30[38];
    OUTLINED_FUNCTION_23_13();
    sub_220F5228C(v42 + v41, v39, v43);
    v29 = v39 + *(v40 + 20);
    sub_220FC0230();
    OUTLINED_FUNCTION_22_13();
    sub_220F522E8();
    sub_220FC0220();
    sub_220FC2B50();
    v30[92] = v33;
    if (v33)
    {
      v44 = OUTLINED_FUNCTION_43_5();
      v45(v44);
      v46 = sub_220FC2AE0();
      v47 = OUTLINED_FUNCTION_26_14(v46);
      v48(v47, v29, v32);
      OUTLINED_FUNCTION_118();
      v31 = (v50 & ~v49);
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_36_8(v51);
      OUTLINED_FUNCTION_121();
      v52();

      OUTLINED_FUNCTION_13_18();

      sub_220E3B2DC(v33, &unk_27CF9EB90);
      swift_willThrow();

      a15(a14, v32);
      OUTLINED_FUNCTION_1_59();
      sub_220F522E8();
      (*(a19 + 8))(a21, a20);
      goto LABEL_6;
    }

    OUTLINED_FUNCTION_10_5();
    OUTLINED_FUNCTION_37_6();

    return MEMORY[0x2822009F8](v72, v73, v74);
  }
}

uint64_t sub_220F4B900()
{
  OUTLINED_FUNCTION_19();
  (*(v0[35] + 8))(v0[36], v0[34]);
  v1 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4B970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_91();
  OUTLINED_FUNCTION_88_0();
  v67 = v26[78];
  v65 = v26[74];
  v27 = v26[56];
  v63 = v26[97];
  v28 = v26[54];
  v29 = v26[52];
  v69 = v26[51];
  v64 = v26[50];
  v68 = v26[49];
  v66 = v26[45];
  v30 = v26[29];
  v31 = *(v26[53] + 8);
  (v31)(v26[55], v29);
  v32 = sub_220FC2AE0();
  v33 = OUTLINED_FUNCTION_26_14(v32);
  v34(v33, v27, v29);
  OUTLINED_FUNCTION_118();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_36_8(v35);
  OUTLINED_FUNCTION_121();
  v36();

  OUTLINED_FUNCTION_13_18();

  sub_220E3B2DC(v30, &unk_27CF9EB90);
  swift_willThrow();

  (v31)(v27, v29);
  OUTLINED_FUNCTION_1_59();
  sub_220F522E8();
  (*(v64 + 8))(v69, v68);
  v37 = OUTLINED_FUNCTION_59_3();
  v38 = v26[59];
  sub_220ECC944(v37, v38, &qword_27CF9CF70);
  OUTLINED_FUNCTION_18_14(v38);
  if (v39)
  {

    sub_220E3B2DC(v28, &qword_27CF9CF70);
  }

  else
  {
    v40 = v63;
    v41 = sub_220FC1780();
    sub_220FC2E30();

    if (OUTLINED_FUNCTION_112())
    {
      OUTLINED_FUNCTION_76_0();
      v43 = OUTLINED_FUNCTION_58_2();
      *v31 = 138412290;
      v44 = v63;
      v45 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_78(v45);
      OUTLINED_FUNCTION_30_8();
      _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
      sub_220E3B2DC(v43, &qword_27CF9EF80);
      OUTLINED_FUNCTION_32_1();
      OUTLINED_FUNCTION_14_0();
    }

    else
    {
    }

    v51 = OUTLINED_FUNCTION_12_19();
    (*(v52 + 8))(v51);
  }

  OUTLINED_FUNCTION_4_39();
  OUTLINED_FUNCTION_7_23();
  v70 = v53;

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_63_3();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, v63, v27, v64, v65, v66, v67, v68, v70, a23, a24, a25, a26);
}

uint64_t sub_220F4BCD8()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_103();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F4BDD0()
{
  v1 = *(v0 + 728);
  sub_220FC2B50();
  if (v1)
  {
    v2 = *(v0 + 624);
    v3 = *(v0 + 448);

    v4 = OUTLINED_FUNCTION_0_30();
    v5(v4);
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    v6 = OUTLINED_FUNCTION_93();
    v7(v6);
    v20 = OUTLINED_FUNCTION_59_3();
    v21 = *(v0 + 472);
    sub_220ECC944(v20, v21, &qword_27CF9CF70);
    OUTLINED_FUNCTION_18_14(v21);
    if (v22)
    {

      sub_220E3B2DC(v3, &qword_27CF9CF70);
    }

    else
    {
      v23 = v1;
      v24 = sub_220FC1780();
      sub_220FC2E30();
      OUTLINED_FUNCTION_88();
      if (OUTLINED_FUNCTION_53_2())
      {
        OUTLINED_FUNCTION_76_0();
        v26 = OUTLINED_FUNCTION_58_2();
        OUTLINED_FUNCTION_89(5.7779e-34);
        v27 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_78(v27);
        OUTLINED_FUNCTION_58_3(&dword_220E15000, v28, v21, "Overlay sonifier hover task caught error %@.");
        sub_220E3B2DC(v26, &qword_27CF9EF80);
        OUTLINED_FUNCTION_32_1();
        OUTLINED_FUNCTION_14_0();
      }

      else
      {
      }

      v29 = OUTLINED_FUNCTION_12_19();
      (*(v30 + 8))(v29);
    }
  }

  else
  {
    v9 = *(v0 + 216);
    v8 = *(v0 + 224);
    v10 = *(v0 + 208);
    (*(*(v0 + 424) + 8))(*(v0 + 448), *(v0 + 416));
    OUTLINED_FUNCTION_1_59();
    sub_220F522E8();
    v11 = v10 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState;
    v12 = *(v10 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState);
    v13 = *(v10 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 8);
    v14 = *(v10 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 16);
    *v11 = v9;
    *(v11 + 8) = v8;
    *(v11 + 16) = 0;
    v15 = *(v11 + 24);
    *(v11 + 24) = 2;
    sub_220ECC534(v12, v13, v14, v15);
    sub_220FC2B50();
    v16 = *(v0 + 624);
    v17 = *(v0 + 592);
    v18 = OUTLINED_FUNCTION_79_0();
    v19(v18);
  }

  OUTLINED_FUNCTION_4_39();
  OUTLINED_FUNCTION_7_23();

  OUTLINED_FUNCTION_32_0();

  return v31();
}

void sub_220F4C100(uint64_t a1@<X0>, BOOL *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (*(a1 + 121) != 1)
  {
    goto LABEL_7;
  }

  v8 = a1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v9 = *(v8 + 8);
  v10 = *(a1 + 112);
  v11 = [v10 view];
  if (!v11)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v12 = v11;
  [v10 locationInView_];
  v14 = v13;
  v16 = v15;
  ObjectType = swift_getObjectType();
  v18 = sub_220F524F4(&qword_2812C9640, type metadata accessor for WeatherMapOverlaySonifier);
  v19 = COERCE_DOUBLE((*(v9 + 8))(a1, v18, v12, ObjectType, v9, v14, v16));
  v21 = v20;
  LOBYTE(ObjectType) = v22;
  swift_unknownObjectRelease();

  if (ObjectType)
  {
LABEL_7:
    v23 = 0;
    goto LABEL_8;
  }

  v23 = sqrt((v19 - a3) * (v19 - a3) + (v21 - a4) * (v21 - a4)) <= 5.0;
LABEL_8:
  *a2 = v23;
}

uint64_t sub_220F4C294(double a1, double a2)
{
  v5 = type metadata accessor for SonifierDataState.OverlayFrames(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v27 - v15;
  v17 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
  swift_beginAccess();
  sub_220ECC944(v2 + v17, v16, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v16, 1, v5))
  {
    v18 = v16;
LABEL_3:
    sub_220E3B2DC(v18, &qword_27CF9D090);
    return 0;
  }

  sub_220F5228C(v16, v8, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v16, &qword_27CF9D090);
  v19 = &v8[*(v5 + 32)];
  v20 = *v19;
  v21 = v19[8];
  sub_220F522E8();
  if (v21)
  {
    return 0;
  }

  sub_220ECC944(v2 + v17, v12, &qword_27CF9D090);
  if (__swift_getEnumTagSinglePayload(v12, 1, v5))
  {
    v18 = v12;
    goto LABEL_3;
  }

  sub_220F5228C(v12, v8, type metadata accessor for SonifierDataState.OverlayFrames);
  sub_220E3B2DC(v12, &qword_27CF9D090);
  v23 = &v8[*(v5 + 24)];
  v25 = *v23;
  v24 = *(v23 + 1);
  v26 = v23[32];
  sub_220F522E8();
  if (v26)
  {
    return 0;
  }

  v28.x = a1 / v20 + v25;
  v28.y = a2 / v20 + v24;
  return *&MKCoordinateForMapPoint(v28);
}

uint64_t sub_220F4C55C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v25 - v16;
  v18 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v18);
  (*(v9 + 16))(v13, a1, v8);
  v19 = sub_220F524F4(&qword_2812C9648, type metadata accessor for WeatherMapOverlaySonifier);
  v20 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v21 = (v10 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = a2;
  *(v22 + 3) = v19;
  *(v22 + 4) = a2;
  (*(v9 + 32))(&v22[v20], v13, v8);
  v23 = &v22[v21];
  *v23 = a3;
  v23[1] = a4;
  swift_retain_n();
  sub_220F9BB1C(0, 0, v17, &unk_220FD5B80, v22);
}

uint64_t sub_220F4C78C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a1;
  *(v7 + 48) = a2;
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  *(v7 + 56) = v8;
  v9 = *(v8 - 8);
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 + 64);
  *(v7 + 80) = swift_task_alloc();
  sub_220FC02B0();
  *(v7 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F4C890, 0, 0);
}

uint64_t sub_220F4C890()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 96) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4C908()
{
  v1 = v0[3];

  v2 = v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = v0[10];
    v4 = v0[11];
    v5 = v0[8];
    v6 = v0[7];
    v7 = v0[4];
    v23 = v0[3];
    v8 = *(v2 + 8);
    sub_220E1966C(0, &qword_27CF9E4F8);
    sub_220FC0670();
    v9 = OUTLINED_FUNCTION_107();
    v14 = sub_220F44D90(v4, v9, v10, v11, v12, v13);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_70();
    v17 = sub_220F524F4(v15, v16);
    (*(v5 + 16))(v3, v7, v6);
    v18 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v19 = swift_allocObject();
    (*(v5 + 32))(v19 + v18, v3, v6);
    (*(v8 + 16))(v23, v17, v14, sub_220ECCCAC, v19, ObjectType, v8);

    swift_unknownObjectRelease();
  }

  else
  {
    v0[2] = 0;
    sub_220FC2A50();
  }

  OUTLINED_FUNCTION_32_0();

  return v20();
}

uint64_t sub_220F4CB14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_geocodeManager), *(a2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_geocodeManager + 24));
  sub_220FC0EB0();
  sub_220E1966C(0, &qword_2812C5CA0);
  v9 = sub_220FC2FC0();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  sub_220FC1490();
}

uint64_t sub_220F4CCE8(uint64_t a1)
{
  v2 = sub_220FC1070();
  v4 = MEMORY[0x28223BE20](v2, v3);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580);
  return sub_220FC2A50();
}

uint64_t sub_220F4CDD0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E530);
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E538);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E540);
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E548);
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_220FC0350();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v7 = sub_220FC03E0();
  v2[23] = v7;
  v2[24] = *(v7 - 8);
  v2[25] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E550);
  v2[26] = v8;
  v2[27] = *(v8 - 8);
  v2[28] = swift_task_alloc();
  v9 = sub_220FC0FD0();
  v2[29] = v9;
  v2[30] = *(v9 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v2[33] = type metadata accessor for SonifierDataState.OverlayFrames(0);
  v2[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  v2[35] = swift_task_alloc();
  v10 = sub_220FC1070();
  v2[36] = v10;
  v2[37] = *(v10 - 8);
  v2[38] = swift_task_alloc();
  v2[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F4D244, v1, 0);
}

uint64_t sub_220F4D244()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  v2 = v0[7];
  v1 = v0[8];
  OUTLINED_FUNCTION_0_70();
  sub_220F524F4(v3, v4);
  v5 = swift_task_alloc();
  v0[42] = v5;
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[43] = v6;
  *v6 = v7;
  v6[1] = sub_220F4D354;
  OUTLINED_FUNCTION_61_3();
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x2822007B8](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_220F4D354()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_46_4();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F4D468()
{
  OUTLINED_FUNCTION_88_0();
  v1 = v0[36];
  sub_220ECC944(v0[41], v0[40], &unk_27CF9D6D0);
  v2 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v2, v3, v1) == 1)
  {
    OUTLINED_FUNCTION_83();
    sub_220E3B2DC(v4, v5);
    OUTLINED_FUNCTION_83();
LABEL_15:
    sub_220E3B2DC(v6, v7);
    v94 = 0;
    v96 = 0;
    goto LABEL_16;
  }

  v8 = v0[35];
  v9 = v0[33];
  v10 = v0[8];
  (*(v0[37] + 32))(v0[38], v0[40], v0[36]);
  v11 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames;
  OUTLINED_FUNCTION_10();
  swift_beginAccess();
  sub_220ECC944(v10 + v11, v8, &qword_27CF9D090);
  v12 = OUTLINED_FUNCTION_24_6();
  if (__swift_getEnumTagSinglePayload(v12, v13, v9))
  {
    v14 = v0[41];
    v15 = v0[35];
    (*(v0[37] + 8))(v0[38], v0[36]);
    sub_220E3B2DC(v14, &unk_27CF9D6D0);
    v7 = &qword_27CF9D090;
    v6 = v15;
    goto LABEL_15;
  }

  v16 = v0[34];
  v17 = v0[35];
  v18 = v0[33];
  OUTLINED_FUNCTION_5_30();
  v19 = OUTLINED_FUNCTION_0_30();
  sub_220F5228C(v19, v20, v21);
  sub_220E3B2DC(v17, &qword_27CF9D090);
  v22 = v16 + *(v18 + 24);
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);
  LOBYTE(v17) = *(v22 + 32);
  OUTLINED_FUNCTION_2_41();
  sub_220F522E8();
  if (v17)
  {
    goto LABEL_13;
  }

  v25 = v0[30];
  sub_220FC0FF0();
  v26 = sub_220FC0FC0();
  v28 = v27;
  v29 = *(v25 + 8);
  v30 = OUTLINED_FUNCTION_63_0();
  v29(v30);

  v31 = HIBYTE(v28) & 0xF;
  if ((v28 & 0x2000000000000000) == 0)
  {
    v31 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {
LABEL_13:
    v47 = v0[41];
    (*(v0[37] + 8))(v0[38], v0[36]);
LABEL_14:
    v7 = &unk_27CF9D6D0;
    v6 = v47;
    goto LABEL_15;
  }

  sub_220FC0FF0();
  v32 = sub_220FC0FC0();
  v34 = v33;
  v35 = OUTLINED_FUNCTION_109();
  v29(v35);
  sub_220FC0FE0();
  MKMapPointForCoordinate(v98);
  v104.origin.x = OUTLINED_FUNCTION_62_1();
  v104.size.width = v23;
  v104.size.height = v24;
  if (!MKMapRectContainsPoint(v104, v103))
  {
    v47 = v0[41];

    v50 = OUTLINED_FUNCTION_63_0();
    v51(v50);
    goto LABEL_14;
  }

  v93 = v32;
  v95 = v34;
  v37 = v0[24];
  v36 = v0[25];
  v38 = v0[23];
  v39 = v0[20];
  v40 = v0[7];
  sub_220FC0FE0();
  MKMapPointForCoordinate(v99);
  [v40 coordinate];
  MKMapPointForCoordinate(v100);
  v101.x = OUTLINED_FUNCTION_62_1();
  MKMetersBetweenMapPoints(v101, v102);
  sub_220FC0390();
  sub_220FC0360();
  (*(v37 + 8))(v36, v38);
  sub_220FC0330();
  sub_220F524F4(&qword_27CF9E558, MEMORY[0x277CC9688]);
  OUTLINED_FUNCTION_48_3();
  OUTLINED_FUNCTION_60_3();
  v41 = sub_220FC26B0();
  v42 = *(v39 + 8);
  v43 = OUTLINED_FUNCTION_109();
  v42(v43);
  if (v41 & 1) != 0 || (sub_220FC0320(), OUTLINED_FUNCTION_9(), v44 = sub_220FC26B0(), v45 = OUTLINED_FUNCTION_63_0(), v42(v45), (v44))
  {
    (v42)(v0[22], v0[19]);
    v46 = &selRef_miles;
  }

  else
  {
    v52 = v0[21];
    v53 = v0[19];
    sub_220FC0340();
    OUTLINED_FUNCTION_48_3();
    v54 = sub_220FC26B0();
    (v42)(v52, v53);
    v55 = OUTLINED_FUNCTION_9();
    v42(v55);
    if (v54)
    {
      v46 = &selRef_kilometers;
    }

    else
    {
      v46 = &selRef_meters;
    }
  }

  v56 = v0[18];
  v88 = v0[17];
  v57 = v0[15];
  v58 = v0[14];
  v83 = v0[13];
  v85 = v0[16];
  v60 = v0[11];
  v59 = v0[12];
  v61 = v0[9];
  v82 = v0[10];
  v90 = v0[7];
  v62 = [objc_opt_self() *v46];
  sub_220E1966C(0, &qword_27CF9E560);
  sub_220FBFC70();
  sub_220FBFCC0();
  sub_220FC0020();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E568);
  OUTLINED_FUNCTION_42();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  sub_220FBFC10();
  sub_220E3B2DC(v61, &qword_27CF9E530);
  (*(v60 + 8))(v59, v82);
  (*(v58 + 8))(v57, v83);
  sub_220E453D4(&qword_27CF9E570, &qword_27CF9E548);
  sub_220FBFCF0();
  (*(v88 + 8))(v56, v85);
  v87 = v0[6];
  v89 = v0[5];
  sub_220FC0FE0();
  [v90 coordinate];
  v67 = OUTLINED_FUNCTION_62_1();
  v68 = MEMORY[0x223D9D350](v67);
  sub_220F4F864(v68);
  v70 = v69;
  if (qword_2812C5B30 != -1)
  {
    OUTLINED_FUNCTION_1_0();
  }

  v71 = v0[37];
  v91 = v0[38];
  v92 = v0[41];
  v72 = v0[27];
  v84 = v0[28];
  v86 = v0[36];
  v73 = v0[26];
  v74 = qword_2812CE4B0;
  OUTLINED_FUNCTION_25_7();
  sub_220FBFF80();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9EBD0);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_220FC9EF0;
  v76 = MEMORY[0x277D837D0];
  *(v75 + 56) = MEMORY[0x277D837D0];
  v77 = sub_220E69720();
  *(v75 + 64) = v77;
  *(v75 + 32) = v89;
  *(v75 + 40) = v87;
  v78 = sub_220F4F910(v70);
  *(v75 + 96) = v76;
  *(v75 + 104) = v77;
  *(v75 + 72) = v78;
  *(v75 + 80) = v79;
  *(v75 + 136) = v76;
  *(v75 + 144) = v77;
  *(v75 + 112) = v93;
  *(v75 + 120) = v95;
  v80 = sub_220FC26D0();
  v94 = v81;
  v96 = v80;

  (*(v72 + 8))(v84, v73);
  (*(v71 + 8))(v91, v86);
  sub_220E3B2DC(v92, &unk_27CF9D6D0);
LABEL_16:

  v48 = v0[1];

  return v48(v96, v94);
}

uint64_t sub_220F4DD60(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_220F4DD80, 0, 0);
}

uint64_t sub_220F4DD80()
{
  OUTLINED_FUNCTION_19();
  swift_weakInit();
  sub_220FC2AB0();
  *(v0 + 40) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4DE04()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 24);

  sub_220F4DEB0(v0 + 16, v1);
  swift_weakDestroy();
  v2 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_220F4DEB0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = sub_220F524F4(&qword_2812C9640, type metadata accessor for WeatherMapOverlaySonifier);
      v8 = *(v5 + 32);

      v8(v9, v7, a2, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_220F4DFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = swift_task_alloc();
  *(v5 + 16) = v8;
  *v8 = v5;
  v8[1] = sub_220E5B0F0;

  return sub_220F4DD60(a5, a4);
}

void sub_220F4E060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_48_2();
  a17 = v19;
  a18 = v20;
  v21 = v18;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v22);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v23, v24);
  v26 = &a9 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v28, v29);
  OUTLINED_FUNCTION_81_0();
  if (qword_27CF9C008 != -1)
  {
    OUTLINED_FUNCTION_2_26();
  }

  v30 = __swift_project_value_buffer(v27, qword_27CF9CBF8);
  sub_220ECC944(v30, v18, &qword_27CF9CF70);
  v31 = sub_220FC17A0();
  v32 = OUTLINED_FUNCTION_49();
  if (__swift_getEnumTagSinglePayload(v32, v33, v31) == 1)
  {
    sub_220E3B2DC(v18, &qword_27CF9CF70);
  }

  else
  {
    v34 = sub_220FC1780();
    v35 = sub_220FC2E30();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = OUTLINED_FUNCTION_20_0();
      *v36 = 0;
      _os_log_impl(&dword_220E15000, v34, v35, "Sonifier hover timer fired.", v36, 2u);
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_12();
    (*(v37 + 8))(v18, v31);
  }

  v38 = sub_220FC2AE0();
  OUTLINED_FUNCTION_38_9(v38);
  sub_220FC2AB0();
  OUTLINED_FUNCTION_60_2();

  v39 = sub_220FC2AA0();
  OUTLINED_FUNCTION_69();
  v40 = swift_allocObject();
  v41 = MEMORY[0x277D85700];
  v40[2] = v39;
  v40[3] = v41;
  v40[4] = v21;
  v42 = OUTLINED_FUNCTION_3_22();
  sub_220F9BB1C(v42, v43, v26, v44, v45);

  OUTLINED_FUNCTION_35_4();
}

uint64_t sub_220F4E28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = sub_220FC2AB0();
  v4[4] = sub_220FC2AA0();

  return MEMORY[0x2822009F8](sub_220F4E30C, a4, 0);
}

uint64_t sub_220F4E30C()
{
  OUTLINED_FUNCTION_32();
  sub_220F48624();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v0 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v0, v1, v2);
}

void sub_220F4E3D8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v3, v4);
  OUTLINED_FUNCTION_45_3();
  v5 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_isTrackingGesture;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_isTrackingGesture) == 1)
  {
    sub_220F48048();
    sub_220F48560();
    v6 = v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_gestureStart;
    *v6 = 0;
    *(v6 + 8) = 0;
    *(v6 + 16) = 1;
    *(v1 + v5) = 0;
    sub_220FC2AE0();
    v7 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    OUTLINED_FUNCTION_0_70();
    v13 = sub_220F524F4(v11, v12);
    OUTLINED_FUNCTION_69();
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    OUTLINED_FUNCTION_132();
    v15 = OUTLINED_FUNCTION_3_22();
    sub_220F9BB1C(v15, v16, v0, v17, v14);
  }
}

uint64_t sub_220F4E514()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 24) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4E58C()
{
  OUTLINED_FUNCTION_19();

  sub_220F4E95C();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

void sub_220F4E5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v10);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v33 - v13;
  if ((a1 - 3) >= 3)
  {
    if ((a1 - 1) < 2)
    {
      v16 = OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_isTrackingGesture;
      if ((*(v5 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_isTrackingGesture) & 1) == 0)
      {
        sub_220FC2AE0();
        OUTLINED_FUNCTION_42();
        __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
        OUTLINED_FUNCTION_0_70();
        v23 = sub_220F524F4(v21, v22);
        OUTLINED_FUNCTION_69();
        v24 = swift_allocObject();
        v24[2] = v5;
        v24[3] = v23;
        v24[4] = v5;
        OUTLINED_FUNCTION_132();
        v25 = OUTLINED_FUNCTION_3_22();
        sub_220F9BB1C(v25, v26, v14, v27, v24);

        sub_220F47C44();
        sub_220F48560();
        *(v5 + v16) = 1;
      }

      if (a5)
      {
        sub_220F4832C();
        sub_220F48560();
      }

      else
      {
        v28 = v5 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_gestureStart;
        if (*(v5 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_gestureStart + 16) == 1)
        {
          *v28 = a3;
          *(v28 + 8) = a4;
          *(v28 + 16) = 0;
        }

        v29 = OUTLINED_FUNCTION_62_1();
        sub_220F480A0(v29, v30);
        v31 = OUTLINED_FUNCTION_62_1();
        sub_220F48518(v31, v32);
      }
    }

    OUTLINED_FUNCTION_67();
  }

  else
  {
    OUTLINED_FUNCTION_67();

    sub_220F4E3D8();
  }
}

uint64_t sub_220F4E7C4()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 24) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F4E83C()
{
  OUTLINED_FUNCTION_19();

  sub_220F4E898();
  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F4E898()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    OUTLINED_FUNCTION_0_70();
    sub_220F524F4(v1, v2);
    OUTLINED_FUNCTION_10();
    v3();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_220F4E95C()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = *(v1 + 8);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_70();
    v7 = sub_220F524F4(v5, v6);
    (*(v3 + 64))(v0, v7, ObjectType, v3);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_220F4EA18(void *a1)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  OUTLINED_FUNCTION_8_0(v5);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6, v7);
  OUTLINED_FUNCTION_45_3();
  if (*(v2 + 121) == 1)
  {
    v8 = [a1 view];
    if (v8)
    {
      v9 = v8;
      v10 = [a1 state];
      v11 = v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v12 = *(v11 + 8);
        ObjectType = swift_getObjectType();
        OUTLINED_FUNCTION_0_70();
        v16 = sub_220F524F4(v14, v15);
        [a1 locationInView_];
        v17 = (*(v12 + 8))(v3, v16, v9, ObjectType, v12);
        v19 = v18;
        v21 = v20;
        swift_unknownObjectRelease();
      }

      else
      {
        v17 = 0;
        v19 = 0;
        v21 = 1;
      }

      v22 = [a1 modifierFlags];
      sub_220FC2AE0();
      v23 = OUTLINED_FUNCTION_32_9();
      __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
      v27 = swift_allocObject();
      *(v27 + 16) = 0;
      *(v27 + 24) = 0;
      *(v27 + 32) = v3;
      *(v27 + 40) = v10;
      *(v27 + 48) = (v22 & 0x80000) != 0;
      *(v27 + 56) = v17;
      *(v27 + 64) = v19;
      *(v27 + 72) = v21 & 1;

      OUTLINED_FUNCTION_3_22();
      sub_220F44E64();

      sub_220E3B2DC(v1, &unk_27CF9EB90);
    }
  }
}

uint64_t sub_220F4EC3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 49) = v10;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 48) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x2822009F8](sub_220F4EC70, a4, 0);
}

uint64_t sub_220F4EC70()
{
  OUTLINED_FUNCTION_19();
  sub_220F4E5E8(*(v0 + 24), 0, *(v0 + 32), *(v0 + 40), *(v0 + 49) & 1);
  OUTLINED_FUNCTION_32_0();

  return v1();
}

uint64_t sub_220F4ED28()
{
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_selectedDate, &qword_27CF9EBC0);
  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate);
  sub_220E3B2DC(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_frames, &qword_27CF9D090);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_geocodeManager);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_locationMetadataManager);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_appConfigurationManager);
  OUTLINED_FUNCTION_10_22();
  sub_220F522E8();
  sub_220ECC534(*(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState), *(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 8), *(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 16), *(v0 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_hoverState + 24));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_220F4EE00()
{
  sub_220F4ED28();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for WeatherMapOverlaySonifier()
{
  result = qword_2812C9630;
  if (!qword_2812C9630)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_220F4EE80()
{
  sub_220F4F040(319, &qword_2812CA280, MEMORY[0x277CC9578]);
  if (v0 <= 0x3F)
  {
    sub_220F4F040(319, qword_2812C6C78, type metadata accessor for SonifierDataState.OverlayFrames);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SonifierDataState(319);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_220F4F040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_220FC33A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_11WeatherMaps0A18MapOverlaySonifierC10HoverState33_F175DBBBB6030EB96FF2639763F08211LLO(uint64_t a1)
{
  if ((*(a1 + 24) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

uint64_t sub_220F4F0D0(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_220F4F124()
{
  type metadata accessor for WeatherMapOverlaySonifier();

  return sub_220FC0A00();
}

uint64_t sub_220F4F17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = type metadata accessor for WeatherMapOverlaySonifier();

  return MEMORY[0x2821D2860](a1, a2, v9, a6);
}

uint64_t sub_220F4F1E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = type metadata accessor for WeatherMapOverlaySonifier();

  return MEMORY[0x2821D2870](a1, a2, a3, v11, a7);
}

uint64_t sub_220F4F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = type metadata accessor for WeatherMapOverlaySonifier();

  return MEMORY[0x2821D2858](a1, a2, a3, a4, v13, a8);
}

uint64_t sub_220F4F2D4(uint64_t a1)
{
  result = sub_220F524F4(&qword_2812C9648, type metadata accessor for WeatherMapOverlaySonifier);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_220F4F32C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_24(v2);

  return sub_220F4653C(v4, v5, v6, v0);
}

uint64_t sub_220F4F3BC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v21 - v13;
  v15 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v15);
  (*(v7 + 16))(v10, a1, v6);
  v16 = sub_220F524F4(&qword_2812C9648, type metadata accessor for WeatherMapOverlaySonifier);
  v17 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a2;
  *(v18 + 3) = v16;
  *(v18 + 4) = a2;
  *(v18 + 5) = a3;
  (*(v7 + 32))(&v18[v17], v10, v6);
  swift_retain_n();
  v19 = a3;
  sub_220F9BB1C(0, 0, v14, &unk_220FD5B60, v18);
}

uint64_t sub_220F4F5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D6D0);
  v6[5] = swift_task_alloc();
  v6[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F4F67C, 0, 0);
}

uint64_t sub_220F4F67C()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 56) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

void sub_220F4F6F4()
{
  OUTLINED_FUNCTION_25();
  v1 = v0[2];

  v2 = v1 + OBJC_IVAR____TtC11WeatherMaps25WeatherMapOverlaySonifier_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = v0[2];
    v3 = v0[3];
    v5 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    OUTLINED_FUNCTION_0_70();
    v9 = sub_220F524F4(v7, v8);
    (*(v5 + 24))(v4, v9, v3, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_220FC1070();
    OUTLINED_FUNCTION_42();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  }

  v14 = v0[6];
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_60_3();
  sub_220ECC944(v15, v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  sub_220FC2A50();
  sub_220E3B2DC(v14, &unk_27CF9D6D0);

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_137();

  __asm { BRAA            X1, X16 }
}

void sub_220F4F864(double a1)
{
  if (a1 < 0.0)
  {
    a1 = a1 + 360.0;
  }

  v1 = fmod(a1 + 11.25, 360.0) / 22.5;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v1 > 0xF)
  {
LABEL_13:
    __break(1u);
  }
}

uint64_t sub_220F4F910(char a1)
{
  switch(a1)
  {
    case 1:
      if (qword_2812C5B30 != -1)
      {
        goto LABEL_44;
      }

      goto LABEL_24;
    case 2:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_5;
      }

      goto LABEL_36;
    case 3:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 4:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    case 5:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_26;
      }

LABEL_45:
      OUTLINED_FUNCTION_1_0();
LABEL_26:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      goto LABEL_35;
    case 6:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_47;
    case 7:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 8:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_48;
    case 9:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_34;
      }

LABEL_48:
      OUTLINED_FUNCTION_1_0();
LABEL_34:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_43_1();
      goto LABEL_35;
    case 10:
      if (qword_2812C5B30 != -1)
      {
LABEL_47:
        OUTLINED_FUNCTION_1_0();
      }

LABEL_32:
      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_43_1();
      goto LABEL_35;
    case 11:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_46;
    case 12:
      if (qword_2812C5B30 != -1)
      {
        OUTLINED_FUNCTION_1_0();
      }

      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      goto LABEL_35;
    case 13:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_28;
      }

LABEL_46:
      OUTLINED_FUNCTION_1_0();
LABEL_28:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_84();
      goto LABEL_35;
    case 14:
      if (qword_2812C5B30 != -1)
      {
LABEL_36:
        OUTLINED_FUNCTION_1_0();
      }

LABEL_5:
      v1 = OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_26_6();
      goto LABEL_35;
    case 15:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_24;
      }

      goto LABEL_44;
    default:
      if (qword_2812C5B30 == -1)
      {
        goto LABEL_24;
      }

LABEL_44:
      OUTLINED_FUNCTION_1_0();
LABEL_24:
      OUTLINED_FUNCTION_55_2(qword_2812CE4B0);
      OUTLINED_FUNCTION_11_1();
      OUTLINED_FUNCTION_26_6();
LABEL_35:
      OUTLINED_FUNCTION_25_7();
      sub_220FBFF80();

      return OUTLINED_FUNCTION_96();
  }
}

uint64_t sub_220F4FE10(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v24 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v23[-v15];
  v17 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v9 + 16))(v12, a1, v8);
  v18 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = a2;
  *(v19 + 40) = v24 & 1;
  v20 = v25;
  *(v19 + 48) = v25;
  *(v19 + 56) = a5;
  (*(v9 + 32))(v19 + v18, v12, v8);

  sub_220F44E64();

  sub_220E3B2DC(v16, &unk_27CF9EB90);
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v20;
  v21[5] = a5;

  sub_220F9BB1C(0, 0, v16, &unk_220FD5AA0, v21);
}

uint64_t sub_220F50088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a4;
  *(v8 + 32) = a6;
  *(v8 + 72) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x2822009F8](sub_220F500B4, 0, 0);
}

uint64_t sub_220F500B4()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 72);
  v3 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v3;
  *(v4 + 24) = v1 & 1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v5;
  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  *(v0 + 64) = v6;
  *v6 = v7;
  v6[1] = sub_220ECA79C;
  v8 = *(v0 + 16);

  return MEMORY[0x282200600](v8);
}

uint64_t sub_220F501BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 24) = a3;
  *(v7 + 32) = a5;
  *(v7 + 97) = a4;
  *(v7 + 16) = a2;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  *(v7 + 64) = swift_task_alloc();
  *(v7 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F502AC, 0, 0);
}

uint64_t sub_220F502AC()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  if ((*(v0 + 97) & 1) == 0)
  {
    v1 = *(v0 + 80);
    v2 = *(v0 + 24);
    sub_220FC2AE0();
    v3 = OUTLINED_FUNCTION_32_9();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
    OUTLINED_FUNCTION_69();
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v2;
    sub_220F4510C();
    sub_220E3B2DC(v1, &unk_27CF9EB90);
  }

  v8 = *(v0 + 80);
  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  sub_220FC2AE0();
  v11 = OUTLINED_FUNCTION_32_9();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v10;
  v15[5] = v9;

  sub_220F4510C();
  sub_220E3B2DC(v8, &unk_27CF9EB90);
  v16 = swift_task_alloc();
  *(v0 + 88) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E510);
  *v16 = v0;
  v16[1] = sub_220F5045C;
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_61_0();

  return MEMORY[0x2822002D0](v17, v18, v19, v20, v21, v22, v23, v24);
}

uint64_t sub_220F5045C()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v1 = *v0;
  OUTLINED_FUNCTION_8();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_10_5();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_220F50540(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v12 = *(v10 + 96);
  if (v12 != 2)
  {
    if (v12)
    {
      if (qword_27CF9C008 != -1)
      {
        OUTLINED_FUNCTION_2_26();
      }

      v13 = *(v10 + 72);
      v14 = __swift_project_value_buffer(*(v10 + 56), qword_27CF9CBF8);
      sub_220ECC944(v14, v13, &qword_27CF9CF70);
      v15 = sub_220FC17A0();
      v16 = OUTLINED_FUNCTION_49();
      if (__swift_getEnumTagSinglePayload(v16, v17, v15) == 1)
      {
        sub_220E3B2DC(*(v10 + 72), &qword_27CF9CF70);
      }

      else
      {

        v23 = sub_220FC1780();
        sub_220FC2E30();

        if (OUTLINED_FUNCTION_112())
        {
          swift_slowAlloc();
          a9 = OUTLINED_FUNCTION_73_0();
          OUTLINED_FUNCTION_16_6(7.2225e-34);
          v24 = OUTLINED_FUNCTION_50_0();
          *(v11 + 14) = sub_220E20FF8(v24, v25, v26);
          OUTLINED_FUNCTION_72_1();
          _os_log_impl(v27, v28, v29, v30, v11, 0x16u);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_15();
        }

        OUTLINED_FUNCTION_14_8();
        (*(v31 + 8))();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
      sub_220FC2A50();
    }

    else
    {
      if (qword_27CF9C008 != -1)
      {
        OUTLINED_FUNCTION_2_26();
      }

      v18 = *(v10 + 64);
      v19 = __swift_project_value_buffer(*(v10 + 56), qword_27CF9CBF8);
      sub_220ECC944(v19, v18, &qword_27CF9CF70);
      v20 = sub_220FC17A0();
      v21 = OUTLINED_FUNCTION_49();
      if (__swift_getEnumTagSinglePayload(v21, v22, v20) == 1)
      {
        sub_220E3B2DC(*(v10 + 64), &qword_27CF9CF70);
      }

      else
      {

        v32 = sub_220FC1780();
        sub_220FC2E30();

        if (OUTLINED_FUNCTION_112())
        {
          swift_slowAlloc();
          a9 = OUTLINED_FUNCTION_73_0();
          OUTLINED_FUNCTION_16_6(7.2225e-34);
          v33 = OUTLINED_FUNCTION_50_0();
          *(v11 + 14) = sub_220E20FF8(v33, v34, v35);
          OUTLINED_FUNCTION_72_1();
          _os_log_impl(v36, v37, v38, v39, v11, 0x16u);
          OUTLINED_FUNCTION_80_0();
          OUTLINED_FUNCTION_15();
        }

        OUTLINED_FUNCTION_14_8();
        (*(v40 + 8))();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
      sub_220FC2A50();
      sub_220FC2A80();
    }
  }

  OUTLINED_FUNCTION_32_0();
  OUTLINED_FUNCTION_40_0();

  return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10);
}

uint64_t sub_220F5089C(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_220FC36E0();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F50960, 0, 0);
}

void sub_220F50960()
{
  v2 = *(v0 + 24) * 1000.0;
  if (COERCE__INT64(fabs(v2)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_32();
  sub_220F450D8(v3);
  sub_220FC39C0();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_220ECB174;
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_10();

  sub_220F510BC();
}

uint64_t sub_220F50A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E518);
  v5[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_220F50B20, 0, 0);
}

uint64_t sub_220F50B20()
{
  OUTLINED_FUNCTION_32();
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_220FC3080();
  v0[6] = v2;

  swift_task_alloc();
  OUTLINED_FUNCTION_18();
  v0[7] = v3;
  *v3 = v4;
  v3[1] = sub_220ECB538;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[3];

  return sub_220F452D8(v5, v2, v7, v6);
}

uint64_t sub_220F50C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_220F50C48, 0, 0);
}

uint64_t sub_220F50C48()
{
  OUTLINED_FUNCTION_19();
  sub_220FC2AB0();
  *(v0 + 40) = OUTLINED_FUNCTION_66_0();
  OUTLINED_FUNCTION_60_2();
  sub_220FC2A30();
  OUTLINED_FUNCTION_33_5();
  v1 = OUTLINED_FUNCTION_9_11();

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_220F50CC0()
{
  OUTLINED_FUNCTION_32();

  v0 = OUTLINED_FUNCTION_9();
  sub_220F50D60(v0, v1);
  OUTLINED_FUNCTION_32_0();

  return v2();
}

void sub_220F50D60(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v16 - v6;
  if (qword_27CF9C008 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_27CF9CBF8);
  sub_220ECC944(v8, v7, &qword_27CF9CF70);
  v9 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_220E3B2DC(v7, &qword_27CF9CF70);
  }

  else
  {

    v10 = sub_220FC1780();
    v11 = sub_220FC2E30();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 141558275;
      *(v12 + 4) = 1752392040;
      *(v12 + 12) = 2081;
      *(v12 + 14) = sub_220E20FF8(a1, a2, &v17);
      _os_log_impl(&dword_220E15000, v10, v11, "Posting accessibility announcement %{private,mask.hash}s", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223D9DDF0](v13, -1, -1);
      MEMORY[0x223D9DDF0](v12, -1, -1);
    }

    (*(*(v9 - 8) + 8))(v7, v9);
  }

  v14 = *MEMORY[0x277D76438];
  v15 = sub_220FC26C0();
  UIAccessibilityPostNotification(v14, v15);
}

uint64_t sub_220F50FD0()
{
  OUTLINED_FUNCTION_32();
  v1 = v0;
  v7 = (v2 + *v2);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_43(v3);
  *v4 = v5;
  v4[1] = sub_220F409EC;

  return v7(v1);
}

uint64_t sub_220F510BC()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_220FC36D0();
  *(v1 + 64) = v12;
  OUTLINED_FUNCTION_29(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = swift_task_alloc();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_137();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_220F511A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v11 = v10[9];
  sub_220FC36E0();
  OUTLINED_FUNCTION_65_3();
  sub_220F524F4(v12, v13);
  OUTLINED_FUNCTION_63_0();
  sub_220FC39A0();
  OUTLINED_FUNCTION_64_4();
  sub_220F524F4(v14, v15);
  sub_220FC36F0();
  v10[12] = *(v11 + 8);
  v10[13] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16 = OUTLINED_FUNCTION_93();
  v17(v16);
  v18 = swift_task_alloc();
  v10[14] = v18;
  *v18 = v10;
  v18[1] = sub_220F512F8;
  OUTLINED_FUNCTION_40_0();

  return MEMORY[0x2822008C8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_220F512F8()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_27_0();
  v3 = v2;
  OUTLINED_FUNCTION_17();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_8();
  *v8 = v7;
  *(v3 + 120) = v0;

  v9 = OUTLINED_FUNCTION_109();
  v6(v9);
  if (!v0)
  {

    OUTLINED_FUNCTION_32_0();
    OUTLINED_FUNCTION_137();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_137();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_220F5148C()
{
  OUTLINED_FUNCTION_19();

  OUTLINED_FUNCTION_32_0();

  return v0();
}

uint64_t sub_220F514F0()
{
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 64);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;
  v9 = OUTLINED_FUNCTION_58();

  return sub_220F4EC3C(v9, v10, v11, v1, v2, v3, v4, v5);
}

uint64_t sub_220F515C8()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  v3 = OUTLINED_FUNCTION_16_8();

  return v4(v3);
}

uint64_t sub_220F5166C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_24(v2);

  return sub_220F4E7A4(v4, v5, v6, v0);
}

uint64_t sub_220F516FC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_24(v2);

  return sub_220F4E4F4(v4, v5, v6, v0);
}

uint64_t sub_220F5178C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_24(v2);

  return sub_220F4E28C(v4, v5, v6, v0);
}

uint64_t sub_220F5181C()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  v7 = OUTLINED_FUNCTION_62_1();

  return sub_220F487D8(v7, v8, v3, v4, v5, v6);
}

uint64_t sub_220F518E0()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_57_2();
  v0 = sub_220FC02B0();
  OUTLINED_FUNCTION_8_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_137();

  return sub_220F4DFC4(v4, v5, v6, v7, v8);
}

uint64_t sub_220F519C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E508);
  OUTLINED_FUNCTION_8_0(v1);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_43(v6);
  *v7 = v8;
  v7[1] = sub_220E5B490;
  v9 = OUTLINED_FUNCTION_58();

  return sub_220F50088(v9, v10, v11, v2, v3, v4, v5, v12);
}

uint64_t sub_220F51AD4()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  OUTLINED_FUNCTION_61_0();

  return sub_220F50C24(v3, v4, v5, v6, v7);
}

uint64_t sub_220F51B6C()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B490;
  OUTLINED_FUNCTION_40_0();

  return sub_220F501BC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_220F51C2C()
{
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_3_24(v1);
  OUTLINED_FUNCTION_61_0();

  return sub_220F50A80(v3, v4, v5, v6, v7);
}

uint64_t sub_220F51CC4()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_32_4();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_3_24(v3);

  return sub_220F5089C(v5, v1);
}

uint64_t sub_220F51D60(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_220F51E54;

  return v5(v2 + 32);
}

uint64_t sub_220F51E54()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_27_0();
  v2 = v1;
  OUTLINED_FUNCTION_17();
  *v3 = v2;
  v5 = *(v4 + 16);
  v6 = *v0;
  OUTLINED_FUNCTION_8();
  *v7 = v6;

  *v5 = *(v2 + 32);
  OUTLINED_FUNCTION_32_0();

  return v8();
}

uint64_t sub_220F51F50()
{
  OUTLINED_FUNCTION_32();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43(v0);
  *v1 = v2;
  v1[1] = sub_220E5B0F0;
  v3 = OUTLINED_FUNCTION_16_8();

  return v4(v3);
}

uint64_t sub_220F51FFC()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_35();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E578);
  OUTLINED_FUNCTION_8_0(v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_40_0();

  return sub_220F4F5D0(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_220F520E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E580);
  OUTLINED_FUNCTION_8_0(v2);
  return sub_220F4CCE8(a1);
}

uint64_t sub_220F52164()
{
  OUTLINED_FUNCTION_35();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9E588);
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_79();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_220E5B490;
  OUTLINED_FUNCTION_60_3();
  v8 = OUTLINED_FUNCTION_62_1();

  return sub_220F4C78C(v8, v9, v3, v4, v5, v6, v7);
}

uint64_t sub_220F5228C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220F522E8()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_220F5233C()
{
  OUTLINED_FUNCTION_25();
  v0 = OUTLINED_FUNCTION_57_2();
  v1 = type metadata accessor for SonifierDataState(v0);
  OUTLINED_FUNCTION_29(v1);
  OUTLINED_FUNCTION_79();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43(v2);
  *v3 = v4;
  v3[1] = sub_220E5B490;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_137();

  return sub_220F47840(v5, v6, v7, v8, v9);
}

uint64_t sub_220F52428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D090);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F52498(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220F524F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  v0 = OUTLINED_FUNCTION_0_30();

  return MEMORY[0x2821FE8E8](v0, v1, 7);
}

uint64_t sub_220F52584()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_6_17();
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_43(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_3_24(v2);

  return sub_220F45A34(v4, v5, v6, v0);
}

void *OUTLINED_FUNCTION_36_8(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_38_9(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_58_3(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void OUTLINED_FUNCTION_80_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x223D9DDF0);
}

void OUTLINED_FUNCTION_89_0()
{
  v2 = *(v0 + 592);
}

BOOL OUTLINED_FUNCTION_112()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_132()
{

  return swift_retain_n();
}

uint64_t sub_220F52A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = sub_220E1E2A8(v4 + 16, v82);
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      OUTLINED_FUNCTION_7_24();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v18, v19, v20, v21, v22, v23, v24, v25, v72);
      OUTLINED_FUNCTION_15_11();
      v26 = &unk_220FD5CA8;
      break;
    case 3:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      OUTLINED_FUNCTION_7_24();
      v51 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v51, v52, v53, v54, v55, v56, v57, v58, v76);
      OUTLINED_FUNCTION_15_11();
      v26 = &unk_220FD5C98;
      break;
    case 4:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      OUTLINED_FUNCTION_7_24();
      v35 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v35, v36, v37, v38, v39, v40, v41, v42, v74);
      OUTLINED_FUNCTION_15_11();
      v26 = &unk_220FD5C88;
      break;
    case 5:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      v43 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v43, v44, v45, v46, v47, v48, v49, v50, v75);
      v26 = &unk_220FD5C78;
      break;
    case 6:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      OUTLINED_FUNCTION_7_24();
      v27 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v27, v28, v29, v30, v31, v32, v33, v34, v73);
      OUTLINED_FUNCTION_15_11();
      v26 = &unk_220FD5C68;
      break;
    default:
      OUTLINED_FUNCTION_10_23(v10, v11, v12, v13, v14, v15, v16, v17, v71, v78, v79, v80, v81, v82[0]);
      v59 = swift_allocObject();
      OUTLINED_FUNCTION_5_31(v59, v60, v61, v62, v63, v64, v65, v66, v77);
      v5[7] = a1;
      v5[8] = a2;
      v5[9] = a3;

      v26 = &unk_220FD5CB8;
      break;
  }

  v67 = v26;
  v68 = type metadata accessor for OverlayTileLoader();
  v69 = swift_allocObject();
  v69[2] = a1;
  v69[3] = a2;
  v69[4] = v67;
  v69[5] = v5;
  a4[3] = v68;
  a4[4] = &off_28347D778;
  *a4 = v69;
  sub_220EE8D08(a1, a2);
  sub_220EE8D08(a1, a2);
  return __swift_destroy_boxed_opaque_existential_0(v82);
}

uint64_t sub_220F52C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 56) = a9;
  *(v9 + 64) = v11;
  *(v9 + 40) = a7;
  *(v9 + 48) = a8;
  *(v9 + 88) = a5;
  *(v9 + 24) = a2;
  *(v9 + 32) = a3;
  *(v9 + 16) = a1;
  *(v9 + 72) = *a4;
  *(v9 + 92) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F52C98, 0, 0);
}

uint64_t sub_220F52C98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  sub_220F7A894(v3, v1, v6, v5, v4, v2);
  OUTLINED_FUNCTION_3_40();

  return v7();
}

uint64_t sub_220F52D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 80) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 64) = *a4;
  *(v8 + 84) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F52DA4, 0, 0);
}

uint64_t sub_220F52DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_4_40();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = OUTLINED_FUNCTION_2_42();
  sub_220F7AA88(v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_40();
  OUTLINED_FUNCTION_11_19();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_220F52E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 80) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 64) = *a4;
  *(v8 + 84) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F52E5C, 0, 0);
}

uint64_t sub_220F52E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_53_0();
  if (qword_2812C7508 != -1)
  {
    swift_once();
  }

  v14 = sub_220E20F44();

  if (v14 & 1) != 0 || (, v15 = sub_220E1B804(), , (v15))
  {
    OUTLINED_FUNCTION_4_40();
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v18 = OUTLINED_FUNCTION_2_42();
    sub_220F7AAD0(v18, v19, v20, v21, v22);
  }

  else
  {
    OUTLINED_FUNCTION_4_40();
    __swift_project_boxed_opaque_existential_1(v23, v24);
    v25 = OUTLINED_FUNCTION_2_42();
    sub_220F7AAA0(v25, v26, v27, v28, v29);
  }

  OUTLINED_FUNCTION_3_40();
  OUTLINED_FUNCTION_11_19();

  return v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_220F52F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 72) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  *(v8 + 56) = *a4;
  *(v8 + 76) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F52FB0, 0, 0);
}

uint64_t sub_220F52FB0()
{
  OUTLINED_FUNCTION_53_0();
  v14 = v2;
  v4 = *(v2 + 76);
  v6 = *(v2 + 56);
  v5 = *(v2 + 64);
  v7 = *(v2 + 48);
  OUTLINED_FUNCTION_4_40();
  v12[0] = v6;
  v12[1] = v5;
  v13 = v4;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_220F7ABA0(v3, v1, v0, v7, v12);
  OUTLINED_FUNCTION_3_40();

  return v10();
}

uint64_t sub_220F53060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 64) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a7;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 48) = *a4;
  *(v7 + 68) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F53098, 0, 0);
}

uint64_t sub_220F53098()
{
  OUTLINED_FUNCTION_53_0();
  v11 = v0;
  v1 = *(v0 + 68);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);
  __swift_project_boxed_opaque_existential_1(*(v0 + 40), *(*(v0 + 40) + 24));
  v9[0] = v3;
  v9[1] = v2;
  v10 = v1;
  sub_220F7AA70(v6, v5, v4, MEMORY[0x277D84F90], v9);
  OUTLINED_FUNCTION_3_40();

  return v7();
}

uint64_t sub_220F53150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  *(v8 + 48) = a6;
  *(v8 + 56) = a7;
  *(v8 + 80) = a8;
  *(v8 + 32) = a3;
  *(v8 + 40) = a5;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 64) = *a4;
  *(v8 + 84) = *(a4 + 16);
  return MEMORY[0x2822009F8](sub_220F5318C, 0, 0);
}

uint64_t sub_220F5318C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_12_20();
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_4_40();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v16 = OUTLINED_FUNCTION_2_42();
  sub_220F7AAB8(v16, v17, v18, v19, v20);
  OUTLINED_FUNCTION_3_40();
  OUTLINED_FUNCTION_11_19();

  return v24(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_220F5322C()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_1_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_26(v0);
  *v1 = v2;
  v1[1] = sub_220F53738;
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_14_18();

  return sub_220F53150(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220F532C4()
{
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_1_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_26(v0);
  *v1 = v2;
  v1[1] = sub_220F53738;
  v9 = OUTLINED_FUNCTION_0_71();

  return sub_220F53060(v3, v4, v5, v6, v9, v7, v8);
}

uint64_t sub_220F53364()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_1_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_26(v0);
  *v1 = v2;
  v1[1] = sub_220F53738;
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_14_18();

  return sub_220F52F74(v3, v4, v5, v6, v10, v7, v8, v9);
}

uint64_t sub_220F533FC()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_1_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_26(v0);
  *v1 = v2;
  v1[1] = sub_220F53738;
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_14_18();

  return sub_220F52E20(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroyTm_2()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  OUTLINED_FUNCTION_7_24();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_220F534D0()
{
  OUTLINED_FUNCTION_13_19();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_1_60();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_6_26(v0);
  *v1 = v2;
  v1[1] = sub_220F53568;
  OUTLINED_FUNCTION_0_71();
  OUTLINED_FUNCTION_14_18();

  return sub_220F52D68(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_220F53568(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_220F53674()
{
  OUTLINED_FUNCTION_1_60();
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_6_26(v3);
  *v4 = v5;
  v4[1] = sub_220F53738;
  v12 = OUTLINED_FUNCTION_0_71();

  return sub_220F52C50(v6, v7, v8, v9, v12, v10, v11, v1, v2);
}

uint64_t OUTLINED_FUNCTION_15_11()
{
  *(v1 + 56) = v0;
}

uint64_t sub_220F5377C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 72);
  if (*(v3 + 16))
  {
    v4 = result;
    result = sub_220F19120(a2, a3);
    if (v5)
    {
      v6 = (*(v3 + 56) + 96 * result);
      memcpy(__dst, v6, sizeof(__dst));
      v7 = *v4;
      v8 = *(v4 + 8);
      v9 = *(v4 + 16);
      v10 = *(v4 + 56);
      v18 = *(v4 + 64);
      memcpy(&__src[7], v6, 0x60uLL);
      v11 = *(v4 + 24);
      v19 = *(v4 + 32);
      v13 = *(v4 + 88);
      v12 = *(v4 + 96);
      v20[0] = v7;
      *&v20[1] = v8;
      v20[2] = v9;
      *&v20[3] = vextq_s8(*(v4 + 40), *(v4 + 40), 8uLL);
      v20[5] = v10;
      LOBYTE(v20[6]) = v18;
      memcpy(&v20[6] + 1, __src, 0x67uLL);
      v20[19] = v11;
      LOBYTE(v20[20]) = v19;
      v20[21] = v13;
      v20[22] = v12;
      sub_220E21C3C(v20);
      swift_beginAccess();
      memcpy(v15, v20, sizeof(v15));
      sub_220E31B58(__dst, &v14);

      sub_220FC13F0();
    }
  }

  return result;
}

void *sub_220F538F4(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_220E6E944(__dst) == 1)
  {
    OUTLINED_FUNCTION_1_61(v4);
    OUTLINED_FUNCTION_1_61(__srca);
    sub_220F3D824(__srca);
    sub_220E21C60(v4, v7);
  }

  else
  {
    memcpy(__srca, __dst, 0x80uLL);
    sub_220F3D824(__srca);
  }

  memcpy(v7, __srca, sizeof(v7));
  v2 = sub_220F53BE0(__src, __srca);
  return OUTLINED_FUNCTION_0_72(v2, v7);
}

void *sub_220F539AC()
{
  swift_beginAccess();

  sub_220FC13E0();

  v0 = memcpy(__dst, __src, sizeof(__dst));
  return OUTLINED_FUNCTION_0_72(v0, __dst);
}

void *sub_220F53A24()
{
  OUTLINED_FUNCTION_1_61(__src);
  sub_220E21C60(__src, __dst);
  sub_220F30094();
  v0 = sub_220FC2600();
  memcpy(__dst, __src, sizeof(__dst));
  v5 = v0;
  v1 = sub_220F3D7FC(__dst);
  return OUTLINED_FUNCTION_0_72(v1, __dst);
}

void *sub_220F53AB4()
{
  memcpy(v4, (v0 + 16), 0xA1uLL);
  sub_220E21C98(v4, __dst);
  sub_220FC0EA0();
  sub_220F06C58();
  v1 = sub_220FC2600();
  memcpy(__dst, v4, 0xA1uLL);
  v6 = v1;
  v2 = sub_220F3D6EC(__dst);
  return OUTLINED_FUNCTION_0_72(v2, __dst);
}

uint64_t sub_220F53B54()
{
  memcpy(__dst, (v0 + 16), 0xA1uLL);
  sub_220EC03FC(__dst);
  OUTLINED_FUNCTION_1_61(v3);
  sub_220F3D7A8(v3);

  return v0;
}

uint64_t sub_220F53BAC()
{
  sub_220F53B54();

  return MEMORY[0x2821FE8D8](v0, 320, 7);
}

uint64_t sub_220F53BE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D3B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220F53C50()
{
  v1 = v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___stepHeight;
  if (*(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___stepHeight + 8))
  {
    v2 = sub_220F53D3C();
    v3 = *&v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_stepHeight];

    *v1 = v3 + 8.0;
    *(v1 + 8) = 0;
  }
}

double sub_220F53CB8(double a1, double a2)
{
  v3 = a1 + -6.0 + -4.0;
  v4 = sub_220F53D3C();
  [*&v4[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_label] sizeThatFits_];
  v6 = v5;

  return v6 + 6.0 + 4.0;
}

id sub_220F53D3C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label);
  }

  else
  {
    v4 = v0;
    v5 = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 16);
    v12[0] = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point);
    v12[1] = v5;
    v12[2] = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 32);
    v13 = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 48);
    v14 = v12[0];
    v15 = v5;
    v6 = *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_backgroundEffectManager);
    objc_allocWithZone(type metadata accessor for MapScaleLabelView());
    sub_220F54538(&v14, v11);
    sub_220F30FE8(&v15, v11);

    v7 = sub_220F7C804(v12, v6);
    v8 = *(v4 + v1);
    *(v4 + v1) = v7;
    v3 = v7;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

id sub_220F53E18()
{
  v1 = v0;
  v2 = sub_220F53D3C();
  v3 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 24];
  v4 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 32];
  v5 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 40];
  v6 = v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 48];
  v7 = &v2[OBJC_IVAR____TtC11WeatherMaps17MapScaleLabelView_point];
  v8 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point + 8];
  *v7 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point];
  *(v7 + 8) = v8;
  *(v7 + 3) = v3;
  *(v7 + 4) = v4;
  *(v7 + 5) = v5;
  v7[48] = v6;

  sub_220F7C424();

  v9 = *&v1[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorView];
  sub_220E31740();

  swift_bridgeObjectRetain_n();
  v10 = sub_220FC3220();
  v11 = sub_220FC3210();

  [v9 setBackgroundColor_];

  return [v1 setNeedsLayout];
}

id sub_220F53F64(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorView;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label] = 0;
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_minimumHeight] = 0x4034000000000000;
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorWidth] = 0x4010000000000000;
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorLabelSpacing] = 0x4018000000000000;
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_stepPadding] = 0x4020000000000000;
  v7 = &v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___stepHeight];
  *v7 = 0;
  v7[8] = 1;
  v8 = &v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_point];
  v8[48] = *(a1 + 48);
  v9 = *(a1 + 32);
  *(v8 + 1) = *(a1 + 16);
  *(v8 + 2) = v9;
  *v8 = *a1;
  *&v2[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_backgroundEffectManager] = a2;
  v12.receiver = v2;
  v12.super_class = ObjectType;

  v10 = objc_msgSendSuper2(&v12, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_220F540B0();

  return v10;
}

id sub_220F540B0()
{
  v1 = sub_220F53D3C();
  [v0 addSubview_];

  v2 = *&v0[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorView];
  [v2 _setCornerRadius_];
  [v0 addSubview_];

  return sub_220F53E18();
}

void sub_220F54134()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label) = 0;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_minimumHeight) = 0x4034000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorWidth) = 0x4010000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorLabelSpacing) = 0x4018000000000000;
  *(v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_stepPadding) = 0x4020000000000000;
  v2 = v0 + OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___stepHeight;
  *v2 = 0;
  *(v2 + 8) = 1;
  sub_220FC3740();
  __break(1u);
}

void sub_220F5428C()
{
  v10.receiver = v0;
  v10.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v10, sel_layoutSubviews);
  if ([v0 effectiveUserInterfaceLayoutDirection] == 1)
  {
    OUTLINED_FUNCTION_1_1();
    v2 = v1 + -4.0 + 2.0;
    v3 = 0.0;
  }

  else
  {
    v2 = 2.0;
    v3 = 10.0;
  }

  v4 = *&v0[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView_colorView];
  OUTLINED_FUNCTION_1_1();
  [v4 bounds];
  [v4 setBounds_];
  OUTLINED_FUNCTION_1_1();
  [v4 setCenter_];
  v6 = sub_220F53D3C();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_1_1();
  [v6 bounds];
  [v6 setBounds_];

  v7 = *&v0[OBJC_IVAR____TtC11WeatherMaps19MapDiscreteStepView____lazy_storage___label];
  [v7 bounds];
  v8 = v3 + CGRectGetWidth(v11) * 0.5;
  OUTLINED_FUNCTION_1_1();
  [v7 setCenter_];
}

uint64_t sub_220F54538(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CFD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_220F545A8(__int128 *a1)
{
  v2 = (v1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior);
  v3 = *(v1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior + 16);
  v4 = *a1;
  *(v2 + 16) = *(a1 + 16);
  v5 = *v2;
  *v2 = v4;
  v7 = v5;
  v8 = v3;
  sub_220F56B6C(&v7);
  return result;
}

uint64_t sub_220F545F8()
{
  v2 = OUTLINED_FUNCTION_57_2();
  v3 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(v2);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x28223BE20](v4, v5);
  OUTLINED_FUNCTION_3();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration;
  swift_beginAccess();
  sub_220F59D00(v1 + v9, v8, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  swift_beginAccess();
  sub_220F5A590(v0, v1 + v9);
  swift_endAccess();
  sub_220F54BE0();
  sub_220F59D5C();
  return sub_220F59D5C();
}

void sub_220F546F4()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = sub_220FC0760();
  OUTLINED_FUNCTION_6();
  v6 = v5;
  MEMORY[0x28223BE20](v7, v8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  v13 = OUTLINED_FUNCTION_8_0(v12);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F320);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v31 - v20;
  if ((sub_220FC1010() & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  OUTLINED_FUNCTION_15_12();
  switch(v24)
  {
    case 5:
      if (v23 != 5)
      {
        goto LABEL_22;
      }

      break;
    case 4:
      if (v23 != 4)
      {
        goto LABEL_22;
      }

      break;
    case 3:
      if (v23 != 3)
      {
        goto LABEL_22;
      }

      break;
    default:
      if (v24 != v23 || (v23 - 6) >= 0xFFFFFFFD)
      {
        goto LABEL_22;
      }

      break;
  }

  sub_220E1966C(0, &qword_2812C5B20);
  if (sub_220FC3250())
  {
    v32 = v6;
    v26 = *(v22 + 28);
    v27 = *(v17 + 48);
    sub_220ECC944(v3 + v26, v21, &qword_27CF9CEE8);
    sub_220ECC944(v1 + v26, &v21[v27], &qword_27CF9CEE8);
    if (OUTLINED_FUNCTION_25_15(v21) == 1)
    {
      if (OUTLINED_FUNCTION_25_15(&v21[v27]) == 1)
      {
        sub_220E3B2DC(v21, &qword_27CF9CEE8);
LABEL_24:
        OUTLINED_FUNCTION_8_25(*(v22 + 32));
        goto LABEL_22;
      }

      goto LABEL_21;
    }

    sub_220ECC944(v21, v16, &qword_27CF9CEE8);
    if (OUTLINED_FUNCTION_25_15(&v21[v27]) == 1)
    {
      (*(v32 + 8))(v16, v4);
LABEL_21:
      sub_220E3B2DC(v21, &qword_27CF9F320);
      goto LABEL_22;
    }

    v28 = v32;
    (*(v32 + 32))(v11, &v21[v27], v4);
    sub_220F59560();
    v29 = sub_220FC26B0();
    v30 = *(v28 + 8);
    v30(v11, v4);
    v30(v16, v4);
    sub_220E3B2DC(v21, &qword_27CF9CEE8);
    if (v29)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  OUTLINED_FUNCTION_22();
}

char *sub_220F54A4C()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView;
  v2 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView);
  }

  else
  {
    v4 = sub_220F54AB0(v0);
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

char *sub_220F54AB0(uint64_t a1)
{
  sub_220E1E2A8(a1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_annotationViewModelFactory, v14);
  sub_220E1E2A8(a1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_mapLocationAccessibilityModelManager, v13);
  v2 = a1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_overlaySonifier;
  v3 = *(a1 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_overlaySonifier);
  v4 = *(v2 + 8);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  v6 = MEMORY[0x28223BE20](v5, v5);
  v8 = &v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  swift_unknownObjectRetain();
  v11 = sub_220F5A42C(v10, v13, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return v11;
}

id sub_220F54BE0()
{
  v1 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration;
  swift_beginAccess();
  sub_220F59D00(v0 + v5, v4, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  sub_220F546F4();
  v7 = v6;
  result = sub_220F59D5C();
  if ((v7 & 1) == 0)
  {
    return sub_220F54CC4();
  }

  return result;
}

id sub_220F54CC4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9EB90);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v272 = &v248 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  v262 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v270 = &v248 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v271 = &v248 - v10;
  v264 = v11;
  MEMORY[0x28223BE20](v12, v13);
  v267 = &v248 - v14;
  v275 = type metadata accessor for SnapshotManager.Snapshot(0);
  MEMORY[0x28223BE20](v275, v15);
  v269 = &v248 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  MEMORY[0x28223BE20](v261, v17);
  v265 = &v248 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v248 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v280, v23);
  v273 = &v248 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v266 = &v248 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F328);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v263 = &v248 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v32);
  v277 = &v248 - v33;
  v282 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  MEMORY[0x28223BE20](v282, v34);
  v253 = &v248 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v274 = &v248 - v38;
  v278 = type metadata accessor for SnapshotManager.Options(0);
  v258 = *(v278 - 8);
  MEMORY[0x28223BE20](v278, v39);
  v276 = &v248 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v259 = v40;
  MEMORY[0x28223BE20](v41, v42);
  v44 = &v248 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CEE8);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v48 = &v248 - v47;
  v49 = sub_220FC0760();
  v284 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v50);
  v260 = &v248 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = v51;
  MEMORY[0x28223BE20](v52, v53);
  v286 = &v248 - v54;
  v55 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  v255 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v56);
  v281 = &v248 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58, v59);
  v279 = &v248 - v60;
  MEMORY[0x28223BE20](v61, v62);
  v250 = &v248 - v63;
  MEMORY[0x28223BE20](v64, v65);
  v268 = &v248 - v66;
  MEMORY[0x28223BE20](v67, v68);
  v254 = &v248 - v69;
  MEMORY[0x28223BE20](v70, v71);
  v252 = &v248 - v72;
  MEMORY[0x28223BE20](v73, v74);
  v76 = &v248 - v75;
  v256 = v77;
  MEMORY[0x28223BE20](v78, v79);
  v81 = &v248 - v80;
  v82 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration;
  swift_beginAccess();
  sub_220F59D00(&v1[v82], v81, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v83 = sub_220FC17A0();
  v84 = __swift_project_value_buffer(v83, qword_2812C5F00);
  v285 = v81;
  sub_220F59D00(v81, v76, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  v283 = v84;
  v85 = sub_220FC1780();
  v86 = sub_220FC2E30();
  v87 = os_log_type_enabled(v85, v86);
  v251 = v22;
  if (v87)
  {
    v88 = swift_slowAlloc();
    v249 = v49;
    v89 = v88;
    v90 = swift_slowAlloc();
    v287 = v44;
    v91 = v90;
    v290 = v90;
    *v89 = 141558275;
    *(v89 + 4) = 1752392040;
    *(v89 + 12) = 2081;
    v92 = sub_220FC1040();
    v93 = v55;
    v94 = v1;
    v96 = v95;
    sub_220F59D5C();
    v97 = sub_220E20FF8(v92, v96, &v290);
    v1 = v94;
    v55 = v93;

    *(v89 + 14) = v97;
    _os_log_impl(&dword_220E15000, v85, v86, "Refresh snapshot - new request. location=%{private,mask.hash}s", v89, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v91);
    v98 = v91;
    v44 = v287;
    MEMORY[0x223D9DDF0](v98, -1, -1);
    v49 = v249;
    MEMORY[0x223D9DDF0](v89, -1, -1);
  }

  else
  {

    sub_220F59D5C();
  }

  v99 = v285;
  sub_220ECC944(&v285[*(v55 + 28)], v48, &qword_27CF9CEE8);
  if (__swift_getEnumTagSinglePayload(v48, 1, v49) == 1)
  {
    sub_220E3B2DC(v48, &qword_27CF9CEE8);
    sub_220F59D00(v99, v281, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
    v100 = sub_220FC1780();
    v101 = sub_220FC2E30();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v290 = v103;
      *v102 = 141558275;
      *(v102 + 4) = 1752392040;
      *(v102 + 12) = 2081;
      v104 = sub_220FC1040();
      v106 = v105;
      sub_220F59D5C();
      v107 = sub_220E20FF8(v104, v106, &v290);

      *(v102 + 14) = v107;
      _os_log_impl(&dword_220E15000, v100, v101, "Refresh snapshot - No weather data. location=%{private,mask.hash}s", v102, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v103);
      MEMORY[0x223D9DDF0](v103, -1, -1);
      MEMORY[0x223D9DDF0](v102, -1, -1);
    }

    else
    {

      sub_220F59D5C();
    }

    return sub_220F59D5C();
  }

  v108 = v284 + 32;
  v109 = *(v284 + 32);
  v109(v286, v48, v49);
  v110 = sub_220F54A4C();
  [v110 bounds];
  v112 = v111;
  v114 = v113;
  v116 = v115;
  v118 = v117;

  v291.origin.x = v112;
  v291.origin.y = v114;
  v291.size.width = v116;
  v291.size.height = v118;
  v292 = CGRectIntegral(v291);
  if (v292.size.width <= 0.0 || (height = v292.size.height, v292.size.height <= 0.0))
  {
    v129 = v49;
    sub_220F59D00(v99, v279, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
    v130 = sub_220FC1780();
    v131 = sub_220FC2E30();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v290 = v133;
      *v132 = 141558275;
      *(v132 + 4) = 1752392040;
      *(v132 + 12) = 2081;
      v134 = sub_220FC1040();
      v136 = v135;
      sub_220F59D5C();
      v137 = sub_220E20FF8(v134, v136, &v290);

      *(v132 + 14) = v137;
      _os_log_impl(&dword_220E15000, v130, v131, "Refresh snapshot - Invalid size. location=%{private,mask.hash}s", v132, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v133);
      MEMORY[0x223D9DDF0](v133, -1, -1);
      MEMORY[0x223D9DDF0](v132, -1, -1);

LABEL_17:
      (*(v284 + 8))(v286, v129);
      return sub_220F59D5C();
    }

LABEL_20:
    sub_220F59D5C();
    (*(v284 + 8))(v286, v129);
    return sub_220F59D5C();
  }

  width = v292.size.width;
  result = [v1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_51;
  }

  v122 = result;
  v123 = [result window];

  v281 = v108;
  v249 = v109;
  v248 = v55;
  if (v123)
  {
    v124 = [v123 windowScene];
    if (v124)
    {
      v125 = v124;
      v126 = v1;
      v127 = [v124 screen];
      [v127 scale];

      v128 = [v125 screen];
      [v128 nativeScale];

      goto LABEL_24;
    }
  }

  v126 = v1;
  v138 = objc_opt_self();
  v139 = [v138 mainScreen];
  [v139 scale];

  v123 = [v138 mainScreen];
  [v123 nativeScale];
LABEL_24:
  v287 = v44;

  sub_220FC1110();
  v141 = v140;
  sub_220FC1110();
  v143 = v142;
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  v145 = v278;
  v146 = *(v278 + 20);
  v147 = sub_220FC1070();
  (*(*(v147 - 8) + 16))(&v44[v146], v99, v147);
  v148 = v248;
  v149 = *(v99 + *(v248 + 20));
  v150 = v126;
  v151 = [v126 traitCollection];
  v152 = [v151 userInterfaceStyle];

  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  WeatherDataModel.rainExpectation.getter(&v290);
  v154 = *(v99 + *(v148 + 32));
  *v287 = IsInvertColorsEnabled;
  v287[v145[6]] = v149;
  *&v287[v145[7]] = v141;
  *&v287[v145[8]] = v143;
  v155 = v290;
  v156 = &v287[v145[9]];
  *v156 = width;
  v156[1] = height;
  *&v287[v145[10]] = v152;
  v287[v145[11]] = IsVoiceOverRunning;
  v157 = v287;
  v287[v145[12]] = v155;
  *&v157[v145[13]] = v154;
  result = [v150 view];
  if (!result)
  {
LABEL_51:
    __break(1u);
    return result;
  }

  v158 = result;
  v159 = [result layer];

  [v159 setCornerRadius_];
  v160 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView;
  v161 = *&v150[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView];
  *&v161[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_cornerRadius] = v154;
  v162 = v161;
  sub_220E4E71C();

  v163 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
  swift_beginAccess();
  v164 = v277;
  sub_220ECC944(&v150[v163], v277, &qword_27CF9F328);
  if (__swift_getEnumTagSinglePayload(v164, 1, v282) != 1)
  {
    sub_220F59E20(v164, v274, type metadata accessor for SnapshotViewController.SnapshotJob);
    sub_220F578B0(v157, v165, v166, v167, v168, v169, v170, v171, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259);
    if ((v172 & 1) == 0)
    {
      sub_220F59D5C();
      goto LABEL_31;
    }

    v129 = v49;
    v173 = *&v150[v160];
    v174 = v266;
    swift_storeEnumTagMultiPayload();
    v175 = v173;
    sub_220E4F9D0(v174);

    sub_220F59D00(v99, v252, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
    v176 = sub_220FC1780();
    v177 = sub_220FC2E30();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      v289 = v179;
      *v178 = 141558275;
      *(v178 + 4) = 1752392040;
      *(v178 + 12) = 2081;
      v180 = sub_220FC1040();
      v182 = v181;
      sub_220F59D5C();
      v183 = sub_220E20FF8(v180, v182, &v289);

      *(v178 + 14) = v183;
      _os_log_impl(&dword_220E15000, v176, v177, "Refresh snapshot - Already loading. location=%{private,mask.hash}s", v178, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v179);
      MEMORY[0x223D9DDF0](v179, -1, -1);
      MEMORY[0x223D9DDF0](v178, -1, -1);

      sub_220F59D5C();
      sub_220F59D5C();
      goto LABEL_17;
    }

    sub_220F59D5C();
    sub_220F59D5C();
    goto LABEL_20;
  }

  sub_220E3B2DC(v164, &qword_27CF9F328);
LABEL_31:
  v184 = *&v150[v160];
  v185 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_status;
  swift_beginAccess();
  v186 = v184 + v185;
  v187 = v273;
  sub_220F59D00(v186, v273, type metadata accessor for WeatherMapSnapshotView.Status);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 2)
  {
    if (EnumCaseMultiPayload || (v189 = v251, sub_220F59E20(v187, v251, type metadata accessor for WeatherMapSnapshotView.Status.Loaded), v190 = v265, sub_220F59D00(v189, v265, type metadata accessor for SnapshotManager.SnapshotResult), sub_220EBE27C(), v192 = v191, sub_220F59D5C(), (v192 & 1) == 0))
    {
      sub_220F59D5C();
    }

    else
    {
      sub_220F59D00(v189, v190, type metadata accessor for SnapshotManager.SnapshotResult);
      sub_220F59D00(v190 + *(v275 + 40), v276, type metadata accessor for SnapshotManager.Options);
      sub_220F59D5C();
      sub_220F578B0(v157, v193, v194, v195, v196, v197, v198, v199, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259);
      v201 = v200;
      sub_220F59D5C();
      sub_220F59D5C();
      if (v201)
      {
        v202 = v49;
        sub_220F59D00(v285, v250, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
        v203 = sub_220FC1780();
        v204 = sub_220FC2E30();
        if (os_log_type_enabled(v203, v204))
        {
          v205 = swift_slowAlloc();
          v206 = swift_slowAlloc();
          v288 = v206;
          *v205 = 141558275;
          *(v205 + 4) = 1752392040;
          *(v205 + 12) = 2081;
          v207 = sub_220FC1040();
          v209 = v208;
          sub_220F59D5C();
          v210 = sub_220E20FF8(v207, v209, &v288);

          *(v205 + 14) = v210;
          _os_log_impl(&dword_220E15000, v203, v204, "Refresh snapshot - no need to load. location=%{private,mask.hash}s", v205, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v206);
          MEMORY[0x223D9DDF0](v206, -1, -1);
          MEMORY[0x223D9DDF0](v205, -1, -1);
        }

        else
        {

          sub_220F59D5C();
        }

        sub_220F59D5C();
        (*(v284 + 8))(v286, v202);
        return sub_220F59D5C();
      }
    }
  }

  if (!__swift_getEnumTagSinglePayload(&v150[v163], 1, v282))
  {
    sub_220F59D00(&v150[v163], v253, type metadata accessor for SnapshotViewController.SnapshotJob);
    sub_220FC2B00();
    sub_220F59D5C();
  }

  __swift_project_boxed_opaque_existential_1(&v150[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotManager], *&v150[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotManager + 24]);
  v211 = v267;
  sub_220EBCE38(v157, v267);
  if (__swift_getEnumTagSinglePayload(v211, 1, v275) != 1)
  {
    v237 = v49;
    sub_220F59E20(v211, v269, type metadata accessor for SnapshotManager.Snapshot);
    sub_220F59D00(v285, v254, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
    v238 = sub_220FC1780();
    v239 = sub_220FC2E30();
    if (os_log_type_enabled(v238, v239))
    {
      v240 = swift_slowAlloc();
      v241 = swift_slowAlloc();
      v288 = v241;
      *v240 = 141558275;
      *(v240 + 4) = 1752392040;
      *(v240 + 12) = 2081;
      v242 = sub_220FC1040();
      v244 = v243;
      sub_220F59D5C();
      v245 = sub_220E20FF8(v242, v244, &v288);

      *(v240 + 14) = v245;
      _os_log_impl(&dword_220E15000, v238, v239, "Refresh snapshot - Found Cached. location=%{private,mask.hash}s", v240, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v241);
      MEMORY[0x223D9DDF0](v241, -1, -1);
      MEMORY[0x223D9DDF0](v240, -1, -1);
    }

    else
    {

      sub_220F59D5C();
    }

    v246 = v265;
    sub_220F59D00(v269, v265, type metadata accessor for SnapshotManager.Snapshot);
    *(v246 + *(v261 + 20)) = 1;
    v247 = v286;
    sub_220F57AD0(v246, v286);
    sub_220F59D5C();
    sub_220F59D5C();
    sub_220F59D5C();
    (*(v284 + 8))(v247, v237);
    return sub_220F59D5C();
  }

  sub_220E3B2DC(v211, &qword_27CF9D080);
  v212 = *&v150[v160];
  v213 = v266;
  swift_storeEnumTagMultiPayload();
  v214 = v212;
  sub_220E4F9D0(v213);

  v215 = *&v150[v160];
  v216 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_status;
  swift_beginAccess();
  sub_220F59D00(v215 + v216, v213, type metadata accessor for WeatherMapSnapshotView.Status);
  v217 = v271;
  sub_220E4EA28(v271);
  sub_220F59D5C();
  v218 = sub_220FC2AE0();
  __swift_storeEnumTagSinglePayload(v272, 1, 1, v218);
  v219 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_220F59D00(v157, v276, type metadata accessor for SnapshotManager.Options);
  sub_220ECC944(v217, v270, &qword_27CF9D080);
  v220 = v284;
  sub_220F59D00(v285, v268, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  v221 = *(v220 + 16);
  v283 = v163;
  v222 = v260;
  v221(v260, v286, v49);
  sub_220FC2AB0();

  v223 = sub_220FC2AA0();
  v224 = (*(v258 + 80) + 40) & ~*(v258 + 80);
  v225 = *(v262 + 80);
  v280 = v150;
  v226 = (v259 + v225 + v224) & ~v225;
  v227 = (v264 + *(v255 + 80) + v226) & ~*(v255 + 80);
  v228 = v49;
  v229 = (v256 + *(v220 + 80) + v227) & ~*(v220 + 80);
  v230 = swift_allocObject();
  v231 = MEMORY[0x277D85700];
  *(v230 + 2) = v223;
  *(v230 + 3) = v231;
  *(v230 + 4) = v219;
  sub_220F59E20(v276, &v230[v224], type metadata accessor for SnapshotManager.Options);
  sub_220F59DB0(v270, &v230[v226]);
  sub_220F59E20(v268, &v230[v227], type metadata accessor for SnapshotViewController.SnapshotConfiguration);
  v249(&v230[v229], v222, v228);

  v232 = sub_220F9BB1C(0, 0, v272, &unk_220FD5EB8, v230);
  sub_220E3B2DC(v271, &qword_27CF9D080);
  (*(v220 + 8))(v286, v228);
  sub_220F59D5C();
  v233 = v263;
  sub_220F59E20(v287, v263, type metadata accessor for SnapshotManager.Options);
  v234 = v282;
  *(v233 + *(v282 + 20)) = v232;
  __swift_storeEnumTagSinglePayload(v233, 0, 1, v234);
  v235 = v283;
  v236 = v280;
  swift_beginAccess();
  sub_220F5A08C(v233, v236 + v235);
  return swift_endAccess();
}

void sub_220F56B6C(uint64_t a1)
{
  v2 = &v1[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior];
  if (*(a1 + 16))
  {
    if (v1[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior + 16])
    {
      return;
    }

    goto LABEL_9;
  }

  if ((v1[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior + 16] & 1) != 0 || (*a1 == *v2 ? (v3 = *(a1 + 8) == v2[1]) : (v3 = 0), !v3))
  {
LABEL_9:
    sub_220F54CC4();
    v4 = [v1 view];
    if (v4)
    {
      v5 = v4;
      [v4 setNeedsLayout];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220F56C14()
{
  v1 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
  v2 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_observers) = MEMORY[0x277D84F90];
  *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView) = 0;
  v3 = (v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior;
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 1;
  sub_220FC3740();
  __break(1u);
}

void sub_220F56D04()
{
  OUTLINED_FUNCTION_29_2();
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F328);
  v3 = OUTLINED_FUNCTION_8_0(v2);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v22 - v5;
  v7 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v8, v9);
  OUTLINED_FUNCTION_3();
  v12 = v11 - v10;
  v13 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
  swift_beginAccess();
  if (!OUTLINED_FUNCTION_25_15(&v0[v13]))
  {
    sub_220F59D00(&v0[v13], v12, type metadata accessor for SnapshotViewController.SnapshotJob);
    sub_220FC2B00();
    sub_220F59D5C();
  }

  __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
  swift_beginAccess();
  sub_220F5A08C(v6, &v0[v13]);
  swift_endAccess();
  v14 = *&v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_observers];
  v15 = sub_220F43CDC(v14);
  if (!v15)
  {
    goto LABEL_11;
  }

  v16 = v15;
  v17 = objc_opt_self();
  if (v16 >= 1)
  {
    v18 = v17;
    v23 = ObjectType;

    v19 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x223D9CB30](v19, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v19 + 32);
        swift_unknownObjectRetain();
      }

      ++v19;
      v21 = [v18 defaultCenter];
      [v21 removeObserver_];
      swift_unknownObjectRelease();
    }

    while (v16 != v19);

    ObjectType = v23;
LABEL_11:
    v24.receiver = v0;
    v24.super_class = ObjectType;
    objc_msgSendSuper2(&v24, sel_dealloc);
    OUTLINED_FUNCTION_22();
    return;
  }

  __break(1u);
}

id sub_220F57070()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLoad);
  result = [v0 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v3 = result;
  v4 = sub_220F54A4C();
  [v3 addSubview_];

  result = [v1 view];
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result setUserInteractionEnabled_];

  result = [v1 view];
  if (result)
  {
    v6 = result;
    v7 = [result layer];

    [v7 setMasksToBounds_];
    v8 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView;
    [*&v1[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView] setAccessibilityIgnoresInvertColors_];
    *(*&v1[v8] + OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_delegate + 8) = &off_283485B10;
    swift_unknownObjectWeakAssign();
    *&v1[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_observers] = sub_220F5725C();

    sub_220E1966C(0, &qword_2812C5C98);
    sub_220FC3010();
    sub_220FC2ED0();
    swift_unknownObjectRelease();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_220F5725C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9DBB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_220FC9160;
  v1 = objc_opt_self();
  v2 = [v1 defaultCenter];
  v3 = *MEMORY[0x277D76648];
  v4 = objc_opt_self();
  v5 = [v4 mainQueue];
  OUTLINED_FUNCTION_2_3();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_220F5A560;
  v28 = v6;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 1107296256;
  v25 = sub_220F1352C;
  v26 = &block_descriptor_24;
  v7 = _Block_copy(v24);

  v8 = [v2 addObserverForName:v3 object:0 queue:v5 usingBlock:v7];
  _Block_release(v7);

  *(v0 + 32) = v8;
  v9 = [v1 defaultCenter];
  if (qword_2812C5C80 != -1)
  {
    swift_once();
  }

  v10 = qword_2812CE4C0;
  v11 = [v4 mainQueue];
  OUTLINED_FUNCTION_2_3();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_220F5A580;
  v28 = v12;
  OUTLINED_FUNCTION_3_41();
  v25 = v13;
  v26 = &block_descriptor_26_1;
  v14 = _Block_copy(v24);

  v15 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v14];
  _Block_release(v14);

  *(v0 + 40) = v15;
  v16 = [v1 defaultCenter];
  v17 = *MEMORY[0x277D765F0];
  v18 = [v4 mainQueue];
  OUTLINED_FUNCTION_2_3();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = sub_220F5A588;
  v28 = v19;
  OUTLINED_FUNCTION_3_41();
  v25 = v20;
  v26 = &block_descriptor_30;
  v21 = _Block_copy(v24);

  v22 = [v16 addObserverForName:v17 object:0 queue:v18 usingBlock:v21];
  _Block_release(v21);

  *(v0 + 48) = v22;
  return v0;
}

id sub_220F57650()
{
  v22.receiver = v0;
  v22.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v22, sel_viewDidLayoutSubviews);
  v1 = sub_220F54A4C();
  [v1 frame];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = &v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior];
  if (v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_sizingBehavior + 16])
  {
    v11 = *&v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView];
    result = [v0 view];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v13 = result;
    [result bounds];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v21 = v20;
  }

  else
  {
    v19 = *v10;
    v21 = v10[1];
    v11 = *&v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView];
    v15 = 0.0;
    v17 = 0.0;
  }

  v23.origin.x = v15;
  v23.origin.y = v17;
  v23.size.width = v19;
  v23.size.height = v21;
  v24 = CGRectIntegral(v23);
  [v11 setFrame_];

  [*&v0[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView] frame];
  v26.origin.x = v3;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  result = CGRectEqualToRect(v25, v26);
  if ((result & 1) == 0)
  {
    return sub_220F54CC4();
  }

  return result;
}

id sub_220F57810(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewIsAppearing_, a1 & 1);
  return sub_220F54CC4();
}

void sub_220F578B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_29_2();
  a19 = v22;
  a20 = v23;
  v24 = v21;
  OUTLINED_FUNCTION_57_2();
  v25 = sub_220FC0ED0();
  OUTLINED_FUNCTION_6();
  v27 = v26;
  MEMORY[0x28223BE20](v28, v29);
  v31 = &a9 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v35 = &a9 - v34;
  if (*v21 != *v20)
  {
    goto LABEL_25;
  }

  v36 = type metadata accessor for SnapshotManager.Options(0);
  sub_220FC0FE0();
  sub_220FC0EE0();
  sub_220FC0FE0();
  sub_220FC0EE0();
  v37 = sub_220FC0EC0();
  v38 = *(v27 + 8);
  v38(v31, v25);
  v38(v35, v25);
  if ((v37 & 1) == 0)
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_15_12();
  switch(v40)
  {
    case 5:
      if (v39 != 5)
      {
        goto LABEL_25;
      }

      break;
    case 4:
      if (v39 != 4)
      {
        goto LABEL_25;
      }

      break;
    case 3:
      if (v39 != 3)
      {
        goto LABEL_25;
      }

      break;
    default:
      if (v40 != v39 || (v39 - 6) >= 0xFFFFFFFD)
      {
        goto LABEL_25;
      }

      break;
  }

  OUTLINED_FUNCTION_8_25(v36[7]);
  if (v46)
  {
    v42 = v36[9];
    v43 = *&v24[v42];
    v44 = *&v24[v42 + 8];
    v45 = &v20[v42];
    v46 = v43 == *v45 && v44 == v45[1];
    if (v46 && *&v24[v36[10]] == *&v20[v36[10]])
    {
      OUTLINED_FUNCTION_15_12();
      if (v48 == v47)
      {
        OUTLINED_FUNCTION_15_12();
        if (v50 == 6)
        {
          if (v49 != 6)
          {
            goto LABEL_25;
          }
        }

        else if (v50 != v49)
        {
          goto LABEL_25;
        }

        OUTLINED_FUNCTION_8_25(v36[13]);
      }
    }
  }

LABEL_25:
  OUTLINED_FUNCTION_22();
}

void sub_220F57AD0(uint64_t a1, uint64_t a2)
{
  v83 = a2;
  v4 = sub_220FC1070();
  v84 = *(v4 - 8);
  v85 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v81[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for SnapshotManager.SnapshotResult(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v81[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v81[-v14];
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v81[-v18];
  v20 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v81[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_220F54A4C();
  [v24 bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v89.origin.x = v26;
  v89.origin.y = v28;
  v89.size.width = v30;
  v89.size.height = v32;
  v90 = CGRectIntegral(v89);
  width = v90.size.width;
  height = v90.size.height;
  v86 = type metadata accessor for SnapshotManager.Snapshot(0);
  v35 = a1 + *(v86 + 40);
  v36 = type metadata accessor for SnapshotManager.Options(0);
  v37 = v36;
  v38 = (v35 + *(v36 + 36));
  if (width == *v38 && height == v38[1])
  {
    v59 = *(v35 + *(v36 + 24));
    v60 = &v2[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration];
    swift_beginAccess();
    v61 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
    v62 = v60[*(v61 + 20)];
    if (v59 == 5)
    {
      if (v62 == 5)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v59 != 4)
      {
        if (v59 == 3)
        {
          if (v62 != 3)
          {
            goto LABEL_18;
          }
        }

        else if ((v62 - 6) > 0xFFFFFFFC || v59 != v62)
        {
          goto LABEL_18;
        }

LABEL_16:
        v63 = *&v2[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView];
        sub_220F59D00(a1, v23, type metadata accessor for SnapshotManager.SnapshotResult);
        v64 = *(type metadata accessor for WeatherMapSnapshotView.Status.Loaded(0) + 20);
        v65 = sub_220FC0760();
        (*(*(v65 - 8) + 16))(&v23[v64], v83, v65);
        swift_storeEnumTagMultiPayload();
        v66 = v63;
        sub_220E4F9D0(v23);

        return;
      }

      if (v62 == 4)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    if (qword_2812C5EF8 != -1)
    {
      swift_once();
    }

    v67 = sub_220FC17A0();
    __swift_project_value_buffer(v67, qword_2812C5F00);
    sub_220F59D00(a1, v19, type metadata accessor for SnapshotManager.SnapshotResult);
    v68 = v2;
    v69 = sub_220FC1780();
    v70 = sub_220FC2E30();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v88 = v85;
      *v71 = 136315394;
      v87 = v19[*(v86 + 40) + *(v37 + 24)];
      sub_220E561E0();
      v72 = sub_220FC38F0();
      v74 = v73;
      sub_220F59D5C();
      v75 = sub_220E20FF8(v72, v74, &v88);

      *(v71 + 4) = v75;
      *(v71 + 12) = 2080;
      v87 = v60[*(v61 + 20)];
      v76 = sub_220FC38F0();
      v78 = sub_220E20FF8(v76, v77, &v88);

      *(v71 + 14) = v78;
      _os_log_impl(&dword_220E15000, v69, v70, "Loaded snapshot but incorrect overlay kind. Reloading. OverlayKind=%s, config=%s", v71, 0x16u);
      v79 = v85;
      swift_arrayDestroy();
      MEMORY[0x223D9DDF0](v79, -1, -1);
      MEMORY[0x223D9DDF0](v71, -1, -1);
    }

    else
    {

      v58 = sub_220F59D5C();
    }

    goto LABEL_23;
  }

  if (qword_2812C5EF8 != -1)
  {
    swift_once();
  }

  v40 = sub_220FC17A0();
  __swift_project_value_buffer(v40, qword_2812C5F00);
  sub_220F59D00(a1, v15, type metadata accessor for SnapshotManager.SnapshotResult);
  sub_220F59D00(a1, v11, type metadata accessor for SnapshotManager.SnapshotResult);
  v41 = v2;
  v42 = sub_220FC1780();
  v43 = sub_220FC2E30();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v88 = v83;
    *v44 = 134219267;
    v82 = v43;
    v45 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView;
    [*&v41[OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController____lazy_storage___snapshotView] bounds];
    v92 = CGRectIntegral(v91);
    *(v44 + 4) = CGRectGetHeight(v92);
    *(v44 + 12) = 2048;
    [*&v41[v45] bounds];
    v94 = CGRectIntegral(v93);
    *(v44 + 14) = CGRectGetWidth(v94);
    *(v44 + 22) = 2048;
    v46 = v86;
    v47 = *&v15[*(v86 + 40) + *(v37 + 36)];
    sub_220F59D5C();
    *(v44 + 24) = v47;
    *(v44 + 32) = 2048;
    v48 = *&v11[*(v46 + 40) + 8 + *(v37 + 36)];
    sub_220F59D5C();
    *(v44 + 34) = v48;
    *(v44 + 42) = 2160;
    *(v44 + 44) = 1752392040;
    *(v44 + 52) = 2081;
    v49 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotConfiguration;
    swift_beginAccess();
    v50 = v84;
    v51 = &v41[v49];
    v52 = v85;
    (*(v84 + 16))(v7, v51, v85);
    v53 = sub_220FC1040();
    v55 = v54;
    (*(v50 + 8))(v7, v52);
    v56 = sub_220E20FF8(v53, v55, &v88);

    *(v44 + 54) = v56;
    _os_log_impl(&dword_220E15000, v42, v82, "Received snapshot with invalid size - re-requesting. bounds.height=%f, bounds.width=%f, size.width=%f, size.height=%f, location=%{private,mask.hash}s", v44, 0x3Eu);
    v57 = v83;
    __swift_destroy_boxed_opaque_existential_0(v83);
    MEMORY[0x223D9DDF0](v57, -1, -1);
    MEMORY[0x223D9DDF0](v44, -1, -1);
  }

  else
  {

    sub_220F59D5C();
    v58 = sub_220F59D5C();
  }

LABEL_23:
  sub_220F54CC4(v58);
}

uint64_t sub_220F582E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  type metadata accessor for SnapshotManager.SnapshotResult(0);
  v8[12] = swift_task_alloc();
  v8[13] = sub_220FC2AB0();
  v8[14] = sub_220FC2AA0();
  v10 = sub_220FC2A30();
  v8[15] = v10;
  v8[16] = v9;

  return MEMORY[0x2822009F8](sub_220F583B4, v10, v9);
}

uint64_t sub_220F583B4()
{
  OUTLINED_FUNCTION_19();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    __swift_project_boxed_opaque_existential_1((Strong + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotManager), *(Strong + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotManager + 24));
    v2 = swift_task_alloc();
    *(v0 + 144) = v2;
    *v2 = v0;
    v2[1] = sub_220F584C8;

    return sub_220EBC654();
  }

  else
  {

    OUTLINED_FUNCTION_32_0();

    return v4();
  }
}

uint64_t sub_220F584C8()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_220F587C4;
  }

  else
  {
    v5 = sub_220F58604;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_220F58604()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectWeakInit();

  return MEMORY[0x2822009F8](sub_220F5866C, 0, 0);
}

uint64_t sub_220F5866C()
{
  OUTLINED_FUNCTION_19();
  *(v0 + 160) = sub_220FC2AA0();
  v2 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220F586F4, v2, v1);
}

void sub_220F586F4()
{
  v1 = v0[19];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[8];

  sub_220F58A74((v0 + 6), v5, v4, v3, v2);
  if (v1)
  {
  }

  else
  {
    MEMORY[0x223D9DEF0](v0 + 6);
    v6 = v0[15];
    v7 = v0[16];

    MEMORY[0x2822009F8](sub_220F58978, v6, v7);
  }
}

uint64_t sub_220F587C4()
{
  OUTLINED_FUNCTION_19();
  swift_unknownObjectWeakInit();

  return MEMORY[0x2822009F8](sub_220F5882C, 0, 0);
}

uint64_t sub_220F5882C()
{
  OUTLINED_FUNCTION_19();
  *(v0 + 168) = sub_220FC2AA0();
  v2 = sub_220FC2A30();

  return MEMORY[0x2822009F8](sub_220F588B4, v2, v1);
}

uint64_t sub_220F588B4()
{
  v1 = v0[19];
  v2 = v0[10];
  v3 = v0[8];

  sub_220F58EB4((v0 + 5), v3, v1, v2);
  MEMORY[0x223D9DEF0](v0 + 5);
  v4 = v0[15];
  v5 = v0[16];

  return MEMORY[0x2822009F8](sub_220F58A00, v4, v5);
}

uint64_t sub_220F58978()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 136);

  sub_220F59D5C();

  OUTLINED_FUNCTION_32_0();

  return v2();
}

uint64_t sub_220F58A00()
{
  OUTLINED_FUNCTION_19();
  v1 = *(v0 + 152);
  v2 = *(v0 + 136);

  OUTLINED_FUNCTION_32_0();

  return v3();
}

void sub_220F58A74(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = a4;
  v38 = a5;
  v8 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F328);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v36 - v18;
  v20 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v39[10] = v5;
    v26 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
    swift_beginAccess();
    sub_220ECC944(v25 + v26, v19, &qword_27CF9F328);
    if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
    {
      sub_220E3B2DC(v19, &qword_27CF9F328);
    }

    else
    {
      sub_220F59E20(v19, v23, type metadata accessor for SnapshotViewController.SnapshotJob);
      if (sub_220EBD77C(v23, a2))
      {
        __swift_storeEnumTagSinglePayload(v15, 1, 1, v20);
        swift_beginAccess();
        sub_220F5A08C(v15, v25 + v26);
        swift_endAccess();
        sub_220F57AD0(v37, v38);

LABEL_12:
        sub_220F59D5C();
        return;
      }

      sub_220F59D5C();
    }

    if (qword_2812C5EF8 != -1)
    {
      swift_once();
    }

    v27 = sub_220FC17A0();
    __swift_project_value_buffer(v27, qword_2812C5F00);
    sub_220F59D00(a3, v11, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
    v28 = sub_220FC1780();
    v29 = sub_220FC2E30();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v39[0] = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v32 = sub_220FC1040();
      v34 = v33;
      sub_220F59D5C();
      v35 = sub_220E20FF8(v32, v34, v39);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_220E15000, v28, v29, "Other snapshot job going on, ignore result. location=%{private,mask.hash}s", v30, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x223D9DDF0](v31, -1, -1);
      MEMORY[0x223D9DDF0](v30, -1, -1);

      return;
    }

    goto LABEL_12;
  }
}

void sub_220F58EB4(uint64_t a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v46 = a2;
  v47 = a4;
  v49 = a3;
  v5 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220FC2A60();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F328);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v45 - v19;
  v21 = type metadata accessor for SnapshotViewController.SnapshotJob(0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v45 = v4;
    v27 = OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_snapshotJob;
    swift_beginAccess();
    sub_220ECC944(v26 + v27, v20, &qword_27CF9F328);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_220E3B2DC(v20, &qword_27CF9F328);
    }

    else
    {
      sub_220F59E20(v20, v24, type metadata accessor for SnapshotViewController.SnapshotJob);
      v28 = sub_220EBD77C(v24, v46);
      sub_220F59D5C();
      if (v28)
      {
        __swift_storeEnumTagSinglePayload(v16, 1, 1, v21);
        swift_beginAccess();
        sub_220F5A08C(v16, v26 + v27);
        swift_endAccess();
      }
    }

    v29 = v49;
    v50[0] = v49;
    v30 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D0C0);
    if (swift_dynamicCast())
    {

      (*(v9 + 8))(v12, v8);
    }

    else
    {
      if (qword_2812C5EF8 != -1)
      {
        swift_once();
      }

      v31 = sub_220FC17A0();
      __swift_project_value_buffer(v31, qword_2812C5F00);
      sub_220F59D00(v47, v48, type metadata accessor for SnapshotViewController.SnapshotConfiguration);
      v32 = v29;
      v33 = sub_220FC1780();
      v34 = sub_220FC2E30();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v50[0] = v36;
        *v35 = 136446723;
        v50[10] = v29;
        v37 = v29;
        v38 = sub_220FC2750();
        v40 = sub_220E20FF8(v38, v39, v50);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2160;
        *(v35 + 14) = 1752392040;
        *(v35 + 22) = 2081;
        v41 = sub_220FC1040();
        v43 = v42;
        sub_220F59D5C();
        v44 = sub_220E20FF8(v41, v43, v50);
        v29 = v49;

        *(v35 + 24) = v44;
        _os_log_impl(&dword_220E15000, v33, v34, "Error while making snapshot. error=%{public}s, location=%{private,mask.hash}s", v35, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x223D9DDF0](v36, -1, -1);
        MEMORY[0x223D9DDF0](v35, -1, -1);
      }

      else
      {

        sub_220F59D5C();
      }

      sub_220F59410(v29);
    }
  }
}

void sub_220F59410(void *a1)
{
  v2 = type metadata accessor for WeatherMapSnapshotView.Status(0);
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_220F54A4C();
  *v5 = a1;
  swift_storeEnumTagMultiPayload();
  v7 = a1;
  sub_220E4F9D0(v5);
}

unint64_t sub_220F59560()
{
  result = qword_2812CA268;
  if (!qword_2812CA268)
  {
    sub_220FC0760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812CA268);
  }

  return result;
}

void sub_220F595B8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_220F54CC4();
  }
}

void sub_220F5960C()
{
  v0 = sub_220FBFDB0();
  if (!v0)
  {
    v5 = 0u;
    v6 = 0u;
    goto LABEL_8;
  }

  v1 = v0;
  sub_220FC3540();
  sub_220F62C94(v1, &v5);

  sub_220E81E90(v4);
  if (!*(&v6 + 1))
  {
LABEL_8:
    sub_220E3B2DC(&v5, &unk_27CF9D6B0);
    return;
  }

  if (swift_dynamicCast() && (v4[0] & 1) != 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      sub_220F54CC4();
    }
  }
}

void sub_220F59724()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_220F59778();
  }
}

void sub_220F59778()
{
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  if (qword_2812C5EF8 != -1)
  {
    OUTLINED_FUNCTION_5_15();
  }

  v2 = sub_220FC17A0();
  __swift_project_value_buffer(v2, qword_2812C5F00);
  v3 = sub_220FC1780();
  v4 = sub_220FC2E30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315138;
    if (IsVoiceOverRunning)
    {
      v7 = 28271;
    }

    else
    {
      v7 = 6710895;
    }

    if (IsVoiceOverRunning)
    {
      v8 = 0xE200000000000000;
    }

    else
    {
      v8 = 0xE300000000000000;
    }

    v9 = sub_220E20FF8(v7, v8, &v18);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_220E15000, v3, v4, "Voice over turned %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_15();
  }

  if (IsVoiceOverRunning == *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_isVoiceOverRunning))
  {
    oslog = sub_220FC1780();
    v13 = sub_220FC2E30();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_220E15000, oslog, v13, "Not updating snapshot - no change in voice over", v14, 2u);
      OUTLINED_FUNCTION_15();
    }

    OUTLINED_FUNCTION_21_12();
  }

  else
  {
    v10 = [v0 view];
    if (v10)
    {
      v11 = v10;
      [v10 setUserInteractionEnabled_];

      if (IsVoiceOverRunning)
      {
        OUTLINED_FUNCTION_21_12();

        sub_220F54CC4();
      }

      else
      {
        OUTLINED_FUNCTION_21_12();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_220F599BC()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler);
  if (v1)
  {
    v4 = 0x9000000000000000;
    v5 = 0u;
    v6 = 0u;
    v7 = 0u;
    v8 = 0u;

    v1(&v4);
    v2 = OUTLINED_FUNCTION_9();
    sub_220F058F4(v2, v3);
  }
}

void sub_220F59A28()
{
  OUTLINED_FUNCTION_29_2();
  v2 = v1;
  type metadata accessor for WeatherMapSnapshotView.Status(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v31[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v31[-1] - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v31[-1] - v13;
  v15 = *(v0 + OBJC_IVAR____TtC11WeatherMaps22SnapshotViewController_onMapEventHandler);
  if (v15)
  {
    OUTLINED_FUNCTION_1_62();
    sub_220F59D00(v2, v14, v16);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {

      OUTLINED_FUNCTION_0_73();
      sub_220F59D5C();
      v31[0] = 0x1000000000000000;
      v15(v31);
      v31[0] = 0;
      v15(v31);
      OUTLINED_FUNCTION_24_15();
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v18 = qword_2812C5EF8;

        if (v18 != -1)
        {
          OUTLINED_FUNCTION_5_15();
        }

        v19 = sub_220FC17A0();
        __swift_project_value_buffer(v19, qword_2812C5F00);
        OUTLINED_FUNCTION_1_62();
        sub_220F59D00(v2, v10, v20);
        v21 = sub_220FC1780();
        v22 = sub_220FC2E10();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v31[0] = v24;
          *v23 = 136446210;
          OUTLINED_FUNCTION_1_62();
          sub_220F59D00(v10, v6, v25);
          v26 = sub_220FC2750();
          v28 = v27;
          OUTLINED_FUNCTION_0_73();
          sub_220F59D5C();
          v29 = sub_220E20FF8(v26, v28, v31);

          *(v23 + 4) = v29;
          _os_log_impl(&dword_220E15000, v21, v22, "Shouldn't call snapshotViewDidFinishLoading with a status that doesn't indicate completion. status=%{public}s", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_15();
          OUTLINED_FUNCTION_24_15();
        }

        else
        {
          OUTLINED_FUNCTION_24_15();

          OUTLINED_FUNCTION_0_73();
          sub_220F59D5C();
        }
      }

      else
      {
        v31[0] = 0x1000000000000001;

        v15(v31);
        v31[0] = 1;
        v15(v31);
        OUTLINED_FUNCTION_24_15();
      }

      OUTLINED_FUNCTION_0_73();
      sub_220F59D5C();
    }
  }

  OUTLINED_FUNCTION_22();
}

uint64_t sub_220F59D00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220F59D5C()
{
  v1 = OUTLINED_FUNCTION_57_2();
  v2(v1);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_220F59DB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_220F59E20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2();
  v4 = OUTLINED_FUNCTION_9();
  v5(v4);
  return a2;
}

uint64_t sub_220F59E7C(uint64_t a1)
{
  v3 = v2;
  v5 = type metadata accessor for SnapshotManager.Options(0);
  OUTLINED_FUNCTION_29(v5);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v9 = v7 + *(v8 + 64);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D080);
  OUTLINED_FUNCTION_29(v10);
  v12 = (v9 + *(v11 + 80)) & ~*(v11 + 80);
  v14 = *(v13 + 64);
  v15 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  OUTLINED_FUNCTION_29(v15);
  v17 = (v12 + v14 + *(v16 + 80)) & ~*(v16 + 80);
  v19 = *(v18 + 64);
  v20 = sub_220FC0760();
  OUTLINED_FUNCTION_8_0(v20);
  v22 = (v17 + v19 + *(v21 + 80)) & ~*(v21 + 80);
  v23 = v1[2];
  v24 = v1[3];
  v25 = v1[4];
  v26 = swift_task_alloc();
  *(v3 + 16) = v26;
  *v26 = v3;
  v26[1] = sub_220EB71D4;

  return sub_220F582E4(a1, v23, v24, v25, v1 + v7, v1 + v12, v1 + v17, v1 + v22);
}

uint64_t sub_220F5A08C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F328);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_220F5A0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  ObjectType = swift_getObjectType();
  v24[3] = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v24[4] = &off_283486898;
  v24[0] = a1;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_cornerRadius] = 0;
  a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___showDebugConsole] = 2;
  type metadata accessor for WeatherMapSnapshotView.Status(0);
  swift_storeEnumTagMultiPayload();
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView____lazy_storage___snapshotDisplayView] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationView] = 0;
  v11 = &a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewFractionalCenter];
  *v11 = 0;
  *(v11 + 1) = 0;
  v11[16] = 1;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_debugLabel] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabelEffect] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorEffectView] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorLabel] = 0;
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_errorPlatterView] = 0;
  swift_unknownObjectWeakInit();
  *&a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_unitObserver] = 0;
  v12 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_snapshot;
  v13 = type metadata accessor for SnapshotManager.Snapshot(0);
  __swift_storeEnumTagSinglePayload(&a5[v12], 1, 1, v13);
  v14 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_weatherData;
  v15 = sub_220FC0760();
  __swift_storeEnumTagSinglePayload(&a5[v14], 1, 1, v15);
  a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_needsBuild] = 1;
  sub_220E1E2A8(v24, &a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_annotationViewModelFactory]);
  sub_220E1E2A8(a2, &a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_mapLocationAccessibilityModelManager]);
  v16 = &a5[OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_overlaySonifier];
  *v16 = a3;
  v16[1] = a4;
  v23.receiver = a5;
  v23.super_class = ObjectType;
  swift_unknownObjectRetain();
  v17 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for WeatherMapUnitObserver();
  swift_allocObject();
  v19 = sub_220EC25FC(sub_220F5A558, v18);
  v20 = OBJC_IVAR____TtC11WeatherMaps22WeatherMapSnapshotView_unitObserver;
  swift_beginAccess();
  *&v17[v20] = v19;
  v21 = v17;

  swift_beginAccess();
  if (*&v17[v20])
  {
    swift_endAccess();

    sub_220EC260C();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0(a2);
    __swift_destroy_boxed_opaque_existential_0(v24);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(a2);
    __swift_destroy_boxed_opaque_existential_0(v24);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  return v21;
}

char *sub_220F5A42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = type metadata accessor for WeatherMapAnnotationViewModelFactory();
  v19 = &off_283486898;
  v17[0] = a1;
  v8 = objc_allocWithZone(type metadata accessor for WeatherMapSnapshotView(0));
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v17, v18);
  v10 = MEMORY[0x28223BE20](v9, v9);
  v12 = (&v17[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = sub_220F5A0FC(*v12, a2, a3, a4, v8);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return v14;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_220F5A590(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotViewController.SnapshotConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_24_15()
{

  return sub_220F058F4(v0, v1);
}

void sub_220F5A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v11 = MEMORY[0x277D84F90];
  *(v8 + 64) = MEMORY[0x277D84F90];
  *(v8 + 72) = v11;
  v12 = sub_220E3C8C0(a4, a5, a6, a7, a8);
  if (a7 < 0)
  {
LABEL_38:
    __break(1u);
    return;
  }

  v14 = v12;
  if (a7)
  {
    v15 = 0;
    *v13.i32 = *(v12 + 56) * 0.5;
    v16 = vdup_lane_s32(v13, 0);
    v17 = MEMORY[0x277D84F90];
    do
    {
      v51 = v15++;
      sub_220F36CD8();
      v18 = LODWORD(v51);
      v20 = v19;
      v21 = 0;
      v22 = *(v19 + 16);
      do
      {
        v23 = *(v14 + 56);
        v24 = *(v20 + 24);
        if (v22 >= v24 >> 1)
        {
          OUTLINED_FUNCTION_0_1(v24);
          v49 = v26;
          sub_220F36CD8();
          v23 = v49;
          v18 = LODWORD(v51);
          v20 = v27;
        }

        v25.i32[0] = v18;
        v25.f32[1] = v21;
        *(v20 + 16) = v22 + 1;
        *(v20 + 8 * v22++ + 32) = vadd_f32(v16, vmul_n_f32(v25, v23));
        ++v21;
      }

      while (a7 != v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_1();
        sub_220F36DB4();
        v17 = v30;
      }

      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_0_1(v28);
        sub_220F36DB4();
        v17 = v31;
      }

      *(v17 + 16) = v29 + 1;
      *(v17 + 8 * v29 + 32) = v20;
    }

    while (v15 != a7);
    *(v14 + 64) = v17;

    v32 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_14:
    v52 = v11;
    v33 = 0;
    v50 = v32 + 1;
    v34 = MEMORY[0x277D84F90];
    while (1)
    {
      v35 = v33 * a1;
      if ((v33 * a1) >> 64 != (v33 * a1) >> 63)
      {
        break;
      }

      v36 = __OFADD__(v32, v35);
      v37 = v32 + v35;
      if (v36)
      {
        goto LABEL_34;
      }

      if ((v37 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      if (v37 >= *(a2 + 16))
      {
        goto LABEL_36;
      }

      if (v37 >= *(a3 + 16))
      {
        goto LABEL_37;
      }

      v38 = *(a2 + 32 + 4 * v37);
      v39 = *(a3 + 32 + 4 * v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_6_1();
        sub_220F36BF0();
        v34 = v43;
      }

      v41 = *(v34 + 16);
      v40 = *(v34 + 24);
      if (v41 >= v40 >> 1)
      {
        OUTLINED_FUNCTION_0_1(v40);
        sub_220F36BF0();
        v34 = v44;
      }

      ++v33;
      *(v34 + 16) = v41 + 1;
      v42 = v34 + 8 * v41;
      *(v42 + 32) = v38;
      *(v42 + 36) = v39;
      if (a7 == v33)
      {
        v11 = v52;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_6_1();
          sub_220F36C18();
          v11 = v47;
        }

        v46 = *(v11 + 16);
        v45 = *(v11 + 24);
        if (v46 >= v45 >> 1)
        {
          OUTLINED_FUNCTION_0_1(v45);
          sub_220F36C18();
          v11 = v48;
        }

        *(v11 + 16) = v46 + 1;
        *(v11 + 8 * v46 + 32) = v34;
        v32 = v50;
        if (v50 == a7)
        {

          goto LABEL_32;
        }

        goto LABEL_14;
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
    goto LABEL_38;
  }

  *(v12 + 64) = v11;

LABEL_32:

  *(v14 + 72) = v11;
}

uint64_t sub_220F5A9A4()
{
}

uint64_t sub_220F5A9D4()
{

  return v0;
}

uint64_t sub_220F5A9FC()
{
  sub_220F5A9D4();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

uint64_t sub_220F5AA64(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_220FC17A0();
  OUTLINED_FUNCTION_6();
  v11 = v10;
  MEMORY[0x28223BE20](v12, v13);
  v15 = &__dst[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27CF9BFA0 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_27CF9CAF0);
  (*(v11 + 16))(v15, v16, v9);
  sub_220FC1700();
  v17 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_keyedTextures;
  type metadata accessor for MTLPixelFormat(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9F9E0);
  sub_220E4D1BC();
  v18 = MEMORY[0x277D84F90];
  *(v5 + v17) = sub_220FC2600();
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_lastAnimationFrameIndex) = -1;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_tileCost) = 0;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelTextures) = v18;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_currentPixelTextureIndex) = 0;
  v19 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelReaderInflightSemaphore;
  *(v5 + v19) = dispatch_semaphore_create(2);
  v20 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelReaderTransformType;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelReaderTransformType) = 0;
  v21 = v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest;
  __dst[216] = 1;
  *(v21 + 48) = 0;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *v21 = 0u;
  *(v21 + 56) = 1;
  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_220E1E2A8(a2, v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_viewportManager);
  *(v5 + 56) = a3;
  memcpy((v5 + 64), a4, 0xC8uLL);
  swift_unknownObjectRetain();
  sub_220E4E4D8(a4, __dst);
  v22 = sub_220F7C110();
  v23 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v24 = sub_220F62984(*(*v23 + 16), v22);

  if (v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v18;
  }

  *(v5 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_supportedRenderResourceTypes) = v25;
  memcpy(__dst, (a4 + 16), 0xB8uLL);
  if (sub_220E435CC(__dst))
  {
    sub_220E3FCD0(a4);
  }

  else
  {
    sub_220E22B0C(__dst);
    sub_220E3FCD0(a4);
    *(v5 + v20) = 1;
  }

  v26 = v28;
  sub_220E1E2A8(v28, v5 + 16);

  sub_220F5BB10();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v26);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v5;
}

uint64_t sub_220F5ADAC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);
  swift_unknownObjectRelease();
  memcpy(__dst, (v0 + 64), sizeof(__dst));
  sub_220E3FCD0(__dst);
  v1 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_signposter;
  sub_220FC1720();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_viewportManager);

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_delegate);

  sub_220E22990(v0 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelDelegate);
  return v0;
}

unint64_t sub_220F5AF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unint64_t a8, double a9, float a10, double a11, uint64_t *a12, uint64_t a13, uint64_t a14)
{
  v15 = v14;
  v70 = a7;
  v64 = a6;
  v69 = a5;
  v68 = a4;
  v67 = a3;
  v66 = a2;
  v65 = a1;
  v71 = sub_220FC16F0();
  OUTLINED_FUNCTION_6();
  v21 = v20;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v58 - v28;
  v30 = a12[1];
  v63 = *a12;
  v62 = v30;
  v61 = *(a12 + 16);
  sub_220FC1710();
  sub_220FC16D0();
  v31 = sub_220FC1710();
  sub_220FC3040();
  if (sub_220FC3360())
  {
    *OUTLINED_FUNCTION_20_0() = 0;
    v32 = sub_220FC16E0();
    OUTLINED_FUNCTION_29_11(&dword_220E15000, v33, v34, v32, "renderTile", "");
    OUTLINED_FUNCTION_15();
  }

  (*(v21 + 16))(v25, v29, v71);
  sub_220FC1760();
  swift_allocObject();
  sub_220FC1750();
  v35 = sub_220FC1710();
  sub_220FC3050();
  if (sub_220FC3360())
  {
    *OUTLINED_FUNCTION_20_0() = 0;
    v36 = sub_220FC16E0();
    OUTLINED_FUNCTION_29_11(&dword_220E15000, v37, v38, v36, "receivedRenderResource", "");
    OUTLINED_FUNCTION_15();
  }

  [*(v14 + 56) beginScope];
  v39 = *(v14 + 40);
  v40 = *(v14 + 48);
  __swift_project_boxed_opaque_existential_1((v14 + 16), v39);
  v41 = OUTLINED_FUNCTION_14_20();
  v43 = v42(v41, v40);
  v44 = sub_220FA3484(v43 & 1);
  if (*(v14 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_lastAnimationFrameIndex) == a8)
  {
    goto LABEL_10;
  }

  *(v14 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_lastAnimationFrameIndex) = a8;
  if ((a8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = sub_220F5C7D4(a8, v70);
  result = a8 + 1;
  if (__OFADD__(a8, 1))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v46 = sub_220F5C7D4(result, v70);
    sub_220F5BE0C(v15, v14, v46);
LABEL_10:
    v59 = a14;
    v58 = a13;
    v47 = v15[6];
    __swift_project_boxed_opaque_existential_1(v15 + 2, v15[5]);
    v48 = OUTLINED_FUNCTION_14_20();
    v50 = v49(v48, v47);
    v60 = v21;
    if ((v50 & 1) == 0)
    {
      v52 = 0;
LABEL_15:
      v53 = *(v15 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest + 16);
      v74[0] = *(v15 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest);
      v74[1] = v53;
      v75[0] = *(v15 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest + 32);
      *(v75 + 9) = *(v15 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelPointOfInterest + 41);
      v54 = v65;
      v55 = v66;
      v56 = v67;
      sub_220F5B84C(a9, a11, v44, v65, v66, v67, v74, a8);
      v72[0] = v63;
      v72[1] = v62;
      v73 = v61;
      (*(*v15 + 488))(v54, v55, v56, v68, v69, v64 & 1, v57 & 1, v52, a9, a10, a11, v44, v70, a8, v29, v72);
      swift_unknownObjectRelease();
      sub_220F5D9A0(v44, v58, v59, v15);

      return (*(v60 + 8))(v29, v71);
    }

    v14 = *(v15 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_currentPixelTextureIndex);
    v51 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelTextures;
    OUTLINED_FUNCTION_5_1();
    v39 = *(v15 + v51);
    sub_220F227B4(v14, (v39 & 0xC000000000000001) == 0, v39);
    if ((v39 & 0xC000000000000001) == 0)
    {
      v52 = *(v39 + 8 * v14 + 32);
      swift_unknownObjectRetain();
      goto LABEL_15;
    }

LABEL_18:

    v52 = MEMORY[0x223D9CB30](v14, v39);

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_220F5B458()
{
  OUTLINED_FUNCTION_29_2();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9CF70);
  OUTLINED_FUNCTION_2();
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v32[-v11 - 8];
  v13 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_tileCost;
  if (*(v1 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_tileCost))
  {
    goto LABEL_2;
  }

  v14 = *(v3 + OBJC_IVAR____TtC11WeatherMaps11OverlayTile_resourceProviders);
  if (*(v14 + 16))
  {
    v15 = *(v14 + 32);
    v16 = *(v15 + 48);
    v17 = *(v15 + 56);
    swift_unknownObjectRetain();
    sub_220EE8D08(v16, v17);
    sub_220EA0A74(512, 512, v16, v17);
    v19 = v18;
    sub_220E5E3BC(v16, v17);
    memcpy(v32, (v1 + 64), sizeof(v32));
    v20 = sub_220EC02F4();
    if (v20 < 0)
    {
      __break(1u);
    }

    else if ((v19 * v20) >> 64 == (v19 * v20) >> 63)
    {
      *(v1 + v13) = v19 * v20;
      if (qword_27CF9C000 == -1)
      {
        goto LABEL_7;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_24:
    OUTLINED_FUNCTION_0_39();
LABEL_7:
    v21 = __swift_project_value_buffer(v4, qword_27CF9CBE0);
    sub_220ED6038(v21, v12, &qword_27CF9CF70);
    v22 = sub_220FC17A0();
    if (__swift_getEnumTagSinglePayload(v12, 1, v22) == 1)
    {
      swift_unknownObjectRelease();
      sub_220E3B2DC(v12, &qword_27CF9CF70);
    }

    else
    {

      v25 = sub_220FC1780();
      v26 = sub_220FC2E30();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        OUTLINED_FUNCTION_31_9(v27, 3.852e-34);
        _os_log_impl(&dword_220E15000, v25, v26, "estimatedCost: [OverlayRenderer] tileCost=%ld bytes", v27, 0xCu);
        OUTLINED_FUNCTION_15();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      (*(*(v22 - 8) + 8))(v12, v22);
    }

    goto LABEL_2;
  }

  if (qword_27CF9C000 != -1)
  {
    OUTLINED_FUNCTION_0_39();
  }

  v23 = __swift_project_value_buffer(v4, qword_27CF9CBE0);
  sub_220ED6038(v23, v8, &qword_27CF9CF70);
  v24 = sub_220FC17A0();
  if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
  {
    sub_220E3B2DC(v8, &qword_27CF9CF70);
  }

  else
  {

    v28 = sub_220FC1780();
    v29 = sub_220FC2E30();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_31_9(v30, 3.852e-34);
      _os_log_impl(&dword_220E15000, v28, v29, "estimatedCost: [OverlayRenderer] falling back to default -- tileCost=%ld bytes", v30, 0xCu);
      OUTLINED_FUNCTION_15();
    }

    else
    {
    }

    (*(*(v24 - 8) + 8))(v8, v24);
  }

  *(v1 + v13) = 0x100000;
LABEL_2:
  OUTLINED_FUNCTION_22();
}

void sub_220F5B84C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v9 = v8;
  v17 = v8[6];
  __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
  v18 = OUTLINED_FUNCTION_60_2();
  if (v19(v18, v17))
  {
    v20 = v8 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelDelegate;
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v22 = Strong;
      v39 = *(v20 + 1);
      v23 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v8[5]);
      v24 = OUTLINED_FUNCTION_60_2();
      v26 = &qword_27CF9F000;
      if (v25(v24, v23))
      {
        v27 = *(v8 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_currentPixelTextureIndex);
        v28 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelTextures;
        OUTLINED_FUNCTION_5_1();
        v29 = *(v9 + v28);
        sub_220F227B4(v27, (v29 & 0xC000000000000001) == 0, v29);
        if ((v29 & 0xC000000000000001) != 0)
        {

          v30 = MEMORY[0x223D9CB30](v27, v29);
        }

        else
        {
          v30 = *(v29 + 8 * v27 + 32);
          swift_unknownObjectRetain();
        }

        v26 = &qword_27CF9F000;
      }

      else
      {
        v30 = 0;
      }

      if (!sub_220F5E868(a7, a4, a5, a6, a1) || !sub_220EB69EC())
      {
        swift_unknownObjectRelease();
        goto LABEL_14;
      }

      v31 = *(v9 + OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelReaderInflightSemaphore);
      sub_220FC30A0();

      v32 = v26[107];
      v33 = *(v9 + v32);
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (!v34)
      {
        *(v9 + v32) = v35 % 2;
        v36 = swift_allocObject();
        swift_weakInit();
        v37 = swift_allocObject();
        *(v37 + 16) = a4;
        *(v37 + 24) = a5;
        *(v37 + 32) = a6;
        *(v37 + 40) = a1;
        *(v37 + 48) = a8;
        *(v37 + 56) = a2;
        v38 = a7[1];
        *(v37 + 64) = *a7;
        *(v37 + 80) = v38;
        *(v37 + 96) = a7[2];
        *(v37 + 105) = *(a7 + 41);
        *(v37 + 128) = v30;
        *(v37 + 136) = v22;
        *(v37 + 144) = v39;
        *(v37 + 152) = v36;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();

        sub_220FA339C(sub_220F5EEE8, v37);

        swift_unknownObjectRelease();
LABEL_14:
        swift_unknownObjectRelease();
        return;
      }

      __break(1u);
    }
  }
}

uint64_t sub_220F5BB10()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_14_20();
  result = v3(v2, v1);
  if (result)
  {
    v5 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_pixelTextures;
    swift_beginAccess();
    *(v0 + v5) = MEMORY[0x277D84F90];

    v6 = 0;
    do
    {
      v7 = v6;
      result = sub_220F5BCE8();
      if (result)
      {
        v8 = result;
        sub_220FC35C0();

        v9 = sub_220FC38F0();
        MEMORY[0x223D9BD60](v9);

        v10 = sub_220FC26C0();

        [v8 setLabel_];

        v11 = swift_beginAccess();
        MEMORY[0x223D9BEA0](v11);
        if (*((*(v0 + v5) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + v5) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_220FC29C0();
        }

        sub_220FC29F0();
        result = swift_endAccess();
      }

      v6 = 1;
    }

    while ((v7 & 1) == 0);
  }

  return result;
}

id sub_220F5BCE8()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = OUTLINED_FUNCTION_60_2();
  v3(v2, v1);
  v4 = *(*__swift_project_boxed_opaque_existential_1(v8, v8[3]) + 16);
  swift_unknownObjectRetain();
  __swift_destroy_boxed_opaque_existential_0(v8);
  v5 = [objc_opt_self() texture2DDescriptorWithPixelFormat:10 width:512 height:512 mipmapped:0];
  swift_getObjectType();
  [v5 setStorageMode_];
  [v5 setUsage_];
  [v5 setFramebufferOnly_];
  v6 = [v4 newTextureWithDescriptor_];
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_220F5BE0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_keyedTextures;
  swift_beginAccess();
  v48 = a1;
  v5 = *(a1 + v4);
  v6 = v5 + 64;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v43 = v5 + 64;
  v44 = v10;
  v41 = v5;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v15 = (v13 << 9) | (8 * v14);
      v16 = *(*(v5 + 48) + v15);
      v17 = *(*(v5 + 56) + v15);
      v18 = v48[5];
      v19 = v48[6];
      __swift_project_boxed_opaque_existential_1(v48 + 2, v18);
      v20 = *(v19 + 16);

      if (*(v20(v18, v19) + 16))
      {
        v49 = v17;
        sub_220F1937C();
        v45 = v16;
        if (v21)
        {
          break;
        }
      }

      v12 = v13;
LABEL_32:
      v6 = v43;
      v10 = v44;
      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v22 = 0;
    result = v17;
    v23 = v17 + 64;
    v24 = 1 << *(v17 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v25 & *(v17 + 64);
    v27 = (v24 + 63) >> 6;
    while (v26)
    {
LABEL_20:
      v29 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v30 = v29 | (v22 << 6);
      v31 = *(result + 48) + 40 * v30;
      v32 = *(v31 + 16);
      v53[0] = *v31;
      v53[1] = v32;
      v33 = *(v31 + 32);
      v54 = v33;
      if (v33 != a2 && v33 != a3)
      {
        v35 = *(*(result + 56) + 8 * v30);
        swift_unknownObjectRetain();
        v36 = sub_220F5AEA4();
        v37 = sub_220F969B4(v51, v45);
        if (*v38)
        {
          v39 = v38;
          v42 = v37;
          sub_220F192DC(v53);
          if (v40)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v50 = *v39;
            *v39 = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D978);
            sub_220FC3710();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
            sub_220F5EDAC();
            sub_220FC3730();
            *v39 = v50;
          }

          (v42)(v51, 0);
          (v36)(v52, 0);
        }

        else
        {
          (v37)(v51, 0);
          (v36)(v52, 0);
        }

        sub_220F42704(v35);
        swift_unknownObjectRelease();
        result = v49;
      }
    }

    while (1)
    {
      v28 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v28 >= v27)
      {

        sub_220F427A0();

        v12 = v13;
        v5 = v41;
        goto LABEL_32;
      }

      v26 = *(v23 + 8 * v28);
      ++v22;
      if (v26)
      {
        v22 = v28;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220F5C1F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = OBJC_IVAR____TtC11WeatherMaps15OverlayRenderer_keyedTextures;
  swift_beginAccess();
  v53 = a1;
  v8 = *(a1 + v7);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;

  v15 = 0;
  v47 = v8 + 64;
  v48 = v13;
  v45 = v8;
  if (v12)
  {
    while (1)
    {
      v16 = v15;
LABEL_9:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = (v16 << 9) | (8 * v17);
      v19 = *(*(v8 + 48) + v18);
      v20 = *(*(v8 + 56) + v18);
      v21 = v53[5];
      v22 = v53[6];
      __swift_project_boxed_opaque_existential_1(v53 + 2, v21);
      v23 = *(v22 + 16);

      if (*(v23(v21, v22) + 16))
      {
        v54 = v20;
        sub_220F1937C();
        v49 = v19;
        if (v24)
        {
          break;
        }
      }

      v15 = v16;
LABEL_39:
      v9 = v47;
      v13 = v48;
      if (!v12)
      {
        goto LABEL_6;
      }
    }

    v25 = 0;
    result = v20;
    v26 = v20 + 64;
    v27 = 1 << *(v20 + 32);
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    else
    {
      v28 = -1;
    }

    v29 = v28 & *(v20 + 64);
    v30 = (v27 + 63) >> 6;
    while (v29)
    {
LABEL_20:
      v32 = __clz(__rbit64(v29));
      v29 &= v29 - 1;
      v33 = v32 | (v25 << 6);
      v34 = *(result + 48) + 40 * v33;
      v35 = *(v34 + 16);
      v58[0] = *v34;
      v58[1] = v35;
      v59 = *(v34 + 32);
      if (*&v58[0] == a2 && *(&v58[0] + 1) == a3 && v35 == a4 && *(&v35 + 2) == a5)
      {
        v39 = *(*(result + 56) + 8 * v33);
        swift_unknownObjectRetain();
        v40 = sub_220F5AEA4();
        v41 = sub_220F969B4(v56, v49);
        if (*v42)
        {
          v43 = v42;
          v46 = v41;
          sub_220F192DC(v58);
          if (v44)
          {
            swift_isUniquelyReferenced_nonNull_native();
            v55 = *v43;
            *v43 = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CF9D978);
            sub_220FC3710();
            swift_unknownObjectRelease();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CF9D960);
            sub_220F5EDAC();
            sub_220FC3730();
            *v43 = v55;
          }

          (v46)(v56, 0);
          (v40)(v57, 0);
        }

        else
        {
          (v41)(v56, 0);
          (v40)(v57, 0);
        }

        sub_220F42704(v39);
        swift_unknownObjectRelease();
        result = v54;
      }
    }

    while (1)
    {
      v31 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v31 >= v30)
      {

        sub_220F427A0();

        v15 = v16;
        v8 = v45;
        goto LABEL_39;
      }

      v29 = *(v26 + 8 * v31);
      ++v25;
      if (v29)
      {
        v25 = v31;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
      }

      v12 = *(v9 + 8 * v16);
      ++v15;
      if (v12)
      {
        goto LABEL_9;
      }
    }
  }

  __break(1u);
  return result;
}