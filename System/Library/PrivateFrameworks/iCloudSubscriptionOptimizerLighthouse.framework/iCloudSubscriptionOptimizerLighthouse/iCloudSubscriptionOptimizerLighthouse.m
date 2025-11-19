uint64_t EvaluationDataSearch.notificationsFromNotifStream.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t EvaluationDataSearch.notificationsFromNotifStream.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t EvaluationDataSearch.notificationsFromSubStream.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

uint64_t EvaluationDataSearch.notificationsFromSubStream.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  *(v1 + 24) = a1;
}

void *EvaluationDataSearch.__allocating_init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:offsetTimeInterval:withBiomeManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D84F90];
  v12[2] = MEMORY[0x277D84F90];
  v12[3] = v13;
  v12[4] = a1;
  v12[5] = a2;
  v12[6] = a3;
  v12[7] = a4;
  v12[8] = a5;
  sub_275B954F8(a6, (v12 + 9));
  return v12;
}

void *EvaluationDataSearch.init(numOffsets:notifStartDaysUntilNow:notifEndDaysUntilNow:labelDurationInDays:offsetTimeInterval:withBiomeManager:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v7 = MEMORY[0x277D84F90];
  v6[2] = MEMORY[0x277D84F90];
  v6[3] = v7;
  v6[4] = a1;
  v6[5] = a2;
  v6[6] = a3;
  v6[7] = a4;
  v6[8] = a5;
  sub_275B954F8(a6, (v6 + 9));
  return v6;
}

uint64_t sub_275B954F8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

Swift::Bool __swiftcall EvaluationDataSearch.hasiCloudNotifsFromNotifStream()()
{
  v1 = v0;
  sub_275B99974();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_275B99964();
  swift_beginAccess();
  v6 = v1[2];
  v1[2] = v5;

  return *(v1[2] + 16) != 0;
}

Swift::Bool __swiftcall EvaluationDataSearch.hasiCloudNotifsFromSubStream()()
{
  v1 = v0;
  sub_275B99974();
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[7];
  v5 = sub_275B99954();
  swift_beginAccess();
  v6 = v1[3];
  v1[3] = v5;

  return *(v1[3] + 16) != 0;
}

void *EvaluationDataSearch.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  return v0;
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

uint64_t EvaluationDataSearch.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t sub_275B9573C()
{
  sub_275B99AD4();
  MEMORY[0x277C8A200](0);
  return sub_275B99AF4();
}

uint64_t sub_275B957A8()
{
  sub_275B99AD4();
  MEMORY[0x277C8A200](0);
  return sub_275B99AF4();
}

uint64_t sub_275B957F8()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35C18);
  __swift_project_value_buffer(v0, qword_280A35C18);
  type metadata accessor for RecipeParser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C60, &qword_275B99FD8);
  return sub_275B998C4();
}

void *RecipeParser.__allocating_init(recipePath:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = a2;
  v4[4] = 0;
  v4[2] = a1;
  RecipeParser.parsing()();
  if (v5)
  {
  }

  return v4;
}

void *RecipeParser.init(recipePath:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  RecipeParser.parsing()();
  if (v3)
  {
  }

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> RecipeParser.parsing()()
{
  v37[4] = *MEMORY[0x277D85DE8];
  v34 = sub_275B99804();
  v1 = *(v34 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20]();
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C30, "D\t") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v32 - v6;
  v8 = sub_275B99844();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v0 + 16);
  v14 = *(v0 + 24);
  v33 = v0;
  (*(v9 + 56))(v7, 1, 1, v8);
  (*(v1 + 104))(v4, *MEMORY[0x277CC91D8], v34);

  sub_275B99824();
  v15 = v35;
  v16 = sub_275B99854();
  if (v15)
  {
    (*(v9 + 8))(v12, v8);
    v18 = v15;
LABEL_3:
    if (qword_280A35C00 != -1)
    {
      swift_once();
    }

    v19 = sub_275B998B4();
    __swift_project_value_buffer(v19, qword_280A35C18);
    v37[0] = 0;
    v37[1] = 0xE000000000000000;
    sub_275B99A54();
    MEMORY[0x277C8A120](0xD00000000000001BLL, 0x8000000275B9A200);
    MEMORY[0x277C8A120](v13, v14);
    MEMORY[0x277C8A120](0x7265206874697720, 0xED0000203A726F72);
    v36 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C38, &qword_275B9A040);
    sub_275B99A64();
    MEMORY[0x277C8A120](46, 0xE100000000000000);
    sub_275B998A4();

    sub_275B95E54();
    swift_allocError();
    swift_willThrow();
    MEMORY[0x277C8A3D0](v18);
    goto LABEL_10;
  }

  v20 = v16;
  v21 = v17;
  v22 = v33;
  (*(v9 + 8))(v12, v8);
  v23 = objc_opt_self();
  v24 = sub_275B99864();
  v37[0] = 0;
  v25 = [v23 JSONObjectWithData:v24 options:0 error:v37];

  if (!v25)
  {
    v31 = v37[0];
    v18 = sub_275B997E4();

    swift_willThrow();
    sub_275B96C4C(v20, v21);
    goto LABEL_3;
  }

  v26 = v37[0];
  sub_275B99A44();
  sub_275B96C4C(v20, v21);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C48, "D\t");
  v27 = swift_dynamicCast();
  v28 = v36;
  if (!v27)
  {
    v28 = 0;
  }

  v29 = *(v22 + 32);
  *(v22 + 32) = v28;

LABEL_10:
  v30 = *MEMORY[0x277D85DE8];
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_275B95E54()
{
  result = qword_280A35C40;
  if (!qword_280A35C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C40);
  }

  return result;
}

uint64_t sub_275B95EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    v8 = sub_275B96E0C(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v16;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v11 = sub_275B998B4();
        __swift_project_value_buffer(v11, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        v12 = sub_275B99A74();
        MEMORY[0x277C8A120](v12);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();
        goto LABEL_13;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v13 = sub_275B998B4();
  __swift_project_value_buffer(v13, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  v14 = sub_275B99A74();
  MEMORY[0x277C8A120](v14);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();
LABEL_13:

  return a3;
}

uint64_t sub_275B9617C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 32);
  if (v9 && *(v9 + 16))
  {

    v10 = sub_275B96E0C(a1, a2);
    if (v11)
    {
      v12 = *(*(v9 + 56) + 8 * v10);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v16;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v13 = sub_275B998B4();
        __swift_project_value_buffer(v13, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        MEMORY[0x277C8A120]();
        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();

        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v14 = sub_275B998B4();
  __swift_project_value_buffer(v14, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  MEMORY[0x277C8A120](a3, a4);
  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();

  return a3;
}

uint64_t sub_275B96430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    v8 = sub_275B96E0C(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C58, &qword_275B99FD0);
      if (swift_dynamicCast())
      {
        a3 = v16;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v11 = sub_275B998B4();
        __swift_project_value_buffer(v11, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        v12 = MEMORY[0x277C8A140](v16, MEMORY[0x277D83B88]);
        MEMORY[0x277C8A120](v12);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();

        return a3;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v13 = sub_275B998B4();
  __swift_project_value_buffer(v13, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  v14 = MEMORY[0x277C8A140](a3, MEMORY[0x277D83B88]);
  MEMORY[0x277C8A120](v14);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();

  return a3;
}

uint64_t sub_275B9670C(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 32);
  if (v7 && *(v7 + 16))
  {

    v8 = sub_275B96E0C(a1, a2);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        a3 = v18;
        if (qword_280A35C00 != -1)
        {
          swift_once();
        }

        v11 = sub_275B998B4();
        __swift_project_value_buffer(v11, qword_280A35C18);
        sub_275B99A54();

        MEMORY[0x277C8A120](a1, a2);
        MEMORY[0x277C8A120](0x692065756C617620, 0xEB00000000203A73);
        if (v18)
        {
          v12 = 1702195828;
        }

        else
        {
          v12 = 0x65736C6166;
        }

        if (v18)
        {
          v13 = 0xE400000000000000;
        }

        else
        {
          v13 = 0xE500000000000000;
        }

        MEMORY[0x277C8A120](v12, v13);

        MEMORY[0x277C8A120](46, 0xE100000000000000);
        sub_275B99894();
        swift_unknownObjectRelease();
        goto LABEL_25;
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  if (qword_280A35C00 != -1)
  {
    swift_once();
  }

  v14 = sub_275B998B4();
  __swift_project_value_buffer(v14, qword_280A35C18);
  sub_275B99A54();

  MEMORY[0x277C8A120](a1, a2);
  MEMORY[0x277C8A120](8250, 0xE200000000000000);
  if (a3)
  {
    v15 = 1702195828;
  }

  else
  {
    v15 = 0x65736C6166;
  }

  if (a3)
  {
    v16 = 0xE400000000000000;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  MEMORY[0x277C8A120](v15, v16);

  MEMORY[0x277C8A120](46, 0xE100000000000000);
  sub_275B99894();
LABEL_25:

  return a3 & 1;
}

Swift::Int64 __swiftcall RecipeParser.getOffsetTimeInterval()()
{
  v0 = *sub_275B99904();
  v1 = sub_275B998E4();

  return sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v1);
}

Swift::String __swiftcall RecipeParser.getLabelingSource()()
{
  v0 = sub_275B999A4();
  v1 = *v0;
  v2 = v0[1];

  v3 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v1, v2);
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t RecipeParser.getPercentileToChooseOffset()()
{
  v0 = *sub_275B99984();

  v1 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v0);

  return v1;
}

uint64_t RecipeParser.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t RecipeParser.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_275B96C4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t getEnumTagSinglePayload for PluginAssetError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PluginAssetError(_WORD *result, int a2, int a3)
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

unint64_t sub_275B96DB8()
{
  result = qword_280A35C50;
  if (!qword_280A35C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C50);
  }

  return result;
}

unint64_t sub_275B96E0C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_275B99AD4();
  sub_275B999F4();
  v6 = sub_275B99AF4();

  return sub_275B96E84(a1, a2, v6);
}

unint64_t sub_275B96E84(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_275B99A84())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_275B96FBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_275B97004(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_275B97050()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35C68);
  __swift_project_value_buffer(v0, qword_280A35C68);
  type metadata accessor for ShadowModelProvider();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C98, &qword_275B9A080);
  return sub_275B998C4();
}

uint64_t ShadowModelProvider.modelPaths.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

void *ShadowModelProvider.__allocating_init(modelPaths:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *ShadowModelProvider.init(modelPaths:withFileManager:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *ShadowModelProvider.getModels()()
{
  v73[2] = *MEMORY[0x277D85DE8];
  v66 = *(sub_275B99924() - 8);
  v1 = *(v66 + 64);
  v2 = (MEMORY[0x28223BE20])();
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v69 = &v52 - v5;
  v65 = sub_275B99804();
  v6 = *(v65 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_275B99844();
  v9 = *(v70 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v70);
  v63 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v68 = &v52 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v52 - v15;
  v18 = v0[2];
  v17 = v0[3];
  v19 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v19 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v19)
  {
    v61 = v4;
    sub_275B99814();
    if (qword_280A35C08 != -1)
    {
      swift_once();
    }

    v20 = sub_275B998B4();
    v21 = __swift_project_value_buffer(v20, qword_280A35C68);
    v73[0] = 0;
    v73[1] = 0xE000000000000000;
    sub_275B99A54();

    v73[0] = 0xD000000000000010;
    v73[1] = 0x8000000275B9A2A0;
    v67 = v16;
    v22 = sub_275B997F4();
    MEMORY[0x277C8A120](v22);

    MEMORY[0x277C8A120](46, 0xE100000000000000);
    sub_275B99894();

    v23 = v0[4];
    v24 = sub_275B999E4();
    v73[0] = 0;
    v25 = [v23 contentsOfDirectoryAtPath:v24 error:v73];

    v26 = v73[0];
    if (v25)
    {
      v27 = v6;
      v62 = v21;
      v28 = sub_275B99A14();
      v29 = v26;

      v30 = *(v28 + 16);
      v54 = v9;
      v53 = v28;
      if (v30)
      {
        v60 = *MEMORY[0x277CC91D8];
        v58 = (v27 + 8);
        v59 = (v27 + 104);
        v56 = (v9 + 8);
        v57 = (v9 + 16);
        v31 = sub_275B979B4();
        v32 = (v28 + 40);
        v33 = MEMORY[0x277D84F90];
        v55 = v31;
        do
        {
          v35 = *(v32 - 1);
          v34 = *v32;
          v73[0] = v35;
          v73[1] = v34;
          v71 = 0x6C65646F6D6C6D2ELL;
          v72 = 0xE900000000000063;

          if (sub_275B99A34())
          {
            v73[0] = v35;
            v73[1] = v34;
            v37 = v64;
            v36 = v65;
            (*v59)(v64, v60, v65);
            v38 = v33;
            v39 = v68;
            sub_275B99834();
            (*v58)(v37, v36);
            (*v57)(v63, v39, v70);
            v40 = v69;
            sub_275B99914();
            v73[0] = 0;
            v73[1] = 0xE000000000000000;

            sub_275B99A54();

            strcpy(v73, "Load model ");
            HIDWORD(v73[1]) = -352321536;
            MEMORY[0x277C8A120](v35, v34);

            MEMORY[0x277C8A120](8250, 0xE200000000000000);
            sub_275B97A08();
            v33 = v38;
            v41 = sub_275B99A74();
            MEMORY[0x277C8A120](v41);

            MEMORY[0x277C8A120](46, 0xE100000000000000);
            sub_275B99894();

            v42 = v61;
            sub_275B97A60(v40, v61);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_275B97B2C(0, v38[2] + 1, 1, v38);
            }

            v44 = v33[2];
            v43 = v33[3];
            if (v44 >= v43 >> 1)
            {
              v33 = sub_275B97B2C(v43 > 1, v44 + 1, 1, v33);
            }

            sub_275B97D04(v69);
            (*v56)(v68, v70);
            v33[2] = v44 + 1;
            sub_275B97D60(v42, v33 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v44);
          }

          else
          {
          }

          v32 += 2;
          --v30;
        }

        while (v30);
      }

      else
      {
        v33 = MEMORY[0x277D84F90];
      }

      v73[0] = 0;
      v73[1] = 0xE000000000000000;
      sub_275B99A54();

      strcpy(v73, "Found files: ");
      HIWORD(v73[1]) = -4864;
      v47 = MEMORY[0x277C8A140](v53, MEMORY[0x277D837D0]);
      v49 = v48;

      MEMORY[0x277C8A120](v47, v49);

      MEMORY[0x277C8A120](46, 0xE100000000000000);
      sub_275B99894();

      v9 = v54;
    }

    else
    {
      v45 = v73[0];
      v46 = sub_275B997E4();

      swift_willThrow();
      v73[0] = 0;
      v73[1] = 0xE000000000000000;
      sub_275B99A54();
      MEMORY[0x277C8A120](0xD00000000000001BLL, 0x8000000275B9A2C0);
      MEMORY[0x277C8A120](v18, v17);
      MEMORY[0x277C8A120](0x7265206874697720, 0xED0000203A726F72);
      v71 = v46;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C38, &qword_275B9A040);
      sub_275B99A64();
      sub_275B998A4();

      MEMORY[0x277C8A3D0](v46);
      v33 = MEMORY[0x277D84F90];
    }

    (*(v9 + 8))(v67, v70);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v50 = *MEMORY[0x277D85DE8];
  return v33;
}

unint64_t sub_275B979B4()
{
  result = qword_280A35C80;
  if (!qword_280A35C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C80);
  }

  return result;
}

unint64_t sub_275B97A08()
{
  result = qword_280A35C88;
  if (!qword_280A35C88)
  {
    sub_275B99844();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280A35C88);
  }

  return result;
}

uint64_t sub_275B97A60(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B99924();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModelProvider.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t ShadowModelProvider.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

size_t sub_275B97B2C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35C90, &qword_275B9A078);
  v10 = *(sub_275B99924() - 8);
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
  v15 = *(sub_275B99924() - 8);
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

uint64_t sub_275B97D04(uint64_t a1)
{
  v2 = sub_275B99924();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_275B97D60(uint64_t a1, uint64_t a2)
{
  v4 = sub_275B99924();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ShadowModeMain.recipePath.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);
  v2 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath + 8);

  return v1;
}

uint64_t ShadowModeMain.modelPaths.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  v2 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths + 8);

  return v1;
}

uint64_t sub_275B97EA0()
{
  v0 = sub_275B998B4();
  __swift_allocate_value_buffer(v0, qword_280A35CA0);
  __swift_project_value_buffer(v0, qword_280A35CA0);
  type metadata accessor for ShadowModeMain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280A35D28, &unk_275B9A0F0);
  return sub_275B998C4();
}

uint64_t ShadowModeMain.__allocating_init(recipePath:modelPaths:trialSet:withBiomeManager:withFileManager:withSkipPublishMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, char a8)
{
  v9 = v8;
  v55 = a6;
  v16 = *(v9 + 48);
  v17 = *(v9 + 52);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);
  *v19 = a1;
  v19[1] = a2;
  v20 = (v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  *v20 = a3;
  v20[1] = a4;
  v21 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet;
  v53 = a5;
  sub_275B994A4(a5, v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v22 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager;
  *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager) = a7;
  *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_skipPublishMetrics) = a8;
  type metadata accessor for RecipeParser();
  inited = swift_initStackObject();
  inited[3] = a2;
  inited[4] = 0;
  inited[2] = a1;

  v24 = a7;
  RecipeParser.parsing()();
  if (v25)
  {

    swift_setDeallocating();
    v26 = inited[4];

    __swift_destroy_boxed_opaque_existential_1(v55);
    v27 = MEMORY[0x277D7F888];
    sub_275B9950C(v53, MEMORY[0x277D7F888]);
    sub_275B9950C(v18 + v21, v27);
    v28 = v19[1];

    v29 = v20[1];

    v30 = *(*v18 + 48);
    v31 = *(*v18 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v32 = v24;
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets) = sub_275B95EA8(0x657366664F6D756ELL, 0xEA00000000007374, 23);
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow) = sub_275B95EA8(0xD000000000000016, 0x8000000275B9A180, 10);
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow) = sub_275B95EA8(0xD000000000000014, 0x8000000275B9A1A0, 3);
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays) = sub_275B95EA8(0xD000000000000013, 0x8000000275B9A1C0, 3);
    v33 = *sub_275B99904();
    v34 = sub_275B998E4();
    sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v34);
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval) = sub_275B998F4();
    v35 = *sub_275B99984();

    v36 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v35);

    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles) = v36;
    v37 = sub_275B999A4();
    v38 = *v37;
    v39 = v37[1];

    v40 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v38, v39);
    v42 = v41;

    v43 = (v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
    *v43 = v40;
    v43[1] = v42;
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_minsUntilOpen) = sub_275B95EA8(0x69746E55736E696DLL, 0xED00006E65704F6CLL, 4320);
    v44 = sub_275B9670C(0x746144796D6D7564, 0xE900000000000061, 0);
    *(v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_dummyData) = v44 & 1;
    if (v44)
    {
      v45 = sub_275B99944();
      v46 = swift_allocObject();
      v54[3] = v45;
      v54[4] = MEMORY[0x277D7F8B0];

      swift_setDeallocating();
      v47 = inited[4];

      v54[0] = v46;
      __swift_destroy_boxed_opaque_existential_1(v55);
      sub_275B9950C(v53, MEMORY[0x277D7F888]);
      v48 = v54;
      v49 = v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
    }

    else
    {
      sub_275B9950C(v53, MEMORY[0x277D7F888]);

      swift_setDeallocating();
      v50 = inited[4];

      v49 = v18 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
      v48 = v55;
    }

    sub_275B954F8(v48, v49);
  }

  return v18;
}

uint64_t ShadowModeMain.init(recipePath:modelPaths:trialSet:withBiomeManager:withFileManager:withSkipPublishMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, char a8)
{
  v9 = v8;
  v48 = a6;
  v15 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath);
  *v15 = a1;
  v15[1] = a2;
  v16 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  *v16 = a3;
  v16[1] = a4;
  v17 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet;
  sub_275B994A4(a5, v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v46 = OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager;
  *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager) = a7;
  *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_skipPublishMetrics) = a8;
  type metadata accessor for RecipeParser();
  inited = swift_initStackObject();
  inited[3] = a2;
  inited[4] = 0;
  inited[2] = a1;

  v19 = a7;
  RecipeParser.parsing()();
  if (v20)
  {

    swift_setDeallocating();
    v21 = inited[4];

    __swift_destroy_boxed_opaque_existential_1(v48);
    v22 = MEMORY[0x277D7F888];
    sub_275B9950C(a5, MEMORY[0x277D7F888]);
    sub_275B9950C(v9 + v17, v22);
    v23 = v15[1];

    v24 = v16[1];

    type metadata accessor for ShadowModeMain();
    v25 = *(*v9 + 48);
    v26 = *(*v9 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets) = sub_275B95EA8(0x657366664F6D756ELL, 0xEA00000000007374, 23);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow) = sub_275B95EA8(0xD000000000000016, 0x8000000275B9A180, 10);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow) = sub_275B95EA8(0xD000000000000014, 0x8000000275B9A1A0, 3);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays) = sub_275B95EA8(0xD000000000000013, 0x8000000275B9A1C0, 3);
    v27 = *sub_275B99904();
    v28 = sub_275B998E4();
    sub_275B95EA8(0xD000000000000012, 0x8000000275B9A1E0, v28);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval) = sub_275B998F4();
    v29 = *sub_275B99984();

    v30 = sub_275B96430(0x69746E6563726570, 0xEB0000000073656CLL, v29);

    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles) = v30;
    v31 = sub_275B999A4();
    v32 = *v31;
    v33 = v31[1];

    v34 = sub_275B9617C(0x676E696C6562616CLL, 0xEE00656372756F53, v32, v33);
    v36 = v35;

    v37 = (v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
    *v37 = v34;
    v37[1] = v36;
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_minsUntilOpen) = sub_275B95EA8(0x69746E55736E696DLL, 0xED00006E65704F6CLL, 4320);
    v38 = sub_275B9670C(0x746144796D6D7564, 0xE900000000000061, 0);
    *(v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_dummyData) = v38 & 1;
    if (v38)
    {
      v39 = sub_275B99944();
      v40 = swift_allocObject();
      v47[3] = v39;
      v47[4] = MEMORY[0x277D7F8B0];

      swift_setDeallocating();
      v41 = inited[4];

      v47[0] = v40;
      __swift_destroy_boxed_opaque_existential_1(v48);
      sub_275B9950C(a5, MEMORY[0x277D7F888]);
      v42 = v47;
      v43 = v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
    }

    else
    {
      sub_275B9950C(a5, MEMORY[0x277D7F888]);

      swift_setDeallocating();
      v44 = inited[4];

      v43 = v9 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager;
      v42 = v48;
    }

    sub_275B954F8(v42, v43);
  }

  return v9;
}

uint64_t type metadata accessor for ShadowModeMain()
{
  result = qword_280A35D18;
  if (!qword_280A35D18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_275B988D8()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_dummyData);
  if (qword_280A35C10 != -1)
  {
    swift_once();
  }

  v3 = sub_275B998B4();
  __swift_project_value_buffer(v3, qword_280A35CA0);
  sub_275B99894();
  v4 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets);
  v5 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifStartDaysUntilNow);
  v6 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_notifEndDaysUntilNow);
  v7 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelDurationInDays);
  v8 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_offsetTimeInterval);
  sub_275B99440(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager, v12);
  type metadata accessor for EvaluationDataSearch();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v9[2] = MEMORY[0x277D84F90];
  v9[3] = v10;
  v9[4] = v4;
  v9[5] = v5;
  v9[6] = v6;
  v9[7] = v7;
  v9[8] = v8;
  sub_275B954F8(v12, (v9 + 9));
  return v9;
}

uint64_t ShadowModeMain.run()()
{
  v1 = v0;
  v76 = sub_275B99884();
  v2 = *(v76 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v76);
  v5 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_275B99874();
  v6 = *(v75 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v75);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_275B998D4();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277C8A0E0](v12);
  v16 = MEMORY[0x277C8A050]();
  if ((v15 & 1) != 0 && (v16 & 1) == 0)
  {
    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v17 = sub_275B998B4();
    __swift_project_value_buffer(v17, qword_280A35CA0);
    sub_275B99894();
    return 0;
  }

  v18 = sub_275B988D8();
  v19 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource);
  v20 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource + 8);
  v21 = sub_275B999A4();
  v22 = v19 == *v21 && v20 == v21[1];
  v73 = v2;
  if (v22)
  {
    v23 = 1;
  }

  else
  {
    v23 = sub_275B99A84();
  }

  sub_275B99974();
  v24 = v18[5];
  v25 = v18[6];
  v26 = v18[7];
  v27 = sub_275B99964();
  swift_beginAccess();
  v28 = v18[2];
  v18[2] = v27;

  v29 = *(v18[2] + 16);
  v30 = v18[5];
  v31 = v18[6];
  v32 = v18[7];
  v33 = sub_275B99954();
  swift_beginAccess();
  v34 = v18[3];
  v18[3] = v33;

  v35 = v18[3];
  if (v23)
  {
    if (v29)
    {
      goto LABEL_14;
    }

LABEL_22:
    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v53 = sub_275B998B4();
    __swift_project_value_buffer(v53, qword_280A35CA0);
    sub_275B99894();
    goto LABEL_28;
  }

  if (!*(v35 + 16))
  {
    goto LABEL_22;
  }

LABEL_14:
  LODWORD(v71) = v23;
  v72 = v14;
  v67 = v6;
  v36 = v18[2];
  v37 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths);
  v38 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths + 8);
  v39 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_fileManager);
  type metadata accessor for ShadowModelProvider();
  inited = swift_initStackObject();
  inited[2] = v37;
  inited[3] = v38;
  inited[4] = v39;

  v74 = v38;

  v41 = v39;
  v68 = inited;
  if (!ShadowModelProvider.getModels()()[2])
  {

    if (qword_280A35C10 != -1)
    {
      swift_once();
    }

    v54 = sub_275B998B4();
    __swift_project_value_buffer(v54, qword_280A35CA0);
    sub_275B99894();

LABEL_28:

    return 0;
  }

  v66 = v41;
  v42 = (v71 & 1) == 0;
  v43 = MEMORY[0x277D84F90];
  if (v71)
  {
    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v44 = v35;
  }

  v71 = v44;
  if (!v42)
  {
    v43 = v36;
  }

  v70 = v43;

  sub_275B99440(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager, &v77);
  v69 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_numOffsets);
  sub_275B994A4(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, v72, MEMORY[0x277D7F888]);
  v45 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles);
  v46 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_minsUntilOpen);
  v47 = *(v1 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_skipPublishMetrics);
  sub_275B999D4();
  swift_allocObject();
  v48 = sub_275B999B4();
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();

  v51 = sub_275B99994();
  v52 = (*(*v51 + 336))(v51);
  v56 = *(*v51 + 376);
  v74 = v51;
  v57 = v56(v52);
  v72 = v57;
  v58 = *(v57 + 16);
  if (v58)
  {
    v59 = &v72[(*(v67 + 80) + 32) & ~*(v67 + 80)];
    v60 = *(v67 + 72);
    do
    {
      sub_275B994A4(v59, v9, MEMORY[0x277D7F7A0]);
      if (qword_280A35C10 != -1)
      {
        swift_once();
      }

      v61 = sub_275B998B4();
      __swift_project_value_buffer(v61, qword_280A35CA0);
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_275B99A54();
      MEMORY[0x277C8A120](0xD000000000000020, 0x8000000275B9A370);
      sub_275B99A64();
      sub_275B9950C(v9, MEMORY[0x277D7F7A0]);
      MEMORY[0x277C8A120](46, 0xE100000000000000);
      sub_275B99894();

      v59 += v60;
      --v58;
    }

    while (v58);
  }

  v75 = (*(*v74 + 368))(v57);
  v62 = *(v75 + 16);
  if (v62)
  {
    v63 = v75 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v64 = *(v73 + 72);
    do
    {
      sub_275B994A4(v63, v5, MEMORY[0x277D7F7C0]);
      if (qword_280A35C10 != -1)
      {
        swift_once();
      }

      v65 = sub_275B998B4();
      __swift_project_value_buffer(v65, qword_280A35CA0);
      v77 = 0;
      v78 = 0xE000000000000000;
      sub_275B99A54();
      MEMORY[0x277C8A120](0xD000000000000020, 0x8000000275B9A3A0);
      sub_275B99A64();
      sub_275B9950C(v5, MEMORY[0x277D7F7C0]);
      MEMORY[0x277C8A120](46, 0xE100000000000000);
      sub_275B99894();

      v63 += v64;
      --v62;
    }

    while (v62);
  }

  return v72;
}

uint64_t sub_275B99440(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_275B994A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_275B9950C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ShadowModeMain.deinit()
{
  sub_275B9950C(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath + 8);

  v2 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager));

  v3 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource + 8);

  v4 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles);

  return v0;
}

uint64_t ShadowModeMain.__deallocating_deinit()
{
  sub_275B9950C(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_trialSet, MEMORY[0x277D7F888]);
  v1 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_recipePath + 8);

  v2 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_modelPaths + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_biomeManager));

  v3 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_labelingSource + 8);

  v4 = *(v0 + OBJC_IVAR____TtC37iCloudSubscriptionOptimizerLighthouse14ShadowModeMain_percentiles);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v5, v6);
}

uint64_t sub_275B99700()
{
  result = sub_275B998D4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}