unint64_t sub_1BF907DB0()
{
  result = qword_1EBDE91A0;
  if (!qword_1EBDE91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91A0);
  }

  return result;
}

unint64_t sub_1BF907E04()
{
  result = qword_1EBDE91B0;
  if (!qword_1EBDE91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91B0);
  }

  return result;
}

uint64_t sub_1BF907E58()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  sub_1BF9B57A8();
  AppEntitySignalValue.hash(into:)();
  return sub_1BF9B57E8();
}

unint64_t sub_1BF907EAC()
{
  result = qword_1EBDE91C0;
  if (!qword_1EBDE91C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91C0);
  }

  return result;
}

unint64_t sub_1BF907F04()
{
  result = qword_1EDBF31E0;
  if (!qword_1EDBF31E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF31E0);
  }

  return result;
}

unint64_t sub_1BF907F5C()
{
  result = qword_1EDBF28C0;
  if (!qword_1EDBF28C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF28C0);
  }

  return result;
}

uint64_t sub_1BF907FE8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1BF908028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *sub_1BF9080A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF908180()
{
  result = qword_1EBDE91C8;
  if (!qword_1EBDE91C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91C8);
  }

  return result;
}

unint64_t sub_1BF9081D8()
{
  result = qword_1EBDE91D0;
  if (!qword_1EBDE91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91D0);
  }

  return result;
}

unint64_t sub_1BF908230()
{
  result = qword_1EBDE91D8;
  if (!qword_1EBDE91D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91D8);
  }

  return result;
}

unint64_t sub_1BF908288()
{
  result = qword_1EBDE91E0;
  if (!qword_1EBDE91E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91E0);
  }

  return result;
}

unint64_t sub_1BF9082E0()
{
  result = qword_1EBDE91E8;
  if (!qword_1EBDE91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91E8);
  }

  return result;
}

unint64_t sub_1BF908338()
{
  result = qword_1EBDE91F0;
  if (!qword_1EBDE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91F0);
  }

  return result;
}

unint64_t sub_1BF90838C()
{
  result = qword_1EBDE91F8;
  if (!qword_1EBDE91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE91F8);
  }

  return result;
}

uint64_t sub_1BF9083E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  v0 = *(sub_1BF9B4558() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF9BCEF0;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1ED8 = v3;
  return result;
}

uint64_t sub_1BF9085B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  v0 = *(sub_1BF9B4558() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF9BCF00;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1F00 = v3;
  return result;
}

uint64_t sub_1BF908954()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9200, qword_1BF9BCF70);
  v0 = *(sub_1BF9B4558() - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BF9BCF10;
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  sub_1BF9B4528();
  result = sub_1BF9B4528();
  qword_1EDBF1EE8 = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SuggestionEnabledLocales(_BYTE *result, int a2, int a3)
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

uint64_t dispatch thunk of InternalResolver.resolveParameter(parameter:suggestion:interaction:environment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1BF9090B8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BF9090B8(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static OwnerDefinitionFactory.createOwnerDefinitions()()
{
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v0 = sub_1BF9B47C8();
  __swift_project_value_buffer(v0, qword_1EDBF5570);
  v1 = sub_1BF9B47A8();
  v2 = sub_1BF9B5048();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BF8B8000, v1, v2, "Unable to get owner definitions as neither createOwnerDefinitions have been provided", v3, 2u);
    MEMORY[0x1BFB5F320](v3, -1, -1);
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BF9092D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(a1, a2, a3, a4);
  v6 = *(v4 + 8);

  return v6(v5);
}

uint64_t dispatch thunk of static OwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1BF9090B8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_1BF9094A0(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a8;
  v59 = a1;
  v60 = a2;
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v61 = v17 - v16;
  v19 = *(v18 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1(AssociatedTypeWitness);
  v63 = v20;
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_9();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v48 - v25;
  v27 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_17();
  v57 = v29 - v28;
  v30 = swift_getAssociatedTypeWitness();
  v31 = OUTLINED_FUNCTION_1(v30);
  v51 = v32;
  v52 = v31;
  v34 = *(v33 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v48 - v36;
  v38 = sub_1BF9B4FE8();
  if (!v38)
  {
    return sub_1BF9B4D78();
  }

  v62 = v38;
  v66 = sub_1BF9B5358();
  v53 = sub_1BF9B5368();
  sub_1BF9B5338();
  result = sub_1BF9B4FC8();
  if ((v62 & 0x8000000000000000) == 0)
  {
    v48 = v12;
    v49 = a5;
    v40 = 0;
    v54 = (v63 + 16);
    v55 = v63 + 8;
    v56 = v8;
    while (!__OFADD__(v40, 1))
    {
      v63 = v40 + 1;
      v41 = sub_1BF9B5018();
      v42 = v26;
      v43 = v26;
      v44 = AssociatedTypeWitness;
      (*v54)(v42);
      v41(v65, 0);
      v45 = v64;
      v59(v43, v61);
      if (v45)
      {
        OUTLINED_FUNCTION_17_7();
        v47(v43, v44);
        (*(v51 + 8))(v37, v52);

        return (*(v48 + 32))(v50, v61, v49);
      }

      v64 = 0;
      OUTLINED_FUNCTION_17_7();
      v46(v43, v44);
      sub_1BF9B5348();
      result = sub_1BF9B4FF8();
      ++v40;
      v26 = v43;
      if (v63 == v62)
      {
        (*(v51 + 8))(v37, v52);
        return v66;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *newLineJoined<A>(_:prefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = a1;
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;
  sub_1BF9B4E08();
  v5 = OUTLINED_FUNCTION_5_8();
  v9 = sub_1BF9094A0(sub_1BF909A60, v8, v4, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v5, MEMORY[0x1E69E7410], v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();
  OUTLINED_FUNCTION_11_8();
  return &v9;
}

uint64_t sub_1BF90994C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v10 + 16))(&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BF9B4B08();
  v13 = v12;
  v16 = a2;
  v17 = a3;

  MEMORY[0x1BFB5DE90](v11, v13);

  v15 = v17;
  *a5 = v16;
  a5[1] = v15;
  return result;
}

uint64_t newLineJoined<A, B>(_:prefix:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1BF9B49D8();
  OUTLINED_FUNCTION_4_9();
  v9 = sub_1BF9B4E18();
  newLineJoined<A>(_:prefix:)(v9, a2, a3, TupleTypeMetadata2);
  OUTLINED_FUNCTION_11_8();
  return a5;
}

uint64_t *commaJoined<A>(_:)(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v6[2] = a2;
  sub_1BF9B4E08();
  v3 = OUTLINED_FUNCTION_5_8();
  v7 = sub_1BF9094A0(sub_1BF909CDC, v6, v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF8C47C8();
  sub_1BF9B4A78();
  OUTLINED_FUNCTION_11_8();
  return &v7;
}

uint64_t sub_1BF909C0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_1BF9B4B08();
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t prependEachLine<A>(of:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_2_0();
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_17();
  (*(v10 + 16))(v9 - v8);
  sub_1BF9B4B08();
  MEMORY[0x1BFB5DE90](a2, a3);
  sub_1BF904C28();
  v11 = sub_1BF9B5188();
  v13 = v12;

  MEMORY[0x1BFB5DE90](v11, v13);

  return a2;
}

void dedupByField<A, B>(_:field:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v53 = v4;
  v5 = *(*v4 + *MEMORY[0x1E69E77B0] + 8);
  OUTLINED_FUNCTION_2_0();
  v50 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v48 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v41 - v12;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v17 = *v16;
  OUTLINED_FUNCTION_2_0();
  v19 = v18;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v46 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v41 - v27;
  v54 = sub_1BF9B4938();
  v58 = v54;
  v51 = sub_1BF9B4948();
  v57 = v51;
  OUTLINED_FUNCTION_16_5();
  v29 = sub_1BF9B4D18();
  v56 = v29;
  OUTLINED_FUNCTION_16_5();
  if (v29 == sub_1BF9B4DD8())
  {
LABEL_12:

    OUTLINED_FUNCTION_64();
    return;
  }

  v42 = v21;
  v43 = v1;
  v54 = (v19 + 16);
  v44 = (v50 + 2);
  v45 = v28;
  ++v50;
  v51 = (v19 + 32);
  v49 = (v19 + 8);
  v52 = v26;
  while (1)
  {
    OUTLINED_FUNCTION_16_5();
    v30 = sub_1BF9B4D98();
    sub_1BF9B4D38();
    if ((v30 & 1) == 0)
    {
      break;
    }

    v31 = *(v19 + 16);
    v31(v28, v3 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v29, v17);
LABEL_5:
    sub_1BF9B4DE8();
    (*v51)(v26, v28, v17);
    swift_getAtKeyPath();
    if (sub_1BF9B4FA8())
    {
      (*v50)(v15, v5);
    }

    else
    {
      OUTLINED_FUNCTION_17_7();
      v32(v48, v15, v5);
      sub_1BF9B4FB8();
      v33 = v3;
      v34 = v19;
      v35 = v15;
      v36 = v47;
      sub_1BF9B4F98();
      v37 = *v50;
      v38 = v36;
      v15 = v35;
      v19 = v34;
      v3 = v33;
      (*v50)(v38, v5);
      v31(v46, v52, v17);
      sub_1BF9B4E08();
      v28 = v45;
      sub_1BF9B4DC8();
      v37(v15, v5);
      v26 = v52;
    }

    (*v49)(v26, v17);
    OUTLINED_FUNCTION_16_5();
    v39 = sub_1BF9B4DD8();
    v29 = v56;
    if (v56 == v39)
    {
      goto LABEL_12;
    }
  }

  v40 = sub_1BF9B52C8();
  if (v42 == 8)
  {
    v55 = v40;
    v31 = *v54;
    (*v54)(v28, &v55, v17);
    swift_unknownObjectRelease();
    goto LABEL_5;
  }

  __break(1u);
}

void mergeDicts<A, B>(_:)()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_72(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v70 - v10;
  OUTLINED_FUNCTION_2_0();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_17();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_2_0();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_17();
  v85 = v25 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_1BF9B50F8();
  v26 = OUTLINED_FUNCTION_1(v84);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_11();
  v83 = v31 - v32;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v33);
  v82 = &v70 - v34;
  v92 = sub_1BF9B4928();
  v35 = sub_1BF9B49D8();
  v36 = sub_1BF9B4D18();
  v91 = v36;
  if (v36 == sub_1BF9B4DD8())
  {
    goto LABEL_30;
  }

  v90 = v1;
  v71 = v5 + 32;
  v88 = (v12 + 32);
  v89 = (v20 + 32);
  v73 = v12 + 16;
  v74 = v20 + 16;
  v79 = v28 + 32;
  v81 = v3;
  v70 = v5;
  v75 = v20;
  v76 = v12;
  v37 = v18;
  v38 = TupleTypeMetadata2;
  v80 = v35;
  while (2)
  {
    v39 = sub_1BF9B4D98();
    sub_1BF9B4D38();
    if (v39)
    {
      v40 = *(v71 + 8 * v36);
    }

    else
    {
      v40 = sub_1BF9B52C8();
    }

    v41 = v85;
    sub_1BF9B4DE8();
    v42 = v40;
    if ((v40 & 0xC000000000000001) != 0)
    {
      v43 = sub_1BF9B53D8();
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v42 = v43 | 0x8000000000000000;
    }

    else
    {
      v47 = -1 << *(v40 + 32);
      v44 = v40 + 64;
      v45 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v46 = v49 & *(v40 + 64);
    }

    v50 = 0;
    v72 = v45;
    v51 = (v45 + 64) >> 6;
    for (i = v42; ; v42 = i)
    {
      v87 = v50;
      if ((v42 & 0x8000000000000000) == 0)
      {
        v52 = v46;
        v53 = v50;
        if (!v46)
        {
          while (1)
          {
            v53 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              break;
            }

            if (v53 >= v51)
            {
              v54 = 0;
              v60 = 1;
              goto LABEL_23;
            }

            v52 = *(v44 + 8 * v53);
            ++v50;
            if (v52)
            {
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

LABEL_17:
        v54 = (v52 - 1) & v52;
        v55 = __clz(__rbit64(v52)) | (v53 << 6);
        v56 = v42;
        (*(v75 + 16))(v41, *(v42 + 48) + *(v75 + 72) * v55, v3);
        v57 = v90;
        (*(v76 + 16))(v37, *(v56 + 56) + *(v76 + 72) * v55, v90);
        goto LABEL_20;
      }

      if (sub_1BF9B53E8())
      {
        sub_1BF9B56B8();
        swift_unknownObjectRelease();
        v57 = v90;
        sub_1BF9B56B8();
        swift_unknownObjectRelease();
        v53 = v50;
        v54 = v46;
LABEL_20:
        v58 = *(TupleTypeMetadata2 + 48);
        v59 = v83;
        v38 = TupleTypeMetadata2;
        (*v89)();
        (*v88)((v59 + v58), v37, v57);
        v60 = 0;
        v50 = v53;
        goto LABEL_24;
      }

      v60 = 1;
      v54 = v46;
LABEL_23:
      v59 = v83;
LABEL_24:
      __swift_storeEnumTagSinglePayload(v59, v60, 1, v38);
      OUTLINED_FUNCTION_17_7();
      v61 = v82;
      v62(v82, v59, v84);
      if (__swift_getEnumTagSinglePayload(v61, 1, v38) == 1)
      {
        break;
      }

      v63 = *(v38 + 48);
      v41 = v85;
      v64 = v61;
      v65 = v61;
      v3 = v81;
      (*v89)(v85, v64, v81);
      v66 = v65 + v63;
      v67 = v78;
      v68 = v90;
      (*v88)(v78, v66, v90);
      __swift_storeEnumTagSinglePayload(v67, 0, 1, v68);
      sub_1BF9B4A08();
      v46 = v54;
    }

    sub_1BF90D2E8();
    v69 = sub_1BF9B4DD8();
    v36 = v91;
    v3 = v81;
    if (v91 != v69)
    {
      continue;
    }

    break;
  }

LABEL_30:
  OUTLINED_FUNCTION_64();
}

BOOL isEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24) && !*(a2 + 24))
  {
    return 1;
  }

  sub_1BF8EE390(a1, &v10, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!*(&v11 + 1))
  {
    sub_1BF90DB60(&v10, &qword_1EBDE9208, &unk_1BF9C2A50);
    v13 = 0u;
    v14 = 0u;
    v15 = 0;
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v15 = 0;
    v13 = 0u;
    v14 = 0u;
    goto LABEL_12;
  }

  if (!*(&v14 + 1))
  {
LABEL_12:
    sub_1BF90DB60(&v13, &qword_1EBDE9210, &qword_1BF9BD040);
    goto LABEL_13;
  }

  sub_1BF8C2C9C(&v13, v16);
  sub_1BF8EE390(a2, v9, &qword_1EBDE9208, &unk_1BF9C2A50);
  if (!v9[3])
  {
    sub_1BF90DB60(v9, &qword_1EBDE9208, &unk_1BF9C2A50);
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    goto LABEL_22;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    v12 = 0;
    v10 = 0u;
    v11 = 0u;
    goto LABEL_22;
  }

  if (!*(&v11 + 1))
  {
LABEL_22:
    sub_1BF90DB60(&v10, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_destroy_boxed_opaque_existential_1(v16);
LABEL_13:
    sub_1BF8EE390(a1, v16, &qword_1EBDE9208, &unk_1BF9C2A50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9208, &unk_1BF9C2A50);
    if (OUTLINED_FUNCTION_12_6())
    {
      v6 = v13;
      sub_1BF8EE390(a2, v16, &qword_1EBDE9208, &unk_1BF9C2A50);
      if (OUTLINED_FUNCTION_12_6())
      {
        v7 = v13;
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v6 == v7;
      }

      swift_unknownObjectRelease();
    }

    return 0;
  }

  sub_1BF8C2C9C(&v10, &v13);
  __swift_project_boxed_opaque_existential_1(v16, v16[3]);
  sub_1BF90AB90();
  v5 = v4;
  __swift_destroy_boxed_opaque_existential_1(&v13);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v5;
}

void sub_1BF90AB90()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v30[1] = v2;
  v4 = v3;
  v6 = v5;
  v7 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v30 - v13;
  OUTLINED_FUNCTION_2_0();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_11();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = v30 - v24;
  sub_1BF8D2004(v6, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v14, 0, 1, v4);
    (*(v16 + 32))(v25, v14, v4);
    v26 = v1;
    v27 = sub_1BF9B4A88();
    (*(v16 + 8))(v25, v4);
    if (v27)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v14, 1, 1, v4);
    (*(v9 + 8))(v14, v7);
    v26 = v1;
  }

  sub_1BF8D2004(v6, v31);
  sub_1BF8BE93C(0, &qword_1EDBF0548, 0x1E696AEC0);
  if (swift_dynamicCast())
  {
    v28 = v30[2];
    (*(v16 + 16))(v22, v26, v4);
    if (swift_dynamicCast())
    {
      v29 = v31[0];
      sub_1BF8BE93C(0, &qword_1EDBF0550, 0x1E69E58C0);
      sub_1BF9B50B8();
    }

    else
    {
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90AE78@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BF8C187C(a1, v14);
  sub_1BF8C187C(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (OUTLINED_FUNCTION_21_5())
  {
    sub_1BF8C2C9C(&v7, &v11);
    v3 = v12;
    v4 = v13;
    __swift_project_boxed_opaque_existential_1(&v11, v12);
    (*(v4 + 8))(&v7, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1BF8C192C(&v7, v14);
    __swift_destroy_boxed_opaque_existential_1(&v11);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1BF90DB60(&v7, &qword_1EBDE9240, &unk_1BF9C1A70);
  }

  sub_1BF8C187C(v14, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  if (OUTLINED_FUNCTION_21_5())
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    sub_1BF8C2C9C(&v7, &v11);
    return sub_1BF8C2C9C(&v11, a2);
  }

  else
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_1BF90DB60(&v7, &qword_1EBDE9210, &qword_1BF9BD040);
    __swift_project_boxed_opaque_existential_1(v14, v15);
    v6 = sub_1BF9B56C8();
    a2[3] = &type metadata for ReferenceEquatable;
    a2[4] = sub_1BF90D864();
    *a2 = v6;
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }
}

uint64_t static Dictionary<>.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  OUTLINED_FUNCTION_9_5();
  v0 = sub_1BF9B49A8();
  OUTLINED_FUNCTION_9_5();
  v1 = sub_1BF9B49A8();
  if (v0 == v1)
  {
    v2 = MEMORY[0x1EEE9AC00](v1);
    MEMORY[0x1EEE9AC00](v2);
    OUTLINED_FUNCTION_9_5();
    sub_1BF9B49D8();
    OUTLINED_FUNCTION_4_9();
    v3 = sub_1BF9B4C78();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1BF90B15C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9218, &qword_1BF9BD048);
  sub_1BF9B49F8();
  if (v4)
  {
    sub_1BF8C2C9C(&v3, v5);
    __swift_project_boxed_opaque_existential_1(v5, v5[3]);
    sub_1BF90AB90();
    v1 = v0;
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    sub_1BF90DB60(&v3, &qword_1EBDE9210, &qword_1BF9BD040);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1BF90B240(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9218, &qword_1BF9BD048);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_1BF90B2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v8[3] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v8);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a2);
  sub_1BF90B3A4(v8, a3);
  return __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1BF90B3A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1BF8C187C(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9238, &unk_1BF9BD1F0);
  if (swift_dynamicCast())
  {
    sub_1BF8C2C9C(v7, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    (*(v5 + 8))(v4, v5);
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1BF90DB60(v7, &qword_1EBDE9240, &unk_1BF9C1A70);
    return sub_1BF8C187C(a1, a2);
  }
}

double sub_1BF90B53C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v12[3] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v12);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a2);
  sub_1BF90AE78(v12, v13);
  __swift_destroy_boxed_opaque_existential_1(v12);
  v7 = v14;
  if (v14)
  {
    v8 = v15;
    v9 = __swift_project_boxed_opaque_existential_1(v13, v14);
    *(a3 + 24) = v7;
    *(a3 + 32) = v8;
    v10 = __swift_allocate_boxed_opaque_existential_1Tm(a3);
    (*(*(v7 - 8) + 16))(v10, v9, v7);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_1BF90DB60(v13, &qword_1EBDE9210, &qword_1BF9BD040);
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t ReferenceEquatable.getRoot()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return swift_unknownObjectRetain();
}

void *Transformer.asyncTransform.getter(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_1(a1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  v8 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = *(a1 + 16);
  (*(v4 + 32))(v9 + v8, v7, a1);
  return &unk_1BF9BD060;
}

uint64_t sub_1BF90B7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BF90B7F0, 0, 0);
}

uint64_t sub_1BF90B7F0()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  sub_1BF9B45B8();
  v6 = sub_1BF9B45A8();
  v6(v3);

  OUTLINED_FUNCTION_77();

  return v7();
}

uint64_t SiriSuggestions.AsyncTransformer.asyncTransform.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriSuggestions.AsyncTransformer.init(asyncTransform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void (*SiriSuggestions.Transformer<>.transform.getter(uint64_t a1, uint64_t a2))(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_1(a1);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v7 + 16))(&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  (*(v7 + 32))(v11 + v10, &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BF90D54C;
}

void sub_1BF90BA18(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v31 = a5;
  v40 = a4;
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v31 - v13;
  v33 = &v31 - v13;
  v15 = *a1;
  v36 = *(a1 + 8);
  v37 = v15;
  v35 = *(a1 + 16);
  v34 = *(a1 + 24);
  v16 = swift_allocObject();
  *(v16 + 32) = 0u;
  *(v16 + 16) = 0u;
  *(v16 + 48) = -1;
  v32 = dispatch_semaphore_create(0);
  v17 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v14, 1, 1, v17);
  (*(v8 + 16))(v10, a2, a3);
  v18 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v19 = (v18 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 + v9 + 39) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v40;
  *(v21 + 4) = a3;
  *(v21 + 5) = v22;
  *(v21 + 6) = v16;
  (*(v8 + 32))(&v21[v18], v10, a3);
  v23 = &v21[v19];
  v24 = v36;
  v25 = v37;
  *v23 = v37;
  *(v23 + 1) = v24;
  v26 = v35;
  *(v23 + 2) = v35;
  LOBYTE(v19) = v34;
  v23[24] = v34;
  v27 = v32;
  *&v21[v20] = v32;

  sub_1BF90DA94(v25, v24, v26, v19);
  v28 = v27;
  sub_1BF90C1F4(0, 0, v33, &unk_1BF9BD210, v21);

  sub_1BF9B5088();
  swift_beginAccess();
  sub_1BF8EE390(v16 + 16, v38, &qword_1EBDE9250, &qword_1BF9BD218);
  if (v39 == 255)
  {
    sub_1BF90DB60(v38, &qword_1EBDE9250, &qword_1BF9BD218);
    sub_1BF90DB0C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {

    v29 = v38[1];
    v30 = v31;
    *v31 = v38[0];
    v30[1] = v29;
    *(v30 + 32) = v39;
  }
}

uint64_t sub_1BF90BD4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v15;
  *(v8 + 120) = v14;
  *(v8 + 49) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 80) = a4;
  v9 = type metadata accessor for SiriSuggestions.Intent(0);
  *(v8 + 144) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BF90BE04, 0, 0);
}

uint64_t sub_1BF90BE04()
{
  v1 = *(v0 + 49);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = (*(*(v0 + 136) + 24))(*(v0 + 128));
  *(v0 + 160) = v5;
  if (v1)
  {
    v7 = *(v0 + 144);
    v6 = *(v0 + 152);
    v8 = *(v0 + 104);
    v9 = *(v0 + 112);
    *v6 = v3;
    v6[1] = v8;
    v6[2] = v9;
    type metadata accessor for SiriSuggestions.AppIntent(0);
    v10 = v3;

    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v11 = *(v0 + 144);
    **(v0 + 152) = v3;
    swift_storeEnumTagMultiPayload();
    v12 = v3;
  }

  v17 = (v4 + *v4);
  v13 = v4[1];
  v14 = swift_task_alloc();
  *(v0 + 168) = v14;
  *v14 = v0;
  v14[1] = sub_1BF90BF9C;
  v15 = *(v0 + 152);

  return v17(v0 + 16, v15);
}

uint64_t sub_1BF90BF9C()
{
  OUTLINED_FUNCTION_65();
  v2 = *v1;
  v3 = *(*v1 + 168);
  v4 = *v1;
  *(*v1 + 176) = v0;

  v5 = *(v2 + 160);
  v6 = *(v2 + 152);

  sub_1BF90DBB4(v6);
  if (v0)
  {
    v7 = sub_1BF90C17C;
  }

  else
  {
    v7 = sub_1BF90C0E8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1BF90C0E8()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[10];
  swift_beginAccess();
  sub_1BF90DC10((v0 + 2), v3 + 16);
  sub_1BF9B5098();

  OUTLINED_FUNCTION_77();

  return v4();
}

uint64_t sub_1BF90C17C()
{
  OUTLINED_FUNCTION_65();
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[15];
  sub_1BF9B5098();
  swift_willThrow();

  OUTLINED_FUNCTION_77();
  v5 = v0[22];

  return v4();
}

uint64_t sub_1BF90C1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v23 - v10;
  sub_1BF8EE390(a3, v23 - v10, &qword_1EBDE8E28, &qword_1BF9BD200);
  v12 = sub_1BF9B4EB8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1BF90DB60(v11, &qword_1EBDE8E28, &qword_1BF9BD200);
  }

  else
  {
    sub_1BF9B4EA8();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  v14 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BF9B4E28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BF9B4B18() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1BF90DB60(a3, &qword_1EBDE8E28, &qword_1BF9BD200);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF90DB60(a3, &qword_1EBDE8E28, &qword_1BF9BD200);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

void Array.appendIfNotNil(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_65_0();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = *(v24 + 16);
  v26 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1(v26);
  v28 = v27;
  v30 = *(v29 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  OUTLINED_FUNCTION_2_0();
  v35 = v34;
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_11();
  v41 = v39 - v40;
  MEMORY[0x1EEE9AC00](v42);
  v44 = &a9 - v43;
  (*(v28 + 16))(v33, v23, v26);
  if (__swift_getEnumTagSinglePayload(v33, 1, v25) == 1)
  {
    (*(v28 + 8))(v33, v26);
  }

  else
  {
    (*(v35 + 32))(v44, v33, v25);
    (*(v35 + 16))(v41, v44, v25);
    sub_1BF9B4DC8();
    (*(v35 + 8))(v44, v25);
  }

  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90C68C(unint64_t a1)
{
  v2 = *(v1 + 16);
  if (v2 > 0.0)
  {
    v3 = v2 * 1000000000.0;
    if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v3 > -1.0)
    {
      if (v3 < 1.84467441e19)
      {
        v4 = v3;
        v5 = *(MEMORY[0x1E69E86C8] + 4);
        v6 = swift_task_alloc();
        *(v1 + 24) = v6;
        *v6 = v1;
        v6[1] = sub_1BF90C7A8;
        a1 = v4;

        return MEMORY[0x1EEE6DA60](a1);
      }

LABEL_13:
      __break(1u);
      return MEMORY[0x1EEE6DA60](a1);
    }

    __break(1u);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_77();

  return v7();
}

uint64_t sub_1BF90C7A8()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  OUTLINED_FUNCTION_77();

  return v2();
}

void sub_1BF90C898()
{
  OUTLINED_FUNCTION_65_0();
  v1 = v0;
  v79 = v2;
  OUTLINED_FUNCTION_20_6();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_2_0();
  v81 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_11();
  v74 = v9 - v10;
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  v82 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_2_0();
  v80 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_11();
  v75 = (v17 - v18);
  OUTLINED_FUNCTION_10_8();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = sub_1BF9B44C8();
  v23 = OUTLINED_FUNCTION_1(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_11();
  v30 = (v28 - v29);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v66 - v32;
  sub_1BF9B44B8();
  OUTLINED_FUNCTION_19_6();
  v35 = (v1 + *(v34 + 88));
  os_unfair_lock_lock(v35);
  v73 = *(sub_1BF9B4678() + 28);
  sub_1BF90CD8C(v35 + v73, v21);
  v72 = 0;
  v36 = v4;
  os_unfair_lock_unlock(v35);
  OUTLINED_FUNCTION_19_6();
  v38 = (v1 + *(v37 + 96));
  os_unfair_lock_lock(v38);
  v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  v76 = v25;
  v77 = v22;
  v40 = *(v25 + 16);
  v70 = v39;
  v71 = v40;
  v41 = v30;
  v42 = v30;
  v43 = v75;
  v44 = v22;
  v45 = v80;
  v40(v42, v38 + v39, v44);
  os_unfair_lock_unlock(v38);
  v46 = *(v45 + 16);
  v78 = v21;
  v47 = v21;
  v48 = v82;
  v46(v43, v47, v82);
  if (__swift_getEnumTagSinglePayload(v43, 1, v36) == 1)
  {
    v67 = v41;
    v69 = v33;
    (*(v45 + 8))(v43, v48);
LABEL_6:
    OUTLINED_FUNCTION_19_6();
    v57 = v1 + *(v56 + 104);
    v58 = *(v57 + 8);
    v59 = v74;
    (*v57)();
    os_unfair_lock_lock(v35);
    v60 = v36;
    sub_1BF90CDFC(v35 + v73, v59, v36);
    os_unfair_lock_unlock(v35);
    os_unfair_lock_lock(v38);
    v61 = v77;
    v62 = *(v76 + 8);
    v63 = v70;
    v62(v38 + v70, v77);
    v64 = v38 + v63;
    v65 = v69;
    v71(v64, v69, v61);
    os_unfair_lock_unlock(v38);
    v62(v67, v61);
    (*(v45 + 8))(v78, v48);
    v62(v65, v61);
    (*(v81 + 32))(v79, v59, v60);
    goto LABEL_7;
  }

  v49 = v68;
  v75 = *(v81 + 32);
  v75(v68, v43, v36);
  sub_1BF9B4488();
  OUTLINED_FUNCTION_19_6();
  v51 = v33;
  if (v52 >= *(v1 + *(v50 + 112)))
  {
    v67 = v41;
    v69 = v33;
    (*(v81 + 8))(v49, v36);
    v48 = v82;
    v45 = v80;
    goto LABEL_6;
  }

  v53 = *(v76 + 8);
  v54 = v41;
  v55 = v77;
  v53(v54, v77);
  (*(v80 + 8))(v78, v82);
  v53(v51, v55);
  v75(v79, v49, v36);
LABEL_7:
  OUTLINED_FUNCTION_64();
}

uint64_t sub_1BF90CDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BF9B50F8();
  (*(*(v6 - 8) + 8))(a1, v6);
  (*(*(a3 - 8) + 16))(a1, a2, a3);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, a3);
}

uint64_t TTLCache.__allocating_init(wrappedValue:ttl:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  TTLCache.init(wrappedValue:ttl:)(a1, a2, a3);
  return v9;
}

uint64_t *TTLCache.init(wrappedValue:ttl:)(uint64_t a1, uint64_t a2, double a3)
{
  v40 = a2;
  v6 = *v3;
  v7 = sub_1BF9B44C8();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_17();
  v15 = v14 - v13;
  v16 = *(v6 + 80);
  v17 = sub_1BF9B50F8();
  OUTLINED_FUNCTION_1(v17);
  v19 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v39 - v23;
  v25 = v3 + *(v6 + 88);
  __swift_storeEnumTagSinglePayload(&v39 - v23, 1, 1, v16);
  *v25 = 0;
  v26 = *(sub_1BF9B4678() + 28);
  v27 = sub_1BF9B4688();
  OUTLINED_FUNCTION_72(v27);
  bzero(&v25[v26], *(v28 + 64));
  (*(v19 + 32))(&v25[v26], v24, v17);
  OUTLINED_FUNCTION_20_6();
  v30 = v3 + *(v29 + 96);
  sub_1BF9B44B8();
  *v30 = 0;
  v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9230, &qword_1BF9BD078);
  OUTLINED_FUNCTION_72(v32);
  bzero(&v30[v31], *(v33 + 64));
  (*(v10 + 32))(&v30[v31], v15, v7);
  OUTLINED_FUNCTION_20_6();
  v35 = (v3 + *(v34 + 104));
  v36 = v40;
  *v35 = a1;
  v35[1] = v36;
  OUTLINED_FUNCTION_20_6();
  *(v3 + *(v37 + 112)) = a3;
  return v3;
}

uint64_t TTLCache.deinit()
{
  v1 = v0;
  v2 = v0 + *(*v0 + 88);
  v3 = *(*v0 + 80);
  sub_1BF9B50F8();
  v4 = *(sub_1BF9B4678() + 28);
  v5 = sub_1BF9B4688();
  sub_1BF90D59C(v5);
  v6 = *(*v0 + 96);
  v7 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9228, &qword_1BF9BD070) + 28);
  v8 = sub_1BF9B44C8();
  OUTLINED_FUNCTION_16_3(v8);
  (*(v9 + 8))(v7 + v6);
  v10 = *(v1 + *(*v1 + 104) + 8);

  return v1;
}

uint64_t TTLCache.__deallocating_deinit()
{
  TTLCache.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1BF90D2F0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_1BF90B15C();
}

uint64_t sub_1BF90D2FC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 40);
  return sub_1BF90B240(a1, *(v1 + 32)) & 1;
}

uint64_t sub_1BF90D320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1BF90B2F8(a1, v2[3], a2);
}

double sub_1BF90D340@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[4];
  return sub_1BF90B53C(a1, v2[3], a2);
}

uint64_t sub_1BF90D360(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = sub_1BF9B45B8();
  OUTLINED_FUNCTION_72(v8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BF90D45C;

  return sub_1BF90B7C8(a1, a2, v2 + v10, v6, v7);
}

uint64_t sub_1BF90D45C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  OUTLINED_FUNCTION_77();

  return v2();
}

uint64_t sub_1BF90D5AC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF90D5EC(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF90D64C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1BF90D6AC(uint64_t a1)
{
  v1 = *(a1 + 80);
  sub_1BF9B50F8();
  v2 = sub_1BF9B4678();
  if (v3 <= 0x3F)
  {
    v6 = *(v2 - 8) + 64;
    sub_1BF90D80C();
    if (v5 <= 0x3F)
    {
      v7 = *(v4 - 8) + 64;
      swift_initClassMetadata2();
    }
  }
}

void sub_1BF90D80C()
{
  if (!qword_1EDBF54D0)
  {
    sub_1BF9B44C8();
    v0 = sub_1BF9B4678();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBF54D0);
    }
  }
}

unint64_t sub_1BF90D864()
{
  result = qword_1EBDE9248;
  if (!qword_1EBDE9248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9248);
  }

  return result;
}

void sub_1BF90D8B8(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
  }

  else if (!a4)
  {
  }
}

uint64_t sub_1BF90D930(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v20 = v1[5];
  OUTLINED_FUNCTION_2_0();
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v8 = v6 + *(v7 + 64);
  v18 = v1[3];
  v19 = v1[2];
  v9 = v1[6];
  v10 = v1 + ((v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 1);
  v13 = *(v10 + 2);
  v14 = v10[24];
  v15 = *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8));
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1BF90DDB8;

  return sub_1BF90BD4C(a1, v19, v18, v9, v1 + v6, v11, v12, v13);
}

id sub_1BF90DA94(id result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2 || a4 == 1)
  {
    v4 = result;
  }

  else if (!a4)
  {

    return result;
  }

  return result;
}

unint64_t sub_1BF90DB0C()
{
  result = qword_1EBDE9258;
  if (!qword_1EBDE9258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9258);
  }

  return result;
}

uint64_t sub_1BF90DB60(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_16_3(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_1BF90DBB4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSuggestions.Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF90DC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9250, &qword_1BF9BD218);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for TranformerError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1BF90DD60()
{
  result = qword_1EBDE9260;
  if (!qword_1EBDE9260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9260);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_8()
{
}

uint64_t OUTLINED_FUNCTION_21_5()
{

  return swift_dynamicCast();
}

SiriSuggestionsKit::AppBundleIdentifier_optional __swiftcall AppBundleIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5718();

  v5 = 0;
  v6 = 14;
  switch(v3)
  {
    case 0:
      goto LABEL_25;
    case 1:
      v5 = 1;
      goto LABEL_25;
    case 2:
      v5 = 2;
      goto LABEL_25;
    case 3:
      v5 = 3;
      goto LABEL_25;
    case 4:
      v5 = 4;
      goto LABEL_25;
    case 5:
      v5 = 5;
      goto LABEL_25;
    case 6:
      v5 = 6;
      goto LABEL_25;
    case 7:
      v5 = 7;
      goto LABEL_25;
    case 8:
      v5 = 8;
      goto LABEL_25;
    case 9:
      v5 = 9;
      goto LABEL_25;
    case 10:
      v5 = 10;
      goto LABEL_25;
    case 11:
      v5 = 11;
      goto LABEL_25;
    case 12:
      v5 = 12;
      goto LABEL_25;
    case 13:
      v5 = 13;
LABEL_25:
      v6 = v5;
      break;
    case 14:
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
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    default:
      v6 = 32;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t AppBundleIdentifier.rawValue.getter()
{
  result = 0x6C7070612E6D6F63;
  switch(*v0)
  {
    case 1:
    case 0xE:
    case 0x16:
    case 0x1B:
      return 0xD000000000000013;
    case 2:
      return 0xD000000000000010;
    case 3:
    case 0x12:
    case 0x13:
    case 0x18:
      v2 = 5;
      goto LABEL_14;
    case 4:
      v2 = 11;
      goto LABEL_14;
    case 5:
    case 0xB:
    case 0x15:
      return 0xD000000000000012;
    case 6:
    case 0x17:
      return 0xD000000000000016;
    case 7:
      return 0xD000000000000010;
    case 8:
    case 0xA:
    case 0x1F:
      return 0xD000000000000011;
    case 9:
      return 0xD000000000000010;
    case 0xC:
    case 0x1E:
      return 0xD000000000000014;
    case 0xD:
    case 0xF:
    case 0x11:
    case 0x19:
    case 0x1C:
    case 0x1D:
      return result;
    case 0x10:
      v2 = 10;
      goto LABEL_14;
    case 0x14:
      v2 = 9;
LABEL_14:
      result = v2 | 0xD000000000000010;
      break;
    case 0x1A:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1BF90E22C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BF8CA65C();
}

unint64_t sub_1BF90E25C@<X0>(unint64_t *a1@<X8>)
{
  result = AppBundleIdentifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1BF90E284()
{
  result = sub_1BF9B4988();
  off_1EDBF1EB0 = result;
  return result;
}

uint64_t sub_1BF90E2E4()
{
  if (qword_1EDBF1EA8 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v0 = off_1EDBF1EB0;
    v1 = *(off_1EDBF1EB0 + 2);
    v2 = MEMORY[0x1E69E7CC0];
    if (!v1)
    {
      break;
    }

    v33 = MEMORY[0x1E69E7CC0];

    sub_1BF8D05A8();
    v2 = v33;
    v5 = sub_1BF95FA38(v0);
    v6 = 0;
    v7 = (v0 + 16);
    v26 = v3;
    v27 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v0 + 32))
    {
      v8 = v5 >> 6;
      if ((*&v7[8 * (v5 >> 6)] & (1 << v5)) == 0)
      {
        goto LABEL_24;
      }

      if (v0[9] != v3)
      {
        goto LABEL_25;
      }

      v29 = v6;
      v30 = v3;
      v28 = v4;
      v9 = (*(v0 + 6) + 16 * v5);
      v10 = *v9;
      v11 = v9[1];
      v12 = (*(v0 + 7) + 16 * v5);
      v13 = v12[1];
      v31 = *v12;
      v32 = v10;
      v14 = *(v33 + 16);
      v15 = *(v33 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_1BF8D05A8();
      }

      *(v33 + 16) = v14 + 1;
      v16 = (v33 + 32 * v14);
      v16[4] = v31;
      v16[5] = v13;
      v16[6] = v32;
      v16[7] = v11;
      v17 = 1 << *(v0 + 32);
      if (v5 >= v17)
      {
        goto LABEL_26;
      }

      v7 = (v0 + 16);
      v18 = *&v0[2 * v8 + 16];
      if ((v18 & (1 << v5)) == 0)
      {
        goto LABEL_27;
      }

      if (v0[9] != v30)
      {
        goto LABEL_28;
      }

      v19 = v18 & (-2 << (v5 & 0x3F));
      if (v19)
      {
        v17 = __clz(__rbit64(v19)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v8 << 6;
        v21 = v8 + 1;
        v22 = &v0[2 * v8 + 18];
        while (v21 < (v17 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            sub_1BF90E758(v5, v30, v28 & 1);
            v17 = __clz(__rbit64(v23)) + v20;
            goto LABEL_20;
          }
        }

        sub_1BF90E758(v5, v30, v28 & 1);
      }

LABEL_20:
      v4 = 0;
      v6 = v29 + 1;
      v5 = v17;
      v3 = v26;
      if (v29 + 1 == v27)
      {

        goto LABEL_22;
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
    swift_once();
  }

LABEL_22:
  result = sub_1BF978CB0(v2);
  qword_1EDBF1E98 = result;
  return result;
}

unint64_t sub_1BF90E5A0()
{
  result = qword_1EBDE9268;
  if (!qword_1EBDE9268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9268);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppBundleIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE1)
  {
    if (a2 + 31 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 31) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 32;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x20;
  v5 = v6 - 32;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AppBundleIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 31 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 31) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE0)
  {
    v6 = ((a2 - 225) >> 8) + 1;
    *result = a2 + 31;
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
          *result = a2 + 31;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BF90E758(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t OnInAppConnectionEvent.deliveryVehicle.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 32);
  *(a1 + 32) = v6;
  return sub_1BF8C0D00(v2, v3, v4, v5, v6);
}

uint64_t OnInAppConnectionEvent.inAppDetails.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  v6 = v1[10];
  v5 = v1[11];
  *a1 = v1[6];
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v6;
  a1[5] = v5;
}

unint64_t OnInAppConnectionEvent.description.getter()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[10];
  v6 = v0[11];

  sub_1BF9B5288();

  sub_1BF90F19C(v5);

  v7 = InAppDetailsKey.description.getter();
  v9 = v8;

  MEMORY[0x1BFB5DE90](v7, v9);

  return 0xD000000000000017;
}

__n128 OnInAppConnectionEvent.init(deliveryVehicle:receivedTS:inAppDetails:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v4 = *(a1 + 32);
  v5 = a2->n128_u64[0];
  v6 = a2->n128_u64[1];
  v7 = a2[2].n128_u64[0];
  v8 = a2[2].n128_u64[1];
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 32) = v4;
  *(a3 + 40) = a4;
  *(a3 + 48) = v5;
  *(a3 + 56) = v6;
  result = a2[1];
  *(a3 + 64) = result;
  *(a3 + 80) = v7;
  *(a3 + 88) = v8;
  return result;
}

uint64_t sub_1BF90E94C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEF656C6369686556;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6465766965636572 && a2 == 0xEA00000000005354;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7465447070416E69 && a2 == 0xEC000000736C6961)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF90EA70(char a1)
{
  if (!a1)
  {
    return 0x79726576696C6564;
  }

  if (a1 == 1)
  {
    return 0x6465766965636572;
  }

  return 0x7465447070416E69;
}

uint64_t sub_1BF90EAE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF90E94C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF90EB10(uint64_t a1)
{
  v2 = sub_1BF90F350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF90EB4C(uint64_t a1)
{
  v2 = sub_1BF90F350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OnInAppConnectionEvent.encode(to:)(void *a1)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9270, &qword_1BF9BD450);
  v3 = OUTLINED_FUNCTION_1(v37);
  v39 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v29 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 40);
  v14 = *(v1 + 48);
  v34 = *(v1 + 56);
  v35 = v14;
  v15 = *(v1 + 64);
  v32 = *(v1 + 72);
  v33 = v15;
  v16 = *(v1 + 80);
  v30 = *(v1 + 88);
  v31 = v16;
  v17 = a1[3];
  v36 = a1[4];
  v18 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1BF8C0D00(v9, v10, v11, v12, v18);
  sub_1BF90F350();
  sub_1BF9B5898();
  v40 = v9;
  v41 = v10;
  v19 = v37;
  v42 = v11;
  v43 = v12;
  v20 = v8;
  LOBYTE(v44) = v18;
  v46 = 0;
  sub_1BF8D4298();
  v21 = v38;
  sub_1BF9B5638();
  sub_1BF8C0CB8(v40, v41, v42, v43, v44);
  if (v21)
  {
    return (*(v39 + 8))(v8, v19);
  }

  v23 = v33;
  v24 = v34;
  v25 = v35;
  v26 = v31;
  v27 = v32;
  v28 = v30;
  LOBYTE(v40) = 1;
  sub_1BF9B5618();
  v40 = v25;
  v41 = v24;
  v42 = v23;
  v43 = v27;
  v44 = v26;
  v45 = v28;
  v46 = 2;
  sub_1BF90F3A4();

  sub_1BF9B5638();

  return (*(v39 + 8))(v20, v19);
}

uint64_t OnInAppConnectionEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9288, &qword_1BF9BD458);
  v6 = OUTLINED_FUNCTION_1(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF90F350();
  sub_1BF9B5868();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(__src[0]) = 0;
  sub_1BF8D4394();
  OUTLINED_FUNCTION_2_12();
  v10 = v27;
  v11 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  LOBYTE(v27) = 1;
  sub_1BF9B5538();
  v13 = v12;
  v39 = 2;
  sub_1BF90F3F8();
  OUTLINED_FUNCTION_2_12();
  v14 = OUTLINED_FUNCTION_60();
  v15(v14);
  v22 = v40;
  v21 = v41;
  v16 = v43;
  v20 = v42;
  v19 = v44;
  v18 = v45;
  __src[0] = v10;
  __src[1] = v11;
  __src[2] = v23;
  __src[3] = v24;
  LOBYTE(__src[4]) = v25;
  __src[5] = v13;
  __src[6] = v40;
  __src[7] = v41;
  __src[8] = v42;
  __src[9] = v43;
  __src[10] = v44;
  __src[11] = v45;
  memcpy(a2, __src, 0x60uLL);
  sub_1BF90F44C(__src, &v27);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v27 = v10;
  v28 = v11;
  v29 = v23;
  v30 = v24;
  v31 = v25;
  v32 = v13;
  v33 = v22;
  v34 = v21;
  v35 = v20;
  v36 = v16;
  v37 = v19;
  v38 = v18;
  return sub_1BF90F484(&v27);
}

uint64_t sub_1BF90F19C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B0, &qword_1BF9C9210);
  result = sub_1BF9B5458();
  v3 = 0;
  v30 = a1;
  v6 = *(a1 + 64);
  v5 = a1 + 64;
  v4 = v6;
  v7 = 1 << *(v5 - 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;
  v26 = result + 64;
  v27 = result;
  if ((v8 & v4) != 0)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_10:
      v14 = v11 | (v3 << 6);
      v15 = (*(v30 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_1BF8D7914(*(v30 + 56) + 48 * v14, v29);
      sub_1BF8D7914(v29, v28);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88E8, &qword_1BF9B7FF0);
      v18 = sub_1BF9B4B08();
      v20 = v19;
      __swift_destroy_boxed_opaque_existential_1(v29);
      result = v27;
      *(v26 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v27[6] + 16 * v14);
      *v21 = v16;
      v21[1] = v17;
      v22 = (v27[7] + 16 * v14);
      *v22 = v18;
      v22[1] = v20;
      v23 = v27[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      v27[2] = v25;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v10)
      {
        return result;
      }

      v13 = *(v5 + 8 * v3);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v9 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF90F350()
{
  result = qword_1EBDE9278;
  if (!qword_1EBDE9278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9278);
  }

  return result;
}

unint64_t sub_1BF90F3A4()
{
  result = qword_1EBDE9280;
  if (!qword_1EBDE9280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9280);
  }

  return result;
}

unint64_t sub_1BF90F3F8()
{
  result = qword_1EBDE9290;
  if (!qword_1EBDE9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9290);
  }

  return result;
}

unint64_t sub_1BF90F4B4(uint64_t a1)
{
  *(a1 + 8) = sub_1BF90F4E4();
  result = sub_1BF90F538();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BF90F4E4()
{
  result = qword_1EDBF2320;
  if (!qword_1EDBF2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF2320);
  }

  return result;
}

unint64_t sub_1BF90F538()
{
  result = qword_1EDBF2328[0];
  if (!qword_1EDBF2328[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBF2328);
  }

  return result;
}

uint64_t sub_1BF90F5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_1BF90F5FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of EventDispatcher.submit(event:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1BF8E8FFC;

  return v11(a1, a2, a3);
}

_BYTE *storeEnumTagSinglePayload for OnInAppConnectionEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF90F86C()
{
  result = qword_1EBDE9298;
  if (!qword_1EBDE9298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9298);
  }

  return result;
}

unint64_t sub_1BF90F8C4()
{
  result = qword_1EBDE92A0;
  if (!qword_1EBDE92A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92A0);
  }

  return result;
}

unint64_t sub_1BF90F91C()
{
  result = qword_1EBDE92A8;
  if (!qword_1EBDE92A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92A8);
  }

  return result;
}

uint64_t sub_1BF90F970()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4D0 = result;
  return result;
}

uint64_t sub_1BF90F99C()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4D8 = result;
  return result;
}

uint64_t sub_1BF90F9C4()
{
  result = sub_1BF9B4B58();
  qword_1EBDFB4E0 = result;
  return result;
}

uint64_t DialogSpeakableString.print.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DialogSpeakableString.speak.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SiriSuggestionsKit::DialogSpeakableString __swiftcall DialogSpeakableString.init(print:speak:)(Swift::String print, Swift::String_optional speak)
{
  object = print._object;
  countAndFlagsBits = print._countAndFlagsBits;
  v5 = v2;
  if (!speak.value._object)
  {

    OUTLINED_FUNCTION_4_10();
  }

  v5->value._countAndFlagsBits = countAndFlagsBits;
  v5->value._object = object;
  v5[1] = speak;
  result.speak = speak.value;
  result.print = print;
  return result;
}

SiriSuggestionsKit::DialogSpeakableString __swiftcall DialogSpeakableString.init(serializedValue:)(Swift::String serializedValue)
{
  object = serializedValue._object;
  countAndFlagsBits = serializedValue._countAndFlagsBits;
  v4 = v1;
  OUTLINED_FUNCTION_4_10();
  if (sub_1BF9B4C08())
  {
    OUTLINED_FUNCTION_4_10();
    if (sub_1BF9B4C18())
    {
      if (qword_1EBDE81A8 != -1)
      {
        swift_once();
      }

      v36 = v4;
      sub_1BF90FD84(qword_1EBDFB4D0, countAndFlagsBits, object);
      OUTLINED_FUNCTION_3_9();
      if (qword_1EBDE81B0 != -1)
      {
        swift_once();
      }

      v5 = sub_1BF90FF00(qword_1EBDFB4D8, object);
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v13 = v7 >> 14;
      object = 0x3A7374742FLL;
      while (1)
      {
        v4 = (v5 >> 14);
        if (v5 >> 14 >= v13)
        {
          countAndFlagsBits = MEMORY[0x1BFB5DE30](v6, v8, v10, v12);
          object = v24;

          v22 = countAndFlagsBits;
          v23 = object;
          v4 = v36;
          goto LABEL_12;
        }

        v14 = OUTLINED_FUNCTION_0_11();
        countAndFlagsBits = v15;
        v17 = sub_1BF91048C(0x3A7374742FLL, 0xE500000000000000, v14, v16);

        if (v17)
        {
          break;
        }

        v5 = sub_1BF9B5108();
      }

      if (v4 < v6 >> 14)
      {
        __break(1u);
      }

      else
      {

        v25 = OUTLINED_FUNCTION_0_11();
        v27 = v26;
        v29 = v28;
        v31 = v30;

        countAndFlagsBits = MEMORY[0x1BFB5DE30](v25, v27, v29, v31);
        object = v32;

        v10 = OUTLINED_FUNCTION_0_11();
        v8 = v33;

        v4 = v36;
        if (qword_1EBDE81B8 == -1)
        {
LABEL_16:
          v34 = sub_1BF90FE48(qword_1EBDFB4E0, v10, v8);
          v22 = MEMORY[0x1BFB5DE30](v34);
          v23 = v35;

          goto LABEL_12;
        }
      }

      swift_once();
      goto LABEL_16;
    }
  }

  v22 = countAndFlagsBits;
  v23 = object;
LABEL_12:
  *v4 = countAndFlagsBits;
  v4[1] = object;
  v4[2] = v22;
  v4[3] = v23;
  result.speak._object = v21;
  result.speak._countAndFlagsBits = v20;
  result.print._object = v19;
  result.print._countAndFlagsBits = v18;
  return result;
}

unint64_t sub_1BF90FD84(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v4 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v5 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v5 = 11;
    }

    v6 = v5 | (v4 << 16);
    OUTLINED_FUNCTION_4_10();
    result = sub_1BF9B4B78();
    if (v7)
    {
      result = v6;
    }

    if (4 * v4 >= result >> 14)
    {
      sub_1BF9B4C58();
      OUTLINED_FUNCTION_3_9();

      return a2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF90FE48(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF9B5118();
    if (v4)
    {
      result = a3;
    }

    if (a3 >> 14 >= result >> 14)
    {
      v5 = sub_1BF9B5148();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF90FF00(uint64_t result, unint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = sub_1BF9B5118();
    if (v3)
    {
      v4 = a2;
    }

    else
    {
      v4 = result;
    }

    if (v4 >> 14 >= a2 >> 14)
    {
      v5 = sub_1BF9B5148();

      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t DialogSpeakableString.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_2_13();
  sub_1BF9B5858();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    OUTLINED_FUNCTION_2_13();
    v6._countAndFlagsBits = sub_1BF9B56E8();
    DialogSpeakableString.init(serializedValue:)(v6);
    __swift_destroy_boxed_opaque_existential_1(v11);
    *a2 = v8;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t DialogSpeakableString.encode(to:)(void *a1)
{
  v6 = *v1;
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9B5888();
  DialogSpeakableString.toString.getter();
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_1BF9B56F8();

  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t DialogSpeakableString.toString.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0 == v1 && v0[1] == v2;
  if (v3 || (v4 = *v0, v5 = v0[1], v6 = v0[2], v7 = v0[3], (sub_1BF9B56D8() & 1) != 0))
  {
    v8 = OUTLINED_FUNCTION_1_11();
  }

  else
  {
    v10 = OUTLINED_FUNCTION_1_11();
    MEMORY[0x1BFB5DE90](v10);
    MEMORY[0x1BFB5DE90](0x3A7374742FLL, 0xE500000000000000);
    v8 = v1;
    v9 = v2;
  }

  MEMORY[0x1BFB5DE90](v8, v9);
  MEMORY[0x1BFB5DE90](93, 0xE100000000000000);
  return v12;
}

uint64_t static DialogSpeakableString.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BF9B56D8(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BF9B56D8();
    }
  }

  return result;
}

uint64_t DialogSpeakableString.toDialog(dialogProvider:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  sub_1BF8D2004(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92B8, &qword_1BF9BD710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92C0, &qword_1BF9BD718);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1(v15);
    if (qword_1EDBF0910 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF9B47C8();
    __swift_project_value_buffer(v8, qword_1EDBF0918);
    v9 = sub_1BF9B47A8();
    v10 = sub_1BF9B5038();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BF8B8000, v9, v10, "Mapping DialogSpeakableString to CAT instance for dialogging", v11, 2u);
      MEMORY[0x1BFB5F320](v11, -1, -1);
    }

    v16[0] = v5;
    v16[1] = v4;
    v16[2] = v7;
    v16[3] = v6;
    result = DialogSpeakableString.toString.getter();
    a2[3] = MEMORY[0x1E69E6158];
    *a2 = result;
    a2[1] = v13;
  }

  else
  {
    a2[3] = &type metadata for DialogSpeakableString;
    v14 = swift_allocObject();
    *a2 = v14;
    v14[2] = v5;
    v14[3] = v4;
    v14[4] = v7;
    v14[5] = v6;
  }

  return result;
}

uint64_t sub_1BF91048C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{

  v6 = a3;
  while ((v6 ^ a4) >= 0x4000)
  {
    v7 = sub_1BF9B5138();
    v9 = v8;
    v6 = sub_1BF9B5108();
    v10 = sub_1BF9B4B98();
    if (!v11)
    {

      return 1;
    }

    if (v7 == v10 && v11 == v9)
    {
    }

    else
    {
      v13 = sub_1BF9B56D8();

      if ((v13 & 1) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  sub_1BF9B4B98();
  v15 = v14;

  if (!v15)
  {
    return 1;
  }

LABEL_15:

  return 0;
}

SiriSuggestionsKit::SiriSuggestions::SuggestionRequestType_optional __swiftcall SiriSuggestions.SuggestionRequestType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriSuggestions.SuggestionRequestType.rawValue.getter()
{
  v1 = 0x5869726973;
  if (*v0 != 1)
  {
    v1 = 0x6E65746E49707061;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001CLL;
  }
}

unint64_t sub_1BF9106D0@<X0>(unint64_t *a1@<X8>)
{
  result = SiriSuggestions.SuggestionRequestType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BF9107AC()
{
  result = qword_1EBDE92C8;
  if (!qword_1EBDE92C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriSuggestions(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SiriSuggestions.SuggestionRequestType(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF9109A0()
{
  result = qword_1EDBF45A8;
  if (!qword_1EDBF45A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF45A8);
  }

  return result;
}

uint64_t DialogConfig.templateDirectory.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SiriSuggestionsKit::DialogConfig __swiftcall DialogConfig.init(catId:templateDirectory:)(Swift::String catId, Swift::String_optional templateDirectory)
{
  v2->value = catId;
  v2[1] = templateDirectory;
  result.templateDirectory = templateDirectory;
  result.catId = catId;
  return result;
}

uint64_t sub_1BF910A30(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449746163 && a2 == 0xE500000000000000;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001BF9CB540 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF910AFC(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x6449746163;
  }
}

uint64_t sub_1BF910B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF910A30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF910B7C(uint64_t a1)
{
  v2 = sub_1BF910D48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF910BB8(uint64_t a1)
{
  v2 = sub_1BF910D48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void DialogConfig.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92D0, &qword_1BF9BD980);
  OUTLINED_FUNCTION_1(v5);
  v15 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_11_0();
  v10 = *v0;
  v11 = v0[1];
  v13 = v0[3];
  v14 = v0[2];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF910D48();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF9B55B8();
  }

  (*(v15 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF910D48()
{
  result = qword_1EBDE92D8;
  if (!qword_1EBDE92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92D8);
  }

  return result;
}

void DialogConfig.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92E0, &qword_1BF9BD988);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  OUTLINED_FUNCTION_8();
  sub_1BF910D48();
  OUTLINED_FUNCTION_53();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_11_9();
    v13 = sub_1BF9B5518();
    v15 = v14;
    OUTLINED_FUNCTION_11_9();
    v16 = sub_1BF9B54D8();
    v18 = v17;
    v19 = *(v7 + 8);
    v21 = v16;
    v19(v12, v5);
    *v4 = v13;
    v4[1] = v15;
    v4[2] = v21;
    v4[3] = v18;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_37();
}

SiriSuggestionsKit::HintsDonotShowTreatmentType_optional __swiftcall HintsDonotShowTreatmentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HintsDonotShowTreatmentType.rawValue.getter()
{
  v1 = 0x6568744F776F6873;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F6853746F6E6F64;
  }
}

uint64_t sub_1BF911028(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1BF8CA0C0();
}

uint64_t sub_1BF911058@<X0>(uint64_t *a1@<X8>)
{
  result = HintsDonotShowTreatmentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1BF91115C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x80000001BF9CB820 == a2;
  if (v3 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001BF9CB840 == a2)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

unint64_t sub_1BF911230(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_1BF911268(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1BF9B57A8();
  a4(v8, v6);
  return sub_1BF9B57E8();
}

uint64_t sub_1BF9112BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF91115C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF9112E4(uint64_t a1)
{
  v2 = sub_1BF9114C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF911320(uint64_t a1)
{
  v2 = sub_1BF9114C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void EnableDisableExpInfo.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE92E8, &qword_1BF9BD990);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  v11 = *v0;
  v13 = v0[1];
  v12 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF9114C0();
  sub_1BF9B5898();
  sub_1BF911514();
  OUTLINED_FUNCTION_4_11();
  sub_1BF9B5638();
  if (!v1)
  {
    sub_1BF911568();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B5638();
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF9114C0()
{
  result = qword_1EBDE92F0;
  if (!qword_1EBDE92F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92F0);
  }

  return result;
}

unint64_t sub_1BF911514()
{
  result = qword_1EBDE92F8;
  if (!qword_1EBDE92F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE92F8);
  }

  return result;
}

unint64_t sub_1BF911568()
{
  result = qword_1EBDE9300;
  if (!qword_1EBDE9300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9300);
  }

  return result;
}

void EnableDisableExpInfo.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_39();
  a23 = v25;
  a24 = v26;
  v28 = v27;
  v30 = v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9308, &qword_1BF9BD998);
  OUTLINED_FUNCTION_1(v31);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  OUTLINED_FUNCTION_8();
  sub_1BF9114C0();
  sub_1BF9B5868();
  if (!v24)
  {
    a13 = 0;
    sub_1BF911740();
    OUTLINED_FUNCTION_21_6();
    v39 = a14;
    a11 = 1;
    sub_1BF911794();
    OUTLINED_FUNCTION_21_6();
    (*(v33 + 8))(v38, v31);
    v40 = a12;
    *v30 = v39;
    v30[1] = v40;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911740()
{
  result = qword_1EBDE9310;
  if (!qword_1EBDE9310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9310);
  }

  return result;
}

unint64_t sub_1BF911794()
{
  result = qword_1EBDE9318;
  if (!qword_1EBDE9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9318);
  }

  return result;
}

uint64_t SuggestionDetailsConfig.suggestionId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SuggestionDetailsConfig.dialogConfig.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1BF911868(v2, v3);
}

uint64_t sub_1BF911868(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1BF9118C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x80000001BF9CB860 == a2;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6F43676F6C616964 && a2 == 0xEC0000006769666ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BF9B56D8();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF9119E8(char a1)
{
  if (!a1)
  {
    return 0x6974736567677573;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6F43676F6C616964;
}

uint64_t sub_1BF911A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9118C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF911A84(uint64_t a1)
{
  v2 = sub_1BF911CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF911AC0(uint64_t a1)
{
  v2 = sub_1BF911CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void SuggestionDetailsConfig.encode(to:)()
{
  OUTLINED_FUNCTION_39();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9320, &qword_1BF9BD9A0);
  OUTLINED_FUNCTION_1(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_11_0();
  v11 = *v0;
  v12 = v0[1];
  v18 = *(v0 + 8);
  v16 = v0[4];
  v17 = v0[3];
  v14 = v0[6];
  v15 = v0[5];
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF911CCC();
  sub_1BF9B5898();
  sub_1BF9B55F8();
  if (!v1)
  {
    sub_1BF911D20();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B55E8();
    sub_1BF911868(v17, v16);
    sub_1BF911D74();
    OUTLINED_FUNCTION_4_11();
    sub_1BF9B55E8();
    sub_1BF911DC8(v17, v16);
  }

  (*(v7 + 8))(v2, v5);
  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911CCC()
{
  result = qword_1EBDE9328;
  if (!qword_1EBDE9328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9328);
  }

  return result;
}

unint64_t sub_1BF911D20()
{
  result = qword_1EBDE9330;
  if (!qword_1EBDE9330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9330);
  }

  return result;
}

unint64_t sub_1BF911D74()
{
  result = qword_1EBDE9338;
  if (!qword_1EBDE9338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9338);
  }

  return result;
}

uint64_t sub_1BF911DC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void SuggestionDetailsConfig.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9340, &qword_1BF9BD9A8);
  OUTLINED_FUNCTION_1(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8();
  sub_1BF911CCC();
  OUTLINED_FUNCTION_53();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    LOBYTE(v18) = 0;
    OUTLINED_FUNCTION_11_9();
    v9 = sub_1BF9B5518();
    v11 = v10;
    sub_1BF911FE4();
    OUTLINED_FUNCTION_12_7();
    sub_1BF912038();
    OUTLINED_FUNCTION_12_7();
    v12 = OUTLINED_FUNCTION_60();
    v13(v12);
    *v4 = v9;
    *(v4 + 8) = v11;
    *(v4 + 16) = v18;
    *(v4 + 24) = v18;
    *(v4 + 32) = v19;
    *(v4 + 40) = v20;
    *(v4 + 48) = v21;

    v14 = OUTLINED_FUNCTION_19_7();
    sub_1BF911868(v14, v15);
    __swift_destroy_boxed_opaque_existential_1(v2);

    v16 = OUTLINED_FUNCTION_19_7();
    sub_1BF911DC8(v16, v17);
  }

  OUTLINED_FUNCTION_37();
}

unint64_t sub_1BF911FE4()
{
  result = qword_1EBDE9348;
  if (!qword_1EBDE9348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9348);
  }

  return result;
}

unint64_t sub_1BF912038()
{
  result = qword_1EBDE9350;
  if (!qword_1EBDE9350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9350);
  }

  return result;
}

uint64_t OwnerConfig.ownerId.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriSuggestionsKit::OwnerConfig __swiftcall OwnerConfig.init(ownerId:suggestionDetailsConfigs:ownerAdopterConfigs:)(Swift::String ownerId, Swift::OpaquePointer suggestionDetailsConfigs, Swift::OpaquePointer ownerAdopterConfigs)
{
  *v3 = ownerId;
  *(v3 + 16) = ownerAdopterConfigs;
  *(v3 + 24) = suggestionDetailsConfigs;
  result.ownerId = ownerId;
  result.suggestionDetailsConfigs = ownerAdopterConfigs;
  result.ownerAdopterConfigs = suggestionDetailsConfigs;
  return result;
}

uint64_t AllOwnerConfigs.__allocating_init(ownerConfigs:)(uint64_t a1)
{
  OUTLINED_FUNCTION_10_3();
  v2 = swift_allocObject();
  AllOwnerConfigs.init(ownerConfigs:)(a1);
  return v2;
}

uint64_t AllOwnerConfigs.init(ownerConfigs:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BF9B44C8();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 16) = a1;
  sub_1BF9B44B8();
  sub_1BF9B4478();
  v13 = v12;
  (*(v7 + 8))(v11, v4);
  *(v2 + 24) = v13;
  return v2;
}

uint64_t AllOwnerConfigs.__allocating_init(ownerConfigs:creationTime:)(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t AllOwnerConfigs.init(ownerConfigs:creationTime:)(uint64_t a1, double a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t AllOwnerConfigs.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t AllOwnerConfigs.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_10_3();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

SiriSuggestionsKit::ProviderStatusForOwnerConfig_optional __swiftcall ProviderStatusForOwnerConfig.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF9B5488();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ProviderStatusForOwnerConfig.rawValue.getter()
{
  v1 = 0x7553646E416E6172;
  if (*v0 != 1)
  {
    v1 = 0x6146646E416E6172;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7552746F6E646964;
  }
}

uint64_t sub_1BF9123D4@<X0>(uint64_t *a1@<X8>)
{
  result = ProviderStatusForOwnerConfig.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OwnerConfigProvider.bundleLoaded(globalLifecyclecontainer:)()
{
  OUTLINED_FUNCTION_7();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[6] = v5;
  v6 = *(v2 + 16);
  v8 = sub_1BF9B4E28();
  v1[11] = v8;
  v1[12] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1BF912488, v8, v7);
}

uint64_t sub_1BF912488()
{
  OUTLINED_FUNCTION_6();
  v20 = v0;
  v1 = v0[10];
  (*(v0[9] + 40))(&v19, v0[8]);
  if (v19)
  {
    v2 = sub_1BF9B56D8();

    if ((v2 & 1) == 0)
    {
      v3 = v0[1];

      return v3();
    }
  }

  else
  {
  }

  if (qword_1EDBF57F0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF9B47C8();
  v0[13] = __swift_project_value_buffer(v5, qword_1EDBF57F8);
  v6 = sub_1BF9B47A8();
  v7 = sub_1BF9B5038();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1BF8B8000, v6, v7, "loading domain configs on bundle loaded", v8, 2u);
    MEMORY[0x1BFB5F320](v8, -1, -1);
  }

  v18 = v0[9];

  v9 = *(v18 + 32);
  OUTLINED_FUNCTION_5_0();
  v17 = (v10 + *v10);
  v12 = *(v11 + 4);
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_1BF912738;
  v14 = v0[9];
  v15 = v0[10];
  v16 = v0[8];

  return v17(v16, v14);
}

uint64_t sub_1BF912738()
{
  OUTLINED_FUNCTION_6();
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  if (v0)
  {
    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = *(v2[9] + 24);
    OUTLINED_FUNCTION_5_0();
    v16 = (v9 + *v9);
    v11 = *(v10 + 4);
    v12 = swift_task_alloc();
    v2[15] = v12;
    *v12 = v4;
    v12[1] = sub_1BF912910;
    v13 = v2[9];
    v14 = v2[10];
    v15 = v2[8];

    return v16(v15, v13);
  }
}

uint64_t sub_1BF912910()
{
  OUTLINED_FUNCTION_7();
  v1 = *v0;
  v2 = *(*v0 + 120);
  v7 = *v0;
  *(*v0 + 128) = v3;

  v4 = *(v1 + 96);
  v5 = *(v1 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1BF912A34, v5, v4);
}

uint64_t sub_1BF912A34()
{
  v25 = v0;
  v1 = v0[16];
  v2 = v0[13];

  v3 = sub_1BF9B47A8();
  v4 = sub_1BF9B5038();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = *(v5 + 16);

    v9 = sub_1BF9B49B8();
    v11 = v10;

    v12 = sub_1BF8DE810(v9, v11, &v24);

    *(v6 + 4) = v12;
    _os_log_impl(&dword_1BF8B8000, v3, v4, "allOwnerConfigs - %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB5F320](v7, -1, -1);
    MEMORY[0x1BFB5F320](v6, -1, -1);
  }

  v13 = v0[16];
  v14 = v0[6];
  v23 = v0[7];
  swift_getObjectType();
  v0[5] = type metadata accessor for AllOwnerConfigs();
  v0[2] = v13;
  v15 = *(v23 + 64);

  v22 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  v0[17] = v17;
  *v17 = v0;
  v17[1] = sub_1BF912C94;
  v19 = v0[6];
  v18 = v0[7];
  v20 = OUTLINED_FUNCTION_9_6();

  return v22(v20);
}

uint64_t sub_1BF912C94()
{
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;
  v4 = v1[17];
  *v3 = *v0;

  __swift_destroy_boxed_opaque_existential_1(v2 + 2);
  v5 = v1[12];
  v6 = v1[11];

  return MEMORY[0x1EEE6DFA0](sub_1BF912DB8, v6, v5);
}

uint64_t sub_1BF912DB8()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1BF912E40()
{
  result = qword_1EBDE9358;
  if (!qword_1EBDE9358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9358);
  }

  return result;
}

unint64_t sub_1BF912E98()
{
  result = qword_1EBDE9360;
  if (!qword_1EBDE9360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9360);
  }

  return result;
}

unint64_t sub_1BF912EF0()
{
  result = qword_1EBDE9368;
  if (!qword_1EBDE9368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9370, &qword_1BF9BDC38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9368);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EnableDisableExpInfo(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65283;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for EnableDisableExpInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit12DialogConfigVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1BF9130E8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1BF913128(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of OwnerConfigProvider.getAllOwnersConfigs()()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_5_0();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1BF913318;
  v7 = OUTLINED_FUNCTION_9_6();

  return v9(v7);
}

uint64_t sub_1BF913318()
{
  OUTLINED_FUNCTION_7();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_3();
  *v5 = v4;

  v6 = *(v4 + 8);

  return v6(v2);
}

uint64_t dispatch thunk of OwnerConfigProvider.loadAllOwnerConfigs()()
{
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 32);
  OUTLINED_FUNCTION_5_0();
  v9 = (v3 + *v3);
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  *(v0 + 16) = v6;
  *v6 = v0;
  v6[1] = sub_1BF8BD504;
  v7 = OUTLINED_FUNCTION_9_6();

  return v9(v7);
}

_BYTE *sub_1BF913520(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_31(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BF913608(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_31(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BF9136E4()
{
  result = qword_1EBDE9378;
  if (!qword_1EBDE9378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9378);
  }

  return result;
}

unint64_t sub_1BF91373C()
{
  result = qword_1EBDE9380;
  if (!qword_1EBDE9380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9380);
  }

  return result;
}

unint64_t sub_1BF913794()
{
  result = qword_1EBDE9388;
  if (!qword_1EBDE9388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9388);
  }

  return result;
}

unint64_t sub_1BF9137EC()
{
  result = qword_1EBDE9390;
  if (!qword_1EBDE9390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9390);
  }

  return result;
}

unint64_t sub_1BF913844()
{
  result = qword_1EBDE9398;
  if (!qword_1EBDE9398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9398);
  }

  return result;
}

unint64_t sub_1BF91389C()
{
  result = qword_1EBDE93A0;
  if (!qword_1EBDE93A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93A0);
  }

  return result;
}

unint64_t sub_1BF9138F4()
{
  result = qword_1EBDE93A8;
  if (!qword_1EBDE93A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93A8);
  }

  return result;
}

unint64_t sub_1BF91394C()
{
  result = qword_1EBDE93B0;
  if (!qword_1EBDE93B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93B0);
  }

  return result;
}

unint64_t sub_1BF9139A4()
{
  result = qword_1EBDE93B8;
  if (!qword_1EBDE93B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93B8);
  }

  return result;
}

unint64_t sub_1BF9139F8()
{
  result = qword_1EBDE93C0;
  if (!qword_1EBDE93C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_6()
{

  return sub_1BF9B5558();
}

double static StatisticalUtils.getStats(values:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = 0uLL;
    v5 = 0.0;
    v6 = *(a1 + 16);
    v7 = 0.0;
    do
    {
      v8 = *v3++;
      v7 = v7 + v8;
      *&v9.f64[1] = v4.i64[1];
      v9.f64[0] = v8;
      *&v10.f64[0] = v4.i64[0];
      v10.f64[1] = v8;
      v5 = v5 + v8 * v8;
      v4 = vbslq_s8(vcgtq_f64(v10, v9), vdupq_lane_s64(*&v8, 0), v4);
      --v6;
    }

    while (v6);
  }

  else
  {
    v4 = 0uLL;
    v5 = 0.0;
    v7 = 0.0;
  }

  v11 = v7 / v2;
  *a2 = v11;
  *(a2 + 8) = sqrt(v5 / v2 - v11 * v11);
  *(a2 + 16) = v4;
  return *v4.i64;
}

_BYTE *storeEnumTagSinglePayload for StatisticalUtils(_BYTE *result, int a2, int a3)
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

uint64_t sub_1BF913BE8(uint64_t a1, int a2)
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

uint64_t sub_1BF913C08(uint64_t result, int a2, int a3)
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

uint64_t sub_1BF913C58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7265766F63736964 && a2 == 0xEF7974696C696261;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x706D6F436B736174 && a2 == 0xEE006E6F6974656CLL;
    if (v6 || (sub_1BF9B56D8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656D656761676E65 && a2 == 0xEA0000000000746ELL;
      if (v7 || (sub_1BF9B56D8() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x74616E7265746C61 && a2 == 0xEC00000073657669)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BF9B56D8();

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

uint64_t sub_1BF913DCC(char a1)
{
  result = 0x7265766F63736964;
  switch(a1)
  {
    case 1:
      result = 0x706D6F436B736174;
      break;
    case 2:
      result = 0x656D656761676E65;
      break;
    case 3:
      result = 0x74616E7265746C61;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BF913E74(uint64_t a1)
{
  v2 = sub_1BF914518();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913EB0(uint64_t a1)
{
  v2 = sub_1BF914518();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF913EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF913C58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF913F1C(uint64_t a1)
{
  v2 = sub_1BF9144C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913F58(uint64_t a1)
{
  v2 = sub_1BF9144C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF913F94(uint64_t a1)
{
  v2 = sub_1BF914614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF913FD0(uint64_t a1)
{
  v2 = sub_1BF914614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF91400C(uint64_t a1)
{
  v2 = sub_1BF91456C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF914048(uint64_t a1)
{
  v2 = sub_1BF91456C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BF914084(uint64_t a1)
{
  v2 = sub_1BF9145C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF9140C0(uint64_t a1)
{
  v2 = sub_1BF9145C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Objective.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93C8, &qword_1BF9BE240);
  v4 = OUTLINED_FUNCTION_1(v3);
  v55 = v5;
  v56 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v54 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93D0, &qword_1BF9BE248);
  v11 = OUTLINED_FUNCTION_1(v10);
  v52 = v12;
  v53 = v11;
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12();
  v51 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93D8, &qword_1BF9BE250);
  v18 = OUTLINED_FUNCTION_1(v17);
  v49 = v19;
  v50 = v18;
  v21 = *(v20 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_12();
  v48 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93E0, &qword_1BF9BE258);
  v25 = OUTLINED_FUNCTION_1(v24);
  v46 = v26;
  v47 = v25;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v46 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE93E8, &qword_1BF9BE260);
  OUTLINED_FUNCTION_1(v32);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v46 - v38;
  v40 = *v1;
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9144C4();
  sub_1BF9B5898();
  switch(v40)
  {
    case 1:
      v58 = 1;
      sub_1BF9145C0();
      v42 = v48;
      OUTLINED_FUNCTION_3_10();
      v44 = v49;
      v43 = v50;
      goto LABEL_6;
    case 2:
      v59 = 2;
      sub_1BF91456C();
      v42 = v51;
      OUTLINED_FUNCTION_3_10();
      v44 = v52;
      v43 = v53;
      goto LABEL_6;
    case 3:
      v60 = 3;
      sub_1BF914518();
      v42 = v54;
      OUTLINED_FUNCTION_3_10();
      v44 = v55;
      v43 = v56;
LABEL_6:
      (*(v44 + 8))(v42, v43);
      break;
    default:
      v57 = 0;
      sub_1BF914614();
      sub_1BF9B5598();
      (*(v46 + 8))(v31, v47);
      break;
  }

  return (*(v34 + 8))(v39, v32);
}

unint64_t sub_1BF9144C4()
{
  result = qword_1EDBF47B8;
  if (!qword_1EDBF47B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47B8);
  }

  return result;
}

unint64_t sub_1BF914518()
{
  result = qword_1EBDE93F0;
  if (!qword_1EBDE93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93F0);
  }

  return result;
}

unint64_t sub_1BF91456C()
{
  result = qword_1EBDE93F8;
  if (!qword_1EBDE93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE93F8);
  }

  return result;
}

unint64_t sub_1BF9145C0()
{
  result = qword_1EBDE9400;
  if (!qword_1EBDE9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9400);
  }

  return result;
}

unint64_t sub_1BF914614()
{
  result = qword_1EDBF4770;
  if (!qword_1EDBF4770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4770);
  }

  return result;
}

uint64_t Objective.hashValue.getter()
{
  v1 = *v0;
  sub_1BF9B57A8();
  MEMORY[0x1BFB5EAC0](v1);
  return sub_1BF9B57E8();
}

uint64_t Objective.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v79 = a2;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9408, &qword_1BF9BE268);
  OUTLINED_FUNCTION_1(v82);
  v78 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v81 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9410, &qword_1BF9BE270);
  v9 = OUTLINED_FUNCTION_1(v8);
  v75 = v10;
  v76 = v9;
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v77 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9418, &qword_1BF9BE278);
  v16 = OUTLINED_FUNCTION_1(v15);
  v73 = v17;
  v74 = v16;
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9420, &qword_1BF9BE280);
  OUTLINED_FUNCTION_1(v23);
  v72 = v24;
  v26 = *(v25 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v66 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9428, &unk_1BF9BE288);
  OUTLINED_FUNCTION_1(v30);
  v80 = v31;
  v33 = *(v32 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  v37 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF9144C4();
  v38 = v83;
  sub_1BF9B5868();
  if (v38)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v69 = v23;
  v70 = v29;
  v71 = v22;
  v39 = v81;
  v40 = v82;
  v83 = a1;
  v41 = v36;
  v42 = sub_1BF9B5568();
  result = sub_1BF8D21BC(v42, 0);
  if (v45 == v46 >> 1)
  {
    goto LABEL_8;
  }

  v68 = 0;
  if (v45 >= (v46 >> 1))
  {
    __break(1u);
    return result;
  }

  v47 = *(v44 + v45);
  sub_1BF8D21AC(v45 + 1);
  v49 = v48;
  v51 = v50;
  swift_unknownObjectRelease();
  if (v49 != v51 >> 1)
  {
LABEL_8:
    v57 = v80;
    v58 = sub_1BF9B5308();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8310, &qword_1BF9B6400) + 48);
    *v60 = &type metadata for Objective;
    sub_1BF9B54B8();
    sub_1BF9B52F8();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v57 + 8))(v41, v30);
    a1 = v83;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v52 = v79;
  v53 = v80;
  v67 = v47;
  v54 = v47;
  v55 = v78;
  switch(v54)
  {
    case 1:
      v85 = 1;
      sub_1BF9145C0();
      v62 = v71;
      OUTLINED_FUNCTION_2_14();
      swift_unknownObjectRelease();
      v64 = v73;
      v63 = v74;
      goto LABEL_18;
    case 2:
      v86 = 2;
      sub_1BF91456C();
      v62 = v77;
      OUTLINED_FUNCTION_2_14();
      swift_unknownObjectRelease();
      v64 = v75;
      v63 = v76;
LABEL_18:
      (*(v64 + 8))(v62, v63);
      goto LABEL_19;
    case 3:
      v87 = 3;
      sub_1BF914518();
      v65 = v68;
      sub_1BF9B54A8();
      if (v65)
      {
        (*(v53 + 8))(v41, v30);
        swift_unknownObjectRelease();
        a1 = v83;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v55 + 8))(v39, v40);
LABEL_19:
      (*(v53 + 8))(v41, v30);
      *v52 = v67;
      result = __swift_destroy_boxed_opaque_existential_1(v83);
      break;
    default:
      v84 = 0;
      sub_1BF914614();
      v56 = v70;
      OUTLINED_FUNCTION_2_14();
      swift_unknownObjectRelease();
      (*(v72 + 8))(v56, v69);
      goto LABEL_19;
  }

  return result;
}

unint64_t sub_1BF914D2C()
{
  result = qword_1EDBF06F8;
  if (!qword_1EDBF06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF06F8);
  }

  return result;
}

unint64_t sub_1BF914D84()
{
  result = qword_1EBDE9430;
  if (!qword_1EBDE9430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE9438, &qword_1BF9BE300);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9430);
  }

  return result;
}

_BYTE *sub_1BF914DF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF914F18()
{
  result = qword_1EBDE9440;
  if (!qword_1EBDE9440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9440);
  }

  return result;
}

unint64_t sub_1BF914F70()
{
  result = qword_1EDBF4760;
  if (!qword_1EDBF4760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4760);
  }

  return result;
}

unint64_t sub_1BF914FC8()
{
  result = qword_1EDBF4768;
  if (!qword_1EDBF4768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4768);
  }

  return result;
}

unint64_t sub_1BF915020()
{
  result = qword_1EDBF4778;
  if (!qword_1EDBF4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4778);
  }

  return result;
}

unint64_t sub_1BF915078()
{
  result = qword_1EDBF4780;
  if (!qword_1EDBF4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4780);
  }

  return result;
}

unint64_t sub_1BF9150D0()
{
  result = qword_1EDBF4798;
  if (!qword_1EDBF4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4798);
  }

  return result;
}

unint64_t sub_1BF915128()
{
  result = qword_1EDBF47A0;
  if (!qword_1EDBF47A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47A0);
  }

  return result;
}

unint64_t sub_1BF915180()
{
  result = qword_1EDBF4788;
  if (!qword_1EDBF4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4788);
  }

  return result;
}

unint64_t sub_1BF9151D8()
{
  result = qword_1EDBF4790;
  if (!qword_1EDBF4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4790);
  }

  return result;
}

unint64_t sub_1BF915230()
{
  result = qword_1EDBF47A8;
  if (!qword_1EDBF47A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47A8);
  }

  return result;
}

unint64_t sub_1BF915288()
{
  result = qword_1EDBF47B0;
  if (!qword_1EDBF47B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF47B0);
  }

  return result;
}

uint64_t sub_1BF9152E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95C0, &unk_1BF9C2AD0);
    v2 = sub_1BF9B5478();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v7 = v2;
  v3 = OUTLINED_FUNCTION_28_4();
  sub_1BF918840(v3, v4, v5);
  if (v1)
  {
  }

  return v7;
}

uint64_t sub_1BF915378(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9618, &qword_1BF9BF000);
    v3 = sub_1BF9B5478();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1BF918A74(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

uint64_t UtteranceAction.__allocating_init(utteranceOverride:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t UtteranceAction.__allocating_init()()
{
  OUTLINED_FUNCTION_10_3();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t InvocationAction.getInvocationAction(dialogProperties:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a3);
  v6 = *(*(a1 - 8) + 16);

  return v6(boxed_opaque_existential_1Tm, v3, a1);
}

uint64_t InvocationContext.init(directInvocationContext:displayedUtterance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

void *DirectInvocationAction.__allocating_init(siriKitIdentifier:payload:suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  result[6] = a5;
  return result;
}

void *DirectInvocationAction.init(siriKitIdentifier:payload:suggestionId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  v5[6] = a5;
  return v5;
}

void DirectInvocationAction.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_39();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9450, &unk_1BF9BE7F0);
  OUTLINED_FUNCTION_1(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  v11 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BF917894();
  sub_1BF9B5868();
  if (!v0)
  {
    v12 = sub_1BF9B5518();
    v14 = v13;
    v15 = sub_1BF9B5518();
    v17 = v16;
    v23 = v15;
    v18 = sub_1BF915934(1, v10);
    v19 = *(v5 + 8);
    v22 = v18;
    v19(v10, v3);
    v20 = swift_allocObject();
    v20[2] = v12;
    v20[3] = v14;
    v21 = v23;
    v20[4] = v22;
    v20[5] = v21;
    v20[6] = v17;
  }

  __swift_destroy_boxed_opaque_existential_1(v2);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF915750(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E8, &unk_1BF9BEFD0);
  sub_1BF919B68();
  OUTLINED_FUNCTION_31_4();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5558();
    sub_1BF989BCC();
    v9 = sub_1BF919C28(v12, v8, &qword_1EBDE95D8, &unk_1BF9BEFC0);

    a1 = sub_1BF9152E4(v9);
    v10 = OUTLINED_FUNCTION_1_12();
    v11(v10);
  }

  return a1;
}

uint64_t sub_1BF915934(char a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v16 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9450, &unk_1BF9BE7F0);
  sub_1BF919B68();
  sub_1BF9B54A8();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    v15 = 0;
    sub_1BF919BBC(&qword_1EDBF0578);
    sub_1BF9B5558();
    v10 = v14[1];
    sub_1BF98A098();
    v13 = sub_1BF919C28(v10, v12, &unk_1EBDE9630, &qword_1BF9BF018);

    a2 = sub_1BF915378(v13);
    (*(v6 + 8))(v9, v5);
  }

  return a2;
}

uint64_t sub_1BF915B7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95A8, &unk_1BF9C7770);
  OUTLINED_FUNCTION_1(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE95B0, &unk_1BF9BEFA0);
  sub_1BF919B68();
  OUTLINED_FUNCTION_31_4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    OUTLINED_FUNCTION_10_1(&qword_1EDBF0578);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5558();
    sub_1BF989BCC();
    v10 = sub_1BF919C28(v13, v9, &qword_1EBDE95D8, &unk_1BF9BEFC0);

    a2 = sub_1BF9152E4(v10);
    v11 = OUTLINED_FUNCTION_1_12();
    v12(v11);
  }

  return a2;
}

id DirectInvocationAction.getCommand(context:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  sub_1BF9178E8();
  v4 = v1[2];
  v5 = v1[3];

  v6 = sub_1BF915FB8();
  v7 = sub_1BF91C5CC(v1[4]);
  sub_1BF918CA8(v7, v6);
  v8 = objc_opt_self();
  v9 = [v8 runSiriKitExecutorCommandWithContext:v3 payload:v6];
  if (qword_1EDBF5568 != -1)
  {
    swift_once();
  }

  v10 = sub_1BF9B47C8();
  __swift_project_value_buffer(v10, qword_1EDBF5570);
  v11 = v9;

  v12 = sub_1BF9B47A8();
  v13 = sub_1BF9B5038();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v14 = 138412546;
    *(v14 + 4) = v11;
    *v15 = v11;
    *(v14 + 12) = 2080;
    v18 = v2[5];
    v17 = v2[6];
    v19 = v11;
    *(v14 + 14) = sub_1BF8DE810(v18, v17, &v22);
    _os_log_impl(&dword_1BF8B8000, v12, v13, "suggestion direct invocation command: %@ for %s", v14, 0x16u);
    sub_1BF8DFBF0(v15, &qword_1EBDE9468, &unk_1BF9C2470);
    MEMORY[0x1BFB5F320](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1BFB5F320](v16, -1, -1);
    MEMORY[0x1BFB5F320](v14, -1, -1);
  }

  v20 = [v8 wrapCommandInStartLocalRequest_];
  return v20;
}

id sub_1BF915FB8()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1BF9B4A98();

  v2 = [v0 initWithIdentifier_];

  return v2;
}

uint64_t DirectInvocationAction.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9470, &qword_1BF9BE800);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_8_5();
  sub_1BF917894();
  OUTLINED_FUNCTION_15_10();
  v8 = v0[2];
  v9 = v0[3];
  sub_1BF9B55F8();
  if (v1)
  {
    v12 = *(v4 + 8);
    v13 = OUTLINED_FUNCTION_25();
    return v14(v13);
  }

  else
  {
    v10 = v0[5];
    v11 = v0[6];
    sub_1BF9B55F8();
    sub_1BF91B7B0(v0[4]);
    v16 = v15;
    v17 = OUTLINED_FUNCTION_28_4();
    sub_1BF9164D8(v17, v18, v16);
    v19 = *(v4 + 8);
    v20 = OUTLINED_FUNCTION_25();
    v21(v20);
  }
}

void sub_1BF91619C()
{
  OUTLINED_FUNCTION_39();
  v32[0] = v0;
  v4 = v3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1(v34);
  v33 = v5;
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v32 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95E0, &qword_1BF9C77D0);
  sub_1BF919B68();
  v32[1] = v10;
  sub_1BF9B5598();
  v12 = *(v4 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD6D4();
  v15 = v14;
  v16 = *(v4 + 16);
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD618();
  OUTLINED_FUNCTION_3_11();
  v35 = v4;

  v17 = 0;
  v18 = 40;
  if (!v13)
  {
    goto LABEL_3;
  }

  do
  {
    v41 = v11;
LABEL_7:
    OUTLINED_FUNCTION_14_4(__clz(__rbit64(v13)) | (v17 << 6));
    v39[0] = v10;
    v39[1] = v4;
    sub_1BF8C2C9C((v11 + 16), v40);
    v20 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v20, v21, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v22 = v37[1];
    OUTLINED_FUNCTION_16_6(v37[0]);
    if (v15 >= v0 >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD6D4();
      v10 = v26;
    }

    v10[2] = v18;
    v23 = &v10[2 * v15];
    v15 = v10;
    v23[4] = v36;
    v23[5] = v22;
    v10 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v24 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v24, v25, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v11 = v41;
    v4 = *(v41 + 16);
    v18 = v4 + 1;
    if (v4 >= *(v41 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD618();
      v11 = v27;
    }

    v13 &= v13 - 1;
    sub_1BF8DFBF0(v39, &qword_1EBDE95A0, &qword_1BF9BEF98);
    OUTLINED_FUNCTION_26_5();
  }

  while (v13);
  while (1)
  {
LABEL_3:
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      return;
    }

    if (v19 >= v1)
    {
      break;
    }

    v13 = *(v2 + 8 * v19);
    ++v17;
    if (v13)
    {
      v41 = v11;
      v17 = v19;
      goto LABEL_7;
    }
  }

  v40[5] = v15;
  LOBYTE(v39[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20);
  OUTLINED_FUNCTION_23_6();
  v28 = v32[0];
  sub_1BF9B5638();

  if (!v28)
  {
    OUTLINED_FUNCTION_28_4();
    sub_1BF995FDC();
  }

  v29 = *(v33 + 8);
  v30 = OUTLINED_FUNCTION_25();
  v31(v30);

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9164D8(uint64_t a1, char a2, uint64_t a3)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  v40 = *(v41 - 8);
  v5 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v7 = v38 - v6;
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9470, &qword_1BF9BE800);
  sub_1BF919B68();
  v39 = v7;
  sub_1BF9B5598();
  v8 = *(a3 + 16);
  sub_1BF8DD6D4();
  v10 = v9;
  v11 = *(a3 + 16);
  sub_1BF8DD618();
  v13 = v12;
  v14 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a3 + 64);
  v18 = (v15 + 63) >> 6;
  v42 = a3;

  v20 = 0;
  if (v17)
  {
    while (1)
    {
      v44 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v17)) | (v20 << 6);
      v23 = (*(v42 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      sub_1BF8D2004(*(v42 + 56) + 40 * v22, v49);
      v47[0] = v24;
      v47[1] = v25;
      sub_1BF8C2C9C(v49, v48);
      sub_1BF8DFB90(v47, v45, &qword_1EBDE95A0, &qword_1BF9BEF98);
      v26 = v45[1];
      v43 = v45[0];
      v27 = v10;
      v28 = *(v10 + 16);
      v29 = v27;
      v30 = *(v27 + 24);

      if (v28 >= v30 >> 1)
      {
        sub_1BF8DD6D4();
        v29 = v33;
      }

      *(v29 + 16) = v28 + 1;
      v31 = v29 + 16 * v28;
      v10 = v29;
      *(v31 + 32) = v43;
      *(v31 + 40) = v26;
      __swift_destroy_boxed_opaque_existential_1(v46);
      sub_1BF8DFB90(v47, v45, &qword_1EBDE95A0, &qword_1BF9BEF98);

      v13 = v44;
      v32 = *(v44 + 16);
      if (v32 >= *(v44 + 24) >> 1)
      {
        sub_1BF8DD618();
        v13 = v34;
      }

      v17 &= v17 - 1;
      sub_1BF8DFBF0(v47, &qword_1EBDE95A0, &qword_1BF9BEF98);
      *(v13 + 16) = v32 + 1;
      result = sub_1BF8C2C9C(v46, v13 + 40 * v32 + 32);
      if (!v17)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= v18)
    {
      break;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v44 = v13;
      v20 = v21;
      goto LABEL_9;
    }
  }

  v48[5] = v10;
  LOBYTE(v47[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  sub_1BF919BBC(&qword_1EDBF4B20);
  v35 = v41;
  v36 = v39;
  v37 = v38[1];
  sub_1BF9B5638();

  if (!v37)
  {
    sub_1BF995FDC();
  }

  (*(v40 + 8))(v36, v35);
}

void sub_1BF916914()
{
  OUTLINED_FUNCTION_39();
  v37 = v0;
  v4 = v3;
  v6 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9588, &unk_1BF9C7780);
  OUTLINED_FUNCTION_1(v40);
  v39 = v7;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v36 - v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE9590, &qword_1BF9BEF90);
  sub_1BF919B68();
  v38 = v12;
  sub_1BF9B5598();
  v13 = *(v4 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD6D4();
  v16 = v15;
  v17 = *(v4 + 16);
  OUTLINED_FUNCTION_9_7();
  sub_1BF8DD618();
  OUTLINED_FUNCTION_3_11();
  v41 = v4;

  v18 = 0;
  v19 = 40;
  if (!v14)
  {
    goto LABEL_3;
  }

  do
  {
    v43 = v6;
LABEL_7:
    OUTLINED_FUNCTION_14_4(__clz(__rbit64(v14)) | (v18 << 6));
    v46[0] = v12;
    v46[1] = v4;
    sub_1BF8C2C9C((v6 + 16), v47);
    v21 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v21, v22, &qword_1EBDE95A0, &qword_1BF9BEF98);
    v23 = v44[1];
    OUTLINED_FUNCTION_16_6(v44[0]);
    if (v16 >= v0 >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD6D4();
      v12 = v27;
    }

    v12[2] = v19;
    v24 = &v12[2 * v16];
    v16 = v12;
    v24[4] = v42;
    v24[5] = v23;
    v12 = v44;
    __swift_destroy_boxed_opaque_existential_1(&v45);
    v25 = OUTLINED_FUNCTION_30_4();
    sub_1BF8DFB90(v25, v26, &qword_1EBDE95A0, &qword_1BF9BEF98);

    v6 = v43;
    v4 = *(v43 + 16);
    v19 = v4 + 1;
    if (v4 >= *(v43 + 24) >> 1)
    {
      OUTLINED_FUNCTION_12_8();
      sub_1BF8DD618();
      v6 = v28;
    }

    v14 &= v14 - 1;
    sub_1BF8DFBF0(v46, &qword_1EBDE95A0, &qword_1BF9BEF98);
    OUTLINED_FUNCTION_26_5();
  }

  while (v14);
  while (1)
  {
LABEL_3:
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
      return;
    }

    if (v20 >= v1)
    {
      break;
    }

    v14 = *(v2 + 8 * v20);
    ++v18;
    if (v14)
    {
      v43 = v6;
      v18 = v20;
      goto LABEL_7;
    }
  }

  v47[5] = v16;
  LOBYTE(v46[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
  OUTLINED_FUNCTION_11_10(&qword_1EDBF4B20);
  OUTLINED_FUNCTION_23_6();
  v29 = v37;
  sub_1BF9B5638();
  if (v29)
  {
    v30 = *(v39 + 8);
    v31 = OUTLINED_FUNCTION_25();
    v32(v31);
  }

  else
  {

    OUTLINED_FUNCTION_28_4();
    sub_1BF995FDC();
    v33 = *(v39 + 8);
    v34 = OUTLINED_FUNCTION_25();
    v35(v34);
  }

  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF916C90(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x80000001BF9CB8C0 == a2;
  if (v3 || (OUTLINED_FUNCTION_70() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
    if (v6 || (OUTLINED_FUNCTION_70() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6974736567677573 && a2 == 0xEC00000064496E6FLL)
    {

      return 2;
    }

    else
    {
      v8 = OUTLINED_FUNCTION_70();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BF916D88(char a1)
{
  if (!a1)
  {
    return 0xD000000000000011;
  }

  if (a1 == 1)
  {
    return 0x64616F6C796170;
  }

  return 0x6974736567677573;
}

uint64_t sub_1BF916DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF916C90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF916E1C(uint64_t a1)
{
  v2 = sub_1BF917894();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF916E58(uint64_t a1)
{
  v2 = sub_1BF917894();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *DirectInvocationAction.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return v0;
}

uint64_t DirectInvocationAction.__deallocating_deinit()
{
  DirectInvocationAction.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

void sub_1BF916F1C(void *a1@<X8>)
{
  DirectInvocationAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t UrlPunchOutInvocationAction.__allocating_init(appBundleId:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_29_2();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a2;
  v7 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  v8 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v8);
  (*(v9 + 32))(v6 + v7, a3);
  return v6;
}

uint64_t UrlPunchOutInvocationAction.init(appBundleId:url:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v5 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  v6 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v6);
  (*(v7 + 32))(v3 + v5, a3);
  return v3;
}

id UrlPunchOutInvocationAction.getCommand(context:)()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69C7B00]) init];
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1BF9B4A98();
  [v1 setBundleId_];

  v5 = sub_1BF9B4368();
  [v1 setPunchOutUri_];

  return v1;
}

uint64_t sub_1BF9170E8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965;
  if (v4 || (sub_1BF9B56D8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BF9B56D8();

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

uint64_t sub_1BF9171B4(char a1)
{
  if (a1)
  {
    return 7107189;
  }

  else
  {
    return 0x6C646E7542707061;
  }
}

uint64_t sub_1BF9171F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF9170E8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BF91721C(uint64_t a1)
{
  v2 = sub_1BF918D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF917258(uint64_t a1)
{
  v2 = sub_1BF918D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UrlPunchOutInvocationAction.deinit()
{
  v1 = *(v0 + 24);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  v3 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(v0 + v2);
  return v0;
}

uint64_t UrlPunchOutInvocationAction.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url;
  v3 = sub_1BF9B4378();
  OUTLINED_FUNCTION_13(v3);
  (*(v4 + 8))(&v0[v2]);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t UrlPunchOutInvocationAction.encode(to:)()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9480, &qword_1BF9BE808);
  OUTLINED_FUNCTION_1(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  OUTLINED_FUNCTION_8_5();
  sub_1BF918D28();
  OUTLINED_FUNCTION_15_10();
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);
  v15[15] = 0;
  sub_1BF9B55F8();
  if (!v1)
  {
    v15[14] = 1;
    sub_1BF9B4378();
    OUTLINED_FUNCTION_5_9();
    sub_1BF9191E0(v12, 255, v13);
    OUTLINED_FUNCTION_23_6();
    sub_1BF9B5638();
  }

  return (*(v4 + 8))(v9, v2);
}

uint64_t UrlPunchOutInvocationAction.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_29_2();
  swift_allocObject();
  OUTLINED_FUNCTION_17_8();
  UrlPunchOutInvocationAction.init(from:)();
  return v0;
}

void UrlPunchOutInvocationAction.init(from:)()
{
  OUTLINED_FUNCTION_39();
  v34 = v1;
  v3 = v2;
  v4 = *v0;
  v5 = sub_1BF9B4378();
  v6 = OUTLINED_FUNCTION_1(v5);
  v31 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9498, &unk_1BF9BE810);
  v13 = OUTLINED_FUNCTION_1(v12);
  v32 = v14;
  v33 = v13;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v30 - v18;
  v20 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BF918D28();
  v21 = v34;
  sub_1BF9B5868();
  if (v21)
  {
    v27 = *(*v0 + 48);
    v28 = *(*v0 + 52);
    swift_deallocPartialClassInstance();
    v29 = v3;
  }

  else
  {
    v23 = v32;
    v22 = v33;
    v34 = v3;
    v30[1] = v4;
    v0[2] = sub_1BF9B5518();
    v0[3] = v24;
    OUTLINED_FUNCTION_5_9();
    sub_1BF9191E0(v25, 255, v26);
    sub_1BF9B5558();
    (*(v23 + 8))(v19, v22);
    (*(v31 + 32))(v0 + OBJC_IVAR____TtC18SiriSuggestionsKit27UrlPunchOutInvocationAction_url, v11, v5);
    v29 = v34;
  }

  __swift_destroy_boxed_opaque_existential_1(v29);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF917838@<X0>(uint64_t *a1@<X8>)
{
  result = UrlPunchOutInvocationAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t UtteranceAction.init(utteranceOverride:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

unint64_t sub_1BF917894()
{
  result = qword_1EBDE9458;
  if (!qword_1EBDE9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9458);
  }

  return result;
}

unint64_t sub_1BF9178E8()
{
  result = qword_1EBDE9460;
  if (!qword_1EBDE9460)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDE9460);
  }

  return result;
}

id UtteranceAction.getCommand(context:)(__int128 *a1)
{
  v11 = *a1;
  v1 = *(a1 + 2);
  v2 = [objc_allocWithZone(MEMORY[0x1E69C7AB0]) init];
  v3 = *MEMORY[0x1E69C7F28];
  v4 = sub_1BF9B4AA8();
  sub_1BF918D7C(v4, v5, v2, &selRef_setOrigin_);
  v12 = v11;
  v13 = v1;
  v6 = sub_1BF917A18(&v12);
  sub_1BF918D7C(v6, v7, v2, &selRef_setUtterance_);
  v8 = [objc_allocWithZone(MEMORY[0x1E69C7A48]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8DD8, &unk_1BF9B9750);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BF9B8710;
  *(v9 + 32) = v2;
  sub_1BF918DE8(v9, v8);
  return v8;
}

uint64_t sub_1BF917A18(uint64_t a1)
{
  if (*(v1 + 24))
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 24);
  }

  else
  {
    v2 = *(a1 + 8);
    v4 = *(a1 + 16);
  }

  return v2;
}

uint64_t sub_1BF917A68(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001BF9CB960 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF917B08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF917A68(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF917B34(uint64_t a1)
{
  v2 = sub_1BF918E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF917B70(uint64_t a1)
{
  v2 = sub_1BF918E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UtteranceAction.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t UtteranceAction.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = OUTLINED_FUNCTION_10_3();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t UtteranceAction.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE94B0, &qword_1BF9BE820);
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_8_5();
  sub_1BF918E68();
  OUTLINED_FUNCTION_15_10();
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  sub_1BF9B55B8();
  return (*(v3 + 8))(v8, v1);
}

void UtteranceAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_39();
  a19 = v23;
  a20 = v24;
  OUTLINED_FUNCTION_21_7();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE94C0, &qword_1BF9BE828);
  OUTLINED_FUNCTION_1(v25);
  a10 = v26;
  v28 = *(v27 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &a9 - v30;
  v32 = v22[4];
  __swift_project_boxed_opaque_existential_1(v22, v22[3]);
  sub_1BF918E68();
  OUTLINED_FUNCTION_27_1();
  if (v21)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v33 = a10;
    v34 = sub_1BF9B54D8();
    v36 = v35;
    (*(v33 + 8))(v31, v25);
    *(v20 + 16) = v34;
    *(v20 + 24) = v36;
  }

  __swift_destroy_boxed_opaque_existential_1(v22);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF917ED8@<X0>(uint64_t *a1@<X8>)
{
  result = UtteranceAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t MachineUtteranceAction.__allocating_init(dialogProperties:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_19_8();
  v2 = swift_allocObject();
  MachineUtteranceAction.init(dialogProperties:)(a1);
  return v2;
}

void *MachineUtteranceAction.init(dialogProperties:)(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BF917FE4(a1);
  v7 = v6;
  __swift_destroy_boxed_opaque_existential_1(a1);
  type metadata accessor for UtteranceAction();
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v2[2] = v8;
  return v2;
}

uint64_t sub_1BF917FE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 16))(v1, v2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BF8D01C0();
    v5 = v24;
    result = sub_1BF95FA38(v3);
    v7 = result;
    LODWORD(v9) = v8;
    v11 = v10;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v3 + 32))
    {
      if (((*(v3 + 64 + ((v7 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_14;
      }

      if (*(v3 + 36) != v9)
      {
        goto LABEL_15;
      }

      v12 = (*(v3 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      sub_1BF8C187C(*(v3 + 56) + 32 * v7, v23);
      v20[0] = v13;
      v20[1] = v14;
      sub_1BF8C192C(v23, &v21);

      MEMORY[0x1BFB5DE90](v13, v14);
      MEMORY[0x1BFB5DE90](6176094, 0xE300000000000000);
      sub_1BF9B5378();
      MEMORY[0x1BFB5DE90](94, 0xE100000000000000);

      MEMORY[0x1BFB5DE90](0, 0xE000000000000000);

      sub_1BF8DFBF0(v20, &unk_1EBDE9600, &qword_1BF9C9160);
      v24 = v5;
      v15 = *(v5 + 16);
      if (v15 >= *(v5 + 24) >> 1)
      {
        sub_1BF8D01C0();
        v5 = v24;
      }

      *(v5 + 16) = v15 + 1;
      v16 = v5 + 16 * v15;
      *(v16 + 32) = 94;
      *(v16 + 40) = 0xE100000000000000;
      result = sub_1BF91A1F0(v7, v9, v11 & 1, v3);
      v7 = result;
      v9 = v17;
      v11 = v18;
      if (!--v4)
      {

        sub_1BF90E758(v7, v9, v11 & 1);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v22 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    sub_1BF8C47C8();
    v19 = sub_1BF9B4A78();

    return v19;
  }

  return result;
}

id MachineUtteranceAction.getCommand(context:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v1 + 16);
  v5 = *a1;
  v6 = v2;
  return UtteranceAction.getCommand(context:)(&v5);
}

uint64_t sub_1BF918314(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x636E617265747475 && a2 == 0xEF6E6F6974634165)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BF9B56D8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BF9183BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BF918314(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BF9183E8(uint64_t a1)
{
  v2 = sub_1BF918EE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF918424(uint64_t a1)
{
  v2 = sub_1BF918EE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MachineUtteranceAction.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t MachineUtteranceAction.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = OUTLINED_FUNCTION_19_8();

  return MEMORY[0x1EEE6BDC0](v2, v3, v4);
}

uint64_t MachineUtteranceAction.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE94C8, &qword_1BF9BE830);
  OUTLINED_FUNCTION_1(v1);
  v3 = v2;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v13 - v7;
  OUTLINED_FUNCTION_8_5();
  sub_1BF918EE0();
  OUTLINED_FUNCTION_15_10();
  v13[1] = *(v0 + 16);
  type metadata accessor for UtteranceAction();
  OUTLINED_FUNCTION_6_9();
  sub_1BF9191E0(v9, v10, v11);
  sub_1BF9B5638();
  return (*(v3 + 8))(v8, v1);
}

uint64_t MachineUtteranceAction.__allocating_init(from:)()
{
  OUTLINED_FUNCTION_19_8();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_17_8();
  MachineUtteranceAction.init(from:)(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  return v0;
}

void MachineUtteranceAction.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_21_7();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDE94E0, &qword_1BF9BE838);
  OUTLINED_FUNCTION_1(v13);
  v25 = v14;
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - v18;
  v20 = v12[4];
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  sub_1BF918EE0();
  OUTLINED_FUNCTION_27_1();
  if (v11)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for UtteranceAction();
    OUTLINED_FUNCTION_6_9();
    sub_1BF9191E0(v21, v22, v23);
    sub_1BF9B5558();
    (*(v25 + 8))(v19, v13);
    *(v10 + 16) = a10;
  }

  __swift_destroy_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37();
}

uint64_t sub_1BF9187F0@<X0>(uint64_t *a1@<X8>)
{
  result = MachineUtteranceAction.__allocating_init(from:)();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BF918840(uint64_t a1, char a2, uint64_t *a3)
{
  v33 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF8DFB90(v6, v31, &qword_1EBDE95C8, &unk_1BF9BEFB0);
    v8 = v31[0];
    v7 = v31[1];
    sub_1BF8C530C(v32, v30);
    v9 = *v33;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95D0, &unk_1BF9C1030);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v33;
      sub_1BF95B748(v14, a2 & 1);
      v17 = *v16;
      v18 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v33;
        sub_1BF8D7914(*(*v33 + 56) + 48 * v11, v29);
        __swift_destroy_boxed_opaque_existential_1(v30);

        v21 = (*(v20 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1(v21);
        sub_1BF8C530C(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v33;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    sub_1BF8C530C(v30, (v22[7] + 48 * v11));
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

uint64_t sub_1BF918A74(uint64_t a1, char a2, uint64_t *a3)
{
  v33 = a3;
  v28 = *(a1 + 16);
  if (!v28)
  {
  }

  v5 = 0;
  v6 = a1 + 32;
  while (v5 < *(a1 + 16))
  {
    sub_1BF8DFB90(v6, v31, &qword_1EBDE9620, &qword_1BF9BF008);
    v8 = v31[0];
    v7 = v31[1];
    sub_1BF8C530C(v32, v30);
    v9 = *v33;
    v11 = sub_1BF8C2E64(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_20;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a2)
      {
        if (v10)
        {
          goto LABEL_11;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9628, &qword_1BF9BF010);
        sub_1BF9B53B8();
        if (v15)
        {
          goto LABEL_11;
        }
      }
    }

    else
    {
      v16 = v33;
      sub_1BF95B770(v14, a2 & 1);
      v17 = *v16;
      v18 = sub_1BF8C2E64(v8, v7);
      if ((v15 & 1) != (v19 & 1))
      {
        goto LABEL_22;
      }

      v11 = v18;
      if (v15)
      {
LABEL_11:
        v20 = *v33;
        sub_1BF8D7914(*(*v33 + 56) + 48 * v11, v29);
        __swift_destroy_boxed_opaque_existential_1(v30);

        v21 = (*(v20 + 56) + 48 * v11);
        __swift_destroy_boxed_opaque_existential_1(v21);
        sub_1BF8C530C(v29, v21);
        goto LABEL_15;
      }
    }

    v22 = *v33;
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v23 = (v22[6] + 16 * v11);
    *v23 = v8;
    v23[1] = v7;
    sub_1BF8C530C(v30, (v22[7] + 48 * v11));
    v24 = v22[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_21;
    }

    v22[2] = v26;
LABEL_15:
    ++v5;
    v6 += 64;
    a2 = 1;
    if (v28 == v5)
    {
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1BF9B5758();
  __break(1u);
  return result;
}

void sub_1BF918CA8(uint64_t a1, void *a2)
{
  v3 = sub_1BF9B4958();

  [a2 setUserData_];
}

unint64_t sub_1BF918D28()
{
  result = qword_1EBDE9488;
  if (!qword_1EBDE9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9488);
  }

  return result;
}

void sub_1BF918D7C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v6 = sub_1BF9B4A98();

  [a3 *a4];
}

void sub_1BF918DE8(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE9610, &qword_1BF9BEFF8);
  v3 = sub_1BF9B4CF8();

  [a2 setCommands_];
}

unint64_t sub_1BF918E68()
{
  result = qword_1EDBF49A8;
  if (!qword_1EDBF49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49A8);
  }

  return result;
}

unint64_t sub_1BF918EE0()
{
  result = qword_1EBDE94D0;
  if (!qword_1EBDE94D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE94D0);
  }

  return result;
}

uint64_t sub_1BF918F34(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE94F0, a2, type metadata accessor for DirectInvocationAction);
  result = sub_1BF9191E0(&qword_1EBDE94F8, v3, type metadata accessor for DirectInvocationAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF918FDC(uint64_t a1)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE9500, 255, type metadata accessor for UrlPunchOutInvocationAction);
  result = sub_1BF9191E0(&qword_1EBDE9508, 255, type metadata accessor for UrlPunchOutInvocationAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for UrlPunchOutInvocationAction()
{
  result = qword_1EBDE9520;
  if (!qword_1EBDE9520)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF9190B4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&unk_1EDBF4978, a2, type metadata accessor for UtteranceAction);
  result = sub_1BF9191E0(&unk_1EDBF4988, v3, type metadata accessor for UtteranceAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF919138(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = sub_1BF9191E0(&qword_1EBDE9510, a2, type metadata accessor for MachineUtteranceAction);
  result = sub_1BF9191E0(&qword_1EBDE9518, v3, type metadata accessor for MachineUtteranceAction);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF9191E0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BF919250(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1BF919290(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1BF91933C()
{
  result = sub_1BF9B4378();
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

_BYTE *sub_1BF9194E4(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for UrlPunchOutInvocationAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for DirectInvocationAction.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1BF91974C()
{
  result = qword_1EBDE9538;
  if (!qword_1EBDE9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9538);
  }

  return result;
}

unint64_t sub_1BF9197A4()
{
  result = qword_1EBDE9540;
  if (!qword_1EBDE9540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9540);
  }

  return result;
}

unint64_t sub_1BF9197FC()
{
  result = qword_1EBDE9548;
  if (!qword_1EBDE9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9548);
  }

  return result;
}

unint64_t sub_1BF919854()
{
  result = qword_1EBDE9550;
  if (!qword_1EBDE9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9550);
  }

  return result;
}

unint64_t sub_1BF9198AC()
{
  result = qword_1EBDE9558;
  if (!qword_1EBDE9558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9558);
  }

  return result;
}

unint64_t sub_1BF919904()
{
  result = qword_1EBDE9560;
  if (!qword_1EBDE9560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9560);
  }

  return result;
}

unint64_t sub_1BF91995C()
{
  result = qword_1EDBF4998;
  if (!qword_1EDBF4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF4998);
  }

  return result;
}

unint64_t sub_1BF9199B4()
{
  result = qword_1EDBF49A0;
  if (!qword_1EDBF49A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF49A0);
  }

  return result;
}

unint64_t sub_1BF919A0C()
{
  result = qword_1EBDE9568;
  if (!qword_1EBDE9568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9568);
  }

  return result;
}

unint64_t sub_1BF919A64()
{
  result = qword_1EBDE9570;
  if (!qword_1EBDE9570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9570);
  }

  return result;
}

unint64_t sub_1BF919ABC()
{
  result = qword_1EBDE9578;
  if (!qword_1EBDE9578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9578);
  }

  return result;
}

unint64_t sub_1BF919B14()
{
  result = qword_1EBDE9580;
  if (!qword_1EBDE9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDE9580);
  }

  return result;
}

unint64_t sub_1BF919B68()
{
  result = qword_1EDBF50D8;
  if (!qword_1EDBF50D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBF50D8);
  }

  return result;
}

uint64_t sub_1BF919BBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDE88A0, &qword_1BF9B7FC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF919C28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a2;
  v6 = a1;
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v8 >= v7)
  {
    v9 = *(a1 + 16);
  }

  else
  {
    v9 = *(a2 + 16);
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = swift_allocObject();
    v11 = 2 * ((_swift_stdlib_malloc_size(v10) - 32) / 64);
    v10[2] = v9;
    v10[3] = v11;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v13 = v10 + 4;
  v14 = v11 >> 1;
  v43 = v8;
  if (v9)
  {
    v40 = v6;
    v41 = v4;
    v39 = v5;
    v15 = v5 + 32;
    v16 = (v6 + 40);
    v14 -= v9;
    v17 = v9;
    do
    {
      v18 = *v16;
      *&v46 = *(v16 - 1);
      *(&v46 + 1) = v18;
      sub_1BF8D7914(v15, &v47);
      v19 = v49;
      v21 = v46;
      v20 = v47;
      v13[2] = v48;
      v13[3] = v19;
      *v13 = v21;
      v13[1] = v20;
      v13 += 4;

      v15 += 48;
      v16 += 2;
      --v17;
    }

    while (v17);
    v6 = v40;
    v4 = v41;
    v5 = v39;
  }

  v22 = v5 + 48 * v9 + 32;
  for (i = v6 + 16 * v9 + 40; ; i += 16)
  {
    if (v7 == v9)
    {
LABEL_35:
      v36 = v10[3];
      if (v36 >= 2)
      {
        v37 = v36 >> 1;
        v32 = __OFSUB__(v37, v14);
        v38 = v37 - v14;
        if (v32)
        {
          goto LABEL_44;
        }

        v10[2] = v38;
      }

      return v10;
    }

    if (v9 >= v7)
    {
      break;
    }

    if (__OFADD__(v9, 1))
    {
      goto LABEL_40;
    }

    if (v8 == v9)
    {
      goto LABEL_35;
    }

    if (v9 >= v8)
    {
      goto LABEL_41;
    }

    v44 = *(i - 8);
    result = sub_1BF8D7914(v22, v45);
    v46 = v44;
    v47 = v45[0];
    v48 = v45[1];
    v49 = v45[2];
    if (v14)
    {

      v24 = v10;
    }

    else
    {
      v25 = v10[3];
      if (((v25 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
      if (v26 <= 1)
      {
        v27 = 1;
      }

      else
      {
        v27 = v26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, v4);
      v24 = swift_allocObject();
      v28 = (_swift_stdlib_malloc_size(v24) - 32) / 64;
      v24[2] = v27;
      v24[3] = 2 * v28;
      v29 = v24 + 4;
      v30 = v10[3] >> 1;
      v13 = &v24[8 * v30 + 4];
      v14 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;
      if (v10[2])
      {
        if (v24 != v10 || v29 >= &v10[8 * v30 + 4])
        {
          memmove(v29, v10 + 4, v30 << 6);
        }

        v10[2] = 0;
      }

      else
      {
      }
    }

    v32 = __OFSUB__(v14--, 1);
    if (v32)
    {
      goto LABEL_42;
    }

    v33 = v46;
    v34 = v47;
    v35 = v49;
    v13[2] = v48;
    v13[3] = v35;
    *v13 = v33;
    v13[1] = v34;
    v13 += 4;
    ++v9;
    v22 += 48;
    v10 = v24;
    v8 = v43;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1BF919EE8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F8, qword_1BF9BEFE0);
    v7 = swift_allocObject();
    v8 = 2 * ((_swift_stdlib_malloc_size(v7) - 32) / 72);
    *(v7 + 2) = v6;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    v8 = *(MEMORY[0x1E69E7CC0] + 24);
  }

  v10 = v7 + 32;
  v11 = v8 >> 1;
  v34 = v4;
  if (v6)
  {
    v33 = v3;
    v32 = v2;
    v12 = v2 + 32;
    v13 = (v3 + 40);
    v11 -= v6;
    v14 = v6;
    do
    {
      v15 = *v13;
      __src[0] = *(v13 - 1);
      __src[1] = v15;
      sub_1BF8DFB90(v12, &__src[2], &qword_1EBDE95F0, &qword_1BF9B85D0);
      memcpy(v10, __src, 0x48uLL);
      v10 += 72;

      v12 += 56;
      v13 += 2;
      --v14;
    }

    while (v14);
    v4 = v34;
    v3 = v33;
    v2 = v32;
  }

  v16 = v2 + 56 * v6 + 32;
  for (i = (v3 + 16 * v6 + 40); ; i += 2)
  {
    if (v4 == v6)
    {
LABEL_35:
      v29 = *(v7 + 3);
      if (v29 >= 2)
      {
        v30 = v29 >> 1;
        v28 = __OFSUB__(v30, v11);
        v31 = v30 - v11;
        if (v28)
        {
          goto LABEL_44;
        }

        *(v7 + 2) = v31;
      }

      return v7;
    }

    if (v6 >= v4)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_40;
    }

    if (v5 == v6)
    {
      goto LABEL_35;
    }

    if (v6 >= v5)
    {
      goto LABEL_41;
    }

    v18 = v5;
    v19 = *i;
    v35[0] = *(i - 1);
    v35[1] = v19;
    sub_1BF8DFB90(v16, &v35[2], &qword_1EBDE95F0, &qword_1BF9B85D0);
    result = memcpy(__src, v35, 0x48uLL);
    if (v11)
    {

      v20 = v7;
    }

    else
    {
      v21 = *(v7 + 3);
      if (((v21 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_43;
      }

      v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
      if (v22 <= 1)
      {
        v23 = 1;
      }

      else
      {
        v23 = v22;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE95F8, qword_1BF9BEFE0);
      v20 = swift_allocObject();
      v24 = (_swift_stdlib_malloc_size(v20) - 32) / 72;
      *(v20 + 2) = v23;
      *(v20 + 3) = 2 * v24;
      v25 = v20 + 32;
      v26 = *(v7 + 3) >> 1;
      v10 = &v20[72 * v26 + 32];
      v11 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
      if (*(v7 + 2))
      {
        if (v20 != v7 || v25 >= &v7[72 * v26 + 32])
        {
          memmove(v25, v7 + 32, 72 * v26);
        }

        *(v7 + 2) = 0;
      }

      else
      {
      }
    }

    v28 = __OFSUB__(v11--, 1);
    if (v28)
    {
      goto LABEL_42;
    }

    v5 = v18;
    result = memcpy(v10, __src, 0x48uLL);
    v10 += 72;
    ++v6;
    v16 += 56;
    v7 = v20;
    v4 = v34;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_1BF91A1F0(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    result = sub_1BF9B51E8();
    v5 = *(a4 + 36);
    return result;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_10(unint64_t *a1)
{

  return sub_1BF919BBC(a1);
}

uint64_t OUTLINED_FUNCTION_29_2()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  return v0;
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1BF9B54A8();
}

unint64_t sub_1BF91A2FC(char a1)
{
  if (a1)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t BaseNotificationObserver.notificationName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t BaseNotificationObserver.notificationCallback.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t BaseNotificationObserver.__allocating_init(notificationName:notificationReceivedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0();
  v8 = swift_allocObject();
  BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(a1, a2, a3, a4);
  return v8;
}

uint64_t BaseNotificationObserver.init(notificationName:notificationReceivedCallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = -1;
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 48) = a4;
  v5 = sub_1BF9B4B18();
  swift_beginAccess();

  notify_register_check((v5 + 32), (v4 + 16));
  swift_endAccess();

  return v4;
}

Swift::Void __swiftcall BaseNotificationObserver.registerNotify()()
{
  v1 = v0;
  v2 = sub_1BF9B48C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  sub_1BF91B320();
  (*(v3 + 104))(v6, *MEMORY[0x1E69E7F98], v2);
  v9 = sub_1BF9B5058();
  (*(v3 + 8))(v6, v2);
  aBlock[4] = sub_1BF91B364;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF91AC20;
  aBlock[3] = &block_descriptor;
  v10 = _Block_copy(aBlock);

  v11 = sub_1BF9B4B18();
  swift_beginAccess();
  v12 = notify_register_dispatch((v11 + 32), (v1 + 16), v9, v10);
  swift_endAccess();

  _Block_release(v10);

  if (qword_1EDBF5568 != -1)
  {
    OUTLINED_FUNCTION_43_0();
  }

  v13 = sub_1BF9B47C8();
  __swift_project_value_buffer(v13, qword_1EDBF5570);

  v14 = sub_1BF9B47A8();
  v15 = sub_1BF9B5038();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v16 = 136315650;
    *(v16 + 4) = sub_1BF8DE810(v7, v8, aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v12;
    *(v16 + 18) = 2080;
    if (v12)
    {
      v17 = 0x64656C696146;
    }

    else
    {
      v17 = 0x73736563637553;
    }

    if (v12)
    {
      v18 = 0xE600000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    v19 = sub_1BF8DE810(v17, v18, aBlock);

    *(v16 + 20) = v19;
    _os_log_impl(&dword_1BF8B8000, v14, v15, "DarwinNotification notify_register for notification: %s. Registration result: %u (i.e %s)", v16, 0x1Cu);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_87();
    OUTLINED_FUNCTION_87();
  }
}

uint64_t sub_1BF91A7C4(int a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDE8E28, &qword_1BF9BD200);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_1BF9B4EB8();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  sub_1BF939C48(0, 0, v7, &unk_1BF9BF1E8, v9);
}

uint64_t sub_1BF91A8B4(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  *(v5 + 24) = a5;
  *(v5 + 40) = a4;
  v6 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BF91A948, 0, 0);
}

uint64_t sub_1BF91A948()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);
  *(v0 + 16) = 0;
  notify_get_state(v2, (v0 + 16));
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v0 + 16);
  v10 = (v3 + *v3);
  v6 = v3[1];
  v7 = swift_task_alloc();
  *(v0 + 32) = v7;
  *v7 = v0;
  v7[1] = sub_1BF91AA84;
  v8 = *MEMORY[0x1E69E9840];

  return v10(v5);
}

uint64_t sub_1BF91AA84()
{
  OUTLINED_FUNCTION_7();
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 32);
  v2 = *v0;
  OUTLINED_FUNCTION_3();
  *v3 = v2;

  v4 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1BF91ABA0, 0, 0);
}

uint64_t sub_1BF91ABA0()
{
  OUTLINED_FUNCTION_7();
  v4 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 8);
  v2 = *MEMORY[0x1E69E9840];

  return v1();
}

uint64_t sub_1BF91AC20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

Swift::Void __swiftcall BaseNotificationObserver.cancel()()
{
  v1 = v0;
  swift_beginAccess();
  if (*(v0 + 16) != -1)
  {
    if (qword_1EDBF5568 != -1)
    {
      OUTLINED_FUNCTION_43_0();
    }

    v2 = sub_1BF9B47C8();
    __swift_project_value_buffer(v2, qword_1EDBF5570);

    v3 = sub_1BF9B47A8();
    v4 = sub_1BF9B5038();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v7 = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1BF8DE810(*(v1 + 24), *(v1 + 32), &v7);
      _os_log_impl(&dword_1BF8B8000, v3, v4, "DarwinNotificationObserver notify_cancel for notification: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_87();
      OUTLINED_FUNCTION_87();
    }

    notify_cancel(*(v1 + 16));
    *(v1 + 16) = -1;
  }
}