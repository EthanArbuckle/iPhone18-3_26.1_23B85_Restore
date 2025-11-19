unint64_t sub_1C7250448()
{
  result = qword_1EDD08A38;
  if (!qword_1EDD08A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A38);
  }

  return result;
}

unint64_t sub_1C725049C()
{
  result = qword_1EDD08990;
  if (!qword_1EDD08990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08990);
  }

  return result;
}

unint64_t sub_1C72504F0()
{
  result = qword_1EC219B50;
  if (!qword_1EC219B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219B48);
    sub_1C7250574();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B50);
  }

  return result;
}

unint64_t sub_1C7250574()
{
  result = qword_1EC219B58;
  if (!qword_1EC219B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B58);
  }

  return result;
}

uint64_t sub_1C72505C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StoryGenerationSession(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1C7250680(void *result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C72506C4()
{
  result = qword_1EC219B60;
  if (!qword_1EC219B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B60);
  }

  return result;
}

uint64_t type metadata accessor for FreeformStoryKeyAssetElector()
{
  result = qword_1EDD088A8;
  if (!qword_1EDD088A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C725076C()
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

uint64_t sub_1C725083C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C725085C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 56) = v3;
  return result;
}

uint64_t sub_1C725090C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_1C725094C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PhotosIntelligence28FreeformStoryKeyAssetElectorC6SourceO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C72509E0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C7250A20(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for FreeformStoryKeyAssetElector.Diagnostics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C7250B60(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7250CA0()
{
  result = qword_1EC219B70;
  if (!qword_1EC219B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B70);
  }

  return result;
}

unint64_t sub_1C7250CF8()
{
  result = qword_1EC219B78;
  if (!qword_1EC219B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219B78);
  }

  return result;
}

unint64_t sub_1C7250D50()
{
  result = qword_1EDD08A28;
  if (!qword_1EDD08A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A28);
  }

  return result;
}

unint64_t sub_1C7250DA8()
{
  result = qword_1EDD08A30;
  if (!qword_1EDD08A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A30);
  }

  return result;
}

unint64_t sub_1C7250E00()
{
  result = qword_1EDD089F0;
  if (!qword_1EDD089F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089F0);
  }

  return result;
}

unint64_t sub_1C7250E58()
{
  result = qword_1EDD089F8;
  if (!qword_1EDD089F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089F8);
  }

  return result;
}

unint64_t sub_1C7250EB0()
{
  result = qword_1EDD08998;
  if (!qword_1EDD08998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08998);
  }

  return result;
}

unint64_t sub_1C7250F08()
{
  result = qword_1EDD089A0;
  if (!qword_1EDD089A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089A0);
  }

  return result;
}

unint64_t sub_1C7250F60()
{
  result = qword_1EDD089B0;
  if (!qword_1EDD089B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089B0);
  }

  return result;
}

unint64_t sub_1C7250FB8()
{
  result = qword_1EDD089B8;
  if (!qword_1EDD089B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089B8);
  }

  return result;
}

unint64_t sub_1C7251010()
{
  result = qword_1EDD089C0;
  if (!qword_1EDD089C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089C0);
  }

  return result;
}

unint64_t sub_1C7251068()
{
  result = qword_1EDD089C8;
  if (!qword_1EDD089C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089C8);
  }

  return result;
}

unint64_t sub_1C72510C0()
{
  result = qword_1EDD089D0;
  if (!qword_1EDD089D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089D0);
  }

  return result;
}

unint64_t sub_1C7251118()
{
  result = qword_1EDD089D8;
  if (!qword_1EDD089D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089D8);
  }

  return result;
}

unint64_t sub_1C7251170()
{
  result = qword_1EDD089E0;
  if (!qword_1EDD089E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089E0);
  }

  return result;
}

unint64_t sub_1C72511C8()
{
  result = qword_1EDD089E8;
  if (!qword_1EDD089E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD089E8);
  }

  return result;
}

unint64_t sub_1C7251220()
{
  result = qword_1EDD08A08;
  if (!qword_1EDD08A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A08);
  }

  return result;
}

unint64_t sub_1C7251278()
{
  result = qword_1EDD08A10;
  if (!qword_1EDD08A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD08A10);
  }

  return result;
}

void *sub_1C72512CC(void *result)
{
  if (result)
  {
    v1 = result;

    return sub_1C75504FC();
  }

  return result;
}

double sub_1C725130C@<D0>(uint64_t *a1@<X8>)
{
  v2 = sub_1C73D9104();
  result = v5;
  *a1 = v2;
  a1[1] = v4;
  *(a1 + 2) = v5;
  return result;
}

uint64_t OUTLINED_FUNCTION_32_23()
{
  *(v1 - 104) = v0;

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_35_17()
{

  sub_1C6F7ED9C();
}

uint64_t OUTLINED_FUNCTION_42_23(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  *v15 = a1;

  return sub_1C6F765A4(v17, v16, va);
}

uint64_t OUTLINED_FUNCTION_43_22(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t GlobalTrait.description.getter()
{
  v1 = v0;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x54206C61626F6C47, 0xEE00203A74696172);
  MEMORY[0x1CCA5CD70](*v1, v1[1]);
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  type metadata accessor for GlobalTrait();
  v2 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C759F720);
  MEMORY[0x1CCA5CD70](v1[2], v1[3]);
  MEMORY[0x1CCA5CD70](0x203A65707954202CLL, 0xE800000000000000);
  sub_1C75519EC();
  return 0;
}

uint64_t sub_1C7251628(uint64_t a1)
{
  v2 = sub_1C72588DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7251664(uint64_t a1)
{
  v2 = sub_1C72588DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C72516A0(uint64_t a1)
{
  v2 = sub_1C7258984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72516DC(uint64_t a1)
{
  v2 = sub_1C7258984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7251718(uint64_t a1)
{
  v2 = sub_1C7258930();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7251754(uint64_t a1)
{
  v2 = sub_1C7258930();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTraitType.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B88);
  OUTLINED_FUNCTION_3_0();
  v24 = v4;
  v25 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v21 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B90);
  OUTLINED_FUNCTION_3_0();
  v21 = v8;
  v22 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219B98);
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v21 - v16;
  v18 = *v0;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72588DC();
  sub_1C755200C();
  v19 = (v14 + 8);
  if (v18)
  {
    sub_1C7258930();
    v20 = v23;
    sub_1C7551C6C();
    (*(v24 + 8))(v20, v25);
  }

  else
  {
    sub_1C7258984();
    sub_1C7551C6C();
    (*(v21 + 8))(v11, v22);
  }

  (*v19)(v17, v12);
  OUTLINED_FUNCTION_125();
}

uint64_t GlobalTraitType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void GlobalTraitType.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v45 = v0;
  v2 = v1;
  v42 = v3;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BA8);
  OUTLINED_FUNCTION_3_0();
  v41 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BB0);
  OUTLINED_FUNCTION_3_0();
  v40 = v7;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BB8);
  OUTLINED_FUNCTION_3_0();
  v43 = v12;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v37 - v14;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72588DC();
  v16 = v45;
  sub_1C7551FFC();
  if (v16)
  {
    goto LABEL_10;
  }

  v38 = v6;
  v39 = v10;
  v45 = v2;
  v17 = v44;
  v18 = sub_1C7551C5C();
  v19 = sub_1C6FD80E0(v18, 0);
  if (v21 == v22 >> 1)
  {
    v44 = v19;
LABEL_9:
    v34 = sub_1C75518EC();
    swift_allocError();
    v36 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215490);
    *v36 = &type metadata for GlobalTraitType;
    sub_1C7551B5C();
    sub_1C75518DC();
    (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v15, v11);
    v2 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(v2);
LABEL_11:
    OUTLINED_FUNCTION_125();
    return;
  }

  v37[1] = 0;
  if (v21 < (v22 >> 1))
  {
    v23 = *(v20 + v21);
    v24 = sub_1C6FD80C8(v21 + 1);
    v26 = v25;
    v28 = v27;
    swift_unknownObjectRelease();
    if (v26 == v28 >> 1)
    {
      if (v23)
      {
        sub_1C7258930();
        OUTLINED_FUNCTION_5_3();
        v29 = v42;
        v30 = v43;
        swift_unknownObjectRelease();
        v31 = OUTLINED_FUNCTION_81_13();
        v33 = v17;
      }

      else
      {
        sub_1C7258984();
        OUTLINED_FUNCTION_5_3();
        v29 = v42;
        v30 = v43;
        swift_unknownObjectRelease();
        v31 = OUTLINED_FUNCTION_81_13();
        v33 = v38;
      }

      v32(v31, v33);
      (*(v30 + 8))(v15, v26);
      *v29 = v23;
      __swift_destroy_boxed_opaque_existential_1(v45);
      goto LABEL_11;
    }

    v44 = v24;
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t GlobalTrait.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t GlobalTrait.retrievalQuery.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t GlobalTrait.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for GlobalTrait() + 24);
  sub_1C754DFFC();
  OUTLINED_FUNCTION_12();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t GlobalTrait.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for GlobalTrait();
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t GlobalTrait.assetUUIDs.getter()
{
  type metadata accessor for GlobalTrait();

  return sub_1C75504FC();
}

uint64_t GlobalTrait.assetUUIDs.setter()
{
  OUTLINED_FUNCTION_300();
  v2 = *(type metadata accessor for GlobalTrait() + 32);

  *(v1 + v2) = v0;
  return result;
}

double (*GlobalTrait.assetUUIDs.modify())(double)
{
  OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait();
  return CGRectMake;
}

uint64_t GlobalTrait.titleAssetUUIDs.getter()
{
  type metadata accessor for GlobalTrait();

  return sub_1C75504FC();
}

uint64_t GlobalTrait.titleAssetUUIDs.setter()
{
  OUTLINED_FUNCTION_300();
  v2 = *(type metadata accessor for GlobalTrait() + 36);

  *(v1 + v2) = v0;
  return result;
}

double (*GlobalTrait.titleAssetUUIDs.modify())(double)
{
  OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait();
  return CGRectMake;
}

uint64_t GlobalTrait.queryAssetUUIDs.getter()
{
  type metadata accessor for GlobalTrait();

  return sub_1C75504FC();
}

uint64_t GlobalTrait.queryAssetUUIDs.setter()
{
  OUTLINED_FUNCTION_300();
  v2 = *(type metadata accessor for GlobalTrait() + 40);

  *(v1 + v2) = v0;
  return result;
}

double (*GlobalTrait.queryAssetUUIDs.modify())(double)
{
  OUTLINED_FUNCTION_300();
  type metadata accessor for GlobalTrait();
  return CGRectMake;
}

uint64_t GlobalTrait.init(title:retrievalQuery:type:assetUUIDs:titleAssetUUIDs:queryAssetUUIDs:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  v18 = *a5;
  v19 = type metadata accessor for GlobalTrait();
  v20 = v19[9];
  v21 = v19[10];
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  *(a9 + v19[7]) = v18;
  *(a9 + v19[8]) = a6;
  *(a9 + v20) = a7;
  *(a9 + v21) = a8;
  v22 = v19[6];
  sub_1C754DFFC();
  OUTLINED_FUNCTION_12();
  v24 = *(v23 + 32);

  return v24(a9 + v22, a10);
}

PhotosIntelligence::GlobalTrait::CodingKeys_optional __swiftcall GlobalTrait.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

PhotosIntelligence::GlobalTrait::CodingKeys_optional __swiftcall GlobalTrait.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = GlobalTrait.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

uint64_t sub_1C72523B0()
{
  result = 0x656C746974;
  switch(*v0)
  {
    case 1:
      result = 0x6176656972746572;
      break;
    case 2:
      result = 25705;
      break;
    case 3:
      result = 1701869940;
      break;
    case 4:
      result = 0x4955557465737361;
      break;
    case 5:
      result = 0x756F437465737361;
      break;
    case 6:
      v2 = 0x41656C746974;
      goto LABEL_9;
    case 7:
      v2 = 0x417972657571;
LABEL_9:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x7373000000000000;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C72524C4@<X0>(uint64_t *a1@<X8>)
{
  result = GlobalTrait.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72524F8(uint64_t a1)
{
  v2 = sub_1C72589D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7252534(uint64_t a1)
{
  v2 = sub_1C72589D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void GlobalTrait.encode(to:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v0;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BC0);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1C72589D8();
  sub_1C755200C();
  LOBYTE(v18) = 0;
  OUTLINED_FUNCTION_97();
  sub_1C7551CCC();
  if (!v1)
  {
    LOBYTE(v18) = 1;
    OUTLINED_FUNCTION_97();
    sub_1C7551CCC();
    v11 = type metadata accessor for GlobalTrait();
    LOBYTE(v18) = 2;
    sub_1C754DFFC();
    OUTLINED_FUNCTION_4_63();
    sub_1C725954C(v12, v13);
    OUTLINED_FUNCTION_30_27();
    sub_1C7551D2C();
    LOBYTE(v18) = *(v2 + v11[7]);
    sub_1C7258A2C();
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
    v14 = *(v2 + v11[8]);
    LOBYTE(v18) = 5;
    OUTLINED_FUNCTION_97();
    sub_1C7551D0C();
    v18 = v14;
    sub_1C75504FC();
    sub_1C70401E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();

    if (*(v2 + v11[9]))
    {
      v18 = *(v2 + v11[9]);
      sub_1C75504FC();
      sub_1C70401E8();
      v15 = v18;
    }

    else
    {
      v15 = 0;
    }

    v17 = v15;
    v18 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217538);
    sub_1C7139F74();
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();

    if (*(v2 + v11[10]))
    {
      v18 = *(v2 + v11[10]);
      sub_1C75504FC();
      sub_1C70401E8();
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    v18 = v16;
    OUTLINED_FUNCTION_26_32();
    OUTLINED_FUNCTION_97();
    sub_1C7551D2C();
  }

  (*(v7 + 8))(v10, v5);
  OUTLINED_FUNCTION_125();
}

void GlobalTrait.init(from:)()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v23 = v3;
  sub_1C754DFFC();
  OUTLINED_FUNCTION_3_0();
  v24 = v5;
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BC8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v9);
  v26 = type metadata accessor for GlobalTrait();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = (v12 - v11);
  v14 = OUTLINED_FUNCTION_66_2();
  __swift_project_boxed_opaque_existential_1(v14, v15);
  sub_1C72589D8();
  sub_1C7551FFC();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_40_26();
    *v13 = sub_1C7551BBC();
    v13[1] = v16;
    OUTLINED_FUNCTION_40_26();
    v13[2] = sub_1C7551BBC();
    v13[3] = v17;
    LOBYTE(v27) = 2;
    OUTLINED_FUNCTION_4_63();
    sub_1C725954C(v18, v19);
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    (*(v24 + 32))(v13 + v26[6], v8, v25);
    sub_1C7258A80();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    *(v13 + v26[7]) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551C1C();
    *(v13 + v26[8]) = v27;
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551BAC();
    *(v13 + v26[9]) = v27;
    OUTLINED_FUNCTION_11_45();
    OUTLINED_FUNCTION_40_26();
    sub_1C7551BAC();
    v20 = v26[10];
    v21 = OUTLINED_FUNCTION_10_54();
    v22(v21);
    *(v13 + v20) = v27;
    sub_1C7258AD4(v13, v23);
    __swift_destroy_boxed_opaque_existential_1(v2);
    sub_1C7258BDC();
  }

  OUTLINED_FUNCTION_125();
}

uint64_t static GlobalTrait.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1C7551DBC() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for GlobalTrait();
  if ((sub_1C754DFAC() & 1) == 0 || *(a1 + v6[7]) != *(a2 + v6[7]) || (sub_1C70020D4(*(a1 + v6[8]), *(a2 + v6[8])) & 1) == 0)
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    if (!v9 || (sub_1C70020D4(v8, v9) & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = v6[10];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11)
  {
    if (v12 && (sub_1C70020D4(v11, v12) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

void GlobalTrait.hash(into:)()
{
  sub_1C75505AC();
  sub_1C75505AC();
  v1 = type metadata accessor for GlobalTrait();
  sub_1C754DFFC();
  OUTLINED_FUNCTION_4_63();
  sub_1C725954C(v2, v3);
  sub_1C755059C();
  MEMORY[0x1CCA5E460](*(v0 + v1[7]));
  sub_1C70418D0();
  if (*(v0 + v1[9]))
  {
    sub_1C7551F5C();
    sub_1C70418D0();
  }

  else
  {
    sub_1C7551F5C();
  }

  if (*(v0 + v1[10]))
  {
    sub_1C7551F5C();
    OUTLINED_FUNCTION_57_0();

    sub_1C70418D0();
  }

  else
  {
    sub_1C7551F5C();
  }
}

uint64_t GlobalTrait.hashValue.getter()
{
  sub_1C7551F3C();
  GlobalTrait.hash(into:)();
  return sub_1C7551FAC();
}

uint64_t sub_1C72530E0()
{
  sub_1C7551F3C();
  GlobalTrait.hash(into:)();
  return sub_1C7551FAC();
}

PhotosIntelligence::GlobalTraitCompletion __swiftcall GlobalTraitCompletion.init(collectionTraits:speculativeTraitQueryByTitle:)(Swift::OpaquePointer collectionTraits, Swift::OpaquePointer speculativeTraitQueryByTitle)
{
  v2->_rawValue = collectionTraits._rawValue;
  v2[1]._rawValue = speculativeTraitQueryByTitle._rawValue;
  result.speculativeTraitQueryByTitle = speculativeTraitQueryByTitle;
  result.collectionTraits = collectionTraits;
  return result;
}

uint64_t GlobalTraitCompletion.description.getter()
{
  v1 = *v0;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A6740);
  v2 = MEMORY[0x1CCA5D090](v1, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v2);

  MEMORY[0x1CCA5CD70](0xD00000000000002CLL, 0x80000001C75A6760);
  v3 = sub_1C75504BC();
  MEMORY[0x1CCA5CD70](v3);

  return 0;
}

Swift::Int __swiftcall GlobalTraitCompletion.numberOfTraits()()
{
  v1 = *(*v0 + 16);
  v2 = *(v0[1] + 16);
  result = v1 + v2;
  if (__OFADD__(v1, v2))
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C7253278()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07CB0);
  __swift_project_value_buffer(v0, qword_1EDD07CB0);
  return sub_1C754FEFC();
}

uint64_t sub_1C7253320()
{
  if (qword_1EC213F10 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC25B738);
  v0 = qword_1EC25B740;
  if (!qword_1EC25B740)
  {
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    v3[1] = byte_1EC218F88;
    static LLMWrapperUtils.globalTraitsModelType(for:)(v3);
    static LLMWrapper.tokenGenerator(for:)();
    v0 = v1;
    qword_1EC25B740 = v1;
  }

  os_unfair_lock_unlock(&dword_1EC25B738);
  return v0;
}

uint64_t sub_1C72533FC()
{
  v0 = sub_1C754FDEC();
  __swift_allocate_value_buffer(v0, qword_1EDD289F0);
  __swift_project_value_buffer(v0, qword_1EDD289F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C20);
  v1 = sub_1C754FDCC();
  OUTLINED_FUNCTION_18(v1);
  *(swift_allocObject() + 16) = xmmword_1C75604F0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_5_58();
  sub_1C6FF60E4(v2);
  OUTLINED_FUNCTION_30_2();
  sub_1C754FDBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  sub_1C7259428();
  OUTLINED_FUNCTION_27_30();
  OUTLINED_FUNCTION_55_20();
  sub_1C754FDBC();
  return sub_1C754FDDC();
}

uint64_t sub_1C7253570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_5_58();
  sub_1C6FF60E4(v3);
  OUTLINED_FUNCTION_30_2();
  sub_1C754FD3C();
  sub_1C754FD4C();
  OUTLINED_FUNCTION_3();
  (*(v4 + 8))(a1);
  return v2;
}

uint64_t sub_1C72536DC(uint64_t a1, uint64_t a2)
{
  v6 = a1 == OUTLINED_FUNCTION_30_2() && v4 == v5;
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    OUTLINED_FUNCTION_55_20();
    if (a1 == OUTLINED_FUNCTION_27_30() && a2 == v8)
    {

      return 1;
    }

    else
    {
      v10 = sub_1C7551DBC();

      if (v10)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }
}

void sub_1C7253790()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219C08);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v9 - v7;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C72594A4();
  sub_1C755200C();
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_9(&qword_1EDD0CF60);
  OUTLINED_FUNCTION_30_27();
  sub_1C7551D2C();
  if (!v0)
  {
    v10 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
    sub_1C703195C(&qword_1EDD06C70);
    OUTLINED_FUNCTION_30_27();
    sub_1C7551D2C();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C7253954(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219BF8);
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C72594A4();
  sub_1C7551FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  HIBYTE(v10) = 0;
  OUTLINED_FUNCTION_8_9(&qword_1EDD0CF50);
  OUTLINED_FUNCTION_42_1();
  v9 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C50);
  HIBYTE(v10) = 1;
  sub_1C703195C(&qword_1EC216128);
  OUTLINED_FUNCTION_42_1();
  (*(v4 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_1C7253B48(uint64_t a1)
{
  v2 = sub_1C72594A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7253B84(uint64_t a1)
{
  v2 = sub_1C72594A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C7253BC0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDD07CD8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C754FDEC();
  v3 = __swift_project_value_buffer(v2, qword_1EDD289F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C7253C68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C7253570(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C7253C94@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C7253954(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1C7253CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[29] = a5;
  v6[30] = a6;
  v6[27] = a3;
  v6[28] = a4;
  v6[25] = a1;
  v6[26] = a2;
  v6[31] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v6[32] = v7;
  v6[33] = *(v7 - 8);
  v6[34] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v6[35] = swift_task_alloc();
  v6[36] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v6[37] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[38] = v8;
  v6[39] = *(v8 - 8);
  v6[40] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[41] = v9;
  v6[42] = *(v9 - 8);
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v6[44] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[45] = v10;
  v6[46] = *(v10 - 8);
  v6[47] = swift_task_alloc();
  v6[48] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[52] = v12;
  v6[53] = *(v12 - 8);
  v6[54] = swift_task_alloc();
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72540B0, 0, 0);
}

uint64_t sub_1C72543C8()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 576) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C72544C4()
{
  v2 = v0[35];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v102 = v0[69];
    v101 = v0[51];
    v89 = v0[47];
    v92 = v0[46];
    v95 = v0[45];
    v98 = v0[48];
    v85 = v0[40];
    v4 = v0[39];
    v100 = v0[29];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v76);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v77, v81, v85);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v78, v82, v86, v89, v92, v95, v98);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v79, v83, v87, v90, v93, v96, 1, 2, v100, v101);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v102(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v43 = swift_initStackObject();
    v51 = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v80, v84, v88, v91, v94, v97, v99);
    inited[4].n128_u64[1] = v51;
    OUTLINED_FUNCTION_6_61();
    inited[5].n128_u64[0] = sub_1C725954C(v52, v53);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v103, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    OUTLINED_FUNCTION_72_0();

    v55 = OUTLINED_FUNCTION_81_13();
    v56(v55);
    v57 = OUTLINED_FUNCTION_118_0();
    v58(v57);
    v59 = OUTLINED_FUNCTION_113_1();
    v60(v59);
    v61 = OUTLINED_FUNCTION_100_0();
    v62(v61);
  }

  v63 = v0[61];
  v64 = v0[59];
  v65 = v0[52];
  v66 = v0[30];
  sub_1C755039C();
  v0[24] = v66;
  OUTLINED_FUNCTION_106_0();
  v63(v64, v65);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  v68 = swift_task_alloc();
  v0[73] = v68;
  OUTLINED_FUNCTION_19_44();
  v71 = sub_1C725954C(v69, v70);
  OUTLINED_FUNCTION_5_58();
  v73 = sub_1C6FF60E4(v72);
  *v68 = v0;
  v68[1] = sub_1C725495C;
  v74 = v0[32];

  return MEMORY[0x1EEE0A3A0](v0 + 23, v67, v67, v74, v67, v71, v73);
}

uint64_t sub_1C725495C()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 592) = v0;

  (*(v2[33] + 8))(v2[34], v2[32]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7254AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[61];
  v34 = v22[55];
  v35 = v22[54];
  v36 = v22[51];
  v37 = v22[47];
  v38 = v22[44];
  v39 = v22[43];
  v40 = v22[40];
  v41 = v22[37];
  v42 = v22[35];
  v43 = v22[34];
  (*(v22[46] + 8))(v22[48], v22[45]);
  v24 = OUTLINED_FUNCTION_156();
  v23(v24);

  OUTLINED_FUNCTION_128_0();

  return v27(v25, v26, v27, v28, v29, v30, v31, v32, a9, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, a20, a21, a22);
}

uint64_t static GlobalTraitCompletionGeneration.generateGlobalTraitCompletions_DeprecatedGMS(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v1[15] = v2;
  v1[16] = v0;
  v1[13] = v3;
  v1[14] = v4;
  v1[11] = v5;
  v1[12] = v6;
  v7 = sub_1C754FA7C();
  v1[17] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_77();
  v9 = sub_1C754E15C();
  v1[20] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_77();
  v11 = sub_1C754E72C();
  v1[23] = v11;
  OUTLINED_FUNCTION_18(v11);
  v1[24] = v12;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = type metadata accessor for LLMConfiguration(0);
  v1[29] = OUTLINED_FUNCTION_77();
  v13 = sub_1C754F38C();
  v1[30] = v13;
  OUTLINED_FUNCTION_18(v13);
  v1[31] = v14;
  v1[32] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1C7254DE0()
{
  v77 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1C754F1CC();
  sub_1C754F2CC();
  v3 = sub_1C7253320();
  *(v0 + 264) = v3;
  if (v3)
  {
    OUTLINED_FUNCTION_300();
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    static LLMWrapperUtils.globalTraitsModelType(for:)(v76);
    v4 = v76[0];
    type metadata accessor for LLMConfigurationProvider();
    LOBYTE(v74[0]) = v4;
    if (qword_1EDD07CA8 != -1)
    {
      OUTLINED_FUNCTION_29_27();
    }

    v5 = *(v0 + 232);
    v6 = sub_1C754FF1C();
    v7 = __swift_project_value_buffer(v6, qword_1EDD07CB0);
    *(v0 + 272) = v7;
    static LLMConfigurationProvider.configuration(for:logger:)(v74, v7, v5);
    v71 = v7;
    v73 = v1;
    v17 = *(v0 + 224);
    v16 = *(v0 + 232);
    v18 = v4;
    v20 = *(v0 + 168);
    v19 = *(v0 + 176);
    v22 = *(v0 + 152);
    v21 = *(v0 + 160);
    v24 = *(v0 + 136);
    v23 = *(v0 + 144);
    v70 = *(v0 + 96);
    v74[0] = OUTLINED_FUNCTION_41_24();
    v74[1] = v25;
    *v75 = *(v26 + 32);
    *&v75[9] = *(v26 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    (*(v20 + 16))(v19, v16 + *(v17 + 44), v21);
    (*(v23 + 16))(v22, v16 + *(v17 + 24), v24);
    if (v70)
    {
      v27 = *(v0 + 96);
      sub_1C75504FC();
      if (sub_1C71656D8())
      {
        v28 = *(v0 + 88);
        v29 = (v27 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock(v29);
        sub_1C72583D4(&v29[2], v18, v28, (v0 + 16));
        os_unfair_lock_unlock(v29);
      }
    }

    v30 = *(*(v0 + 192) + 16);
    v30(*(v0 + 208), *(v0 + 216), *(v0 + 184));
    sub_1C75504FC();
    v31 = sub_1C754FEEC();
    v32 = sub_1C75511BC();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 208);
    if (v33)
    {
      v69 = *(v0 + 192);
      v67 = *(v0 + 200);
      v68 = *(v0 + 184);
      v35 = swift_slowAlloc();
      *&v74[0] = swift_slowAlloc();
      *v35 = 136315651;
      v76[0] = v18;
      LLMModelType.description.getter();
      v38 = sub_1C6F765A4(v36, v37, v74);

      *(v35 + 4) = v38;
      *(v35 + 12) = 2085;
      v39 = sub_1C75504BC();
      v41 = sub_1C6F765A4(v39, v40, v74);

      *(v35 + 14) = v41;
      *(v35 + 22) = 2080;
      v30(v67, v34, v68);
      sub_1C75506EC();
      v42 = *(v69 + 8);
      v42(v34, v68);
      v43 = OUTLINED_FUNCTION_82();
      v46 = sub_1C6F765A4(v43, v44, v45);

      *(v35 + 24) = v46;
      _os_log_impl(&dword_1C6F5C000, v31, v32, "Generating global traits v2 using GMS one-shot path using backend %s with prompt bindings %{sensitive}s and sampling parameters: %s", v35, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v48 = *(v0 + 184);
      v47 = *(v0 + 192);

      v42 = *(v47 + 8);
      v42(v34, v48);
    }

    *(v0 + 280) = v42;
    sub_1C75504FC();
    v49 = sub_1C754FEEC();
    v50 = sub_1C75511BC();

    if (os_log_type_enabled(v49, v50))
    {
      OUTLINED_FUNCTION_41_0();
      v51 = OUTLINED_FUNCTION_31_0();
      *&v74[0] = v51;
      *v71 = 136642819;
      v52 = sub_1C75504BC();
      v54 = sub_1C6F765A4(v52, v53, v74);

      *(v71 + 4) = v54;
      OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v55, v56, "Generating global trait with prompt bindings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v57 = *(v0 + 216);
    v58 = *(v0 + 176);
    v59 = *(v0 + 152);
    v60 = *(v0 + 120);
    v61 = *(v0 + 128);
    v62 = *(v0 + 88);
    v63 = v60[3];
    v72 = v60[4];
    __swift_project_boxed_opaque_existential_1(v60, v63);
    *(v0 + 73) = 2;
    v64 = swift_task_alloc();
    *(v0 + 288) = v64;
    v64[2] = v61;
    v64[3] = v59;
    v64[4] = v62;
    v64[5] = v73;
    v64[6] = v57;
    v64[7] = v58;
    v65 = swift_task_alloc();
    *(v0 + 296) = v65;
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    *v65 = v0;
    v65[1] = sub_1C7255558;

    return sub_1C70597B4(v0 + 80, (v0 + 73), &unk_1C757C2B8, v64, v63, v66, v72);
  }

  else
  {
    v9 = *(v0 + 248);
    v8 = *(v0 + 256);
    v10 = *(v0 + 240);
    v11 = *(v0 + 104);
    v12 = *(v0 + 112);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    __swift_project_boxed_opaque_existential_1(v11, v2[3]);
    OUTLINED_FUNCTION_57_0();
    sub_1C754F1AC();
    (*(v9 + 8))(v8, v10);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v13 + 8))(v12);
    OUTLINED_FUNCTION_57_19();

    OUTLINED_FUNCTION_43();

    return v14();
  }
}

uint64_t sub_1C7255558()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 304) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7255664()
{
  v39 = v0;
  v2 = v0[10];
  sub_1C75504FC();
  v3 = sub_1C754FEEC();
  v4 = sub_1C75511BC();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_41_0();
    v5 = OUTLINED_FUNCTION_31_0();
    v38 = v5;
    *v1 = 136642819;
    v6 = MEMORY[0x1CCA5D090](v2, MEMORY[0x1E69E6158]);
    v8 = sub_1C6F765A4(v6, v7, &v38);

    *(v1 + 4) = v8;
    OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v9, v10, "Generated global trait completions %{sensitive}s from GMS one-shot templated completion SPI");
    __swift_destroy_boxed_opaque_existential_1(v5);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v37 = v2;
  v11 = v0[38];
  sub_1C754F2EC();
  v12 = v0[32];
  v13 = v0[31];
  v36 = v0[30];
  v34 = v0[35];
  v35 = v0[27];
  if (v11)
  {
    v33 = v0[23];
    v31 = v0[22];
    v15 = v0[20];
    v14 = v0[21];
    v16 = v0[32];
    v18 = v0[18];
    v17 = v0[19];
    v19 = v0[17];
    v20 = v0[13];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    (*(v18 + 8))(v17, v19);
    (*(v14 + 8))(v31, v15);
    v34(v35, v33);
    OUTLINED_FUNCTION_10_3(v20);
    OUTLINED_FUNCTION_431();
    sub_1C754F1AC();
    (*(v13 + 8))(v16, v36);
    OUTLINED_FUNCTION_57_19();

    OUTLINED_FUNCTION_43();

    return v21();
  }

  else
  {
    v23 = v0[21];
    v30 = v0[22];
    v24 = v0[19];
    v25 = v0[20];
    v32 = v0[23];
    v27 = v0[17];
    v26 = v0[18];
    v28 = v0[13];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    (*(v26 + 8))(v24, v27);
    (*(v23 + 8))(v30, v25);
    v34(v35, v32);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    OUTLINED_FUNCTION_229_0();
    sub_1C754F1AC();
    (*(v13 + 8))(v12, v36);

    v29 = v0[1];

    return v29(v37);
  }
}

uint64_t sub_1C72559EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v38 = v18[35];
  v39 = v18[32];
  v19 = v18[31];
  v35 = v18[24];
  v36 = v18[23];
  v37 = v18[27];
  v20 = v18[13];
  v40 = v18[30];
  v41 = v18[14];

  OUTLINED_FUNCTION_0_114();
  sub_1C7258BDC();
  v21 = OUTLINED_FUNCTION_431();
  v22(v21);
  v23 = OUTLINED_FUNCTION_323();
  v24(v23);
  v38(v37, v36);
  OUTLINED_FUNCTION_10_3(v20);
  OUTLINED_FUNCTION_0_11();
  sub_1C754F1AC();
  (*(v19 + 8))(v39, v40);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v25 + 8))(v41);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, v40, v41, a16, a17, a18);
}

uint64_t sub_1C7255B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7255C24, 0, 0);
}

uint64_t sub_1C7255C24()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  OUTLINED_FUNCTION_72_14(v1);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_22(v4);

  return sub_1C7253CDC(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7255CF0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *v6 = *v2;
  *(v5 + 88) = v1;

  v7 = *(v4 + 72);
  if (!v1)
  {
    *(v5 + 96) = a1;
  }

  sub_1C6FB5FC8(v7, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7255E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[30] = a5;
  v6[31] = a6;
  v6[28] = a3;
  v6[29] = a4;
  v6[26] = a1;
  v6[27] = a2;
  v6[32] = *a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E00);
  v6[33] = v7;
  v6[34] = *(v7 - 8);
  v6[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E08);
  v6[36] = swift_task_alloc();
  v6[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E10);
  v6[38] = swift_task_alloc();
  v8 = sub_1C754EECC();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v9 = sub_1C754EEEC();
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E18);
  v6[45] = swift_task_alloc();
  v10 = sub_1C754FD9C();
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E20);
  v6[50] = v11;
  v6[51] = *(v11 - 8);
  v6[52] = swift_task_alloc();
  v12 = sub_1C755029C();
  v6[53] = v12;
  v6[54] = *(v12 - 8);
  v6[55] = swift_task_alloc();
  v6[56] = swift_task_alloc();
  v6[57] = swift_task_alloc();
  v6[58] = swift_task_alloc();
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7256220, 0, 0);
}

uint64_t sub_1C7256538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 584) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7256634()
{
  v2 = v0[36];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E28);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_1C6FB5FC8(v2, &qword_1EC214E08);
  }

  else
  {
    v100 = v0[70];
    v99 = v0[52];
    v87 = v0[48];
    v90 = v0[47];
    v93 = v0[46];
    v96 = v0[49];
    v83 = v0[41];
    v4 = v0[40];
    v98 = v0[30];
    v5 = OUTLINED_FUNCTION_71_0();
    v6 = v1(v5);
    v14 = OUTLINED_FUNCTION_85(v6, v7, v8, v9, v10, v11, v12, v13, v74);
    v3(v14);
    v15 = OUTLINED_FUNCTION_125_0();
    v16 = v1(v15);
    v24 = OUTLINED_FUNCTION_124_0(v16, v17, v18, v19, v20, v21, v22, v23, v75, v79, v83);
    v3(v24);
    v25 = sub_1C754EEBC();
    v33 = OUTLINED_FUNCTION_84_1(v25, v26, v27, v28, v29, v30, v31, v32, v76, v80, v84, v87, v90, v93, v96);
    v34(v33);
    v35 = OUTLINED_FUNCTION_57_0();
    v36(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E30);
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38);
    inited = swift_initStackObject();
    v38 = OUTLINED_FUNCTION_61_2(inited, "_OverrideConfigurationHelper.samplingParameters(.dynamic(completionParameters))", xmmword_1C755BAB0, v77, v81, v85, v88, v91, v94, 1, 2, v98, v99);
    v39(v38);
    v40 = OUTLINED_FUNCTION_103_2();
    v41(v40);
    inited[4].n128_u64[1] = v4;
    __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    sub_1C754EBEC();
    v42 = OUTLINED_FUNCTION_57_0();
    v100(v42);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E40);
    v43 = swift_initStackObject();
    v51 = OUTLINED_FUNCTION_68_0(v43, v44, v45, v46, v47, v48, v49, v50, v78, v82, v86, v89, v92, v95, v97);
    inited[4].n128_u64[1] = v51;
    OUTLINED_FUNCTION_6_61();
    inited[5].n128_u64[0] = sub_1C725954C(v52, v53);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&inited[3]);
    (*(*(v51 - 8) + 16))(boxed_opaque_existential_0, v101, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E48);
    OUTLINED_FUNCTION_82();
    sub_1C75504DC();
    OUTLINED_FUNCTION_72_0();

    v55 = OUTLINED_FUNCTION_81_13();
    v56(v55);
    v57 = OUTLINED_FUNCTION_118_0();
    v58(v57);
    v59 = OUTLINED_FUNCTION_113_1();
    v60(v59);
    v61 = OUTLINED_FUNCTION_100_0();
    v62(v61);
  }

  v63 = v0[62];
  v64 = v0[60];
  v65 = v0[53];
  v66 = v0[31];
  sub_1C755039C();
  v0[25] = v66;
  OUTLINED_FUNCTION_106_0();
  v63(v64, v65);
  v67 = swift_task_alloc();
  v0[74] = v67;
  OUTLINED_FUNCTION_19_44();
  v70 = sub_1C725954C(v68, v69);
  v71 = sub_1C72594F8();
  *v67 = v0;
  v67[1] = sub_1C7256AA4;
  v72 = v0[33];

  return MEMORY[0x1EEE0A3A0](v0 + 23, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v72, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v70, v71);
}

uint64_t sub_1C7256AA4()
{
  OUTLINED_FUNCTION_49_0();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 600) = v0;

  (*(v2[34] + 8))(v2[35], v2[33]);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7256C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[62];
  v24 = v22[61];
  v35 = v22[56];
  v36 = v22[55];
  v25 = v22[53];
  v37 = v22[52];
  v38 = v22[48];
  v39 = v22[45];
  v40 = v22[44];
  v41 = v22[41];
  v42 = v22[38];
  v43 = v22[36];
  v44 = v22[35];
  (*(v22[47] + 8))(v22[49], v22[46]);
  v23(v24, v25);

  OUTLINED_FUNCTION_98_1();
  OUTLINED_FUNCTION_128_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

uint64_t sub_1C7256D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_53_22();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_16_39();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_1C7256E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_95_3();
  OUTLINED_FUNCTION_111_0();
  v19 = OUTLINED_FUNCTION_53_22();
  v20(v19);
  v21 = OUTLINED_FUNCTION_66_2();
  v18(v21);
  OUTLINED_FUNCTION_16_39();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_94_1();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18);
}

void sub_1C7256F38()
{
  OUTLINED_FUNCTION_124();
  v0 = sub_1C755029C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v4 = v3 - v2;
  sub_1C754FA7C();
  OUTLINED_FUNCTION_6_61();
  sub_1C725954C(v5, v6);
  sub_1C75502CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E50);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C755BAB0;
  (*(v1 + 16))(v8 + v7, v4, v0);
  MEMORY[0x1CCA5C7D0](v8);

  (*(v1 + 8))(v4, v0);
  OUTLINED_FUNCTION_125();
}

uint64_t static GlobalTraitCompletionGeneration.generateGlobalTraitCompletion(with:diagnosticContext:eventRecorder:progressReporter:aiEventReporting:)()
{
  OUTLINED_FUNCTION_42();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v8 = sub_1C754FA7C();
  v1[19] = v8;
  OUTLINED_FUNCTION_18(v8);
  v1[20] = v9;
  v1[21] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754E15C();
  v1[22] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[23] = v11;
  v1[24] = OUTLINED_FUNCTION_77();
  v12 = sub_1C754E72C();
  v1[25] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[26] = v13;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = type metadata accessor for LLMConfiguration(0);
  v1[31] = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0);
  v1[32] = OUTLINED_FUNCTION_77();
  v14 = sub_1C754F38C();
  v1[33] = v14;
  OUTLINED_FUNCTION_18(v14);
  v1[34] = v15;
  v1[35] = OUTLINED_FUNCTION_77();
  v16 = sub_1C754F61C();
  v1[36] = v16;
  OUTLINED_FUNCTION_18(v16);
  v1[37] = v17;
  v1[38] = OUTLINED_FUNCTION_77();
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v18, v19, v20);
}

uint64_t sub_1C7257324(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, os_log_t log, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  OUTLINED_FUNCTION_75_0();
  a30 = v32;
  a31 = v33;
  a29 = v31;
  v34 = sub_1C7253320();
  *(v31 + 312) = v34;
  if (v34)
  {
    v113 = v34;
    type metadata accessor for LLMDefaults();
    static LLMDefaults.backendType.getter(&a15);
    switch(a15)
    {
      case 3:

        break;
      default:
        sub_1C7551DBC();

        break;
    }

    sub_1C754F60C();
    v37 = *(v31 + 296);
    v36 = *(v31 + 304);
    v38 = *(v31 + 288);
    v39 = *(v31 + 256);
    __swift_project_boxed_opaque_existential_1(*(v31 + 120), *(*(v31 + 120) + 24));
    (*(v37 + 16))(v39, v36, v38);
    OUTLINED_FUNCTION_72_14(v39);
    sub_1C754F16C();
    sub_1C6FB5FC8(v39, &qword_1EC214BF0);
    sub_1C754F2CC();
    type metadata accessor for LLMWrapperUtils();
    if (qword_1EDD0A988 != -1)
    {
      OUTLINED_FUNCTION_30_0();
    }

    LOBYTE(a15) = byte_1EC218F88;
    static LLMWrapperUtils.globalTraitsModelType(for:)(&a14 + 7);
    v40 = HIBYTE(a14);
    type metadata accessor for LLMConfigurationProvider();
    LOBYTE(a15) = v40;
    if (qword_1EDD07CA8 != -1)
    {
      OUTLINED_FUNCTION_29_27();
    }

    v41 = *(v31 + 248);
    v42 = sub_1C754FF1C();
    v43 = __swift_project_value_buffer(v42, qword_1EDD07CB0);
    *(v31 + 320) = v43;
    static LLMConfigurationProvider.configuration(for:logger:)(&a15, v43, v41);
    v55 = *(v31 + 240);
    v54 = *(v31 + 248);
    v57 = *(v31 + 184);
    v56 = *(v31 + 192);
    v58 = *(v31 + 176);
    v60 = *(v31 + 152);
    v59 = *(v31 + 160);
    v110 = *(v31 + 168);
    v111 = *(v31 + 112);
    a15 = OUTLINED_FUNCTION_41_24();
    a16 = v61;
    a17 = *(v62 + 32);
    *(&a17 + 9) = *(v62 + 41);
    static LLMWrapper.gmsSamplingParameters(from:)();
    (*(v57 + 16))(v56, v54 + *(v55 + 44), v58);
    (*(v59 + 16))(v110, v54 + *(v55 + 24), v60);
    if (v111)
    {
      v63 = *(v31 + 112);
      sub_1C75504FC();
      if (sub_1C71656D8())
      {
        v64 = *(v31 + 104);
        v65 = (v63 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
        os_unfair_lock_lock(v65);
        sub_1C72583D4(&v65[2], v40, v64, (v31 + 16));
        os_unfair_lock_unlock(v65);
      }
    }

    v66 = *(*(v31 + 208) + 16);
    (v66)(*(v31 + 224), *(v31 + 232), *(v31 + 200));
    sub_1C75504FC();
    v67 = sub_1C754FEEC();
    v68 = sub_1C75511BC();

    v112 = v68;
    v69 = os_log_type_enabled(v67, v68);
    v70 = *(v31 + 224);
    if (v69)
    {
      v71 = *(v31 + 208);
      v72 = swift_slowAlloc();
      *&a15 = swift_slowAlloc();
      *v72 = 136643075;
      v73 = sub_1C75504BC();
      loga = v67;
      v75 = sub_1C6F765A4(v73, v74, &a15);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2080;
      v76 = OUTLINED_FUNCTION_102_1();
      v66(v76);
      v77 = sub_1C75506EC();
      v79 = v78;
      v80 = *(v71 + 8);
      v81 = OUTLINED_FUNCTION_323();
      v80(v81);
      v82 = sub_1C6F765A4(v77, v79, &a15);

      *(v72 + 14) = v82;
      _os_log_impl(&dword_1C6F5C000, loga, v112, "Generating global traits v3 using GMS one-shot path with prompt bindings %{sensitive}s and sampling parameters: %s", v72, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    else
    {
      v83 = *(v31 + 200);
      v84 = *(v31 + 208);

      v80 = *(v84 + 8);
      (v80)(v70, v83);
    }

    *(v31 + 328) = v80;
    sub_1C75504FC();
    v85 = sub_1C754FEEC();
    v86 = sub_1C75511BC();

    if (os_log_type_enabled(v85, v86))
    {
      OUTLINED_FUNCTION_41_0();
      v87 = OUTLINED_FUNCTION_31_0();
      *&a15 = v87;
      *v43 = 136642819;
      v88 = sub_1C75504BC();
      v90 = sub_1C6F765A4(v88, v89, &a15);

      *(v43 + 4) = v90;
      OUTLINED_FUNCTION_12_4(&dword_1C6F5C000, v91, v92, "Generating global trait with prompt bindings: %{sensitive}s");
      __swift_destroy_boxed_opaque_existential_1(v87);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v93 = *(v31 + 232);
    v94 = *(v31 + 192);
    v95 = *(v31 + 168);
    v96 = *(v31 + 144);
    v97 = *(v31 + 104);
    __swift_project_boxed_opaque_existential_1(*(v31 + 136), *(*(v31 + 136) + 24));
    *(v31 + 73) = 2;
    v98 = swift_task_alloc();
    *(v31 + 336) = v98;
    v98[2] = v96;
    v98[3] = v95;
    v98[4] = v97;
    v98[5] = v113;
    v98[6] = v93;
    v98[7] = v94;
    swift_task_alloc();
    OUTLINED_FUNCTION_48();
    *(v31 + 344) = v99;
    *v99 = v100;
    v99[1] = sub_1C7257B50;
    OUTLINED_FUNCTION_130_0();

    return sub_1C70597B4(v101, v102, v103, v104, v105, v106, v107);
  }

  else
  {
    v35 = *(v31 + 128);
    sub_1C6FB5280();
    swift_allocError();
    swift_willThrow();
    sub_1C754F2FC();
    OUTLINED_FUNCTION_3();
    (*(v44 + 8))(v35);
    OUTLINED_FUNCTION_73_14();

    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_130_0();

    return v46(v45, v46, v47, v48, v49, v50, v51, v52, log, a10, a11, a12, a13, a14, a15, *(&a15 + 1), a16, *(&a16 + 1), a17, *(&a17 + 1), a18, a19, a20, a21, a22, a23);
  }
}

uint64_t sub_1C7257B50()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_14();
  *v6 = v5;
  *(v3 + 352) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C7257C5C()
{
  v57 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = objc_opt_self();
  sub_1C75504FC();
  v4 = v1;
  if (([v3 useGlobalTraitsV3Captions] & 1) == 0)
  {
    v4 = v1;
    if (*(v1 + 16))
    {
      v5 = sub_1C754FEEC();
      v6 = sub_1C755119C();
      if (os_log_type_enabled(v5, v6))
      {
        OUTLINED_FUNCTION_41_0();
        v7 = OUTLINED_FUNCTION_31_0();
        v55 = v7;
        *v1 = 136642819;
        v8 = sub_1C75504FC();
        MEMORY[0x1CCA5D090](v8, MEMORY[0x1E69E6158]);

        v9 = OUTLINED_FUNCTION_323();
        v12 = sub_1C6F765A4(v9, v10, v11);

        *(v1 + 4) = v12;
        _os_log_impl(&dword_1C6F5C000, v5, v6, "Generated collection global traits when we were not supposed to: %{sensitive}s. Removing them from the pipeline.", v1, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v7);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      v4 = MEMORY[0x1E69E7CC0];
    }
  }

  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v13 = sub_1C754FEEC();
  v14 = sub_1C75511BC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_41_0();
    v16 = swift_slowAlloc();
    v54 = v16;
    v55 = v4;
    *v15 = 136642819;
    v56 = v2;
    sub_1C75504FC();
    sub_1C75504FC();
    v17 = GlobalTraitCompletion.description.getter();
    v18 = v2;
    v20 = v19;

    v21 = sub_1C6F765A4(v17, v20, &v54);
    v2 = v18;

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1C6F5C000, v13, v14, "Generated global traits from GMS one-shot templated completion SPI: %{sensitive}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v22 = v0[14];
  if (v22)
  {
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C716358C(0xD00000000000001ALL, 0x80000001C75A6820, v22, v1, v2);
  }

  v23 = v0[44];
  v24 = v0[34];
  v25 = v0[23];
  v26 = v0[20];

  sub_1C754F2EC();
  v27 = (v26 + 8);
  v28 = (v25 + 8);
  v47 = v0[41];
  v49 = (v24 + 8);
  v53 = v0[38];
  v51 = v0[36];
  v52 = v0[37];
  v50 = v0[35];
  v48 = v0[33];
  v29 = v2;
  if (v23)
  {
    v30 = v0[24];
    v45 = v0[25];
    v46 = v0[29];
    v44 = v0[22];
    v31 = v0[15];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();
    swift_bridgeObjectRelease_n();

    v32 = OUTLINED_FUNCTION_156();
    v33(v32);
    (*v28)(v30, v44);
    v47(v46, v45);
    OUTLINED_FUNCTION_10_3(v31);
    OUTLINED_FUNCTION_0_11();
    sub_1C754F1AC();

    (*v49)(v50, v48);
    (*(v52 + 8))(v53, v51);
    OUTLINED_FUNCTION_73_14();
  }

  else
  {
    v35 = v0[24];
    v42 = v0[25];
    v43 = v0[29];
    v36 = v0[21];
    v41 = v0[22];
    v37 = v0[19];
    v38 = v0[15];
    v39 = v0[12];
    OUTLINED_FUNCTION_0_114();
    sub_1C7258BDC();

    *v39 = v4;
    v39[1] = v29;
    (*v27)(v36, v37);
    (*v28)(v35, v41);
    v47(v43, v42);
    OUTLINED_FUNCTION_10_3(v38);
    OUTLINED_FUNCTION_0_11();
    sub_1C754F1AC();

    (*v49)(v50, v48);
    (*(v52 + 8))(v53, v51);
  }

  OUTLINED_FUNCTION_43();

  return v34();
}

uint64_t sub_1C725820C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  v23 = v22[37];
  v48 = v22[36];
  v49 = v22[38];
  v24 = v22[34];
  v44 = v22[41];
  v45 = v22[35];
  v46 = v22[39];
  v47 = v22[33];
  v41 = v22[26];
  v42 = v22[25];
  v43 = v22[29];
  v25 = v22[21];
  v27 = v22[19];
  v26 = v22[20];
  v28 = v22[15];
  v50 = v22[16];
  OUTLINED_FUNCTION_0_114();
  sub_1C7258BDC();
  (*(v26 + 8))(v25, v27);
  v29 = OUTLINED_FUNCTION_431();
  v30(v29);
  v44(v43, v42);
  OUTLINED_FUNCTION_10_3(v28);
  sub_1C754F1AC();

  (*(v24 + 8))(v45, v47);
  (*(v23 + 8))(v49, v48);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_3();
  (*(v31 + 8))(v50);
  OUTLINED_FUNCTION_73_14();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_128_0();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, a20, a21, a22);
}

void sub_1C72583D4(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  sub_1C75504FC();
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *(a1 + 64);
  v9 = sub_1C6FC296C();
  if (__OFADD__(*(v8 + 16), (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C58);
  if (sub_1C7551A2C())
  {
    v13 = sub_1C6FC296C();
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_9:
    sub_1C7551E4C();
    __break(1u);
    return;
  }

LABEL_5:
  *(a1 + 64) = v8;
  if ((v12 & 1) == 0)
  {
    sub_1C6FCABDC(v11, a2, MEMORY[0x1E69E7CC0], v8);
  }

  v15 = *(v8 + 56) + 8 * v11;
  sub_1C6FB0734();
  v16 = *(*v15 + 16);
  sub_1C6FB0FE8();
  v17 = *v15;
  *(v17 + 16) = v16 + 1;
  v18 = v17 + 72 * v16;
  *(v18 + 32) = a3;
  v19 = a4[1];
  *(v18 + 40) = *a4;
  *(v18 + 56) = v19;
  *(v18 + 72) = a4[2];
  *(v18 + 81) = *(a4 + 41);
}

uint64_t sub_1C7258538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a2;
  v8[4] = a4;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72585E0, 0, 0);
}

uint64_t sub_1C72585E0()
{
  OUTLINED_FUNCTION_49_0();
  v1 = *(v0 + 72);
  sub_1C754E15C();
  OUTLINED_FUNCTION_12();
  v2 = OUTLINED_FUNCTION_66_2();
  v3(v2);
  OUTLINED_FUNCTION_72_14(v1);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_38_22(v4);

  return sub_1C7255E4C(v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C72586AC(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *v3;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *v8 = *v3;
  v7[11] = v2;

  v9 = v6[9];
  if (!v2)
  {
    v7[12] = a2;
    v7[13] = a1;
  }

  sub_1C6FB5FC8(v9, &qword_1EC214DF8);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C725880C()
{
  OUTLINED_FUNCTION_42();
  *v0[1].i64[0] = vextq_s8(v0[6], v0[6], 8uLL);

  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t type metadata accessor for GlobalTrait()
{
  result = qword_1EDD0F830;
  if (!qword_1EDD0F830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1C72588DC()
{
  result = qword_1EDD0BD20;
  if (!qword_1EDD0BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BD20);
  }

  return result;
}

unint64_t sub_1C7258930()
{
  result = qword_1EDD0BCF8;
  if (!qword_1EDD0BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCF8);
  }

  return result;
}

unint64_t sub_1C7258984()
{
  result = qword_1EC219BA0;
  if (!qword_1EC219BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219BA0);
  }

  return result;
}

unint64_t sub_1C72589D8()
{
  result = qword_1EDD0C528;
  if (!qword_1EDD0C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C528);
  }

  return result;
}

unint64_t sub_1C7258A2C()
{
  result = qword_1EDD0BCE0;
  if (!qword_1EDD0BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCE0);
  }

  return result;
}

unint64_t sub_1C7258A80()
{
  result = qword_1EC219BD0;
  if (!qword_1EC219BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219BD0);
  }

  return result;
}

uint64_t sub_1C7258AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GlobalTrait();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C7258B38()
{
  OUTLINED_FUNCTION_68_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_32(v1);

  return sub_1C7255B7C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1C7258BDC()
{
  v1 = OUTLINED_FUNCTION_300();
  v2(v1);
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C7258C2C()
{
  OUTLINED_FUNCTION_68_17();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 16) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_32(v1);

  return sub_1C7258538(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1C7258CD4()
{
  result = qword_1EC219BD8;
  if (!qword_1EC219BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219BD8);
  }

  return result;
}

unint64_t sub_1C7258D2C()
{
  result = qword_1EC219BE0;
  if (!qword_1EC219BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219BE0);
  }

  return result;
}

unint64_t sub_1C7258D84()
{
  result = qword_1EDD0C518;
  if (!qword_1EDD0C518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C518);
  }

  return result;
}

unint64_t sub_1C7258DDC()
{
  result = qword_1EDD0C520;
  if (!qword_1EDD0C520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0C520);
  }

  return result;
}

uint64_t sub_1C7258E78(void *a1)
{
  a1[1] = sub_1C725954C(&qword_1EDD0C508, type metadata accessor for GlobalTrait);
  a1[2] = sub_1C725954C(&qword_1EDD0C510, type metadata accessor for GlobalTrait);
  result = sub_1C725954C(&qword_1EDD0C500, type metadata accessor for GlobalTrait);
  a1[3] = result;
  return result;
}

void sub_1C7258FA4()
{
  sub_1C754DFFC();
  if (v0 <= 0x3F)
  {
    sub_1C704303C();
    if (v1 <= 0x3F)
    {
      sub_1C7028C3C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GlobalTrait.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C72591C4()
{
  result = qword_1EC219BF0;
  if (!qword_1EC219BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219BF0);
  }

  return result;
}

unint64_t sub_1C725921C()
{
  result = qword_1EDD0BD00;
  if (!qword_1EDD0BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BD00);
  }

  return result;
}

unint64_t sub_1C7259274()
{
  result = qword_1EDD0BD08;
  if (!qword_1EDD0BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BD08);
  }

  return result;
}

unint64_t sub_1C72592CC()
{
  result = qword_1EDD0BCE8;
  if (!qword_1EDD0BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCE8);
  }

  return result;
}

unint64_t sub_1C7259324()
{
  result = qword_1EDD0BCF0;
  if (!qword_1EDD0BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BCF0);
  }

  return result;
}

unint64_t sub_1C725937C()
{
  result = qword_1EDD0BD10;
  if (!qword_1EDD0BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BD10);
  }

  return result;
}

unint64_t sub_1C72593D4()
{
  result = qword_1EDD0BD18;
  if (!qword_1EDD0BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0BD18);
  }

  return result;
}

unint64_t sub_1C7259428()
{
  result = qword_1EDD06C78;
  if (!qword_1EDD06C78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC214C50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD06C78);
  }

  return result;
}

unint64_t sub_1C72594A4()
{
  result = qword_1EC219C00;
  if (!qword_1EC219C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C00);
  }

  return result;
}

unint64_t sub_1C72594F8()
{
  result = qword_1EDD07CC8;
  if (!qword_1EDD07CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD07CC8);
  }

  return result;
}

uint64_t sub_1C725954C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *sub_1C72595B0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7259690()
{
  result = qword_1EC219C10;
  if (!qword_1EC219C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C10);
  }

  return result;
}

unint64_t sub_1C72596E8()
{
  result = qword_1EC219C18;
  if (!qword_1EC219C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C18);
  }

  return result;
}

unint64_t sub_1C7259740()
{
  result = qword_1EC219C20;
  if (!qword_1EC219C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C20);
  }

  return result;
}

uint64_t sub_1C7259848(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), unint64_t *a4)
{
  sub_1C6F65BE8(0, &qword_1EDD069B8);
  a3(a2);
  v7 = sub_1C6FBB0C8();
  PFMutableArrayShuffleWithRandomNumberGenerator();
  sub_1C6F65BE8(0, a4);
  sub_1C7550B4C();

  sub_1C75504FC();
  return a2;
}

uint64_t sub_1C7259950(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1C6F65BE8(0, &qword_1EDD069B8);
  a3(a2);
  v5 = sub_1C6FBB0C8();
  PFMutableArrayShuffleWithRandomNumberGenerator();
  sub_1C7550B4C();

  sub_1C75504FC();
  return a2;
}

id sub_1C7259A04()
{
  result = PLWallpaperGetLog();
  if (result)
  {
    qword_1EC25B748 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WallpaperAlbumSuggestionGenerator.albumLocalIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
  sub_1C75504FC();
  return v1;
}

uint64_t WallpaperAlbumSuggestionGenerator.suggestionContext.getter()
{
  v1 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext);
  sub_1C75504FC();
  return v1;
}

uint64_t WallpaperAlbumSuggestionGenerator.init(assetCollection:photoLibrary:)(void *a1, void *a2)
{
  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary] = a2;
  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_assetCollection] = a1;
  v4 = a2;
  v5 = a1;
  v6 = [v5 assetCollectionSubtype];
  if (v6 == 2)
  {
    v7 = 681;
  }

  else
  {
    if (v6 != 203)
    {
      goto LABEL_8;
    }

    v7 = 682;
  }

  *&v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype] = v7;
  v8 = v5;
  v9 = [v8 localIdentifier];
  v10 = sub_1C755068C();
  v12 = v11;

  v13 = &v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier];
  *v13 = v10;
  v13[1] = v12;
  sub_1C6F65BE8(0, &qword_1EDD0FA88);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [v8 localIdentifier];

  v16 = sub_1C755068C();
  v18 = v17;

  v19 = sub_1C725C798(v16, v18, ObjCClassFromMetadata);
  if (v20)
  {
    v21 = &v2[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext];
    *v21 = v19;
    v21[1] = v20;
    v24.receiver = v2;
    v24.super_class = type metadata accessor for WallpaperAlbumSuggestionGenerator();
    v22 = objc_msgSendSuper2(&v24, sel_init);

    return v22;
  }

  __break(1u);
LABEL_8:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

uint64_t sub_1C7259D24(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C725BCB4();
  v6 = v5;
  if (!v5)
  {
    goto LABEL_6;
  }

  v7 = v5;
  if (![v7 count])
  {

LABEL_6:
    v14 = 0;
LABEL_7:
    v15 = OUTLINED_FUNCTION_117_0();
    v16 = sub_1C725A380(v15);
    if (v14 && (v17 = sub_1C75504FC(), v18 = sub_1C706D3D8(v17), sub_1C7036F4C(v18, v14), v20 = v19, , (v20 & 1) != 0))
    {

      v21 = sub_1C755117C();
      if (qword_1EC213F20 != -1)
      {
        OUTLINED_FUNCTION_0_115();
      }

      v22 = qword_1EC25B748;
      if (os_log_type_enabled(qword_1EC25B748, v21))
      {
        v23 = swift_slowAlloc();
        v24 = OUTLINED_FUNCTION_20_1();
        v59 = v24;
        *v23 = 136315138;
        v25 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
        *(v23 + 4) = sub_1C6F765A4(v25, v26, &v59);
        _os_log_impl(&dword_1C6F5C000, v22, v21, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier %s suggestions with same assets already exist", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        OUTLINED_FUNCTION_37();
        OUTLINED_FUNCTION_109();
      }

      return v6;
    }

    else
    {
      LOBYTE(v28) = sub_1C755117C();
      if (qword_1EC213F20 != -1)
      {
LABEL_41:
        OUTLINED_FUNCTION_0_115();
      }

      v29 = qword_1EC25B748;
      if (os_log_type_enabled(qword_1EC25B748, v28))
      {
        sub_1C75504FC();
        v30 = OUTLINED_FUNCTION_23_1();
        v31 = OUTLINED_FUNCTION_20_1();
        v59 = v31;
        *v30 = 136315394;
        v32 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
        *(v30 + 4) = sub_1C6F765A4(v32, v33, &v59);
        *(v30 + 12) = 2048;
        *(v30 + 14) = sub_1C6FB6304();

        _os_log_impl(&dword_1C6F5C000, v29, v28, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier %s eligibleAssets %ld", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_109();
        OUTLINED_FUNCTION_109();
      }

      sub_1C725B614();
      sub_1C725ABF8(v16);

      v34 = sub_1C725BCB4();

      return v34;
    }
  }

  v8 = [*(v2 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v9 = OUTLINED_FUNCTION_13_1();
  *(v9 + 16) = xmmword_1C755BAB0;
  *(v9 + 32) = sub_1C755068C();
  *(v9 + 40) = v10;
  sub_1C6FCA0EC(v9, v8);
  v11 = [objc_opt_self() fetchKeyAssetBySuggestionUUIDForSuggestions:v7 options:v8];
  if (v11)
  {
    v12 = v11;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v13 = sub_1C75504AC();
  }

  else
  {
    v13 = 0;
  }

  v35 = [v7 count];
  v16 = sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v36 = sub_1C725C844();
  v14 = MEMORY[0x1CCA5D4D0](v35, v16, v36);
  v60 = v14;
  v37 = [v7 fetchedObjects];
  if (!v37)
  {

    goto LABEL_7;
  }

  v38 = v37;
  v58 = v8;
  sub_1C6F65BE8(0, &qword_1EDD0CEB0);
  v39 = sub_1C7550B5C();

  if (!v13)
  {

    goto LABEL_7;
  }

  v53 = v7;
  v54 = a1;
  v55 = a2;
  v56 = v2;
  v57 = v6;
  v40 = sub_1C6FB6304();
  v28 = 0;
  v6 = (v39 & 0xFFFFFFFFFFFFFF8);
  while (1)
  {
    if (v40 == v28)
    {

      v14 = v60;
      v6 = v57;
      goto LABEL_7;
    }

    if ((v39 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1CCA5DDD0](v28, v39);
    }

    else
    {
      if (v28 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v41 = *(v39 + 8 * v28 + 32);
    }

    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v16 = v41;
    result = sub_1C6FCA214(v16);
    if (!v42)
    {
      break;
    }

    if (!*(v13 + 16))
    {

LABEL_33:

      goto LABEL_34;
    }

    v43 = sub_1C6F78124(result, v42);
    v45 = v44;

    if ((v45 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (!v60)
    {
      goto LABEL_43;
    }

    v46 = *(*(v13 + 56) + 8 * v43);
    sub_1C70F1000(&v59, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);

LABEL_34:
    ++v28;
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

unint64_t sub_1C725A7DC(void *a1, uint64_t a2)
{
  v4 = v2;
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = [a1 fetchedObjects];
  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
    return v7;
  }

  v8 = v6;
  sub_1C6F65BE8(0, &qword_1EDD0FA70);
  v9 = sub_1C7550B5C();

  v10 = objc_opt_self();
  v29 = [v10 deviceConfigurationForOrientation_];
  v28 = [v10 deviceConfigurationForOrientation_];
  v32 = v7;
  sub_1C6FDE6EC([a1 count]);
  v11 = sub_1C6FB6304();
  if (!v11)
  {

    v13 = 0;
LABEL_32:
    LOBYTE(v3) = sub_1C755117C();
    if (qword_1EC213F20 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_33;
  }

  v12 = v11;
  v27 = v4;
  v4 = 0;
  v13 = 0;
  while (1)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1CCA5DDD0](v4, v9);
    }

    else
    {
      if (v4 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v14 = *(v9 + 8 * v4 + 32);
    }

    v15 = v14;
    v3 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v33[0] = 0;
    [v14 normalizedFaceAreaRect];
    if (v16 == 0.0 && v17 == 0.0)
    {
      goto LABEL_11;
    }

    if (fmax(v16, v17) > 0.15)
    {
      v20 = 1;
    }

    else
    {
      v20 = 5;
    }

    v21 = objc_opt_self();
    [v21 bestWallpaperCropForAsset:v15 classification:v20 outputCropScore:v33 outputLayoutAcceptable:0 layoutConfiguration:v29];
    if (*v33 < 0.4)
    {

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        goto LABEL_39;
      }

      goto LABEL_27;
    }

    if (!v28 || (v31 = 0.0, [v21 bestWallpaperCropForAsset:v15 classification:v20 outputCropScore:&v31 outputLayoutAcceptable:0 layoutConfiguration:{v28, *v33}], v31 >= 0.4))
    {
LABEL_11:
      v18 = v15;
      MEMORY[0x1CCA5D040]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v7 = v32;
      if (v32 >> 62)
      {
        v19 = sub_1C75516BC();
      }

      else
      {
        v19 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v19 >= a2)
      {
LABEL_30:

        v4 = v27;
        goto LABEL_32;
      }
    }

    else
    {

      v22 = __OFADD__(v13++, 1);
      if (v22)
      {
        __break(1u);
      }
    }

LABEL_27:
    ++v4;
    if (v3 == v12)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  OUTLINED_FUNCTION_0_115();
LABEL_33:
  v23 = qword_1EC25B748;
  if (os_log_type_enabled(qword_1EC25B748, v3))
  {
    v24 = OUTLINED_FUNCTION_23_1();
    v25 = OUTLINED_FUNCTION_20_1();
    v33[0] = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1C6F765A4(*(v4 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v4 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), v33);
    *(v24 + 12) = 2048;
    *(v24 + 14) = v13;
    _os_log_impl(&dword_1C6F5C000, v23, v3, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier: %s %ld suggestions filtered with low crop score", v24, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();
  }

  return v7;
}

uint64_t sub_1C725ABF8(unint64_t a1)
{
  v1 = a1;
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    OUTLINED_FUNCTION_27_1();
    v37 = swift_allocObject();
    *(v37 + 16) = v3;
    v4 = sub_1C6FB6304();
    sub_1C744EA24(v4);
    v5 = sub_1C755117C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v6 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v5))
    {
      sub_1C75504FC();
      v7 = OUTLINED_FUNCTION_23_1();
      v8 = OUTLINED_FUNCTION_20_1();
      aBlock[0] = v8;
      *v7 = 134218242;
      *(v7 + 4) = sub_1C6FB6304();

      *(v7 + 12) = 2080;
      *(v7 + 14) = sub_1C6F765A4(*(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), aBlock);
      _os_log_impl(&dword_1C6F5C000, v6, v5, "[WallpaperAlbumSuggestionGenerator] creating %ld suggestions for albumLocalIdentifier %s", v7, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }

    oslog = v6;
    OUTLINED_FUNCTION_27_1();
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    sub_1C754DF6C();
    v10 = swift_allocBox();
    sub_1C754DF3C();
    v11 = 0;
    v36 = v1 & 0xC000000000000001;
    v34 = OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary;
    v35 = v1 & 0xFFFFFFFFFFFFFF8;
    while (v2 != v11)
    {
      if (v36)
      {
        v12 = MEMORY[0x1CCA5DDD0](v11, v1);
      }

      else
      {
        if (v11 >= *(v35 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(v1 + 8 * v11 + 32);
      }

      v13 = v12;
      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v2 = sub_1C75516BC();
        goto LABEL_3;
      }

      v14 = v2;
      v15 = v1;
      v16 = *(v38 + v34);
      OUTLINED_FUNCTION_27_1();
      v17 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = swift_allocObject();
      v18[2] = v17;
      v18[3] = v9;
      v18[4] = v10;
      v18[5] = v13;
      v18[6] = v37;
      aBlock[4] = sub_1C725C960;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C6FD8F68;
      aBlock[3] = &block_descriptor_21;
      v19 = _Block_copy(aBlock);

      v20 = v13;

      aBlock[0] = 0;
      v21 = [v16 performChangesAndWait:v19 error:aBlock];
      _Block_release(v19);
      if (!v21)
      {
        v23 = aBlock[0];
        v24 = sub_1C754DBEC();

        swift_willThrow();

        aBlock[0] = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
        sub_1C6F65BE8(0, &qword_1EC216D18);
        swift_dynamicCast();
        v25 = sub_1C755119C();
        if (os_log_type_enabled(oslog, v25))
        {
          v26 = OUTLINED_FUNCTION_23_1();
          v40 = OUTLINED_FUNCTION_49_1();
          *v26 = 136315394;
          *(v26 + 4) = sub_1C6F765A4(*(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier), *(v38 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier + 8), &v40);
          *(v26 + 12) = 2080;
          v27 = [v39 localizedDescription];
          v28 = sub_1C755068C();
          v30 = v29;

          v31 = sub_1C6F765A4(v28, v30, &v40);

          *(v26 + 14) = v31;
          _os_log_impl(&dword_1C6F5C000, oslog, v25, "[WallpaperAlbumSuggestionGenerator] failed to create suggestions for %s error %s", v26, 0x16u);
          OUTLINED_FUNCTION_40_5();
          OUTLINED_FUNCTION_79();
          OUTLINED_FUNCTION_37();
        }

        goto LABEL_21;
      }

      v22 = aBlock[0];

      ++v11;
      v1 = v15;
      v2 = v14;
    }

LABEL_21:
    swift_beginAccess();
    v3 = *(v37 + 16);
    sub_1C75504FC();
  }

  return v3;
}

void sub_1C725B14C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v8 = sub_1C754DF6C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_projectBox();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v34 = a5;
    swift_beginAccess();
    *(a2 + 16) = *(a2 + 16) + 1.0;
    swift_beginAccess();
    sub_1C754DE9C();
    swift_endAccess();
    v15 = objc_opt_self();
    v16 = *&v14[OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C7565670;
    *(v17 + 32) = a4;
    sub_1C6F65BE8(0, &qword_1EDD0FA70);
    v18 = a4;
    v19 = sub_1C7550B3C();

    swift_beginAccess();
    (*(v9 + 16))(v11, v12, v8);
    v20 = sub_1C754DECC();
    (*(v9 + 8))(v11, v8);
    v21 = [v15 creationRequestForSuggestionWithType:6 subtype:v16 keyAssets:v19 representativeAssets:0 creationDate:v20 relevantUntilDate:0 version:1];

    [v21 setFeaturedState_];
    sub_1C75504FC();
    v22 = sub_1C755065C();

    [v21 setContext_];

    [v21 markActive];
    v23 = [v21 placeholderForCreatedSuggestion];
    if (v23)
    {
      v24 = v23;
      v25 = [v23 localIdentifier];

      v26 = sub_1C755068C();
      v28 = v27;

      v29 = v34;
      swift_beginAccess();
      sub_1C6FB0600();
      v30 = *(*(v29 + 16) + 16);
      sub_1C6FB0EFC();
      v31 = *(v29 + 16);
      *(v31 + 16) = v30 + 1;
      v32 = v31 + 16 * v30;
      *(v32 + 32) = v26;
      *(v32 + 40) = v28;
      *(v29 + 16) = v31;
      swift_endAccess();
    }
  }
}

id sub_1C725B4E0()
{
  v1 = [*(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = OUTLINED_FUNCTION_13_1();
  *(v2 + 16) = xmmword_1C7564A90;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = OUTLINED_FUNCTION_3_73();
  *(v2 + 32) = sub_1C6F6AF98(v4, v5, 0);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = OUTLINED_FUNCTION_17_48();
  *(v2 + 40) = sub_1C6F6AF98(v7, v8, 1);
  sub_1C71F8834(v2, v1);
  [v1 setIncludeGuestAssets_];
  [v1 setWantsIncrementalChangeDetails_];
  v9 = objc_opt_self();
  v10 = [v9 predicateForExcludeMask:objc_msgSend(v9 useIndex:{sel_maskForGuestAsset), 1}];
  [v1 setInternalPredicate_];

  return v1;
}

id sub_1C725B614()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v1 = sub_1C725BCB4();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if ([v1 count] < 1)
  {

    return 0;
  }

  v3 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary);
  OUTLINED_FUNCTION_27_1();
  v4 = swift_allocObject();
  v4[2] = v2;
  aBlock[4] = sub_1C725C970;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C6FD8F68;
  aBlock[3] = &block_descriptor_17;
  v5 = _Block_copy(aBlock);
  v6 = v2;

  aBlock[0] = 0;
  v7 = [v3 performChangesAndWait:v5 error:aBlock];
  _Block_release(v5);
  if (!v7)
  {
    v17 = aBlock[0];
    v18 = sub_1C754DBEC();

    swift_willThrow();
    aBlock[0] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760);
    sub_1C6F65BE8(0, &qword_1EC216D18);
    swift_dynamicCast();
    v19 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v20 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v19))
    {
      v21 = OUTLINED_FUNCTION_23_1();
      v31 = OUTLINED_FUNCTION_49_1();
      *v21 = 136315394;
      v22 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
      *(v21 + 4) = sub_1C6F765A4(v22, v23, &v31);
      *(v21 + 12) = 2080;
      v24 = [v30 localizedDescription];
      v25 = sub_1C755068C();
      v27 = v26;

      v28 = sub_1C6F765A4(v25, v27, &v31);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1C6F5C000, v20, v19, "[WallpaperAlbumSuggestionGenerator] failed to remove all suggestions for albumLocalIdentifier %s error %s", v21, 0x16u);
      OUTLINED_FUNCTION_40_5();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_37();
    }

    return 0;
  }

  v8 = aBlock[0];
  v9 = sub_1C755117C();
  if (qword_1EC213F20 != -1)
  {
    OUTLINED_FUNCTION_0_115();
  }

  v10 = qword_1EC25B748;
  if (os_log_type_enabled(qword_1EC25B748, v9))
  {
    v11 = v6;
    v12 = OUTLINED_FUNCTION_23_1();
    v13 = OUTLINED_FUNCTION_20_1();
    aBlock[0] = v13;
    *v12 = 136315394;
    v14 = OUTLINED_FUNCTION_16_40(OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_albumLocalIdentifier);
    *(v12 + 4) = sub_1C6F765A4(v14, v15, aBlock);
    *(v12 + 12) = 2048;
    *(v12 + 14) = [v11 count];

    _os_log_impl(&dword_1C6F5C000, v10, v9, "[WallpaperAlbumSuggestionGenerator] albumLocalIdentifier: %s, deleted all %ld suggestions", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_37();
  }

  v16 = [v6 count];

  return v16;
}

id sub_1C725B9EC(uint64_t a1)
{
  v2 = objc_opt_self();

  return [v2 deleteSuggestions_];
}

id sub_1C725BA34()
{
  sub_1C6F65BE8(0, &qword_1EDD0FAD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C75604F0;
  v2 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v3 = sub_1C6F6D524();
  *(v1 + 64) = v3;
  *(v1 + 32) = 1701869940;
  *(v1 + 40) = 0xE400000000000000;
  v4 = MEMORY[0x1E69E75F8];
  v5 = MEMORY[0x1E69E7660];
  *(v1 + 96) = MEMORY[0x1E69E75F8];
  *(v1 + 104) = v5;
  *(v1 + 72) = 6;
  OUTLINED_FUNCTION_15_49();
  v56 = sub_1C755112C();
  v6 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v6, v7, v6, v8, v9, v10, v11, v12, v51, v56, v13);
  *(v14 + 32) = 0x65707974627573;
  *(v14 + 40) = 0xE700000000000000;
  v15 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionSubtype);
  *(v14 + 96) = v4;
  *(v14 + 104) = v5;
  *(v14 + 72) = v15;
  OUTLINED_FUNCTION_15_49();
  v52 = sub_1C755112C();
  v16 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v16, v17, v16, v18, v19, v20, v21, v22, v52, v57, v23);
  strcpy((v24 + 32), "featuredState");
  *(v24 + 46) = -4864;
  *(v24 + 96) = v4;
  *(v24 + 104) = v5;
  *(v24 + 72) = 1;
  OUTLINED_FUNCTION_15_49();
  v25 = sub_1C755112C();
  v26 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v26, v27, v26, v28, v29, v30, v31, v32, v53, v58, v33);
  *(v34 + 32) = 0x6574617473;
  *(v34 + 40) = 0xE500000000000000;
  *(v34 + 96) = v4;
  *(v34 + 104) = v5;
  *(v34 + 72) = 1;
  OUTLINED_FUNCTION_15_49();
  v35 = sub_1C755112C();
  v36 = OUTLINED_FUNCTION_8_53();
  OUTLINED_FUNCTION_2_78(v36, v37, v38, v39, v40, v41, v42, v43, v54, v59, v44);
  *(v45 + 32) = 0x747865746E6F63;
  *(v45 + 40) = 0xE700000000000000;
  v47 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext);
  v46 = *(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_suggestionContext + 8);
  v36[6].n128_u64[0] = v2;
  v36[6].n128_u64[1] = v3;
  v36[4].n128_u64[1] = v47;
  v36[5].n128_u64[0] = v46;
  sub_1C75504FC();
  v48 = sub_1C755112C();
  sub_1C6F65BE8(0, &qword_1EDD0FA80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_1C75732A0;
  *(v49 + 32) = v60;
  *(v49 + 40) = v55;
  *(v49 + 48) = v25;
  *(v49 + 56) = v35;
  *(v49 + 64) = v48;
  return sub_1C6F6E5C4();
}

id sub_1C725BCB4()
{
  v1 = [*(v0 + OBJC_IVAR___PNWallpaperAlbumSuggestionGenerator_photoLibrary) librarySpecificFetchOptions];
  [v1 setWantsIncrementalChangeDetails_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v2 = OUTLINED_FUNCTION_13_1();
  *(v2 + 16) = xmmword_1C7564A90;
  v3 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v4 = OUTLINED_FUNCTION_3_73();
  *(v2 + 32) = sub_1C6F6AF98(v4, v5, 1);
  v6 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v7 = OUTLINED_FUNCTION_17_48();
  *(v2 + 40) = sub_1C6F6AF98(v7, v8, 0);
  sub_1C71F8834(v2, v1);
  v9 = sub_1C725BA34();
  [v1 setPredicate_];

  v10 = [objc_opt_self() fetchSuggestionsWithOptions_];
  return v10;
}

id WallpaperAlbumSuggestionGenerator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WallpaperAlbumSuggestionGenerator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WallpaperAlbumSuggestionGenerator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t static WallpaperAlbumSuggestionGenerator.cloudIdentifierForShuffleUserAlbum(assetCollection:photoLibrary:)(void *a1, uint64_t a2)
{
  if ([a1 assetCollectionSubtype] == 203)
  {
    sub_1C755068C();
    OUTLINED_FUNCTION_5_5();
    return a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  v4 = OUTLINED_FUNCTION_13_1();
  *(v4 + 16) = xmmword_1C755BAB0;
  v5 = [a1 localIdentifier];
  v6 = sub_1C755068C();
  v8 = v7;

  *(v4 + 32) = v6;
  *(v4 + 40) = v8;
  v9 = sub_1C75511CC();

  sub_1C710DCE0(v9);
  v11 = v10;
  v13 = v12;
  a2 = v14;

  if (v11)
  {

    if (a2)
    {
      v16 = sub_1C75511AC();
      if (qword_1EC213F20 != -1)
      {
        OUTLINED_FUNCTION_0_115();
      }

      v17 = qword_1EC25B748;
      if (os_log_type_enabled(qword_1EC25B748, v16))
      {
        sub_1C6FBC70C(v13);
        v18 = OUTLINED_FUNCTION_23_1();
        v27 = OUTLINED_FUNCTION_49_1();
        *v18 = 136315394;
        v19 = [a1 localIdentifier];
        v20 = sub_1C755068C();
        v22 = v21;

        v23 = sub_1C6F765A4(v20, v22, &v27);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2080;
        swift_getErrorValue();
        sub_1C7551EAC();
        OUTLINED_FUNCTION_5_5();
        sub_1C6FBC718(v13);
        v24 = sub_1C6F765A4(v26, v20, &v27);

        *(v18 + 14) = v24;
        _os_log_impl(&dword_1C6F5C000, v17, v16, "failed to get cloud identifier for album %s with error: %s", v18, 0x16u);
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_109();
      }

      sub_1C6FBC718(v13);
      return 0;
    }

    else
    {
      v25 = [v13 stringValue];
      sub_1C755068C();
      OUTLINED_FUNCTION_5_5();

      sub_1C6FBC718(v13);
      sub_1C6FBC718(v13);
    }

    return a2;
  }

  __break(1u);
  return result;
}

id static WallpaperAlbumSuggestionGenerator.shuffleUserAlbumForCloudIdentifier(_:photoLibrary:)(uint64_t a1, uint64_t a2, id a3)
{
  v5 = [a3 librarySpecificFetchOptions];
  [v5 setWantsIncrementalChangeDetails_];
  if (sub_1C755068C() == a1 && v6 == a2)
  {

    goto LABEL_14;
  }

  OUTLINED_FUNCTION_117_0();
  v8 = sub_1C7551DBC();

  if (v8)
  {
LABEL_14:
    v35 = [objc_opt_self() fetchAssetCollectionsWithType:2 subtype:203 options:v5];
    v36 = [v35 firstObject];

    return v36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C7565670;
  sub_1C6F65BE8(0, &qword_1EC219C50);
  sub_1C75504FC();
  OUTLINED_FUNCTION_117_0();
  *(v9 + 32) = sub_1C725C6B0();
  v10 = sub_1C75511DC();

  sub_1C710DD48(v10);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;

  if (v12)
  {

    if ((v18 & 1) == 0)
    {
      v45 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
      v46 = OUTLINED_FUNCTION_13_1();
      *(v46 + 16) = xmmword_1C755BAB0;
      *(v46 + 32) = v14;
      *(v46 + 40) = v16;
      v47 = OUTLINED_FUNCTION_58();
      sub_1C725C8BC(v47, v48, 0);
      sub_1C75504FC();
      v49 = sub_1C7550B3C();

      v50 = [v45 fetchAssetCollectionsWithLocalIdentifiers:v49 options:v5];

      v36 = [v50 firstObject];
      v51 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v51, v52, 0);
      v53 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v53, v54, 0);

      return v36;
    }

    v19 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v20 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v19))
    {
      v21 = OUTLINED_FUNCTION_58();
      sub_1C725C8BC(v21, v22, 1);
      v23 = OUTLINED_FUNCTION_23_1();
      v55 = OUTLINED_FUNCTION_49_1();
      *v23 = 136315394;
      v24 = OUTLINED_FUNCTION_117_0();
      *(v23 + 4) = sub_1C6F765A4(v24, v25, v26);
      *(v23 + 12) = 2080;
      swift_getErrorValue();
      v27 = sub_1C7551EAC();
      v29 = v28;
      v30 = OUTLINED_FUNCTION_58();
      sub_1C725C8AC(v30, v31, 1);
      v32 = sub_1C6F765A4(v27, v29, &v55);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_1C6F5C000, v20, v19, "could not get local identifier for cloud identifier %s with error %s", v23, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    v33 = OUTLINED_FUNCTION_58();
    sub_1C725C8AC(v33, v34, 1);
  }

  else
  {
    v38 = sub_1C755119C();
    if (qword_1EC213F20 != -1)
    {
      OUTLINED_FUNCTION_0_115();
    }

    v39 = qword_1EC25B748;
    if (os_log_type_enabled(qword_1EC25B748, v38))
    {
      v40 = swift_slowAlloc();
      v41 = OUTLINED_FUNCTION_20_1();
      v55 = v41;
      *v40 = 136315138;
      v42 = OUTLINED_FUNCTION_117_0();
      *(v40 + 4) = sub_1C6F765A4(v42, v43, v44);
      _os_log_impl(&dword_1C6F5C000, v39, v38, "could not get local identifier for cloud identifier %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_109();
    }
  }

  return 0;
}

id sub_1C725C6B0()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1C755065C();

  v2 = [v0 initWithStringValue_];

  return v2;
}

uint64_t sub_1C725C798(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C755065C();

  v6 = [a3 uuidFromLocalIdentifier_];

  if (!v6)
  {
    return 0;
  }

  sub_1C755068C();
  OUTLINED_FUNCTION_5_5();

  return a2;
}

unint64_t sub_1C725C844()
{
  result = qword_1EDD0CD08;
  if (!qword_1EDD0CD08)
  {
    sub_1C6F65BE8(255, &qword_1EDD0FA70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD0CD08);
  }

  return result;
}

void sub_1C725C8AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

id sub_1C725C8BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1C75504FC();
  }
}

uint64_t static FloatVector.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = *(*a1 + 16);
  if (result == *(*a2 + 16))
  {
    sub_1C725CE9C(result, 0.0);
    v8 = v7;
    v9 = *(v4 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_4_64();
      v8 = v10;
    }

    result = MEMORY[0x1CCA5FAD0](v5 + 32, 1, v4 + 32, 1, v8 + 32, 1, v9);
    *a3 = v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Float __swiftcall FloatVector.norm()()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = *(*v0 + 16);
  __C = NAN;
  vDSP_svesq((v1 + 32), 1, &__C, v2);
  return sqrtf(__C);
}

Swift::Float __swiftcall FloatVector.dot(_:)(PhotosIntelligence::FloatVector a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *a1.elements._rawValue;
  v3 = *v1;
  v4 = *(*v1 + 16);
  if (v4 != *(*a1.elements._rawValue + 16))
  {
    __break(1u);
  }

  __C = 0.0;
  vDSP_dotpr((v3 + 32), 1, (v2 + 32), 1, &__C, v4);
  return __C;
}

unint64_t FloatVector.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(*v1 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

Swift::Int_optional __swiftcall FloatVector.argmin()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 + 32;
    v6 = (v1 + 36);
    v7 = 1;
    while (v4 < v2)
    {
      v8 = *v6++;
      if (v8 < *(v5 + 4 * v4))
      {
        v3 = v7;
        v4 = v7;
      }

      if (v2 == ++v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_8:
    v9 = v2 == 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

uint64_t sub_1C725CBA4(uint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 8 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 9) | (8 * v14);
      if (*(v11 + v15) < v12)
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        return *&v12;
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (1)
    {
      v4 = v9 + 1;
      if (v9 + 1 >= v7)
      {
        return 0;
      }

      v10 = *(result + 72 + 8 * v9);
      v8 += 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) + v8;
        goto LABEL_9;
      }
    }
  }

  return result;
}

uint64_t sub_1C725CCB0(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(a1 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];
    sub_1C75504FC();
    result = sub_1C75504FC();
    while (v8)
    {
LABEL_15:
      v17 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v18 = (*(a1 + 48) + ((v6 << 10) | (16 * v17)));
      v19 = *v18;
      v20 = v18[1];
      if (*v18 != v14 || v20 != v13)
      {
        result = sub_1C7551DBC();
        if (result)
        {
          sub_1C75504FC();

          v14 = v19;
          v13 = v20;
        }
      }
    }

    while (1)
    {
      v16 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        return v14;
      }

      v8 = *(v2 + 8 * v16);
      ++v6;
      if (v8)
      {
        v6 = v16;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (1)
    {
      v6 = v5 + 1;
      if (v5 + 1 >= v9)
      {
        return 0;
      }

      v11 = *(a1 + 64 + 8 * v5);
      v10 += 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) + v10;
        goto LABEL_9;
      }
    }
  }

  return result;
}

unint64_t sub_1C725CE44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

void sub_1C725CE9C(uint64_t a1, float a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else if (a1)
  {
    *(sub_1C7550BBC() + 16) = a1;
    do
    {
      OUTLINED_FUNCTION_1_87();
      if (v6)
      {
        *(v3 - 12) = a2;
      }

      if (vuzp1_s16(v5, v4).i8[2])
      {
        *(v3 - 8) = a2;
      }

      OUTLINED_FUNCTION_3_74();
      if (v12)
      {
        *(v8 - 1) = a2;
      }

      if (vuzp1_s16(v10, v11).i8[6])
      {
        *v8 = a2;
      }
    }

    while (v9 != v7 + 4);
  }
}

uint64_t sub_1C725CF64(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      v4 = sub_1C7550BBC();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        sub_1C75504FC();
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

uint64_t sub_1C725CFEC(uint64_t result, __n128 a2)
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
      v3 = a2.n128_u16[0];
      result = sub_1C7550BBC();
      v4 = 0;
      v5 = vdupq_n_s64(v2 - 1);
      v6 = (result + 46);
      *(result + 16) = v2;
      do
      {
        v7 = vdupq_n_s64(v4);
        v8 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C756A560)));
        if (vuzp1_s8(vuzp1_s16(v8, *v5.i8), *v5.i8).u8[0])
        {
          *(v6 - 7) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(v8, *&v5), *&v5).i8[1])
        {
          *(v6 - 6) = v3;
        }

        if (vuzp1_s8(vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C756D570)))), *&v5).i8[2])
        {
          *(v6 - 5) = v3;
          *(v6 - 4) = v3;
        }

        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C757CC10)));
        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i32[1])
        {
          *(v6 - 3) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(v9, *&v5)).i8[5])
        {
          *(v6 - 2) = v3;
        }

        if (vuzp1_s8(*&v5, vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v7, xmmword_1C757CC00))))).i8[6])
        {
          *(v6 - 1) = v3;
          *v6 = v3;
        }

        v4 += 8;
        v6 += 8;
      }

      while (((v2 + 7) & 0xFFFFFFFFFFFFFFF8) != v4);
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

Swift::Void __swiftcall FloatVector.append(_:)(Swift::Float a1)
{
  sub_1C6FB0B60();
  v3 = *(*v1 + 16);
  sub_1C6FB13A4();
  v4 = *v1;
  *(v4 + 16) = v3 + 1;
  *(v4 + 4 * v3 + 32) = a1;
  *v1 = v4;
}

void static FloatVector.repeating(float:count:)(uint64_t a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      *(sub_1C7550BBC() + 16) = a1;
      do
      {
        OUTLINED_FUNCTION_1_87();
        if (v8)
        {
          *(v5 - 12) = a3;
        }

        if (vuzp1_s16(v7, v6).i8[2])
        {
          *(v5 - 8) = a3;
        }

        OUTLINED_FUNCTION_3_74();
        if (v15)
        {
          *(v11 - 1) = a3;
        }

        if (vuzp1_s16(v13, v14).i8[6])
        {
          *v11 = a3;
        }
      }

      while (v12 != v10 + 4);
    }

    else
    {
      v9 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v9;
  }
}

void FloatVector.subscript.setter(unint64_t a1, float a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1C70E3D94();
  v5 = v7;
  *v2 = v7;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (*(v5 + 16) > a1)
  {
    *(v5 + 4 * a1 + 32) = a2;
    *v2 = v5;
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t static FloatVector./= infix(_:_:)(uint64_t a1)
{
  sub_1C725CE9C(*(*a1 + 16), 0.0);
  v3 = v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_116();
    v3 = v4;
  }

  OUTLINED_FUNCTION_2_79();
  vDSP_vsdiv(v5, v6, v7, v8, v9, v10);

  *a1 = v3;
  return result;
}

unint64_t sub_1C725D3E4@<X0>(unint64_t *a1@<X1>, _DWORD *a2@<X8>)
{
  result = FloatVector.subscript.getter(*a1);
  *a2 = v4;
  return result;
}

void (*FloatVector.subscript.modify(void (*result)(uint64_t *a1, char a2), unint64_t a2))(uint64_t *a1, char a2)
{
  *result = a2;
  *(result + 1) = v2;
  v3 = *v2;
  *(result + 2) = *v2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v3 + 16) > a2)
  {
    *(result + 6) = *(v3 + 4 * a2 + 32);
    return sub_1C725D4A4;
  }

  __break(1u);
  return result;
}

void sub_1C725D4A4(uint64_t *a1, char a2)
{
  v4 = *(a1 + 6);
  v6 = a1[1];
  v5 = a1[2];
  LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v5;
  if (a2)
  {
    if ((v7 & 1) == 0)
    {
      sub_1C70E3D94();
      v5 = v7;
      *v6 = v7;
    }

    v8 = *a1;
    if (*(v5 + 16) > *a1)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  if ((v7 & 1) == 0)
  {
    sub_1C70E3D94();
    v5 = v9;
    *v6 = v9;
  }

  v8 = *a1;
  if (*(v5 + 16) > *a1)
  {
LABEL_9:
    *(v5 + 4 * v8 + 32) = v4;
    *v6 = v5;
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall FloatVector.append(_:)(PhotosIntelligence::FloatVector a1)
{
  v1 = sub_1C75504FC();

  sub_1C6FD36F8(v1);
}

uint64_t FloatVector.hash(into:)()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1CCA5E460](v2);
  if (v2)
  {
    v4 = v1 + 32;
    do
    {
      v4 += 4;
      result = sub_1C7551F7C();
      --v2;
    }

    while (v2);
  }

  return result;
}

void static FloatVector.zeros(count:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v4 = sub_1C7550BBC();
      *(v4 + 16) = a1;
      bzero((v4 + 32), 4 * a1);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    *a2 = v4;
  }
}

void static FloatVector.zerosLike(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1C7550BBC();
    *(v4 + 16) = v3;
    bzero((v4 + 32), 4 * v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
}

void static FloatVector.onesLike(_:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 16);
  if (v3)
  {
    v4 = sub_1C7550BBC();
    *(v4 + 16) = v3;
    memset_pattern16((v4 + 32), &unk_1C757CC20, 4 * v3);
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v4;
}

void sub_1C725D76C(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t *a3@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a1)
    {
      v6 = sub_1C7550BBC();
      *(v6 + 16) = a1;
      memset_pattern16((v6 + 32), a2, 4 * a1);
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    *a3 = v6;
  }
}

Swift::Float __swiftcall FloatVector.squaredL2Norm()()
{
  v0 = MEMORY[0x1E6958DB0];

  return sub_1C725D920(v0);
}

Swift::Float __swiftcall FloatVector.sum()()
{
  v0 = MEMORY[0x1E6958D78];

  return sub_1C725D920(v0);
}

float sub_1C725D920(void (*a1)(uint64_t, uint64_t, float *, uint64_t))
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 16);
  v5 = NAN;
  a1(v2 + 32, 1, &v5, v3);
  return v5;
}

Swift::Int_optional __swiftcall FloatVector.argmax()()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (v2 >= 2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v1 + 32;
    v6 = (v1 + 36);
    v7 = 1;
    while ((v4 & 0x8000000000000000) == 0)
    {
      if (v4 >= v2)
      {
        goto LABEL_11;
      }

      v8 = *v6++;
      if (*(v5 + 4 * v4) < v8)
      {
        v3 = v7;
        v4 = v7;
      }

      if (v2 == ++v7)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
    v3 = 0;
LABEL_9:
    v9 = v2 == 0;
  }

  result.value = v3;
  result.is_nil = v9;
  return result;
}

BOOL static FloatVector.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  if (v2 != *(*a2 + 16))
  {
    return 0;
  }

  v3 = (*a1 + 32);
  v4 = (*a2 + 32);
  do
  {
    result = v2 == 0;
    if (!v2)
    {
      break;
    }

    v6 = *v3++;
    v7 = v6;
    v8 = *v4++;
    --v2;
  }

  while (v7 == v8);
  return result;
}

uint64_t static FloatVector.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E69590F0];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t static FloatVector.- infix(_:_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>, float a3@<S0>)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v10 = -a3;
  sub_1C725CE9C(*(v4 + 16), 0.0);
  v6 = v5;
  v7 = *(v4 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_4_64();
    v6 = v8;
  }

  result = MEMORY[0x1CCA5FAB0](v4 + 32, 1, &v10, v6 + 32, 1, v7);
  *a2 = v6;
  return result;
}

uint64_t static FloatVector.* infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E6959150];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t static FloatVector./ infix(_:_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = MEMORY[0x1E6959130];

  return sub_1C725DC3C(a1, v2, a2);
}

uint64_t sub_1C725DC3C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, void *a3@<X8>)
{
  sub_1C725CE9C(*(*a1 + 16), 0.0);
  v6 = v5;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_0_116();
    v6 = v7;
  }

  OUTLINED_FUNCTION_2_79();
  result = a2();
  *a3 = v6;
  return result;
}

uint64_t sub_1C725DD14@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  result = *(*a1 + 16);
  if (result == *(*a2 + 16))
  {
    sub_1C725CE9C(result, 0.0);
    v10 = v9;
    v11 = *(v5 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_0_116();
      v10 = v12;
    }

    result = a3(v5 + 32, 1, v6 + 32, 1, v10 + 32, 1, v11);
    *a4 = v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C725DDC4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  a3(&v8, &v7, &v6);

  *a1 = v8;
  return result;
}

uint64_t FloatVector.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C7041C84();
  return sub_1C7551FAC();
}

uint64_t sub_1C725DE70()
{
  sub_1C7551F3C();
  sub_1C7041C84();
  return sub_1C7551FAC();
}

uint64_t sub_1C725DEB4@<X0>(uint64_t *a1@<X8>)
{
  v2 = FloatVector.makeIterator()();

  *a1 = v2;
  a1[1] = 0;
  return result;
}

uint64_t sub_1C725DF00(uint64_t a1)
{
  v1 = sub_1C74BAC90(a1);

  return v1;
}

uint64_t Array<A>.mean()@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (!*(result + 16))
  {
    __break(1u);
  }

  *a2 = 0;
  return result;
}

unint64_t sub_1C725DFC4()
{
  result = qword_1EC219C58;
  if (!qword_1EC219C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C58);
  }

  return result;
}

unint64_t sub_1C725E01C()
{
  result = qword_1EC219C60;
  if (!qword_1EC219C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC219C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C60);
  }

  return result;
}

uint64_t TextSanitizer.scrub(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *a3;
  type metadata accessor for TextSanitizer();
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  OUTLINED_FUNCTION_0_117(v5);

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C725E150()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v8 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C725E290, 0, 0);
  }

  else
  {
    v9 = *(v6 + 8);

    return v9(v5, v3);
  }
}

uint64_t TextSanitizer.isSafe(_:useCaseIdentifier:)(uint64_t a1, uint64_t a2, char *a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  v4 = *a3;
  type metadata accessor for TextSanitizer();
  *(v3 + 64) = v4;
  v5 = swift_task_alloc();
  *(v3 + 32) = v5;
  *v5 = v3;
  OUTLINED_FUNCTION_0_117(v5);

  return SafetyBundle.scrub(_:useCaseIdentifier:)();
}

uint64_t sub_1C725E368()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3[5] = v1;
  v3[6] = v2;
  v3[7] = v0;

  if (v0)
  {
    v4 = sub_1C725E504;
  }

  else
  {
    v4 = sub_1C725E478;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1C725E478()
{
  OUTLINED_FUNCTION_42();
  if (v0[5] == v0[2] && v0[6] == v0[3])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1C7551DBC();
  }

  v3 = v0[1];

  return v3(v2 & 1);
}

uint64_t sub_1C725E504()
{
  OUTLINED_FUNCTION_42();

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1C725E564()
{
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_0(v1);

  return TextSanitizer.isSafe(_:useCaseIdentifier:)(v2, v3, v4);
}

uint64_t sub_1C725E5FC()
{
  OUTLINED_FUNCTION_42();
  v2 = v1;
  OUTLINED_FUNCTION_47();
  v3 = *v0;
  OUTLINED_FUNCTION_14();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_1C725E6E8()
{
  OUTLINED_FUNCTION_49_0();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_11_0(v1);

  return TextSanitizer.scrub(_:useCaseIdentifier:)(v2, v3, v4);
}

uint64_t sub_1C725E780()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_47();
  v6 = *v1;
  OUTLINED_FUNCTION_14();
  *v7 = v6;

  v10 = *(v6 + 8);
  if (!v0)
  {
    v8 = v5;
    v9 = v3;
  }

  return v10(v8, v9);
}

uint64_t sub_1C725E880(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  v5 = 0;
  v22 = *(a2 + 16);
  v19 = a2 + 32;
  while (1)
  {
    if (v5 == v22)
    {
      return v4;
    }

    if (v5 >= v22)
    {
      break;
    }

    result = memcpy(__dst, (v19 + 112 * v5), 0x6CuLL);
    if (__OFADD__(v5++, 1))
    {
      goto LABEL_24;
    }

    v7 = *a3;
    v9 = __dst[0];
    v8 = __dst[1];
    if (*(*a3 + 16))
    {
      sub_1C7551F3C();
      sub_1C7262AA8(__dst, v20);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75505AC();
      v10 = sub_1C7551FAC();
      v11 = ~(-1 << *(v7 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v7 + 56 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(v7 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_1C7551DBC();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_1C7262AA8(__dst, v20);
      sub_1C75504FC();
    }

    sub_1C7262AA8(__dst, v20);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB4194();
      v4 = v17;
    }

    v16 = *(v4 + 16);
    if (v16 >= *(v4 + 24) >> 1)
    {
      sub_1C6FB4194();
      v4 = v18;
    }

    *(v4 + 16) = v16 + 1;
    memcpy((v4 + 112 * v16 + 32), __dst, 0x6CuLL);
    sub_1C70F082C(v20, v9, v8);
LABEL_20:

    result = sub_1C7262B04(__dst);
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C725EAB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return OUTLINED_FUNCTION_21_41();
  }

  v31 = MEMORY[0x1E69E7CC0];
  sub_1C716E9EC();
  v3 = v31;
  result = sub_1C7117368(a1);
  v5 = result;
  v6 = a1;
  v8 = v7;
  v10 = v9;
  v11 = 0;
  v27 = a1 + 64;
  v25 = v2;
  if ((result & 0x8000000000000000) == 0)
  {
    while (1)
    {
      if (v5 >= 1 << *(v6 + 32))
      {
        goto LABEL_27;
      }

      v12 = v5 >> 6;
      if ((*(v27 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_28;
      }

      if (*(v6 + 36) != v8)
      {
        goto LABEL_29;
      }

      sub_1C6F774EC(*(v6 + 56) + 32 * v5, v29);
      sub_1C6F774EC(v29, __dst);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
      if (!swift_dynamicCast())
      {
        break;
      }

      sub_1C73C8044(__src);
      if (v1)
      {

        goto LABEL_25;
      }

      __swift_destroy_boxed_opaque_existential_1(v29);
      memcpy(__dst, __src, 0x6CuLL);
      v31 = v3;
      v14 = *(v3 + 16);
      v13 = *(v3 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_15(v13);
        sub_1C716E9EC();
        v3 = v31;
      }

      *(v3 + 16) = v14 + 1;
      result = memcpy((v3 + 112 * v14 + 32), __dst, 0x6CuLL);
      v6 = a1;
      v15 = 1 << *(a1 + 32);
      if (v5 >= v15)
      {
        goto LABEL_30;
      }

      v16 = *(v27 + 8 * v12);
      if ((v16 & (1 << v5)) == 0)
      {
        goto LABEL_31;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_32;
      }

      v17 = v16 & (-2 << (v5 & 0x3F));
      if (v17)
      {
        v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v12 << 6;
        v19 = v12 + 1;
        v20 = (a1 + 72 + 8 * v12);
        while (v19 < (v15 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            result = sub_1C6F9ED50(v5, v8, v10 & 1);
            v6 = a1;
            v15 = __clz(__rbit64(v21)) + v18;
            goto LABEL_20;
          }
        }

        result = sub_1C6F9ED50(v5, v8, v10 & 1);
        v6 = a1;
      }

LABEL_20:
      if (++v11 == v25)
      {
        return OUTLINED_FUNCTION_21_41();
      }

      v10 = 0;
      v8 = *(v6 + 36);
      v5 = v15;
      if (v15 < 0)
      {
        goto LABEL_27;
      }
    }

    sub_1C726152C();
    v23 = swift_allocError();
    OUTLINED_FUNCTION_13_51(v23, v24);
    swift_willThrow();
LABEL_25:
    __swift_destroy_boxed_opaque_existential_1(v29);

    return OUTLINED_FUNCTION_21_41();
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C725EDC0()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC219C70);
  __swift_project_value_buffer(v0, qword_1EC219C70);
  return sub_1C754FEFC();
}

uint64_t sub_1C725EE58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v45 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14_0();
  v19 = v18 - v17;
  v50 = MEMORY[0x1E69E7CC0];
  v20 = [objc_opt_self() defaultManager];
  v21 = sub_1C755116C();

  v46 = (v15 + 32);
  v43 = (v5 + 8);
  v48 = (v15 + 8);
  v49 = v13;
  if (v21)
  {
    while (1)
    {
      if ([v21 nextObject])
      {
        sub_1C75515CC();
        swift_unknownObjectRelease();
      }

      else
      {
        v51 = 0u;
        v52 = 0u;
      }

      v53 = v51;
      v54 = v52;
      if (!*(&v52 + 1))
      {
        goto LABEL_13;
      }

      v22 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v12, v22 ^ 1u, 1, v13);
      if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
      {
        goto LABEL_14;
      }

      (*v46)(v19, v12, v13);
      sub_1C75506CC();
      sub_1C755064C();
      if (v3)
      {
        break;
      }

      v23 = v44;
      sub_1C75506CC();
      sub_1C755069C();
      v25 = v24;
      (*v43)(v23, v45);
      if (v25 >> 60 == 15)
      {
        sub_1C726152C();
        v34 = swift_allocError();
        OUTLINED_FUNCTION_13_51(v34, v35);
        swift_willThrow();
        goto LABEL_20;
      }

      v26 = objc_opt_self();
      OUTLINED_FUNCTION_323();
      v27 = sub_1C754DDCC();
      *&v53 = 0;
      v28 = [v26 JSONObjectWithData:v27 options:0 error:&v53];

      if (!v28)
      {
        v36 = v53;
        sub_1C754DBEC();

        goto LABEL_19;
      }

      v29 = v53;
      sub_1C75515CC();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21ACD0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_1C726152C();
        v37 = swift_allocError();
        OUTLINED_FUNCTION_13_51(v37, v38);
LABEL_19:
        swift_willThrow();
        v39 = OUTLINED_FUNCTION_323();
        sub_1C70B5C10(v39, v40);
LABEL_20:

LABEL_21:
        (*v48)(v19, v49);

        return OUTLINED_FUNCTION_21_41();
      }

      v3 = 0;
      v30 = OUTLINED_FUNCTION_21_41();
      v31 = sub_1C725EAB0(v30);
      v32 = OUTLINED_FUNCTION_323();
      sub_1C70B5C10(v32, v33);

      sub_1C6FD37A4(v31);
      v13 = v49;
      (*v48)(v19, v49);
    }

    goto LABEL_21;
  }

  v53 = 0u;
  v54 = 0u;
LABEL_13:
  sub_1C7030CDC(&v53, &qword_1EC219770);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v13);
LABEL_14:
  sub_1C7030CDC(v12, &qword_1EC215BD8);
  sub_1C725F4F8(v50);

  return OUTLINED_FUNCTION_21_41();
}

uint64_t sub_1C725F40C()
{
  v1 = sub_1C75506DC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  OUTLINED_FUNCTION_14_0();
  sub_1C75506CC();
  sub_1C755064C();
  if (!v0)
  {
    v2 = static MomentsPromptDatabaseLoader.readTemplates(from:)();

    sub_1C725F4F8(v2);
  }

  return OUTLINED_FUNCTION_21_41();
}

uint64_t sub_1C725F4F8(uint64_t a1)
{
  sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v24 = v5 - v4;
  v6 = sub_1C725F83C(a1);
  v7 = *(v6 + 16);
  if (v7)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v8 = 0;
    v9 = v29;
    v25 = v7 - 1;
    v10 = 32;
    while (v8 < *(v6 + 16))
    {
      memcpy(__dst, (v6 + v10), 0x6CuLL);
      memcpy(v27, (v6 + v10), 0x6CuLL);
      sub_1C7262AA8(__dst, v26);
      v11 = static PromptLocalizableStringBuilder.buildLocalizableStringEntry(from:)(v27);
      if (v1)
      {
        goto LABEL_15;
      }

      v13 = v11;
      v14 = v12;
      memcpy(v26, v27, 0x6CuLL);
      sub_1C7262B04(v26);
      v29 = v9;
      v15 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v15 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_15(v16);
        sub_1C6F7ED9C();
        v9 = v29;
      }

      *(v9 + 16) = v15 + 1;
      v17 = v9 + 16 * v15;
      *(v17 + 32) = v13;
      *(v17 + 40) = v14;
      if (v25 == v8)
      {

        goto LABEL_11;
      }

      v10 += 112;
      ++v8;
    }

    __break(1u);
LABEL_15:
    memcpy(v26, v27, 0x6CuLL);
    sub_1C7262B04(v26);

    __break(1u);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
LABEL_11:
    __dst[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
    OUTLINED_FUNCTION_0_118();
    sub_1C7099594(v18, &unk_1EC217A00);
    __dst[0] = sub_1C75505FC();
    __dst[1] = v19;
    v20 = v24;
    sub_1C75506CC();
    sub_1C6FB5E8C();
    sub_1C755158C();
    v21 = OUTLINED_FUNCTION_216();
    v22(v21);

    if (!v1)
    {
      v20 = *(v9 + 16);
    }

    return v20;
  }

  return result;
}

uint64_t sub_1C725F83C(uint64_t a1)
{
  v4 = a1;
  sub_1C75504FC();
  sub_1C72614A8(&v4, sub_1C7422E7C, sub_1C72617B8);
  v1 = v4;
  v4 = MEMORY[0x1E69E7CD0];
  v2 = sub_1C725E880(MEMORY[0x1E69E7CC0], v1, &v4);

  return v2;
}

uint64_t static PromptLocalizableStringBuilder.buildLocalizableStringEntry(from:)(uint64_t a1)
{
  memcpy(v11, (a1 + 16), sizeof(v11));
  v1 = OUTLINED_FUNCTION_57_0();
  static PromptLocalizableStringBuilder.getParameterTypes(from:)(v1, v2);
  v3 = OUTLINED_FUNCTION_57_0();
  v5 = static PromptLocalizableStringBuilder.getLocalizableString(from:templateParameterTypes:)(v3, v4);
  v7 = v6;
  static PromptLocalizableStringBuilder.getLocalizableStringComment(from:templateParameterTypes:)();
  v9 = v8;

  MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
  MEMORY[0x1CCA5CD70](v5, v7);

  return v9;
}

uint64_t static PromptLocalizableStringBuilder.getParameterTypes(from:)(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v36 - v5;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = byte_1F46A9168[v7++ + 32];
    v37[0] = a1;
    v37[1] = a2;
    v10 = 0xE600000000000000;
    v11 = 0x726F6C796154;
    switch(v9)
    {
      case 1:
        OUTLINED_FUNCTION_20_43();
        v10 = 0xED000065636E6572;
        break;
      case 2:
        v10 = 0xE800000000000000;
        OUTLINED_FUNCTION_18_34();
        break;
      case 3:
        v10 = 0xE900000000000065;
        OUTLINED_FUNCTION_7_52();
        break;
      default:
        break;
    }

    v36[2] = v11;
    v36[3] = v10;
    v12 = sub_1C754E15C();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
    sub_1C6FB5E8C();
    sub_1C755157C();
    v14 = v13;
    sub_1C7030CDC(v6, &qword_1EC214DF8);

    if ((v14 & 1) == 0)
    {
      v15 = sub_1C75508EC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB4248();
        v8 = v19;
      }

      v17 = *(v8 + 16);
      v16 = *(v8 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_15(v16);
        sub_1C6FB4248();
        v8 = v20;
      }

      *(v8 + 16) = v17 + 1;
      v18 = v8 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v9;
    }
  }

  while (v7 != 4);
  v37[0] = v8;
  sub_1C75504FC();
  sub_1C72614A8(v37, sub_1C7422E94, sub_1C72618AC);
  v21 = v37[0];
  v22 = *(v37[0] + 16);
  if (v22)
  {
    v36[0] = a1;
    v37[0] = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_23_33();
    sub_1C716EA0C();
    v23 = v37[0];
    v24 = *(v37[0] + 16);
    v25 = 40;
    do
    {
      v26 = *(v21 + v25);
      v37[0] = v23;
      v27 = *(v23 + 24);
      if (v24 >= v27 >> 1)
      {
        OUTLINED_FUNCTION_15(v27);
        sub_1C716EA0C();
        v23 = v37[0];
      }

      *(v23 + 16) = v24 + 1;
      *(v23 + v24 + 32) = v26;
      v25 += 16;
      ++v24;
      --v22;
    }

    while (v22);

    a1 = v36[0];
  }

  else
  {

    v23 = MEMORY[0x1E69E7CC0];
  }

  if (qword_1EC213F28 != -1)
  {
    OUTLINED_FUNCTION_4_65();
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EC219C70);
  sub_1C75504FC();
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C755118C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v37[0] = swift_slowAlloc();
    *v31 = 136315650;
    *(v31 + 4) = sub_1C6F765A4(a1, a2, v37);
    *(v31 + 12) = 2048;
    *(v31 + 14) = *(v23 + 16);

    *(v31 + 22) = 2080;
    v32 = MEMORY[0x1CCA5D090](v23, &type metadata for PromptLocalizableStringBuilder.TemplateParameterType);
    v34 = sub_1C6F765A4(v32, v33, v37);

    *(v31 + 24) = v34;
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Template %s produces types %ld %s", v31, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  return v23;
}

uint64_t static PromptLocalizableStringBuilder.getLocalizableString(from:templateParameterTypes:)(uint64_t a1, unint64_t a2)
{
  v4 = static PromptLocalizableStringBuilder.getParameterTypes(from:)(a1, a2);
  static PromptLocalizableStringBuilder.getLocalizableStringKey(from:types:)(a1, a2, v4);
  static PromptLocalizableStringBuilder.getLocalizableString(from:types:)();
  v6 = v5;
  v8 = v7;

  v9 = OUTLINED_FUNCTION_216();
  MEMORY[0x1CCA5CD70](v9);

  MEMORY[0x1CCA5CD70](0x22203D2022, 0xE500000000000000);
  MEMORY[0x1CCA5CD70](v6, v8);

  MEMORY[0x1CCA5CD70](15138, 0xE200000000000000);
  return 34;
}

void static PromptLocalizableStringBuilder.getLocalizableStringComment(from:templateParameterTypes:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 80);
  v24 = *(v0 + 88);
  v22 = *(v0 + 72);
  v23 = *(v0 + 96);
  v25 = *(v0 + 104);
  v26 = *(v0 + 105);
  v27 = *(v0 + 106);
  v28 = *(v0 + 107);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000034, 0x80000001C75A6A40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E6530];
  *(v9 + 16) = xmmword_1C755BAB0;
  v11 = MEMORY[0x1E69E65A8];
  *(v9 + 56) = v10;
  *(v9 + 64) = v11;
  *(v9 + 32) = v1;
  v12 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v12);

  MEMORY[0x1CCA5CD70](0x6D6F72702041202ELL, 0xEA00000000007470);
  v13 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v13 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    MEMORY[0x1CCA5CD70](v2, v4);
    OUTLINED_FUNCTION_6_62();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x2220726F6620, 0xE600000000000000);
  }

  v14 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v14 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    MEMORY[0x1CCA5CD70](v3, v5);
    OUTLINED_FUNCTION_6_62();
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](0x222074756F626120, 0xE800000000000000);
  }

  v15 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v15 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v15)
  {
    MEMORY[0x1CCA5CD70](v6, v7);
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v16 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v16);
  }

  v17 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v17 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v18 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v18);
  }

  v19 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v19 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    MEMORY[0x1CCA5CD70]();
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_11_46();
    v20 = OUTLINED_FUNCTION_57_0();
    MEMORY[0x1CCA5CD70](v20);
  }

  if (v25)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  if (v26)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  if (v27)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70](0xD000000000000010);
  }

  if (v28)
  {
    OUTLINED_FUNCTION_10_55();
    OUTLINED_FUNCTION_19_45();
    MEMORY[0x1CCA5CD70]();
  }

  static PromptLocalizableStringBuilder.getExampleLocalizedString(from:types:)();
  MEMORY[0x1CCA5CD70]();

  OUTLINED_FUNCTION_6_62();
  OUTLINED_FUNCTION_11_46();
  v21 = OUTLINED_FUNCTION_57_0();
  MEMORY[0x1CCA5CD70](v21);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](3090976, 0xE300000000000000);

  OUTLINED_FUNCTION_224_0();
}

uint64_t static PromptLocalizableStringBuilder.getLocalizableStringKey(from:types:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_1C6FB5E8C();
  OUTLINED_FUNCTION_2_80();
  v39 = sub_1C755155C();
  v40 = v6;
  v45 = 44;
  v46 = 0xE100000000000000;
  v43 = 0;
  v44 = 0xE000000000000000;
  OUTLINED_FUNCTION_2_80();
  sub_1C755155C();

  v37 = sub_1C7260C4C();
  v38 = v7;

  v8 = *(a3 + 16);
  if (v8)
  {
    v36 = a1;
    v45 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_23_33();
    sub_1C6F7ED9C();
    v9 = (a3 + 32);
    v10 = v45;
    do
    {
      v11 = *v9++;
      v12 = 0xEA00000000006E6FLL;
      v39 = 0;
      v40 = 0xE000000000000000;
      v13 = 0x7372655068746977;
      switch(v11)
      {
        case 1:
          v12 = 0xE600000000000000;
          v13 = 0x656D69547461;
          break;
        case 2:
          v13 = OUTLINED_FUNCTION_16_41();
          v12 = 0xEB00000000797469;
          break;
        case 3:
          v13 = OUTLINED_FUNCTION_17_49();
          v12 = 0xEC0000006563616CLL;
          break;
        default:
          break;
      }

      MEMORY[0x1CCA5CD70](v13, v12);

      MEMORY[0x1CCA5CD70](4203808, 0xE300000000000000);
      v14 = v39;
      v15 = v40;
      v45 = v10;
      v17 = *(v10 + 16);
      v16 = *(v10 + 24);
      if (v17 >= v16 >> 1)
      {
        OUTLINED_FUNCTION_15(v16);
        sub_1C6F7ED9C();
        v10 = v45;
      }

      *(v10 + 16) = v17 + 1;
      v18 = v10 + 16 * v17;
      *(v18 + 32) = v14;
      *(v18 + 40) = v15;
      --v8;
    }

    while (v8);
    a1 = v36;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v19, &unk_1EC217A00);
  v20 = sub_1C75505FC();
  v22 = v21;

  sub_1C75504FC();
  sub_1C7033D84(1);
  v23 = sub_1C75514AC();
  v25 = v24;

  sub_1C70CE56C(1uLL, v20, v22);
  v45 = v23;
  v46 = v25;
  v41 = v26;
  v42 = v27;
  sub_1C70D3F24();
  sub_1C75504FC();
  sub_1C755083C();

  v39 = 0xD000000000000010;
  v40 = 0x80000001C75A6B00;
  MEMORY[0x1CCA5CD70](v37, v38);

  MEMORY[0x1CCA5CD70](v23, v25);

  if (qword_1EC213F28 != -1)
  {
    OUTLINED_FUNCTION_4_65();
  }

  v28 = sub_1C754FF1C();
  __swift_project_value_buffer(v28, qword_1EC219C70);
  sub_1C75504FC();
  sub_1C75504FC();
  v29 = sub_1C754FEEC();
  v30 = sub_1C755118C();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v31 = 136315394;
    *(v31 + 4) = sub_1C6F765A4(a1, a2, &v39);
    *(v31 + 12) = 2080;
    v32 = OUTLINED_FUNCTION_216();
    *(v31 + 14) = sub_1C6F765A4(v32, v33, v34);
    _os_log_impl(&dword_1C6F5C000, v29, v30, "Template %s produces key %s", v31, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  return OUTLINED_FUNCTION_216();
}

void static PromptLocalizableStringBuilder.getLocalizableString(from:types:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0 + 32;
    sub_1C75504FC();
    v3 = 1;
    do
    {
      ++v2;
      v4 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v4);

      MEMORY[0x1CCA5CD70](16420, 0xE200000000000000);
      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_2_80();
      sub_1C755155C();

      ++v3;
      --v1;
    }

    while (v1);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_224_0();
}

void static PromptLocalizableStringBuilder.getExampleLocalizedString(from:types:)()
{
  OUTLINED_FUNCTION_223();
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = (v0 + 32);
    sub_1C75504FC();
    do
    {
      v3 = *v2++;
      switch(v3)
      {
        case 1:
          OUTLINED_FUNCTION_20_43();
          break;
        case 2:
          OUTLINED_FUNCTION_18_34();
          break;
        case 3:
          OUTLINED_FUNCTION_7_52();
          break;
        default:
          break;
      }

      sub_1C6FB5E8C();
      OUTLINED_FUNCTION_14_43();
      OUTLINED_FUNCTION_2_80();
      sub_1C755155C();

      --v1;
    }

    while (v1);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_224_0();
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.placeholder.getter()
{
  result = 0x726F6C796154;
  switch(*v0)
  {
    case 1:
      result = 0x65666552656D6974;
      break;
    case 2:
      result = 0x656D614E79746963;
      break;
    case 3:
      result = 0x6D614E6563616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.exampleValue.getter()
{
  result = 0x726F6C796154;
  switch(*v0)
  {
    case 1:
      result = 0x796164697246;
      break;
    case 2:
      result = 0x7369726150;
      break;
    case 3:
      result = 0x657276756F4CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C7260C4C()
{
  v0 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  sub_1C754D7BC();
  sub_1C6FB5E8C();
  v7 = sub_1C755151C();
  (*(v2 + 8))(v6, v0);
  v8 = *(v7 + 16);
  if (v8)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C();
    v9 = v7 + 40;
    do
    {
      v10 = sub_1C755153C();
      v12 = v11;
      v14 = *(v19 + 16);
      v13 = *(v19 + 24);
      if (v14 >= v13 >> 1)
      {
        OUTLINED_FUNCTION_15(v13);
        sub_1C6F7ED9C();
      }

      *(v19 + 16) = v14 + 1;
      v15 = v19 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v9 += 16;
      --v8;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00);
  OUTLINED_FUNCTION_0_118();
  sub_1C7099594(v16, &unk_1EC217A00);
  v17 = sub_1C75505FC();

  return v17;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.keyWithTag.getter()
{
  v1 = 0xEA00000000006E6FLL;
  v2 = 0x7372655068746977;
  switch(*v0)
  {
    case 1:
      v1 = 0xE600000000000000;
      v2 = 0x656D69547461;
      break;
    case 2:
      v1 = 0xEB00000000797469;
      v2 = OUTLINED_FUNCTION_16_41();
      break;
    case 3:
      v1 = 0xEC0000006563616CLL;
      v2 = OUTLINED_FUNCTION_17_49();
      break;
    default:
      break;
  }

  MEMORY[0x1CCA5CD70](v2, v1);

  MEMORY[0x1CCA5CD70](4203808, 0xE300000000000000);
  return 0;
}

uint64_t static PromptLocalizableStringBuilder.TemplateParameterType.placeHolderValuesLowercased.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40);
  *(swift_initStackObject() + 16) = xmmword_1C755F060;
  OUTLINED_FUNCTION_7_52();
  *(v0 + 32) = v1;
  *(v0 + 40) = 0xE900000000000065;
  *(v0 + 48) = 0x656D614E79746963;
  *(v0 + 56) = 0xE800000000000000;
  strcpy((v0 + 64), "timeReference");
  *(v0 + 78) = -4864;
  *(v0 + 80) = 0x614E6E6F73726570;
  *(v0 + 88) = 0xEA0000000000656DLL;
  v29 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C();
  v2 = v29;
  v3 = sub_1C75506FC();
  v5 = v4;
  v7 = *(v29 + 16);
  v6 = *(v29 + 24);
  if (v7 >= v6 >> 1)
  {
    OUTLINED_FUNCTION_15(v6);
    sub_1C6F7ED9C();
    v2 = v29;
  }

  *(v2 + 16) = v7 + 1;
  v8 = v2 + 16 * v7;
  *(v8 + 32) = v3;
  *(v8 + 40) = v5;
  v9 = sub_1C75506FC();
  v11 = v10;
  v13 = *(v2 + 16);
  v12 = *(v2 + 24);
  if (v13 >= v12 >> 1)
  {
    OUTLINED_FUNCTION_15(v12);
    sub_1C6F7ED9C();
    v2 = v29;
  }

  *(v2 + 16) = v13 + 1;
  v14 = v2 + 16 * v13;
  *(v14 + 32) = v9;
  *(v14 + 40) = v11;
  v15 = sub_1C75506FC();
  v17 = v16;
  v19 = *(v2 + 16);
  v18 = *(v2 + 24);
  if (v19 >= v18 >> 1)
  {
    OUTLINED_FUNCTION_15(v18);
    sub_1C6F7ED9C();
  }

  v20 = v29;
  *(v29 + 16) = v19 + 1;
  v21 = v29 + 16 * v19;
  *(v21 + 32) = v15;
  *(v21 + 40) = v17;
  v22 = sub_1C75506FC();
  v24 = v23;
  v26 = *(v29 + 16);
  v25 = *(v29 + 24);
  if (v26 >= v25 >> 1)
  {
    OUTLINED_FUNCTION_15(v25);
    sub_1C6F7ED9C();
    v20 = v29;
  }

  *(v20 + 16) = v26 + 1;
  v27 = v20 + 16 * v26;
  *(v27 + 32) = v22;
  *(v27 + 40) = v24;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  return sub_1C706D154(v20);
}

uint64_t static PromptLocalizableStringBuilder.TemplateParameterType.allowedAmbiguousPeopleTokens.getter()
{
  if (qword_1EC213F30 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.key.getter()
{
  result = 0x7372655068746977;
  switch(*v0)
  {
    case 1:
      result = 0x656D69547461;
      break;
    case 2:
      result = OUTLINED_FUNCTION_16_41();
      break;
    case 3:
      result = OUTLINED_FUNCTION_17_49();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t PromptLocalizableStringBuilder.TemplateParameterType.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C72614A8(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

unint64_t sub_1C726152C()
{
  result = qword_1EC219C90;
  if (!qword_1EC219C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C90);
  }

  return result;
}

unint64_t sub_1C7261584()
{
  result = qword_1EC219C98;
  if (!qword_1EC219C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC219C98);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptLocalizableStringBuilder.TemplateParameterType(_BYTE *result, unsigned int a2, unsigned int a3)
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

char *sub_1C72617B8(uint64_t *a1)
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
      sub_1C7261B04(v7, v8, a1, v4);
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
    return sub_1C72619B0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C72618AC(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219CB0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C7262020(v7, v8, a1, v4);
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
    return sub_1C7261A90(0, v2, 1, a1);
  }

  return result;
}

char *sub_1C72619B0(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 112 * a3;
    v8 = &result[-a3];
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        if (v10[2] >= *(v10 - 12))
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(v12, v10, sizeof(v12));
        memcpy(v10, v10 - 14, 0x70uLL);
        result = memcpy(v10 - 14, v12, 0x6CuLL);
        v10 -= 14;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 112;
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

uint64_t sub_1C7261A90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        v9 = *(v8 + 16);
        if (v9 >= *v8)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v8 + 24);
        *(v8 + 16) = *v8;
        *v8 = v9;
        *(v8 + 8) = v10;
        v8 -= 16;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 16;
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

void sub_1C7261B04(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v78 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *(*a3 + 112 * v6 + 16);
        v10 = 112 * v8;
        v11 = *a3 + 112 * v8;
        v12 = *(v11 + 16);
        v13 = (v11 + 240);
        v14 = v8 + 2;
        while (1)
        {
          v15 = v14;
          if (++v6 >= v5)
          {
            break;
          }

          v16 = (v9 < v12) ^ (*v13 >= *(v13 - 14));
          v13 += 14;
          ++v14;
          if ((v16 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v6 = v5;
LABEL_9:
        if (v9 < v12)
        {
          if (v6 < v8)
          {
            goto LABEL_110;
          }

          if (v8 < v6)
          {
            if (v5 >= v15)
            {
              v5 = v15;
            }

            v17 = 112 * v5 - 112;
            v18 = v6;
            v19 = v8;
            do
            {
              if (v19 != --v18)
              {
                v20 = *a3;
                if (!*a3)
                {
                  goto LABEL_115;
                }

                memcpy(__dst, (v20 + v10), sizeof(__dst));
                memmove((v20 + v10), (v20 + v17), 0x70uLL);
                memcpy((v20 + v17), __dst, 0x6CuLL);
              }

              ++v19;
              v17 -= 112;
              v10 += 112;
            }

            while (v19 < v18);
            v5 = a3[1];
          }
        }
      }

      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_109;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_111;
          }

          if (v8 + a4 >= v5)
          {
            v21 = v5;
          }

          else
          {
            v21 = v8 + a4;
          }

          if (v21 < v8)
          {
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
            return;
          }

          if (v6 != v21)
          {
            v74 = v7;
            v22 = *a3;
            v23 = *a3 + 112 * v6;
            v24 = v8 - v6;
            do
            {
              v25 = v24;
              v26 = v23;
              do
              {
                if (v26[2] >= *(v26 - 12))
                {
                  break;
                }

                if (!v22)
                {
                  goto LABEL_113;
                }

                memcpy(__dst, v26, sizeof(__dst));
                memcpy(v26, v26 - 14, 0x70uLL);
                memcpy(v26 - 14, __dst, 0x6CuLL);
                v26 -= 14;
              }

              while (!__CFADD__(v25++, 1));
              ++v6;
              v23 += 112;
              --v24;
            }

            while (v6 != v21);
            v6 = v21;
            v7 = v74;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_108;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v7 = v70;
      }

      v28 = v7[2];
      v29 = v28 + 1;
      if (v28 >= v7[3] >> 1)
      {
        sub_1C6FB17EC();
        v7 = v71;
      }

      v7[2] = v29;
      v30 = v7 + 4;
      v31 = &v7[2 * v28 + 4];
      *v31 = v8;
      v31[1] = v6;
      v75 = *a1;
      if (!*a1)
      {
        goto LABEL_116;
      }

      if (v28)
      {
        while (1)
        {
          v32 = v29 - 1;
          v33 = &v30[2 * v29 - 2];
          v34 = &v7[2 * v29];
          if (v29 >= 4)
          {
            break;
          }

          if (v29 == 3)
          {
            v35 = v7[4];
            v36 = v7[5];
            v45 = __OFSUB__(v36, v35);
            v37 = v36 - v35;
            v38 = v45;
LABEL_57:
            if (v38)
            {
              goto LABEL_98;
            }

            v50 = *v34;
            v49 = v34[1];
            v51 = __OFSUB__(v49, v50);
            v52 = v49 - v50;
            v53 = v51;
            if (v51)
            {
              goto LABEL_101;
            }

            v54 = v33[1];
            v55 = v54 - *v33;
            if (__OFSUB__(v54, *v33))
            {
              goto LABEL_104;
            }

            if (__OFADD__(v52, v55))
            {
              goto LABEL_106;
            }

            if (v52 + v55 >= v37)
            {
              if (v37 < v55)
              {
                v32 = v29 - 2;
              }

              goto LABEL_79;
            }

            goto LABEL_72;
          }

          if (v29 < 2)
          {
            goto LABEL_100;
          }

          v57 = *v34;
          v56 = v34[1];
          v45 = __OFSUB__(v56, v57);
          v52 = v56 - v57;
          v53 = v45;
LABEL_72:
          if (v53)
          {
            goto LABEL_103;
          }

          v59 = *v33;
          v58 = v33[1];
          v45 = __OFSUB__(v58, v59);
          v60 = v58 - v59;
          if (v45)
          {
            goto LABEL_105;
          }

          if (v60 < v52)
          {
            goto LABEL_86;
          }

LABEL_79:
          if (v32 - 1 >= v29)
          {
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
            __break(1u);
LABEL_98:
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
            goto LABEL_112;
          }

          if (!*a3)
          {
            goto LABEL_114;
          }

          v64 = v7;
          v65 = &v30[2 * v32 - 2];
          v66 = *v65;
          v67 = &v30[2 * v32];
          v68 = v67[1];
          sub_1C726277C((*a3 + 112 * *v65), (*a3 + 112 * *v67), (*a3 + 112 * v68), v75);
          if (v4)
          {
            goto LABEL_91;
          }

          if (v68 < v66)
          {
            goto LABEL_93;
          }

          v69 = v64[2];
          if (v32 > v69)
          {
            goto LABEL_94;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v32 >= v69)
          {
            goto LABEL_95;
          }

          v29 = v69 - 1;
          memmove(&v30[2 * v32], v67 + 2, 16 * (v69 - 1 - v32));
          v7 = v64;
          v64[2] = v69 - 1;
          if (v69 <= 2)
          {
            goto LABEL_86;
          }
        }

        v39 = &v30[2 * v29];
        v40 = *(v39 - 8);
        v41 = *(v39 - 7);
        v45 = __OFSUB__(v41, v40);
        v42 = v41 - v40;
        if (v45)
        {
          goto LABEL_96;
        }

        v44 = *(v39 - 6);
        v43 = *(v39 - 5);
        v45 = __OFSUB__(v43, v44);
        v37 = v43 - v44;
        v38 = v45;
        if (v45)
        {
          goto LABEL_97;
        }

        v46 = v34[1];
        v47 = v46 - *v34;
        if (__OFSUB__(v46, *v34))
        {
          goto LABEL_99;
        }

        v45 = __OFADD__(v37, v47);
        v48 = v37 + v47;
        if (v45)
        {
          goto LABEL_102;
        }

        if (v48 >= v42)
        {
          v62 = *v33;
          v61 = v33[1];
          v45 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v45)
          {
            goto LABEL_107;
          }

          if (v37 < v63)
          {
            v32 = v29 - 2;
          }

          goto LABEL_79;
        }

        goto LABEL_57;
      }

LABEL_86:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v78 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_117;
  }

  sub_1C7262518(&v78, *a1, a3);
LABEL_91:
}

void sub_1C7262020(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v85 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v80 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = 16 * v7;
        v12 = (*a3 + 16 * v7);
        v15 = *v12;
        v14 = v12 + 4;
        v13 = v15;
        v16 = v7 + 2;
        while (1)
        {
          v17 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v18 = (v10 < v13) ^ (*v14 >= *(v14 - 2));
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v13)
        {
          if (v9 < v7)
          {
            goto LABEL_114;
          }

          if (v7 < v9)
          {
            if (v6 >= v17)
            {
              v6 = v17;
            }

            v19 = 16 * v6 - 16;
            v20 = v9;
            v21 = v7;
            do
            {
              if (v21 != --v20)
              {
                v22 = *a3;
                if (!*a3)
                {
                  goto LABEL_119;
                }

                v23 = v22 + v11;
                v24 = v22 + v19;
                v25 = *v23;
                v26 = *(v23 + 8);
                v27 = v11 != v19 || v23 >= v24 + 16;
                if (v27)
                {
                  *v23 = *v24;
                }

                *v24 = v25;
                *(v24 + 8) = v26;
              }

              ++v21;
              v19 -= 16;
              v11 += 16;
            }

            while (v21 < v20);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_113;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_115;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v28 = *a3;
            v29 = *a3 + 16 * v9 - 16;
            v30 = v7 - v9;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                v33 = *(v32 + 16);
                if (v33 >= *v32)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_117;
                }

                v34 = *(v32 + 24);
                *(v32 + 16) = *v32;
                *v32 = v33;
                *(v32 + 8) = v34;
                v32 -= 16;
                v27 = __CFADD__(v31++, 1);
              }

              while (!v27);
              ++v9;
              v29 += 16;
              --v30;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_112;
      }

      v82 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC();
        v8 = v78;
      }

      v35 = v8[2];
      v36 = v35 + 1;
      if (v35 >= v8[3] >> 1)
      {
        sub_1C6FB17EC();
        v8 = v79;
      }

      v8[2] = v36;
      v37 = v8 + 4;
      v38 = &v8[2 * v35 + 4];
      *v38 = v7;
      v38[1] = v9;
      v83 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v35)
      {
        while (1)
        {
          v39 = v36 - 1;
          v40 = &v37[2 * v36 - 2];
          v41 = &v8[2 * v36];
          if (v36 >= 4)
          {
            break;
          }

          if (v36 == 3)
          {
            v42 = v8[4];
            v43 = v8[5];
            v52 = __OFSUB__(v43, v42);
            v44 = v43 - v42;
            v45 = v52;
LABEL_62:
            if (v45)
            {
              goto LABEL_102;
            }

            v57 = *v41;
            v56 = v41[1];
            v58 = __OFSUB__(v56, v57);
            v59 = v56 - v57;
            v60 = v58;
            if (v58)
            {
              goto LABEL_105;
            }

            v61 = v40[1];
            v62 = v61 - *v40;
            if (__OFSUB__(v61, *v40))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v59, v62))
            {
              goto LABEL_110;
            }

            if (v59 + v62 >= v44)
            {
              if (v44 < v62)
              {
                v39 = v36 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v36 < 2)
          {
            goto LABEL_104;
          }

          v64 = *v41;
          v63 = v41[1];
          v52 = __OFSUB__(v63, v64);
          v59 = v63 - v64;
          v60 = v52;
LABEL_77:
          if (v60)
          {
            goto LABEL_107;
          }

          v66 = *v40;
          v65 = v40[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (v67 < v59)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v39 - 1 >= v36)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v71 = &v37[2 * v39 - 2];
          v72 = *v71;
          v73 = &v37[2 * v39];
          v74 = v73[1];
          sub_1C7262924((*a3 + 16 * *v71), (*a3 + 16 * *v73), (*a3 + 16 * v74), v83);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v74 < v72)
          {
            goto LABEL_97;
          }

          v75 = v8;
          v76 = v8[2];
          if (v39 > v76)
          {
            goto LABEL_98;
          }

          *v71 = v72;
          v71[1] = v74;
          if (v39 >= v76)
          {
            goto LABEL_99;
          }

          v36 = v76 - 1;
          memmove(&v37[2 * v39], v73 + 2, 16 * (v76 - 1 - v39));
          v75[2] = v76 - 1;
          v77 = v76 > 2;
          v8 = v75;
          v5 = 0;
          if (!v77)
          {
            goto LABEL_91;
          }
        }

        v46 = &v37[2 * v36];
        v47 = *(v46 - 8);
        v48 = *(v46 - 7);
        v52 = __OFSUB__(v48, v47);
        v49 = v48 - v47;
        if (v52)
        {
          goto LABEL_100;
        }

        v51 = *(v46 - 6);
        v50 = *(v46 - 5);
        v52 = __OFSUB__(v50, v51);
        v44 = v50 - v51;
        v45 = v52;
        if (v52)
        {
          goto LABEL_101;
        }

        v53 = v41[1];
        v54 = v53 - *v41;
        if (__OFSUB__(v53, *v41))
        {
          goto LABEL_103;
        }

        v52 = __OFADD__(v44, v54);
        v55 = v44 + v54;
        if (v52)
        {
          goto LABEL_106;
        }

        if (v55 >= v49)
        {
          v69 = *v40;
          v68 = v40[1];
          v52 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v52)
          {
            goto LABEL_111;
          }

          if (v44 < v70)
          {
            v39 = v36 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v82;
      a4 = v80;
      if (v82 >= v6)
      {
        v85 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_1C7262650(&v85, *a1, a3);
LABEL_95:
}

uint64_t sub_1C7262518(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1C726277C((*a3 + 112 * *v4), (*a3 + 112 * *v9), (*a3 + 112 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1C7262650(uint64_t *a1, char *a2, void *a3)
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
    sub_1C7262924((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_1C726277C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 112;
  v9 = (a3 - a2) / 112;
  if (v8 < v9)
  {
    sub_1C741E7BC(a1, (a2 - a1) / 112, a4);
    v10 = &v4[112 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v6 + 2) >= *(v4 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 112;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 112;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 112;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    memmove(v7, v12, 0x70uLL);
    goto LABEL_13;
  }

  sub_1C741E7BC(a2, (a3 - a2) / 112, a4);
  v10 = &v4[112 * v9];
LABEL_15:
  for (v5 -= 112; v10 > v4 && v6 > v7; v5 -= 112)
  {
    if (*(v10 - 12) < *(v6 - 12))
    {
      v15 = v6 - 112;
      v13 = v5 + 112 == v6;
      v6 -= 112;
      if (!v13)
      {
        memmove(v5, v15, 0x70uLL);
        v6 = v15;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 112)
    {
      memmove(v5, v10 - 112, 0x70uLL);
    }

    v10 -= 112;
  }

LABEL_28:
  v16 = 112 * ((v10 - v4) / 112);
  if (v6 != v4 || v6 >= &v4[v16])
  {
    memmove(v6, v4, v16);
  }

  return 1;
}

uint64_t sub_1C7262924(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_1C7423CF4(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v12;
    goto LABEL_13;
  }

  sub_1C7423CF4(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*(v10 - 2) < *v14)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_28:
  v16 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v16])
  {
    memmove(v6, v4, 16 * v16);
  }

  return 1;
}

void QueryGenerator.applySortOrderToAssetUUIDsLeveragingTrips(_:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_10_56();
  v9 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  v16 = *v6;
  v144 = v4;
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  OUTLINED_FUNCTION_29_28();
  v17 = *(v8 + 16);
  if (!v16)
  {

LABEL_8:
    v30 = sub_1C754FEEC();
    v31 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v31))
    {
      v141 = v11;
      v143 = v15;
      v32 = OUTLINED_FUNCTION_23_1();
      v33 = OUTLINED_FUNCTION_20_1();
      v146[0] = v33;
      OUTLINED_FUNCTION_25_28(4.8151e-34);
      v36 = 1953718636;
      if (v37)
      {
        v36 = v1;
      }

      else
      {
        v35 = 0xE400000000000000;
      }

      if (v16)
      {
        v38 = v36;
      }

      else
      {
        v38 = 1701736302;
      }

      if (v16)
      {
        v39 = v35;
      }

      else
      {
        v39 = v34;
      }

      v40 = sub_1C6F765A4(v38, v39, v146);

      *(v32 + 4) = v40;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v17;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Should not apply the sort order %s on %ld consolidated assets, fallback to using the consolidated assets", v32, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();

      v11 = v141;
      v15 = v143;
    }

    else
    {
    }

    OUTLINED_FUNCTION_10_3(v144);
    sub_1C75504FC();
    OUTLINED_FUNCTION_18_35();
    v29 = v9;
    goto LABEL_93;
  }

  v18 = OUTLINED_FUNCTION_16_42();

  if ((v18 & 1) != 0 || v17 < 3)
  {
    goto LABEL_8;
  }

  v142 = v15;
  v139 = v9;
  v19 = v2 + *(type metadata accessor for QueryGenerator() + 24);
  v20 = *v19;
  v21 = static StoryGenerationUtilities.assetUUIDsByTripUUID(for:in:)();
  LOBYTE(v146[0]) = v16;
  sub_1C72638C8(v146, v8, v21);
  if ((v22 & 1) == 0)
  {

    v41 = sub_1C754FEEC();
    v42 = sub_1C755119C();
    if (OUTLINED_FUNCTION_128(v42))
    {
      v43 = OUTLINED_FUNCTION_41_0();
      v44 = OUTLINED_FUNCTION_20_1();
      v146[0] = v44;
      *v43 = 136315138;
      if (v16 == 2)
      {
        v45 = 1953718636;
      }

      else
      {
        v45 = 0x7473726966;
      }

      v46 = v11;
      if (v16 == 2)
      {
        v47 = 0xE400000000000000;
      }

      else
      {
        v47 = 0xE500000000000000;
      }

      v48 = sub_1C6F765A4(v45, v47, v146);
      v11 = v46;

      *(v43 + 4) = v48;
      _os_log_impl(&dword_1C6F5C000, v41, v42, "Unable to apply sort order %s on trips, fallback to using the consolidated assets", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_109();
    }

    goto LABEL_29;
  }

  v134 = v17;
  v140 = v11;
  v23 = sub_1C75504FC();
  v137 = v21;
  v24 = sub_1C7080ED4(v23);
  v25 = *(v19 + 8);
  v26 = *v19;

  v27 = [v26 librarySpecificFetchOptions];
  [v27 setSharingFilter_];

  v138 = v16;
  if (v16 == 2)
  {
    OUTLINED_FUNCTION_10_56();
    v28 = sub_1C7551DBC();
    v29 = v9;
  }

  else
  {
    v28 = 1;
    v29 = v9;
    OUTLINED_FUNCTION_10_56();
  }

  v49 = sub_1C70667BC(v28 & 1);
  sub_1C71F8834(v49, v27);
  v145 = 0;
  type metadata accessor for CollectionFetcherOptions();
  swift_initStackObject();
  v50 = v20;
  v51 = v27;
  v136 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v50, v27, &v145, 0);
  v54 = sub_1C70822D4(v136, v24, v52, v53);
  v55 = [v54 fetchedObjects];

  v135 = v51;
  if (v55)
  {
    sub_1C7265F94();
    v56 = sub_1C7550B5C();

    if (sub_1C6FB6304() >= 1)
    {

      sub_1C75504FC();
      v57 = sub_1C754FEEC();
      v58 = sub_1C75511BC();

      v132 = v57;
      v59 = &selRef_mergedPersonIdentifiers;
      if (os_log_type_enabled(v57, v58))
      {
        v131 = v58;
        v60 = OUTLINED_FUNCTION_41_0();
        v129 = OUTLINED_FUNCTION_20_1();
        v146[0] = v129;
        v130 = v60;
        *v60 = 136315138;
        v61 = sub_1C6FB6304();
        v62 = 0;
        v63 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          if (v61 == v62)
          {
            v86 = MEMORY[0x1CCA5D090](v63, MEMORY[0x1E69E6158]);
            v88 = v87;

            v89 = sub_1C6F765A4(v86, v88, v146);

            *(v130 + 1) = v89;
            _os_log_impl(&dword_1C6F5C000, v132, v131, "Sorted trips = %s", v130, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v129);
            OUTLINED_FUNCTION_23_3();
            OUTLINED_FUNCTION_109();

            goto LABEL_59;
          }

          if ((v56 & 0xC000000000000001) != 0)
          {
            v64 = MEMORY[0x1CCA5DDD0](v62, v56);
          }

          else
          {
            if (v62 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_99;
            }

            v64 = *(v56 + 8 * v62 + 32);
          }

          v65 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            break;
          }

          v66 = v64;
          v67 = [v66 uuid];
          if (v67)
          {
            v68 = v67;
            v69 = sub_1C755068C();
            v128 = v70;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v63 = v74;
            }

            v72 = *(v63 + 16);
            v71 = *(v63 + 24);
            if (v72 >= v71 >> 1)
            {
              OUTLINED_FUNCTION_15(v71);
              sub_1C6FB1814();
              v63 = v75;
            }

            *(v63 + 16) = v72 + 1;
            v73 = v63 + 16 * v72;
            *(v73 + 32) = v69;
            *(v73 + 40) = v128;
            v62 = v65;
          }

          else
          {

            ++v62;
          }
        }

LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
      }

      else
      {

LABEL_59:
        if (!sub_1C6FB6304())
        {
          goto LABEL_63;
        }

        sub_1C6FB6330(0, (v56 & 0xC000000000000001) == 0, v56);
        if ((v56 & 0xC000000000000001) == 0)
        {
          v90 = *(v56 + 32);
LABEL_62:
          v91 = v90;

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70);
          v56 = swift_allocObject();
          *(v56 + 16) = xmmword_1C7565670;
          *(v56 + 32) = v91;
LABEL_63:
          v92 = sub_1C6FB6304();
          v93 = 0;
          v94 = MEMORY[0x1E69E7CC0];
          while (v92 != v93)
          {
            if ((v56 & 0xC000000000000001) != 0)
            {
              v95 = MEMORY[0x1CCA5DDD0](v93, v56);
            }

            else
            {
              if (v93 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_96;
              }

              v95 = *(v56 + 8 * v93 + 32);
            }

            v96 = v93 + 1;
            if (__OFADD__(v93, 1))
            {
              __break(1u);
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v97 = v95;
            v98 = [v97 v59[434]];
            if (v98)
            {
              v99 = v98;
              v100 = sub_1C755068C();
              v133 = v101;

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                OUTLINED_FUNCTION_24_0();
                sub_1C6FB1814();
                v94 = v105;
              }

              v103 = v94[2];
              v102 = v94[3];
              if (v103 >= v102 >> 1)
              {
                OUTLINED_FUNCTION_15(v102);
                sub_1C6FB1814();
                v94 = v106;
              }

              v94[2] = v103 + 1;
              v104 = &v94[2 * v103];
              v104[4] = v100;
              v104[5] = v133;
              v93 = v96;
            }

            else
            {

              ++v93;
            }
          }

          v107 = 0;
          v146[0] = MEMORY[0x1E69E7CD0];
          v108 = v94[2];
          v109 = v94 + 5;
          v56 = v137;
          v59 = MEMORY[0x1E69E7CC0];
          while (v108 != v107)
          {
            if (v107 >= v94[2])
            {
              goto LABEL_97;
            }

            ++v107;
            v111 = *(v109 - 1);
            v110 = *v109;
            sub_1C75504FC();
            v112 = sub_1C6FE3768(v111, v110, v137);
            if (!v112)
            {
              v112 = v59;
            }

            sub_1C73978C4(v112);

            v109 += 2;
          }

          v113 = *(v146[0] + 16);
          sub_1C75504FC();
          v114 = sub_1C754FEEC();
          v115 = sub_1C75511BC();

          if (os_log_type_enabled(v114, v115))
          {
            v116 = OUTLINED_FUNCTION_23_1();
            v117 = OUTLINED_FUNCTION_20_1();
            v146[0] = v117;
            *v116 = 134218242;
            *(v116 + 4) = v113;
            *(v116 + 12) = 2080;
            v118 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
            v120 = v119;

            v121 = sub_1C6F765A4(v118, v120, v146);

            *(v116 + 14) = v121;
            _os_log_impl(&dword_1C6F5C000, v114, v115, "There are %ld selected assets from selected trips = %s", v116, 0x16u);
            __swift_destroy_boxed_opaque_existential_1(v117);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();
          }

          else
          {
          }

          v11 = v140;
          v15 = v142;
          if (v113 >= 3)
          {

            OUTLINED_FUNCTION_10_3(v144);
            sub_1C754F1AC();
            v29 = v139;
            goto LABEL_93;
          }

          v41 = sub_1C754FEEC();
          v122 = sub_1C755119C();
          if (OUTLINED_FUNCTION_128(v122))
          {
            v123 = OUTLINED_FUNCTION_20_1();
            v124 = OUTLINED_FUNCTION_20_1();
            v146[0] = v124;
            *v123 = 136315650;
            v125 = 0xE500000000000000;
            v126 = 1953718636;
            if (v138 == 1)
            {
              v126 = 0x7473726966;
            }

            else
            {
              v125 = 0xE400000000000000;
            }

            v29 = v139;
            v127 = sub_1C6F765A4(v126, v125, v146);

            *(v123 + 4) = v127;
            *(v123 + 12) = 2048;
            *(v123 + 14) = v113;
            *(v123 + 22) = 2048;
            *(v123 + 24) = v134;
            _os_log_impl(&dword_1C6F5C000, v41, v122, "No assets after the sort order %s (%ld) is applied on %ld consolidated assets, fallback to using the consolidated assets", v123, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v124);
            OUTLINED_FUNCTION_109();
            OUTLINED_FUNCTION_109();

            v11 = v140;
            goto LABEL_30;
          }

LABEL_29:
          v29 = v139;
LABEL_30:
          OUTLINED_FUNCTION_10_3(v144);
          sub_1C75504FC();
          v15 = v142;
          OUTLINED_FUNCTION_18_35();
          goto LABEL_93;
        }
      }

      v90 = MEMORY[0x1CCA5DDD0](0, v56);
      goto LABEL_62;
    }

    v51 = v135;
  }

  sub_1C75504FC();
  v76 = sub_1C754FEEC();
  v77 = sub_1C755119C();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = OUTLINED_FUNCTION_23_1();
    v146[0] = swift_slowAlloc();
    OUTLINED_FUNCTION_25_28(4.8151e-34);
    v80 = 1953718636;
    if (v37)
    {
      v80 = v19;
    }

    else
    {
      v79 = 0xE400000000000000;
    }

    v81 = sub_1C6F765A4(v80, v79, v146);

    *(v78 + 4) = v81;
    *(v78 + 12) = 2080;
    v82 = sub_1C7550F9C();
    v84 = v83;

    v85 = sub_1C6F765A4(v82, v84, v146);

    *(v78 + 14) = v85;
    _os_log_impl(&dword_1C6F5C000, v76, v77, "No trips to select for the sort order %s using trip uuids = %s, fallback to returning the consolidated assets", v78, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  OUTLINED_FUNCTION_10_3(v144);
  sub_1C75504FC();
  v15 = v142;
  OUTLINED_FUNCTION_18_35();
  v11 = v140;
LABEL_93:
  (*(v11 + 8))(v15, v29);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C72638C8(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    v5 = sub_1C7551DBC();

    if ((v5 & 1) == 0)
    {
      v6 = 1 << *(a3 + 32);
      v7 = -1;
      if (v6 < 64)
      {
        v7 = ~(-1 << v6);
      }

      v8 = v7 & *(a3 + 64);
      v9 = (v6 + 63) >> 6;
      sub_1C75504FC();
      v10 = 0;
      v11 = MEMORY[0x1E69E7CC0];
      while (v8)
      {
LABEL_11:
        v13 = *(*(a3 + 56) + ((v10 << 9) | (8 * __clz(__rbit64(v8)))));
        v14 = *(v13 + 16);
        v15 = *(v11 + 16);
        if (__OFADD__(v15, v14))
        {
          goto LABEL_26;
        }

        sub_1C75504FC();
        if (!swift_isUniquelyReferenced_nonNull_native() || v15 + v14 > *(v11 + 24) >> 1)
        {
          sub_1C6FB1814();
          v11 = v16;
        }

        v8 &= v8 - 1;
        if (*(v13 + 16))
        {
          if ((*(v11 + 24) >> 1) - *(v11 + 16) < v14)
          {
            goto LABEL_27;
          }

          swift_arrayInitWithCopy();

          if (v14)
          {
            v17 = *(v11 + 16);
            v18 = __OFADD__(v17, v14);
            v19 = v17 + v14;
            if (v18)
            {
              goto LABEL_28;
            }

            *(v11 + 16) = v19;
          }
        }

        else
        {

          if (v14)
          {
            __break(1u);
            goto LABEL_22;
          }
        }
      }

      while (1)
      {
        v12 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v12 >= v9)
        {

          v20 = sub_1C706D154(v11);
          sub_1C75504FC();
          sub_1C7238810(v20, a2);

          return;
        }

        v8 = *(a3 + 64 + 8 * v12);
        ++v10;
        if (v8)
        {
          v10 = v12;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }
  }

  else
  {
LABEL_22:
  }
}

void QueryGenerator.applySortOrderToAssetUUIDsLeveragingMoments(_:with:eventRecorder:)()
{
  OUTLINED_FUNCTION_33();
  v135 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_10_56();
  v128 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v127 = v12 - v11;
  v13 = sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v134 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14_0();
  v18 = v17 - v16;
  v19 = *v5;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_29_28();
  v132 = *(v7 + 16);
  v133 = v19;
  if (!v19)
  {

LABEL_7:
    v26 = sub_1C754FEEC();
    v27 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_7_0(v27))
    {
      v28 = v3;
      v29 = v18;
      v30 = v1;
      v31 = OUTLINED_FUNCTION_23_1();
      v32 = OUTLINED_FUNCTION_20_1();
      v136[0] = v32;
      *v31 = 136315394;
      v33 = 0xE500000000000000;
      v34 = 1953718636;
      if (v133 == 1)
      {
        v34 = v30;
      }

      else
      {
        v33 = 0xE400000000000000;
      }

      if (v133)
      {
        v35 = v34;
      }

      else
      {
        v35 = 1701736302;
      }

      if (v133)
      {
        v36 = v33;
      }

      else
      {
        v36 = 0xE400000000000000;
      }

      v37 = sub_1C6F765A4(v35, v36, v136);

      *(v31 + 4) = v37;
      *(v31 + 12) = 2048;
      *(v31 + 14) = v132;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v38, v39, v40, v41, v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();

      v18 = v29;
      v3 = v28;
    }

    else
    {
    }

    OUTLINED_FUNCTION_10_3(v3);
    sub_1C75504FC();
    OUTLINED_FUNCTION_17_50();
    v43 = 0;
    goto LABEL_77;
  }

  v20 = OUTLINED_FUNCTION_16_42();

  if ((v20 & 1) != 0 || v132 < 3)
  {
    goto LABEL_7;
  }

  v122 = v3;
  sub_1C7264758(v7);
  v125 = sub_1C75504FC();
  v123 = sub_1C7080ED4(v125);
  v21 = v135 + *(type metadata accessor for QueryGenerator() + 24);
  v22 = *(v21 + 8);
  v23 = *v21;

  v24 = [v23 librarySpecificFetchOptions];
  [v24 setSharingFilter_];

  [v24 setFetchLimit_];
  if (v19 == 2)
  {
    v25 = sub_1C7551DBC();
  }

  else
  {
    v25 = 1;
  }

  v137 = 0;
  type metadata accessor for CollectionFetcherOptions();
  swift_initStackObject();
  v24;
  v44 = CollectionFetcherOptions.init(photoLibrary:fetchOptions:fetchContext:sortAscending:)(v23, v24, &v137, v25 & 1);
  v47 = sub_1C7082250(v44, v123, v45, v46);
  v48 = [v47 fetchedObjects];

  if (!v48)
  {

    sub_1C75504FC();
    v77 = sub_1C754FEEC();
    v78 = sub_1C755119C();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = OUTLINED_FUNCTION_41_0();
      v80 = OUTLINED_FUNCTION_20_1();
      v136[0] = v80;
      *v79 = 136315138;
      v81 = sub_1C7550F9C();
      v82 = v18;
      v84 = v83;

      v85 = sub_1C6F765A4(v81, v84, v136);
      v18 = v82;

      *(v79 + 4) = v85;
      OUTLINED_FUNCTION_17();
      _os_log_impl(v86, v87, v88, v89, v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_23_3();

      OUTLINED_FUNCTION_19_46();
    }

    else
    {

      OUTLINED_FUNCTION_19_46();
    }

    OUTLINED_FUNCTION_10_3(v122);
    OUTLINED_FUNCTION_17_50();
    v43 = 0;
    goto LABEL_77;
  }

  sub_1C7265F94();
  isUniquelyReferenced_nonNull_native = sub_1C7550B5C();

  v50 = sub_1C6FB6304();
  if (v50 < 0)
  {
    goto LABEL_80;
  }

  v51 = v50;
  v118 = v18;
  v121 = v7;
  if (!v50)
  {
    v126 = 0;
LABEL_49:

    v91 = sub_1C75504FC();
    v136[0] = sub_1C71CD90C(v91);
    sub_1C75504FC();
    sub_1C70401E8();

    v18 = v118;
    v92 = v122;
    if (v133)
    {
      OUTLINED_FUNCTION_22_41();
      if (v133 == 1)
      {
        static QueryGenerator.sortOrderFirstDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)();
      }

      else
      {
        static QueryGenerator.sortOrderLastDatesSelectionContext(with:assetUUIDsByDateString:minimumNumberOfAssets:)();
      }

      v93 = v136[1];
      if (v136[0])
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C716A74C(v136[0]);
        v94 = *(v136[0] + 16);
        sub_1C75504FC();
        v95 = sub_1C754FEEC();
        v96 = sub_1C75511BC();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = OUTLINED_FUNCTION_23_1();
          v98 = OUTLINED_FUNCTION_20_1();
          v136[0] = v98;
          *v97 = 134218242;
          *(v97 + 4) = v94;
          *(v97 + 12) = 2080;
          v99 = MEMORY[0x1CCA5D090](v93, MEMORY[0x1E69E6158]);
          v101 = v100;

          v102 = sub_1C6F765A4(v99, v101, v136);

          *(v97 + 14) = v102;
          _os_log_impl(&dword_1C6F5C000, v95, v96, "There are %ld selected assets from selected moment date strings = %s", v97, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v98);
          v18 = v118;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
        }

        v92 = v122;
        if (v94 >= 3)
        {
          OUTLINED_FUNCTION_33_24();
          OUTLINED_FUNCTION_19_46();
          __swift_project_boxed_opaque_existential_1(v122, v122[3]);
          sub_1C754F1AC();
          goto LABEL_76;
        }

        v111 = sub_1C754FEEC();
        v112 = sub_1C755119C();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = OUTLINED_FUNCTION_20_1();
          v114 = OUTLINED_FUNCTION_20_1();
          v136[0] = v114;
          *v113 = 136315650;
          if (v133 == 2)
          {
            v115 = 1953718636;
          }

          else
          {
            v115 = 0x7473726966;
          }

          if (v133 == 2)
          {
            v116 = 0xE400000000000000;
          }

          else
          {
            v116 = 0xE500000000000000;
          }

          v117 = sub_1C6F765A4(v115, v116, v136);

          *(v113 + 4) = v117;
          v18 = v118;
          *(v113 + 12) = 2048;
          *(v113 + 14) = v94;
          *(v113 + 22) = 2048;
          *(v113 + 24) = v132;
          _os_log_impl(&dword_1C6F5C000, v111, v112, "No assets after the sort order %s (%ld) is applied on %ld consolidated assets, fallback to using the consolidated assets", v113, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v114);
          v92 = v122;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        OUTLINED_FUNCTION_33_24();
        OUTLINED_FUNCTION_19_46();
LABEL_74:
        OUTLINED_FUNCTION_10_3(v92);
        sub_1C75504FC();
        OUTLINED_FUNCTION_17_50();
LABEL_76:
        v43 = v126;
LABEL_77:
        (*(v134 + 8))(v18, v13);
        sub_1C6F6E5B4(v43);
        OUTLINED_FUNCTION_25_0();
        return;
      }
    }

    else
    {
    }

    sub_1C75504FC();
    v103 = sub_1C754FEEC();
    v104 = sub_1C755119C();
    if (OUTLINED_FUNCTION_7_0(v104))
    {
      v105 = OUTLINED_FUNCTION_41_0();
      *v105 = 134217984;
      *(v105 + 4) = *(v7 + 16);

      OUTLINED_FUNCTION_17();
      _os_log_impl(v106, v107, v108, v109, v110, 0xCu);
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_33_24();
      OUTLINED_FUNCTION_19_46();
    }

    else
    {
      OUTLINED_FUNCTION_33_24();
      OUTLINED_FUNCTION_19_46();
    }

    goto LABEL_74;
  }

  v126 = 0;
  v52 = 0;
  v129 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v120 = (v9 + 8);
  v53 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v54 = MEMORY[0x1E69E7CC8];
  v55 = v125;
  v119 = v13;
  v130 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v131 = v50;
  while (1)
  {
    if (v53)
    {
      v56 = MEMORY[0x1CCA5DDD0](v52, isUniquelyReferenced_nonNull_native);
      goto LABEL_29;
    }

    if (v52 >= *(v129 + 16))
    {
      break;
    }

    v56 = *(isUniquelyReferenced_nonNull_native + 8 * v52 + 32);
LABEL_29:
    v57 = v56;
    v58 = sub_1C6FCA214(v57);
    if (v59)
    {
      if (*(v55 + 16))
      {
        v60 = isUniquelyReferenced_nonNull_native;
        v61 = sub_1C6F78124(v58, v59);
        v63 = v62;

        if ((v63 & 1) != 0 && *(*(*(v55 + 56) + 8 * v61) + 16))
        {
          v124 = *(*(v55 + 56) + 8 * v61);
          sub_1C75504FC();
          v64 = static StoryGenerationUtilities.dateFormatter.getter();
          v65 = [v57 localStartDate];
          sub_1C754DF2C();

          v66 = sub_1C754DECC();
          (*v120)(v127, v128);
          v67 = [v64 stringFromDate_];

          v68 = sub_1C755068C();
          v70 = v69;

          sub_1C6F6E5B4(v126);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v136[0] = v54;
          v71 = sub_1C6F78124(v68, v70);
          if (__OFADD__(*(v54 + 16), (v72 & 1) == 0))
          {
            goto LABEL_79;
          }

          v73 = v71;
          v74 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280);
          if (sub_1C7551A2C())
          {
            v75 = sub_1C6F78124(v68, v70);
            if ((v74 & 1) != (v76 & 1))
            {
              goto LABEL_81;
            }

            v73 = v75;
          }

          isUniquelyReferenced_nonNull_native = v60;
          v51 = v131;
          if (v74)
          {
          }

          else
          {
            sub_1C6FCABE4(v73);
          }

          v13 = v119;
          v54 = v136[0];
          sub_1C739796C(v124);
          v126 = sub_1C719D928;
          v7 = v121;
          v55 = v125;
        }

        else
        {
          isUniquelyReferenced_nonNull_native = v60;
          v51 = v131;
        }

        v53 = v130;
      }

      else
      {
      }
    }

    ++v52;

    if (v51 == v52)
    {
      goto LABEL_49;
    }
  }

  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
}