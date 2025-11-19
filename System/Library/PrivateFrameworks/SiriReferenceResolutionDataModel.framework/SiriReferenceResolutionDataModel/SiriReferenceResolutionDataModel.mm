uint64_t sub_268C644F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RREntity.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  v32 = 0;
  *&v33 = 0xE000000000000000;
  sub_268C88DF4();
  v34 = v32;
  v35 = v33;
  MEMORY[0x26D629FC0](540697705, 0xE400000000000000);
  MEMORY[0x26D629FC0](*v1, v1[1]);
  MEMORY[0x26D629FC0](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x26D629FC0](v1[2], v1[3]);
  MEMORY[0x26D629FC0](0x69746E456F73750ALL, 0xEC000000203A7974);
  v11 = v0[4];
  sub_268C88AC4();
  v12 = sub_268C88A74();
  v14 = v13;

  MEMORY[0x26D629FC0](v12, v14);

  MEMORY[0x26D629FC0](0x615664657079740ALL, 0xED0000203A65756CLL);
  v15 = type metadata accessor for RREntity();
  v16 = v15[7];
  sub_268C644F0(v0 + v16, v10);
  v17 = sub_268C88C24();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v17);
  sub_268C64978(v10);
  if (EnumTagSinglePayload == 1)
  {
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    sub_268C644F0(v1 + v16, v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v17) == 1)
    {
      sub_268C64978(v8);
      v20 = 0;
      v19 = 0;
    }

    else
    {
      v20 = sub_268C88C14();
      v19 = v21;
      (*(*(v17 - 8) + 8))(v8, v17);
    }
  }

  v32 = v20;
  *&v33 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4648, &qword_268C89718);
  sub_268C88E44();

  MEMORY[0x26D629FC0](0x707954617461640ALL, 0xEB00000000203A65);
  v22 = (v1 + v15[8]);
  if (v22[1])
  {
    v23 = *v22;
    v24 = v22[1];
  }

  else
  {
    v24 = 0xE300000000000000;
    v23 = 7104878;
  }

  MEMORY[0x26D629FC0](v23, v24);

  MEMORY[0x26D629FC0](0x203A70756F72670ALL, 0xE800000000000000);
  v25 = v1 + v15[10];
  v32 = *v25;
  v33 = *(v25 + 8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4650, &qword_268C89720);
  v26 = sub_268C88C94();
  MEMORY[0x26D629FC0](v26);

  MEMORY[0x26D629FC0](0x7461646174656D0ALL, 0xEB00000000203A61);
  v27 = MEMORY[0x26D62A020](*(v1 + v15[11]), &type metadata for RRMetadata);
  MEMORY[0x26D629FC0](v27);

  MEMORY[0x26D629FC0](0xD000000000000016, 0x8000000268C8D8E0);
  if (*(v1 + v15[12] + 8))
  {
    v28 = 0x6465746361646572;
  }

  else
  {
    v28 = 7104878;
  }

  if (*(v1 + v15[12] + 8))
  {
    v29 = 0xE800000000000000;
  }

  else
  {
    v29 = 0xE300000000000000;
  }

  MEMORY[0x26D629FC0](v28, v29);

  return v34;
}

uint64_t sub_268C64978(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C64A08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t type metadata accessor for RREntity()
{
  result = qword_280D69750;
  if (!qword_280D69750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_5_2()
{

  return sub_268C88FB4();
}

void *OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256);
  *v3 = a1;
  result = v3;
  v5 = *(v2 - 136);
  return result;
}

uint64_t sub_268C64C1C()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_40_0();
  sub_268C88DF4();
  MEMORY[0x26D629FC0](540697705, 0xE400000000000000);
  MEMORY[0x26D629FC0](*(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id), *(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8));
  MEMORY[0x26D629FC0](0x646E75427070610ALL, 0xEE00203A6449656CLL);
  MEMORY[0x26D629FC0](*(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId), *(v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8));
  MEMORY[0x26D629FC0](0x69746E456F73750ALL, 0xEC000000203A7974);
  v6 = *(v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity);
  sub_268C88AC4();
  sub_268C88A74();

  v7 = OUTLINED_FUNCTION_45();
  MEMORY[0x26D629FC0](v7);

  MEMORY[0x26D629FC0](0x707954617461640ALL, 0xEB00000000203A65);
  if (OUTLINED_FUNCTION_46(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType))
  {
    v9 = *v8;
  }

  v10 = OUTLINED_FUNCTION_45();
  MEMORY[0x26D629FC0](v10);

  MEMORY[0x26D629FC0](0x203A70756F72670ALL, 0xE800000000000000);
  OUTLINED_FUNCTION_56(v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4650, &qword_268C89720);
  v11 = sub_268C88C94();
  MEMORY[0x26D629FC0](v11);

  MEMORY[0x26D629FC0](0x7461646174656D0ALL, 0xEB00000000203A61);
  v12 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v13 = *(v2 + v12);

  v15 = MEMORY[0x26D62A020](v14, &type metadata for RRMetadata);
  v17 = v16;

  MEMORY[0x26D629FC0](v15, v17);

  MEMORY[0x26D629FC0](0x203A65726F63730ALL, 0xE800000000000000);
  v18 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v19 = *(v2 + v18);
  sub_268C88D54();
  MEMORY[0x26D629FC0](0xD000000000000015, 0x8000000268C8DA80);
  v20 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  sub_268C6736C(v2 + v20, v1, &qword_2802D47B8, &unk_268C8A5B8);
  v21 = sub_268C88C94();
  MEMORY[0x26D629FC0](v21);

  MEMORY[0x26D629FC0](0xD00000000000001DLL, 0x8000000268C8DAA0);
  v22 = (v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v33 = *v22;
  v34 = *(v22 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C0, &qword_268C8A5C8);
  v23 = sub_268C88C94();
  MEMORY[0x26D629FC0](v23);

  MEMORY[0x26D629FC0](0x7461746F6E6E610ALL, 0xEE00203A736E6F69);
  v24 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v25 = *(v2 + v24);
  type metadata accessor for RRAnnotationValue(0);

  v26 = sub_268C88C34();
  v28 = v27;

  MEMORY[0x26D629FC0](v26, v28);

  MEMORY[0x26D629FC0](0x3A6449726573750ALL, 0xE900000000000020);
  v29 = (v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  if (v29[1])
  {
    v30 = *v29;
  }

  v31 = OUTLINED_FUNCTION_63();
  MEMORY[0x26D629FC0](v31);

  return 0;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return sub_268C88FD4();
}

uint64_t RREntity.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4660, &qword_268C89728);
  OUTLINED_FUNCTION_0();
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20]();
  v11 = &v34 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C663B4();
  sub_268C890F4();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v34) = 0;
  OUTLINED_FUNCTION_4();
  sub_268C88F74();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    LOBYTE(v34) = 1;
    OUTLINED_FUNCTION_4();
    sub_268C88F74();
    v34 = v3[4];
    v36 = 2;
    sub_268C88BC4();
    OUTLINED_FUNCTION_10();
    sub_268C65594(v17, v18);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88FB4();
    v19 = type metadata accessor for RREntity();
    v20 = v19[7];
    LOBYTE(v34) = 3;
    sub_268C88C24();
    OUTLINED_FUNCTION_9();
    sub_268C65594(v21, v22);
    OUTLINED_FUNCTION_15();
    sub_268C88F64();
    v23 = (v3 + v19[8]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v34) = 4;
    OUTLINED_FUNCTION_4();
    sub_268C88F54();
    v26 = (v3 + v19[9]);
    v27 = v26[1];
    v34 = *v26;
    *&v35 = v27;
    v36 = 5;
    sub_268C66A34(v34, v27);
    sub_268C669E0();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88F64();
    sub_268C65EE0(v34, v35);
    v28 = v3 + v19[10];
    v34 = *v28;
    v35 = *(v28 + 8);
    v36 = 6;
    v29 = sub_268C6698C();

    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_15();
    sub_268C88F64();

    if (!v29)
    {
      v34 = *(v3 + v19[11]);
      v36 = 7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
      sub_268C66738(&qword_280D69410, sub_268C6FF64);
      OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_15();
      sub_268C88FB4();
      v30 = (v3 + v19[12]);
      v31 = *v30;
      v32 = v30[1];
      LOBYTE(v34) = 8;
      OUTLINED_FUNCTION_4();
      sub_268C88F54();
    }
  }

  return (*(v7 + 8))(v11, v5);
}

uint64_t sub_268C654EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_268C65540(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 17))
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

uint64_t sub_268C65594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_3()
{

  return sub_268C88F24();
}

void OUTLINED_FUNCTION_1_6()
{

  JUMPOUT(0x26D629FC0);
}

void OUTLINED_FUNCTION_8()
{
  v7 = (v5 + v6[10]);
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v8 = v5 + v6[12];
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v0;
  v9 = v5 + v6[8];
}

void RREntity.init(from:)()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v37 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4670, &qword_268C89738);
  OUTLINED_FUNCTION_0();
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  v12 = type metadata accessor for RREntity();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v38 = (v16 - v15);
  v39 = v14;
  v17 = (v16 - v15 + v14[10]);
  *v17 = 0;
  v17[1] = 0;
  v18 = v17;
  v17[2] = 0;
  v19 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_268C663B4();
  sub_268C890D4();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    v20 = v18[1];
  }

  else
  {
    LOBYTE(v40) = 0;
    *v38 = sub_268C88EE4();
    v38[1] = v21;
    OUTLINED_FUNCTION_14(1);
    v38[2] = sub_268C88EE4();
    v38[3] = v22;
    sub_268C88BC4();
    OUTLINED_FUNCTION_10();
    sub_268C65594(v23, v24);
    OUTLINED_FUNCTION_17();
    sub_268C88F24();
    v38[4] = v40;
    sub_268C88C24();
    LOBYTE(v40) = 3;
    OUTLINED_FUNCTION_9();
    sub_268C65594(v25, v26);
    OUTLINED_FUNCTION_17();
    sub_268C88ED4();
    sub_268C65FC8(v1, v38 + v39[7]);
    OUTLINED_FUNCTION_14(4);
    v27 = sub_268C88EB4();
    v28 = (v38 + v39[8]);
    *v28 = v27;
    v28[1] = v29;
    sub_268C660B8();
    OUTLINED_FUNCTION_30();
    *(v38 + v39[9]) = v40;
    sub_268C66154();
    OUTLINED_FUNCTION_30();
    v30 = v18[1];

    *v18 = v40;
    v18[2] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
    sub_268C66738(&qword_280D691B8, sub_268C6FFB8);
    OUTLINED_FUNCTION_17();
    sub_268C88F24();
    *(v38 + v39[11]) = v40;
    OUTLINED_FUNCTION_14(8);
    v36 = sub_268C88EB4();
    v32 = v31;
    v33 = (v38 + v39[12]);
    v34 = OUTLINED_FUNCTION_3_0();
    v35(v34);
    *v33 = v36;
    v33[1] = v32;
    sub_268C661A8(v38, v37);
    __swift_destroy_boxed_opaque_existential_0Tm(v3);
    sub_268C6620C(v38);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_30()
{

  return sub_268C88ED4();
}

uint64_t sub_268C65E88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_268C65EE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C65EF4(a1, a2);
  }

  return a1;
}

uint64_t sub_268C65EF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t RRMentionedEvent.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_1_7();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_268C65F88(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_268C65FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_13_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_13_2()
{

  return sub_268C88E94();
}

uint64_t OUTLINED_FUNCTION_13_3()
{

  return swift_allocObject();
}

unint64_t sub_268C660B8()
{
  result = qword_280D693E8;
  if (!qword_280D693E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693E8);
  }

  return result;
}

unint64_t sub_268C66154()
{
  result = qword_280D69388;
  if (!qword_280D69388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69388);
  }

  return result;
}

uint64_t sub_268C661A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RREntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C6620C(uint64_t a1)
{
  v2 = type metadata accessor for RREntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t OUTLINED_FUNCTION_15_0()
{
  v2 = *(v0 - 96);

  return sub_268C88F44();
}

uint64_t OUTLINED_FUNCTION_15_1()
{
  v2 = *(v0 - 96);

  return sub_268C88F44();
}

uint64_t RREntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_20();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_268C663B4()
{
  result = qword_280D69548;
  if (!qword_280D69548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69548);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 32) = a1;
  *(v1 + 40) = v2;

  return sub_268C88D74();
}

double OUTLINED_FUNCTION_2_1()
{
  v3 = *(v0 - 152);
  v1 = *(v0 - 144);
  return 0.0;
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return sub_268C88F24();
}

uint64_t OUTLINED_FUNCTION_2_4()
{

  return sub_268C88DA4();
}

unint64_t sub_268C66528(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x7469746E456F7375;
      break;
    case 3:
      result = 0x6C61566465707974;
      break;
    case 4:
      result = 0x6570795461746164;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RREntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268C66710);
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

uint64_t sub_268C66738(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4668, &qword_268C89730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RREntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t OUTLINED_FUNCTION_12_2()
{
  v2 = *(v0 - 104);

  return sub_268C88F44();
}

unint64_t OUTLINED_FUNCTION_12_3()
{

  return sub_268C83C24();
}

uint64_t OUTLINED_FUNCTION_9_2()
{

  return sub_268C88FB4();
}

unint64_t sub_268C6698C()
{
  result = qword_280D69558;
  if (!qword_280D69558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69558);
  }

  return result;
}

unint64_t sub_268C669E0()
{
  result = qword_280D69668;
  if (!qword_280D69668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69668);
  }

  return result;
}

uint64_t sub_268C66A34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_268C66A48(a1, a2);
  }

  return a1;
}

uint64_t sub_268C66A48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

id RREntity.toAnnotatedEntity(addUsoIdentifierIfNotPresent:configuration:)(char a1, uint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  (MEMORY[0x28223BE20])();
  v10 = &v117 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  (MEMORY[0x28223BE20])();
  v15 = &v117 - v14;
  v16 = sub_268C88A64();
  v17 = OUTLINED_FUNCTION_0_0(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v128 = v23 - v22;
  v24 = a2[1];
  v25 = *(a2 + 16);
  if (v24 == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = *a2;
  }

  if (v24 == 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = a2[1];
  }

  v28 = v3[1];
  v129 = *v3;
  v30 = v3[2];
  v29 = v3[3];
  v126 = v26;
  v127 = v30;
  v124 = v15;
  v125 = v27;
  if (a1)
  {
    *&v121 = v21;
    v122 = v20;
    v123 = v10;
    v31 = OUTLINED_FUNCTION_64();
    sub_268C6718C(v31, v32);

    v33 = v128;
    sub_268C88A54();
    v34 = v3[4];
    v35 = sub_268C88BA4();
    MEMORY[0x28223BE20](v35);
    *(&v117 - 2) = v33;
    v36 = v29;
    v37 = sub_268C671C0(sub_268C671A0, (&v117 - 4), v35);

    if (v37)
    {
      v38 = type metadata accessor for RREntity();
      OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v38[7]);
      v39 = v38[9];
      v40 = (v3 + v38[8]);
      v41 = *v40;
      v119 = v40[1];
      v120 = v41;
      v42 = *(v3 + v39);
      v43 = *(v3 + v39 + 8);
      OUTLINED_FUNCTION_7_1();
      v44 = v123;
      OUTLINED_FUNCTION_16();
      __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);

      sub_268C66A34(v42, v43);
      OUTLINED_FUNCTION_50();
      OUTLINED_FUNCTION_66();

      sub_268C88C44();
      v49 = OUTLINED_FUNCTION_36_0();
      v50 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v49));
      v51 = OUTLINED_FUNCTION_2_1();
      v53 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v129, v28, v127, v29, v34, v124, v3, v52, v51, v42, v43, v52, v3, v44, 0, v122, v123, v124, v125);
    }

    else
    {
      sub_268C88BB4();
      v76 = sub_268C88A94();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      v79 = OUTLINED_FUNCTION_20();
      v80 = MEMORY[0x26D629D90](v79);
      sub_268C88AB4();
      sub_268C88A44();
      v81 = MEMORY[0x26D629DB0](v80);
      v82 = v123;
      if (v81)
      {
        v83 = v81;
        v84 = type metadata accessor for RREntity();
        OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v84[7]);
        v85 = v84[9];
        v86 = (v3 + v84[8]);
        v87 = *v86;
        v119 = v86[1];
        v120 = v87;
        v89 = *(v3 + v85);
        v88 = *(v3 + v85 + 8);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);

        sub_268C66A34(v89, v88);
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_66();

        sub_268C88C44();
        v94 = OUTLINED_FUNCTION_36_0();
        v95 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v94));
        v96 = OUTLINED_FUNCTION_2_1();
        v121 = v82;
        v119 = v97;
        v120 = v3;
        v117 = v89;
        v118 = v88;
        v98 = v129;
        v99 = v28;
        v100 = v127;
        v101 = v36;
        v102 = v83;
      }

      else
      {
        v103 = type metadata accessor for RREntity();
        OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v103[7]);
        v104 = v103[9];
        v105 = (v3 + v103[8]);
        v106 = *v105;
        v119 = v105[1];
        v120 = v106;
        v107 = *(v3 + v104);
        v108 = *(v3 + v104 + 8);
        OUTLINED_FUNCTION_7_1();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_16();
        __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);

        sub_268C66A34(v107, v108);
        OUTLINED_FUNCTION_50();
        OUTLINED_FUNCTION_66();

        sub_268C88C44();
        v113 = OUTLINED_FUNCTION_36_0();
        v114 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v113));
        v96 = OUTLINED_FUNCTION_2_1();
        v121 = v82;
        v119 = v115;
        v120 = v3;
        v117 = v107;
        v118 = v108;
        v98 = v129;
        v99 = v28;
        v100 = v127;
        v101 = v36;
        v102 = v34;
      }

      v53 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v98, v99, v100, v101, v102, v124, v120, v119, v96, v117, v118, v119, v120, v121, *(&v121 + 1), v122, v123, v124, v125);
    }

    (*(v121 + 8))(v128, v122);
  }

  else
  {
    v123 = v3[4];
    v54 = type metadata accessor for RREntity();
    OUTLINED_FUNCTION_68(&qword_2802D4640, &qword_268C89710, v54[7]);
    v55 = v54[9];
    v56 = (v3 + v54[8]);
    v57 = v56[1];
    v128 = *v56;
    v58 = *(v3 + v55);
    v122 = *(v3 + v55 + 8);
    v59 = v54[11];
    v60 = v3 + v54[10];
    v130 = *v60;
    v121 = *(v60 + 8);
    v131 = v121;
    v61 = *(v3 + v59);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
    v66 = OUTLINED_FUNCTION_64();
    sub_268C6718C(v66, v67);
    v68 = v57;

    v69 = v29;

    v70 = v123;

    v71 = v122;
    sub_268C66A34(v58, v122);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_66();

    sub_268C88C44();
    v72 = OUTLINED_FUNCTION_36_0();
    v73 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(v72));
    v74 = OUTLINED_FUNCTION_2_1();
    return RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v129, v28, v127, v69, v70, v124, v128, v68, v74, v58, v71, v75, v61, v10, 0, v122, v123, v124, v125);
  }

  return v53;
}

uint64_t sub_268C6718C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

BOOL sub_268C671C0(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(sub_268C88A64() - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

uint64_t sub_268C67294()
{
  sub_268C88A64();
  sub_268C67324(&qword_280D693D0, MEMORY[0x277D5E4F0]);
  return sub_268C88C64() & 1;
}

uint64_t sub_268C67324(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268C6736C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_20();
  v9(v8);
  return a2;
}

__n128 OUTLINED_FUNCTION_59@<Q0>(__n128 *a1@<X8>)
{
  result = *a1;
  v2 = a1[1].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_7()
{
  sub_268C66A34(v1, v0);
  sub_268C66A34(v3, v2);
  return v1;
}

uint64_t OUTLINED_FUNCTION_7_0()
{

  return sub_268C88E94();
}

uint64_t OUTLINED_FUNCTION_7_1()
{
  v4 = *(v0 + 44);
  v5 = v1 + *(v0 + 40);
  *(v2 - 104) = *v5;
  v6 = *(v5 + 8);
  *(v2 - 224) = v6;
  *(v2 - 96) = v6;
  v7 = *(v1 + v4);

  return sub_268C889E4();
}

uint64_t OUTLINED_FUNCTION_7_2()
{

  return sub_268C88E94();
}

__n128 OUTLINED_FUNCTION_48@<Q0>(uint64_t a1@<X8>, uint64_t a2, unint64_t a3, __n128 a4)
{
  v5 = (v4 + a1);
  result = a4;
  *v5 = a4;
  v5[1].n128_u64[0] = a3;
  return result;
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, unint64_t a11, __int128 *a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v43 = *a12;
  v42 = *(a12 + 2);
  v27 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  v32 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v34 = a1;
  *(v34 + 1) = a2;
  v35 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v35 = a3;
  *(v35 + 1) = a4;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  sub_268C6736C(a6, &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_typedValue], &qword_2802D4640, &qword_268C89710);
  v36 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v36 = a7;
  *(v36 + 1) = a8;
  v37 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v37 = a10;
  v37[1] = a11;
  v38 = &v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group];
  *v38 = v43;
  *(v38 + 2) = v42;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a13;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0();

  sub_268C66A34(a10, a11);
  sub_268C67908(a14, &v19[v27]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0();
  *v32 = a15;
  v32[8] = a16 & 1;
  *&v19[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a17;
  OUTLINED_FUNCTION_37_0();
  v39 = *(v33 + 1);
  *v33 = a18;
  *(v33 + 1) = a19;

  v46.receiver = v19;
  v46.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v40 = objc_msgSendSuper2(&v46, sel_init);
  sub_268C65EE0(a10, a11);

  sub_268C65E88(a14, &qword_2802D47B8, &unk_268C8A5B8);
  sub_268C65E88(a6, &qword_2802D4640, &qword_268C89710);
  return v40;
}

uint64_t OUTLINED_FUNCTION_49_0()
{

  return sub_268C88E14();
}

uint64_t sub_268C678D0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268C67908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_37_0()
{

  return swift_beginAccess();
}

uint64_t sub_268C679A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_40_0();
  v9 = OUTLINED_FUNCTION_24_1();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  v16 = &v41 - v15;
  v17 = sub_268C889E4();
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  sub_268C6736C(a3, v16, &qword_2802D47B8, &unk_268C8A5B8);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_268C65E88(v16, &qword_2802D47B8, &unk_268C8A5B8);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
    OUTLINED_FUNCTION_62();
    sub_268C67C58(v30, v31, v32);
    return sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
  }

  else
  {
    (*(v20 + 32))(v25, v16, v17);
    (*(v20 + 16))(v3, v25, v17);
    type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v34, v35, v36, v37);
    OUTLINED_FUNCTION_62();
    sub_268C67C58(v38, v39, v40);
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    return (*(v20 + 8))(v25, v17);
  }
}

uint64_t sub_268C67BF8(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_53();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t OUTLINED_FUNCTION_51@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + a1);
  v4 = *v3;
  v5 = v3[1];
}

uint64_t sub_268C67C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = a2;
  v70 = a1;
  v66 = sub_268C889E4();
  v5 = OUTLINED_FUNCTION_0_0(v66);
  v68 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_1();
  v65 = v9 - v10;
  v12 = MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_60(v12, v13, v14, v15, v16, v17, v18, v19, v64[0]);
  v20 = OUTLINED_FUNCTION_64();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  v23 = OUTLINED_FUNCTION_6(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_10_1();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = v64 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v64 - v33;
  v35 = type metadata accessor for RRAnnotationValue(0);
  v36 = OUTLINED_FUNCTION_3(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_10_1();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v64 - v43;
  sub_268C6736C(a3, v34, &qword_2802D47C8, &qword_268C8A5D0);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    sub_268C65E88(v34, &qword_2802D47C8, &qword_268C8A5D0);
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v35);
    swift_beginAccess();
    v48 = v67;

    sub_268C685C8(v28, v70, v48);
    return swift_endAccess();
  }

  v50 = OUTLINED_FUNCTION_45();
  sub_268C684A0(v50, v51);
  sub_268C68518(v44, v41);
  v52 = *(v68 + 32);
  v52(v69, v41, v66);
  v53 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v64[1] = v3;
  v54 = *(v3 + v53);

  v55 = v67;
  sub_268C6802C(v70, v67, v54, v32);

  if (__swift_getEnumTagSinglePayload(v32, 1, v35) == 1)
  {
    sub_268C65E88(v32, &qword_2802D47C8, &qword_268C8A5D0);
    v56 = v66;
LABEL_7:
    sub_268C68518(v44, v28);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v61, v62, v63, v35);
    OUTLINED_FUNCTION_32_0();

    sub_268C685C8(v28, v70, v55);
    swift_endAccess();
    (*(v68 + 8))(v69, v56);
    return sub_268C687CC(v44);
  }

  v57 = v65;
  v58 = v32;
  v56 = v66;
  v52(v65, v58, v66);
  v59 = sub_268C889C4();
  v60 = *(v68 + 8);
  v60(v57, v56);
  if ((v59 & 1) == 0)
  {
    goto LABEL_7;
  }

  v60(v69, v56);
  return sub_268C687CC(v44);
}

uint64_t sub_268C6802C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_268C68144(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for RRAnnotationValue(0);
    sub_268C68518(v9 + *(*(v10 - 8) + 72) * v8, a4);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for RRAnnotationValue(0);
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

__n128 OUTLINED_FUNCTION_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, __n128 a11)
{
  result = a11;
  *v11 = a11;
  v11[1].n128_u64[0] = a10;
  v14 = *(v12 + 44);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_0()
{

  return sub_268C88F24();
}

unint64_t sub_268C68144(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_268C89064();
  sub_268C88CA4();
  v6 = sub_268C890A4();

  return sub_268C681BC(a1, a2, v6);
}

unint64_t sub_268C681BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_268C88FD4() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_268C68270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_268C68144(a2, a3);
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4888, &qword_268C8CE90);
  if ((sub_268C88E54() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = *v4;
  v14 = sub_268C68144(a2, a3);
  if ((v12 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_268C89014();
    __break(1u);
    return result;
  }

  v11 = v14;
LABEL_5:
  v16 = *v4;
  if (v12)
  {
    v17 = v16[7];
    v18 = type metadata accessor for RRAnnotationValue(0);
    OUTLINED_FUNCTION_6(v18);
    v20 = v17 + *(v19 + 72) * v11;

    return sub_268C6BD00(a1, v20);
  }

  else
  {
    sub_268C683DC(v11, a2, a3, a1, v16);
  }
}

uint64_t sub_268C683DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for RRAnnotationValue(0);
  result = sub_268C684A0(a4, v9 + *(*(v10 - 8) + 72) * a1);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39()
{
  v2 = *(v0 - 144);
  result = *(v0 - 136);
  v4 = *(v0 - 120);
  v3 = *(v0 - 112);
  v5 = *(v0 - 128);
  v6 = *(v0 - 72);
  return result;
}

uint64_t sub_268C684A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C68518(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C685C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v19 - v10;
  v12 = type metadata accessor for RRAnnotationValue(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v16) == 1)
  {
    sub_268C65E88(a1, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C78C98(a2, a3, v11);

    return sub_268C65E88(v11, &qword_2802D47C8, &qword_268C8A5D0);
  }

  else
  {
    sub_268C684A0(a1, v15);
    v18 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v20 = *v4;
    sub_268C68270(v15, a2, a3);

    *v4 = v20;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268C687CC(uint64_t a1)
{
  v2 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268C68828(uint64_t a1, uint64_t a2)
{
  v6 = type metadata accessor for RRAnnotationValue(0);
  v7 = OUTLINED_FUNCTION_3(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_22();
  v17 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v18 = *(v2 + v17);

  sub_268C6802C(a1, a2, v18, v3);

  if (__swift_getEnumTagSinglePayload(v3, 1, v6))
  {
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    return __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  }

  else
  {
    v24 = OUTLINED_FUNCTION_45();
    sub_268C68518(v24, v25);
    sub_268C65E88(v3, &qword_2802D47C8, &qword_268C8A5D0);
    RRAnnotationValue.date.getter();
    return sub_268C687CC(v12);
  }
}

uint64_t sub_268C689A4(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v3 = *(v1 + v2);
}

__n128 OUTLINED_FUNCTION_56@<Q0>(uint64_t a1@<X8>)
{
  *(v1 - 104) = *a1;
  result = *(a1 + 8);
  *(v1 - 96) = result;
  return result;
}

uint64_t RRAnnotationValue.date.getter()
{
  v2 = type metadata accessor for RRAnnotationValue(0);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  sub_268C68518(v0, v1);
  v6 = sub_268C889E4();
  OUTLINED_FUNCTION_3(v6);
  v8 = *(v7 + 32);
  v9 = OUTLINED_FUNCTION_63();
  v10(v9);
  OUTLINED_FUNCTION_31_0();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v6);
}

uint64_t sub_268C68C1C()
{
  v3 = type metadata accessor for RRAnnotationValue(0);
  v4 = OUTLINED_FUNCTION_3(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47C8, &qword_268C8A5D0);
  OUTLINED_FUNCTION_6(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_40_0();
  v11 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v12 = *(v0 + v11);

  sub_268C6802C(0xD000000000000016, 0x8000000268C8D870, v12, v1);

  if (__swift_getEnumTagSinglePayload(v1, 1, v3))
  {
    sub_268C65E88(v1, &qword_2802D47C8, &qword_268C8A5D0);
    sub_268C889E4();
    OUTLINED_FUNCTION_16();
    return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_29_0();
    sub_268C68518(v18, v19);
    sub_268C65E88(v1, &qword_2802D47C8, &qword_268C8A5D0);
    RRAnnotationValue.date.getter();
    return sub_268C687CC(v2);
  }
}

uint64_t OUTLINED_FUNCTION_34_1()
{

  return sub_268C89064();
}

uint64_t OUTLINED_FUNCTION_50()
{
  v2 = *(v0 - 224);

  return type metadata accessor for RRAnnotationValue(0);
}

unint64_t OUTLINED_FUNCTION_50_0@<X0>(char a1@<W8>)
{
  *(v1 - 144) = a1;
  *(v1 - 65) = 0;

  return sub_268C6BF18();
}

uint64_t sub_268C68F10(double a1)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_57();
  result = OUTLINED_FUNCTION_37_0();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_268C68F88(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_58();
  swift_beginAccess();
  sub_268C69024(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_268C69024(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t RRMetadata.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D48E0, &qword_268C8AE18);
  OUTLINED_FUNCTION_0_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_40_0();
  v8 = v1[1];
  v16 = v1[2];
  v17 = v1[3];
  v18 = *v1;
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + 48);
  v12 = a1[4];
  OUTLINED_FUNCTION_23_2(a1, a1[3]);
  sub_268C6938C();
  OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_30_1();
  sub_268C890F4();
  switch(v11)
  {
    case 1:
      sub_268C6BF18();
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        sub_268C80B8C();
        goto LABEL_14;
      }

      break;
    case 2:
      OUTLINED_FUNCTION_50_0(2);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_21_2();
        sub_268C6BFF0();
        goto LABEL_14;
      }

      break;
    case 3:
      OUTLINED_FUNCTION_50_0(3);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80B38();
        goto LABEL_14;
      }

      break;
    case 4:
      OUTLINED_FUNCTION_50_0(4);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_21_2();
        sub_268C80AE4();
        goto LABEL_14;
      }

      break;
    case 5:
      OUTLINED_FUNCTION_50_0(5);
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80A90();
        goto LABEL_14;
      }

      break;
    default:
      sub_268C6BF18();
      OUTLINED_FUNCTION_5_2();
      if (!v2)
      {
        OUTLINED_FUNCTION_27_1();
        OUTLINED_FUNCTION_21_2();
        sub_268C80BE0();
LABEL_14:
        OUTLINED_FUNCTION_5_2();
      }

      break;
  }

  v13 = OUTLINED_FUNCTION_29_1();
  return v14(v13, v4);
}

unint64_t sub_268C6938C()
{
  result = qword_280D69970;
  if (!qword_280D69970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69970);
  }

  return result;
}

uint64_t sub_268C693E0()
{
  v1 = (v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:)()
{
  OUTLINED_FUNCTION_19_0();
  v7 = v6;
  v24 = v8;
  OUTLINED_FUNCTION_2();
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v23 = *v7;
  v15 = *(v7 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  OUTLINED_FUNCTION_33();
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v5, v4, v3, v2, v1, v0, v24, v20, v10, v21, v22, 0);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v38 = v7;
  v39 = v8;
  v36 = v9;
  v37 = v10;
  v12 = v11;
  v14 = v13;
  OUTLINED_FUNCTION_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v23);
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_22();
  v35 = *v4;
  v27 = *(v4 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  (*(v16 + 16))(v22, v6, v2);
  OUTLINED_FUNCTION_33();
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v12, v36, v37, v38, v39, v0, v22, v32, v14, v33, v34, 0, v2);
  (*(v16 + 8))(v6, v2);
  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return swift_beginAccess();
}

uint64_t RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v38 = a8[1];
  v32 = a8[2];
  v33 = *a8;
  v18 = type metadata accessor for RREntity();
  v19 = (a9 + v18[10]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v34 = v18[7];
  sub_268C644F0(a6, a9 + v34);
  swift_getMetatypeMetadata();
  v20 = sub_268C88C94();
  v21 = (a9 + v18[8]);
  *v21 = v20;
  v21[1] = v22;
  v23 = static RRCoder.encode<A>(_:)(a7);
  if (v37)
  {
    sub_268C64978(a6);

    swift_unknownObjectRelease();

    sub_268C64978(a9 + v34);

    v25 = v19[1];
  }

  else
  {
    v27 = v23;
    v28 = v24;
    v29 = (a9 + v18[12]);
    sub_268C64978(a6);
    swift_unknownObjectRelease();
    v30 = (a9 + v18[9]);
    *v30 = v27;
    v30[1] = v28;
    v31 = v19[1];

    *v19 = v33;
    v19[1] = v38;
    v19[2] = v32;
    *(a9 + v18[11]) = a10;
    *v29 = a11;
    v29[1] = a12;
  }

  return result;
}

void *static RRCoder.encode<A>(_:)(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:a1 requiringSecureCoding:1 error:v6];
  v2 = v6[0];
  if (v1)
  {
    v3 = sub_268C889A4();
  }

  else
  {
    v3 = v2;
    sub_268C88974();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t RRAnnotationValue.description.getter()
{
  v2 = sub_268C889E4();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  v8 = type metadata accessor for RRAnnotationValue(0);
  v9 = OUTLINED_FUNCTION_6(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  sub_268C68518(v0, v13 - v12);
  (*(v5 + 32))(v1, v14, v2);
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v15, v16);
  v17 = sub_268C88FC4();
  MEMORY[0x26D629FC0](v17);

  MEMORY[0x26D629FC0](41, 0xE100000000000000);
  v18 = *(v5 + 8);
  v19 = OUTLINED_FUNCTION_55();
  v20(v19);
  return 0x2865746164;
}

void RRMetadata.init(from:)()
{
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_47_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D48B0, &qword_268C8AE10);
  OUTLINED_FUNCTION_0_0(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_2();
  v7 = v0[4];
  OUTLINED_FUNCTION_23_2(v0, v0[3]);
  sub_268C6938C();
  OUTLINED_FUNCTION_44_0();
  sub_268C890D4();
  if (!v1)
  {
    sub_268C69D70();
    OUTLINED_FUNCTION_2_3();
    switch(v24)
    {
      case 1:
        OUTLINED_FUNCTION_21_2();
        sub_268C809E8();
        OUTLINED_FUNCTION_2_3();
        v20 = OUTLINED_FUNCTION_10_2();
        v21(v20);
        v14 = 0;
        v15 = v24;
        goto LABEL_11;
      case 2:
        OUTLINED_FUNCTION_21_2();
        sub_268C6A00C();
        OUTLINED_FUNCTION_2_3();
        v12 = OUTLINED_FUNCTION_10_2();
        v13(v12);
        goto LABEL_8;
      case 3:
        OUTLINED_FUNCTION_21_2();
        sub_268C80994();
        OUTLINED_FUNCTION_2_3();
        v16 = OUTLINED_FUNCTION_10_2();
        v17(v16);
        v15 = v24;
        v14 = v25;
        v18 = v26;
        v19 = v27;
        goto LABEL_14;
      case 4:
        OUTLINED_FUNCTION_21_2();
        sub_268C80940();
        OUTLINED_FUNCTION_2_3();
        v10 = OUTLINED_FUNCTION_10_2();
        v11(v10);
LABEL_8:
        v14 = 0;
        v15 = v24;
LABEL_11:
        v18 = 0uLL;
        v19 = 0uLL;
        goto LABEL_14;
      case 5:
        OUTLINED_FUNCTION_21_2();
        sub_268C808EC();
        OUTLINED_FUNCTION_2_3();
        v22 = OUTLINED_FUNCTION_10_2();
        v23(v22);
        goto LABEL_13;
      default:
        OUTLINED_FUNCTION_21_2();
        sub_268C80A3C();
        OUTLINED_FUNCTION_2_3();
        v8 = OUTLINED_FUNCTION_10_2();
        v9(v8);
LABEL_13:
        v15 = v24;
        v14 = v25;
        v19 = 0uLL;
        v18 = v26;
LABEL_14:
        *v2 = v15;
        *(v2 + 8) = v14;
        *(v2 + 16) = v18;
        *(v2 + 32) = v19;
        *(v2 + 48) = v24;
        break;
    }
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v0);
  OUTLINED_FUNCTION_43_0();
  OUTLINED_FUNCTION_18();
}

uint64_t OUTLINED_FUNCTION_20_0()
{
  v2 = *(v0 - 88);

  return sub_268C88FB4();
}

void OUTLINED_FUNCTION_20_2()
{
  v2 = (v1 + *(v0 + 40));
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
}

unint64_t sub_268C69D70()
{
  result = qword_280D69950;
  if (!qword_280D69950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69950);
  }

  return result;
}

uint64_t sub_268C69DCC(char a1)
{
  if (a1)
  {
    return 0x64616F6C796170;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_268C69E04(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C69EF0()
{
  result = qword_280D69958;
  if (!qword_280D69958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69958);
  }

  return result;
}

unint64_t sub_268C69F44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_268C69FF4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_268C69F70(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 6);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C69FF4(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

unint64_t sub_268C6A00C()
{
  result = qword_280D69760;
  if (!qword_280D69760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69760);
  }

  return result;
}

void RRDataSourceMetadataValue.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_19_0();
  a19 = v22;
  a20 = v23;
  v137 = v20;
  v25 = v24;
  v132 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AF0, &qword_268C8AF48);
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v127 = v29;
  v128 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v135 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AF8, &qword_268C8AF50);
  v35 = OUTLINED_FUNCTION_0_0(v34);
  v125 = v36;
  v126 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_19();
  v131 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B00, &qword_268C8AF58);
  v42 = OUTLINED_FUNCTION_0_0(v41);
  v123 = v43;
  v124 = v42;
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_19();
  v134 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B08, &qword_268C8AF60);
  v121 = OUTLINED_FUNCTION_0_0(v48);
  v122 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_19();
  v130 = v53;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B10, &qword_268C8AF68);
  OUTLINED_FUNCTION_0_0(v117);
  v120 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_19();
  v129 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B18, &qword_268C8AF70);
  v60 = OUTLINED_FUNCTION_0_0(v59);
  v118 = v61;
  v119 = v60;
  v63 = *(v62 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_19();
  v133 = v65;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B20, &qword_268C8AF78);
  OUTLINED_FUNCTION_0_0(v116);
  v115 = v66;
  v68 = *(v67 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_40_0();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B28, &qword_268C8AF80);
  OUTLINED_FUNCTION_0_0(v70);
  v114 = v71;
  v73 = *(v72 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v74);
  v76 = &v109 - v75;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4B30, &qword_268C8AF88);
  OUTLINED_FUNCTION_0_0(v77);
  v79 = v78;
  v81 = *(v80 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_13();
  v83 = v25[3];
  v84 = v25[4];
  v136 = v25;
  OUTLINED_FUNCTION_23_2(v25, v83);
  sub_268C6A94C();
  v85 = v137;
  sub_268C890D4();
  if (v85)
  {
    goto LABEL_8;
  }

  v112 = v76;
  v111 = v70;
  v113 = v21;
  v86 = v133;
  v137 = v79;
  v87 = sub_268C88F34();
  sub_268C6ACF0(v87, 0);
  if (v89 == v90 >> 1)
  {
    goto LABEL_7;
  }

  v109 = 0;
  if (v89 >= (v90 >> 1))
  {
    __break(1u);
    JUMPOUT(0x268C6A914);
  }

  v110 = *(v88 + v89);
  sub_268C6ACE8(v89 + 1);
  v92 = v91;
  v94 = v93;
  swift_unknownObjectRelease();
  if (v92 != v94 >> 1)
  {
LABEL_7:
    v99 = sub_268C88E34();
    swift_allocError();
    v101 = v100;
    v102 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4720, &qword_268C89A80) + 48);
    *v101 = &type metadata for RRDataSourceMetadataValue;
    sub_268C88EA4();
    OUTLINED_FUNCTION_49_0();
    (*(*(v99 - 8) + 104))(v101, *MEMORY[0x277D84160], v99);
    swift_willThrow();
    swift_unknownObjectRelease();
    v103 = OUTLINED_FUNCTION_28_2();
    v104(v103);
LABEL_8:
    v105 = v136;
    goto LABEL_9;
  }

  v95 = v132;
  switch(v110)
  {
    case 1:
      sub_268C814E0();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_29_1();
      v98 = &a18;
      goto LABEL_15;
    case 2:
      sub_268C8148C();
      OUTLINED_FUNCTION_13_2();
      swift_unknownObjectRelease();
      (*(v118 + 8))(v86, v119);
      goto LABEL_20;
    case 3:
      sub_268C81438();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_29_1();
      v106 = v117;
      break;
    case 4:
      sub_268C813E4();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 5:
      sub_268C81390();
      OUTLINED_FUNCTION_13_2();
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 6:
      sub_268C8133C();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 7:
      sub_268C812E8();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
LABEL_18:
      v96 = OUTLINED_FUNCTION_29_1();
      break;
    default:
      sub_268C6ACF8();
      OUTLINED_FUNCTION_7_2();
      swift_unknownObjectRelease();
      v96 = OUTLINED_FUNCTION_29_1();
      v98 = &a13;
LABEL_15:
      v106 = *(v98 - 32);
      break;
  }

  v97(v96, v106);
LABEL_20:
  v107 = OUTLINED_FUNCTION_28_2();
  v108(v107);
  v105 = v136;
  *v95 = v110;
LABEL_9:
  __swift_destroy_boxed_opaque_existential_0Tm(v105);
  OUTLINED_FUNCTION_18();
}

unint64_t sub_268C6A94C()
{
  result = qword_280D69800[0];
  if (!qword_280D69800[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D69800);
  }

  return result;
}

uint64_t sub_268C6A9A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C6A9C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C6A9C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEE006C616E6F6974;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x756F726765726F66 && a2 == 0xEC0000006465646ELL;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E65657263536E6FLL && a2 == 0xE800000000000000;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6163696669746F6ELL && a2 == 0xEC0000006E6F6974;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x65636E756F6E6E61 && a2 == 0xEC000000746E656DLL;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x657551616964656DLL && a2 == 0xEF65746174536575;
            if (v10 || (sub_268C88FD4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6C6175736976 && a2 == 0xE600000000000000;
              if (v11 || (sub_268C88FD4() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x79627261656ELL && a2 == 0xE600000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_268C88FD4();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_268C6AC5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_39_0(-1);
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_39_0((*a1 | (v4 << 8)) - 8);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_39_0(v8);
}

unint64_t sub_268C6ACF8()
{
  result = qword_280D69550;
  if (!qword_280D69550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69550);
  }

  return result;
}

uint64_t sub_268C6AD54(char a1)
{
  result = 0x61737265766E6F63;
  switch(a1)
  {
    case 1:
      result = 0x756F726765726F66;
      break;
    case 2:
      result = 0x6E65657263536E6FLL;
      break;
    case 3:
      result = 0x6163696669746F6ELL;
      break;
    case 4:
      result = 0x65636E756F6E6E61;
      break;
    case 5:
      result = 0x657551616964656DLL;
      break;
    case 6:
      result = 0x6C6175736976;
      break;
    case 7:
      result = 0x79627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{

  return sub_268C88C74();
}

uint64_t RRAnnotationValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v5 = sub_268C88E24();
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v39 = v7;
  v40 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  v42 = &v34 - v17;
  v18 = sub_268C889E4();
  v19 = OUTLINED_FUNCTION_0_0(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C890C4();
  if (!v2)
  {
    v35 = v3;
    v36 = v21;
    v37 = v12;
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v25, v26);
    v27 = v42;
    sub_268C88FE4();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
    v31 = v35;
    v32 = *(v36 + 32);
    v32(v35, v27, v18);
    v32(v38, v31, v18);
    __swift_destroy_boxed_opaque_existential_0Tm(v41);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

id RRAnnotatedEntity.__allocating_init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_21_1();
  v19 = objc_allocWithZone(v18);
  v20 = OUTLINED_FUNCTION_25_1();
  return RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v21, v22, v23, v24, v25, a6, a7, a8, v20, v27, v28, v29, v30, a13, a14, a15 & 1, a16, a17, a18);
}

uint64_t OUTLINED_FUNCTION_24()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v6 = *v2;
  v5 = *(v2 + 2);

  return type metadata accessor for RREntity();
}

uint64_t sub_268C6B3C0()
{
  v1 = *(v0 + 48);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v0[2];
  v8 = v1;
  sub_268C89064();
  RRMetadata.hash(into:)(v4);
  return sub_268C890A4();
}

uint64_t RRMetadata.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  switch(*(v1 + 48))
  {
    case 1:
      MEMORY[0x26D62A380](1);

      result = sub_268C80810(a1, v2);
      break;
    case 2:
      v12 = 2;
      goto LABEL_17;
    case 3:
      v14 = *(v1 + 32);
      v13 = *(v1 + 40);
      MEMORY[0x26D62A380](3);
      result = RRViewLocationMetadataValue.hash(into:)();
      break;
    case 4:
      v12 = 4;
LABEL_17:
      MEMORY[0x26D62A380](v12);
      result = MEMORY[0x26D62A380](v2);
      break;
    case 5:
      MEMORY[0x26D62A380](5);
      sub_268C88CA4();
      if (v4)
      {
        sub_268C89084();

        result = sub_268C88CA4();
      }

      else
      {
        result = sub_268C89084();
      }

      break;
    default:
      MEMORY[0x26D62A380](0);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v2;
      }

      else
      {
        v7 = 0;
      }

      MEMORY[0x26D62A3A0](v7);
      if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v8 = v3;
      }

      else
      {
        v8 = 0;
      }

      MEMORY[0x26D62A3A0](v8);
      if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v9 = v5;
      }

      else
      {
        v9 = 0;
      }

      MEMORY[0x26D62A3A0](v9);
      if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = v4;
      }

      else
      {
        v10 = 0;
      }

      result = MEMORY[0x26D62A3A0](v10);
      break;
  }

  return result;
}

BOOL static RRMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v9 = *a2;
  v8 = *(a2 + 8);
  v11 = *(a2 + 16);
  v10 = *(a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  switch(*(a1 + 48))
  {
    case 1:
      if (v13 != 1 || *(*&v4 + 16) != *(*&v9 + 16))
      {
        return 0;
      }

      sub_268C7C41C(v22);

      sub_268C7C41C(v23);
      v24 = OUTLINED_FUNCTION_20();
      v26 = sub_268C7C4E8(v24, v25);

      return v26 & 1;
    case 2:
      v20 = LOBYTE(v9) == LOBYTE(v4);
      v21 = v13 == 2;
      return v21 && v20;
    case 3:
      if (v13 != 3)
      {
        return 0;
      }

      v34.f64[0] = v4;
      v34.f64[1] = v5;
      v35 = v6;
      v36 = v7;
      v37 = *(a1 + 32);
      v30.f64[0] = v9;
      v30.f64[1] = v8;
      v31 = v11;
      v32 = v10;
      v33 = v12;
      return static RRViewLocationMetadataValue.== infix(_:_:)(&v34, &v30);
    case 4:
      v20 = LOBYTE(v9) == LOBYTE(v4);
      v21 = v13 == 4;
      return v21 && v20;
    case 5:
      if (v13 != 5)
      {
        return 0;
      }

      v28 = *&v4 == *&v9 && *&v5 == *&v8;
      if (!v28 && (sub_268C88FD4() & 1) == 0)
      {
        return 0;
      }

      if (v7 == 0.0)
      {
        if (v10 == 0.0)
        {
          return 1;
        }
      }

      else if (v10 != 0.0)
      {
        v29 = *&v6 == *&v11 && *&v7 == *&v10;
        if (v29 || (sub_268C88FD4() & 1) != 0)
        {
          return 1;
        }
      }

      return 0;
    default:
      if (v13)
      {
        return 0;
      }

      v14 = *(a1 + 16);
      v15 = *(a1 + 8);
      v16 = v4 == v9 && v5 == v8;
      if (!v16 || v6 != v11)
      {
        return 0;
      }

      v18 = *(a1 + 24);
      return v7 == v10;
  }
}

uint64_t RRAnnotatedEntity.data.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
  v2 = *(v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8);
  v3 = OUTLINED_FUNCTION_20();
  sub_268C66A34(v3, v4);
  return OUTLINED_FUNCTION_20();
}

double sub_268C6B834()
{
  v1 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_268C6B8A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  return sub_268C6736C(v1 + v3, a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C6B938()
{
  v1 = (v0 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, unint64_t a10, __n128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_59(a11);
  v25 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  v30 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v30 = 0;
  v30[8] = 1;
  v31 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v32 = a1;
  *(v32 + 1) = a2;
  v33 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v33 = a3;
  *(v33 + 1) = a4;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  v34 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v34 = a6;
  v34[1] = a7;
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
  v39 = &v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v39 = a8;
  v39[1] = a10;
  OUTLINED_FUNCTION_48(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group, a6, v44, v45);
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a12;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0();

  sub_268C66A34(a8, a10);
  sub_268C67908(a13, &v18[v25]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0();
  *v30 = a14;
  v30[8] = a15 & 1;
  *&v18[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a16;
  OUTLINED_FUNCTION_37_0();
  v40 = *(v31 + 1);
  *v31 = a17;
  *(v31 + 1) = a18;

  v48.receiver = v18;
  v48.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v41 = objc_msgSendSuper2(&v48, sel_init);
  sub_268C65EE0(a8, a10);

  sub_268C65E88(a13, &qword_2802D47B8, &unk_268C8A5B8);
  return v41;
}

uint64_t sub_268C6BD00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RRAnnotationValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_268C6BDA0@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8);
  v3 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  v4 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

uint64_t OUTLINED_FUNCTION_31@<X0>(void *a1@<X8>)
{
  *a1 = v2;
  a1[1] = v3;
  v9 = (v6 + *(v7 + 36));
  *v9 = v1;
  v9[1] = v4;
  v10 = *(v5 + 8);
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v2 = *(v0 - 104);

  return sub_268C88F44();
}

unint64_t sub_268C6BF18()
{
  result = qword_280D693C0;
  if (!qword_280D693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693C0);
  }

  return result;
}

uint64_t sub_268C6BFBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_268C6BFE8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_268C6BFF0()
{
  result = qword_280D691D8;
  if (!qword_280D691D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691D8);
  }

  return result;
}

void RRDataSourceMetadataValue.encode(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v4 = v0;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A90, &qword_268C8AF00);
  v8 = OUTLINED_FUNCTION_0_0(v7);
  v87 = v9;
  v88 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_19();
  v86 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4A98, &qword_268C8AF08);
  v15 = OUTLINED_FUNCTION_0_0(v14);
  v84 = v16;
  v85 = v15;
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v83 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AA0, &qword_268C8AF10);
  v22 = OUTLINED_FUNCTION_0_0(v21);
  v81 = v23;
  v82 = v22;
  v25 = *(v24 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_19();
  v80 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AA8, &qword_268C8AF18);
  v29 = OUTLINED_FUNCTION_0_0(v28);
  v78 = v30;
  v79 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_19();
  v77 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AB0, &qword_268C8AF20);
  v36 = OUTLINED_FUNCTION_0_0(v35);
  v75 = v37;
  v76 = v36;
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_19();
  v74 = v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AB8, &qword_268C8AF28);
  v43 = OUTLINED_FUNCTION_0_0(v42);
  v72 = v44;
  v73 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_19();
  v71 = v48;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AC0, &qword_268C8AF30);
  OUTLINED_FUNCTION_0_0(v70);
  v69 = v49;
  v51 = *(v50 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_22();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AC8, &qword_268C8AF38);
  OUTLINED_FUNCTION_0_0(v53);
  v68 = v54;
  v56 = *(v55 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_13();
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4AD0, &qword_268C8AF40);
  OUTLINED_FUNCTION_0_0(v89);
  v59 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_26_2();
  v63 = *v4;
  v64 = v6[4];
  OUTLINED_FUNCTION_23_2(v6, v6[3]);
  sub_268C6A94C();
  OUTLINED_FUNCTION_44_0();
  sub_268C890F4();
  switch(v63)
  {
    case 1:
      sub_268C814E0();
      OUTLINED_FUNCTION_12_2();
      (*(v69 + 8))(v1, v70);
      break;
    case 2:
      sub_268C8148C();
      v65 = v71;
      OUTLINED_FUNCTION_6_2();
      v67 = v72;
      v66 = v73;
      goto LABEL_10;
    case 3:
      sub_268C81438();
      v65 = v74;
      OUTLINED_FUNCTION_6_2();
      v67 = v75;
      v66 = v76;
      goto LABEL_10;
    case 4:
      sub_268C813E4();
      v65 = v77;
      OUTLINED_FUNCTION_6_2();
      v67 = v78;
      v66 = v79;
      goto LABEL_10;
    case 5:
      sub_268C81390();
      v65 = v80;
      OUTLINED_FUNCTION_6_2();
      v67 = v81;
      v66 = v82;
      goto LABEL_10;
    case 6:
      sub_268C8133C();
      v65 = v83;
      OUTLINED_FUNCTION_6_2();
      v67 = v84;
      v66 = v85;
      goto LABEL_10;
    case 7:
      sub_268C812E8();
      v65 = v86;
      OUTLINED_FUNCTION_6_2();
      v67 = v87;
      v66 = v88;
LABEL_10:
      (*(v67 + 8))(v65, v66);
      break;
    default:
      sub_268C6ACF8();
      OUTLINED_FUNCTION_12_2();
      (*(v68 + 8))(v3, v53);
      break;
  }

  (*(v59 + 8))(v2, v59);
  OUTLINED_FUNCTION_18();
}

uint64_t RRAnnotationValue.encode(to:)(uint64_t a1)
{
  v3 = sub_268C889E4();
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_44();
  v9 = type metadata accessor for RRAnnotationValue(0);
  v10 = OUTLINED_FUNCTION_6(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *(a1 + 24);
  v17 = *(a1 + 32);
  v18 = OUTLINED_FUNCTION_22_1();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  sub_268C890E4();
  v20 = OUTLINED_FUNCTION_45();
  sub_268C68518(v20, v21);
  (*(v6 + 32))(v1, v15, v3);
  __swift_mutable_project_boxed_opaque_existential_1(v27, v27[3]);
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v22, v23);
  sub_268C88FF4();
  v24 = OUTLINED_FUNCTION_38_0();
  v25(v24);
  return __swift_destroy_boxed_opaque_existential_0Tm(v27);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_268C6C934(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_268C6C9C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_268C6CAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C70BF8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268C6CB3C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_0();
  v4 = type metadata accessor for RREntity();

  return __swift_getEnumTagSinglePayload(v2, a2, v4);
}

uint64_t sub_268C6CB80(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_24_0();
  v4 = type metadata accessor for RREntity();

  return __swift_storeEnumTagSinglePayload(v2, a2, a2, v4);
}

uint64_t sub_268C6CCB4(uint64_t *a1)
{
  OUTLINED_FUNCTION_43(a1);
  result = sub_268C689E0();
  *v1 = result;
  return result;
}

uint64_t sub_268C6CD80(uint64_t *a1)
{
  OUTLINED_FUNCTION_43(a1);
  result = sub_268C6B938();
  *v1 = result;
  *(v1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_268C6CDB4(uint64_t *a1)
{
  OUTLINED_FUNCTION_43(a1);
  result = sub_268C6B9DC();
  *v1 = result;
  return result;
}

uint64_t sub_268C6CDE0(uint64_t *a1)
{
  OUTLINED_FUNCTION_43(a1);
  result = sub_268C693E0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_268C6D550@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C6D508();
  *a1 = result & 1;
  return result;
}

uint64_t getEnumTagSinglePayload for RREntityError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_268C6D5E0(_BYTE *result, int a2, int a3)
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

uint64_t RREntity.appBundleId.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.typedValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RREntity() + 28);

  return sub_268C644F0(v3, a1);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t RREntity.dataType.getter()
{
  v1 = (v0 + *(type metadata accessor for RREntity() + 32));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.data.getter()
{
  v1 = (v0 + *(type metadata accessor for RREntity() + 36));
  v2 = *v1;
  v3 = v1[1];
  v4 = OUTLINED_FUNCTION_20();
  sub_268C66A34(v4, v5);
  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.group.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RREntity() + 40);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
}

__n128 RREntity.group.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = (v1 + *(type metadata accessor for RREntity() + 40));
  v4 = v3->n128_u64[1];

  result = v6;
  *v3 = v6;
  v3[1].n128_u64[0] = v2;
  return result;
}

uint64_t RREntity.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for RREntity() + 44));
}

uint64_t RREntity.metadata.setter()
{
  v2 = *(OUTLINED_FUNCTION_40_1() + 44);
  v3 = *(v1 + v2);

  *(v1 + v2) = v0;
  return result;
}

uint64_t RREntity.restrictedEntityKey.getter()
{
  v1 = (v0 + *(type metadata accessor for RREntity() + 48));
  v2 = *v1;
  v3 = v1[1];

  return OUTLINED_FUNCTION_20();
}

uint64_t RREntity.restrictedEntityKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RREntity() + 48));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t UsoEntity.debugString.getter()
{
  sub_268C88AC4();
  v0 = sub_268C88A74();

  return v0;
}

void RREntity.init(id:appBundleId:usoEntity:dataType:data:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_2();
  v8 = v7;
  v9 = *(OUTLINED_FUNCTION_24() + 28);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_8();
  v15 = OUTLINED_FUNCTION_31(v14);
  OUTLINED_FUNCTION_28(v15, v16, v17, v18, v19, v20, v21, v22, a6, v26, v23);
  *(v8 + v24) = MEMORY[0x277D84F90];
  *v6 = 0;
  v6[1] = 0;
}

void RREntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_2();
  v13 = v12;
  v14 = *(OUTLINED_FUNCTION_24() + 28);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_8();
  v20 = OUTLINED_FUNCTION_31(v19);
  OUTLINED_FUNCTION_28(v20, v21, v22, v23, v24, v25, v26, v27, a6, v31, v28);
  *(v13 + v29) = a11;
  *v11 = 0;
  v11[1] = 0;
}

void RREntity.init(id:appBundleId:typedValue:dataType:data:group:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, uint64_t *a22)
{
  OUTLINED_FUNCTION_19_0();
  v78 = v24;
  v81 = v25;
  v82 = v26;
  v28 = v27;
  v76 = v29;
  v77 = v30;
  v80 = v31;
  v33 = v32;
  v83 = v34;
  v73 = sub_268C88C04();
  OUTLINED_FUNCTION_0();
  v36 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_1();
  v42 = v41 - v40;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v43);
  v45 = *(v44 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_13();
  v47 = sub_268C88C24();
  OUTLINED_FUNCTION_0();
  v49 = v48;
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_1();
  v55 = v54 - v53;
  v79 = a22[1];
  v74 = a22[2];
  v75 = *a22;
  v56 = v28;
  sub_268C644F0(v28, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v47) == 1)
  {
    sub_268C64978(v23);
  }

  else
  {
    (*(v49 + 32))(v55, v23, v47);
    v84[3] = v47;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v84);
    (*(v49 + 16))(boxed_opaque_existential_0, v55, v47);
    sub_268C88BC4();
    sub_268C88BF4();
    sub_268C88BD4();
    sub_268C88BE4();
    if (!v22)
    {
      (*(v36 + 8))(v42, v73);
      v64 = *(v49 + 8);
      v65 = OUTLINED_FUNCTION_37();
      v66(v65);
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      v63 = a10;
      goto LABEL_9;
    }

    (*(v36 + 8))(v42, v73);
    v58 = *(v49 + 8);
    v59 = OUTLINED_FUNCTION_37();
    v60(v59);
    __swift_destroy_boxed_opaque_existential_0Tm(v84);
  }

  v61 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v61);
  sub_268C88A24();
  v62 = MEMORY[0x26D629DB0]();
  if (v62)
  {
    v63 = v62;

LABEL_9:

    v67 = type metadata accessor for RREntity();
    sub_268C644F0(v56, v33 + v67[7]);

    sub_268C64978(v56);
    v68 = (v33 + v67[10]);
    *v68 = 0;
    v68[1] = 0;
    v68[2] = 0;
    v69 = (v33 + v67[12]);
    *v33 = v76;
    v33[1] = v80;
    v33[2] = v77;
    v33[3] = v81;
    v33[4] = v63;
    v70 = (v33 + v67[8]);
    *v70 = v78;
    v70[1] = v82;
    v71 = (v33 + v67[9]);
    *v71 = v83;
    v71[1] = a21;
    v72 = v68[1];

    *v68 = v75;
    v68[1] = v79;
    v68[2] = v74;
    *(v33 + v67[11]) = MEMORY[0x277D84F90];
    *v69 = 0;
    v69[1] = 0;
    goto LABEL_10;
  }

  sub_268C6E0B8();
  OUTLINED_FUNCTION_32();
  swift_willThrow();
  sub_268C65EE0(v83, a21);

  sub_268C64978(v28);
LABEL_10:
  OUTLINED_FUNCTION_18();
}

__n128 RREntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:restrictedEntityKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __n128 *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_2();
  v20 = v19;
  v30 = *a11;
  v29 = a11[1].n128_u64[0];
  v21 = type metadata accessor for RREntity();
  v22 = (v20 + v21[10]);
  v22->n128_u64[0] = 0;
  v22->n128_u64[1] = 0;
  v22[1].n128_u64[0] = 0;
  v23 = (v20 + v21[12]);
  *v20 = v18;
  v20[1] = v17;
  v20[2] = v16;
  v20[3] = v15;
  v20[4] = v14;
  sub_268C65FC8(a6, v20 + v21[7]);
  v24 = (v20 + v21[8]);
  *v24 = a7;
  v24[1] = a8;
  v25 = (v20 + v21[9]);
  *v25 = a9;
  v25[1] = a10;
  v26 = v22->n128_u64[1];

  result = v30;
  *v22 = v30;
  v22[1].n128_u64[0] = v29;
  *(v20 + v21[11]) = a12;
  *v23 = a13;
  v23[1] = a14;
  return result;
}

unint64_t sub_268C6E0B8()
{
  result = qword_2802D4658;
  if (!qword_2802D4658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4658);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a8[1];
  v35 = a8[2];
  v36 = *a8;
  v20 = type metadata accessor for RREntity();
  v21 = (a9 + v20[10]);
  *v21 = 0;
  v21[1] = 0;
  v40 = v21;
  v21[2] = 0;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  v37 = v20[7];
  sub_268C644F0(a6, a9 + v37);
  swift_getMetatypeMetadata();
  v22 = sub_268C88C94();
  v23 = (a9 + v20[8]);
  *v23 = v22;
  v23[1] = v24;
  v25 = sub_268C88964();
  OUTLINED_FUNCTION_29(v25);
  sub_268C88954();
  v26 = sub_268C88944();
  if (v39)
  {

    (*(*(a13 - 8) + 8))(a7, a13);
    sub_268C64978(a6);

    sub_268C64978(a9 + v37);

    v28 = v40[1];
  }

  else
  {
    v30 = v26;
    v31 = v27;

    v32 = (a9 + v20[12]);
    (*(*(a13 - 8) + 8))(a7, a13);
    sub_268C64978(a6);
    v33 = (a9 + v20[9]);
    *v33 = v30;
    v33[1] = v31;
    v34 = v40[1];

    *v40 = v36;
    v40[1] = v41;
    v40[2] = v35;
    *(a9 + v20[11]) = a10;
    *v32 = a11;
    v32[1] = a12;
  }

  return result;
}

void RREntity.init<A>(id:appBundleId:typedValue:intentEntity:group:)()
{
  OUTLINED_FUNCTION_19_0();
  v39 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v40 = v8;
  v41 = v9;
  v37 = v11;
  v38 = v10;
  v42 = v12;
  OUTLINED_FUNCTION_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v21);
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_13();
  v25 = v3[1];
  v36 = *v3;
  v26 = v3[2];
  v27 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v27);
  sub_268C88A24();
  v28 = MEMORY[0x26D629DB0]();
  if (v28)
  {
    v29 = v28;
    sub_268C644F0(v7, v0);
    v30 = *(v14 + 16);
    v31 = OUTLINED_FUNCTION_37();
    v32(v31);
    OUTLINED_FUNCTION_33();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v38, v40, v39, v41, v29, v0, v20, v33, v37, v34, v35, 0, v42);
  }

  else
  {

    sub_268C6E0B8();
    OUTLINED_FUNCTION_32();
    swift_willThrow();
  }

  (*(v14 + 8))(v5, v42);
  sub_268C64978(v7);
  OUTLINED_FUNCTION_18();
}

{
  OUTLINED_FUNCTION_19_0();
  v28[2] = v1;
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v36 = v7;
  v9 = v8;
  v31 = v11;
  v32 = v10;
  v30 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  v18 = v28 - v17;
  v20 = *v4;
  v19 = v4[1];
  v21 = v4[2];
  v22 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v22);
  sub_268C88A24();
  v23 = MEMORY[0x26D629DB0]();
  if (v23)
  {
    v24 = v23;
    v28[1] = v0;
    sub_268C644F0(v36, v18);
    v33 = v20;
    v34 = v19;
    v35 = v21;
    OUTLINED_FUNCTION_33();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v30, v32, v31, v9, v24, v18, v6, v25, v29, v26, v27, 0);
    sub_268C64978(v36);
  }

  else
  {

    sub_268C6E0B8();
    OUTLINED_FUNCTION_32();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_268C64978(v36);
  }

  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:restrictedEntityKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v58 = v26;
  v59 = v27;
  v56 = v28;
  v57 = v29;
  v54 = v31;
  v55 = v30;
  OUTLINED_FUNCTION_0();
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41);
  v43 = &v53 - v42;
  v53 = *v25;
  v44 = *(v25 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  v49 = OUTLINED_FUNCTION_26();
  v50(v49);
  v60 = v53;
  v61 = v44;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v55, v56, v57, v58, v59, v43, v37, &v60, v54, MEMORY[0x277D84F90], v23, a21, a22);
  v51 = OUTLINED_FUNCTION_27();
  v52(v51);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v54 = v23;
  v55 = v22;
  v25 = v24;
  v56 = v26;
  v52 = v27;
  v53 = v28;
  v30 = v29;
  v32 = v31;
  OUTLINED_FUNCTION_0();
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1();
  v38 = v37 - v36;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v39);
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_22();
  v43 = *(v25 + 8);

  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);
  v48 = OUTLINED_FUNCTION_26();
  v49(v48);
  memset(v57, 0, sizeof(v57));
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v30, v52, v53, v55, v56, v21, v38, v57, v32, v54, 0, 0, a21);
  v50 = OUTLINED_FUNCTION_27();
  v51(v50);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:typedValue:intentEntity:group:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  OUTLINED_FUNCTION_0();
  v31 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_1();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v38);
  v40 = *(v39 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_13();
  v42 = *(v25 + 8);

  v43 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v43);
  sub_268C88A24();
  v44 = MEMORY[0x26D629DB0]();
  if (v44)
  {
    v45 = v44;
    sub_268C644F0(v29, v21);
    (*(v31 + 16))(v37, v27, a21);
    v46 = OUTLINED_FUNCTION_39();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v46, v47, v48, v49, v45, v21, v37, v50, v51, v23, 0, 0, a21);
  }

  else
  {

    sub_268C6E0B8();
    OUTLINED_FUNCTION_32();
    swift_willThrow();
  }

  (*(v31 + 8))(v27, a21);
  sub_268C64978(v29);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:restrictedEntityKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_19_0();
  v23 = v22;
  v25 = v24;
  v48 = v26;
  v49 = v27;
  v47 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v37);
  v39 = *(v38 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_23();
  v46 = *v25;
  v41 = *(v25 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
  v50 = v46;
  v51 = v41;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v34, v32, v30, v47, v48, v21, v49, &v50, v36, MEMORY[0x277D84F90], v23, a21);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:usoEntity:intentEntity:group:metadata:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v27 = v5;
  v28 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_23();
  v26 = *v4;
  v21 = *(v4 + 2);
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v29 = v26;
  v30 = v21;
  RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v14, v12, v10, v8, v27, v0, v28, &v29, v16, v2, 0, 0);
  OUTLINED_FUNCTION_18();
}

void RREntity.init<A>(id:appBundleId:typedValue:intentEntity:group:metadata:)()
{
  OUTLINED_FUNCTION_19_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  OUTLINED_FUNCTION_6(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_22();
  v13 = *v4;
  v14 = v4[1];
  v15 = v4[2];
  v16 = sub_268C88A34();
  OUTLINED_FUNCTION_29(v16);
  sub_268C88A24();
  v17 = MEMORY[0x26D629DB0]();
  if (v17)
  {
    v18 = v17;
    v19 = OUTLINED_FUNCTION_12();
    sub_268C644F0(v19, v20);
    v21 = OUTLINED_FUNCTION_39();
    RREntity.init<A>(id:appBundleId:usoEntity:typedValue:intentEntity:group:metadata:restrictedEntityKey:)(v21, v22, v23, v24, v18, v0, v6, v25, v26, v2, 0, 0);
    sub_268C64978(v8);
  }

  else
  {

    sub_268C6E0B8();
    OUTLINED_FUNCTION_32();
    swift_willThrow();

    swift_unknownObjectRelease();
    sub_268C64978(v8);
  }

  OUTLINED_FUNCTION_18();
}

uint64_t static RREntity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_268C88FD4() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_268C88FD4() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4];
  sub_268C88AC4();
  v7 = sub_268C88A74();
  v9 = v8;

  v10 = a2[4];
  sub_268C88AC4();
  v11 = sub_268C88A74();
  v13 = v12;

  if (v7 == v11 && v9 == v13)
  {
  }

  else
  {
    v15 = sub_268C88FD4();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  v16 = type metadata accessor for RREntity();
  v17 = v16[8];
  OUTLINED_FUNCTION_36();
  if (v18)
  {
    if (!v19)
    {
      return 0;
    }

    v22 = *v20 == *v21 && v18 == v19;
    if (!v22 && (sub_268C88FD4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  v23 = v16[9];
  v25 = *(a1 + v23);
  v24 = *(a1 + v23 + 8);
  v26 = (a2 + v23);
  v28 = *v26;
  v27 = v26[1];
  if (v24 >> 60 == 15)
  {
    if (v27 >> 60 == 15)
    {
      v29 = OUTLINED_FUNCTION_7();
      sub_268C65EE0(v29, v30);
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v27 >> 60 == 15)
  {
LABEL_31:
    v31 = OUTLINED_FUNCTION_7();
    sub_268C65EE0(v31, v32);
    v33 = OUTLINED_FUNCTION_12();
    sub_268C65EE0(v33, v34);
    return 0;
  }

  v35 = OUTLINED_FUNCTION_7();
  v36 = MEMORY[0x26D629CA0](v35);
  v37 = OUTLINED_FUNCTION_12();
  sub_268C65EE0(v37, v38);
  sub_268C65EE0(v25, v24);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_33:
  v39 = v16[10];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = v42[1];
  if (!v41)
  {
    if (!v43)
    {

      goto LABEL_48;
    }

    v49 = v42[1];
LABEL_43:

    return 0;
  }

  if (!v43)
  {
    goto LABEL_43;
  }

  v44 = v40[2];
  v45 = v42[2];
  if (*v40 == *v42 && v41 == v43)
  {
    OUTLINED_FUNCTION_34();
    swift_bridgeObjectRetain_n();
  }

  else
  {
    v47 = v42[1];
    v48 = sub_268C88FD4();
    OUTLINED_FUNCTION_34();
    swift_bridgeObjectRetain_n();
    if ((v48 & 1) == 0)
    {
      OUTLINED_FUNCTION_34();
      swift_bridgeObjectRelease_n();
      return 0;
    }
  }

  OUTLINED_FUNCTION_34();
  swift_bridgeObjectRelease_n();
  if (v44 != v45)
  {
    return 0;
  }

LABEL_48:
  if ((sub_268C6F4CC(*(a1 + v16[11]), *(a2 + v16[11])) & 1) == 0)
  {
    return 0;
  }

  v50 = v16[12];
  OUTLINED_FUNCTION_36();
  result = (v51 | v52) == 0;
  if (v51 && v52)
  {
    if (*v53 == *v54 && v51 == v52)
    {
      return 1;
    }

    else
    {

      return sub_268C88FD4();
    }
  }

  return result;
}

uint64_t sub_268C6F4CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(a1 + v3 + 32);
      v5 = *(a1 + v3 + 48);
      v6 = *(a2 + v3 + 32);
      v7 = *(a2 + v3 + 48);
      v8 = *(a2 + v3 + 80);
      v9 = *(a2 + v3 + 40);
      v10 = *(a2 + v3 + 56);
      switch(*(a1 + v3 + 80))
      {
        case 1:
          if (v8 != 1)
          {
            return 0;
          }

          v34 = *(a1 + v3 + 32);
          v35 = *(a2 + v3 + 32);
          if (*(v4.i64[0] + 16) != *(v6.i64[0] + 16))
          {
            return 0;
          }

          v69 = *(a2 + v3 + 40);
          v70 = *(a2 + v3 + 72);
          v36 = *(a2 + v3 + 64);
          v72 = *(a2 + v3 + 48);
          v67 = *(a1 + v3 + 72);
          sub_268C704A0(v4.i64[0], *(a1 + v3 + 40), *(a1 + v3 + 48), *(a1 + v3 + 56), *(a1 + v3 + 64), v67, 1);
          sub_268C704A0(v35, v9, v72, v10, v36, v70, 1);
          v37 = OUTLINED_FUNCTION_38();
          sub_268C704A0(v37, v38, v39, v40, v41, v67, 1);
          v42 = sub_268C7C41C(v34);

          v44 = sub_268C7C41C(v43);
          v68 = sub_268C7C4E8(v42, v44);

          sub_268C704F4(v35, v69, v72, v10, v36, v70, 1);
          v45 = OUTLINED_FUNCTION_38();
          sub_268C704F4(v45, v46, v47, v48, v49, v67, 1);
          v50 = v68;
          goto LABEL_30;
        case 2:
          if (v8 != 2)
          {
            return 0;
          }

          v12 = *(a2 + v3 + 32);
          v13 = (v6.i8[0] ^ v4.i8[0]);
          OUTLINED_FUNCTION_21();
          sub_268C704A0(v14, v15, v16, v17, v18, v19, 2);
          if (v13)
          {
            return 0;
          }

          goto LABEL_31;
        case 3:
          if (v8 != 3)
          {
            return 0;
          }

          v20 = *(a1 + v3 + 64);
          v21 = *(a2 + v3 + 64);
          OUTLINED_FUNCTION_25();
          if ((v25 & 1) == 0)
          {
            goto LABEL_38;
          }

          if (!v23 || v24 != v22)
          {
            goto LABEL_38;
          }

          goto LABEL_22;
        case 4:
          if (v8 != 4)
          {
            return 0;
          }

          if (v6.i8[0] != v4.i8[0])
          {
            goto LABEL_38;
          }

          goto LABEL_22;
        case 5:
          if (v8 != 5)
          {
            return 0;
          }

          v51 = vmovn_s64(vceqq_s64(v4, v6));
          if ((v51.i32[0] & v51.i32[1] & 1) == 0)
          {
            v52 = *(a2 + v3 + 32);
            v53 = *(a1 + v3 + 32);
            v54 = *(a1 + v3 + 40);
            v55 = *(a2 + v3 + 40);
            v71 = *(a1 + v3 + 48);
            v73 = *(a2 + v3 + 48);
            v56 = sub_268C88FD4();
            v5 = v71;
            v7 = v73;
            if ((v56 & 1) == 0)
            {
              return 0;
            }
          }

          v57 = vmovn_s64(vceqzq_s64(vzip2q_s64(v7, v5)));
          v50 = v57.i8[0];
          if (v57.i8[4])
          {
LABEL_30:
            if ((v50 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (v57.i8[0])
            {
              return 0;
            }

            v58 = vmovn_s64(vceqq_s64(v5, v7));
            if ((v58.i32[0] & v58.i32[1] & 1) == 0 && (sub_268C88FD4() & 1) == 0)
            {
              return 0;
            }
          }

          goto LABEL_31;
        default:
          if (*(a2 + v3 + 80))
          {
            return 0;
          }

          OUTLINED_FUNCTION_25();
          if ((v11 & 1) == 0)
          {
LABEL_38:
            OUTLINED_FUNCTION_21();
            sub_268C704A0(v60, v61, v62, v63, v64, v65, v66);
            return 0;
          }

LABEL_22:
          OUTLINED_FUNCTION_21();
          sub_268C704A0(v27, v28, v29, v30, v31, v32, v33);
LABEL_31:
          v3 += 56;
          if (!--v2)
          {
            return 1;
          }

          break;
      }
    }
  }

  return 1;
}

void RREntity.convertData<A>(to:)()
{
  OUTLINED_FUNCTION_19_0();
  v3 = v2;
  v5 = v4;
  v6 = (v0 + *(type metadata accessor for RREntity() + 36));
  if (v6[1] >> 60 == 15)
  {
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v3);
  }

  else
  {
    v10 = *v6;
    v11 = sub_268C88934();
    OUTLINED_FUNCTION_29(v11);
    v12 = OUTLINED_FUNCTION_12();
    sub_268C66A48(v12, v13);
    sub_268C88924();
    OUTLINED_FUNCTION_37();
    sub_268C88914();
    if (v1)
    {

      v14 = OUTLINED_FUNCTION_12();
      sub_268C65EE0(v14, v15);
    }

    else
    {
      v16 = OUTLINED_FUNCTION_12();
      sub_268C65EE0(v16, v17);

      __swift_storeEnumTagSinglePayload(v5, 0, 1, v3);
    }
  }

  OUTLINED_FUNCTION_18();
}

uint64_t RREntity.convertData<A>(to:)()
{
  v1 = v0 + *(type metadata accessor for RREntity() + 36);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    return 0;
  }

  v4 = *v1;
  sub_268C66A48(*v1, *(v1 + 8));
  v3 = static RRCoder.decode<A>(_:from:)();
  sub_268C65EE0(v4, v2);
  return v3;
}

uint64_t sub_268C6F9BC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7469746E456F7375 && a2 == 0xE900000000000079;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C61566465707974 && a2 == 0xEA00000000006575;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
          if (v9 || (sub_268C88FD4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1635017060 && a2 == 0xE400000000000000;
            if (v10 || (sub_268C88FD4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x70756F7267 && a2 == 0xE500000000000000;
              if (v11 || (sub_268C88FD4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
                if (v12 || (sub_268C88FD4() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0xD000000000000013 && 0x8000000268C8D900 == a2)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_268C88FD4();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_268C6FC94(unsigned __int8 a1)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a1);
  return sub_268C890A4();
}

uint64_t sub_268C6FCF0()
{
  v1 = *v0;
  sub_268C89064();
  MEMORY[0x26D62A380](v1);
  return sub_268C890A4();
}

uint64_t sub_268C6FD34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C6F9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C6FD7C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C6FC8C();
  *a1 = result;
  return result;
}

uint64_t sub_268C6FDA4(uint64_t a1)
{
  v2 = sub_268C663B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C6FDE0(uint64_t a1)
{
  v2 = sub_268C663B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RREntityError.hashValue.getter()
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t sub_268C6FECC()
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_268C6FF64()
{
  result = qword_280D69658;
  if (!qword_280D69658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69658);
  }

  return result;
}

unint64_t sub_268C6FFB8()
{
  result = qword_280D693B0;
  if (!qword_280D693B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693B0);
  }

  return result;
}

unint64_t sub_268C70010()
{
  result = qword_2802D4678;
  if (!qword_2802D4678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4678);
  }

  return result;
}

uint64_t sub_268C7008C()
{
  v0 = sub_268C88BC4();
  if (v1 <= 0x3F)
  {
    sub_268C7022C();
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_268C70284(319, &qword_280D696A0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_268C70284(319, qword_280D69988, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_268C70284(319, qword_280D698B8, &type metadata for GroupIdentifier, MEMORY[0x277D83D88]);
        if (v8 > 0x3F)
        {
          return v6;
        }

        sub_268C70284(319, &qword_280D69698, &type metadata for RRMetadata, MEMORY[0x277D83940]);
        if (v9 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_268C7022C()
{
  if (!qword_280D696A8[0])
  {
    sub_268C88C24();
    v0 = sub_268C88D94();
    if (!v1)
    {
      atomic_store(v0, qword_280D696A8);
    }
  }
}

void sub_268C70284(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RREntityError(_BYTE *result, int a2, int a3)
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

unint64_t sub_268C7039C()
{
  result = qword_2802D4680;
  if (!qword_2802D4680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4680);
  }

  return result;
}

unint64_t sub_268C703F4()
{
  result = qword_280D69538;
  if (!qword_280D69538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69538);
  }

  return result;
}

unint64_t sub_268C7044C()
{
  result = qword_280D69540;
  if (!qword_280D69540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69540);
  }

  return result;
}

uint64_t sub_268C704A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 1)
  {
    if (a7 != 5)
    {
      return result;
    }
  }
}

uint64_t sub_268C704F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 != 1)
  {
    if (a7 != 5)
    {
      return result;
    }
  }
}

uint64_t OUTLINED_FUNCTION_40_1()
{

  return type metadata accessor for RREntity();
}

uint64_t RRResult.description.getter()
{
  v0 = type metadata accessor for RRCandidate(0);
  v1 = OUTLINED_FUNCTION_3(v0);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v6 = v5 - v4;
  v7 = type metadata accessor for RRResult(0);
  v8 = OUTLINED_FUNCTION_3(v7);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_11_0();
  v14 = OUTLINED_FUNCTION_26_0();
  sub_268C72E38(v14, v15);
  v16 = 0x686374616D206F4ELL;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = *v13;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v31 = v30 | 0xC;
      goto LABEL_6;
    case 2u:
      v29 = *v13;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
LABEL_6:
      v36 = v31;
      v32 = MEMORY[0x26D62A020](v29, v0);
      v27 = v33;

      v28 = v32;
      goto LABEL_7;
    case 3u:
      v22 = *v13;
      OUTLINED_FUNCTION_22_0();
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v36 = v23 + 10;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      v25 = MEMORY[0x26D62A020](v22, v24);
      v27 = v26;

      v28 = v25;
LABEL_7:
      MEMORY[0x26D629FC0](v28, v27);

      v16 = v36;
      break;
    case 4u:
      return v16;
    default:
      sub_268C72C5C(v13, v6);
      sub_268C88DF4();

      OUTLINED_FUNCTION_6_0();
      v35 = v17 + 2;
      v18 = RREntity.description.getter();
      MEMORY[0x26D629FC0](v18);

      v19 = OUTLINED_FUNCTION_27_0();
      MEMORY[0x26D629FC0](v19, 0xE800000000000000);
      v20 = *(v6 + *(v0 + 20));
      sub_268C88D54();
      MEMORY[0x26D629FC0](0, 0xE000000000000000);

      v16 = v35;
      OUTLINED_FUNCTION_12_0();
      sub_268C72EE8(v6, v21);
      break;
  }

  return v16;
}

uint64_t sub_268C708CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74614D646E756F66 && a2 == 0xEA00000000006863;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000268C8D9D0 == a2;
    if (v6 || (sub_268C88FD4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x8000000268C8D9F0 == a2;
      if (v7 || (sub_268C88FD4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000268C8DA10 == a2;
        if (v8 || (sub_268C88FD4() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x686374614D6F6ELL && a2 == 0xE700000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_268C88FD4();

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

unint64_t sub_268C70A88(char a1)
{
  result = 0x74614D646E756F66;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0x686374614D6F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C70B40(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xE900000000000065)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C70BF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74616469646E6163 && a2 == 0xEA00000000007365)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_268C88FD4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_268C70C78()
{
  sub_268C89064();
  MEMORY[0x26D62A380](0);
  return sub_268C890A4();
}

uint64_t sub_268C70CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C708CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C70CF8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C70A80();
  *a1 = result;
  return result;
}

uint64_t sub_268C70D20(uint64_t a1)
{
  v2 = sub_268C7296C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70D5C(uint64_t a1)
{
  v2 = sub_268C7296C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70DA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C70B40(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_268C70DE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C6FE94();
  *a1 = result & 1;
  return result;
}

uint64_t sub_268C70E14(uint64_t a1)
{
  v2 = sub_268C72BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70E50(uint64_t a1)
{
  v2 = sub_268C72BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70E90(uint64_t a1)
{
  v2 = sub_268C72B18();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70ECC(uint64_t a1)
{
  v2 = sub_268C72B18();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70F08(uint64_t a1)
{
  v2 = sub_268C72B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70F44(uint64_t a1)
{
  v2 = sub_268C72B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70F80(uint64_t a1)
{
  v2 = sub_268C72A14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C70FBC(uint64_t a1)
{
  v2 = sub_268C72A14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C70FFC(uint64_t a1)
{
  v2 = sub_268C729C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C71038(uint64_t a1)
{
  v2 = sub_268C729C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4690, &qword_268C89A18);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v90 = v5;
  v91 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  v88 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4698, &qword_268C89A20);
  v11 = OUTLINED_FUNCTION_0_0(v10);
  v92 = v12;
  v93 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_19();
  v89 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46A0, &qword_268C89A28);
  v18 = OUTLINED_FUNCTION_0_0(v17);
  v86 = v19;
  v87 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_19();
  v85 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46A8, &qword_268C89A30);
  v25 = OUTLINED_FUNCTION_0_0(v24);
  v83 = v26;
  v84 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v82 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46B0, &qword_268C89A38);
  v32 = OUTLINED_FUNCTION_0_0(v31);
  v80 = v33;
  v81 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v36);
  v38 = &v80 - v37;
  v39 = type metadata accessor for RRCandidate(0);
  v40 = OUTLINED_FUNCTION_3(v39);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1();
  v43 = OUTLINED_FUNCTION_23_0();
  v44 = type metadata accessor for RRResult(v43);
  v45 = OUTLINED_FUNCTION_3(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_1();
  v50 = (v49 - v48);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46B8, &qword_268C89A40);
  v52 = OUTLINED_FUNCTION_0_0(v51);
  v95 = v53;
  v96 = v52;
  v55 = *(v54 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v56);
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7296C();
  sub_268C890F4();
  OUTLINED_FUNCTION_11_0();
  sub_268C72E38(v94, v50);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = *v50;
      LOBYTE(v97) = 1;
      sub_268C72B6C();
      v69 = v82;
      OUTLINED_FUNCTION_15_0();
      v97 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      OUTLINED_FUNCTION_13_0();
      sub_268C72D68(v76, v77);
      v72 = v84;
      OUTLINED_FUNCTION_20_0();
      v73 = v83;
      goto LABEL_7;
    case 2u:
      v68 = *v50;
      LOBYTE(v97) = 2;
      sub_268C72B18();
      v69 = v85;
      OUTLINED_FUNCTION_15_0();
      v97 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
      OUTLINED_FUNCTION_13_0();
      sub_268C72D68(v70, v71);
      v72 = v87;
      OUTLINED_FUNCTION_20_0();
      v73 = v86;
      goto LABEL_7;
    case 3u:
      v74 = *v50;
      LOBYTE(v97) = 3;
      sub_268C72A14();
      v69 = v89;
      OUTLINED_FUNCTION_15_0();
      v97 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46C8, &qword_268C89A48);
      sub_268C72A68();
      v72 = v93;
      OUTLINED_FUNCTION_20_0();
      v73 = v92;
LABEL_7:
      (*(v73 + 8))(v69, v72);
      v78 = OUTLINED_FUNCTION_25_0();
      v79(v78);

      break;
    case 4u:
      LOBYTE(v97) = 4;
      sub_268C729C0();
      v65 = v88;
      sub_268C88F44();
      (*(v90 + 8))(v65, v91);
      v66 = OUTLINED_FUNCTION_16_0();
      result = v67(v66);
      break;
    default:
      sub_268C72C5C(v50, v1);
      LOBYTE(v97) = 0;
      sub_268C72BC0();
      OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_2_0();
      sub_268C72DF0(v58, v59);
      v60 = v81;
      sub_268C88FB4();
      (*(v80 + 8))(v38, v60);
      OUTLINED_FUNCTION_12_0();
      sub_268C72EE8(v1, v61);
      v62 = OUTLINED_FUNCTION_25_0();
      result = v63(v62);
      break;
  }

  return result;
}

uint64_t RRResult.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46F0, &qword_268C89A50);
  OUTLINED_FUNCTION_0_0(v135);
  v126 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_19();
  v131 = v7;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46F8, &qword_268C89A58);
  OUTLINED_FUNCTION_0_0(v125);
  v129 = v8;
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_19();
  v132 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4700, &qword_268C89A60);
  v14 = OUTLINED_FUNCTION_0_0(v13);
  v127 = v15;
  v128 = v14;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_19();
  v139 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4708, &qword_268C89A68);
  v21 = OUTLINED_FUNCTION_0_0(v20);
  v123 = v22;
  v124 = v21;
  v24 = *(v23 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_19();
  v130 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4710, &qword_268C89A70);
  v28 = OUTLINED_FUNCTION_0_0(v27);
  v121 = v29;
  v122 = v28;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_19();
  v133 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4718, &qword_268C89A78);
  v35 = OUTLINED_FUNCTION_0_0(v34);
  v137 = v36;
  v138 = v35;
  v38 = *(v37 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v39);
  v40 = OUTLINED_FUNCTION_23_0();
  v136 = type metadata accessor for RRResult(v40);
  v41 = OUTLINED_FUNCTION_3(v136);
  v43 = *(v42 + 64);
  v44 = MEMORY[0x28223BE20](v41);
  v46 = v119 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v119 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = v119 - v51;
  v53 = MEMORY[0x28223BE20](v50);
  v55 = v119 - v54;
  MEMORY[0x28223BE20](v53);
  v57 = v119 - v56;
  v58 = a1[3];
  v59 = a1[4];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v58);
  sub_268C7296C();
  v60 = v141;
  sub_268C890D4();
  if (v60)
  {
    goto LABEL_8;
  }

  v120 = v55;
  v119[2] = v52;
  v119[3] = v46;
  v119[4] = v49;
  v141 = v57;
  v61 = sub_268C88F34();
  result = sub_268C72C14(v61, 0);
  if (v64 == v65 >> 1)
  {
LABEL_7:
    v75 = v136;
    v76 = sub_268C88E34();
    swift_allocError();
    v78 = v77;
    v79 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4720, &qword_268C89A80) + 48);
    *v78 = v75;
    sub_268C88EA4();
    sub_268C88E14();
    (*(*(v76 - 8) + 104))(v78, *MEMORY[0x277D84160], v76);
    swift_willThrow();
    swift_unknownObjectRelease();
    v80 = OUTLINED_FUNCTION_5_0();
    v81(v80);
LABEL_8:
    v82 = v140;
    return __swift_destroy_boxed_opaque_existential_0Tm(v82);
  }

  v119[1] = 0;
  if (v64 < (v65 >> 1))
  {
    v66 = *(v63 + v64);
    sub_268C73C5C(v64 + 1, v65 >> 1, result, v63, v64, v65);
    v68 = v67;
    v70 = v69;
    swift_unknownObjectRelease();
    if (v68 == v70 >> 1)
    {
      v71 = v134;
      switch(v66)
      {
        case 1:
          LOBYTE(v142) = 1;
          sub_268C72B6C();
          OUTLINED_FUNCTION_7_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
          OUTLINED_FUNCTION_10_0();
          sub_268C72D68(v92, v93);
          v94 = v124;
          sub_268C88F24();
          v95 = v137;
          swift_unknownObjectRelease();
          v114 = OUTLINED_FUNCTION_16_0();
          v115(v114);
          v116 = *(v95 + 8);
          v117 = OUTLINED_FUNCTION_18_0();
          v118(v117);
          OUTLINED_FUNCTION_17_0(v142);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v113 = v94;
          goto LABEL_15;
        case 2:
          LOBYTE(v142) = 2;
          sub_268C72B18();
          OUTLINED_FUNCTION_7_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4688, &qword_268C89A10);
          OUTLINED_FUNCTION_10_0();
          sub_268C72D68(v88, v89);
          OUTLINED_FUNCTION_28_0();
          v90 = v137;
          swift_unknownObjectRelease();
          v96 = OUTLINED_FUNCTION_21_0();
          v97(v96);
          v99 = *(v90 + 8);
          v98 = v90 + 8;
          v100 = OUTLINED_FUNCTION_18_0();
          v101(v100);
          OUTLINED_FUNCTION_17_0(v142);
          goto LABEL_14;
        case 3:
          LOBYTE(v142) = 3;
          sub_268C72A14();
          OUTLINED_FUNCTION_7_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D46C8, &qword_268C89A48);
          sub_268C72CB8();
          OUTLINED_FUNCTION_28_0();
          v91 = v137;
          swift_unknownObjectRelease();
          v102 = OUTLINED_FUNCTION_21_0();
          v103(v102);
          v104 = *(v91 + 8);
          v98 = v91 + 8;
          v105 = OUTLINED_FUNCTION_18_0();
          v106(v105);
          OUTLINED_FUNCTION_17_0(v142);
LABEL_14:
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v87 = v141;
          sub_268C72C5C(v98, v141);
          v107 = v140;
          v71 = v134;
          goto LABEL_17;
        case 4:
          LOBYTE(v142) = 4;
          sub_268C729C0();
          OUTLINED_FUNCTION_7_0();
          swift_unknownObjectRelease();
          v83 = OUTLINED_FUNCTION_16_0();
          v84(v83);
          v85 = OUTLINED_FUNCTION_5_0();
          v86(v85);
          v87 = v141;
          swift_storeEnumTagMultiPayload();
          goto LABEL_16;
        default:
          LOBYTE(v142) = 0;
          sub_268C72BC0();
          OUTLINED_FUNCTION_7_0();
          type metadata accessor for RRCandidate(0);
          OUTLINED_FUNCTION_2_0();
          sub_268C72DF0(v72, v73);
          v74 = v120;
          sub_268C88F24();
          swift_unknownObjectRelease();
          v108 = *(v121 + 8);
          v109 = OUTLINED_FUNCTION_26_0();
          v110(v109);
          v111 = OUTLINED_FUNCTION_5_0();
          v112(v111);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_1_0();
          v113 = v74;
LABEL_15:
          v87 = v141;
          sub_268C72C5C(v113, v141);
LABEL_16:
          v107 = v140;
LABEL_17:
          OUTLINED_FUNCTION_1_0();
          sub_268C72C5C(v87, v71);
          v82 = v107;
          break;
      }

      return __swift_destroy_boxed_opaque_existential_0Tm(v82);
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t RRCandidate.init(entity:score:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  OUTLINED_FUNCTION_14_0();
  sub_268C72C5C(v4, v5);
  result = type metadata accessor for RRCandidate(0);
  *(a1 + *(result + 20)) = a2;
  return result;
}

uint64_t RRCandidate.description.getter()
{
  v1 = RREntity.description.getter();
  MEMORY[0x26D629FC0](v1);

  v2 = OUTLINED_FUNCTION_27_0();
  MEMORY[0x26D629FC0](v2, 0xE800000000000000);
  v3 = *(v0 + *(type metadata accessor for RRCandidate(0) + 20));
  sub_268C88D54();
  return 0;
}

uint64_t sub_268C722C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469746E65 && a2 == 0xE600000000000000;
  if (v4 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C72390(char a1)
{
  sub_268C89064();
  MEMORY[0x26D62A380](a1 & 1);
  return sub_268C890A4();
}

uint64_t sub_268C723D8(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x797469746E65;
  }
}

uint64_t sub_268C72418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C722C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C72440@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C72388();
  *a1 = result;
  return result;
}

uint64_t sub_268C72468(uint64_t a1)
{
  v2 = sub_268C72E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C724A4(uint64_t a1)
{
  v2 = sub_268C72E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t RRCandidate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4740, &qword_268C89A88);
  OUTLINED_FUNCTION_0_0(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v10);
  v12 = &v18[-v11];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C72E94();
  sub_268C890F4();
  v18[15] = 0;
  type metadata accessor for RREntity();
  OUTLINED_FUNCTION_9_0();
  sub_268C72DF0(v14, v15);
  sub_268C88FB4();
  if (!v2)
  {
    v16 = *(v3 + *(type metadata accessor for RRCandidate(0) + 20));
    v18[14] = 1;
    sub_268C88F94();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t RRCandidate.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for RREntity();
  v6 = OUTLINED_FUNCTION_3(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v31 = v10 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4748, &qword_268C89A90);
  OUTLINED_FUNCTION_0_0(v32);
  v29 = v11;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  v15 = OUTLINED_FUNCTION_23_0();
  v16 = type metadata accessor for RRCandidate(v15);
  v17 = OUTLINED_FUNCTION_3(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v22 = v21 - v20;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C72E94();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  OUTLINED_FUNCTION_9_0();
  sub_268C72DF0(v24, v25);
  sub_268C88F24();
  OUTLINED_FUNCTION_14_0();
  sub_268C72C5C(v31, v22);
  sub_268C88F04();
  v27 = v26;
  (*(v29 + 8))(v3, v32);
  *(v22 + *(v16 + 20)) = v27;
  sub_268C72E38(v22, a2);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_268C72EE8(v22, type metadata accessor for RRCandidate);
}

unint64_t sub_268C7296C()
{
  result = qword_280D69530;
  if (!qword_280D69530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69530);
  }

  return result;
}

unint64_t sub_268C729C0()
{
  result = qword_280D69518;
  if (!qword_280D69518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69518);
  }

  return result;
}

unint64_t sub_268C72A14()
{
  result = qword_2802D46C0;
  if (!qword_2802D46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46C0);
  }

  return result;
}

unint64_t sub_268C72A68()
{
  result = qword_2802D46D0;
  if (!qword_2802D46D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D46C8, &qword_268C89A48);
    sub_268C72D68(&qword_2802D46D8, &qword_280D69390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46D0);
  }

  return result;
}

unint64_t sub_268C72B18()
{
  result = qword_2802D46E0;
  if (!qword_2802D46E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46E0);
  }

  return result;
}

unint64_t sub_268C72B6C()
{
  result = qword_2802D46E8;
  if (!qword_2802D46E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D46E8);
  }

  return result;
}

unint64_t sub_268C72BC0()
{
  result = qword_280D691C8;
  if (!qword_280D691C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D691C8);
  }

  return result;
}

uint64_t sub_268C72C14(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_268C72C5C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

unint64_t sub_268C72CB8()
{
  result = qword_2802D4728;
  if (!qword_2802D4728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D46C8, &qword_268C89A48);
    sub_268C72D68(&qword_2802D4730, &qword_2802D4738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4728);
  }

  return result;
}

uint64_t sub_268C72D68(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4688, &qword_268C89A10);
    OUTLINED_FUNCTION_2_0();
    sub_268C72DF0(a2, v5);
    OUTLINED_FUNCTION_26_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C72DF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_268C72E38(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_24_0();
  v6 = v5(v4);
  OUTLINED_FUNCTION_3(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

unint64_t sub_268C72E94()
{
  result = qword_280D693A8;
  if (!qword_280D693A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693A8);
  }

  return result;
}

uint64_t sub_268C72EE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_3(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_268C72F48()
{
  sub_268C73024(319, &qword_280D69650, type metadata accessor for RRCandidate);
  if (v0 <= 0x3F)
  {
    sub_268C73024(319, &qword_280D69408, sub_268C73070);
    if (v1 <= 0x3F)
    {
      sub_268C73024(319, &qword_280D693F8, sub_268C730C8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_268C73024(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_268C73070()
{
  if (!qword_280D69400)
  {
    type metadata accessor for RRCandidate(255);
    v0 = sub_268C88D44();
    if (!v1)
    {
      atomic_store(v0, &qword_280D69400);
    }
  }
}

void sub_268C730C8()
{
  if (!qword_280D693F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4688, &qword_268C89A10);
    v0 = sub_268C88D44();
    if (!v1)
    {
      atomic_store(v0, &qword_280D693F0);
    }
  }
}

uint64_t sub_268C73154()
{
  result = type metadata accessor for RREntity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RRCandidate.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRCandidate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for RRResult.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRResult.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_268C734C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_268C73580()
{
  result = qword_2802D4758;
  if (!qword_2802D4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4758);
  }

  return result;
}

unint64_t sub_268C735D8()
{
  result = qword_2802D4760;
  if (!qword_2802D4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4760);
  }

  return result;
}

unint64_t sub_268C73630()
{
  result = qword_2802D4768;
  if (!qword_2802D4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4768);
  }

  return result;
}

unint64_t sub_268C73688()
{
  result = qword_2802D4770;
  if (!qword_2802D4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4770);
  }

  return result;
}

unint64_t sub_268C736E0()
{
  result = qword_2802D4778;
  if (!qword_2802D4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4778);
  }

  return result;
}

unint64_t sub_268C73738()
{
  result = qword_2802D4780;
  if (!qword_2802D4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4780);
  }

  return result;
}

unint64_t sub_268C73790()
{
  result = qword_280D69398;
  if (!qword_280D69398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69398);
  }

  return result;
}

unint64_t sub_268C737E8()
{
  result = qword_280D693A0;
  if (!qword_280D693A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D693A0);
  }

  return result;
}

unint64_t sub_268C73840()
{
  result = qword_280D694F8;
  if (!qword_280D694F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694F8);
  }

  return result;
}

unint64_t sub_268C73898()
{
  result = qword_280D69500;
  if (!qword_280D69500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69500);
  }

  return result;
}

unint64_t sub_268C738F0()
{
  result = qword_280D694D8;
  if (!qword_280D694D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694D8);
  }

  return result;
}

unint64_t sub_268C73948()
{
  result = qword_280D694E0;
  if (!qword_280D694E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694E0);
  }

  return result;
}

unint64_t sub_268C739A0()
{
  result = qword_280D694E8;
  if (!qword_280D694E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694E8);
  }

  return result;
}

unint64_t sub_268C739F8()
{
  result = qword_280D694F0;
  if (!qword_280D694F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694F0);
  }

  return result;
}

unint64_t sub_268C73A50()
{
  result = qword_280D694C8;
  if (!qword_280D694C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694C8);
  }

  return result;
}

unint64_t sub_268C73AA8()
{
  result = qword_280D694D0;
  if (!qword_280D694D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D694D0);
  }

  return result;
}

unint64_t sub_268C73B00()
{
  result = qword_280D69508;
  if (!qword_280D69508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69508);
  }

  return result;
}

unint64_t sub_268C73B58()
{
  result = qword_280D69510;
  if (!qword_280D69510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69510);
  }

  return result;
}

unint64_t sub_268C73BB0()
{
  result = qword_280D69520;
  if (!qword_280D69520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69520);
  }

  return result;
}

unint64_t sub_268C73C08()
{
  result = qword_280D69528;
  if (!qword_280D69528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69528);
  }

  return result;
}

uint64_t sub_268C73C5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t GroupIdentifier.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriReferenceResolutionDataModel::GroupIdentifier __swiftcall GroupIdentifier.init(id:seq:)(Swift::String id, Swift::Int seq)
{
  *v2 = id;
  v2[1]._countAndFlagsBits = seq;
  result.id = id;
  result.seq = seq;
  return result;
}

uint64_t GroupIdentifier.description.getter()
{
  v1 = v0[2];
  MEMORY[0x26D629FC0](*v0, v0[1]);
  MEMORY[0x26D629FC0](0x203A71657320, 0xE600000000000000);
  v2 = sub_268C88FC4();
  MEMORY[0x26D629FC0](v2);

  return 540697705;
}

BOOL static GroupIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_268C88FD4();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_268C73E44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_268C88FD4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7431539 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_268C88FD4();

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

uint64_t sub_268C73F04(char a1)
{
  if (a1)
  {
    return 7431539;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_268C73F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268C73E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268C73F58(uint64_t a1)
{
  v2 = sub_268C7413C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C73F94(uint64_t a1)
{
  v2 = sub_268C7413C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GroupIdentifier.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4788, &qword_268C8A360);
  v4 = OUTLINED_FUNCTION_0_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v16 - v9;
  v11 = *v1;
  v12 = v1[1];
  v16[0] = v1[2];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7413C();
  sub_268C890F4();
  v18 = 0;
  v14 = v16[1];
  sub_268C88F74();
  if (!v14)
  {
    v17 = 1;
    sub_268C88FA4();
  }

  return (*(v6 + 8))(v10, v3);
}

unint64_t sub_268C7413C()
{
  result = qword_280D69570;
  if (!qword_280D69570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69570);
  }

  return result;
}

uint64_t GroupIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4790, &qword_268C8A368);
  v6 = OUTLINED_FUNCTION_0_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268C7413C();
  sub_268C890D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v10 = sub_268C88EE4();
  v12 = v11;
  v13 = sub_268C88F14();
  v14 = OUTLINED_FUNCTION_1_1();
  v15(v14);
  *a2 = v10;
  a2[1] = v12;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t GroupIdentifierGenerator.__allocating_init()()
{
  v0 = swift_allocObject();
  GroupIdentifierGenerator.init()();
  return v0;
}

void *GroupIdentifierGenerator.init()()
{
  v1 = v0;
  v2 = sub_268C88A14();
  v3 = OUTLINED_FUNCTION_0_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1[4] = -1;
  sub_268C88A04();
  v10 = sub_268C889F4();
  v12 = v11;
  (*(v5 + 8))(v9, v2);
  v1[2] = v10;
  v1[3] = v12;
  return v1;
}

uint64_t sub_268C74494@<X0>(void *a1@<X8>)
{
  v2 = v1[4];
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1[4] = v4;
    v5 = v1[3];
    *a1 = v1[2];
    a1[1] = v5;
    a1[2] = v4;
  }

  return result;
}

uint64_t GroupIdentifierGenerator.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t GroupIdentifierGenerator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GroupIdentifier.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_268C74688()
{
  result = qword_2802D4798;
  if (!qword_2802D4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4798);
  }

  return result;
}

unint64_t sub_268C746E0()
{
  result = qword_280D69560;
  if (!qword_280D69560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69560);
  }

  return result;
}

unint64_t sub_268C74738()
{
  result = qword_280D69568;
  if (!qword_280D69568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D69568);
  }

  return result;
}

id sub_268C747BC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v3 = sub_268C88C74();

  return v3;
}

uint64_t RRAnnotatedEntity.group.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group;
  *a1 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  *(a1 + 8) = *(v2 + 8);
}

uint64_t sub_268C748C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_268C748F4(v4);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_268C74B58(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment;
  result = OUTLINED_FUNCTION_37_0();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_268C74BFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_268C74C28(v4);
}

uint64_t sub_268C74C34(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_37_0();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

id sub_268C74CE0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  if (v3)
  {
    v4 = sub_268C88C74();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_268C74DBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_37_0();
  v6 = v5[1];
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_268C74E14(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_268C74DBC(v2, v3);
}

uint64_t sub_268C74ED0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v9 = OUTLINED_FUNCTION_29_0();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  OUTLINED_FUNCTION_6(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_22();
  sub_268C6736C(a1, v5, &qword_2802D47B8, &unk_268C8A5B8);
  v15 = *a2;
  return a5(v5);
}

unint64_t RRAnnotationName.rawValue.getter()
{
  result = 0x656E6F69746E656DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E65657263736E6FLL;
      break;
    case 2:
      result = 0x756F726765726F66;
      break;
    case 3:
      result = OUTLINED_FUNCTION_26_1();
      break;
    case 4:
      result = 0x6979616C50776F6ELL;
      break;
    case 5:
      result = 0x744179627261656ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C75048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_268C68144(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

uint64_t sub_268C75098(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C689EC();
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C7516C(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_67();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C751B0(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68BBC();
  return OUTLINED_FUNCTION_34_0();
}

void sub_268C75250(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_55();
    sub_268C6736C(v5, v6, &qword_2802D47B8, &unk_268C8A5B8);
    v7 = OUTLINED_FUNCTION_29_0();
    sub_268C679A4(v7, v8, v2);
    sub_268C65E88(v2, &qword_2802D47B8, &unk_268C8A5B8);
  }

  else
  {
    v9 = OUTLINED_FUNCTION_29_0();
    sub_268C679A4(v9, v10, v3);
  }

  sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
  free(v3);

  free(v2);
}

uint64_t sub_268C75348(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_49();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C7538C(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68B50();
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C754B8(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68EB0();
  return OUTLINED_FUNCTION_34_0();
}

uint64_t sub_268C75584(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_26_1();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C755D0(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68C1C();
  return OUTLINED_FUNCTION_34_0();
}

void sub_268C75654(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v5 = OUTLINED_FUNCTION_55();
    sub_268C6736C(v5, v6, &qword_2802D47B8, &unk_268C8A5B8);
    v7 = OUTLINED_FUNCTION_26_1();
    sub_268C679A4(v7, v8, v2);
    v9 = OUTLINED_FUNCTION_64();
    sub_268C65E88(v9, v10, &unk_268C8A5B8);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_26_1();
    sub_268C679A4(v11, v12, v3);
  }

  sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
  free(v3);

  free(v2);
}

id sub_268C75730(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v8);
  v10 = &v19 - v9;
  v11 = a1;
  a3();

  v12 = sub_268C889E4();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(v10, 1, v12) != 1)
  {
    v13 = sub_268C889B4();
    OUTLINED_FUNCTION_16_1(v12);
    v15 = *(v14 + 8);
    v16 = OUTLINED_FUNCTION_63();
    v17(v16);
  }

  return v13;
}

void sub_268C75844(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_41();
  if (a3)
  {
    sub_268C889D4();
    v12 = sub_268C889E4();
    v13 = 0;
  }

  else
  {
    v12 = sub_268C889E4();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v4, v13, 1, v12);
  v14 = a1;
  a4(v4);
}

uint64_t sub_268C75910(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_52();
  sub_268C679A4(v2, v3, a1);
  return sub_268C65E88(a1, &qword_2802D47B8, &unk_268C8A5B8);
}

uint64_t sub_268C75954(void *a1)
{
  OUTLINED_FUNCTION_35_0(a1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v1);
  v3 = __swift_coroFrameAllocStub(*(v2 + 64));
  v4 = OUTLINED_FUNCTION_30_0(v3);
  v5 = __swift_coroFrameAllocStub(v4);
  OUTLINED_FUNCTION_9_1(v5);
  sub_268C68E08();
  return OUTLINED_FUNCTION_34_0();
}

id RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, __n128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_59(a11);
  v23 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
  sub_268C889E4();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
  *v28 = 0;
  v28[8] = 1;
  v29 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id];
  *v30 = a1;
  *(v30 + 1) = a2;
  v31 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId];
  *v31 = a3;
  *(v31 + 1) = a4;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity] = a5;
  sub_268C88C24();
  OUTLINED_FUNCTION_16();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  v36 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType];
  *v36 = a6;
  *(v36 + 1) = a7;
  v37 = &v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
  *v37 = a8;
  *(v37 + 1) = a10;
  OUTLINED_FUNCTION_48(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group, v45, v46, v47);
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata] = a12;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score] = a9;
  OUTLINED_FUNCTION_32_0();

  v38 = OUTLINED_FUNCTION_29_0();
  sub_268C66A34(v38, v39);
  sub_268C67908(a13, &v16[v23]);
  swift_endAccess();
  OUTLINED_FUNCTION_37_0();
  *v28 = 0;
  v28[8] = 1;
  *&v16[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations] = a14;
  OUTLINED_FUNCTION_37_0();
  v40 = *(v29 + 1);
  *v29 = a15;
  *(v29 + 1) = a16;

  v51.receiver = v16;
  v51.super_class = type metadata accessor for RRAnnotatedEntity(0);
  v41 = objc_msgSendSuper2(&v51, sel_init);
  v42 = OUTLINED_FUNCTION_29_0();
  sub_268C65EE0(v42, v43);

  sub_268C65E88(a13, &qword_2802D47B8, &unk_268C8A5B8);
  return v41;
}

id RRAnnotatedEntity.__allocating_init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  OUTLINED_FUNCTION_21_1();
  v19 = objc_allocWithZone(v17);
  v20 = OUTLINED_FUNCTION_25_1();
  return RRAnnotatedEntity.init(id:appBundleId:usoEntity:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v21, v22, v23, v24, v25, a6, a7, a8, v20, v27, v28, v29, v30, a13, a14 & 1, a15, a16, a17);
}

void *RRAnnotatedEntity.__allocating_init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v3 = OUTLINED_FUNCTION_6(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_10_1();
  v105 = v6 - v7;
  v9 = MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_60(v9, v10, v11, v12, v13, v14, v15, v16, v89);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4640, &qword_268C89710);
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_1();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47D0, &qword_268C8A5D8);
  OUTLINED_FUNCTION_0_0(v30);
  v32 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_44();
  v36 = a1[3];
  v37 = a1[4];
  v108 = a1;
  v38 = OUTLINED_FUNCTION_22_1();
  v40 = __swift_project_boxed_opaque_existential_1(v38, v39);
  sub_268C769D8();
  v41 = v107;
  sub_268C890D4();
  if (v41)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
  }

  else
  {
    v42 = v27;
    v103 = v23;
    v104 = v29;
    v107 = v32;
    LOBYTE(v109) = 0;
    OUTLINED_FUNCTION_17_1();
    v43 = sub_268C88EE4();
    v45 = v44;
    OUTLINED_FUNCTION_12_1(1);
    v46 = sub_268C88EE4();
    v48 = v47;
    v102 = v46;
    sub_268C88BC4();
    v111 = 2;
    OUTLINED_FUNCTION_20_1();
    sub_268C67324(v49, v50);
    OUTLINED_FUNCTION_6_1();
    sub_268C88F24();
    v98 = v43;
    v99 = v48;
    v100 = v109;
    v101 = v45;
    v52 = sub_268C88C24();
    v53 = v104;
    OUTLINED_FUNCTION_16();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v52);
    LOBYTE(v109) = 3;
    OUTLINED_FUNCTION_19_1();
    sub_268C67324(v57, v58);
    OUTLINED_FUNCTION_17_1();
    sub_268C88F24();
    sub_268C65E88(v53, &qword_2802D4640, &qword_268C89710);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v52);
    OUTLINED_FUNCTION_16_1(v52);
    (*(v62 + 32))(v53, v42, v52);
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v63, v64, v65, v52);
    OUTLINED_FUNCTION_12_1(4);
    v66 = sub_268C88EB4();
    v67 = v99;
    v95 = v66;
    v97 = v68;
    v111 = 5;
    sub_268C660B8();
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    if (*(&v109 + 1) >> 60 == 15)
    {
      v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47E0, &unk_268C8A5E0);
      v111 = 5;
      sub_268C76AE8(&qword_2802D47E8);
      OUTLINED_FUNCTION_17_1();
      sub_268C88ED4();
      v70 = v109;
      if (v109)
      {

        *&v109 = v69;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4808, &qword_268C8A5F8);
        v95 = sub_268C88C94();
        v97 = v71;
        v72 = sub_268C88964();
        v73 = *(v72 + 48);
        v74 = *(v72 + 52);
        swift_allocObject();
        sub_268C88954();
        *&v109 = v70;
        sub_268C76AE8(&qword_2802D4810);
        *&v96 = sub_268C88944();
        *(&v96 + 1) = v75;
      }

      else
      {
        *&v96 = 0;
        *(&v96 + 1) = 0xF000000000000000;
      }
    }

    else
    {
      v96 = v109;
    }

    v111 = 6;
    sub_268C66154();
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    v76 = v109;
    v77 = v110;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
    v111 = 7;
    sub_268C78B64(&qword_280D691B8, sub_268C6FFB8);
    OUTLINED_FUNCTION_6_1();
    sub_268C88ED4();
    v99 = *(&v76 + 1);
    v78 = v109;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47F0, &qword_268C8A5F0);
    v111 = 8;
    sub_268C76A2C();
    OUTLINED_FUNCTION_6_1();
    sub_268C88ED4();
    v94 = v78;
    v79 = *&v109;
    OUTLINED_FUNCTION_12_1(9);
    v91 = sub_268C88EB4();
    v93 = v79;
    v92 = v80;
    OUTLINED_FUNCTION_12_1(10);
    sub_268C88EC4();
    v90 = v81;
    OUTLINED_FUNCTION_36_0();
    sub_268C889E4();
    LOBYTE(v109) = 11;
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v82, v83);
    v89 = v30;
    OUTLINED_FUNCTION_17_1();
    sub_268C88ED4();
    sub_268C6736C(v104, v103, &qword_2802D4640, &qword_268C89710);
    *&v109 = v76;
    *(&v109 + 1) = v99;
    v110 = v77;
    if (v94)
    {
      v84 = v94;
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    if (v90)
    {
      v85 = 0.0;
    }

    else
    {
      v85 = v79;
    }

    sub_268C6736C(v106, v105, &qword_2802D47B8, &unk_268C8A5B8);
    if (v93 == 0.0)
    {
      type metadata accessor for RRAnnotationValue(0);
      v93 = COERCE_DOUBLE(sub_268C88C44());
    }

    v86 = objc_allocWithZone(type metadata accessor for RRAnnotatedEntity(0));
    v40 = RRAnnotatedEntity.init(id:appBundleId:usoEntity:typedValue:dataType:data:group:metadata:score:saliencyComputedAt:onScreenSaliencyAdjustment:annotations:userId:)(v98, v101, v102, v67, v100, v103, v95, v97, v85, v96, *(&v96 + 1), &v109, v84, v105, 0, 1, *&v93, v91, v92);
    sub_268C65E88(v106, &qword_2802D47B8, &unk_268C8A5B8);
    sub_268C65E88(v104, &qword_2802D4640, &qword_268C89710);
    v87 = OUTLINED_FUNCTION_47();
    v88(v87);
    __swift_destroy_boxed_opaque_existential_0Tm(v108);
  }

  return v40;
}

unint64_t sub_268C769D8()
{
  result = qword_2802D47D8;
  if (!qword_2802D47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D47D8);
  }

  return result;
}

unint64_t sub_268C76A2C()
{
  result = qword_2802D47F8;
  if (!qword_2802D47F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47F0, &qword_268C8A5F0);
    sub_268C67324(&qword_2802D4800, type metadata accessor for RRAnnotationValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D47F8);
  }

  return result;
}

uint64_t sub_268C76AE8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47E0, &unk_268C8A5E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_268C76B54()
{
  v0 = sub_268C88E84();

  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_268C76BA8(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6C646E7542707061;
      break;
    case 2:
      result = 0x7469746E456F7375;
      break;
    case 3:
      result = 0x6C61566465707974;
      break;
    case 4:
      result = 0x6570795461746164;
      break;
    case 5:
      result = 1635017060;
      break;
    case 6:
      result = 0x70756F7267;
      break;
    case 7:
      result = 0x617461646174656DLL;
      break;
    case 8:
      result = 0x697461746F6E6E61;
      break;
    case 9:
      result = 0x644972657375;
      break;
    case 10:
      result = 0x65726F6373;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268C76D0C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_268C76B54();
  *a2 = result;
  return result;
}

unint64_t sub_268C76D3C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_268C76BA8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_268C76D84@<X0>(_BYTE *a1@<X8>)
{
  result = sub_268C76BA0();
  *a1 = result;
  return result;
}

uint64_t sub_268C76DB8(uint64_t a1)
{
  v2 = sub_268C769D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268C76DF4(uint64_t a1)
{
  v2 = sub_268C769D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268C76E30@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id + 8);
  v20 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  v21 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  v18 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity);
  v19 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId + 8);
  v4 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_typedValue;
  v5 = type metadata accessor for RREntity();
  sub_268C6736C(v1 + v4, a1 + v5[7], &qword_2802D4640, &qword_268C89710);
  v6 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8);
  v15 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType);
  v8 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
  v7 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8);
  v17 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8);
  v23 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 16);
  v24 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  v9 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v16 = *(v1 + v9);
  v10 = (a1 + v5[10]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = 0;
  v11 = (a1 + v5[12]);
  *a1 = v21;
  a1[1] = v3;
  a1[2] = v20;
  a1[3] = v19;
  a1[4] = v18;
  v12 = (a1 + v5[8]);
  *v12 = v15;
  v12[1] = v6;
  v13 = (a1 + v5[9]);
  *v13 = v8;
  v13[1] = v7;
  v22 = v10[1];

  sub_268C66A34(v8, v7);

  *v10 = v24;
  v10[1] = v17;
  v10[2] = v23;
  *(a1 + v5[11]) = v16;
  *v11 = 0;
  v11[1] = 0;
  return result;
}

uint64_t sub_268C76FF4@<X0>(void *a1@<X8>)
{
  sub_268C76E30(a1);
  v3 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v4 = *(v1 + v3);
  result = type metadata accessor for RRCandidate(0);
  *(a1 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_268C77058(uint64_t a1)
{
  v4 = sub_268C889E4();
  v5 = OUTLINED_FUNCTION_0_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4818, &unk_268C8A600);
  OUTLINED_FUNCTION_3(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_41();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  v18 = OUTLINED_FUNCTION_6(v17);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_10_1();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v131 - v25;
  sub_268C6736C(a1, v138, &qword_2802D4820, &unk_268C8AA40);
  if (!v139)
  {
    sub_268C65E88(v138, &qword_2802D4820, &unk_268C8AA40);
    goto LABEL_61;
  }

  type metadata accessor for RRAnnotatedEntity(0);
  if (swift_dynamicCast())
  {
    v27 = v137;
    OUTLINED_FUNCTION_42(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
    v30 = v30 && v28 == v29;
    if (!v30 && (sub_268C88FD4() & 1) == 0)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_42(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
    v33 = v30 && v31 == v32;
    if (!v33 && (sub_268C88FD4() & 1) == 0)
    {
      goto LABEL_60;
    }

    v132 = v7;
    v133 = v2;
    v134 = v4;
    v135 = v1;
    v34 = *(v1 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity);
    sub_268C88AC4();
    v35 = sub_268C88A74();
    v37 = v36;

    v136 = v27;
    v38 = *&v27[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity];
    sub_268C88AC4();
    v39 = sub_268C88A74();
    v41 = v40;

    if (v35 == v39 && v37 == v41)
    {
    }

    else
    {
      v43 = sub_268C88FD4();

      if ((v43 & 1) == 0)
      {
LABEL_18:

        goto LABEL_61;
      }
    }

    v44 = v135;
    v45 = *(v135 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8);
    v46 = v136;
    v47 = *&v136[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType + 8];
    if (v45)
    {
      if (v47)
      {
        v48 = *(v135 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType) == *&v136[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType] && v45 == v47;
        if (v48 || (sub_268C88FD4() & 1) != 0)
        {
LABEL_28:
          v49 = v44 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data;
          v50 = *(v44 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
          v51 = *&v46[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data];
          v52 = *&v46[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data + 8];
          if (*(v49 + 8) >> 60 == 15)
          {
            if (v52 >> 60 == 15)
            {
              v53 = OUTLINED_FUNCTION_24_1();
              sub_268C66A34(v53, v54);
              v55 = OUTLINED_FUNCTION_22_1();
              sub_268C66A34(v55, v56);
              v57 = OUTLINED_FUNCTION_22_1();
              sub_268C65EE0(v57, v58);
              goto LABEL_36;
            }
          }

          else if (v52 >> 60 != 15)
          {
            v67 = OUTLINED_FUNCTION_24_1();
            sub_268C66A34(v67, v68);
            v69 = OUTLINED_FUNCTION_24_1();
            sub_268C66A34(v69, v70);
            v71 = OUTLINED_FUNCTION_22_1();
            sub_268C66A34(v71, v72);
            v73 = OUTLINED_FUNCTION_22_1();
            v74 = MEMORY[0x26D629CA0](v73);
            v75 = OUTLINED_FUNCTION_24_1();
            sub_268C65EE0(v75, v76);
            v77 = OUTLINED_FUNCTION_24_1();
            sub_268C65EE0(v77, v78);
            v79 = OUTLINED_FUNCTION_22_1();
            sub_268C65EE0(v79, v80);
            if ((v74 & 1) == 0)
            {
              goto LABEL_18;
            }

LABEL_36:
            v81 = (v135 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
            v82 = *(v135 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8);
            v27 = v136;
            v83 = &v136[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group];
            v84 = *&v136[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8];
            if (v82)
            {
              if (v84)
              {
                v85 = v81[2];
                v86 = *(v83 + 2);
                if (*v81 == *v83 && v82 == v84)
                {
                  OUTLINED_FUNCTION_54();
                  swift_bridgeObjectRetain_n();
                  v90 = v135;
                }

                else
                {
                  v88 = v81[1];
                  v89 = sub_268C88FD4();
                  OUTLINED_FUNCTION_54();
                  swift_bridgeObjectRetain_n();
                  v90 = v135;
                  if ((v89 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_54();
                    swift_bridgeObjectRelease_n();
                    v27 = v136;
LABEL_60:

                    goto LABEL_61;
                  }
                }

                OUTLINED_FUNCTION_54();
                swift_bridgeObjectRelease_n();
                v30 = v85 == v86;
                v27 = v136;
                if (!v30)
                {
                  goto LABEL_60;
                }

LABEL_52:
                v93 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v94 = *(v90 + v93);
                v95 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v96 = *&v27[v95];

                v97 = OUTLINED_FUNCTION_20();
                v99 = sub_268C6F4CC(v97, v98);

                if ((v99 & 1) == 0)
                {
                  goto LABEL_60;
                }

                v100 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v101 = *(v90 + v100);
                v102 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                if (v101 != *&v27[v102])
                {
                  goto LABEL_60;
                }

                v103 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v104 = v135;
                sub_268C6736C(v135 + v103, v26, &qword_2802D47B8, &unk_268C8A5B8);
                v105 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
                OUTLINED_FUNCTION_8_0();
                swift_beginAccess();
                v106 = *(v13 + 48);
                v107 = v133;
                sub_268C6736C(v26, v133, &qword_2802D47B8, &unk_268C8A5B8);
                sub_268C6736C(&v27[v105], v107 + v106, &qword_2802D47B8, &unk_268C8A5B8);
                v108 = v134;
                if (__swift_getEnumTagSinglePayload(v107, 1, v134) == 1)
                {
                  sub_268C65E88(v26, &qword_2802D47B8, &unk_268C8A5B8);
                  if (__swift_getEnumTagSinglePayload(v107 + v106, 1, v108) == 1)
                  {
                    sub_268C65E88(v107, &qword_2802D47B8, &unk_268C8A5B8);
                    goto LABEL_64;
                  }
                }

                else
                {
                  sub_268C6736C(v107, v23, &qword_2802D47B8, &unk_268C8A5B8);
                  if (__swift_getEnumTagSinglePayload(v107 + v106, 1, v108) != 1)
                  {
                    v111 = v132;
                    (*(v132 + 32))(v12, v107 + v106, v108);
                    OUTLINED_FUNCTION_0_1();
                    sub_268C67324(v112, v113);
                    LODWORD(v136) = sub_268C88C64();
                    v114 = *(v111 + 8);
                    v114(v12, v108);
                    OUTLINED_FUNCTION_62();
                    sub_268C65E88(v115, v116, v117);
                    v114(v23, v108);
                    OUTLINED_FUNCTION_62();
                    sub_268C65E88(v118, v119, v120);
                    if ((v136 & 1) == 0)
                    {
                      goto LABEL_60;
                    }

LABEL_64:
                    v121 = v104;
                    v122 = v104 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v123 = *v122;
                    v124 = *(v122 + 8);
                    v125 = &v27[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_onScreenSaliencyAdjustment];
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v126 = *(v125 + 8);
                    if (v124)
                    {
                      if ((v125[1] & 1) == 0)
                      {
                        goto LABEL_60;
                      }
                    }

                    else if ((v125[1] & 1) != 0 || v123 != *v125)
                    {
                      goto LABEL_60;
                    }

                    v127 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v128 = *(v121 + v127);
                    v129 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
                    OUTLINED_FUNCTION_8_0();
                    swift_beginAccess();
                    v130 = *&v27[v129];

                    v109 = sub_268C77934(v128, v130);

                    return v109 & 1;
                  }

                  sub_268C65E88(v26, &qword_2802D47B8, &unk_268C8A5B8);
                  (*(v132 + 8))(v23, v108);
                }

                sub_268C65E88(v107, &qword_2802D4818, &unk_268C8A600);
                goto LABEL_60;
              }

              v92 = v81[1];
            }

            else
            {
              if (!v84)
              {

                v90 = v135;
                goto LABEL_52;
              }

              v91 = *&v136[OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group + 8];
            }

            goto LABEL_61;
          }

          v59 = OUTLINED_FUNCTION_24_1();
          sub_268C66A34(v59, v60);
          v61 = OUTLINED_FUNCTION_22_1();
          sub_268C66A34(v61, v62);

          v63 = OUTLINED_FUNCTION_22_1();
          sub_268C65EE0(v63, v64);
          v65 = OUTLINED_FUNCTION_24_1();
          sub_268C65EE0(v65, v66);
          goto LABEL_61;
        }
      }
    }

    else if (!v47)
    {
      goto LABEL_28;
    }
  }

LABEL_61:
  v109 = 0;
  return v109 & 1;
}

uint64_t sub_268C77934(uint64_t a1, uint64_t a2)
{
  v74 = sub_268C889E4();
  v4 = *(v74 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v74);
  v73 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RRAnnotationValue(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v81 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v63 - v13;
  MEMORY[0x28223BE20](v12);
  v80 = &v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4878, &qword_268C8AA28);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  result = MEMORY[0x28223BE20](v18);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v71 = (&v63 - v20);
  v72 = v21;
  v22 = 0;
  v66 = a1;
  v25 = *(a1 + 64);
  v24 = a1 + 64;
  v23 = v25;
  v26 = 1 << *(v24 - 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & v23;
  v64 = (v26 + 63) >> 6;
  v65 = v24;
  v67 = (v4 + 8);
  v68 = (v4 + 32);
  v69 = v8;
  v70 = a2;
  v79 = v14;
  while (v28)
  {
    v78 = (v28 - 1) & v28;
    v29 = __clz(__rbit64(v28)) | (v22 << 6);
    v30 = v72;
LABEL_13:
    v33 = (*(v66 + 48) + 16 * v29);
    v35 = *v33;
    v34 = v33[1];
    v36 = v80;
    sub_268C68518(*(v66 + 56) + *(v8 + 72) * v29, v80);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
    v38 = *(v37 + 48);
    *v30 = v35;
    v30[1] = v34;
    sub_268C684A0(v36, v30 + v38);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v37);

LABEL_14:
    v39 = v71;
    sub_268C79BCC(v30, v71);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v39, 1, v40);
    v42 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v42;
    }

    v43 = *(v40 + 48);
    v44 = *v39;
    v45 = v39[1];
    sub_268C684A0(v39 + v43, v14);
    v46 = sub_268C68144(v44, v45);
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      sub_268C687CC(v14);
      return 0;
    }

    v75 = v42;
    v49 = *(a2 + 56) + *(v8 + 72) * v46;
    v50 = v81;
    sub_268C68518(v49, v81);
    v51 = v80;
    sub_268C68518(v50, v80);
    v77 = *v68;
    v53 = v73;
    v52 = v74;
    v77(v73, v51, v74);
    v82 = 0x2865746164;
    v83 = 0xE500000000000000;
    sub_268C67324(&qword_280D693D8, MEMORY[0x277CC9578]);
    v54 = sub_268C88FC4();
    MEMORY[0x26D629FC0](v54);

    MEMORY[0x26D629FC0](41, 0xE100000000000000);
    v55 = v83;
    v76 = v82;
    v56 = *v67;
    (*v67)(v53, v52);
    sub_268C68518(v79, v51);
    v77(v53, v51, v52);
    v82 = 0x2865746164;
    v83 = 0xE500000000000000;
    v57 = sub_268C88FC4();
    MEMORY[0x26D629FC0](v57);

    MEMORY[0x26D629FC0](41, 0xE100000000000000);
    v59 = v82;
    v58 = v83;
    v56(v53, v52);
    if (v76 == v59 && v55 == v58)
    {

      sub_268C687CC(v81);
      v14 = v79;
      result = sub_268C687CC(v79);
      v8 = v69;
      a2 = v70;
      v28 = v78;
    }

    else
    {
      v61 = sub_268C88FD4();

      sub_268C687CC(v81);
      v14 = v79;
      result = sub_268C687CC(v79);
      v8 = v69;
      a2 = v70;
      v28 = v78;
      v42 = v75;
      if ((v61 & 1) == 0)
      {
        return v42;
      }
    }
  }

  v30 = v72;
  while (1)
  {
    v31 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v31 >= v64)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4880, &unk_268C8AA30);
      __swift_storeEnumTagSinglePayload(v30, 1, 1, v62);
      v78 = 0;
      goto LABEL_14;
    }

    v32 = *(v65 + 8 * v31);
    ++v22;
    if (v32)
    {
      v78 = (v32 - 1) & v32;
      v29 = __clz(__rbit64(v32)) | (v31 << 6);
      v22 = v31;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268C77FD0()
{
  v1 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = *(v2 + 16) + 1;
  while (--v3)
  {
    v4 = (v2 + 56);
    v5 = *(v2 + 80);
    v2 += 56;
    if (!v5)
    {
      *&result = *(v4 - 1) * *v4;
      return result;
    }
  }

  *&result = 0.0;
  return result;
}

id RRAnnotatedEntity.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RRAnnotatedEntity.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RRAnnotatedEntity(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_268C780F4(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47B8, &unk_268C8A5B8);
  OUTLINED_FUNCTION_6(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_22();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4830, &qword_268C8A610);
  OUTLINED_FUNCTION_0_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_44();
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = OUTLINED_FUNCTION_22_1();
  __swift_project_boxed_opaque_existential_1(v16, v17);
  sub_268C769D8();
  sub_268C890F4();
  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_id);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F74();
  if (v2)
  {
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_appBundleId);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F74();
  v41 = *(v4 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_usoEntity);
  sub_268C88BC4();
  OUTLINED_FUNCTION_20_1();
  sub_268C67324(v18, v19);
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  sub_268C88C24();
  OUTLINED_FUNCTION_19_1();
  sub_268C67324(v20, v21);
  OUTLINED_FUNCTION_5_1();
  sub_268C88F64();
  OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_dataType);
  OUTLINED_FUNCTION_18_1();
  sub_268C88F54();
  v42 = OUTLINED_FUNCTION_61(OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_data);
  v43 = v22;
  sub_268C66A34(v42, v22);
  sub_268C669E0();
  OUTLINED_FUNCTION_18_1();
  sub_268C88F64();
  sub_268C65EE0(v42, v43);
  OUTLINED_FUNCTION_56(v4 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_group);
  v23 = sub_268C6698C();

  OUTLINED_FUNCTION_18_1();
  sub_268C88F64();
  if (v23)
  {

LABEL_5:
    v26 = OUTLINED_FUNCTION_38_0();
    return v27(v26);
  }

  v24 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_metadata;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v40 = *(v4 + v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4668, &qword_268C89730);
  sub_268C78B64(&qword_280D69410, sub_268C6FF64);
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  v25 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_annotations;
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v39 = *(v4 + v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D47F0, &qword_268C8A5F0);
  sub_268C78BDC();
  OUTLINED_FUNCTION_5_1();
  sub_268C88FB4();
  v29 = (v4 + OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_userId);
  OUTLINED_FUNCTION_8_0();
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];

  OUTLINED_FUNCTION_18_1();
  sub_268C88F54();
  if (!v30)
  {

    v34 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_score;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    v35 = *(v4 + v34);
    OUTLINED_FUNCTION_18_1();
    sub_268C88F94();
    v36 = OBJC_IVAR____TtC32SiriReferenceResolutionDataModel17RRAnnotatedEntity_saliencyComputedAt;
    OUTLINED_FUNCTION_8_0();
    swift_beginAccess();
    sub_268C6736C(v4 + v36, v3, &qword_2802D47B8, &unk_268C8A5B8);
    sub_268C889E4();
    OUTLINED_FUNCTION_0_1();
    sub_268C67324(v37, v38);
    OUTLINED_FUNCTION_5_1();
    sub_268C88F64();
    sub_268C65E88(v3, &qword_2802D47B8, &unk_268C8A5B8);
    goto LABEL_5;
  }

  v32 = OUTLINED_FUNCTION_38_0();
  v33(v32);
}

void *sub_268C78678@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = RRAnnotatedEntity.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

SiriReferenceResolutionDataModel::RRAnnotationName_optional __swiftcall RRAnnotationName.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C88E84();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_268C78754@<X0>(unint64_t *a1@<X8>)
{
  result = RRAnnotationName.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t RRAnnotationValue.init(date:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_268C889E4();
  v5 = OUTLINED_FUNCTION_3(v4);
  v7 = *(v6 + 32);

  return v7(a2, a1, v5);
}

uint64_t static RRAnnotationValue.== infix(_:_:)()
{
  v0 = RRAnnotationValue.description.getter();
  v2 = v1;
  if (v0 == RRAnnotationValue.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_55();
    v5 = sub_268C88FD4();
  }

  return v5 & 1;
}

uint64_t RRAnnotationValue.hash(into:)()
{
  v2 = OUTLINED_FUNCTION_36_0();
  v3 = type metadata accessor for RRAnnotationValue(v2);
  v4 = OUTLINED_FUNCTION_6(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_41();
  sub_268C68518(v0, v1);
  MEMORY[0x26D62A380](0);
  v7 = sub_268C889E4();
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v8, v9);
  sub_268C88C54();
  OUTLINED_FUNCTION_16_1(v7);
  return (*(v10 + 8))(v1, v7);
}

uint64_t RRAnnotationValue.hashValue.getter()
{
  v1 = type metadata accessor for RRAnnotationValue(0);
  v2 = OUTLINED_FUNCTION_6(v1);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1();
  v7 = v6 - v5;
  sub_268C89064();
  sub_268C68518(v0, v7);
  MEMORY[0x26D62A380](0);
  v8 = sub_268C889E4();
  OUTLINED_FUNCTION_0_1();
  sub_268C67324(v9, v10);
  sub_268C88C54();
  OUTLINED_FUNCTION_16_1(v8);
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_63();
  v14(v13);
  return sub_268C890A4();
}

uint64_t sub_268C78A4C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_268C89064();
  sub_268C68518(v2, v5);
  MEMORY[0x26D62A380](0);
  v6 = sub_268C889E4();
  sub_268C67324(&qword_2802D4848, MEMORY[0x277CC9578]);
  sub_268C88C54();
  (*(*(v6 - 8) + 8))(v5, v6);
  return sub_268C890A4();
}

uint64_t sub_268C78B64(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D4668, &qword_268C89730);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_268C78BDC()
{
  result = qword_2802D4838;
  if (!qword_2802D4838)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2802D47F0, &qword_268C8A5F0);
    sub_268C67324(&qword_2802D4840, type metadata accessor for RRAnnotationValue);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4838);
  }

  return result;
}

uint64_t sub_268C78C98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_268C68144(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    swift_isUniquelyReferenced_nonNull_native();
    v19 = *v4;
    v11 = *(*v4 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802D4888, &qword_268C8CE90);
    sub_268C88E54();
    v12 = *(*(v19 + 48) + 16 * v9 + 8);

    v13 = *(v19 + 56);
    v14 = type metadata accessor for RRAnnotationValue(0);
    sub_268C684A0(v13 + *(*(v14 - 8) + 72) * v9, a3);
    sub_268C88E64();
    *v4 = v19;
    v15 = a3;
    v16 = 0;
    v17 = v14;
  }

  else
  {
    v17 = type metadata accessor for RRAnnotationValue(0);
    v15 = a3;
    v16 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, 1, v17);
}

unint64_t sub_268C78DD0()
{
  result = qword_2802D4850;
  if (!qword_2802D4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4850);
  }

  return result;
}

void sub_268C78E74()
{
  sub_268C79660(319, qword_280D696A8, MEMORY[0x277D72A78]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_268C79660(319, &qword_280D69978, MEMORY[0x277CC9578]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_268C79660(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_268C88D94();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RRAnnotationName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRAnnotationName(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_268C79818(uint64_t a1, uint64_t a2)
{
  v4 = sub_268C889E4();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_268C79860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C889E4();

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v6);
}

uint64_t sub_268C798B8(uint64_t a1)
{
  v2 = sub_268C889E4();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t getEnumTagSinglePayload for RRAnnotatedEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RRAnnotatedEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268C79AC8()
{
  result = qword_2802D4860;
  if (!qword_2802D4860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4860);
  }

  return result;
}

unint64_t sub_268C79B20()
{
  result = qword_2802D4868;
  if (!qword_2802D4868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802D4868);
  }

  return result;
}