uint64_t sub_1E39CA064()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1E39CA0C4()
{
  result = qword_1ECF30078;
  if (!qword_1ECF30078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30078);
  }

  return result;
}

uint64_t sub_1E39CA118()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FE9F4();
  OUTLINED_FUNCTION_18_45(v1);
  *(v0 + 64) = v2;
  *(v0 + 72) = swift_task_alloc();
  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CA1C0()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1E41FE9E4();
  v4 = sub_1E41FE9D4();
  (*(v2 + 8))(v1, v3);
  if (v4 == 2)
  {
    sub_1E41FEA64();
    v0[10] = sub_1E41FEA44();
    v5 = swift_task_alloc();
    v0[11] = v5;
    *v5 = v0;
    v6 = OUTLINED_FUNCTION_9_60(v5);

    return MEMORY[0x1EEE43420](v6);
  }

  else
  {
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v7 = sub_1E41FFCB4();
    v8 = OUTLINED_FUNCTION_15_60(v7, qword_1EE28B858);
    v9 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v4 & 1;
      _os_log_impl(&dword_1E323F000, v8, v9, "isFullTVAppEnabled - TV app enabled %{BOOL}d ", v10, 8u);
      OUTLINED_FUNCTION_6_0();
    }

    OUTLINED_FUNCTION_13_7();

    return v11(v4 & 1);
  }
}

uint64_t sub_1E39CA398()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 96) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E39CA498()
{
  v26 = v0;

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_1E41FFB44();
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v2 = sub_1E41FFCB4();
    v3 = OUTLINED_FUNCTION_15_60(v2, qword_1EE28B858);
    v4 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v25[0] = v6;
      *v5 = 136315138;
      *(v5 + 4) = sub_1E3270FC8(0xD00000000000001BLL, 0x80000001E426A8A0, v25);
      OUTLINED_FUNCTION_41_2();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    sub_1E39CA0C4();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();

    OUTLINED_FUNCTION_13_7();
    v14 = 0;
  }

  else
  {
    v15 = v1;
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    if (_MergedGlobals_177 != -1)
    {
      OUTLINED_FUNCTION_0_99();
      swift_once();
    }

    v16 = sub_1E41FFCB4();
    v17 = OUTLINED_FUNCTION_15_60(v16, qword_1EE28B858);
    v18 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 136315138;
      if (v15)
      {
        v21 = 1702195828;
      }

      else
      {
        v21 = 0x65736C6166;
      }

      if (v15)
      {
        v22 = 0xE400000000000000;
      }

      else
      {
        v22 = 0xE500000000000000;
      }

      v23 = sub_1E3270FC8(v21, v22, v25);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1E323F000, v17, v18, "Full TVApp enabled:%s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_51_2();
    }

    OUTLINED_FUNCTION_13_7();
    v14 = v15 & 1;
  }

  return v13(v14);
}

uint64_t sub_1E39CA77C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();

  return v0(0);
}

unint64_t sub_1E39CA7E0()
{
  result = qword_1ECF30080;
  if (!qword_1ECF30080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30080);
  }

  return result;
}

unint64_t sub_1E39CA838()
{
  result = qword_1ECF30088;
  if (!qword_1ECF30088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30088);
  }

  return result;
}

unint64_t sub_1E39CA890()
{
  result = qword_1ECF30090;
  if (!qword_1ECF30090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30090);
  }

  return result;
}

unint64_t sub_1E39CA8E8()
{
  result = qword_1ECF30098;
  if (!qword_1ECF30098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30098);
  }

  return result;
}

unint64_t sub_1E39CA940()
{
  result = qword_1ECF300A0;
  if (!qword_1ECF300A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300A0);
  }

  return result;
}

unint64_t sub_1E39CA998()
{
  result = qword_1ECF300A8;
  if (!qword_1ECF300A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300A8);
  }

  return result;
}

unint64_t sub_1E39CA9F0()
{
  result = qword_1ECF300B0;
  if (!qword_1ECF300B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300B0);
  }

  return result;
}

_BYTE *sub_1E39CAA44(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E39CAB58(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E39CAC48(id a1, unsigned __int8 a2)
{
  if (a2 >> 6)
  {
    if (a2 >> 6 == 1)
    {
      ObjectType = swift_getObjectType();

      return sub_1E39CADA8(ObjectType);
    }

    else
    {
      v5 = sub_1E38ADE9C();
      v6 = *v5;
      v7 = v5[1];

      sub_1E3277E60(v6, v7, a1, &v8);

      if (v9)
      {
        swift_dynamicCast();
      }

      else
      {
        sub_1E329505C(&v8);
      }

      LODWORD(result) = sub_1E39CAFC4();
      if (result == 4)
      {
        return 0;
      }

      else
      {
        return result;
      }
    }
  }

  else if (a2)
  {
    type metadata accessor for LibMediaEntityTypeFactory();
    return sub_1E39CAD6C(a1);
  }

  else if ([a1 mediaType] == 512)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39CAD6C(void *a1)
{
  v1 = [a1 groupingType];
  if (v1 == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = 4;
  }

  if ((v1 | 8) == 9)
  {
    return 2;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E39CADA8(uint64_t a1)
{
  if (sub_1E3280A90(0, &qword_1ECF300B8) == a1)
  {
    return 0;
  }

  if (sub_1E3280A90(0, &qword_1ECF300C0) == a1)
  {
    return 1;
  }

  if (sub_1E3280A90(0, &qword_1ECF300C8) == a1)
  {
    return 2;
  }

  if (sub_1E3280A90(0, &qword_1ECF300D0) == a1)
  {
    return 3;
  }

  return 0;
}

uint64_t sub_1E39CAE64(unsigned __int8 a1, char a2)
{
  v2 = 0x736569766F6DLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x736569766F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x73776F68732D7674;
      break;
    case 2:
      v5 = 0x6F736165732D7674;
      v3 = 0xEA0000000000736ELL;
      break;
    case 3:
      v5 = 0x6F736970652D7674;
      v3 = 0xEB00000000736564;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x73776F68732D7674;
      break;
    case 2:
      v2 = 0x6F736165732D7674;
      v6 = 0xEA0000000000736ELL;
      break;
    case 3:
      v2 = 0x6F736970652D7674;
      v6 = 0xEB00000000736564;
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
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E39CAFC4()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39CB034(char a1)
{
  result = 0x736569766F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x73776F68732D7674;
      break;
    case 2:
      result = 0x6F736165732D7674;
      break;
    case 3:
      result = 0x6F736970652D7674;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39CB0D4()
{
  sub_1E4207B44();
  sub_1E39CB124();
  return sub_1E4207BA4();
}

uint64_t sub_1E39CB124()
{
  sub_1E4206014();
}

uint64_t sub_1E39CB1E8()
{
  sub_1E4207B44();
  sub_1E39CB124();
  return sub_1E4207BA4();
}

uint64_t sub_1E39CB22C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CAFC4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CB25C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39CB034(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1E39CB28C()
{
  result = qword_1ECF300D8;
  if (!qword_1ECF300D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF300D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LibMediaItemType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E39CB3BC()
{
  v0 = sub_1E41FFCB4();
  __swift_allocate_value_buffer(v0, qword_1ECF713C0);
  __swift_project_value_buffer(v0, qword_1ECF713C0);
  return sub_1E3287754(2);
}

uint64_t sub_1E39CB410()
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E8);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v8 = 0;
  if (!__swift_getEnumTagSinglePayload(v1 + v7, 1, v3))
  {
    sub_1E3294EE4(v1 + v7, v2, &qword_1ECF300E0);
    sub_1E3BEACDC(v3, v0);
    v9 = OUTLINED_FUNCTION_75();
    sub_1E325F6F0(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0);
    OUTLINED_FUNCTION_50();
    OUTLINED_FUNCTION_34_8();
    if (__swift_getEnumTagSinglePayload(v11, v12, v13) == 1)
    {
      sub_1E325F6F0(v0, &qword_1ECF300E8);
      return 0;
    }

    else
    {
      v8 = *v0;
      sub_1E325F6F0(v0 + *(v2 + 48), &unk_1ECF363C0);
    }
  }

  return v8;
}

void sub_1E39CB5B0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v51 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E8);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v17 = OUTLINED_FUNCTION_17_2(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v20 = v18 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (__swift_getEnumTagSinglePayload(v1 + v24, 1, v4))
  {
    goto LABEL_4;
  }

  v52 = v3;
  sub_1E3294EE4(v1 + v24, v11, &qword_1ECF300E0);
  sub_1E3BEACDC(v4, v15);
  sub_1E325F6F0(v11, &qword_1ECF300E0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0);
  OUTLINED_FUNCTION_34_8();
  if (__swift_getEnumTagSinglePayload(v26, v27, v28) == 1)
  {
    sub_1E325F6F0(v15, &qword_1ECF300E8);
    v3 = v52;
LABEL_4:
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v32);
    goto LABEL_5;
  }

  sub_1E329E454(&v15[*(v25 + 48)], v23, &unk_1ECF363C0);
  v40 = sub_1E41FE414();
  OUTLINED_FUNCTION_34_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v43);
  v3 = v52;
  if (EnumTagSinglePayload != 1)
  {
    OUTLINED_FUNCTION_37_1();
    (*(v45 + 32))(v3, v23, v40);
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
    goto LABEL_16;
  }

LABEL_5:
  if (__swift_getEnumTagSinglePayload(v1 + v24, 1, v4) || (sub_1E3294EE4(v1 + v24, v8, &qword_1ECF300E0), sub_1E3BEADF0(v4, &v53), sub_1E325F6F0(v8, &qword_1ECF300E0), (v37 = v53) == 0))
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }

  else
  {
    v38 = [v53 sharedWatchUrl];

    if (v38)
    {
      sub_1E41FE3C4();

      v39 = 0;
    }

    else
    {
      v39 = 1;
    }

    v49 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v20, v39, 1, v49);
    sub_1E329E454(v20, v3, &unk_1ECF363C0);
  }

  v50 = sub_1E41FE414();
  if (__swift_getEnumTagSinglePayload(v23, 1, v50) != 1)
  {
    sub_1E325F6F0(v23, &unk_1ECF363C0);
  }

LABEL_16:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CB988(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E39CB9F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v5, 1, v1);
  result = 0;
  if (!EnumTagSinglePayload)
  {
    sub_1E3294EE4(v0 + v5, v4, &qword_1ECF300E0);
    sub_1E3BEADF0(v1, &v10);
    v8 = OUTLINED_FUNCTION_34();
    sub_1E325F6F0(v8, v9);
    return v10;
  }

  return result;
}

uint64_t sub_1E39CBAEC()
{
  OUTLINED_FUNCTION_19_52();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_50();
  sub_1E39CBB20(v1);
  return v0;
}

uint64_t sub_1E39CBB20(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_50_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  *(v2 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v10 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v11 = sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v12 + 32))(v2 + v10, a1, v11);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v11);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v6);
  v19 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  sub_1E39CB988(v1, v2 + v19);
  swift_endAccess();
  return v2;
}

uint64_t sub_1E39CBC68()
{
  OUTLINED_FUNCTION_19_52();
  v0 = swift_allocObject();
  sub_1E39CBCD0();
  return v0;
}

void sub_1E39CBCD0()
{
  OUTLINED_FUNCTION_31_1();
  v46 = v1;
  v47 = v2;
  v4 = v3;
  v45 = v5;
  v7 = v6;
  v43 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v43 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v12);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8);
  OUTLINED_FUNCTION_17_2(v16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
  *(v0 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v25 = sub_1E41FE624();
  v26 = *(v25 - 8);
  (*(v26 + 16))(v0 + v24, v7, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v25);
  v30 = sub_1E41FE414();
  v31 = *(v30 - 8);
  (*(v31 + 16))(v15, v4, v30);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v30);
  v35 = *(v8 + 48);
  v36 = v46;
  *v11 = v45;
  v11[1] = v36;
  sub_1E329E454(v15, v11 + v35, &unk_1ECF363C0);
  sub_1E3280A90(0, &qword_1EE23B1C0);
  sub_1E3BEAF04();
  (*(v31 + 8))(v4, v30);
  (*(v26 + 8))(v43, v25);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v44);
  v40 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_17_51();
  swift_beginAccess();
  sub_1E39CB988(v19, v0 + v40);
  swift_endAccess();
  v41 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_44_25();
  v42 = *(v0 + v41);
  *(v0 + v41) = v47;

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CBFD0()
{
  OUTLINED_FUNCTION_19_52();
  v0 = swift_allocObject();
  sub_1E39CC020();
  return v0;
}

void sub_1E39CC020()
{
  OUTLINED_FUNCTION_31_1();
  v26[0] = v1;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  *(v0 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  v14 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier;
  v15 = sub_1E41FE624();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v0 + v14, v5, v15);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v15);
  v26[1] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0);
  sub_1E3280A90(0, &qword_1EE23B1C0);
  sub_1E3BEAF84();
  (*(v16 + 8))(v5, v15);
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v10);
  v23 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
  OUTLINED_FUNCTION_17_51();
  swift_beginAccess();
  sub_1E39CB988(v9, v0 + v23);
  swift_endAccess();
  v24 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_44_25();
  v25 = *(v0 + v24);
  *(v0 + v24) = v26[0];

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CC1FC(void *a1)
{
  OUTLINED_FUNCTION_19_52();
  v2 = swift_allocObject();
  sub_1E39CC244(a1);
  return v2;
}

void *sub_1E39CC244(void *a1)
{
  v3 = v1;
  v92 = *v1;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v88 = &v80 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300F8);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v91 = &v80 - v9;
  v93 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v83 = v10;
  MEMORY[0x1EEE9AC00](v11);
  v85 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v14 = OUTLINED_FUNCTION_17_2(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  v82 = v15 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v80 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v90 = &v80 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  OUTLINED_FUNCTION_17_2(v21);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v86 = &v80 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30100);
  OUTLINED_FUNCTION_0_10();
  v89 = v25;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_26_2();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF300E0);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v27);
  *(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E39CCA8C();
  v31 = v94;
  sub_1E4207C04();
  if (!v31)
  {
    v80 = v27;
    v81 = a1;
    v33 = sub_1E41FE624();
    LOBYTE(v95) = 0;
    sub_1E32AA268(&qword_1ECF30108, MEMORY[0x1E69695A8]);
    v34 = v86;
    sub_1E4207864();
    __swift_storeEnumTagSinglePayload(v34, 0, 1, v33);
    sub_1E329E454(v34, v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, &qword_1ECF29408);
    LOBYTE(v95) = 1;
    v92 = v24;
    v94 = v2;
    v35 = sub_1E4207834();
    v36 = v90;
    v38 = v37;
    v86 = v35;
    v39 = v91;
    LOBYTE(v95) = 2;
    sub_1E32AA268(&qword_1ECF30110, MEMORY[0x1E6968FB0]);
    sub_1E4207864();
    v40 = v87;
    v41 = v88;
    v42 = v93;
    __swift_storeEnumTagSinglePayload(v36, 0, 1, v93);
    if (v38)
    {
      sub_1E3294EE4(v36, v40, &unk_1ECF363C0);
      OUTLINED_FUNCTION_34_8();
      if (__swift_getEnumTagSinglePayload(v43, v44, v45) != 1)
      {
        v48 = v83;
        v49 = v85;
        (*(v83 + 32))(v85, v40, v42);
        v50 = v82;
        (*(v48 + 16))(v82, v49, v42);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v42);
        v54 = *(v84 + 48);
        *v41 = v86;
        v41[1] = v38;
        sub_1E329E454(v50, v41 + v54, &unk_1ECF363C0);
        sub_1E3280A90(0, &qword_1EE23B1C0);
        v55 = v91;
        sub_1E3BEAF04();
        (*(v48 + 8))(v85, v42);
        sub_1E325F6F0(v36, &unk_1ECF363C0);
        v56 = OUTLINED_FUNCTION_29_33();
        v57(v56, v92);
        OUTLINED_FUNCTION_114();
        __swift_storeEnumTagSinglePayload(v58, v59, v60, v80);
        v61 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
        OUTLINED_FUNCTION_17_51();
        swift_beginAccess();
        v62 = v3 + v61;
        v63 = v55;
LABEL_11:
        sub_1E39CB988(v63, v62);
        swift_endAccess();
        v32 = v81;
        goto LABEL_12;
      }

      sub_1E325F6F0(v40, &unk_1ECF363C0);
    }

    v96 = 3;
    sub_1E39CCAE0();
    sub_1E4207864();
    sub_1E3280A90(0, &qword_1EE23B1C0);
    v64 = OUTLINED_FUNCTION_75();
    sub_1E38DCD14(v64, v65);
    v66 = OUTLINED_FUNCTION_75();
    v68 = sub_1E39CCB34(v66, v67);
    if (v68)
    {
      v95 = v68;
      sub_1E3BEAF84();
      v69 = OUTLINED_FUNCTION_75();
      sub_1E38DCCB0(v69, v70);
      sub_1E325F6F0(v90, &unk_1ECF363C0);
      v71 = OUTLINED_FUNCTION_29_33();
      v72(v71, v92);
      v73 = v39;
      v74 = 0;
    }

    else
    {
      v77 = OUTLINED_FUNCTION_75();
      sub_1E38DCCB0(v77, v78);
      v79 = v92;
      sub_1E325F6F0(v90, &unk_1ECF363C0);
      v46 = OUTLINED_FUNCTION_29_33();
      v47(v46, v79);
      v73 = v39;
      v74 = 1;
    }

    __swift_storeEnumTagSinglePayload(v73, v74, 1, v80);
    v75 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either;
    OUTLINED_FUNCTION_17_51();
    swift_beginAccess();
    v62 = v3 + v75;
    v63 = v39;
    goto LABEL_11;
  }

  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either, &qword_1ECF300F8);

  swift_deallocPartialClassInstance();
  v32 = a1;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v32);
  return v3;
}

unint64_t sub_1E39CCA8C()
{
  result = qword_1ECF51820[0];
  if (!qword_1ECF51820[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51820);
  }

  return result;
}

unint64_t sub_1E39CCAE0()
{
  result = qword_1ECF30118;
  if (!qword_1ECF30118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30118);
  }

  return result;
}

id sub_1E39CCB34(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v2 = 0;
  }

  else
  {
    v2 = sub_1E41FE454();
    sub_1E38DCE1C(a1, a2);
  }

  v5 = [swift_getObjCClassFromMetadata() videosPlayableFromSerializedSharedData_];

  return v5;
}

void *sub_1E39CCBB4()
{
  v1 = v0;
  v2 = *v0;
  if (_MergedGlobals_178 != -1)
  {
    OUTLINED_FUNCTION_3_88();
  }

  v3 = sub_1E41FFCB4();
  __swift_project_value_buffer(v3, qword_1ECF713C0);
  OUTLINED_FUNCTION_50();

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_6_21();
    v7 = swift_slowAlloc();
    v12[3] = v2;
    v13 = v7;
    *v6 = 136315138;
    v12[0] = v1;

    v8 = sub_1E3294FA4(v12);
    v10 = sub_1E3270FC8(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E323F000, v4, v5, "%s deinit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
  }

  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_either, &qword_1ECF300F8);
  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, &qword_1ECF29408);
  return v1;
}

uint64_t sub_1E39CCD64()
{
  sub_1E39CCBB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39CCDBC(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_50_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30120);
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E39CCA8C();
  sub_1E4207C14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29408);
  sub_1E39CF9E0();
  sub_1E42078E4();
  if (!v16)
  {
    sub_1E39CB410();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    sub_1E39CFA94();
    sub_1E42078E4();

    sub_1E39CB5B0();
    sub_1E39CFB10();
    sub_1E42078E4();
    sub_1E325F6F0(v1, &unk_1ECF363C0);
    v10 = v5;
    v11 = sub_1E39CB9F8();
    v12 = v11;
    if (v11)
    {
      v13 = [v11 serializedSharedData];

      if (v13)
      {
        v12 = sub_1E41FE464();
        v15 = v14;

LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30150);
        sub_1E39CFBC4();
        sub_1E42078E4();
        sub_1E38DCE1C(v12, v15);
        return (*(v7 + 8))(v2, v10);
      }

      v12 = 0;
    }

    v15 = 0xF000000000000000;
    goto LABEL_11;
  }

  return (*(v7 + 8))(v2, v5);
}

uint64_t sub_1E39CD0D4()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_50();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E39CD11C(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x6157646572616873;
      break;
    case 3:
      result = 0x6C50646572616873;
      break;
    case 4:
      result = 0x4D77656976657270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E39CD1E8(unsigned __int8 a1, char a2)
{
  v2 = 0xEA00000000007265;
  v3 = 0x696669746E656469;
  v4 = a1;
  v5 = 0x696669746E656469;
  v6 = 0xEA00000000007265;
  switch(v4)
  {
    case 1:
      v5 = 0x6157646572616873;
      v6 = 0xED00006449686374;
      break;
    case 2:
      v5 = 0x6157646572616873;
      v7 = 0x6C7255686374;
      goto LABEL_6;
    case 3:
      v5 = 0x6C50646572616873;
      v7 = 0x656C62617961;
LABEL_6:
      v6 = v7 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v5 = 0x4D77656976657270;
      v6 = 0xEF61746164617465;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6157646572616873;
      v2 = 0xED00006449686374;
      break;
    case 2:
      v3 = 0x6157646572616873;
      v8 = 0x6C7255686374;
      goto LABEL_12;
    case 3:
      v3 = 0x6C50646572616873;
      v8 = 0x656C62617961;
LABEL_12:
      v2 = v8 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      break;
    case 4:
      v3 = 0x4D77656976657270;
      v2 = 0xEF61746164617465;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1E42079A4();
  }

  return v10 & 1;
}

uint64_t sub_1E39CD3CC(char a1)
{
  sub_1E4207B44();
  sub_1E39CD11C(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E39CD438()
{
  sub_1E4206014();
}

uint64_t sub_1E39CD534(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E39CD11C(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E39CD594@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CD0D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CD5C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39CD11C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E39CD5F8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E39CD0D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E39CD62C(uint64_t a1)
{
  v2 = sub_1E39CCA8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E39CD668(uint64_t a1)
{
  v2 = sub_1E39CCA8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E39CD6BC()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E3286A7C;

  return sub_1E39CD754();
}

uint64_t sub_1E39CD754()
{
  OUTLINED_FUNCTION_24();
  v1[28] = v2;
  v1[29] = v0;
  v3 = sub_1E41FFCB4();
  v1[30] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v1[31] = v4;
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v5 = sub_1E41FF2F4();
  OUTLINED_FUNCTION_17_2(v5);
  v1[37] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v7 = sub_1E41FF374();
  v1[41] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v1[42] = v8;
  v1[43] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E39CD8F8()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF364();
  v1 = swift_task_alloc();
  *(v0 + 352) = v1;
  *v1 = v0;
  v1[1] = sub_1E39CD988;

  return sub_1E39CECA0();
}

uint64_t sub_1E39CD988()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 448) = v0;

  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E39CDA78()
{
  v113 = v0;
  v1 = *(v0 + 232);
  v2 = OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_previewMetadata;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = sub_1E32868C0(v3, &selRef_title);
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  MEMORY[0x1E6909CA0](v4, v5);
  v6 = *(v1 + v2);
  if (v6 && (v7 = [v6 subtitleWithSeasonTitlesEnabled_]) != 0)
  {
    v8 = v7;
    v9 = sub_1E4205F14();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  MEMORY[0x1E6909CB0](v9, v11);
  v12 = *(v1 + v2);
  if (v12)
  {
    v13 = [v12 fallbackUrl];
    if (v13)
    {
      v14 = v13;
      sub_1E41FE3C4();

      v15 = 0;
    }

    else
    {
      v15 = 1;
    }

    v20 = *(v0 + 312);
    v21 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v20, v15, 1, v21);
    v22 = OUTLINED_FUNCTION_13_8();
    sub_1E329E454(v22, v23, v24);
  }

  else
  {
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  }

  sub_1E41FF304();
  sub_1E41FF2E4();
  sub_1E41FF334();
  sub_1E41FF324();
  v25 = *(v1 + v2);
  if (!v25)
  {
    goto LABEL_32;
  }

  v26 = [v25 imageProxy];
  *(v0 + 360) = v26;
  if (v26)
  {
    v27 = v26;
    sub_1E324FBDC();
    v28 = OUTLINED_FUNCTION_37_23();
    v29(v28);
    v30 = sub_1E41FFC94();
    v31 = sub_1E4206814();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = OUTLINED_FUNCTION_125_0();
      *v32 = 0;
      _os_log_impl(&dword_1E323F000, v30, v31, "GroupWatchActivity:: loading library artwork from image proxy", v32, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v33 = OUTLINED_FUNCTION_35_5();
    v34(v33);
    v35 = swift_task_alloc();
    *(v0 + 368) = v35;
    *(v35 + 16) = v27;
    v36 = swift_task_alloc();
    *(v0 + 376) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30168);
    *v36 = v0;
    v36[1] = sub_1E39CE314;
    OUTLINED_FUNCTION_169();
    OUTLINED_FUNCTION_41_12();

    return MEMORY[0x1EEE6DDE0](v37, v38, v39, v40, v41, v42, v43, v44);
  }

  v46 = *(v1 + v2);
  if (!v46)
  {
    goto LABEL_32;
  }

  if ([v46 artworkImage])
  {
    sub_1E324FBDC();
    v47 = OUTLINED_FUNCTION_37_23();
    v48(v47);
    v49 = sub_1E41FFC94();
    v50 = sub_1E4206814();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = OUTLINED_FUNCTION_125_0();
      *v51 = 0;
      _os_log_impl(&dword_1E323F000, v49, v50, "GroupWatchActivity:: using artwork image from macOS library", v51, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    v52 = *(v0 + 344);

    v53 = OUTLINED_FUNCTION_35_5();
    v54(v53);
    sub_1E41FF314();
    goto LABEL_35;
  }

  v55 = *(v1 + v2);
  if (!v55 || (v56 = sub_1E32868C0(v55, &selRef_imageUrlFormat), !v57))
  {
LABEL_32:
    sub_1E324FBDC();
    v88 = OUTLINED_FUNCTION_22_34();
    v89(v88);
    v52 = sub_1E41FFC94();
    v90 = sub_1E4206814();
    if (os_log_type_enabled(v52, v90))
    {
      v91 = OUTLINED_FUNCTION_125_0();
      *v91 = 0;
      _os_log_impl(&dword_1E323F000, v52, v90, "GroupWatchActivity:: missing imageUrlFormat, not loading artwork", v91, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    v92 = OUTLINED_FUNCTION_27_0();
    v93(v92);
LABEL_35:
    OUTLINED_FUNCTION_1_109();
    (*(v94 + 32))(*(v0 + 224), v52);

    OUTLINED_FUNCTION_54();
    OUTLINED_FUNCTION_41_12();

    __asm { BRAA            X1, X16 }
  }

  v58 = *(v0 + 272);
  v59 = *(v0 + 248);
  v111 = *(v0 + 240);
  *(v0 + 72) = v56;
  *(v0 + 80) = v57;
  *(v0 + 88) = 8222587;
  *(v0 + 96) = 0xE300000000000000;
  *(v0 + 104) = 3158067;
  *(v0 + 112) = 0xE300000000000000;
  v60 = sub_1E32822E0();
  v61 = MEMORY[0x1E69E6158];
  v62 = OUTLINED_FUNCTION_10_59();
  v64 = v63;

  *(v0 + 120) = v62;
  *(v0 + 128) = v64;
  *(v0 + 136) = 8218747;
  *(v0 + 144) = 0xE300000000000000;
  *(v0 + 152) = 3683889;
  *(v0 + 160) = 0xE300000000000000;
  v65 = OUTLINED_FUNCTION_10_59();
  v67 = v66;

  *(v0 + 168) = v65;
  *(v0 + 176) = v67;
  *(v0 + 184) = 8218235;
  *(v0 + 192) = 0xE300000000000000;
  *(v0 + 200) = 6778986;
  *(v0 + 208) = 0xE300000000000000;
  v109 = v60;
  v110 = v60;
  v107 = v61;
  v108 = v60;
  v68 = OUTLINED_FUNCTION_10_59();
  v70 = v69;

  v71 = sub_1E324FBDC();
  *(v0 + 384) = v71;
  v72 = *(v59 + 16);
  *(v0 + 392) = v72;
  *(v0 + 400) = (v59 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v72(v58, v71, v111);
  v73 = sub_1E41FFC94();
  v74 = sub_1E42067E4();

  v75 = os_log_type_enabled(v73, v74);
  v76 = *(v0 + 272);
  v77 = *(v0 + 240);
  v78 = *(v0 + 248);
  if (v75)
  {
    v79 = OUTLINED_FUNCTION_6_21();
    v80 = swift_slowAlloc();
    v112 = v80;
    *v79 = 136315138;
    *(v79 + 4) = sub_1E3270FC8(v68, v70, &v112);
    _os_log_impl(&dword_1E323F000, v73, v74, "GroupWatchActivity:: loading library artwork with image URL %s", v79, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v80);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v81 = *(v78 + 8);
  v81(v76, v77);
  *(v0 + 408) = v81;
  sub_1E41FE404();

  v82 = sub_1E41FE414();
  OUTLINED_FUNCTION_34_8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v83, v84, v85);
  v87 = *(v0 + 304);
  if (EnumTagSinglePayload == 1)
  {
    sub_1E325F6F0(*(v0 + 304), &unk_1ECF363C0);
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
  }

  else
  {
    *(v0 + 40) = v82;
    __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    OUTLINED_FUNCTION_37_1();
    (*(v97 + 32))(v98, v87, v82, v99);
  }

  v100 = [objc_opt_self() sharedInstance];
  v101 = objc_allocWithZone(MEMORY[0x1E69DF730]);
  v102 = sub_1E38B2064((v0 + 16), v100, 0);
  *(v0 + 416) = v102;
  if (!v102)
  {
    v52 = *(v0 + 344);
    v105 = [0 image];
    sub_1E41FF314();

    goto LABEL_35;
  }

  v103 = swift_task_alloc();
  *(v0 + 424) = v103;
  *v103 = v0;
  v103[1] = sub_1E39CE4E8;
  OUTLINED_FUNCTION_41_12();

  return sub_1E38B2558();
}

uint64_t sub_1E39CE314()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CE414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 360);
  sub_1E41FF314();

  OUTLINED_FUNCTION_1_109();
  v14 = OUTLINED_FUNCTION_16_54();
  v15(v14);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10, a11, a12);
}

uint64_t sub_1E39CE4E8(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 432) = v1;

  if (!v1)
  {
    *(v5 + 440) = a1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39CE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 440);
  v14 = *(v12 + 416);
  v15 = [v13 image];
  sub_1E41FF314();

  OUTLINED_FUNCTION_1_109();
  v16 = OUTLINED_FUNCTION_16_54();
  v17(v16);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1E39CE6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_60_7();
  v13 = *(v12 + 432);
  (*(v12 + 392))(*(v12 + 256), *(v12 + 384), *(v12 + 240));
  v14 = v13;
  v15 = sub_1E41FFC94();
  v16 = sub_1E42067F4();

  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v12 + 432);
  v19 = *(v12 + 416);
  if (v17)
  {
    v20 = *(v12 + 416);
    v21 = OUTLINED_FUNCTION_6_21();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v18;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_1E323F000, v15, v16, "GroupWatchActivity:: Failed to create metadata image: %@", v21, 0xCu);
    sub_1E325F6F0(v22, &unk_1ECF28E30);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_65_0();
    v19 = v15;
    v15 = v20;
  }

  (*(v12 + 408))(*(v12 + 256), *(v12 + 240));
  OUTLINED_FUNCTION_1_109();
  v25 = OUTLINED_FUNCTION_16_54();
  v26(v25);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_68_2();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
}

uint64_t sub_1E39CE8CC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E39CC1FC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1E39CE91C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = OUTLINED_FUNCTION_34();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v12);
  OUTLINED_FUNCTION_17_2(v13);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v26 - v15;
  sub_1E3294EE4(v1 + OBJC_IVAR____TtC8VideosUI18GroupWatchActivity_identifier, v26 - v15, &qword_1ECF29408);
  v17 = sub_1E41FE624();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1E325F6F0(v16, &qword_1ECF29408);
  }

  else
  {
    MEMORY[0x1E6908F50]();
    OUTLINED_FUNCTION_37_1();
    (*(v18 + 8))(v16, v17);
  }

  v19 = sub_1E39CB410();
  if (v20)
  {
    v21 = v19;
    v22 = v20;
  }

  else
  {
    sub_1E39CB5B0();
    if (__swift_getEnumTagSinglePayload(v11, 1, v2))
    {
      v21 = 7104878;
      sub_1E325F6F0(v11, &unk_1ECF363C0);
      v22 = 0xE300000000000000;
    }

    else
    {
      (*(v4 + 16))(v7, v11, v2);
      sub_1E325F6F0(v11, &unk_1ECF363C0);
      v21 = sub_1E41FE314();
      v22 = v23;
      (*(v4 + 8))(v7, v2);
    }
  }

  v26[2] = 0;
  v26[3] = 0xE000000000000000;
  sub_1E42074B4();
  MEMORY[0x1E69109E0](60, 0xE100000000000000);
  v24 = sub_1E4207CE4();
  MEMORY[0x1E69109E0](v24);

  MEMORY[0x1E69109E0](8250, 0xE200000000000000);
  v26[1] = v1;
  sub_1E4207614();
  MEMORY[0x1E69109E0](0x203A6469203ELL, 0xE600000000000000);
  v25 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v25);

  MEMORY[0x1E69109E0](0xD000000000000010, 0x80000001E426A990);
  MEMORY[0x1E69109E0](v21, v22);

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39CECA0()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[4] = v1;
  OUTLINED_FUNCTION_8_0(v1);
  v0[5] = v2;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CED54()
{
  if (TVAppFeature.isEnabled.getter(12))
  {
    v1 = type metadata accessor for VUIUTSNetworkManagerProxy();
    v2 = OUTLINED_FUNCTION_18();
    v12 = (*(v1 + 96) + **(v1 + 96));
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_1E39CEF34;

    return v12(v2 & 1);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_1E39CF2A8;
    OUTLINED_FUNCTION_169();

    return MEMORY[0x1EEE6DDE0](v6, v7, v8, 0xD000000000000017, v9, v10, 0, v11);
  }
}

uint64_t sub_1E39CEF34(uint64_t a1)
{
  OUTLINED_FUNCTION_39();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  *(v5 + 72) = v1;

  if (!v1)
  {
    *(v5 + 80) = a1;
  }

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1E39CF04C()
{
  v22 = v0;
  v1 = *(v0 + 80);
  v2 = [v1 data];

  sub_1E41FE464();
  OUTLINED_FUNCTION_35_5();
  v3 = sub_1E41FE434();
  v4 = OUTLINED_FUNCTION_35_5();
  sub_1E38DCCB0(v4, v5);
  if (v3)
  {
    sub_1E3280A90(0, &qword_1ECF30188);
    sub_1E3744600(v3);

    v6 = sub_1E37766C4();
    v7 = [v6 features];
    sub_1E3280A90(0, &qword_1EE23ADD0);
    v8 = sub_1E4205C64();

    v9 = sub_1E4205F14();
    v11 = sub_1E378A81C(v9, v10, v8);

    if (v11)
    {
      v21 = 2;
      MEMORY[0x1E6910D00](v11, &v21);

      LOBYTE(v11) = v21;
    }

    else
    {
    }
  }

  else
  {
    sub_1E324FBDC();
    v12 = OUTLINED_FUNCTION_22_34();
    v13(v12);
    v14 = sub_1E41FFC94();
    v15 = sub_1E42067F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = OUTLINED_FUNCTION_125_0();
      *v16 = 0;
      _os_log_impl(&dword_1E323F000, v14, v15, "GroupWatchActivity:: configuration response is not valid", v16, 2u);
      OUTLINED_FUNCTION_21_0();
    }

    v17 = OUTLINED_FUNCTION_27_0();
    v18(v17);
    LOBYTE(v11) = 0;
  }

  v19 = *(v0 + 8);

  return v19(v11 & 1);
}

uint64_t sub_1E39CF2A8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1E39CF38C()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E39CF3F8()
{
  *(v0 + 16) = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  sub_1E3280A90(0, &qword_1ECF30180);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = *(v0 + 24);
    sub_1E324FBDC();
    v3 = OUTLINED_FUNCTION_22_34();
    v4(v3);
    v5 = v2;
    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      *(v8 + 4) = v5;
      *v9 = v5;
      v10 = v5;
      _os_log_impl(&dword_1E323F000, v6, v7, "GroupWatchActivity:: error occurred when fetching configuration response%@", v8, 0xCu);
      sub_1E325F6F0(v9, &unk_1ECF28E30);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_21_0();
    }

    else
    {
      v10 = v6;
      v6 = v5;
    }

    v12 = *(v0 + 40);
    v11 = *(v0 + 48);
    v13 = *(v0 + 32);

    (*(v12 + 8))(v11, v13);

    v14 = *(v0 + 8);

    return v14(0);
  }

  return result;
}

id sub_1E39CF5E4(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30178);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &aBlock[-v9];
  (*(v6 + 16))(&aBlock[-v9], a1, v4, v8);
  v11 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v12 = swift_allocObject();
  (*(v6 + 32))(v12 + v11, v10, v4);
  v19 = sub_1E39CFEE0;
  v20 = v12;
  OUTLINED_FUNCTION_11_66();
  v16 = 1107296256;
  v17 = sub_1E38B2C5C;
  v18 = &block_descriptor_38;
  v13 = _Block_copy(aBlock);

  [a2 setCompletionHandler_];
  _Block_release(v13);
  return [a2 load];
}

void sub_1E39CF780(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &aBlock[-v6];
  v8 = [objc_opt_self() sharedInstance];
  (*(v4 + 16))(v7, a1, v2);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v7, v2);
  v16 = sub_1E39D000C;
  v17 = v10;
  OUTLINED_FUNCTION_11_66();
  v13 = 1107296256;
  v14 = sub_1E39CF930;
  v15 = &block_descriptor_19_0;
  v11 = _Block_copy(aBlock);

  [v8 fetchConfigurationWithCompletionHandler_];
  _Block_release(v11);
}

void sub_1E39CF930(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

unint64_t sub_1E39CF9E0()
{
  result = qword_1ECF30128;
  if (!qword_1ECF30128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF29408);
    sub_1E32AA268(&qword_1ECF30130, MEMORY[0x1E69695A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30128);
  }

  return result;
}

unint64_t sub_1E39CFA94()
{
  result = qword_1ECF30138;
  if (!qword_1ECF30138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30138);
  }

  return result;
}

unint64_t sub_1E39CFB10()
{
  result = qword_1ECF30140;
  if (!qword_1ECF30140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF363C0);
    sub_1E32AA268(&qword_1ECF30148, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30140);
  }

  return result;
}

unint64_t sub_1E39CFBC4()
{
  result = qword_1ECF30158;
  if (!qword_1ECF30158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF30150);
    sub_1E39CFC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30158);
  }

  return result;
}

unint64_t sub_1E39CFC48()
{
  result = qword_1ECF30160;
  if (!qword_1ECF30160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30160);
  }

  return result;
}

void type metadata accessor for CGImage()
{
  if (!qword_1ECF30170)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF30170);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for GroupWatchActivity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E39CFDDC()
{
  result = qword_1ECF51A30[0];
  if (!qword_1ECF51A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51A30);
  }

  return result;
}

unint64_t sub_1E39CFE34()
{
  result = qword_1ECF51B40;
  if (!qword_1ECF51B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF51B40);
  }

  return result;
}

unint64_t sub_1E39CFE8C()
{
  result = qword_1ECF51B48[0];
  if (!qword_1ECF51B48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF51B48);
  }

  return result;
}

uint64_t sub_1E39CFEE0(void *a1)
{
  v2 = OUTLINED_FUNCTION_34();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_17_2(v3);
  [a1 image];
  v4 = OUTLINED_FUNCTION_34();
  __swift_instantiateConcreteTypeFromMangledNameV2(v4);
  return sub_1E42063D4();
}

uint64_t objectdestroyTm_18(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1E39D000C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  OUTLINED_FUNCTION_17_2(v4);
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  }

  else
  {
    v5 = [a1 features];
    sub_1E3280A90(0, &qword_1EE23ADD0);
    v6 = sub_1E4205C64();

    v7 = sub_1E4205F14();
    v9 = sub_1E378A81C(v7, v8, v6);

    if (v9)
    {
      v12[0] = 2;
      MEMORY[0x1E6910D00](v9, v12);

      v10 = v12[0];
    }

    else
    {
      v10 = 0;
    }

    v12[1] = v10 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30190);
  }

  return sub_1E42063D4();
}

uint64_t sub_1E39D01A4()
{
  type metadata accessor for RecentlySearchedDataManager();
  v0 = swift_allocObject();
  result = sub_1E39D0C54();
  qword_1EE2AAAE0 = v0;
  return result;
}

uint64_t sub_1E39D01E4()
{
  v0 = swift_allocObject();
  sub_1E39D0C54();
  return v0;
}

uint64_t *sub_1E39D021C()
{
  if (qword_1EE2948D0 != -1)
  {
    OUTLINED_FUNCTION_17_52();
  }

  return &qword_1EE2AAAE0;
}

unint64_t sub_1E39D025C(unint64_t a1, unint64_t a2)
{
  v2 = a1;
  if (!a2)
  {
    return v2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  v7 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v8 = 15;
  for (i = 5381; ; i = 127 * (i & 0xFFFFFFFFFFFFFFLL) + v12)
  {
    if (4 * v4 == v8 >> 14)
    {
      v20[0] = i;
      return sub_1E4207944();
    }

    result = v8;
    if ((v8 & 0xC) == v6)
    {
      v13 = OUTLINED_FUNCTION_32_36();
      result = sub_1E3780B3C(v13, v14, v15);
    }

    v11 = result >> 16;
    if (result >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1E42060F4();
      v12 = result;
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v20[0] = v2;
      v20[1] = v19;
      v12 = *(v20 + v11);
    }

    else
    {
      result = v7;
      if ((v2 & 0x1000000000000000) == 0)
      {
        result = sub_1E4207524();
      }

      v12 = *(result + v11);
    }

    if ((v8 & 0xC) == v6)
    {
      v16 = OUTLINED_FUNCTION_32_36();
      result = sub_1E3780B3C(v16, v17, v18);
      v8 = result;
      if ((a2 & 0x1000000000000000) == 0)
      {
LABEL_20:
        v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
        continue;
      }
    }

    else if ((a2 & 0x1000000000000000) == 0)
    {
      goto LABEL_20;
    }

    if (v4 <= v8 >> 16)
    {
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_32_36();
    v8 = sub_1E42060C4();
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1E39D03EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_77();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E39D045C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1E39D04F0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void (*sub_1E39D0560(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v2;
  v2[4] = swift_getKeyPath();
  v2[5] = swift_getKeyPath();
  v2[6] = sub_1E4200664();
  return sub_1E3844B40;
}

uint64_t sub_1E39D05F0()
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E39D0660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A0);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_77();
  v6();
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

void (*sub_1E39D0778(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[3] = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A0);
  v3[4] = v4;
  v5 = *(v4 - 8);
  v3[5] = v5;
  v6 = *(v5 + 64);
  v3[6] = __swift_coroFrameAllocStub(v6);
  v3[7] = __swift_coroFrameAllocStub(v6);
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198);
  sub_1E4200644();
  swift_endAccess();
  return sub_1E39D0898;
}

void sub_1E39D0898(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  if (a2)
  {
    v5 = v2[4];
    v6 = v2[5];
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    sub_1E39D0660(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_1E39D0660(*(*a1 + 56));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t (*sub_1E39D094C())()
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E39D09A8()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E39D09DC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = a1;
}

uint64_t (*sub_1E39D0A1C())()
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1E39D0A68()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
}

uint64_t sub_1E39D0A9C(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = a1;
}

uint64_t (*sub_1E39D0ADC())()
{
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1E39D0B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_5_10();
  v6 = swift_allocObject();
  sub_1E39D0B7C(a1, a2, a3);
  return v6;
}

void *sub_1E39D0B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  v3[2] = 0;
  OUTLINED_FUNCTION_3_0();
  v3[2] = a1;
  OUTLINED_FUNCTION_3_0();
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

uint64_t sub_1E39D0BF4()
{

  return v0;
}

uint64_t sub_1E39D0C24()
{
  sub_1E39D0BF4();
  OUTLINED_FUNCTION_5_10();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39D0C54()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_42_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager__event;
  sub_1E4200634();
  (*(v6 + 32))(v0 + v8, v1, v4);
  v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager;
  v10 = [objc_opt_self() defaultManager];
  *(v0 + v9) = v10;
  v11 = sub_1E41FE414();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_cacheCapacity) = 10;
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable) = MEMORY[0x1E69E7CC8];
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = 0;
  v18 = [v10 URLsForDirectory:9 inDomains:1];
  v19 = sub_1E42062B4();

  sub_1E39D0EE8(v19, v0);

  v20 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  sub_1E38DAEEC(v0, v0 + v20);
  if (!__swift_getEnumTagSinglePayload(v0 + v20, 1, v11))
  {
    sub_1E41FE374();
  }

  swift_endAccess();
  OUTLINED_FUNCTION_111();
  (*(v21 + 320))();
  sub_1E39D0F90();
  return v0;
}

uint64_t sub_1E39D0EE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_1E41FE414();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

void sub_1E39D0F90()
{
  v2 = &unk_1E42A9420;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  v5 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v5, v1);
  v6 = sub_1E41FE414();
  LODWORD(v5) = __swift_getEnumTagSinglePayload(v1, 1, v6);
  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v7, v8);
  if (v5 == 1)
  {
    sub_1E39D4B10();
  }

  else
  {
    sub_1E39D51F0();
    v9 = [objc_opt_self() DSID];
    v10 = v9;
    if (v9)
    {
      v2 = [v9 stringValue];

      v10 = sub_1E4205F14();
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    type metadata accessor for RecentlySearchedDataManager();
    sub_1E39D025C(v10, v12);
    OUTLINED_FUNCTION_65_1();

    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E4297BE0;
      *(inited + 32) = v10;
      *(inited + 40) = v2;
      sub_1E32772D8(inited);
    }

    sub_1E39D4B10();
  }
}

void sub_1E39D1140()
{
  sub_1E39D1168();

  sub_1E39D1468();
}

uint64_t sub_1E39D1168()
{
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-v8 - 8];
  v10 = [objc_opt_self() DSID];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 stringValue];

    v11 = sub_1E4205F14();
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  type metadata accessor for RecentlySearchedDataManager();
  sub_1E39D025C(v11, v14);
  v16 = v15;

  if (v16)
  {
    v17 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B2468(v0 + v17, v9);
    v18 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    sub_1E38DAEEC(v9, v1 + v18);
    swift_endAccess();
    v19 = sub_1E39D094C();
    v21 = v20;
    v22 = sub_1E41FE414();
    if (!__swift_getEnumTagSinglePayload(v21, 1, v22))
    {
      sub_1E41FE384();
    }

    return (v19)(v36, 0);
  }

  else
  {
    v24 = sub_1E324FBDC();
    (*(v4 + 16))(v0, v24, v2);
    v25 = sub_1E41FFC94();
    v26 = sub_1E42067D4();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_18_46();
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1E323F000, v25, v26, "createSearchHistoryDirectory clearing fileURL", v27, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    v28 = OUTLINED_FUNCTION_63_0();
    v29(v28);
    sub_1E41FE414();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
    v34 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    sub_1E38DAEEC(v9, v1 + v34);
    return swift_endAccess();
  }
}

void sub_1E39D1468()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v11);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_42_1();
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v0 + v20, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v13) == 1)
  {
    sub_1E325F7A8(v0, &unk_1ECF363C0);
  }

  else
  {
    v36[2] = v7;
    (*(v15 + 32))(v19, v0, v13);
    v21 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
    sub_1E41FE3E4();
    v22 = sub_1E4205ED4();

    v23 = [v21 fileExistsAtPath_];

    if (v23)
    {
      sub_1E39D45D0();
      (*(v15 + 8))(v19, v13);
      goto LABEL_9;
    }

    (*(v15 + 8))(v19, v13);
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  v24(v10);
  v25 = sub_1E41FFC94();
  sub_1E42067D4();
  v26 = OUTLINED_FUNCTION_33_32();
  if (os_log_type_enabled(v26, v27))
  {
    OUTLINED_FUNCTION_18_46();
    v28 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_10(v28);
    OUTLINED_FUNCTION_35_27();
    _os_log_impl(v29, v30, v31, v32, v33, v34);
    v35 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v35);
  }

  (*(v3 + 8))(v10, v1);
LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D1890()
{
  OUTLINED_FUNCTION_31_1();
  v288 = sub_1E39D571C();
  ViewModelKeys.rawValue.getter(7);
  OUTLINED_FUNCTION_65_1();
  v0 = MEMORY[0x1E69E6158];
  v1 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v1, v2);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_10_60(isUniquelyReferenced_nonNull_native, v5, v6, isUniquelyReferenced_nonNull_native, v7, v8, v9, v10, v253, v255, v257, v259, v263, v266, v269, v272, v273, v276, v277, v279, v282, v286, v288, v292, v295, v297, v299, v301, v303, v305, v307, v309, v311, v313, v315, v317, v319, v321, v323, v325, v327, v329, v331, v333, v335, v337, v339, v341, v3, v345, v347, v349, v351, v353, v355, v357, v359, v361, v363, v365, v367, v369, v371);

  ViewModelKeys.rawValue.getter(30);
  v12 = v11;
  v14 = v13;
  *(&v375 + 1) = v0;
  strcpy(&v374, "noreference");
  HIDWORD(v374) = -352321536;
  v15 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v15, v16);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v17, v12, v14);

  ViewModelKeys.rawValue.getter(8);
  v19 = v18;
  v21 = v20;
  v22 = *sub_1E3BA53F4();
  *(&v375 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
  *&v374 = v22;
  v23 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v23, v24);

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v25, v19, v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
  inited = swift_initStackObject();
  v274 = xmmword_1E4297BD0;
  *(inited + 16) = xmmword_1E4297BD0;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v27;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v28;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v29;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v30;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v31;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v32;
  v33 = sub_1E4205CB4();
  v34 = [objc_allocWithZone(VUILocalizationManager) init];
  v35 = sub_1E3741090(0xD00000000000001DLL, 0x80000001E426ABA0, v34);
  v37 = v36;

  v38 = [objc_allocWithZone(VUILocalizationManager) init];
  v39 = sub_1E3741090(0xD000000000000024, 0x80000001E426ABC0, v38);
  v41 = v40;

  if ([objc_opt_self() isVision] && !*(v289 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v250 = swift_allocObject();
    *(v250 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(23);
    *(v250 + 32) = v251;
    *(v250 + 40) = v252;
    *(v250 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    *(v250 + 48) = v35;
    *(v250 + 56) = v37;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_1E4299720;
    sub_1E384EE08(23);
    *(v42 + 32) = v43;
    *(v42 + 40) = v44;
    *(v42 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960);
    *(v42 + 48) = v35;
    *(v42 + 56) = v37;
    sub_1E384EE08(60);
    *(v42 + 80) = v45;
    *(v42 + 88) = v46;
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_1E4299720;
    ViewModelKeys.rawValue.getter(13);
    *(v47 + 32) = v48;
    *(v47 + 40) = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E0);
    OUTLINED_FUNCTION_5_10();
    v50 = swift_allocObject();
    v287 = 2;
    *(v50 + 16) = xmmword_1E4297BE0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301E8);
    v51 = swift_initStackObject();
    *(v51 + 16) = xmmword_1E4297BE0;
    sub_1E384EE08(23);
    *(v51 + 32) = v52;
    *(v51 + 40) = v53;
    *(v51 + 48) = v39;
    *(v51 + 56) = v41;
    *(v50 + 32) = sub_1E4205CB4();
    *(v47 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F0);
    *(v47 + 48) = v50;
    ViewModelKeys.rawValue.getter(8);
    *(v47 + 80) = v54;
    *(v47 + 88) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_1E4297BD0;
    *(v56 + 32) = sub_1E3BA363C(0);
    *(v56 + 40) = v57;
    *(v56 + 48) = v33;
    *(v56 + 56) = sub_1E3BA363C(1);
    *(v56 + 64) = v58;
    v59 = sub_1E3BA5480();
    *(v56 + 72) = *v59;

    *(v56 + 80) = sub_1E3BA363C(2);
    *(v56 + 88) = v60;
    *(v56 + 96) = *v59;

    OUTLINED_FUNCTION_142_0();
    v61 = sub_1E4205CB4();
    *(v47 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F768);
    *(v47 + 96) = v61;
    v62 = sub_1E4205CB4();
    *(v42 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
    *(v42 + 96) = v62;
  }

  v63 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(24);
  v65 = v64;
  v67 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301F8);
  v68 = swift_allocObject();
  v270 = xmmword_1E4297BE0;
  *(v68 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(143);
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1E4297BE0;
  ViewModelKeys.rawValue.getter(13);
  *(v71 + 32) = v72;
  *(v71 + 40) = v73;
  *(v71 + 48) = v63;
  v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  *(v68 + 48) = sub_1E4205CB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FDF0);
  OUTLINED_FUNCTION_142_0();
  v74 = sub_1E4205CB4();
  *(&v375 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30200);
  *&v374 = v74;
  v75 = OUTLINED_FUNCTION_8_59();
  sub_1E329504C(v75, v76);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_2_83();
  sub_1E32A87C0(v77, v65, v67);

  v283 = v343;
  ViewModelKeys.rawValue.getter(13);
  v264 = v78;
  v267 = v79;
  v258 = 0;
  LODWORD(v260) = 0;
  v80 = 0;
  v81 = *(v289 + 16);
  v82 = (v289 + 32);
  v293 = -1;
  while (2)
  {
    while (2)
    {
      for (i = v80; ; ++i)
      {
        if (v81 == i)
        {
          if (v293 == -1)
          {
            v161 = MEMORY[0x1E69E7CC0];
            v157 = MEMORY[0x1E69E7CC8];
            v146 = MEMORY[0x1E69E6158];
          }

          else
          {
            v146 = MEMORY[0x1E69E6158];
            if (v293 >= v81)
            {
LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
              goto LABEL_99;
            }

            ViewModelKeys.rawValue.getter(7);
            v148 = v147;
            v150 = v149;
            *(&v375 + 1) = v146;
            strcpy(&v374, "prototypeCell");
            HIWORD(v374) = -4864;
            v151 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v151, v152);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v153, v148, v150);

            v154 = sub_1E39D5828();
            sub_1E384EE08(v154);
            OUTLINED_FUNCTION_65_1();
            *(&v375 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            *&v374 = v343;
            v155 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v155, v156);
            v157 = MEMORY[0x1E69E7CC8];
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_5_85();
            OUTLINED_FUNCTION_77();
            sub_1E32A87C0(v158, v159, v160);

            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
            OUTLINED_FUNCTION_5_10();
            v161 = swift_allocObject();
            *(v161 + 16) = v270;
            *(v161 + 32) = v343;
          }

          v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
          *(&v375 + 1) = v261;
          *&v374 = v161;
          v162 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v162, v163);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_85();
          sub_1E32A87C0(v164, v264, v267);

          ViewModelKeys.rawValue.getter(26);
          OUTLINED_FUNCTION_65_1();
          *(&v375 + 1) = v280;
          *&v374 = v343;
          v165 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v165, v166);
          v167 = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_10_60(v167, v168, v169, v167, v170, v171, v172, v173, v254, v256, v258, v261, v264, v267, v270, *(&v270 + 1), v274, *(&v274 + 1), v278, v280, v283, v287, v289, v293, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v283, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372);

          v174 = v344;
          ViewModelKeys.rawValue.getter(7);
          OUTLINED_FUNCTION_65_1();
          *(&v375 + 1) = v146;
          *&v374 = 0xD00000000000001ALL;
          *(&v374 + 1) = 0x80000001E426AA90;
          v175 = OUTLINED_FUNCTION_8_59();
          sub_1E329504C(v175, v176);
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_5_85();
          OUTLINED_FUNCTION_77();
          sub_1E32A87C0(v177, v178, v179);

          ViewModelKeys.rawValue.getter(13);
          v265 = v180;
          v268 = v181;
          v284 = sub_1E39D5828();
          v182 = *(v290 + 16);
          if (!v182)
          {
            v183 = MEMORY[0x1E69E7CC0];
LABEL_84:
            *(&v375 + 1) = v262;
            *&v374 = v183;
            v210 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v210, v211);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v212, v265, v268);

            ViewModelKeys.rawValue.getter(28);
            OUTLINED_FUNCTION_65_1();
            *(&v375 + 1) = v281;
            *&v374 = v344;
            v213 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v213, v214);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_5_85();
            OUTLINED_FUNCTION_77();
            sub_1E32A87C0(v215, v216, v217);

            v218 = *(v290 + 16);

            if (v218)
            {
              ViewModelKeys.rawValue.getter(27);
              v220 = v219;
              v222 = v221;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0);
              OUTLINED_FUNCTION_5_10();
              v223 = swift_allocObject();
              *(v223 + 16) = v271;
              *(v223 + 32) = v344;
              *(&v375 + 1) = v262;
              *&v374 = v223;
              v224 = OUTLINED_FUNCTION_8_59();
              sub_1E329504C(v224, v225);
              swift_isUniquelyReferenced_nonNull_native();
              v344 = v174;
              sub_1E32A87C0(v373, v220, v222);
            }

            else
            {
            }

            ViewModelKeys.rawValue.getter(8);
            v291 = v226;
            v285 = v227;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240);
            v228 = swift_initStackObject();
            *(v228 + 16) = xmmword_1E4299720;
            *(v228 + 32) = sub_1E3BA363C(2);
            *(v228 + 40) = v229;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EAF0);
            v230 = swift_initStackObject();
            *(v230 + 16) = v275;
            *(v230 + 32) = sub_1E4205F14();
            *(v230 + 40) = v231;
            *(v230 + 48) = 0xD000000000000011;
            *(v230 + 56) = 0x80000001E426ABF0;
            *(v230 + 64) = sub_1E4205F14();
            *(v230 + 72) = v232;
            *(v230 + 80) = 0x666C656853;
            *(v230 + 88) = 0xE500000000000000;
            *(v230 + 96) = sub_1E4205F14();
            *(v230 + 104) = v233;
            *(v230 + 112) = 0xD000000000000010;
            *(v230 + 120) = 0x80000001E426AC10;
            v234 = sub_1E4205CB4();
            v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770);
            *(v228 + 72) = v235;
            *(v228 + 48) = v234;
            *(v228 + 80) = sub_1E3BA363C(1);
            *(v228 + 88) = v236;
            v237 = swift_initStackObject();
            *(v237 + 16) = v275;
            *(v237 + 32) = sub_1E4205F14();
            *(v237 + 40) = v238;
            *(v237 + 48) = 0xD000000000000011;
            *(v237 + 56) = 0x80000001E426ABF0;
            *(v237 + 64) = sub_1E4205F14();
            *(v237 + 72) = v239;
            *(v237 + 80) = 0x666C656853;
            *(v237 + 88) = 0xE500000000000000;
            *(v237 + 96) = sub_1E4205F14();
            *(v237 + 104) = v240;
            *(v237 + 112) = 0xD000000000000010;
            *(v237 + 120) = 0x80000001E426AC10;
            v241 = sub_1E4205CB4();
            *(v228 + 120) = v235;
            *(v228 + 96) = v241;
            OUTLINED_FUNCTION_63_0();
            v242 = sub_1E4205CB4();
            *(&v375 + 1) = v281;
            *&v374 = v242;
            v243 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v243, v244);
            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_2_83();
            sub_1E32A87C0(v245, v291, v285);

            sub_1E384EE08(134);
            v247 = v246;
            v249 = v248;
            *(&v375 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            *&v374 = v344;
            sub_1E3A7CD30(v247, v249, &v374, 0);
            OUTLINED_FUNCTION_12_1();

            __swift_destroy_boxed_opaque_existential_1(&v374);
            if (v247)
            {
              type metadata accessor for CollectionViewModel();
              if (!swift_dynamicCastClass())
              {
              }
            }

            OUTLINED_FUNCTION_25_2();
            return;
          }

          v183 = MEMORY[0x1E69E7CC0];
          v184 = v82;
          while (1)
          {
            v185 = v174;
            v294 = v184;
            v186 = *v184;

            sub_1E384EE08(v284);
            v188 = v187;
            v190 = v189;
            *(&v375 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
            *&v374 = v186;
            v191 = OUTLINED_FUNCTION_8_59();
            sub_1E329504C(v191, v192);
            swift_isUniquelyReferenced_nonNull_native();
            v344 = v157;
            v193 = OUTLINED_FUNCTION_142_0();
            v195 = sub_1E327D33C(v193, v194);
            if (__OFADD__(*(v157 + 16), (v196 & 1) == 0))
            {
              break;
            }

            v197 = v195;
            v198 = v196;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
            if (sub_1E4207644())
            {
              v199 = OUTLINED_FUNCTION_142_0();
              v201 = sub_1E327D33C(v199, v200);
              v157 = MEMORY[0x1E69E7CC8];
              if ((v198 & 1) != (v202 & 1))
              {
                goto LABEL_100;
              }

              v197 = v201;
            }

            else
            {
              v157 = MEMORY[0x1E69E7CC8];
            }

            if (v198)
            {
              v203 = (*(v344 + 56) + 32 * v197);
              __swift_destroy_boxed_opaque_existential_1(v203);
              sub_1E329504C(v373, v203);
            }

            else
            {
              OUTLINED_FUNCTION_50_15(v344 + 8 * (v197 >> 6));
              v205 = (v204 + 16 * v197);
              *v205 = v188;
              v205[1] = v190;
              sub_1E329504C(v373, (*(v344 + 56) + 32 * v197));
              v206 = *(v344 + 16);
              v119 = __OFADD__(v206, 1);
              v207 = v206 + 1;
              if (v119)
              {
                goto LABEL_95;
              }

              *(v344 + 16) = v207;
            }

            v174 = v185;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v183 = sub_1E39239C8(0, v183[2] + 1, 1, v183);
            }

            v209 = v183[2];
            v208 = v183[3];
            if (v209 >= v208 >> 1)
            {
              v183 = sub_1E39239C8((v208 > 1), v209 + 1, 1, v183);
            }

            v183[2] = v209 + 1;
            v183[v209 + 4] = v344;
            v184 = v294 + 1;
            if (!--v182)
            {
              goto LABEL_84;
            }
          }

LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (i >= v81)
        {
          __break(1u);
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        v80 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_93;
        }

        v84 = *(v289 + 8 * i + 32);

        ViewModelKeys.rawValue.getter(13);
        if (!*(v84 + 16))
        {

          goto LABEL_14;
        }

        v87 = sub_1E327D33C(v85, v86);
        v89 = v88;

        if (v89)
        {
          break;
        }

LABEL_14:

LABEL_15:
        ;
      }

      sub_1E328438C(*(v84 + 56) + 32 * v87, &v374);

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
      OUTLINED_FUNCTION_48_21(v90, v91, v92, v93, v94, v95, v96, v97, v254, v256, v258, v260, v264, v267, v270, *(&v270 + 1), v274, *(&v274 + 1), v278, v280, v283, v287, v289, v293, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v343, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372);
      if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
      {
        goto LABEL_15;
      }

      v98 = *&v373[0];
      sub_1E384EE08(23);
      OUTLINED_FUNCTION_42_28();
      if (!v100)
      {

        goto LABEL_21;
      }

      OUTLINED_FUNCTION_55_18(v99);
      OUTLINED_FUNCTION_25_40();
      if ((v87 & 1) == 0)
      {
LABEL_21:
        v256 = 0;
        goto LABEL_33;
      }

      v101 = sub_1E328438C(*(v98 + 56) + 32 * v84, v373);
      v109 = OUTLINED_FUNCTION_48_21(v101, v102, v103, v104, v105, v106, v107, v108, v254, v256, v258, v260, v264, v267, v270, *(&v270 + 1), v274, *(&v274 + 1), v278, v280, v283, v287, v289, v293, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v343, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372);
      sub_1E329504C(v109, v110);
      v111 = OUTLINED_FUNCTION_8_59();
      sub_1E328438C(v111, v112);
      if (swift_dynamicCast())
      {
        v256 = sub_1E4206024();
      }

      else
      {
        v256 = 0;
      }

      v113 = OUTLINED_FUNCTION_8_59();
      sub_1E328438C(v113, v114);
      if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
      {
        goto LABEL_32;
      }

      ViewModelKeys.rawValue.getter(14);
      if (!*(v343 + 16))
      {

        goto LABEL_31;
      }

      v254 = sub_1E327D33C(v115, v116);
      LOBYTE(v87) = v117;

      if ((v87 & 1) == 0)
      {
LABEL_31:

        goto LABEL_32;
      }

      sub_1E328438C(*(v343 + 56) + 32 * v254, v373);

      if ((swift_dynamicCast() & 1) == 0)
      {
LABEL_32:
        __swift_destroy_boxed_opaque_existential_1(&v374);
        goto LABEL_33;
      }

      v118 = sub_1E4206024();

      __swift_destroy_boxed_opaque_existential_1(&v374);
      v119 = __OFADD__(v256, v118);
      v256 += v118;
      if (v119)
      {
        goto LABEL_97;
      }

LABEL_33:
      sub_1E384EE08(15);
      OUTLINED_FUNCTION_42_28();
      if (v121)
      {
        OUTLINED_FUNCTION_55_18(v120);
        OUTLINED_FUNCTION_25_40();
        if (v87)
        {
          OUTLINED_FUNCTION_36_25();
          sub_1E325F7A8(&v374, &unk_1ECF296E0);
          v122 = v258;
          if ((v260 & 1) == 0)
          {
            v122 = 0;
          }

          v258 = v122;
          LODWORD(v260) = 1;
          goto LABEL_42;
        }
      }

      else
      {
      }

      v374 = 0u;
      v375 = 0u;
      sub_1E325F7A8(&v374, &unk_1ECF296E0);
      if (v260)
      {

        LODWORD(v260) = 1;
        continue;
      }

      break;
    }

    LODWORD(v260) = 0;
LABEL_42:
    sub_1E384EE08(39);
    OUTLINED_FUNCTION_42_28();
    if (!v124)
    {

      goto LABEL_49;
    }

    OUTLINED_FUNCTION_55_18(v123);
    OUTLINED_FUNCTION_25_40();
    if (v87)
    {
      v125 = OUTLINED_FUNCTION_36_25();
      OUTLINED_FUNCTION_48_21(v125, v126, v127, v128, v129, v130, v131, v132, v254, v256, v258, v260, v264, v267, v270, *(&v270 + 1), v274, *(&v274 + 1), v278, v280, v283, v287, v289, v293, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v343, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372);
      if (OUTLINED_FUNCTION_21_45())
      {

        v119 = __OFADD__(v256, 100);
        v256 += 100;
        if (v119)
        {
          goto LABEL_98;
        }
      }
    }

LABEL_49:
    sub_1E384EE08(41);
    OUTLINED_FUNCTION_42_28();
    if (!v134)
    {

      goto LABEL_55;
    }

    OUTLINED_FUNCTION_55_18(v133);
    OUTLINED_FUNCTION_25_40();
    if ((v87 & 1) == 0)
    {
LABEL_55:

      goto LABEL_56;
    }

    OUTLINED_FUNCTION_36_25();

    OUTLINED_FUNCTION_48_21(v135, v136, v137, v138, v139, v140, v141, v142, v254, v256, v258, v260, v264, v267, v270, *(&v270 + 1), v274, *(&v274 + 1), v278, v280, v283, v287, v289, v293, v296, v298, v300, v302, v304, v306, v308, v310, v312, v314, v316, v318, v320, v322, v324, v326, v328, v330, v332, v334, v336, v338, v340, v342, v343, v346, v348, v350, v352, v354, v356, v358, v360, v362, v364, v366, v368, v370, v372);
    if ((OUTLINED_FUNCTION_21_45() & 1) == 0)
    {
LABEL_56:
      v143 = v256;
      v144 = v258;
      goto LABEL_57;
    }

    v143 = v256 + 46;
    if (!__OFADD__(v256, 46))
    {
      v144 = v258;
LABEL_57:
      v145 = v293;
      if (v144 < v143)
      {
        v145 = i;
      }

      v293 = v145;
      if (v144 <= v143)
      {
        v144 = v143;
      }

      v258 = v144;
      continue;
    }

    break;
  }

LABEL_99:
  __break(1u);
LABEL_100:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E39D2B70()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v15 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v0 + v8, v7);
  v9 = sub_1E41FE414();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v9);
  sub_1E325F7A8(v7, &unk_1ECF363C0);
  if (EnumTagSinglePayload != 1)
  {
    v15[7] = v2;
    type metadata accessor for ViewModel();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301A8);
    if (swift_dynamicCast())
    {
      v11 = *(&v17 + 1);
      v12 = v18;
      __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
      v13 = (*(v12 + 8))(v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v16);
      if (v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v18 = 0;
      v16 = 0u;
      v17 = 0u;
      sub_1E325F7A8(&v16, &qword_1ECF301B0);
    }

LABEL_7:
    sub_1E39D2EF8();
    sub_1E39D3258();
    OUTLINED_FUNCTION_111();
    (*(v14 + 152))(1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D2EF8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v5 = v3[3];
  if (v5)
  {
    v6 = v3[2];
    v7 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
    OUTLINED_FUNCTION_9_61();
    swift_beginAccess();
    v8 = *(v0 + v7);

    v9 = sub_1E396E6C0(v6, v5, v8);

    if (v9)
    {
      v11 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);
      if (v11)
      {
        v12 = v9 == v11;
      }

      else
      {
        v12 = 0;
      }

      if (!v12)
      {
        sub_1E39D5F40(v9);
        sub_1E39D6120(v9);
      }
    }

    else
    {
      v26 = (*(*v3 + 672))(v10);
      type metadata accessor for RecentlySearchedDataManager.Node();
      OUTLINED_FUNCTION_5_10();
      v27 = swift_allocObject();
      sub_1E39D0B7C(0, 0, v26);
      if (*(*(v1 + v7) + 16) >= 0xAuLL)
      {
        v28 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode);
        if (v28)
        {
          v29 = *(v28 + 32);

          ViewModelKeys.rawValue.getter(7);
          sub_1E3277E60(v30, v31, v29, &v35);

          if (v36)
          {
            if (swift_dynamicCast())
            {
              sub_1E39D5F40(v28);
              OUTLINED_FUNCTION_23_2();
              swift_beginAccess();
              sub_1E39D6220(v32, v34);
              swift_endAccess();
            }
          }

          else
          {

            sub_1E325F7A8(&v35, &unk_1ECF296E0);
          }
        }
      }

      sub_1E39D6120(v27);
      OUTLINED_FUNCTION_23_2();
      swift_beginAccess();

      swift_isUniquelyReferenced_nonNull_native();
      v33 = *(v1 + v7);
      sub_1E39D62F8(v27, v6, v5);
      *(v1 + v7) = v33;
      swift_endAccess();
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v13(v0);
    v14 = sub_1E41FFC94();
    v15 = sub_1E4206814();
    if (os_log_type_enabled(v14, v15))
    {
      OUTLINED_FUNCTION_18_46();
      v16 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_10(v16);
      OUTLINED_FUNCTION_35_27();
      _os_log_impl(v17, v18, v19, v20, v21, v22);
      v23 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v23);
    }

    v24 = OUTLINED_FUNCTION_63_0();
    v25(v24);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39D3258()
{
  v66[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v63 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v64 = v6 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v58 - v13;
  v15 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_40_30();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v58 - v20;
  v22 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v22, v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1E325F7A8(v14, &unk_1ECF363C0);
    sub_1E39D68C8();
    OUTLINED_FUNCTION_206();
    *v23 = 2;
    return swift_willThrow();
  }

  v58[1] = v1;
  v59 = v2;
  v60 = v21;
  v61 = v17;
  v25 = (v17 + 32);
  v26 = *(v17 + 32);
  v26(v21, v14, v15);
  sub_1E39D571C();
  v27 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  v28 = sub_1E42062A4();

  v65[0] = 0;
  v29 = [v27 dataWithPropertyList:v28 format:100 options:0 error:v65];

  v30 = v65[0];
  if (v29)
  {
    v31 = sub_1E41FE464();
    v33 = v32;

    v34 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E38B2468(v34 + v0, v11);
    if (__swift_getEnumTagSinglePayload(v11, 1, v15) == 1)
    {
      (*(v61 + 8))(v60, v15);
      sub_1E38DCCB0(v31, v33);
      return sub_1E325F7A8(v11, &unk_1ECF363C0);
    }

    v58[0] = v33;
    v48 = v62;
    v26(v62, v11, v15);
    v49 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
    sub_1E41FE3E4();
    sub_1E4205ED4();
    OUTLINED_FUNCTION_122();

    v50 = [v49 fileExistsAtPath_];

    v25 = v60;
    v51 = v61;
    if (v50)
    {
      goto LABEL_12;
    }

    v52 = sub_1E41FE364();
    v66[0] = 0;
    v34 = [v49 createDirectoryAtURL:v52 withIntermediateDirectories:1 attributes:0 error:v66];

    if (v34)
    {
      v53 = v66[0];
LABEL_12:
      sub_1E41FE3E4();
      sub_1E4205ED4();
      OUTLINED_FUNCTION_122();

      v54 = v58[0];
      sub_1E39D6434(v34, v31, v58[0], 0, v49);
      sub_1E38DCCB0(v31, v54);

      v55 = *(v51 + 8);
      v55(v48, v15);
      v56 = OUTLINED_FUNCTION_63_0();
      return (v55)(v56);
    }

    v57 = v66[0];
    OUTLINED_FUNCTION_12_1();
    v36 = sub_1E41FE274();

    swift_willThrow();
    sub_1E38DCCB0(v31, v58[0]);
    (*(v51 + 8))(v48, v15);
  }

  else
  {
    v35 = v30;
    v36 = sub_1E41FE274();

    swift_willThrow();
  }

  v37 = sub_1E324FBDC();
  v39 = v63;
  v38 = v64;
  v40 = v59;
  (*(v63 + 16))(v64, v37, v59);
  v41 = v36;
  v42 = sub_1E41FFC94();
  v43 = sub_1E4206814();

  if (os_log_type_enabled(v42, v43))
  {
    OUTLINED_FUNCTION_13_13();
    v44 = swift_slowAlloc();
    OUTLINED_FUNCTION_15_4();
    v62 = swift_slowAlloc();
    v66[0] = v62;
    *v44 = 136315138;
    swift_getErrorValue();
    v45 = sub_1E4207AB4();
    sub_1E3270FC8(v45, v46, v66);
    OUTLINED_FUNCTION_12_1();

    *(v44 + 4) = v25;
    _os_log_impl(&dword_1E323F000, v42, v43, "RecentlySearchedDataManager::Disk saving error with description: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v62);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
    v47 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v47);

    (*(v39 + 8))(v64, v59);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
  }

  return (*(v61 + 8))(v60, v15);
}

void sub_1E39D38B4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  sub_1E38B2468(v1 + v9, v8);
  v10 = sub_1E41FE414();
  LODWORD(v9) = __swift_getEnumTagSinglePayload(v8, 1, v10);
  sub_1E325F7A8(v8, &unk_1ECF363C0);
  if (v9 != 1)
  {
    sub_1E39D3B58(v3);
    sub_1E39D3258();
    OUTLINED_FUNCTION_111();
    (*(v11 + 152))(2);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39D3B58(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = *(a1 + 16);
    v9 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
    OUTLINED_FUNCTION_25();
    result = swift_beginAccess();
    v11 = *(v1 + v9);
    if (*(v11 + 16))
    {

      v12 = sub_1E327D33C(v8, v7);
      if (v13)
      {
        v14 = *(*(v11 + 56) + 8 * v12);

        v15 = *(v14 + 32);
        ViewModelKeys.rawValue.getter(7);
        sub_1E3277E60(v16, v17, v15, &v31);

        if (v32)
        {
          if (swift_dynamicCast())
          {
            sub_1E39D5F40(v14);
            OUTLINED_FUNCTION_23_2();
            swift_beginAccess();
            sub_1E39D6220(v29, v30);
            swift_endAccess();
          }
        }

        else
        {

          return sub_1E325F7A8(&v31, &unk_1ECF296E0);
        }
      }

      else
      {
      }
    }
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v18(v1);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_18_46();
      v21 = swift_slowAlloc();
      OUTLINED_FUNCTION_34_10(v21);
      OUTLINED_FUNCTION_35_27();
      _os_log_impl(v22, v23, v24, v25, v26, v27);
      v28 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v28);
    }

    return (*(v5 + 8))(v1, v3);
  }

  return result;
}

uint64_t sub_1E39D3DC4(uint64_t a1)
{
  v2 = MEMORY[0x1E69E6158];
  v3 = sub_1E4205CB4();
  ViewModelKeys.rawValue.getter(8);
  v5 = v4;
  v7 = v6;
  v8 = (*(*a1 + 672))();
  sub_1E3277E60(v5, v7, v8, &v143);

  if (!*(&v144 + 1))
  {
    goto LABEL_17;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770);
  if ((OUTLINED_FUNCTION_7_89() & 1) == 0)
  {
    return v3;
  }

  v10 = sub_1E3BA363C(0);
  OUTLINED_FUNCTION_38_22(v10, v11, v12, v13, v14, v15, v16, v17, v123, v134, v140, *(&v140 + 1), v141, v142, v143);

  if (*(&v144 + 1))
  {
    if (OUTLINED_FUNCTION_7_89())
    {
      v18 = v140;
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      v19 = sub_1E3BA48D4();
      *(&v144 + 1) = v2;
      *&v143 = v19;
      *(&v143 + 1) = v20;
      OUTLINED_FUNCTION_37_24(v19, v20, v21, v22, v23, v24, v25, v26, v124, v135, v140, v141, v142, v143);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(isUniquelyReferenced_nonNull_native, v28, v29, isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v125, v18, v140);

      sub_1E3BA363C(0);
      OUTLINED_FUNCTION_16_11();
      *(&v144 + 1) = v9;
      *&v143 = v136;
      OUTLINED_FUNCTION_37_24(v34, v35, v36, v37, v38, v39, v40, v41, v126, v136, v140, v141, v142, v143);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(v42, v43, v44, v42, v45, v46, v47, v48, v127, v3, v140);

      v3 = v135;
    }
  }

  else
  {
    sub_1E325F7A8(&v143, &unk_1ECF296E0);
  }

  v49 = sub_1E3BA363C(1);
  OUTLINED_FUNCTION_38_22(v49, v50, v51, v52, v53, v54, v55, v56, v124, v135, v140, *(&v140 + 1), v141, v142, v143);

  if (*(&v144 + 1))
  {
    if (OUTLINED_FUNCTION_7_89())
    {
      v57 = v140;
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      v58 = sub_1E3BA48D4();
      *(&v144 + 1) = v2;
      *&v143 = v58;
      *(&v143 + 1) = v59;
      OUTLINED_FUNCTION_37_24(v58, v59, v60, v61, v62, v63, v64, v65, v128, v137, v140, v141, v142, v143);
      v66 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(v66, v67, v68, v66, v69, v70, v71, v72, v129, v57, v140);

      v73 = sub_1E4205F14();
      v75 = sub_1E327D33C(v73, v74);
      if (v76)
      {
        v77 = v75;
        swift_isUniquelyReferenced_nonNull_native();
        *&v140 = v138;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310);
        sub_1E4207644();

        sub_1E329504C((*(v138 + 56) + 32 * v77), &v143);
        sub_1E4207664();
      }

      else
      {
        v143 = 0u;
        v144 = 0u;
      }

      sub_1E325F7A8(&v143, &unk_1ECF296E0);
      sub_1E4205F14();
      OUTLINED_FUNCTION_16_11();
      *(&v144 + 1) = v9;
      *&v143 = v138;
      OUTLINED_FUNCTION_37_24(v78, v79, v80, v81, v82, v83, v84, v85, v130, v138, v140, v141, v142, v143);
      v86 = swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_14_69(v86, v87, v88, v86, v89, v90, v91, v92, v131, v3, v140);

      v3 = v137;
    }
  }

  else
  {
    sub_1E325F7A8(&v143, &unk_1ECF296E0);
  }

  v93 = sub_1E3BA363C(2);
  OUTLINED_FUNCTION_38_22(v93, v94, v95, v96, v97, v98, v99, v100, v128, v137, v140, *(&v140 + 1), v141, v142, v143);

  if (!*(&v144 + 1))
  {
LABEL_17:
    sub_1E325F7A8(&v143, &unk_1ECF296E0);
    return v3;
  }

  if (OUTLINED_FUNCTION_7_89())
  {
    v101 = v140;
    v102 = sub_1E4205F14();
    v104 = v103;
    v105 = sub_1E3BA48D4();
    *(&v144 + 1) = v2;
    *&v143 = v105;
    *(&v143 + 1) = v106;
    OUTLINED_FUNCTION_37_24(v105, v106, v107, v108, v109, v110, v111, v112, v132, v139, v140, v141, v142, v143);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(&v140, v102, v104);

    v113 = sub_1E4205F14();
    v115 = v114;
    *(&v144 + 1) = v9;
    *&v143 = v101;
    OUTLINED_FUNCTION_37_24(v113, v114, v116, v117, v118, v119, v120, v121, v133, v101, v140, v141, v142, v143);
    swift_isUniquelyReferenced_nonNull_native();
    sub_1E32A87C0(&v140, v113, v115);
  }

  return v3;
}

void sub_1E39D4228()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode) = 0;

  *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = 0;

  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301B8);
  sub_1E4205D14();
  swift_endAccess();
  sub_1E39D3258();
  OUTLINED_FUNCTION_111();
  (*(v2 + 152))(0);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E39D44AC()
{
  v1 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager__event;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30198);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v3, v4);
  OUTLINED_FUNCTION_77();
  sub_1E325F7A8(v5, v6);

  return v0;
}

uint64_t sub_1E39D4578()
{
  sub_1E39D44AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39D45D0()
{
  v49[7] = *MEMORY[0x1E69E9840];
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v46 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_42_1();
  v10 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v17, v0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v10) == 1)
  {
    sub_1E325F7A8(v0, &unk_1ECF363C0);
    sub_1E39D68C8();
    OUTLINED_FUNCTION_206();
    *v18 = 2;
    return swift_willThrow();
  }

  v45 = v4;
  (*(v12 + 32))(v16, v0, v10);
  v20 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  sub_1E41FE3E4();
  v21 = sub_1E4205ED4();

  v22 = [v20 contentsAtPath_];

  if (!v22)
  {
    return (*(v12 + 8))(v16, v10);
  }

  sub_1E41FE464();

  v48 = 100;
  v23 = objc_opt_self();
  OUTLINED_FUNCTION_113();
  v24 = sub_1E41FE454();
  v49[0] = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:&v48 error:v49];

  if (!v25)
  {
    v28 = v49[0];
    v29 = sub_1E41FE274();

    swift_willThrow();
    v30 = OUTLINED_FUNCTION_113();
    sub_1E38DCCB0(v30, v31);
LABEL_11:
    v34 = sub_1E324FBDC();
    (*(v45 + 16))(v46, v34, v2);
    v35 = v29;
    v36 = sub_1E41FFC94();
    v37 = sub_1E4206814();

    if (os_log_type_enabled(v36, v37))
    {
      OUTLINED_FUNCTION_13_13();
      v43 = swift_slowAlloc();
      OUTLINED_FUNCTION_15_4();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v43 = 136315138;
      swift_getErrorValue();
      v38 = sub_1E4207AB4();
      sub_1E3270FC8(v38, v39, v49);
      OUTLINED_FUNCTION_122();

      *(v43 + 4) = v43;
      _os_log_impl(&dword_1E323F000, v36, v37, "RecentlySearchedDataManager::Disk loading error with description: %s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      v40 = OUTLINED_FUNCTION_4_86();
      MEMORY[0x1E69143B0](v40);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();
    }

    (*(v45 + 8))(v46, v2);
    return (*(v12 + 8))(v16, v10);
  }

  v26 = v49[0];
  sub_1E4207264();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0);
  if (swift_dynamicCast())
  {
    v27 = v47;
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  sub_1E39D58E0(v27);
  if (v1)
  {
    v32 = OUTLINED_FUNCTION_113();
    sub_1E38DCCB0(v32, v33);

    v29 = v1;
    goto LABEL_11;
  }

  (*(v12 + 8))(v16, v10);
  v41 = OUTLINED_FUNCTION_113();
  sub_1E38DCCB0(v41, v42);
}

void sub_1E39D4B10()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v75[13] = *MEMORY[0x1E69E9840];
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v68 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v64 - v11;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v64 - v21;
  v23 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_directoryURL;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E38B2468(v0 + v23, v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E325F7A8(v12, &unk_1ECF363C0);
    goto LABEL_34;
  }

  v67 = v3;
  (*(v15 + 32))(v22, v12, v13);
  v24 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  sub_1E41FE3E4();
  v25 = sub_1E4205ED4();

  v26 = [v24 fileExistsAtPath_];

  v27 = v22;
  if (!v26)
  {
    (*(v15 + 8))(v22, v13);
    goto LABEL_34;
  }

  v28 = sub_1E41FE364();
  v75[0] = 0;
  v29 = [v24 contentsOfDirectoryAtURL:v28 includingPropertiesForKeys:0 options:4 error:v75];

  v30 = v75[0];
  if (!v29)
  {
    v66 = v22;
    v54 = v75[0];
    OUTLINED_FUNCTION_12_1();
    v55 = sub_1E41FE274();

    swift_willThrow();
    v56 = v68;
    v57 = v67;
    goto LABEL_31;
  }

  v31 = v24;
  v32 = sub_1E42062B4();
  v33 = v30;

  v73 = *(v32 + 16);
  if (!v73)
  {

    v47 = *(v15 + 8);
LABEL_27:
    v47(v27, v13);
    goto LABEL_34;
  }

  v66 = v27;
  v65 = v8;
  v34 = 0;
  v72 = v32 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v70 = v32;
  v71 = v15 + 16;
  v74 = (v15 + 8);
  v69 = v15;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
    }

    (*(v15 + 16))(v19, v72 + *(v15 + 72) * v34, v13);
    if (v2)
    {
      break;
    }

    v48 = sub_1E41FE364();
    v75[0] = 0;
    v49 = [v31 removeItemAtURL:v48 error:v75];

    if (!v49)
    {
      v58 = v75[0];

      v55 = sub_1E41FE274();

      swift_willThrow();
      (*v74)(v19, v13);
      v57 = v67;
      v56 = v68;
      goto LABEL_30;
    }

    v47 = *v74;
    v50 = v75[0];
    v47(v19, v13);
LABEL_22:
    ++v34;
    v32 = v70;
    if (v34 == v73)
    {

      v27 = v66;
      goto LABEL_27;
    }
  }

  v35 = v13;
  v36 = v31;
  v37 = sub_1E41FE354();
  v39 = v38;
  if (*(v2 + 16))
  {
    v40 = v37;
    sub_1E4207B44();
    sub_1E4206014();
    v41 = sub_1E4207BA4();
    v42 = ~(-1 << *(v2 + 32));
    while (1)
    {
      v43 = v41 & v42;
      if (((*(v2 + 56 + (((v41 & v42) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v41 & v42)) & 1) == 0)
      {
        break;
      }

      v44 = (*(v2 + 48) + 16 * v43);
      if (*v44 != v40 || v44[1] != v39)
      {
        v46 = sub_1E42079A4();
        v41 = v43 + 1;
        if ((v46 & 1) == 0)
        {
          continue;
        }
      }

      v47 = *v74;
      (*v74)(v19, v35);

      v15 = v69;
      v31 = v36;
      v13 = v35;
      goto LABEL_22;
    }
  }

  v51 = sub_1E41FE364();
  v75[0] = 0;
  v31 = v36;
  v52 = [v36 removeItemAtURL:v51 error:v75];

  if (v52)
  {
    v47 = *v74;
    v53 = v75[0];
    v13 = v35;
    v47(v19, v35);
    v15 = v69;
    goto LABEL_22;
  }

  v59 = v75[0];

  v55 = sub_1E41FE274();

  swift_willThrow();
  v13 = v35;
  (*v74)(v19, v35);
  v57 = v67;
  v56 = v68;
  v15 = v69;
LABEL_30:
  v8 = v65;
LABEL_31:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v60(v8);
  v61 = sub_1E41FFC94();
  v62 = sub_1E42067F4();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_18_46();
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1E323F000, v61, v62, "RecentlySearchedManager:: an error occurred while attepting to clear plist data", v63, 2u);
    OUTLINED_FUNCTION_7_17();
    MEMORY[0x1E69143B0]();
  }

  (*(v56 + 8))(v8, v57);
  (*(v15 + 8))(v66, v13);
LABEL_34:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39D51F0()
{
  OUTLINED_FUNCTION_31_1();
  v55[1] = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v52 = v6 - v5;
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v53 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v54 = &v50 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0);
  v16 = OUTLINED_FUNCTION_17_2(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  *&v24 = MEMORY[0x1EEE9AC00](v23).n128_u64[0];
  v26 = &v50 - v25;
  v27 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_fileManager);
  v28 = [v27 URLsForDirectory:9 inDomains:{1, v24}];
  v29 = sub_1E42062B4();

  sub_1E39D0EE8(v29, v26);

  if (!__swift_getEnumTagSinglePayload(v26, 1, v7))
  {
    sub_1E41FE384();
  }

  sub_1E38B2468(v26, v22);
  if (__swift_getEnumTagSinglePayload(v22, 1, v7) == 1)
  {
    v30 = v22;
LABEL_5:
    sub_1E325F7A8(v30, &unk_1ECF363C0);
    goto LABEL_10;
  }

  v50 = v3;
  v51 = v1;
  v31 = *(v9 + 32);
  v32 = v54;
  v31();
  sub_1E41FE3E4();
  v33 = sub_1E4205ED4();

  v34 = [v27 fileExistsAtPath_];

  if (!v34)
  {
    (*(v9 + 8))(v32, v7);
    goto LABEL_10;
  }

  sub_1E38B2468(v26, v19);
  if (__swift_getEnumTagSinglePayload(v19, 1, v7) == 1)
  {
    (*(v9 + 8))(v32, v7);
    v30 = v19;
    goto LABEL_5;
  }

  v35 = v53;
  (v31)(v53, v19, v7);
  v36 = sub_1E41FE364();
  v55[0] = 0;
  v37 = [v27 removeItemAtURL:v36 error:v55];

  if (v37)
  {
    v38 = *(v9 + 8);
    v39 = v55[0];
    v38(v35, v7);
    v38(v32, v7);
  }

  else
  {
    v40 = v55[0];
    v41 = sub_1E41FE274();

    swift_willThrow();
    v42 = *(v9 + 8);
    v42(v35, v7);
    v43 = sub_1E324FBDC();
    v45 = v50;
    v44 = v51;
    v46 = v52;
    (*(v50 + 16))(v52, v43, v51);
    v47 = sub_1E41FFC94();
    v48 = sub_1E42067F4();
    if (os_log_type_enabled(v47, v48))
    {
      OUTLINED_FUNCTION_18_46();
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1E323F000, v47, v48, "RecentlySearchedManager:: Unable to clear legacy plist", v49, 2u);
      OUTLINED_FUNCTION_7_17();
      MEMORY[0x1E69143B0]();

      (*(v45 + 8))(v52, v44);
    }

    else
    {

      (*(v45 + 8))(v46, v44);
    }

    v42(v54, v7);
  }

LABEL_10:
  sub_1E325F7A8(v26, &unk_1ECF363C0);
  OUTLINED_FUNCTION_25_2();
}

void *sub_1E39D571C()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);

  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    do
    {
      v3 = v1[4];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_1E39239C8(0, v2[2] + 1, 1, v2);
      }

      v5 = v2[2];
      v4 = v2[3];
      if (v5 >= v4 >> 1)
      {
        v2 = sub_1E39239C8((v4 > 1), v5 + 1, 1, v2);
      }

      v2[2] = v5 + 1;
      v2[v5 + 4] = v3;
      v6 = (*(*v1 + 128))();

      v1 = v6;
    }

    while (v6);
  }

  return v2;
}

uint64_t sub_1E39D5828()
{
  if ((TVAppFeature.isEnabled.getter(10) & 1) == 0)
  {
    return 213;
  }

  if (sub_1E39DFFC8() & 1) != 0 && ([objc_opt_self() isPad])
  {
    return 220;
  }

  v1 = objc_opt_self();
  if ([v1 isTV])
  {
    return 219;
  }

  v0 = 219;
  if (([v1 isMac] & 1) == 0)
  {
    if ([v1 isVision])
    {
      return 219;
    }

    else
    {
      return 221;
    }
  }

  return v0;
}

uint64_t sub_1E39D58E0(uint64_t a1)
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_40_30();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v75 - v8;
  v10 = *(a1 + 16);
  v79 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  v89 = v1;
  v85 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_identifierTable;
  OUTLINED_FUNCTION_9_61();
  swift_beginAccess();
  v11 = 0;
  v81 = 0;
  v82 = (v5 + 16);
  v83 = (v5 + 8);
  v84 = a1 + 32;
  while (1)
  {
    if (v10 == v11)
    {
      *(v89 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = v81;
    }

    if (v11 >= v10)
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_1E4207A74();
      __break(1u);
      return result;
    }

    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_37;
    }

    v13 = *(v84 + 8 * v11);

    ViewModelKeys.rawValue.getter(7);
    if (!*(v13 + 16))
    {
      break;
    }

    v16 = sub_1E327D33C(v14, v15);
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      goto LABEL_31;
    }

    sub_1E328438C(*(v13 + 56) + 32 * v16, v88);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_31;
    }

    v19 = v9;
    v20 = v3;
    v21 = v86;
    v22 = v87;
    if (*(*(v89 + v85) + 16))
    {

      sub_1E327D33C(v21, v22);
      if ((v23 & 1) == 0)
      {

        goto LABEL_14;
      }

      v24 = sub_1E324FBDC();
      v9 = v19;
      v3 = v20;
      (*v82)(v19, v24, v20);
      v25 = sub_1E41FFC94();
      sub_1E4206814();
      v26 = OUTLINED_FUNCTION_33_32();
      if (os_log_type_enabled(v26, v27))
      {
        OUTLINED_FUNCTION_18_46();
        v28 = swift_slowAlloc();
        OUTLINED_FUNCTION_34_10(v28);
        OUTLINED_FUNCTION_35_27();
        _os_log_impl(v29, v30, v31, v32, v33, v34);
        v35 = OUTLINED_FUNCTION_4_86();
        MEMORY[0x1E69143B0](v35);
      }

      (*v83)(v19, v20);
      ++v11;
    }

    else
    {
LABEL_14:
      v36 = v89;
      if (*(v89 + v79))
      {
        v37 = v81;
        if (!v81)
        {

LABEL_35:

          sub_1E39D68C8();
          OUTLINED_FUNCTION_206();
          *v74 = 1;
          return swift_willThrow();
        }

        type metadata accessor for RecentlySearchedDataManager.Node();
        OUTLINED_FUNCTION_5_10();
        v38 = swift_allocObject();
        sub_1E39D0B7C(v37, 0, v13);
        v39 = *(*v37 + 136);

        v40 = v39(v38);
        v41 = (*(*v37 + 128))(v40);

        if (!v41)
        {
          goto LABEL_35;
        }

        v81 = v41;
        v36 = v89;
      }

      else
      {
        type metadata accessor for RecentlySearchedDataManager.Node();
        OUTLINED_FUNCTION_5_10();
        v41 = swift_allocObject();
        sub_1E39D0B7C(0, 0, v13);

        *(v36 + v79) = v41;
        swift_retain_n();

        v81 = v41;
      }

      v42 = v85;
      OUTLINED_FUNCTION_23_2();
      swift_beginAccess();
      v78 = v41;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86 = *(v36 + v42);
      v43 = v86;
      *(v36 + v42) = 0x8000000000000000;
      v44 = sub_1E327D33C(v21, v22);
      if (__OFADD__(*(v43 + 16), (v45 & 1) == 0))
      {
        goto LABEL_38;
      }

      v46 = v44;
      v76 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0);
      if (sub_1E4207644())
      {
        v47 = sub_1E327D33C(v21, v22);
        v49 = v76;
        v50 = v89;
        if ((v76 & 1) != (v48 & 1))
        {
          goto LABEL_40;
        }

        v46 = v47;
      }

      else
      {
        v50 = v89;
        v49 = v76;
      }

      v51 = v86;
      if (v49)
      {
        *(*(v86 + 56) + 8 * v46) = v78;
        v52 = v50;

        v53 = v52;
        v3 = v20;
        v9 = v19;
      }

      else
      {
        OUTLINED_FUNCTION_50_15(v86 + 8 * (v46 >> 6));
        v55 = (v54 + 16 * v46);
        *v55 = v21;
        v55[1] = v22;
        *(*(v51 + 56) + 8 * v46) = v78;
        v56 = *(v51 + 16);
        v57 = __OFADD__(v56, 1);
        v58 = v56 + 1;
        if (v57)
        {
          goto LABEL_39;
        }

        *(v51 + 16) = v58;
        v3 = v20;
        v9 = v19;
      }

      *(v53 + v85) = v51;
      swift_endAccess();

      v11 = v12;
    }
  }

LABEL_31:

  v60 = sub_1E324FBDC();
  v61 = v80;
  (*v82)(v80, v60, v3);
  v62 = sub_1E41FFC94();
  sub_1E42067F4();
  v63 = OUTLINED_FUNCTION_33_32();
  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_18_46();
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_34_10(v65);
    OUTLINED_FUNCTION_35_27();
    _os_log_impl(v66, v67, v68, v69, v70, v71);
    v72 = OUTLINED_FUNCTION_4_86();
    MEMORY[0x1E69143B0](v72);
  }

  (*v83)(v61, v3);
  sub_1E39D68C8();
  OUTLINED_FUNCTION_206();
  *v73 = 0;
  swift_willThrow();
}

uint64_t sub_1E39D5F40(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode);
  if (v5)
  {
    v6 = v5 == a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(*v5 + 128);

    v9 = v7(v8);

    *(v2 + v4) = v9;
  }

  OUTLINED_FUNCTION_47_0();
  v11 = *(v10 + 128);
  v12 = v11();
  if (v12)
  {
    v13 = v12;
    OUTLINED_FUNCTION_47_0();
    v15 = (*(v14 + 104))();
    (*(*v13 + 112))(v15);
  }

  OUTLINED_FUNCTION_47_0();
  v17 = *(v16 + 104);
  result = v17();
  if (result)
  {
    v19 = result;
    v20 = v11();
    (*(*v19 + 136))(v20);
  }

  v21 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode;
  v22 = *(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode);
  if (v22)
  {
    v23 = v22 == a1;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    *(v2 + v21) = (v17)(result);
  }

  return result;
}

uint64_t sub_1E39D6120(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_headNode;
  OUTLINED_FUNCTION_47_0();
  v6 = *(v5 + 136);

  v6(v7);
  v8 = *(v1 + v4);
  if (v8)
  {
    v9 = *(*v8 + 112);

    v9(v10);
  }

  *(v2 + v4) = a1;

  if (!*(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode))
  {
    *(v2 + OBJC_IVAR____TtC8VideosUI27RecentlySearchedDataManager_tailNode) = *(v2 + v4);
  }

  return result;
}

uint64_t sub_1E39D6220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  type metadata accessor for RecentlySearchedDataManager.Node();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E39D62F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF301D0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1E327D33C(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
  }

  else
  {
    sub_1E377E1B0(v11, a2, a3, a1, v15);
  }
}

id sub_1E39D6434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_1E41FE454();
  v9 = [a5 createFileAtPath:a1 contents:v8 attributes:a4];

  return v9;
}

unint64_t sub_1E39D64A0()
{
  result = qword_1ECF301C0;
  if (!qword_1ECF301C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301C0);
  }

  return result;
}

unint64_t sub_1E39D64F8()
{
  result = qword_1ECF301C8;
  if (!qword_1ECF301C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301C8);
  }

  return result;
}

uint64_t type metadata accessor for RecentlySearchedDataManager()
{
  result = qword_1EE2948C0;
  if (!qword_1EE2948C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E39D65A0()
{
  sub_1E39D669C();
  if (v0 <= 0x3F)
  {
    sub_1E3286EF4();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1E39D669C()
{
  if (!qword_1EE289FE8)
  {
    v0 = sub_1E4200694();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE289FE8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for RecentlySearchedDataManager.SearchHistoryEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for RecentlySearchedDataManager.RecentlySearchedDataManagerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E39D68C8()
{
  result = qword_1ECF301D8;
  if (!qword_1ECF301D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF301D8);
  }

  return result;
}

uint64_t sub_1E39D6938(int a1, uint64_t a2, int a3, char a4)
{
  v6 = v4;
  HIDWORD(v177) = a3;
  v173 = a2;
  HIDWORD(v169) = a1;
  if (v4[256] == 20)
  {
    OUTLINED_FUNCTION_11_13();
    if ((*(v8 + 392))())
    {
      type metadata accessor for CardCollectionViewCellLayout();
      v9 = swift_dynamicCastClass();
      if (v9)
      {
        v10 = (*(*v9 + 2088))();
      }

      else
      {
        v10 = 20;
      }
    }

    else
    {
      v10 = 20;
    }

    v6[256] = v10;
  }

  HIDWORD(v213) = a4 & 1;
  v11 = sub_1E378CAD8();
  OUTLINED_FUNCTION_11_13();
  v13 = (*(v12 + 392))();
  if (v11)
  {
    if (v13)
    {
      type metadata accessor for CardCollectionViewCellLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v14 + 2096))(10);
      }

LABEL_16:
    }
  }

  else if (v13)
  {
    type metadata accessor for CardCollectionViewCellLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_30();
      v16 = (*(v15 + 2096))(v6[256]);
      (*(*v6 + 2120))(v16, 0.0, 0.0);
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_11_13();
  if ((*(v17 + 392))())
  {
    OUTLINED_FUNCTION_30();
    (*(v18 + 1640))(HIDWORD(v169), v173, HIDWORD(v177));
  }

  OUTLINED_FUNCTION_11_13();
  v219[0] = (*(v19 + 464))();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8);
  v21 = v219;
  sub_1E4148C68(sub_1E3819AD4, v20, &v218);

  v22 = v218;
  if (!sub_1E32AE9B0(v218))
  {
    OUTLINED_FUNCTION_11_13();
    v21 = v6;
    result = (*(v157 + 488))();
    if (result)
    {
      v158 = result;
      if (*(result + 16))
      {
        v21 = v22;
        v5 = 0;
        v159 = 1 << *(result + 32);
        v160 = -1;
        if (v159 < 64)
        {
          v160 = ~(-1 << v159);
        }

        v161 = v160 & *(result + 64);
        v162 = (v159 + 63) >> 6;
        if (v161)
        {
          goto LABEL_138;
        }

        while (1)
        {
          v163 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_145;
          }

          if (v163 >= v162)
          {
            break;
          }

          v161 = *(v158 + 64 + 8 * v163);
          ++v5;
          if (v161)
          {
            v5 = v163;
            do
            {
LABEL_138:
              v164 = swift_retain_n();
              MEMORY[0x1E6910BF0](v164);
              if (*((v218 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v218 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1E42062F4();
              }

              v161 &= v161 - 1;
              sub_1E4206324();

              v21 = v218;
            }

            while (v161);
          }
        }

        v22 = v21;
      }

      else
      {
      }
    }
  }

  result = sub_1E32AE9B0(v22);
  v189 = result;
  if (!result)
  {
  }

  if (result < 1)
  {
    goto LABEL_146;
  }

  v24 = 0;
  v181 = v22 + 32;
  v185 = v22 & 0xC000000000000001;
  v198 = v6;
  v165 = v22;
  while (1)
  {
    if (v185)
    {
      v25 = MEMORY[0x1E6911E60](v24, v22);
    }

    else
    {
      v25 = *(v181 + 8 * v24);
    }

    if (sub_1E3850584())
    {
      break;
    }

    OUTLINED_FUNCTION_12_61();
    sub_1E3742F1C();
    OUTLINED_FUNCTION_5_86();
    OUTLINED_FUNCTION_10_61();
    OUTLINED_FUNCTION_3_89();
    v52 = sub_1E4206254();
    OUTLINED_FUNCTION_2_84(v52, v53, v54, v55, v56, v57, v58, v59, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, v217[0]);
    if (v46 && v5 == v21)
    {
      goto LABEL_49;
    }

    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_16_55();

    if (&qword_1F5D5CE68)
    {
      goto LABEL_50;
    }

    v222 = v25[49];
    v221 = 16;
    OUTLINED_FUNCTION_5_86();
    OUTLINED_FUNCTION_10_61();
    OUTLINED_FUNCTION_3_89();
    v62 = sub_1E4206254();
    OUTLINED_FUNCTION_2_84(v62, v63, v64, v65, v66, v67, v68, v69, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, v217[0]);
    if (v46 && v5 == v21)
    {
LABEL_49:
    }

    else
    {
      OUTLINED_FUNCTION_7_90();
      OUTLINED_FUNCTION_16_55();

      if ((&qword_1F5D5CE68 & 1) == 0)
      {
        goto LABEL_127;
      }
    }

LABEL_50:
    v21 = v25;
    v71 = (*(*v25 + 392))(v61);
    if (v71)
    {
      v79 = v71;
      OUTLINED_FUNCTION_1_110(v71, v72, v73, v74, v75, v76, v77, v78, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, SBYTE4(v213));
      v80 = sub_1E37909B4();
      OUTLINED_FUNCTION_5_86();
      sub_1E4206254();
      OUTLINED_FUNCTION_4_87();
      v81 = sub_1E4206254();
      OUTLINED_FUNCTION_2_84(v81, v82, v83, v84, v85, v86, v87, v88, v167, v171, v175, v179, v183, v187, v191, v196, v200, v204, v208, v211, v215, v217[0]);
      if (v46 && v5 == v25)
      {
      }

      else
      {
        OUTLINED_FUNCTION_7_90();
        OUTLINED_FUNCTION_16_55();

        v5 = 0;
        if ((v80 & 1) == 0)
        {
          goto LABEL_125;
        }
      }

      OUTLINED_FUNCTION_12_61();
      OUTLINED_FUNCTION_5_86();
      OUTLINED_FUNCTION_10_61();
      OUTLINED_FUNCTION_3_89();
      sub_1E4206254();
      if (v217[0] == v223 && v217[1] == v224)
      {
        v5 = 1;
      }

      else
      {
        v5 = sub_1E42079A4();
      }

LABEL_125:
      v21 = v79;
      (*(*v79 + 944))(v5 & 1);
LABEL_126:
    }

LABEL_127:
    ++v24;

    if (v24 == v189)
    {
    }
  }

  v194 = v24;
  v26 = (*v25 + 392);
  v27 = *v26;
  v28 = (*v26)();
  if (v28)
  {
    OUTLINED_FUNCTION_30();
    (*(v36 + 1640))(HIDWORD(v169), v173, HIDWORD(v177));
  }

  OUTLINED_FUNCTION_1_110(v28, v29, v30, v31, v32, v33, v34, v35, v165, v169, v173, v177, v181, v185, v189, v194, v198, v202, i, v210, v213, SBYTE4(v213));
  v37 = sub_1E37909B4();
  OUTLINED_FUNCTION_5_86();
  OUTLINED_FUNCTION_10_61();
  OUTLINED_FUNCTION_3_89();
  v38 = sub_1E4206254();
  OUTLINED_FUNCTION_2_84(v38, v39, v40, v41, v42, v43, v44, v45, v166, v170, v174, v178, v182, v186, v190, v195, v199, v203, v207, v37, v214, v217[0]);
  v46 = v46 && v5 == v25;
  if (v46)
  {
  }

  else
  {
    OUTLINED_FUNCTION_7_90();
    OUTLINED_FUNCTION_16_55();

    if ((&type metadata for PlayerCollectionAppearanceType & 1) == 0)
    {
      if ((v6[280] & 1) == 0)
      {
        v48 = *(v6 + 34);
        v47 = (v27)(v47);
        if (v47)
        {
          OUTLINED_FUNCTION_30();
          v51 = (*(v49 + 192))(v217);
          if (*(v50 + 32) != 1)
          {
            *(v50 + 16) = v48;
          }

          goto LABEL_72;
        }
      }

      goto LABEL_73;
    }
  }

  v90 = (v27)(v47);
  if (v90)
  {
    OUTLINED_FUNCTION_30();
    (*(v91 + 176))(v219);

    v92 = v219[2];
    if (v220)
    {
      v92 = 0;
    }
  }

  else
  {
    v92 = 0;
  }

  *(v6 + 34) = v92;
  v6[280] = 0;
  v47 = (v27)(v90);
  if (v47)
  {
    OUTLINED_FUNCTION_30();
    v51 = (*(v94 + 192))(v217);
    if (*(v95 + 32) != 1)
    {
      *(v95 + 16) = 0x4010000000000000;
    }

LABEL_72:
    v51(v217, 0);
  }

LABEL_73:
  v21 = v25;
  result = (*(*v25 + 488))(v47);
  v24 = v193;
  if (!result)
  {
    goto LABEL_127;
  }

  v103 = result;
  v104 = 0;
  v105 = result + 64;
  v106 = 1 << *(result + 32);
  if (v106 < 64)
  {
    v107 = ~(-1 << v106);
  }

  else
  {
    v107 = -1;
  }

  v108 = v107 & *(result + 64);
  v109 = (v106 + 63) >> 6;
  v202 = result;
  for (i = v25; v108; v103 = v202)
  {
LABEL_82:
    v111 = __clz(__rbit64(v108)) | (v104 << 6);
    v5 = *(*(v103 + 48) + 2 * v111);
    v112 = *(*(v103 + 56) + 8 * v111);
    OUTLINED_FUNCTION_1_110(result, v96, v97, v98, v99, v100, v101, v102, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, SBYTE4(v213));

    OUTLINED_FUNCTION_5_86();
    v113 = v212;
    sub_1E4206254();
    OUTLINED_FUNCTION_4_87();
    v114 = sub_1E4206254();
    OUTLINED_FUNCTION_8_60(v114, v115, v116, v117, v118, v119, v120, v121, v168, v172, v176, v180, v184, v188, v192, v197, v201, v205, v209, v212, v216, v217[0]);
    if (v46 && v21 == v113)
    {
    }

    else
    {
      v123 = OUTLINED_FUNCTION_11_67();

      if ((v123 & 1) == 0)
      {
        v125 = (*v112 + 392);
        v126 = *v125;
        v21 = v112;
        if ((*v125)(v124))
        {
          OUTLINED_FUNCTION_30();
          (*(v127 + 944))(0);
        }

        v222 = v5;
        v221 = 53;
        v128 = sub_1E3742F1C();
        OUTLINED_FUNCTION_5_86();
        v5 = &qword_1F5D5CE68;
        OUTLINED_FUNCTION_15_61();
        OUTLINED_FUNCTION_4_87();
        v129 = OUTLINED_FUNCTION_15_61();
        OUTLINED_FUNCTION_8_60(v129, v130, v131, v132, v133, v134, v135, v136, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, v217[0]);
        if (v46 && v112 == v128)
        {
        }

        else
        {
          v5 = OUTLINED_FUNCTION_11_67();

          if ((v5 & 1) == 0)
          {
            goto LABEL_120;
          }
        }

        v21 = v112;
        v155 = v126(v138);
        if (!v155)
        {
          goto LABEL_120;
        }

        v5 = v155;
        type metadata accessor for TextBadgeLayout();
        v156 = swift_dynamicCastClass();
        if (!v156)
        {
          goto LABEL_118;
        }

        if (*(v198 + 281) != 4)
        {
          (*(*v156 + 1808))();
        }

        goto LABEL_116;
      }
    }

    v139 = sub_1E38E5664(v5, *(v198 + 248));
    v140 = *(*v112 + 392);
    v141 = v140();
    v21 = v141;
    if (!v139)
    {
      if (!v141)
      {
        goto LABEL_120;
      }

      (*(*v141 + 944))(1);
      goto LABEL_119;
    }

    if (v141)
    {
      (*(*v141 + 944))(0);
    }

    v222 = v5;
    v221 = 53;
    v142 = sub_1E3742F1C();
    OUTLINED_FUNCTION_5_86();
    v5 = &qword_1F5D5CE68;
    OUTLINED_FUNCTION_15_61();
    OUTLINED_FUNCTION_4_87();
    v143 = OUTLINED_FUNCTION_15_61();
    OUTLINED_FUNCTION_8_60(v143, v144, v145, v146, v147, v148, v149, v150, v165, v169, v173, v177, v181, v185, v189, v193, v198, v202, i, v210, v213, v217[0]);
    if (v46 && v21 == v142)
    {
    }

    else
    {
      v5 = OUTLINED_FUNCTION_11_67();

      if ((v5 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

    v21 = v112;
    v153 = (v140)(v152);
    if (!v153)
    {
      goto LABEL_120;
    }

    v5 = v153;
    type metadata accessor for TextBadgeLayout();
    if (!swift_dynamicCastClass())
    {
LABEL_118:
      v21 = v112;
      goto LABEL_119;
    }

    OUTLINED_FUNCTION_30();
    *(v198 + 281) = (*(v154 + 1800))();
    (*(*v112 + 1808))(0);
LABEL_116:
    v21 = v5;
LABEL_119:

LABEL_120:
    v108 &= v108 - 1;
  }

  while (1)
  {
    v110 = v104 + 1;
    if (__OFADD__(v104, 1))
    {
      break;
    }

    if (v110 >= v109)
    {
      v24 = v193;
      v6 = v198;
      v22 = v165;
      goto LABEL_126;
    }

    v108 = *(v105 + 8 * v110);
    ++v104;
    if (v108)
    {
      v104 = v110;
      goto LABEL_82;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
  return result;
}

uint64_t sub_1E39D76EC(__int16 a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E39D7838(&unk_1F5D67668);
  OUTLINED_FUNCTION_6_67(v6);

  return sub_1E39BEDCC(a1, a2, a3);
}

uint64_t sub_1E39D7748()
{
  OUTLINED_FUNCTION_48_1();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  return sub_1E39D7794();
}

uint64_t sub_1E39D7794()
{
  OUTLINED_FUNCTION_48_1();
  v0 = sub_1E39D7838(&unk_1F5D67690);
  OUTLINED_FUNCTION_6_67(v0);
  OUTLINED_FUNCTION_13_11();

  return sub_1E39C0300();
}

uint64_t sub_1E39D77F0()
{
  v0 = ViewModel.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 282, 7);
}

uint64_t sub_1E39D7838(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF35B90);
  result = sub_1E4207464();
  v3 = result;
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_14:

    return v3;
  }

  v4 = 0;
  v5 = result + 56;
  while (v4 < *(a1 + 16))
  {
    v6 = *(a1 + 32 + 2 * v4++);
    sub_1E37414E0();
    result = sub_1E4205DA4();
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v8 = result & v7;
      v9 = (result & v7) >> 6;
      v10 = *(v5 + 8 * v9);
      v11 = 1 << (result & v7);
      if ((v11 & v10) == 0)
      {
        break;
      }

      sub_1E3741534();
      result = sub_1E4205E84();
      if (result)
      {
        goto LABEL_11;
      }

      result = v8 + 1;
    }

    *(v5 + 8 * v9) = v11 | v10;
    *(*(v3 + 48) + 2 * v8) = v6;
    v12 = *(v3 + 16);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v14;
LABEL_11:
    if (v4 == v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

double sub_1E39D79DC()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration + 8) & 1) == 0)
  {
    return *v1;
  }

  [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) playbackDuration];
  *v1 = result;
  v1[8] = 0;
  return result;
}

void sub_1E39D7A38(double a1)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration;
  *v2 = a1;
  *(v2 + 8) = 0;
}

uint64_t sub_1E39D7A50(uint64_t a1)
{
  *(a1 + 8) = v1;
  *a1 = sub_1E39D79DC();
  return OUTLINED_FUNCTION_116();
}

void *sub_1E39D7A94(void *result)
{
  v1 = result[1] + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration;
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

id sub_1E39D7AB0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType + 9) & 1) == 0)
  {
    return *v1;
  }

  v2 = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_assetType];
  v3 = [v2 unsignedIntegerValue];

  *v1 = v3;
  v1[4] = 0;
  return v3;
}

uint64_t sub_1E39D7B50(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7AB0();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7BC8(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E39D7B9C();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7C40(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7C14();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7CAC(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  if ((v3[9] & 1) == 0)
  {
    return *v3;
  }

  v4 = a2();
  result = OUTLINED_FUNCTION_4_17(v4, v5);
  v3[9] = 0;
  return result;
}

uint64_t sub_1E39D7D14(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  v1 = sub_1E39D7C8C();
  OUTLINED_FUNCTION_4_17(v1, v2);
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D7D60()
{
  v1 = OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos;
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos);
  if (result == 3)
  {
    result = sub_1E3A28D28();
    *(v0 + v1) = result;
  }

  return result;
}

void (*sub_1E39D7DC4(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D7D60();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D7E04;
}

unint64_t sub_1E39D7E18()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID + 5))
  {
    v2 = sub_1E3A28BAC();
    *v1 = v2;
    v3 = HIDWORD(v2) & 1;
    *(v1 + 4) = BYTE4(v2) & 1;
    *(v1 + 5) = 0;
  }

  else
  {
    LODWORD(v2) = *v1;
    LOBYTE(v3) = *(v1 + 4) & 1;
  }

  return v2 | (v3 << 32);
}

uint64_t sub_1E39D7E98(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E39D7EB8(void *a1))(uint64_t result)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = sub_1E39D7E18();
  *(v1 + 8) = v2;
  *(v1 + 12) = BYTE4(v2) & 1;
  return sub_1E39D7F04;
}

uint64_t sub_1E39D7F04(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

void (*sub_1E39D7F54(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E39D7F3C(v5);
  return sub_1E39D7FE8;
}

uint64_t sub_1E39D800C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19[-v10];
  v12 = *a1;
  swift_beginAccess();
  sub_1E37C5830(v2 + v12, v11, &qword_1ECF2CDE0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  if (__swift_getEnumTagSinglePayload(v11, 1, v13) != 1)
  {
    return sub_1E3889AF0(v11, a2);
  }

  sub_1E325F748(v11, &qword_1ECF2CDE0);
  sub_1E41FE5D4();
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1E37C5830(a2, v8, &unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v13);
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v12);
  return swift_endAccess();
}

uint64_t sub_1E39D81C4(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CDE0);
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  sub_1E3889AF0(a1, &v12 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = *a2;
  swift_beginAccess();
  sub_1E393FD78(v8, v2 + v10);
  return swift_endAccess();
}

void (*sub_1E39D82A0(void *a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_69_1(a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_17_2(v2);
  v4 = *(v3 + 64);
  *(v1 + 8) = __swift_coroFrameAllocStub(v4);
  v5 = __swift_coroFrameAllocStub(v4);
  *(v1 + 16) = v5;
  sub_1E39D8000(v5);
  return sub_1E39D8334;
}

void sub_1E39D834C(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2)
  {
    sub_1E37C5830(*(a1 + 16), v4, &unk_1ECF28E20);
    a3(v4);
    sub_1E325F748(v5, &unk_1ECF28E20);
  }

  else
  {
    a3(*(a1 + 16));
  }

  free(v5);

  free(v4);
}

uint64_t sub_1E39D83F4()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal);
  if (result == 3)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 0;
  }

  return result;
}

void (*sub_1E39D8420(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D83F4();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D8460;
}

uint64_t sub_1E39D8474()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically);
  if (result == 3)
  {
    result = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 0;
  }

  return result;
}

void (*sub_1E39D84A0(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D8474();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D84E0;
}

uint64_t sub_1E39D8514(void *a1, uint64_t (*a2)(void))
{
  v3 = (v2 + *a1);
  v4 = *v3;
  v5 = v3[1];
  v6 = *v3;
  if (v5 == 1)
  {
    v6 = a2();
    v7 = *v3;
    v8 = v3[1];
    *v3 = v6;
    v3[1] = v9;

    sub_1E37E9E48(v7, v8);
  }

  sub_1E37EA628(v4, v5);
  return v6;
}

uint64_t sub_1E39D85C0(uint64_t a1)
{
  OUTLINED_FUNCTION_18_25(a1);
  *v1 = sub_1E39D84F4();
  v1[1] = v2;
  return OUTLINED_FUNCTION_116();
}

uint64_t sub_1E39D860C(uint64_t *a1, char a2, void *a3)
{
  v3 = a1[1];
  v4 = (a1[2] + *a3);
  v5 = *v4;
  v6 = v4[1];
  *v4 = *a1;
  v4[1] = v3;
  if (a2)
  {

    sub_1E37E9E48(v5, v6);
  }

  else
  {

    return sub_1E37E9E48(v5, v6);
  }
}

id sub_1E39D86B8()
{
  result = [*(v0 + OBJC_IVAR____TtC8VideosUI20LibMPBaseMediaEntity_mpMediaItem) vui_playedState];
  if (result)
  {
    v2 = result;
    v3 = [result integerValue];

    return (v3 == 3);
  }

  return result;
}

uint64_t sub_1E39D871C()
{
  result = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted);
  if (result == 3)
  {
    result = 2;
    *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted) = 2;
  }

  return result;
}

void (*sub_1E39D8748(void *a1))(uint64_t *a1)
{
  OUTLINED_FUNCTION_69_1(a1);
  v1 = sub_1E39D871C();
  OUTLINED_FUNCTION_13_21(v1);
  return sub_1E39D8788;
}

unsigned __int8 *sub_1E39D879C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  v4 = v3;
  if (v3 == 1)
  {
    v4 = sub_1E3A290B8();
    v5 = *(v1 + v2);
    *(v1 + v2) = v4;
    v6 = v4;
    sub_1E329CC84(v5);
  }

  sub_1E34AF5F4(v3);
  return v4;
}

void sub_1E39D881C(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = a1;
  sub_1E329CC84(v2);
}

uint64_t sub_1E39D8834(unsigned __int8 **a1)
{
  a1[1] = v1;
  *a1 = sub_1E39D879C();
  return OUTLINED_FUNCTION_116();
}

void sub_1E39D8878(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v3 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);
  *(v3 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = *a1;
  if (a2)
  {
    v5 = v2;
    sub_1E329CC84(v4);
  }

  else
  {

    sub_1E329CC84(v4);
  }
}

uint64_t sub_1E39D8938(uint64_t a1)
{
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___duration);
  *(v3 + 8) = 1;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___assetType);
  *(v4 + 8) = 256;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString) = xmmword_1E4297170;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___resolutionClass);
  *(v5 + 8) = v6;
  OUTLINED_FUNCTION_14_10(OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___videoRange);
  *(v7 + 8) = v8;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hasDolbyAtmos) = 3;
  v9 = v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___storeID;
  *(v9 + 4) = v8;
  *v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v10);
  OUTLINED_FUNCTION_32_2();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v10);
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___allowsManualDownloadRenewal) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___renewsOfflineKeysAutomatically) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams) = xmmword_1E4297170;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___markAsDeleted) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating) = 1;

  return sub_1E4028B38(a1);
}

void sub_1E39D8A68()
{
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating);

  sub_1E329CC84(v1);
}

uint64_t *sub_1E39D8B04()
{
  v0 = sub_1E4028C28();
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___hlsPlaylistURLString + 8));
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___downloadExpirationDate, &qword_1ECF2CDE0);
  sub_1E325F748(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___availabilityEndDate, &qword_1ECF2CDE0);
  sub_1E37E9E48(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams), *(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___redownloadParams + 8));
  sub_1E329CC84(*(v0 + OBJC_IVAR____TtC8VideosUI24LibMPPlayableMediaEntity____lazy_storage___contentRating));
  return v0;
}

uint64_t sub_1E39D8BA0()
{
  v0 = sub_1E39D8B04();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E39D8E24()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 776))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

unint64_t sub_1E39D905C(uint64_t a1)
{
  result = sub_1E39D9084();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E39D9084()
{
  result = qword_1ECF30208;
  if (!qword_1ECF30208)
  {
    type metadata accessor for LibMPPlayableMediaEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF30208);
  }

  return result;
}

uint64_t type metadata accessor for LibMPPlayableMediaEntity()
{
  result = qword_1EE297AF0;
  if (!qword_1EE297AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E39D9130()
{
  sub_1E38B0440();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1E39D9238(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = a1;
}

uint64_t sub_1E39D92D0(uint64_t a1)
{
  OUTLINED_FUNCTION_3_0();
  *(v1 + 32) = a1;
}

uint64_t sub_1E39D9354()
{
  OUTLINED_FUNCTION_11_11();
  v0 = swift_allocObject();
  sub_1E39D93B4();
  return v0;
}

uint64_t sub_1E39D93B4()
{
  OUTLINED_FUNCTION_11_11();
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  OUTLINED_FUNCTION_3_0();
  *(v1 + 16) = v5;
  OUTLINED_FUNCTION_3_0();
  *(v1 + 24) = v4;
  OUTLINED_FUNCTION_3_0();
  *(v1 + 32) = v3;

  *(v1 + 40) = v2;
  *(v1 + 41) = v0;
  return v1;
}

uint64_t sub_1E39D9458()
{
  v1 = (*(*v0 + 144))();
  if (!v1)
  {
    return 0;
  }

  v2 = (*(*v1 + 464))();
  if (!v2)
  {
LABEL_25:

    return 0;
  }

  v3 = v2;
  v4 = (*(*v0 + 168))();
  v5 = v4;
  if (!v4)
  {

    return v5;
  }

  v6 = (*(*v4 + 464))(v4);

  if (!v6)
  {

    goto LABEL_25;
  }

  sub_1E4205CB4();
  result = sub_1E32AE9B0(v3);
  v21 = -result;
  for (i = 4; ; ++i)
  {
    if (v21 + i == 4)
    {

LABEL_30:

      j__OUTLINED_FUNCTION_18();
      sub_1E3E0E8DC();
      sub_1E39D9BC0(v18, v19);
      v5 = v20;

      return v5;
    }

    v9 = i - 4;
    if ((v3 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i - 4, v3);
      v10 = result;
    }

    else
    {
      if (v9 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v10 = *(v3 + 8 * i);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v6 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v9 == result)
    {

      goto LABEL_30;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](i - 4, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v11 = *(v6 + 8 * i);
    }

    v12 = sub_1E39D97B8(v10);
    v14 = v13;
    v15 = v12;
    v16 = sub_1E39D97B8(v11);
    if (v14 < v17)
    {
      v14 = v17;
      v15 = v16;
    }

    swift_isUniquelyReferenced_nonNull_native();
    sub_1E39DB998(v15 & 0x1FF, i - 4, v14);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

uint64_t sub_1E39D97B8(_WORD *a1)
{
  v2 = sub_1E39DB328();
  if (!v3)
  {
    v12 = j__OUTLINED_FUNCTION_18();
    v13 = j__OUTLINED_FUNCTION_18() & 1;
    v14 = v12;
    return sub_1E406F5AC(v14, v13) & 0x1FF;
  }

  v4 = v2;
  v5 = v3;
  v6 = v2 == 49 && v3 == 0xE100000000000000;
  if (v6 || (OUTLINED_FUNCTION_67_0(), (OUTLINED_FUNCTION_25_41() & 1) != 0))
  {

    type metadata accessor for LeagueRankView();
    v7 = sub_1E3C43874(a1, 0, 0, 1);
    if (v7)
    {
      v8 = v7;
      [v7 intrinsicContentSize];
      v10 = v9;

      v11 = 0;
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v15 = v4 == 50 && v5 == 0xE100000000000000;
  if (v15 || (OUTLINED_FUNCTION_67_0(), (OUTLINED_FUNCTION_25_41() & 1) != 0))
  {

    type metadata accessor for UIFactory();
    v16 = sub_1E373C4DC();
    v24 = OUTLINED_FUNCTION_1_111(v16, v17, v18, v19, v20, v21, v22, v23, v57, v58, v59);
    sub_1E373C624(&v57);
    v25 = (*(*a1 + 392))([v24 vui_layoutIfNeeded]);
    v26 = 0.0;
    v27 = 0.0;
    if (v25)
    {
      (*(*v25 + 176))(&v57);

      if ((v59 & 1) == 0)
      {
        v27 = OUTLINED_FUNCTION_24_33();
      }
    }

    if (v24)
    {
      [v24 frame];
      v26 = v28;
    }

    v11 = 0;
    v10 = v27 + v26;
    goto LABEL_36;
  }

  if (v4 != 51 || v5 != 0xE100000000000000)
  {
    OUTLINED_FUNCTION_67_0();
    if ((OUTLINED_FUNCTION_25_41() & 1) == 0)
    {
      if (v4 == 52 && v5 == 0xE100000000000000)
      {
      }

      else
      {
        OUTLINED_FUNCTION_67_0();
        v41 = OUTLINED_FUNCTION_25_41();

        if ((v41 & 1) == 0)
        {
LABEL_34:
          v11 = 0;
          goto LABEL_35;
        }
      }

      type metadata accessor for UIFactory();
      v43 = sub_1E373C4DC();
      v51 = OUTLINED_FUNCTION_1_111(v43, v44, v45, v46, v47, v48, v49, v50, v57, v58, v59);
      v52 = sub_1E373C624(&v57);
      v53 = (*(*a1 + 392))(v52);
      v54 = 0.0;
      v55 = 0.0;
      if (v53)
      {
        (*(*v53 + 176))(&v57);

        if ((v59 & 1) == 0)
        {
          v55 = OUTLINED_FUNCTION_24_33();
        }
      }

      if (v51)
      {
        [v51 intrinsicContentSize];
        v54 = v56;
      }

      v10 = v55 + v54;
      v11 = 2;
      goto LABEL_36;
    }
  }

  type metadata accessor for UIFactory();
  v30 = sub_1E373C4DC();
  v38 = OUTLINED_FUNCTION_1_111(v30, v31, v32, v33, v34, v35, v36, v37, v57, v58, v59);
  sub_1E373C624(&v57);
  if (v38)
  {
    [v38 intrinsicContentSize];
    v10 = v39;

    v11 = 1;
    goto LABEL_36;
  }

  v11 = 1;
LABEL_35:
  v10 = 0.0;
LABEL_36:
  LOBYTE(v61) = v11;
  LOBYTE(v60) = 1;
  sub_1E39DC888();
  if ((sub_1E4205E84() & 1) == 0 && v10 <= 0.0)
  {
    v61 = a1[49];
    v60 = 246;
    sub_1E3741534();
    sub_1E4205E84();
  }

  v13 = j__OUTLINED_FUNCTION_18() & 1;
  v14 = v11;
  return sub_1E406F5AC(v14, v13) & 0x1FF;
}

void sub_1E39D9BC0(uint64_t a1, double a2)
{
  v9 = a1;
  sub_1E39DA818(a1);
  if (v10)
  {
    v12 = v11;
  }

  else
  {

    v12 = a2;
  }

  if (*(v2 + 41))
  {
    goto LABEL_164;
  }

  v164 = v10;

  sub_1E39DA818(v13);
  if (v14)
  {
    v15 = v14;

    v9 = v15;
  }

  v16 = 0;
  v17 = 1 << *(v9 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v9 + 64);
  v20 = (v17 + 63) >> 6;
  v21 = 0.0;
  if (v19)
  {
    while (1)
    {
      v22 = v16;
LABEL_15:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v21 = v21 + *(*(v9 + 56) + ((v22 << 10) | (16 * v23)));
      if (!v19)
      {
        goto LABEL_11;
      }
    }
  }

  while (1)
  {
LABEL_11:
    v22 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_166;
    }

    if (v22 >= v20)
    {
      break;
    }

    v19 = *(v9 + 64 + 8 * v22);
    ++v16;
    if (v19)
    {
      v16 = v22;
      goto LABEL_15;
    }
  }

  if (v21 > a2)
  {
LABEL_164:
    sub_1E3E0E8DC();
    return;
  }

  v24 = *(v164 + 16);
  v161 = v2;
  if (v24)
  {
    v165 = MEMORY[0x1E69E7CC0];
    v163 = v24;

    sub_1E39DC0AC(0, v163, 0);
    v25 = v165;
    sub_1E37817B4();
    OUTLINED_FUNCTION_5_87();
    if (v6 < 0)
    {
      goto LABEL_167;
    }

    while (1)
    {
      if (v6 >= v27 << *(v26 + 32))
      {
        goto LABEL_167;
      }

      OUTLINED_FUNCTION_20_50();
      if (v50)
      {
        goto LABEL_168;
      }

      if (*(v28 + 36) != v5)
      {
        break;
      }

      OUTLINED_FUNCTION_10_62();
      v165 = v25;
      v30 = *(v25 + 16);
      v29 = *(v25 + 24);
      if (v30 >= v29 >> 1)
      {
        v45 = OUTLINED_FUNCTION_35(v29);
        sub_1E39DC0AC(v45, v30 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v25 = v165;
      }

      *(v25 + 16) = v30 + 1;
      OUTLINED_FUNCTION_8_61(v25 + 16 * v30);
      if (v34 == v35)
      {
        goto LABEL_170;
      }

      v36 = *(v32 + 8 * v4);
      if ((v36 & v7) == 0)
      {
        goto LABEL_171;
      }

      if (*(v31 + 36) != v5)
      {
        goto LABEL_172;
      }

      if ((v36 & (v33 << (v6 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        v7 = v25;
        OUTLINED_FUNCTION_6_69();
        while (v42 < v41)
        {
          v44 = *v43;
          OUTLINED_FUNCTION_23_37();
          if (v44)
          {
            OUTLINED_FUNCTION_0_100(v38, v39, v40);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_37;
          }
        }

        OUTLINED_FUNCTION_0_100(v38, v39, v40);
LABEL_37:
        v26 = v164;
      }

      if (++v3 == v37)
      {
        goto LABEL_42;
      }

      v5 = *(v26 + 36);
      v6 = v9;
      if (v9 < 0)
      {
        goto LABEL_167;
      }
    }

LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
    goto LABEL_173;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v46 = *(v25 + 16);
  if (v46)
  {
    v4 = sub_1E39DC834();
    v47 = (v25 + 41);
    v48 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v49 = *(v47 - 9);
      v5 = *(v47 - 1);
      v9 = *v47;
      v170 = *(v47 - 1);
      v169 = 1;
      sub_1E4206254();
      sub_1E4206254();
      v7 = v166;
      v50 = v165 == v167 && v166 == v168;
      if (v50)
      {
        break;
      }

      v51 = OUTLINED_FUNCTION_97_0();

      if (v51)
      {
        goto LABEL_51;
      }

LABEL_56:
      v47 += 16;
      if (!--v46)
      {

        goto LABEL_59;
      }
    }

LABEL_51:
    v171 = v48;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v52 = OUTLINED_FUNCTION_73_0();
      sub_1E39DC0AC(v52, v53, v54);
      v48 = v171;
    }

    v56 = *(v48 + 16);
    v55 = *(v48 + 24);
    v7 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      v58 = OUTLINED_FUNCTION_35(v55);
      sub_1E39DC0AC(v58, v56 + 1, 1);
      v48 = v171;
    }

    *(v48 + 16) = v7;
    v57 = v48 + 16 * v56;
    *(v57 + 32) = v49;
    *(v57 + 40) = v5;
    *(v57 + 41) = v9;
    goto LABEL_56;
  }

  v48 = MEMORY[0x1E69E7CC0];
LABEL_59:
  v160 = *(v48 + 16);

  v59 = *(v164 + 16);
  v60 = MEMORY[0x1E69E7CC0];
  if (!v59)
  {
LABEL_81:
    v81 = *(v60 + 16);
    if (v81)
    {
      sub_1E39DC888();
      v82 = (v60 + 41);
      v83 = MEMORY[0x1E69E7CC0];
      do
      {
        v84 = *(v82 - 9);
        v85 = *(v82 - 1);
        v86 = *v82;
        LOBYTE(v167) = v85;
        LOBYTE(v171) = 1;
        if ((sub_1E4205E84() & 1) == 0)
        {
          v165 = v83;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v87 = OUTLINED_FUNCTION_73_0();
            sub_1E39DC0AC(v87, v88, v89);
            v83 = v165;
          }

          v91 = *(v83 + 16);
          v90 = *(v83 + 24);
          if (v91 >= v90 >> 1)
          {
            v93 = OUTLINED_FUNCTION_35(v90);
            sub_1E39DC0AC(v93, v91 + 1, 1);
            v83 = v165;
          }

          *(v83 + 16) = v91 + 1;
          v92 = v83 + 16 * v91;
          *(v92 + 32) = v84;
          *(v92 + 40) = v85;
          *(v92 + 41) = v86;
        }

        v82 += 16;
        --v81;
      }

      while (v81);
    }

    else
    {
      v83 = MEMORY[0x1E69E7CC0];
    }

    v94 = *(v83 + 16);
    if (v94)
    {
      v95 = (v83 + 32);
      v96 = 0.0;
      v97 = v160;
      do
      {
        v98 = *v95;
        v95 += 2;
        v96 = v96 + v98;
        --v94;
      }

      while (v94);
    }

    else
    {
      v96 = 0.0;
      v97 = v160;
    }

    v171 = v164;
    v99 = 1 << *(v164 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & *(v164 + 64);
    v102 = (v99 + 63) >> 6;
    v103 = v12 - v96;

    v104 = 0;
    while (1)
    {
      if (!v101)
      {
        v105 = v164;
        while (1)
        {
          v106 = v104 + 1;
          if (__OFADD__(v104, 1))
          {
            break;
          }

          if (v106 >= v102)
          {
            LOBYTE(v115) = v164;

            if (*(v161 + 40))
            {

LABEL_163:
              j__OUTLINED_FUNCTION_18();
              goto LABEL_164;
            }

            v116 = 0;
            v117 = v171;
            v118 = 1 << *(v171 + 32);
            v119 = -1;
            if (v118 < 64)
            {
              v119 = ~(-1 << v118);
            }

            v120 = v119 & *(v171 + 64);
            v121 = (v118 + 63) >> 6;
            if (v120)
            {
              goto LABEL_130;
            }

            while (1)
            {
              v122 = v116 + 1;
              if (__OFADD__(v116, 1))
              {
                goto LABEL_179;
              }

              if (v122 >= v121)
              {
                v123 = *(v171 + 16);
                v124 = MEMORY[0x1E69E7CC0];
                if (v123)
                {
                  v165 = MEMORY[0x1E69E7CC0];
                  v162 = v171 + 64;
                  sub_1E39DC0AC(0, v123, 0);
                  v124 = v165;
                  v125 = sub_1E37817B4();
                  v127 = v162;
                  v128 = v125;
                  v129 = 0;
                  v130 = 1;
                  if ((v125 & 0x8000000000000000) == 0)
                  {
                    while (v128 < v130 << *(v117 + 32))
                    {
                      v131 = v128 >> 6;
                      v132 = v130 << v128;
                      if ((*(v127 + 8 * (v128 >> 6)) & (v130 << v128)) == 0)
                      {
                        goto LABEL_181;
                      }

                      if (*(v117 + 36) != v126)
                      {
                        goto LABEL_182;
                      }

                      OUTLINED_FUNCTION_21_46();
                      v165 = v124;
                      v138 = *(v124 + 16);
                      v137 = *(v124 + 24);
                      if (v138 >= v137 >> 1)
                      {
                        v153 = OUTLINED_FUNCTION_35(v137);
                        sub_1E39DC0AC(v153, v138 + 1, 1);
                        OUTLINED_FUNCTION_9_62();
                        v124 = v165;
                      }

                      *(v124 + 16) = v138 + 1;
                      v139 = v124 + 16 * v138;
                      *(v139 + 32) = v103;
                      *(v139 + 40) = v115;
                      *(v139 + 41) = v104;
                      v115 = v135 << *(v117 + 32);
                      if (v128 >= v115)
                      {
                        goto LABEL_183;
                      }

                      v140 = *(v134 + 8 * v131);
                      if ((v140 & v132) == 0)
                      {
                        goto LABEL_184;
                      }

                      if (*(v117 + 36) != v133)
                      {
                        goto LABEL_185;
                      }

                      if ((v140 & (v136 << (v128 & 0x3F))) != 0)
                      {
                        OUTLINED_FUNCTION_17_53();
                      }

                      else
                      {
                        v142 = v131 << 6;
                        v143 = v131 + 1;
                        v144 = (v117 + 72 + 8 * v131);
                        while (v143 < (v115 + 63) >> 6)
                        {
                          v146 = *v144++;
                          v145 = v146;
                          v142 += 64;
                          ++v143;
                          if (v146)
                          {
                            v147 = OUTLINED_FUNCTION_22_36();
                            sub_1E3746E04(v147, v148, v149);
                            OUTLINED_FUNCTION_9_62();
                            v115 = __clz(__rbit64(v145)) + v142;
                            goto LABEL_149;
                          }
                        }

                        v150 = OUTLINED_FUNCTION_22_36();
                        sub_1E3746E04(v150, v151, v152);
                        OUTLINED_FUNCTION_9_62();
                      }

LABEL_149:
                      if (++v129 == v141)
                      {
                        goto LABEL_152;
                      }

                      v126 = *(v117 + 36);
                      v128 = v115;
                      if (v115 < 0)
                      {
                        goto LABEL_180;
                      }
                    }
                  }

                  goto LABEL_180;
                }

LABEL_152:
                v154 = *(v124 + 16);
                if (v154)
                {
                  v155 = (v124 + 32);
                  v156 = 0.0;
                  do
                  {
                    v157 = *v155;
                    v155 += 2;
                    v156 = v156 + v157;
                    --v154;
                  }

                  while (v154);
                }

                else
                {
                  v156 = 0.0;
                }

                v158 = round(v156);
                if ((*&v158 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_186;
                }

                if (v158 <= -9.22337204e18)
                {
                  goto LABEL_187;
                }

                if (v158 >= 9.22337204e18)
                {
                  goto LABEL_188;
                }

                v159 = round(v12);
                if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
                {
                  goto LABEL_189;
                }

                if (v159 <= -9.22337204e18)
                {
                  goto LABEL_190;
                }

                if (v159 >= 9.22337204e18)
                {
                  goto LABEL_191;
                }

                goto LABEL_163;
              }

              v120 = *(v171 + 64 + 8 * v122);
              ++v116;
              if (v120)
              {
                v116 = v122;
                do
                {
LABEL_130:
                  v120 &= v120 - 1;
                }

                while (v120);
              }
            }
          }

          v101 = *(v164 + 64 + 8 * v106);
          ++v104;
          if (v101)
          {
            v104 = v106;
            goto LABEL_107;
          }
        }

LABEL_166:
        __break(1u);
LABEL_167:
        __break(1u);
LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      v105 = v164;
LABEL_107:
      v107 = __clz(__rbit64(v101)) | (v104 << 6);
      v108 = *(*(v105 + 48) + 8 * v107);
      v101 &= v101 - 1;
      v170 = *(*(v105 + 56) + 16 * v107 + 8);
      v169 = 1;
      sub_1E39DC834();
      sub_1E4206254();
      sub_1E4206254();
      if (v165 == v167 && v166 == v168)
      {
        break;
      }

      v110 = OUTLINED_FUNCTION_97_0();

      if (v110)
      {
LABEL_114:
        sub_1E39DA73C(&v165, v108);
        OUTLINED_FUNCTION_19_53();
        if (!v50)
        {
          *v111 = v103 / v97;
        }

        v112(&v165, 0);
        if ((*(v161 + 40) & 1) == 0 && v103 <= 0.0)
        {
          sub_1E39DA73C(&v165, v108);
          OUTLINED_FUNCTION_19_53();
          if (!v50)
          {
            *(v113 + 9) = 1;
          }

          v114(&v165, 0);
        }
      }
    }

    goto LABEL_114;
  }

  v165 = MEMORY[0x1E69E7CC0];
  sub_1E39DC0AC(0, v59, 0);
  v60 = v165;
  sub_1E37817B4();
  OUTLINED_FUNCTION_5_87();
  if ((v48 & 0x8000000000000000) == 0)
  {
    while (v48 < v62 << *(v61 + 32))
    {
      OUTLINED_FUNCTION_20_50();
      if (v50)
      {
        goto LABEL_174;
      }

      if (*(v63 + 36) != v5)
      {
        goto LABEL_175;
      }

      OUTLINED_FUNCTION_10_62();
      v165 = v60;
      v65 = *(v60 + 16);
      v64 = *(v60 + 24);
      v66 = v60;
      if (v65 >= v64 >> 1)
      {
        v80 = OUTLINED_FUNCTION_35(v64);
        sub_1E39DC0AC(v80, v65 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v66 = v165;
      }

      *(v66 + 16) = v65 + 1;
      OUTLINED_FUNCTION_8_61(v66 + 16 * v65);
      if (v34 == v35)
      {
        goto LABEL_176;
      }

      v71 = *(v69 + 8 * v4);
      if ((v71 & v7) == 0)
      {
        goto LABEL_177;
      }

      v60 = v67;
      if (*(v68 + 36) != v5)
      {
        goto LABEL_178;
      }

      if ((v71 & (v70 << (v48 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        OUTLINED_FUNCTION_6_69();
        while (v77 < v76)
        {
          v79 = *v78;
          OUTLINED_FUNCTION_23_37();
          if (v79)
          {
            OUTLINED_FUNCTION_0_100(v73, v74, v75);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_77;
          }
        }

        OUTLINED_FUNCTION_0_100(v73, v74, v75);
LABEL_77:
        v61 = v164;
      }

      if (++v46 == v72)
      {
        goto LABEL_81;
      }

      v5 = *(v61 + 36);
      v48 = v9;
      if (v9 < 0)
      {
        break;
      }
    }
  }

LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
}

void (*sub_1E39DA73C(void *a1, uint64_t a2))(void *)
{
  v4 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v4;
  v4[4] = sub_1E39DBB20(v4, a2);
  return sub_1E39DC8E0;
}

void (*sub_1E39DA7A0(void *a1, uint64_t a2, uint64_t a3))(void *)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1E39DBBB0(v6, a2, a3);
  return sub_1E39DA814;
}

void sub_1E39DA818(uint64_t a1)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_21:
    v33 = *(v5 + 16);
    if (v33)
    {
      sub_1E39DC834();
      v34 = (v5 + 41);
      v35 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v36 = *(v34 - 9);
        v37 = *(v34 - 1);
        v38 = *v34;
        sub_1E4206254();
        sub_1E4206254();
        if (v97 == v95 && v100 == v96)
        {
          break;
        }

        v40 = OUTLINED_FUNCTION_97_0();

        if (v40)
        {
          goto LABEL_30;
        }

LABEL_35:
        v34 += 16;
        if (!--v33)
        {

          goto LABEL_38;
        }
      }

LABEL_30:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = OUTLINED_FUNCTION_73_0();
        sub_1E39DC0AC(v41, v42, v43);
      }

      v45 = *(v35 + 16);
      v44 = *(v35 + 24);
      if (v45 >= v44 >> 1)
      {
        v47 = OUTLINED_FUNCTION_35(v44);
        sub_1E39DC0AC(v47, v45 + 1, 1);
      }

      *(v35 + 16) = v45 + 1;
      v46 = v35 + 16 * v45;
      *(v46 + 32) = v36;
      *(v46 + 40) = v37;
      *(v46 + 41) = v38;
      goto LABEL_35;
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_38:
    v48 = *(v35 + 16);
    if (v48)
    {
      v99 = MEMORY[0x1E69E7CC0];
      sub_1E3887DC4(0, v48, 0);
      v49 = v99;
      v50 = *(v99 + 16);
      v51 = 32;
      do
      {
        v52 = *(v35 + v51);
        v97 = v49;
        v53 = *(v49 + 24);
        if (v50 >= v53 >> 1)
        {
          v54 = OUTLINED_FUNCTION_35(v53);
          sub_1E3887DC4(v54, v50 + 1, 1);
        }

        *(v49 + 16) = v50 + 1;
        *(v49 + 8 * v50 + 32) = v52;
        v51 += 16;
        ++v50;
        --v48;
      }

      while (v48);
    }

    else
    {

      v49 = MEMORY[0x1E69E7CC0];
    }

    sub_1E39AB6F8(v49);
    v56 = v55;

    if (v56)
    {
      return;
    }

    v57 = *(a1 + 16);
    v58 = MEMORY[0x1E69E7CC0];
    if (!v57)
    {
LABEL_74:
      sub_1E39DAF48(v58);
      j__OUTLINED_FUNCTION_18();
      sub_1E3E0E8DC();
      return;
    }

    v101 = MEMORY[0x1E69E7CC0];
    sub_1E39DC08C(0, v57, 0);
    v93 = v101;
    v60 = sub_1E37817B4();
    v61 = a1;
    v63 = v62;
    v64 = 0;
    v65 = a1 + 64;
    v88 = v62;
    v89 = v57;
    while (1)
    {
      if (v60 < 0 || v60 >= 1 << *(v61 + 32))
      {
        goto LABEL_82;
      }

      v66 = v60 >> 6;
      if ((*(v65 + 8 * (v60 >> 6)) & (1 << v60)) == 0)
      {
        goto LABEL_83;
      }

      if (*(v61 + 36) != v63)
      {
        goto LABEL_84;
      }

      v90 = v59;
      v91 = *(*(v61 + 48) + 8 * v60);
      v67 = *(v61 + 56) + 16 * v60;
      v68 = *v67;
      v69 = *(v67 + 8);
      LOBYTE(v70) = *(v67 + 9);
      sub_1E39DC834();
      sub_1E4206254();
      sub_1E4206254();
      if (v97 == v95 && v100 == v96)
      {
      }

      else
      {
        v72 = OUTLINED_FUNCTION_97_0();

        if ((v72 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      v73 = j__OUTLINED_FUNCTION_18();
      v74 = sub_1E406F5AC(v69, v73 & 1);
      v68 = v75;
      v69 = v74;
      v70 = (v74 >> 8) & 1;
LABEL_60:
      v76 = v93;
      v77 = a1;
      v79 = *(v93 + 16);
      v78 = *(v93 + 24);
      if (v79 >= v78 >> 1)
      {
        v87 = OUTLINED_FUNCTION_35(v78);
        sub_1E39DC08C(v87, v79 + 1, 1);
        v77 = a1;
        v76 = v93;
      }

      *(v76 + 16) = v79 + 1;
      v80 = v76 + 24 * v79;
      *(v80 + 32) = v91;
      *(v80 + 40) = v68;
      *(v80 + 48) = v69;
      *(v80 + 49) = v70;
      v81 = 1 << *(v77 + 32);
      if (v60 >= v81)
      {
        goto LABEL_85;
      }

      v65 = a1 + 64;
      v82 = *(a1 + 64 + 8 * v66);
      if ((v82 & (1 << v60)) == 0)
      {
        goto LABEL_86;
      }

      v93 = v76;
      if (*(v77 + 36) != v63)
      {
        goto LABEL_87;
      }

      if ((v82 & (-2 << (v60 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_3_90();
      }

      else
      {
        v83 = (v81 + 63) >> 6;
        v84 = v66 + 1;
        v85 = (a1 + 72 + 8 * v66);
        while (v84 < v83)
        {
          v86 = *v85;
          OUTLINED_FUNCTION_23_37();
          if (v86)
          {
            sub_1E3746E04(v60, v63, v90 & 1);
            OUTLINED_FUNCTION_16_56();
            goto LABEL_72;
          }
        }

        sub_1E3746E04(v60, v63, v90 & 1);
        v61 = a1;
      }

LABEL_72:
      v59 = 0;
      ++v64;
      v60 = v81;
      v63 = v88;
      if (v64 == v89)
      {
        v58 = v93;
        goto LABEL_74;
      }
    }
  }

  v98 = MEMORY[0x1E69E7CC0];
  v92 = *(a1 + 16);
  sub_1E39DC0AC(0, v4, 0);
  v5 = v98;
  v6 = sub_1E37817B4();
  v7 = a1;
  v9 = v8;
  v10 = 0;
  v11 = a1 + 64;
  v12 = 1;
  if ((v6 & 0x8000000000000000) == 0)
  {
    while (v6 < v12 << *(v7 + 32))
    {
      v13 = v6 >> 6;
      v14 = v12 << v6;
      if ((*(v11 + 8 * (v6 >> 6)) & (v12 << v6)) == 0)
      {
        goto LABEL_77;
      }

      if (*(v7 + 36) != v9)
      {
        goto LABEL_78;
      }

      OUTLINED_FUNCTION_21_46();
      v97 = v5;
      v20 = *(v5 + 16);
      v19 = *(v5 + 24);
      if (v20 >= v19 >> 1)
      {
        v32 = OUTLINED_FUNCTION_35(v19);
        sub_1E39DC0AC(v32, v20 + 1, 1);
        OUTLINED_FUNCTION_4_88();
        v16 = a1 + 64;
        v15 = a1;
      }

      *(v5 + 16) = v20 + 1;
      v21 = v5 + 16 * v20;
      *(v21 + 32) = v3;
      *(v21 + 40) = v1;
      *(v21 + 41) = v2;
      v1 = v17 << *(v15 + 32);
      if (v6 >= v1)
      {
        goto LABEL_79;
      }

      v22 = *(v16 + 8 * v13);
      if ((v22 & v14) == 0)
      {
        goto LABEL_80;
      }

      if (*(v15 + 36) != v9)
      {
        goto LABEL_81;
      }

      if ((v22 & (v18 << (v6 & 0x3F))) != 0)
      {
        OUTLINED_FUNCTION_17_53();
      }

      else
      {
        v24 = (v1 + 63) >> 6;
        v25 = v13 + 1;
        v26 = (a1 + 72 + 8 * v13);
        while (v25 < v24)
        {
          v27 = *v26;
          OUTLINED_FUNCTION_23_37();
          if (v27)
          {
            v28 = OUTLINED_FUNCTION_22_36();
            sub_1E3746E04(v28, v9, v29);
            OUTLINED_FUNCTION_4_88();
            OUTLINED_FUNCTION_16_56();
            goto LABEL_18;
          }
        }

        v30 = OUTLINED_FUNCTION_22_36();
        sub_1E3746E04(v30, v9, v31);
        OUTLINED_FUNCTION_4_88();
        v11 = a1 + 64;
        v23 = v92;
        v7 = a1;
      }

LABEL_18:
      if (++v10 == v23)
      {
        goto LABEL_21;
      }

      v9 = *(v7 + 36);
      v6 = v1;
      if (v1 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

uint64_t sub_1E39DAF48(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30230);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;

  sub_1E39DC2D0(v2, 1, &v4);

  return v4;
}

uint64_t sub_1E39DAFFC(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
  v36 = sub_1E4205CB4();
  v2 = sub_1E32AE9B0(a1);
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  v33 = v2;
  v34 = a1;
  v31 = a1 & 0xFFFFFFFFFFFFFF8;
  v32 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v2 == v3)
    {
      return v36;
    }

    if (v4)
    {
      v6 = MEMORY[0x1E6911E60](v3, a1);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_29;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    if (__OFADD__(v3, 1))
    {
      break;
    }

    v7 = sub_1E39DB328();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = v36;
      if (*(v36 + 16) && (sub_1E327D33C(v7, v8), (v12 & 1) != 0))
      {
        v14 = sub_1E39DA7A0(v35, v9, v10);
        if (*v13)
        {
          v15 = v13;

          MEMORY[0x1E6910BF0](v16);
          v17 = *((*v15 & 0xFFFFFFFFFFFFFF8) + 0x18);
          if (*((*v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17 >> 1)
          {
            OUTLINED_FUNCTION_35(v17);
            sub_1E42062F4();
          }

          sub_1E4206324();
        }

        (v14)(v35, 0);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1E4298880;
        *(v18 + 32) = v6;

        swift_isUniquelyReferenced_nonNull_native();
        v35[0] = v11;
        v19 = sub_1E327D33C(v9, v10);
        if (__OFADD__(*(v11 + 16), (v20 & 1) == 0))
        {
          goto LABEL_30;
        }

        v21 = v19;
        v22 = v20;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30220);
        if (sub_1E4207644())
        {
          v23 = sub_1E327D33C(v9, v10);
          if ((v22 & 1) != (v24 & 1))
          {
            goto LABEL_32;
          }

          v21 = v23;
        }

        v25 = v35[0];
        if (v22)
        {
          *(*(v35[0] + 56) + 8 * v21) = v18;
        }

        else
        {
          *(v35[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
          v26 = (v25[6] + 16 * v21);
          *v26 = v9;
          v26[1] = v10;
          *(v25[7] + 8 * v21) = v18;
          v27 = v25[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_31;
          }

          v25[2] = v29;
        }

        v36 = v25;
        v2 = v33;
        a1 = v34;
        v5 = v31;
        v4 = v32;
      }
    }

    else
    {
    }

    ++v3;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E39DB328()
{
  v2[3] = &unk_1F5D5D5B8;
  v2[4] = &off_1F5D5C878;
  LOBYTE(v2[0]) = 0;
  v0 = sub_1E39C29A4(v2);
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0;
}

uint64_t sub_1E39DB384()
{

  return v0;
}

uint64_t sub_1E39DB3B4()
{
  sub_1E39DB384();

  return MEMORY[0x1EEE6BDC0](v0, 42, 7);
}

unint64_t sub_1E39DB3E8(unint64_t a1, unint64_t a2, double a3)
{
  v4 = a1;
  v6 = 0;
  v7 = -sub_1E32AE9B0(a1);
  v8 = MEMORY[0x1E69E7CC0];
  v9 = a3;
  v44 = MEMORY[0x1E69E7CC0];
LABEL_2:
  for (i = v6 + 4; v7 + i != 4; ++i)
  {
    v11 = i - 4;
    if ((v4 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E6911E60](i - 4, v4);
    }

    else
    {
      if (v11 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v12 = *(v4 + 8 * i);
    }

    v6 = i - 3;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (a2 >> 62)
    {
      v13 = sub_1E4207384();
    }

    else
    {
      v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v11 == v13)
    {

      break;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](i - 4, a2);
    }

    else
    {
      if (v11 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v14 = *(a2 + 8 * i);
    }

    sub_1E39D97B8(v12);
    v16 = v15;
    sub_1E39D97B8(v14);
    if (v16 <= v17)
    {
      v16 = v17;
    }

    if (v16 > v9)
    {
      v25 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = OUTLINED_FUNCTION_73_0();
        v25 = sub_1E39DC5B0(v32, v33, v34, v44);
      }

      v26 = v25;
      v27 = v25[2];
      v44 = v26;
      v28 = v26[3];
      if (v27 >= v28 >> 1)
      {
        v35 = OUTLINED_FUNCTION_35(v28);
        v44 = sub_1E39DC5B0(v35, v27 + 1, 1, v44);
      }

      v44[2] = v27 + 1;
      v44[v27 + 4] = v8;
      v8 = sub_1E39DC6E0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v30 = v8[2];
      v29 = v8[3];
      if (v30 >= v29 >> 1)
      {
        v36 = OUTLINED_FUNCTION_35(v29);
        v8 = sub_1E39DC6E0(v36, v30 + 1, 1, v8);
      }

      v9 = a3 - v16;
      v8[2] = v30 + 1;
      v31 = &v8[2 * v30];
      v31[4] = v12;
      v31[5] = v14;
      goto LABEL_2;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_73_0();
      v8 = sub_1E39DC6E0(v21, v22, v23, v8);
    }

    v19 = v8[2];
    v18 = v8[3];
    if (v19 >= v18 >> 1)
    {
      v24 = OUTLINED_FUNCTION_35(v18);
      v8 = sub_1E39DC6E0(v24, v19 + 1, 1, v8);
    }

    v9 = v9 - v16;
    v8[2] = v19 + 1;
    v20 = &v8[2 * v19];
    v20[4] = v12;
    v20[5] = v14;
  }

  v4 = v44;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_34;
  }

LABEL_40:
  v40 = OUTLINED_FUNCTION_73_0();
  v4 = sub_1E39DC5B0(v40, v41, v42, v4);
LABEL_34:
  v38 = *(v4 + 16);
  v37 = *(v4 + 24);
  if (v38 >= v37 >> 1)
  {
    v43 = OUTLINED_FUNCTION_35(v37);
    v4 = sub_1E39DC5B0(v43, v38 + 1, 1, v4);
  }

  *(v4 + 16) = v38 + 1;
  *(v4 + 8 * v38 + 32) = v8;
  return v4;
}

uint64_t sub_1E39DB714(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30230);
  result = sub_1E4207724();
  v7 = result;
  if (!*(v5 + 16))
  {

LABEL_30:
    *v3 = v7;
    return result;
  }

  v34 = a2;
  v35 = v3;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v34)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        sub_1E373CBF0(0, (v33 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
    goto LABEL_30;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 56) + 16 * v18;
    v20 = *(*(v5 + 48) + 8 * v18);
    v21 = *(v19 + 9);
    v22 = *(v19 + 8);
    v23 = *v19;
    result = sub_1E4207B34();
    v24 = -1 << *(v7 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v7 + 48) + 8 * v27) = v20;
    v32 = *(v7 + 56) + 16 * v27;
    *v32 = v23;
    *(v32 + 8) = v22;
    *(v32 + 9) = v21;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v14 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1E39DB998(__int16 a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1E3928950(a2);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3928950(a2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v11 = result;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = v15[7] + 16 * v11;
    *v16 = a3;
    *(v16 + 8) = a1;
    *(v16 + 9) = HIBYTE(a1) & 1;
  }

  else
  {

    return sub_1E39DBACC(v11, a2, a1 & 0x1FF, v15, a3);
  }

  return result;
}

unint64_t sub_1E39DBACC(unint64_t result, uint64_t a2, __int16 a3, void *a4, double a5)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  v5 = a4[7] + 16 * result;
  *v5 = a5;
  *(v5 + 8) = a3;
  *(v5 + 9) = HIBYTE(a3) & 1;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void (*sub_1E39DBB20(void *a1, uint64_t a2))(uint64_t)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v4[8] = sub_1E39DC064(v4);
  v4[9] = sub_1E39DBC4C(v4 + 4, a2);
  return sub_1E39DC8E4;
}

void (*sub_1E39DBBB0(void *a1, uint64_t a2, uint64_t a3))(uint64_t)
{
  v6 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v6;
  swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_1E377F45C(v6);
  v6[9] = sub_1E39DBE48(v6 + 4, a2, a3);
  return sub_1E39DBC48;
}

void (*sub_1E39DBC4C(void *a1, uint64_t a2))(double **a1)
{
  v3 = v2;
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[2] = a2;
  v6[3] = v2;
  v7 = *v2;
  v8 = sub_1E3928950(a2);
  *(v6 + 10) = v9 & 1;
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238);
  if (sub_1E4207644())
  {
    v12 = sub_1E3928950(a2);
    if ((v11 & 1) == (v13 & 1))
    {
      v10 = v12;
      goto LABEL_5;
    }

LABEL_13:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v6[4] = v10;
  if (v11)
  {
    v14 = *(*v3 + 56) + 16 * v10;
    v15 = *v14;
    v16 = *(v14 + 8);
    if (*(v14 + 9))
    {
      v17 = 256;
    }

    else
    {
      v17 = 0;
    }

    v18 = v17 | v16;
  }

  else
  {
    v15 = 0;
    v18 = 512;
  }

  *v6 = v15;
  *(v6 + 4) = v18;
  return sub_1E39DBD98;
}

void sub_1E39DBD98(double **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 4);
  v3 = *(*a1 + 10);
  if ((v2 & 0xFF00) == 0x200)
  {
    if (*(*a1 + 10))
    {
      sub_1E4207664();
    }
  }

  else
  {
    v4 = *v1;
    v6 = *(v1 + 3);
    v5 = *(v1 + 4);
    if (v3)
    {
      v7 = (*v6)[7] + 16 * v5;
      *v7 = v4;
      *(v7 + 8) = v2;
      *(v7 + 9) = HIBYTE(v2) & 1;
    }

    else
    {
      sub_1E39DBACC(v5, *(v1 + 2), v2 & 0x1FF, *v6, v4);
    }
  }

  free(v1);
}

void (*sub_1E39DBE48(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v8;
  v8[2] = a3;
  v8[3] = v3;
  v8[1] = a2;
  v9 = *v3;
  v10 = sub_1E327D33C(a2, a3);
  *(v8 + 40) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30220);
  if (sub_1E4207644())
  {
    v14 = sub_1E327D33C(a2, a3);
    if ((v13 & 1) == (v15 & 1))
    {
      v12 = v14;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[4] = v12;
  if (v13)
  {
    v16 = *(*(*v4 + 56) + 8 * v12);
  }

  else
  {
    v16 = 0;
  }

  *v8 = v16;
  return sub_1E39DBF88;
}

void sub_1E39DBF88(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_1E377E1B0(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_1E3782C70(*(*v1[3] + 48) + 16 * v1[4]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790);
    sub_1E4207664();
  }

  free(v1);
}

uint64_t (*sub_1E39DC064(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1E39DC8DC;
}

char *sub_1E39DC08C(char *a1, int64_t a2, char a3)
{
  result = sub_1E39DC0CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E39DC0AC(char *a1, int64_t a2, char a3)
{
  result = sub_1E39DC1D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E39DC0CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30240);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1E39DC1D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void sub_1E39DC2D0(uint64_t a1, char a2, void *a3)
{
  v27 = *(a1 + 16);
  if (!v27)
  {
LABEL_13:

    return;
  }

  v26 = a1;
  v4 = 0;
  v5 = (a1 + 49);
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1E4207A74();
      __break(1u);
      goto LABEL_22;
    }

    v6 = *(v5 - 17);
    v7 = *(v5 - 9);
    v8 = *v5;
    v9 = *(v5 - 1);
    v10 = *a3;
    v12 = sub_1E3928950(v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_19;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30238);
      sub_1E4207654();
      if (v16)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v19 = *a3;
    *(*a3 + 8 * (v12 >> 6) + 64) |= 1 << v12;
    *(v19[6] + 8 * v12) = v6;
    v20 = v19[7] + 16 * v12;
    *v20 = v7;
    *(v20 + 8) = v9;
    *(v20 + 9) = v8;
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_20;
    }

    ++v4;
    v19[2] = v23;
    v5 += 24;
    a2 = 1;
    a1 = v26;
    if (v27 == v4)
    {
      goto LABEL_13;
    }
  }

  sub_1E39DB714(v15, a2 & 1);
  v17 = sub_1E3928950(v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_21;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v24 = swift_allocError();
  swift_willThrow();
  v25 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0xD00000000000001BLL, 0x80000001E426B040);
  sub_1E4207614();
  MEMORY[0x1E69109E0](39, 0xE100000000000000);
  sub_1E42076B4();
  __break(1u);
}

void *sub_1E39DC5B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30260);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30268);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E39DC6E0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30250);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30258);
    swift_arrayInitWithCopy();
  }

  return v10;
}