uint64_t sub_20B694968()
{
  v1[26] = v0;
  v2 = sub_20C13BB84();
  v1[27] = v2;
  v1[28] = *(v2 - 8);
  v1[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637D8);
  v1[30] = swift_task_alloc();
  v3 = sub_20C137054();
  v1[31] = v3;
  v1[32] = *(v3 - 8);
  v1[33] = swift_task_alloc();
  sub_20C13CDA4();
  v1[34] = sub_20C13CD94();
  v5 = sub_20C13CD24();
  v1[35] = v5;
  v1[36] = v4;

  return MEMORY[0x2822009F8](sub_20B694AF0, v5, v4);
}

uint64_t sub_20B694AF0()
{
  v1 = v0[31];
  v2 = v0[32];
  v3 = v0[30];
  sub_20B6919F0(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[30];

    sub_20B520158(v4, &qword_27C7637D8);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = v0[26];
      v6 = *(v5 + 24);
      ObjectType = swift_getObjectType();
      v0[5] = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
      v0[6] = &off_28229CA48;
      v0[2] = v5;
      v8 = *(v6 + 16);

      v8(v0 + 2, 0, 2, ObjectType, v6);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 2));
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[26];
    (*(v0[32] + 32))(v0[33], v0[30], v0[31]);
    v12 = *(v11 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanClient + 24);
    v13 = *(v11 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanClient + 32);
    __swift_project_boxed_opaque_existential_1((v11 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanClient), v12);
    v14 = swift_task_alloc();
    v0[37] = v14;
    *v14 = v0;
    v14[1] = sub_20B694D04;
    v15 = v0[33];

    return MEMORY[0x2821ADF48](v15, v12, v13);
  }
}

uint64_t sub_20B694D04()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 288);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_20B694F9C;
  }

  else
  {
    v5 = sub_20B694E40;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B694E40()
{

  if (swift_unknownObjectWeakLoadStrong())
  {
    v1 = v0[32];
    v10 = v0[33];
    v2 = v0[31];
    v3 = v0[26];
    v4 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v6 = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    v0[17] = v3;
    v0[20] = v6;
    v0[21] = &off_28229CA48;
    v7 = *(v4 + 16);

    v7(v0 + 17, 0, 2, ObjectType, v4);
    swift_unknownObjectRelease();
    (*(v1 + 8))(v10, v2);
    __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  }

  else
  {
    (*(v0[32] + 8))(v0[33], v0[31]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_20B694F9C()
{
  v32 = v0;
  v1 = v0[38];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[32];

  (*(v4 + 8))(v2, v3);
  sub_20C13B454();
  v5 = v1;
  v6 = sub_20C13BB74();
  v7 = sub_20C13D1D4();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[28];
    v8 = v0[29];
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v31 = v12;
    *v11 = 136315138;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v0[23], v0[24]);
    v15 = sub_20B51E694(v13, v14, &v31);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v6, v7, "[WorkoutPlanSurveyPageDataProvider] Schedule validation failed with error: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);

    (*(v9 + 8))(v8, v10);
  }

  else
  {
    v17 = v0[28];
    v16 = v0[29];
    v18 = v0[27];

    (*(v17 + 8))(v16, v18);
  }

  if (*(v0[26] + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;

    v20 = *(sub_20C0BE348() + 16);

    *(inited + 32) = v20;
    v21 = sub_20B6B3CAC(inited);
    swift_setDeallocating();
  }

  else
  {
    v21 = sub_20B6B3CAC(MEMORY[0x277D84F90]);
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v23 = v0[38];
  if (Strong)
  {
    v24 = v0[26];
    v25 = *(v24 + 24);
    ObjectType = swift_getObjectType();
    v0[10] = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    v0[11] = &off_28229CA48;
    v0[7] = v24;
    v27 = *(v25 + 16);

    v28 = v23;
    v27(v0 + 7, v23, v21, ObjectType, v25);

    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1((v0 + 7));
  }

  else
  {
  }

  v29 = v0[1];

  return v29();
}

uint64_t sub_20B6952D8()
{
  sub_20B583E6C(v0 + 16);

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanClient);

  sub_20B69845C(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_state);
  return v0;
}

uint64_t sub_20B6953F0()
{
  sub_20B6952D8();

  return swift_deallocClassInstance();
}

uint64_t sub_20B695470()
{
  result = sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(319);
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B6955E8()
{
  sub_20B695640();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_20B695640()
{
  if (!qword_27C7637B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C770C10);
    sub_20C1367D4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27C7637B8);
    }
  }
}

void sub_20B695708()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v16[-v2 - 8];
  if ((*(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activationState) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activationState) = 1;
    swift_getObjectType();
    sub_20C13A4E4();
    swift_allocObject();
    swift_weakInit();
    sub_20C13A774();

    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_20C13CDC4();
    v4 = sub_20C13CDF4();
    v5 = *(*(v4 - 8) + 56);
    v5(v3, 0, 1, v4);
    v6 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v7 = sub_20C13CD94();
    v8 = swift_allocObject();
    v9 = MEMORY[0x277D85700];
    v8[2] = v7;
    v8[3] = v9;
    v10 = v9;
    v8[4] = v6;

    v11 = sub_20B614F94(0, 0, v3, &unk_20C154450, v8);
    sub_20C13CDC4();
    v5(v3, 0, 1, v4);
    v12 = swift_allocObject();
    swift_weakInit();

    v13 = sub_20C13CD94();
    v14 = swift_allocObject();
    v14[2] = v13;
    v14[3] = v10;
    v14[4] = v12;
    v14[5] = v11;

    sub_20B614F94(0, 0, v3, &unk_20C154460, v14);
  }
}

uint64_t sub_20B695A10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_20B695AF8;

    return sub_20B692928();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B695AF8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_20B695C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  v4[6] = swift_task_alloc();
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_20B695CD0, v6, v5);
}

uint64_t sub_20B695CD0()
{
  sub_20C13CE54();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_20B695DC0;
  v2.n128_u64[0] = 0.25;

  return MEMORY[0x2821AFAD8](v2);
}

uint64_t sub_20B695DC0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_20B696048;
  }

  else
  {
    v5 = sub_20B695EFC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_20B695EFC()
{
  v1 = v0[11];

  sub_20C13CE54();
  if (!v1)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_canReplaceActivePage) == 1)
      {
        v3 = v0[6];
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
        (*(*(v4 - 8) + 56))(v3, 3, 3, v4);
        sub_20B6943B0(v3, 0);

        sub_20B69845C(v3);
      }

      else
      {
      }
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_20B696048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6960B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[13] = a4;
  v5[14] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v5[15] = v6;
  v5[16] = *(v6 - 8);
  v5[17] = swift_task_alloc();
  sub_20C13CDA4();
  v5[18] = sub_20C13CD94();
  v8 = sub_20C13CD24();
  v5[19] = v8;
  v5[20] = v7;

  return MEMORY[0x2822009F8](sub_20B6961B4, v8, v7);
}

uint64_t sub_20B6961B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_20B51CC64(Strong + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient, (v0 + 2));

    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_20C135E34();
    sub_20C139FB4();

    return MEMORY[0x2822009F8](sub_20B6963E4, 0, 0);
  }

  else
  {
    sub_20C13CE54();
    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    v0[24] = v2;
    if (v2)
    {
      v3 = swift_task_alloc();
      v0[25] = v3;
      *v3 = v0;
      v3[1] = sub_20B6969B8;

      return sub_20B692928();
    }

    else
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
      sub_20C13CE34();

      v4 = v0[1];

      return v4();
    }
  }
}

uint64_t sub_20B6963E4()
{
  v1 = v0[17];
  v2 = swift_task_alloc();
  v0[21] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSurveyPageDataProvider.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 372;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_20B6964F4;
  v4 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v3, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B526A04, v2, v4);
}

uint64_t sub_20B6964F4()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  if (v0)
  {

    v3 = sub_20B6967CC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[16];
    v6 = v2[17];
    v8 = v2[15];

    (*(v7 + 8))(v6, v8);
    __swift_destroy_boxed_opaque_existential_1((v2 + 2));
    v4 = v2[19];
    v5 = v2[20];
    v3 = sub_20B69665C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B69665C()
{
  v1 = v0[23];
  sub_20C13CE54();
  if (v1)
  {

    v2 = v0[1];
LABEL_3:

    return v2();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (!Strong)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13CE34();

    v2 = v0[1];
    goto LABEL_3;
  }

  v5 = swift_task_alloc();
  v0[25] = v5;
  *v5 = v0;
  v5[1] = sub_20B6969B8;

  return sub_20B692928();
}

uint64_t sub_20B6967CC()
{
  (*(v0[16] + 8))(v0[17], v0[15]);
  v1 = v0[19];
  v2 = v0[20];

  return MEMORY[0x2822009F8](sub_20B696840, v1, v2);
}

uint64_t sub_20B696840()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));
  sub_20C13CE54();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[24] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[25] = v3;
    *v3 = v0;
    v3[1] = sub_20B6969B8;

    return sub_20B692928();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    sub_20C13CE34();

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B6969B8()
{
  v1 = *v0;

  v2 = *(v1 + 160);
  v3 = *(v1 + 152);

  return MEMORY[0x2822009F8](sub_20B696AFC, v3, v2);
}

uint64_t sub_20B696AFC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
  sub_20C13CE34();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B696BD4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20B696C50(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_20B6A0F60(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_20C13DF84();
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
      v7 = sub_20C13CCD4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_20B696D84(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_20B696D84(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_20B6A07A0(v8);
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
        sub_20B6972D0((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
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
      result = sub_20BC05740(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_20BC05740((v29 > 1), v5 + 1, 1, v8);
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
        sub_20B6972D0((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
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

uint64_t sub_20B6972D0(char *__dst, char *__src, char *a3, char *a4)
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

uint64_t sub_20B6974C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C1367D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = (&v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637D0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v18 = (&v31 + *(v17 + 56) - v15);
  sub_20B6983F8(a1, &v31 - v15);
  sub_20B6983F8(a2, v18);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v16, 3, v19);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      if (v20(v18, 3, v19) != 2)
      {
        goto LABEL_11;
      }
    }

    else if (v20(v18, 3, v19) != 3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (!v21)
    {
      v34 = v5;
      sub_20B6983F8(v16, v13);
      v33 = *v13;
      v22 = *(v19 + 48);
      if (!v20(v18, 3, v19))
      {
        v32 = *v18;
        v25 = v34;
        v26 = *(v34 + 32);
        v26(v10, v13 + v22, v4);
        v26(v7, v18 + v22, v4);
        sub_20BDA2FB4(v33, v32);
        v28 = v27;

        if (v28)
        {
          v23 = MEMORY[0x20F2EDF30](v10, v7);
          v29 = *(v25 + 8);
          v29(v7, v4);
          v29(v10, v4);
          sub_20B69845C(v16);
          return v23 & 1;
        }

        v30 = *(v25 + 8);
        v30(v7, v4);
        v30(v10, v4);
        sub_20B69845C(v16);
        goto LABEL_12;
      }

      (*(v34 + 8))(v13 + v22, v4);

LABEL_11:
      sub_20B520158(v16, &qword_27C7637D0);
LABEL_12:
      v23 = 0;
      return v23 & 1;
    }

    if (v20(v18, 3, v19) != 1)
    {
      goto LABEL_11;
    }
  }

  sub_20B69845C(v16);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_20B697898(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v74 = a2;
  v75 = a3;
  v6 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v6 - 8);
  v76 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v8 - 8);
  v73 = &v71 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v71 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v71 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v71 - v17;
  v72 = sub_20C1333A4();
  v19 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activationState) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activeShelves) = MEMORY[0x277D84F90];
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_canReplaceActivePage) = 1;
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf) = 0;
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf) = 0;
  v22 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_state;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  (*(*(v23 - 8) + 56))(v4 + v22, 2, 3, v23);
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_dependencies) = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  sub_20C133AA4();
  sub_20B51C710(&v87, v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A60);
  sub_20C133AA4();
  sub_20B51C710(&v87, v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v4 + 40) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(&v87, v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanClient);
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_workoutPlanStringBuilder) = v87;
  v24 = *MEMORY[0x277D517D8];
  v25 = sub_20C1352F4();
  v26 = *(v25 - 8);
  (*(v26 + 104))(v18, v24, v25);
  (*(v26 + 56))(v18, 0, 1, v25);
  v27 = sub_20C132C14();
  (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(v12, 1, 1, v28);
  v29 = sub_20C136914();
  (*(*(v29 - 8) + 56))(v73, 1, 1, v29);
  sub_20C133384();
  (*(v19 + 32))(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v21, v72);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *(v4 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_subscriptionToken) = sub_20C13A914();
  LODWORD(v75) = sub_20C1380F4();
  v30 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v74 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v30 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v31 = sub_20C13C724();
  v32 = type metadata accessor for CatalogPageImpressionTracker();
  v33 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v34 = MEMORY[0x277D221C0];
  v33[2] = sub_20C13C6D4();
  v33[3] = v31;
  v33[4] = v34;
  v88 = v32;
  v35 = sub_20B6983B0(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v89 = v35;
  *&v87 = v33;
  v36 = type metadata accessor for MetricLocationStore();
  v37 = swift_allocObject();
  v38 = MEMORY[0x277D84F98];
  v39 = MEMORY[0x277D84F90];
  *(v37 + 16) = MEMORY[0x277D84F90];
  *(v37 + 24) = v38;
  v40 = __swift_mutable_project_boxed_opaque_existential_1(&v87, v32);
  v41 = MEMORY[0x28223BE20](v40);
  v43 = (&v71 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v44 + 16))(v43, v41);
  v45 = *v43;
  v86[3] = v32;
  v86[4] = v35;
  v86[0] = v45;
  v85[3] = v36;
  v85[4] = &off_2822B6968;
  v85[0] = v37;
  sub_20B51CC64(v86, v84);
  sub_20B51CC64(v85, v83);
  v46 = __swift_mutable_project_boxed_opaque_existential_1(v84, v84[3]);
  v47 = MEMORY[0x28223BE20](v46);
  v49 = (&v71 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v50 + 16))(v49, v47);
  v51 = __swift_mutable_project_boxed_opaque_existential_1(v83, v83[3]);
  v52 = MEMORY[0x28223BE20](v51);
  v54 = (&v71 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v55 + 16))(v54, v52);
  v56 = *v49;
  v57 = *v54;
  v81 = v32;
  v82 = v35;
  v79 = &off_2822B6968;
  v80[0] = v56;
  v78 = v36;
  v77[0] = v57;
  v58 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v80, v81);
  v60 = MEMORY[0x28223BE20](v59);
  v62 = (&v71 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v63 + 16))(v62, v60);
  v64 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
  v65 = MEMORY[0x28223BE20](v64);
  v67 = (&v71 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v68 + 16))(v67, v65);
  v69 = sub_20BE3AA74(0x756F59646C697542, 0xED00006E616C5072, v39, v75, v74, *v62, *v67, 2, v58);
  __swift_destroy_boxed_opaque_existential_1(v85);
  __swift_destroy_boxed_opaque_existential_1(v86);
  __swift_destroy_boxed_opaque_existential_1(v77);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v83);
  __swift_destroy_boxed_opaque_existential_1(v84);
  __swift_destroy_boxed_opaque_existential_1(&v87);
  *(v4 + 32) = v69;
  return v4;
}

uint64_t sub_20B6983B0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B6983F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B69845C(uint64_t a1)
{
  v2 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B6984B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B69851C()
{
  result = qword_27C770320;
  if (!qword_27C770320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C770C10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770320);
  }

  return result;
}

uint64_t sub_20B698580()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B693F68();
}

uint64_t sub_20B6986A0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B6959F0(a1, v1);
}

uint64_t sub_20B698738(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B695C0C(a1, v4, v5, v6);
}

uint64_t sub_20B6987EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20B6960B4(a1, v4, v5, v7, v6);
}

uint64_t sub_20B69890C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 8))(a2, a4);
  if (result)
  {
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 16))(v4, a1, ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B6989A0(uint64_t a1)
{
  v43 = sub_20C133474();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_20C137C24();
  v5 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v39 = v7;
    v31 = v1;
    v47 = MEMORY[0x277D84F90];
    v33 = a1;
    sub_20BB5DC90(0, v8, 0);
    v10 = v5;
    v11 = v33;
    v45 = v33 + 56;
    v46 = v47;
    result = sub_20C13DAA4();
    v12 = result;
    v13 = 0;
    v37 = v3 + 8;
    v38 = v3 + 16;
    v40 = v10;
    v35 = v3;
    v36 = v10 + 32;
    v32 = v11 + 64;
    v34 = v8;
    while ((v12 & 0x8000000000000000) == 0 && v12 < 1 << *(v11 + 32))
    {
      v16 = v12 >> 6;
      if ((*(v45 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_23;
      }

      v44 = *(v11 + 36);
      v18 = v42;
      v17 = v43;
      (*(v3 + 16))(v42, *(v11 + 48) + *(v3 + 72) * v12, v43);
      v19 = v39;
      sub_20C133444();
      (*(v3 + 8))(v18, v17);
      v20 = v46;
      v47 = v46;
      v22 = *(v46 + 16);
      v21 = *(v46 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_20BB5DC90(v21 > 1, v22 + 1, 1);
        v20 = v47;
      }

      *(v20 + 16) = v22 + 1;
      v23 = (*(v40 + 80) + 32) & ~*(v40 + 80);
      v46 = v20;
      result = (*(v40 + 32))(v20 + v23 + *(v40 + 72) * v22, v19, v41);
      v14 = 1 << *(v11 + 32);
      if (v12 >= v14)
      {
        goto LABEL_24;
      }

      v24 = *(v45 + 8 * v16);
      if ((v24 & (1 << v12)) == 0)
      {
        goto LABEL_25;
      }

      if (v44 != *(v11 + 36))
      {
        goto LABEL_26;
      }

      v25 = v24 & (-2 << (v12 & 0x3F));
      if (v25)
      {
        v14 = __clz(__rbit64(v25)) | v12 & 0x7FFFFFFFFFFFFFC0;
        v15 = v34;
        v3 = v35;
      }

      else
      {
        v26 = v16 << 6;
        v27 = v16 + 1;
        v28 = (v32 + 8 * v16);
        v15 = v34;
        v3 = v35;
        while (v27 < (v14 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_20B526EA4(v12, v44, 0);
            v14 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_20B526EA4(v12, v44, 0);
LABEL_19:
        v11 = v33;
      }

      ++v13;
      v12 = v14;
      if (v13 == v15)
      {
        return v46;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B698D64()
{
  v1 = v0;
  v82 = sub_20C137C24();
  v2 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v81 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v4 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v64 = &v60 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764720);
  v71 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v66 = v7;
  v67 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v60 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v70 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v60 - v14;
  v69 = v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v60 - v17;
  v19 = sub_20C134364();
  v20 = sub_20B6989A0(v19);

  v21 = *(v20 + 16);
  v22 = MEMORY[0x277D84F90];
  v73 = v18;
  v65 = v20;
  if (v21)
  {
    v61 = v6;
    v62 = v11;
    v63 = v10;
    v83[0] = MEMORY[0x277D84F90];
    sub_20BB5DC50(0, v21, 0);
    v22 = v83[0];
    v23 = v1 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display;
    v24 = (v1 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_artworkImageLoader);
    v26 = *(v2 + 16);
    v25 = v2 + 16;
    v27 = v20 + ((*(v25 + 64) + 32) & ~*(v25 + 64));
    v76 = *(v25 + 56);
    v77 = v26;
    v74 = v4 + 32;
    v75 = (v25 - 8);
    v79 = v4;
    v28 = v64;
    v78 = v23;
    do
    {
      v29 = v25;
      v77(v81, v27, v82);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v23 + 8);
        ObjectType = swift_getObjectType();
        (*(v30 + 32))(ObjectType, v30);
        swift_unknownObjectRelease();
      }

      __swift_project_boxed_opaque_existential_1(v24, v24[3]);
      v32 = v81;
      sub_20C138B14();
      (*v75)(v32, v82);
      v83[0] = v22;
      v34 = *(v22 + 16);
      v33 = *(v22 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_20BB5DC50(v33 > 1, v34 + 1, 1);
        v22 = v83[0];
      }

      *(v22 + 16) = v34 + 1;
      (*(v79 + 32))(v22 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v34, v28, v80);
      v27 += v76;
      --v21;
      v25 = v29;
      v23 = v78;
    }

    while (v21);
    v10 = v63;
    v11 = v62;
    v6 = v61;
  }

  v83[0] = v22;
  sub_20B51C88C(0, &qword_281100530);
  v35 = sub_20C13D374();
  v36 = sub_20B51C88C(0, &qword_27C7626E8);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763810);
  v38 = sub_20B69AE54();
  v39 = v68;
  MEMORY[0x20F2EF3B0](v35, v83, v36, v37, v38);

  v40 = swift_allocObject();
  *(v40 + 16) = v65;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_20B69AEB8;
  *(v41 + 24) = v40;
  v42 = v71;
  v43 = v67;
  (*(v71 + 16))(v67, v39, v6);
  v44 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v45 = (v66 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  (*(v42 + 32))(v46 + v44, v43, v6);
  v47 = (v46 + v45);
  *v47 = sub_20B69AF78;
  v47[1] = v41;
  v48 = v72;
  sub_20C137C94();
  (*(v42 + 8))(v39, v6);
  v49 = swift_allocObject();
  *(v49 + 16) = sub_20B699750;
  *(v49 + 24) = 0;
  v50 = v70;
  (*(v11 + 16))(v70, v48, v10);
  v51 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v52 = (v69 + v51 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  (*(v11 + 32))(v53 + v51, v50, v10);
  v54 = (v53 + v52);
  *v54 = sub_20B5DF204;
  v54[1] = v49;
  v55 = v73;
  sub_20C137C94();
  v56 = *(v11 + 8);
  v56(v48, v10);
  v57 = sub_20C137CB4();
  v58 = swift_allocObject();
  *(v58 + 16) = 0;
  *(v58 + 24) = 0;
  v57(sub_20B5DF6DC, v58);

  return (v56)(v55, v10);
}

uint64_t sub_20B699580(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();

  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v18[1] = v2;
    v11 = v10;
    v12 = swift_slowAlloc();
    v19 = v12;
    *v11 = 136446210;
    v13 = sub_20C137C24();
    v14 = MEMORY[0x20F2F43F0](a2, v13);
    v16 = sub_20B51E694(v14, v15, &v19);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_20B517000, v8, v9, "[Artwork] Prefetched images for artworks %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_20B699750(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "[Artwork] Error prefetching images: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20B69992C(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = sub_20C133474();
  v81 = *(v6 - 8);
  v82 = v6;
  MEMORY[0x28223BE20](v6);
  v77 = v7;
  v79 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_20C137C24();
  v89 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  v85 = *(v9 - 8);
  v86 = v9;
  MEMORY[0x28223BE20](v9);
  v80 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v10;
  MEMORY[0x28223BE20](v11);
  v83 = &v70 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v87 = *(v13 - 8);
  v88 = v13;
  MEMORY[0x28223BE20](v13);
  v84 = &v70 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - v16;
  v18 = type metadata accessor for SessionMusicTrack();
  v19 = v18 - 8;
  v71 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v73 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = v20;
  MEMORY[0x28223BE20](v21);
  v23 = (&v70 - v22);
  v24 = sub_20C133424();
  v26 = v25;
  v27 = sub_20C133434();
  v29 = v28;
  sub_20C133444();
  *v23 = v24;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v29;
  *(v23 + *(v19 + 36)) = 0;
  v30 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = *(v30 + 8);
    ObjectType = swift_getObjectType();
    (*(v31 + 8))(v23, ObjectType, v31);
    swift_unknownObjectRelease();
  }

  v33 = v2 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v34 = *(v33 + 8);
    v35 = swift_getObjectType();
    (*(v34 + 8))(v23, v35, v34);
    swift_unknownObjectRelease();
  }

  sub_20C133444();
  v36 = v75;
  (*(v89 + 56))(v17, 0, 1, v75);
  v37 = OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_currentArtwork;
  swift_beginAccess();
  sub_20B69AB5C(v17, v3 + v37);
  swift_endAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v76 = v33;
  v70 = v30;
  if (Strong)
  {
    v39 = *(v30 + 8);
    v40 = swift_getObjectType();
    (*(v39 + 32))(v40, v39);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_artworkImageLoader), *(v3 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_artworkImageLoader + 24));
  v41 = v74;
  sub_20C133444();
  v42 = v83;
  sub_20C138B14();
  (*(v89 + 8))(v41, v36);
  v43 = swift_allocObject();
  swift_weakInit();
  v45 = v81;
  v44 = v82;
  v46 = v79;
  (*(v81 + 16))(v79, a1, v82);
  v47 = v73;
  sub_20B69ABCC(v23, v73);
  v48 = (*(v45 + 80) + 24) & ~*(v45 + 80);
  v49 = (v77 + *(v71 + 80) + v48) & ~*(v71 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = v43;
  (*(v45 + 32))(v50 + v48, v46, v44);
  sub_20B69AC30(v47, v50 + v49);
  v51 = swift_allocObject();
  *(v51 + 16) = sub_20B69AC94;
  *(v51 + 24) = v50;
  v53 = v85;
  v52 = v86;
  v54 = v80;
  (*(v85 + 16))(v80, v42, v86);
  v55 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v56 = (v78 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v53 + 32))(v57 + v55, v54, v52);
  v58 = (v57 + v56);
  *v58 = sub_20B5F67A4;
  v58[1] = v51;
  v59 = v84;
  sub_20C137C94();
  (*(v53 + 8))(v42, v52);
  v60 = v88;
  v61 = sub_20C137CB4();
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v61(sub_20B52347C, v62);

  (*(v87 + 8))(v59, v60);
  v63 = v70;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v64 = *(v63 + 8);
    v65 = swift_getObjectType();
    (*(v64 + 16))(v65, v64, a2);
    swift_unknownObjectRelease();
  }

  v66 = v76;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v67 = *(v66 + 8);
    v68 = swift_getObjectType();
    (*(v67 + 16))(v68, v67, a2);
    swift_unknownObjectRelease();
  }

  return sub_20B69ADA0(v23);
}

uint64_t sub_20B69A198(void **a1, uint64_t a2, uint64_t a3, char *a4)
{
  v67 = a4;
  v66 = type metadata accessor for SessionMusicTrack();
  MEMORY[0x28223BE20](v66);
  v69 = &v60[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20C137C24();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v64 = &v60[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  MEMORY[0x28223BE20](v13 - 8);
  v63 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15);
  v70 = &v60[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v60[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v60[-v21];
  v65 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v68 = a2;
  if (Strong)
  {
    v24 = OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_currentArtwork;
    v25 = Strong;
    swift_beginAccess();
    sub_20B654504(v25 + v24, v22);
  }

  else
  {
    (*(v8 + 56))(v22, 1, 1, v7);
  }

  sub_20C133444();
  v62 = *(v8 + 56);
  v62(v19, 0, 1, v7);
  v26 = *(v10 + 48);
  sub_20B654504(v22, v12);
  sub_20B654504(v19, &v12[v26]);
  v71 = v8;
  v27 = *(v8 + 48);
  v28 = v7;
  if (v27(v12, 1, v7) != 1)
  {
    v29 = v70;
    sub_20B654504(v12, v70);
    if (v27(&v12[v26], 1, v28) != 1)
    {
      v31 = v71;
      v32 = &v12[v26];
      v33 = v64;
      (*(v71 + 32))(v64, v32, v28);
      sub_20B69ADFC();
      v61 = sub_20C13C894();
      v34 = *(v31 + 8);
      v34(v33, v28);
      sub_20B520158(v19, &unk_27C766680);
      sub_20B520158(v22, &unk_27C766680);
      v35 = v70;
      v70 = v28;
      v34(v35, v28);
      result = sub_20B520158(v12, &unk_27C766680);
      if ((v61 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_20B520158(v19, &unk_27C766680);
    sub_20B520158(v22, &unk_27C766680);
    (*(v71 + 8))(v29, v28);
    return sub_20B520158(v12, &qword_27C7626D0);
  }

  v70 = v7;
  sub_20B520158(v19, &unk_27C766680);
  sub_20B520158(v22, &unk_27C766680);
  if (v27(&v12[v26], 1, v70) != 1)
  {
    return sub_20B520158(v12, &qword_27C7626D0);
  }

  sub_20B520158(v12, &unk_27C766680);
LABEL_11:
  swift_beginAccess();
  v36 = swift_weakLoadStrong();
  v37 = v70;
  if (v36)
  {
    v38 = v36;
    v39 = v63;
    v62(v63, 1, 1, v70);
    v40 = OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_currentArtwork;
    swift_beginAccess();
    sub_20B69AB5C(v39, v38 + v40);
    swift_endAccess();
  }

  v41 = v66;
  v43 = *v67;
  v42 = *(v67 + 1);
  v45 = *(v67 + 2);
  v44 = *(v67 + 3);
  v46 = v69;
  (*(v71 + 16))(&v69[*(v66 + 24)], &v67[*(v66 + 24)], v37);
  *v46 = v43;
  v46[1] = v42;
  v46[2] = v45;
  v46[3] = v44;
  v47 = v65;
  *(v46 + *(v41 + 28)) = v65;
  swift_beginAccess();
  v48 = swift_weakLoadStrong();
  if (v48)
  {
    v49 = v48 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display;
    v50 = swift_unknownObjectWeakLoadStrong();
    v51 = *(v49 + 8);

    v52 = v47;

    if (v50)
    {
      ObjectType = swift_getObjectType();
      (*(v51 + 8))(v46, ObjectType, v51);
      swift_unknownObjectRelease();
    }
  }

  else
  {

    v54 = v47;
  }

  swift_beginAccess();
  v55 = swift_weakLoadStrong();
  if (v55)
  {
    v56 = v55 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay;
    v57 = swift_unknownObjectWeakLoadStrong();
    v58 = *(v56 + 8);

    if (v57)
    {
      v59 = swift_getObjectType();
      (*(v58 + 8))(v46, v59, v58);
      swift_unknownObjectRelease();
    }
  }

  return sub_20B69ADA0(v46);
}

uint64_t sub_20B69A8C8()
{
  v1 = OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_display);
  sub_20B583E6C(v0 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_externalOverlayDisplay);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_artworkImageLoader);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI21SessionTrackPresenter_currentArtwork, &unk_27C766680);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionTrackPresenter()
{
  result = qword_27C7637F8;
  if (!qword_27C7637F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B69AA08()
{
  sub_20C1344C4();
  if (v0 <= 0x3F)
  {
    sub_20B52CA1C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_20B69AB08()
{
  result = qword_27C763808;
  if (!qword_27C763808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763808);
  }

  return result;
}

uint64_t sub_20B69AB5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B69ABCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionMusicTrack();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B69AC30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionMusicTrack();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B69AC94(void **a1)
{
  v3 = *(sub_20C133474() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for SessionMusicTrack() - 8);
  return sub_20B69A198(a1, *(v1 + 16), v1 + v4, (v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80))));
}

uint64_t sub_20B69ADA0(uint64_t a1)
{
  v2 = type metadata accessor for SessionMusicTrack();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20B69ADFC()
{
  result = qword_27C7626D8;
  if (!qword_27C7626D8)
  {
    sub_20C137C24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7626D8);
  }

  return result;
}

unint64_t sub_20B69AE54()
{
  result = qword_27C763818;
  if (!qword_27C763818)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C763810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763818);
  }

  return result;
}

uint64_t sub_20B69AED4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  return sub_20C137C94();
}

uint64_t sub_20B69AFA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t WorkoutNavigationResource.hash(into:)()
{
  v1 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for WorkoutNavigationResource();
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B69B900(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B69B964(v6, v3);
    MEMORY[0x20F2F58E0](1);
    WorkoutSessionConfiguration.hash(into:)();
    return sub_20B69BB48(v3, type metadata accessor for WorkoutSessionConfiguration);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13CA64();
  }
}

uint64_t WorkoutNavigationResource.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WorkoutNavigationResource();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20B69B900(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B69B964(v7, v4);
    MEMORY[0x20F2F58E0](1);
    WorkoutSessionConfiguration.hash(into:)();
    sub_20B69BB48(v4, type metadata accessor for WorkoutSessionConfiguration);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13CA64();
  }

  return sub_20C13E1B4();
}

uint64_t sub_20B69B324()
{
  v1 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B69B900(v0, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B69B964(v6, v3);
    MEMORY[0x20F2F58E0](1);
    WorkoutSessionConfiguration.hash(into:)();
    return sub_20B69BB48(v3, type metadata accessor for WorkoutSessionConfiguration);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13CA64();
  }
}

uint64_t sub_20B69B468()
{
  v1 = v0;
  v2 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13E164();
  sub_20B69B900(v1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_20B69B964(v7, v4);
    MEMORY[0x20F2F58E0](1);
    WorkoutSessionConfiguration.hash(into:)();
    sub_20B69BB48(v4, type metadata accessor for WorkoutSessionConfiguration);
  }

  else
  {
    MEMORY[0x20F2F58E0](0);
    sub_20C13CA64();
  }

  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI25WorkoutNavigationResourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSessionConfiguration();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WorkoutNavigationResource();
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v24 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763828);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v17 = (&v24 + *(v16 + 56) - v14);
  sub_20B69B900(a1, &v24 - v14);
  sub_20B69B900(a2, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20B69B900(v15, v12);
    v20 = *v12;
    v19 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v20 == *v17 && v19 == v17[1])
      {
      }

      else
      {
        v22 = sub_20C13DFF4();

        if ((v22 & 1) == 0)
        {
          sub_20B69BB48(v15, type metadata accessor for WorkoutNavigationResource);
          goto LABEL_8;
        }
      }

      sub_20B69BB48(v15, type metadata accessor for WorkoutNavigationResource);
      v18 = 1;
      return v18 & 1;
    }

LABEL_7:
    sub_20B69BAE0(v15);
LABEL_8:
    v18 = 0;
    return v18 & 1;
  }

  sub_20B69B900(v15, v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_20B69BB48(v9, type metadata accessor for WorkoutSessionConfiguration);
    goto LABEL_7;
  }

  sub_20B69B964(v17, v6);
  v18 = _s9SeymourUI27WorkoutSessionConfigurationV2eeoiySbAC_ACtFZ_0(v9, v6);
  sub_20B69BB48(v6, type metadata accessor for WorkoutSessionConfiguration);
  sub_20B69BB48(v9, type metadata accessor for WorkoutSessionConfiguration);
  sub_20B69BB48(v15, type metadata accessor for WorkoutNavigationResource);
  return v18 & 1;
}

uint64_t type metadata accessor for WorkoutNavigationResource()
{
  result = qword_2811015F0;
  if (!qword_2811015F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B69B900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutNavigationResource();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B69B964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutSessionConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20B69B9CC()
{
  result = qword_27C763820;
  if (!qword_27C763820)
  {
    type metadata accessor for WorkoutNavigationResource();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763820);
  }

  return result;
}

uint64_t sub_20B69BA74()
{
  result = type metadata accessor for WorkoutSessionConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_20B69BAE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763828);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B69BB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20B69BBA8(uint64_t a1)
{
  v35 = sub_20C137404();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_20B526D44(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_20C13DAA4();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_20C1373F4();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_20B526D44((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_20B526EA4(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_20B526EA4(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_20B69BEB0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_20B69BF1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v57 = a1;
  v74 = a2;
  v68 = sub_20C134684();
  v60 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v58 = v4;
  v67 = v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764120);
  v62 = *(v5 - 8);
  v63 = v5;
  MEMORY[0x28223BE20](v5);
  v61 = v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = v6;
  MEMORY[0x28223BE20](v7);
  v71 = v53 - v8;
  v72 = sub_20C137094();
  v69 = *(v72 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v72);
  v65 = v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v70 = v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v53 - v13;
  v73 = sub_20C136C64();
  v15 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v66 = v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = v53 - v18;
  v20 = sub_20C135174();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v64 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = v53 - v24;
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_20C13B184();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    v25 = &unk_27C76BC00;
    v26 = v19;
LABEL_5:
    sub_20B520158(v26, v25);
    v28 = sub_20C1356F4();
    sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D51B88], v28);
    *(swift_allocObject() + 16) = v29;
    return sub_20C137CA4();
  }

  v27 = *(v21 + 32);
  v56 = v21 + 32;
  v55 = v27;
  v27(v75, v19, v20);
  __swift_project_boxed_opaque_existential_1(v2 + 7, v2[10]);
  sub_20C13B174();
  if ((*(v15 + 48))(v14, 1, v73) == 1)
  {
    (*(v21 + 8))(v75, v20);
    v25 = &qword_27C768690;
    v26 = v14;
    goto LABEL_5;
  }

  v54 = v15;
  (*(v15 + 32))(v66, v14, v73);
  sub_20C1369C4();
  v32 = v2[15];
  v53[2] = v2[16];
  v53[1] = __swift_project_boxed_opaque_existential_1(v2 + 12, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v34 = v57;
  *(inited + 32) = sub_20C134664();
  *(inited + 40) = v35;
  sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  sub_20C139F64();

  v36 = v60;
  (*(v60 + 16))(v67, v34, v68);
  v37 = v69;
  (*(v69 + 16))(v65, v70, v72);
  (*(v21 + 16))(v64, v75, v20);
  v38 = (*(v36 + 80) + 16) & ~*(v36 + 80);
  v39 = *(v37 + 80);
  v57 = v20;
  v40 = v37;
  v41 = (v58 + v39 + v38) & ~v39;
  v42 = (v9 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v21 + 80) + v42 + 8) & ~*(v21 + 80);
  v44 = swift_allocObject();
  (*(v36 + 32))(v44 + v38, v67, v68);
  (*(v40 + 32))(v44 + v41, v65, v72);
  *(v44 + v42) = v3;
  v45 = v57;
  v55(v44 + v43, v64, v57);
  v47 = v61;
  v46 = v62;
  v48 = v63;
  (*(v62 + 16))(v61, v71, v63);
  v49 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v50 = (v59 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v46 + 32))(v51 + v49, v47, v48);
  v52 = (v51 + v50);
  *v52 = sub_20B6A195C;
  v52[1] = v44;

  sub_20C137C94();
  (*(v46 + 8))(v71, v48);
  (*(v69 + 8))(v70, v72);
  (*(v54 + 8))(v66, v73);
  return (*(v21 + 8))(v75, v45);
}

uint64_t sub_20B69C834@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v86 = a5;
  v89 = a4;
  v90 = a2;
  v77 = a3;
  v88 = a6;
  v84 = sub_20C135174();
  v82 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v83 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763860);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v81 = &v67 - v8;
  v80 = sub_20C13B0C4();
  v9 = *(v80 - 1);
  MEMORY[0x28223BE20](v80);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20C137094();
  v75 = *(v12 - 8);
  v76 = v12;
  MEMORY[0x28223BE20](v12);
  v74 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C134684();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v78 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  v20 = sub_20C13BB84();
  v72 = *(v20 - 8);
  v73 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762C08);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v67 - v24;
  v26 = sub_20C1361E4();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *a1;
  v32 = v31;
  sub_20BEDD53C(v30, v25);
  v33 = (*(v27 + 48))(v25, 1, v32);
  v79 = v14;
  if (v33 == 1)
  {
    sub_20B520158(v25, &qword_27C762C08);
    v34 = v80;
  }

  else
  {
    v70 = v9;
    v68 = v27;
    v35 = *(v27 + 32);
    v69 = v32;
    v35(v29, v25, v32);
    sub_20C13B434();
    (*(v15 + 16))(v19, v90, v14);
    v36 = v15;
    v37 = sub_20C13BB74();
    v38 = sub_20C13D1F4();
    v39 = os_log_type_enabled(v37, v38);
    v71 = v29;
    if (v39)
    {
      v40 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v91 = v67;
      *v40 = 136315138;
      v41 = sub_20C134664();
      v43 = v42;
      (*(v36 + 8))(v19, v14);
      v44 = sub_20B51E694(v41, v43, &v91);
      v45 = v70;

      *(v40 + 4) = v44;
      _os_log_impl(&dword_20B517000, v37, v38, "[RemoteBrowsingArchivedSessionClient] Found a CatalogWorkoutReference for workout identifier %s", v40, 0xCu);
      v46 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x20F2F6A40](v46, -1, -1);
      MEMORY[0x20F2F6A40](v40, -1, -1);

      (*(v72 + 8))(v22, v73);
      v15 = v36;
    }

    else
    {

      (*(v36 + 8))(v19, v14);
      (*(v72 + 8))(v22, v73);
      v15 = v36;
      v45 = v70;
    }

    v47 = sub_20C1361D4();
    v49 = v48;
    v51 = v50;
    sub_20C133B94();
    sub_20B583F4C(v47, v49, v51 & 1);
    sub_20C1361C4();
    v52 = v74;
    sub_20C137064();

    __swift_project_boxed_opaque_existential_1(v89 + 7, v89[10]);
    v53 = v75;
    v54 = v76;
    (*(v75 + 16))(v11, v52, v76);
    v55 = *MEMORY[0x277D4F6A0];
    v56 = sub_20C13B254();
    (*(*(v56 - 8) + 104))(v11, v55, v56);
    v57 = *(v45 + 104);
    v9 = v45;
    v34 = v80;
    v57(v11, *MEMORY[0x277D4F528], v80);
    sub_20C13B2A4();
    (*(v9 + 8))(v11, v34);
    (*(v53 + 8))(v52, v54);
    (*(v68 + 8))(v71, v69);
  }

  v58 = v9;
  v59 = v89;
  v60 = v89[10];
  v77 = v89[11];
  __swift_project_boxed_opaque_existential_1(v89 + 7, v60);
  v80 = *(v15 + 16);
  v61 = v90;
  v62 = v79;
  (v80)(v11, v90, v79);
  v63 = *MEMORY[0x277D4F600];
  v64 = sub_20C13B254();
  (*(*(v64 - 8) + 104))(v11, v63, v64);
  (*(v58 + 104))(v11, *MEMORY[0x277D4F518], v34);
  sub_20C13B2A4();
  (*(v58 + 8))(v11, v34);
  (*(v82 + 16))(v83, v86, v84);
  (v80)(v78, v61, v62);
  v65 = v81;
  sub_20C137844();
  __swift_project_boxed_opaque_existential_1(v59 + 2, v59[5]);
  sub_20C139994();
  return (*(v85 + 8))(v65, v87);
}

uint64_t sub_20B69D190(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16[-v4];
  v6 = sub_20C136C64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_20B520158(v5, &qword_27C768690);
    v10 = sub_20C1356F4();
    sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
    v11 = swift_allocError();
    (*(*(v10 - 8) + 104))(v12, *MEMORY[0x277D51B98], v10);
    *(swift_allocObject() + 16) = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850);
    return sub_20C137CA4();
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v14 = sub_20C136A84();

    v15 = sub_20B6A145C(v14, a1);

    *(swift_allocObject() + 16) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850);
    sub_20C137CA4();
    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_20B69D4AC(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7623D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  v5 = sub_20C134D54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - v10;
  sub_20BEDD568(*a1, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_20B520158(v4, &unk_27C7623D0);
    v12 = sub_20C135824();
    sub_20B6A1110(&qword_27C763838, MEMORY[0x277D51D30]);
    v13 = swift_allocError();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D51D10], v12);
    *(swift_allocObject() + 16) = v13;
    return sub_20C137CA4();
  }

  else
  {
    v16 = *(v6 + 32);
    v16(v11, v4, v5);
    (*(v6 + 16))(v8, v11, v5);
    v17 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v18 = swift_allocObject();
    v16((v18 + v17), v8, v5);
    sub_20C137CA4();
    return (*(v6 + 8))(v11, v5);
  }
}

uint64_t sub_20B69D7B0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v15[-v2];
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v8 = sub_20C1356F4();
    sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B98], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136B64();
    v13 = sub_20B69BBA8(v12);

    v14 = sub_20B527580(v13);

    *(swift_allocObject() + 16) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763848);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_20B69DAC4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_20C136C64();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_20C13B174();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_20B520158(v3, &qword_27C768690);
    v8 = sub_20C1356F4();
    sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
    v9 = swift_allocError();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x277D51B98], v8);
    *(swift_allocObject() + 16) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850);
    return sub_20C137CA4();
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v12 = sub_20C136A84();
    *(swift_allocObject() + 16) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763850);
    sub_20C137CA4();
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_20B69DDAC(uint64_t a1@<X8>)
{
  v3 = sub_20C137404();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x28223BE20](v3);
  v40 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = sub_20C136C64();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  sub_20C13B174();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_20B520158(v14, &qword_27C768690);
    v19 = sub_20C1356F4();
    sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D51B98], v19);
    *(swift_allocObject() + 16) = v20;
    sub_20C137CA4();
    return;
  }

  (*(v16 + 32))(v18, v14, v15);
  v22 = sub_20C136B64();
  v23 = *(v22 + 16);
  if (v23)
  {
    v35 = v18;
    v36 = v16;
    v37 = v15;
    v38 = v11;
    v39 = a1;
    v24 = sub_20BEDE99C(v23, 0);
    v25 = sub_20BEE2114(&v43, &v24[(*(v42 + 80) + 32) & ~*(v42 + 80)], v23, v22);

    sub_20B583EDC();
    if (v25 != v23)
    {
      __break(1u);

      __break(1u);
      return;
    }

    v11 = v38;
    v16 = v36;
    v15 = v37;
    v18 = v35;
  }

  else
  {
    v24 = MEMORY[0x277D84F90];
  }

  v43 = v24;
  sub_20B69EEB0(&v43);
  v26 = v41;
  v27 = v42;

  v28 = *(v43 + 2);
  if (v28)
  {
    (*(v27 + 16))(v11, &v43[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * (v28 - 1)], v26);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v27 + 56))(v11, v29, 1, v26);
  sub_20B6A10A0(v11, v8);
  if ((*(v27 + 48))(v8, 1, v26) == 1)
  {
    sub_20B520158(v8, &qword_27C763830);
  }

  else
  {
    v30 = v40;
    (*(v27 + 32))(v40, v8, v26);
    if (sub_20C1373D4() >= 1)
    {
      _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
      (*(v27 + 8))(v30, v26);
      sub_20B520158(v11, &qword_27C763830);
      (*(v16 + 8))(v18, v15);
      return;
    }

    (*(v27 + 8))(v30, v26);
  }

  v31 = sub_20C135824();
  sub_20B6A1110(&qword_27C763838, MEMORY[0x277D51D30]);
  v32 = swift_allocError();
  (*(*(v31 - 8) + 104))(v33, *MEMORY[0x277D51D10], v31);
  *(swift_allocObject() + 16) = v32;
  v34 = v32;
  sub_20C137CA4();
  sub_20B520158(v11, &qword_27C763830);
  (*(v16 + 8))(v18, v15);
}

uint64_t sub_20B69E4D8()
{
  v0 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20B69E604()
{
  v0 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20B69E73C()
{
  v0 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;

  return sub_20C137CA4();
}

uint64_t sub_20B69E870()
{
  v0 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;
  sub_20C134684();

  return sub_20C137CA4();
}

uint64_t sub_20B69E980()
{
  v0 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v1 = swift_allocError();
  (*(*(v0 - 8) + 104))(v2, *MEMORY[0x277D51B98], v0);
  *(swift_allocObject() + 16) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763858);

  return sub_20C137CA4();
}

uint64_t sub_20B69EA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772290);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7622B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  v13 = sub_20BE8C2E8(inited);
  swift_setDeallocating();
  sub_20B5D9804(inited + 32);
  sub_20B69D190(v13);

  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v8, v5);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_20B69D4AC;
  v16[1] = 0;
  sub_20C134D54();
  sub_20C137C94();
  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_20B69ED6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = sub_20C1356F4();
  sub_20B6A1110(&qword_27C769680, MEMORY[0x277D51BF0]);
  v6 = swift_allocError();
  (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D51B98], v5);
  *(swift_allocObject() + 16) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4);

  return sub_20C137CA4();
}

void sub_20B69EEB0(void **a1)
{
  v2 = *(sub_20C137404() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_20B6A0EC0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_20B69EF58(v5);
  *a1 = v3;
}

void sub_20B69EF58(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_20C13DF84();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_20C137404();
        v6 = sub_20C13CCD4();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_20C137404() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_20B69F424(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_20B69F084(0, v2, 1, a1);
  }
}

void sub_20B69F084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_20C132E94();
  v8 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v58 = &v41 - v11;
  v12 = sub_20C137404();
  MEMORY[0x28223BE20](v12);
  v51 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v57 = &v41 - v15;
  v18 = MEMORY[0x28223BE20](v16);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v17 + 16);
    v21 = v17 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      (v54)(v56, v26, v12, v18);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_20C1373C4();
      v32 = v59;
      sub_20C1373C4();
      v62 = sub_20C132E04();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_20B69F424(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v160 = sub_20C132E94();
  v8 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v158 = &v134 - v11;
  v12 = sub_20C137404();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v141 = &v134 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v150 = &v134 - v16;
  MEMORY[0x28223BE20](v17);
  v157 = &v134 - v18;
  v20 = MEMORY[0x28223BE20](v19);
  v161 = &v134 - v21;
  v22 = a3[1];
  v146 = a3;
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v12 = v24;
    v24 = *v138;
    if (!*v138)
    {
      goto LABEL_134;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = v146;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_128:
      v12 = sub_20B6A07A0(v12);
    }

    v163 = v12;
    v130 = *(v12 + 16);
    if (v130 >= 2)
    {
      while (*v52)
      {
        v131 = *(v12 + 16 * v130);
        v132 = *(v12 + 16 * (v130 - 1) + 40);
        sub_20B6A0024(*v52 + *(v13 + 72) * v131, *v52 + *(v13 + 72) * *(v12 + 16 * (v130 - 1) + 32), *v52 + *(v13 + 72) * v132, v24);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v132 < v131)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_20B6A07A0(v12);
        }

        if (v130 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v133 = (v12 + 16 * v130);
        *v133 = v131;
        v133[1] = v132;
        v163 = v12;
        sub_20B6A0714(v130 - 1);
        v12 = v163;
        v130 = *(v163 + 16);
        if (v130 <= 1)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_132;
    }

LABEL_106:

    return;
  }

  v134 = a4;
  v23 = 0;
  v154 = (v8 + 8);
  v155 = v13 + 16;
  v152 = (v13 + 32);
  v153 = (v13 + 8);
  v24 = MEMORY[0x277D84F90];
  v156 = v12;
  v137 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v146;
    }

    else
    {
      v147 = v22;
      v135 = v24;
      v136 = v5;
      v26 = v23;
      v139 = v23;
      v27 = *v146;
      v162 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v161, v29, v12, v20);
      v32 = v157;
      v148 = v31;
      (v31)(v157, v27 + v28 * v26, v30);
      v33 = v158;
      sub_20C1373C4();
      v34 = v159;
      sub_20C1373C4();
      LODWORD(v149) = sub_20C132E04();
      v35 = *v154;
      v36 = v34;
      v37 = v160;
      (*v154)(v36, v160);
      v145 = v35;
      (v35)(v33, v37);
      v38 = *(v137 + 8);
      v24 = v153;
      v38(v32, v30);
      v144 = v38;
      v38(v161, v30);
      v39 = v139 + 2;
      v151 = v28;
      v40 = v162 + v28 * (v139 + 2);
      while (1)
      {
        v41 = v147;
        if (v147 == v39)
        {
          break;
        }

        v42 = v156;
        v43 = v148;
        v148();
        v44 = v157;
        v43(v157, v29, v42);
        v45 = v158;
        sub_20C1373C4();
        v46 = v159;
        sub_20C1373C4();
        LOBYTE(v162) = sub_20C132E04() & 1;
        LODWORD(v162) = v162;
        v47 = v46;
        v48 = v160;
        v49 = v29;
        v50 = v145;
        (v145)(v47, v160);
        v50(v45, v48);
        v24 = v153;
        v51 = v144;
        (v144)(v44, v42);
        v51(v161, v42);
        ++v39;
        v40 += v151;
        v29 = &v151[v49];
        if ((v149 & 1) != v162)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v136;
      v52 = v146;
      v13 = v137;
      v12 = v156;
      v23 = v139;
      if ((v149 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v139)
      {
        goto LABEL_125;
      }

      if (v139 < v41)
      {
        v53 = v41;
        v54 = v151 * (v41 - 1);
        v55 = v41 * v151;
        v147 = v41;
        v56 = v139;
        v57 = v139 * v151;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v152;
            (*v152)(v141, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v59((v58 + v54), v141, v12);
            v52 = v146;
          }

          ++v56;
          v54 -= v151;
          v55 -= v151;
          v57 += v151;
        }

        while (v56 < v53);
        v5 = v136;
        v13 = v137;
        v24 = v135;
        v23 = v139;
        v41 = v147;
      }

      else
      {
LABEL_23:
        v24 = v135;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v134)
      {
        if (__OFADD__(v23, v134))
        {
          goto LABEL_126;
        }

        if (v23 + v134 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v134;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = sub_20BC05740(0, *(v24 + 2) + 1, 1, v24);
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      v24 = sub_20BC05740((v63 > 1), v64 + 1, 1, v24);
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v138;
    if (!*v138)
    {
      goto LABEL_133;
    }

    v142 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v146)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_20B6A0024(*v146 + v52[9] * v107, *v146 + v52[9] * *&v24[16 * v68 + 32], *v146 + v52[9] * v108, v13);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_20B6A07A0(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v163 = v24;
        sub_20B6A0714(v68);
        v24 = v163;
        v65 = *(v163 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = v146[1];
    v23 = v142;
    v13 = v52;
    if (v142 >= v22)
    {
      goto LABEL_96;
    }
  }

  v135 = v24;
  v136 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v151 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v148 = -v111;
  v139 = v23;
  v113 = (v23 - v41);
  v149 = v110;
  v140 = v111;
  v114 = v110 + v41 * v111;
  v142 = v61;
LABEL_87:
  v147 = v41;
  v143 = v114;
  v144 = v113;
  v115 = v114;
  v145 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v161;
    v117 = v151;
    (v151)(v161, v115, v12, v20);
    v118 = v157;
    v117(v157, v116, v12);
    v119 = v158;
    sub_20C1373C4();
    v120 = v159;
    sub_20C1373C4();
    LODWORD(v162) = sub_20C132E04();
    v121 = *v154;
    v122 = v120;
    v123 = v160;
    (*v154)(v122, v160);
    v124 = v119;
    v12 = v156;
    v121(v124, v123);
    v125 = *v153;
    (*v153)(v118, v12);
    v125(v52, v12);
    if ((v162 & 1) == 0)
    {
LABEL_86:
      v41 = v147 + 1;
      v112 = &v145[v140];
      v113 = v144 - 1;
      v62 = v142;
      v114 = v143 + v140;
      if (v147 + 1 != v142)
      {
        goto LABEL_87;
      }

      v5 = v136;
      v13 = v137;
      v24 = v135;
      v23 = v139;
      if (v142 < v139)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v149)
    {
      break;
    }

    v126 = *v152;
    v127 = v150;
    (*v152)(v150, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v148 + v116;
    v115 += v148;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
}

void sub_20B6A0024(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v72 = a3;
  v67 = sub_20C132E94();
  v7 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v65 = &v55 - v10;
  v71 = sub_20C137404();
  v11 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v64 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v69 = &v55 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = v72 - a2;
  if (v72 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v75 = a1;
  v74 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v20;
    if (v20 >= 1)
    {
      v38 = -v16;
      v59 = (v7 + 8);
      v60 = (v11 + 16);
      v57 = a4;
      v58 = (v11 + 8);
      v39 = v37;
      v70 = a1;
      v61 = -v16;
      v40 = v71;
      while (2)
      {
        while (1)
        {
          v55 = v37;
          v41 = a2;
          v42 = a2 + v38;
          v62 = v41;
          v63 = v42;
          while (1)
          {
            v43 = v72;
            if (v41 <= a1)
            {
              v75 = v41;
              v73 = v55;
              goto LABEL_59;
            }

            v56 = v37;
            v72 += v38;
            v44 = v39 + v38;
            v45 = *v60;
            (*v60)();
            v46 = v64;
            (v45)(v64, v42, v40);
            v47 = v65;
            sub_20C1373C4();
            v48 = v66;
            sub_20C1373C4();
            v68 = sub_20C132E04();
            v49 = *v59;
            v50 = v48;
            v51 = v67;
            (*v59)(v50, v67);
            v49(v47, v51);
            v52 = *v58;
            (*v58)(v46, v40);
            v52(v69, v40);
            if (v68)
            {
              break;
            }

            v37 = v44;
            v53 = v57;
            if (v43 < v39 || v72 >= v39)
            {
              swift_arrayInitWithTakeFrontToBack();
              v42 = v63;
              v38 = v61;
            }

            else
            {
              v42 = v63;
              v38 = v61;
              if (v43 != v39)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v39 = v44;
            a1 = v70;
            v41 = v62;
            if (v44 <= v53)
            {
              a2 = v62;
              goto LABEL_58;
            }
          }

          v54 = v57;
          if (v43 < v62 || v72 >= v62)
          {
            break;
          }

          a2 = v63;
          a1 = v70;
          v37 = v56;
          v38 = v61;
          if (v43 != v62)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v39 <= v54)
          {
            goto LABEL_58;
          }
        }

        a2 = v63;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v70;
        v37 = v56;
        v38 = v61;
        if (v39 > v54)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v75 = a2;
    v73 = v37;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v63 = a4 + v19;
    v73 = a4 + v19;
    if (v19 >= 1 && a2 < v72)
    {
      v22 = *(v11 + 16);
      v59 = (v7 + 8);
      v60 = v22;
      v61 = v16;
      v62 = v11 + 16;
      v58 = (v11 + 8);
      v23 = v71;
      do
      {
        v70 = a1;
        v24 = v69;
        v25 = v60;
        (v60)(v69, a2, v23);
        v26 = v64;
        (v25)(v64, a4, v23);
        v27 = v65;
        sub_20C1373C4();
        v28 = v66;
        sub_20C1373C4();
        v68 = sub_20C132E04();
        v29 = a2;
        v30 = *v59;
        v31 = v28;
        v32 = a4;
        v33 = v67;
        (*v59)(v31, v67);
        v30(v27, v33);
        v34 = *v58;
        (*v58)(v26, v23);
        v34(v24, v23);
        if (v68)
        {
          v35 = v61;
          a2 = v29 + v61;
          v36 = v70;
          a4 = v32;
          if (v70 < v29 || v70 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v29;
          v35 = v61;
          a4 = v32 + v61;
          v36 = v70;
          if (v70 < v32 || v70 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v70 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v74 = a4;
        }

        a1 = v36 + v35;
        v75 = a1;
      }

      while (a4 < v63 && a2 < v72);
    }
  }

LABEL_59:
  sub_20B6A0B34(&v75, &v74, &v73, MEMORY[0x277D53330]);
}

uint64_t sub_20B6A0714(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_20B6A07A0(v3);
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
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_20B6A09BC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_20B6A0B34(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_20B6A0C1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763840);
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

unint64_t *sub_20B6A0D20(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20B6A1158(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_20B6A10A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6A1110(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_20B6A1158(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v40 = a1;
  v6 = sub_20C134D54();
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v48 = a3;
  v15 = *(a3 + 56);
  v14 = a3 + 56;
  v13 = v15;
  v16 = 1 << *(v14 - 24);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  v19 = (v16 + 63) >> 6;
  v41 = 0;
  v42 = v8 + 16;
  v49 = a4 + 56;
  v43 = v8;
  v44 = (v8 + 8);
  v45 = v11;
  v46 = v7;
  while (v18)
  {
    v20 = __clz(__rbit64(v18));
    v18 &= v18 - 1;
LABEL_13:
    v23 = v20 | (v12 << 6);
    v24 = *(v48 + 48);
    v25 = *(v43 + 72);
    v47 = v23;
    (*(v43 + 16))(v11, v24 + v25 * v23, v6, v9);
    v26 = sub_20C134D24();
    v28 = v27;
    if (*(a4 + 16) && (v29 = v26, sub_20C13E164(), sub_20C13CA64(), v30 = sub_20C13E1B4(), v31 = -1 << *(a4 + 32), v32 = v30 & ~v31, ((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
    {
      v33 = ~v31;
      while (1)
      {
        v34 = (*(a4 + 48) + 16 * v32);
        v35 = *v34 == v29 && v34[1] == v28;
        if (v35 || (sub_20C13DFF4() & 1) != 0)
        {
          break;
        }

        v32 = (v32 + 1) & v33;
        if (((*(v49 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
      *(v40 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
      if (__OFADD__(v41++, 1))
      {
        __break(1u);
LABEL_26:
        v37 = v48;

        sub_20BC0F3D8(v40, v39, v41, v37);
        return;
      }
    }

    else
    {
LABEL_5:

      v11 = v45;
      v6 = v46;
      (*v44)(v45, v46);
    }
  }

  v21 = v12;
  while (1)
  {
    v12 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v12 >= v19)
    {
      goto LABEL_26;
    }

    v22 = *(v14 + 8 * v12);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v18 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_20B6A145C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v53 = *MEMORY[0x277D85DE8];
  v6 = sub_20C134D54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  v52 = a2;
  if (v9 > 0xD)
  {
    goto LABEL_30;
  }

  while (1)
  {
    v41 = v10;
    v42 = v3;
    v40 = &v40;
    MEMORY[0x28223BE20](v12);
    v43 = &v40 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v43, v11);
    v10 = 0;
    v13 = a1 + 56;
    v14 = 1 << *(a1 + 32);
    v15 = v14 < 64 ? ~(-1 << v14) : -1;
    v16 = v15 & *(a1 + 56);
    v11 = (v14 + 63) >> 6;
    v17 = v7 + 16;
    v18 = v7;
    v7 = a2 + 56;
    v48 = v17;
    v49 = v18;
    v44 = 0;
    v45 = (v18 + 8);
    v46 = v6;
    v47 = a1;
    while (v16)
    {
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v22 = v19 | (v10 << 6);
      v23 = *(a1 + 48);
      v24 = *(v49 + 72);
      v50 = v22;
      (*(v49 + 16))(v51, v23 + v24 * v22, v6);
      v25 = sub_20C134D24();
      v27 = v26;
      if (*(v52 + 16) && (v28 = v25, sub_20C13E164(), sub_20C13CA64(), v29 = sub_20C13E1B4(), v30 = v52, v31 = -1 << *(v52 + 32), v32 = v29 & ~v31, ((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v3 = ~v31;
        while (1)
        {
          v33 = (*(v30 + 48) + 16 * v32);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_20C13DFF4() & 1) != 0)
          {
            break;
          }

          v32 = (v32 + 1) & v3;
          v30 = v52;
          if (((*(v7 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v6 = v46;
        (*v45)(v51, v46);
        *&v43[(v50 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v50;
        v35 = __OFADD__(v44++, 1);
        a1 = v47;
        if (v35)
        {
          __break(1u);
LABEL_27:
          v36 = sub_20BC0F3D8(v43, v41, v44, a1);

          return v36;
        }
      }

      else
      {
LABEL_6:

        v6 = v46;
        (*v45)(v51, v46);
        a1 = v47;
      }
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v10 >= v11)
      {
        goto LABEL_27;
      }

      v21 = *(v13 + 8 * v10);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v16 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_30:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    a2 = v52;
  }

  v38 = swift_slowAlloc();
  v39 = v52;

  v36 = sub_20B6A0D20(v38, v10, a1, v39);

  MEMORY[0x20F2F6A40](v38, -1, -1);

  return v36;
}

uint64_t sub_20B6A195C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C134684() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_20C137094() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_20C135174() - 8);
  v12 = *(v2 + v10);
  v13 = v2 + ((v10 + *(v11 + 80) + 8) & ~*(v11 + 80));

  return sub_20B69C834(a1, v2 + v6, v2 + v9, v12, v13, a2);
}

uint64_t sub_20B6A1AD4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

id sub_20B6A1BB4()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 112);
    v15[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 96);
    v15[7] = v4;
    v16 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 128);
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 48);
    v15[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 32);
    v15[3] = v5;
    v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 80);
    v15[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 64);
    v15[5] = v6;
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout + 16);
    v15[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout);
    v15[1] = v7;
    v8 = objc_allocWithZone(type metadata accessor for VideoBrickContentView());
    sub_20B60C224(v15, v14);
    v9 = v0;
    v10 = sub_20BCFA32C(v15, 0.0, 0.0, 0.0, 0.0);
    [v10 setTranslatesAutoresizingMaskIntoConstraints_];
    v11 = *(v0 + v1);
    *(v9 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_20B6A1CA8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView] = 0;
  v11 = sub_20C1380F4();
  v12 = 10.0;
  if (!v11)
  {
    goto LABEL_4;
  }

  if (v11 == 1)
  {
    v12 = 15.0;
LABEL_4:
    v13 = *MEMORY[0x277CDA138];
    v14 = &v4[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout];
    __asm { FMOV            V2.2D, #5.0 }

    *v14 = xmmword_20C150A50;
    *(v14 + 1) = _Q2;
    *(v14 + 4) = 0x4014000000000000;
    *(v14 + 5) = v13;
    *(v14 + 6) = 0x4020000000000000;
    *(v14 + 7) = v12;
    *(v14 + 8) = v12;
    *(v14 + 9) = v12;
    *(v14 + 5) = xmmword_20C150A60;
    *(v14 + 6) = _Q2;
    *(v14 + 7) = _Q2;
    *(v14 + 16) = 0x4014000000000000;
    v31.receiver = v4;
    v31.super_class = type metadata accessor for VideoBrickItemCell();
    v20 = v13;
    v21 = objc_msgSendSuper2(&v31, sel_initWithFrame_, a1, a2, a3, a4);
    sub_20B6A24A0();
    v22 = sub_20B6A1BB4();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v24 = &v22[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
    v25 = *&v22[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
    *v24 = sub_20B6A2F5C;
    v24[1] = v23;

    sub_20B583ECC(v25);

    v26 = *&v21[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView];

    v27 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v28 = &v26[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler];
    v29 = *&v26[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchFallbackArtworkHandler];
    *v28 = sub_20B6A2F64;
    v28[1] = v27;

    sub_20B583ECC(v29);

    return v21;
  }

  result = sub_20C13DE24();
  __break(1u);
  return result;
}

uint64_t sub_20B6A1F70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = v6 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v9 = *(v8 + 8);
        ObjectType = swift_getObjectType();
        (*(v9 + 168))(v7, a1, ObjectType, v9);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B5F6F04();
        v12 = swift_allocError();
        *(swift_allocObject() + 16) = v12;
        v13 = v12;
        sub_20B51C88C(0, &qword_27C7626E8);
        sub_20C137CA4();

        swift_unknownObjectRelease();
      }

      v11 = 0;
    }

    else
    {

      v11 = 1;
    }
  }

  else
  {
    v11 = 1;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  return (*(*(v14 - 8) + 56))(a2, v11, 1, v14);
}

uint64_t sub_20B6A2150@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_unknownObjectWeakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = v8 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v11 = *(v10 + 8);
        ObjectType = swift_getObjectType();
        (*(v11 + 176))(v9, ObjectType, v11, a2, a3);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }

      else
      {
        sub_20B5F6F04();
        v14 = swift_allocError();
        *(swift_allocObject() + 16) = v14;
        v15 = v14;
        sub_20B51C88C(0, &qword_27C7626E8);
        sub_20C137CA4();

        swift_unknownObjectRelease();
      }

      v13 = 0;
    }

    else
    {

      v13 = 1;
    }
  }

  else
  {
    v13 = 1;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0);
  return (*(*(v16 - 8) + 56))(a1, v13, 1, v16);
}

void sub_20B6A24A0()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 setClipsToBounds_];

  v3 = [v0 contentView];
  v4 = [v3 layer];

  v5 = &v1[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout];
  [v4 setCornerCurve_];

  v6 = [v1 contentView];
  v7 = [v6 layer];

  [v7 setCornerRadius_];
  v8 = [v1 contentView];
  v9 = sub_20B6A1BB4();
  [v8 addSubview_];

  v10 = objc_opt_self();
  v11 = *&v1[OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView];
  v12 = [v1 contentView];
  v14 = *MEMORY[0x277D768C8];
  v13 = *(MEMORY[0x277D768C8] + 8);
  v15 = *(MEMORY[0x277D768C8] + 16);
  v16 = *(MEMORY[0x277D768C8] + 24);
  v17 = [v11 leadingAnchor];
  v18 = [v12 leadingAnchor];
  v19 = [v17 constraintEqualToAnchor:v18 constant:v13];

  LODWORD(v20) = 1148846080;
  [v19 setPriority_];
  v21 = v19;
  v22 = [v11 trailingAnchor];
  v23 = [v12 trailingAnchor];
  v24 = [v22 constraintEqualToAnchor:v23 constant:-v16];

  LODWORD(v25) = 1148846080;
  [v24 setPriority_];
  v26 = v24;
  v27 = [v11 topAnchor];
  v28 = [v12 topAnchor];
  v29 = [v27 constraintEqualToAnchor:v28 constant:v14];

  LODWORD(v30) = 1148846080;
  [v29 setPriority_];
  v31 = [v11 bottomAnchor];
  v32 = [v12 bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32 constant:-v15];

  LODWORD(v34) = 1148846080;
  [v33 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_20C14FE90;
  *(v35 + 32) = v21;
  *(v35 + 40) = v26;
  *(v35 + 48) = v29;
  *(v35 + 56) = v33;
  v36 = v29;

  sub_20B51C88C(0, &qword_281100500);
  v37 = sub_20C13CC54();

  [v10 activateConstraints_];
}

id sub_20B6A28D4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for VideoBrickItemCell()
{
  result = qword_281102F10;
  if (!qword_281102F10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B6A29F4()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20B6A2AA4(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20B6A2AF0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20B6A2B48(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20B6A2BA8(unint64_t a1)
{
  v2 = sub_20B6A1BB4();
  sub_20BCFB208(a1);
}

unint64_t sub_20B6A2C30(void *a1)
{
  v2 = sub_20C1380F4();
  if (v2)
  {
    if (v2 == 1)
    {
      [objc_msgSend(a1 container)];
      v5 = v4;
      swift_unknownObjectRelease();

      return sub_20B72097C(1, 2.0, v5);
    }

    else
    {
      result = sub_20C13DE24();
      __break(1u);
    }
  }

  else
  {
    [objc_msgSend(a1 container)];
    result = swift_unknownObjectRelease();
    if (qword_27C7606D0 != -1)
    {
      result = swift_once();
    }

    if (qword_27C7606E0 != -1)
    {
      return swift_once();
    }
  }

  return result;
}

void sub_20B6A2DD0()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell____lazy_storage___catalogTipBrickContentView) = 0;
  v3 = sub_20C1380F4();
  if ((v3 - 2) >= 2)
  {
    v4 = *MEMORY[0x277CDA138];
    if (v3)
    {
      v5 = 15.0;
    }

    else
    {
      v5 = 10.0;
    }

    v6 = v0 + OBJC_IVAR____TtC9SeymourUI18VideoBrickItemCell_layout;
    __asm { FMOV            V2.2D, #5.0 }

    *v6 = xmmword_20C150A50;
    *(v6 + 16) = _Q2;
    *(v6 + 32) = 0x4014000000000000;
    *(v6 + 40) = v4;
    *(v6 + 48) = 0x4020000000000000;
    *(v6 + 56) = v5;
    *(v6 + 64) = v5;
    *(v6 + 72) = v5;
    *(v6 + 80) = xmmword_20C150A60;
    *(v6 + 96) = _Q2;
    *(v6 + 128) = 0x4014000000000000;
    *(v6 + 112) = _Q2;
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B6A2F6C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v4 = UIImagePNGRepresentation(v3);
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    v6 = sub_20C132C54();

    return v6;
  }

  v11 = [objc_opt_self() smu_preferredRendererFormat];
  v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v11 format:{*&a1, *&a2}];

  v13 = swift_allocObject();
  v13[2] = v3;
  v13[3] = 0;
  v13[4] = 0;
  v13[5] = a1;
  v13[6] = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B6A40AC;
  *(v14 + 24) = v13;
  v19[4] = sub_20B6A40BC;
  v19[5] = v14;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_20B918140;
  v19[3] = &block_descriptor_7;
  v15 = _Block_copy(v19);
  v16 = v3;

  v17 = [v12 PNGDataWithActions_];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v6 = sub_20C132C54();

    return v6;
  }

  __break(1u);
  return result;
}

id sub_20B6A3198(int a1, id a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  [a2 size];
  v15.origin.x = a3;
  v15.origin.y = a4;
  v15.size.width = a5;
  v15.size.height = a6;
  v14 = AVMakeRectWithAspectRatioInsideRect(v13, v15);

  return [a2 drawInRect_];
}

uint64_t sub_20B6A3218(void *a1)
{
  if (!a1)
  {
    v21 = UIImagePNGRepresentation(v1);
    if (!v21)
    {
      return 0;
    }

    v22 = v21;
    v20 = sub_20C132C54();

    return v20;
  }

  v2 = a1;
  [(UIImage *)v1 size];
  v4 = v3;
  v6 = v5;
  [(UIImage *)v1 size];
  v8 = v7;
  v10 = v9;
  v11 = [objc_opt_self() smu_preferredRendererFormat];
  v12 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize:v11 format:{v8, v10}];

  v13 = swift_allocObject();
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v1;
  v13[5] = v4;
  v13[6] = v6;
  v13[7] = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B6A40C4;
  *(v14 + 24) = v13;
  v23[4] = sub_20B6A40E0;
  v23[5] = v14;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_20B918140;
  v23[3] = &block_descriptor_15;
  v15 = _Block_copy(v23);
  v16 = v2;
  v17 = v1;

  v18 = [v12 PNGDataWithActions_];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    v20 = sub_20C132C54();

    return v20;
  }

  __break(1u);
  return result;
}

void sub_20B6A3484(void *a1, void *a2, void *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  c = [a1 CGContext];
  CGContextSetBlendMode(c, kCGBlendModeNormal);
  [a2 drawInRect_];
  CGContextSetBlendMode(c, kCGBlendModeSourceIn);
  v13 = [a3 CGColor];
  CGContextSetFillColorWithColor(c, v13);

  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  CGContextFillRect(c, v16);
}

uint64_t sub_20B6A3574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 56) = v12;
  *(v8 + 64) = v13;
  *(v8 + 96) = a8;
  *(v8 + 40) = a6;
  *(v8 + 48) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a3;
  v9 = sub_20C13BB84();
  *(v8 + 72) = v9;
  *(v8 + 80) = *(v9 - 8);
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6A364C, 0, 0);
}

uint64_t sub_20B6A364C()
{
  v28 = v0;
  v1 = sub_20C13C914();
  v2 = objc_opt_self();
  v3 = [v2 systemImageNamed_];

  if (!v3)
  {
    v4 = sub_20C13C914();
    v3 = [v2 smm:v4 systemImageNamed:?];
  }

  v5 = *(v0 + 32);
  v6 = [v3 imageWithRenderingMode_];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 imageWithTintColor_];

    v7 = v8;
  }

  v9 = sub_20B6A2F6C(*(v0 + 40), *(v0 + 48), *(v0 + 96) & 1);
  v11 = v10;

  if (v11 >> 60 == 15)
  {
    sub_20C13B554();

    v12 = sub_20C13BB74();
    v13 = sub_20C13D1D4();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 80);
    v16 = *(v0 + 88);
    v17 = *(v0 + 72);
    if (v14)
    {
      v26 = *(v0 + 88);
      v19 = *(v0 + 56);
      v18 = *(v0 + 64);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_20B51E694(v19, v18, &v27);
      _os_log_impl(&dword_20B517000, v12, v13, "Unable to serialize system image %{public}s to PNG", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v20, -1, -1);

      (*(v15 + 8))(v26, v17);
    }

    else
    {

      (*(v15 + 8))(v16, v17);
    }

    sub_20B6A3954();
    swift_allocError();
    *v24 = 3;
    swift_willThrow();

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {

    v22 = *(v0 + 8);

    return v22(v9, v11);
  }
}

unint64_t sub_20B6A3954()
{
  result = qword_27C763880;
  if (!qword_27C763880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763880);
  }

  return result;
}

uint64_t sub_20B6A39A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[2] = a3;
  v8[3] = a4;
  v9 = sub_20C13BB84();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6A3A70, 0, 0);
}

uint64_t sub_20B6A3A70()
{
  v22 = v0;
  v1 = *(v0 + 32);
  v2 = sub_20C13C914();
  v3 = [objc_opt_self() imageNamed:v2 inBundle:v1 compatibleWithTraitCollection:0];

  if (v3 && (v4 = sub_20B6A3218(*(v0 + 40)), v6 = v5, v3, v6 >> 60 != 15))
  {

    v20 = *(v0 + 8);

    return v20(v4, v6);
  }

  else
  {
    sub_20C13B554();

    v7 = sub_20C13BB74();
    v8 = sub_20C13D1D4();

    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 72);
    v10 = *(v0 + 80);
    v12 = *(v0 + 64);
    if (v9)
    {
      v14 = *(v0 + 48);
      v13 = *(v0 + 56);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_20B51E694(v14, v13, &v21);
      _os_log_impl(&dword_20B517000, v7, v8, "Unable to serialize asset catalog %{public}s to PNG", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x20F2F6A40](v16, -1, -1);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    (*(v11 + 8))(v10, v12);
    sub_20B6A3954();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_20B6A3CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v9 = sub_20C13BB84();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B6A3DA8, 0, 0);
}

uint64_t sub_20B6A3DA8()
{
  v32 = v0;
  v1 = *(v0 + 40);
  if (v1 && (!*(v0 + 64) ? (v2 = v1) : (v2 = [*(v0 + 40) imageWithTintColor_]), v3 = v2, v4 = UIImagePNGRepresentation(v2), v3, v4))
  {
    v5 = sub_20C132C54();
    v7 = v6;

    v8 = *(v0 + 8);

    return v8(v5, v7);
  }

  else
  {
    sub_20C13B554();
    v10 = v1;

    v11 = sub_20C13BB74();
    v12 = sub_20C13D1D4();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    if (v13)
    {
      v18 = *(v0 + 72);
      v17 = *(v0 + 80);
      v30 = *(v0 + 104);
      v19 = *(v0 + 56);
      v28 = *(v0 + 40);
      v29 = *(v0 + 88);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31[0] = v21;
      *v20 = 136446722;
      *(v20 + 4) = sub_20B51E694(v18, v17, v31);
      *(v20 + 12) = 2160;
      *(v20 + 14) = 1752392040;
      *(v20 + 22) = 2080;
      *(v0 + 16) = v28;
      *(v0 + 32) = v19;
      v22 = v10;
      v23 = sub_20C13C9D4();
      v25 = sub_20B51E694(v23, v24, v31);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_20B517000, v11, v12, "Unable to serialize spritesheet in asset catalog %{public}s to PNG -> %{mask.hash}s)", v20, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v21, -1, -1);
      MEMORY[0x20F2F6A40](v20, -1, -1);

      (*(v14 + 8))(v30, v29);
    }

    else
    {

      (*(v14 + 8))(v15, v16);
    }

    sub_20B6A3954();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t AVURLAsset.fetchAudibleMediaSelectionGroup(queue:)(void *a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = a1;
  sub_20B6A42AC();
  v4 = v1;
  v5 = a1;

  return sub_20C137C94();
}

void sub_20B6A4178(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *MEMORY[0x277CE5DE0];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = sub_20B5D9B44;
  v10[4] = v8;
  v13[4] = sub_20B6A4AE8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B98FE2C;
  v13[3] = &block_descriptor_8;
  v11 = _Block_copy(v13);

  v12 = a4;

  [a3 loadMediaSelectionGroupForMediaCharacteristic:v9 completionHandler:v11];
  _Block_release(v11);
}

unint64_t sub_20B6A42AC()
{
  result = qword_27C763230;
  if (!qword_27C763230)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27C763230);
  }

  return result;
}

uint64_t sub_20B6A42F8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v57 = a3;
  v8 = sub_20C13C4B4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v59 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_20C13C4F4();
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v58 = &v50[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v19 = &v50[-v18];
  sub_20C13B574();
  sub_20C13BB64();
  v55 = *(v14 + 8);
  v55(v19, v13);
  if (a2)
  {
    v54 = v11;
    v20 = a2;
    sub_20C13B574();
    v21 = a2;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = v9;
      v25 = v24;
      v52 = swift_slowAlloc();
      aBlock = v52;
      *v25 = 136315138;
      swift_getErrorValue();
      v51 = v23;
      v26 = MEMORY[0x20F2F5850](v61, v62);
      v28 = a2;
      v29 = a5;
      v30 = v8;
      v31 = sub_20B51E694(v26, v27, &aBlock);

      *(v25 + 4) = v31;
      v8 = v30;
      a5 = v29;
      a2 = v28;
      _os_log_impl(&dword_20B517000, v22, v51, "Error loading media selection group: %s", v25, 0xCu);
      v32 = v52;
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x20F2F6A40](v32, -1, -1);
      v33 = v25;
      v9 = v53;
      MEMORY[0x20F2F6A40](v33, -1, -1);
    }

    v55(v16, v13);
    v34 = swift_allocObject();
    *(v34 + 16) = v56;
    *(v34 + 24) = a5;
    v68 = sub_20B6A4C7C;
    v69 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v65 = 1107296256;
    v66 = sub_20B7B548C;
    v67 = &block_descriptor_24;
    v35 = _Block_copy(&aBlock);

    v36 = v58;
    sub_20C13C4D4();
    v63 = MEMORY[0x277D84F90];
    sub_20B6A4C28(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v37 = v59;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v9 + 8))(v37, v8);
    (*(v60 + 8))(v36, v54);
  }

  else
  {
    v38 = swift_allocObject();
    v38[2] = v56;
    v38[3] = a5;
    if (a1)
    {
      v38[4] = a1;
      v68 = sub_20B6A4BF4;
      v69 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = sub_20B7B548C;
      v67 = &block_descriptor_18;
      v39 = _Block_copy(&aBlock);
      v40 = a1;

      v41 = v40;
      v42 = v58;
      sub_20C13C4D4();
      v63 = MEMORY[0x277D84F90];
      sub_20B6A4C28(&qword_281103AB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      sub_20B682EA8();
      v43 = v59;
      sub_20C13DA94();
      MEMORY[0x20F2F4AF0](0, v42, v43, v39);
      _Block_release(v39);

      (*(v9 + 8))(v43, v8);
      v44 = *(v60 + 8);
      v45 = v42;
    }

    else
    {
      v68 = sub_20B6A4BD8;
      v69 = v38;
      aBlock = MEMORY[0x277D85DD0];
      v65 = 1107296256;
      v66 = sub_20B7B548C;
      v67 = &block_descriptor_12;
      v46 = _Block_copy(&aBlock);

      v47 = v58;
      sub_20C13C4D4();
      v63 = MEMORY[0x277D84F90];
      sub_20B6A4C28(&qword_281103AB0, MEMORY[0x277D85198]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
      sub_20B682EA8();
      v48 = v59;
      sub_20C13DA94();
      MEMORY[0x20F2F4AF0](0, v47, v48, v46);
      _Block_release(v46);
      (*(v9 + 8))(v48, v8);
      v44 = *(v60 + 8);
      v45 = v47;
    }

    v44(v45, v11);
  }
}

void sub_20B6A4AF4(void (*a1)(void *, uint64_t))
{
  v2 = sub_20C135224();
  sub_20B6A4C28(&qword_27C763888, MEMORY[0x277D516B0]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D516A8], v2);
  a1(v3, 1);
}

uint64_t sub_20B6A4C28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t QueuedSessionViewController.supportedInterfaceOrientations.getter()
{
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform) == 1)
  {
    return 30;
  }

  else
  {
    return 24;
  }
}

char *QueuedSessionViewController.init(dependencies:queueItems:playContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_dependencies] = a1;

  sub_20C133AA4();
  v4[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform] = v16;
  type metadata accessor for QueuedSessionPresenter(0);
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_presenter] = sub_20BC789AC(a1, a2, a3, a4);
  v15.receiver = v4;
  v15.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v15, sel_initWithNibName_bundle_, 0, 0);
  *(*&v10[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_presenter] + 24) = &off_28229D4A8;
  swift_unknownObjectWeakAssign();
  v11 = v10;
  result = [v11 view];
  if (result)
  {
    v13 = result;

    v14 = [objc_opt_self() systemBackgroundColor];
    [v13 setBackgroundColor_];

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall QueuedSessionViewController.viewDidLoad()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_viewDidLoad);
  sub_20BC782A8();
}

id QueuedSessionViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_20C13C914();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id QueuedSessionViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20B6A5144()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = [v1 childViewControllers];
  sub_20B51C88C(0, &qword_281100550);
  v7 = sub_20C13CC74();

  if (v7 >> 62)
  {
    v8 = sub_20C13DB34();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = [v1 childViewControllers];
  v10 = sub_20C13CC74();
  v11 = v10;
  v12 = v10 >> 62;
  if (v8 < 2)
  {
    if (v12)
    {
      if (sub_20C13DB34())
      {
LABEL_15:
        if ((v11 & 0xC000000000000001) == 0)
        {
          if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_36:
            __break(1u);
            goto LABEL_37;
          }

          v19 = *(v11 + 32);
LABEL_18:
          v20 = v19;

          v21 = [v20 view];

          if (v21)
          {

            [v21 setHidden_];
            goto LABEL_66;
          }

          goto LABEL_76;
        }

LABEL_33:
        v19 = MEMORY[0x20F2F5430](0, v11);
        goto LABEL_18;
      }
    }

    else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    return;
  }

  if (!v12)
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_22:

    goto LABEL_23;
  }

  v13 = sub_20C13DB34();
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_6:
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
    goto LABEL_33;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x20F2F5430](v15, v11);
    goto LABEL_11;
  }

  if ((v15 & 0x8000000000000000) != 0)
  {
    goto LABEL_36;
  }

  if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v16 = *(v11 + 8 * v15 + 32);
LABEL_11:
  v17 = v16;

  v18 = [v17 view];

  if (!v18)
  {
    goto LABEL_77;
  }

  [v18 setHidden_];
LABEL_23:
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform) != 1)
  {
    goto LABEL_40;
  }

  v22 = [v1 childViewControllers];
  v9 = sub_20C13CC74();

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_26;
    }

LABEL_39:

    goto LABEL_40;
  }

LABEL_38:
  if (!sub_20C13DB34())
  {
    goto LABEL_39;
  }

LABEL_26:
  if ((v9 & 0xC000000000000001) != 0)
  {
    goto LABEL_74;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    return;
  }

  for (i = *(v9 + 32); ; i = MEMORY[0x20F2F5430](0, v9))
  {
    v24 = i;

    [v24 dismissViewControllerAnimated:1 completion:0];

LABEL_40:
    v25 = [v1 childViewControllers];
    v26 = sub_20C13CC74();

    if (v26 >> 62)
    {
      if (!sub_20C13DB34())
      {
LABEL_47:

        goto LABEL_48;
      }
    }

    else if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x20F2F5430](0, v26);
    }

    else
    {
      if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_71:
        v34 = MEMORY[0x20F2F5430](0, v1);
LABEL_62:
        v21 = v34;
        goto LABEL_65;
      }

      v27 = *(v26 + 32);
    }

    v28 = v27;

    [v28 willMoveToParentViewController_];

LABEL_48:
    v9 = [v1 childViewControllers];
    v29 = sub_20C13CC74();
    v30 = v29;
    if (v29 >> 62)
    {
      if (!sub_20C13DB34())
      {
LABEL_56:

        goto LABEL_57;
      }
    }

    else if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_56;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x20F2F5430](0, v30);
    }

    else
    {
      if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_73;
      }

      v31 = *(v30 + 32);
    }

    v32 = v31;

    v33 = [v32 view];

    if (!v33)
    {
      goto LABEL_78;
    }

    [v33 removeFromSuperview];
LABEL_57:
    v9 = [v1 childViewControllers];
    v1 = sub_20C13CC74();

    if (v1 >> 62)
    {
      break;
    }

    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_64;
    }

LABEL_59:
    if ((v1 & 0xC000000000000001) != 0)
    {
      goto LABEL_71;
    }

    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v34 = *(v1 + 32);
      goto LABEL_62;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    ;
  }

  if (sub_20C13DB34())
  {
    goto LABEL_59;
  }

LABEL_64:
  v21 = 0;
LABEL_65:

  [v21 removeFromParentViewController];
LABEL_66:
}

void sub_20B6A576C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *&v2[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_dependencies];
  objc_allocWithZone(type metadata accessor for SessionViewController());

  v9 = sub_20BFE1644(v8, a1, 0, 0, 0, 0);
  v10 = [v9 view];
  if (!v10)
  {
    __break(1u);
    goto LABEL_8;
  }

  v11 = v10;
  [v10 setHidden_];

  [v2 addChildViewController_];
  [v9 didMoveToParentViewController_];
  v12 = [v2 view];
  if (!v12)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v13 = v12;
  v14 = [v9 view];
  if (!v14)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v15 = v14;
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 addSubview_];

  v16 = [v9 view];
  if (!v16)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v17 = [v2 view];
  if (v17)
  {
    v18 = v17;
    v45 = objc_opt_self();
    v20 = *MEMORY[0x277D768C8];
    v19 = *(MEMORY[0x277D768C8] + 8);
    v21 = *(MEMORY[0x277D768C8] + 16);
    v22 = *(MEMORY[0x277D768C8] + 24);
    v23 = [v16 leadingAnchor];
    v24 = [v18 leadingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24 constant:v19];

    LODWORD(v26) = 1148846080;
    [v25 setPriority_];
    v27 = v25;
    v28 = [v16 trailingAnchor];
    v29 = [v18 trailingAnchor];
    v30 = [v28 constraintEqualToAnchor:v29 constant:-v22];

    LODWORD(v31) = 1148846080;
    [v30 setPriority_];
    v32 = v30;
    v33 = [v16 topAnchor];
    v34 = [v18 topAnchor];
    v35 = [v33 constraintEqualToAnchor:v34 constant:v20];

    LODWORD(v36) = 1148846080;
    [v35 setPriority_];
    v37 = [v16 bottomAnchor];
    v38 = [v18 bottomAnchor];
    v39 = [v37 constraintEqualToAnchor:v38 constant:-v21];

    LODWORD(v40) = 1148846080;
    [v39 setPriority_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_20C14FE90;
    *(v41 + 32) = v27;
    *(v41 + 40) = v32;
    *(v41 + 48) = v35;
    *(v41 + 56) = v39;
    v42 = v35;

    sub_20B51C88C(0, &qword_281100500);
    v43 = sub_20C13CC54();

    [v45 activateConstraints_];

    return;
  }

LABEL_11:
  __break(1u);
}

void sub_20B6A5C90()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  v6 = [v1 childViewControllers];
  sub_20B51C88C(0, &qword_281100550);
  v7 = sub_20C13CC74();

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_12:

    [v1 dismissViewControllerAnimated:1 completion:0];
    return;
  }

  v8 = sub_20C13DB34();
  if (!v8)
  {
    goto LABEL_12;
  }

LABEL_3:
  if (v8 >= 1)
  {
    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x20F2F5430](i, v7);
      }

      else
      {
        v10 = *(v7 + 8 * i + 32);
      }

      v11 = v10;
      type metadata accessor for SessionViewController();
      if (swift_dynamicCastClass())
      {
        sub_20BFE0BFC(0, 0);
      }
    }

    goto LABEL_12;
  }

  __break(1u);
}

void sub_20B6A5EA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B444();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = type metadata accessor for PageAlertController();
  ObjectType = swift_getObjectType();
  sub_20BD393A8(a1, v10, ObjectType, a2);
  v13 = v12;
  if (v3[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform] <= 1u)
  {
    if (v3[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform])
    {
      v14 = [v3 presentedViewController];
      if (v14)
      {
        v15 = v14;
        [v14 presentViewController:v13 animated:1 completion:0];
      }

      goto LABEL_7;
    }

LABEL_6:
    [v3 presentViewController:v12 animated:1 completion:0];
LABEL_7:

    return;
  }

  if (v3[OBJC_IVAR____TtC9SeymourUI27QueuedSessionViewController_platform] == 3)
  {
    goto LABEL_6;
  }

  sub_20C13DE24();
  __break(1u);
}

uint64_t get_enum_tag_for_layout_string_11SeymourCore12PortableEnumOyAA16CatalogMediaTypeOGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
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

uint64_t sub_20B6A6144(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[49])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_20B6A6198(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

BOOL sub_20B6A61FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_20B6A6258(v5, v7);
}

BOOL sub_20B6A6258(unsigned __int8 *a1, float *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = *(a2 + 16);
  if (a1[16] == 255)
  {
    if (v3 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 255)
    {
      return 0;
    }

    v4 = a1;
    v5 = a2;
    sub_20B68CCB0();
    sub_20B68CD04();
    v6 = sub_20C133BF4();
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v8 = a1[40];
  v9 = *(a2 + 40);
  if (v8 == 255)
  {
    if (v9 != 255)
    {
      return 0;
    }
  }

  else
  {
    v11 = *(a1 + 3);
    v10 = *(a1 + 4);
    v16 = v11;
    v17 = v10;
    v18 = a1[40];
    if (v9 == 255)
    {
      sub_20B6A6418(v11, v10, v8 & 1);
      sub_20B583F4C(v11, v10, v8 & 1);
      return 0;
    }

    v12 = v8 & 1;
    v13 = a1;
    v14 = a2;
    sub_20B6A6418(*(a1 + 3), v10, v12);
    sub_20B590B28();
    sub_20B590B7C();
    v15 = sub_20C133BF4();
    sub_20B583F4C(v16, v17, v18);
    a2 = v14;
    a1 = v13;
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  if ((a1[48] & 1) == 0)
  {
    return (a2[12] & 1) == 0 && *(a1 + 11) == a2[11];
  }

  return (a2[12] & 1) != 0;
}

uint64_t sub_20B6A6418(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_20B6A6428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_20C135434();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762AC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - v11;
  v14 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  (*(v13 + 32))(v14, v13);
  v15 = sub_20C132E94();
  v39 = (*(*(v15 - 8) + 48))(v12, 1, v15);
  sub_20B520158(v12, &qword_27C762AC0);
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v38 = (*(v17 + 16))(v16, v17);
  v37 = v18;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v21 = (*(v20 + 40))(v19, v20);
  v36 = v22;
  v24 = v23;
  sub_20B51CC64(a1, v41);
  v26 = v42;
  v25 = v43;
  __swift_project_boxed_opaque_existential_1(v41, v42);
  (*(v25 + 24))(v26, v25);
  v27 = (*(v8 + 48))(v6, 1, v7);
  if (v27 == 1)
  {
    sub_20B520158(v6, &qword_27C7638A8);
    v28 = 0;
  }

  else
  {
    v29 = v35;
    (*(v8 + 32))(v35, v6, v7);
    sub_20C135424();
    v28 = v30;
    (*(v8 + 8))(v29, v7);
  }

  v31 = v39 != 1;
  __swift_destroy_boxed_opaque_existential_1(v41);
  v40 = v27 == 1;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v31;
  *(a2 + 8) = v38;
  *(a2 + 16) = v37;
  v33 = v36;
  *(a2 + 24) = v21;
  *(a2 + 32) = v33;
  *(a2 + 40) = v24;
  *(a2 + 44) = v28;
  *(a2 + 48) = v40;
  return result;
}

uint64_t NavigationSharingURLInfo.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C132C14();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NavigationSharingURLInfo.referrerURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NavigationSharingURLInfo() + 20);

  return sub_20B6A6860(v3, a1);
}

uint64_t sub_20B6A6860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t NavigationSharingURLInfo.sourceApplication.getter()
{
  v1 = *(v0 + *(type metadata accessor for NavigationSharingURLInfo() + 24));

  return v1;
}

uint64_t NavigationSharingURLInfo.init(url:referrerURL:sourceApplication:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20C132C14();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for NavigationSharingURLInfo();
  result = sub_20B6A69B4(a2, a5 + *(v11 + 20));
  v13 = (a5 + *(v11 + 24));
  *v13 = a3;
  v13[1] = a4;
  return result;
}

uint64_t sub_20B6A69B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t NavigationSharingURLInfo.hash(into:)()
{
  v1 = sub_20C132C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  sub_20B6A7108(&qword_27C762CB0, MEMORY[0x277CC9260]);
  sub_20C13C7C4();
  v8 = type metadata accessor for NavigationSharingURLInfo();
  sub_20B6A6860(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_20C13E184();
    sub_20C13C7C4();
    (*(v2 + 8))(v4, v1);
  }

  if (!*(v0 + *(v8 + 24) + 8))
  {
    return sub_20C13E184();
  }

  sub_20C13E184();
  return sub_20C13CA64();
}

uint64_t NavigationSharingURLInfo.hashValue.getter()
{
  sub_20C13E164();
  NavigationSharingURLInfo.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20B6A6CA8()
{
  sub_20C13E164();
  NavigationSharingURLInfo.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20B6A6CEC()
{
  sub_20C13E164();
  NavigationSharingURLInfo.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t _s9SeymourUI24NavigationSharingURLInfoV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C132C14();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638B8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  if ((sub_20C132B84() & 1) == 0)
  {
    return 0;
  }

  v26 = type metadata accessor for NavigationSharingURLInfo();
  v14 = *(v26 + 20);
  v15 = *(v11 + 48);
  sub_20B6A6860(a1 + v14, v13);
  sub_20B6A6860(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_20B6A6860(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_20B6A7108(&qword_27C7638C0, MEMORY[0x277CC9260]);
      v18 = sub_20C13C894();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_20B520158(v13, &unk_27C7617F0);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_20B520158(v13, &qword_27C7638B8);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v13, &unk_27C7617F0);
LABEL_11:
  v20 = *(v26 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_20C13DFF4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_20B6A7108(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20B6A7150@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638C8);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v16 - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20C13C754();

    v16[1] = 0x79546E6F69746361;
    v16[2] = 0xEA00000000006570;
    sub_20C13DC04();
    if (*(v9 + 16) && (v10 = sub_20B65B190(v17), (v11 & 1) != 0))
    {
      sub_20B51F1D8(*(v9 + 56) + 32 * v10, v18);
      sub_20B51D9C4(v17);

      if (swift_dynamicCast())
      {
        sub_20C134F14();
        v12 = sub_20C134F24();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_20B520158(v6, &qword_27C7638C8);
      }
    }

    else
    {

      sub_20B51D9C4(v17);
    }
  }

  v14 = sub_20C134F24();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_20B6A73C0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = v16 - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20C13C754();

    v16[1] = 0x7954746567726174;
    v16[2] = 0xEA00000000006570;
    sub_20C13DC04();
    if (*(v9 + 16) && (v10 = sub_20B65B190(v17), (v11 & 1) != 0))
    {
      sub_20B51F1D8(*(v9 + 56) + 32 * v10, v18);
      sub_20B51D9C4(v17);

      if (swift_dynamicCast())
      {
        sub_20C1352C4();
        v12 = sub_20C1352E4();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_20B520158(v6, &unk_27C765D50);
      }
    }

    else
    {

      sub_20B51D9C4(v17);
    }
  }

  v14 = sub_20C1352E4();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

uint64_t sub_20B6A7630@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  *&v4 = MEMORY[0x28223BE20](v3 - 8).n128_u64[0];
  v6 = &v17[-4] - v5;
  v7 = [v1 clickstreamMetricsEvent];
  if (v7)
  {
    v8 = v7;
    v9 = sub_20C13C754();

    strcpy(v17, "actionContext");
    v17[7] = -4864;
    sub_20C13DC04();
    if (*(v9 + 16) && (v10 = sub_20B65B190(v18), (v11 & 1) != 0))
    {
      sub_20B51F1D8(*(v9 + 56) + 32 * v10, v19);
      sub_20B51D9C4(v18);

      if (swift_dynamicCast())
      {
        sub_20C136654();
        v12 = sub_20C136664();
        v13 = *(v12 - 8);
        if ((*(v13 + 48))(v6, 1, v12) != 1)
        {
          (*(v13 + 32))(a1, v6, v12);
          return (*(v13 + 56))(a1, 0, 1, v12);
        }

        sub_20B520158(v6, &unk_27C7622E0);
      }
    }

    else
    {

      sub_20B51D9C4(v18);
    }
  }

  v14 = sub_20C136664();
  return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
}

id sub_20B6A78A8()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    sub_20C13DC04();
    if (*(v3 + 16) && (v4 = sub_20B65B190(v10), (v5 & 1) != 0))
    {
      sub_20B51F1D8(*(v3 + 56) + 32 * v4, &v11);
      sub_20B51D9C4(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_20B65AA60(0x496567617373656DLL, 0xE900000000000064), (v7 & 1) != 0))
        {
          sub_20B51F1D8(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_20B51D9C4(v10);
    }

    sub_20C13DC04();
    if (*(v3 + 16) && (v8 = sub_20B65B190(v10), (v9 & 1) != 0))
    {
      sub_20B51F1D8(*(v3 + 56) + 32 * v8, &v11);
      sub_20B51D9C4(v10);

      if (swift_dynamicCast())
      {
        return 0xD000000000000012;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_20B51D9C4(v10);
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B6A7AF8()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    sub_20C13DC04();
    if (*(v3 + 16) && (v4 = sub_20B65B190(v10), (v5 & 1) != 0))
    {
      sub_20B51F1D8(*(v3 + 56) + 32 * v4, &v11);
      sub_20B51D9C4(v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30);
      if (swift_dynamicCast())
      {
        if (MEMORY[0x6E6974656B72617D] && (v6 = sub_20B65AA60(0x6E656D6563616C70, 0xE900000000000074), (v7 & 1) != 0))
        {
          sub_20B51F1D8(MEMORY[0x6E6974656B7261A5] + 32 * v6, v10);

          if (swift_dynamicCast())
          {

            return v11;
          }
        }

        else
        {
        }
      }
    }

    else
    {
      sub_20B51D9C4(v10);
    }

    sub_20C13DC04();
    if (*(v3 + 16) && (v8 = sub_20B65B190(v10), (v9 & 1) != 0))
    {
      sub_20B51F1D8(*(v3 + 56) + 32 * v8, &v11);
      sub_20B51D9C4(v10);

      if (swift_dynamicCast())
      {
        return 0x6E656D6563616C70;
      }

      else
      {
        return 0;
      }
    }

    else
    {

      sub_20B51D9C4(v10);
      return 0;
    }
  }

  return result;
}

uint64_t sub_20B6A7D3C()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    sub_20C13DC04();
    if (*(v3 + 16) && (v4 = sub_20B65B190(v6), (v5 & 1) != 0))
    {
      sub_20B51F1D8(*(v3 + 56) + 32 * v4, v7);
      sub_20B51D9C4(v6);

      if (swift_dynamicCast())
      {
        return 0x6449746567726174;
      }
    }

    else
    {

      sub_20B51D9C4(v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_20B6A7E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v101 = a4;
  v102 = a3;
  v117 = a2;
  v115 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  MEMORY[0x28223BE20](v5 - 8);
  v100 = &v90 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v7 - 8);
  v99 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D50);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v90 - v10;
  v112 = sub_20C1352E4();
  v94 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v90 - v14;
  v104 = sub_20C132C14();
  v92 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v90 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v16 - 8);
  v114 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v93 = &v90 - v19;
  MEMORY[0x28223BE20](v20);
  v91 = &v90 - v21;
  v97 = sub_20C136E94();
  v96 = *(v97 - 8);
  MEMORY[0x28223BE20](v97);
  v111 = &v90 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638C8);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v90 - v24;
  v26 = sub_20C134F24();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v109 = &v90 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v116 = &v90 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v31 - 8);
  v106 = &v90 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v90 - v34;
  v36 = sub_20C136664();
  v37 = *(v36 - 8);
  *&v38 = MEMORY[0x28223BE20](v36).n128_u64[0];
  v40 = &v90 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = [v4 style];
  v118 = v4;
  sub_20B6A7630(v35);
  v41 = *(v37 + 48);
  v42 = v41(v35, 1, v36);
  v107 = v37;
  v108 = v36;
  if (v42 == 1)
  {
    (*(v37 + 104))(v40, *MEMORY[0x277D52B48], v36);
    if (v41(v35, 1, v36) != 1)
    {
      sub_20B520158(v35, &unk_27C7622E0);
    }
  }

  else
  {
    (*(v37 + 32))(v40, v35, v36);
  }

  sub_20B6A7150(v25);
  v43 = *(v27 + 48);
  v44 = v43(v25, 1, v26);
  v45 = v117;
  v46 = v27;
  v110 = v26;
  v95 = v27;
  v47 = v11;
  if (v44 == 1)
  {
    v48 = MEMORY[0x277D51468];
    if (v103 != 2)
    {
      v48 = MEMORY[0x277D51488];
    }

    (*(v46 + 104))(v116, *v48, v26);
    if (v43(v25, 1, v26) != 1)
    {
      sub_20B520158(v25, &qword_27C7638C8);
    }
  }

  else
  {
    (*(v46 + 32))(v116, v25, v26);
  }

  v49 = v92;
  v50 = sub_20B6A7AF8();
  v52 = v93;
  v53 = v104;
  if (v51)
  {
    v54 = v50;
    v45 = v51;
  }

  else
  {

    v54 = v115;
  }

  v105 = v40;
  sub_20B6A78A8();

  v115 = v54;
  sub_20C136E04();
  v55 = sub_20B6A7D3C();
  if (v56)
  {
    v57 = v55;
  }

  else
  {
    v57 = 0x65736F6C43;
  }

  if (v56)
  {
    v58 = v56;
  }

  else
  {
    v58 = 0xE500000000000000;
  }

  if (v56)
  {
    v59 = v112;
    v60 = v94;
    v62 = v49;
    v63 = v47;
    v64 = v108;
  }

  else
  {
    v59 = v112;
    v60 = v94;
    v61 = v53;
    v62 = v49;
    v63 = v47;
    v64 = v108;
    if (v103 != 2)
    {
      v65 = [v118 deepLink];
      if (v65)
      {
        v66 = v65;
        sub_20C132B94();

        v67 = 0;
      }

      else
      {
        v67 = 1;
      }

      (*(v62 + 56))(v52, v67, 1, v61);
      v68 = v52;
      v69 = v91;
      sub_20B6A69B4(v68, v91);
      if ((*(v62 + 48))(v69, 1, v61))
      {
        sub_20B520158(v69, &unk_27C7617F0);
        v57 = 0;
        v58 = 0;
      }

      else
      {
        v70 = v90;
        (*(v62 + 16))(v90, v69, v61);
        sub_20B520158(v69, &unk_27C7617F0);
        v71 = sub_20C132B24();
        v58 = v72;
        (*(v62 + 8))(v70, v61);
        v57 = v71;
      }
    }
  }

  v93 = v58;
  v94 = v57;
  v117 = v45;
  sub_20B6A73C0(v63);
  v73 = *(v60 + 48);
  if (v73(v63, 1, v59) == 1)
  {
    v74 = MEMORY[0x277D51768];
    if (v103 != 2)
    {
      v74 = MEMORY[0x277D517A0];
    }

    v75 = v113;
    (*(v60 + 104))(v113, *v74, v59);
    v76 = v73(v63, 1, v59);
    v77 = v75;
    v78 = v60;
    v79 = v59;
    v80 = v110;
    if (v76 != 1)
    {
      sub_20B520158(v63, &unk_27C765D50);
    }
  }

  else
  {
    v77 = v113;
    (*(v60 + 32))(v113, v63, v59);
    v78 = v60;
    v79 = v59;
    v80 = v110;
  }

  v82 = v106;
  v81 = v107;
  (*(v107 + 16))(v106, v105, v64);
  (*(v81 + 56))(v82, 0, 1, v64);
  v83 = v95;
  (*(v95 + 16))(v109, v116, v80);
  (*(v62 + 56))(v114, 1, 1, v104);
  v84 = sub_20C135ED4();
  (*(*(v84 - 8) + 56))(v99, 1, 1, v84);
  (*(v78 + 16))(v98, v77, v79);
  v85 = v96;
  v86 = v100;
  v87 = v111;
  v88 = v97;
  (*(v96 + 16))(v100, v111, v97);
  (*(v85 + 56))(v86, 0, 1, v88);

  sub_20B6A78A8();
  sub_20C133644();
  (*(v78 + 8))(v113, v112);
  (*(v85 + 8))(v87, v88);
  (*(v83 + 8))(v116, v110);
  return (*(v107 + 8))(v105, v108);
}

uint64_t sub_20B6A8BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v11 = v10;
  v48 = a7;
  v49 = a8;
  v46 = a5;
  v47 = a6;
  v44 = a3;
  v45 = a4;
  v14 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v16 + *(v17 + 28);
  v19 = sub_20C136664();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = type metadata accessor for ShelfMetricAction();
  v21 = v20[5];
  v22 = *MEMORY[0x277D51438];
  v23 = sub_20C134F24();
  (*(*(v23 - 8) + 104))(&v18[v21], v22, v23);
  v24 = v20[6];
  v25 = sub_20C132C14();
  (*(*(v25 - 8) + 56))(&v18[v24], 1, 1, v25);
  v26 = v20[8];
  v27 = sub_20C135ED4();
  (*(*(v27 - 8) + 56))(&v18[v26], 1, 1, v27);
  v28 = v20[10];
  v29 = *MEMORY[0x277D51768];
  v30 = sub_20C1352E4();
  (*(*(v30 - 8) + 104))(&v18[v28], v29, v30);
  v31 = v20[11];
  v32 = sub_20C136E94();
  (*(*(v32 - 8) + 56))(&v18[v31], 1, 1, v32);
  v33 = MEMORY[0x277D84F90];
  v34 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v35 = &v18[v20[7]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v18[v20[9]];
  *v36 = 0;
  *(v36 + 1) = 0;
  *&v18[v20[12]] = v34;
  *v16 = v33;
  v37 = a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v38 = *(v37 + 8);
    ObjectType = swift_getObjectType();
    (*(v38 + 160))(a1, v16, ObjectType, v38);
    swift_unknownObjectRelease();
  }

  v40 = (v11 + *a10);
  v41 = v40[3];
  v42 = v40[4];
  __swift_project_boxed_opaque_existential_1(v40, v41);
  (*(v42 + 56))(v11, a2, v44, v45, v46, v47, v48, v49, a9, v41, v42);
  return sub_20B6AE008(v16);
}

uint64_t sub_20B6A8F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  v50 = a7;
  v51 = a8;
  v48 = a5;
  v49 = a6;
  v46 = a3;
  v47 = a4;
  v45 = a2;
  v15 = type metadata accessor for PageMetricAction();
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = v17 + *(v18 + 28);
  v20 = sub_20C136664();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = type metadata accessor for ShelfMetricAction();
  v22 = v21[5];
  v23 = *MEMORY[0x277D51438];
  v24 = sub_20C134F24();
  (*(*(v24 - 8) + 104))(&v19[v22], v23, v24);
  v25 = v21[6];
  v26 = sub_20C132C14();
  (*(*(v26 - 8) + 56))(&v19[v25], 1, 1, v26);
  v27 = v21[8];
  v28 = sub_20C135ED4();
  (*(*(v28 - 8) + 56))(&v19[v27], 1, 1, v28);
  v29 = v21[10];
  v30 = *MEMORY[0x277D51768];
  v31 = sub_20C1352E4();
  (*(*(v31 - 8) + 104))(&v19[v29], v30, v31);
  v32 = v21[11];
  v33 = sub_20C136E94();
  (*(*(v33 - 8) + 56))(&v19[v32], 1, 1, v33);
  v34 = MEMORY[0x277D84F90];
  v35 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  v36 = &v19[v21[7]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v19[v21[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *&v19[v21[12]] = v35;
  *v17 = v34;
  v38 = a1 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v39 = *(v38 + 8);
    ObjectType = swift_getObjectType();
    (*(v39 + 160))(a1, v17, ObjectType, v39);
    swift_unknownObjectRelease();
  }

  v55 = v13;
  (*(a12 + 16))(v52, a10, a12);
  v41 = v53;
  v42 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v42 + 56))(v13, v45, v46, v47, v48, v49, v50, v51, a9, v41, v42);
  sub_20B6AE008(v17);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_20B6A9738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v27 = result;
    v21 = result;
    (*(a13 + 16))(v24, a11);

    v23 = v25;
    v22 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    (*(v22 + 56))(a2, a3, a4, a5, a6, a7, a8, a9, a10, v23, v22);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return result;
}

uint64_t sub_20B6ACCE8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a3;
  v9 = (v6 + *a6);
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v13 = v8;
  return (*(v11 + 8))(v6, a2, &v13, v10, v11);
}

uint64_t sub_20B6ACD78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 16))(v5, a2, 0, v8, v9);
}

uint64_t sub_20B6ACDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 72))(v5, a2, v8, v9);
}

uint64_t sub_20B6ACE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 80))(v5, a2, v8, v9);
}

uint64_t sub_20B6ACED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = (v7 + *a7);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  return (*(v13 + 24))(v7, a2, a3, a4, v12, v13);
}

uint64_t sub_20B6ACF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = (v7 + *a7);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  return (*(v13 + 32))(v7, a2, a3, a4, v12, v13);
}

uint64_t sub_20B6ACFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 40))(v5, a2, v8, v9);
}

uint64_t sub_20B6AD098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v20 = *(v13 + *a13 + 24);
  v19 = *(v13 + *a13 + 32);
  __swift_project_boxed_opaque_existential_1((v13 + *a13), v20);
  return (*(v19 + 48))(v13, a2, a3, a4, a5, a6, a7, a8, a9, a10, v20, v19);
}

uint64_t sub_20B6AD19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 104))(v5, a2, v8, v9);
}

uint64_t sub_20B6AD210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (v5 + *a5);
  v8 = v7[3];
  v9 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v8);
  return (*(v9 + 112))(v5, a2, v8, v9);
}

uint64_t sub_20B6AD284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v11 = (v7 + *a7);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  return (*(v13 + 64))(v7, a2, a3, a4, v12, v13);
}

uint64_t sub_20B6AD334(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v17 = *(v10 + *a10 + 24);
  v18 = *(v10 + *a10 + 32);
  __swift_project_boxed_opaque_existential_1((v10 + *a10), v17);
  return (*(v18 + 88))(v10, a2, a3, a4 & 1, a5, a6, a7, v17, v18);
}

uint64_t sub_20B6AD3F4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = *a2;
  v11 = (v7 + *a7);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v15 = v10;
  return (*(v13 + 96))(v7, &v15, a3, a4, v12, v13);
}

uint64_t sub_20B6AD684(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a2;
  (*(a5 + 16))(v12, a3, a5);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v11 = v7;
  (*(v9 + 8))(v5, a1, &v11, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_20B6AD734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v12, a2, a4);
  v8 = v13;
  v9 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v10 = (*(a4 + 8))(a2, a4);
  (*(v9 + 16))(v4, a1, v10, v8, v9);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_20B6AD814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v9, a2, a4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 72))(v4, a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B6AD8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v9, a2, a4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 80))(v4, a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B6AD95C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(v13, a4, a6);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 24))(v6, a1, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_20B6ADA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(v13, a4, a6);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 32))(v6, a1, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_20B6ADAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v9, a2, a4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 40))(v4, a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B6ADB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = v12;
  (*(a12 + 16))(v26, a10);
  v20 = v27;
  v21 = v28;
  __swift_project_boxed_opaque_existential_1(v26, v27);
  v23 = a8;
  (*(v21 + 48))(v13, a1, a2, a3, a4, a5, a6, a7, v23, a9, v20, v21);
  return __swift_destroy_boxed_opaque_existential_1(v26);
}

uint64_t sub_20B6ADC68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v9, a2, a4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 104))(v4, a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B6ADD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  (*(a4 + 16))(v9, a2, a4);
  v6 = v10;
  v7 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  (*(v7 + 112))(v4, a1, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B6ADDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 16))(v13, a4, a6);
  v10 = v14;
  v11 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  (*(v11 + 64))(v6, a1, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_20B6ADE6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  (*(a9 + 16))(v19, a7);
  v16 = v20;
  v17 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v17 + 88))(v9, a1, a2, a3 & 1, a4, a5, a6, v16, v17);
  return __swift_destroy_boxed_opaque_existential_1(v19);
}

uint64_t sub_20B6ADF48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  (*(a6 + 16))(v14, a4, a6);
  v10 = v15;
  v11 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  v13 = v9;
  (*(v11 + 96))(v6, &v13, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_20B6AE008(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B6AE064(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v94 = a7;
  v95 = a8;
  v88 = a6;
  v87 = a4;
  v85 = a2;
  v96 = a13;
  v91 = a11;
  v92 = a12;
  v90 = a10;
  v107 = a9;
  v106 = sub_20C135914();
  v93 = *(v106 - 8);
  v16 = *(v93 + 64);
  MEMORY[0x28223BE20](v106);
  v105 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_20C134EC4();
  v89 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v84 = v17;
  v103 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  v81 = *(v18 - 8);
  v82 = *(v81 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v101 = &v72 - v19;
  v102 = sub_20C135524();
  v86 = *(v102 - 8);
  v20 = *(v86 + 64);
  MEMORY[0x28223BE20](v102);
  v100 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v99 = &v72 - v22;
  v23 = sub_20C133E24();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v97 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v78 = sub_20C13BB84();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v30 = &v72 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B534();
  v98 = v24;
  v31 = *(v24 + 16);
  v83 = a1;
  v108 = v23;
  v79 = v31;
  v31(v28, a1, v23);
  v32 = sub_20C13BB74();
  v33 = sub_20C13D1F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v75 = a3;
    v35 = v34;
    v36 = swift_slowAlloc();
    v76 = a5;
    v73 = v36;
    v110 = v36;
    *v35 = 141558274;
    *(v35 + 4) = 1752392040;
    *(v35 + 12) = 2080;
    sub_20B6AEC50();
    v37 = v20;
    v38 = v108;
    v39 = sub_20C13DFA4();
    v74 = v16;
    v41 = v40;
    v42 = v38;
    v20 = v37;
    (*(v98 + 8))(v28, v42);
    v43 = sub_20B51E694(v39, v41, &v110);
    v16 = v74;

    *(v35 + 14) = v43;
    _os_log_impl(&dword_20B517000, v32, v33, "[CatalogPageNavigating] Did select %{mask.hash}s", v35, 0x16u);
    v44 = v73;
    __swift_destroy_boxed_opaque_existential_1(v73);
    v45 = v44;
    a5 = v76;
    MEMORY[0x20F2F6A40](v45, -1, -1);
    v46 = v35;
    a3 = v75;
    MEMORY[0x20F2F6A40](v46, -1, -1);
  }

  else
  {

    (*(v98 + 8))(v28, v108);
  }

  (*(v77 + 8))(v30, v78);
  v110 = v109;
  v47 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v79(v97, v83, v108);
  v48 = v86;
  v49 = *(v86 + 16);
  v50 = v102;
  v49(v99, v85, v102);
  sub_20B6AE918(a3, v101);
  v51 = v89;
  (*(v89 + 16))(v103, v87, v104);
  v49(v100, a5, v50);
  v52 = v93;
  (*(v93 + 16))(v105, v88, v106);
  v53 = v98;
  v54 = (*(v98 + 80) + 72) & ~*(v98 + 80);
  v55 = *(v48 + 80);
  v56 = (v80 + v55 + v54) & ~v55;
  v57 = (v20 + *(v81 + 80) + v56) & ~*(v81 + 80);
  v83 = (v82 + *(v51 + 80) + v57) & ~*(v51 + 80);
  v85 = (v84 + v55 + v83) & ~v55;
  v88 = (v20 + *(v52 + 80) + v85) & ~*(v52 + 80);
  v87 = (v16 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v108;
  v60 = v90;
  v61 = v91;
  *(v58 + 2) = v107;
  *(v58 + 3) = v60;
  v62 = v92;
  *(v58 + 4) = v61;
  *(v58 + 5) = v62;
  v64 = v96;
  v63 = v97;
  *(v58 + 6) = v96;
  *(v58 + 7) = v47;
  *(v58 + 8) = v109;
  (*(v53 + 32))(&v58[v54], v63, v59);
  v65 = *(v48 + 32);
  v66 = v102;
  v65(&v58[v56], v99, v102);
  sub_20B6AE988(v101, &v58[v57]);
  (*(v51 + 32))(&v58[v83], v103, v104);
  v65(&v58[v85], v100, v66);
  (*(v52 + 32))(&v58[v88], v105, v106);
  v67 = &v58[v87];
  v68 = v95;
  *v67 = v94;
  *(v67 + 1) = v68;
  v69 = *(v64 + 32);

  v70 = v109;

  v69(sub_20B6AE9F8, v58, v107, v64);
}

uint64_t sub_20B6AE918(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6AE988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B6AE9F8()
{
  v18 = *(v0 + 32);
  v19 = *(v0 + 16);
  v1 = *(sub_20C133E24() - 8);
  v2 = (*(v1 + 80) + 72) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_20C135524() - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = *(v4 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710A0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(sub_20C134EC4() - 8);
  v12 = (v9 + v10 + *(v11 + 80)) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v5 + v12) & ~v5;
  v14 = *(sub_20C135914() - 8);
  v15 = (v13 + v7 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = (v0 + ((*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_20B6A9738(*(v0 + 56), *(v0 + 64), v0 + v2, v0 + v6, v0 + v9, v0 + v12, v0 + v13, v0 + v15, *v16, v16[1], v19, *(&v19 + 1), v18);
}

unint64_t sub_20B6AEC50()
{
  result = qword_27C769C00;
  if (!qword_27C769C00)
  {
    sub_20C133E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769C00);
  }

  return result;
}

uint64_t sub_20B6AECA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  MEMORY[0x28223BE20](v5 - 8);
  v90 = &v82 - v6;
  v7 = sub_20C1388F4();
  v92 = *(v7 - 8);
  v93 = v7;
  MEMORY[0x28223BE20](v7);
  v91 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v82 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v82 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v82 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v82 - v19;
  v21 = sub_20C1333A4();
  v88 = *(v21 - 8);
  v89 = v21;
  MEMORY[0x28223BE20](v21);
  v87 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v82 - v24;
  v96 = a1;
  v26 = sub_20C132BB4();
  if (!v27)
  {
    goto LABEL_14;
  }

  if (v26 == 0xD000000000000011 && v27 == 0x800000020C196B80)
  {

    goto LABEL_6;
  }

  v28 = sub_20C13DFF4();

  if ((v28 & 1) == 0)
  {
LABEL_14:
    sub_20B5D9BA8();
    swift_allocError();
    *v56 = 6;
    swift_willThrow();
    v57 = sub_20C132C14();
    return (*(*(v57 - 8) + 8))(v96, v57);
  }

LABEL_6:
  v86 = a2;
  v85 = v2;
  v29 = v96;
  v30 = sub_20C132B34();
  v32 = v30 + 2;
  v31 = v30[2];
  if (v31 < 2)
  {
    v59 = sub_20C132C14();
    (*(*(v59 - 8) + 8))(v29, v59);
    goto LABEL_20;
  }

  if (v31 != 2)
  {
    if (v30[8] == 0x2D7373656E746966 && v30[9] == 0xEC00000073756C70 || (sub_20C13DFF4() & 1) != 0)
    {
      v60 = sub_20C132C14();
      v61 = *(*(v60 - 8) + 8);

      v61(v96, v60);
    }

    else
    {

      v70 = sub_20B6AF948();
      if (v70 != 5 && v31 == 5 && *v32)
      {
        v71 = &v32[2 * *v32];
        v73 = *v71;
        v72 = v71[1];
        v74 = v70;

        v75 = sub_20C132C14();
        (*(*(v75 - 8) + 8))(v96, v75);
        v76 = v86;
        *v86 = v73;
        v76[1] = v72;
        if (v74 >= 4u)
        {
          type metadata accessor for WorkoutNavigationResource();
          swift_storeEnumTagMultiPayload();
        }

        type metadata accessor for NavigationResource();
        return swift_storeEnumTagMultiPayload();
      }

      v77 = sub_20C132C14();
      (*(*(v77 - 8) + 8))(v96, v77);
    }

LABEL_20:

    *v86 = 0;
    type metadata accessor for NavigationResource();
    return swift_storeEnumTagMultiPayload();
  }

  v34 = sub_20C132B54();
  v35 = v33;
  if (v34 == 0x6269726373627573 && v33 == 0xE900000000000065 || (sub_20C13DFF4() & 1) != 0)
  {

    v36 = *MEMORY[0x277D51860];
    v37 = sub_20C1352F4();
    v38 = *(v37 - 8);
    (*(v38 + 104))(v20, v36, v37);
    (*(v38 + 56))(v20, 0, 1, v37);
    v39 = sub_20C132C14();
    v40 = *(v39 - 8);
    (*(v40 + 16))(v17, v96, v39);
    v83 = v40;
    v41 = *(v40 + 56);
    v84 = v39;
    v41(v17, 0, 1, v39);
    v42 = sub_20C135ED4();
    (*(*(v42 - 8) + 56))(v14, 1, 1, v42);
    v43 = sub_20C136914();
    (*(*(v43 - 8) + 56))(v11, 1, 1, v43);
    sub_20C133384();
    v44 = sub_20B6B3A3C(MEMORY[0x277D84F90]);
    v45 = sub_20C132BE4();
    v47 = v86;
    if (v46)
    {
      v94[0] = v45;
      v94[1] = v46;
      strcpy(v95, "sharedActivity");
      v95[15] = -18;
      sub_20B5F6EB0();
      v48 = sub_20C13DA34();

      if (v48)
      {
        v49 = sub_20C134974();
        v51 = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638D0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_20C14F980;
        *(inited + 32) = sub_20C134984();
        *(inited + 40) = v53;
        *(inited + 48) = 0xD000000000000014;
        *(inited + 56) = 0x800000020C196BC0;
        v54 = sub_20B6B0904(inited);
        swift_setDeallocating();
        sub_20B6AF994(inited + 32);
        *v95 = v54;
        v47 = v86;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767BC0);
        sub_20B6AF9FC();
        sub_20C13DC04();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v95 = v44;
        sub_20B91D464(v94, v49, v51, isUniquelyReferenced_nonNull_native);
      }
    }

    v62 = v88;
    v63 = v89;
    (*(v88 + 16))(v87, v25, v89);
    v64 = v90;
    sub_20C134F94();
    v65 = sub_20C134FB4();
    (*(*(v65 - 8) + 56))(v64, 0, 1, v65);
    sub_20B531620(MEMORY[0x277D84F90]);
    v66 = v91;
    sub_20C1388E4();
    (*(v62 + 8))(v25, v63);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C763FC0);
    v68 = *(v67 + 48);
    v69 = *(v67 + 64);
    (*(v83 + 32))(v47, v96, v84);
    (*(v92 + 32))(&v47[v68], v66, v93);
    v47[v69] = 0;
    type metadata accessor for NavigationResource();
    return swift_storeEnumTagMultiPayload();
  }

  if (v34 == 0xD000000000000014 && 0x800000020C196BA0 == v35)
  {
  }

  else
  {
    v78 = sub_20C13DFF4();

    if ((v78 & 1) == 0)
    {
      v81 = sub_20C132C14();
      (*(*(v81 - 8) + 8))(v96, v81);

      *v86 = 0;
      type metadata accessor for NavigationResource();
      return swift_storeEnumTagMultiPayload();
    }
  }

  v79 = sub_20C132C14();
  (*(*(v79 - 8) + 8))(v96, v79);

  type metadata accessor for NavigationResource();
  v80 = v86;
  *v86 = 0;
  v80[1] = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_20B6AF948()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20B6AF994(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D280);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_20B6AF9FC()
{
  result = qword_27C76D290;
  if (!qword_27C76D290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C767BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76D290);
  }

  return result;
}

unint64_t sub_20B6AFA7C()
{
  result = qword_27C7638D8;
  if (!qword_27C7638D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7638D8);
  }

  return result;
}

id static UIFont.preferredFont(forTextStyle:design:symbolicTraits:weight:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v10 = [objc_opt_self() preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a6];
  v11 = v10;
  if ((a3 & 0x100000000) == 0)
  {
    v12 = [v10 fontDescriptorWithSymbolicTraits_];
    if (v12)
    {
      v13 = v12;

      v11 = v13;
    }
  }

  if ((a5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v15 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v16 = swift_initStackObject();
    v17 = MEMORY[0x277D74430];
    *(v16 + 16) = xmmword_20C14F980;
    v18 = *v17;
    *(v16 + 32) = *v17;
    *(v16 + 40) = a4;
    v19 = v15;
    v20 = v18;
    v21 = sub_20B6B134C(v16);
    swift_setDeallocating();
    sub_20B520158(v16 + 32, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v21;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20B5E5BD0();
    v22 = sub_20C13C744();

    v23 = [v11 fontDescriptorByAddingAttributes_];

    v11 = v23;
  }

  if (a2)
  {
    v24 = [v11 fontDescriptorWithDesign_];
    if (v24)
    {
      v25 = v24;

      v11 = v25;
    }
  }

  v26 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  return v26;
}

id static UIFont._preferredFont(forTextStyle:design:symbolicTraits:weight:maximumContentSizeCategory:compatibleWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, void *a7)
{
  v14 = objc_opt_self();
  v15 = [v14 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:a7];
  v16 = v15;
  if ((a3 & 0x100000000) == 0)
  {
    v17 = [v15 fontDescriptorWithSymbolicTraits_];
    if (v17)
    {
      v18 = v17;

      v16 = v18;
    }
  }

  if ((a5 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v20 = a1;
    v21 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v48 = a7;
    v22 = v14;
    v23 = swift_initStackObject();
    v24 = MEMORY[0x277D74430];
    *(v23 + 16) = xmmword_20C14F980;
    v25 = a4;
    v26 = a6;
    v27 = *v24;
    v47 = a2;
    *(v23 + 32) = *v24;
    v28 = v23 + 32;
    *(v23 + 40) = v25;
    v29 = v21;
    a1 = v20;
    v30 = v27;
    a6 = v26;
    v31 = sub_20B6B134C(v23);
    v14 = v22;
    a7 = v48;
    swift_setDeallocating();
    sub_20B520158(v28, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v31;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20B5E5BD0();
    v32 = sub_20C13C744();

    v33 = [v16 fontDescriptorByAddingAttributes_];

    v16 = v33;
    a2 = v47;
  }

  if (a2)
  {
    v34 = [v16 fontDescriptorWithDesign_];
    if (v34)
    {
      v35 = v34;

      v16 = v35;
    }
  }

  v36 = objc_opt_self();
  v37 = 0.0;
  v38 = [v36 fontWithDescriptor:v16 size:0.0];

  v39 = [v38 fontDescriptor];
  v40 = [a7 preferredContentSizeCategory];
  v41 = sub_20C13D434();

  if (v41)
  {
    v42 = [objc_opt_self() traitCollectionWithPreferredContentSizeCategory_];
    v43 = [v14 preferredFontDescriptorWithTextStyle:a1 compatibleWithTraitCollection:v42];
    [v43 pointSize];
    v37 = v44;
  }

  v45 = [v36 fontWithDescriptor:v39 size:{v37, v47}];

  return v45;
}

id static UIFont.systemFont(ofSize:weight:design:symbolicTraits:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, double a5)
{
  if (a2)
  {
    v9 = [objc_opt_self() systemFontOfSize_];
  }

  else
  {
    v9 = [objc_opt_self() systemFontOfSize:a5 weight:*&a1];
  }

  v10 = v9;
  v11 = [v10 fontDescriptor];
  v12 = [v11 fontDescriptorWithSymbolicTraits_];
  if (v12)
  {
    v13 = v12;

    v11 = v13;
  }

  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    v28 = xmmword_20C14F980;
    *(inited + 16) = xmmword_20C14F980;
    v15 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v16 = swift_initStackObject();
    v17 = MEMORY[0x277D74430];
    *(v16 + 16) = xmmword_20C14F980;
    v18 = *v17;
    *(v16 + 32) = *v17;
    *(v16 + 40) = a1;
    v19 = v15;
    v20 = v18;
    v21 = sub_20B6B134C(v16);
    swift_setDeallocating();
    sub_20B520158(v16 + 32, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v21;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20B5E5BD0();
    v22 = sub_20C13C744();

    v23 = [v11 fontDescriptorByAddingAttributes_];

    v11 = v23;
  }

  v24 = [v11 fontDescriptorWithDesign_];
  if (v24)
  {
    v25 = v24;

    v11 = v25;
  }

  v26 = [objc_opt_self() fontWithDescriptor:v11 size:0.0];

  return v26;
}

UIFont __swiftcall UIFont.monospaced()()
{
  v1 = [v0 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v3 = *MEMORY[0x277D74338];
  *(inited + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_20C14F320;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638E0);
  v5 = swift_initStackObject();
  v6 = MEMORY[0x277D76908];
  *(v5 + 16) = xmmword_20C14F320;
  v7 = *v6;
  *(v5 + 32) = v7;
  v8 = *MEMORY[0x277D76900];
  *(v5 + 40) = 6;
  *(v5 + 48) = v8;
  *(v5 + 56) = 0;
  v9 = v7;
  v10 = v8;
  v11 = v9;
  v12 = v10;
  v13 = v3;
  v14 = sub_20B6B1564(v5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638E8);
  swift_arrayDestroy();
  *(v4 + 32) = v14;
  v15 = swift_initStackObject();
  *(v15 + 32) = v11;
  *(v15 + 16) = xmmword_20C14F320;
  *(v15 + 40) = 22;
  *(v15 + 48) = v12;
  *(v15 + 56) = 1;
  v16 = sub_20B6B1564(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v4 + 40) = v16;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638F8);
  *(inited + 40) = v4;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v1 fontDescriptorByAddingAttributes_];

  v19 = [objc_opt_self() fontWithDescriptor:v18 size:0.0];
  return v19;
}

id sub_20B6B06B8(uint64_t a1, uint64_t a2)
{
  v5 = [v2 fontDescriptor];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F320;
  v7 = *MEMORY[0x277D76908];
  *(inited + 32) = *MEMORY[0x277D76908];
  v8 = *MEMORY[0x277D76900];
  *(inited + 40) = a1;
  *(inited + 48) = v8;
  *(inited + 56) = a2;
  v9 = v7;
  v10 = v8;
  v11 = sub_20B6B1564(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638E8);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_20C14F980;
  v13 = *MEMORY[0x277D74338];
  *(v12 + 32) = *MEMORY[0x277D74338];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_20C14F980;
  *(v14 + 32) = v11;
  *(v12 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7638F8);
  *(v12 + 40) = v14;
  v15 = v13;
  sub_20B6B143C(v12);
  swift_setDeallocating();
  sub_20B520158(v12 + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v16 = sub_20C13C744();

  v17 = [v5 fontDescriptorByAddingAttributes_];

  v18 = [objc_opt_self() fontWithDescriptor:v17 size:0.0];
  return v18;
}

unint64_t sub_20B6B0904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769600);
    v3 = sub_20C13DE84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_20B6B0A18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7722A0);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C7639B0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C134D54();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20B6B0C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763928);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769250);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763928);
      v11 = *v5;
      v12 = v5[1];
      result = sub_20B65AA60(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_20C134014();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_20B6B0DF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763908);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763910);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C763908);
      result = sub_20B65AAD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132EE4();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_20C132E94();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_20B6B1010(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769210);
  v7 = sub_20C13DE84();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_20B52F9E8(a1 + v8, v5, &qword_27C763900);
  v10 = sub_20B65AAD8(v5);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_20C132EE4();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + 168 * v12), &v5[v25], 0xA8uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_20B52F9E8(v16, v5, &qword_27C763900);
    v12 = sub_20B65AAD8(v5);
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_20B6B1250(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639A0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_20B6B134C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AC0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_20B65CEB8();
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_20B6B143C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AB8);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v11, &qword_27C773210);
      v5 = v11;
      result = sub_20B65CEB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20B6B3B74(&v12, (v3[7] + 32 * result));
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

unint64_t sub_20B6B1564(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A78);
    v3 = sub_20C13DE84();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_20B65CEB8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_20B6B1650(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763970);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v11, &qword_27C763978);
      v5 = v11;
      result = sub_20B65CEB8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_20B6B3B74(&v12, (v3[7] + 32 * result));
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

unint64_t sub_20B6B1778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v13, &qword_27C762F18);
      v5 = v13;
      v6 = v14;
      result = sub_20B65AA60(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_20B6B3B74(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_20B6B18A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AA8);
    v3 = sub_20C13DE84();
    v4 = a1 + 32;

    while (1)
    {
      sub_20B52F9E8(v4, &v15, &qword_27C763AB0);
      v5 = v15;
      v6 = v16;
      result = sub_20B65AA60(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

unint64_t sub_20B6B19D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763AA0);
    v3 = sub_20C13DE84();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_20B65AA60(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

id sub_20B6B1AEC(uint64_t a1, char a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v7 = [objc_opt_self() systemFontOfSize_];
  }

  else
  {
    v7 = [objc_opt_self() systemFontOfSize:a4 weight:*&a1];
  }

  v8 = v7;
  v9 = [v8 fontDescriptor];
  v10 = [v9 fontDescriptorWithSymbolicTraits_];
  if (v10)
  {
    v11 = v10;

    v9 = v11;
  }

  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C14F980;
    v13 = *MEMORY[0x277D74380];
    *(inited + 32) = *MEMORY[0x277D74380];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
    v14 = swift_initStackObject();
    v15 = MEMORY[0x277D74430];
    *(v14 + 16) = xmmword_20C14F980;
    v16 = *v15;
    *(v14 + 32) = *v15;
    *(v14 + 40) = a1;
    v17 = v13;
    v18 = v16;
    v19 = sub_20B6B134C(v14);
    swift_setDeallocating();
    sub_20B520158(v14 + 32, &unk_27C773200);
    *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
    *(inited + 40) = v19;
    sub_20B6B143C(inited);
    swift_setDeallocating();
    sub_20B520158(inited + 32, &qword_27C773210);
    type metadata accessor for AttributeName(0);
    sub_20B5E5BD0();
    v20 = sub_20C13C744();

    v21 = [v9 fontDescriptorByAddingAttributes_];

    v9 = v21;
  }

  v22 = [objc_opt_self() fontWithDescriptor:v9 size:0.0];

  return v22;
}

unint64_t sub_20B6B1D74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7639B8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769280);
    v7 = sub_20C13DE84();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_20B52F9E8(v9, v5, &qword_27C7639B8);
      result = sub_20B65AAD8(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_20C132EE4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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