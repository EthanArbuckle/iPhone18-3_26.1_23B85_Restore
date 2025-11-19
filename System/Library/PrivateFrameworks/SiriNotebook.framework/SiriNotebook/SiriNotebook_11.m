uint64_t OUTLINED_FUNCTION_20_13()
{
}

uint64_t OUTLINED_FUNCTION_22_8()
{
}

unint64_t OUTLINED_FUNCTION_27_6()
{

  return sub_268129FFC();
}

uint64_t OUTLINED_FUNCTION_28_8()
{

  return sub_2683CFB78();
}

uint64_t OUTLINED_FUNCTION_29_6()
{

  return sub_2683CF228();
}

uint64_t sub_2681E658C(uint64_t a1)
{
  v46 = sub_2683CD588();
  v2 = OUTLINED_FUNCTION_0_3(v46);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CD1F8();
  v10 = OUTLINED_FUNCTION_0_3(v9);
  v47 = v11;
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v36 - v17;
  result = sub_2683CD508();
  if (!result)
  {
LABEL_16:
    v32 = 0;
LABEL_19:
    sub_2683CD598();

    return v32;
  }

  v20 = result;
  v45 = *(result + 16);
  if (!v45)
  {

    goto LABEL_16;
  }

  v37 = v18;
  v38 = a1;
  v21 = 0;
  v44 = result + ((*(v47 + 80) + 32) & ~*(v47 + 80));
  v43 = v47 + 16;
  v42 = *MEMORY[0x277D5E700];
  v22 = (v4 + 8);
  v40 = (v47 + 8);
  v41 = (v4 + 104);
  v39 = v9;
  while (v21 < *(v20 + 16))
  {
    (*(v47 + 16))(v16, v44 + *(v47 + 72) * v21, v9);
    v23 = sub_2683CD1E8();
    v25 = v24;
    v26 = v46;
    (*v41)(v8, v42, v46);
    v27 = sub_2683CD578();
    v29 = v28;
    (*v22)(v8, v26);
    if (v25)
    {
      if (v23 == v27 && v25 == v29)
      {

LABEL_18:

        v33 = v47 + 32;
        v34 = v37;
        v35 = v39;
        (*(v47 + 32))(v37, v16, v39);
        v32 = sub_2683CD1D8();
        (*(v33 - 24))(v34, v35);
        goto LABEL_19;
      }

      v31 = sub_2683D0598();

      if (v31)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    ++v21;
    v9 = v39;
    result = (*v40)(v16, v39);
    if (v45 == v21)
    {

      v32 = 0;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2681E6914(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (!a6)
    {
      return 0;
    }

    v12 = a1 == a5 && a2 == a6;
    if (!v12 && (sub_2683D0598() & 1) == 0)
    {
      return 0;
    }
  }

  else if (a6)
  {
    return 0;
  }

  if (a4)
  {
    if (a8)
    {
      v13 = a3 == a7 && a4 == a8;
      if (v13 || (sub_2683D0598() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!a8)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_2681E69B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a3)
  {
    sub_2683D06B8();
    if (a5)
    {
      goto LABEL_3;
    }

    return sub_2683D06B8();
  }

  sub_2683D06B8();
  sub_2683CFB48();
  if (!a5)
  {
    return sub_2683D06B8();
  }

LABEL_3:
  sub_2683D06B8();

  return sub_2683CFB48();
}

uint64_t sub_2681E6A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2683D0698();
  sub_2681E69B8(v9, a1, a2, a3, a4);
  return sub_2683D06D8();
}

uint64_t sub_2681E6AE4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_2683D0698();
  sub_2681E69B8(v6, v1, v2, v4, v3);
  return sub_2683D06D8();
}

uint64_t sub_2681E6B5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0E0, &qword_2683DB1D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v13 - v4;
  v6 = sub_2683CF8D8();
  sub_2683CF8E8();
  v7 = sub_2683CF978();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) == 1)
  {
    v8 = sub_2683CF8F8();
    OUTLINED_FUNCTION_0_9(v8);
    (*(v9 + 8))(a1);
    sub_2681E6CDC(v5);
  }

  else
  {
    sub_2683CF968();
    v10 = sub_2683CF8F8();
    OUTLINED_FUNCTION_0_9(v10);
    (*(v11 + 8))(a1);
    (*(*(v7 - 8) + 8))(v5, v7);
  }

  return v6;
}

uint64_t sub_2681E6CDC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F0E0, &qword_2683DB1D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681E6D44(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_2681E6D98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_2681E6E00()
{
  result = qword_28024F0E8;
  if (!qword_28024F0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F0E8);
  }

  return result;
}

uint64_t sub_2681E6ECC(uint64_t *a1, uint64_t *a2, void (*a3)(void), uint64_t (*a4)(void))
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v23 - v16;
  sub_2681E7090(v9, v13);
  v18 = sub_2683CD358();
  if (__swift_getEnumTagSinglePayload(v13, 1, v18) == 1)
  {
    sub_26812C310(v13, &qword_28024D398, &qword_2683D22F0);
    v19 = a4(0);
    __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
LABEL_4:
    v21 = 0;
    goto LABEL_5;
  }

  a3();
  (*(*(v18 - 8) + 8))(v13, v18);
  v20 = a4(0);
  v21 = 1;
  if (__swift_getEnumTagSinglePayload(v17, 1, v20) == 1)
  {
    goto LABEL_4;
  }

LABEL_5:
  sub_26812C310(v17, a1, a2);
  return v21;
}

uint64_t sub_2681E7090(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D398, &qword_2683D22F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for IntentTriggerTemporalModelNLv3()
{
  result = qword_28024F100;
  if (!qword_28024F100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2681E7174()
{
  sub_2681E71E0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2681E71E0()
{
  if (!qword_28024F110)
  {
    sub_2683CD358();
    v0 = sub_2683CFFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_28024F110);
    }
  }
}

id sub_2681E7238(char a1, double a2, double a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v7 = sub_2681E7324(a1);
  v9 = v8;
  v10 = v6;
  sub_2681E733C(v7, v9, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setMaxAge_];

  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  [v10 setSearchTimeout_];

  return v10;
}

void sub_2681E733C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_2683CFA68();

  [a3 setDesiredAccuracy_];
}

uint64_t sub_2681E73A0()
{
  sub_2683CF258();
  if (v0)
  {
    sub_2681E743C();
    sub_2681E7490();
    v1 = sub_2683CFA28();
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

unint64_t sub_2681E743C()
{
  result = qword_28024F118;
  if (!qword_28024F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F118);
  }

  return result;
}

unint64_t sub_2681E7490()
{
  result = qword_28024F120[0];
  if (!qword_28024F120[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28024F120);
  }

  return result;
}

uint64_t sub_2681E7508()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t type metadata accessor for CreateNoteIntentWrapper()
{
  result = qword_28024F1A8;
  if (!qword_28024F1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681E75DC()
{
  result = sub_26812EB34(319, &qword_28024F1B8);
  if (v1 <= 0x3F)
  {
    result = sub_26812EB34(319, &qword_28024CDA0);
    if (v2 <= 0x3F)
    {
      result = sub_2683CB668();
      if (v3 <= 0x3F)
      {
        result = sub_26812EB34(319, &qword_28024F1C0);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

id sub_2681E76C0()
{
  v1 = v0;
  v2 = sub_2681E7A28();
  v4 = v3;
  v6 = v5;
  v7 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (v7[1])
  {
    v8 = *v7;
    v9 = *(type metadata accessor for CreateNoteIntentWrapper() + 24);

    sub_268129D44(v1 + v9);

    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
  }

  else
  {
    sub_268129504(0, &qword_28024CDB0, 0x277CD3B30);
    if (!v6)
    {
      v10 = 0;
      goto LABEL_9;
    }

    if (!v4)
    {
      v10 = 0;
      goto LABEL_4;
    }
  }

  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  v10 = sub_26835E5F8();
  if (v6)
  {
LABEL_4:
    v11 = v6;
    v12 = v6;
    goto LABEL_10;
  }

LABEL_9:
  v12 = 0;
LABEL_10:
  v13 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  if (v13[5])
  {
    v14 = v13[4];
    v15 = *(type metadata accessor for CreateNoteIntentWrapper() + 24);

    sub_268129D44(v1 + v15);

    sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
    v16 = sub_26835E5F8();
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_268128E6C(v10, v12, v16);
  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = v17;
  v20 = sub_2683CF7C8();
  v21 = sub_2683CFE98();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = v33;
    *v22 = 136315138;
    v23 = v19;
    v24 = v6;
    v25 = [v23 description];
    v26 = sub_2683CFA78();
    v34 = v4;
    v27 = v2;
    v29 = v28;

    v6 = v24;
    v30 = sub_2681610A0(v26, v29, &v35);
    v2 = v27;
    v4 = v34;

    *(v22 + 4) = v30;
    _os_log_impl(&dword_2680EB000, v20, v21, "⚙️ [CreateNoteIntentWrapper] made intent: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x26D617A40](v33, -1, -1);
    MEMORY[0x26D617A40](v22, -1, -1);
  }

  v31 = sub_26821AD1C();
  sub_2681E7DC8(v2, v4, v6);

  return v31;
}

uint64_t sub_2681E7A28()
{
  v1 = v0;
  v2 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  if (v2[3])
  {
    v3 = v2[2];
    sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
    v4 = *(type metadata accessor for CreateNoteIntentWrapper() + 24);

    sub_268129D44(v1 + v4);

LABEL_3:
    sub_2681807A0();
    return 0;
  }

  v7 = __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v26 = *v7;
  v27 = v7[1];
  v28 = v7[2];
  v29 = v7[3];
  if ((sub_26822971C() & 1) == 0 && (sub_268229A90() & 1) == 0)
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v22 = sub_2683CF7E8();
    __swift_project_value_buffer(v22, qword_28027C958);
    v23 = sub_2683CF7C8();
    v24 = sub_2683CFE98();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_2680EB000, v23, v24, "[CreateNoteIntentWrapper] Skipping resolving references for content because parse does not have a definite reference.", v25, 2u);
      MEMORY[0x26D617A40](v25, -1, -1);
    }

    return 0;
  }

  NoteIntentWrapper = type metadata accessor for CreateNoteIntentWrapper();
  v9 = (v0 + *(NoteIntentWrapper + 28));
  v10 = v9[3];
  v11 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v10);
  if (((*(v11 + 64))(v10, v11) & 1) == 0 || (__swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]), v12 = sub_268171C84(), !v13))
  {
    __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
    sub_26816EF9C();
    if (v21)
    {
      sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
      goto LABEL_3;
    }

    return 0;
  }

  v14 = v12;
  v15 = v13;
  __swift_project_boxed_opaque_existential_1(v0 + 5, v0[8]);
  sub_268172098();
  v5 = v16;
  sub_2682039EC(v0 + *(NoteIntentWrapper + 24), v14, v15);

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v17 = sub_2683CF7E8();
  __swift_project_value_buffer(v17, qword_28027C958);
  v18 = sub_2683CF7C8();
  v19 = sub_2683CFE98();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_2680EB000, v18, v19, "[CreateNoteIntentWrapper] resolved formatted text from context.", v20, 2u);
    MEMORY[0x26D617A40](v20, -1, -1);
  }

  sub_268129504(0, &qword_28024CDC0, 0x277CD4250);
  sub_2681807A0();
  return v5;
}

uint64_t sub_2681E7DC8(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_2681E7E08(unsigned __int8 a1, char a2)
{
  v2 = 0xEF73776F6C466572;
  v3 = 0x5065747563657865;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x4D65747563657865;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEF776F6C466E6961;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x5065747563657865;
    v6 = 0xEF73776F6C466572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x4D65747563657865;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (a2 == 1)
    {
      v2 = 0xEF776F6C466E6961;
    }

    else
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_2681E7F30(unsigned __int8 a1, char a2)
{
  v2 = 0x474E495649525241;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x474E495649525241;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x474E495641454CLL;
      break;
    case 2:
      v5 = 0x41435F5245544E45;
      v3 = 0xE900000000000052;
      break;
    case 3:
      v5 = 0x5241435F54495845;
      break;
    case 4:
      v5 = 0x4E4947415353454DLL;
      v3 = 0xE900000000000047;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 5457241;
      break;
    case 6:
      v3 = 0xE200000000000000;
      v5 = 20302;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x474E495641454CLL;
      break;
    case 2:
      v2 = 0x41435F5245544E45;
      v6 = 0xE900000000000052;
      break;
    case 3:
      v2 = 0x5241435F54495845;
      break;
    case 4:
      v2 = 0x4E4947415353454DLL;
      v6 = 0xE900000000000047;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 5457241;
      break;
    case 6:
      v6 = 0xE200000000000000;
      v2 = 20302;
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
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681E80E8(char a1)
{
  if (a1)
  {
    v2 = "common_SortOrder_LeastFirst";
  }

  else
  {
    v2 = "operator_removeFromValue";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8178(char a1)
{
  v2 = "common_MonthOfYear_September";
  switch(a1)
  {
    case 1:
      v2 = "common_DayOfWeek_Friday";
      break;
    case 2:
      v2 = "common_DayOfWeek_Monday";
      break;
    case 3:
      v2 = "common_DayOfWeek_Saturday";
      break;
    case 4:
      v2 = "common_DayOfWeek_Sunday";
      break;
    case 5:
      v2 = "common_DayOfWeek_Thursday";
      break;
    case 6:
      v2 = "common_DayOfWeek_Tuesday";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E82F0()
{
  OUTLINED_FUNCTION_5_22();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E837C()
{
  OUTLINED_FUNCTION_5_22();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E8404(char a1)
{
  v2 = "common_Number_Twelve";
  switch(a1)
  {
    case 1:
      v2 = "operator_addToValue";
      break;
    case 2:
      v2 = "operator_greaterThan";
      break;
    case 3:
      v2 = "operator_greaterThanOrEquals";
      break;
    case 4:
      v2 = "operator_lessThan";
      break;
    case 5:
      v2 = "operator_lessThanOrEquals";
      break;
    case 6:
      v2 = "operator_notEquals";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E85A0(char a1, char a2)
{
  v3 = "common_Similarity_SimilarTo";
  switch(a1)
  {
    case 1:
      v3 = "common_Time_CurrentTime";
      break;
    case 2:
      v3 = "common_Time_Midnight";
      break;
    case 3:
      v3 = "common_Time_Noon";
      break;
    case 4:
      v3 = "common_Time_Sunrise";
      break;
    default:
      break;
  }

  v4 = v3 | 0x8000000000000000;
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_26_10();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_18_17();
  v5 = v5 && v4 == v2;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E86E0(char a1)
{
  v2 = "common_AttachmentType_Window";
  switch(a1)
  {
    case 1:
      v2 = "common_Date_DayAfterTomorrow";
      break;
    case 2:
      v2 = "common_Date_DayBeforeYesterday";
      break;
    case 3:
      v2 = "common_Date_Today";
      break;
    case 4:
      v2 = "common_Date_Tomorrow";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8824()
{
  OUTLINED_FUNCTION_5_22();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E88AC(char a1)
{
  v2 = "common_OffsetDirection_Before";
  switch(a1)
  {
    case 1:
      v2 = "angeQualifier_AllOf";
      break;
    case 2:
      v2 = "angeQualifier_EarlierPartOf";
      break;
    case 3:
      v2 = "angeQualifier_EndOf";
      break;
    case 4:
      v2 = "angeQualifier_HalfOf";
      break;
    case 5:
      v2 = "angeQualifier_LaterPartOf";
      break;
    case 6:
      v2 = "angeQualifier_MiddleOf";
      break;
    case 7:
      v2 = "angeQualifier_RestOf";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8A34(char a1)
{
  v2 = "common_AppState_Installed";
  switch(a1)
  {
    case 1:
      v2 = "tionTrigger_CallReceived";
      break;
    case 2:
      v2 = "tionTrigger_CallSent";
      break;
    case 3:
      v2 = "unicationReceived";
      break;
    case 4:
      v2 = "tionTrigger_CommunicationSent";
      break;
    case 5:
      v2 = "tionTrigger_EmailReceived";
      break;
    case 6:
      v2 = "tionTrigger_EmailSent";
      break;
    case 7:
      v2 = "tionTrigger_FaceTimeReceived";
      break;
    case 8:
      v2 = "tionTrigger_FaceTimeSent";
      break;
    case 9:
      v2 = "tionTrigger_TextMessageReceived";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8C04(char a1)
{
  v2 = "common_Time_Sunset";
  switch(a1)
  {
    case 1:
      v2 = "ntUnitType_DistanceUnit";
      break;
    case 2:
      v2 = "ntUnitType_EnergyUnit";
      break;
    case 3:
      v2 = "ntUnitType_SpeedUnit";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8D20(char a1, char a2)
{
  v2 = "common_TimeUnit_Year";
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = "DateTime_EveryDay";
    }

    else
    {
      v3 = "DateTime_Weekdays";
    }
  }

  else
  {
    v3 = "common_TimeUnit_Year";
  }

  if (a2)
  {
    v2 = "DateTime_EveryDay";
    if (a2 != 1)
    {
      v2 = "DateTime_Weekdays";
    }
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2683D0598();
  }

  return v4 & 1;
}

uint64_t sub_2681E8DE8(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "tionMode_Collaborate";
    }

    else
    {
      v2 = "tionMode_SharePlay";
    }
  }

  else
  {
    v2 = "common_Geolocation_Here";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8EAC(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "nStatus_Completed";
    }

    else
    {
      v2 = "nStatus_NotCompleted";
    }
  }

  else
  {
    v2 = "DateTime_Weekends";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E8F78(char a1)
{
  v2 = "common_DateType_Holiday";
  switch(a1)
  {
    case 1:
      v2 = "common_SearchQualifier_Another";
      break;
    case 2:
      v2 = "common_SearchQualifier_Exactly";
      break;
    case 3:
      v2 = "common_SearchQualifier_New";
      break;
    case 4:
      v2 = "common_SearchQualifier_NewToMe";
      break;
    case 5:
      v2 = "common_SearchQualifier_Old";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E90B8(char a1)
{
  if (a1)
  {
    v2 = "common_OffsetDirection_After";
  }

  else
  {
    v2 = "common_SortOrder_MostFirst";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E9148()
{
  OUTLINED_FUNCTION_5_22();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_15_15();
  OUTLINED_FUNCTION_6_22();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E91E8(char a1)
{
  v2 = "common_Duration_AllDay";
  switch(a1)
  {
    case 1:
      v2 = "common_SortDirection_Atypical";
      break;
    case 2:
      v2 = "common_SortDirection_Best";
      break;
    case 3:
      v2 = "common_SortDirection_Newest";
      break;
    case 4:
      v2 = "common_SortDirection_Oldest";
      break;
    case 5:
      v2 = "common_SortDirection_Popular";
      break;
    case 6:
      v2 = "tion_Recommended";
      break;
    case 7:
      v2 = "common_SortDirection_Trending";
      break;
    case 8:
      v2 = "common_SortDirection_Typical";
      break;
    case 9:
      v2 = "common_SortDirection_Unpopular";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E9404(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  if (v4 == a3() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24();
  }

  return v9 & 1;
}

uint64_t sub_2681E9498()
{
  OUTLINED_FUNCTION_5_22();
  if (v5)
  {
    v3 = v2;
  }

  else
  {
    v3 = v1;
  }

  v4 = v3 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v5 = v5 && v4 == v0;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_2_24();
  }

  return v6 & 1;
}

uint64_t sub_2681E9524(char a1)
{
  v2 = "common_DayOfWeek_Wednesday";
  switch(a1)
  {
    case 1:
      v2 = "common_Quantifier_All";
      break;
    case 2:
      v2 = "common_Quantifier_Any";
      break;
    case 3:
      v2 = "common_Quantifier_Less";
      break;
    case 4:
      v2 = "common_Quantifier_More";
      break;
    case 5:
      v2 = "common_Quantifier_Multiple";
      break;
    case 6:
      v2 = "common_Quantifier_None";
      break;
    case 7:
      v2 = "common_Quantifier_Remainder";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_18_17();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E96B4(char a1, char a2)
{
  v2 = "common_Date_Yesterday";
  if (a1)
  {
    v3 = "common_NumberSign_NegativeSign";
  }

  else
  {
    v3 = "common_Date_Yesterday";
  }

  if (a2)
  {
    v2 = "common_NumberSign_NegativeSign";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2683D0598();
  }

  return v4 & 1;
}

uint64_t sub_2681E9750(char a1)
{
  if (a1)
  {
    v1 = 0xEB00000000736574;
  }

  else
  {
    v1 = 0xEA00000000006574;
  }

  OUTLINED_FUNCTION_15_15();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681E97EC(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007865;
  v3 = 0x646E497473727562;
  v4 = a1;
  v5 = 0x646E497473727562;
  v6 = 0xEA00000000007865;
  switch(v4)
  {
    case 1:
      v6 = 0x80000002683FCC80;
      v5 = 0xD000000000000010;
      break;
    case 2:
      break;
    case 3:
      v5 = 0x6C646E7542707061;
      v6 = 0xEB00000000644965;
      break;
    case 4:
      v6 = 0x80000002683FCCB0;
      v5 = 0xD00000000000001CLL;
      break;
    default:
      v6 = 0x80000002683FCC60;
      v5 = 0xD000000000000015;
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0x80000002683FCC80;
      OUTLINED_FUNCTION_26_10();
      break;
    case 2:
      break;
    case 3:
      v3 = 0x6C646E7542707061;
      v2 = 0xEB00000000644965;
      break;
    case 4:
      v2 = 0x80000002683FCCB0;
      v3 = 0xD00000000000001CLL;
      break;
    default:
      v2 = 0x80000002683FCC60;
      v3 = 0xD000000000000015;
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_2681E9968()
{
  v0 = 0xEE007265646E696DLL;
  OUTLINED_FUNCTION_22_9();
  v3 = v2 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
  v5 = v4;
  v6 = "updateReminderTime";
  v7 = v3;
  v8 = 0xEE007265646E696DLL;
  switch(v5)
  {
    case 1:
      v7 = 0x6F4E657461657263;
      v8 = 0xEA00000000006574;
      break;
    case 2:
      v7 = OUTLINED_FUNCTION_36_7();
      v10 = v9 - 32;
      goto LABEL_7;
    case 3:
      v7 = 0x6E696D6552646461;
      v8 = 0xEF656D6954726564;
      break;
    case 4:
      v8 = 0x80000002683FA960;
      v7 = 0xD000000000000012;
      break;
    case 5:
      v7 = OUTLINED_FUNCTION_36_7();
      v10 = v11 - 32;
LABEL_7:
      v8 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_22_9();
      v3 = v12 & 0xFFFFFFFFFFFFLL | 0x6F4E000000000000;
      v0 = 0xEA00000000006574;
      break;
    case 2:
      OUTLINED_FUNCTION_34_6();
      v15 = v14 - 32;
      goto LABEL_14;
    case 3:
      v3 = 0x6E696D6552646461;
      v0 = 0xEF656D6954726564;
      break;
    case 4:
      v0 = (v6 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_35_6();
      v3 = v13 - 1;
      break;
    case 5:
      OUTLINED_FUNCTION_34_6();
      v15 = v16 - 32;
LABEL_14:
      v0 = v15 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v7 == v3 && v8 == v0)
  {
    v18 = 1;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_10_11();
  }

  return v18 & 1;
}

uint64_t sub_2681E9B10(unsigned __int8 a1, char a2)
{
  v2 = 7368801;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = "locationIsDepartureTrigger";
  v6 = 7368801;
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_33_7();
      break;
    case 2:
      OUTLINED_FUNCTION_32_7();
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_32_7() | 0x6E65644900000000;
      v3 = 0xEE00726569666974;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_32_7() | 0x7247734900000000;
      v3 = 0xED0000797265636FLL;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v6 = 1701669236;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v6 = OUTLINED_FUNCTION_20_14(0x6F6Cu);
      break;
    case 7:
      v6 = 0xD00000000000001ALL;
      v3 = 0x80000002683FCFB0;
      break;
    default:
      break;
  }

  v7 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE500000000000000;
      OUTLINED_FUNCTION_3_21();
      break;
    case 2:
      OUTLINED_FUNCTION_29_7();
      break;
    case 3:
      v2 = 0x6E6564497473696CLL;
      v7 = 0xEE00726569666974;
      break;
    case 4:
      v2 = 0x724773497473696CLL;
      v7 = 0xED0000797265636FLL;
      break;
    case 5:
      v7 = 0xE400000000000000;
      v2 = 1701669236;
      break;
    case 6:
      v7 = 0xE800000000000000;
      OUTLINED_FUNCTION_11_22();
      break;
    case 7:
      v2 = 0xD00000000000001ALL;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_2_24();
  }

  return v9 & 1;
}

uint64_t sub_2681E9CF4(char a1)
{
  v2 = "ntactAttribute_Contact";
  switch(a1)
  {
    case 1:
      v2 = "ttribute_ConditionArrival";
      break;
    case 2:
      v2 = "ttribute_ConditionDeparture";
      break;
    case 3:
      v2 = "ttribute_ConditionDepartVehicle";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_6_22();
  v4 = v4 && v3 == v1;
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = OUTLINED_FUNCTION_2_24();
  }

  return v5 & 1;
}

uint64_t sub_2681E9E0C()
{
  v0 = 0xEA00000000006B73;
  OUTLINED_FUNCTION_44_5();
  v4 = v3;
  v5 = v2;
  v6 = 0xEA00000000006B73;
  v7 = "temporalEventTrigger";
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_29_7();
      break;
    case 2:
      v6 = 0xE600000000000000;
      v5 = 0x737574617473;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v5 = 0x797469726F697270;
      break;
    case 4:
      v6 = 0x80000002683FA730;
      v5 = 0xD000000000000014;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_36_7();
      v9 = v8 - 32;
      goto LABEL_8;
    case 6:
      v5 = OUTLINED_FUNCTION_36_7();
      v9 = v10 - 32;
LABEL_8:
      v6 = v9 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      v0 = 0xE600000000000000;
      v2 = 0x737574617473;
      break;
    case 3:
      v0 = 0xE800000000000000;
      v2 = 0x797469726F697270;
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_35_6();
      v2 = v11 + 1;
      break;
    case 5:
      OUTLINED_FUNCTION_34_6();
      v13 = v12 - 32;
      goto LABEL_16;
    case 6:
      OUTLINED_FUNCTION_34_6();
      v13 = v14 - 32;
LABEL_16:
      v0 = v13 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v16 = 1;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_10_11();
  }

  return v16 & 1;
}

uint64_t sub_2681E9FBC()
{
  OUTLINED_FUNCTION_3_21();
  v2 = 0xE500000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_40_5() | 0x706D6F4300000000;
      v2 = 0xEC0000006574656CLL;
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_40_5() | 0x6F636E4900000000;
      v6 = 0x6574656C706DLL;
      goto LABEL_5;
    case 3:
      v5 = 0x6C61726F706D6574;
      v2 = 0xEF72656767697254;
      break;
    case 4:
      v5 = 0x546C616974617073;
      v6 = 0x726567676972;
LABEL_5:
      v2 = v6 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_40_5() | 0x67616C4600000000;
      v2 = 0xEB00000000646567;
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_40_5() | 0x6C666E5500000000;
      v2 = 0xED00006465676761;
      break;
    case 7:
      v2 = 0xE800000000000000;
      v5 = 0x656C7069746C756DLL;
      break;
    case 8:
      v2 = 0xE700000000000000;
      v5 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_38_7();
      v1 = v8 | 0x706D6F4300000000;
      v7 = 0xEC0000006574656CLL;
      break;
    case 2:
      OUTLINED_FUNCTION_38_7();
      v1 = v10 | 0x6F636E4900000000;
      v9 = 0x6574656C706DLL;
      goto LABEL_15;
    case 3:
      v1 = 0x6C61726F706D6574;
      v7 = 0xEF72656767697254;
      break;
    case 4:
      v1 = 0x546C616974617073;
      v9 = 0x726567676972;
LABEL_15:
      v7 = v9 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_38_7();
      v1 = v11 | 0x67616C4600000000;
      v7 = 0xEB00000000646567;
      break;
    case 6:
      OUTLINED_FUNCTION_38_7();
      v1 = v12 | 0x6C666E5500000000;
      v7 = 0xED00006465676761;
      break;
    case 7:
      v7 = 0xE800000000000000;
      v1 = 0x656C7069746C756DLL;
      break;
    case 8:
      v7 = 0xE700000000000000;
      v1 = 0x6E776F6E6B6E75;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_2_24();
  }

  return v14 & 1;
}

uint64_t sub_2681EA238()
{
  OUTLINED_FUNCTION_3_21();
  v2 = 0xE500000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = OUTLINED_FUNCTION_28_9();
      break;
    case 2:
      v5 = OUTLINED_FUNCTION_41_5();
      break;
    case 3:
      v2 = 0xE300000000000000;
      v5 = 7368801;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_27_7();
      break;
    case 2:
      OUTLINED_FUNCTION_43_5();
      break;
    case 3:
      v6 = 0xE300000000000000;
      v1 = 7368801;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA31C(char a1)
{
  if (a1)
  {
    v1 = 0xE500000000000000;
  }

  else
  {
    v1 = 0xEF656D6954726567;
  }

  OUTLINED_FUNCTION_15_15();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA3B4()
{
  OUTLINED_FUNCTION_3_21();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x746E65746E6F63;
    }

    else
    {
      v4 = 0x6D614E70756F7267;
    }

    if (v3 == 1)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE900000000000065;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x746E65746E6F63;
    }

    else
    {
      v2 = 0x6D614E70756F7267;
    }

    if (v1 == 1)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xE900000000000065;
    }
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA4A0(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6E756F436D657469;
  v4 = 0xE900000000000074;
  v5 = a1;
  v6 = 0x6E756F436D657469;
  switch(v5)
  {
    case 1:
      break;
    case 2:
      v6 = 0x7473694C6B736174;
      v4 = 0xED0000746E756F43;
      break;
    case 3:
      v6 = 0x6554686372616573;
      v4 = 0xEA00000000006D72;
      break;
    case 4:
      v6 = 0x6154746567726174;
      v4 = 0xEE007473694C6B73;
      break;
    case 5:
      v6 = 0x7564656863537369;
      v7 = 6579564;
      goto LABEL_13;
    case 6:
      v6 = 0x656767616C467369;
      v4 = 0xE900000000000064;
      break;
    case 7:
      v6 = 0x75647265764F7369;
      v4 = 0xE900000000000065;
      break;
    case 8:
      v6 = 0x7272756365527369;
      v7 = 6778473;
LABEL_13:
      v4 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_20_14(0x6F4Cu);
      goto LABEL_11;
    case 10:
      v6 = 0x7261646E656C6143;
LABEL_11:
      v4 = 0xEF747065636E6F43;
      break;
    default:
      v6 = 0xD000000000000010;
      v4 = 0x80000002683FCB30;
      break;
  }

  v8 = v2 + 16;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v3 = 0x7473694C6B736174;
      v8 = 0xED0000746E756F43;
      break;
    case 3:
      v3 = 0x6554686372616573;
      v8 = 0xEA00000000006D72;
      break;
    case 4:
      OUTLINED_FUNCTION_44_5();
      v8 = 0xEE007473694C6B73;
      break;
    case 5:
      v3 = 0x7564656863537369;
      v10 = 6579564;
      goto LABEL_26;
    case 6:
      v3 = 0x656767616C467369;
      v8 = 0xE900000000000064;
      break;
    case 7:
      v3 = 0x75647265764F7369;
      v8 = v2 + 1;
      break;
    case 8:
      v3 = 0x7272756365527369;
      v10 = 6778473;
LABEL_26:
      v8 = v10 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_11_22();
      goto LABEL_24;
    case 10:
      v3 = 0x7261646E656C6143;
LABEL_24:
      v8 = 0xEF747065636E6F43;
      break;
    default:
      OUTLINED_FUNCTION_26_10();
      v8 = (v9 - 32) | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v4 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_24();
  }

  return v12 & 1;
}

uint64_t sub_2681EA780(char a1)
{
  if (a1)
  {
    v1 = 0xE800000000000000;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_15_15();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA810()
{
  OUTLINED_FUNCTION_11_22();
  v3 = v0;
  if (v0)
  {
    if (v0 == 1)
    {
      v4 = 0x746E657665;
    }

    else
    {
      v4 = 0x7053656C69626F6DLL;
    }

    if (v3 == 1)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xEB00000000656361;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = v2;
  }

  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 0x746E657665;
    }

    else
    {
      v2 = 0x7053656C69626F6DLL;
    }

    if (v1 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xEB00000000656361;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA900(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE900000000000065;
  }

  OUTLINED_FUNCTION_15_15();
  if (v7)
  {
    v6 = v4;
  }

  else
  {
    v6 = v5;
  }

  v7 = v2 == v3 && v1 == v6;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EA9AC()
{
  OUTLINED_FUNCTION_3_21();
  v2 = 0xE500000000000000;
  v4 = v3;
  v5 = v1;
  switch(v4)
  {
    case 1:
      v5 = 0x746E6F4374786574;
      v6 = 7630437;
      goto LABEL_6;
    case 2:
      OUTLINED_FUNCTION_30_3();
      break;
    case 3:
      v5 = 0x4464657461657263;
      v6 = 6648929;
LABEL_6:
      v2 = v6 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v5 = 0x6465696669646F6DLL;
      v2 = 0xEC00000065746144;
      break;
    case 5:
      v5 = 0x656D686361747461;
      v2 = 0xEF746E756F43746ELL;
      break;
    default:
      break;
  }

  v7 = 0xE500000000000000;
  switch(v0)
  {
    case 1:
      v1 = 0x746E6F4374786574;
      v8 = 7630437;
      goto LABEL_13;
    case 2:
      OUTLINED_FUNCTION_29_7();
      break;
    case 3:
      OUTLINED_FUNCTION_22_9();
      v1 = v9 & 0xFFFFFFFFFFFFLL | 0x4464000000000000;
      v8 = 6648929;
LABEL_13:
      v7 = v8 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 4:
      v1 = 0x6465696669646F6DLL;
      v7 = 0xEC00000065746144;
      break;
    case 5:
      v1 = 0x656D686361747461;
      v7 = 0xEF746E756F43746ELL;
      break;
    default:
      break;
  }

  if (v5 == v1 && v2 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_2_24();
  }

  return v11 & 1;
}

uint64_t sub_2681EAB78(unsigned __int8 a1, char a2)
{
  v2 = 0x6C617669727261;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x6C617669727261;
  switch(v4)
  {
    case 1:
      OUTLINED_FUNCTION_30_3();
      break;
    case 2:
      v5 = 0x6576207265746E65;
      v3 = 0xED0000656C636968;
      break;
    case 3:
      v5 = 0x7620747261706564;
      v3 = 0xEE00656C63696865;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_7();
      break;
    case 2:
      v2 = 0x6576207265746E65;
      v6 = 0xED0000656C636968;
      break;
    case 3:
      v2 = 0x7620747261706564;
      v6 = 0xEE00656C63696865;
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
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EACE8(unsigned __int8 a1, char a2)
{
  v2 = 0xEC00000073736572;
  v3 = 0x64646120656D6F68;
  v4 = a1;
  v5 = 0x64646120656D6F68;
  v6 = 0xEC00000073736572;
  switch(v4)
  {
    case 1:
      v5 = 0x646461206B726F77;
      v6 = 0xEC00000073736572;
      break;
    case 2:
      v5 = 0xD000000000000010;
      v7 = " address";
      goto LABEL_11;
    case 3:
      v6 = 0xE600000000000000;
      v5 = 0x79627261656ELL;
      break;
    case 4:
      v5 = 0x61206C6F6F686373;
      v6 = 0xEE00737365726464;
      break;
    case 5:
      v8 = 544045415;
      goto LABEL_8;
    case 6:
      v5 = 0x646120726568746FLL;
      v6 = 0xED00007373657264;
      break;
    case 7:
      v8 = 544829025;
LABEL_8:
      v5 = v8 | 0x7264646100000000;
      v6 = 0xEB00000000737365;
      break;
    case 8:
      v5 = 0xD000000000000010;
      v7 = "ss";
LABEL_11:
      v6 = v7 | 0x8000000000000000;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x646461206B726F77;
      break;
    case 2:
      OUTLINED_FUNCTION_26_10();
      v10 = v9 - 32;
      goto LABEL_22;
    case 3:
      v2 = 0xE600000000000000;
      v3 = 0x79627261656ELL;
      break;
    case 4:
      v3 = 0x61206C6F6F686373;
      v2 = 0xEE00737365726464;
      break;
    case 5:
      v11 = 544045415;
      goto LABEL_19;
    case 6:
      v3 = 0x646120726568746FLL;
      v2 = 0xED00007373657264;
      break;
    case 7:
      v11 = 544829025;
LABEL_19:
      v3 = v11 | 0x7264646100000000;
      v2 = 0xEB00000000737365;
      break;
    case 8:
      OUTLINED_FUNCTION_26_10();
      v10 = v12 - 32;
LABEL_22:
      v2 = v10 | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_10_11();
  }

  return v14 & 1;
}

uint64_t sub_2681EAF5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v7 = v6;
  if (v5 == (a3)(a2) && v7 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24();
  }

  return v10 & 1;
}

uint64_t sub_2681EAFE0(unsigned __int8 a1, char a2)
{
  v2 = 1684104562;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1684104562;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v6 = 1634038371;
      goto LABEL_8;
    case 2:
      v5 = 1684957542;
      break;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 1701602660;
LABEL_8:
      v5 = v6 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x796669646F6DLL;
      break;
    case 5:
      v5 = 1684956531;
      break;
    case 6:
      v5 = 1868852853;
      break;
    case 7:
      v3 = 0xE600000000000000;
      v5 = 0x657A6F6F6E73;
      break;
    case 8:
      v5 = 0x74736575516B7361;
      v3 = 0xEB000000006E6F69;
      break;
    case 9:
      v5 = 0x6176697463616564;
      v3 = 0xEA00000000006574;
      break;
    case 10:
      v3 = 0xE600000000000000;
      v5 = 0x646E65707061;
      break;
    case 11:
      v5 = 1702260589;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE600000000000000;
      v8 = 1634038371;
      goto LABEL_21;
    case 2:
      v2 = 1684957542;
      break;
    case 3:
      v7 = 0xE600000000000000;
      v8 = 1701602660;
LABEL_21:
      v2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x657400000000;
      break;
    case 4:
      v7 = 0xE600000000000000;
      v2 = 0x796669646F6DLL;
      break;
    case 5:
      v2 = 1684956531;
      break;
    case 6:
      v2 = 1868852853;
      break;
    case 7:
      v7 = 0xE600000000000000;
      v2 = 0x657A6F6F6E73;
      break;
    case 8:
      v2 = 0x74736575516B7361;
      v7 = 0xEB000000006E6F69;
      break;
    case 9:
      v2 = 0x6176697463616564;
      v7 = 0xEA00000000006574;
      break;
    case 10:
      v7 = 0xE600000000000000;
      v2 = 0x646E65707061;
      break;
    case 11:
      v2 = 1702260589;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24();
  }

  return v10 & 1;
}

uint64_t sub_2681EB22C(unsigned __int8 a1, char a2)
{
  v2 = 0x7265646E696D6572;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x7265646E696D6572;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1802723700;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x6B736174627573;
      break;
    case 3:
      v3 = 0xE400000000000000;
      v5 = 1953720684;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1702129518;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1835365481;
      break;
    case 6:
      v5 = OUTLINED_FUNCTION_41_5();
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1802723700;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x6B736174627573;
      break;
    case 3:
      v6 = 0xE400000000000000;
      v2 = 1953720684;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1702129518;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1835365481;
      break;
    case 6:
      OUTLINED_FUNCTION_43_5();
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
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EB39C(unsigned __int8 a1, char a2)
{
  v2 = 7562617;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 28526;
    }

    else
    {
      v4 = 0x6C65636E6163;
    }

    if (v3 == 1)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 7562617;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 28526;
    }

    else
    {
      v2 = 0x6C65636E6163;
    }

    if (a2 == 1)
    {
      v6 = 0xE200000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_2_24();
  }

  return v8 & 1;
}

uint64_t sub_2681EB468(unsigned __int8 a1, char a2)
{
  v2 = 0x657079546D657469;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = "temporalEventTriggerType";
  v6 = 0x657079546D657469;
  v7 = "locationSearchType";
  switch(v4)
  {
    case 1:
      v6 = OUTLINED_FUNCTION_33_7();
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_28_9();
      break;
    case 3:
      v3 = 0xE600000000000000;
      v6 = 0x737574617473;
      break;
    case 4:
      v6 = OUTLINED_FUNCTION_20_14(0x6F6Cu);
      break;
    case 5:
      v6 = 0xD000000000000012;
      v3 = 0x80000002683FA7C0;
      break;
    case 6:
      v6 = 0x656D695465746164;
      break;
    case 7:
      v6 = 0x7261655365746164;
      v3 = 0xEE00657079546863;
      break;
    case 8:
      v6 = 0x6F6972506B736174;
      v3 = 0xEC00000079746972;
      break;
    case 9:
      v3 = 0x80000002683FA800;
      v6 = 0xD000000000000018;
      break;
    default:
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE500000000000000;
      OUTLINED_FUNCTION_3_21();
      break;
    case 2:
      OUTLINED_FUNCTION_27_7();
      break;
    case 3:
      v8 = 0xE600000000000000;
      v2 = 0x737574617473;
      break;
    case 4:
      OUTLINED_FUNCTION_11_22();
      break;
    case 5:
      v2 = 0xD000000000000012;
      v8 = (v7 - 32) | 0x8000000000000000;
      break;
    case 6:
      v2 = 0x656D695465746164;
      break;
    case 7:
      v2 = 0x7261655365746164;
      v8 = 0xEE00657079546863;
      break;
    case 8:
      v2 = 0x6F6972506B736174;
      v8 = 0xEC00000079746972;
      break;
    case 9:
      v8 = (v5 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000018;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_2_24();
  }

  return v10 & 1;
}

uint64_t sub_2681EB694(unsigned __int8 a1, char a2)
{
  v2 = 0x65746973626577;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x65746973626577;
  switch(v4)
  {
    case 1:
      v3 = 0xE300000000000000;
      v5 = 7107189;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v7 = 1953458288;
      goto LABEL_7;
    case 3:
      v3 = 0xE500000000000000;
      v7 = 1701079414;
LABEL_7:
      v5 = v7 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 7368801;
      break;
    case 5:
      v3 = 0xE500000000000000;
      v5 = 0x6C69616D65;
      break;
    case 6:
      v6 = 0x67617373656DLL;
      goto LABEL_11;
    case 7:
      v5 = 0x74736163646F70;
      break;
    case 8:
      v3 = 0xE400000000000000;
      v5 = 1735290739;
      break;
    case 9:
      v6 = 0x6C6369747261;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      v3 = 0xE400000000000000;
      v5 = 1936287860;
      break;
    default:
      break;
  }

  v8 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE300000000000000;
      v2 = 7107189;
      break;
    case 2:
      v8 = 0xE500000000000000;
      v10 = 1953458288;
      goto LABEL_20;
    case 3:
      v8 = 0xE500000000000000;
      v10 = 1701079414;
LABEL_20:
      v2 = v10 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
      break;
    case 4:
      v8 = 0xE300000000000000;
      v2 = 7368801;
      break;
    case 5:
      v8 = 0xE500000000000000;
      v2 = 0x6C69616D65;
      break;
    case 6:
      v9 = 0x67617373656DLL;
      goto LABEL_24;
    case 7:
      v2 = 0x74736163646F70;
      break;
    case 8:
      v8 = 0xE400000000000000;
      v2 = 1735290739;
      break;
    case 9:
      v9 = 0x6C6369747261;
LABEL_24:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 10:
      v8 = 0xE400000000000000;
      v2 = 1936287860;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v12 = 1;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_2_24();
  }

  return v12 & 1;
}

uint64_t sub_2681EB934(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_2681F0154(a4, a5);
  sub_2683CFC58();
  sub_2683CFC58();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_10_11();
  }

  return v8 & 1;
}

uint64_t sub_2681EBA00()
{
  sub_2683CF588();
  v0 = sub_2683CF428();
  v3[3] = v0;
  v3[4] = sub_2681F0154(&qword_28024F2D8, MEMORY[0x277D60B68]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D60B50], v0);
  result = sub_2683CF558();
  qword_28027C850 = result;
  return result;
}

uint64_t sub_2681EBAF0()
{
  sub_2683CF588();
  v0 = sub_2683CF428();
  v3[3] = v0;
  v3[4] = sub_2681F0154(&qword_28024F2D8, MEMORY[0x277D60B68]);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x277D60B50], v0);
  result = sub_2683CF558();
  qword_28027C858 = result;
  return result;
}

void sub_2681EBBD8()
{
  OUTLINED_FUNCTION_30_0();
  v0 = sub_2683CF518();
  v1 = OUTLINED_FUNCTION_0_3(v0);
  v86 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_14_3();
  v84 = (v6 - v5);
  v7 = sub_2683CF3B8();
  v89[3] = v7;
  v89[4] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(v89);
  OUTLINED_FUNCTION_16_19();
  *v8 = 0xD000000000000023;
  v8[1] = v9;
  v77 = *MEMORY[0x277D60868];
  v73 = v7;
  v76 = *(*(v7 - 8) + 104);
  v76();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D0, &qword_2683DB3B0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2683D2890;
  sub_268129504(0, &qword_28024F2C8, 0x277CD3D30);
  OUTLINED_FUNCTION_48_4();
  v11 = OUTLINED_FUNCTION_32_7();
  sub_26838F570(v11 | 0x656D614E00000000, 0xE800000000000000, v87, (v10 + 32));
  OUTLINED_FUNCTION_48_4();
  v70 = v10;
  sub_26838F570(0x7265646E696D6572, 0xED0000656C746954, v87, (v10 + 136));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2D0, &qword_2683DB458);
  v12 = type metadata accessor for NotebookSuggestion.SignalDefinition();
  v13 = *(*(v12 - 8) + 80);
  v14 = (v13 + 32) & ~v13;
  v83 = *(*(v12 - 8) + 72);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2683D1EC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_2683DB3A0;
  if (qword_28024C8A0 != -1)
  {
    swift_once();
  }

  *(v16 + 32) = qword_28027C858;
  sub_2683CF588();

  *(v16 + 40) = sub_2683CF568();
  *(v16 + 48) = sub_2683CF578();
  *(v16 + 56) = sub_2683CF548();
  *(v15 + v14) = v16;
  __swift_storeEnumTagSinglePayload(v15 + v14 + *(v12 + 20), 1, 1, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1E8, &qword_2683DB3D0);
  v17 = sub_2683CF438();
  OUTLINED_FUNCTION_0_3(v17);
  v59 = v14;
  v19 = v18;
  v72 = 2 * *(v20 + 72);
  v82 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = *(v20 + 72);
  v79 = v21;
  v58 = swift_allocObject();
  v22 = OUTLINED_FUNCTION_45_2(v58);
  v24 = v23 + v82;
  v85 = *MEMORY[0x277D60B98];
  v81 = *(v19 + 104);
  v81(v23 + v82, v22);
  v71 = *MEMORY[0x277D60B80];
  (v81)(v24 + v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F0, &qword_2683DB3D8);
  v25 = *(sub_2683CF4C8() - 8);
  v68 = ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72);
  v78 = v0;
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_2683D1EC0;
  sub_2683CF4E8();
  OUTLINED_FUNCTION_16_19();
  v57 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F8, &qword_2683DB3E8);
  v28 = sub_2683CF418();
  OUTLINED_FUNCTION_0_3(v28);
  v30 = v29;
  v32 = *(v31 + 72);
  v33 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v80 = v12;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_2683D1ED0;
  v65 = v33;
  v35 = *(v30 + 104);
  v63 = *MEMORY[0x277D609A8];
  v35(v34 + v33);
  v62 = *MEMORY[0x277D60998];
  v35(v34 + v33 + v32);
  v61 = 2 * v32;
  v67 = v32;
  v60 = *MEMORY[0x277D60988];
  v64 = v35;
  v35(v34 + v33 + 2 * v32);
  strcpy(v88, "createReminder");
  v88[15] = -18;
  v89[5] = v70;
  v89[6] = &unk_2683DB450;
  v89[7] = 0;
  v90 = 0;
  v91 = v15;
  v92 = v58;
  v93 = sub_2681F01AC;
  v94 = 0;
  v95 = v26;
  v96 = &unk_2683DB460;
  v97 = 0;
  v98 = v34;
  v99 = 0xD000000000000013;
  v100 = v57;
  *&v87[40] = v73;
  *&v87[48] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(&v87[16]);
  OUTLINED_FUNCTION_16_19();
  *v36 = 0xD000000000000025;
  v36[1] = v37;
  v76();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v38);
  v75 = v39;
  v40 = (v39 + v59);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_2683D6890;
  *(v41 + 32) = sub_2683CF548();
  *(v41 + 40) = sub_2683CF568();
  v42 = swift_allocObject();
  v43 = OUTLINED_FUNCTION_45_2(v42);
  v45 = v44 + v82;
  v74 = *MEMORY[0x277D60B78];
  v81(v44 + v82, v43);
  (v81)(v45 + v79, v85, v17);
  *v84 = v42;
  v46 = *MEMORY[0x277D61060];
  v69 = *(v86 + 104);
  v69(v84, v46, v78);
  *v40 = v41;
  v47 = *(v80 + 20);
  v66 = *(v86 + 32);
  v66(v40 + v47, v84, v78);
  __swift_storeEnumTagSinglePayload(v40 + v47, 0, 1, v78);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_2683D6890;
  *(v48 + 32) = sub_2683CF578();
  if (qword_28024C898 != -1)
  {
    swift_once();
  }

  v49 = (v40 + v83);
  *(v48 + 40) = qword_28027C850;
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_2683D1EC0;
  (v81)(v50 + v82, v85, v17);
  *v84 = v50;
  v69(v84, v46, v78);
  *v49 = v48;
  v51 = *(v80 + 20);
  v66(v49 + v51, v84, v78);
  __swift_storeEnumTagSinglePayload(v49 + v51, 0, 1, v78);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_2683D1ED0;
  (v81)(v52 + v82, v85, v17);
  (v81)(v52 + v82 + v79, v74, v17);
  (v81)(v52 + v82 + v72, v71, v17);
  v53 = swift_allocObject();
  *(v53 + 16) = xmmword_2683D1EC0;

  sub_2683CF4D8();
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_2683D1ED0;
  (v64)(v54 + v65, v63, v28);
  (v64)(v54 + v65 + v67, v62, v28);
  (v64)(v54 + v65 + v61, v60, v28);
  strcpy(v87, "createNote");
  v87[11] = 0;
  *&v87[12] = -369098752;
  *&v87[56] = MEMORY[0x277D84F90];
  *&v87[64] = &unk_2683DB468;
  *&v87[72] = 0;
  v87[80] = 1;
  *&v87[88] = v75;
  *&v87[96] = v52;
  *&v87[104] = sub_2681F01AC;
  *&v87[112] = 0;
  *&v87[120] = v53;
  *&v87[128] = &unk_2683DB470;
  *&v87[136] = 0;
  OUTLINED_FUNCTION_35_6();
  *&v87[144] = v54;
  *&v87[152] = v55 + 2;
  *&v87[160] = 0x80000002683FCFF0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
  v56 = swift_allocObject();
  OUTLINED_FUNCTION_45_2(v56);
  sub_2681EFE4C(v88, &v56[2]);
  memcpy(&v56[12].n128_i8[8], v87, 0xA8uLL);
  sub_2681EFEA8(v88);
  OUTLINED_FUNCTION_29_0();
}

void sub_2681EC754()
{
  OUTLINED_FUNCTION_30_0();
  v65 = sub_2683CF3B8();
  v0 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_14_3();
  v3 = (v2 - v1);
  OUTLINED_FUNCTION_16_19();
  v44 = v4;
  OUTLINED_FUNCTION_35_6();
  v46 = v5 + 16;
  v47 = v6;
  *v3 = v5 + 16;
  v3[1] = v6;
  v67 = *MEMORY[0x277D60868];
  v66 = *(v7 + 104);
  v66(v3);
  v45 = sub_2683CF3D8();
  v95[3] = v45;
  v95[4] = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_0(v95);
  OUTLINED_FUNCTION_47_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D0, &qword_2683DB3B0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2683D1EC0;
  v9 = v8;
  v40 = v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1D8, &qword_2683DB3B8);
  v82[1] = v43;
  v42 = sub_2681EFB64();
  v82[2] = v42;
  __swift_allocate_boxed_opaque_existential_0(&v81);
  sub_2683CF408();
  sub_2683CF448();
  sub_2683CF3F8();
  sub_26838F570(0xD000000000000016, 0x80000002683FEA90, &v81, (v9 + 32));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1E8, &qword_2683DB3D0);
  v59 = sub_2683CF438();
  v64 = *(*(v59 - 8) + 72);
  v10 = *(v59 - 8);
  v53 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v11);
  v63 = *MEMORY[0x277D607E8];
  v12 = *MEMORY[0x277D607E8];
  v62 = sub_2683CF398();
  OUTLINED_FUNCTION_1(v62);
  v61 = *(v13 + 104);
  v61(v11 + v53, v12);
  v58 = *MEMORY[0x277D60BA0];
  v60 = *(v10 + 104);
  v60(v11 + v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F0, &qword_2683DB3D8);
  v14 = *(sub_2683CF4C8() - 8);
  v57 = *(v14 + 72);
  v41 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v15);
  sub_2683CF4E8();
  OUTLINED_FUNCTION_16_19();
  v52 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F1F8, &qword_2683DB3E8);
  v17 = sub_2683CF418();
  OUTLINED_FUNCTION_0_3(v17);
  v19 = v18;
  v39 = *(v20 + 72);
  v51 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2683D1ED0;
  v56 = *MEMORY[0x277D609A8];
  v50 = *(v19 + 104);
  v50(v21 + v51);
  v55 = *MEMORY[0x277D60998];
  v50(v21 + v51 + v39);
  v54 = *MEMORY[0x277D60988];
  v50(v21 + v51 + 2 * v39);
  v94[0] = 0xD000000000000013;
  v94[1] = v44;
  v95[5] = v40;
  v95[6] = &unk_2683DB3C8;
  v95[7] = 0;
  v96 = 2;
  v97 = MEMORY[0x277D84F90];
  v98 = v11;
  v99 = sub_2681F01AC;
  v100 = 0;
  v101 = v15;
  v102 = &unk_2683DB3E0;
  v103 = 0;
  v104 = v21;
  v105 = 0xD000000000000013;
  v106 = v52;
  *v3 = v46;
  v3[1] = v47;
  (v66)(v3, v67, v65);
  v82[3] = v45;
  v82[4] = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_0(v82);
  OUTLINED_FUNCTION_47_1();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_17_12(v22);
  v24 = v23;
  v48 = v23;
  v69[1] = v43;
  v69[2] = v42;
  __swift_allocate_boxed_opaque_existential_0(&v68);
  sub_2683CF3F8();
  sub_26838F570(0xD000000000000017, 0x80000002683FEAB0, &v68, (v24 + 32));
  v25 = swift_allocObject();
  v26 = OUTLINED_FUNCTION_17_12(v25);
  (v61)(v27 + v53, v63, v62, v26);
  (v60)(v25 + v53, v58, v59);
  v28 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_17_12(v28);
  sub_2683CF4E8();
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2683D1ED0;
  (v50)(v29 + v51, v56, v17);
  (v50)(v29 + v51 + v39, v55, v17);
  (v50)(v29 + v51 + 2 * v39, v54, v17);
  *&v81 = 0x6E696D6552646461;
  *(&v81 + 1) = 0xEF656D6954726564;
  v82[5] = v48;
  v82[6] = &unk_2683DB3F8;
  v82[7] = 0;
  v83 = 3;
  v84 = MEMORY[0x277D84F90];
  v85 = v25;
  v86 = sub_2681F01AC;
  v87 = 0;
  v88 = v28;
  v89 = &unk_2683DB400;
  v90 = 0;
  v91 = v29;
  v92 = 0xD000000000000013;
  v93 = v52;
  OUTLINED_FUNCTION_16_19();
  v49 = v30;
  v69[3] = v65;
  v69[4] = MEMORY[0x277D60888];
  __swift_allocate_boxed_opaque_existential_0(v69);
  OUTLINED_FUNCTION_16_19();
  *v31 = 0xD00000000000002BLL;
  v31[1] = v32;
  (v66)();
  v33 = swift_allocObject();
  v34 = OUTLINED_FUNCTION_17_12(v33);
  (v61)(v35 + v53, v63, v62, v34);
  (v60)(v33 + v53, v58, v59);
  v36 = OUTLINED_FUNCTION_49_4();
  OUTLINED_FUNCTION_17_12(v36);
  sub_2683CF4E8();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_2683D1ED0;
  (v50)(v37 + v51, v56, v17);
  (v50)(v37 + v51 + v39, v55, v17);
  (v50)(v37 + v51 + 2 * v39, v54, v17);
  *&v68 = 0xD000000000000012;
  *(&v68 + 1) = v49;
  v69[5] = MEMORY[0x277D84F90];
  v69[6] = &unk_2683DB410;
  v69[7] = 0;
  v70 = 4;
  v71 = MEMORY[0x277D84F90];
  v72 = v33;
  v73 = sub_2681F01AC;
  v74 = 0;
  v75 = v36;
  v76 = &unk_2683DB418;
  v77 = 0;
  v78 = v37;
  v79 = 0xD000000000000013;
  v80 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F200, &qword_2683E64F0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2683D1ED0;
  sub_2681EFE4C(&v81, v38 + 32);
  sub_2681EFE4C(&v68, v38 + 200);
  sub_2681EFE4C(v94, v38 + 368);
  sub_2681EFEA8(&v68);
  sub_2681EFEA8(&v81);
  sub_2681EFEA8(v94);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681ED18C()
{
  OUTLINED_FUNCTION_14();
  sub_2683CF9D8();
  OUTLINED_FUNCTION_37();

  return v0();
}

uint64_t sub_2681ED204@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2683CF468();
  v3 = sub_2683CF458();
  a1[3] = v2;
  result = sub_2681F0154(&qword_28024F218, MEMORY[0x277D60CA0]);
  a1[4] = result;
  *a1 = v3;
  return result;
}

uint64_t sub_2681ED280()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F238, &qword_2683DB428);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13[-v2];
  v4 = sub_2683CF408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  sub_2683CF3E8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26812D9E0(v3, &qword_28024F238, &qword_2683DB428);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    sub_2682DFCE0();
    (*(v5 + 8))(v11, v4);
    return v13[15];
  }
}

uint64_t sub_2681ED444(uint64_t a1, uint64_t a2)
{
  v2[18] = a1;
  v2[19] = a2;
  v3 = sub_2683CF3A8();
  v2[20] = v3;
  v4 = *(v3 - 8);
  v2[21] = v4;
  v5 = *(v4 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681ED510, 0, 0);
}

uint64_t sub_2681ED510()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[20];
  v4 = v0[21];
  v5 = v0[18];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_42_7();
  sub_2683CF498();
  v7 = *MEMORY[0x277D60818];
  v8 = *(v4 + 104);
  v9 = OUTLINED_FUNCTION_37_6();
  v45 = v10;
  v10(v9);
  OUTLINED_FUNCTION_0_35();
  v11 = OUTLINED_FUNCTION_19_2();
  v16 = sub_2681EB934(v11, v12, v13, v14, v15);
  v17 = *(v4 + 8);
  v18 = OUTLINED_FUNCTION_32_3();
  v17(v18);
  v19 = OUTLINED_FUNCTION_30_7();
  v17(v19);
  if ((v16 & 1) == 0)
  {
    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[20];
    OUTLINED_FUNCTION_42_7();
    sub_2683CF498();
    v23 = *MEMORY[0x277D60828];
    v24 = OUTLINED_FUNCTION_37_6();
    v45(v24);
    OUTLINED_FUNCTION_0_35();
    v25 = OUTLINED_FUNCTION_19_2();
    v30 = sub_2681EB934(v25, v26, v27, v28, v29);
    v31 = OUTLINED_FUNCTION_32_3();
    v17(v31);
    v32 = OUTLINED_FUNCTION_30_7();
    v17(v32);
    if ((v30 & 1) == 0)
    {
      v38 = v0[22];
      v39 = v0[23];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
      inited = swift_initStackObject();
      v41 = OUTLINED_FUNCTION_13_16(inited, xmmword_2683D2890);
      v42 = MEMORY[0x277D839B0];
      v41[3].n128_u8[0] = 0;
      v41[4].n128_u64[1] = v42;
      strcpy(&v41[5], "isDisplayHint");
      v41[5].n128_u16[7] = -4864;
      v41[7].n128_u64[1] = v42;
      v41[6].n128_u8[0] = 0;
      sub_2683CF9D8();

      OUTLINED_FUNCTION_8_19();
      OUTLINED_FUNCTION_2_16();

      __asm { BRAA            X2, X16 }
    }
  }

  v33 = swift_task_alloc();
  v0[24] = v33;
  *v33 = v0;
  v33[1] = sub_2681ED7D8;
  v34 = v0[19];
  OUTLINED_FUNCTION_2_16();

  return sub_2681ED9D8(v35);
}

uint64_t sub_2681ED7D8()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 192);
  v4 = *v0;
  *(*v0 + 200) = v2;

  return MEMORY[0x2822009F8](sub_2681ED8D4, 0, 0);
}

uint64_t sub_2681ED8D4()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  v5 = OUTLINED_FUNCTION_13_16(inited, xmmword_2683D2890);
  v6 = MEMORY[0x277D839B0];
  v5[3].n128_u8[0] = (v1 & 1) == 0;
  v5[4].n128_u64[1] = v6;
  strcpy(&v5[5], "isDisplayHint");
  v5[5].n128_u16[7] = -4864;
  v5[7].n128_u64[1] = v6;
  v5[6].n128_u8[0] = 1;
  sub_2683CF9D8();

  v7 = OUTLINED_FUNCTION_8_19();

  return v8(v7);
}

uint64_t sub_2681ED9F8()
{
  v20 = v0;
  v1 = v0[2];

  sub_2682E0174(v2, v15);
  if (v15[0] != 2 && (v17 & 1) == 0 && (v19 & 1) == 0)
  {
    v3 = v16;
    v4 = v18;
    v5 = [objc_allocWithZone(MEMORY[0x277CBDAB8]) init];
    v0[3] = v5;
    v6 = [objc_opt_self() defaultManager];
    v0[4] = v6;
    sub_2681EF4A0(v5);
    if (v7)
    {
      v8 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v3 longitude:v4];
      v0[5] = v8;
      v9 = swift_task_alloc();
      v0[6] = v9;
      v9[2] = v6;
      v9[3] = 0x407F400000000000;
      v9[4] = v8;
      v10 = *(MEMORY[0x277D859E0] + 4);
      v11 = swift_task_alloc();
      v0[7] = v11;
      *v11 = v0;
      v11[1] = sub_2681EDBFC;
      v12 = MEMORY[0x277D839B0];

      return MEMORY[0x2822007B8](v0 + 8, 0, 0, 0xD000000000000040, 0x80000002683FEB00, sub_2681F00A0, v9, v12);
    }
  }

  OUTLINED_FUNCTION_37();

  return v13(1);
}

uint64_t sub_2681EDBFC()
{
  OUTLINED_FUNCTION_14();
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;

  return MEMORY[0x2822009F8](sub_2681EDD08, 0, 0);
}

uint64_t sub_2681EDD08()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);

  if (*(v0 + 64) == 1 && sub_2681EFFBC(v3, &unk_2878FB588) == 2)
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_37();
  v6 = v5 & 1;

  return v4(v6);
}

uint64_t sub_2681EDD9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_2683CF478();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EDE60, 0, 0);
}

uint64_t sub_2681EDE60()
{
  v9 = v0;
  v1 = *(v0 + 24);

  sub_2682E0174(v2, v8);
  v3 = v8[0];
  if (v8[0] == 2)
  {
    goto LABEL_2;
  }

  (*(*(v0 + 48) + 16))(*(v0 + 56), *(v0 + 16), *(v0 + 40));
  sub_2682E03AC();
  if (v3 & 1) == 0 || (v8[1] & 1) != 0 || (v8[0])
  {
    goto LABEL_2;
  }

  if (qword_28024CC78 != -1)
  {
    swift_once();
  }

  if (sub_2683B65D4() - 3 > 1)
  {
LABEL_2:
    v4 = *(v0 + 56);

    OUTLINED_FUNCTION_37();

    return v5(0);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
    v7 = swift_task_alloc();
    *(v0 + 64) = v7;
    *v7 = v0;
    v7[1] = sub_2681EDFE0;

    return sub_268350848();
  }
}

uint64_t sub_2681EDFE0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 64);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;

  v7 = *(v3 + 56);

  v8 = *(v5 + 8);

  return v8(a1);
}

uint64_t sub_2681EE0F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F238, &qword_2683DB428);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13[-v2];
  v4 = sub_2683CF408();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  sub_2683CF3E8();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_26812D9E0(v3, &qword_28024F238, &qword_2683DB428);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    sub_2682DFCE0();
    (*(v5 + 8))(v11, v4);
    return v13[14];
  }
}

uint64_t sub_2681EE2BC(uint64_t a1)
{
  v1[24] = a1;
  v2 = sub_2683CF3A8();
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v4 = *(v3 + 64) + 15;
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EE388, 0, 0);
}

void sub_2681EE388()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  v6 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  OUTLINED_FUNCTION_42_7();
  sub_2683CF498();
  v7 = *MEMORY[0x277D60818];
  v8 = *(v3 + 104);
  v9 = OUTLINED_FUNCTION_37_6();
  v41 = v10;
  v10(v9);
  OUTLINED_FUNCTION_0_35();
  v11 = OUTLINED_FUNCTION_19_2();
  LOBYTE(v6) = sub_2681EB934(v11, v12, v13, v14, v15);
  v16 = *(v3 + 8);
  v17 = OUTLINED_FUNCTION_32_3();
  v16(v17);
  v18 = OUTLINED_FUNCTION_30_7();
  v16(v18);
  if (v6)
  {
    v19 = 1;
  }

  else
  {
    v21 = v0[27];
    v20 = v0[28];
    v22 = v0[25];
    OUTLINED_FUNCTION_42_7();
    sub_2683CF498();
    v23 = *MEMORY[0x277D60828];
    v24 = OUTLINED_FUNCTION_37_6();
    v41(v24);
    OUTLINED_FUNCTION_0_35();
    v25 = OUTLINED_FUNCTION_19_2();
    v19 = sub_2681EB934(v25, v26, v27, v28, v29);
    v30 = OUTLINED_FUNCTION_32_3();
    v16(v30);
    v31 = OUTLINED_FUNCTION_30_7();
    v16(v31);
  }

  v33 = v0[27];
  v32 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1ED0;
  *(inited + 32) = 0x7265746641796164;
  *(inited + 40) = 0xEF646E656B656557;
  sub_2681EE670();
  v36 = v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DC38, &qword_2683D4408);
  *(inited + 48) = v36;
  *(inited + 72) = v37;
  strcpy((inited + 80), "isDisplayHint");
  *(inited + 94) = -4864;
  v38 = MEMORY[0x277D839B0];
  *(inited + 96) = v19 & 1;
  *(inited + 120) = v38;
  strcpy((inited + 128), "hintVariation");
  *(inited + 142) = -4864;
  *(inited + 168) = MEMORY[0x277D83B88];
  *(inited + 144) = sub_2681F0014(2uLL) + 1;
  sub_2683CF9D8();

  OUTLINED_FUNCTION_8_19();
  OUTLINED_FUNCTION_2_16();

  __asm { BRAA            X2, X16 }
}

void sub_2681EE670()
{
  OUTLINED_FUNCTION_30_0();
  v1 = sub_2683CB7D8();
  v39 = OUTLINED_FUNCTION_0_3(v1);
  v40 = v2;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_14_3();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = OUTLINED_FUNCTION_50_2();
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v21 = sub_2683CB7A8();
  v22 = OUTLINED_FUNCTION_0_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_14_3();
  sub_2683CB768();
  sub_2683CB508();
  if (sub_2683CB6E8())
  {
    OUTLINED_FUNCTION_32_3();
    sub_2681EF200();
    if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
    {
      (*(v13 + 8))(v20, v10);
      v25 = OUTLINED_FUNCTION_23_13();
      v26(v25);
      sub_26812D9E0(v0, &qword_28024DB08, qword_2683D5760);
    }

    else
    {
      (*(v13 + 32))(v18, v0, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2683D2890;
      *(inited + 32) = 1935893875;
      *(inited + 40) = 0xE400000000000000;
      sub_2683CB4E8();
      v30 = MEMORY[0x277D839F8];
      *(inited + 48) = v31;
      *(inited + 72) = v30;
      *(inited + 80) = 0x656E6F5A656D6974;
      *(inited + 88) = 0xE800000000000000;
      sub_2683CB788();
      v32 = sub_2683CB7B8();
      v38 = v33;
      (*(v40 + 8))(v7, v39);
      *(inited + 120) = MEMORY[0x277D837D0];
      v34 = v38;
      *(inited + 96) = v32;
      *(inited + 104) = v34;
      sub_2683CF9D8();
      v35 = *(v13 + 8);
      v35(v18, v10);
      v35(v20, v10);
      v36 = OUTLINED_FUNCTION_23_13();
      v37(v36);
    }
  }

  else
  {
    (*(v13 + 8))(v20, v10);
    v27 = OUTLINED_FUNCTION_23_13();
    v28(v27);
  }

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681EEA20(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_2683CF478();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EEAE0, 0, 0);
}

uint64_t sub_2681EEAE0()
{
  v9 = v0;
  v1 = v0[3];

  sub_2682E0174(v2, v8);
  v3 = v8[0];
  if (v8[0] == 2)
  {
    v4 = 0;
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    sub_2682E03AC();
    if (v3)
    {
      v4 = (v8[1] | v8[0]) ^ 1;
    }

    else
    {
      v4 = 0;
    }
  }

  v5 = v0[6];

  OUTLINED_FUNCTION_37();

  return v6(v4 & 1);
}

uint64_t sub_2681EEBB0()
{
  v1 = sub_2683CB528();
  v0[12] = v1;
  v2 = *(v1 - 8);
  v0[13] = v2;
  v3 = *(v2 + 64) + 15;
  v0[14] = swift_task_alloc();
  v4 = sub_2683CB7A8();
  v0[15] = v4;
  v5 = *(v4 - 8);
  v0[16] = v5;
  v6 = *(v5 + 64) + 15;
  v0[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EECC8, 0, 0);
}

uint64_t sub_2681EECC8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F220, &qword_2683D20F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2683D1EC0;
  *(inited + 32) = 0x6E656B6565577369;
  *(inited + 40) = 0xE900000000000064;
  sub_2683CB768();
  sub_2683CB508();
  v8 = sub_2683CB6E8();
  (*(v6 + 8))(v3, v5);
  (*(v2 + 8))(v1, v4);
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v8 & 1;
  sub_2683CF9D8();

  v9 = OUTLINED_FUNCTION_8_19();

  return v10(v9);
}

uint64_t sub_2681EEE20(uint64_t a1, uint64_t a2)
{
  v2[2] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760) - 8) + 64) + 15;
  v2[3] = swift_task_alloc();
  v4 = sub_2683CB528();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v7 = sub_2683CB7A8();
  v2[8] = v7;
  v8 = *(v7 - 8);
  v2[9] = v8;
  v9 = *(v8 + 64) + 15;
  v2[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F210, &qword_2683DB420) - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  v2[12] = updated;
  v12 = *(*(updated - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681EEFE8, 0, 0);
}

uint64_t sub_2681EEFE8()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[2];

  sub_2682E0800();
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v4 = v0[11];
    v5 = &unk_28024F210;
    v6 = &unk_2683DB420;
LABEL_5:
    sub_26812D9E0(v4, v5, v6);
    v16 = 0;
    goto LABEL_7;
  }

  v7 = v0[10];
  v9 = v0[3];
  v8 = v0[4];
  sub_2681EFEFC(v0[11], v0[13]);
  sub_2683CB768();
  sub_2683CB738();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v9, 1, v8);
  v11 = v0[13];
  v13 = v0[9];
  v12 = v0[10];
  v14 = v0[8];
  if (EnumTagSinglePayload == 1)
  {
    v15 = v0[3];
    (*(v13 + 8))(v0[10], v0[8]);
    sub_2681EFF60(v11);
    v5 = &qword_28024DB08;
    v6 = qword_2683D5760;
    v4 = v15;
    goto LABEL_5;
  }

  v18 = v0[6];
  v17 = v0[7];
  v19 = v0[4];
  v20 = v0[5];
  (*(v20 + 32))(v17, v0[3], v19);
  sub_2683CB508();
  OUTLINED_FUNCTION_32_3();
  v16 = sub_2683CB4C8();
  v21 = *(v20 + 8);
  v21(v18, v19);
  v21(v17, v19);
  (*(v13 + 8))(v12, v14);
  sub_2681EFF60(v11);
LABEL_7:
  v22 = v0[13];
  v24 = v0[10];
  v23 = v0[11];
  v26 = v0[6];
  v25 = v0[7];
  v27 = v0[3];

  OUTLINED_FUNCTION_37();

  return v28(v16 & 1);
}

void sub_2681EF200()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_39_5();
  v33 = v2;
  v3 = sub_2683CB798();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = OUTLINED_FUNCTION_50_2();
  v15 = OUTLINED_FUNCTION_0_3(v14);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v20 = v19 - v18;
  v23 = *(v6 + 104);
  v21 = v6 + 104;
  v22 = v23;
  v38 = *MEMORY[0x277CC9968];
  v36 = (v24 + 32);
  v37 = (v21 - 96);
  v34 = (v24 + 8);
  v35 = v23;
  v25 = 1;
  while (1)
  {
    v22(v11, v38, v3);
    OUTLINED_FUNCTION_19_2();
    sub_2683CB748();
    (*v37)(v11, v3);
    if (__swift_getEnumTagSinglePayload(v1, 1, v14) != 1)
    {
      break;
    }

    sub_26812D9E0(v1, &qword_28024DB08, qword_2683D5760);
LABEL_6:
    if (++v25 == 7)
    {
      v31 = 1;
      v32 = v33;
      goto LABEL_9;
    }
  }

  v26 = v11;
  v27 = v3;
  v28 = v21;
  v29 = v0;
  v30 = *v36;
  (*v36)(v20, v1, v14);
  if (sub_2683CB6E8())
  {
    (*v34)(v20, v14);
    v0 = v29;
    v21 = v28;
    v3 = v27;
    v11 = v26;
    v22 = v35;
    goto LABEL_6;
  }

  v32 = v33;
  v30(v33, v20, v14);
  v31 = 0;
LABEL_9:
  __swift_storeEnumTagSinglePayload(v32, v31, 1, v14);
  OUTLINED_FUNCTION_29_0();
}

void sub_2681EF4A0(void *a1)
{
  v1 = sub_2681EFA3C(a1);
  if (v1)
  {
    v18 = v1;
    v2 = [v1 postalAddresses];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024F250, &unk_2683DB440);
    v3 = sub_2683CFCA8();

    v4 = sub_2683ABE58(v3);
    v5 = 0;
    v6 = *MEMORY[0x277CBD8E0];
    while (1)
    {
      if (v4 == v5)
      {
LABEL_19:

        return;
      }

      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D616C90](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v9 = [v7 label];
      if (v9)
      {
        v10 = v9;
        v11 = sub_2683CFA78();
        v13 = v12;
      }

      else
      {
        v11 = 0;
        v13 = 0;
      }

      v14 = sub_2683CFA78();
      if (v13)
      {
        if (v11 == v14 && v13 == v15)
        {

          return;
        }

        v17 = sub_2683D0598();

        if (v17)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      ++v5;
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

void sub_2681EF6A8(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = aBlock - v11;
  (*(v9 + 16))(aBlock - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  aBlock[4] = sub_2681F00B0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2681EF998;
  aBlock[3] = &block_descriptor_0;
  v15 = _Block_copy(aBlock);

  [a2 fetchLocationsOfInterestWithinDistance:a3 ofLocation:v15 withHandler:a4];
  _Block_release(v15);
}

void sub_2681EF870(uint64_t a1, uint64_t a2)
{
  if (a1 && !a2)
  {
    v3 = sub_2683ABE58(a1);
    v4 = 0;
    do
    {
      v5 = v4;
      if (v3 == v4)
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x26D616C90](v4, a1);
      }

      else
      {
        if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        return;
      }

      v8 = [v6 type];

      v4 = v5 + 1;
    }

    while (v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438);
  sub_2683CFD58();
}

uint64_t sub_2681EF998(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_268129504(0, &qword_28024F248, 0x277D01170);
    v4 = sub_2683CFCA8();
  }

  v7 = a3;
  v6(v4, a3);
}

id sub_2681EFA3C(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024EAB0, &unk_2683D2C10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_2683D2250;
  v3 = *MEMORY[0x277CBD0C8];
  *(v2 + 32) = *MEMORY[0x277CBD0C8];
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2C0, &unk_2683F9280);
  v5 = sub_2683CFC98();

  v11[0] = 0;
  v6 = [a1 _ios_meContactWithKeysToFetch_error_];

  v7 = v11[0];
  if (!v6)
  {
    v8 = v7;
    sub_2683CB388();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_2681EFB64()
{
  result = qword_28024F1E0;
  if (!qword_28024F1E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28024F1D8, &qword_2683DB3B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F1E0);
  }

  return result;
}

uint64_t sub_2681EFBC8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_3(v1);

  return sub_2681ED444(v2, v3);
}

uint64_t sub_2681EFC50()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = *(*v0 + 16);
  v4 = *v0;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;

  OUTLINED_FUNCTION_37();

  return v6(v2);
}

uint64_t sub_2681EFD3C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_7_3(v1);

  return sub_2681EE2BC(v2);
}

uint64_t sub_2681EFDC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_39_5();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_7_3(v1);

  return sub_2681EEBB0();
}

uint64_t sub_2681EFEFC(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  (*(*(updated - 8) + 32))(a2, a1, updated);
  return a2;
}

uint64_t sub_2681EFF60(uint64_t a1)
{
  updated = type metadata accessor for UpdateReminderExecutionParameters();
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

unint64_t sub_2681EFFBC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 2;
  }

  result = sub_2681F0014(*(a2 + 16));
  if (result < v2)
  {
    return *(a2 + result + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_2681F0014(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D617A60](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D617A60](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2681F00B0(uint64_t a1, uint64_t a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F240, &qword_2683DB438) - 8) + 80);

  sub_2681EF870(a1, a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2681F0154(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OUTLINED_FUNCTION_2_24()
{

  return sub_2683D0598();
}

uint64_t OUTLINED_FUNCTION_10_11()
{

  return sub_2683D0598();
}

__n128 *OUTLINED_FUNCTION_13_16(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 0x6948656D6F487369;
  result[2].n128_u64[1] = 0xEA0000000000746ELL;
  return result;
}

__n128 OUTLINED_FUNCTION_17_12(__n128 *a1)
{
  result = v1[21];
  a1[1] = result;
  return result;
}

__n128 OUTLINED_FUNCTION_45_2(__n128 *a1)
{
  result = v1[25];
  a1[1] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_1()
{

  return MEMORY[0x2821C65F0](v1, v0, 0);
}

uint64_t OUTLINED_FUNCTION_48_4()
{

  return MEMORY[0x2821C71C0](v0, 0, v1);
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  v3 = v1 + v0[23];
  v4 = v0[22] | 7;
  v5 = v0[24];

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_50_2()
{

  return sub_2683CB528();
}

uint64_t sub_2681F0480()
{
  v1 = sub_2683CCC18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  sub_2683CCB88();
  v7(v36, v5, 1);
  (*(v2 + 8))(v5, v1);
  sub_268167C34(v36, v35);
  if (v35[56] == 255)
  {
    goto LABEL_6;
  }

  sub_268167C34(v35, v31);
  if (v34 != 1)
  {
    if (v34 == 7)
    {
      v8 = vorrq_s8(v32, v33);
      if (!(*&vorr_s8(*v8.i8, *&vextq_s8(v8, v8, 8uLL)) | v31[2] | v31[1] | v31[0]))
      {
        if (qword_28024C8E0 != -1)
        {
          OUTLINED_FUNCTION_0_5();
        }

        v24 = sub_2683CF7E8();
        __swift_project_value_buffer(v24, qword_28027C958);
        v25 = sub_2683CF7C8();
        v26 = sub_2683CFE98();
        if (os_log_type_enabled(v25, v26))
        {
          *swift_slowAlloc() = 0;
          OUTLINED_FUNCTION_9_6(&dword_2680EB000, v27, v28, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .cancel()");
          OUTLINED_FUNCTION_25_0();
        }

        sub_2683CC298();
        goto LABEL_12;
      }
    }

    sub_26813A1A0(v31);
LABEL_6:
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v9 = sub_2683CF7E8();
    __swift_project_value_buffer(v9, qword_28027C958);
    sub_268167C34(v36, v31);
    v10 = sub_2683CF7C8();
    v11 = sub_2683CFE98();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136315138;
      sub_268167C34(v31, v29);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D460, &qword_2683D5050);
      v14 = sub_2683CFAD8();
      v16 = v15;
      sub_26812C310(v31, &qword_28024D460, &qword_2683D5050);
      v17 = sub_2681610A0(v14, v16, &v30);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_2680EB000, v10, v11, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .ignore() for unsupported task: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_38();
    }

    else
    {

      sub_26812C310(v31, &qword_28024D460, &qword_2683D5050);
    }

    sub_2683CC2B8();
LABEL_12:
    sub_26812C310(v36, &qword_28024D460, &qword_2683D5050);
    return sub_26812C310(v35, &qword_28024D460, &qword_2683D5050);
  }

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v18 = sub_2683CF7E8();
  __swift_project_value_buffer(v18, qword_28027C958);
  v19 = sub_2683CF7C8();
  v20 = sub_2683CFE98();
  if (os_log_type_enabled(v19, v20))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_9_6(&dword_2680EB000, v21, v22, "[SnoozeTasks.NeedsValueStrategy] actionForInput returning .handle()");
    OUTLINED_FUNCTION_25_0();
  }

  sub_2683CC2A8();
  sub_26812C310(v36, &qword_28024D460, &qword_2683D5050);
  sub_26813A1A0(v31);
  return sub_26812C310(v35, &qword_28024D460, &qword_2683D5050);
}

uint64_t sub_2681F08D4()
{
  OUTLINED_FUNCTION_14();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v5 = sub_2683CCBA8();
  v1[19] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[20] = v6;
  v8 = *(v7 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC748();
  v1[22] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[23] = v10;
  v12 = *(v11 + 64);
  v1[24] = OUTLINED_FUNCTION_15_1();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  v1[25] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[26] = v14;
  v16 = *(v15 + 64);
  v1[27] = OUTLINED_FUNCTION_15_1();
  v17 = sub_2683CCC18();
  v1[28] = v17;
  OUTLINED_FUNCTION_3_1(v17);
  v1[29] = v18;
  v20 = *(v19 + 64);
  v1[30] = OUTLINED_FUNCTION_15_1();
  v21 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v21, v22, v23);
}

void sub_2681F0A6C()
{
  v2 = *(v0 + 232);
  v1 = *(v0 + 240);
  v3 = *(v0 + 224);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  v7 = *(v4 + 48);
  v6 = *(v4 + 56);
  sub_2683CCB88();
  v7(v1, 0);
  (*(v2 + 8))(v1, v3);
  v8 = *(v0 + 72);
  if (v8 != 1)
  {
    if (v8 == 255)
    {
      sub_26812C310(v0 + 16, &qword_28024D460, &qword_2683D5050);
    }

    else
    {
      sub_26813A1A0(v0 + 16);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v18 = *(v0 + 160);
    v17 = *(v0 + 168);
    v19 = *(v0 + 152);
    v20 = *(v0 + 128);
    v21 = sub_2683CF7E8();
    __swift_project_value_buffer(v21, qword_28027C958);
    (*(v18 + 16))(v17, v20, v19);
    v22 = sub_2683CF7C8();
    v23 = sub_2683CFE88();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = *(v0 + 240);
      v25 = *(v0 + 224);
      v27 = *(v0 + 160);
      v26 = *(v0 + 168);
      v28 = *(v0 + 152);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v46 = v30;
      *v29 = 136315138;
      sub_2683CCB88();
      v31 = sub_2683CFAD8();
      v33 = v32;
      (*(v27 + 8))(v26, v28);
      v34 = sub_2681610A0(v31, v33, &v46);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_2680EB000, v22, v23, "[SnoozeTasks.NeedsValueStrategy] parseValueResponse Did not find an .snoozeTasks task from parse: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v30);
      OUTLINED_FUNCTION_38();
      OUTLINED_FUNCTION_25_0();
    }

    else
    {
      v36 = *(v0 + 160);
      v35 = *(v0 + 168);
      v37 = *(v0 + 152);

      (*(v36 + 8))(v35, v37);
    }

    v38 = *(v0 + 240);
    v39 = *(v0 + 216);
    v40 = *(v0 + 192);
    v41 = *(v0 + 168);
    sub_26812C6B8();
    swift_allocError();
    *v42 = 0u;
    *(v42 + 16) = 0u;
    *(v42 + 32) = 4;
    swift_willThrow();

    OUTLINED_FUNCTION_40();
    OUTLINED_FUNCTION_64();

    __asm { BRAA            X1, X16 }
  }

  v9 = *(v0 + 200);
  v10 = *(v0 + 136);
  sub_268128148((v0 + 16), v0 + 80);
  *(v0 + 248) = sub_2683CC9C8();
  v11 = *(v0 + 112);
  __swift_project_boxed_opaque_existential_1((v0 + 80), *(v0 + 104));
  v12 = *(v11 + 16);
  v45 = v12 + *v12;
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = sub_2681F0E5C;
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_2681F0E5C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v2 = v1;
  v3 = *(v1 + 256);
  v9 = *v0;
  *(v2 + 264) = v4;

  v5 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2681F0F4C()
{
  v42 = v0;
  v1 = v0[33];
  v2 = v0[31];
  v3 = sub_2682DDA40(v1);

  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[25];
  v7 = v0[17];
  v8 = sub_2683CF7E8();
  __swift_project_value_buffer(v8, qword_28027C958);
  (*(v5 + 16))(v4, v7, v6);
  v9 = v3;
  v10 = sub_2683CF7C8();
  v11 = sub_2683CFE98();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[26];
  v14 = v0[27];
  v15 = v0[25];
  if (v12)
  {
    v16 = v0[23];
    v17 = v0[24];
    v37 = v0[22];
    v18 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v18 = 136315394;
    log = v10;
    sub_2683CC9E8();
    v19 = sub_2683CC738();
    v36 = v11;
    v21 = v20;
    (*(v16 + 8))(v17, v37);
    (*(v13 + 8))(v14, v15);
    v22 = sub_2681610A0(v19, v21, &v41);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v9;
    *v39 = v9;
    v23 = v9;
    _os_log_impl(&dword_2680EB000, log, v36, "[SnoozeTasks.NeedsValueStrategy] Updated intent after prompt for %s: %@", v18, 0x16u);
    sub_26812C310(v39, &qword_28024DCD8, &qword_2683D5060);
    OUTLINED_FUNCTION_38();
    __swift_destroy_boxed_opaque_existential_0(v40);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_25_0();
  }

  else
  {

    (*(v13 + 8))(v14, v15);
  }

  v24 = v0[30];
  v25 = v0[27];
  v27 = v0[24];
  v26 = v0[25];
  v28 = v0[21];
  v29 = v0[17];
  v30 = v0[15];
  v31 = sub_2683CC9D8();
  v32 = [v31 resolvedValue];

  sub_2683D0038();
  swift_unknownObjectRelease();
  sub_268143430();
  sub_2683CC618();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F2F8, &unk_2683DB5B0);
  __swift_storeEnumTagSinglePayload(v30, 0, 1, v33);
  __swift_destroy_boxed_opaque_existential_0(v0 + 10);

  OUTLINED_FUNCTION_40();

  return v34();
}

uint64_t sub_2681F1298()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[15] = OUTLINED_FUNCTION_15_1();
  v5 = sub_2683CC598();
  v1[16] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[17] = v6;
  v8 = *(v7 + 64);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v9 = sub_2683CC528();
  v1[19] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[20] = v10;
  v12 = *(v11 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();
  v13 = sub_2683CC748();
  v1[22] = v13;
  OUTLINED_FUNCTION_3_1(v13);
  v1[23] = v14;
  v16 = *(v15 + 64);
  v1[24] = OUTLINED_FUNCTION_15_1();
  v17 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v17, v18, v19);
}

uint64_t sub_2681F1408()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v4 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D590, &qword_2683D2C00);
  sub_2683CC9E8();
  v5 = sub_2683CC738();
  v7 = v6;
  (*(v2 + 8))(v1, v3);

  v8 = sub_268201068();
  if (v8 == 2)
  {
    sub_26812C6B8();
    swift_allocError();
    *v9 = v5;
    *(v9 + 8) = v7;
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = 1;
    swift_willThrow();
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[18];
    v13 = v0[15];

    OUTLINED_FUNCTION_40();

    return v14();
  }

  else
  {
    v16 = v8;
    v17 = v0[21];

    v0[5] = &type metadata for SnoozeTasks.Parameter;
    v0[6] = &off_2879048D8;
    *(v0 + 16) = v16 & 1;
    sub_2681687C8();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    v18 = swift_task_alloc();
    v0[25] = v18;
    *v18 = v0;
    v18[1] = sub_2681F1604;
    v19 = v0[18];
    v20 = v0[14];

    return sub_2681F1974(v19, v16 & 1);
  }
}

uint64_t sub_2681F1604()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 200);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 208) = v0;

  if (v0)
  {
    v7 = sub_2681F18D0;
  }

  else
  {
    v7 = sub_2681F1708;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

void sub_2681F1708()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 152);
  v12 = *(v0 + 144);
  v13 = *(v0 + 136);
  v14 = *(v0 + 128);
  v15 = *(v0 + 192);
  v5 = *(v0 + 112);
  v4 = *(v0 + 120);
  v6 = *(v0 + 96);
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v5[4]);
  sub_2683CC0A8();
  (*(v2 + 16))(v4, v1, v3);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v3);
  v8 = sub_2683CCC98();
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  v9 = MEMORY[0x277D5C1D8];
  v6[3] = v8;
  v6[4] = v9;
  __swift_allocate_boxed_opaque_existential_0(v6);
  sub_2683CC348();
  sub_26812C310(v0 + 56, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v4, &qword_28024D400, &qword_2683D2460);
  (*(v13 + 8))(v12, v14);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_64();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2681F18D0()
{
  (*(v0[20] + 8))(v0[21], v0[19]);
  v1 = v0[26];
  v2 = v0[24];
  v3 = v0[21];
  v4 = v0[18];
  v5 = v0[15];

  OUTLINED_FUNCTION_40();

  return v6();
}

uint64_t sub_2681F1974(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = OUTLINED_FUNCTION_48();
  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2681F19A0()
{
  OUTLINED_FUNCTION_14();
  v1 = **(v0 + 24);
  if (*(v0 + 48))
  {
    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_268188BA8;
    v3 = *(v0 + 16);

    return sub_2683C8D50();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 40) = v5;
    *v5 = v0;
    v5[1] = sub_26817FEB0;
    v6 = *(v0 + 16);

    return sub_2683C8C9C();
  }
}

uint64_t sub_2681F1AB0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2681342AC;

  return sub_2681F08D4();
}

uint64_t sub_2681F1B60()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681F1298();
}

uint64_t sub_2681F1C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(MEMORY[0x277D5B370] + 4);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2681342AC;

  return MEMORY[0x2821B9BF8](a1, a2, a3, a4);
}

unint64_t sub_2681F1CD0()
{
  result = qword_28024F2F0;
  if (!qword_28024F2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F2F0);
  }

  return result;
}

uint64_t type metadata accessor for SetTaskAttributeV2CATsSimple()
{
  result = qword_28024F300;
  if (!qword_28024F300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F1DB0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F1DC4()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_14_15(v2, xmmword_2683D1EC0);
  if (v1)
  {
    v3 = type metadata accessor for NotebookSpatialEventTriggerConcept(v3);
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v8 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);

  return (v8)(0xD00000000000002DLL, 0x80000002683FEE50, v2);
}

uint64_t sub_2681F1ED4()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681F1F60()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[5] = v3;
  *(v3 + 16) = xmmword_2683D1EC0;
  *(v3 + 32) = 0x757461745377656ELL;
  *(v3 + 40) = 0xE900000000000073;
  OUTLINED_FUNCTION_29_8(v3, v4, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v5) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_18_18(v9);
  OUTLINED_FUNCTION_13_17();
  v10 = OUTLINED_FUNCTION_18(32);

  return v11(v10);
}

uint64_t sub_2681F20D8()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681F2164()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v6) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_18(v10);
  OUTLINED_FUNCTION_13_17();
  v11 = OUTLINED_FUNCTION_18(36);

  return v12(v11);
}

uint64_t sub_2681F22C0()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64) + 15;
  v1[4] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2681F234C()
{
  OUTLINED_FUNCTION_15();
  v1 = v0[4];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = OUTLINED_FUNCTION_20();
  v0[5] = v3;
  v4 = OUTLINED_FUNCTION_10_12(v3, xmmword_2683D1EC0);
  OUTLINED_FUNCTION_29_8(v4, v5, &unk_28024E7C0, &unk_2683D6CA0);
  v6 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v6) == 1)
  {
    sub_26812C310(v0[4], &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    v8 = *(v7 + 32);
    OUTLINED_FUNCTION_21();
    v9();
  }

  v10 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v0[6] = v10;
  *v10 = v0;
  OUTLINED_FUNCTION_18_18(v10);
  OUTLINED_FUNCTION_13_17();
  v11 = OUTLINED_FUNCTION_18(35);

  return v12(v11);
}

uint64_t sub_2681F24A8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F24BC()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_14_15(v2, xmmword_2683D1EC0);
  if (v1)
  {
    v3 = type metadata accessor for NotebookTemporalEventTriggerConcept();
  }

  else
  {
    v2[3].n128_u64[1] = 0;
    v2[4].n128_u64[0] = 0;
  }

  v2[3].n128_u64[0] = v1;
  v2[4].n128_u64[1] = v3;
  v8 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_28_10(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_18_18(v5);

  return (v8)(0xD00000000000002ELL, 0x80000002683FED90, v2);
}

uint64_t sub_2681F25CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F25E0()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v7 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_28_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_18_18(v4);

  return (v7)(0xD000000000000029, 0x80000002683FDCE0, v2);
}

uint64_t sub_2681F26F0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_0_1();
}

uint64_t sub_2681F2704()
{
  OUTLINED_FUNCTION_15();
  v1 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v2 = OUTLINED_FUNCTION_20();
  *(v0 + 32) = v2;
  OUTLINED_FUNCTION_4(v2, xmmword_2683D1EC0);
  v2[4].n128_u64[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D268, &unk_2683D1F70);
  v2[3].n128_u64[0] = v1;
  v7 = OUTLINED_FUNCTION_4_11(MEMORY[0x277D55C70]);

  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_28_10(v3);
  *v4 = v5;
  OUTLINED_FUNCTION_18_18(v4);

  return (v7)(0xD000000000000028, 0x80000002683FDCB0, v2);
}

uint64_t sub_2681F2814()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(51);

  return v4(v3);
}

uint64_t sub_2681F28B8()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  *(v1 + 114) = v3;
  *(v1 + 113) = v4;
  *(v1 + 112) = v5;
  *(v1 + 32) = v6;
  *(v1 + 40) = v7;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28024E7C0, &unk_2683D6CA0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64) + 15;
  *(v1 + 64) = swift_task_alloc();
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_48();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_2681F2970()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D260, &qword_2683D43F0);
  v3 = swift_allocObject();
  *(v0 + 88) = v3;
  *(v3 + 16) = xmmword_2683DB5C0;
  *(v3 + 32) = 0x795465676E616863;
  *(v3 + 40) = 0xEA00000000006570;
  OUTLINED_FUNCTION_29_8(v3, v4, &unk_28024E7C0, &unk_2683D6CA0);
  v5 = sub_2683CF168();
  if (OUTLINED_FUNCTION_12_7(v5) == 1)
  {
    sub_26812C310(*(v0 + 80), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    OUTLINED_FUNCTION_16();
    v7 = *(v6 + 32);
    OUTLINED_FUNCTION_21();
    v8();
  }

  v9 = *(v0 + 72);
  v10 = *(v0 + 24);
  *(v3 + 80) = 0x656C74695477656ELL;
  *(v3 + 88) = 0xE800000000000000;
  sub_26812C2A8(v10, v9, &unk_28024E7C0, &unk_2683D6CA0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) == 1)
  {
    sub_26812C310(*(v0 + 72), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    OUTLINED_FUNCTION_16();
    v12 = *(v11 + 32);
    OUTLINED_FUNCTION_21();
    v13();
  }

  v14 = *(v0 + 64);
  v15 = *(v0 + 32);
  *(v3 + 128) = 0x6954746567726174;
  *(v3 + 136) = 0xEB00000000656C74;
  sub_26812C2A8(v15, v14, &unk_28024E7C0, &unk_2683D6CA0);
  if (__swift_getEnumTagSinglePayload(v14, 1, v2) == 1)
  {
    sub_26812C310(*(v0 + 64), &unk_28024E7C0, &unk_2683D6CA0);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v2;
    __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    OUTLINED_FUNCTION_16();
    v17 = *(v16 + 32);
    OUTLINED_FUNCTION_21();
    v18();
  }

  v19 = *(v0 + 40);
  *(v3 + 176) = 0xD000000000000012;
  *(v3 + 184) = 0x80000002683FECE0;
  if (v19)
  {
    v20 = type metadata accessor for NotebookTemporalEventTriggerConcept();
    v21 = v19;
  }

  else
  {
    v21 = 0;
    v20 = 0;
    *(v3 + 200) = 0;
    *(v3 + 208) = 0;
  }

  v22 = *(v0 + 48);
  v23 = *(v0 + 114);
  v24 = *(v0 + 113);
  v25 = *(v0 + 112);
  *(v3 + 192) = v21;
  *(v3 + 216) = v20;
  *(v3 + 224) = 0xD00000000000001CLL;
  *(v3 + 232) = 0x80000002683FED00;
  v26 = MEMORY[0x277D839B0];
  *(v3 + 240) = v25;
  *(v3 + 264) = v26;
  *(v3 + 272) = 0xD000000000000017;
  *(v3 + 280) = 0x80000002683FED20;
  *(v3 + 288) = v24;
  *(v3 + 312) = v26;
  *(v3 + 320) = 0xD000000000000015;
  *(v3 + 328) = 0x80000002683FED40;
  *(v3 + 336) = v23;
  *(v3 + 360) = v26;
  *(v3 + 368) = 7368801;
  *(v3 + 376) = 0xE300000000000000;
  v27 = 0;
  if (v22)
  {
    v27 = sub_2683CF138();
  }

  else
  {
    *(v3 + 392) = 0;
    *(v3 + 400) = 0;
  }

  *(v3 + 384) = v22;
  *(v3 + 408) = v27;
  v28 = *(MEMORY[0x277D55C70] + 4);
  v32 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v29 = swift_task_alloc();
  *(v0 + 96) = v29;
  *v29 = v0;
  v29[1] = sub_2681F2D78;
  v30 = *(v0 + 56);

  return v32(0xD000000000000028, 0x80000002683FED60, v3);
}

uint64_t sub_2681F2D78()
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_2_0();
  *v4 = v3;
  v6 = *(v5 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v8 = v7;
  v3[13] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_24();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    v13 = v3[10];
    v12 = v3[11];
    v16 = v3 + 8;
    v14 = v3[8];
    v15 = v16[1];

    v17 = OUTLINED_FUNCTION_10();

    return v18(v17);
  }
}

uint64_t sub_2681F2EBC()
{
  OUTLINED_FUNCTION_7();
  v2 = v0[10];
  v1 = v0[11];
  v4 = v0[8];
  v3 = v0[9];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_2681F2F40()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(47);

  return v4(v3);
}

uint64_t sub_2681F2FE4()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(34);

  return v4(v3);
}

uint64_t sub_2681F3088()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812BEB4;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(38);

  return v4(v3);
}

uint64_t sub_2681F312C()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(37);

  return v4(v3);
}

uint64_t sub_2681F31D0()
{
  OUTLINED_FUNCTION_7();
  v0 = OUTLINED_FUNCTION_6(MEMORY[0x277D55C70]);
  v1 = OUTLINED_FUNCTION_6_3(v0);
  *v1 = v2;
  v1[1] = sub_26812C3D8;
  OUTLINED_FUNCTION_13_17();
  v3 = OUTLINED_FUNCTION_21_11(48);

  return v4(v3);
}

uint64_t sub_2681F3274()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  OUTLINED_FUNCTION_21();
  return sub_2681F32C4(v3, v4);
}

uint64_t sub_2681F32C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D258, &unk_2683D1F60);
  v14 = OUTLINED_FUNCTION_23(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  sub_26812C2A8(a1, &v20 - v17, &qword_28024D258, &unk_2683D1F60);
  (*(v8 + 16))(v12, a2, v2);
  v18 = sub_2683CF178();
  (*(v8 + 8))(a2, v2);
  sub_26812C310(a1, &qword_28024D258, &unk_2683D1F60);
  return v18;
}

uint64_t sub_2681F343C(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CF238();
  v6 = OUTLINED_FUNCTION_19(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 48);
  v14 = *(v2 + 52);
  swift_allocObject();
  (*(v8 + 16))(v12, a2, v3);
  v15 = sub_2683CF188();
  (*(v8 + 8))(a2, v3);
  return v15;
}

__n128 *OUTLINED_FUNCTION_10_12(__n128 *result, __n128 a2)
{
  result[1] = a2;
  strcpy(&result[2], "valueToConfirm");
  result[2].n128_u8[15] = -18;
  return result;
}

uint64_t OUTLINED_FUNCTION_14_15(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  a1[2].n128_u64[0] = 0x72656767697274;
  a1[2].n128_u64[1] = 0xE700000000000000;
  return 0;
}

uint64_t OUTLINED_FUNCTION_18_18(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_29_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_26812C2A8(v4, v5, a3, a4);
}

uint64_t get_enum_tag_for_layout_string_12SiriNotebook22AnnouncementEventStoreVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2681F35FC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2681F363C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2681F36A8()
{
  OUTLINED_FUNCTION_14();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_2683CB528();
  v1[15] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[16] = v4;
  v6 = *(v5 + 64);
  v1[17] = OUTLINED_FUNCTION_15_1();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D400, &qword_2683D2460) - 8) + 64);
  v1[18] = OUTLINED_FUNCTION_15_1();
  v8 = sub_2683CCC98();
  v1[19] = v8;
  OUTLINED_FUNCTION_3_1(v8);
  v1[20] = v9;
  v11 = *(v10 + 64);
  v1[21] = OUTLINED_FUNCTION_15_1();
  v12 = sub_2683CC598();
  v1[22] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v1[23] = v13;
  v15 = *(v14 + 64);
  v1[24] = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](sub_2681F381C, 0, 0);
}

uint64_t sub_2681F381C()
{
  v1 = v0[14];
  v2 = v1[11];
  v0[25] = v2;
  v3 = v1[12];
  v0[26] = v3;
  if (v2)
  {
    v4 = v1[13];
    v0[27] = v4;
    v5 = v2;

    if (sub_2681F432C(v5, v3, v4))
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v6 = sub_2683CF7E8();
      v0[28] = __swift_project_value_buffer(v6, qword_28027C958);
      v7 = sub_2683CF7C8();
      v8 = sub_2683CFE98();
      if (OUTLINED_FUNCTION_45(v8))
      {
        v9 = OUTLINED_FUNCTION_21_5();
        OUTLINED_FUNCTION_32_5(v9);
        OUTLINED_FUNCTION_11_17(&dword_2680EB000, v10, v11, "[AnnounceFollowUpHintFlow] conditions are correct for a hint");
        OUTLINED_FUNCTION_36();
      }

      v12 = v0[14];

      v13 = *(v12 + 40);
      v14 = swift_task_alloc();
      v0[29] = v14;
      *v14 = v0;
      v14[1] = sub_2681F3AE0;
      v15 = v0[24];

      return sub_2682B25F4(v15);
    }

    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v24 = sub_2683CF7E8();
    v25 = OUTLINED_FUNCTION_18_19(v24, qword_28027C958);
    v26 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v26))
    {
      v27 = OUTLINED_FUNCTION_21_5();
      *v27 = 0;
      _os_log_impl(&dword_2680EB000, v25, v26, "[AnnounceFollowUpHintFlow] conditions are not correct for a hint", v27, 2u);
      OUTLINED_FUNCTION_38();
    }

    v28 = v0[13];

    sub_2683CC3F8();
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v17 = sub_2683CF7E8();
    v18 = OUTLINED_FUNCTION_18_19(v17, qword_28027C958);
    v19 = sub_2683CFE78();
    if (OUTLINED_FUNCTION_45(v19))
    {
      v20 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v20);
      OUTLINED_FUNCTION_11_17(&dword_2680EB000, v21, v22, "[AnnounceFollowUpHintFlow] AnnouncementEventStore contruction issue, do not give hint");
      OUTLINED_FUNCTION_36();
    }

    v23 = v0[13];

    sub_2683CC3F8();
  }

  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v29();
}

uint64_t sub_2681F3AE0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = *(v2 + 232);
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v5 = v4;
  *(v6 + 240) = v0;

  if (v0)
  {
    v7 = sub_2681F3FB8;
  }

  else
  {
    v7 = sub_2681F3BE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2681F3BE4()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 160);
  v2 = *(v0 + 168);
  v5 = *(v0 + 144);
  v4 = *(v0 + 152);
  v6 = *(v0 + 112);
  v7 = sub_2683CC528();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  *(v0 + 48) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  sub_2683CC328();
  sub_26812C310(v0 + 16, &qword_28024D408, &qword_2683D2470);
  sub_26812C310(v5, &qword_28024D400, &qword_2683D2460);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  v10 = MEMORY[0x277D5C1D8];
  *(v0 + 80) = v4;
  *(v0 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 56));
  (*(v3 + 16))(boxed_opaque_existential_0, v2, v4);
  v12 = *(MEMORY[0x277D5BF40] + 4);
  v13 = swift_task_alloc();
  *(v0 + 248) = v13;
  *v13 = v0;
  v13[1] = sub_2681F3D80;

  return MEMORY[0x2821BB5D0](v0 + 56, v8, v9);
}

uint64_t sub_2681F3D80()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v4 = *(v2 + 248);
  v5 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
    v7 = sub_2681F4150;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 56));
    v7 = sub_2681F3E8C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2681F3E8C()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  v4 = v0[23];
  v14 = v0[22];
  v15 = v0[24];
  v5 = v0[20];
  v13 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[15];
  sub_2683CB518();
  sub_2681D9B5C(0, v8, v3);

  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v13, v6);
  (*(v4 + 8))(v15, v14);
  v10 = v0[13];
  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v11();
}

uint64_t sub_2681F3FB8()
{
  v21 = v0;
  v1 = v0[27];
  v2 = v0[25];

  v3 = v0[30];
  v4 = v0[28];
  v5 = v3;
  v6 = sub_2683CF7C8();
  v7 = sub_2683CFE78();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    OUTLINED_FUNCTION_16_20(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v10 = sub_2683CFAD8();
    v12 = sub_2681610A0(v10, v11, &v20);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_12_14();
    _os_log_impl(v13, v14, v15, v16, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v17 = v0[13];
  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v18();
}

uint64_t sub_2681F4150()
{
  v26 = v0;
  v1 = v0[27];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[23];
  v7 = v0[20];
  v6 = v0[21];
  v8 = v0[19];

  (*(v7 + 8))(v6, v8);
  (*(v5 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v9 = v0[32];
  v10 = v0[28];
  v11 = v9;
  v12 = sub_2683CF7C8();
  LOBYTE(v6) = sub_2683CFE78();

  if (os_log_type_enabled(v12, v6))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    OUTLINED_FUNCTION_16_20(4.8751e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D3E0, &qword_2683D2360);
    v15 = sub_2683CFAD8();
    v17 = sub_2681610A0(v15, v16, &v25);

    *(v13 + 4) = v17;
    OUTLINED_FUNCTION_12_14();
    _os_log_impl(v18, v19, v20, v21, v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  else
  {
  }

  v22 = v0[13];
  sub_2683CC3F8();
  OUTLINED_FUNCTION_3_22();

  OUTLINED_FUNCTION_40();

  return v23();
}

BOOL sub_2681F432C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2683CB7A8();
  v7 = OUTLINED_FUNCTION_0_3(v6);
  v88 = v8;
  v89 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v7);
  v12 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2683CB0D8();
  v14 = OUTLINED_FUNCTION_0_3(v13);
  v86 = v15;
  v87 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024DB08, qword_2683D5760);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = v84 - v22;
  v24 = sub_2683CB528();
  v25 = OUTLINED_FUNCTION_0_3(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v25);
  v32 = v84 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = v84 - v33;
  if (sub_2681DA7FC(0, a1))
  {
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v35 = sub_2683CF7E8();
    v36 = OUTLINED_FUNCTION_18_19(v35, qword_28027C958);
    v37 = sub_2683CFE98();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v38);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v39, v40, "[AnnounceFollowUpHintFlow] has given reminder hint, do not give hint");
      OUTLINED_FUNCTION_36();
    }

    return 0;
  }

  sub_2681DA004(a1, v23);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_26812C310(v23, &qword_28024DB08, qword_2683D5760);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v42 = sub_2683CF7E8();
    v43 = OUTLINED_FUNCTION_18_19(v42, qword_28027C958);
    v44 = sub_2683CFE98();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = OUTLINED_FUNCTION_21_5();
      OUTLINED_FUNCTION_32_5(v45);
      OUTLINED_FUNCTION_4_7(&dword_2680EB000, v46, v47, "[AnnounceFollowUpHintFlow] has never given any hint, give hint");
      OUTLINED_FUNCTION_36();
    }

    return 1;
  }

  else
  {
    v84[1] = a2;
    v84[2] = a3;
    (*(v27 + 32))(v34, v23, v24);
    sub_2683CB768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F310, &unk_2683DB770);
    v48 = sub_2683CB798();
    v85 = v24;
    v49 = v48;
    OUTLINED_FUNCTION_0_3(v48);
    v50 = v34;
    v52 = v51;
    v54 = *(v53 + 72);
    v55 = v27;
    v56 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_2683D1EC0;
    v58 = v57 + v56;
    v59 = v55;
    (*(v52 + 104))(v58, *MEMORY[0x277CC9968], v49);
    sub_2682D9570(v57);
    sub_2683CB518();
    v60 = v50;
    sub_2683CB6B8();

    v61 = *(v59 + 8);
    v62 = v32;
    v63 = v85;
    v61(v62);
    (*(v88 + 8))(v12, v89);
    v64 = sub_2683CAFF8();
    LOBYTE(v49) = v65;
    (*(v86 + 8))(v19, v87);
    if (v49)
    {
      if (qword_28024C8E0 != -1)
      {
        OUTLINED_FUNCTION_0_5();
      }

      v66 = sub_2683CF7E8();
      v67 = OUTLINED_FUNCTION_18_19(v66, qword_28027C958);
      v68 = sub_2683CFE78();
      if (OUTLINED_FUNCTION_45(v68))
      {
        v69 = OUTLINED_FUNCTION_21_5();
        *v69 = 0;
        OUTLINED_FUNCTION_12_14();
        _os_log_impl(v70, v71, v72, v73, v69, 2u);
        OUTLINED_FUNCTION_38();
      }

      (v61)(v60, v63);
      return 0;
    }

    v74 = sub_2681DA4F0(129, a1);
    if (qword_28024C8E0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v75 = sub_2683CF7E8();
    v76 = OUTLINED_FUNCTION_18_19(v75, qword_28027C958);
    v77 = sub_2683CFE98();
    if (OUTLINED_FUNCTION_45(v77))
    {
      v78 = swift_slowAlloc();
      *v78 = 134218240;
      *(v78 + 4) = v64;
      *(v78 + 12) = 2048;
      *(v78 + 14) = v74;
      OUTLINED_FUNCTION_12_14();
      _os_log_impl(v79, v80, v81, v82, v78, 0x16u);
      OUTLINED_FUNCTION_38();
    }

    (v61)(v60, v63);
    return v64 > 6 && v74 > 2;
  }
}

uint64_t sub_2681F4964()
{
  sub_268193BC8();

  return sub_2683CBF48();
}

uint64_t sub_2681F49BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_268133EC8;

  return sub_2681F36A8();
}

uint64_t OUTLINED_FUNCTION_3_22()
{
  v2 = v0[24];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];
}

id OUTLINED_FUNCTION_16_20(float a1)
{
  *v3 = a1;
  *(v2 + 96) = v1;

  return v1;
}

uint64_t OUTLINED_FUNCTION_18_19(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);

  return sub_2683CF7C8();
}

uint64_t sub_2681F4AC8()
{
  sub_268129504(0, &qword_280253320, 0x277CD4228);
  result = swift_getKeyPath();
  qword_28027C870 = sub_2681F56D0;
  *algn_28027C878 = result;
  qword_28027C880 = sub_2681F572C;
  unk_28027C888 = 0;
  return result;
}

uint64_t sub_2681F4B40()
{
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  result = swift_getKeyPath();
  qword_28027C890 = sub_2681F5730;
  *algn_28027C898 = result;
  qword_28027C8A0 = sub_2681F572C;
  unk_28027C8A8 = 0;
  return result;
}

uint64_t sub_2681F4BB8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB780;
  if (qword_28024CC20 != -1)
  {
LABEL_22:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v14;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32();
  inited[3] = v14;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32();
  inited[4] = v14;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32();
  inited[5] = v14;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_1_32();
  v1 = 0;
  inited[6] = v14;
  v2 = MEMORY[0x277D84F90];
LABEL_11:
  v3 = v1 - 1;
  v4 = 16 * v1 + 40;
  while (v3 != 4)
  {
    if (++v3 > 4)
    {
      __break(1u);
      goto LABEL_22;
    }

    v5 = v4 + 16;
    v6 = *(inited + v4);
    v4 += 16;
    if (v6)
    {
      v7 = *(inited + v5 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v2 + 16) + 1, 1, v2);
        v2 = v11;
      }

      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2682E4728(v8 > 1, v9 + 1, 1, v2);
        v2 = v12;
      }

      v1 = v3 + 1;
      *(v2 + 16) = v9 + 1;
      v10 = v2 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v6;
      goto LABEL_11;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v2;
}

uint64_t sub_2681F4E80()
{
  sub_268129504(0, &qword_28024CDB8, 0x277CD4188);
  result = swift_getKeyPath();
  qword_28027C8B0 = sub_2681F5730;
  *algn_28027C8B8 = result;
  qword_28027C8C0 = sub_2681F4EF8;
  unk_28027C8C8 = 0;
  return result;
}

uint64_t sub_2681F4EF8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB790;
  if (qword_28024CBC0 != -1)
  {
LABEL_20:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v13;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[3] = v13;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[4] = v13;
  if (qword_28024CBE0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v1 = 0;
  inited[5] = v13;
  v2 = MEMORY[0x277D84F90];
LABEL_9:
  v3 = 16 * v1 + 40;
  while (v1 != 4)
  {
    if (v1 > 3)
    {
      __break(1u);
      goto LABEL_20;
    }

    ++v1;
    v4 = v3 + 16;
    v5 = *(inited + v3);
    v3 += 16;
    if (v5)
    {
      v6 = *(inited + v4 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v2 + 16) + 1, 1, v2);
        v2 = v10;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2682E4728(v7 > 1, v8 + 1, 1, v2);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v2;
}

uint64_t sub_2681F5198()
{
  sub_268129504(0, &qword_280253310, 0x277CD4220);
  result = swift_getKeyPath();
  qword_28027C8D0 = sub_2681F5730;
  *algn_28027C8D8 = result;
  qword_28027C8E0 = sub_2681F5210;
  unk_28027C8E8 = 0;
  return result;
}

uint64_t sub_2681F5210()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F318, &unk_2683DB7F0);
  inited = swift_initStackObject();
  inited[1] = xmmword_2683DB790;
  if (qword_28024CBE0 != -1)
  {
LABEL_20:
    swift_once();
  }

  type metadata accessor for NotebookNLv3Intent(0);
  sub_2681F54B0();
  sub_2683CD5C8();
  inited[2] = v13;
  if (qword_28024CBF0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[3] = v13;
  if (qword_28024CBD0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  inited[4] = v13;
  if (qword_28024CBC0 != -1)
  {
    swift_once();
  }

  sub_2683CD5C8();
  v1 = 0;
  inited[5] = v13;
  v2 = MEMORY[0x277D84F90];
LABEL_9:
  v3 = 16 * v1 + 40;
  while (v1 != 4)
  {
    if (v1 > 3)
    {
      __break(1u);
      goto LABEL_20;
    }

    ++v1;
    v4 = v3 + 16;
    v5 = *(inited + v3);
    v3 += 16;
    if (v5)
    {
      v6 = *(inited + v4 - 24);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2682E4728(0, *(v2 + 16) + 1, 1, v2);
        v2 = v10;
      }

      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_2682E4728(v7 > 1, v8 + 1, 1, v2);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      goto LABEL_9;
    }
  }

  swift_setDeallocating();
  sub_2681F560C(&qword_28024DB98, &unk_2683D5280);
  return v2;
}

unint64_t sub_2681F54B0()
{
  result = qword_28024CDA8;
  if (!qword_28024CDA8)
  {
    type metadata accessor for NotebookNLv3Intent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024CDA8);
  }

  return result;
}

uint64_t sub_2681F5508()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_2681F55A8()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v2, v3, v4);
}

uint64_t sub_2681F560C(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v4 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v4, v5, v6);
}

uint64_t sub_2681F5654()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F340, &qword_2683DB820) - 8) + 80);
  v2 = *(v0 + 16);
  swift_arrayDestroy();
  v3 = OUTLINED_FUNCTION_0_36();

  return MEMORY[0x2821FE8D8](v3, v4, v5);
}

uint64_t sub_2681F56D8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t OUTLINED_FUNCTION_1_32()
{

  return sub_2683CD5C8();
}

uint64_t type metadata accessor for NotebookDateTimeResolver()
{
  result = qword_28024F3D0;
  if (!qword_28024F3D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2681F57D4()
{
  result = sub_2681F5870();
  if (v1 <= 0x3F)
  {
    result = sub_2683CB668();
    if (v2 <= 0x3F)
    {
      result = sub_2683CE7F8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2681F5870()
{
  result = qword_28024F3E0;
  if (!qword_28024F3E0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28024F3E0);
  }

  return result;
}

uint64_t sub_2681F58CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_2683CB668();
  v4[7] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v4[8] = v6;
  v8 = *(v7 + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024E708, &qword_2683D7EE8);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64) + 15;
  v4[10] = swift_task_alloc();
  v12 = sub_2683CE978();
  v4[11] = v12;
  OUTLINED_FUNCTION_3_1(v12);
  v4[12] = v13;
  v15 = *(v14 + 64) + 15;
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v16 = sub_2683CF738();
  v4[15] = v16;
  OUTLINED_FUNCTION_3_1(v16);
  v4[16] = v17;
  v19 = *(v18 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2681F5A7C, 0, 0);
}

uint64_t sub_2681F5A7C()
{
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_2683CF768();
  __swift_project_value_buffer(v2, qword_28027C9A0);
  sub_2683CF728();
  v3 = sub_2683CF758();
  v4 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    *v6 = 0;
    v7 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v3, v4, v7, "NotebookDateTimeResolver#makeRecommendation", "", v6, 2u);
    OUTLINED_FUNCTION_38();
  }

  v8 = v0[17];
  v9 = v0[18];
  v10 = v0[15];
  v11 = v0[16];
  v12 = v0[6];

  (*(v11 + 16))(v8, v9, v10);
  v13 = sub_2683CF7A8();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[19] = sub_2683CF798();
  (*(v11 + 8))(v9, v10);
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v16 = swift_task_alloc();
  v0[20] = v16;
  *v16 = v0;
  v16[1] = sub_2681F5C84;
  v17 = v0[10];

  return (sub_2681F660C)(v17);
}

uint64_t sub_2681F5C84()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26();
  *v4 = v3;
  v6 = *(v5 + 160);
  v7 = *v1;
  OUTLINED_FUNCTION_26();
  *v8 = v7;
  *(v9 + 168) = v0;

  if (v0)
  {

    v10 = sub_2681F60A0;
  }

  else
  {
    v10 = sub_2681F5D98;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2681F5D98()
{
  v34 = v0;
  v1 = v0[10];
  v2 = v0[11];
  OUTLINED_FUNCTION_4_22();
  if (v3)
  {
    v31 = v0[21];
    (*(v0[12] + 104))(v0[14], *MEMORY[0x277D56150], v2);
    OUTLINED_FUNCTION_4_22();
    if (!v3)
    {
      sub_2681A3C2C(v0[10]);
    }
  }

  else
  {
    (*(v0[12] + 32))(v0[14], v1, v2);
    v32 = v0[21];
  }

  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];
  v8 = v0[8];
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[7];
  sub_2683CE998();
  v30 = type metadata accessor for NotebookDateTimeResolver();
  (*(v8 + 16))(v9, v10 + *(v30 + 20), v11);
  (*(v7 + 16))(v4, v5, v6);
  sub_2681F68D8(v9, v4);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v12 = v0[4];
  v13 = sub_2683CF7E8();
  __swift_project_value_buffer(v13, qword_28027C958);

  v14 = sub_2683CF7C8();
  v15 = sub_2683CFE98();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v33 = v18;
    *v17 = 136315138;
    v0[2] = v16;
    sub_2683CEB78();
    sub_2681F6BE8();
    v19 = sub_2683D0568();
    v21 = sub_2681610A0(v19, v20, &v33);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_2680EB000, v14, v15, "[NotebookDateTimeResolver] Making recommendation for %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v22 = v0[5];
  v24 = v0[3];
  v23 = v0[4];
  v25 = v0[6] + *(v30 + 24);
  sub_2683CE7D8();
  v26 = OUTLINED_FUNCTION_2_25();
  v27(v26);

  sub_2681F6380();

  OUTLINED_FUNCTION_40();

  return v28();
}

uint64_t sub_2681F60A0()
{
  v31 = v0;
  __swift_storeEnumTagSinglePayload(v0[10], 1, 1, v0[11]);
  v1 = v0[10];
  (*(v0[12] + 104))(v0[14], *MEMORY[0x277D56150], v0[11]);
  OUTLINED_FUNCTION_4_22();
  if (!v2)
  {
    sub_2681A3C2C(v0[10]);
  }

  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v8 = v0[8];
  v7 = v0[9];
  v9 = v0[6];
  v10 = v0[7];
  sub_2683CE998();
  v29 = type metadata accessor for NotebookDateTimeResolver();
  (*(v8 + 16))(v7, v9 + *(v29 + 20), v10);
  (*(v6 + 16))(v3, v4, v5);
  sub_2681F68D8(v7, v3);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v11 = v0[4];
  v12 = sub_2683CF7E8();
  __swift_project_value_buffer(v12, qword_28027C958);

  v13 = sub_2683CF7C8();
  v14 = sub_2683CFE98();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[4];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = v17;
    *v16 = 136315138;
    v0[2] = v15;
    sub_2683CEB78();
    sub_2681F6BE8();
    v18 = sub_2683D0568();
    v20 = sub_2681610A0(v18, v19, &v30);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2680EB000, v13, v14, "[NotebookDateTimeResolver] Making recommendation for %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    OUTLINED_FUNCTION_38();
    OUTLINED_FUNCTION_38();
  }

  v21 = v0[5];
  v23 = v0[3];
  v22 = v0[4];
  v24 = v0[6] + *(v29 + 24);
  sub_2683CE7D8();
  v25 = OUTLINED_FUNCTION_2_25();
  v26(v25);

  sub_2681F6380();

  OUTLINED_FUNCTION_40();

  return v27();
}

uint64_t sub_2681F6380()
{
  v0 = sub_2683CF778();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2683CF738();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  v11 = sub_2683CF758();
  sub_2683CF788();
  v12 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v15, "NotebookDateTimeResolver#makeRecommendation", v13, v14, 2u);
    MEMORY[0x26D617A40](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2681F660C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2681F669C;

  return sub_26837E8B8();
}

uint64_t sub_2681F669C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = *v4;
  OUTLINED_FUNCTION_26();
  *v7 = v6;
  v9 = *(v8 + 24);
  v10 = *v4;
  *v7 = *v4;
  *(v6 + 32) = v11;

  if (v3)
  {
    v12 = *(v10 + 8);

    return v12();
  }

  else
  {
    *(v6 + 40) = a3;

    return MEMORY[0x2822009F8](sub_2681F67E8, 0, 0);
  }
}

uint64_t sub_2681F67E8()
{
  if (*(v0 + 40))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(v0 + 32);
    v3 = *(v0 + 16);
    v4 = sub_2683CE978();
    v5 = MEMORY[0x277D56158];
    if (v2 >= 0.0)
    {
      v5 = MEMORY[0x277D56150];
    }

    (*(*(v4 - 8) + 104))(v3, *v5, v4);
    v1 = 0;
  }

  v6 = *(v0 + 16);
  v7 = sub_2683CE978();
  __swift_storeEnumTagSinglePayload(v6, v1, 1, v7);
  OUTLINED_FUNCTION_40();

  return v8();
}

uint64_t sub_2681F68D8(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v3 = sub_2683CB528();
  v4 = OUTLINED_FUNCTION_23(v3);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_14_3();
  v51 = v8 - v7;
  v9 = sub_2683CB7A8();
  v10 = OUTLINED_FUNCTION_23(v9);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_14_3();
  v50 = v14 - v13;
  v49 = sub_2683CE978();
  v15 = OUTLINED_FUNCTION_0_3(v49);
  v17 = v16;
  v45 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_14_3();
  v48 = v21 - v20;
  v22 = sub_2683CB7D8();
  v23 = OUTLINED_FUNCTION_23(v22);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_14_3();
  v26 = sub_2683CB668();
  v27 = OUTLINED_FUNCTION_0_3(v26);
  v29 = v28;
  v47 = v28;
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v27);
  v34 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v44 - v36;
  MEMORY[0x28223BE20](v35);
  v38 = *(v29 + 16);
  v46 = a1;
  v38(&v44 - v39, a1, v26);
  v38(v37, a1, v26);
  v38(v34, a1, v26);
  sub_2683CB7C8();
  v40 = v49;
  v41 = v52;
  (*(v17 + 16))(v48, v52, v49);
  sub_2683CB768();
  sub_2683CB508();
  v42 = sub_2683CE988();
  (*(v45 + 8))(v41, v40);
  (*(v47 + 8))(v46, v26);
  return v42;
}

unint64_t sub_2681F6BE8()
{
  result = qword_28024D3E8;
  if (!qword_28024D3E8)
  {
    sub_2683CEB78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024D3E8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_25()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[11];
  v7 = v0[9];
  v6 = v0[10];
  v8 = *(v0[12] + 8);
  return v0[14];
}

uint64_t sub_2681F6C84(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_31;
  }

  v4 = *(a2 + 40);
  sub_2683D0698();
  sub_2683556FC(a1);
  sub_2683CFB48();

  sub_2683D06D8();
  v5 = *(a2 + 32);
  OUTLINED_FUNCTION_14_6();
  v8 = v7 & ~v6;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v6;
    while (1)
    {
      v10 = 0xEC00000073736572;
      v11 = 0x64646120656D6F68;
      switch(*(*(a2 + 48) + v8))
      {
        case 1:
          v11 = 0x646461206B726F77;
          v10 = 0xEC00000073736572;
          break;
        case 2:
          v11 = 0xD000000000000010;
          v10 = 0x80000002683FA6A0;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x79627261656ELL;
          break;
        case 4:
          v11 = 0x61206C6F6F686373;
          v10 = 0xEE00737365726464;
          break;
        case 5:
          v12 = 544045415;
          goto LABEL_11;
        case 6:
          v11 = 0x646120726568746FLL;
          v10 = 0xED00007373657264;
          break;
        case 7:
          v12 = 544829025;
LABEL_11:
          v11 = v12 | 0x7264646100000000;
          v10 = 0xEB00000000737365;
          break;
        case 8:
          v11 = 0xD000000000000010;
          v10 = 0x80000002683FA6F0;
          break;
        default:
          break;
      }

      v13 = 0x64646120656D6F68;
      v14 = 0xEC00000073736572;
      switch(a1)
      {
        case 1:
          v13 = 0x646461206B726F77;
          v14 = 0xEC00000073736572;
          break;
        case 2:
          v13 = 0xD000000000000010;
          v14 = 0x80000002683FA6A0;
          break;
        case 3:
          v14 = 0xE600000000000000;
          v13 = 0x79627261656ELL;
          break;
        case 4:
          v13 = 0x61206C6F6F686373;
          v14 = 0xEE00737365726464;
          break;
        case 5:
          v15 = 544045415;
          goto LABEL_21;
        case 6:
          v13 = 0x646120726568746FLL;
          v14 = 0xED00007373657264;
          break;
        case 7:
          v15 = 544829025;
LABEL_21:
          v13 = v15 | 0x7264646100000000;
          v14 = 0xEB00000000737365;
          break;
        case 8:
          v13 = 0xD000000000000010;
          v14 = 0x80000002683FA6F0;
          break;
        default:
          break;
      }

      if (v11 == v13 && v10 == v14)
      {
        break;
      }

      v17 = sub_2683D0598();

      if ((v17 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
LABEL_31:
    v17 = 0;
  }

  return v17 & 1;
}

BOOL sub_2681F6FC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683D06D8();
  v7 = *(a3 + 32);
  OUTLINED_FUNCTION_14_6();
  v10 = ~v9;
  do
  {
    v11 = v8 & v10;
    v12 = (1 << (v8 & v10)) & *(a3 + 56 + (((v8 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    v13 = v12 != 0;
    if (!v12)
    {
      break;
    }

    v14 = (*(a3 + 48) + 16 * v11);
    if (*v14 == a1 && v14[1] == a2)
    {
      break;
    }

    v16 = sub_2683D0598();
    v8 = v11 + 1;
  }

  while ((v16 & 1) == 0);
  return v13;
}

uint64_t sub_2681F70AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v10 = *(a5 + 40);
  sub_2683D0698();
  sub_2683CFB48();
  sub_2683CFB48();
  sub_2683D06D8();
  v11 = a5 + 56;
  v12 = *(a5 + 32);
  OUTLINED_FUNCTION_14_6();
  v15 = v14 & ~v13;
  if (((*(a5 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
    return 0;
  }

  v16 = ~v13;
  v17 = *(a5 + 48);
  while (1)
  {
    v18 = (v17 + 32 * v15);
    v19 = v18[2];
    v20 = v18[3];
    v21 = *v18 == a1 && v18[1] == a2;
    if (v21 || (sub_2683D0598() & 1) != 0)
    {
      v22 = v19 == a3 && v20 == a4;
      if (v22 || (sub_2683D0598() & 1) != 0)
      {
        break;
      }
    }

    v15 = (v15 + 1) & v16;
    if (((*(v11 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2681F71F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_2683D0688();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

void sub_2681F7280()
{
  OUTLINED_FUNCTION_30_0();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = type metadata accessor for InstalledAppProvider();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_14_3();
  v44 = (v9 - v8);
  v10 = sub_2683CF738();
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v11);
  v18 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v43 - v19;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v21 = sub_2683CF768();
  __swift_project_value_buffer(v21, qword_28027C9A0);
  sub_2683CF728();
  v22 = sub_2683CF758();
  v23 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v24 = OUTLINED_FUNCTION_21_5();
    v43 = v3;
    v25 = v24;
    *v24 = 0;
    v26 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v22, v23, v26, "InstalledAppProvider#getApp", "", v25, 2u);
    v1 = v0;
    OUTLINED_FUNCTION_38();
  }

  (*(v13 + 16))(v18, v20, v10);
  v27 = sub_2683CF7A8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  sub_2683CF798();
  (*(v13 + 8))(v20, v10);
  v30 = sub_2681F77C8(v5);
  v32 = v31;
  v33 = objc_allocWithZone(MEMORY[0x277CC1E70]);
  v34 = sub_2681F93B0(v30, v32, 0);
  v35 = sub_2681F7864(v34);
  if (qword_28024C8E0 != -1)
  {
    OUTLINED_FUNCTION_0_5();
  }

  v36 = sub_2683CF7E8();
  __swift_project_value_buffer(v36, qword_28027C958);
  v37 = v44;
  sub_2681F9490(v1, v44);
  v38 = sub_2683CF7C8();
  v39 = sub_2683CFE98();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v1;
    v41 = swift_slowAlloc();
    *v41 = 67109376;
    *(v41 + 4) = v35 & 1;
    *(v41 + 8) = 1024;
    v42 = *v37;
    sub_2681F9844(v37);
    *(v41 + 10) = v42;
    _os_log_impl(&dword_2680EB000, v38, v39, "[InstalledAppProvider] isHiddenInternalApp: %{BOOL}d includeHiddenApps:  %{BOOL}d", v41, 0xEu);
    v1 = v40;
    OUTLINED_FUNCTION_38();
  }

  else
  {
    sub_2681F9844(v37);
  }

  if (*v1 & 1) != 0 || ((v35 ^ 1))
  {
    sub_2681F7AE4(v34, 1);
  }

  else
  {
  }

  sub_2681F90AC();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F77C8(uint64_t a1)
{
  v2 = sub_2683CFBE8();

  if (v2)
  {
    v3 = sub_2683CFB58();
    v4 = sub_2681F92F0(v3);
    a1 = MEMORY[0x26D616610](v4);
  }

  return a1;
}

uint64_t sub_2681F7864(void *a1)
{
  v2 = sub_2683CF738();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v10 = sub_2683CF768();
  __swift_project_value_buffer(v10, qword_28027C9A0);
  sub_2683CF728();
  v11 = sub_2683CF758();
  v12 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v11, v12, v14, "InstalledAppProvider#isHiddenInternalApp", "", v13, 2u);
    MEMORY[0x26D617A40](v13, -1, -1);
  }

  (*(v3 + 16))(v7, v9, v2);
  v15 = sub_2683CF7A8();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_2683CF798();
  (*(v3 + 8))(v9, v2);
  result = SBSCopyDisplayIdentifiers();
  if (result)
  {
    v19 = result;
    sub_2681F9648(a1);
    v20 = sub_2683CFA68();

    v21 = [v19 containsObject_];

    sub_2681F90AC();

    return v21 ^ 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2681F7AE4(void *a1, int a2)
{
  LODWORD(v2) = a2;
  v84 = a1;
  v3 = sub_2683CB648();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v75[0] = v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F3E8, &unk_2683DB930);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = v75 - v8;
  v9 = sub_2683CF738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v75 - v15;
  if (qword_28024C8F8 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v17 = sub_2683CF768();
    __swift_project_value_buffer(v17, qword_28027C9A0);
    sub_2683CF728();
    v18 = sub_2683CF758();
    v19 = sub_2683CFEF8();
    if (sub_2683CFF88())
    {
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v2 & 1;
      v21 = sub_2683CF718();
      _os_signpost_emit_with_name_impl(&dword_2680EB000, v18, v19, v21, "InstalledAppProvider#makeAnnotatedApp", "Add Supported Intents: %{BOOL}d", v20, 8u);
      MEMORY[0x26D617A40](v20, -1, -1);
    }

    v81 = v2;

    (*(v10 + 16))(v14, v16, v9);
    v22 = sub_2683CF7A8();
    v23 = *(v22 + 48);
    v24 = *(v22 + 52);
    swift_allocObject();
    v82 = sub_2683CF798();
    (*(v10 + 8))(v16, v9);
    v25 = [v84 applicationExtensionRecords];
    v26 = sub_268129504(0, &qword_28024F3F0, 0x277CC1E50);
    sub_2681F95E0();
    v16 = sub_2683CFD98();

    v79 = v16;
    v83 = v26;
    if ((v16 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_2683D0098();
      sub_2683CFDB8();
      v16 = v89[1];
      v10 = v89[2];
      v27 = v89[3];
      v28 = v89[4];
      v14 = v89[5];
    }

    else
    {
      v29 = -1 << *(v16 + 32);
      v10 = v16 + 56;
      v27 = ~v29;
      v30 = -v29;
      v31 = v30 < 64 ? ~(-1 << v30) : -1;
      v14 = (v31 & *(v16 + 56));

      v28 = 0;
    }

    v78 = v27;
    v32 = (v27 + 64) >> 6;
    v87 = *MEMORY[0x277CD3858];
    if (v16 < 0)
    {
      break;
    }

LABEL_11:
    v33 = v28;
    v34 = v14;
    v9 = v28;
    if (v14)
    {
LABEL_15:
      v2 = (v34 - 1) & v34;
      v35 = *(*(v16 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v34)))));
      if (v35)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

    while (1)
    {
      v9 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v9 >= v32)
      {
        goto LABEL_26;
      }

      v34 = *(v10 + 8 * v9);
      ++v33;
      if (v34)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  while (1)
  {
    v36 = sub_2683D00C8();
    if (!v36)
    {
      break;
    }

    v88 = v36;
    swift_dynamicCast();
    v35 = v89[0];
    v9 = v28;
    v2 = v14;
    if (!v89[0])
    {
      break;
    }

LABEL_19:
    v85 = v28;
    v86 = v14;
    v37 = v16;
    v38 = [v35 extensionPointRecord];
    v39 = [v38 identifier];

    v40 = sub_2683CFA78();
    v42 = v41;

    if (v40 == sub_2683CFA78() && v42 == v43)
    {

LABEL_28:
      sub_2681281A4();

      sub_2681F9714(v35);
      goto LABEL_29;
    }

    v45 = sub_2683D0598();

    if (v45)
    {
      goto LABEL_28;
    }

    v28 = v9;
    v14 = v2;
    v16 = v37;
    if ((v37 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_26:
  sub_2681281A4();

LABEL_29:
  v46 = v84;
  v47 = v80;
  sub_2683CF278();
  sub_2681F9648(v46);
  v48 = sub_2683CF248();
  if ((v81 & 1) == 0)
  {
    goto LABEL_32;
  }

  v49 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 supportedIntents];
    sub_2683CFD98();

LABEL_32:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024D4A8, &unk_2683D4D00);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2683D1EC0;
    v53 = type metadata accessor for InstalledAppProvider();
    v54 = v75[0];
    v55 = v75[1] + *(v53 + 20);
    sub_2683CB658();
    sub_2683CB638();
    (*(v76 + 8))(v54, v77);
    v56 = sub_2683CB5C8();
    if (__swift_getEnumTagSinglePayload(v47, 1, v56) == 1)
    {
      sub_2681F96AC(v47);
      v57 = 0xE200000000000000;
      v58 = 28261;
    }

    else
    {
      v58 = sub_2683CB5B8();
      v57 = v59;
      (*(*(v56 - 8) + 8))(v47, v56);
    }

    *(v52 + 32) = v58;
    *(v52 + 40) = v57;
    v60 = sub_2683CFC98();

    v61 = [v46 localizedNameWithPreferredLocalizations_];

    sub_2683CFA78();
    goto LABEL_36;
  }

  if (qword_28024C8E0 != -1)
  {
    swift_once();
  }

  v63 = sub_2683CF7E8();
  __swift_project_value_buffer(v63, qword_28027C958);
  v64 = v46;
  v65 = sub_2683CF7C8();
  v66 = sub_2683CFE88();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v89[0] = v68;
    *v67 = 136446210;
    v69 = v64;
    v70 = [v69 description];
    v71 = sub_2683CFA78();
    v73 = v72;

    v74 = sub_2681610A0(v71, v73, v89);

    *(v67 + 4) = v74;
    _os_log_impl(&dword_2680EB000, v65, v66, "[InstalledAppProvider] Could not make INAppInfo for %{public}s", v67, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x26D617A40](v68, -1, -1);
    MEMORY[0x26D617A40](v67, -1, -1);
  }

  v48 = 0;
LABEL_36:
  sub_2681F90AC();

  return v48;
}

void sub_2681F840C()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v4 = v3;
  v5 = type metadata accessor for InstalledAppProvider();
  v55 = *(v5 - 8);
  v6 = *(v55 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v58 = v7;
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_2683CF738();
  v9 = OUTLINED_FUNCTION_0_3(v54);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - v15;
  v17 = "InstalledAppProvider#getAllAppsFiltered";
  if (!v2)
  {
    v17 = "InstalledAppProvider#getAllApps";
  }

  v57 = v17;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v18 = sub_2683CF768();
  __swift_project_value_buffer(v18, qword_28027C9A0);
  sub_2683CF728();
  v19 = sub_2683CF758();
  v20 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v21 = OUTLINED_FUNCTION_21_5();
    v56 = v8;
    v22 = v21;
    *v21 = 0;
    v23 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v19, v20, v23, v57, "", v22, 2u);
    v8 = v56;
    OUTLINED_FUNCTION_38();
  }

  v24 = OUTLINED_FUNCTION_10_13();
  v25 = v54;
  v26(v24);
  v27 = sub_2683CF7A8();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  swift_allocObject();
  v56 = sub_2683CF798();
  (*(v11 + 8))(v16, v25);
  v30 = [objc_opt_self() enumeratorWithOptions_];
  sub_2681F9490(v0, v8);
  v31 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v32 = swift_allocObject();
  sub_2681F94F4(v8, v32 + v31);
  v59[4] = sub_2681F9558;
  v59[5] = v32;
  v59[0] = MEMORY[0x277D85DD0];
  v59[1] = 1107296256;
  v59[2] = sub_2681F8BD8;
  v59[3] = &block_descriptor_1;
  v33 = _Block_copy(v59);

  [v30 setFilter_];
  _Block_release(v33);
  v58 = MEMORY[0x277D84F90];
  while (1)
  {
    v34 = [v30 nextObject];
    if (!v34)
    {
      break;
    }

    v35 = v34;
    if ((!v2 || sub_2681F8C30(v4, v2)) && (v36 = sub_2681F7AE4(v35, 0)) != 0)
    {
      v40 = v36;
      v41 = v37;
      v42 = v38;
      v43 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = *(v58 + 16);
        sub_2682E49B0();
        v58 = v50;
      }

      v45 = *(v58 + 16);
      v44 = *(v58 + 24);
      v54 = v45 + 1;
      v55 = v45;
      if (v45 >= v44 >> 1)
      {
        sub_2682E49B0();
        v58 = v51;
      }

      v46 = v58;
      v47 = v55;
      *(v58 + 16) = v54;
      v48 = (v46 + 32 * v47);
      v48[4] = v40;
      v48[5] = v41;
      v48[6] = v42;
      v48[7] = v43;
    }

    else
    {
    }
  }

  if (v2)
  {
    v52 = 39;
  }

  else
  {
    v52 = 31;
  }

  sub_2681F88BC(v57, v52, 2);

  OUTLINED_FUNCTION_29_0();
}

uint64_t type metadata accessor for InstalledAppProvider()
{
  result = qword_28024F400;
  if (!qword_28024F400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F88BC(const char *a1, uint64_t a2, int a3)
{
  v21 = a3;
  v4 = sub_2683CF778();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2683CF738();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28024C8F8 != -1)
  {
    swift_once();
  }

  v14 = sub_2683CF768();
  __swift_project_value_buffer(v14, qword_28027C9A0);
  v15 = sub_2683CF758();
  sub_2683CF788();
  v20 = sub_2683CFEE8();
  result = sub_2683CFF88();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v21 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_2683CF7B8();

      if ((*(v5 + 88))(v8, v4) == *MEMORY[0x277D85B00])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v8, v4);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_2683CF718();
      _os_signpost_emit_with_name_impl(&dword_2680EB000, v15, v20, v19, a1, v17, v18, 2u);
      MEMORY[0x26D617A40](v18, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v13, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v22;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_2681F8B98(void *a1, _BYTE *a2)
{
  if (*a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2681F7864(a1) ^ 1;
  }

  return v2 & 1;
}

uint64_t sub_2681F8BD8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

BOOL sub_2681F8C30(uint64_t a1, unint64_t a2)
{
  v5 = [objc_opt_self() appInfoWithApplicationRecord_];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 supportedIntents];
    v8 = sub_2683CFD98();

    v9 = sub_2681F6FC4(a1, a2, v8);

    return v9;
  }

  else
  {
    if (qword_28024C8E0 != -1)
    {
      swift_once();
    }

    v11 = sub_2683CF7E8();
    __swift_project_value_buffer(v11, qword_28027C958);

    v12 = sub_2683CF7C8();
    v13 = sub_2683CFE78();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_2681610A0(a1, a2, &v16);
      _os_log_impl(&dword_2680EB000, v12, v13, "[InstalledAppProvider] cannot create INAppInfo for %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x26D617A40](v15, -1, -1);
      MEMORY[0x26D617A40](v14, -1, -1);
    }

    return 0;
  }
}

void sub_2681F8E04()
{
  OUTLINED_FUNCTION_30_0();
  v2 = v1;
  v3 = sub_2683CF738();
  v4 = OUTLINED_FUNCTION_0_3(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_23();
  MEMORY[0x28223BE20](v9);
  v11 = &v23[-v10];
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v12 = sub_2683CF768();
  __swift_project_value_buffer(v12, qword_28027C9A0);
  sub_2683CF728();
  v13 = sub_2683CF758();
  v14 = sub_2683CFEF8();
  if (sub_2683CFF88())
  {
    v15 = OUTLINED_FUNCTION_21_5();
    *v15 = 0;
    v16 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v13, v14, v16, "InstalledAppProvider#addSupportedIntents", "", v15, 2u);
    OUTLINED_FUNCTION_38();
  }

  v17 = OUTLINED_FUNCTION_10_13();
  v18(v17);
  v19 = sub_2683CF7A8();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  sub_2683CF798();
  v22 = (*(v6 + 8))(v11, v3);
  MEMORY[0x28223BE20](v22);
  *&v23[-16] = v0;
  sub_26836F868(sub_2681F9828, &v23[-32], v2);
  sub_2681F90AC();

  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F9024@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_2683CF258();
  sub_2681F7280();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v9;
  a2[3] = v11;
  return result;
}

void sub_2681F90AC()
{
  OUTLINED_FUNCTION_30_0();
  v25 = v0;
  v1 = sub_2683CF778();
  v2 = OUTLINED_FUNCTION_0_3(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_14_3();
  v9 = v8 - v7;
  v10 = sub_2683CF738();
  v11 = OUTLINED_FUNCTION_0_3(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_14_3();
  v18 = v17 - v16;
  if (qword_28024C8F8 != -1)
  {
    OUTLINED_FUNCTION_0_37();
  }

  v19 = sub_2683CF768();
  __swift_project_value_buffer(v19, qword_28027C9A0);
  v20 = sub_2683CF758();
  sub_2683CF788();
  v21 = sub_2683CFEE8();
  if (sub_2683CFF88())
  {

    sub_2683CF7B8();

    if ((*(v4 + 88))(v9, v1) == *MEMORY[0x277D85B00])
    {
      v22 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v9, v1);
      v22 = "";
    }

    v23 = OUTLINED_FUNCTION_21_5();
    *v23 = 0;
    v24 = sub_2683CF718();
    _os_signpost_emit_with_name_impl(&dword_2680EB000, v20, v21, v24, v25, v22, v23, 2u);
    OUTLINED_FUNCTION_38();
  }

  (*(v13 + 8))(v18, v10);
  OUTLINED_FUNCTION_29_0();
}

uint64_t sub_2681F92F0(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2683CFB78();
    v1 = sub_2683CFC18();

    return v1;
  }

  return result;
}

id sub_2681F93B0(uint64_t a1, uint64_t a2, char a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2683CFA68();

  v11[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v11];

  if (v6)
  {
    v7 = v11[0];
  }

  else
  {
    v8 = v11[0];
    sub_2683CB388();

    swift_willThrow();
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2681F9490(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstalledAppProvider();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F94F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstalledAppProvider();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F9558(void *a1)
{
  v3 = *(type metadata accessor for InstalledAppProvider() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_2681F8B98(a1, v4);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2681F95E0()
{
  result = qword_28024F3F8;
  if (!qword_28024F3F8)
  {
    sub_268129504(255, &qword_28024F3F0, 0x277CC1E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28024F3F8);
  }

  return result;
}

uint64_t sub_2681F9648(void *a1)
{
  v1 = [a1 bundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681F96AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F3E8, &unk_2683DB930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681F9714(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2683CFA78();

  return v3;
}

uint64_t sub_2681F97AC()
{
  result = sub_2683CB668();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2681F9844(uint64_t a1)
{
  v2 = type metadata accessor for InstalledAppProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return swift_once();
}

uint64_t Snippet.SectionHeading.redacted.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Snippet.SectionHeading();
  v5 = OUTLINED_FUNCTION_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_14_3();
  v10 = (v9 - v8);
  sub_2681F9B38(v2, v9 - v8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v10, sizeof(__dst));
      v12 = *&__dst[8];
      v32 = *__dst;
      v13 = *&__dst[32];
      v14 = *&__dst[40];

      v15 = sub_2683CFAC8();
      v30 = v16;
      v31 = v15;
      if (v14)
      {
        v13 = sub_2683CFAC8();
        v14 = v17;
      }

      v29 = *&__dst[48];
      v18 = *&__dst[64];
      v19 = __dst[72];
      v20 = *&__dst[80];
      v21 = *&__dst[88];
      v22 = __dst[96];
      sub_268151B1C(*&__dst[80], *&__dst[88], __dst[96]);
      sub_268151B3C(0, 0, 255);
      sub_26814F740(__dst);
      *a1 = v32;
      *(a1 + 8) = v12;
      *(a1 + 16) = v31;
      *(a1 + 24) = v30;
      *(a1 + 32) = v13;
      *(a1 + 40) = v14;
      *(a1 + 48) = v29;
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v20;
      *(a1 + 88) = v21;
      *(a1 + 96) = v22;
      return swift_storeEnumTagMultiPayload();
    case 2u:
      v23 = *v10;
      v24 = v10[1];
      v25 = sub_2683CFAC8();
      v27 = v26;

      *a1 = v25;
      *(a1 + 8) = v27;
      return swift_storeEnumTagMultiPayload();
    case 3u:
      v28 = v10[1];
      *a1 = *v10;
      *(a1 + 8) = v28;
      return swift_storeEnumTagMultiPayload();
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
      return sub_2681F9B38(v2, a1);
    default:
      sub_2681F9B9C(v10);
      return sub_2681F9B38(v2, a1);
  }
}

uint64_t type metadata accessor for Snippet.SectionHeading()
{
  result = qword_28024F588;
  if (!qword_28024F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2681F9B38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Snippet.SectionHeading();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2681F9B9C(uint64_t a1)
{
  v2 = type metadata accessor for Snippet.SectionHeading();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Snippet.SectionHeading.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_2683CB528();
  v6 = OUTLINED_FUNCTION_0_3(v5);
  v46 = v7;
  v47 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_3();
  v45 = v11 - v10;
  v12 = type metadata accessor for Snippet.SectionHeading();
  v13 = OUTLINED_FUNCTION_1(v12);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_23_14();
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v45 - v23;
  v25 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F410, &qword_2683DB970) - 8) + 64);
  OUTLINED_FUNCTION_3_0();
  v27 = MEMORY[0x28223BE20](v26);
  v29 = &v45 - v28;
  v30 = (&v45 + *(v27 + 56) - v28);
  sub_2681F9B38(a1, &v45 - v28);
  sub_2681F9B38(a2, v30);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2681F9B38(v29, v22);
      memcpy(__dst, v22, 0x61uLL);
      if (OUTLINED_FUNCTION_19_17() == 1)
      {
        memcpy(v50, v30, 0x61uLL);
        memcpy(v49, v22, 0x61uLL);
        memcpy(v48, v30, 0x61uLL);
        v38 = static Snippet.ReminderList.== infix(_:_:)(v49, v48);
        sub_26814F740(v50);
        sub_26814F740(__dst);
        goto LABEL_47;
      }

      sub_26814F740(__dst);
      goto LABEL_43;
    case 2u:
      sub_2681F9B38(v29, v2);
      v32 = *v2;
      v31 = v2[1];
      if (OUTLINED_FUNCTION_19_17() != 2)
      {
        goto LABEL_25;
      }

      if (v32 != *v30 || v31 != v30[1])
      {
        goto LABEL_23;
      }

      goto LABEL_40;
    case 3u:
      sub_2681F9B38(v29, v18);
      v35 = *v18;
      v34 = v18[1];
      if (OUTLINED_FUNCTION_19_17() != 3)
      {
LABEL_25:

        goto LABEL_43;
      }

      if (v35 == *v30 && v34 == v30[1])
      {
LABEL_40:
      }

      else
      {
LABEL_23:
        v37 = sub_2683D0598();

        if ((v37 & 1) == 0)
        {
          sub_2681F9B9C(v29);
          goto LABEL_44;
        }
      }

LABEL_41:
      sub_2681F9B9C(v29);
      v38 = 1;
      break;
    case 4u:
      if (OUTLINED_FUNCTION_19_17() != 4)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 5u:
      if (OUTLINED_FUNCTION_19_17() != 5)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 6u:
      if (OUTLINED_FUNCTION_19_17() != 6)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 7u:
      if (OUTLINED_FUNCTION_19_17() != 7)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 8u:
      if (OUTLINED_FUNCTION_19_17() != 8)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 9u:
      if (OUTLINED_FUNCTION_19_17() != 9)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xAu:
      if (OUTLINED_FUNCTION_19_17() != 10)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xBu:
      if (OUTLINED_FUNCTION_19_17() != 11)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xCu:
      if (OUTLINED_FUNCTION_19_17() != 12)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    case 0xDu:
      if (OUTLINED_FUNCTION_19_17() != 13)
      {
        goto LABEL_43;
      }

      goto LABEL_41;
    default:
      sub_2681F9B38(v29, v24);
      if (OUTLINED_FUNCTION_19_17())
      {
        (*(v46 + 8))(v24, v47);
LABEL_43:
        sub_2681FA074(v29);
LABEL_44:
        v38 = 0;
      }

      else
      {
        v41 = v45;
        v40 = v46;
        v42 = v30;
        v43 = v47;
        (*(v46 + 32))(v45, v42, v47);
        v38 = sub_2683CB4F8();
        v44 = *(v40 + 8);
        v44(v41, v43);
        v44(v24, v43);
LABEL_47:
        sub_2681F9B9C(v29);
      }

      break;
  }

  return v38 & 1;
}

uint64_t sub_2681FA074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F410, &qword_2683DB970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2681FA0DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7105633 && a2 == 0xE300000000000000;
  if (v3 || (sub_2683D0598() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_2683D0598() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x64656767616C66 && a2 == 0xE700000000000000;
      if (v7 || (sub_2683D0598() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1953720684 && a2 == 0xE400000000000000;
        if (v8 || (sub_2683D0598() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x746365537473696CLL && a2 == 0xEB000000006E6F69;
          if (v9 || (sub_2683D0598() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79627261656ELL && a2 == 0xE600000000000000;
            if (v10 || (sub_2683D0598() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7365746F6ELL && a2 == 0xE500000000000000;
              if (v11 || (sub_2683D0598() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x65754474736170 && a2 == 0xE700000000000000;
                if (v12 || (sub_2683D0598() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x73746C75736572 && a2 == 0xE700000000000000;
                  if (v13 || (sub_2683D0598() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C756465686373 && a2 == 0xE900000000000064;
                    if (v14 || (sub_2683D0598() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x7453686372616573 && a2 == 0xEC000000676E6972;
                      if (v15 || (sub_2683D0598() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x736B736174 && a2 == 0xE500000000000000;
                        if (v16 || (sub_2683D0598() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x7961646F74 && a2 == 0xE500000000000000;
                          if (v17 || (sub_2683D0598() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x6F69746365536F6ELL && a2 == 0xE90000000000006ELL)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_2683D0598();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
        }
      }
    }
  }
}

unint64_t sub_2681FA508(char a1)
{
  result = 7105633;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x64656767616C66;
      break;
    case 3:
      result = 1953720684;
      break;
    case 4:
      result = 0x746365537473696CLL;
      break;
    case 5:
      result = 0x79627261656ELL;
      break;
    case 6:
      v3 = 1702129518;
      goto LABEL_13;
    case 7:
      result = 0x65754474736170;
      break;
    case 8:
      result = 0x73746C75736572;
      break;
    case 9:
      result = 0x656C756465686373;
      break;
    case 10:
      result = 0x7453686372616573;
      break;
    case 11:
      v3 = 1802723700;
LABEL_13:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 12:
      result = 0x7961646F74;
      break;
    case 13:
      result = 0x6F69746365536F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2681FA670(uint64_t a1)
{
  v2 = sub_2681FBFCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA6AC(uint64_t a1)
{
  v2 = sub_2681FBFCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2681FA0DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2681FA718(uint64_t a1)
{
  v2 = sub_2681FBB34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA754(uint64_t a1)
{
  v2 = sub_2681FBB34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA790(uint64_t a1)
{
  v2 = sub_2681FBF78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA7CC(uint64_t a1)
{
  v2 = sub_2681FBF78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA808(uint64_t a1)
{
  v2 = sub_2681FBF24();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA844(uint64_t a1)
{
  v2 = sub_2681FBF24();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA880(uint64_t a1)
{
  v2 = sub_2681FBED0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA8BC(uint64_t a1)
{
  v2 = sub_2681FBED0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA8F8(uint64_t a1)
{
  v2 = sub_2681FBE7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA934(uint64_t a1)
{
  v2 = sub_2681FBE7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA970(uint64_t a1)
{
  v2 = sub_2681FBE28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FA9AC(uint64_t a1)
{
  v2 = sub_2681FBE28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FA9E8(uint64_t a1)
{
  v2 = sub_2681FBB88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAA24(uint64_t a1)
{
  v2 = sub_2681FBB88();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAA60(uint64_t a1)
{
  v2 = sub_2681FBDD4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAA9C(uint64_t a1)
{
  v2 = sub_2681FBDD4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAAD8(uint64_t a1)
{
  v2 = sub_2681FBD80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAB14(uint64_t a1)
{
  v2 = sub_2681FBD80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAB50(uint64_t a1)
{
  v2 = sub_2681FBD2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAB8C(uint64_t a1)
{
  v2 = sub_2681FBD2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FABC8(uint64_t a1)
{
  v2 = sub_2681FBCD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAC04(uint64_t a1)
{
  v2 = sub_2681FBCD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAC40(uint64_t a1)
{
  v2 = sub_2681FBC84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAC7C(uint64_t a1)
{
  v2 = sub_2681FBC84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FACB8(uint64_t a1)
{
  v2 = sub_2681FBC30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FACF4(uint64_t a1)
{
  v2 = sub_2681FBC30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2681FAD30(uint64_t a1)
{
  v2 = sub_2681FBBDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2681FAD6C(uint64_t a1)
{
  v2 = sub_2681FBBDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Snippet.SectionHeading.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F418, &qword_2683DB978);
  OUTLINED_FUNCTION_0_38(v2, v177);
  v169 = v3;
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F420, &qword_2683DB980);
  OUTLINED_FUNCTION_0_38(v8, &__dst[88]);
  v166 = v9;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F428, &qword_2683DB988);
  OUTLINED_FUNCTION_0_38(v14, &__dst[56]);
  v162 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F430, &qword_2683DB990);
  OUTLINED_FUNCTION_0_38(v20, &__dst[64]);
  v163 = v21;
  v23 = *(v22 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F438, &qword_2683DB998);
  OUTLINED_FUNCTION_0_38(v26, &__dst[16]);
  v161 = v27;
  v29 = *(v28 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F440, &qword_2683DB9A0);
  OUTLINED_FUNCTION_0_38(v32, &v174[96]);
  v160 = v33;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F448, &qword_2683DB9A8);
  OUTLINED_FUNCTION_0_38(v38, &v174[72]);
  v159 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F450, &qword_2683DB9B0);
  OUTLINED_FUNCTION_0_38(v44, &v174[48]);
  v158 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F458, &qword_2683DB9B8);
  OUTLINED_FUNCTION_0_38(v50, &v174[24]);
  v157 = v51;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F460, &qword_2683DB9C0);
  OUTLINED_FUNCTION_0_38(v56, &v174[8]);
  v155 = v57;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v61);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F468, &qword_2683DB9C8);
  OUTLINED_FUNCTION_0_38(v62, v172);
  v153 = v63;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v67);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F470, &qword_2683DB9D0);
  OUTLINED_FUNCTION_0_38(v68, &v166);
  v148[3] = v69;
  v71 = *(v70 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v73);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F478, &qword_2683DB9D8);
  OUTLINED_FUNCTION_0_38(v74, &v169);
  v150 = v75;
  v77 = *(v76 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_0(v79);
  v80 = sub_2683CB528();
  v81 = OUTLINED_FUNCTION_0_38(v80, v167);
  v148[5] = v82;
  v84 = *(v83 + 64);
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_14_3();
  v87 = v86 - v85;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F480, &qword_2683DB9E0);
  OUTLINED_FUNCTION_0_3(v88);
  v148[1] = v89;
  v91 = *(v90 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v92);
  v93 = type metadata accessor for Snippet.SectionHeading();
  v94 = OUTLINED_FUNCTION_1(v93);
  v96 = *(v95 + 64);
  MEMORY[0x28223BE20](v94);
  OUTLINED_FUNCTION_14_3();
  v99 = (v98 - v97);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28024F488, &qword_2683DB9E8);
  OUTLINED_FUNCTION_0_38(v100, &v178);
  v173 = v101;
  v103 = *(v102 + 64);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v104);
  v106 = v148 - v105;
  v107 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2681FBB34();
  v170 = v106;
  sub_2683D0718();
  sub_2681F9B38(v177[1], v99);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      memcpy(__dst, v99, 0x61uLL);
      v174[0] = 3;
      sub_2681FBED0();
      v135 = v152;
      OUTLINED_FUNCTION_2_26();
      v137 = *(v136 - 256);
      sub_2683D04C8();
      memcpy(v174, __dst, 0x61uLL);
      sub_26814F7E8();
      v138 = v154;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0548();
      OUTLINED_FUNCTION_12_15(&v170);
      v139(v135, v138);
      v140 = OUTLINED_FUNCTION_6_24(&v179);
      v141(v140, v107);
      return sub_26814F740(__dst);
    case 2u:
      v124 = *v99;
      v125 = v99[1];
      __dst[0] = 4;
      sub_2681FBE7C();
      OUTLINED_FUNCTION_20_15(v171);
      OUTLINED_FUNCTION_16_21();
      v126 = v156;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0518();

      OUTLINED_FUNCTION_12_15(v174);
      v128 = v106;
      v129 = v126;
      goto LABEL_9;
    case 3u:
      v131 = *v99;
      v130 = v99[1];
      __dst[0] = 10;
      sub_2681FBC84();
      OUTLINED_FUNCTION_20_15(&__dst[32]);
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_21_12();
      sub_2683D0518();

      v128 = OUTLINED_FUNCTION_10_14(&__dst[48]);
LABEL_9:
      v127(v128, v129);
      goto LABEL_10;
    case 4u:
      __dst[0] = 0;
      sub_2681FBFCC();
      OUTLINED_FUNCTION_2_26();
      v116 = *(v120 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&v162);
      v121 = v88;
      goto LABEL_19;
    case 5u:
      __dst[0] = 2;
      sub_2681FBF24();
      OUTLINED_FUNCTION_17_13(&v163);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v142 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(v164);
      v119 = &v166;
      goto LABEL_18;
    case 6u:
      __dst[0] = 5;
      sub_2681FBE28();
      OUTLINED_FUNCTION_17_13(&v173);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v144 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&v174[16]);
      v119 = &v174[24];
      goto LABEL_18;
    case 7u:
      __dst[0] = 6;
      sub_2681FBDD4();
      OUTLINED_FUNCTION_17_13(&v174[32]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v134 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&v174[40]);
      v119 = &v174[48];
      goto LABEL_18;
    case 8u:
      __dst[0] = 7;
      sub_2681FBD80();
      OUTLINED_FUNCTION_17_13(&v174[56]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v146 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&v174[64]);
      v119 = &v174[72];
      goto LABEL_18;
    case 9u:
      __dst[0] = 8;
      sub_2681FBD2C();
      OUTLINED_FUNCTION_17_13(&v174[80]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v123 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&v174[88]);
      v119 = &v174[96];
      goto LABEL_18;
    case 0xAu:
      __dst[0] = 9;
      sub_2681FBCD8();
      OUTLINED_FUNCTION_17_13(__dst);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v145 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&__dst[8]);
      v119 = &__dst[16];
      goto LABEL_18;
    case 0xBu:
      __dst[0] = 11;
      sub_2681FBC30();
      OUTLINED_FUNCTION_17_13(&__dst[24]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v115 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&__dst[40]);
      v119 = &__dst[56];
      goto LABEL_18;
    case 0xCu:
      __dst[0] = 12;
      sub_2681FBBDC();
      OUTLINED_FUNCTION_17_13(&__dst[72]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v122 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(&__dst[80]);
      v119 = &__dst[88];
      goto LABEL_18;
    case 0xDu:
      __dst[0] = 13;
      sub_2681FBB88();
      OUTLINED_FUNCTION_17_13(&__dst[96]);
      OUTLINED_FUNCTION_2_26();
      v116 = *(v143 - 256);
      sub_2683D04C8();
      v117 = OUTLINED_FUNCTION_6_24(v176);
      v119 = v177;
LABEL_18:
      v121 = *(v119 - 32);
LABEL_19:
      v118(v117, v121);
      OUTLINED_FUNCTION_12_15(&v179);
      result = v147(v116, v107);
      break;
    default:
      OUTLINED_FUNCTION_20_15(v165);
      v109 = v149;
      (*(v108 + 32))(v87, v99, v149);
      __dst[0] = 1;
      sub_2681FBF78();
      v110 = v148[4];
      OUTLINED_FUNCTION_16_21();
      OUTLINED_FUNCTION_7_17();
      sub_2681FD5F0(v111, v112);
      v113 = v151;
      OUTLINED_FUNCTION_21_12();
      sub_2683D0548();
      OUTLINED_FUNCTION_12_15(v168);
      v114(v110, v113);
      (*(v106 + 1))(v87, v109);
LABEL_10:
      OUTLINED_FUNCTION_12_15(&v179);
      result = v132(v99, v88);
      break;
  }

  return result;
}