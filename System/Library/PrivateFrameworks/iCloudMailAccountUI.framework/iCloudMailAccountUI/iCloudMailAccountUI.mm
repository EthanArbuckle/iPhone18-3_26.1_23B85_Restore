id _MSLogSystem()
{
  if (_MSLogSystem_onceToken[0] != -1)
  {
    _MSLogSystem_cold_1();
  }

  v1 = _MSLogSystem_log;

  return v1;
}

uint64_t sub_27550DE18()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_27550DE94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_27550DF7C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailAvailableAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailAvailableAPIRequest()
{
  result = qword_2809F4D88;
  if (!qword_2809F4D88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailAvailableAPIResponse(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EmailAvailableAPIResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_27550E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27550E254(uint64_t a1)
{
  v2 = sub_27550EAFC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27550E290(uint64_t a1)
{
  v2 = sub_27550EAFC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27550E2CC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DE0, &qword_27554E6E8);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27550EAFC();
  sub_27554D728();
  sub_27554D658();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_27550E40C()
{
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](0);
  return sub_27554D708();
}

uint64_t sub_27550E47C()
{
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](0);
  return sub_27554D708();
}

uint64_t sub_27550E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27550E574(uint64_t a1)
{
  v2 = sub_27550E7DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27550E5B0(uint64_t a1)
{
  v2 = sub_27550E7DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27550E5EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4D98, &qword_27554E4C8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27550E7DC();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_27554D638();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11 & 1;
  return result;
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_27550E7DC()
{
  result = qword_2809F4DA0;
  if (!qword_2809F4DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DA0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_27550E890@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_27550E8B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_27550E900(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
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

uint64_t sub_27550E96C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27550E98C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

unint64_t sub_27550E9F8()
{
  result = qword_2809F4DC8;
  if (!qword_2809F4DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DC8);
  }

  return result;
}

unint64_t sub_27550EA50()
{
  result = qword_2809F4DD0;
  if (!qword_2809F4DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DD0);
  }

  return result;
}

unint64_t sub_27550EAA8()
{
  result = qword_2809F4DD8;
  if (!qword_2809F4DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DD8);
  }

  return result;
}

unint64_t sub_27550EAFC()
{
  result = qword_2809F4DE8;
  if (!qword_2809F4DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4DE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailCreateAPIResponse.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmailCreateAPIResponse.CodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_27550EC2C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27550EC4C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

void sub_27550EC9C(uint64_t a1, unint64_t *a2)
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

unint64_t sub_27550ECEC()
{
  result = qword_2809F4E00;
  if (!qword_2809F4E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E00);
  }

  return result;
}

unint64_t sub_27550ED44()
{
  result = qword_2809F4E08;
  if (!qword_2809F4E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E08);
  }

  return result;
}

unint64_t sub_27550ED9C()
{
  result = qword_2809F4E10;
  if (!qword_2809F4E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E10);
  }

  return result;
}

__n128 __swift_memcpy121_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 105) = *(a2 + 105);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_27550EE40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 121))
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

uint64_t sub_27550EE88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 121) = 1;
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

    *(result + 121) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27550EF14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E60, &qword_27554E968);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E58, &qword_27554E960);
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E50, &qword_27554E958);
  v11 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v37 - v12;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E80, &qword_27554E978);
  v14 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E38, &qword_27554E950);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v37 - v20;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E30, &qword_27554E948);
  v22 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v24 = &v37 - v23;
  if (*(a1 + 120))
  {
    sub_27550F424(v21);
    sub_275515E2C(&qword_2809F4E40, &qword_2809F4E38, &qword_27554E950);
    sub_27554CF98();
    (*(v18 + 8))(v21, v17);
    v25 = &v24[*(v39 + 36)];
    *v25 = sub_275515E84;
    *(v25 + 1) = 0;
    *(v25 + 2) = 0;
    *(v25 + 3) = 0;
    v26 = &qword_2809F4E30;
    v27 = &qword_27554E948;
    sub_275514D40(v24, v16, &qword_2809F4E30, &qword_27554E948);
    swift_storeEnumTagMultiPayload();
    sub_2755139D8();
    sub_275513AD4();
    sub_27554CC68();
    v28 = v24;
  }

  else
  {
    v29 = *(a1 + 112);
    *v6 = sub_27554CC28();
    *(v6 + 1) = v29;
    v6[16] = 0;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E88, &unk_27554E980);
    sub_27550FC74(a1, &v6[*(v30 + 44)]);
    v31 = sub_27554CD68();
    v32 = &v6[*(v3 + 36)];
    *v32 = v31;
    *(v32 + 8) = 0u;
    *(v32 + 24) = 0u;
    v32[40] = 1;
    v33 = sub_275513BE0();
    MEMORY[0x277C7ACB0](2, MEMORY[0x277D84F90], v3, v33);
    sub_275514DA8(v6, &qword_2809F4E60, &qword_27554E968);
    v43 = v3;
    v44 = v33;
    swift_getOpaqueTypeConformance2();
    v34 = v38;
    sub_27554CF98();
    (*(v37 + 8))(v10, v34);
    v35 = &v13[*(v41 + 36)];
    *v35 = sub_275515E84;
    *(v35 + 1) = 0;
    *(v35 + 2) = 0;
    *(v35 + 3) = 0;
    v26 = &qword_2809F4E50;
    v27 = &qword_27554E958;
    sub_275514D40(v13, v16, &qword_2809F4E50, &qword_27554E958);
    swift_storeEnumTagMultiPayload();
    sub_2755139D8();
    sub_275513AD4();
    sub_27554CC68();
    v28 = v13;
  }

  return sub_275514DA8(v28, v26, v27);
}

uint64_t sub_27550F424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v57 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E90, &unk_275550A50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v58 = v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E98, &unk_27554E990);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v59 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = v48 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA0, &qword_275550A60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v48 - v13;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = objc_opt_self();
  v17 = [v16 bundleForClass_];
  *&v61[0] = 2777980912;
  *(&v61[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275551940);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v55 = sub_27554C588();
  v54 = v18;

  v19 = [v16 bundleForClass_];
  *&v61[0] = 2777980912;
  *(&v61[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275551960);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v53 = sub_27554C588();
  v52 = v20;

  v21 = sub_27554C688();
  v22 = *(*(v21 - 8) + 56);
  v56 = v14;
  v22(v14, 1, 1, v21);
  v50 = v16;
  v51 = ObjCClassFromMetadata;
  v23 = [v16 bundleForClass_];
  *&v61[0] = 2777980912;
  *(&v61[0] + 1) = 0xA400000000000000;
  MEMORY[0x277C7B050](1162760004, 0xE400000000000000);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  v61[0] = *(v1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v62 = *(v1 + 80);
  v61[0] = *(v1 + 80);
  sub_27554D0E8();
  v24 = sub_27554C6F8();
  v25 = *(v24 - 8);
  v49 = *(v25 + 56);
  v48[1] = v25 + 56;
  v49(v58, 1, 1, v24);
  v26 = swift_allocObject();
  v27 = *(v1 + 80);
  v26[5] = *(v1 + 64);
  v26[6] = v27;
  v26[7] = *(v1 + 96);
  *(v26 + 121) = *(v1 + 105);
  v28 = *(v1 + 16);
  v26[1] = *v1;
  v26[2] = v28;
  v29 = *(v1 + 48);
  v26[3] = *(v1 + 32);
  v26[4] = v29;
  sub_275514528(v1, v61);
  v30 = v60;
  sub_27554C728();
  v31 = sub_27554C738();
  v32 = *(*(v31 - 8) + 56);
  v32(v30, 0, 1, v31);
  v33 = 1;
  if (*(v1 + 40))
  {
    v34 = [v50 bundleForClass_];
    *&v61[0] = 2777980912;
    *(&v61[0] + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4D5F54524F504D49, 0xEB000000004C4941);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v51 = sub_27554C588();

    v61[0] = *(v1 + 64);
    sub_27554D0E8();
    v61[0] = v62;
    sub_27554D0E8();
    v49(v58, 1, 1, v24);
    v35 = swift_allocObject();
    v36 = *(v1 + 80);
    v35[5] = *(v1 + 64);
    v35[6] = v36;
    v35[7] = *(v1 + 96);
    *(v35 + 121) = *(v1 + 105);
    v37 = *(v1 + 16);
    v35[1] = *v1;
    v35[2] = v37;
    v38 = *(v1 + 48);
    v35[3] = *(v1 + 32);
    v35[4] = v38;
    sub_275514528(v1, v61);
    sub_27554C728();
    v33 = 0;
  }

  v32(v59, v33, 1, v31);
  v39 = swift_allocObject();
  v40 = *(v1 + 80);
  v39[5] = *(v1 + 64);
  v39[6] = v40;
  v39[7] = *(v1 + 96);
  *(v39 + 121) = *(v1 + 105);
  v41 = *(v1 + 16);
  v39[1] = *v1;
  v39[2] = v41;
  v42 = *(v1 + 48);
  v39[3] = *(v1 + 32);
  v39[4] = v42;
  v43 = swift_allocObject();
  v44 = v2[5];
  v43[5] = v2[4];
  v43[6] = v44;
  v43[7] = v2[6];
  *(v43 + 121) = *(v2 + 105);
  v45 = v2[1];
  v43[1] = *v2;
  v43[2] = v45;
  v46 = v2[3];
  v43[3] = v2[2];
  v43[4] = v46;
  sub_275514528(v2, v61);
  sub_275514528(v2, v61);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EB0, &qword_27554E9A8);
  sub_275514570();
  sub_2755145C4();
  return sub_27554C6B8();
}

uint64_t sub_27550FC74@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FA8, &qword_27554EAB0);
  v55 = *(v56 - 8);
  v3 = *(v55 + 64);
  MEMORY[0x28223BE20](v56);
  v53 = &v53 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FB0, &qword_27554EAB8);
  v61 = *(v5 - 8);
  v6 = *(v61 + 64);
  MEMORY[0x28223BE20](v5);
  v54 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FB8, &qword_27554EAC0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v59 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC0, &qword_27554EAC8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC8, &qword_27554EAD0);
  v62 = *(v20 - 8);
  v21 = *(v62 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v58 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - v24;
  v65 = a1;
  sub_27554CD48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FD0, &qword_27554EAD8);
  sub_275515E2C(&qword_2809F4FD8, &qword_2809F4FD0, &qword_27554EAD8);
  v26 = 1;
  v64 = v25;
  sub_27554C8F8();
  v60 = v19;
  v27 = v19;
  v28 = v5;
  v29.n128_f64[0] = sub_275511A50(v27);
  if (*(a1 + 40))
  {
    v30 = swift_allocObject();
    v31 = *(a1 + 80);
    v30[5] = *(a1 + 64);
    v30[6] = v31;
    v30[7] = *(a1 + 96);
    *(v30 + 121) = *(a1 + 105);
    v32 = *(a1 + 16);
    v30[1] = *a1;
    v30[2] = v32;
    v33 = *(a1 + 48);
    v30[3] = *(a1 + 32);
    v30[4] = v33;
    MEMORY[0x28223BE20](v30);
    *(&v53 - 2) = a1;
    sub_275514528(a1, v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FE8, &qword_27554EAE8);
    sub_275514E10();
    v34 = v53;
    sub_27554D118();
    v67[0] = *(a1 + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
    sub_27554D0E8();
    if (v66)
    {
      v35 = 1;
    }

    else
    {
      v67[0] = *(a1 + 64);
      sub_27554D0E8();
      v35 = v66;
    }

    KeyPath = swift_getKeyPath();
    v37 = swift_allocObject();
    *(v37 + 16) = v35;
    v38 = v54;
    (*(v55 + 32))(v54, v34, v56);
    v39 = (v38 + *(v28 + 36));
    *v39 = KeyPath;
    v39[1] = sub_275514F98;
    v39[2] = v37;
    sub_2755151DC(v38, v13, &qword_2809F4FB0, &qword_27554EAB8);
    v26 = 0;
  }

  (*(v61 + 56))(v13, v26, 1, v28, v29);
  v40 = v62;
  v41 = *(v62 + 16);
  v42 = v58;
  v41(v58, v64, v20);
  v43 = v60;
  v44 = v57;
  sub_275514D40(v60, v57, &qword_2809F4FC0, &qword_27554EAC8);
  v45 = v59;
  sub_275514D40(v13, v59, &qword_2809F4FB8, &qword_27554EAC0);
  v46 = v13;
  v47 = v44;
  v48 = v45;
  v49 = v63;
  v41(v63, v42, v20);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FE0, &qword_27554EAE0);
  sub_275514D40(v47, &v49[*(v50 + 48)], &qword_2809F4FC0, &qword_27554EAC8);
  sub_275514D40(v48, &v49[*(v50 + 64)], &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v46, &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v43, &qword_2809F4FC0, &qword_27554EAC8);
  v51 = *(v40 + 8);
  v51(v64, v20);
  sub_275514DA8(v48, &qword_2809F4FB8, &qword_27554EAC0);
  sub_275514DA8(v47, &qword_2809F4FC0, &qword_27554EAC8);
  return (v51)(v42, v20);
}

void *sub_2755103B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC28();
  v10 = 0;
  sub_275510490(a1, __src);
  memcpy(__dst, __src, 0x1F9uLL);
  memcpy(v12, __src, 0x1F9uLL);
  sub_275514D40(__dst, v7, &qword_2809F50A0, &qword_27554EBB0);
  sub_275514DA8(v12, &qword_2809F50A0, &qword_27554EBB0);
  memcpy(&v9[7], __dst, 0x1F9uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0x4030000000000000;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0x200uLL);
}

uint64_t sub_275510490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_27554D218();
  v79 = v4;
  v80 = v3;
  sub_275510C90(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v93, __src, 0x130uLL);
  sub_275514D40(__dst, v84, &qword_2809F50A8, &qword_27554EBB8);
  sub_275514DA8(v93, &qword_2809F50A8, &qword_27554EBB8);
  memcpy(v95, __dst, sizeof(v95));
  v78 = sub_27554CD78();
  sub_27554C8A8();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  LOBYTE(__src[0]) = 0;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v69 = objc_opt_self();
  v13 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000011, 0x8000000275551940);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v14 = sub_27554C588();
  v16 = v15;

  __src[0] = v14;
  __src[1] = v16;
  sub_275514CC4();
  v17 = sub_27554CED8();
  v19 = v18;
  v21 = v20;
  sub_27554CDA8();
  v22 = sub_27554CEB8();
  v24 = v23;
  v26 = v25;

  sub_275514D18(v17, v19, v21 & 1);

  sub_27554CDC8();
  v76 = sub_27554CE18();
  v77 = v27;
  v81 = v28;
  v63 = v29;
  sub_275514D18(v22, v24, v26 & 1);

  v30 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000016, 0x8000000275551960);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v31 = sub_27554C588();
  v33 = v32;

  __src[0] = v31;
  __src[1] = v33;
  v34 = sub_27554CED8();
  v73 = v35;
  v74 = v34;
  v61 = v36;
  v75 = v37;
  v38 = *(a1 + 8);
  __src[0] = *a1;
  __src[1] = v38;

  v39 = sub_27554CED8();
  v41 = v40;
  LOBYTE(v31) = v42;
  sub_27554CDB8();
  v43 = sub_27554CEB8();
  v45 = v44;
  LOBYTE(v24) = v46;

  sub_275514D18(v39, v41, v31 & 1);

  sub_27554CDC8();
  v67 = sub_27554CE18();
  v68 = v47;
  v62 = v48;
  v50 = v49;
  sub_275514D18(v43, v45, v24 & 1);

  LOBYTE(v39) = *(a1 + 40);
  v51 = [v69 bundleForClass_];
  __src[0] = 2777980912;
  __src[1] = 0xA400000000000000;
  if (v39)
  {
    MEMORY[0x277C7B050](0xD000000000000010, 0x80000002755519B0);
  }

  else
  {
    MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275551980);
  }

  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v52 = sub_27554C588();
  v54 = v53;

  __src[0] = v52;
  __src[1] = v54;
  v64 = sub_27554CED8();
  v66 = v55;
  v70 = v56;
  v58 = v57;
  KeyPath = swift_getKeyPath();
  v82[0] = v80;
  v82[1] = v79;
  memcpy(&v82[2], v95, 0x130uLL);
  LOBYTE(v82[40]) = v78;
  *(&v82[40] + 1) = *v94;
  HIDWORD(v82[40]) = *&v94[3];
  v82[41] = v6;
  v82[42] = v8;
  v82[43] = v10;
  v82[44] = v12;
  LOBYTE(v82[45]) = 0;
  memcpy(__src, v82, 0x169uLL);
  memcpy(a2, __src, 0x170uLL);
  *(a2 + 368) = v76;
  *(a2 + 376) = v81;
  *(a2 + 384) = v63 & 1;
  *(a2 + 392) = v77;
  *(a2 + 400) = v74;
  *(a2 + 408) = v73;
  *(a2 + 416) = v61 & 1;
  *(a2 + 424) = v75;
  *(a2 + 432) = v67;
  *(a2 + 440) = v62;
  *(a2 + 448) = v50 & 1;
  *(a2 + 456) = v68;
  *(a2 + 464) = v64;
  *(a2 + 472) = v70;
  *(a2 + 480) = v58 & 1;
  *(a2 + 488) = v66;
  *(a2 + 496) = KeyPath;
  *(a2 + 504) = 1;
  sub_275514D40(v82, v84, &qword_2809F50B0, &qword_27554EBC0);
  sub_275514D28(v76, v81, v63 & 1);

  sub_275514D28(v74, v73, v61 & 1);

  sub_275514D28(v67, v62, v50 & 1);

  sub_275514D28(v64, v70, v58 & 1);

  sub_275514D18(v64, v70, v58 & 1);

  sub_275514D18(v67, v62, v50 & 1);

  sub_275514D18(v74, v73, v61 & 1);

  sub_275514D18(v76, v81, v63 & 1);

  v84[0] = v80;
  v84[1] = v79;
  memcpy(v85, v95, 0x130uLL);
  v85[304] = v78;
  *v86 = *v94;
  *&v86[3] = *&v94[3];
  v87 = v6;
  v88 = v8;
  v89 = v10;
  v90 = v12;
  v91 = 0;
  return sub_275514DA8(v84, &qword_2809F50B0, &qword_27554EBC0);
}

uint64_t sub_275510C90@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v57 = a2;
  v3 = sub_27554D0A8();
  v4 = *(v3 - 8);
  v5 = v4[8];
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a1;
  v9 = *(a1 + 32);
  *&v56 = v6;
  *&v55 = v4;
  if (v9)
  {
    v51 = v9;
    sub_27554D088();
    v10 = *MEMORY[0x277CE0FE0];
    v11 = v4[13];
    v53 = (v4 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v54 = v10;
    v11(v8);
    v50 = sub_27554D0B8();

    v12 = v4[1];
    v52 = (v4 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v3);
    sub_27554D218();
    sub_27554C968();
    v13 = v97;
    v14 = v98;
    v15 = v99;
    v16 = v100;
    v17 = v101;
    v18 = v102;
    sub_27554D068();
    v19 = sub_27554D058();

    LOBYTE(v106) = v14;
    *&v59 = v50;
    *(&v59 + 1) = v13;
    LOBYTE(v60) = v14;
    *(&v60 + 1) = v87;
    DWORD1(v60) = *(&v87 + 3);
    *(&v60 + 1) = v15;
    LOBYTE(v61) = v16;
    *(&v61 + 1) = v79;
    DWORD1(v61) = *(&v79 + 3);
    *(&v61 + 1) = v17;
    *&v62 = v18;
    *(&v62 + 1) = v19;
    v63 = xmmword_27554E840;
    *&v64 = 0x4010000000000000;
    v80[1] = v61;
    v80[2] = v62;
    v80[3] = xmmword_27554E840;
    *&v81 = 0x4010000000000000;
    v79 = v59;
    v80[0] = v60;
    LOBYTE(v77[0]) = 0;
    LOBYTE(v82[1]) = 0;
    sub_275514D40(&v59, &v87, &qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_2755152F8();
    sub_27554CC68();

    sub_275514DA8(&v59, &qword_2809F50B8, &unk_275551670);
    v110 = v88[3];
    v111 = *v89;
    v112 = *&v89[16];
    v113 = v89[32];
    v106 = v87;
    v107 = v88[0];
    v108 = v88[1];
    v109 = v88[2];
  }

  else
  {
    sub_27554D098();
    v20 = *MEMORY[0x277CE0FE0];
    v21 = v4[13];
    v53 = (v4 + 13) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v54 = v20;
    v21(v8);
    v51 = sub_27554D0B8();

    v22 = v4[1];
    v52 = (v4 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v22(v8, v3);
    sub_27554D218();
    sub_27554C968();
    v23 = v98;
    v24 = v99;
    v25 = v100;
    v49 = v101;
    v50 = v97;
    v48 = v102;
    v26 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    LOBYTE(v87) = v23;
    LOBYTE(v79) = v25;
    v28 = sub_27554CD68();
    sub_27554D068();
    v29 = sub_27554D058();

    LOBYTE(v79) = 1;
    *&v87 = v51;
    *(&v87 + 1) = v50;
    LOBYTE(v88[0]) = v23;
    *(&v88[0] + 1) = v24;
    LOBYTE(v88[1]) = v25;
    *(&v88[1] + 1) = v49;
    *&v88[2] = v48;
    *(&v88[2] + 1) = KeyPath;
    *&v88[3] = v26;
    BYTE8(v88[3]) = v28;
    *(&v88[3] + 9) = 256;
    *&v89[8] = xmmword_27554E840;
    *v89 = v29;
    *&v89[24] = 0x4010000000000000;
    v89[32] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50B8, &unk_275551670);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F50C0, &unk_27554EC00);
    sub_27551524C();
    sub_2755152F8();
    sub_27554CC68();
  }

  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  v32 = v55;
  v33 = v56;
  (*(v55 + 104))(v8, v54, v56);
  v34 = sub_27554D0B8();

  (*(v32 + 8))(v8, v33);
  sub_27554D218();
  sub_27554C968();
  LOBYTE(v59) = 1;
  *&v76[6] = v103;
  *&v76[22] = v104;
  *&v76[38] = v105;
  v35 = v58;
  v87 = v58[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v36 = v79;
  sub_27554D268();
  v38 = v37;
  v40 = v39;
  sub_27554D068();
  v41 = sub_27554D058();

  v42 = swift_allocObject();
  v43 = v35[5];
  v42[5] = v35[4];
  v42[6] = v43;
  v42[7] = v35[6];
  *(v42 + 121) = *(v35 + 105);
  v44 = v35[1];
  v42[1] = *v35;
  v42[2] = v44;
  v45 = v35[3];
  v42[3] = v35[2];
  v42[4] = v45;
  v72 = v110;
  v73 = v111;
  v74 = v112;
  v75 = v113;
  v68 = v106;
  v69 = v107;
  v70 = v108;
  v71 = v109;
  v77[0] = v106;
  v77[1] = v107;
  v77[2] = v108;
  v77[3] = v109;
  v78 = v113;
  v77[5] = v111;
  v77[6] = v112;
  v77[4] = v110;
  v67[0] = v106;
  v67[1] = v107;
  LOBYTE(v67[7]) = v113;
  v67[5] = v111;
  v67[6] = v112;
  v67[2] = v108;
  v67[3] = v109;
  v67[4] = v110;
  v79 = v34;
  LOWORD(v80[0]) = 1;
  *&v80[3] = *&v76[46];
  *(&v80[2] + 2) = *&v76[32];
  *(&v80[1] + 2) = *&v76[16];
  *(v80 + 2) = *v76;
  *(&v80[3] + 1) = v36;
  *&v81 = v36;
  *(&v81 + 1) = v38;
  *&v82[0] = v40;
  v56 = xmmword_27554E850;
  *(v82 + 8) = xmmword_27554E850;
  *(&v82[1] + 1) = v41;
  v55 = xmmword_27554E840;
  v82[2] = xmmword_27554E840;
  *&v83 = 0x4010000000000000;
  *(&v83 + 1) = sub_2755155CC;
  v84 = v42;
  v86 = 0;
  v85 = 0;
  *(&v67[16] + 8) = v83;
  *(&v67[17] + 8) = v42;
  *(&v67[14] + 8) = v82[1];
  *(&v67[13] + 8) = v82[0];
  *(&v67[12] + 8) = v81;
  *(&v67[11] + 8) = v80[3];
  *(&v67[10] + 8) = v80[2];
  *(&v67[9] + 8) = v80[1];
  *(&v67[8] + 8) = v80[0];
  *(&v67[7] + 8) = v34;
  *(&v67[18] + 1) = 0;
  *(&v67[15] + 8) = xmmword_27554E840;
  memcpy(v57, v67, 0x130uLL);
  *(v88 + 2) = *v76;
  v87 = v34;
  LOWORD(v88[0]) = 1;
  *(&v88[1] + 2) = *&v76[16];
  *(&v88[2] + 2) = *&v76[32];
  *&v88[3] = *&v76[46];
  *(&v88[3] + 1) = v36;
  *v89 = v36;
  *&v89[8] = v38;
  *&v89[16] = v40;
  *&v89[24] = v56;
  v90 = v41;
  v91 = v55;
  v92 = 0x4010000000000000;
  v93 = sub_2755155CC;
  v96 = 0;
  v94 = v42;
  v95 = 0;
  sub_275514528(v35, &v59);
  sub_275514D40(v77, &v59, &qword_2809F5150, &unk_2755516B0);
  sub_275514D40(&v79, &v59, &qword_2809F5158, &unk_27554EC50);
  sub_275514DA8(&v87, &qword_2809F5158, &unk_27554EC50);
  v63 = v72;
  v64 = v73;
  v65 = v74;
  v66 = v75;
  v59 = v68;
  v60 = v69;
  v61 = v70;
  v62 = v71;
  return sub_275514DA8(&v59, &qword_2809F5150, &unk_2755516B0);
}

uint64_t sub_275511594(_OWORD *a1)
{
  v2 = sub_27554D278();
  v30 = *(v2 - 8);
  v3 = *(v30 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_27554D2A8();
  v28 = *(v29 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v29);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_27554D2C8();
  v27 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - v15;
  sub_2755155D4();
  v25 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v26 = *(v10 + 8);
  v26(v14, v9);
  v17 = swift_allocObject();
  v18 = a1[5];
  v17[5] = a1[4];
  v17[6] = v18;
  v17[7] = a1[6];
  *(v17 + 121) = *(a1 + 105);
  v19 = a1[1];
  v17[1] = *a1;
  v17[2] = v19;
  v20 = a1[3];
  v17[3] = a1[2];
  v17[4] = v20;
  aBlock[4] = sub_275515688;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor;
  v21 = _Block_copy(aBlock);
  sub_275514528(a1, v31);

  sub_27554D298();
  v31[0] = MEMORY[0x277D84F90];
  sub_2755156A8(&qword_2809F60D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0);
  sub_27554D538();
  v22 = v25;
  MEMORY[0x277C7B120](v16, v8, v5, v21);
  _Block_release(v21);

  (*(v30 + 8))(v5, v2);
  (*(v28 + 8))(v8, v29);
  return (v26)(v16, v27);
}

uint64_t sub_2755119C8()
{
  sub_27554D238();
  sub_27554C9D8();
}

double sub_275511A50@<D0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v41 = sub_27554CD28();
  v40 = *(v41 - 8);
  v2 = *(v40 + 64);
  MEMORY[0x28223BE20](v41);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5030, &qword_27554EB70);
  v5 = *(v36 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5038, &qword_27554EB78);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5040, &qword_27554EB80);
  v38 = *(v39 - 8);
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v39);
  v37 = &v35 - v14;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5048, &qword_27554EB88);
  v15 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v17 = &v35 - v16;
  v18 = swift_allocObject();
  v19 = v1[5];
  v18[5] = v1[4];
  v18[6] = v19;
  v18[7] = v1[6];
  *(v18 + 121) = *(v1 + 105);
  v20 = v1[1];
  v18[1] = *v1;
  v18[2] = v20;
  v21 = v1[3];
  v18[3] = v1[2];
  v18[4] = v21;
  v43 = v1;
  sub_275514528(v1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5050, &qword_27554EB90);
  sub_275514FD0();
  sub_27554D118();
  v45[0] = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  v22 = 1;
  if ((v44 & 1) == 0)
  {
    v45[0] = v1[4];
    sub_27554D0E8();
    v22 = v44;
  }

  KeyPath = swift_getKeyPath();
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  (*(v5 + 32))(v12, v8, v36);
  v25 = &v12[*(v9 + 36)];
  *v25 = KeyPath;
  v25[1] = sub_275515EB8;
  v25[2] = v24;
  sub_27554CD18();
  sub_275515088();
  sub_2755156A8(&qword_2809F5090, MEMORY[0x277CDE400]);
  v26 = v37;
  v27 = v41;
  sub_27554CF18();
  (*(v40 + 8))(v4, v27);
  sub_275514DA8(v12, &qword_2809F5038, &qword_27554EB78);
  v28 = &v17[*(v35 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
  v30 = *MEMORY[0x277CDF420];
  v31 = sub_27554C908();
  (*(*(v31 - 8) + 104))(v28 + v29, v30, v31);
  *v28 = swift_getKeyPath();
  (*(v38 + 32))(v17, v26, v39);
  LOBYTE(v30) = sub_27554CD58();
  v32 = v42;
  sub_27551516C(v17, v42);
  v33 = v32 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4FC0, &qword_27554EAC8) + 36);
  *v33 = v30;
  result = 0.0;
  *(v33 + 8) = 0u;
  *(v33 + 24) = 0u;
  *(v33 + 40) = 1;
  return result;
}

uint64_t sub_275511FF0()
{
  v0 = sub_27554C778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_2809F8DA8);
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_27554C758();
  v7 = sub_27554D428();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_27550C000, v6, v7, "[AccountCreation - All Set] page viewed", v8, 2u);
    MEMORY[0x277C7BAC0](v8, -1, -1);
  }

  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_27551217C(char a1)
{
  v2 = v1;
  v4 = sub_27554C778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = v1[4];
  }

  else
  {
    v9 = v1[3];
  }

  v18 = v9;
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  v18 = v1[5];
  v17 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0F8();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_2809F8DA8);
  (*(v5 + 16))(v8, v10, v4);
  v11 = sub_27554C758();
  v12 = sub_27554D428();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_27550C000, v11, v12, "[AccountCreation - All Set] tapped on Done", v13, 2u);
    MEMORY[0x277C7BAC0](v13, -1, -1);
  }

  (*(v5 + 8))(v8, v4);
  v14 = *(v2 + 3);
  return (*(v2 + 2))(a1 & 1);
}

double sub_2755123A0@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v3 = *(a1 + 32);
  v4 = v3;
  sub_27554D0D8();
  result = v6;
  *a2 = v3;
  a2[1] = v6;
  *(a2 + 2) = v7;
  return result;
}

uint64_t sub_2755123FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC18();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_27551260C(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EF0, &qword_27554E9C0);
  sub_2755147C4();
  sub_27554D198();
  sub_27554CC08();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4ED0, &qword_27554E9B0) + 36);
  (*(v5 + 16))(a2 + v9, v8, v4);
  v10 = *(v5 + 56);
  v10((a2 + v9), 0, 1, v4);
  KeyPath = swift_getKeyPath();
  v12 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EB0, &qword_27554E9A8) + 36));
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4F90, &qword_27554EA10) + 28);
  (*(v5 + 32))(v12 + v13, v8, v4);
  result = v10(v12 + v13, 0, 1, v4);
  *v12 = KeyPath;
  return result;
}

double sub_27551260C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554CC38();
  sub_275512710(a1, v11);
  *&v10[7] = v11[0];
  *&v10[23] = v11[1];
  *&v10[39] = v11[2];
  *&v10[55] = v11[3];
  v5 = sub_27554CDE8();
  KeyPath = swift_getKeyPath();
  v7 = swift_getKeyPath();
  sub_27554D048();
  v8 = sub_27554D138();
  *(a2 + 33) = *&v10[16];
  *(a2 + 49) = *&v10[32];
  *(a2 + 65) = *&v10[48];
  *a2 = v4;
  *(a2 + 8) = 0x4034000000000000;
  *(a2 + 16) = 0;
  *(a2 + 17) = *v10;
  *(a2 + 80) = *&v10[63];
  *(a2 + 88) = KeyPath;
  *(a2 + 96) = v5;
  *(a2 + 104) = v7;
  *(a2 + 112) = 0;
  result = 0.0;
  *(a2 + 120) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0;
  *(a2 + 160) = v8;
  return result;
}

uint64_t sub_275512710@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = *a1;
  v28 = a1[1];
  sub_275514CC4();

  v4 = sub_27554CED8();
  v6 = v5;
  v8 = v7;
  v9 = [objc_opt_self() labelColor];
  sub_27554D018();
  v10 = sub_27554CE98();
  v12 = v11;
  v26 = v13;
  v15 = v14;
  sub_275514D18(v4, v6, v8 & 1);

  v16 = *(a1 + 40);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18 = [objc_opt_self() bundleForClass_];
  if (v16)
  {
    MEMORY[0x277C7B050](0xD000000000000010, 0x80000002755519B0);
  }

  else
  {
    MEMORY[0x277C7B050](0xD000000000000024, 0x8000000275551980);
  }

  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  sub_27554C588();

  v19 = sub_27554CED8();
  v21 = v20;
  v23 = v22 & 1;
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v26 & 1;
  *(a2 + 24) = v15;
  *(a2 + 32) = v19;
  *(a2 + 40) = v20;
  *(a2 + 48) = v22 & 1;
  *(a2 + 56) = v24;
  sub_275514D28(v10, v12, v26 & 1);

  sub_275514D28(v19, v21, v23);

  sub_275514D18(v19, v21, v23);

  sub_275514D18(v10, v12, v26 & 1);
}

__n128 sub_2755129FC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v8 = sub_27554D218();
  v10 = v9;
  sub_275512C90(a1, &v49);
  v40 = v51;
  v41 = v52;
  v42 = v53;
  v43 = v54;
  v38 = v49;
  v39 = v50;
  v45 = v54;
  v44[2] = v51;
  v44[3] = v52;
  v44[4] = v53;
  v44[0] = v49;
  v44[1] = v50;
  sub_275514D40(&v38, v46, &qword_2809F5180, &qword_27554ED00);
  sub_275514DA8(v44, &qword_2809F5180, &qword_27554ED00);
  v64 = v40;
  v65 = v41;
  v66 = v42;
  v67 = v43;
  v62 = v38;
  v63 = v39;
  v11 = sub_27554D208();
  v13 = v12;
  sub_2755130CC(a1, a2, &v26, a4);
  v46[8] = v34;
  v46[9] = v35;
  v46[4] = v30;
  v46[5] = v31;
  v46[6] = v32;
  v46[7] = v33;
  v46[0] = v26;
  v46[1] = v27;
  v46[2] = v28;
  v46[3] = v29;
  *&v37[119] = v33;
  *&v37[55] = v29;
  *&v37[135] = v34;
  *&v37[151] = v35;
  *&v37[71] = v30;
  *&v37[87] = v31;
  *&v37[103] = v32;
  *&v37[7] = v26;
  *&v37[23] = v27;
  *&v47 = v36;
  *(&v47 + 1) = v11;
  *&v37[39] = v28;
  *&v37[167] = v47;
  v57 = v34;
  v58 = v35;
  v53 = v30;
  v54 = v31;
  v56 = v33;
  v55 = v32;
  v48 = v13;
  *&v37[183] = v13;
  v49 = v26;
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v59 = v36;
  v60 = v11;
  v61 = v13;
  sub_275514D40(v46, &v25, &qword_2809F5188, &qword_27554ED08);
  sub_275514DA8(&v49, &qword_2809F5188, &qword_27554ED08);
  *a3 = v8;
  *(a3 + 8) = v10;
  v14 = v65;
  *(a3 + 48) = v64;
  *(a3 + 64) = v14;
  *(a3 + 80) = v66;
  *(a3 + 96) = v67;
  v15 = v63;
  *(a3 + 16) = v62;
  *(a3 + 32) = v15;
  v16 = *v37;
  v17 = *&v37[16];
  v18 = *&v37[32];
  *(a3 + 145) = *&v37[48];
  *(a3 + 129) = v18;
  *(a3 + 113) = v17;
  *(a3 + 97) = v16;
  v19 = *&v37[64];
  v20 = *&v37[80];
  v21 = *&v37[96];
  *(a3 + 209) = *&v37[112];
  *(a3 + 193) = v21;
  *(a3 + 177) = v20;
  *(a3 + 161) = v19;
  result = *&v37[128];
  v23 = *&v37[144];
  v24 = *&v37[160];
  *(a3 + 272) = *&v37[175];
  *(a3 + 257) = v24;
  *(a3 + 241) = v23;
  *(a3 + 225) = result;
  return result;
}

double sub_275512C90@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_27554D0A8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v21[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_27554D088();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v10 = sub_27554D0B8();

    (*(v5 + 8))(v8, v4);
    sub_27554D068();
    v11 = sub_27554D058();

    LOBYTE(v26) = 1;
    v21[0] = v10;
    v21[1] = 0;
    LOWORD(v22) = 1;
    *(&v22 + 2) = v31;
    WORD3(v22) = WORD2(v31);
    *(&v22 + 1) = v11;
    v23 = xmmword_27554E840;
    v24 = 0x4010000000000000;
    v31 = v10;
    v32 = v22;
    v33 = xmmword_27554E840;
    *&v34 = 0x4010000000000000;
    v25 = 0;
    v36 = 0;
    sub_275514D40(v21, &v26, &qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515954();
    sub_275515A70();
    sub_27554CC68();

    sub_275514DA8(v21, &qword_2809F5190, &qword_27554ED10);
    v33 = v28;
    v34 = *v29;
    v35 = *&v29[16];
    v36 = v30;
    v31 = v26;
    v32 = v27;
  }

  else
  {
    sub_27554D098();
    (*(v5 + 104))(v8, *MEMORY[0x277CE0FE0], v4);
    v12 = sub_27554D0B8();

    (*(v5 + 8))(v8, v4);
    v13 = sub_27554D078();
    KeyPath = swift_getKeyPath();
    v15 = sub_27554CD68();
    LOBYTE(v31) = 1;
    sub_27554D068();
    v16 = sub_27554D058();

    LOBYTE(v21[0]) = 1;
    v26 = v12;
    LOWORD(v27) = 1;
    *(&v27 + 1) = KeyPath;
    *&v28 = v13;
    BYTE8(v28) = v15;
    *(&v28 + 9) = 256;
    *v29 = v16;
    *&v29[8] = xmmword_27554E840;
    *&v29[24] = 0x4010000000000000;
    v30 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5190, &qword_27554ED10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515954();
    sub_275515A70();
    sub_27554CC68();
  }

  v17 = v34;
  *(a2 + 32) = v33;
  *(a2 + 48) = v17;
  *(a2 + 64) = v35;
  *(a2 + 80) = v36;
  result = *&v31;
  v19 = v32;
  *a2 = v31;
  *(a2 + 16) = v19;
  return result;
}

id sub_2755130CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v25[0] = a1;
  v7 = sub_27554D0A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_27554D0C8();
  (*(v8 + 104))(v11, *MEMORY[0x277CE0FE0], v7);
  v14 = sub_27554D0B8();

  (*(v8 + 8))(v11, v7);
  sub_27554D218();
  sub_27554C968();
  v27 = 1;
  *&v26[6] = v28;
  *&v26[22] = v29;
  *&v26[38] = v30;
  *&v25[2] = a4;
  v25[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  sub_27554D0E8();
  v15 = v25[1];
  sub_27554D268();
  v17 = v16;
  v19 = v18;
  sub_27554D068();
  v20 = sub_27554D058();

  v21 = swift_allocObject();
  *(v21 + 24) = a4;
  v22 = *&v26[16];
  *(a3 + 18) = *v26;
  *(v21 + 16) = v25[0];
  *(v21 + 32) = a2;
  *a3 = v14;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 34) = v22;
  *(a3 + 50) = *&v26[32];
  *(a3 + 64) = *&v26[46];
  *(a3 + 72) = v15;
  *(a3 + 80) = v15;
  *(a3 + 88) = v17;
  *(a3 + 96) = v19;
  *(a3 + 104) = v20;
  *(a3 + 112) = xmmword_27554E840;
  *(a3 + 128) = 0x4010000000000000;
  *(a3 + 136) = sub_27551588C;
  *(a3 + 144) = v21;
  *(a3 + 152) = 0;
  *(a3 + 160) = 0;

  v23 = v25[0];

  return v23;
}

uint64_t sub_2755133A0(void *a1, uint64_t a2, double a3)
{
  v6 = sub_27554D278();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  (MEMORY[0x28223BE20])();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27554D2A8();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  (MEMORY[0x28223BE20])();
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_27554D2C8();
  v29 = v14;
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = (MEMORY[0x28223BE20])();
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v27 - v20;
  sub_2755155D4();
  v27 = sub_27554D4A8();
  sub_27554D2B8();
  sub_27554D2D8();
  v28 = *(v15 + 8);
  v28(v19, v14);
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a3;
  *(v22 + 32) = a2;
  aBlock[4] = sub_2755158DC;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_65;
  v23 = _Block_copy(aBlock);

  v24 = a1;

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2755156A8(&qword_2809F60D0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0);
  sub_27554D538();
  v25 = v27;
  MEMORY[0x277C7B120](v21, v13, v9, v23);
  _Block_release(v23);

  (*(v32 + 8))(v9, v6);
  (*(v30 + 8))(v13, v31);
  return (v28)(v21, v29);
}

uint64_t sub_27551378C()
{
  sub_27554D238();
  sub_27554C9D8();
}

uint64_t sub_275513860()
{
  v6 = v0[4];
  v7 = v0[5];
  *v8 = v0[6];
  *&v8[9] = *(v0 + 105);
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4E18, &qword_27554E940);
  sub_275513904();
  return sub_27554CA08();
}

unint64_t sub_275513904()
{
  result = qword_2809F4E20;
  if (!qword_2809F4E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E18, &qword_27554E940);
    sub_2755139D8();
    sub_275513AD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E20);
  }

  return result;
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

unint64_t sub_2755139D8()
{
  result = qword_2809F4E28;
  if (!qword_2809F4E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E30, &qword_27554E948);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E38, &qword_27554E950);
    sub_275515E2C(&qword_2809F4E40, &qword_2809F4E38, &qword_27554E950);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E28);
  }

  return result;
}

unint64_t sub_275513AD4()
{
  result = qword_2809F4E48;
  if (!qword_2809F4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E50, &qword_27554E958);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E58, &qword_27554E960);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E60, &qword_27554E968);
    sub_275513BE0();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E48);
  }

  return result;
}

unint64_t sub_275513BE0()
{
  result = qword_2809F4E68;
  if (!qword_2809F4E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4E60, &qword_27554E968);
    sub_275515E2C(&qword_2809F4E70, &qword_2809F4E78, &qword_27554E970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4E68);
  }

  return result;
}

__n128 sub_275513C98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5068, &qword_27554EB98);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v13 - v6;
  *v7 = sub_27554CBE8();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5098, &qword_27554EBA8);
  sub_275513DF8(a1, &v7[*(v8 + 44)]);
  sub_27554D218();
  sub_27554CA48();
  sub_2755151DC(v7, a2, &qword_2809F5068, &qword_27554EB98);
  v9 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5050, &qword_27554EB90) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_275513DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5028, &qword_27554EB38);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v34 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = v34 - v10;
  v36 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v35 == 1)
  {
    sub_27554C958();
    v12 = &v11[*(v8 + 36)];
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v14 = *MEMORY[0x277CDF440];
    v15 = sub_27554C908();
    (*(*(v15 - 8) + 104))(v12 + v13, v14, v15);
    *v12 = swift_getKeyPath();
    sub_275514D40(v11, v7, &qword_2809F5000, &unk_27554EAF0);
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    sub_27554CC68();
    return sub_275514DA8(v11, &qword_2809F5000, &unk_27554EAF0);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v18 = [objc_opt_self() bundleForClass_];
    *&v36 = 2777980912;
    *(&v36 + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](1162760004, 0xE400000000000000);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v19 = sub_27554C588();
    v34[2] = a2;
    v21 = v20;

    *&v36 = v19;
    *(&v36 + 1) = v21;
    sub_275514CC4();
    v22 = sub_27554CED8();
    v24 = v23;
    LOBYTE(v19) = v25;
    sub_27554CDD8();
    v26 = sub_27554CE18();
    v34[1] = v8;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    sub_275514D18(v22, v24, v19 & 1);

    *v7 = v27;
    *(v7 + 1) = v29;
    v7[16] = v31 & 1;
    *(v7 + 3) = v33;
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    return sub_27554CC68();
  }
}

uint64_t sub_275514188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5028, &qword_27554EB38);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23[-v8];
  v24 = *(a1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4EA8, &qword_27554E9A0);
  sub_27554D0E8();
  if (v23[15] == 1)
  {
    sub_27554C958();
    v10 = &v9[*(v6 + 36)];
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v12 = *MEMORY[0x277CDF440];
    v13 = sub_27554C908();
    (*(*(v13 - 8) + 104))(v10 + v11, v12, v13);
    *v10 = swift_getKeyPath();
    sub_275514D40(v9, v5, &qword_2809F5000, &unk_27554EAF0);
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    sub_27554CC68();
    return sub_275514DA8(v9, &qword_2809F5000, &unk_27554EAF0);
  }

  else
  {
    _s18CurrentBundleClassCMa();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    *&v24 = 2777980912;
    *(&v24 + 1) = 0xA400000000000000;
    MEMORY[0x277C7B050](0x4D5F54524F504D49, 0xEB000000004C4941);
    MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
    v17 = sub_27554C588();
    v19 = v18;

    *&v24 = v17;
    *(&v24 + 1) = v19;
    sub_275514CC4();
    *v5 = sub_27554CED8();
    *(v5 + 1) = v20;
    v5[16] = v21 & 1;
    *(v5 + 3) = v22;
    swift_storeEnumTagMultiPayload();
    sub_275514E9C();
    return sub_27554CC68();
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_275514570()
{
  result = qword_2809F4EB8;
  if (!qword_2809F4EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EB8);
  }

  return result;
}

unint64_t sub_2755145C4()
{
  result = qword_2809F4EC0;
  if (!qword_2809F4EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EB0, &qword_27554E9A8);
    sub_27551467C();
    sub_275515E2C(&qword_2809F4F88, &qword_2809F4F90, &qword_27554EA10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EC0);
  }

  return result;
}

unint64_t sub_27551467C()
{
  result = qword_2809F4EC8;
  if (!qword_2809F4EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4ED0, &qword_27554E9B0);
    sub_275514734();
    sub_275515E2C(&qword_2809F4F78, &qword_2809F4F80, &qword_27554EA08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EC8);
  }

  return result;
}

unint64_t sub_275514734()
{
  result = qword_2809F4ED8;
  if (!qword_2809F4ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EE0, &qword_27554E9B8);
    sub_2755147C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4ED8);
  }

  return result;
}

unint64_t sub_2755147C4()
{
  result = qword_2809F4EE8;
  if (!qword_2809F4EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4EF0, &qword_27554E9C0);
    sub_27551487C();
    sub_275515E2C(&qword_2809F4F68, &qword_2809F4F70, &qword_27554EA00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EE8);
  }

  return result;
}

unint64_t sub_27551487C()
{
  result = qword_2809F4EF8;
  if (!qword_2809F4EF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F00, &qword_27554E9C8);
    sub_275514934();
    sub_275515E2C(&qword_2809F4F58, &qword_2809F4F60, &qword_275550FD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4EF8);
  }

  return result;
}

unint64_t sub_275514934()
{
  result = qword_2809F4F08;
  if (!qword_2809F4F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F10, &qword_27554E9D0);
    sub_2755149EC();
    sub_275515E2C(&qword_2809F4F48, &qword_2809F4F50, &unk_27554E9F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4F08);
  }

  return result;
}

unint64_t sub_2755149EC()
{
  result = qword_2809F4F18;
  if (!qword_2809F4F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4F20, &qword_27554E9D8);
    sub_275515E2C(&qword_2809F4F28, &qword_2809F4F30, &qword_27554E9E0);
    sub_275515E2C(&qword_2809F4F38, &qword_2809F4F40, &qword_27554E9E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4F18);
  }

  return result;
}

uint64_t sub_275514B1C(uint64_t a1)
{
  v2 = sub_27554C908();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x277C7A720](v5);
}

uint64_t sub_275514C08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4F98, &qword_27554EA48);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v7 - v4;
  sub_275514D40(a1, &v7 - v4, &qword_2809F4F98, &qword_27554EA48);
  return MEMORY[0x277C7A780](v5);
}

unint64_t sub_275514CC4()
{
  result = qword_2809F4FA0;
  if (!qword_2809F4FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FA0);
  }

  return result;
}

uint64_t sub_275514D18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_275514D28(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_275514D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_275514DA8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_275514E10()
{
  result = qword_2809F4FF0;
  if (!qword_2809F4FF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F4FE8, &qword_27554EAE8);
    sub_275514E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FF0);
  }

  return result;
}

unint64_t sub_275514E9C()
{
  result = qword_2809F4FF8;
  if (!qword_2809F4FF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5000, &unk_27554EAF0);
    sub_275515E2C(&qword_2809F5008, &qword_2809F5010, &qword_275551190);
    sub_275515E2C(&qword_2809F5018, &qword_2809F5020, &qword_27554EB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F4FF8);
  }

  return result;
}

unint64_t sub_275514FD0()
{
  result = qword_2809F5058;
  if (!qword_2809F5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5050, &qword_27554EB90);
    sub_275515E2C(&qword_2809F5060, &qword_2809F5068, &qword_27554EB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5058);
  }

  return result;
}

unint64_t sub_275515088()
{
  result = qword_2809F5070;
  if (!qword_2809F5070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5038, &qword_27554EB78);
    sub_275515E2C(&qword_2809F5078, &qword_2809F5030, &qword_27554EB70);
    sub_275515E2C(&qword_2809F5080, &qword_2809F5088, &qword_27554EBA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5070);
  }

  return result;
}

uint64_t sub_27551516C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5048, &qword_27554EB88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2755151DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_27551524C()
{
  result = qword_2809F50C8;
  if (!qword_2809F50C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50B8, &unk_275551670);
    sub_275515A00(&qword_2809F50D0, &qword_2809F50D8, &unk_275551680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50C8);
  }

  return result;
}

unint64_t sub_2755152F8()
{
  result = qword_2809F50E0;
  if (!qword_2809F50E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50C0, &unk_27554EC00);
    sub_275515384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50E0);
  }

  return result;
}

unint64_t sub_275515384()
{
  result = qword_2809F50E8;
  if (!qword_2809F50E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F50F0, &unk_27554EC10);
    sub_27551543C();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50E8);
  }

  return result;
}

unint64_t sub_27551543C()
{
  result = qword_2809F50F8;
  if (!qword_2809F50F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5100, &unk_275551690);
    sub_2755154F4();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F50F8);
  }

  return result;
}

unint64_t sub_2755154F4()
{
  result = qword_2809F5108;
  if (!qword_2809F5108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5110, &unk_27554EC20);
    sub_275515A00(&qword_2809F50D0, &qword_2809F50D8, &unk_275551680);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5108);
  }

  return result;
}

unint64_t sub_2755155D4()
{
  result = qword_2809F5160;
  if (!qword_2809F5160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2809F5160);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = *(v0 + 72);

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  v6 = *(v0 + 120);

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2755156A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2755156F0()
{
  v2 = *(*(v0 + 16) + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_275515768(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2755157C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t objectdestroy_58Tm()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2755158DC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_27551378C();
}

uint64_t sub_2755158EC()
{
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5148, &unk_27554EC40);
  return sub_27554D0F8();
}

unint64_t sub_275515954()
{
  result = qword_2809F51A0;
  if (!qword_2809F51A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5190, &qword_27554ED10);
    sub_275515A00(&qword_2809F51A8, &qword_2809F51B0, &qword_27554ED20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51A0);
  }

  return result;
}

uint64_t sub_275515A00(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_275515A70()
{
  result = qword_2809F51B8;
  if (!qword_2809F51B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5198, &qword_27554ED18);
    sub_275515AFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51B8);
  }

  return result;
}

unint64_t sub_275515AFC()
{
  result = qword_2809F51C0;
  if (!qword_2809F51C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51C8, &qword_27554ED28);
    sub_275515BB4();
    sub_275515E2C(&qword_2809F5138, &qword_2809F5140, &qword_275551660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51C0);
  }

  return result;
}

unint64_t sub_275515BB4()
{
  result = qword_2809F51D0;
  if (!qword_2809F51D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51D8, &qword_27554ED30);
    sub_275515C6C();
    sub_275515E2C(&qword_2809F5128, &qword_2809F5130, &unk_27554EC30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51D0);
  }

  return result;
}

unint64_t sub_275515C6C()
{
  result = qword_2809F51E0;
  if (!qword_2809F51E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51E8, &qword_27554ED38);
    sub_275515A00(&qword_2809F51A8, &qword_2809F51B0, &qword_27554ED20);
    sub_275515E2C(&qword_2809F5118, &qword_2809F5120, &unk_275550C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51E0);
  }

  return result;
}

unint64_t sub_275515D48()
{
  result = qword_2809F51F0;
  if (!qword_2809F51F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F51F8, &qword_27554ED40);
    sub_275515E2C(&qword_2809F5200, &qword_2809F5208, &qword_27554ED48);
    sub_275515E2C(&qword_2809F5210, &qword_2809F5188, &qword_27554ED08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F51F0);
  }

  return result;
}

uint64_t sub_275515E2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_275515ED8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_275515F20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_275515F98@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_27554CD28();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5218, &qword_27554EE08);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21[-v11];
  v13 = *(v1 + 24);
  v14 = *(v1 + 32);
  v22 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5220, &qword_27554EE10);
  sub_275516880();
  sub_27554D118();
  sub_27554CD18();
  sub_275515E2C(&qword_2809F5250, &qword_2809F5218, &qword_27554EE08);
  sub_275516A60();
  sub_27554CF18();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5258, &qword_27554EE30) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
  v17 = *MEMORY[0x277CDF420];
  v18 = sub_27554C908();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  LOBYTE(v17) = sub_27554CD58();
  v19 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5260, &qword_27554EE68) + 36);
  *v19 = v17;
  result = 0.0;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 1;
  return result;
}

uint64_t sub_27551628C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5268, &qword_27554EE70);
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v6 = &v43 - v5;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5270, &qword_27554EE78);
  v7 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v43 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5000, &unk_27554EAF0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5238, &unk_27554EE18);
  v14 = *(*(v44 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v44);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - v18;
  v56 = *a1;
  LOBYTE(v57) = *(a1 + 16);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5278, qword_27554EE80);
  MEMORY[0x277C7AE00](&v47, v20);
  if (v47 == 1)
  {
    sub_27554C958();
    v21 = &v13[*(v10 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5020, &qword_27554EB00) + 28);
    v23 = *MEMORY[0x277CDF440];
    v24 = sub_27554C908();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    sub_27554D218();
    sub_27554CA48();
    sub_2755151DC(v13, v17, &qword_2809F5000, &unk_27554EAF0);
    v25 = &v17[*(v44 + 36)];
    v26 = v61;
    *(v25 + 4) = v60;
    *(v25 + 5) = v26;
    *(v25 + 6) = v62;
    v27 = v57;
    *v25 = v56;
    *(v25 + 1) = v27;
    v28 = v59;
    *(v25 + 2) = v58;
    *(v25 + 3) = v28;
    sub_2755151DC(v17, v19, &qword_2809F5238, &unk_27554EE18);
    sub_275516AC0(v19, v9);
    swift_storeEnumTagMultiPayload();
    sub_275516950();
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    v30 = sub_2755169DC();
    *&v47 = v29;
    *(&v47 + 1) = v30;
    swift_getOpaqueTypeConformance2();
    sub_27554CC68();
    return sub_275514DA8(v19, &qword_2809F5238, &unk_27554EE18);
  }

  else
  {
    v32 = *(a1 + 6);
    *&v56 = *(a1 + 5);
    *(&v56 + 1) = v32;
    sub_275514CC4();

    v33 = sub_27554CED8();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    sub_27554D218();
    sub_27554CA48();
    v65 = v37 & 1;
    *&v47 = v33;
    *(&v47 + 1) = v35;
    LOBYTE(v48) = v37 & 1;
    *(&v48 + 1) = v39;
    sub_27554CDD8();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5240, &qword_27554EE28);
    v41 = sub_2755169DC();
    sub_27554CF08();
    v62 = v53;
    v63 = v54;
    v64 = v55;
    v58 = v49;
    v59 = v50;
    v60 = v51;
    v61 = v52;
    v56 = v47;
    v57 = v48;
    sub_275514DA8(&v56, &qword_2809F5240, &qword_27554EE28);
    v42 = v46;
    (*(v3 + 16))(v9, v6, v46);
    swift_storeEnumTagMultiPayload();
    sub_275516950();
    *&v47 = v40;
    *(&v47 + 1) = v41;
    swift_getOpaqueTypeConformance2();
    sub_27554CC68();
    return (*(v3 + 8))(v6, v42);
  }
}

double sub_275516834@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_275515F98(a1);
}

unint64_t sub_275516880()
{
  result = qword_2809F5228;
  if (!qword_2809F5228)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5220, &qword_27554EE10);
    sub_275516950();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    sub_2755169DC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5228);
  }

  return result;
}

unint64_t sub_275516950()
{
  result = qword_2809F5230;
  if (!qword_2809F5230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5238, &unk_27554EE18);
    sub_275514E9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5230);
  }

  return result;
}

unint64_t sub_2755169DC()
{
  result = qword_2809F5248;
  if (!qword_2809F5248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5240, &qword_27554EE28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5248);
  }

  return result;
}

unint64_t sub_275516A60()
{
  result = qword_2809F5090;
  if (!qword_2809F5090)
  {
    sub_27554CD28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5090);
  }

  return result;
}

uint64_t sub_275516AC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5238, &unk_27554EE18);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_275516B34()
{
  result = qword_2809F5280;
  if (!qword_2809F5280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5260, &qword_27554EE68);
    sub_275516BC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5280);
  }

  return result;
}

unint64_t sub_275516BC0()
{
  result = qword_2809F5288;
  if (!qword_2809F5288)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5258, &qword_27554EE30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5218, &qword_27554EE08);
    sub_27554CD28();
    sub_275515E2C(&qword_2809F5250, &qword_2809F5218, &qword_27554EE08);
    sub_275516A60();
    swift_getOpaqueTypeConformance2();
    sub_275515E2C(&qword_2809F5018, &qword_2809F5020, &qword_27554EB00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5288);
  }

  return result;
}

uint64_t sub_275516D08()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_275516D7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_275516E64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailCreateAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailCreateAPIRequest()
{
  result = qword_2809F5290;
  if (!qword_2809F5290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_275516EE8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F52C8, &qword_27554F0C8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551771C();
  sub_27554D728();
  v16 = 0;
  sub_27554D658();
  if (!v5)
  {
    v15 = 1;
    sub_27554D658();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2755170AC()
{
  v1 = *v0;
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](v1);
  return sub_27554D708();
}

uint64_t sub_275517120()
{
  v1 = *v0;
  sub_27554D6E8();
  MEMORY[0x277C7B3B0](v1);
  return sub_27554D708();
}

uint64_t sub_275517164()
{
  if (*v0)
  {
    result = 0x6C69616D65;
  }

  else
  {
    result = 0x496E726574746170;
  }

  *v0;
  return result;
}

uint64_t sub_2755171A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E726574746170 && a2 == 0xE900000000000064;
  if (v6 || (sub_27554D678() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C69616D65 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27554D678();

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

uint64_t sub_27551728C(uint64_t a1)
{
  v2 = sub_27551771C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2755172C8(uint64_t a1)
{
  v2 = sub_27551771C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_275517324(uint64_t a1)
{
  v2 = sub_275517518();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517360(uint64_t a1)
{
  v2 = sub_275517518();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551739C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F52A0, &unk_27554EF30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275517518();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_27554D628();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

unint64_t sub_275517518()
{
  result = qword_2809F52A8;
  if (!qword_2809F52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52A8);
  }

  return result;
}

uint64_t sub_27551756C(uint64_t a1, int a2)
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

uint64_t sub_2755175B4(uint64_t result, int a2, int a3)
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

unint64_t sub_275517618()
{
  result = qword_2809F52B0;
  if (!qword_2809F52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52B0);
  }

  return result;
}

unint64_t sub_275517670()
{
  result = qword_2809F52B8;
  if (!qword_2809F52B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52B8);
  }

  return result;
}

unint64_t sub_2755176C8()
{
  result = qword_2809F52C0;
  if (!qword_2809F52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52C0);
  }

  return result;
}

unint64_t sub_27551771C()
{
  result = qword_2809F52D0;
  if (!qword_2809F52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EmailCreateAPIRequestBody.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
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

  return (v8 + 1);
}

unint64_t sub_275517828()
{
  result = qword_2809F52D8;
  if (!qword_2809F52D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52D8);
  }

  return result;
}

unint64_t sub_275517880()
{
  result = qword_2809F52E0;
  if (!qword_2809F52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52E0);
  }

  return result;
}

unint64_t sub_2755178D8()
{
  result = qword_2809F52E8;
  if (!qword_2809F52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F52E8);
  }

  return result;
}

uint64_t sub_27551792C()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

id sub_2755179A0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for iCloudMailValidationRulesAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for iCloudMailValidationRulesAPIRequest()
{
  result = qword_2809F52F0;
  if (!qword_2809F52F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_275517A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_275517A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_275517B20()
{
  v1 = *v0;
  v2 = 1701606770;
  v3 = 0x646F43726F727265;
  v4 = 0x73654D726F727265;
  if (v1 != 3)
  {
    v4 = 0x614D646C756F6873;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x74697243656C7572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_275517BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_275517E0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_275517C04(uint64_t a1)
{
  v2 = sub_275518388();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517C40(uint64_t a1)
{
  v2 = sub_275518388();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 sub_275517C7C@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_275517FD0(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_275517CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_275517D68(uint64_t a1)
{
  v2 = sub_2755185C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_275517DA4(uint64_t a1)
{
  v2 = sub_2755185C8();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_275517DE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_275518444(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_275517E0C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701606770 && a2 == 0xE400000000000000;
  if (v3 || (sub_27554D678() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74697243656C7572 && a2 == 0xEC00000061697265 || (sub_27554D678() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (sub_27554D678() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73654D726F727265 && a2 == 0xEC00000065676173 || (sub_27554D678() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D646C756F6873 && a2 == 0xEB00000000686374)
  {

    return 4;
  }

  else
  {
    v6 = sub_27554D678();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_275517FD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5300, &qword_27554F308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_275518388();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v38[0]) = 0;
  v11 = sub_27554D628();
  v32 = v12;
  LOBYTE(v38[0]) = 1;
  v13 = sub_27554D628();
  v31 = v14;
  v28 = v13;
  LOBYTE(v38[0]) = 2;
  v27 = sub_27554D628();
  v30 = v15;
  LOBYTE(v38[0]) = 3;
  v26 = sub_27554D628();
  v29 = v16;
  v41 = 4;
  v17 = sub_27554D638();
  (*(v6 + 8))(v9, v5);
  v40 = v17 & 1;
  v19 = v31;
  v18 = v32;
  *&v33 = v11;
  *(&v33 + 1) = v32;
  v20 = v28;
  *&v34 = v28;
  *(&v34 + 1) = v31;
  v21 = v30;
  *&v35 = v27;
  *(&v35 + 1) = v30;
  v22 = v29;
  *&v36 = v26;
  *(&v36 + 1) = v29;
  v37 = v40;
  sub_2755183DC(&v33, v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v38[0] = v11;
  v38[1] = v18;
  v38[2] = v20;
  v38[3] = v19;
  v38[4] = v27;
  v38[5] = v21;
  v38[6] = v26;
  v38[7] = v22;
  v39 = v40;
  result = sub_275518414(v38);
  v24 = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = v24;
  *(a2 + 64) = v37;
  v25 = v34;
  *a2 = v33;
  *(a2 + 16) = v25;
  return result;
}

unint64_t sub_275518388()
{
  result = qword_2809F5308;
  if (!qword_2809F5308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5308);
  }

  return result;
}

void *sub_275518444(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5310, &qword_27554F310);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2755185C8();
  sub_27554D718();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5320, &qword_27554F318);
    sub_27551861C();
    sub_27554D648();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_2755185C8()
{
  result = qword_2809F5318;
  if (!qword_2809F5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5318);
  }

  return result;
}

unint64_t sub_27551861C()
{
  result = qword_2809F5328;
  if (!qword_2809F5328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5320, &qword_27554F318);
    sub_2755186A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5328);
  }

  return result;
}

unint64_t sub_2755186A0()
{
  result = qword_2809F5330;
  if (!qword_2809F5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ValidationRule.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ValidationRule.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_275518860()
{
  result = qword_2809F5338;
  if (!qword_2809F5338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5338);
  }

  return result;
}

unint64_t sub_2755188B8()
{
  result = qword_2809F5340;
  if (!qword_2809F5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5340);
  }

  return result;
}

unint64_t sub_275518910()
{
  result = qword_2809F5348;
  if (!qword_2809F5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5348);
  }

  return result;
}

unint64_t sub_275518968()
{
  result = qword_2809F5350;
  if (!qword_2809F5350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5350);
  }

  return result;
}

unint64_t sub_2755189C0()
{
  result = qword_2809F5358;
  if (!qword_2809F5358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5358);
  }

  return result;
}

unint64_t sub_275518A18()
{
  result = qword_2809F5360;
  if (!qword_2809F5360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5360);
  }

  return result;
}

uint64_t sub_275518A6C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000024;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD000000000000020;
    }

    if (v3)
    {
      v4 = "gs.Alias.Enabled";
    }

    else
    {
      v4 = "com.apple.gs.icloud.mail.auth";
    }
  }

  else if (a1 == 2)
  {
    v4 = "gs.AutoReply.Enabled";
    v5 = 0xD000000000000024;
  }

  else if (a1 == 3)
  {
    v4 = "gs.MailRules.Enabled";
    v5 = 0xD000000000000029;
  }

  else
  {
    v4 = "gs.MailForwarding.Enabled";
    v5 = 0xD000000000000025;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = "gs.Alias.Enabled";
    }

    else
    {
      v2 = 0xD000000000000020;
      v6 = "com.apple.gs.icloud.mail.auth";
    }
  }

  else if (a2 == 2)
  {
    v6 = "gs.AutoReply.Enabled";
  }

  else if (a2 == 3)
  {
    v6 = "gs.MailRules.Enabled";
    v2 = 0xD000000000000029;
  }

  else
  {
    v6 = "gs.MailForwarding.Enabled";
    v2 = 0xD000000000000025;
  }

  if (v5 == v2 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_27554D678();
  }

  return v7 & 1;
}

uint64_t sub_275518BDC()
{
  v1 = *v0;
  sub_27554D6E8();
  sub_27554D378();

  return sub_27554D708();
}

uint64_t sub_275518CA8()
{
  *v0;
  *v0;
  *v0;
  sub_27554D378();
}

uint64_t sub_275518D60()
{
  v1 = *v0;
  sub_27554D6E8();
  sub_27554D378();

  return sub_27554D708();
}

uint64_t sub_275518E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_275518F84();
  *a2 = result;
  return result;
}

void sub_275518E58(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000024;
  v3 = *v1;
  v4 = "gs.AutoReply.Enabled";
  v5 = "gs.MailRules.Enabled";
  v6 = 0xD000000000000029;
  if (v3 != 3)
  {
    v6 = 0xD000000000000025;
    v5 = "gs.MailForwarding.Enabled";
  }

  if (v3 == 2)
  {
    v6 = 0xD000000000000024;
  }

  else
  {
    v4 = v5;
  }

  if (*v1)
  {
    v7 = "gs.Alias.Enabled";
  }

  else
  {
    v2 = 0xD000000000000020;
    v7 = "com.apple.gs.icloud.mail.auth";
  }

  if (*v1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v2 = v6;
    v8 = v4;
  }

  *a1 = v2;
  a1[1] = v8 | 0x8000000000000000;
}

uint64_t sub_275518EE4()
{
  result = sub_27554D328();
  qword_2809F8D58 = result;
  return result;
}

unint64_t sub_275518F30()
{
  result = qword_2809F5368;
  if (!qword_2809F5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5368);
  }

  return result;
}

uint64_t sub_275518F84()
{
  v0 = sub_27554D618();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_275519048(uint64_t a1)
{
  v2 = *(v1 + qword_2809F5370);
  *(v1 + qword_2809F5370) = a1;
  return MEMORY[0x2821F96F8]();
}

uint64_t sub_27551905C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = qword_2809F5380;
  swift_beginAccess();
  v6 = *((v4 & v3) + 0x50);
  v7 = *((v4 & v3) + 0x58);
  type metadata accessor for MSRequest.RequestBody();
  v8 = sub_27554D508();
  return (*(*(v8 - 8) + 16))(a1, &v1[v5], v8);
}

id sub_275519130()
{
  v1 = *(v0 + qword_2809F5370);
  if (v1)
  {
    v2 = *(v0 + qword_2809F5370);
LABEL_5:
    v7 = v1;
    return v2;
  }

  v3 = objc_opt_self();
  v4 = [v3 defaultStore];
  v5 = *(v0 + qword_2809F5370);
  *(v0 + qword_2809F5370) = v4;

  result = [v3 defaultStore];
  if (result)
  {
    v2 = result;
    v1 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_2755191CC()
{
  v1 = qword_2809F53A0;
  v2 = *(v0 + qword_2809F53A0);
  if (v2)
  {
    v3 = *(v0 + qword_2809F53A0);
  }

  else
  {
    sub_275519828(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_275519238(unsigned __int8 a1)
{
  v1 = 5522759;
  v2 = 5526864;
  if (a1 != 2)
  {
    v2 = 0x4554454C4544;
  }

  if (a1)
  {
    v1 = 1414745936;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_275519298()
{
  v1 = sub_27554C778();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (*((*MEMORY[0x277D85000] & *v0) + 0xF0))(v4);
  v9 = v8;
  v11 = v10;
  v12 = [*(v0 + qword_2809F5378) propertiesForDataclass_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_27554D2F8();

    v31 = v9;
    v32 = v11;

    sub_27554D568();
    if (*(v14 + 16) && (v15 = sub_27552E2F0(v33), (v16 & 1) != 0))
    {
      sub_27551E914(*(v14 + 56) + 32 * v15, v34);
      sub_27551EA74(v33);

      if (swift_dynamicCast())
      {

        return v31;
      }
    }

    else
    {

      sub_27551EA74(v33);
    }
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v1, qword_2809F8DA8);
  (*(v2 + 16))(v6, v18, v1);
  v19 = v7;

  v20 = sub_27554C758();
  v21 = sub_27554D438();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = v1;
    v23 = v2;
    v24 = v22;
    v25 = swift_slowAlloc();
    v33[0] = v25;
    *v24 = 136315394;

    v26 = sub_275545D14(v9, v11, v33);

    *(v24 + 4) = v26;
    *(v24 + 12) = 2080;
    v27 = sub_27554D338();
    v29 = sub_275545D14(v27, v28, v33);

    *(v24 + 14) = v29;
    _os_log_impl(&dword_27550C000, v20, v21, "Account bag has no value for key: %s in %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v25, -1, -1);
    MEMORY[0x277C7BAC0](v24, -1, -1);

    (*(v23 + 8))(v6, v30);
  }

  else
  {

    (*(v2 + 8))(v6, v1);
  }

  return 0;
}

id sub_275519660(void *a1)
{
  v1 = a1;
  sub_275519298();

  v2 = sub_27554D328();

  return v2;
}

uint64_t sub_275519724()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  return type metadata accessor for MSAPIResponse();
}

uint64_t sub_275519730()
{
  swift_getObjCClassMetadata();
  sub_275519724();

  return swift_getObjCClassFromMetadata();
}

void sub_275519828(uint64_t a1)
{
  v2 = sub_275519130();
  v3 = sub_275519130();
  v4 = [v3 aida:*(a1 + qword_2809F5378) accountForiCloudAccount:?];

  v5 = objc_allocWithZone(MEMORY[0x277CEC808]);
  v6 = sub_27554D328();
  v7 = [v5 initWithAccountStore:v2 grandSlamAccount:v4 appTokenID:v6];

  if (!v7)
  {
    __break(1u);
  }
}

id sub_2755198F0(void *a1)
{
  v2 = sub_27554C4D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1;
  sub_2755199E8(v6);

  v8 = sub_27554C498();
  (*(v3 + 8))(v6, v2);

  return v8;
}

void sub_2755199E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = *v1;
  v4 = MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000];
  v6 = sub_27554C778();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v49 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v12 = &v47[-v11];
  v13 = *((v5 & v3) + 0x50);
  v14 = *((v5 & v3) + 0x58);
  v15 = type metadata accessor for MSRequest();
  v56.receiver = v2;
  v56.super_class = v15;
  v16 = objc_msgSendSuper2(&v56, sel_urlRequest);
  if (v16)
  {
    v17 = v16;
    [v16 mutableCopy];

    sub_27554D528();
    swift_unknownObjectRelease();
    sub_27551EA14(0, &qword_2809F5638, 0x277CCAB70);
    v18 = swift_dynamicCast();
    v19 = v52;
    if ((*((*v4 & *v2) + 0x100))(v18))
    {
      v20 = sub_2755191CC();
      [v20 setUseAltDSID_];

      if (([*(v2 + qword_2809F53A0) signURLRequest:v19 isUserInitiated:1] & 1) == 0)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v21 = __swift_project_value_buffer(v6, qword_2809F8DA8);
        (*(v7 + 16))(v12, v21, v6);
        v22 = sub_27554C758();
        v23 = sub_27554D438();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v48 = v6;
          v25 = v24;
          *v24 = 0;
          _os_log_impl(&dword_27550C000, v22, v23, "Unable to sign grandslam request", v24, 2u);
          v26 = v25;
          v6 = v48;
          MEMORY[0x277C7BAC0](v26, -1, -1);
        }

        (*(v7 + 8))(v12, v6);
      }

      v27 = [v19 aa:*(v2 + qword_2809F5378) addBasicAuthorizationHeaderWithAccount:0 preferUsingPassword:?];
    }

    else
    {
      v27 = [v19 aa:*(v2 + qword_2809F5378) addAuthTokenOrBasicAuthHeaderWithAccount:0 preferUsingPassword:?];
    }

    (*((*v4 & *v2) + 0xF8))(v27);
    v28 = sub_27554D328();

    [v19 setHTTPMethod_];

    sub_27551905C(&v52);
    if (v53[24] == 255)
    {
      type metadata accessor for MSRequest.RequestBody();
      v33 = sub_27554D508();
      (*(*(v33 - 8) + 8))(&v52, v33);
    }

    else
    {
      v54 = v52;
      v55[0] = *v53;
      *(v55 + 9) = *&v53[9];
      v29 = type metadata accessor for MSRequest.RequestBody();
      v30 = *(v29 - 8);
      (*(v30 + 16))(&v52, &v54, v29);
      if (v53[24])
      {
        v31 = v52;
        v32 = sub_27554C608();
        [v19 setHTTPBody_];
        sub_27551E6AC(v31, *(&v31 + 1));

        (*(v30 + 8))(&v54, v29);
      }

      else
      {
        sub_27551EA5C(&v52, v51);
        __swift_project_boxed_opaque_existential_1(v51, v51[3]);
        v34 = sub_27551A320();
        v36 = v35;
        v37 = sub_27554C608();
        sub_27551E6AC(v34, v36);
        [v19 setHTTPBody_];

        (*(v30 + 8))(&v54, v29);
        __swift_destroy_boxed_opaque_existential_1(v51);
      }
    }

    v38 = sub_27554D328();
    v39 = sub_27554D328();
    [v19 setValue:v38 forHTTPHeaderField:v39];

    v40 = [objc_allocWithZone(MEMORY[0x277CEC7B8]) init];
    v41 = [v40 udid];

    v42 = sub_27554D328();
    [v19 setValue:v41 forHTTPHeaderField:v42];

    v43 = *(v2 + qword_2809F53A8);
    v44 = *(v2 + qword_2809F53A8 + 8);

    v45 = sub_27554D328();

    v46 = sub_27554D328();
    [v19 setValue:v45 forHTTPHeaderField:v46];

    sub_27554C4A8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_27551A320()
{
  v0 = sub_27554C538();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_27554C528();
  v3 = sub_27554C518();

  return v3;
}

void sub_27551A3B4(void *a1)
{
  v1 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  sub_27551DEC8();
}

uint64_t sub_27551A424(char *a1)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];

  v4 = qword_2809F5380;
  v5 = *((v3 & v2) + 0x50);
  v6 = *((v3 & v2) + 0x58);
  type metadata accessor for MSRequest.RequestBody();
  v7 = sub_27554D508();
  (*(*(v7 - 8) + 8))(&a1[v4], v7);

  v8 = *&a1[qword_2809F53A8 + 8];
}

uint64_t sub_27551A53C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  result = type metadata accessor for MSResult();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_27551A5D0@<X0>(void *a1@<X0>, id a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v101 = a3;
  v91 = sub_27554C5F8();
  v90 = *(v91 - 8);
  v8 = *(v90 + 64);
  v9 = MEMORY[0x28223BE20](v91);
  v94 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v4;
  v102 = v4[10];
  v88 = *(v102 - 8);
  v12 = *(v88 + 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v87 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_27554C778();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v93 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v87 = &v87 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v89 = &v87 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v87 - v24;
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v95 = v14;
  v26 = __swift_project_value_buffer(v15, qword_2809F8DA8);
  v27 = v16[2];
  v97 = v26;
  v98 = v27;
  v99 = v16 + 2;
  (v27)(v25);
  v28 = sub_27554C758();
  v29 = sub_27554D458();
  v30 = os_log_type_enabled(v28, v29);
  v100 = a4;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v92 = v11;
    v33 = v32;
    v103 = v32;
    *v31 = 136315138;
    v34 = sub_27554D758();
    v96 = a2;
    v36 = v15;
    v37 = sub_275545D14(v34, v35, &v103);
    a2 = v96;

    *(v31 + 4) = v37;
    v15 = v36;
    _os_log_impl(&dword_27550C000, v28, v29, "Parsing response %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    v38 = v33;
    a4 = v100;
    v11 = v92;
    MEMORY[0x277C7BAC0](v38, -1, -1);
    MEMORY[0x277C7BAC0](v31, -1, -1);
  }

  v39 = v16[1];
  v39(v25, v15);
  if (!swift_conformsToProtocol2())
  {
    v92 = a1;
    v45 = sub_27554C508();
    v46 = *(v45 + 48);
    v47 = *(v45 + 52);
    swift_allocObject();
    sub_27554C4F8();
    v48 = v11[11];
    v49 = v95;
    v50 = a2;
    v51 = v101;
    sub_27554C4E8();
    v96 = 0;

    v82 = v102;
    v83 = (v100 + *(swift_getTupleTypeMetadata2() + 48));
    (*(v88 + 4))(v100, v49, v82);
    *v83 = v50;
    v83[1] = v51;
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v43 = v50;
    v44 = v51;
    return sub_27551E864(v43, v44);
  }

  if ([a1 statusCode] - 200 <= 0x63)
  {
    v40 = (a4 + *(swift_getTupleTypeMetadata2() + 48));
    swift_dynamicCast();
    v41 = v101;
    *v40 = a2;
    v40[1] = v41;
    v42 = v11[11];
    type metadata accessor for MSResult();
    swift_storeEnumTagMultiPayload();
    v43 = a2;
    v44 = v41;
    return sub_27551E864(v43, v44);
  }

  v88 = v39;
  v95 = v16;
  v52 = v15;
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v54 = [objc_opt_self() bundleForClass_];
  v103 = 2777980912;
  v104 = 0xA400000000000000;
  MEMORY[0x277C7B050](0xD000000000000015, 0x8000000275551BE0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v55 = sub_27554C588();
  v57 = v56;

  sub_27551CB54();
  v58 = swift_allocError();
  *v59 = v55;
  *(v59 + 8) = v57;
  *(v59 + 16) = 0;
  *(v59 + 24) = 1;
  *(v59 + 32) = 0;
  *(v59 + 40) = 1;
  v96 = v58;
  swift_willThrow();
  v60 = [a1 allHeaderFields];
  v61 = sub_27554D2F8();

  sub_27551B640(v61);

  v62 = sub_27554C508();
  v63 = *(v62 + 48);
  v64 = *(v62 + 52);
  swift_allocObject();
  sub_27554C4F8();
  sub_27551E700();
  sub_27554C4E8();

  v66 = v103;
  v65 = v104;
  v67 = v89;
  v68 = v52;
  v98(v89, v97, v52);
  v69 = a1;

  v70 = sub_27554C758();
  v71 = sub_27554D438();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v92 = v11;
    v73 = a4;
    v74 = v72;
    v75 = swift_slowAlloc();
    v103 = v75;
    *v74 = 134218242;
    *(v74 + 4) = [v69 statusCode];

    *(v74 + 12) = 2080;

    v76 = sub_275545D14(v66, v65, &v103);
    *&v101 = v66;
    v77 = v68;
    v78 = v76;

    *(v74 + 14) = v78;
    _os_log_impl(&dword_27550C000, v70, v71, "[%ld] %s", v74, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v75);
    MEMORY[0x277C7BAC0](v75, -1, -1);
    v79 = v74;
    a4 = v73;
    v11 = v92;
    MEMORY[0x277C7BAC0](v79, -1, -1);

    v80 = v67;
    v81 = v77;
    v66 = v101;
  }

  else
  {

    v80 = v67;
    v81 = v68;
  }

  v88(v80, v81);
  v85 = [v69 statusCode];

  *a4 = v66;
  *(a4 + 8) = v65;
  *(a4 + 16) = v85;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = 1;
  v86 = v11[11];
  type metadata accessor for MSResult();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_27551B640(uint64_t a1)
{
  v36 = sub_27554C778();
  v35 = *(v36 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v36);
  v34 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = &unk_27554F960;
  while (1)
  {
    v11 = v8;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    sub_27551E8B8(*(a1 + 48) + 40 * v12, v44);
    sub_27551E914(*(a1 + 56) + 32 * v12, v45);
    sub_27551E8B8(v44, &v37);
    if (swift_dynamicCast())
    {
      v41 = v40;
      sub_27551E914(v45, &v42);
    }

    else
    {
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
    }

    v6 &= v6 - 1;
    sub_275514DA8(v44, &qword_2809F5608, &qword_27554F958);
    if (*(&v41 + 1))
    {
      v37 = v41;
      v38 = v42;
      v39 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_27551D090(0, v9[2] + 1, 1, v9);
      }

      v14 = v9[2];
      v13 = v9[3];
      v15 = v14 + 1;
      if (v14 >= v13 >> 1)
      {
        v33 = v14 + 1;
        v19 = sub_27551D090((v13 > 1), v14 + 1, 1, v9);
        v15 = v33;
        v9 = v19;
      }

      v9[2] = v15;
      v16 = &v9[6 * v14];
      v17 = v37;
      v18 = v39;
      v16[3] = v38;
      v16[4] = v18;
      v16[2] = v17;
    }

    else
    {
      sub_275514DA8(&v41, &qword_2809F5610, &unk_27554F960);
    }
  }

  while (1)
  {
    v8 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_27:
      swift_once();
      goto LABEL_22;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  if (v9[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
    v20 = sub_27554D608();
  }

  else
  {
    v20 = MEMORY[0x277D84F98];
  }

  a1 = v36;
  v7 = v35;
  v10 = v34;
  v44[0] = v20;

  sub_27551D1D8(v21, 1, v44);

  sub_27551D594(v44[0]);

  if (qword_2809F4D80 != -1)
  {
    goto LABEL_27;
  }

LABEL_22:
  v22 = __swift_project_value_buffer(a1, qword_2809F8DA8);
  (*(v7 + 16))(v10, v22, a1);

  v23 = sub_27554C758();
  v24 = sub_27554D438();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v44[0] = v26;
    *v25 = 136380675;
    v27 = sub_27554D308();
    v29 = v28;

    v30 = sub_275545D14(v27, v29, v44);

    *(v25 + 4) = v30;
    _os_log_impl(&dword_27550C000, v23, v24, "Response headers: %{private}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x277C7BAC0](v26, -1, -1);
    MEMORY[0x277C7BAC0](v25, -1, -1);
  }

  else
  {
  }

  return (*(v7 + 8))(v10, a1);
}

uint64_t sub_27551BB48()
{

  v0 = sub_27554D3A8();
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    do
    {
      v6 = sub_27554D3A8();
      if (!v7)
      {

        return 1;
      }

      if (v2 == v6 && v3 == v7)
      {
      }

      else
      {
        v4 = sub_27554D678();

        if ((v4 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v2 = sub_27554D3A8();
      v3 = v5;
    }

    while (v5);
  }

  sub_27554D3A8();
  v9 = v8;

  if (!v9)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_27551BCA4(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v7 = a3;
  v8 = a4;
  v9 = sub_27554C618();
  v11 = v10;

  sub_27551DF28(v7, v9, v11, a5);
  v13 = v12;
  sub_27551E6AC(v9, v11);

  return v13;
}

uint64_t sub_27551BD38(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  v7 = sub_27554C618();
  v9 = v8;

  sub_27551E0F8(v5, v7, v9);
  v11 = v10;
  sub_27551E6AC(v7, v9);

  return v11;
}

uint64_t sub_27551BDB8(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_27554C618();
  v12 = v11;

  v13 = sub_27554D338();
  v15 = v14;

  sub_27551E2BC(v7, v10, v12, v13, v15);
  v17 = v16;

  sub_27551E6AC(v10, v12);

  return v17;
}

uint64_t sub_27551BE74(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = sub_27554D358();
  v7 = v6;
  v8 = *a2;
  v9 = a2[1];
  if (v5 == sub_27554D358() && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_27554D678();
  }

  return v12 & 1;
}

id sub_27551BF7C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_27551BFF4(char *a1)
{
  v2 = *((*MEMORY[0x277D85000] & *a1) + 0x60);
  v3 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v4 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v5 = type metadata accessor for MSResult();
  v6 = *(*(v5 - 8) + 8);

  return v6(&a1[v2], v5);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_27551C0E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_27551C130(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27551C194(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_getTupleTypeMetadata2();
  if (v3 <= 0x3F)
  {
    result = sub_27551C508();
    if (v4 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_27551C220(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 41;
  if (((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16 > 0x29)
  {
    v4 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_27551C344(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v5 <= 0x29)
  {
    v5 = 41;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

ValueMetadata *sub_27551C508()
{
  result = qword_2809F5530[0];
  if (!qword_2809F5530[0])
  {
    result = &type metadata for MSError;
    atomic_store(&type metadata for MSError, qword_2809F5530);
  }

  return result;
}

uint64_t sub_27551C538()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_27551C5A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27551C5E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_27551C630(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_27551C698()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551C70C()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551C7A8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27554D618();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27551C800(uint64_t a1)
{
  v2 = sub_27551E658();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551C83C(uint64_t a1)
{
  v2 = sub_27551E658();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_27551C878@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_27551E4C8(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_27551C8BC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55D0, &qword_27554F948);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551E658();
  sub_27554D728();
  sub_27554D658();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_27551C9F8()
{
  _s18CurrentBundleClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  MEMORY[0x277C7B050](0xD000000000000015, 0x8000000275551BE0);
  MEMORY[0x277C7B050](2777980912, 0xA400000000000000);
  v2 = sub_27554C588();
  v4 = v3;

  qword_2809F8D60 = v2;
  *algn_2809F8D68 = v4;
  qword_2809F8D70 = 0;
  byte_2809F8D78 = 1;
  qword_2809F8D80 = 0;
  byte_2809F8D88 = 1;
  return result;
}

uint64_t sub_27551CB04()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t sub_27551CB54()
{
  result = qword_2809F55B8;
  if (!qword_2809F55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55B8);
  }

  return result;
}

uint64_t sub_27551CBA8()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551CC1C()
{
  sub_27554D6E8();
  sub_27554D378();
  return sub_27554D708();
}

uint64_t sub_27551CC7C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_27554D618();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_27551CD08@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_27554D618();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_27551CD60(uint64_t a1)
{
  v2 = sub_27551EC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551CD9C(uint64_t a1)
{
  v2 = sub_27551EC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551CDD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5658, &qword_27554FBB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551EC30();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_27554D628();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_27551CF54(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5668, &qword_27554FBC0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551EC30();
  sub_27554D728();
  sub_27554D658();
  return (*(v4 + 8))(v7, v3);
}

void *sub_27551D090(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_27551D1D8(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_27551E9A0(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_27551E990(v48, v43);
  v9 = *a3;
  v10 = sub_27552E278(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_27552C6C8(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_27552E278(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_27554D688();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_27552CC64();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_27551E990(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_27551E9A0(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_27551E990(v48, v43);
      v30 = *a3;
      v31 = sub_27552E278(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_27552C6C8(v35, 1);
        v37 = *a3;
        v31 = sub_27552E278(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_27551E990(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_27554D588();
  MEMORY[0x277C7B050](0xD00000000000001BLL, 0x8000000275551CF0);
  sub_27554D5B8();
  MEMORY[0x277C7B050](39, 0xE100000000000000);
  sub_27554D5C8();
  __break(1u);
}

uint64_t sub_27551D594(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_27551D6F4(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_27551D900(v9, v4, v2);
  result = MEMORY[0x277C7BAC0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t *sub_27551D6F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a2;
  v24 = result;
  v25 = 0;
  v26 = a3;
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
    v31 = v4;
    v11 = __clz(__rbit64(v9));
    v27 = (v9 - 1) & v9;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = v14;
    sub_27551E914(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v19 = sub_27551E914(v30, &v29);
    MEMORY[0x28223BE20](v19);
    v22[2] = v28;
    swift_bridgeObjectRetain_n();
    v20 = v31;
    LOBYTE(v17) = sub_27552EA9C(sub_27551E970, v22, &unk_28842A100);
    v4 = v20;
    swift_arrayDestroy();
    sub_275514DA8(v28, &qword_2809F5618, &qword_27554F970);
    __swift_destroy_boxed_opaque_existential_1(v30);

    v9 = v27;
    if (v17)
    {
      *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_27551D978(v24, v23, v25, v26);
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
      return sub_27551D978(v24, v23, v25, v26);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v31 = v4;
      v11 = __clz(__rbit64(v13));
      v27 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_27551D900(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_27551D6F4(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_27551D978(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809F6110, &unk_2755513F0);
  result = sub_27554D608();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_27551E914(v17 + 32 * v16, v34);
    sub_27551E990(v34, v33);
    v21 = *(v9 + 40);
    sub_27554D6E8();

    sub_27554D378();
    result = sub_27554D708();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_27551E990(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_27551DBC8(uint64_t a1)
{
  if (a1 <= -9002)
  {
    if (a1 > -20204)
    {
      if (a1 > -9008)
      {
        if (a1 == -9007)
        {
          return 9;
        }

        if (a1 == -9002)
        {
          return 8;
        }
      }

      else
      {
        if (a1 == -20203)
        {
          return 13;
        }

        if (a1 == -9008)
        {
          return 15;
        }
      }
    }

    else if (a1 > -22412)
    {
      if (a1 == -22411)
      {
        return 11;
      }

      if (a1 == -21122)
      {
        return 10;
      }
    }

    else
    {
      if (a1 == -300009)
      {
        return 14;
      }

      if (a1 == -23629)
      {
        return 12;
      }
    }

    return 16;
  }

  if (a1 <= -1004)
  {
    if (a1 > -3001)
    {
      if (a1 == -3000)
      {
        return 2;
      }

      if (a1 == -2000)
      {
        return 0;
      }
    }

    else
    {
      if (a1 == -9001)
      {
        return 1;
      }

      if (a1 == -9000)
      {
        return 4;
      }
    }

    return 16;
  }

  if (a1 > -1002)
  {
    if (a1 == -1001)
    {
      return 5;
    }

    if (a1 == -1000)
    {
      return 3;
    }

    return 16;
  }

  if (a1 == -1003)
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_27551DD44(uint64_t a1)
{
  v1 = sub_27551DBC8(a1);
  result = 48;
  switch(v1)
  {
    case 1:
      result = 12337;
      break;
    case 2:
      result = 12593;
      break;
    case 3:
      result = 13105;
      break;
    case 4:
      result = 13873;
      break;
    case 5:
      result = 14129;
      break;
    case 6:
      result = 14385;
      break;
    case 7:
      result = 14641;
      break;
    case 8:
      result = 12338;
      break;
    case 9:
      result = 12594;
      break;
    case 10:
      result = 12850;
      break;
    case 11:
      result = 13106;
      break;
    case 12:
      result = 13362;
      break;
    case 13:
      result = 13618;
      break;
    case 14:
      result = 13874;
      break;
    case 15:
      result = 14130;
      break;
    case 16:
      result = 12589;
      break;
    default:
      return result;
  }

  return result;
}

void sub_27551DF28(void *a1, void *a2, uint64_t a3, int a4)
{
  v5 = v4;
  v21 = a4;
  swift_getObjectType();
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x50);
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x58);
  v11 = type metadata accessor for MSResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20[-v14];
  sub_27551A5D0(a1, a2, a3, &v20[-v14]);
  (*(v12 + 32))(&v5[*((*MEMORY[0x277D85000] & *v5) + 0x60)], v15, v11);
  v16 = a1;
  v17 = sub_27554C608();
  v18 = type metadata accessor for MSAPIResponse();
  v22.receiver = v5;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_initWithHTTPResponse_data_bodyIsPlist_, v16, v17, v21 & 1);

  if (!v19)
  {
    __break(1u);
  }
}

void sub_27551E0F8(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v9 = *((*MEMORY[0x277D85000] & *v3) + 0x58);
  v10 = type metadata accessor for MSResult();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - v13;
  sub_27551A5D0(a1, a2, a3, &v19 - v13);
  (*(v11 + 32))(&v4[*((*MEMORY[0x277D85000] & *v4) + 0x60)], v14, v10);
  v15 = a1;
  v16 = sub_27554C608();
  v17 = type metadata accessor for MSAPIResponse();
  v19.receiver = v4;
  v19.super_class = v17;
  v18 = objc_msgSendSuper2(&v19, sel_initWithHTTPResponse_data_, v15, v16);

  if (!v18)
  {
    __break(1u);
  }
}

void sub_27551E2BC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v22 = a4;
  v23 = a5;
  swift_getObjectType();
  v10 = *((*MEMORY[0x277D85000] & *v5) + 0x50);
  v11 = *((*MEMORY[0x277D85000] & *v5) + 0x58);
  v12 = type metadata accessor for MSResult();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_27551A5D0(a1, a2, a3, &v22 - v15);
  (*(v13 + 32))(&v6[*((*MEMORY[0x277D85000] & *v6) + 0x60)], v16, v12);
  v17 = a1;
  v18 = sub_27554C608();
  v19 = sub_27554D328();
  v20 = type metadata accessor for MSAPIResponse();
  v24.receiver = v6;
  v24.super_class = v20;
  v21 = objc_msgSendSuper2(&v24, sel_initWithHTTPResponse_data_mediaType_, v17, v18, v19, v22, v23);

  if (!v21)
  {
    __break(1u);
  }
}

uint64_t sub_27551E4C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F55C0, &qword_27554F940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551E658();
  sub_27554D718();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = sub_27554D628();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v11;
  *(a2 + 8) = v13;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  return result;
}

unint64_t sub_27551E658()
{
  result = qword_2809F55C8;
  if (!qword_2809F55C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55C8);
  }

  return result;
}

uint64_t sub_27551E6AC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_27551E700()
{
  result = qword_2809F55D8;
  if (!qword_2809F55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55D8);
  }

  return result;
}

unint64_t sub_27551E754()
{
  result = qword_2809F55F0;
  if (!qword_2809F55F0)
  {
    sub_27551EA14(255, &qword_2809F55E8, 0x277CCA9B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55F0);
  }

  return result;
}

unint64_t sub_27551E7BC()
{
  result = qword_2809F55F8;
  if (!qword_2809F55F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F55F8);
  }

  return result;
}

unint64_t sub_27551E810()
{
  result = qword_2809F5600;
  if (!qword_2809F5600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5600);
  }

  return result;
}

uint64_t sub_27551E864(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_27551E914(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_27551E990(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_27551E9A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27551EA14(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_27551EA5C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_27551EB2C()
{
  result = qword_2809F5640;
  if (!qword_2809F5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5640);
  }

  return result;
}

unint64_t sub_27551EB84()
{
  result = qword_2809F5648;
  if (!qword_2809F5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5648);
  }

  return result;
}

unint64_t sub_27551EBDC()
{
  result = qword_2809F5650;
  if (!qword_2809F5650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5650);
  }

  return result;
}

unint64_t sub_27551EC30()
{
  result = qword_2809F5660;
  if (!qword_2809F5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5660);
  }

  return result;
}

unint64_t sub_27551EC9C()
{
  result = qword_2809F5670;
  if (!qword_2809F5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5670);
  }

  return result;
}

unint64_t sub_27551ECF4()
{
  result = qword_2809F5678;
  if (!qword_2809F5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5678);
  }

  return result;
}

unint64_t sub_27551ED4C()
{
  result = qword_2809F5680;
  if (!qword_2809F5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5680);
  }

  return result;
}

uint64_t sub_27551EDA8()
{
  if (qword_2809F4D70 != -1)
  {
    swift_once();
  }

  v0 = qword_2809F8D58;
  v1 = qword_2809F8D58;
  return v0;
}

unint64_t sub_27551EE1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DA8, &unk_27554E4D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  *(inited + 32) = 4804673;
  *(inited + 40) = 0xE300000000000000;
  *(inited + 48) = sub_27554D328();
  *(inited + 56) = 0x6874654D70747468;
  *(inited + 64) = 0xEA0000000000646FLL;
  *(inited + 72) = sub_27554D328();
  v1 = sub_2755462BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F4DB0, &qword_27554EF40);
  swift_arrayDestroy();
  return v1;
}

id sub_27551EF04()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EmailSuggestionsAPIRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EmailSuggestionsAPIRequest()
{
  result = qword_2809F5688;
  if (!qword_2809F5688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_27551EF88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56A8, &qword_27554FE78);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551F804();
  sub_27554D728();
  v16 = 0;
  sub_27554D658();
  if (!v5)
  {
    v15 = 1;
    sub_27554D658();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_27551F11C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56D8, &qword_27554FE90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551FA0C();
  sub_27554D728();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56C0, &qword_27554FE88);
  sub_27551FAB4(&qword_2809F56E0, sub_27551FB2C);
  sub_27554D668();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_27551F2D0()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 0x496E726574746170;
  }

  *v0;
  return result;
}

uint64_t sub_27551F308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E726574746170 && a2 == 0xE900000000000064;
  if (v6 || (sub_27554D678() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_27554D678();

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

uint64_t sub_27551F3EC(uint64_t a1)
{
  v2 = sub_27551F804();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551F428(uint64_t a1)
{
  v2 = sub_27551F804();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_27551F464@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27551F620(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_27551F4D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6974736567677573 && a2 == 0xEB00000000736E6FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_27554D678();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_27551F560(uint64_t a1)
{
  v2 = sub_27551FA0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_27551F59C(uint64_t a1)
{
  v2 = sub_27551FA0C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_27551F5D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_27551F858(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_27551F620(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5698, &qword_27554FE70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551F804();
  sub_27554D718();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_27554D628();
    v11 = 1;
    sub_27554D628();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_27551F804()
{
  result = qword_2809F56A0;
  if (!qword_2809F56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56A0);
  }

  return result;
}

void *sub_27551F858(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56B0, &qword_27554FE80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_27551FA0C();
  sub_27554D718();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F56C0, &qword_27554FE88);
    sub_27551FAB4(&qword_2809F56C8, sub_27551FA60);
    sub_27554D648();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_27551FA0C()
{
  result = qword_2809F56B8;
  if (!qword_2809F56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56B8);
  }

  return result;
}

unint64_t sub_27551FA60()
{
  result = qword_2809F56D0;
  if (!qword_2809F56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56D0);
  }

  return result;
}

uint64_t sub_27551FAB4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F56C0, &qword_27554FE88);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_27551FB2C()
{
  result = qword_2809F56E8;
  if (!qword_2809F56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56E8);
  }

  return result;
}

unint64_t sub_27551FBA4()
{
  result = qword_2809F56F0;
  if (!qword_2809F56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56F0);
  }

  return result;
}

unint64_t sub_27551FBFC()
{
  result = qword_2809F56F8;
  if (!qword_2809F56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F56F8);
  }

  return result;
}

unint64_t sub_27551FC54()
{
  result = qword_2809F5700;
  if (!qword_2809F5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5700);
  }

  return result;
}

unint64_t sub_27551FCAC()
{
  result = qword_2809F5708;
  if (!qword_2809F5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5708);
  }

  return result;
}

unint64_t sub_27551FD04()
{
  result = qword_2809F5710;
  if (!qword_2809F5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5710);
  }

  return result;
}

unint64_t sub_27551FD5C()
{
  result = qword_2809F5718;
  if (!qword_2809F5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5718);
  }

  return result;
}

uint64_t sub_27551FE3C()
{
  result = [*(v0 + 24) propertiesForDataclass_];
  if (result)
  {
    v2 = result;
    v3 = sub_27554D2F8();

    sub_2755211FC();
    sub_27554D568();
    if (*(v3 + 16) && (v4 = sub_27552E2F0(v6), (v5 & 1) != 0))
    {
      sub_27551E914(*(v3 + 56) + 32 * v4, v7);
      sub_27551EA74(v6);

      if (swift_dynamicCast())
      {
        return 4;
      }
    }

    else
    {

      sub_27551EA74(v6);
    }

    return 0;
  }

  return result;
}

void sub_27551FF50(uint64_t a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CECA90]) initWithAppleAccount:*(v2 + 24) grandSlamAccount:0 accountStore:*(v2 + 16)];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    v10[4] = sub_2755211D4;
    v10[5] = v7;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_275520074;
    v10[3] = &block_descriptor_47;
    v8 = _Block_copy(v10);
    v9 = v6;

    [v9 profilePictureForAccountOwnerWithCompletion_];
    _Block_release(v8);
  }

  else
  {
    __break(1u);
  }
}

void sub_275520074(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_275520100(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = sub_27554D278();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v43 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_27554D2A8();
  v42 = *(v44 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27554D288();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_27554C778();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_2809F8DA8);
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_27554C758();
  v20 = sub_27554D428();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v37 = v8;
    v22 = v3;
    v23 = v2;
    v24 = v21;
    *v21 = 0;
    _os_log_impl(&dword_27550C000, v19, v20, "[AccountCreation - Startup] update ACAccount started", v21, 2u);
    v25 = v24;
    v2 = v23;
    v3 = v22;
    v8 = v37;
    MEMORY[0x277C7BAC0](v25, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  v26 = *(v38 + 24);
  [v26 setEnabled:1 forDataclass:*MEMORY[0x277CB89C8]];
  sub_2755155D4();
  (*(v9 + 104))(v12, *MEMORY[0x277D851C8], v8);
  v27 = sub_27554D4C8();
  (*(v9 + 8))(v12, v8);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = swift_allocObject();
  v29[2] = v28;
  v29[3] = v26;
  v30 = v40;
  v29[4] = v39;
  v29[5] = v30;
  aBlock[4] = sub_27552104C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_0;
  v31 = _Block_copy(aBlock);

  v32 = v26;

  v33 = v41;
  sub_27554D298();
  v45 = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  v34 = v43;
  sub_27554D538();
  MEMORY[0x277C7B170](0, v33, v34, v31);
  _Block_release(v31);

  (*(v3 + 8))(v34, v2);
  (*(v42 + 8))(v33, v44);
}

void sub_275520638(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);

    v9 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v10 = swift_allocObject();
    v10[2] = v9;
    v10[3] = a2;
    v10[4] = a3;
    v10[5] = a4;
    v13[4] = sub_27552112C;
    v13[5] = v10;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_275542140;
    v13[3] = &block_descriptor_22;
    v11 = _Block_copy(v13);
    v12 = a2;

    [v8 aa:v12 updatePropertiesForAppleAccount:v11 completion:?];
    _Block_release(v11);
  }
}

void sub_2755207C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = *(Strong + 16);

    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = a4;
    v12[4] = a5;
    v12[5] = a6;
    v15[4] = sub_275521180;
    v15[5] = v12;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_275542140;
    v15[3] = &block_descriptor_29;
    v13 = _Block_copy(v15);
    v14 = a4;

    [v10 saveVerifiedAccount:v14 withCompletionHandler:v13];
    _Block_release(v13);
  }
}

void sub_275520948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5720, &qword_275550130);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v10 = *MEMORY[0x277CB9098];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v11;
  *(inited + 48) = 1;
  v12 = *MEMORY[0x277CB90A0];
  *(inited + 56) = sub_27554D338();
  *(inited + 64) = v13;
  *(inited + 72) = 0;
  v14 = sub_2755464F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F60F0, &qword_2755513D0);
  swift_arrayDestroy();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 16);

    sub_275541E10(v14);

    v17 = sub_27554D2E8();

    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;
    aBlock[4] = sub_2755211C4;
    aBlock[5] = v18;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_35;
    v19 = _Block_copy(aBlock);

    [v16 renewCredentialsForAccount:a4 options:v17 completion:v19];
    _Block_release(v19);
  }

  else
  {
  }
}

uint64_t sub_275520B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_27554D278();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_27554D2A8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = aBlock - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2755155D4();
  v16 = sub_27554D4A8();
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  aBlock[4] = sub_2755211CC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_275547BDC;
  aBlock[3] = &block_descriptor_41;
  v18 = _Block_copy(aBlock);

  sub_27554D298();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_275521070();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
  sub_2755210C8();
  sub_27554D538();
  MEMORY[0x277C7B170](0, v15, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_275520E04(uint64_t (*a1)(uint64_t))
{
  v2 = sub_27554C778();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v2, qword_2809F8DA8);
  (*(v3 + 16))(v6, v7, v2);
  v8 = sub_27554C758();
  v9 = sub_27554D428();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_27550C000, v8, v9, "[AccountCreation - Startup] update ACAccount successful", v10, 2u);
    MEMORY[0x277C7BAC0](v10, -1, -1);
  }

  v11 = (*(v3 + 8))(v6, v2);
  return a1(v11);
}

uint64_t sub_275520FAC()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_275521010()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_275521070()
{
  result = qword_2809F60D0;
  if (!qword_2809F60D0)
  {
    sub_27554D278();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F60D0);
  }

  return result;
}

unint64_t sub_2755210C8()
{
  result = qword_2809F60E0;
  if (!qword_2809F60E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809F5168, &unk_2755513C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F60E0);
  }

  return result;
}

uint64_t objectdestroy_14Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_27552118C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2755211D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2755211FC()
{
  result = qword_2809F5728;
  if (!qword_2809F5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809F5728);
  }

  return result;
}

uint64_t sub_275521288(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a7;
  v59 = a8;
  v55 = a6;
  v54 = a5;
  v9 = v8;
  v57 = a3;
  v61 = a2;
  v56 = a1;
  v11 = sub_27554D278();
  v66 = *(v11 - 8);
  v67 = v11;
  v12 = *(v66 + 64);
  MEMORY[0x28223BE20](v11);
  v64 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_27554D2A8();
  v63 = *(v65 - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_27554D2C8();
  v62 = *(v69 - 8);
  v17 = *(v62 + 64);
  v18 = MEMORY[0x28223BE20](v69);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v60 = &v52 - v21;
  v53 = sub_27554D288();
  v22 = *(v53 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v53);
  v25 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_27554C778();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a4;
  v31 = exp2(a4);
  v32 = sub_27552C398(0x20000000000001uLL);
  v33 = vcvtd_n_f64_u64(v32, 0x35uLL) * 0.5 + 0.75;
  if (v32 == 0x20000000000000)
  {
    v33 = 1.25;
  }

  v34 = v31 * v33;
  if (v34 <= 30.0)
  {
    v35 = v34;
  }

  else
  {
    v35 = 30.0;
  }

  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v36 = __swift_project_value_buffer(v26, qword_2809F8DA8);
  (*(v27 + 16))(v30, v36, v26);
  v37 = v9;
  v38 = sub_27554C758();
  v39 = sub_27554D418();
  if (!os_log_type_enabled(v38, v39))
  {

    v38 = v37;
    goto LABEL_12;
  }

  v52 = v16;
  result = swift_slowAlloc();
  *result = 134218496;
  *(result + 4) = v35;
  *(result + 12) = 2048;
  if (!__OFADD__(v68, 1))
  {
    v41 = result;
    *(result + 14) = v68 + 1;
    *(result + 22) = 2048;
    *(result + 24) = 5;

    _os_log_impl(&dword_27550C000, v38, v39, "Rate limited (429). Retrying in %f seconds. Attempt %ld/%ld", v41, 0x20u);
    MEMORY[0x277C7BAC0](v41, -1, -1);
    v16 = v52;
LABEL_12:

    (*(v27 + 8))(v30, v26);
    sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
    v42 = v53;
    (*(v22 + 104))(v25, *MEMORY[0x277D851D0], v53);
    v52 = sub_27554D4C8();
    (*(v22 + 8))(v25, v42);
    sub_27554D2B8();
    v43 = v60;
    sub_27554D2D8();
    v62 = *(v62 + 8);
    (v62)(v20, v69);
    v44 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v45 = swift_allocObject();
    v46 = v56;
    *(v45 + 16) = v44;
    *(v45 + 24) = v46;
    *(v45 + 32) = v61;
    *(v45 + 40) = v57 & 1;
    *(v45 + 48) = v68;
    aBlock[4] = v58;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_275547BDC;
    aBlock[3] = v59;
    v47 = _Block_copy(aBlock);

    sub_27554D298();
    v70 = MEMORY[0x277D84F90];
    sub_275521070();
    v48 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5168, &unk_2755513C0);
    sub_275515E2C(&qword_2809F60E0, &qword_2809F5168, &unk_2755513C0);
    v49 = v64;
    v50 = v67;
    sub_27554D538();
    v51 = v52;
    MEMORY[0x277C7B120](v43, v48, v49, v47);
    _Block_release(v47);

    (*(v66 + 8))(v49, v50);
    (*(v63 + 8))(v48, v65);
    (v62)(v43, v69);
  }

  __break(1u);
  return result;
}

void sub_2755219A8(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_27554C758();
  v19 = sub_27554D438();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_27550C000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x277C7BAC0](v28, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  *(inited + 96) = &unk_288429F80;
  v34 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v35 = qword_2809F5370;
  v36 = v57;
  v37 = *(v57 + qword_2809F5370);
  if (v37)
  {
    v38 = *(v57 + qword_2809F5370);
LABEL_9:
    v43 = *(v36 + qword_2809F5378);
    v44 = v37;
    sub_275541B48(v34);

    v45 = sub_27554D2E8();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_27552DE40;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_289;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_275521EF4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_27554C758();
  v19 = sub_27554D438();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_27550C000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x277C7BAC0](v28, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  *(inited + 96) = &unk_288429FB0;
  v34 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v35 = qword_2809F5370;
  v36 = v57;
  v37 = *(v57 + qword_2809F5370);
  if (v37)
  {
    v38 = *(v57 + qword_2809F5370);
LABEL_9:
    v43 = *(v36 + qword_2809F5378);
    v44 = v37;
    sub_275541B48(v34);

    v45 = sub_27554D2E8();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_27552D958;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_232;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_275522440(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_27554C758();
  v19 = sub_27554D438();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_27550C000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x277C7BAC0](v28, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  *(inited + 96) = &unk_288429FE0;
  v34 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v35 = qword_2809F5370;
  v36 = v57;
  v37 = *(v57 + qword_2809F5370);
  if (v37)
  {
    v38 = *(v57 + qword_2809F5370);
LABEL_9:
    v43 = *(v36 + qword_2809F5378);
    v44 = v37;
    sub_275541B48(v34);

    v45 = sub_27554D2E8();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_27552D808;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_195;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

void sub_27552298C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56 = a6;
  v55 = a4;
  v10 = sub_27554C778();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v10, qword_2809F8DA8);
  (*(v11 + 16))(v14, v15, v10);
  v16 = a2;
  v60 = a1;
  v17 = a1;
  v18 = sub_27554C758();
  v19 = sub_27554D438();
  v59 = v16;

  v58 = v17;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v54 = a5;
    v22 = a3;
    v23 = v21;
    *v20 = 138412546;
    v24 = v58;
    *(v20 + 4) = v58;
    *(v20 + 12) = 2112;
    v25 = v59;
    *(v20 + 14) = v59;
    *v21 = v60;
    v21[1] = a2;
    v26 = v24;
    v27 = v25;
    _os_log_impl(&dword_27550C000, v18, v19, "401 response from server for request %@ response %@", v20, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5868, &qword_275550398);
    swift_arrayDestroy();
    v28 = v23;
    a3 = v22;
    a5 = v54;
    MEMORY[0x277C7BAC0](v28, -1, -1);
    MEMORY[0x277C7BAC0](v20, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5630, &qword_27554F988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_27554E410;
  v30 = *MEMORY[0x277CB90A0];
  *(inited + 32) = sub_27554D338();
  *(inited + 40) = v31;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 1;
  v32 = *MEMORY[0x277CB9090];
  *(inited + 80) = sub_27554D338();
  *(inited + 88) = v33;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F57E0, "|\");
  *(inited + 96) = &unk_28842A010;
  v34 = sub_2755463C0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5620, &qword_27554F978);
  swift_arrayDestroy();
  v35 = qword_2809F5370;
  v36 = v57;
  v37 = *(v57 + qword_2809F5370);
  if (v37)
  {
    v38 = *(v57 + qword_2809F5370);
LABEL_9:
    v43 = *(v36 + qword_2809F5378);
    v44 = v37;
    sub_275541B48(v34);

    v45 = sub_27554D2E8();

    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = swift_allocObject();
    v48 = v55;
    v47[2] = v46;
    v47[3] = v48;
    v49 = v60;
    v47[4] = a5;
    v47[5] = v49;
    v47[6] = a2;
    v47[7] = a3;
    v47[8] = v56;
    aBlock[4] = sub_27552D5EC;
    aBlock[5] = v47;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2755420C8;
    aBlock[3] = &block_descriptor_141;
    v50 = _Block_copy(aBlock);
    v51 = v58;
    v52 = v59;

    v53 = a3;

    [v38 renewCredentialsForAccount:v43 options:v45 completion:v50];
    _Block_release(v50);

    return;
  }

  v39 = objc_opt_self();
  v40 = [v39 defaultStore];
  v41 = *(v36 + v35);
  *(v36 + v35) = v40;

  v42 = [v39 defaultStore];
  if (v42)
  {
    v38 = v42;
    v37 = 0;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_275522ED8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_27554C648();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_27554C758();
  v21 = sub_27554D428();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_275545D14(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_27554D338();
    v32 = v31;

    v33 = sub_275545D14(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_27550C000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v34, -1, -1);
    MEMORY[0x277C7BAC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_27554C758();
  v37 = v10;
  v38 = sub_27554D428();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_2809F53A8);
    v42 = *(v35 + qword_2809F53A8 + 8);

    v43 = sub_275545D14(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_27550C000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x277C7BAC0](v40, -1, -1);
    MEMORY[0x277C7BAC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_27552DCF8;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_274;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5960, &qword_2755505E8);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_2755235B8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_27554C648();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_27554C758();
  v21 = sub_27554D428();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_275545D14(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_27554D338();
    v32 = v31;

    v33 = sub_275545D14(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_27550C000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v34, -1, -1);
    MEMORY[0x277C7BAC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_27554C758();
  v37 = v10;
  v38 = sub_27554D428();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_2809F53A8);
    v42 = *(v35 + qword_2809F53A8 + 8);

    v43 = sub_275545D14(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_27550C000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x277C7BAC0](v40, -1, -1);
    MEMORY[0x277C7BAC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_27552D940;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_224;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5908, &qword_2755504D8);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_275523C98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_27554C648();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_27554C758();
  v21 = sub_27554D428();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_275545D14(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_27554D338();
    v32 = v31;

    v33 = sub_275545D14(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_27550C000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v34, -1, -1);
    MEMORY[0x277C7BAC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_27554C758();
  v37 = v10;
  v38 = sub_27554D428();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_2809F53A8);
    v42 = *(v35 + qword_2809F53A8 + 8);

    v43 = sub_275545D14(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_27550C000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x277C7BAC0](v40, -1, -1);
    MEMORY[0x277C7BAC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_27552D7F0;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_180;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58C0, &qword_275550460);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_275524378(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v69 = a4;
  v66 = a3;
  v72 = a2;
  v67 = a1;
  v5 = sub_27554C778();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v58 - v11;
  v13 = sub_27554C648();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v64 = v16;
  v65 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v58 - v17;
  sub_27554C638();
  if (qword_2809F4D80 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v5, qword_2809F8DA8);
  v62 = v6[2];
  v63 = v18;
  v62(v12);
  v19 = v4;
  v20 = sub_27554C758();
  v21 = sub_27554D428();

  if (os_log_type_enabled(v20, v21))
  {
    v60 = v10;
    v22 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    aBlock[0] = v59;
    *v22 = 136315394;
    v23 = (*((*MEMORY[0x277D85000] & *v19) + 0xF8))();
    v61 = v5;
    v24 = v6;
    if (v23 > 1)
    {
      if (v23 == 2)
      {
        v25 = 0xE300000000000000;
        v26 = 5526864;
      }

      else
      {
        v25 = 0xE600000000000000;
        v26 = 0x4554454C4544;
      }
    }

    else if (v23)
    {
      v25 = 0xE400000000000000;
      v26 = 1414745936;
    }

    else
    {
      v25 = 0xE300000000000000;
      v26 = 5522759;
    }

    v28 = sub_275545D14(v26, v25, aBlock);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = [v19 urlString];
    v30 = sub_27554D338();
    v32 = v31;

    v33 = sub_275545D14(v30, v32, aBlock);

    *(v22 + 14) = v33;
    _os_log_impl(&dword_27550C000, v20, v21, "%s %s", v22, 0x16u);
    v34 = v59;
    swift_arrayDestroy();
    MEMORY[0x277C7BAC0](v34, -1, -1);
    MEMORY[0x277C7BAC0](v22, -1, -1);

    v6 = v24;
    v27 = v24[1];
    v5 = v61;
    v27(v12, v61);
    v10 = v60;
  }

  else
  {

    v27 = v6[1];
    v27(v12, v5);
  }

  (v62)(v10, v63, v5);
  v35 = v19;
  v36 = sub_27554C758();
  v37 = v10;
  v38 = sub_27554D428();

  if (os_log_type_enabled(v36, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    aBlock[0] = v40;
    *v39 = 136315138;
    v62 = v6;
    v41 = *(v35 + qword_2809F53A8);
    v42 = *(v35 + qword_2809F53A8 + 8);

    v43 = sub_275545D14(v41, v42, aBlock);

    *(v39 + 4) = v43;
    _os_log_impl(&dword_27550C000, v36, v38, "X-Apple-Request-UUID: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x277C7BAC0](v40, -1, -1);
    MEMORY[0x277C7BAC0](v39, -1, -1);
  }

  v27(v37, v5);
  v63 = v35;
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = v70;
  v45 = v71;
  v47 = v65;
  v48 = v68;
  (*(v70 + 16))(v65, v68, v71);
  v49 = (*(v46 + 80) + 24) & ~*(v46 + 80);
  v50 = v49 + v64;
  v51 = (((v49 + v64) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v44;
  (*(v46 + 32))(v52 + v49, v47, v45);
  *(v52 + v50) = v66 & 1;
  v53 = v52 + (v50 & 0xFFFFFFFFFFFFFFF8);
  v54 = v72;
  *(v53 + 8) = v67;
  *(v53 + 16) = v54;
  *(v52 + v51) = v69;
  aBlock[4] = sub_27552D360;
  aBlock[5] = v52;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2755273A4;
  aBlock[3] = &block_descriptor_1;
  v55 = _Block_copy(aBlock);

  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5858, &qword_275550390);
  v73.receiver = v63;
  v73.super_class = v56;
  objc_msgSendSuper2(&v73, sel_performRequestWithHandler_, v55);
  _Block_release(v55);
  return (*(v46 + 8))(v48, v45);
}

uint64_t sub_275524A58()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5940, &qword_2755505D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5948, &qword_2755505E0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v14 = sub_27554D4A8();
  v18[0] = v14;
  v15 = sub_27554D478();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_275515E2C(&qword_2809F5950, &qword_2809F5948, &qword_2755505E0);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v4, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5958, &qword_2809F5940, &qword_2755505D8);
  v16 = sub_27554C828();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_275524D24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58E8, &qword_2755504C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58F0, &qword_2755504D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v14 = sub_27554D4A8();
  v18[0] = v14;
  v15 = sub_27554D478();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_275515E2C(&qword_2809F58F8, &qword_2809F58F0, &qword_2755504D0);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v4, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5900, &qword_2809F58E8, &qword_2755504C8);
  v16 = sub_27554C828();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_275524FF0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58A0, &qword_275550450);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F58A8, &qword_275550458);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v14 = sub_27554D4A8();
  v18[0] = v14;
  v15 = sub_27554D478();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_275515E2C(&qword_2809F58B0, &qword_2809F58A8, &qword_275550458);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v4, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F58B8, &qword_2809F58A0, &qword_275550450);
  v16 = sub_27554C828();
  (*(v6 + 8))(v9, v5);
  return v16;
}

uint64_t sub_2755252BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5828, &qword_275551070);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = v18 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5830, &qword_275550380);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v18 - v8;
  *(swift_allocObject() + 16) = v0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5838, &qword_275550388);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  v13 = v0;
  v18[1] = sub_27554C7C8();
  sub_27551EA14(0, &qword_2809F5160, 0x277D85C78);
  v14 = sub_27554D4A8();
  v18[0] = v14;
  v15 = sub_27554D478();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_275515E2C(&qword_2809F5840, &qword_2809F5838, &qword_275550388);
  sub_27552D27C();
  sub_27554C858();
  sub_275514DA8(v4, &qword_2809F5828, &qword_275551070);

  sub_275515E2C(&qword_2809F5850, &qword_2809F5830, &qword_275550380);
  v16 = sub_27554C828();
  (*(v6 + 8))(v9, v5);
  return v16;
}

void sub_275525588(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFADD__(a5, 1))
    {
      __break(1u);
    }

    else
    {
      v12 = Strong;
      a6(a2, a3, a4 & 1, a5 + 1);
    }
  }
}

void sub_275525620(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void (*)(uint64_t, uint64_t, uint64_t), uint64_t, void, uint64_t))
{
  v47 = a6;
  v48 = a7;
  v49 = a5;
  v50 = a4;
  v13 = sub_27554C778();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v46 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v46 - v25;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    if (a1)
    {
      if (a1 == 1)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v33 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v24, v33, v13);
        v34 = sub_27554C758();
        v35 = sub_27554D418();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_27550C000, v34, v35, "auth token renew failed. User rejected.", v36, 2u);
          MEMORY[0x277C7BAC0](v36, -1, -1);
        }

        (*(v14 + 8))(v24, v13);
      }

      else if (a1 == 2)
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v29 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v26, v29, v13);
        v30 = sub_27554C758();
        v31 = sub_27554D418();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_27550C000, v30, v31, "auth token renew failed.", v32, 2u);
          MEMORY[0x277C7BAC0](v32, -1, -1);
        }

        (*(v14 + 8))(v26, v13);
      }

      else
      {
        if (qword_2809F4D80 != -1)
        {
          swift_once();
        }

        v41 = __swift_project_value_buffer(v13, qword_2809F8DA8);
        (*(v14 + 16))(v18, v41, v13);
        v42 = sub_27554C758();
        v43 = sub_27554D418();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_27550C000, v42, v43, "auth token renew failed. @unknown result", v44, 2u);
          MEMORY[0x277C7BAC0](v44, -1, -1);
        }

        (*(v14 + 8))(v18, v13);
      }

      if (a2)
      {
        v45 = a2;
      }

      else
      {
        v45 = a8;
      }

      v50(v47, v48, v45);
    }

    else
    {
      if (qword_2809F4D80 != -1)
      {
        swift_once();
      }

      v37 = __swift_project_value_buffer(v13, qword_2809F8DA8);
      (*(v14 + 16))(v21, v37, v13);
      v38 = sub_27554C758();
      v39 = sub_27554D418();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_27550C000, v38, v39, "auth token renewed. Retrying request with server.", v40, 2u);
        MEMORY[0x277C7BAC0](v40, -1, -1);
      }

      (*(v14 + 8))(v21, v13);
      a10(v50, v49, 0, a9);
    }
  }
}

void sub_275525B34(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6, void (*a7)(void, void, void), uint64_t a8, uint64_t a9)
{
  v74 = a5;
  v15 = sub_27554C648();
  v72 = *(v15 - 8);
  v73 = v15;
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v15);
  v75 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_27554C778();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    if (a2)
    {
      v76 = [a2 statusCode];
    }

    else
    {
      v76 = 0;
    }

    v69 = a1;
    v70 = a3;
    v67 = a2;
    if (qword_2809F4D80 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v18, qword_2809F8DA8);
    (*(v19 + 16))(v22, v25, v18);
    v68 = v24;
    v26 = v24;
    v27 = sub_27554C758();
    v28 = sub_27554D428();

    v29 = os_log_type_enabled(v27, v28);
    v71 = v26;
    if (v29)
    {
      v30 = swift_slowAlloc();
      v65 = a7;
      v31 = v30;
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 134218242;
      *(v31 + 4) = v76;
      *(v31 + 12) = 2080;
      v33 = (v26 + qword_2809F53A8);
      v66 = a8;
      v34 = a6;
      v35 = *v33;
      v36 = v33[1];

      v37 = sub_275545D14(v35, v36, aBlock);
      a6 = v34;
      v26 = v71;

      *(v31 + 14) = v37;
      a8 = v66;
      _os_log_impl(&dword_27550C000, v27, v28, "[%ld] Response: X-Apple-Request-UUID: %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x277C7BAC0](v32, -1, -1);
      v38 = v31;
      a7 = v65;
      MEMORY[0x277C7BAC0](v38, -1, -1);
    }

    v39 = (*(v19 + 8))(v22, v18);
    v40 = v69;
    v41 = (*((*MEMORY[0x277D85000] & *v26) + 0x110))(v39);
    v42 = v70;
    v43 = v75;
    if (!v41)
    {
LABEL_21:
      if (v76 == 429)
      {
        if (a9 <= 4)
        {
          sub_275521288(a7, a8, a6 & 1, a9, &unk_28842BD10, &unk_28842BE28, sub_27552DEEC, &block_descriptor_296);
          goto LABEL_28;
        }
      }

      else if (v76 == 401 && (a6 & 1) != 0)
      {
        sub_2755219A8(v40, v67, v42, a7, a8, a9);
LABEL_28:

        return;
      }

      a7(v40, v67, v42);
      goto LABEL_28;
    }

    v44 = v41;
    sub_27554C638();
    sub_27554C628();
    v46 = v45 * 1000.0;
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v46 > -9.22337204e18)
    {
      if (v46 < 9.22337204e18)
      {
        v47 = sub_27554D3F8();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v44;
        sub_27552C980(v47, 0x79636E6574616CLL, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
        v49 = aBlock[0];
        v50 = sub_27554D3F8();
        v51 = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v49;
        sub_27552C980(v50, 0x6F43737574617473, 0xEA00000000006564, v51);
        v52 = aBlock[0];
        if (v42)
        {
          v77 = v42;
          v53 = v42;
          v54 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F5628, &qword_27554F980);
          if (swift_dynamicCast())
          {
            v55 = v79;
            v56 = v80;

            if (v56)
            {
              v57 = -1;
            }

            else
            {
              v57 = v55;
            }

            sub_27551DD44(v57);
            v58 = sub_27554D328();

            v59 = swift_isUniquelyReferenced_nonNull_native();
            aBlock[0] = v52;
            sub_27552C980(v58, 0x646F43726F727265, 0xE900000000000065, v59);

            v52 = aBlock[0];
          }

          else
          {
          }
        }

        v60 = v73;
        v61 = sub_27554D328();
        v62 = swift_allocObject();
        *(v62 + 16) = v52;
        v79 = sub_27552E0E4;
        v80 = v62;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_275527308;
        aBlock[3] = &block_descriptor_281;
        v63 = _Block_copy(aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v63);

        (*(v72 + 8))(v43, v60);
        v26 = v71;
        goto LABEL_21;
      }

LABEL_32:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_32;
  }
}