unint64_t sub_2611ADA24()
{
  result = qword_27FE8B390[0];
  if (!qword_27FE8B390[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B390);
  }

  return result;
}

unint64_t sub_2611ADA7C()
{
  result = qword_27FE8B4A0;
  if (!qword_27FE8B4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B4A0);
  }

  return result;
}

unint64_t sub_2611ADAD4()
{
  result = qword_27FE8B4A8[0];
  if (!qword_27FE8B4A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B4A8);
  }

  return result;
}

unint64_t sub_2611ADB2C()
{
  result = qword_27FE8B530;
  if (!qword_27FE8B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B530);
  }

  return result;
}

unint64_t sub_2611ADB84()
{
  result = qword_27FE8B538[0];
  if (!qword_27FE8B538[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B538);
  }

  return result;
}

unint64_t sub_2611ADBDC()
{
  result = qword_27FE8B5C0;
  if (!qword_27FE8B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B5C0);
  }

  return result;
}

unint64_t sub_2611ADC34()
{
  result = qword_27FE8B5C8[0];
  if (!qword_27FE8B5C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B5C8);
  }

  return result;
}

uint64_t sub_2611ADC88(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL;
  if (v4 || (sub_26121D4D0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B6E696C6572 && a2 == 0xE600000000000000 || (sub_26121D4D0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x52556769666E6F63 && a2 == 0xE90000000000004CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_26121D4D0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2611ADDB4()
{
  if (*v0)
  {
    result = 0x646E4165726F7473;
  }

  else
  {
    result = 0x656E696C6E6FLL;
  }

  *v0;
  return result;
}

uint64_t sub_2611ADDF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656E696C6E6FLL && a2 == 0xE600000000000000;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x646E4165726F7473 && a2 == 0xEF64726177726F46)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2611ADED8(uint64_t a1)
{
  v2 = sub_2611AF830();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611ADF14(uint64_t a1)
{
  v2 = sub_2611AF830();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611ADF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5472656E74726170 && a2 == 0xEC0000006E656B6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_26121D4D0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2611ADFFC(uint64_t a1)
{
  v2 = sub_2611AF8D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AE038(uint64_t a1)
{
  v2 = sub_2611AF8D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2611AE080@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_2611AE0B0(uint64_t a1)
{
  v2 = sub_2611AF884();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AE0EC(uint64_t a1)
{
  v2 = sub_2611AF884();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InternalSessionType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87398, &qword_2612208C0);
  v22 = *(v3 - 8);
  v23 = v3;
  v4 = *(v22 + 64);
  MEMORY[0x28223BE20](v3);
  v21 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873A0, &qword_2612208C8);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873A8, &qword_2612208D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - v13;
  v15 = v1[1];
  v24 = *v1;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF830();
  sub_26121D600();
  if (v15)
  {
    v27 = 0;
    sub_2611AF8D8();
    sub_26121D410();
    v17 = v26;
    sub_26121D460();
    (*(v25 + 8))(v9, v17);
  }

  else
  {
    v28 = 1;
    sub_2611AF884();
    v19 = v21;
    sub_26121D410();
    (*(v22 + 8))(v19, v23);
  }

  return (*(v11 + 8))(v14, v10);
}

uint64_t InternalSessionType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873B0, &qword_2612208D8);
  v36 = *(v34 - 8);
  v3 = *(v36 + 8);
  MEMORY[0x28223BE20](v34);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873B8, &qword_2612208E0);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE873C0, &unk_2612208E8);
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF830();
  v15 = v39;
  sub_26121D5F0();
  if (v15)
  {
    goto LABEL_7;
  }

  v16 = v37;
  v39 = a1;
  v17 = v13;
  v18 = sub_26121D400();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_26121D220();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE88370, &qword_261220470) + 48);
    *v22 = &type metadata for InternalSessionType;
    sub_26121D360();
    sub_26121D210();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v38 + 8))(v13, v10);
    swift_unknownObjectRelease();
    a1 = v39;
LABEL_7:
    v31 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v31);
  }

  if (*(v18 + 32))
  {
    v41 = 1;
    sub_2611AF884();
    sub_26121D350();
    v19 = v38;
    v27 = v16;
    (*(v36 + 1))(v5, v34);
    (*(v19 + 8))(v17, v10);
    swift_unknownObjectRelease();
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v40 = 0;
    sub_2611AF8D8();
    v24 = v9;
    sub_26121D350();
    v25 = v13;
    v26 = v38;
    v27 = v16;
    v30 = v24;
    v36 = v25;
    v28 = sub_26121D3B0();
    v29 = v33;
    (*(v35 + 8))(v30, v6);
    (*(v26 + 8))(v36, v10);
    swift_unknownObjectRelease();
  }

  *v27 = v28;
  v27[1] = v29;
  v31 = v39;
  return __swift_destroy_boxed_opaque_existential_1(v31);
}

uint64_t static SessionRequestInternal.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FE87390 = a1;
  return result;
}

uint64_t sub_2611AEA80@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FE87390;
  return result;
}

uint64_t sub_2611AEACC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FE87390 = v1;
  return result;
}

uint64_t SessionRequestInternal.sessionType.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType);
  a1[1] = v2;
}

void SessionRequestInternal.options.getter(_BYTE *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1);
  *a1 = *(v1 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options);
  a1[1] = v2;
}

id SessionRequestInternal.__allocating_init(sessionType:options:)(_OWORD *a1, char *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *a2;
  v7 = a2[1];
  *&v5[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType] = *a1;
  v8 = &v5[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
  *v8 = v6;
  v8[1] = v7;
  v10.receiver = v5;
  v10.super_class = v2;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SessionRequestInternal.init(sessionType:options:)(_OWORD *a1, char *a2)
{
  v3 = *a2;
  *&v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType] = *a1;
  v4 = a2[1];
  v5 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
  *v5 = v3;
  v5[1] = v4;
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SessionRequestInternal();
  return objc_msgSendSuper2(&v7, sel_init);
}

id SessionRequestInternal.init(coder:)(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_26119FDE8();
  v4 = sub_26121D060();
  if (v4)
  {
    v5 = v4;
    v6 = sub_26121C690();
    v8 = v7;

    v9 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_26119D904(v6, v8);
    v11 = sub_2611A0014();
    sub_26119DA0C(v6, v8);
    if (v11)
    {
      sub_2611AF950(&qword_27FE873E8);
      sub_26121CFF0();
      v12 = v20;
      if (v20)
      {
        v13 = *&v20[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8];
        v14 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType];
        *v14 = *&v20[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType];
        *(v14 + 1) = v13;
        v15 = v12[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
        v16 = v12[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1];

        v17 = &v2[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
        *v17 = v15;
        v17[1] = v16;
        [v11 finishDecoding];

        sub_26119DA0C(v6, v8);
        v19.receiver = v2;
        v19.super_class = type metadata accessor for SessionRequestInternal();
        v18 = objc_msgSendSuper2(&v19, sel_init);

        return v18;
      }

      [v11 finishDecoding];
    }

    sub_26119DA0C(v6, v8);
  }

  else
  {
  }

  type metadata accessor for SessionRequestInternal();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_2611AEE90(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  type metadata accessor for SessionRequestInternal();
  sub_2611AF950(&qword_27FE873F0);
  sub_26121CFE0();
  [v2 finishEncoding];
  v3 = [v2 encodedData];
  if (v3)
  {
    v4 = v3;
    v5 = sub_26121CC50();
    [a1 encodeObject:v4 forKey:v5];
  }

  else
  {
    __break(1u);
  }
}

id SessionRequestInternal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_2611AF0D4()
{
  if (*v0)
  {
    result = 0x736E6F6974706FLL;
  }

  else
  {
    result = 0x546E6F6973736573;
  }

  *v0;
  return result;
}

uint64_t sub_2611AF118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x546E6F6973736573 && a2 == 0xEB00000000657079;
  if (v6 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2611AF1F8(uint64_t a1)
{
  v2 = sub_2611AF990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611AF234(uint64_t a1)
{
  v2 = sub_2611AF990();

  return MEMORY[0x2821FE720](a1, v2);
}

id SessionRequestInternal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionRequestInternal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2611AF2B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE873F8, &qword_2612208F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF990();
  sub_26121D600();
  v11 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType + 8);
  v16 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType);
  v17 = v11;
  v15 = 0;
  sub_2611AF9E4();

  sub_26121D4A0();

  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options + 1);
    LOBYTE(v16) = *(v3 + OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options);
    BYTE1(v16) = v12;
    v15 = 1;
    sub_2611AFA38();
    sub_26121D4A0();
  }

  return (*(v6 + 8))(v9, v5);
}

id SessionRequestInternal.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87410, &qword_261220900);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611AF990();
  sub_26121D5F0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for SessionRequestInternal();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_2611AFA8C();
    sub_26121D3F0();
    *&v1[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_sessionType] = v16;
    v17 = 1;
    sub_2611AFAE0();
    sub_26121D3F0();
    v12 = BYTE1(v16);
    v13 = &v1[OBJC_IVAR____TtC19ProximityReaderCore22SessionRequestInternal_options];
    *v13 = v16;
    v13[1] = v12;
    v14 = type metadata accessor for SessionRequestInternal();
    v15.receiver = v1;
    v15.super_class = v14;
    v3 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_2611AF728@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t _s19ProximityReaderCore19InternalSessionTypeO2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_26121D4D0();
}

unint64_t sub_2611AF830()
{
  result = qword_27FE8B650;
  if (!qword_27FE8B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B650);
  }

  return result;
}

unint64_t sub_2611AF884()
{
  result = qword_27FE8B658;
  if (!qword_27FE8B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B658);
  }

  return result;
}

unint64_t sub_2611AF8D8()
{
  result = qword_27FE8B660;
  if (!qword_27FE8B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8B660);
  }

  return result;
}

uint64_t sub_2611AF950(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SessionRequestInternal();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2611AF990()
{
  result = qword_27FE8B668[0];
  if (!qword_27FE8B668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8B668);
  }

  return result;
}

unint64_t sub_2611AF9E4()
{
  result = qword_27FE87400;
  if (!qword_27FE87400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87400);
  }

  return result;
}

unint64_t sub_2611AFA38()
{
  result = qword_27FE87408;
  if (!qword_27FE87408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87408);
  }

  return result;
}

unint64_t sub_2611AFA8C()
{
  result = qword_27FE87418;
  if (!qword_27FE87418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87418);
  }

  return result;
}

unint64_t sub_2611AFAE0()
{
  result = qword_27FE87420;
  if (!qword_27FE87420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87420);
  }

  return result;
}

uint64_t sub_2611AFB34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611AFB84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_2611AFBD8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_2611AFBF0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_2611AFD50()
{
  result = qword_27FE8BAF0[0];
  if (!qword_27FE8BAF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BAF0);
  }

  return result;
}

unint64_t sub_2611AFDA8()
{
  result = qword_27FE8BD00[0];
  if (!qword_27FE8BD00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BD00);
  }

  return result;
}

unint64_t sub_2611AFE00()
{
  result = qword_27FE8BF10[0];
  if (!qword_27FE8BF10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8BF10);
  }

  return result;
}

unint64_t sub_2611AFE58()
{
  result = qword_27FE8C020;
  if (!qword_27FE8C020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C020);
  }

  return result;
}

unint64_t sub_2611AFEB0()
{
  result = qword_27FE8C028[0];
  if (!qword_27FE8C028[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C028);
  }

  return result;
}

unint64_t sub_2611AFF08()
{
  result = qword_27FE8C0B0;
  if (!qword_27FE8C0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C0B0);
  }

  return result;
}

unint64_t sub_2611AFF60()
{
  result = qword_27FE8C0B8[0];
  if (!qword_27FE8C0B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C0B8);
  }

  return result;
}

unint64_t sub_2611AFFB8()
{
  result = qword_27FE8C140;
  if (!qword_27FE8C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C140);
  }

  return result;
}

unint64_t sub_2611B0010()
{
  result = qword_27FE8C148[0];
  if (!qword_27FE8C148[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C148);
  }

  return result;
}

unint64_t sub_2611B0068()
{
  result = qword_27FE8C1D0;
  if (!qword_27FE8C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C1D0);
  }

  return result;
}

unint64_t sub_2611B00C0()
{
  result = qword_27FE8C1D8[0];
  if (!qword_27FE8C1D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C1D8);
  }

  return result;
}

uint64_t static JwtHelper.generateSignature(base64UrlEncodedHeader:base64UrlEncodedPayload:privateKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](a3, a4);
  v8 = sub_2611BFDD8(a5);
  v10 = v9;

  if (v10 >> 60 == 15)
  {
    return 0;
  }

  v12 = sub_2611BF248();
  sub_26119EF48(v8, v10);
  return v12;
}

uint64_t static JwtHelper.generateToken<A, B>(header:payload:privateKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v39 - v10;
  v12 = Encodable.toJson()(a4);
  if (v13 >> 60 != 15)
  {
    v14 = v12;
    v15 = v13;
    v16 = sub_2611BF248();
    v18 = v17;
    sub_26119EF48(v14, v15);
    v19 = Encodable.toJson()(a5);
    if (v20 >> 60 != 15)
    {
      v21 = v19;
      v22 = v20;
      v23 = sub_2611BF248();
      v25 = v24;
      sub_26119EF48(v21, v22);
      v39 = v16;
      v40 = v18;

      MEMORY[0x2666FBF20](46, 0xE100000000000000);
      MEMORY[0x2666FBF20](v23, v25);
      v26 = sub_2611BFDD8(a3);
      v28 = v27;

      if (v28 >> 60 != 15)
      {
        v36 = sub_2611BF248();
        v38 = v37;
        sub_26119EF48(v26, v28);
        v39 = v16;
        v40 = v18;
        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v23, v25);

        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v36, v38);

        return v39;
      }
    }
  }

  v29 = sub_2611F04C0();
  sub_2611ABE1C(v29, v11, &qword_27FE87700, &unk_2612203D0);
  v30 = sub_26121CA60();
  v31 = *(v30 - 8);
  if ((*(v31 + 48))(v11, 1, v30) == 1)
  {
    sub_2611AC114(v11, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v32 = sub_26121CA40();
    v33 = sub_26121CFC0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_261197000, v32, v33, "Could not generate JWT token", v34, 2u);
      MEMORY[0x2666FCF20](v34, -1, -1);
    }

    (*(v31 + 8))(v11, v30);
  }

  return 0;
}

uint64_t static JwtHelper.compareStringClaim(token1:token2:claim:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_2611B0608(0, a1, a2, a5, a6);
  if (v11)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_2611B0608(0, a3, a4, a5, a6);
    if (v15)
    {
      if (v12 == v14 && v13 == v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = sub_26121D4D0();
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2611B0608(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2611B6750(a2, a3, ~a1 & 1);
  if (!v7)
  {
    return 0;
  }

  v8 = sub_2611BF08C();
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_26119C568();
  v14 = sub_2611BF3A8(v13 & 1);
  sub_26119EF48(v11, v12);
  if (*(v14 + 16) && (v15 = sub_2611B3970(a4, a5), (v16 & 1) != 0))
  {
    sub_2611AC930(*(v14 + 56) + 32 * v15, v17);
  }

  else
  {

    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2611B0730(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2611B6750(a2, a3, ~a1 & 1);
  if (!v7)
  {
    return 0;
  }

  v8 = sub_2611BF08C();
  if (v9 >> 60 == 15)
  {
    return 0;
  }

  v11 = v8;
  v12 = v9;
  v13 = sub_26119C568();
  v14 = sub_2611BF3A8(v13 & 1);
  sub_26119EF48(v11, v12);
  if (*(v14 + 16) && (v15 = sub_2611B3970(a4, a5), (v16 & 1) != 0))
  {
    sub_2611AC930(*(v14 + 56) + 32 * v15, v17);
  }

  else
  {

    memset(v17, 0, sizeof(v17));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return 0;
  }
}

uint64_t static JwtHelper.claim<A>(fromHeader:_:claim:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_2611B6750(a2, a3, (a1 & 1) == 0);
  if (v11 && (v12 = sub_2611BF08C(), v13 >> 60 != 15))
  {
    v16 = v12;
    v17 = v13;
    v18 = sub_26119C568();
    v19 = sub_2611BF3A8(v18 & 1);
    sub_26119EF48(v16, v17);
    if (*(v19 + 16) && (v20 = sub_2611B3970(a4, a5), (v21 & 1) != 0))
    {
      sub_2611AC930(*(v19 + 56) + 32 * v20, v23);
    }

    else
    {

      memset(v23, 0, sizeof(v23));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87B10, &qword_26121F890);
    v22 = swift_dynamicCast();
    return (*(*(a6 - 8) + 56))(a7, v22 ^ 1u, 1, a6);
  }

  else
  {
    v14 = *(*(a6 - 8) + 56);

    return v14(a7, 1, 1, a6);
  }
}

uint64_t sub_2611B0A0C(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, v4);
  result = swift_dynamicCast();
  if (result)
  {
    sub_2611AC930(a2, v4);
    return (swift_dynamicCast() & 1) != 0;
  }

  return result;
}

uint64_t sub_2611B0AB0(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, v5);
  if (!swift_dynamicCast())
  {
    goto LABEL_5;
  }

  sub_2611AC930(a2, v5);
  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_5:
    v3 = 0;
    return v3 & 1;
  }

  v3 = 1;
  return v3 & 1;
}

uint64_t static JwtHelper.compareClaim<A>(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v32 = a5;
  v33 = a3;
  v7 = sub_26121D0C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v30 - v14;
  v16 = *(a4 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v13);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v30 - v21;
  sub_2611AC930(a2, v34);
  v23 = swift_dynamicCast();
  v24 = *(v16 + 56);
  if ((v23 & 1) == 0)
  {
    v24(v15, 1, 1, a4);
    (*(v8 + 8))(v15, v7);
LABEL_6:
    v27 = 0;
    return v27 & 1;
  }

  v31 = v7;
  v24(v15, 0, 1, a4);
  v25 = v15;
  v26 = *(v16 + 32);
  v26(v22, v25, a4);
  sub_2611AC930(v33, v34);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v24(v12, 1, 1, a4);
    (*(v16 + 8))(v22, a4);
    (*(v8 + 8))(v12, v31);
    goto LABEL_6;
  }

  v24(v12, 0, 1, a4);
  v26(v20, v12, a4);
  v27 = sub_26121CC20();
  v28 = *(v16 + 8);
  v28(v20, a4);
  v28(v22, a4);
  return v27 & 1;
}

uint64_t sub_2611B0EC8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t *))
{
  sub_2611AC930(a1, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = swift_dynamicCast();
  if (result)
  {
    v10 = v14;
    sub_2611AC930(a2, v13);
    if (swift_dynamicCast())
    {
      v12 = v11;
      if (*(v10 + 16) == *(v11 + 16))
      {
        a5(&v14);

        a5(&v12);

        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2611B0FE0(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, &v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v8;
    sub_2611AC930(a2, &v9);
    if (swift_dynamicCast())
    {
      v5 = v8;
      *(v8 + 16);
      *(v8 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2611B6700(v8);
      }

      v6 = *(v4 + 2);
      v9 = v4 + 32;
      v10 = v6;
      sub_2611B3E48(&v9);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_2611B6700(v8);
      }

      v7 = *(v5 + 2);
      v9 = v5 + 32;
      v10 = v7;
      sub_2611B3E48(&v9);

      return 1;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t static JwtHelper.compareArrayClaim<A>(_:_:_:)(uint64_t a1, uint64_t a2)
{
  sub_2611AC930(a1, v6);
  sub_26121CF00();
  if (swift_dynamicCast())
  {
    sub_2611AC930(a2, v6);
    if (swift_dynamicCast())
    {

      v3 = sub_26121CEF0();
      v4 = sub_26121CEF0();

      if (v3 == v4)
      {
        swift_getWitnessTable();
        swift_getWitnessTable();
        sub_26121CC00();

        sub_26121CC00();

        return 1;
      }
    }
  }

  return 0;
}

uint64_t static JwtHelper.compareClaims(token1:token2:claims:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v63 - v15;
  result = static JwtHelper.claims(_:claimIdentifiers:)(a1, a2, a5);
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = static JwtHelper.claims(_:claimIdentifiers:)(a3, a4, a5);
  if (!v19)
  {

    return 0;
  }

  v20 = v19;
  v65 = v14;
  v64 = v16;
  v21 = *(a5 + 16);
  if (!v21)
  {
LABEL_39:

    return 1;
  }

  v22 = (a5 + 40);
  while (1)
  {
    v24 = *(v22 - 1);
    v23 = *v22;
    v25 = *(v18 + 16);

    if (!v25 || (v26 = sub_2611B3970(v24, v23), (v27 & 1) == 0))
    {

      goto LABEL_49;
    }

    sub_2611AC930(*(v18 + 56) + 32 * v26, v68);
    if (!*(v20 + 16) || (v28 = sub_2611B3970(v24, v23), (v29 & 1) == 0))
    {

      goto LABEL_48;
    }

    v66 = v22;
    sub_2611AC930(*(v20 + 56) + 32 * v28, v67);
    __swift_project_boxed_opaque_existential_1(v68, v68[3]);
    DynamicType = swift_getDynamicType();
    __swift_project_boxed_opaque_existential_1(v67, v67[3]);
    if (DynamicType != swift_getDynamicType())
    {
      break;
    }

    sub_2611AC930(v68, v71);
    if (swift_dynamicCast())
    {
      sub_2611AC930(v68, &v70);
      if (!swift_dynamicCast())
      {
        goto LABEL_42;
      }

      v31 = v69;
      sub_2611AC930(v67, &v70);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_42;
      }

      v32 = v69;
      __swift_destroy_boxed_opaque_existential_1(v71);
      v33 = v31 == v32;
LABEL_18:
      v36 = v66;
      if (!v33)
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_2611AC930(v68, &v70);
      if (!swift_dynamicCast() || (v34 = *&v69, sub_2611AC930(v67, &v70), (swift_dynamicCast() & 1) == 0))
      {
LABEL_42:
        __swift_destroy_boxed_opaque_existential_1(v71);
LABEL_43:

        v44 = sub_2611F04C0();
        v45 = v64;
        sub_2611ABE1C(v44, v64, &qword_27FE87700, &unk_2612203D0);
        v46 = sub_26121CA60();
        v47 = *(v46 - 8);
        if ((*(v47 + 48))(v45, 1, v46) == 1)
        {

          __swift_destroy_boxed_opaque_existential_1(v67);
          __swift_destroy_boxed_opaque_existential_1(v68);
          v48 = v45;
LABEL_51:
          sub_2611AC114(v48, &qword_27FE87700, &unk_2612203D0);
          return 0;
        }

        v49 = sub_26121CA40();
        v50 = sub_26121CFD0();

        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v52 = swift_slowAlloc();
          v71[0] = v52;
          *v51 = 136315138;
          v53 = sub_2611AA228(v24, v23, v71);

          *(v51 + 4) = v53;
          _os_log_impl(&dword_261197000, v49, v50, "The claim: [ %s ] does not match or could not be compared", v51, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v52);
          MEMORY[0x2666FCF20](v52, -1, -1);
          MEMORY[0x2666FCF20](v51, -1, -1);
        }

        else
        {
        }

        __swift_destroy_boxed_opaque_existential_1(v67);
        __swift_destroy_boxed_opaque_existential_1(v68);
        (*(v47 + 8))(v45, v46);
        return 0;
      }

      v35 = *&v69;
      __swift_destroy_boxed_opaque_existential_1(v71);
      v33 = v34 == v35;
      goto LABEL_18;
    }

    if (swift_dynamicCast())
    {
      v37 = sub_2611B0A0C(v68, v67);
      __swift_destroy_boxed_opaque_existential_1(v71);
      v36 = v66;
      if ((v37 & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_20;
    }

    v38 = swift_dynamicCast();
    v36 = v66;
    if (v38)
    {

      v39 = sub_2611B0AB0(v68, v67);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87450, &qword_2612210C8);
      if (swift_dynamicCast())
      {

        v40 = sub_2611B3D10;
        v41 = &qword_27FE87450;
        v42 = &qword_2612210C8;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87458, &qword_2612210D0);
        if (swift_dynamicCast())
        {

          v40 = sub_2611B3BD8;
          v41 = &qword_27FE87458;
          v42 = &qword_2612210D0;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87460, &qword_2612210D8);
          if (!swift_dynamicCast())
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
            if (!swift_dynamicCast())
            {
              goto LABEL_42;
            }

            v39 = sub_2611B0FE0(v68, v67);
            goto LABEL_34;
          }

          v40 = sub_2611B3AA0;
          v41 = &qword_27FE87460;
          v42 = &qword_2612210D8;
        }
      }

      v39 = sub_2611B0EC8(v68, v67, v41, v42, v40);
    }

LABEL_34:
    v43 = v39;
    __swift_destroy_boxed_opaque_existential_1(v71);
    if ((v43 & 1) == 0)
    {
      goto LABEL_43;
    }

LABEL_20:

    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v68);
    v22 = v36 + 2;
    if (!--v21)
    {
      goto LABEL_39;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v67);
LABEL_48:
  __swift_destroy_boxed_opaque_existential_1(v68);
LABEL_49:
  v54 = sub_2611F04C0();
  v55 = v65;
  sub_2611ABE1C(v54, v65, &qword_27FE87700, &unk_2612203D0);
  v56 = sub_26121CA60();
  v57 = *(v56 - 8);
  if ((*(v57 + 48))(v55, 1, v56) == 1)
  {

    v48 = v55;
    goto LABEL_51;
  }

  v58 = sub_26121CA40();
  v59 = sub_26121CFC0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v71[0] = v61;
    *v60 = 136315138;
    v62 = sub_2611AA228(v24, v23, v71);

    *(v60 + 4) = v62;
    _os_log_impl(&dword_261197000, v58, v59, "The claim: [ %s ] could not be found or have different value types", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x2666FCF20](v61, -1, -1);
    MEMORY[0x2666FCF20](v60, -1, -1);
  }

  else
  {
  }

  (*(v57 + 8))(v55, v56);
  return 0;
}

uint64_t static JwtHelper.claims(_:claimIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2611B6750(a1, a2, 1);
  if (!v4)
  {
    return 0;
  }

  v5 = sub_2611BF08C();
  if (v6 >> 60 == 15)
  {
    return 0;
  }

  v8 = v5;
  v9 = v6;
  v10 = sub_26119C568();
  v11 = sub_2611BF3A8(v10 & 1);
  sub_26119EF48(v8, v9);
  v20 = MEMORY[0x277D84F98];
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = (a3 + 40);
    do
    {
      v15 = *(v13 - 1);
      v14 = *v13;

      *&v23 = v15;
      *(&v23 + 1) = v14;
      *&v21 = 46;
      *(&v21 + 1) = 0xE100000000000000;
      sub_2611B6988();
      if (sub_26121D140())
      {
        *&v23 = v15;
        *(&v23 + 1) = v14;
        *&v21 = 46;
        *(&v21 + 1) = 0xE100000000000000;
        v16 = sub_26121D120();
        sub_2611B26EC(v16 + 32, 0, (2 * *(v16 + 16)) | 1, v11, &v21);

        if (v22)
        {
          sub_2611B69DC(&v21, &v23);
          sub_2611AC930(&v23, &v21);

          sub_2611B2618(&v21, v15, v14);
          __swift_destroy_boxed_opaque_existential_1(&v23);
        }

        else
        {
          sub_2611AC114(&v21, &qword_27FE87B10, &qword_26121F890);
        }
      }

      else
      {
        if (*(v11 + 16))
        {

          v17 = sub_2611B3970(v15, v14);
          if (v18)
          {
            sub_2611AC930(*(v11 + 56) + 32 * v17, &v23);
          }

          else
          {
            v23 = 0u;
            v24 = 0u;
          }
        }

        else
        {
          v23 = 0u;
          v24 = 0u;
        }

        sub_2611B2618(&v23, v15, v14);
      }

      v13 += 2;
      --v12;
    }

    while (v12);
    v19 = v20;
  }

  else
  {
    v19 = MEMORY[0x277D84F98];
  }

  return v19;
}

uint64_t static JwtHelper.compare(token1:token2:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_26121D4D0();
  }
}

uint64_t static JwtHelper.redactSignature(_:)(uint64_t a1)
{
  sub_2611B6988();
  v2 = sub_26121D120();
  if (v2[2] < 3uLL)
  {

    return a1;
  }

  result = sub_26121D1E0();
  if (v2[2])
  {
    v5 = v2[4];
    v4 = v2[5];

    v8 = v5;
    result = MEMORY[0x2666FBF20](46, 0xE100000000000000);
    if (v2[2] >= 2uLL)
    {
      v6 = v2[6];
      v7 = v2[7];

      MEMORY[0x2666FBF20](v6, v7);

      MEMORY[0x2666FBF20](0x7463616465723C2ELL, 0xEB000000003E6465);
      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static JwtHelper.makeToken(header:claims:inject:expiry:sign:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87430, &qword_261220E50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v64 - v11;
  v66 = sub_26121CB40();
  v68 = *(v66 - 8);
  v13 = *(v68 + 64);
  MEMORY[0x28223BE20](v66);
  v67 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_26121C760();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26121C750();
  sub_26121C720();
  v21 = v20;
  v22 = v20;
  (*(v16 + 8))(v19, v15);
  if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_36;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (a3)
  {
    v23 = MEMORY[0x277D83B88];
    v72 = MEMORY[0x277D83B88];
    *&v71 = v21;
    sub_2611B69DC(&v71, v70);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69 = a2;
    sub_2611B63A0(v70, 7627113, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
    if (!__OFADD__(v21, a4))
    {
      v25 = v69;
      v72 = v23;
      *&v71 = v21 + a4;
      sub_2611B69DC(&v71, v70);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v69 = v25;
      sub_2611B63A0(v70, 7370853, 0xE300000000000000, v26);
      goto LABEL_8;
    }

LABEL_38:
    __break(1u);
  }

LABEL_8:
  v65 = a5;
  v27 = objc_opt_self();
  v28 = sub_26121CB80();
  *&v71 = 0;
  v29 = [v27 dataWithJSONObject:v28 options:0 error:&v71];

  v30 = v71;
  if (v29)
  {
    v31 = sub_26121C690();
    v33 = v32;

    v34 = sub_2611BF248();
    v36 = v35;
    sub_26119DA0C(v31, v33);
  }

  else
  {
    v37 = v30;
    v38 = sub_26121C500();

    swift_willThrow();
    v34 = 0;
    v36 = 0;
  }

  v39 = sub_26121CB80();
  *&v71 = 0;
  v40 = [v27 dataWithJSONObject:v39 options:0 error:&v71];

  v41 = v71;
  if (v40)
  {
    v42 = sub_26121C690();
    v44 = v43;

    v45 = sub_2611BF248();
    v47 = v46;
    sub_26119DA0C(v42, v44);
  }

  else
  {
    v48 = v41;
    v49 = sub_26121C500();

    swift_willThrow();
    v45 = 0;
    v47 = 0;
  }

  v50 = v66;
  sub_2611ABE1C(v65, v12, &qword_27FE87430, &qword_261220E50);
  v51 = v68;
  if ((*(v68 + 48))(v12, 1, v50) != 1)
  {
    result = (*(v51 + 32))(v67, v12, v50);
    if (v36)
    {
      if (v47)
      {
        *&v71 = v34;
        *(&v71 + 1) = v36;
        swift_bridgeObjectRetain_n();

        MEMORY[0x2666FBF20](46, 0xE100000000000000);
        MEMORY[0x2666FBF20](v45, v47);
        v55 = sub_2611BFDD8(v67);
        v57 = v56;

        if (v57 >> 60 == 15)
        {
          v52 = 0xEB0000000064656CLL;
          v53 = 0x6961662D6E676973;
        }

        else
        {
          v53 = sub_2611BF248();
          v52 = v58;
          sub_26119EF48(v55, v57);
        }

        (*(v68 + 8))(v67, v50);
        goto LABEL_22;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2611AC114(v12, &qword_27FE87430, &qword_261220E50);
  v52 = 0xEA00000000006465;
  v53 = 0x6E6769732D746F6ELL;
LABEL_22:
  *&v71 = 0;
  *(&v71 + 1) = 0xE000000000000000;
  if (v36)
  {
    v59 = v34;
  }

  else
  {
    v59 = 0;
  }

  if (v36)
  {
    v60 = v36;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  MEMORY[0x2666FBF20](v59, v60);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);

  if (v47)
  {
    v61 = v45;
  }

  else
  {
    v61 = 0;
  }

  if (v47)
  {
    v62 = v47;
  }

  else
  {
    v62 = 0xE000000000000000;
  }

  MEMORY[0x2666FBF20](v61, v62);

  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](v53, v52);

  result = v71;
  v63 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2611B2618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_2611B69DC(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_2611B63A0(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_2611AC114(a1, &qword_27FE87B10, &qword_26121F890);
    sub_2611B5E94(a2, a3, v10);

    return sub_2611AC114(v10, &qword_27FE87B10, &qword_26121F890);
  }

  return result;
}

uint64_t sub_2611B26EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v11 = *(*(v10 - 8) + 64);
  result = MEMORY[0x28223BE20](v10 - 8);
  v14 = v35 - v13;
  v15 = a3 >> 1;
  if (__OFSUB__(a3 >> 1, a2))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (((a3 >> 1) - a2) >= 2)
  {
    if (v15 > a2)
    {
      if (*(a4 + 16))
      {
        v16 = (a1 + 16 * a2);
        v17 = *v16;
        v18 = v16[1];

        v19 = sub_2611B3970(v17, v18);
        v21 = v20;

        if (v21)
        {
          sub_2611AC930(*(a4 + 56) + 32 * v19, v36);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87448, &qword_2612210C0);
          if (swift_dynamicCast())
          {
            sub_2611B26EC(a1, a2 + 1, a3, v35[1]);
          }
        }
      }

      v29 = sub_2611F04C0();
      sub_2611ABE1C(v29, v14, &qword_27FE87700, &unk_2612203D0);
      v30 = sub_26121CA60();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v14, 1, v30) == 1)
      {
        result = sub_2611AC114(v14, &qword_27FE87700, &unk_2612203D0);
      }

      else
      {
        v32 = sub_26121CA40();
        v33 = sub_26121CFC0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 0;
          _os_log_impl(&dword_261197000, v32, v33, "Invalid key path", v34, 2u);
          MEMORY[0x2666FCF20](v34, -1, -1);
        }

        result = (*(v31 + 8))(v14, v30);
      }

      goto LABEL_20;
    }

    goto LABEL_23;
  }

  if (v15 == a2)
  {
    goto LABEL_20;
  }

  if (v15 <= a2)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  if (!*(a4 + 16) || (v22 = (a1 + 16 * a2), v23 = *v22, v24 = v22[1], , v25 = sub_2611B3970(v23, v24), v27 = v26, result = , (v27 & 1) == 0))
  {
LABEL_20:
    *a5 = 0u;
    a5[1] = 0u;
    return result;
  }

  v28 = *(a4 + 56) + 32 * v25;

  return sub_2611AC930(v28, a5);
}

uint64_t static JwtHelper.isExpired(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v42[-v9];
  v11 = sub_26121C760();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v42[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *&v16 = COERCE_DOUBLE(sub_2611B0730(0, a1, a2, 7370853, 0xE300000000000000));
  if (v17)
  {
    v18 = sub_2611F04C0();
    sub_2611ABE1C(v18, v8, &qword_27FE87700, &unk_2612203D0);
    v19 = sub_26121CA60();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v8, 1, v19) == 1)
    {
      sub_2611AC114(v8, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v26 = sub_26121CA40();
      v27 = sub_26121CFC0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_261197000, v26, v27, "Token does not have 'exp' claim", v28, 2u);
        MEMORY[0x2666FCF20](v28, -1, -1);
      }

      (*(v20 + 8))(v8, v19);
    }

    return 2;
  }

  else
  {
    v21 = *&v16;
    sub_26121C730();
    sub_26121C720();
    v23 = v22;
    v24 = *(v12 + 8);
    v24(v15, v11);
    if (v23 >= v21)
    {
      v29 = sub_2611F04C0();
      sub_2611ABE1C(v29, v10, &qword_27FE87700, &unk_2612203D0);
      v30 = sub_26121CA60();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v10, 1, v30) == 1)
      {
        sub_2611AC114(v10, &qword_27FE87700, &unk_2612203D0);
        return 1;
      }

      else
      {
        v32 = sub_26121CA40();
        v33 = sub_26121CFC0();
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v44 = v34;
          v45 = swift_slowAlloc();
          v46 = v45;
          *v34 = 136315138;
          sub_26121C710();
          sub_2611B69EC();
          v43 = v33;
          v35 = sub_26121D4C0();
          v37 = v36;
          v24(v15, v11);
          v38 = sub_2611AA228(v35, v37, &v46);

          v39 = v44;
          *(v44 + 1) = v38;
          v40 = v39;
          _os_log_impl(&dword_261197000, v32, v43, "Token is expired: [%s]", v39, 0xCu);
          v41 = v45;
          __swift_destroy_boxed_opaque_existential_1(v45);
          MEMORY[0x2666FCF20](v41, -1, -1);
          MEMORY[0x2666FCF20](v40, -1, -1);
        }

        (*(v31 + 8))(v10, v30);
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_2611B2E84(uint64_t a1)
{
  v2 = sub_2611B6A44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611B2EC0(uint64_t a1)
{
  v2 = sub_2611B6A44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JwtHelper.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87438, &qword_261220E58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A44();
  sub_26121D600();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_2611B3010(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87438, &qword_261220E58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A44();
  sub_26121D600();
  return (*(v3 + 8))(v6, v2);
}

ProximityReaderCore::JwtHeader __swiftcall JwtHeader.init(alg:typ:)(Swift::String alg, Swift::String typ)
{
  *v2 = alg;
  v2[1] = typ;
  result.typ = typ;
  result.alg = alg;
  return result;
}

uint64_t sub_2611B3130()
{
  if (*v0)
  {
    return 7371124;
  }

  else
  {
    return 6777953;
  }
}

uint64_t sub_2611B3154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6777953 && a2 == 0xE300000000000000;
  if (v5 || (sub_26121D4D0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7371124 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2611B3230(uint64_t a1)
{
  v2 = sub_2611B6A98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2611B326C(uint64_t a1)
{
  v2 = sub_2611B6A98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t JwtHeader.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87440, &qword_261220E60);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2611B6A98();
  sub_26121D600();
  v16 = 0;
  v12 = v14[3];
  sub_26121D460();
  if (!v12)
  {
    v15 = 1;
    sub_26121D460();
  }

  return (*(v4 + 8))(v7, v3);
}

char *sub_2611B3454(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D10, &unk_261221610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2611B3560(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87470, &qword_2612210E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2611B3664(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87488, &unk_261221100);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2611B3768(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87480, &qword_2612210F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2611B386C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87478, &qword_2612210F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_2611B3970(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_26121D5B0();
  sub_26121CD50();
  v6 = sub_26121D5D0();

  return sub_2611B39E8(a1, a2, v6);
}

unint64_t sub_2611B39E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_26121D4D0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_2611B3AA0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B6714(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B45EC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3BD8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B6728(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[4 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 4;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B4B48(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2611B673C(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_26121D4B0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_26121CEE0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_2611B50A4(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_2611B3E48(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26121D4B0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26121CEE0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2611B4010(v7, v8, a1, v4);
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
    return sub_2611B3F40(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2611B3F40(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_26121D4D0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2611B4010(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_2611B55F0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_26121D4D0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_26121D4D0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2611B3560(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_2611B3560((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_2611B55F0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2611B5E80(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2611B5DF4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_26121D4D0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_2611B45EC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2611B5818((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2611B3560((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2611B5818((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2611B4B48(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_2611B5A0C((*a3 + 4 * *v78), (*a3 + 4 * *v80), (*a3 + 4 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 4 * v7 - 4;
        v17 = 4 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 4;
          v17 += 4;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_2611B3560((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_2611B5A0C((*a3 + 4 * *v71), (*a3 + 4 * *v73), (*a3 + 4 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 4 * v7 - 4;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 4 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 4;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2611B50A4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_2611B5E80(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_2611B5C00((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2611B3560(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_2611B3560((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
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
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_2611B5C00((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_2611B55F0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_26121D4D0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_26121D4D0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_2611B5818(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2611B5A0C(float *__dst, float *__src, float *a3, float *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 4)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 4);
      v18 -= 4;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFFCLL)))
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_2611B5C00(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_2611B5DF4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2611B5E80(v3);
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

double sub_2611B5E94@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2611B3970(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2611B655C();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_2611B69DC((*(v12 + 56) + 32 * v9), a3);
    sub_2611B61F0(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_2611B5F38(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
  v36 = a2;
  result = sub_26121D300();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_2611B69DC(v25, v37);
      }

      else
      {
        sub_2611AC930(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_26121D5B0();
      sub_26121CD50();
      result = sub_26121D5D0();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_2611B69DC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2611B61F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26121D5B0();

      sub_26121CD50();
      v14 = sub_26121D5D0();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_2611B63A0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_2611B3970(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_2611B655C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_2611B5F38(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_2611B3970(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26121D520();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_2611B69DC(a1, v23);
  }

  else
  {
    sub_2611B64F0(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_2611B64F0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2611B69DC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_2611B655C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
  v2 = *v0;
  v3 = sub_26121D2F0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_2611AC930(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_2611B69DC(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2611B6750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v23 - v8;
  v23[2] = a1;
  v23[3] = a2;
  v23[0] = 46;
  v23[1] = 0xE100000000000000;
  sub_2611B6988();
  v10 = sub_26121D120();
  if (*(v10 + 16) <= a3)
  {
    goto LABEL_6;
  }

  v11 = v10 + 16 * a3;
  v13 = *(v11 + 32);
  v12 = *(v11 + 40);
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    v15 = v13;

    return v15;
  }

  else
  {
LABEL_6:

    v17 = sub_2611F04C0();
    sub_2611ABE1C(v17, v9, &qword_27FE87700, &unk_2612203D0);
    v18 = sub_26121CA60();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v9, 1, v18) == 1)
    {
      sub_2611AC114(v9, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v20 = sub_26121CA40();
      v21 = sub_26121CFD0();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_261197000, v20, v21, "Error extracting JWT payload value", v22, 2u);
        MEMORY[0x2666FCF20](v22, -1, -1);
      }

      (*(v19 + 8))(v9, v18);
    }

    return 0;
  }
}

unint64_t sub_2611B6988()
{
  result = qword_27FE87428;
  if (!qword_27FE87428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87428);
  }

  return result;
}

_OWORD *sub_2611B69DC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2611B69EC()
{
  result = qword_27FE87740;
  if (!qword_27FE87740)
  {
    sub_26121C760();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87740);
  }

  return result;
}

unint64_t sub_2611B6A44()
{
  result = qword_27FE8C260;
  if (!qword_27FE8C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C260);
  }

  return result;
}

unint64_t sub_2611B6A98()
{
  result = qword_27FE8C268[0];
  if (!qword_27FE8C268[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C268);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2611B6B08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2611B6B50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2611B6BC4()
{
  result = qword_27FE8C570[0];
  if (!qword_27FE8C570[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C570);
  }

  return result;
}

unint64_t sub_2611B6C1C()
{
  result = qword_27FE8C680;
  if (!qword_27FE8C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C680);
  }

  return result;
}

unint64_t sub_2611B6C74()
{
  result = qword_27FE8C688[0];
  if (!qword_27FE8C688[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C688);
  }

  return result;
}

unint64_t sub_2611B6CCC()
{
  result = qword_27FE8C710;
  if (!qword_27FE8C710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE8C710);
  }

  return result;
}

unint64_t sub_2611B6D24()
{
  result = qword_27FE8C718[0];
  if (!qword_27FE8C718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FE8C718);
  }

  return result;
}

void SecureStorage.save(at:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[10] = *MEMORY[0x277D85DE8];
  v26 = sub_26121C5F0();
  v5 = *(v26 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v26);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_opt_self();
  v27 = [v9 defaultManager];
  sub_26121C5A0();
  v10 = [v9 defaultManager];
  sub_26121C5C0();
  v11 = sub_26121CC50();

  v12 = [v10 fileExistsAtPath_];

  if ((v12 & 1) == 0)
  {
    v25[1] = a3;
    v25[2] = v3;
    v13 = sub_26121C590();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87490, &qword_261221110);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2612203B0;
    v15 = *MEMORY[0x277CCA1B0];
    *(inited + 32) = *MEMORY[0x277CCA1B0];
    v16 = *MEMORY[0x277CCA190];
    type metadata accessor for FileProtectionType(0);
    *(inited + 64) = v17;
    *(inited + 40) = v16;
    v18 = v15;
    v19 = v16;
    sub_2611B7EB4(inited);
    swift_setDeallocating();
    sub_2611B7FBC(inited + 32);
    type metadata accessor for FileAttributeKey(0);
    sub_2611B81E4(&qword_27FE874A0, type metadata accessor for FileAttributeKey);
    v20 = sub_26121CB80();

    v28[0] = 0;
    v21 = v27;
    LODWORD(v15) = [v27 createDirectoryAtURL:v13 withIntermediateDirectories:1 attributes:v20 error:v28];

    if (!v15)
    {
      v23 = v28[0];
      sub_26121C500();

      swift_willThrow();
      (*(v5 + 8))(v8, v26);
      goto LABEL_6;
    }

    v22 = v28[0];
  }

  sub_26121C6A0();
  (*(v5 + 8))(v8, v26);

LABEL_6:
  v24 = *MEMORY[0x277D85DE8];
}

id SecureStorage.exists(at:)()
{
  v0 = [objc_opt_self() defaultManager];
  sub_26121C5C0();
  v1 = sub_26121CC50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t SecureStorage.delete(at:)()
{
  v7[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26121C590();
  v7[0] = 0;
  v2 = [v0 removeItemAtURL:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_26121C500();

    swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

void *SecureStorage.getDirectoryContent(at:)()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_26121C590();
  v8[0] = 0;
  v2 = [v0 contentsOfDirectoryAtURL:v1 includingPropertiesForKeys:0 options:0 error:v8];

  v3 = v8[0];
  if (v2)
  {
    sub_26121C5F0();
    v1 = sub_26121CEC0();
    v4 = v3;
  }

  else
  {
    v5 = v8[0];
    sub_26121C500();

    swift_willThrow();
  }

  v6 = *MEMORY[0x277D85DE8];
  return v1;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecureStorage.getDirectoryContent(at:)(Swift::String at)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [objc_opt_self() defaultManager];
  v2 = sub_26121CC50();
  v10[0] = 0;
  v3 = [v1 contentsOfDirectoryAtPath:v2 error:v10];

  v4 = v10[0];
  if (v3)
  {
    v2 = sub_26121CEC0();
    v5 = v4;
  }

  else
  {
    v7 = v10[0];
    sub_26121C500();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  v9 = v2;
  result.value._rawValue = v9;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SecureStorage.getDirectoryContentAbsolutePath(at:)(Swift::String at)
{
  object = at._object;
  countAndFlagsBits = at._countAndFlagsBits;
  result = SecureStorage.getDirectoryContent(at:)(at);
  if (!v4)
  {
    if (result.value._rawValue)
    {
      v5 = *(result.value._rawValue + 2);
      if (v5)
      {
        v13 = MEMORY[0x277D84F90];
        rawValue = result.value._rawValue;
        sub_2611B7D88(0, v5, 0);
        v1 = v13;
        v7 = (rawValue + 40);
        do
        {
          v8 = *(v7 - 1);
          v9 = *v7;

          MEMORY[0x2666FBF20](47, 0xE100000000000000);
          MEMORY[0x2666FBF20](v8, v9);

          v11 = v13[2];
          v10 = v13[3];
          if (v11 >= v10 >> 1)
          {
            sub_2611B7D88((v10 > 1), v11 + 1, 1);
          }

          v13[2] = v11 + 1;
          v12 = &v13[2 * v11];
          v12[4] = countAndFlagsBits;
          v12[5] = object;
          v7 += 2;
          --v5;
        }

        while (v5);
      }

      else
      {

        v1 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v1 = 0;
    }
  }

  result.value._rawValue = v1;
  return result;
}

id sub_2611B7628()
{
  v0 = [objc_opt_self() defaultManager];
  sub_26121C5C0();
  v1 = sub_26121CC50();

  v2 = [v0 fileExistsAtPath_];

  return v2;
}

uint64_t sub_2611B7728(uint64_t a1, id *a2)
{
  result = sub_26121CC60();
  *a2 = 0;
  return result;
}

uint64_t sub_2611B77A0(uint64_t a1, id *a2)
{
  v3 = sub_26121CC70();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2611B7820@<X0>(uint64_t *a1@<X8>)
{
  sub_26121CC80();
  v2 = sub_26121CC50();

  *a1 = v2;
  return result;
}

uint64_t sub_2611B7878@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_26121CC80();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_2611B78A4(uint64_t a1)
{
  v2 = sub_2611B81E4(&qword_27FE874A0, type metadata accessor for FileAttributeKey);
  v3 = sub_2611B81E4(&qword_27FE874F8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2611B7960@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_26121CC50();

  *a2 = v5;
  return result;
}

uint64_t sub_2611B79A8(uint64_t a1)
{
  v2 = sub_2611B81E4(&qword_27FE874E8, type metadata accessor for FileProtectionType);
  v3 = sub_2611B81E4(&qword_27FE874F0, type metadata accessor for FileProtectionType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_2611B7A64()
{
  v1 = *v0;
  v2 = sub_26121CC80();
  v3 = MEMORY[0x2666FBFB0](v2);

  return v3;
}

uint64_t sub_2611B7AA0()
{
  v1 = *v0;
  sub_26121CC80();
  sub_26121CD50();
}

uint64_t sub_2611B7AF4()
{
  v1 = *v0;
  sub_26121CC80();
  sub_26121D5B0();
  sub_26121CD50();
  v2 = sub_26121D5D0();

  return v2;
}

uint64_t sub_2611B7B68(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_26121CC80();
  v6 = v5;
  if (v4 == sub_26121CC80() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26121D4D0();
  }

  return v9 & 1;
}

unint64_t sub_2611B7BF0(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_26121CC80();
  sub_26121D5B0();
  sub_26121CD50();
  v4 = sub_26121D5D0();

  return sub_2611B7C84(a1, v4);
}

unint64_t sub_2611B7C84(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_26121CC80();
      v9 = v8;
      if (v7 == sub_26121CC80() && v9 == v10)
      {
        break;
      }

      v12 = sub_26121D4D0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

char *sub_2611B7D88(char *a1, int64_t a2, char a3)
{
  result = sub_2611B7DA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2611B7DA8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87D10, &unk_261221610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_2611B7EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87500, &qword_2612214A0);
    v3 = sub_26121D310();
    v4 = a1 + 32;

    while (1)
    {
      sub_2611B8394(v4, &v11);
      v5 = v11;
      result = sub_2611B7BF0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2611B69DC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_2611B7FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87498, &qword_261221118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2611B8038(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_2611B81E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2611B8394(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87498, &qword_261221118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B842C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for AnalyticsReporter();
  v5[13] = v8;
  v9 = *(v8 - 8);
  v5[14] = v9;
  v10 = *(v9 + 64) + 15;
  v5[15] = swift_task_alloc();
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B857C, v4, 0);
}

uint64_t sub_2611B857C()
{
  v43 = v0;
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v5 = v0[7];
  v4 = v0[8];
  v7 = v0[5];
  v6 = v0[6];

  AnalyticsReporter.init(serviceName:hierarchyToken:)(v7, v6, v5, v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2611AC114(v0[12], &qword_27FE87508, qword_2612214C0);
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v0[16];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[11];
    v15 = v0[9];
    v14 = v0[10];
    sub_2611B88EC(v0[12], v10);
    sub_2611D2F0C();
    v8 = *(v10 + 24);
    v9 = *(v10 + 32);
    sub_2611B8950(v10, v13);
    (*(v12 + 56))(v13, 0, 1, v11);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_2611B89B4(v13, v8, v9);
    swift_endAccess();
    v16 = sub_2611F05A8();
    sub_2611B8B74(v16, v14);
    v17 = sub_26121CA60();
    v18 = *(v17 - 8);
    v19 = (*(v18 + 48))(v14, 1, v17);
    v20 = v0[16];
    if (v19 == 1)
    {
      v21 = v0[10];
      sub_2611B8BE4(v20);
      sub_2611AC114(v21, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v22 = v0[10];
      sub_2611B8950(v20, v0[15]);
      v23 = sub_26121CA40();
      v24 = sub_26121CFB0();
      v25 = os_log_type_enabled(v23, v24);
      v27 = v0[15];
      v26 = v0[16];
      if (v25)
      {
        v28 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v28 = 136315138;
        v39 = *(v27 + 24);
        v41 = v26;
        v42 = v40;
        v29 = *(v27 + 32);

        sub_2611B8BE4(v27);
        v30 = sub_2611AA228(v39, v29, &v42);

        *(v28 + 4) = v30;
        _os_log_impl(&dword_261197000, v23, v24, "Session [%s] created", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x2666FCF20](v40, -1, -1);
        MEMORY[0x2666FCF20](v28, -1, -1);

        v31 = v41;
      }

      else
      {

        sub_2611B8BE4(v27);
        v31 = v26;
      }

      sub_2611B8BE4(v31);
      (*(v18 + 8))(v0[10], v17);
    }
  }

  v33 = v0[15];
  v32 = v0[16];
  v35 = v0[11];
  v34 = v0[12];
  v36 = v0[10];

  v37 = v0[1];

  return v37(v8, v9);
}

uint64_t sub_2611B88EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B8950(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B89B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for AnalyticsReporter();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_2611AC114(a1, &qword_27FE87508, qword_2612214C0);
    sub_2611BD270(a2, a3, v10);

    return sub_2611AC114(v10, &qword_27FE87508, qword_2612214C0);
  }

  else
  {
    sub_2611B88EC(a1, v14);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_2611BD8F0(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_2611B8B74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2611B8BE4(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsReporter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2611B8C40(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B8CE0, v2, 0);
}

uint64_t sub_2611B8CE0()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      v7 = v5;
      v8 = v0[8];
      v9 = *(v2 + 56);
      v10 = type metadata accessor for AnalyticsReporter();
      v11 = *(v10 - 8);
      sub_2611B8950(v9 + *(v11 + 72) * v7, v8);

      v12 = 0;
      goto LABEL_6;
    }
  }

  v10 = type metadata accessor for AnalyticsReporter();
  v11 = *(v10 - 8);
  v12 = 1;
LABEL_6:
  v13 = v0[8];
  (*(v11 + 56))(v13, v12, 1, v10);
  type metadata accessor for AnalyticsReporter();
  v14 = (*(*(v10 - 8) + 48))(v13, 1, v10) != 1;
  sub_2611AC114(v13, &qword_27FE87508, qword_2612214C0);

  v15 = v0[1];

  return v15(v14);
}

uint64_t sub_2611B8ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[8] = a3;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v5[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0) - 8) + 64) + 15;
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v8 = type metadata accessor for AnalyticsReporter();
  v5[15] = v8;
  v9 = *(v8 - 8);
  v5[16] = v9;
  v10 = *(v9 + 64) + 15;
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B902C, v4, 0);
}

uint64_t sub_2611B902C()
{
  v44 = v0;
  v1 = v0[10];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[8];
    v3 = v0[9];
    v5 = *(v1 + 112);

    v6 = sub_2611B3970(v4, v3);
    if (v7)
    {
      sub_2611B8950(*(v2 + 56) + *(v0[16] + 72) * v6, v0[14]);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v10 = v0 + 14;
  v9 = v0[14];
  v11 = v0[15];
  v12 = v0[16];
  v13 = *(v12 + 56);
  v13(v9, v8, 1, v11);
  v14 = *(v12 + 48);
  if (v14(v9, 1, v11) != 1)
  {
    v10 = v0 + 13;
    v15 = v0[13];
    v16 = v0[15];
    sub_2611B88EC(v0[14], v0[18]);
    sub_2611D3998(v15);
    v17 = v14(v15, 1, v16);
    v18 = v0[18];
    if (v17 != 1)
    {
      v32 = v0[17];
      v42 = v0[15];
      v33 = v0[12];
      sub_2611B88EC(v0[13], v32);
      sub_2611D2F0C();
      v30 = *(v32 + 24);
      v31 = *(v32 + 32);
      sub_2611B8950(v32, v33);
      v13(v33, 0, 1, v42);
      swift_beginAccess();
      swift_bridgeObjectRetain_n();
      sub_2611B89B4(v33, v30, v31);
      swift_endAccess();
      sub_2611B8BE4(v32);
      sub_2611B8BE4(v18);
      goto LABEL_17;
    }

    sub_2611B8BE4(v0[18]);
  }

  v19 = v0[11];
  sub_2611AC114(*v10, &qword_27FE87508, qword_2612214C0);
  v20 = sub_2611F05A8();
  sub_2611B8B74(v20, v19);
  v21 = sub_26121CA60();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v19, 1, v21) == 1)
  {
    sub_2611AC114(v0[11], &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v23 = v0[9];

    v24 = sub_26121CA40();
    v25 = sub_26121CFC0();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[8];
      v26 = v0[9];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v43 = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_2611AA228(v27, v26, &v43);
      _os_log_impl(&dword_261197000, v24, v25, "Could not find parent session with ID: [%s]", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      MEMORY[0x2666FCF20](v29, -1, -1);
      MEMORY[0x2666FCF20](v28, -1, -1);
    }

    (*(v22 + 8))(v0[11], v21);
  }

  v30 = 0;
  v31 = 0;
LABEL_17:
  v35 = v0[17];
  v34 = v0[18];
  v37 = v0[13];
  v36 = v0[14];
  v39 = v0[11];
  v38 = v0[12];

  v40 = v0[1];

  return v40(v30, v31);
}

uint64_t sub_2611B9428(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v5 + 232) = a4;
  *(v5 + 176) = a3;
  *(v5 + 184) = v4;
  *(v5 + 160) = a1;
  *(v5 + 168) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0) - 8) + 64) + 15;
  *(v5 + 200) = swift_task_alloc();
  v8 = type metadata accessor for AnalyticsReporter();
  *(v5 + 208) = v8;
  v9 = *(v8 - 8);
  *(v5 + 216) = v9;
  v10 = *(v9 + 64) + 15;
  *(v5 + 224) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611B9560, v4, 0);
}

uint64_t sub_2611B9560()
{
  v72 = v0;
  v1 = *(v0 + 184);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = *(v0 + 160);
    v3 = *(v0 + 168);

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      sub_2611B8950(*(v2 + 56) + *(*(v0 + 216) + 72) * v5, *(v0 + 200));
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 1;
  }

  v8 = *(v0 + 208);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  (*(v9 + 56))(v10, v7, 1, v8);
  if ((*(v9 + 48))(v10, 1, v8) != 1)
  {
    v42 = *(v0 + 224);
    v43 = *(v0 + 232);
    v44 = *(v0 + 176);
    sub_2611B88EC(*(v0 + 200), v42);
    v45 = sub_2611B9BCC(v44);
    v46 = sub_2611BDF84(v42, v45);

    sub_2611D3AE0(v46);

    if (v43 == 1)
    {
      (*(**(v0 + 184) + 168))(*(v0 + 160), *(v0 + 168));
    }

    sub_2611B8BE4(*(v0 + 224));
    goto LABEL_37;
  }

  v11 = *(v0 + 176);
  sub_2611AC114(*(v0 + 200), &qword_27FE87508, qword_2612214C0);
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_31:
    v47 = *(v0 + 192);
    *(v0 + 152) = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
    sub_2611BDF14();
    v48 = sub_26121CBF0();
    v50 = v49;

    v51 = sub_2611F05A8();
    sub_2611B8B74(v51, v47);
    v52 = sub_26121CA60();
    v53 = *(v52 - 8);
    v54 = (*(v53 + 48))(v47, 1, v52);
    v55 = *(v0 + 192);
    if (v54 == 1)
    {

      sub_2611AC114(v55, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {

      v56 = sub_26121CA40();
      v57 = sub_26121CFC0();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v71 = v59;
        *v58 = 136315138;
        v60 = sub_2611AA228(v48, v50, &v71);

        *(v58 + 4) = v60;
        _os_log_impl(&dword_261197000, v56, v57, "Could not send session event: [%s]", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v59);
        MEMORY[0x2666FCF20](v59, -1, -1);
        MEMORY[0x2666FCF20](v58, -1, -1);
      }

      else
      {
      }

      (*(v53 + 8))(*(v0 + 192), v52);
    }

LABEL_37:
    v61 = *(v0 + 224);
    v62 = *(v0 + 192);
    v63 = *(v0 + 200);

    v64 = *(v0 + 8);

    return v64();
  }

  v69 = v0;
  v14 = *(v0 + 176);
  v71 = MEMORY[0x277D84F90];
  sub_2611B7D88(0, v12, 0);
  v70 = v71;
  v15 = v14 + 64;
  v16 = -1 << *(v14 + 32);
  result = sub_26121D170();
  v18 = result;
  v19 = 0;
  v20 = *(v14 + 36);
  v65 = v14 + 72;
  v66 = v12;
  v67 = v20;
  v68 = v14 + 64;
  while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v14 + 32))
  {
    v23 = v18 >> 6;
    if ((*(v15 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
    {
      goto LABEL_41;
    }

    if (v20 != *(v14 + 36))
    {
      goto LABEL_42;
    }

    v24 = *(v14 + 56);
    v25 = (*(v14 + 48) + 16 * v18);
    v26 = v14;
    v28 = *v25;
    v27 = v25[1];
    sub_2611AC930(v24 + 32 * v18, v69 + 32);
    *(v69 + 64) = v28;
    *(v69 + 72) = v27;
    sub_2611B69DC((v69 + 32), (v69 + 80));
    *(v69 + 136) = 0;
    *(v69 + 144) = 0xE000000000000000;

    MEMORY[0x2666FBF20](v28, v27);
    MEMORY[0x2666FBF20](8250, 0xE200000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87510, &qword_2612214E0);
    sub_26121D2D0();
    v30 = *(v69 + 136);
    v29 = *(v69 + 144);
    result = sub_2611AC114(v69 + 64, &qword_27FE87518, qword_2612214E8);
    v31 = v70;
    v71 = v70;
    v33 = *(v70 + 16);
    v32 = *(v70 + 24);
    if (v33 >= v32 >> 1)
    {
      result = sub_2611B7D88((v32 > 1), v33 + 1, 1);
      v31 = v71;
    }

    *(v31 + 16) = v33 + 1;
    v34 = v31 + 16 * v33;
    *(v34 + 32) = v30;
    *(v34 + 40) = v29;
    v21 = 1 << *(v26 + 32);
    if (v18 >= v21)
    {
      goto LABEL_43;
    }

    v14 = v26;
    v15 = v68;
    v35 = *(v68 + 8 * v23);
    if ((v35 & (1 << v18)) == 0)
    {
      goto LABEL_44;
    }

    v70 = v31;
    v20 = v67;
    if (v67 != *(v14 + 36))
    {
      goto LABEL_45;
    }

    v36 = v35 & (-2 << (v18 & 0x3F));
    if (v36)
    {
      v21 = __clz(__rbit64(v36)) | v18 & 0x7FFFFFFFFFFFFFC0;
      v22 = v66;
    }

    else
    {
      v37 = v23 << 6;
      v22 = v66;
      v38 = (v65 + 8 * v23);
      v39 = v23 + 1;
      while (v39 < (v21 + 63) >> 6)
      {
        v41 = *v38++;
        v40 = v41;
        v37 += 64;
        ++v39;
        if (v41)
        {
          result = sub_2611BDF78(v18, v67, 0);
          v21 = __clz(__rbit64(v40)) + v37;
          goto LABEL_11;
        }
      }

      result = sub_2611BDF78(v18, v67, 0);
    }

LABEL_11:
    ++v19;
    v18 = v21;
    if (v19 == v22)
    {
      v0 = v69;
      v13 = v70;
      goto LABEL_31;
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
  return result;
}

unint64_t sub_2611B9BCC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE87730, &unk_2612237A0);
    v2 = sub_26121D310();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_2611AC930(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_2611B69DC(v29, &v24);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87510, &qword_2612214E0);
        swift_dynamicCast();
        sub_2611B69DC(&v25, v27);
        sub_2611B69DC(v27, v28);
        sub_2611B69DC(v28, &v26);
        result = sub_2611B3970(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_1(v12);
          result = sub_2611B69DC(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_2611B69DC(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_2611B9E58(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v21 - v10;
  v12 = type metadata accessor for AnalyticsReporter();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  swift_beginAccess();

  sub_2611B89B4(v11, a1, a2);
  swift_endAccess();
  v13 = sub_2611F05A8();
  sub_2611B8B74(v13, v7);
  v14 = sub_26121CA60();
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    return sub_2611AC114(v7, &qword_27FE87700, &unk_2612203D0);
  }

  v17 = sub_26121CA40();
  v18 = sub_26121CFB0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_2611AA228(a1, a2, &v22);
    _os_log_impl(&dword_261197000, v17, v18, "Session [%s] released", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2666FCF20](v20, -1, -1);
    MEMORY[0x2666FCF20](v19, -1, -1);
  }

  return (*(v15 + 8))(v7, v14);
}

uint64_t sub_2611BA118(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyticsReporter();
  v62 = *(v6 - 8);
  v7 = *(v62 + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v57 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v55 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v59 = &v55 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v55 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v55 - v19;
  v21 = sub_2611F05A8();
  sub_2611B8B74(v21, v20);
  v22 = sub_26121CA60();
  v23 = *(v22 - 8);
  v24 = (*(v23 + 48))(v20, 1, v22);
  v60 = a1;
  v61 = a2;
  if (v24 == 1)
  {
    sub_2611AC114(v20, &qword_27FE87700, &unk_2612203D0);
  }

  else
  {

    v25 = sub_26121CA40();
    v26 = sub_26121CFB0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      LODWORD(v58) = v26;
      v28 = v27;
      v29 = swift_slowAlloc();
      v30 = a1;
      v31 = v29;
      v64[0] = v29;
      *v28 = 136315138;
      *(v28 + 4) = sub_2611AA228(v30, a2, v64);
      _os_log_impl(&dword_261197000, v25, v58, "Released all sessions from service [%s]", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x2666FCF20](v31, -1, -1);
      MEMORY[0x2666FCF20](v28, -1, -1);
    }

    (*(v23 + 8))(v20, v22);
  }

  swift_beginAccess();
  v32 = v3[14];
  v33 = 1 << *(v32 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v32 + 64);
  v36 = (v33 + 63) >> 6;
  v37 = v3[14];

  v39 = 0;
  v58 = MEMORY[0x277D84F90];
  while (1)
  {
    v40 = v39;
    if (!v35)
    {
      break;
    }

LABEL_13:
    v41 = __clz(__rbit64(v35));
    v35 &= v35 - 1;
    v42 = *(v62 + 72);
    v43 = v59;
    sub_2611B8950(*(v32 + 56) + v42 * (v41 | (v39 << 6)), v59);
    sub_2611B88EC(v43, v16);
    v44 = *(v16 + 1) == v60 && *(v16 + 2) == v61;
    if (v44 || (sub_26121D4D0() & 1) != 0)
    {
      sub_2611B88EC(v16, v57);
      v45 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v45;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2611BDD1C(0, *(v45 + 16) + 1, 1);
        v45 = v63;
      }

      v48 = *(v45 + 16);
      v47 = *(v45 + 24);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v58 = v48 + 1;
        v56 = v48;
        sub_2611BDD1C(v47 > 1, v48 + 1, 1);
        v49 = v58;
        v48 = v56;
        v45 = v63;
      }

      *(v45 + 16) = v49;
      v50 = *(v62 + 80);
      v58 = v45;
      result = sub_2611B88EC(v57, v45 + ((v50 + 32) & ~v50) + v48 * v42);
    }

    else
    {
      result = sub_2611B8BE4(v16);
    }
  }

  while (1)
  {
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return result;
    }

    if (v39 >= v36)
    {
      break;
    }

    v35 = *(v32 + 64 + 8 * v39);
    ++v40;
    if (v35)
    {
      goto LABEL_13;
    }
  }

  v51 = *(v58 + 16);
  if (v51)
  {
    v52 = *(*v3 + 168);
    v53 = v58 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v54 = *(v62 + 72);
    do
    {
      sub_2611B8950(v53, v12);
      v52(*(v12 + 3), *(v12 + 4));
      sub_2611B8BE4(v12);
      v53 += v54;
      --v51;
    }

    while (v51);
  }
}

uint64_t sub_2611BA61C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = type metadata accessor for AnalyticsReporter();
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2611BA718, v3, 0);
}

uint64_t sub_2611BA718()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];

    v5 = sub_2611B3970(v4, v3);
    if (v6)
    {
      v7 = v0[10];
      sub_2611B8950(*(v2 + 56) + *(v0[11] + 72) * v5, v0[12]);

      sub_2611BE374(&qword_27FE87520);
      v8 = Encodable.toJson()(v7);
      if (v9 >> 60 == 15)
      {
        sub_2611B8BE4(v0[12]);
      }

      else
      {
        v14 = v8;
        v15 = v9;
        v16 = v0[7];
        SecureStorage.init()();
        SecureStorage.save(at:data:)(v16, v14, v15);
        sub_2611B8BE4(v0[12]);
        sub_26119EF48(v14, v15);
      }
    }

    else
    {
    }
  }

  v10 = v0[12];
  v11 = v0[9];

  v12 = v0[1];

  return v12();
}

uint64_t sub_2611BAA70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87508, qword_2612214C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v21[-v7];
  v9 = type metadata accessor for AnalyticsReporter();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  SecureStorage.init()();
  v14 = SecureStorage.read(at:)();
  v16 = v15;
  v17 = sub_2611BE374(&qword_27FE87530);
  nullsub_1(v9, v17);
  Data.fromJson<A>(_:)(v9, v9, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_26119DA0C(v14, v16);
    sub_2611AC114(v8, &qword_27FE87508, qword_2612214C0);
    return 0;
  }

  else
  {
    sub_2611B88EC(v8, v13);
    sub_2611D2F0C();
    v18 = *(v13 + 3);
    v19 = *(v13 + 4);
    sub_2611B8950(v13, v6);
    (*(v10 + 56))(v6, 0, 1, v9);
    swift_beginAccess();
    swift_bridgeObjectRetain_n();
    sub_2611B89B4(v6, v18, v19);
    swift_endAccess();
    sub_26119DA0C(v14, v16);
    sub_2611B8BE4(v13);
    return v18;
  }
}

uint64_t sub_2611BAEDC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  return (*(v7 + 32))(a1, v6, v7) & 1;
}

unint64_t sub_2611BB144(uint64_t a1, void *a2, uint64_t (*a3)(char *), uint64_t a4)
{
  v5 = v4;
  v74 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  v16 = sub_26121C5F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  SecureStorage.init()();
  v24._countAndFlagsBits = a1;
  v24._object = a2;
  result = SecureStorage.getDirectoryContentAbsolutePath(at:)(v24);
  if (v26)
  {
    v28 = sub_2611F05A8();
    sub_2611B8B74(v28, v13);
    v29 = sub_26121CA60();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v13, 1, v29) == 1)
    {

      return sub_2611AC114(v13, &qword_27FE87700, &unk_2612203D0);
    }

    else
    {
      v52 = v26;
      v53 = sub_26121CA40();
      v54 = sub_26121CFC0();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        v57 = v26;
        v58 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v58;
        *v56 = v58;
        _os_log_impl(&dword_261197000, v53, v54, "Could not load Analytics sessions: [%@]", v55, 0xCu);
        sub_2611AC114(v56, &qword_27FE87528, &qword_261221500);
        MEMORY[0x2666FCF20](v56, -1, -1);
        MEMORY[0x2666FCF20](v55, -1, -1);
      }

      else
      {
      }

      return (*(v30 + 8))(v13, v29);
    }
  }

  else
  {
    v69 = v21;
    v72 = v15;
    if (result)
    {
      v31 = result;
      v73 = *(result + 16);
      if (v73)
      {
        v32 = 0;
        v66 = (v17 + 16);
        v33 = (v17 + 8);
        v34 = (result + 40);
        *&v27 = 136315138;
        v59 = v27;
        v70 = a4;
        v71 = v5;
        v67 = result;
        v65 = v16;
        while (v32 < *(v31 + 16))
        {
          v35 = *(v34 - 1);
          v36 = *v34;

          sub_26121C570();
          if (v74(v23) & 1) == 0 || (v75[3] = &type metadata for SecureStorage, v75[4] = &protocol witness table for SecureStorage, v37 = (*(*v5 + 200))(v23, v75), __swift_destroy_boxed_opaque_existential_1(v75), (v37))
          {
            (*v33)(v23, v16);
          }

          else
          {
            v38 = sub_2611F05A8();
            v39 = v72;
            sub_2611B8B74(v38, v72);
            v40 = sub_26121CA60();
            v41 = *(v40 - 8);
            if ((*(v41 + 48))(v39, 1, v40) == 1)
            {
              (*v33)(v23, v16);
              sub_2611AC114(v39, &qword_27FE87700, &unk_2612203D0);
              v5 = v71;
            }

            else
            {
              v42 = v69;
              (*v66)(v69, v23, v16);
              v43 = sub_26121CA40();
              v68 = sub_26121CFC0();
              if (os_log_type_enabled(v43, v68))
              {
                v44 = swift_slowAlloc();
                v63 = swift_slowAlloc();
                v75[0] = v63;
                *v44 = v59;
                v62 = v43;
                v60 = sub_26121C580();
                v46 = v45;
                v64 = *v33;
                v64(v42, v65);
                v47 = sub_2611AA228(v60, v46, v75);

                v48 = v44;
                v61 = v44;
                v16 = v65;
                *(v48 + 1) = v47;
                v49 = v62;
                _os_log_impl(&dword_261197000, v62, v68, "Could not delete Analytics session: [%s]", v48, 0xCu);
                v50 = v63;
                __swift_destroy_boxed_opaque_existential_1(v63);
                MEMORY[0x2666FCF20](v50, -1, -1);
                MEMORY[0x2666FCF20](v61, -1, -1);

                v64(v23, v16);
              }

              else
              {

                v51 = *v33;
                (*v33)(v42, v16);
                v51(v23, v16);
              }

              (*(v41 + 8))(v72, v40);
              v5 = v71;
              v31 = v67;
            }
          }

          ++v32;

          v34 += 2;
          if (v73 == v32)
          {
          }
        }

        __break(1u);
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t sub_2611BB7B4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2611BB7EC()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  return v0;
}

uint64_t sub_2611BB83C()
{
  type metadata accessor for AnalyticsCache();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  qword_27FE8CDA8 = v0;
  return result;
}

uint64_t static AnalyticsManager.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FE8CDA0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27FE8CDA8;
}

uint64_t AnalyticsManager.createSession(serviceName:hierarchyToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 120);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2611BBA38;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_2611BBA38(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t AnalyticsManager.createSubSession(serviceName:parentSessionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 144);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2611BE58C;

  return v14(a1, a2, a3, a4);
}

uint64_t AnalyticsManager.sessionExists(sessionID:)(uint64_t a1, uint64_t a2)
{
  v6 = *(**v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2611BBDAC;

  return v10(a1, a2);
}

uint64_t sub_2611BBDAC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t AnalyticsManager.sendSessionEvent(sessionID:message:releaseSession:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(**v4 + 160);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_2611BBFEC;

  return v14(a1, a2, a3, a4);
}

uint64_t sub_2611BBFEC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t AnalyticsManager.releaseSession(sessionID:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0) - 8) + 64) + 15;
  v5 = swift_task_alloc();
  v6 = *v2;
  v3[4] = v5;
  v3[5] = v6;

  return MEMORY[0x2822009F8](sub_2611BC180, 0, 0);
}

uint64_t sub_2611BC180()
{
  v18 = v0;
  v1 = v0[4];
  v2 = sub_2611F05A8();
  sub_2611B8B74(v2, v1);
  v3 = sub_26121CA60();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v1, 1, v3);
  v6 = v0[4];
  if (v5 == 1)
  {
    sub_2611AC114(v0[4], &qword_27FE87700, &unk_2612203D0);
  }

  else
  {
    v7 = v0[3];

    v8 = sub_26121CA40();
    v9 = sub_26121CFB0();

    if (os_log_type_enabled(v8, v9))
    {
      v11 = v0[2];
      v10 = v0[3];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2611AA228(v11, v10, &v17);
      _os_log_impl(&dword_261197000, v8, v9, "Releasing session: [%s]", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x2666FCF20](v13, -1, -1);
      MEMORY[0x2666FCF20](v12, -1, -1);
    }

    (*(v4 + 8))(v0[4], v3);
  }

  v14 = v0[5];
  v15 = (*v14 + 168) & 0xFFFFFFFFFFFFLL | 0xE622000000000000;
  v0[6] = *(*v14 + 168);
  v0[7] = v15;

  return MEMORY[0x2822009F8](sub_2611BC38C, v14, 0);
}

uint64_t sub_2611BC38C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  (*(v0 + 48))(*(v0 + 16), *(v0 + 24));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t AnalyticsManager.releaseAllSessions(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  v5 = (*v4 + 176) & 0xFFFFFFFFFFFFLL | 0xA8A3000000000000;
  v3[5] = *(*v4 + 176);
  v3[6] = v5;
  return MEMORY[0x2822009F8](sub_2611BC43C, v4, 0);
}

uint64_t sub_2611BC43C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 32);
  (*(v0 + 40))(*(v0 + 16), *(v0 + 24));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t AnalyticsManager.storeSession(sessionID:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_26121C5F0();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *v4;
  v5[8] = v9;
  v5[9] = v10;

  return MEMORY[0x2822009F8](sub_2611BC570, 0, 0);
}

uint64_t sub_2611BC570()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v4, v3);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](7562611, 0xE300000000000000);
  sub_26121C570();

  v5 = *(*v2 + 184);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2611BC704;
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[2];
  v10 = v0[3];

  return v13(v11, v10, v8);
}

uint64_t sub_2611BC704()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2611BC800, 0, 0);
}

uint64_t sub_2611BC800()
{
  (*(v0[7] + 8))(v0[8], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t AnalyticsManager.storeSubSession(sessionID:fileName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = a3;
  v5[5] = a4;
  v5[2] = a1;
  v5[3] = a2;
  v6 = sub_26121C5F0();
  v5[6] = v6;
  v7 = *(v6 - 8);
  v5[7] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *v4;
  v5[8] = v9;
  v5[9] = v10;

  return MEMORY[0x2822009F8](sub_2611BC944, 0, 0);
}

uint64_t sub_2611BC944()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[4];
  v3 = v0[5];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v4, v3);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](6452595, 0xE300000000000000);
  sub_26121C570();

  v5 = *(*v2 + 184);
  v13 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_2611BCAD8;
  v8 = v0[8];
  v9 = v0[9];
  v11 = v0[2];
  v10 = v0[3];

  return v13(v11, v10, v8);
}

uint64_t sub_2611BCAD8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2611BE588, 0, 0);
}

uint64_t AnalyticsManager.loadSession(fileName:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_26121C5F0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[6] = v7;
  v3[7] = v8;

  return MEMORY[0x2822009F8](sub_2611BCC98, 0, 0);
}

uint64_t sub_2611BCC98()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v4, v3);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](7562611, 0xE300000000000000);
  sub_26121C570();

  v5 = (*v1 + 192) & 0xFFFFFFFFFFFFLL | 0xB558000000000000;
  v0[8] = *(*v1 + 192);
  v0[9] = v5;

  return MEMORY[0x2822009F8](sub_2611BCD8C, v1, 0);
}

uint64_t sub_2611BCD8C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 48));
  *(v0 + 88) = v3;

  return MEMORY[0x2822009F8](sub_2611BCDFC, 0, 0);
}

uint64_t sub_2611BCDFC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[10];
  v3 = v0[11];

  return v1(v2, v3);
}

uint64_t AnalyticsManager.loadSubSession(fileName:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = sub_26121C5F0();
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64) + 15;
  v7 = swift_task_alloc();
  v8 = *v2;
  v3[6] = v7;
  v3[7] = v8;

  return MEMORY[0x2822009F8](sub_2611BCF40, 0, 0);
}

uint64_t sub_2611BCF40()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[2];
  v3 = v0[3];
  type metadata accessor for Utilities();
  static Utilities.analyticsCacheDirectoryPath()();
  MEMORY[0x2666FBF20](v4, v3);
  MEMORY[0x2666FBF20](46, 0xE100000000000000);
  MEMORY[0x2666FBF20](6452595, 0xE300000000000000);
  sub_26121C570();

  v5 = (*v1 + 192) & 0xFFFFFFFFFFFFLL | 0xB558000000000000;
  v0[8] = *(*v1 + 192);
  v0[9] = v5;

  return MEMORY[0x2822009F8](sub_2611BD034, v1, 0);
}

uint64_t sub_2611BD034()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  *(v0 + 80) = (*(v0 + 64))(*(v0 + 48));
  *(v0 + 88) = v3;

  return MEMORY[0x2822009F8](sub_2611BE590, 0, 0);
}

uint64_t sub_2611BD0C8()
{
  v1 = v0[2];
  type metadata accessor for Utilities();
  v0[3] = static Utilities.analyticsCacheDirectoryPath()();
  v0[4] = v2;
  v3 = (*v1 + 208) & 0xFFFFFFFFFFFFLL | 0x41F1000000000000;
  v0[5] = *(*v1 + 208);
  v0[6] = v3;

  return MEMORY[0x2822009F8](sub_2611BD15C, v1, 0);
}

uint64_t sub_2611BD15C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  (*(v0 + 40))(*(v0 + 24), *(v0 + 32), sub_2611BD1E8, 0);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2611BD1E8()
{
  if ((sub_26121C540() & 1) == 0)
  {
    return 0;
  }

  if (sub_26121C560() == 6452595 && v0 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v2 = sub_26121D4D0();

    return v2 & 1;
  }
}

uint64_t sub_2611BD270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_2611B3970(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2611BDAEC();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for AnalyticsReporter();
    v22 = *(v15 - 8);
    sub_2611B88EC(v14 + *(v22 + 72) * v9, a3);
    sub_2611BD704(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for AnalyticsReporter();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_2611BD3C8(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyticsReporter();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87540, &unk_261221620);
  v44 = a2;
  result = sub_26121D300();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_2611B88EC(v31, v45);
      }

      else
      {
        sub_2611B8950(v31, v45);
      }

      v32 = *(v12 + 40);
      sub_26121D5B0();
      sub_26121CD50();
      result = sub_26121D5D0();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_2611B88EC(v45, *(v12 + 56) + v30 * v20);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_2611BD704(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26121D180() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26121D5B0();

      sub_26121CD50();
      v13 = sub_26121D5D0();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for AnalyticsReporter() - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2611BD8F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2611B3970(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = *(v10 + 24);
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_2611BDAEC();
      goto LABEL_7;
    }

    sub_2611BD3C8(v15, a4 & 1);
    v22 = *v5;
    v23 = sub_2611B3970(a2, a3);
    if ((v16 & 1) == (v24 & 1))
    {
      v12 = v23;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_26121D520();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = v19 + *(*(type metadata accessor for AnalyticsReporter() - 8) + 72) * v12;

    return sub_2611BE524(a1, v20);
  }

LABEL_13:
  sub_2611BDA54(v12, a2, a3, a1, v18);
}

uint64_t sub_2611BDA54(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AnalyticsReporter();
  result = sub_2611B88EC(a4, v9 + *(*(v10 - 8) + 72) * a1);
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

void *sub_2611BDAEC()
{
  v1 = v0;
  v2 = type metadata accessor for AnalyticsReporter();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87540, &unk_261221620);
  v5 = *v0;
  v6 = sub_26121D2F0();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_2611B8950(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_2611B88EC(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

size_t sub_2611BDD1C(size_t a1, int64_t a2, char a3)
{
  result = sub_2611BDD3C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_2611BDD3C(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87538, &qword_2612215F8);
  v10 = *(type metadata accessor for AnalyticsReporter() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AnalyticsReporter() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_2611BDF14()
{
  result = qword_27FE87960;
  if (!qword_27FE87960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE87468, &qword_2612210E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE87960);
  }

  return result;
}

uint64_t sub_2611BDF78(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2611BDF84(void *a1, uint64_t a2)
{
  v4 = sub_26121C760();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE879C0, &unk_261221600);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v43 - v14;
  v16 = a1[1];
  v17 = a1[2];

  v18 = sub_261199A70();
  if (v16 == *v18 && v17 == *(v18 + 1) || (sub_26121D4D0() & 1) != 0)
  {
    sub_26121C750();
    sub_2611C0E50(v15);
    v19 = *(v5 + 8);
    v19(v8, v4);
    if ((*(v5 + 48))(v15, 1, v4) == 1)
    {
      sub_2611AC114(v15, &unk_27FE879C0, &unk_261221600);
      goto LABEL_11;
    }

    sub_26121C720();
    v21 = v20;
    v19(v15, v4);
  }

  else
  {
    sub_26121C750();
    sub_2611C0B10(v13);
    v22 = *(v5 + 8);
    v22(v8, v4);
    if ((*(v5 + 48))(v13, 1, v4) == 1)
    {
      sub_2611AC114(v13, &unk_27FE879C0, &unk_261221600);
      goto LABEL_11;
    }

    sub_26121C720();
    v21 = v23;
    v22(v13, v4);
  }

  v24 = sub_261199C14();
  v25 = *v24;
  v26 = v24[1];
  v47 = MEMORY[0x277D839F8];
  *&v46 = v21;
  sub_2611B69DC(&v46, v45);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = a2;
  sub_2611B63A0(v45, v25, v26, isUniquelyReferenced_nonNull_native);

  a2 = v44;
LABEL_11:
  v28 = AnalyticsReporter.sessionDuration.getter();
  if ((v29 & 1) == 0)
  {
    v30 = v28;
    v31 = sub_261199C3C();
    v32 = *v31;
    v33 = v31[1];
    v47 = MEMORY[0x277D83B88];
    *&v46 = v30;
    sub_2611B69DC(&v46, v45);

    v34 = swift_isUniquelyReferenced_nonNull_native();
    v44 = a2;
    sub_2611B63A0(v45, v32, v33, v34);

    a2 = v44;
  }

  v35 = sub_261199A4C();
  if (v16 == *v35 && v17 == *(v35 + 1) || (sub_26121D4D0() & 1) != 0)
  {
    v36 = sub_261199AC4();
    v37 = *v36;
    v38 = v36[1];
    v39 = a1[5];
    v40 = a1[6];
    v47 = MEMORY[0x277D837D0];
    *&v46 = v39;
    *(&v46 + 1) = v40;
    sub_2611B69DC(&v46, v45);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    v44 = a2;
    sub_2611B63A0(v45, v37, v38, v41);

    return v44;
  }

  return a2;
}

uint64_t sub_2611BE374(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnalyticsReporter();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for AnalyticsManager(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AnalyticsManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2611BE524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsReporter();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Encodable.toJson()(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_26121C340();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26121C380();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_26121C370();
  (*(v7 + 104))(v10, *MEMORY[0x277CC8778], v6);
  sub_26121C350();
  v14 = sub_26121C360();

  return v14;
}

Swift::String __swiftcall String.localized(table:comment:)(Swift::String table, Swift::String comment)
{
  v3 = sub_2611C130C(table._countAndFlagsBits, table._object, v2);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t String.localized(table:comment:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87548, &unk_261221BA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  sub_2611C130C(a1, a2, a6);
  sub_26121C830();
  v13 = sub_26121C930();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = sub_26121CCA0();

  sub_2611AC114(v12, &qword_27FE87548, &unk_261221BA0);
  return v14;
}

Swift::String __swiftcall Data.upperHex(format:)(Swift::String format)
{
  v3 = v2;
  v4 = v1;

  sub_2611C1728(v4, v3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87468, &qword_2612210E0);
  sub_2611C1CC8(&qword_27FE87960, &qword_27FE87468, &qword_2612210E0);
  v5 = sub_26121CBF0();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result._object = v9;
  result._countAndFlagsBits = v8;
  return result;
}

uint64_t Data.fromJson<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v16[2] = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE87700, &unk_2612203D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_26121C2F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26121C330();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_26121C320();
  (*(v8 + 104))(v11, *MEMORY[0x277CC86D0], v7);
  sub_26121C300();
  sub_26121C310();
  (*(*(a2 - 8) + 56))(a3, 0, 1, a2);
}