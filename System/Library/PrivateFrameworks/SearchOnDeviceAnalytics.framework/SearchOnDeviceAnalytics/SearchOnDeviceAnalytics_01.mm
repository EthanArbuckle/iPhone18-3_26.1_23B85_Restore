uint64_t OUTLINED_FUNCTION_16_0()
{

  return sub_21B1125B4();
}

uint64_t sub_21AF9C69C()
{
  result = type metadata accessor for RecipeIdentifier();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *sub_21AF9C734()
{
  v0 = sub_21B0B4600();
  sub_21AF93E84(v0 + *(*v0 + 464));
  return v0;
}

uint64_t sub_21AF9C79C()
{
  v0 = sub_21AF9C734();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF9C8D8(uint64_t a1, uint64_t (*a2)(uint64_t), double (*a3)(uint64_t), double *a4)
{
  v7 = sub_21B110F84();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2(v10);
  v14 = a3(v13);
  result = (*(v8 + 8))(v12, v7);
  *a4 = v14;
  return result;
}

double sub_21AF9C9CC()
{
  if (qword_27CD42470 != -1)
  {
    swift_once();
  }

  v0 = *&qword_27CD42EA0;
  if (qword_27CD42480 != -1)
  {
    swift_once();
  }

  result = v0 - *&qword_27CD42EB0;
  *&qword_27CD42EC0 = v0 - *&qword_27CD42EB0;
  return result;
}

uint64_t Double.fromReferenceToUnixTime.getter(double a1)
{
  if (qword_27CD42480 != -1)
  {
    result = OUTLINED_FUNCTION_2_3();
  }

  if (*&qword_27CD42EB0 >= a1)
  {
    if (qword_27CD42470 != -1)
    {
      return OUTLINED_FUNCTION_4_3();
    }
  }

  else
  {
    if (qword_27CD42488 != -1)
    {
      result = OUTLINED_FUNCTION_1_2();
    }

    if (*&qword_27CD42EB8 <= a1)
    {
      if (qword_27CD42478 != -1)
      {
        return OUTLINED_FUNCTION_3_3();
      }
    }

    else if (qword_27CD42490 != -1)
    {
      return OUTLINED_FUNCTION_0_3();
    }
  }

  return result;
}

uint64_t Double.fromUnixToReferenceTime.getter(double a1)
{
  if (qword_27CD42470 != -1)
  {
    result = OUTLINED_FUNCTION_4_3();
  }

  if (*&qword_27CD42EA0 >= a1)
  {
    if (qword_27CD42480 != -1)
    {
      return OUTLINED_FUNCTION_2_3();
    }
  }

  else
  {
    if (qword_27CD42478 != -1)
    {
      result = OUTLINED_FUNCTION_3_3();
    }

    if (*&qword_27CD42EA8 <= a1)
    {
      if (qword_27CD42488 != -1)
      {
        return OUTLINED_FUNCTION_1_2();
      }
    }

    else if (qword_27CD42490 != -1)
    {
      return OUTLINED_FUNCTION_0_3();
    }
  }

  return result;
}

double ClosedRange<>.fromUnixToReferenceTime.getter(double a1, double a2)
{
  if (qword_27CD42470 != -1)
  {
    OUTLINED_FUNCTION_4_3();
  }

  v4 = *&qword_27CD42EA0;
  if (*&qword_27CD42EA0 >= a1)
  {
    if (qword_27CD42480 != -1)
    {
      OUTLINED_FUNCTION_2_3();
    }

    a1 = *&qword_27CD42EB0;
    goto LABEL_15;
  }

  if (qword_27CD42478 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    if (*&qword_27CD42EA8 <= a1)
    {
      if (qword_27CD42488 != -1)
      {
        OUTLINED_FUNCTION_1_2();
      }

      a1 = *&qword_27CD42EB8;
    }

    else
    {
      if (qword_27CD42490 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      a1 = a1 - *&qword_27CD42EC0;
    }

LABEL_15:
    if (v4 >= a2)
    {
      if (qword_27CD42480 != -1)
      {
        OUTLINED_FUNCTION_2_3();
      }

      v5 = *&qword_27CD42EB0;
    }

    else
    {
      if (qword_27CD42478 != -1)
      {
        OUTLINED_FUNCTION_3_3();
      }

      if (*&qword_27CD42EA8 <= a2)
      {
        if (qword_27CD42488 != -1)
        {
          OUTLINED_FUNCTION_1_2();
        }

        v5 = *&qword_27CD42EB8;
      }

      else
      {
        if (qword_27CD42490 != -1)
        {
          OUTLINED_FUNCTION_0_3();
        }

        v5 = a2 - *&qword_27CD42EC0;
      }
    }

    if (a1 <= v5)
    {
      break;
    }

    __break(1u);
LABEL_31:
    OUTLINED_FUNCTION_3_3();
  }

  return a1;
}

uint64_t OUTLINED_FUNCTION_0_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return swift_once();
}

uint64_t sub_21AF9CF60()
{
  v0 = sub_21B112A34();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t SODAHostTask.__allocating_init(taskId:taskName:hostParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(v5 + 48);
  v12 = *(v5 + 52);
  v13 = swift_allocObject();
  SODAHostTask.init(taskId:taskName:hostParams:)(a1, a2, a3, a4, a5);
  return v13;
}

void *SODAHostTask.init(taskId:taskName:hostParams:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  *v7 = 0;
  v7[1] = 0;
  v5[2] = a1;
  v5[3] = a2;
  v5[4] = a3;
  v5[5] = a4;
  sub_21AF9F5B4(a5, v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams, &qword_27CD42EC8, &qword_21B114830);
  v8 = type metadata accessor for BlocksControllerFactory();
  v9 = swift_allocObject();
  *(v9 + 16) = 64;
  v10 = (v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory);
  v10[3] = v8;
  v10[4] = &off_282C92948;
  *v10 = v9;
  v11 = v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter;
  *(v11 + 4) = 0;
  *v11 = 0u;
  *(v11 + 1) = 0u;
  v12 = [objc_opt_self() defaultManager];
  sub_21AF9F660(a5, &qword_27CD42EC8, &qword_21B114830);
  *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager) = v12;
  return v5;
}

sqlite3_int64 static SODAHostTask.setSQLiteHeapSoftLimitInMb(_:)(sqlite3_int64 result)
{
  if ((result - 0x20000000000000) >> 54 == 1023)
  {
    if (((result << 10) - 0x20000000000000) >> 54 == 1023)
    {
      return sqlite3_soft_heap_limit64(result << 20);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *SODAHostTask.getEnvironment()()
{
  v3 = (v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  v4 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  if (v4)
  {
    v5 = v3[1];
    v2 = v4;
  }

  else
  {
    v6 = sub_21AF9D2BC(*(v0 + 32), *(v0 + 40), v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams);
    if (v1)
    {
      return v2;
    }

    v2 = v6;
    v9 = *v3;
    *v3 = v6;
    v3[1] = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v2;
}

char *sub_21AF9D2BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F60, &qword_21B1149F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42EC8, &qword_21B114830);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v34 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F20, &qword_21B114920);
  v35 = *(v13 - 8);
  v14 = *(v35 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  if (sub_21AF9EB10() == a1 && v20 == a2)
  {

    goto LABEL_10;
  }

  v22 = sub_21B112D04();

  if (v22)
  {
LABEL_10:
    sub_21AF9F5B4(v38, v12, &qword_27CD42EC8, &qword_21B114830);
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
    {
      v26 = v35;
      (*(v35 + 32))(v19, v12, v13);
      v27 = (*(v26 + 16))(v17, v19, v13);
      (*(*v3 + 136))(v27);
      v28 = v36;
      sub_21B111E24();
      v29 = type metadata accessor for AdHocRecipeEnvironment();
      v30 = *(v29 + 48);
      v31 = *(v29 + 52);
      swift_allocObject();
      v12 = sub_21B0DAB08(v17, v28);
      (*(v26 + 8))(v19, v13);
      return v12;
    }

    sub_21AF9F660(v12, &qword_27CD42EC8, &qword_21B114830);
    v12 = 0x800000021B130B90;
    sub_21AF9F6BC();
    swift_allocError();
    *v25 = 0xD000000000000024;
    *(v25 + 8) = 0x800000021B130B90;
    *(v25 + 16) = 1;
LABEL_14:
    swift_willThrow();
    return v12;
  }

  if (__swift_getEnumTagSinglePayload(v38, 1, v13) != 1)
  {
    v12 = 0x800000021B130B60;
    sub_21AF9F6BC();
    swift_allocError();
    *v32 = 0xD000000000000022;
    *(v32 + 8) = 0x800000021B130B60;
    *(v32 + 16) = 2;
    goto LABEL_14;
  }

  v23 = v37;
  v24 = (*(*v3 + 216))(a1, a2);
  if (!v23)
  {
    return v24;
  }

  return v12;
}

uint64_t sub_21AF9D6A8(uint64_t a1, uint64_t a2)
{
  v49 = sub_21B110D94();
  v5 = OUTLINED_FUNCTION_1(v49);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v5);
  v44[0] = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v44 - v12;
  v44[4] = a1;
  v44[5] = a2;
  OUTLINED_FUNCTION_3_4();
  v45 = (*(v14 + 136))();
  v46 = v15;

  MEMORY[0x21CEE9770](46, 0xE100000000000000);

  v44[2] = v45;
  v44[3] = v46;
  sub_21AF9F500();
  sub_21B1126C4();

  MEMORY[0x21CEE9720](v45, v46, v47, v48);

  v16 = *(*v2 + 184);
  v17 = OUTLINED_FUNCTION_8_2();
  v18(v17);
  v19 = *(*v2 + 192);
  v20 = OUTLINED_FUNCTION_8_2();
  v22 = v21(v20);
  v23 = v44[1];
  v24 = (*(*v2 + 208))(a1, a2);
  if (v23)
  {
    (*(v7 + 8))(v13, v49);
  }

  else
  {
    v26 = v44[0];
    if (v24)
    {
      v27 = v25;
      v28 = OUTLINED_FUNCTION_6_1();
      v29(v28);
      v30 = *(v27 + 16);
      v31 = OUTLINED_FUNCTION_8_2();
      v22 = v32(v31);
      (*(v7 + 8))(v13, v49);
      v33 = *(v27 + 8);
    }

    else
    {
      v34 = OUTLINED_FUNCTION_6_1();
      v36 = v35;
      v37(v34);
      v38 = type metadata accessor for SODAUserHostEnvironment();
      v39 = *(v38 + 48);
      v40 = *(v38 + 52);
      swift_allocObject();
      v41 = OUTLINED_FUNCTION_8_2();
      v22 = SODAUserHostEnvironment.init(recipeName:recipeLocation:recipeDataSources:)(v41, v42, v26, v22);
      (*(v7 + 8))(v13, v36);
    }
  }

  return v22;
}

char *sub_21AF9D9DC()
{
  result = SODAHostTask.getEnvironment()();
  if (!v0)
  {
    v3 = v2;
    ObjectType = swift_getObjectType();
    v5 = (*(v3 + 32))(ObjectType, v3);
    swift_unknownObjectRelease();
    return v5;
  }

  return result;
}

char *sub_21AF9DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  result = SODAHostTask.getEnvironment()();
  if (!v4)
  {
    v11 = result;
    v12 = v10;
    v23 = __swift_project_boxed_opaque_existential_0((v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory), *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory + 24));
    ObjectType = swift_getObjectType();
    v14 = (*(v12 + 8))(ObjectType, v12);
    v21 = (*(*v3 + 200))(v14);

    v15 = sub_21AF9F618(&qword_27CD42F48, type metadata accessor for SODAHostTask);
    v16 = type metadata accessor for BlockFactory();
    v20 = a3;
    v17 = swift_allocObject();
    v17[2] = v5;
    v17[3] = v15;
    v17[4] = a1;
    v17[5] = a2;
    v22[3] = v16;
    v22[4] = sub_21AF9F618(&qword_27CD42F50, type metadata accessor for BlockFactory);
    v22[0] = v17;
    v18 = *(v5 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);
    v19 = *v23;

    sub_21AF92188(a1);
    sub_21AFA4C08(v11, v12, v21, v22, v18, v20);
    swift_unknownObjectRelease();

    return sub_21AF9F660(v22, &qword_27CD42F58, &qword_21B114B50);
  }

  return result;
}

void sub_21AF9DC40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v71 = a3;
  v7 = sub_21B1112C4();
  v8 = OUTLINED_FUNCTION_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_21B110D94();
  v15 = OUTLINED_FUNCTION_1(v70);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[7] = SODAHostTask.getEnvironment()();
  if (v4)
  {
    if (qword_2811FAAD8 != -1)
    {
      OUTLINED_FUNCTION_0_4();
    }

    v23 = sub_21B1122D4();
    __swift_project_value_buffer(v23, qword_2811FAB28);

    v24 = sub_21B1122B4();
    v25 = sub_21B112714();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v78 = v27;
      *v26 = 136315138;
      v28 = sub_21AFCEC24(0xD000000000000010, 0x800000021B130B40, &v78);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_21AF80000, v24, v25, "SODA: Recipe %s execution was terminated due to initialization failure.", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      OUTLINED_FUNCTION_4_4();
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
    }

    swift_willThrow();
  }

  else
  {
    v29 = v22;
    v63 = a1;
    v64 = a2;
    v65 = v3;
    v66 = v14;
    v30 = v71;
    v67 = v10;
    v68 = v7;
    v62 = v21;
    v61 = v17;
    ObjectType = swift_getObjectType();
    v32 = *(v29 + 8);
    swift_unknownObjectRetain();
    v69 = v32(ObjectType, v29);
    v34 = v33;
    v35 = (*(v29 + 40))(ObjectType, v29);
    swift_unknownObjectRelease();
    if (v35)
    {
      v60 = ObjectType;
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v36 = sub_21B1122D4();
      __swift_project_value_buffer(v36, qword_2811FAB28);

      v37 = sub_21B1122B4();
      v38 = sub_21B1126E4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v78 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_21AFCEC24(v69, v34, &v78);
        _os_log_impl(&dword_21AF80000, v37, v38, "Executing recipe: %s", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
      }

      v41 = v68;
      v42 = v67;
      v43 = v30;
      sub_21AF9DA4C(v63, v64, &v78);
      v44 = v66;

      sub_21AF81D68(&v78, v80);
      sub_21AF9F554(v80, &v78);
      v53 = __swift_project_boxed_opaque_existential_0(&v78, v79);
      v54 = v62;
      (*(v29 + 16))(v60, v29);
      sub_21AF9F5B4(v43, &v75, &qword_27CD42ED0, &qword_21B114838);
      if (v76)
      {
        sub_21AF81D68(&v75, v77);
        v55 = v61;
      }

      else
      {
        (*(v29 + 24))(v60, v29);
        sub_21B1112B4();
        (*(v42 + 8))(v44, v41);
        v56 = v73;
        v57 = v74;
        __swift_project_boxed_opaque_existential_0(v72, v73);
        v77[3] = v56;
        v77[4] = *(v57 + 8);
        __swift_allocate_boxed_opaque_existential_1(v77);
        OUTLINED_FUNCTION_7_2(v56);
        (*(v58 + 16))();
        __swift_destroy_boxed_opaque_existential_0(v72);
        v55 = v61;
        if (v76)
        {
          sub_21AF9F660(&v75, &qword_27CD42ED0, &qword_21B114838);
        }
      }

      v59 = *v53;
      sub_21B111234();
      (*(v55 + 8))(v54, v70);
      __swift_destroy_boxed_opaque_existential_0(v80);
      __swift_destroy_boxed_opaque_existential_0(v77);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0(&v78);
    }

    else
    {
      if (qword_2811FAAD8 != -1)
      {
        OUTLINED_FUNCTION_0_4();
      }

      v45 = sub_21B1122D4();
      __swift_project_value_buffer(v45, qword_2811FAB28);

      v46 = sub_21B1122B4();
      v47 = sub_21B1126E4();

      v48 = os_log_type_enabled(v46, v47);
      v49 = v69;
      if (v48)
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        *&v78 = v51;
        *v50 = 136315138;
        v52 = sub_21AFCEC24(v49, v34, &v78);

        *(v50 + 4) = v52;
        _os_log_impl(&dword_21AF80000, v46, v47, "SODA: Recipe %s not executed due to unmet scheduling conditions. Exiting.", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        OUTLINED_FUNCTION_4_4();
        OUTLINED_FUNCTION_4_4();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SODAHostTask.perform()()
{
  OUTLINED_FUNCTION_5_2();
  sub_21AF9DC40(0, 0, v0);
  sub_21AF9F660(&v1, &qword_27CD42ED0, &qword_21B114838);
}

uint64_t SODAHostTask.conclude(with:)()
{
  OUTLINED_FUNCTION_5_2();
  sub_21AF9DC40(v0, v1, v2);
  return sub_21AF9F660(&v4, &qword_27CD42ED0, &qword_21B114838);
}

unint64_t sub_21AF9E484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{

  result = sub_21AF9CF60();
  switch(result)
  {
    case 1:
      sub_21AF9F554(a3, &v14);
      result = sub_21AFC4100(&v14);
      if (!v4)
      {
        v11 = result;
        v12 = v10;
        *(a4 + 24) = &type metadata for UploadBlock.Config;
        result = sub_21AF9ED50();
        *(a4 + 32) = result;
        *a4 = v11 & 1;
        *(a4 + 8) = v12;
      }

      break;
    case 3:
      sub_21B112904();

      MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B130A80);
      sub_21AF9ECFC();
      swift_allocError();
      *v13 = a1;
      v13[1] = a2;
      result = swift_willThrow();
      break;
    default:
      *(a4 + 32) = 0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      break;
  }

  return result;
}

uint64_t sub_21AF9E5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  switch(sub_21AF9CF60())
  {
    case 1u:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v27 = result;
        v28 = v26;
        sub_21B111484();
        sub_21AF9F5B4(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter, v30, &qword_27CD42EF0, qword_21B114840);
        v29 = type metadata accessor for UploadBlock();
        swift_allocObject();
        v17 = sub_21AFC4948(v27, v28, &v31, v30);
        a3[3] = v29;
        v18 = &unk_27CD42EF8;
        v19 = type metadata accessor for UploadBlock;
        goto LABEL_9;
      }

      break;
    case 2u:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v21 = result;
        v22 = v20;
        v23 = *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);
        sub_21B111484();
        v24 = type metadata accessor for DataWarehouseBlock();
        swift_allocObject();
        v17 = sub_21B0B6CC4(v21, v22, v23, &v31);
        a3[3] = v24;
        v18 = &unk_27CD42EE8;
        v19 = type metadata accessor for DataWarehouseBlock;
        goto LABEL_9;
      }

      break;
    case 3u:
      sub_21B112904();

      MEMORY[0x21CEE9770](0xD000000000000019, 0x800000021B130A80);
      sub_21AF9ECFC();
      swift_allocError();
      *v25 = a1;
      v25[1] = a2;
      result = swift_willThrow();
      break;
    default:
      result = SODAHostTask.getEnvironment()();
      if (!v4)
      {
        v10 = result;
        v11 = v9;
        v12 = *(v3 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_fileManager);
        v13 = sub_21B111304();
        v14 = type metadata accessor for ConstantsBlock();
        v15 = *(v14 + 48);
        v16 = *(v14 + 52);
        swift_allocObject();
        v17 = sub_21B0C0318(v10, v11, v12, v13);
        a3[3] = v14;
        v18 = &unk_27CD42F00;
        v19 = type metadata accessor for ConstantsBlock;
LABEL_9:
        result = sub_21AF9F618(v18, v19);
        a3[4] = result;
        *a3 = v17;
      }

      break;
  }

  return result;
}

uint64_t SODAHostTask.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_21AF9F660(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_hostParams, &qword_27CD42EC8, &qword_21B114830);
  v3 = *(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_environment);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_blocksControllerFactory));
  sub_21AF9F660(v0 + OBJC_IVAR____TtC23SearchOnDeviceAnalytics12SODAHostTask_feedbackReporter, &qword_27CD42EF0, qword_21B114840);
  return v0;
}

uint64_t SODAHostTask.__deallocating_deinit()
{
  SODAHostTask.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_21AF9EB10()
{
  v2 = (*(*v0 + 136))();

  MEMORY[0x21CEE9770](46, 0xE100000000000000);

  MEMORY[0x21CEE9770](1802723700, 0xE400000000000000);

  return v2;
}

uint64_t sub_21AF9EBB0(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F70, &qword_21B1149F8);
  result = sub_21B1128D4();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = *(a1 + 32 + v5++);
    v8 = *(v3 + 40);
    sub_21B112EC4();
    MEMORY[0x21CEEA150](v7);
    result = sub_21B112F14();
    v9 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v6 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + v10) == v7)
      {
        goto LABEL_11;
      }

      result = v10 + 1;
    }

    *(v6 + 8 * v11) = v13 | v12;
    *(*(v3 + 48) + v10) = v7;
    v14 = *(v3 + 16);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v16;
LABEL_11:
    if (v5 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_21AF9ECFC()
{
  result = qword_27CD42ED8;
  if (!qword_27CD42ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42ED8);
  }

  return result;
}

unint64_t sub_21AF9ED50()
{
  result = qword_27CD42EE0;
  if (!qword_27CD42EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42EE0);
  }

  return result;
}

uint64_t sub_21AF9EDA4(uint64_t a1)
{
  result = sub_21AF9F618(&qword_27CD42F08, type metadata accessor for SODAHostTask);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for SODAHostTask()
{
  result = qword_2811FA9A8;
  if (!qword_2811FA9A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AF9EE98()
{
  sub_21AF9F0EC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_21AF9F0EC()
{
  if (!qword_27CD42F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CD42F20, &qword_21B114920);
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD42F18);
    }
  }
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_21AF9F15C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_21AF9F19C(uint64_t result, int a2, int a3)
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

uint64_t sub_21AF9F1E8(uint64_t a1)
{
  v2 = sub_21B111064();
  v3 = OUTLINED_FUNCTION_1(v2);
  v39 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = &v34 - v10;
  if (!*(a1 + 16))
  {
    v12 = MEMORY[0x277D84FA0];
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F28, &unk_21B1149E0);
  result = sub_21B1128D4();
  v12 = result;
  v38 = *(a1 + 16);
  if (!v38)
  {
LABEL_15:

    return v12;
  }

  v13 = 0;
  v42 = result + 56;
  v14 = *(v39 + 80);
  v36 = a1;
  v37 = a1 + ((v14 + 32) & ~v14);
  v41 = v39 + 16;
  v15 = (v39 + 8);
  v35 = (v39 + 32);
  while (v13 < *(a1 + 16))
  {
    v16 = *(v39 + 72);
    v40 = v13 + 1;
    v17 = *(v39 + 16);
    v17(v43, v37 + v16 * v13, v2);
    v18 = *(v12 + 40);
    OUTLINED_FUNCTION_2_4();
    sub_21AF9F618(&qword_27CD42F30, v19);
    v20 = sub_21B112364();
    v21 = ~(-1 << *(v12 + 32));
    while (1)
    {
      v22 = v20 & v21;
      v23 = (v20 & v21) >> 6;
      v24 = *(v42 + 8 * v23);
      v25 = 1 << (v20 & v21);
      if ((v25 & v24) == 0)
      {
        break;
      }

      v26 = v12;
      v17(v9, *(v12 + 48) + v22 * v16, v2);
      OUTLINED_FUNCTION_2_4();
      sub_21AF9F618(&qword_27CD42F38, v27);
      v28 = sub_21B1123C4();
      v29 = *v15;
      (*v15)(v9, v2);
      if (v28)
      {
        result = (v29)(v43, v2);
        v12 = v26;
        goto LABEL_12;
      }

      v20 = v22 + 1;
      v12 = v26;
    }

    v30 = v43;
    *(v42 + 8 * v23) = v25 | v24;
    result = (*v35)(*(v12 + 48) + v22 * v16, v30, v2);
    v31 = *(v12 + 16);
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (v32)
    {
      goto LABEL_17;
    }

    *(v12 + 16) = v33;
LABEL_12:
    v13 = v40;
    a1 = v36;
    if (v40 == v38)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

unint64_t sub_21AF9F500()
{
  result = qword_27CD42F40;
  if (!qword_27CD42F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42F40);
  }

  return result;
}

uint64_t sub_21AF9F554(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_7_2(v3);
  (*v4)(a2);
  return a2;
}

uint64_t sub_21AF9F5B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7_2(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t sub_21AF9F618(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21AF9F660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_7_2(v4);
  (*(v5 + 8))(a1);
  return a1;
}

unint64_t sub_21AF9F6BC()
{
  result = qword_27CD42F68;
  if (!qword_27CD42F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42F68);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4()
{

  return swift_once();
}

void OUTLINED_FUNCTION_4_4()
{

  JUMPOUT(0x21CEEA9A0);
}

uint64_t sub_21AF9F7AC(uint64_t a1, uint64_t *a2)
{
  v66 = a1;
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  v68 = *(v4 - 8);
  v5 = *(v68 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_2();
  v67 = v7 - v6;
  v8 = OUTLINED_FUNCTION_33_0();
  v65 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v8);
  v9 = OUTLINED_FUNCTION_4_1(v65);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v14 = (v13 - v12);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FB0, &qword_21B114A20);
  v16 = OUTLINED_FUNCTION_25(v15);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v64 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v64 - v25;
  v27 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  v28 = OUTLINED_FUNCTION_1(v27);
  v30 = v29;
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v35 = (v34 - v33);
  v69 = v2;
  v36 = *v2;
  if (*(v36 + 16))
  {
    v37 = a2;
    sub_21B0B5BC0(a2);
    if (v38)
    {
      v39 = *(v36 + 56);
      v40 = *(v30 + 72);
      OUTLINED_FUNCTION_1_3();
      sub_21AFA4124(v41, v26);
      v42 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v37 = a2;
  }

  v42 = 1;
LABEL_6:
  v43 = v67;
  v44 = v65;
  __swift_storeEnumTagSinglePayload(v26, v42, 1, v27);
  sub_21AFA41DC(v26, v24, &qword_27CD42FB0, &qword_21B114A20);
  if (__swift_getEnumTagSinglePayload(v24, 1, v27) == 1)
  {
    *v35 = MEMORY[0x277D84F90];
    v45 = v35 + *(v27 + 20);
    sub_21B111EB4();
    v46 = *(v27 + 24);
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v44);
    sub_21AF99BE0(v24, &qword_27CD42FB0, &qword_21B114A20);
  }

  else
  {
    OUTLINED_FUNCTION_7_3();
    sub_21AFA4180(v24, v35);
  }

  OUTLINED_FUNCTION_0_5();
  sub_21AFA4124(v37, v14);
  v50 = *(v27 + 24);
  sub_21AF99BE0(v35 + v50, &qword_27CD42FB8, &qword_21B114A28);
  sub_21AFA4180(v14, v35 + v50);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v44);
  sub_21AFA4124(v66, v43);
  v54 = *v35;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v61 = *(v54 + 16);
    sub_21B0D4CC8();
    v54 = v62;
  }

  v55 = *(v54 + 16);
  if (v55 >= *(v54 + 24) >> 1)
  {
    sub_21B0D4CC8();
    v54 = v63;
  }

  *(v54 + 16) = v55 + 1;
  sub_21AFA4180(v43, v54 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v55);
  *v35 = v54;
  OUTLINED_FUNCTION_0_5();
  sub_21AFA4124(v37, v14);
  OUTLINED_FUNCTION_1_3();
  sub_21AFA4124(v35, v21);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v27);
  sub_21B0D09A8(v21, v14);
  OUTLINED_FUNCTION_28_0();
  return sub_21AFA4074(v35, v59);
}

uint64_t sub_21AF9FBE0@<X0>(uint64_t a1@<X1>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X8>)
{
  sub_21B111EB4();
  v7 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  if (qword_27CD424D8 != -1)
  {
    OUTLINED_FUNCTION_23_0();
    swift_once();
  }

  *(a3 + v7) = qword_27CD43168;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(a3 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_16_1();
    v11 = sub_21AFB1408(v10);
    OUTLINED_FUNCTION_46(v11);
  }

  OUTLINED_FUNCTION_20_0();
  swift_beginAccess();
  *(v9 + 16) = a1;
  *(v9 + 24) = 1;
  v12 = *(a3 + v7);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a3 + v7);
  if ((v13 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v15 = OUTLINED_FUNCTION_16_1();
    v16 = sub_21AFB1408(v15);
    OUTLINED_FUNCTION_46(v16);
  }

  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  v17 = *(a3 + v7);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v19 = *(a3 + v7);
  if ((v18 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v20 = OUTLINED_FUNCTION_16_1();
    v21 = sub_21AFB1408(v20);
    v18 = OUTLINED_FUNCTION_46(v21);
  }

  *(v19 + 41) = 0;
  v22 = a2(v18);
  if (v3)
  {
    return sub_21AFA4074(a3, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
  }

  v24 = v22;
  v25 = *(a3 + v7);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *(a3 + v7);
  if ((v26 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v28 = OUTLINED_FUNCTION_16_1();
    v29 = sub_21AFB1408(v28);
    OUTLINED_FUNCTION_46(v29);
  }

  OUTLINED_FUNCTION_20_0();
  result = swift_beginAccess();
  *(v27 + 128) = v24;
  return result;
}

uint64_t sub_21AF9FD9C(uint64_t a1, uint64_t a2)
{
  v250 = a2;
  v4 = OUTLINED_FUNCTION_45();
  v5 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(v4);
  v234 = *(v5 - 8);
  v6 = *(v234 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24();
  v232 = v10;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F78, &qword_21B114A00);
  v11 = OUTLINED_FUNCTION_4_1(v233);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v237 = (v224 - v14);
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F80, &qword_21B114A08);
  v15 = OUTLINED_FUNCTION_4_1(v242);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v241 = (v224 - v18);
  v19 = OUTLINED_FUNCTION_33_0();
  v245 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v19);
  v20 = OUTLINED_FUNCTION_1(v245);
  v226 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v244 = v25 - v24;
  v26 = OUTLINED_FUNCTION_33_0();
  v225 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v26);
  v27 = OUTLINED_FUNCTION_1(v225);
  v238 = v28;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_24();
  v252 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F88, &qword_21B116AE0);
  v35 = OUTLINED_FUNCTION_25(v34);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = v224 - v38;
  v253 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  v40 = OUTLINED_FUNCTION_4_1(v253);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_9_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_24();
  v254 = v44;
  OUTLINED_FUNCTION_33_0();
  v45 = sub_21B1112A4();
  v46 = OUTLINED_FUNCTION_1(v45);
  v48 = v47;
  v50 = *(v49 + 64);
  v51 = MEMORY[0x28223BE20](v46);
  v53 = v224 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_24();
  v251 = v54;
  v264 = MEMORY[0x277D84F98];
  v240 = sub_21AFA0DDC();
  v55 = sub_21B1114B4();
  v58 = *(v55 + 16);
  v59 = v58 - v56;
  v230 = v3;
  v229 = v2;
  if (v58 == v56)
  {
LABEL_30:

    v129 = v240;
    v131 = *(v240 + 64);
    v130 = v240 + 64;
    v132 = 1 << *(v240 + 32);
    OUTLINED_FUNCTION_29_0();
    v135 = v134 & v133;
    v137 = (v136 + 63) >> 6;

    v138 = 0;
    v139 = &qword_21B114A08;
    v140 = v238;
    if (!v135)
    {
      goto LABEL_32;
    }

    do
    {
      v141 = v138;
LABEL_36:
      v142 = __clz(__rbit64(v135));
      v135 &= v135 - 1;
      v143 = v142 | (v141 << 6);
      v144 = *(v129 + 48);
      v145 = *(v140 + 72);
      OUTLINED_FUNCTION_0_5();
      v146 = v241;
      sub_21AFA4124(v147, v241);
      v148 = *(*(v129 + 56) + 8 * v143);
      *(v146 + *(v242 + 48)) = v148;

      sub_21AFA28B4(v146, v148);
      sub_21AF99BE0(v146, &qword_27CD42F80, &qword_21B114A08);
    }

    while (v135);
    while (1)
    {
LABEL_32:
      v141 = (v138 + 1);
      if (__OFADD__(v138, 1))
      {
        __break(1u);
        goto LABEL_82;
      }

      if (v141 >= v137)
      {
        break;
      }

      v135 = *(v130 + 8 * v141);
      v138 = (v138 + 1);
      if (v135)
      {
        v138 = v141;
        goto LABEL_36;
      }
    }

    v149 = v230;
    v150 = sub_21AFA2C40();
    v151 = v149;
    if (v149)
    {

      return v139;
    }

    v152 = v150;
    v257 = 0;
    v154 = v150 + 64;
    v153 = *(v150 + 64);
    v155 = 1 << *(v150 + 32);
    OUTLINED_FUNCTION_29_0();
    v158 = v157 & v156;
    v160 = (v159 + 63) >> 6;

    OUTLINED_FUNCTION_49();
    v259 = v160;
    v240 = v129;
    v260 = v161;
    if (!v158)
    {
      goto LABEL_41;
    }

    do
    {
LABEL_45:
      v163 = *(v152 + 48);
      v261 = *(v140 + 72);
      OUTLINED_FUNCTION_0_5();
      sub_21AFA4124(v164, v138);
      v165 = *(v234 + 72);
      v166 = *(v152 + 56) + v165 * (__clz(__rbit64(v158)) | (v151 << 6));
      v167 = *(v233 + 48);
      OUTLINED_FUNCTION_1_3();
      sub_21AFA4124(v168, v138 + v167);
      v169 = v264;
      if (v264[2] && (sub_21B0B5BC0(v138), (v170 & 1) != 0))
      {
        v171 = *(v169 + 56);
        v258 = v165;
        OUTLINED_FUNCTION_1_3();
        v172 = v227;
        sub_21AFA4124(v173, v227);
        OUTLINED_FUNCTION_7_3();
        v174 = v172;
        v175 = v232;
        sub_21AFA4180(v174, v232);
        v176 = *(v138 + v167);
        v177 = *(v176 + 16);
        v178 = *v175;
        v179 = *(v178 + 16);
        v180 = v179 + v177;
        if (__OFADD__(v179, v177))
        {
          goto LABEL_88;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v180 > *(v178 + 24) >> 1)
        {
          sub_21B0D4CC8();
          v178 = v181;
        }

        OUTLINED_FUNCTION_49();
        if (*(v176 + 16))
        {
          if ((*(v178 + 24) >> 1) - *(v178 + 16) < v177)
          {
            goto LABEL_91;
          }

          v182 = (*(v226 + 80) + 32) & ~*(v226 + 80);
          v183 = *(v226 + 72);
          swift_arrayInitWithCopy();

          if (v177)
          {
            v184 = *(v178 + 16);
            v185 = __OFADD__(v184, v177);
            v186 = v184 + v177;
            if (v185)
            {
              goto LABEL_93;
            }

            *(v178 + 16) = v186;
          }
        }

        else
        {

          if (v177)
          {
            goto LABEL_89;
          }
        }

        v203 = v232;
        *v232 = v178;
        OUTLINED_FUNCTION_0_5();
        v204 = v180;
        v138 = v231;
        sub_21AFA4124(v204, v231);
        OUTLINED_FUNCTION_1_3();
        sub_21AFA4124(v203, v228);
        v205 = v264;
        swift_isUniquelyReferenced_nonNull_native();
        v262 = v205;
        v206 = sub_21B0B5BC0(v138);
        OUTLINED_FUNCTION_47(v206, v207);
        if (v185)
        {
          goto LABEL_90;
        }

        v140 = v208;
        v210 = v209;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
        if (OUTLINED_FUNCTION_50())
        {
          v211 = sub_21B0B5BC0(v231);
          v138 = v237;
          v152 = v260;
          if ((v210 & 1) != (v212 & 1))
          {
            goto LABEL_94;
          }

          v140 = v211;
        }

        else
        {
          OUTLINED_FUNCTION_49();
          v152 = v260;
        }

        v213 = v262;
        if (v210)
        {
          sub_21AFA4010(v228, v262[7] + v140 * v258);
        }

        else
        {
          v262[(v140 >> 6) + 8] |= 1 << v140;
          v214 = v213[6];
          OUTLINED_FUNCTION_0_5();
          sub_21AFA4124(v231, v215);
          v216 = v213[7];
          OUTLINED_FUNCTION_7_3();
          sub_21AFA4180(v228, v217);
          v218 = v213[2];
          v185 = __OFADD__(v218, 1);
          v219 = v218 + 1;
          if (v185)
          {
            goto LABEL_92;
          }

          v213[2] = v219;
        }

        OUTLINED_FUNCTION_43();
        v264 = v213;
        OUTLINED_FUNCTION_2_5();
        sub_21AFA4074(v231, v220);
        OUTLINED_FUNCTION_28_0();
        sub_21AFA4074(v232, v221);
      }

      else
      {
        OUTLINED_FUNCTION_0_5();
        v187 = v239;
        sub_21AFA4124(v138, v239);
        OUTLINED_FUNCTION_1_3();
        sub_21AFA4124(v138 + v167, v236);
        swift_isUniquelyReferenced_nonNull_native();
        v262 = v169;
        v188 = sub_21B0B5BC0(v187);
        OUTLINED_FUNCTION_47(v188, v189);
        if (v185)
        {
          goto LABEL_83;
        }

        v140 = v190;
        v192 = v191;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD477E0, &qword_21B12BD50);
        if (OUTLINED_FUNCTION_50())
        {
          v193 = sub_21B0B5BC0(v239);
          v138 = v237;
          v152 = v260;
          if ((v192 & 1) != (v194 & 1))
          {
            goto LABEL_94;
          }

          v140 = v193;
        }

        else
        {
          OUTLINED_FUNCTION_49();
          v152 = v260;
        }

        v195 = v262;
        if (v192)
        {
          sub_21AFA4010(v236, v262[7] + v140 * v165);
        }

        else
        {
          v262[(v140 >> 6) + 8] |= 1 << v140;
          v196 = v195[6];
          OUTLINED_FUNCTION_0_5();
          sub_21AFA4124(v239, v197);
          v198 = v195[7];
          OUTLINED_FUNCTION_7_3();
          sub_21AFA4180(v236, v199);
          v200 = v195[2];
          v185 = __OFADD__(v200, 1);
          v201 = v200 + 1;
          if (v185)
          {
            goto LABEL_84;
          }

          v195[2] = v201;
        }

        v264 = v195;
        OUTLINED_FUNCTION_2_5();
        sub_21AFA4074(v239, v202);
        OUTLINED_FUNCTION_43();
      }

      v158 &= v158 - 1;
      sub_21AF99BE0(v138, &qword_27CD42F78, &qword_21B114A00);
      v160 = v259;
    }

    while (v158);
LABEL_41:
    while (1)
    {
      v162 = v151 + 1;
      if (__OFADD__(v151, 1))
      {
        break;
      }

      if (v162 >= v160)
      {

        v139 = sub_21B0D0B24(v222);

        return v139;
      }

      v158 = *(v154 + 8 * v162);
      ++v151;
      if (v158)
      {
        v151 = v162;
        goto LABEL_45;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v58 <= v56)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  if ((v56 & 0x8000000000000000) == 0)
  {
    if (!v58)
    {
      goto LABEL_87;
    }

    v246 = v53;
    v62 = *(v48 + 16);
    v61 = v48 + 16;
    v60 = v62;
    v63 = (*(v61 + 64) + 32) & ~*(v61 + 64);
    v256 = v61 - 8;
    v257 = v61;
    v255 = *(v61 + 56);
    v224[1] = v55;
    v64 = v55 + v63 + v56 * v255;
    *&v57 = 136315138;
    v235 = v57;
    v248 = v62;
    v249 = v45;
    v65 = v251;
    v66 = v59;
    v247 = v39;
    do
    {
      v261 = v64;
      v60(v65, v64, v45);
      v67 = sub_21B111264();
      v69 = v68;
      v258 = v67;
      sub_21AFB4EF8(v67, v68, &v262);
      v70 = v262;
      v71 = v263;
      if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
      {
        v259 = v69;
        v260 = v66;
        v72 = v246;
        v60(v246, v65, v45);
        v73 = v250;

        v74 = v247;
        sub_21AFA1360(v72, v73, v247);
        if (__swift_getEnumTagSinglePayload(v74, 1, v253) == 1)
        {
          sub_21AF99BE0(v74, &qword_27CD42F88, &qword_21B116AE0);
          v75 = v261;
          if (qword_27CD424A0 != -1)
          {
            OUTLINED_FUNCTION_24_0();
            swift_once();
          }

          v76 = sub_21B1122D4();
          __swift_project_value_buffer(v76, qword_27CD6E718);
          v77 = v259;

          v78 = sub_21B1122B4();
          v79 = sub_21B112704();

          v80 = os_log_type_enabled(v78, v79);
          v65 = v251;
          if (v80)
          {
            v81 = swift_slowAlloc();
            v82 = swift_slowAlloc();
            v262 = v82;
            *v81 = v235;
            v83 = sub_21AFCEC24(v258, v77, &v262);

            *(v81 + 4) = v83;
            _os_log_impl(&dword_21AF80000, v78, v79, "Unable to serialize dataitem %s to protobuf.", v81, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v82);
            OUTLINED_FUNCTION_44();
            MEMORY[0x21CEEA9A0]();
            OUTLINED_FUNCTION_44();
            MEMORY[0x21CEEA9A0]();
          }

          else
          {
          }

          v110 = OUTLINED_FUNCTION_36();
          v45 = v249;
          v111(v110, v249);
        }

        else
        {

          OUTLINED_FUNCTION_3_5();
          sub_21AFA4180(v74, v254);
          v60(v72, v65, v45);

          sub_21AFA65F0(v72, v73, v252);
          v262 = v70;
          v263 = v71;
          if (Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter() == 1)
          {
            v86 = *(v253 + 20);
            v87 = *(v254 + v86);
            v65 = v251;
            v75 = v261;
            if (*(v87 + 40) <= -3 && (*(v87 + 32) & 1) != 0)
            {
              if ((v88 = *(v87 + 41), v88 > -3) && v88 < 0 || (v88 & 1) == 0)
              {
                v89 = sub_21B0DF248(v252, v240);
                if (v89)
                {
                  v90 = v89;
                  v91 = v254;
                  v92 = *(v254 + v86);
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v94 = v91;
                  v95 = *(v91 + v86);
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v96 = v94;
                    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
                    OUTLINED_FUNCTION_18_0();
                    swift_allocObject();
                    v97 = OUTLINED_FUNCTION_16_1();
                    v95 = sub_21AFB1408(v97);
                    *(v96 + v86) = v95;
                  }

                  OUTLINED_FUNCTION_20_0();
                  swift_beginAccess();
                  v98 = *(v95 + 120);
                  *(v95 + 120) = v90;

                  v99 = v240;
                  v100 = sub_21B0B5BC0(v252);
                  if (v101)
                  {
                    v102 = v100;
                    swift_isUniquelyReferenced_nonNull_native();
                    v262 = v99;
                    v103 = *(v99 + 24);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42F98, &qword_21B114A10);
                    sub_21B112994();
                    v104 = v262;
                    v105 = v262[6];
                    v106 = *(v238 + 72);
                    OUTLINED_FUNCTION_2_5();
                    sub_21AFA4074(v107, v108);
                    v109 = *(*(v104 + 56) + 8 * v102);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FA0, &qword_21B114A18);
                    sub_21AFA40CC();
                    v240 = v104;
                    sub_21B1129B4();
                  }
                }
              }
            }
          }

          else
          {
            v65 = v251;
            v75 = v261;
          }

          v112 = v254;
          v113 = v243;
          sub_21AFA4124(v254, v243);
          v114 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
          v115 = v244;
          OUTLINED_FUNCTION_34_0();
          __swift_storeEnumTagSinglePayload(v116, v117, v118, v114);
          v119 = v115 + *(v245 + 20);
          sub_21B111EB4();
          sub_21AF99BE0(v115, &qword_27CD42F90, &unk_21B115FC0);
          OUTLINED_FUNCTION_3_5();
          sub_21AFA4180(v113, v115);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_31_0();
          __swift_storeEnumTagSinglePayload(v120, v121, v122, v114);
          v123 = v252;
          sub_21AF9F7AC(v115, v252);
          OUTLINED_FUNCTION_2_5();
          sub_21AFA4074(v123, v124);
          v125 = OUTLINED_FUNCTION_36();
          v45 = v249;
          v126(v125, v249);
          OUTLINED_FUNCTION_12_1();
          sub_21AFA4074(v115, v127);
          OUTLINED_FUNCTION_25_0();
          sub_21AFA4074(v112, v128);
        }

        v66 = v260;
        v60 = v248;
      }

      else
      {
        v84 = OUTLINED_FUNCTION_36();
        v85(v84, v45);

        v75 = v261;
      }

      v64 = v75 + v255;
      --v66;
    }

    while (v66);
    goto LABEL_30;
  }

LABEL_86:
  __break(1u);
LABEL_87:
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
  result = sub_21B112E54();
  __break(1u);
  return result;
}

uint64_t sub_21AFA0DDC()
{
  v0 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v54 = *(v0 - 8);
  v1 = *(v54 + 64);
  v2 = MEMORY[0x28223BE20](v0 - 8);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v53 = &v46 - v4;
  v5 = sub_21B1112A4();
  v6 = *(v5 - 1);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_21B111514();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21B111534();
  v15 = sub_21B1114C4();
  (*(v11 + 8))(v14, v10);
  v16 = 0;
  v58 = MEMORY[0x277D84F98];
  v17 = *(v15 + 16);
  v18 = (v6 + 8);
  while (v17 != v16)
  {
    if (v16 >= *(v15 + 16))
    {
      goto LABEL_26;
    }

    (*(v6 + 16))(v9, v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v5);
    sub_21AFA3168(&v58, v9);
    ++v16;
    (*v18)(v9, v5);
  }

  v19 = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC8, &qword_21B114A38);
  v20 = sub_21B1129F4();
  v5 = v20;
  v21 = 0;
  v22 = *(v19 + 64);
  v47 = v19 + 64;
  v23 = 1 << *(v19 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v26 = (v23 + 63) >> 6;
  v52 = v20 + 64;
  v18 = v51;
  v49 = v20;
  v50 = v19;
  v48 = v26;
  if (!v25)
  {
LABEL_9:
    v28 = v21;
    while (1)
    {
      v21 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v21 >= v26)
      {

        return v5;
      }

      v29 = *(v47 + 8 * v21);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v55 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  while (1)
  {
    v27 = __clz(__rbit64(v25));
    v55 = (v25 - 1) & v25;
LABEL_14:
    v30 = v27 | (v21 << 6);
    v31 = *(v19 + 48);
    v32 = v53;
    v56 = *(v54 + 72) * v30;
    sub_21AFA4124(v31 + v56, v53);
    v33 = *(v19 + 56);
    v57 = v30;
    v34 = *(v33 + 8 * v30);
    sub_21AFA4180(v32, v18);
    v58 = v34;
    swift_bridgeObjectRetain_n();
    sub_21AFA3694(&v58);
    v35 = v58;
    v36 = *(v58 + 16);
    if (v36)
    {
      v58 = MEMORY[0x277D84F90];
      sub_21AFCC55C(0, v36, 0);
      v37 = v58;
      v38 = *(v58 + 16);
      v39 = 40;
      do
      {
        v40 = *(v35 + v39);
        v58 = v37;
        v41 = *(v37 + 24);
        if (v38 >= v41 >> 1)
        {
          sub_21AFCC55C((v41 > 1), v38 + 1, 1);
          v37 = v58;
        }

        *(v37 + 16) = v38 + 1;
        *(v37 + 4 * v38 + 32) = v40;
        v39 += 16;
        ++v38;
        --v36;
      }

      while (v36);

      v19 = v50;
      v18 = v51;
      v26 = v48;
      v5 = v49;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    v9 = v57;
    *(v52 + ((v57 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v57;
    sub_21AFA4180(v18, v5[6] + v56);
    *(v5[7] + 8 * v9) = v37;
    v42 = v5[2];
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    v5[2] = v44;
    v25 = v55;
    if (!v55)
    {
      goto LABEL_9;
    }
  }

LABEL_27:
  __break(1u);

  (*v18)(v9, v5);

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_21AFA1360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v268 = sub_21B111334();
  v4 = OUTLINED_FUNCTION_1(v268);
  v262 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v271 = v8;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_24();
  v260 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FC0, &qword_21B114A30);
  v12 = OUTLINED_FUNCTION_25(v11);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v269 = v15;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_24();
  v266 = v17;
  v18 = OUTLINED_FUNCTION_33_0();
  v19 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(v18);
  v20 = OUTLINED_FUNCTION_4_1(v19);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2();
  v25 = v24 - v23;
  sub_21B111EB4();
  v26 = *(v19 + 20);
  if (qword_27CD424D8 != -1)
  {
    goto LABEL_224;
  }

  while (1)
  {
    *&v26[v25] = qword_27CD43168;

    v27 = sub_21B111264();
    v29 = v28;
    sub_21AFB4EF8(v27, v28, &v273);
    v30 = v273;
    v31 = v274;
    v258 = v25;
    if (!Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter())
    {
      break;
    }

    v32 = *&v26[v25];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *&v26[v25];
    v257 = v26;
    v253 = v19;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
      OUTLINED_FUNCTION_18_0();
      swift_allocObject();
      v35 = OUTLINED_FUNCTION_19_0();
      *&v26[v25] = sub_21AFB1408(v35);
    }

    OUTLINED_FUNCTION_20_0();
    v37 = v36;
    swift_beginAccess();
    *(v37 + 16) = v30;
    v259 = v37;
    *(v37 + 24) = v31;
    v254 = a1;
    v25 = a1;
    v38 = sub_21B111294();
    v19 = 0;
    v39 = *(v38 + 64);
    v261 = v38;
    v40 = 1 << *(v38 + 32);
    OUTLINED_FUNCTION_29_0();
    OUTLINED_FUNCTION_32_0();
    v265 = v41;
    OUTLINED_FUNCTION_32_0();
    v256 = v42;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v251 = v43;
    v252 = v44;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v249 = v45;
    v250 = v46;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v247 = v47;
    v248 = v48;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v245 = v49;
    v246 = v50;
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_32_0();
    v243 = v54;
    v244 = v55;
    v26 = &qword_21B114240;
    a1 = v268;
    v56 = v269;
    v263 = v51;
    v264 = v52;
    while (v53)
    {
      v57 = v19;
LABEL_12:
      v270 = (v53 - 1) & v53;
      v58 = __clz(__rbit64(v53)) | (v57 << 6);
      v59 = (*(v261 + 48) + 16 * v58);
      v60 = *v59;
      v25 = v59[1];
      (*(v262 + 16))(v260, *(v261 + 56) + *(v262 + 72) * v58, a1);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v62 = *(v61 + 48);
      v56 = v269;
      *v269 = v60;
      *(v269 + 1) = v25;
      v63 = a1;
      (*(v262 + 32))(&v269[v62], v260);
      OUTLINED_FUNCTION_31_0();
      __swift_storeEnumTagSinglePayload(v64, v65, v66, v61);

LABEL_13:
      sub_21AFA41DC(v56, v266, &qword_27CD42FC0, &qword_21B114A30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
      v67 = OUTLINED_FUNCTION_19_0();
      if (__swift_getEnumTagSinglePayload(v67, 1, v25) == 1)
      {
        v226 = sub_21B1112A4();
        OUTLINED_FUNCTION_4_1(v226);
        (*(v227 + 8))(v254);

        OUTLINED_FUNCTION_3_5();
        sub_21AFA4180(v258, a3);
        OUTLINED_FUNCTION_31_0();
        v231 = v253;
        return __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
      }

      v68 = *v266;
      v69 = v266[1];
      (*(v262 + 32))(v271, v266 + *(v25 + 48), v63);
      if (*(a2 + 16))
      {
        v70 = sub_21AF98B58(v68, v69);
        if (v71)
        {
          v72 = (*(a2 + 56) + 16 * v70);
          v68 = *v72;
          v73 = v72[1];

          v69 = v73;
        }
      }

      sub_21B111314();
      a1 = swift_dynamicCast();
      sub_21B111314();
      v25 = swift_dynamicCast();
      OUTLINED_FUNCTION_21_0();
      v75 = v74 + 4;
      v76 = v68 == v74 + 4 && v265 == v69;
      if (v76 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
      {

        if (v25)
        {
          v94 = v272;
        }

        else
        {
          v94 = 0;
        }

        v25 = v258;
        v95 = *&v257[v258];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v96 = OUTLINED_FUNCTION_6_2();
          v97(v96);
          v25 = *&v257[v258];
        }

        else
        {
          v110 = *&v257[v258];
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          sub_21AFB1408(v111);
          v112 = OUTLINED_FUNCTION_5_3();
          a1 = v268;
          v113(v112, v268);

          *&v257[v258] = v258;
        }

        v56 = v269;
        v26 = &qword_21B114240;
        OUTLINED_FUNCTION_20_0();
        swift_beginAccess();
        v259 = v25;
        *(v25 + 44) = v94;
        goto LABEL_75;
      }

      a1 = (a1 & v272);
      OUTLINED_FUNCTION_21_0();
      v78 = v68 == v77 - 10 && 0x800000021B12FF10 == v69;
      if (v78 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
      {

        v98 = *&v257[v258];
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v100 = *&v257[v258];
        if ((v99 & 1) == 0)
        {
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          v101 = OUTLINED_FUNCTION_16_1();
          v100 = sub_21AFB1408(v101);
          *&v257[v258] = v100;
        }

        v26 = &qword_21B114240;
        *(v100 + 41) = a1;
        v102 = *&v257[v258];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = OUTLINED_FUNCTION_4_5();
          v104(v103);
          v25 = *&v257[v258];
        }

        else
        {
          v114 = *&v257[v258];
          type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          v25 = sub_21AFB1408(v115);
          v116 = OUTLINED_FUNCTION_4_5();
          v117(v116);

          *&v257[v258] = v25;
        }

        v56 = v269;
        v259 = v25;
        *(v25 + 41) = a1;
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_21_0();
      v80 = v68 == v79 + 1 && 0x800000021B130C00 == v69;
      v56 = v269;
      if (v80 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
      {

        if (!a1)
        {
          goto LABEL_33;
        }

        v25 = v258;
        v118 = *&v257[v258];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v119 = OUTLINED_FUNCTION_6_2();
          v120(v119);
          v25 = *&v257[v258];
        }

        else
        {
          OUTLINED_FUNCTION_42();
          OUTLINED_FUNCTION_18_0();
          swift_allocObject();
          OUTLINED_FUNCTION_19_0();

          sub_21AFB1408(v121);
          v122 = OUTLINED_FUNCTION_5_3();
          a1 = v268;
          v123(v122, v268);

          OUTLINED_FUNCTION_37();
        }

        v26 = &qword_21B114240;
        v259 = v25;
        *(v25 + 41) = -127;
LABEL_75:
        v51 = v263;
        v52 = v264;
        v53 = v270;
      }

      else
      {
        v83 = v68 == 0x697461636F766E69 && v69 == 0xEF657079745F6E6FLL;
        if (v83 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
        {

          if (*(v259 + 40) > -3 || (*(v259 + 32) & 1) == 0)
          {
            v84 = v25 ? v272 : 0;
            Apple_Parsec_Feedback_V2_ViewAppearEvent.init(rawValue:)(&v273, v84);
            if ((v275 & 1) == 0)
            {
              v85 = v273;
              a1 = v268;
              v26 = &qword_21B114240;
              if (!v273)
              {
                v124 = OUTLINED_FUNCTION_8_3();
                v125(v124, v268);
                goto LABEL_75;
              }

              v86 = v274;
              v25 = v258;
              v87 = *&v257[v258];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v88 = OUTLINED_FUNCTION_8_3();
                v89(v88, v268);
                v25 = *&v257[v258];
              }

              else
              {
                v126 = *&v257[v258];
                type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v127);
                v128 = OUTLINED_FUNCTION_5_3();
                v129(v128, v268);

                *&v257[v258] = v258;
                v56 = v269;
              }

              v130 = v86 & 1;
              *(v25 + 32) = v85;
              goto LABEL_90;
            }
          }

          goto LABEL_33;
        }

        OUTLINED_FUNCTION_21_0();
        v106 = v68 == v105 && v256 == v69;
        if (v106 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
        {

          if (a1)
          {
            v25 = v258;
            v107 = *&v257[v258];
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v108 = OUTLINED_FUNCTION_6_2();
              v109(v108);
              v25 = *&v257[v258];
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v133);
              v134 = OUTLINED_FUNCTION_5_3();
              a1 = v268;
              v135(v134, v268);

              OUTLINED_FUNCTION_37();
            }

            v26 = &qword_21B114240;
            *(v25 + 32) = 1;
            v130 = 0x80;
LABEL_90:
            v259 = v25;
            *(v25 + 40) = v130;
            goto LABEL_75;
          }

LABEL_33:
          v81 = OUTLINED_FUNCTION_6_2();
          v82(v81);
          v51 = v263;
          v52 = v264;
          v26 = &qword_21B114240;
          v53 = v270;
        }

        else
        {
          if (v25)
          {
            v131 = v272;
          }

          else
          {
            v131 = 0;
          }

          v242 = v131;
          if (v68 == 0x775F666F5F796164 && v69 == 0xEB000000006B6565)
          {

            v25 = v258;
            v26 = &qword_21B114240;
            goto LABEL_92;
          }

          v25 = v258;
          v26 = &qword_21B114240;
          if (OUTLINED_FUNCTION_17_0())
          {

LABEL_92:
            v136 = *&v257[v25];
            a1 = v268;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v137 = OUTLINED_FUNCTION_8_3();
              v138(v137, v268);
              v25 = *&v257[v25];
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v139);
              v140 = OUTLINED_FUNCTION_5_3();
              v141(v140, v268);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v259 = v25;
            *(v25 + 52) = v242;
            goto LABEL_75;
          }

          v142 = v68 == v75 && v252 == v69;
          if (v142 || (OUTLINED_FUNCTION_21_0(), (OUTLINED_FUNCTION_17_0() & 1) != 0))
          {

            v143 = *&v257[v258];
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v144 = OUTLINED_FUNCTION_4_5();
              v145(v144);
              v25 = *&v257[v258];
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              v25 = sub_21AFB1408(v146);
              v147 = OUTLINED_FUNCTION_4_5();
              v148(v147);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v259 = v25;
            *(v25 + 56) = a1;
LABEL_70:
            a1 = v268;
            goto LABEL_75;
          }

          OUTLINED_FUNCTION_21_0();
          v150 = v149 + 9;
          v151 = v68 == v149 + 9 && v251 == v69;
          if (v151 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
          {

            v25 = v258;
            v152 = *&v257[v258];
            a1 = v268;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v153 = OUTLINED_FUNCTION_8_3();
              v154(v153, v268);
              v25 = *&v257[v258];
            }

            else
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v155);
              v156 = OUTLINED_FUNCTION_5_3();
              v157(v156, v268);

              OUTLINED_FUNCTION_37();
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v259 = v25;
            *(v25 + 60) = v242;
            goto LABEL_75;
          }

          OUTLINED_FUNCTION_21_0();
          v159 = v68 == v158 + 14 && v250 == v69;
          a1 = v268;
          if (v159 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
          {

            v25 = v258;
            v160 = *&v257[v258];
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v161 = OUTLINED_FUNCTION_8_3();
              v162(v161, v268);
              v25 = *&v257[v258];
            }

            else
            {
              v163 = *&v257[v258];
              type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
              OUTLINED_FUNCTION_18_0();
              swift_allocObject();
              OUTLINED_FUNCTION_19_0();

              sub_21AFB1408(v164);
              v165 = OUTLINED_FUNCTION_5_3();
              v166(v165, v268);

              *&v257[v258] = v258;
            }

            OUTLINED_FUNCTION_20_0();
            swift_beginAccess();
            v259 = v25;
            *(v25 + 64) = v242;
          }

          else
          {
            OUTLINED_FUNCTION_21_0();
            v168 = v68 == v167 + 10 && v249 == v69;
            if (v168 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v169 = OUTLINED_FUNCTION_4_5();
                v170(v169);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v171);
                v172 = OUTLINED_FUNCTION_4_5();
                v173(v172);

                OUTLINED_FUNCTION_48();
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 68) = v242;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v175 = v68 == v174 - 2 && v248 == v69;
            if (v175 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (v242 > 5)
              {
                v176 = 0;
              }

              else
              {
                v176 = 1;
                switch(v242)
                {
                  case 1:
                    v177 = 1;
                    goto LABEL_155;
                  case 2:
                    v177 = 2;
                    goto LABEL_155;
                  case 3:
                    v177 = 3;
                    goto LABEL_155;
                  case 4:
                    v177 = 4;
                    goto LABEL_155;
                  case 5:
                    v177 = 5;
LABEL_155:
                    v242 = v177;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v182 = OUTLINED_FUNCTION_4_5();
                v183(v182);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v185 = sub_21AFB1408(v184);
                v186 = OUTLINED_FUNCTION_4_5();
                v187(v186);

                v259 = v185;
                *(v272 + v69) = v185;
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 72) = v242;
              *(v259 + 80) = v176;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v179 = v68 == v178 && v247 == v69;
            if (v179 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (v242 > 5)
              {
                v180 = 0;
              }

              else
              {
                v180 = 1;
                switch(v242)
                {
                  case 1:
                    v181 = 1;
                    goto LABEL_173;
                  case 2:
                    v181 = 2;
                    goto LABEL_173;
                  case 3:
                    v181 = 3;
                    goto LABEL_173;
                  case 4:
                    v181 = 4;
                    goto LABEL_173;
                  case 5:
                    v181 = 5;
LABEL_173:
                    v242 = v181;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v192 = OUTLINED_FUNCTION_4_5();
                v193(v192);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v195 = sub_21AFB1408(v194);
                v196 = OUTLINED_FUNCTION_4_5();
                v197(v196);

                v259 = v195;
                *(v272 + v69) = v195;
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 88) = v242;
              *(v259 + 96) = v180;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v189 = v68 == v188 - 7 && v246 == v69;
            if (v189 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (v242 > 3)
              {
                v190 = 0;
              }

              else
              {
                v190 = 1;
                switch(v242)
                {
                  case 1:
                    v191 = 1;
                    goto LABEL_188;
                  case 2:
                    v191 = 2;
                    goto LABEL_188;
                  case 3:
                    v191 = 3;
LABEL_188:
                    v242 = v191;
                    break;
                  default:
                    break;
                }
              }

              if (OUTLINED_FUNCTION_40())
              {
                v202 = OUTLINED_FUNCTION_4_5();
                v203(v202);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_41();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                v205 = sub_21AFB1408(v204);
                v206 = OUTLINED_FUNCTION_4_5();
                v207(v206);

                v259 = v205;
                *(v272 + v69) = v205;
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 104) = v242;
              *(v259 + 112) = v190;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v199 = v68 == v198 + 6 && v245 == v69;
            if (v199 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v200 = OUTLINED_FUNCTION_4_5();
                v201(v200);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v208);
                v209 = OUTLINED_FUNCTION_4_5();
                v210(v209);

                OUTLINED_FUNCTION_48();
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 132) = v242;
              goto LABEL_132;
            }

            OUTLINED_FUNCTION_21_0();
            v212 = v68 == v211 + 8 && v244 == v69;
            if (v212 || (OUTLINED_FUNCTION_17_0() & 1) != 0)
            {

              if (OUTLINED_FUNCTION_40())
              {
                v213 = OUTLINED_FUNCTION_4_5();
                v214(v213);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v215);
                v216 = OUTLINED_FUNCTION_4_5();
                v217(v216);

                OUTLINED_FUNCTION_48();
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 136) = v242;
              goto LABEL_132;
            }

            if (v68 == v150 && v243 == v69)
            {

LABEL_211:
              if (OUTLINED_FUNCTION_40())
              {
                v221 = OUTLINED_FUNCTION_4_5();
                v222(v221);
                OUTLINED_FUNCTION_14_1();
              }

              else
              {
                OUTLINED_FUNCTION_35();
                OUTLINED_FUNCTION_18_0();
                swift_allocObject();
                OUTLINED_FUNCTION_19_0();

                sub_21AFB1408(v223);
                v224 = OUTLINED_FUNCTION_4_5();
                v225(v224);

                OUTLINED_FUNCTION_48();
              }

              v25 = v259;
              OUTLINED_FUNCTION_20_0();
              swift_beginAccess();
              *(v259 + 140) = v242;
LABEL_132:
              a1 = v268;
              goto LABEL_133;
            }

            OUTLINED_FUNCTION_21_0();
            v25 = OUTLINED_FUNCTION_17_0();

            if (v25)
            {
              goto LABEL_211;
            }

            v219 = OUTLINED_FUNCTION_6_2();
            v220(v219);
          }

LABEL_133:
          v56 = v269;
          v53 = v270;
          v51 = v263;
          v52 = v264;
        }
      }
    }

    while (1)
    {
      v57 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v57 >= v51)
      {
        v63 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42CA8, &qword_21B114240);
        OUTLINED_FUNCTION_34_0();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
        v270 = 0;
        goto LABEL_13;
      }

      v53 = *(v52 + 8 * v57);
      ++v19;
      if (v53)
      {
        v19 = v57;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_224:
    OUTLINED_FUNCTION_23_0();
    swift_once();
  }

  if (qword_27CD424A0 != -1)
  {
    OUTLINED_FUNCTION_24_0();
    swift_once();
  }

  v232 = sub_21B1122D4();
  __swift_project_value_buffer(v232, qword_27CD6E718);
  OUTLINED_FUNCTION_19_0();

  v233 = sub_21B1122B4();
  v234 = sub_21B112704();

  if (os_log_type_enabled(v233, v234))
  {
    v235 = swift_slowAlloc();
    v236 = swift_slowAlloc();
    v273 = v236;
    *v235 = 136315138;
    v237 = sub_21AFCEC24(v27, v29, &v273);

    *(v235 + 4) = v237;
    _os_log_impl(&dword_21AF80000, v233, v234, "Can't create a feature report from data item named %s", v235, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v236);
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
    OUTLINED_FUNCTION_44();
    MEMORY[0x21CEEA9A0]();
  }

  else
  {
  }

  v238 = sub_21B1112A4();
  OUTLINED_FUNCTION_4_1(v238);
  (*(v239 + 8))(a1);
  OUTLINED_FUNCTION_25_0();
  sub_21AFA4074(v258, v240);
  OUTLINED_FUNCTION_34_0();
  v231 = v19;
  return __swift_storeEnumTagSinglePayload(v228, v229, v230, v231);
}

uint64_t sub_21AFA28B4(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v32[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-v14];
  sub_21B111EB4();
  v16 = *(v9 + 28);
  if (qword_27CD424D8 != -1)
  {
    swift_once();
  }

  *&v15[v16] = qword_27CD43168;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *&v15[v16];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v18 = sub_21AFB1408(v18);
    *&v15[v16] = v18;
  }

  swift_beginAccess();
  *(v18 + 16) = 1;
  *(v18 + 24) = 1;
  v19 = *&v15[v16];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = *&v15[v16];
  if ((v20 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v21 = sub_21AFB1408(v21);
    *&v15[v16] = v21;
  }

  *(v21 + 32) = 1;
  *(v21 + 40) = 0x80;
  v22 = *&v15[v16];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v24 = *&v15[v16];
  if ((v23 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v24 = sub_21AFB1408(v24);
    *&v15[v16] = v24;
  }

  *(v24 + 41) = 0;
  v25 = *&v15[v16];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v27 = *&v15[v16];
  if ((v26 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    swift_allocObject();
    v27 = sub_21AFB1408(v27);
    *&v15[v16] = v27;
  }

  swift_beginAccess();
  v28 = *(v27 + 120);
  *(v27 + 120) = a2;

  sub_21AFA4124(v15, v13);
  v29 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v29);
  v30 = &v7[*(v4 + 20)];
  sub_21B111EB4();
  sub_21AF99BE0(v7, &qword_27CD42F90, &unk_21B115FC0);
  sub_21AFA4180(v13, v7);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v29);
  sub_21AF9F7AC(v7, a1);
  sub_21AFA4074(v7, type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport);
  return sub_21AFA4074(v15, type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport);
}

uint64_t sub_21AFA2C40()
{
  v1 = v0;
  v2 = OUTLINED_FUNCTION_45();
  v3 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(v2);
  v4 = OUTLINED_FUNCTION_25(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_1();
  v88 = v7;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_24();
  v94 = v9;
  v10 = OUTLINED_FUNCTION_33_0();
  v87 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport(v10);
  v11 = OUTLINED_FUNCTION_4_1(v87);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_1();
  v85 = v14;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_24();
  v86 = v16;
  v17 = OUTLINED_FUNCTION_33_0();
  v18 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(v17);
  v19 = OUTLINED_FUNCTION_25(v18);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2();
  v24 = (v23 - v22);
  v25 = sub_21B1112A4();
  v26 = OUTLINED_FUNCTION_1(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v92 = v31;
  OUTLINED_FUNCTION_12();
  MEMORY[0x28223BE20](v32);
  v34 = &v84 - v33;
  v35 = sub_21B111514();
  v36 = OUTLINED_FUNCTION_1(v35);
  v38 = v37;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_2();
  v43 = v42 - v41;
  sub_21B111534();
  v44 = sub_21B1114C4();
  v45 = v43;
  v46 = v34;
  result = (*(v38 + 8))(v45, v35);
  v48 = 0;
  v98 = MEMORY[0x277D84F98];
  v95 = *(v44 + 16);
  v93 = v28;
  v89 = v28 + 16;
  v90 = (v28 + 8);
  for (i = v44; ; v44 = i)
  {
    if (v95 == v48)
    {

      return v98;
    }

    if (v48 >= *(v44 + 16))
    {
      break;
    }

    v49 = v44 + ((*(v93 + 80) + 32) & ~*(v93 + 80));
    v50 = *(v93 + 72);
    v96 = v48;
    v51 = *(v93 + 16);
    v51(v46, v49 + v50 * v48, v25);
    v52 = v92;
    v51(v92, v46, v25);
    v53 = sub_21B112334();
    sub_21AFA65F0(v52, v53, v24);
    OUTLINED_FUNCTION_27_0();
    v54 = v94;
    sub_21AF9FBE0(48, v55, v94);
    if (v1)
    {
      goto LABEL_9;
    }

    v56 = v25;
    v57 = v46;
    v58 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReport.OneOf_Report(0);
    v97 = 0;
    v59 = v86;
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v58);
    v63 = v87;
    v64 = v59 + *(v87 + 20);
    sub_21B111EB4();
    sub_21AF99BE0(v59, &qword_27CD42F90, &unk_21B115FC0);
    OUTLINED_FUNCTION_3_5();
    sub_21AFA4180(v54, v59);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v65, v66, v67, v58);
    sub_21AF9F7AC(v59, v24);
    OUTLINED_FUNCTION_12_1();
    sub_21AFA4074(v59, v68);
    OUTLINED_FUNCTION_26_0();
    v69 = v88;
    v70 = v97;
    sub_21AF9FBE0(49, v71, v88);
    if (v70)
    {
      v25 = v56;
      v46 = v57;
LABEL_9:

      OUTLINED_FUNCTION_2_5();
      sub_21AFA4074(v24, v83);
      (*v90)(v46, v25);
    }

    v97 = 0;
    v72 = v85;
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v73, v74, v75, v58);
    v76 = v72 + *(v63 + 20);
    sub_21B111EB4();
    sub_21AF99BE0(v72, &qword_27CD42F90, &unk_21B115FC0);
    OUTLINED_FUNCTION_3_5();
    sub_21AFA4180(v69, v72);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    __swift_storeEnumTagSinglePayload(v77, v78, v79, v58);
    sub_21AF9F7AC(v72, v24);
    OUTLINED_FUNCTION_2_5();
    sub_21AFA4074(v24, v80);
    v25 = v56;
    (*v90)(v57, v56);
    OUTLINED_FUNCTION_12_1();
    v81 = v72;
    v1 = v97;
    result = sub_21AFA4074(v81, v82);
    v48 = v96 + 1;
    v46 = v57;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA3168(uint64_t *a1, uint64_t a2)
{
  v49 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v44[-v9];
  v11 = sub_21B1112A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v48 = &v44[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v18);
  v21 = &v44[-v20];
  (*(v12 + 16))(v15, a2, v11);
  v22 = sub_21B112334();
  sub_21AFA65F0(v15, v22, v21);
  v23 = sub_21B111294();
  sub_21B0DF074(0x775F666F5F646E65, 0xEB000000006B6565, v23, v10);

  v24 = sub_21B111334();
  if (__swift_getEnumTagSinglePayload(v10, 1, v24) == 1)
  {
    sub_21AFA4074(v21, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    return sub_21AF99BE0(v10, &qword_27CD42C48, &qword_21B1141C0);
  }

  v47 = v2;
  sub_21B111314();
  v26 = *(*(v24 - 8) + 8);
  v26(v10, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_21AFA4074(v21, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  }

  v46 = v51;
  v27 = sub_21B111294();
  sub_21B0DF074(0xD000000000000018, 0x800000021B130E00, v27, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v24) == 1)
  {
    sub_21AFA4074(v21, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
    return sub_21AF99BE0(v8, &qword_27CD42C48, &qword_21B1141C0);
  }

  sub_21B111314();
  v26(v8, v24);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return sub_21AFA4074(v21, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  }

  v45 = v51;
  v28 = v49;
  v29 = *v49;
  swift_isUniquelyReferenced_nonNull_native();
  v50 = *v28;
  v30 = v50;
  v31 = sub_21B0B5BC0(v21);
  if (__OFADD__(*(v30 + 16), (v32 & 1) == 0))
  {
    __break(1u);
    goto LABEL_16;
  }

  v33 = v31;
  v34 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD0, &qword_21B114A40);
  v35 = sub_21B112994();
  v36 = v50;
  if (v35)
  {
    v37 = sub_21B0B5BC0(v21);
    if ((v34 & 1) == (v38 & 1))
    {
      v33 = v37;
      goto LABEL_11;
    }

LABEL_16:
    result = sub_21B112E54();
    __break(1u);
    return result;
  }

LABEL_11:
  *v28 = v36;
  if ((v34 & 1) == 0)
  {
    v39 = v48;
    sub_21AFA4124(v21, v48);
    sub_21B0ECFC4(v33, v39, MEMORY[0x277D84F90], v36);
  }

  v40 = *(v36 + 56) + 8 * v33;
  sub_21B0C63AC();
  v41 = *(*v40 + 16);
  sub_21B0C6438(v41);
  result = sub_21AFA4074(v21, type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions);
  v42 = *v40;
  *(v42 + 16) = v41 + 1;
  v43 = v42 + 16 * v41;
  *(v43 + 32) = v46;
  *(v43 + 40) = v45;
  return result;
}

uint64_t sub_21AFA3694(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D6304(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_21AFA3700(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_21AFA3700(uint64_t *a1)
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
      sub_21AFA3868(v7, v8, a1, v4);
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
    return sub_21AFA37F4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFA37F4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
        if (*v8 >= v9)
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

void sub_21AFA3868(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v86 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v81 = a4;
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

          v18 = (v13 < v10) ^ (*(v14 - 2) >= *v14);
          v14 += 2;
          ++v16;
          if ((v18 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v13 < v10)
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
                if (*v32 >= v33)
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

      v83 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_21B0D4B14(0, v8[2] + 1, 1, v8);
        v8 = v79;
      }

      v36 = v8[2];
      v35 = v8[3];
      v37 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        sub_21B0D4B14(v35 > 1, v36 + 1, 1, v8);
        v8 = v80;
      }

      v8[2] = v37;
      v38 = v8 + 4;
      v39 = &v8[2 * v36 + 4];
      *v39 = v7;
      v39[1] = v9;
      v84 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      if (v36)
      {
        while (1)
        {
          v40 = v37 - 1;
          v41 = &v38[2 * v37 - 2];
          v42 = &v8[2 * v37];
          if (v37 >= 4)
          {
            break;
          }

          if (v37 == 3)
          {
            v43 = v8[4];
            v44 = v8[5];
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_62:
            if (v46)
            {
              goto LABEL_102;
            }

            v58 = *v42;
            v57 = v42[1];
            v59 = __OFSUB__(v57, v58);
            v60 = v57 - v58;
            v61 = v59;
            if (v59)
            {
              goto LABEL_105;
            }

            v62 = v41[1];
            v63 = v62 - *v41;
            if (__OFSUB__(v62, *v41))
            {
              goto LABEL_108;
            }

            if (__OFADD__(v60, v63))
            {
              goto LABEL_110;
            }

            if (v60 + v63 >= v45)
            {
              if (v45 < v63)
              {
                v40 = v37 - 2;
              }

              goto LABEL_84;
            }

            goto LABEL_77;
          }

          if (v37 < 2)
          {
            goto LABEL_104;
          }

          v65 = *v42;
          v64 = v42[1];
          v53 = __OFSUB__(v64, v65);
          v60 = v64 - v65;
          v61 = v53;
LABEL_77:
          if (v61)
          {
            goto LABEL_107;
          }

          v67 = *v41;
          v66 = v41[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v68 < v60)
          {
            goto LABEL_91;
          }

LABEL_84:
          if (v40 - 1 >= v37)
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

          v72 = &v38[2 * v40 - 2];
          v73 = *v72;
          v74 = &v38[2 * v40];
          v75 = v74[1];
          sub_21AFA3E8C((*a3 + 16 * *v72), (*a3 + 16 * *v74), (*a3 + 16 * v75), v84);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v75 < v73)
          {
            goto LABEL_97;
          }

          v76 = v8;
          v77 = v8[2];
          if (v40 > v77)
          {
            goto LABEL_98;
          }

          *v72 = v73;
          v72[1] = v75;
          if (v40 >= v77)
          {
            goto LABEL_99;
          }

          v37 = v77 - 1;
          memmove(&v38[2 * v40], v74 + 2, 16 * (v77 - 1 - v40));
          v76[2] = v77 - 1;
          v78 = v77 > 2;
          v8 = v76;
          v5 = 0;
          if (!v78)
          {
            goto LABEL_91;
          }
        }

        v47 = &v38[2 * v37];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_100;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_101;
        }

        v54 = v42[1];
        v55 = v54 - *v42;
        if (__OFSUB__(v54, *v42))
        {
          goto LABEL_103;
        }

        v53 = __OFADD__(v45, v55);
        v56 = v45 + v55;
        if (v53)
        {
          goto LABEL_106;
        }

        if (v56 >= v50)
        {
          v70 = *v41;
          v69 = v41[1];
          v53 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v53)
          {
            goto LABEL_111;
          }

          if (v45 < v71)
          {
            v40 = v37 - 2;
          }

          goto LABEL_84;
        }

        goto LABEL_62;
      }

LABEL_91:
      v6 = a3[1];
      v7 = v83;
      a4 = v81;
      if (v83 >= v6)
      {
        v86 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_121;
  }

  sub_21AFA3D60(&v86, *a1, a3);
LABEL_95:
}

uint64_t sub_21AFA3D60(uint64_t *a1, char *a2, void *a3)
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
    sub_21AFA3E8C((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_21AFA3E8C(char *a1, char *a2, char *a3, char *a4)
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
        goto LABEL_28;
      }

      if (*v4 >= *v6)
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

  sub_21AFCC250(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_15:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    if (*v14 < *(v10 - 2))
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

uint64_t sub_21AFA4010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Parsec_Ondeviceanalytics_AnalyticsReportsGroup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA4074(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4_1(v3);
  (*(v4 + 8))(a1);
  return a1;
}

unint64_t sub_21AFA40CC()
{
  result = qword_27CD42FA8;
  if (!qword_27CD42FA8)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD42FA8);
  }

  return result;
}

uint64_t sub_21AFA4124(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 16))(a2, v2);
  return a2;
}

uint64_t sub_21AFA4180(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_45();
  v6 = v5(v4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(a2, v2);
  return a2;
}

uint64_t sub_21AFA41DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_4_1(v6);
  (*(v7 + 32))(a2, a1);
  return a2;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t _s11WeeklyCountVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s11WeeklyCountVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 12) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_5()
{
  v1 = **(v0 + 208);
  result = *(v0 + 272);
  v3 = *(v0 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_2()
{
  v1 = **(v0 + 208);
  result = *(v0 + 272);
  v3 = *(v0 + 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0()
{

  return sub_21B112D04();
}

uint64_t OUTLINED_FUNCTION_35()
{
  v2 = *(*(v0 + 128) + *(v0 + 120));

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_40()
{
  v2 = *(*(v0 + 128) + *(v0 + 120));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_41()
{
  v2 = *(*(v0 + 128) + *(v0 + 120));

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_42()
{
  v3 = *(v0 + v1);

  return type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
}

uint64_t OUTLINED_FUNCTION_50()
{

  return sub_21B112994();
}

uint64_t sub_21AFA45FC()
{
  MEMORY[0x21CEEA9A0](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_21AFA4660(void (*a1)(void))
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock(v3);
  a1();

  os_unfair_lock_unlock(v3);
}

uint64_t sub_21AFA4704(uint64_t a1, uint64_t *a2)
{
  v3 = sub_21B1122D4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_21B1122C4();
}

uint64_t sub_21AFA477C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v11 = OUTLINED_FUNCTION_25(v10);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  if (sub_21AFA6328(a1, a2, a3))
  {
    result = sub_21B0CE870(a5);
    if (v5)
    {
      return result;
    }
  }

  else
  {
    sub_21B1118C4();
  }

  v17 = *(a1 + 56);
  v18 = *(a1 + 32);
  OUTLINED_FUNCTION_2_6();
  v21 = v20 & v19;
  v23 = (v22 + 63) >> 6;

  v24 = 0;
  if (!v21)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_10:
    v26 = *(*(a1 + 48) + (__clz(__rbit64(v21)) | (v24 << 6)));
    sub_21B110D94();
    OUTLINED_FUNCTION_34_0();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    if (v26 >= 2)
    {
      sub_21B0CF044(a5, v34, v15);
      if (v5)
      {

        sub_21AF99BE0(v15, &qword_27CD43750, &qword_21B117A30);
        v31 = sub_21B111924();
        OUTLINED_FUNCTION_4_1(v31);
        return (*(v32 + 8))(a5);
      }
    }

    v21 &= v21 - 1;
    result = sub_21AF99BE0(v15, &qword_27CD43750, &qword_21B117A30);
  }

  while (v21);
LABEL_6:
  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
    }

    v21 = *(a1 + 56 + 8 * v25);
    ++v24;
    if (v21)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA4974()
{
  v1 = sub_21B1117B4();
  v2 = OUTLINED_FUNCTION_1(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_1_1();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_21B1110F4();
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21B112904();

  v17 = 0xD000000000000012;
  v18 = 0x800000021B130ED0;
  v19 = 0;
  v13 = sub_21B112B84();
  MEMORY[0x21CEE9770](v13);

  sub_21B1116F4();

  if (!v0)
  {
    sub_21B111794();
    v15 = *(v4 + 8);
    v15(v12, v1);
    sub_21B1110F4();
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_21B112904();

    v17 = 0xD000000000000017;
    v18 = 0x800000021B130EF0;
    v19 = 0;
    v16 = sub_21B112B84();
    MEMORY[0x21CEE9770](v16);

    sub_21B1116F4();

    sub_21B111794();
    return (v15)(v9, v1);
  }

  return result;
}

uint64_t sub_21AFA4C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v6;
  v233 = a5;
  v208 = a4;
  v235 = a3;
  v209 = a2;
  v205 = a6;
  v206 = *v6;
  v232 = sub_21B110D94();
  v10 = OUTLINED_FUNCTION_1(v232);
  v211 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v216 = v15 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  v17 = OUTLINED_FUNCTION_25(v16);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v225 = v187 - v20;
  OUTLINED_FUNCTION_33_0();
  v228 = sub_21B111924();
  v21 = OUTLINED_FUNCTION_1(v228);
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2();
  v230 = v27 - v26;
  OUTLINED_FUNCTION_33_0();
  v207 = sub_21B111B24();
  v28 = OUTLINED_FUNCTION_1(v207);
  v221 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_2();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FE0, &qword_21B114B48);
  v36 = OUTLINED_FUNCTION_25(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v227 = v187 - v39;
  OUTLINED_FUNCTION_33_0();
  v229 = sub_21B111CB4();
  v40 = OUTLINED_FUNCTION_1(v229);
  v222 = v41;
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_1();
  v224 = v44 - v45;
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v48);
  v220 = v187 - v49;
  OUTLINED_FUNCTION_33_0();
  v214 = sub_21B1113A4();
  v50 = OUTLINED_FUNCTION_1(v214);
  v223 = v51;
  v53 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_15_1();
  MEMORY[0x28223BE20](v54);
  v212 = v187 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  v57 = OUTLINED_FUNCTION_25(v56);
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_1_1();
  v226 = v60 - v61;
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_15_1();
  v64 = MEMORY[0x28223BE20](v63);
  v66 = v187 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = v187 - v68;
  MEMORY[0x28223BE20](v67);
  v71 = v187 - v70;
  swift_getObjectType();
  v73 = dynamic_cast_existential_1_conditional(a1);
  v210 = a1;
  v217 = v34;
  if (v73)
  {
    v231 = v72;
    swift_unknownObjectRetain();
  }

  else
  {
    v231 = 0;
  }

  v234 = v71;
  OUTLINED_FUNCTION_34_0();
  v74 = v232;
  __swift_storeEnumTagSinglePayload(v75, v76, v77, v232);
  v237 = v235;
  if (!v73)
  {

    v69 = MEMORY[0x277D84FA0];
    v82 = v74;
    v83 = v231;
    goto LABEL_8;
  }

  v204 = v8;
  OUTLINED_FUNCTION_16_2();
  ObjectType = swift_getObjectType();

  swift_unknownObjectRetain();
  v79 = v73;
  v80 = v231;
  OUTLINED_FUNCTION_12_2();
  sub_21B0C6850(v81);
  if (v7)
  {
    swift_unknownObjectRelease_n();
    sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);
  }

  v90 = *(v80 + 5);
  OUTLINED_FUNCTION_12_2();
  v203 = v91(ObjectType, v80);
  v236 = v79;
  v97 = *(v80 + 2);
  sub_21AF94164(ObjectType, v69);
  v98 = v234;
  sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);
  sub_21AFA6428(v69, v98);
  sub_21AF99A84(v98, v66, &qword_27CD43750, &qword_21B117A30);
  v82 = v74;
  if (__swift_getEnumTagSinglePayload(v66, 1, v74) != 1)
  {
    swift_unknownObjectRelease();
    sub_21AF99BE0(v66, &qword_27CD43750, &qword_21B117A30);
    v23 = v202;
    OUTLINED_FUNCTION_8_4();
    v83 = v231;
    v73 = v79;
LABEL_8:
    v84 = v230;
    OUTLINED_FUNCTION_12_2();
    sub_21AFA477C(v85, v86, v87, v88, v89);
    if (v7)
    {
      sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);

      swift_unknownObjectRelease();
    }

    v203 = v69;
    v93 = v237;
    v94 = *(v237 + 16);
    v235 = v73;
    if (v94)
    {
      sub_21B111364();
      v95 = v225;
      v96 = v228;
      (*(v23 + 16))(v225, v84, v228);
      __swift_storeEnumTagSinglePayload(v95, 0, 1, v96);
      v142 = sub_21B111354();
      sub_21AF99BE0(v95, &qword_27CD42FD8, &qword_21B114B40);

      v143 = v234;
      v82 = v232;
      OUTLINED_FUNCTION_8_4();
    }

    else
    {

      sub_21B111124();
      v142 = sub_21B1110E4();
      OUTLINED_FUNCTION_8_4();
      if (sub_21AFA6328(v93, v73, v83))
      {
        OUTLINED_FUNCTION_12_2();
        sub_21B111114();
        v144 = v224;
        v143 = v234;
        goto LABEL_37;
      }

      v143 = v234;
    }

    v144 = v224;
LABEL_37:
    sub_21AFA4974();
    v145 = v143;
    v146 = v215;
    sub_21AF99A84(v145, v215, &qword_27CD43750, &qword_21B117A30);
    if (__swift_getEnumTagSinglePayload(v146, 1, v82) == 1)
    {
      OUTLINED_FUNCTION_16_2();
      sub_21AF99BE0(v146, &qword_27CD43750, &qword_21B117A30);
    }

    else
    {
      v231 = v142;
      v147 = v146;
      v148 = v211;
      (*(v211 + 32))(v216, v147, v82);
      if (v235)
      {
        v149 = swift_getObjectType();
        swift_unknownObjectRetain();
        sub_21B0C68B0(v149, v83, v144);
        v93 = sub_21AFA5F64(v216, v144);
        v177 = OUTLINED_FUNCTION_15_2();
        v178(v177);
        v142 = v231;
        OUTLINED_FUNCTION_12_2();
        sub_21B111104();
        OUTLINED_FUNCTION_16_2();
        v179 = OUTLINED_FUNCTION_3_6();
        v180(v179);
        swift_unknownObjectRelease();

        OUTLINED_FUNCTION_8_4();
      }

      else
      {
        OUTLINED_FUNCTION_16_2();
        (*(v148 + 8))(v216, v82);
        v142 = v231;
      }
    }

    v151 = v93 + 56;
    v150 = *(v93 + 56);
    v152 = *(v93 + 32);
    OUTLINED_FUNCTION_2_6();
    v155 = v154 & v153;
    v157 = (v156 + 63) >> 6;

    v158 = 0;
    v159 = v210;
    while (v155)
    {
      v160 = v159;
      v161 = v226;
LABEL_49:
      OUTLINED_FUNCTION_19_1();
      v165 = *(v164 + v163);
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v166, v167, v168, v232);
      if (v165 >= 2)
      {
        sub_21B0CF5F8(v142, v233, v161);
      }

      v155 &= v155 - 1;
      sub_21AF99BE0(v226, &qword_27CD43750, &qword_21B117A30);
      v159 = v160;
      OUTLINED_FUNCTION_8_4();
    }

    v161 = v226;
    while (1)
    {
      v162 = v158 + 1;
      if (__OFADD__(v158, 1))
      {
        break;
      }

      if (v162 >= v157)
      {

        v169 = sub_21B111244();
        sub_21AF99A84(v208, &v236, &qword_27CD42F58, &qword_21B114B50);
        v170 = swift_getObjectType();
        v171 = v209;
        v172 = *(v209 + 32);

        v172(v170, v171);
        v173 = sub_21B111254();
        v174 = v205;
        v205[3] = v169;
        v174[4] = &off_282C92930;

        swift_unknownObjectRelease();
        *v174 = v173;
        v175 = OUTLINED_FUNCTION_11_1();
        v176(v175);
        return sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);
      }

      v155 = *(v151 + 8 * v162);
      ++v158;
      if (v155)
      {
        v160 = v159;
        v158 = v162;
        goto LABEL_49;
      }
    }

    __break(1u);
    swift_unknownObjectRelease_n();
    OUTLINED_FUNCTION_14_2();

    v183 = OUTLINED_FUNCTION_1_4();
    v184(v183);
    v185 = OUTLINED_FUNCTION_4_6();
    v186(v185);
    sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);
  }

  sub_21AF99BE0(v66, &qword_27CD43750, &qword_21B117A30);
  v99 = OUTLINED_FUNCTION_13_1();
  v101 = v99 + 56;
  v100 = *(v99 + 56);
  v102 = *(v99 + 32);
  OUTLINED_FUNCTION_2_6();
  v69 = v104 & v103;
  v7 = (v105 + 63) >> 6;
  v201 = *MEMORY[0x277D39DD0];
  v197 = v222 + 104;
  v196 = *MEMORY[0x277D39DD8];
  v195 = v222 + 32;
  v200 = v222 + 16;
  v193 = v222 + 88;
  v198 = v222 + 8;
  v194 = v221 + 8;
  v199 = (v223 + 32);

  v106 = 0;
  v221 = MEMORY[0x277D84F90];
  v83 = v231;
  v73 = v79;
  while (1)
  {
    v107 = v106;
    if (!v69)
    {
      break;
    }

LABEL_20:
    v69 &= v69 - 1;
    OUTLINED_FUNCTION_19_1();
    if (*(v109 + v108) == 2)
    {
      v138 = v227;
      OUTLINED_FUNCTION_34_0();
      __swift_storeEnumTagSinglePayload(v139, v140, v141, v229);
      sub_21AF99BE0(v138, &qword_27CD42FE0, &qword_21B114B48);
    }

    else
    {
      v191 = v7;
      OUTLINED_FUNCTION_5_4(&v229);
      v110 = v229;
      v111(v227);
      __swift_storeEnumTagSinglePayload(v227, 0, 1, v110);
      OUTLINED_FUNCTION_5_4(&v227);
      v112(v220, v227, v110);
      OUTLINED_FUNCTION_5_4(&v232);
      v192 = v113;
      v113(v218, v220, v110);
      v114 = v233;
      sub_21B111B14();
      v188 = sub_21B111B04();
      v189 = sub_21B111AF4();
      v115 = v220;
      v187[1] = sub_21B111CA4();
      v190 = v116;
      v117 = v115;
      v118 = v229;
      v192(v219, v117, v229);
      OUTLINED_FUNCTION_5_4(&v225);
      v120 = v119(v219, v118);
      if (v120 == v201)
      {
        v121 = type metadata accessor for SessionSchemaProvider();
        v122 = *(v121 + 48);
        v123 = *(v121 + 52);
        swift_allocObject();
        sub_21AFA71D0();
      }

      else
      {
        v124 = type metadata accessor for FeedbackSchemaProvider();
        v125 = *(v124 + 48);
        v126 = *(v124 + 52);
        swift_allocObject();
        sub_21AFD20D0();
        OUTLINED_FUNCTION_5_4(&v230);
        v127(v219, v229);
      }

      sub_21B111394();
      v128 = OUTLINED_FUNCTION_1_4();
      v129(v128);
      v130 = OUTLINED_FUNCTION_4_6();
      v131(v130);
      v192 = *v199;
      v192(v213, v212, v214);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v135 = *(v221 + 16);
        sub_21B0D4E58();
        v221 = v136;
      }

      v132 = *(v221 + 16);
      v133 = v132 + 1;
      if (v132 >= *(v221 + 24) >> 1)
      {
        v190 = v132 + 1;
        sub_21B0D4E58();
        v133 = v190;
        v221 = v137;
      }

      v134 = v221;
      *(v221 + 16) = v133;
      v192(v134 + ((*(v223 + 80) + 32) & ~*(v223 + 80)) + *(v223 + 72) * v132, v213, v214);
      v7 = v191;
    }
  }

  while (1)
  {
    v106 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v106 >= v7)
    {
      OUTLINED_FUNCTION_8_4();

      sub_21B0D0C9C(v221);
      swift_unknownObjectRelease();
      v23 = v202;
      goto LABEL_8;
    }

    v69 = *(v101 + 8 * v106);
    ++v107;
    if (v69)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  swift_unknownObjectRelease_n();
  OUTLINED_FUNCTION_14_2();
  v181 = OUTLINED_FUNCTION_4_6();
  v182(v181);
  sub_21AF99BE0(v234, &qword_27CD43750, &qword_21B117A30);
}

uint64_t sub_21AFA5F64(uint64_t a1, uint64_t a2)
{
  v31[25] = a2;
  v4 = sub_21B111CB4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21B110D94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FileArray();
  (*(v10 + 16))(v13, a1, v9);
  v15 = v14;
  v16 = sub_21AFA8CF0(v13);
  if (!v2)
  {
    v17 = v16;
    v18 = sub_21B111C94();
    v20 = v19;
    v21 = type metadata accessor for SessionSchemaTableProvider();
    swift_allocObject();
    v22 = sub_21B0B0170(v17, v18, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FE8, &qword_21B114B58);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21B113DB0;
    (*(v5 + 104))(v8, *MEMORY[0x277D39DD0], v4);
    v24 = sub_21B111CA4();
    v26 = v25;
    (*(v5 + 8))(v8, v4);
    *(inited + 32) = v24;
    *(inited + 40) = v26;
    *(inited + 72) = v21;
    *(inited + 80) = sub_21AFA6498(&qword_27CD42FF0, type metadata accessor for SessionSchemaTableProvider);
    *(inited + 48) = v22;

    *(inited + 88) = sub_21B111CA4();
    *(inited + 96) = v27;
    v31[3] = v21;
    v31[4] = &off_282C95790;
    v31[0] = v22;
    v28 = type metadata accessor for FeedbackSchemaTableProvider();
    swift_allocObject();

    v30 = sub_21AFCA92C(v31);
    *(inited + 128) = v28;
    *(inited + 136) = sub_21AFA6498(&qword_27CD43000, type metadata accessor for FeedbackSchemaTableProvider);
    *(inited + 104) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43008, &qword_21B114B68);
    v15 = sub_21B112334();
  }

  return v15;
}

uint64_t sub_21AFA6328(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    ObjectType = swift_getObjectType();
    v6 = *(a3 + 32);
    swift_unknownObjectRetain();
    LOBYTE(a3) = v6(ObjectType, a3);
    swift_unknownObjectRelease();
    return a3 & 1;
  }

  else
  {

    return sub_21B0CEBD0(a1);
  }
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21AFA6428(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43750, &qword_21B117A30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA6498(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_1_4()
{
  v1 = **(v0 - 464);
  result = *(v0 - 280);
  v3 = *(v0 - 360);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_6()
{
  v1 = **(v0 - 432);
  result = *(v0 - 256);
  v3 = *(v0 - 184);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_1()
{
  v1 = *(*(v0 - 400) + 8);
  result = *(v0 - 176);
  v3 = *(v0 - 192);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_2()
{
  v2 = *(v0 - 392);
}

uint64_t OUTLINED_FUNCTION_15_2()
{
  v2 = *(*(v1 - 240) + 8);
  result = v0;
  v4 = *(v1 - 184);
  return result;
}

uint64_t sub_21AFA65F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a2;
  v54 = sub_21B111334();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42C48, &qword_21B1141C0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v48 = &v47 - v10;
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0xE000000000000000;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0xE000000000000000;
  v11 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_ContextDimensions(0) + 32);
  v47 = a3;
  sub_21B111EB4();
  v49 = a1;
  v12 = sub_21B111294();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43010, &qword_21B114B70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21B1141D0;
  strcpy((inited + 32), "system_build");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = swift_getKeyPath();
  strcpy((inited + 56), "country_code");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  *(inited + 72) = swift_getKeyPath();
  *(inited + 80) = 0x656C61636F6CLL;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43018, &qword_21B114BD8);
  result = sub_21B112334();
  v15 = result;
  v16 = 0;
  v17 = result + 64;
  v18 = 1 << *(result + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(result + 64);
  v21 = (v18 + 63) >> 6;
  v50 = v5 + 16;
  v52 = v5;
  v53 = (v5 + 8);
  for (i = v12; v20; result = )
  {
    v22 = v56;
LABEL_10:
    v24 = __clz(__rbit64(v20)) | (v16 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(*(v15 + 56) + 8 * v24);
    v29 = *(v22 + 16);

    if (v29)
    {
      v30 = sub_21AF98B58(v26, v27);
      if (v31)
      {
        v32 = (*(v22 + 56) + 16 * v30);
        v26 = *v32;
        v33 = v32[1];

        v27 = v33;
      }
    }

    v12 = i;
    v20 &= v20 - 1;
    if (*(i + 16))
    {
      v34 = sub_21AF98B58(v26, v27);
      v36 = v35;

      if (v36)
      {
        v37 = v52;
        v38 = *(v12 + 56) + *(v52 + 72) * v34;
        v39 = v51;
        v40 = v54;
        (*(v52 + 16))(v51, v38, v54);
        sub_21B111314();
        (*(v37 + 8))(v39, v40);
        if (swift_dynamicCast())
        {
          v59 = v57;
          v60 = v58;
          swift_setAtWritableKeyPath();
        }
      }
    }

    else
    {
    }
  }

  v22 = v56;
  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return result;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v23);
    ++v16;
    if (v20)
    {
      v16 = v23;
      goto LABEL_10;
    }
  }

  v41 = v48;
  sub_21B0DF074(0x6C62616E655F7564, 0xEA00000000006465, v12, v48);

  v42 = v54;
  if (__swift_getEnumTagSinglePayload(v41, 1, v54) == 1)
  {
    v43 = sub_21B1112A4();
    OUTLINED_FUNCTION_0_1(v43);
    (*(v44 + 8))(v49);
    return sub_21AF94B38(v41);
  }

  else
  {
    sub_21B111314();
    v45 = sub_21B1112A4();
    OUTLINED_FUNCTION_0_1(v45);
    (*(v46 + 8))(v49);
    (*v53)(v41, v42);
    result = swift_dynamicCast();
    if (result)
    {
      *(v47 + 32) = v57;
    }
  }

  return result;
}

uint64_t type metadata accessor for SessionSchemaProvider()
{
  result = qword_27CD43020;
  if (!qword_27CD43020)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFA6BAC()
{
  sub_21AFA861C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_initClassMetadata2();
  }
}

uint64_t sub_21AFA6C44(char a1)
{
  sub_21B112EC4();
  MEMORY[0x21CEEA150](a1 & 1);
  return sub_21B112F14();
}

uint64_t sub_21AFA6C94()
{
  v0 = sub_21B111CB4();
  v1 = OUTLINED_FUNCTION_1(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  (*(v3 + 104))(v7 - v6, *MEMORY[0x277D39DD0], v0);
  v9 = sub_21B111C64();
  v11 = v10;
  result = (*(v3 + 8))(v8, v0);
  qword_27CD6E730 = v9;
  *algn_27CD6E738 = v11;
  return result;
}

uint64_t sub_21AFA6D80()
{
  v0 = sub_21B111844();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21B111924();
  __swift_allocate_value_buffer(v5, qword_27CD6E740);
  v21[2] = __swift_project_value_buffer(v5, qword_27CD6E740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D58, &qword_21B114298);
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42D60, &qword_21B1142A0) - 8);
  v7 = *(*v6 + 72);
  v8 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_21B113D90;
  v10 = (v9 + v8);
  v21[0] = v6[14];
  v21[1] = v9;
  *v10 = 0x72657070617257;
  v10[1] = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43050, &qword_21B114C18);
  v11 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43058, &qword_21B114C20) - 8);
  v12 = *(*v11 + 72);
  v13 = (*(*v11 + 80) + 32) & ~*(*v11 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21B113DB0;
  v15 = (v14 + v13);
  v16 = v11[14];
  *v15 = 0x746E65696C63;
  v15[1] = 0xE600000000000000;
  v17 = *(v1 + 104);
  v17(v4, *MEMORY[0x277D3E530], v0);
  v23 = 1;
  sub_21B111854();
  v18 = (v15 + v12);
  v19 = v11[14];
  *v18 = 0x64616F6C796170;
  v18[1] = 0xE700000000000000;
  v17(v4, *MEMORY[0x277D3E558], v0);
  if (qword_27CD424A8 != -1)
  {
    swift_once();
  }

  v22 = 1;
  sub_21B111854();
  sub_21B111874();
  sub_21B112334();
  sub_21B111934();
  sub_21B111954();
  sub_21B112334();
  sub_21B111834();
  sub_21B112334();
  return sub_21B1118D4();
}

uint64_t sub_21AFA7184()
{
  v0 = sub_21B112A34();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_21AFA71D0()
{
  v51 = sub_21B1110C4();
  v1 = OUTLINED_FUNCTION_1(v51);
  v3 = v2;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v1);
  v50 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v40 - v8;
  v48 = sub_21B1111C4();
  v9 = OUTLINED_FUNCTION_1(v48);
  v52 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v19);
  v21 = &v40 - v20;
  v22 = sub_21B111894();
  OUTLINED_FUNCTION_16_3(v22);
  if (qword_27CD424B0 != -1)
  {
    swift_once();
  }

  v23 = sub_21B111924();
  v24 = __swift_project_value_buffer(v23, qword_27CD6E740);
  (*(*(v23 - 8) + 16))(v21, v24, v23);
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v23);
  v28 = sub_21B111184();
  v29 = v28;
  if (!v0)
  {
    v40 = 0;
    v53 = MEMORY[0x277D84F90];
    v41 = v28;

    OUTLINED_FUNCTION_17_2();
    v30 = 0;
    v31 = v53;
    v43 = *MEMORY[0x277D3E5C8];
    v46 = *(v3 + 104);
    v42 = *MEMORY[0x277D3E5C0];
    v47 = v3 + 104;
    v32 = (v3 + 32);
    v45 = v52 + 32;
    v44 = *MEMORY[0x277D3E5E8];
    do
    {
      v33 = 0x6D6954746E657665;
      v34 = 0xEE00706D61747365;
      v35 = v44;
      switch(byte_282C8D998[v30 + 32])
      {
        case 1:
          v34 = 0xE600000000000000;
          v35 = v43;
          v33 = 0x746E65696C63;
          break;
        case 2:
          v34 = 0xE900000000000064;
          OUTLINED_FUNCTION_11_2();
          break;
        case 3:
          v34 = 0xEA00000000006465;
          OUTLINED_FUNCTION_10_1();
          break;
        case 4:
          OUTLINED_FUNCTION_3_7();
          break;
        case 5:
          v34 = 0xE600000000000000;
          v35 = v43;
          v33 = 0x656C61636F6CLL;
          break;
        case 6:
          OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      v36 = v50;
      v37 = v51;
      v46(v50, v35, v51);
      (*v32)(v49, v36, v37);
      sub_21B1111B4();
      OUTLINED_FUNCTION_14_3();
      if (v38)
      {
        OUTLINED_FUNCTION_8_5();
        v31 = v53;
      }

      ++v30;
      *(v31 + 16) = v33;
      (*(v52 + 32))(v31 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v34, v15, v48);
    }

    while (v30 != 7);
    v29 = v41;
    sub_21B111174();
  }

  return v29;
}

uint64_t sub_21AFA7620(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v2 = sub_21B1110C4();
  v3 = OUTLINED_FUNCTION_1(v2);
  v50 = v4;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v3);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v43 - v10;
  v12 = sub_21B1111C4();
  v13 = OUTLINED_FUNCTION_1(v12);
  v54 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD42FD8, &qword_21B114B40);
  OUTLINED_FUNCTION_25(v20);
  v22 = *(v21 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v23);
  v25 = v43 - v24;
  v26 = sub_21B111894();
  OUTLINED_FUNCTION_16_3(v26);
  v27 = sub_21B111924();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v27);
  v28 = v53;
  v29 = sub_21B111184();
  v30 = v29;
  if (!v28)
  {
    v43[1] = 0;
    v51 = v19;
    v52 = v12;
    v53 = v2;
    v55 = MEMORY[0x277D84F90];
    v44 = v29;

    OUTLINED_FUNCTION_17_2();
    v31 = 0;
    v32 = v55;
    v46 = *MEMORY[0x277D3E5C8];
    v33 = v50 + 104;
    v50 = *(v50 + 104);
    v45 = *MEMORY[0x277D3E5C0];
    v48 = v54 + 32;
    v49 = (v33 - 72);
    v47 = *MEMORY[0x277D3E5E8];
    do
    {
      v34 = 0x6D6954746E657665;
      v35 = 0xEE00706D61747365;
      v36 = v47;
      switch(byte_282C8D998[v31 + 32])
      {
        case 1:
          v35 = 0xE600000000000000;
          v36 = v46;
          v34 = 0x746E65696C63;
          break;
        case 2:
          v35 = 0xE900000000000064;
          OUTLINED_FUNCTION_11_2();
          break;
        case 3:
          v35 = 0xEA00000000006465;
          OUTLINED_FUNCTION_10_1();
          break;
        case 4:
          OUTLINED_FUNCTION_3_7();
          break;
        case 5:
          v35 = 0xE600000000000000;
          v36 = v46;
          v34 = 0x656C61636F6CLL;
          break;
        case 6:
          OUTLINED_FUNCTION_4_7();
          break;
        default:
          break;
      }

      v37 = v53;
      v38 = v33;
      (v50)(v9, v36, v53);
      v39 = v9;
      (*v49)(v11, v9, v37);
      v40 = v51;
      sub_21B1111B4();
      OUTLINED_FUNCTION_14_3();
      if (v41)
      {
        OUTLINED_FUNCTION_8_5();
        v32 = v55;
      }

      ++v31;
      *(v32 + 16) = v34;
      (*(v54 + 32))(v32 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v35, v40, v52);
      v33 = v38;
      v9 = v39;
    }

    while (v31 != 7);
    v30 = v44;
    sub_21B111174();
  }

  return v30;
}

uint64_t sub_21AFA7A10()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - v6;
  sub_21B111194();
  sub_21B111814();
  if (v1)
  {
  }

  sub_21B111894();
  OUTLINED_FUNCTION_31_0();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v13 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA867C(v7, v0 + v13);
  return swift_endAccess();
}

uint64_t sub_21AFA7B10@<X0>(void *a1@<X8>)
{

  v3 = sub_21AFA7184();
  if (v3)
  {
    if (v3 == 7)
    {
      result = OUTLINED_FUNCTION_5_5();
      __break(1u);
    }

    else
    {
      v11 = v3;
      v12 = sub_21B111134();
      v14 = v13;
      (*(*v1 + qword_27CD6E760 + 48))(v11, v12, v13);
      return sub_21AF99728(v12, v14);
    }
  }

  else
  {
    sub_21B111154();
    Double.fromReferenceToUnixTime.getter(v4);
    *a1 = v5;
    v6 = sub_21B1119B4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_0();
    return __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  }

  return result;
}

uint64_t sub_21AFA7C64@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v43 = a2;
  v44 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43048, &unk_21B117C90);
  OUTLINED_FUNCTION_25(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v45 = &v42 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  OUTLINED_FUNCTION_25(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_21B111894();
  v16 = OUTLINED_FUNCTION_1(v15);
  v18 = v17;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2();
  v23 = v22 - v21;
  v24 = qword_27CD6E758;
  swift_beginAccess();
  sub_21AFA88A8(v2 + v24, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_21AFA8918(v14, &qword_27CD43038, &qword_21B114C10);
LABEL_16:
    result = OUTLINED_FUNCTION_5_5();
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v23, v14, v15);
    sub_21B111884();
    if (!v3)
    {
      v28 = v45;
      switch(v44)
      {
        case 1:
          sub_21B111974();
          goto LABEL_10;
        case 2:
        case 3:
        case 4:
          goto LABEL_9;
        case 5:
          OUTLINED_FUNCTION_12_3();
LABEL_9:
          sub_21B111984();
LABEL_10:
          v30 = OUTLINED_FUNCTION_2_7();
          v31(v30);

        case 6:
          OUTLINED_FUNCTION_12_3();
          sub_21B111984();
          v29 = sub_21B1119B4();
          if (__swift_getEnumTagSinglePayload(v28, 1, v29) == 1)
          {
            sub_21AFA8918(v28, &qword_27CD43048, &unk_21B117C90);
          }

          else
          {
            if (swift_getEnumCaseMultiPayload() == 8)
            {
              v33 = sub_21AFA80BC(*v28, *(v28 + 8));
              v35 = v34;
              v36 = OUTLINED_FUNCTION_2_7();
              v37(v36);

              v38 = v43;
              *v43 = v33;
              v38[1] = v35;
              swift_storeEnumTagMultiPayload();
              OUTLINED_FUNCTION_31_0();
              return __swift_storeEnumTagSinglePayload(v39, v40, v41, v29);
            }

            sub_21AFA8978(v28);
          }

          sub_21AFA86EC();
          swift_allocError();
          *v32 = 0;
          swift_willThrow();

          break;
        default:
          goto LABEL_16;
      }
    }

    v25 = OUTLINED_FUNCTION_2_7();
    return v26(v25);
  }

  return result;
}

unint64_t sub_21AFA80BC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  sub_21AFA82BC(40, 0xE100000000000000, a1, a2);
  if (v4)
  {
    goto LABEL_6;
  }

  v5 = sub_21B1124E4();
  v2 = sub_21AFA8490(v5, a1, v2);
  OUTLINED_FUNCTION_15_3();
  result = sub_21AFA83A4(v6, v7, v8, v9);
  if (v11)
  {
LABEL_5:

LABEL_6:
    sub_21AFA86EC();
    swift_allocError();
    *v23 = 1;
    swift_willThrow();
    return v2;
  }

  if (result >> 14 < v2 >> 14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_15_3();
    sub_21B1127C4();
    v13 = v12;
    v2 = v14;

    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_13_2();
    sub_21AFA8784(v16, v17, v18, v19, v20, v21);
    if (v22)
    {
      goto LABEL_5;
    }

    result = sub_21B112784();
    if (v13 >> 14 >= result >> 14)
    {
      OUTLINED_FUNCTION_13_2();
      v24 = sub_21B1127C4();
      v26 = v25;
      v28 = v27;
      v30 = v29;

      v2 = MEMORY[0x21CEE9720](v24, v26, v28, v30);

      return v2;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_21AFA82BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_21B1124E4())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_21B112574() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_21B112D04();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_21AFA83A4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  while (1)
  {
    if ((a3 ^ a4) < 0x4000)
    {
      return 0;
    }

    if (sub_21B1127B4() == a1 && v8 == a2)
    {
      break;
    }

    v10 = sub_21B112D04();

    if (v10)
    {
      return a3;
    }

    a3 = sub_21B112784();
  }

  return a3;
}

unint64_t sub_21AFA8490(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    v4 = sub_21B112594();

    return v4;
  }

  return result;
}

uint64_t sub_21AFA8598()
{
  v0 = sub_21B1111A4();
  sub_21AFA8918(v0 + qword_27CD6E758, &qword_27CD43038, &qword_21B114C10);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_21AFA861C()
{
  if (!qword_27CD43030)
  {
    sub_21B111894();
    v0 = sub_21B112774();
    if (!v1)
    {
      atomic_store(v0, &qword_27CD43030);
    }
  }
}

uint64_t sub_21AFA867C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_21AFA86EC()
{
  result = qword_27CD43040;
  if (!qword_27CD43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43040);
  }

  return result;
}

uint64_t sub_21AFA8740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_21B112D04() & 1;
  }
}

uint64_t sub_21AFA8784(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[3] = a6;
  while (1)
  {
    if ((a4 ^ a3) < 0x4000)
    {
      return 0;
    }

    a4 = sub_21B112794();
    v14[0] = sub_21B1127B4();
    v14[1] = v9;
    v10 = a1(v14);
    if (v6)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return a4;
    }
  }

  return a4;
}

uint64_t sub_21AFA88A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43038, &qword_21B114C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA8918(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21AFA8978(uint64_t a1)
{
  v2 = sub_21B1119B4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for UploadEventType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for SessionSchemaProvider.InternalError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_21AFA8B3C()
{
  result = qword_27CD43060;
  if (!qword_27CD43060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43060);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_5()
{

  return sub_21B1129C4();
}

void OUTLINED_FUNCTION_8_5()
{

  sub_21AFCC59C();
}

void OUTLINED_FUNCTION_14_3()
{
  *(v1 - 72) = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) + 1;
}

uint64_t OUTLINED_FUNCTION_16_3(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2 + v1, 1, 1, a1);
}

void OUTLINED_FUNCTION_17_2()
{

  sub_21AFCC59C();
}

uint64_t sub_21AFA8CF0(uint64_t a1)
{
  v61[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43088, &qword_21B114D28);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v50 - v4;
  v60 = type metadata accessor for FileArray.Container();
  v6 = OUTLINED_FUNCTION_1(v60);
  v54 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v58 = v11 - v10;
  v12 = sub_21B110D94();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2();
  v20 = v19 - v18;
  v21 = [objc_opt_self() defaultManager];
  v22 = sub_21B110CE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43090, &unk_21B114D30);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21B113D90;
  v24 = *MEMORY[0x277CBE8A8];
  *(v23 + 32) = *MEMORY[0x277CBE8A8];
  v61[0] = 0;
  v25 = v24;
  v26 = sub_21AFAB37C(v22, v23, 7, v61, v21);

  v27 = v61[0];
  if (!v26)
  {
    v47 = v61[0];
    sub_21B110C84();

    swift_willThrow();
    (*(v15 + 8))(a1, v12);
LABEL_21:
    v48 = *MEMORY[0x277D85DE8];
    return v47;
  }

  v59 = v21;
  v28 = sub_21B1125F4();
  v29 = v27;

  v61[0] = v28;

  v30 = v57;
  sub_21AFA9BD0(v61);
  if (!v30)
  {

    v31 = *(v61[0] + 2);
    if (v31)
    {
      v50[1] = 0;
      v51 = v15;
      v33 = *(v15 + 16);
      v32 = v15 + 16;
      v34 = *(v32 + 64);
      v50[0] = v61[0];
      v35 = v61[0] + ((v34 + 32) & ~v34);
      v55 = *(v32 + 56);
      v56 = v33;
      v52 = a1;
      v53 = (v32 + 16);
      v57 = v32;
      v36 = (v32 - 8);
      v37 = MEMORY[0x277D84F90];
      do
      {
        v38 = v12;
        v56(v20, v35, v12);
        LOBYTE(v61[0]) = 0;
        sub_21B110D44();
        v39 = sub_21B1123D4();

        v40 = [v59 fileExistsAtPath:v39 isDirectory:{v61, v50[0]}];

        if (v40 && (v61[0] & 1) == 0)
        {
          v12 = v38;
          (*v53)(v5, v20, v38);
          swift_storeEnumTagMultiPayload();
          v41 = 0;
        }

        else
        {
          v12 = v38;
          (*v36)(v20, v38);
          v41 = 1;
        }

        v42 = v60;
        __swift_storeEnumTagSinglePayload(v5, v41, 1, v60);
        if (__swift_getEnumTagSinglePayload(v5, 1, v42) == 1)
        {
          sub_21AFAB410(v5);
        }

        else
        {
          sub_21AFAB478(v5, v58);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v44 = *(v37 + 16);
            sub_21B0D4D90();
            v37 = v45;
          }

          v43 = *(v37 + 16);
          if (v43 >= *(v37 + 24) >> 1)
          {
            sub_21B0D4D90();
            v37 = v46;
          }

          *(v37 + 16) = v43 + 1;
          sub_21AFAB478(v58, v37 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v43);
          v12 = v38;
        }

        v35 += v55;
        --v31;
      }

      while (v31);

      v15 = v51;
      a1 = v52;
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
    }

    type metadata accessor for FileArray();
    v47 = swift_allocObject();
    v47[4] = MEMORY[0x277D84F90];
    v47[5] = 0;
    v47[2] = *(v37 + 16);
    v47[3] = v37;

    (*(v15 + 8))(a1, v12);
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t sub_21AFA921C()
{
  v0 = sub_21B110CD4();
  v2 = v1;
  if (v0 == sub_21B110CD4() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_21B112D04();
  }

  return v5 & 1;
}

void sub_21AFA92B4(unint64_t a1)
{
  v3 = v1;
  v46 = sub_21B110D94();
  v5 = OUTLINED_FUNCTION_1(v46);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2();
  v12 = (v11 - v10);
  v13 = type metadata accessor for FileArray.Container();
  v14 = OUTLINED_FUNCTION_1(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v21 = (&v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v19);
  v23 = (&v42 - v22);
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v3[3];
  if (*(v24 + 16) <= a1)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v45 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v25 = *(v16 + 72) * a1;
  sub_21AFA9C78(v24 + v45 + v25, v23);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v26 = *v23;
    v27 = v23[1];
    v12 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20) + 48);
LABEL_11:
    (*(v7 + 8))(v12, v46);
    return;
  }

  v43 = v25;
  v28 = v23;
  v29 = v46;
  (*(v7 + 32))(v12, v28, v46);
  v44 = sub_21B110DC4();
  if (v2)
  {
    (*(v7 + 8))(v12, v29);
    return;
  }

  v31 = v30;
  v42 = 0;
  sub_21B0C63C4();
  v32 = *(v3[4] + 16);
  sub_21B0C6450(v32);
  v33 = v3[4];
  *(v33 + 16) = v32 + 1;
  *(v33 + 8 * v32 + 32) = a1;
  v3[4] = v33;
  v34 = v44;
  v35 = MEMORY[0x21CEE80F0](v44, v31);
  v36 = v3[5];
  v37 = __OFADD__(v36, v35);
  v38 = v36 + v35;
  if (!v37)
  {
    v3[5] = v38;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20) + 48);
    *v21 = v34;
    v21[1] = v31;
    (*(v7 + 16))(v21 + v39, v12, v46);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v13 = v3[3];
    sub_21AF99818(v34, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[3] = v13;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_14:
  __break(1u);
LABEL_15:
  sub_21AFAB2F0(v13);
  v13 = v41;
  v3[3] = v41;
LABEL_9:
  if (*(v13 + 16) > a1)
  {
    sub_21AFAB304(v21, v13 + v45 + v43);
    v3[3] = v13;
    swift_endAccess();
    sub_21AFA9640();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_21AFA9640()
{
  v46 = sub_21B110D94();
  v1 = OUTLINED_FUNCTION_1(v46);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = type metadata accessor for FileArray.Container();
  v10 = OUTLINED_FUNCTION_1(v9);
  v44 = v11;
  v45 = v10;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v41 - v17);
  result = swift_beginAccess();
  v42 = (v3 + 16);
  v43 = (v3 + 32);
  v41 = (v3 + 8);
  while (v0[5] > 0x800000)
  {
    v20 = v0[4];
    v21 = v20[2];
    if (!v21)
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
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
      result = sub_21B1129C4();
      __break(1u);
      return result;
    }

    v22 = v20[4];
    v23 = v0[4];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[4] = v20;
    if (!isUniquelyReferenced_nonNull_native || (v21 - 1) > v20[3] >> 1)
    {
      sub_21B0D5020();
      v20 = v25;
      v0[4] = v25;
    }

    v26 = v20[2];
    memmove(v20 + 4, v20 + 5, 8 * v26 - 8);
    v20[2] = v26 - 1;
    v0[4] = v20;
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    v27 = v0[3];
    if (v22 >= *(v27 + 16))
    {
      goto LABEL_23;
    }

    v28 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v29 = *(v44 + 72) * v22;
    sub_21AFA9C78(v27 + v28 + v29, v18);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_28;
    }

    v30 = *v18;
    v31 = v18[1];
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43080, &qword_21B114D20);
    (*v43)(v8, v18 + *(v32 + 48), v46);
    v33 = 0;
    switch(v31 >> 62)
    {
      case 1uLL:
        LODWORD(v33) = HIDWORD(v30) - v30;
        if (__OFSUB__(HIDWORD(v30), v30))
        {
          goto LABEL_27;
        }

        v33 = v33;
        break;
      case 2uLL:
        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        v36 = __OFSUB__(v34, v35);
        v33 = v34 - v35;
        if (v36)
        {
          goto LABEL_26;
        }

        break;
      case 3uLL:
        break;
      default:
        v33 = BYTE6(v31);
        break;
    }

    v37 = v0[5];
    v36 = __OFSUB__(v37, v33);
    v38 = v37 - v33;
    if (v36)
    {
      goto LABEL_24;
    }

    v0[5] = v38;
    (*v42)(v16, v8, v46);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v0[3] = v27;
    if ((v39 & 1) == 0)
    {
      sub_21AFAB2F0(v27);
      v27 = v40;
      v0[3] = v40;
    }

    if (v22 >= *(v27 + 16))
    {
      goto LABEL_25;
    }

    sub_21AFAB304(v16, v27 + v28 + v29);
    v0[3] = v27;
    swift_endAccess();
    sub_21AF99728(v30, v31);
    result = (*v41)(v8, v46);
  }

  return result;
}

uint64_t sub_21AFA9A28()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t sub_21AFA9A50()
{
  sub_21AFA9A28();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t type metadata accessor for FileArray.Container()
{
  result = qword_27CD43068;
  if (!qword_27CD43068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21AFA9AF4()
{
  sub_21B110D94();
  if (v0 <= 0x3F)
  {
    sub_21AFA9B68();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_21AFA9B68()
{
  if (!qword_27CD43078)
  {
    sub_21B110D94();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CD43078);
    }
  }
}

uint64_t sub_21AFA9BD0(uint64_t *a1)
{
  v2 = *(sub_21B110D94() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_21B0D631C(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v7[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v7[1] = v5;
  result = sub_21AFA9CDC(v7);
  *a1 = v3;
  return result;
}

uint64_t sub_21AFA9C78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFA9CDC(uint64_t a1)
{
  v2 = *(a1 + 8);
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
        sub_21B110D94();
        v6 = sub_21B112614();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_21B110D94() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_21AFAA12C(v8, v9, a1, v4);
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
    return sub_21AFA9E0C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21AFA9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_21B110D94();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v51 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v41 - v16;
  v43 = a2;
  if (a3 != a2)
  {
    v18 = v15;
    v19 = *a4;
    v21 = *(v14 + 16);
    v20 = v14 + 16;
    v22 = *(v20 + 56);
    v52 = (v20 - 8);
    v53 = v21;
    v54 = v20;
    v49 = (v20 + 16);
    v50 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v48 = -v22;
    v24 = a1 - a3;
    v42 = v22;
    v25 = v19 + v22 * a3;
    while (2)
    {
      v46 = v23;
      v47 = a3;
      v44 = v25;
      v45 = v24;
      v26 = v23;
      while (1)
      {
        v27 = v53;
        v53(v17, v25, v8);
        v27(v18, v26, v8);
        v28 = sub_21B110CD4();
        v29 = v17;
        v30 = v18;
        v32 = v31;
        if (v28 == sub_21B110CD4() && v32 == v33)
        {
          break;
        }

        v35 = sub_21B112D04();

        v36 = *v52;
        (*v52)(v30, v8);
        result = (v36)(v29, v8);
        v18 = v30;
        v17 = v29;
        if (v35)
        {
          if (!v50)
          {
            __break(1u);
            return result;
          }

          v37 = *v49;
          v38 = v51;
          (*v49)(v51, v25, v8);
          swift_arrayInitWithTakeFrontToBack();
          result = (v37)(v26, v38, v8);
          v26 += v48;
          v25 += v48;
          if (!__CFADD__(v24++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      v40 = *v52;
      (*v52)(v30, v8);
      result = (v40)(v29, v8);
      v18 = v30;
      v17 = v29;
LABEL_14:
      a3 = v47 + 1;
      v23 = v46 + v42;
      v24 = v45 - 1;
      v25 = v44 + v42;
      if (v47 + 1 != v43)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_21AFAA12C(uint64_t *a1, uint64_t a2, char **a3, uint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v8 = sub_21B110D94();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v151 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v164 = &v142 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v142 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v160 = &v142 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v159 = &v142 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  MEMORY[0x28223BE20](v22);
  v27 = &v142 - v23;
  v157 = v24;
  v158 = a3;
  v28 = a3[1];
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_114:
    v169 = *v146;
    if (!v169)
    {
      goto LABEL_156;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_116;
    }

    goto LABEL_150;
  }

  v165 = v25;
  v142 = a4;
  v29 = 0;
  v169 = v24 + 16;
  v167 = (v24 + 32);
  v168 = (v24 + 8);
  v30 = MEMORY[0x277D84F90];
  v161 = v8;
  v153 = v16;
  v143 = v26;
  v145 = &v142 - v23;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v148 = v29;
    if (v29 + 1 < v28)
    {
      v163 = v28;
      v144 = v30;
      v33 = v27;
      v34 = *v158;
      v35 = *(v24 + 72);
      v36 = v26;
      v156 = v29 + 1;
      v37 = v29;
      v38 = &v34[v35 * (v29 + 1)];
      v39 = *(v24 + 16);
      v39(v33, v38, v8);
      v40 = &v34[v35 * v37];
      v41 = v145;
      v155 = v39;
      v39(v36, v40, v8);
      LODWORD(v162) = sub_21AFA921C();
      if (v5)
      {
        v141 = *v168;
        (*v168)(v36, v8);
        (v141)(v41, v8);
LABEL_124:

        return;
      }

      v147 = 0;
      v30 = v168;
      v42 = *v168;
      (*v168)(v36, v8);
      v154 = v42;
      (v42)(v41, v8);
      v43 = v148 + 2;
      v44 = &v34[v35 * (v148 + 2)];
      v32 = v156;
      v45 = v35;
      v166 = v35;
      v46 = v163;
      while (1)
      {
        v47 = v43;
        if (v32 + 1 >= v46)
        {
          break;
        }

        v48 = v32;
        v49 = v161;
        v5 = v155;
        (v155)(v159, v44, v161);
        v5(v160, v38, v49);
        v50 = sub_21B110CD4();
        v52 = v51;
        if (v50 == sub_21B110CD4() && v52 == v53)
        {
          v55 = 0;
        }

        else
        {
          v55 = sub_21B112D04();
        }

        v56 = v161;
        v30 = v154;
        (v154)(v160, v161);
        (v30)(v159, v56);
        v45 = v166;
        v44 += v166;
        v38 += v166;
        v32 = v48 + 1;
        v43 = v47 + 1;
        v46 = v163;
        if ((v162 ^ v55))
        {
          goto LABEL_16;
        }
      }

      v32 = v46;
LABEL_16:
      if (v162)
      {
        v31 = v148;
        if (v32 < v148)
        {
          goto LABEL_149;
        }

        v5 = v147;
        if (v148 >= v32)
        {
          v24 = v157;
          v30 = v144;
          v8 = v161;
          v16 = v153;
          goto LABEL_39;
        }

        if (v46 >= v47)
        {
          v57 = v47;
        }

        else
        {
          v57 = v46;
        }

        v58 = v45 * (v57 - 1);
        v59 = v45 * v57;
        v60 = v148;
        v61 = v148 * v45;
        v62 = v32;
        do
        {
          if (v60 != --v62)
          {
            v63 = *v158;
            if (!*v158)
            {
              goto LABEL_154;
            }

            v64 = v161;
            v163 = *v167;
            v163(v151, &v63[v61], v161);
            v65 = v61 < v58 || &v63[v61] >= &v63[v59];
            if (v65)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v61 != v58)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v163(&v63[v58], v151, v64);
            v5 = v147;
            v45 = v166;
          }

          ++v60;
          v58 -= v45;
          v59 -= v45;
          v61 += v45;
        }

        while (v60 < v62);
      }

      else
      {
        v5 = v147;
      }

      v24 = v157;
      v30 = v144;
      v8 = v161;
      v16 = v153;
      v31 = v148;
    }

LABEL_39:
    v66 = v158[1];
    if (v32 < v66)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_146;
      }

      if (v32 - v31 < v142)
      {
        break;
      }
    }

LABEL_62:
    if (v32 < v31)
    {
      goto LABEL_145;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_21B0D4B14(0, *(v30 + 2) + 1, 1, v30);
      v30 = v132;
    }

    v89 = *(v30 + 2);
    v88 = *(v30 + 3);
    v90 = v89 + 1;
    v156 = v32;
    if (v89 >= v88 >> 1)
    {
      sub_21B0D4B14(v88 > 1, v89 + 1, 1, v30);
      v30 = v133;
    }

    *(v30 + 2) = v90;
    v91 = v30 + 32;
    v92 = &v30[16 * v89 + 32];
    v93 = v156;
    *v92 = v148;
    *(v92 + 1) = v93;
    v166 = *v146;
    if (!v166)
    {
      goto LABEL_155;
    }

    if (v89)
    {
      while (1)
      {
        v94 = v90 - 1;
        v95 = &v91[16 * v90 - 16];
        v96 = &v30[16 * v90];
        if (v90 >= 4)
        {
          break;
        }

        if (v90 == 3)
        {
          v97 = *(v30 + 4);
          v98 = *(v30 + 5);
          v107 = __OFSUB__(v98, v97);
          v99 = v98 - v97;
          v100 = v107;
LABEL_82:
          if (v100)
          {
            goto LABEL_132;
          }

          v112 = *v96;
          v111 = *(v96 + 1);
          v113 = __OFSUB__(v111, v112);
          v114 = v111 - v112;
          v115 = v113;
          if (v113)
          {
            goto LABEL_135;
          }

          v116 = *(v95 + 1);
          v117 = v116 - *v95;
          if (__OFSUB__(v116, *v95))
          {
            goto LABEL_138;
          }

          if (__OFADD__(v114, v117))
          {
            goto LABEL_140;
          }

          if (v114 + v117 >= v99)
          {
            if (v99 < v117)
            {
              v94 = v90 - 2;
            }

            goto LABEL_104;
          }

          goto LABEL_97;
        }

        if (v90 < 2)
        {
          goto LABEL_134;
        }

        v119 = *v96;
        v118 = *(v96 + 1);
        v107 = __OFSUB__(v118, v119);
        v114 = v118 - v119;
        v115 = v107;
LABEL_97:
        if (v115)
        {
          goto LABEL_137;
        }

        v121 = *v95;
        v120 = *(v95 + 1);
        v107 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v107)
        {
          goto LABEL_139;
        }

        if (v122 < v114)
        {
          goto LABEL_111;
        }

LABEL_104:
        if (v94 - 1 >= v90)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        if (!*v158)
        {
          goto LABEL_152;
        }

        v126 = v30;
        v127 = &v91[16 * v94 - 16];
        v30 = *v127;
        v128 = &v91[16 * v94];
        v129 = *(v128 + 1);
        sub_21AFAACE8(&(*v158)[*(v157 + 72) * *v127], &(*v158)[*(v157 + 72) * *v128], &(*v158)[*(v157 + 72) * v129], v166);
        if (v5)
        {
          goto LABEL_124;
        }

        if (v129 < v30)
        {
          goto LABEL_127;
        }

        v130 = *(v126 + 2);
        if (v94 > v130)
        {
          goto LABEL_128;
        }

        *v127 = v30;
        *(v127 + 1) = v129;
        if (v94 >= v130)
        {
          goto LABEL_129;
        }

        v90 = v130 - 1;
        sub_21B0D61C0(v128 + 16, v130 - 1 - v94, &v91[16 * v94]);
        v30 = v126;
        *(v126 + 2) = v130 - 1;
        v131 = v130 > 2;
        v16 = v153;
        if (!v131)
        {
          goto LABEL_111;
        }
      }

      v101 = &v91[16 * v90];
      v102 = *(v101 - 8);
      v103 = *(v101 - 7);
      v107 = __OFSUB__(v103, v102);
      v104 = v103 - v102;
      if (v107)
      {
        goto LABEL_130;
      }

      v106 = *(v101 - 6);
      v105 = *(v101 - 5);
      v107 = __OFSUB__(v105, v106);
      v99 = v105 - v106;
      v100 = v107;
      if (v107)
      {
        goto LABEL_131;
      }

      v108 = *(v96 + 1);
      v109 = v108 - *v96;
      if (__OFSUB__(v108, *v96))
      {
        goto LABEL_133;
      }

      v107 = __OFADD__(v99, v109);
      v110 = v99 + v109;
      if (v107)
      {
        goto LABEL_136;
      }

      if (v110 >= v104)
      {
        v124 = *v95;
        v123 = *(v95 + 1);
        v107 = __OFSUB__(v123, v124);
        v125 = v123 - v124;
        if (v107)
        {
          goto LABEL_144;
        }

        if (v99 < v125)
        {
          v94 = v90 - 2;
        }

        goto LABEL_104;
      }

      goto LABEL_82;
    }

LABEL_111:
    v24 = v157;
    v28 = v158[1];
    v29 = v156;
    v8 = v161;
    v26 = v143;
    v27 = v145;
    if (v156 >= v28)
    {
      goto LABEL_114;
    }
  }

  v67 = (v31 + v142);
  if (__OFADD__(v31, v142))
  {
    goto LABEL_147;
  }

  if (v67 >= v66)
  {
    v67 = v158[1];
  }

  if (v67 < v31)
  {
LABEL_148:
    __break(1u);
LABEL_149:
    __break(1u);
LABEL_150:
    v30 = sub_21B0D61A8(v30);
LABEL_116:
    v134 = v30 + 16;
    v135 = *(v30 + 2);
    while (v135 >= 2)
    {
      if (!*v158)
      {
        goto LABEL_153;
      }

      v136 = v30;
      v30 += 16 * v135;
      v137 = *v30;
      v138 = &v134[2 * v135];
      v139 = *(v138 + 1);
      sub_21AFAACE8(&(*v158)[*(v157 + 72) * *v30], &(*v158)[*(v157 + 72) * *v138], &(*v158)[*(v157 + 72) * v139], v169);
      if (v5)
      {
        break;
      }

      if (v139 < v137)
      {
        goto LABEL_141;
      }

      if (v135 - 2 >= *v134)
      {
        goto LABEL_142;
      }

      *v30 = v137;
      *(v30 + 1) = v139;
      v140 = *v134 - v135;
      if (*v134 < v135)
      {
        goto LABEL_143;
      }

      v135 = *v134 - 1;
      sub_21B0D61C0(v138 + 16, v140, v138);
      *v134 = v135;
      v30 = v136;
    }

    goto LABEL_124;
  }

  if (v32 == v67)
  {
    goto LABEL_62;
  }

  v144 = v30;
  v147 = v5;
  v68 = *v158;
  v69 = *(v24 + 72);
  v166 = *(v24 + 16);
  v70 = &v68[v69 * (v32 - 1)];
  v162 = -v69;
  v163 = v68;
  v71 = (v31 - v32);
  v149 = v69;
  v150 = v67;
  v72 = &v68[v32 * v69];
  v73 = v165;
LABEL_48:
  v155 = v70;
  v156 = v32;
  v152 = v72;
  v154 = v71;
  while (1)
  {
    v74 = v166;
    (v166)(v73, v72, v8);
    v74(v16, v70, v8);
    v75 = v16;
    v76 = sub_21B110CD4();
    v77 = v8;
    v79 = v78;
    if (v76 == sub_21B110CD4() && v79 == v80)
    {

      v87 = *v168;
      (*v168)(v75, v77);
      (v87)(v73, v77);
      v8 = v77;
      v16 = v75;
      goto LABEL_60;
    }

    v82 = v73;
    v83 = sub_21B112D04();

    v84 = *v168;
    (*v168)(v75, v77);
    (v84)(v82, v77);
    v8 = v77;
    v16 = v75;
    if ((v83 & 1) == 0)
    {
      v73 = v165;
LABEL_60:
      v32 = v156 + 1;
      v70 = &v155[v149];
      v71 = v154 - 1;
      v72 = &v152[v149];
      if (v156 + 1 == v150)
      {
        v32 = v150;
        v5 = v147;
        v30 = v144;
        v31 = v148;
        goto LABEL_62;
      }

      goto LABEL_48;
    }

    if (!v163)
    {
      break;
    }

    v85 = *v167;
    v86 = v164;
    (*v167)(v164, v72, v77);
    swift_arrayInitWithTakeFrontToBack();
    v85(v70, v86, v77);
    v70 += v162;
    v72 += v162;
    v65 = __CFADD__(v71++, 1);
    v73 = v165;
    if (v65)
    {
      goto LABEL_60;
    }
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

uint64_t sub_21AFAACE8(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_21B110D94();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v72 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v71 = &v65 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v65 - v15;
  result = MEMORY[0x28223BE20](v14);
  v21 = *(v20 + 72);
  if (!v21)
  {
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    return result;
  }

  v22 = a2 - a1 == 0x8000000000000000 && v21 == -1;
  if (v22)
  {
    goto LABEL_72;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v21 == -1)
  {
    goto LABEL_73;
  }

  v25 = (a2 - a1) / v21;
  v78 = a1;
  v77 = a4;
  v73 = (v18 + 8);
  v74 = (v18 + 16);
  v26 = v23 / v21;
  if (v25 < v23 / v21)
  {
    v69 = &v65 - v19;
    v71 = v16;
    sub_21AFCC2B8(a1, (a2 - a1) / v21, a4);
    v72 = (a4 + v25 * v21);
    v76 = v72;
    v27 = a4;
    v28 = v21;
    v68 = v8;
    v70 = a3;
    while (1)
    {
      if (v27 >= v72 || a2 >= a3)
      {
        goto LABEL_70;
      }

      v30 = a1;
      v31 = *v74;
      v32 = v69;
      v33 = a2;
      (*v74)(v69, a2, v8);
      v75 = v27;
      v34 = v71;
      v31();
      v35 = sub_21B110CD4();
      v37 = v36;
      if (v35 == sub_21B110CD4() && v37 == v38)
      {

        v45 = *v73;
        (*v73)(v34, v8);
        v45(v32, v8);
      }

      else
      {
        v40 = sub_21B112D04();

        v41 = *v73;
        (*v73)(v34, v8);
        v41(v32, v8);
        if (v40)
        {
          v42 = v33;
          a2 = v33 + v28;
          v43 = v30;
          if (v30 < v33 || v30 >= a2)
          {
            v8 = v68;
            swift_arrayInitWithTakeFrontToBack();
            a3 = v70;
          }

          else
          {
            a3 = v70;
            v8 = v68;
            if (v30 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v75;
          goto LABEL_40;
        }
      }

      v27 = v75 + v28;
      v43 = v30;
      v46 = v30 < v75 || v30 >= v27;
      a2 = v33;
      if (v46)
      {
        v8 = v68;
        swift_arrayInitWithTakeFrontToBack();
        a3 = v70;
      }

      else
      {
        a3 = v70;
        v8 = v68;
        if (v30 != v75)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v77 = v27;
LABEL_40:
      a1 = v43 + v28;
      v78 = a1;
    }
  }

  sub_21AFCC2B8(a2, v23 / v21, a4);
  v75 = a4;
  v47 = a4 + v26 * v21;
  v48 = -v21;
  v49 = v47;
  v69 = -v21;
LABEL_42:
  v70 = a2;
  v68 = a2 + v48;
  v50 = a3;
  v66 = v49;
  while (1)
  {
    if (v47 <= v75)
    {
      v78 = v70;
      v76 = v49;
      goto LABEL_70;
    }

    if (v70 <= a1)
    {
      break;
    }

    v67 = v49;
    v51 = v47 + v48;
    v52 = *v74;
    (*v74)(v71, v47 + v48, v8);
    (v52)(v72, v68, v8);
    v53 = sub_21B110CD4();
    v55 = v54;
    if (v53 == sub_21B110CD4() && v55 == v56)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_21B112D04();
    }

    v59 = (v50 + v69);
    v60 = *v73;
    (*v73)(v72, v8);
    v60(v71, v8);
    if (v58)
    {
      v62 = v50 < v70 || v59 >= v70;
      a3 = v59;
      if (v62)
      {
        a2 = v68;
        swift_arrayInitWithTakeFrontToBack();
        v49 = v67;
        v48 = v69;
      }

      else
      {
        v64 = v67;
        v63 = v68;
        v49 = v67;
        v22 = v50 == v70;
        a2 = v68;
        v48 = v69;
        if (!v22)
        {
          swift_arrayInitWithTakeBackToFront();
          a2 = v63;
          v49 = v64;
        }
      }

      goto LABEL_42;
    }

    if (v50 < v47 || v59 >= v47)
    {
      swift_arrayInitWithTakeFrontToBack();
      v50 = v59;
      v47 = v51;
      v49 = v51;
      v48 = v69;
    }

    else
    {
      v49 = v51;
      v22 = v47 == v50;
      v50 = v59;
      v47 = v51;
      v48 = v69;
      if (!v22)
      {
        swift_arrayInitWithTakeBackToFront();
        v50 = v59;
        v47 = v51;
        v49 = v51;
      }
    }
  }

  v78 = v70;
  v76 = v66;
LABEL_70:
  sub_21AFD1AA8(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_21AFAB304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_21AFAB37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for URLResourceKey(0);
  v9 = sub_21B1125E4();

  v10 = [a5 contentsOfDirectoryAtURL:a1 includingPropertiesForKeys:v9 options:a3 error:a4];

  return v10;
}

uint64_t sub_21AFAB410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43088, &qword_21B114D28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21AFAB478(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FileArray.Container();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21AFAB52C()
{
  sub_21AFABF70();

  return sub_21B111F34();
}

uint64_t sub_21AFAB5D4()
{
  sub_21AFABF1C();

  return sub_21B111F34();
}

uint64_t sub_21AFAB648()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD43098);
  __swift_project_value_buffer(v0, qword_27CD43098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113DA0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "RETENTION_TYPE_UNSPECIFIED";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "RETENTION_TYPE_NEW";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RETENTION_TYPE_DORMANT";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "RETENTION_TYPE_CHURNED";
  *(v14 + 1) = 22;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "RETENTION_TYPE_RETURNED";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "RETENTION_TYPE_RETAINED";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21AFAB928()
{
  v0 = sub_21B112254();
  __swift_allocate_value_buffer(v0, qword_27CD430B0);
  __swift_project_value_buffer(v0, qword_27CD430B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43128, &unk_21B116AD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CD43130, &unk_21B115090) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_21B113D80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "USE_COHORT_FREQUENCY_UNSPECIFIED";
  *(v6 + 8) = 32;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21870];
  v8 = sub_21B112234();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "USE_COHORT_FREQUENCY_CASUAL_USER";
  *(v10 + 8) = 32;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "USE_COHORT_FREQUENCY_MEDIUM_USER";
  *(v12 + 1) = 32;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "USE_COHORT_FREQUENCY_POWER_USER";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_21B112244();
}

uint64_t sub_21AFABB88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_21B112254();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_21AFABC24()
{
  result = qword_27CD430C8;
  if (!qword_27CD430C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430C8);
  }

  return result;
}

unint64_t sub_21AFABC7C()
{
  result = qword_27CD430D0;
  if (!qword_27CD430D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430D0);
  }

  return result;
}

unint64_t sub_21AFABCD4()
{
  result = qword_27CD430D8;
  if (!qword_27CD430D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430D8);
  }

  return result;
}

unint64_t sub_21AFABD5C()
{
  result = qword_27CD430F0;
  if (!qword_27CD430F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430F0);
  }

  return result;
}

unint64_t sub_21AFABDB4()
{
  result = qword_27CD430F8;
  if (!qword_27CD430F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD430F8);
  }

  return result;
}

unint64_t sub_21AFABE0C()
{
  result = qword_27CD43100;
  if (!qword_27CD43100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43100);
  }

  return result;
}

uint64_t sub_21AFABE90(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

unint64_t sub_21AFABF1C()
{
  result = qword_27CD43118;
  if (!qword_27CD43118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43118);
  }

  return result;
}

unint64_t sub_21AFABF70()
{
  result = qword_27CD43120;
  if (!qword_27CD43120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CD43120);
  }

  return result;
}

uint64_t sub_21AFAC000()
{
  v0 = sub_21B112404();
  v2 = v1;
  if (v0 == sub_21B112404() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_27_1();
  }

  return v5 & 1;
}

uint64_t sub_21AFAC078(unsigned __int8 a1, char a2)
{
  v2 = 7630441;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7630441;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x3436746E69;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v5 = 1953393013;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v5 = 0x3436746E6975;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x74616F6C66;
      break;
    case 5:
      v3 = 0xE600000000000000;
      v5 = 0x656C62756F64;
      break;
    case 6:
      v3 = 0xE400000000000000;
      v5 = 1819242338;
      break;
    case 7:
      v3 = 0xE400000000000000;
      v5 = 1836412517;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1635017060;
      break;
    case 9:
      v3 = 0xE600000000000000;
      v5 = 0x676E69727473;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x616D65686373;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x3436746E69;
      break;
    case 2:
      v6 = 0xE400000000000000;
      v2 = 1953393013;
      break;
    case 3:
      v6 = 0xE600000000000000;
      v2 = 0x3436746E6975;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x74616F6C66;
      break;
    case 5:
      v6 = 0xE600000000000000;
      v2 = 0x656C62756F64;
      break;
    case 6:
      v6 = 0xE400000000000000;
      v2 = 1819242338;
      break;
    case 7:
      v6 = 0xE400000000000000;
      v2 = 1836412517;
      break;
    case 8:
      v6 = 0xE400000000000000;
      v2 = 1635017060;
      break;
    case 9:
      v6 = 0xE600000000000000;
      v2 = 0x676E69727473;
      break;
    case 10:
      v6 = 0xE600000000000000;
      v2 = 0x616D65686373;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

BOOL sub_21AFAC2C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = a1 != 0;
  if ((a2 & 1) == 0)
  {
    v4 = a1;
  }

  v5 = a3 != 0;
  if ((a4 & 1) == 0)
  {
    v5 = a3;
  }

  return v4 == v5;
}

BOOL sub_21AFAC2F0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = a1;
  }

  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v5 = a3;
  }

  return v4 == v5;
}

uint64_t sub_21AFAC30C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1801807223;
  }

  else
  {
    v3 = 7954788;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1801807223;
  }

  else
  {
    v5 = 7954788;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_21AFAC3E0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x736D756E65;
  }

  else
  {
    v3 = 0x73616D65686373;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x736D756E65;
  }

  else
  {
    v5 = 0x73616D65686373;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_21AFAC470(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6867696C746F7073;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000021B12FFA0;
  }

  else
  {
    v4 = 0xEE00797272614374;
  }

  if (a2)
  {
    v5 = 0x6867696C746F7073;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (a2)
  {
    v6 = 0xEE00797272614374;
  }

  else
  {
    v6 = 0x800000021B12FFA0;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_21AFAC514(unsigned __int8 a1, char a2)
{
  v2 = 0x746E65696C63;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x746E65696C63;
  switch(v4)
  {
    case 1:
      v5 = 0x6D5F656369766564;
      v3 = 0xEC0000006C65646FLL;
      break;
    case 2:
      v3 = 0x800000021B12FFD0;
      v5 = 0xD000000000000014;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6D726F6674616C70;
      break;
    case 4:
      v5 = 0xD000000000000011;
      v3 = 0x800000021B12FFF0;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1684366707;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = 0x6C616E7265746E69;
      break;
    case 7:
      v5 = 0x765F657069636572;
      v3 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x6D5F656369766564;
      v6 = 0xEC0000006C65646FLL;
      break;
    case 2:
      v6 = 0x800000021B12FFD0;
      v2 = 0xD000000000000014;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6D726F6674616C70;
      break;
    case 4:
      v2 = 0xD000000000000011;
      v6 = 0x800000021B12FFF0;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1684366707;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v2 = 0x6C616E7265746E69;
      break;
    case 7:
      v2 = 0x765F657069636572;
      v6 = 0xEE006E6F69737265;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_27_1();
  }

  return v8 & 1;
}

uint64_t sub_21AFAC730(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x746E6174736E6F63;
  v4 = a1;
  v5 = 0x746E6174736E6F63;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v6 = 0x800000021B12FE70;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v6 = 0x800000021B12FEB0;
      break;
    case 3:
      v5 = 0x7461676572676761;
      v6 = 0xEB000000006E6F69;
      break;
    case 4:
      v5 = 0x6974636172747865;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v5 = 1852403562;
      break;
    case 6:
      v5 = 0x6572615761746164;
      v6 = 0xED00006573756F68;
      break;
    case 7:
      v6 = 0xE800000000000000;
      v5 = 0x6574616C706D6574;
      break;
    case 8:
      v6 = 0xE600000000000000;
      v5 = 0x64616F6C7075;
      break;
    case 9:
      v6 = 0xE800000000000000;
      v5 = 0x6C656E69746E6573;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x800000021B12FE70;
      v3 = 0xD000000000000011;
      break;
    case 2:
      v3 = 0xD000000000000010;
      v2 = 0x800000021B12FEB0;
      break;
    case 3:
      v3 = 0x7461676572676761;
      v2 = 0xEB000000006E6F69;
      break;
    case 4:
      v3 = 0x6974636172747865;
      v2 = 0xEA00000000006E6FLL;
      break;
    case 5:
      v2 = 0xE400000000000000;
      v3 = 1852403562;
      break;
    case 6:
      v3 = 0x6572615761746164;
      v2 = 0xED00006573756F68;
      break;
    case 7:
      v2 = 0xE800000000000000;
      v3 = 0x6574616C706D6574;
      break;
    case 8:
      v2 = 0xE600000000000000;
      v3 = 0x64616F6C7075;
      break;
    case 9:
      v2 = 0xE800000000000000;
      v3 = 0x6C656E69746E6573;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

BOOL sub_21AFAC9C4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_21B115E78[a1];
  }

  if (a4)
  {
    a3 = qword_21B115E78[a3];
  }

  return a1 == a3;
}

uint64_t sub_21AFACB2C(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_21AFB33AC(a4, a5);
  sub_21B1125B4();
  sub_21B1125B4();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_21B112D04();
  }

  return v8 & 1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.init()@<X0>(uint64_t a1@<X8>)
{
  sub_21B111EB4();
  v2 = *(type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport(0) + 20);
  if (qword_27CD424D8 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_27CD43168;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.setter(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 16) = v2;
  *(v6 + 24) = v3;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    result = OUTLINED_FUNCTION_34_1(v8);
  }

  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.setter()
{
  result = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    result = OUTLINED_FUNCTION_20_1(v6);
  }

  *(v4 + 41) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyTotalUsages.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 128) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  if (*(v2 + 40) <= -3)
  {
    v3 = *(v2 + 32);
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.getter()
{
  OUTLINED_FUNCTION_5_6();
  LODWORD(v1) = *(*(v0 + v1) + 41);
  return (v1 < -2) & v1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.getter()
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_48_0(v0);
  if (v1 <= 0xFD)
  {
    return ((v1 & 0x80u) == 0) & v1;
  }

  else
  {
    return 0;
  }
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.totalSearchesWeekOverWeek.setter(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_8_6();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    OUTLINED_FUNCTION_20_1(v7);
  }

  OUTLINED_FUNCTION_14_4();
  v8 = *(v5 + 120);
  *(v5 + 120) = a1;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.setter(char a1)
{
  result = OUTLINED_FUNCTION_8_6();
  v5 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_16_1();
    v7 = sub_21AFB1408(v6);
    result = OUTLINED_FUNCTION_20_1(v7);
  }

  *(v5 + 32) = a1 & 1;
  *(v5 + 40) = 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 44) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.setter()
{
  result = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    result = OUTLINED_FUNCTION_20_1(v6);
  }

  *(v4 + 41) = v0 & 1 | 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 52) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 56) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInWeek.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 60) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInFortnight.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 64) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.numberOfActiveUsageDaysInMonth.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 68) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weekOverWeekRetention.setter(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 72) = v2;
  *(v6 + 80) = v3;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.monthOverMonthRetention.setter(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 88) = v2;
  *(v6 + 96) = v3;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.weeklyUsageCohort.setter(uint64_t *a1)
{
  v5 = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_34_1(v8);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v6 + 104) = v2;
  *(v6 + 112) = v3;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLastMonth.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 132) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageWeeksInLast3Months.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 136) = v0;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.activeUsageMonthsInLast3Months.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 140) = v0;
  return result;
}

unint64_t Apple_Parsec_Ondeviceanalytics_SpotlightMetric.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x5E;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_21AFAD4D4@<X0>(uint64_t *a1@<X8>)
{
  result = Apple_Parsec_Ondeviceanalytics_SpotlightMetric.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_21AFAD508()
{
  sub_21AFB3BE0();

  return sub_21B111F34();
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_38_0(*(v2 + 16));
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.metric.modify()
{
  v1 = OUTLINED_FUNCTION_45_0();
  v2 = __swift_coroFrameAllocStub(v1);
  *(OUTLINED_FUNCTION_18_1(v2) + 88) = v0;
  OUTLINED_FUNCTION_1_6();
  OUTLINED_FUNCTION_12_4();
  v3 = *(v0 + 24);
  OUTLINED_FUNCTION_49_0(*(v0 + 16));
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAD670(uint64_t *a1)
{
  OUTLINED_FUNCTION_6_4(a1);
  v7 = OUTLINED_FUNCTION_17_3(v6);
  v8 = *(v5 + v2);
  if ((v7 & 1) == 0)
  {
    OUTLINED_FUNCTION_33_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21AFB1408(v9);
    OUTLINED_FUNCTION_50_0(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v8 + 16) = v3;
  *(v8 + 24) = v4;

  free(v1);
}

void sub_21AFAD728(uint64_t a1@<X8>)
{
  Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.getter();
  *a1 = v2;
  *(a1 + 8) = v3;
}

uint64_t sub_21AFAD76C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v3 = *a1;
  v4 = v1;
  return Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.setter(&v3);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.setter(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_7_4(a1);
  v6 = *(v1 + v4);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    result = OUTLINED_FUNCTION_34_1(v8);
  }

  *(v6 + 32) = v2;
  *(v6 + 40) = v3;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypePivot.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_37_0(v3);
  return sub_21AFAD854;
}

uint64_t sub_21AFAD854(uint64_t *a1)
{
  result = OUTLINED_FUNCTION_40_0(a1);
  v6 = *(v4 + v3);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    result = OUTLINED_FUNCTION_43_0();
    v6 = result;
    *(v4 + v3) = result;
  }

  *(v6 + 32) = v1;
  *(v6 + 40) = v2;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.getter@<X0>(uint64_t a1@<X8>)
{
  result = OUTLINED_FUNCTION_5_6();
  v5 = *(v1 + v4);
  v6 = *(v5 + 40);
  if (v6 < 0)
  {
    v7 = 0;
    LOBYTE(v6) = 1;
  }

  else
  {
    v7 = *(v5 + 32);
  }

  *a1 = v7;
  *(a1 + 8) = v6 & 1;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationType.modify(uint64_t a1))(uint64_t *a1)
{
  *(a1 + 16) = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 12) = v3;
  v4 = *(v1 + v3);
  v5 = *(v4 + 40);
  if (v5 < 0)
  {
    v6 = 0;
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = *(v4 + 32);
  }

  *a1 = v6;
  *(a1 + 8) = v5 & 1;
  return sub_21AFAD854;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.invocationTypeSummarized.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (*(v4 + 40) <= -3)
  {
    v5 = *(v4 + 32);
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  *(a1 + 12) = v5 & 1;
  return sub_21AFAD9D8;
}

uint64_t sub_21AFAD9D8(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_47_0(a1) + 12);
  v4 = *(v2 + v1);
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + v1);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v7);
  }

  *(v6 + 32) = v3;
  *(v6 + 40) = 0x80;
  return result;
}

void Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_5_6();
  OUTLINED_FUNCTION_48_0(v2);
  *a1 = v3;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.setter(char *a1)
{
  v3 = v1;
  v4 = *a1;
  result = OUTLINED_FUNCTION_8_6();
  v6 = *(v1 + v2);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    result = sub_21AFB1408(v7);
    v6 = result;
    *(v3 + v2) = result;
  }

  *(v6 + 41) = v4;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenPivot.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  OUTLINED_FUNCTION_48_0(v3);
  *(a1 + 12) = v4;
  return sub_21AFADB8C;
}

uint64_t sub_21AFADB8C(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_47_0(a1) + 12);
  v4 = *(v2 + v1);
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + v1);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v7);
  }

  *(v6 + 41) = v3;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreen.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  *(a1 + 8) = v3;
  OUTLINED_FUNCTION_48_0(v3);
  if (v4 <= 0xFD)
  {
    v5 = ((v4 & 0x80u) == 0) & v4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 12) = v5;
  return sub_21AFADC5C;
}

uint64_t sub_21AFADC5C(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_47_0(a1) + 12);
  v4 = *(v2 + v1);
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + v1);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v7);
  }

  *(v6 + 41) = v3;
  return result;
}

uint64_t (*Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isLockedScreenSummarized.modify(uint64_t a1))(uint64_t *a1)
{
  *a1 = v1;
  OUTLINED_FUNCTION_5_6();
  v4 = *(v1 + v3);
  *(a1 + 8) = v3;
  *(a1 + 12) = (*(v4 + 41) < -2) & *(v4 + 41);
  return sub_21AFADD1C;
}

uint64_t sub_21AFADD1C(uint64_t *a1)
{
  v3 = *(OUTLINED_FUNCTION_47_0(a1) + 12);
  v4 = *(v2 + v1);
  result = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + v1);
  if ((result & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_43_0();
    result = OUTLINED_FUNCTION_46_0(v7);
  }

  *(v6 + 41) = v3 | 0x80;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 44);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageInDaysSince1970.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 80) = *(v0 + 44);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFADE14(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 44) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 48);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.setter()
{
  v3 = OUTLINED_FUNCTION_4_8();
  v4 = *(v1 + v2);
  if ((v3 & 1) == 0)
  {
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v5 = OUTLINED_FUNCTION_16_1();
    v6 = sub_21AFB1408(v5);
    OUTLINED_FUNCTION_20_1(v6);
  }

  result = OUTLINED_FUNCTION_14_4();
  *(v4 + 48) = v0 & 1;
  return result;
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.firstUsageDateIsOlderThanStoreTtl.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_18_1(v3) + 72) = v0;
  OUTLINED_FUNCTION_5_6();
  *(v1 + 80) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 84) = *(v5 + 48);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFADF9C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_35_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    v7 = *(v1 + 80);
    v8 = *(v1 + 72);
    type metadata accessor for Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport._StorageClass();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_16_1();
    v10 = sub_21AFB1408(v9);
    OUTLINED_FUNCTION_24_1(v10);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 48) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 52);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.dauAggregationDayOfWeek.modify()
{
  v2 = OUTLINED_FUNCTION_22_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_7(v3);
  OUTLINED_FUNCTION_12_4();
  *(v1 + 80) = *(v0 + 52);
  return OUTLINED_FUNCTION_19_2();
}

void sub_21AFAE0BC(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_2_8(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_21_1();
    OUTLINED_FUNCTION_18_0();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_16_1();
    v8 = sub_21AFB1408(v7);
    OUTLINED_FUNCTION_24_1(v8);
  }

  OUTLINED_FUNCTION_15_4();
  *(v6 + 52) = v3;

  free(v1);
}

uint64_t Apple_Parsec_Ondeviceanalytics_SpotlightFeatureReport.isDeviceActivelyUsedInDay.getter()
{
  OUTLINED_FUNCTION_5_6();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_13_3();
  return *(v2 + 56);
}