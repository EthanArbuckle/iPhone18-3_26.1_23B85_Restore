uint64_t sub_1B1B95658(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633A8, type metadata accessor for Realtime_V1_TurnDetection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B956D8(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95748()
{
  sub_1B1B94F28(&qword_1EB763170, type metadata accessor for Realtime_V1_TurnDetection);

  return sub_1B1C2C6E8();
}

uint64_t Realtime_V1_Tool.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_43();
      sub_1B1B95878();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B95878()
{
  v0 = *(type metadata accessor for Realtime_V1_Tool(0) + 24);
  type metadata accessor for Realtime_V1_Function(0);
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_Tool.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v1 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v3 = OUTLINED_FUNCTION_29_10();
    result = sub_1B1B959A0(v3, v4, v5, v6);
    if (!v0)
    {
      v7 = *(type metadata accessor for Realtime_V1_Tool(0) + 20);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B959A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Realtime_V1_Function(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Realtime_V1_Tool(0) + 24);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762FE8, &qword_1B1C3B490);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

void static Realtime_V1_Tool.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_69_0();
  v3 = type metadata accessor for Realtime_V1_Function(0);
  v4 = OUTLINED_FUNCTION_45(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FE8, &qword_1B1C3B490);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_82();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763050, &qword_1B1C3B4B0);
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (!v15 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_18;
  }

  v24 = type metadata accessor for Realtime_V1_Tool(0);
  v16 = *(v24 + 24);
  v17 = *(v11 + 48);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_36_9(v2);
  if (v15)
  {
    OUTLINED_FUNCTION_36_9(v2 + v17);
    if (v15)
    {
      sub_1B1A90C20(v2, &qword_1EB762FE8, &qword_1B1C3B490);
LABEL_17:
      v21 = *(v24 + 20);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      sub_1B1B94F28(v22, v23);
      OUTLINED_FUNCTION_42();
      goto LABEL_18;
    }

LABEL_14:
    sub_1B1A90C20(v2, &qword_1EB763050, &qword_1B1C3B4B0);
    goto LABEL_18;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_36_9(v2 + v17);
  if (v18)
  {
    sub_1B1B8F87C();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_9_24();
  sub_1B1B8F650();
  OUTLINED_FUNCTION_3_3();
  static Realtime_V1_Function.== infix(_:_:)();
  v20 = v19;
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v2, &qword_1EB762FE8, &qword_1B1C3B490);
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_18:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B95E9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB7633A0, type metadata accessor for Realtime_V1_Tool);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B95F1C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B95F8C()
{
  sub_1B1B94F28(&qword_1EB763008, type metadata accessor for Realtime_V1_Tool);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B96018()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F18);
  __swift_project_value_buffer(v0, qword_1EB762F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parameters";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Function.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_43();
      sub_1B1B962BC();
    }

    else if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B962BC()
{
  v0 = *(type metadata accessor for Realtime_V1_Function(0) + 28);
  type metadata accessor for Realtime_V1_Parameters(0);
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters);
  return sub_1B1C2C6B8();
}

uint64_t Realtime_V1_Function.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    OUTLINED_FUNCTION_17_0();
    if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      v7 = OUTLINED_FUNCTION_29_10();
      result = sub_1B1B96408(v7, v8, v9, v10);
      if (!v0)
      {
        v11 = *(type metadata accessor for Realtime_V1_Function(0) + 24);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t sub_1B1B96408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Realtime_V1_Parameters(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v10 = *(type metadata accessor for Realtime_V1_Function(0) + 28);
  sub_1B1B90BBC();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1B1A90C20(v7, &qword_1EB762FF0, &qword_1B1C3B498);
  }

  sub_1B1B8F650();
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters);
  sub_1B1C2C788();
  return sub_1B1B8F87C();
}

void static Realtime_V1_Function.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_69_0();
  v3 = type metadata accessor for Realtime_V1_Parameters(0);
  v4 = OUTLINED_FUNCTION_45(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762FF0, &qword_1B1C3B498);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_82();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763060, &qword_1B1C3B4B8);
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_35();
  v15 = *v1 == *v0 && v1[1] == v0[1];
  if (!v15 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_50_4();
  v18 = v15 && v16 == v17;
  if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  v28 = type metadata accessor for Realtime_V1_Function(0);
  v19 = *(v28 + 28);
  v20 = *(v11 + 48);
  OUTLINED_FUNCTION_96_1();
  OUTLINED_FUNCTION_97_1();
  OUTLINED_FUNCTION_36_9(v2);
  if (v15)
  {
    OUTLINED_FUNCTION_36_9(v2 + v20);
    if (v15)
    {
      sub_1B1A90C20(v2, &qword_1EB762FF0, &qword_1B1C3B498);
LABEL_22:
      v25 = *(v28 + 24);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_0_30();
      sub_1B1B94F28(v26, v27);
      OUTLINED_FUNCTION_42();
      goto LABEL_23;
    }

LABEL_19:
    sub_1B1A90C20(v2, &qword_1EB763060, &qword_1B1C3B4B8);
    goto LABEL_23;
  }

  sub_1B1B90BBC();
  OUTLINED_FUNCTION_36_9(v2 + v20);
  if (v21)
  {
    sub_1B1B8F87C();
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_7_19();
  sub_1B1B8F650();
  v22 = OUTLINED_FUNCTION_3_3();
  v24 = static Realtime_V1_Parameters.== infix(_:_:)(v22, v23);
  sub_1B1B8F87C();
  sub_1B1B8F87C();
  sub_1B1A90C20(v2, &qword_1EB762FF0, &qword_1B1C3B498);
  if (v24)
  {
    goto LABEL_22;
  }

LABEL_23:
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1B9691C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763398, type metadata accessor for Realtime_V1_Function);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B9699C(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B96A0C()
{
  sub_1B1B94F28(&qword_1EB763198, type metadata accessor for Realtime_V1_Function);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B96AA4()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F30);
  __swift_project_value_buffer(v0, qword_1EB762F30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "properties";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "required";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Parameters.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C688();
        break;
      case 2:
        OUTLINED_FUNCTION_43();
        sub_1B1B96D54();
        break;
      case 1:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
    }
  }

  return result;
}

uint64_t sub_1B1B96D54()
{
  sub_1B1C2C598();
  type metadata accessor for Realtime_V1_Property(0);
  sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property);
  sub_1B1B94F28(&qword_1EB763078, type metadata accessor for Realtime_V1_Property);
  return sub_1B1C2C608();
}

uint64_t Realtime_V1_Parameters.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (sub_1B1C2C598(), type metadata accessor for Realtime_V1_Property(0), sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property), sub_1B1B94F28(&qword_1EB763078, type metadata accessor for Realtime_V1_Property), OUTLINED_FUNCTION_31_8(), result = sub_1B1C2C6F8(), !v0))
    {
      if (!*(*(v1 + 24) + 16) || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C758(), !v0))
      {
        v4 = *(type metadata accessor for Realtime_V1_Parameters(0) + 28);
        return OUTLINED_FUNCTION_48();
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_Parameters.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0 || (sub_1B1B99CF0(*(v3 + 16), *(v2 + 16)) & 1) == 0 || (sub_1B1B8E83C(*(v3 + 24), *(v2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Realtime_V1_Parameters(0) + 28);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v8, v9);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B970F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763390, type metadata accessor for Realtime_V1_Parameters);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B97170(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B971E0()
{
  sub_1B1B94F28(&qword_1EB7631B0, type metadata accessor for Realtime_V1_Parameters);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B97284(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v5, a2);
  v6 = OUTLINED_FUNCTION_33();
  __swift_project_value_buffer(v6, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B1C36280;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = "type";
  *(v13 + 8) = 4;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69AADC8];
  v15 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v15);
  v17 = *(v16 + 104);
  (v17)(v13, v14, v15);
  v18 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v18 = a3;
  *(v18 + 1) = a4;
  v18[16] = 2;
  v17();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B97544(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763388, type metadata accessor for Realtime_V1_Property);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B975C4(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B97634()
{
  sub_1B1B94F28(&qword_1EB763070, type metadata accessor for Realtime_V1_Property);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B976CC()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F60);
  __swift_project_value_buffer(v0, qword_1EB762F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C36280;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "object";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B978B4()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_72_0();
      sub_1B1C2C698();
    }
  }

  return result;
}

uint64_t sub_1B1B97940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    v9 = *(v5 + 16);
    v10 = *(v5 + 24);
    OUTLINED_FUNCTION_17_0();
    if (!v11 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
    {
      v12 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_48();
    }
  }

  return result;
}

uint64_t sub_1B1B979F0(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v11, v12);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B97B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763380, type metadata accessor for Realtime_V1_Conversation);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B97BA4(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B97C14()
{
  sub_1B1B94F28(&qword_1EB7631D8, type metadata accessor for Realtime_V1_Conversation);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B97CA0()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762F78);
  __swift_project_value_buffer(v0, qword_1EB762F78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1B1C373B0;
  v4 = v25 + v3 + v1[14];
  *(v25 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v25 + v3 + v2 + v1[14];
  *(v25 + v3 + v2) = 2;
  *v8 = "type";
  *(v8 + 8) = 4;
  *(v8 + 16) = 2;
  v7();
  v9 = (v25 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "content";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v7();
  v11 = (v25 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "role";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v7();
  v13 = (v25 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "status";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v25 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "call_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v7();
  v18 = (v25 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "name";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v7();
  v20 = (v25 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "arguments";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v7();
  v22 = (v25 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "output";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_Item.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      case 3:
        OUTLINED_FUNCTION_43();
        sub_1B1B980EC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B980EC()
{
  type metadata accessor for Realtime_V1_Content(0);
  sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content);
  return sub_1B1C2C6A8();
}

uint64_t Realtime_V1_Item.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_17_0();
    if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      if (!*(v1[4] + 16) || (type metadata accessor for Realtime_V1_Content(0), sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content), OUTLINED_FUNCTION_16_4(), result = sub_1B1C2C778(), !v0))
      {
        v7 = v1[5];
        v8 = v1[6];
        OUTLINED_FUNCTION_17_0();
        if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
        {
          v10 = v1[7];
          v11 = v1[8];
          OUTLINED_FUNCTION_17_0();
          if (!v12 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
          {
            v13 = v1[9];
            v14 = v1[10];
            OUTLINED_FUNCTION_17_0();
            if (!v15 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
            {
              v16 = v1[11];
              v17 = v1[12];
              OUTLINED_FUNCTION_17_0();
              if (!v18 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
              {
                v19 = v1[13];
                v20 = v1[14];
                OUTLINED_FUNCTION_17_0();
                if (!v21 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
                {
                  v22 = v1[15];
                  v23 = v1[16];
                  OUTLINED_FUNCTION_17_0();
                  if (!v24 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
                  {
                    v25 = *(type metadata accessor for Realtime_V1_Item(0) + 52);
                    return OUTLINED_FUNCTION_48();
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_Item.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B1B8E8C8(v3[4], v2[4]) & 1) == 0)
  {
    return 0;
  }

  v10 = v3[5] == v2[5] && v3[6] == v2[6];
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[7] == v2[7] && v3[8] == v2[8];
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[9] == v2[9] && v3[10] == v2[10];
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[11] == v2[11] && v3[12] == v2[12];
  if (!v13 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v14 = v3[13] == v2[13] && v3[14] == v2[14];
  if (!v14 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v15 = v3[15] == v2[15] && v3[16] == v2[16];
  if (!v15 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Realtime_V1_Item(0) + 52);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v17, v18);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t (*sub_1B1B98544(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_1B1B98598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763378, type metadata accessor for Realtime_V1_Item);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B98618(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B98688()
{
  sub_1B1B94F28(&qword_1EB762DE0, type metadata accessor for Realtime_V1_Item);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9872C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B1C364E0;
  v8 = v7 + v6;
  v9 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v9 = "type";
  *(v9 + 8) = 4;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADC8];
  v11 = sub_1B1C2C798();
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 104);
  OUTLINED_FUNCTION_94_1();
  v13();
  v14 = v8 + v5 + v4[14];
  *(v8 + v5) = 2;
  *v14 = "text";
  *(v14 + 8) = 4;
  *(v14 + 16) = 2;
  OUTLINED_FUNCTION_94_1();
  v13();
  v15 = (v8 + 2 * v5);
  v16 = v15 + v4[14];
  *v15 = 3;
  *v16 = "audio";
  *(v16 + 1) = 5;
  v16[16] = 2;
  OUTLINED_FUNCTION_94_1();
  v13();
  v17 = (v8 + 3 * v5);
  v18 = v17 + v4[14];
  *v17 = 4;
  *v18 = "transcript";
  *(v18 + 1) = 10;
  v18[16] = 2;
  OUTLINED_FUNCTION_94_1();
  v13();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B98974()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1B98A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_7_18();
  if (!v7 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
  {
    v9 = v5[2];
    v10 = v5[3];
    OUTLINED_FUNCTION_17_0();
    if (!v11 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
    {
      v12 = v5[4];
      v13 = v5[5];
      OUTLINED_FUNCTION_17_0();
      if (!v14 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
      {
        v15 = v5[6];
        v16 = v5[7];
        OUTLINED_FUNCTION_17_0();
        if (!v17 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v4))
        {
          v18 = *(a4(0) + 32);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B1B98B24(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = v4[4] == v3[4] && v4[5] == v3[5];
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v13 = v4[6] == v3[6] && v4[7] == v3[7];
  if (!v13 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a3(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v15, v16);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B98C98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763370, type metadata accessor for Realtime_V1_Content);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B98D18(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B98D88()
{
  sub_1B1B94F28(&qword_1EB763090, type metadata accessor for Realtime_V1_Content);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B98E20()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762FA8);
  __swift_project_value_buffer(v0, qword_1EB762FA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C3A100;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "code";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "message";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "param";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "event_id";
  *(v16 + 1) = 8;
  v16[16] = 2;
  v17 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_CommonError.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        OUTLINED_FUNCTION_72_0();
        sub_1B1C2C698();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_CommonError.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_17_0();
    if (!v6 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_17_0();
      if (!v9 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
      {
        v10 = v1[6];
        v11 = v1[7];
        OUTLINED_FUNCTION_17_0();
        if (!v12 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
        {
          v13 = v1[8];
          v14 = v1[9];
          OUTLINED_FUNCTION_17_0();
          if (!v15 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
          {
            v16 = *(type metadata accessor for Realtime_V1_CommonError(0) + 36);
            return OUTLINED_FUNCTION_48();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_CommonError.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_50_4();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v13 = *(type metadata accessor for Realtime_V1_CommonError(0) + 36);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v14, v15);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B993F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763368, type metadata accessor for Realtime_V1_CommonError);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B99474(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B994E4()
{
  sub_1B1B94F28(&qword_1EB763210, type metadata accessor for Realtime_V1_CommonError);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B9957C()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB762FC0);
  __swift_project_value_buffer(v0, qword_1EB762FC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1C364E0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B1C2C798();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "limit";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "remaining";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "reset_after_seconds";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1B99818(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  while (1)
  {
    result = sub_1B1C2C618();
    if (v5 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B1C2C698();
        break;
      case 2:
        a4(v4 + 16, a2, a3);
        break;
      case 3:
      case 4:
        sub_1B1C2C678();
        break;
      default:
        continue;
    }
  }
}

uint64_t Realtime_V1_RateLimit.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_7_18();
  if (!v2 || (OUTLINED_FUNCTION_39(), result = sub_1B1C2C768(), !v0))
  {
    if (!v1[4] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
    {
      if (!v1[5] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
      {
        if (!v1[6] || (OUTLINED_FUNCTION_20_11(), result = sub_1B1C2C748(), !v0))
        {
          v4 = *(type metadata accessor for Realtime_V1_RateLimit(0) + 32);
          return OUTLINED_FUNCTION_48();
        }
      }
    }
  }

  return result;
}

uint64_t static Realtime_V1_RateLimit.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0 || v3[4] != v2[4] || v3[5] != v2[5] || v3[6] != v2[6])
  {
    return 0;
  }

  v7 = *(type metadata accessor for Realtime_V1_RateLimit(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_0_30();
  sub_1B1B94F28(v8, v9);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1B99AA0(void (*a1)(void))
{
  sub_1B1C2D888();
  a1(0);
  v2 = OUTLINED_FUNCTION_33();
  sub_1B1B94F28(v2, v3);
  sub_1B1C2CAE8();
  return sub_1B1C2D8E8();
}

uint64_t sub_1B1B99B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1B94F28(&qword_1EB763360, type metadata accessor for Realtime_V1_RateLimit);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B1B99C00(uint64_t a1)
{
  v2 = sub_1B1B94F28(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B1B99C70()
{
  sub_1B1B94F28(&qword_1EB763228, type metadata accessor for Realtime_V1_RateLimit);

  return sub_1B1C2C6E8();
}

uint64_t sub_1B1B99CF0(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for Realtime_V1_Property(0);
  v4 = *(v60 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v60);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v56 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v56 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D0, &qword_1B1C3D048);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  result = MEMORY[0x1EEE9AC00](v15);
  v62 = a2;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(v62 + 16))
  {
    return 0;
  }

  v57 = a1;
  v58 = &v56 - v17;
  v61 = v18;
  v19 = 0;
  v20 = *(a1 + 64);
  v56 = a1 + 64;
  v21 = 1 << *(a1 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  while (v23)
  {
    v63 = (v23 - 1) & v23;
    v25 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_13:
    v29 = (*(v57 + 48) + 16 * v25);
    v31 = *v29;
    v30 = v29[1];
    v32 = *(v57 + 56) + *(v4 + 72) * v25;
    sub_1B1B8F828();
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
    v34 = *(v33 + 48);
    v35 = v61;
    *v61 = v31;
    v35[1] = v30;
    v26 = v35;
    sub_1B1B8F650();
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v33);

LABEL_14:
    v36 = v26;
    v37 = v58;
    sub_1B1B9C134(v36, v58);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, 1, v38);
    v40 = EnumTagSinglePayload == 1;
    if (EnumTagSinglePayload == 1)
    {
      return v40;
    }

    v41 = v37;
    v42 = v8;
    v43 = *(v38 + 48);
    v44 = *v41;
    v45 = v41[1];
    sub_1B1B8F650();
    v46 = v62;
    sub_1B1A8EB10();
    v48 = v47;

    if ((v48 & 1) == 0)
    {
      goto LABEL_31;
    }

    v49 = *(v46 + 56);
    v50 = *(v4 + 72);
    v8 = v42;
    sub_1B1B8F828();
    v51 = *v42 == *v11 && *(v42 + 1) == v11[1];
    if (!v51 && (sub_1B1C2D7A8() & 1) == 0 || (*(v42 + 2) == v11[2] ? (v52 = *(v42 + 3) == v11[3]) : (v52 = 0), !v52 && (sub_1B1C2D7A8() & 1) == 0))
    {
      sub_1B1B8F87C();
LABEL_31:
      sub_1B1B8F87C();
      return 0;
    }

    v53 = *(v60 + 24);
    sub_1B1C2C5C8();
    sub_1B1B94F28(&qword_1EB762AF0, MEMORY[0x1E69AAC08]);
    v54 = sub_1B1C2CB18();
    sub_1B1B8F87C();
    result = sub_1B1B8F87C();
    v23 = v63;
    if ((v54 & 1) == 0)
    {
      return v40;
    }
  }

  v26 = v61;
  while (1)
  {
    v27 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v27 >= v24)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D8, &unk_1B1C3D050);
      __swift_storeEnumTagSinglePayload(v26, 1, 1, v55);
      v63 = 0;
      goto LABEL_14;
    }

    v28 = *(v56 + 8 * v27);
    ++v19;
    if (v28)
    {
      v63 = (v28 - 1) & v28;
      v25 = __clz(__rbit64(v28)) | (v27 << 6);
      v19 = v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1B1B9A1F4()
{
  result = qword_1EB7630B8;
  if (!qword_1EB7630B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630B8);
  }

  return result;
}

unint64_t sub_1B1B9A27C()
{
  result = qword_1EB7630D0;
  if (!qword_1EB7630D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630D0);
  }

  return result;
}

unint64_t sub_1B1B9A2D8()
{
  result = qword_1EB7630D8;
  if (!qword_1EB7630D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630D8);
  }

  return result;
}

unint64_t sub_1B1B9A360()
{
  result = qword_1EB7630F0;
  if (!qword_1EB7630F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630F0);
  }

  return result;
}

unint64_t sub_1B1B9A3BC()
{
  result = qword_1EB7630F8;
  if (!qword_1EB7630F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7630F8);
  }

  return result;
}

uint64_t sub_1B1B9A440(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_1B1B9A498()
{
  result = qword_1EB763110;
  if (!qword_1EB763110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB763110);
  }

  return result;
}

void sub_1B1B9B504()
{
  sub_1B1B9BC6C(319, &qword_1EB763248);
  if (v0 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB763250, type metadata accessor for Realtime_V1_Tool, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v2 <= 0x3F)
      {
        sub_1B1B9B6B0(319, &qword_1EB763258, type metadata accessor for Realtime_V1_InputAudioTranscription, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1B1B9B6B0(319, &qword_1EB763260, type metadata accessor for Realtime_V1_TurnDetection, MEMORY[0x1E69E6720]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1B1B9B6B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B1B9B73C()
{
  sub_1B1B9BC6C(319, &qword_1EB763248);
  if (v0 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB763250, type metadata accessor for Realtime_V1_Tool, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1B1B9B890()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B9B970()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB7632B8, type metadata accessor for Realtime_V1_Function, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B9BA5C()
{
  sub_1B1C2C5C8();
  if (v0 <= 0x3F)
  {
    sub_1B1B9B6B0(319, &qword_1EB7632D0, type metadata accessor for Realtime_V1_Parameters, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B1B9BB48()
{
  sub_1B1B9BC04();
  if (v0 <= 0x3F)
  {
    sub_1B1B9BC6C(319, &qword_1EB7632F0);
    if (v1 <= 0x3F)
    {
      sub_1B1C2C5C8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B1B9BC04()
{
  if (!qword_1EB7632E8)
  {
    type metadata accessor for Realtime_V1_Property(255);
    v0 = sub_1B1C2CAD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB7632E8);
    }
  }
}

void sub_1B1B9BC6C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B1C2CEF8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void __swift_store_extra_inhabitant_index_125Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 24));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1B9BD68()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B1B9BE0C()
{
  sub_1B1B9B6B0(319, &qword_1EB763328, type metadata accessor for Realtime_V1_Content, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B1C2C5C8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1B9BF34()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_70Tm()
{
  OUTLINED_FUNCTION_61();
  if (v1)
  {
    return OUTLINED_FUNCTION_18_8();
  }

  OUTLINED_FUNCTION_88();
  v3 = OUTLINED_FUNCTION_76(*(v0 + 32));

  return __swift_getEnumTagSinglePayload(v3, v4, v5);
}

void __swift_store_extra_inhabitant_index_71Tm()
{
  OUTLINED_FUNCTION_45_1();
  if (v1)
  {
    OUTLINED_FUNCTION_100_0();
  }

  else
  {
    OUTLINED_FUNCTION_75_2();
    v2 = OUTLINED_FUNCTION_62_0(*(v0 + 32));

    __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  }
}

uint64_t sub_1B1B9C0B4()
{
  result = sub_1B1C2C5C8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1B9C134(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7633D0, &qword_1B1C3D048);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void OUTLINED_FUNCTION_71_2(uint64_t a1@<X8>)
{
  *v1 = a1;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0xE000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0xE000000000000000;
  *(v1 + 40) = 0;
  *(v1 + 48) = 1;
}

uint64_t OUTLINED_FUNCTION_85_1@<X0>(int a1@<W8>)
{
  *(v1 + 40) = a1;

  return sub_1B1B90BBC();
}

uint64_t OUTLINED_FUNCTION_104_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

unint64_t Realtime_V1_ServerEventType.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x1D;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B1B9C42C@<X0>(uint64_t *a1@<X8>)
{
  result = Realtime_V1_ServerEventType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B1B9C460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B1BB99FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Realtime_V1_ServerEvent.error.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_6:
    OUTLINED_FUNCTION_33_9();
    v10 = type metadata accessor for Realtime_V1_ClientError(0);
    OUTLINED_FUNCTION_225(v10);
    v11 = OUTLINED_FUNCTION_275();
    type metadata accessor for Realtime_V1_CommonError(v11);
    v12 = OUTLINED_FUNCTION_55_2();
    return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  }

  OUTLINED_FUNCTION_67_0();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B1B9C820();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_93_1();
  OUTLINED_FUNCTION_49();
  return sub_1B1BB85CC();
}

void Realtime_V1_ServerEvent.error.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ClientError(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_93_1();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_7;
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_41_5();
  OUTLINED_FUNCTION_261();
  v16 = OUTLINED_FUNCTION_239();
  type metadata accessor for Realtime_V1_CommonError(v16);
  v17 = OUTLINED_FUNCTION_38_9();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
LABEL_7:
  OUTLINED_FUNCTION_34_3();
}

uint64_t sub_1B1B9C820()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v3 = v2(v1);
  OUTLINED_FUNCTION_45(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t Realtime_V1_ServerEvent.sessionCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v12 = *(type metadata accessor for Realtime_V1_SessionCreated(0) + 20);
  if (qword_1EB761768 != -1)
  {
    OUTLINED_FUNCTION_197();
  }

  *(v0 + v12) = qword_1EB763440;
}

uint64_t sub_1B1B9C98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t))
{
  OUTLINED_FUNCTION_56_0();
  v10 = v9(0);
  OUTLINED_FUNCTION_23(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_126();
  sub_1B1BB8620();
  return a7(v7);
}

void Realtime_V1_ServerEvent.sessionCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_SessionCreated(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_91_2();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_10;
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v18 = *(v0 + 20);
  if (qword_1EB761768 != -1)
  {
    OUTLINED_FUNCTION_197();
  }

  *(v12 + v18) = qword_1EB763440;

LABEL_10:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.sessionUpdated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v12 = *(type metadata accessor for Realtime_V1_SessionUpdated(0) + 20);
  if (qword_1EB761778 != -1)
  {
    OUTLINED_FUNCTION_196();
  }

  *(v0 + v12) = qword_1EB763460;
}

uint64_t sub_1B1B9CD94@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1B1C2C5B8();
  v8 = *(a1(0) + 20);
  if (*a2 != -1)
  {
    OUTLINED_FUNCTION_33();
    swift_once();
  }

  *(a4 + v8) = *a3;
}

void Realtime_V1_ServerEvent.sessionUpdated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_SessionUpdated(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_126();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_90_1();
      OUTLINED_FUNCTION_67_2();
      sub_1B1BB85CC();
      goto LABEL_10;
    }

    sub_1B1B9C820();
  }

  sub_1B1C2C5B8();
  v18 = *(v0 + 20);
  if (qword_1EB761778 != -1)
  {
    OUTLINED_FUNCTION_196();
  }

  *(v12 + v18) = qword_1EB763460;

LABEL_10:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_89_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v11 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Conversation(v12);
  v13 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1B1B9D0F0@<X0>(void (*a1)(uint64_t)@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_41_5();
  v5 = a2 + *(v4(0) + 24);
  sub_1B1C2C5B8();
  v6 = OUTLINED_FUNCTION_239();
  a1(v6);
  v7 = OUTLINED_FUNCTION_38_9();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Realtime_V1_ServerEvent.conversationCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ConversationCreated(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261();
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Conversation(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_89_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferCommitted.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v14);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  *(v0 + 56) = v12;
  v13 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  return OUTLINED_FUNCTION_231(v13);
}

uint64_t Realtime_V1_InputAudioBufferCommitted.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  v3 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  return OUTLINED_FUNCTION_231(v3);
}

void Realtime_V1_ServerEvent.inputAudioBufferCommitted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v12 + 48) = 0;
    *(v12 + 56) = v18;
    v19 = v12 + *(v0 + 32);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_88_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferCleared.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v12 = v0 + *(type metadata accessor for Realtime_V1_InputAudioBufferCleared(0) + 24);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_InputAudioBufferCleared.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  *(v1 + 24) = 1;
  v2 = v1 + *(type metadata accessor for Realtime_V1_InputAudioBufferCleared(0) + 24);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ServerEvent.inputAudioBufferCleared.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferCleared(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 5)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_87_1();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferSpeechStarted.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 6)
    {
      OUTLINED_FUNCTION_86_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_10_25();
  v12 = OUTLINED_FUNCTION_230(v11);
  v13 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v12);
  return OUTLINED_FUNCTION_231(v13);
}

void Realtime_V1_ServerEvent.inputAudioBufferSpeechStarted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_282(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 6)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_86_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.inputAudioBufferSpeechStopped.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 7)
    {
      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_10_25();
  v12 = OUTLINED_FUNCTION_230(v11);
  v13 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v12);
  return OUTLINED_FUNCTION_231(v13);
}

uint64_t sub_1B1B9DBC8@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  OUTLINED_FUNCTION_269();
  v2 = OUTLINED_FUNCTION_230(v1);
  v4 = v3(v2);
  return OUTLINED_FUNCTION_231(v4);
}

void Realtime_V1_ServerEvent.inputAudioBufferSpeechStopped.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_282(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 7)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      OUTLINED_FUNCTION_84_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  OUTLINED_FUNCTION_112_0(v11);
  v12 = *(v11 + 32);
  type metadata accessor for Realtime_V1_Item(0);
  v13 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t Realtime_V1_ConversationItemCreated.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  OUTLINED_FUNCTION_112_0(v0);
  v1 = *(v0 + 32);
  type metadata accessor for Realtime_V1_Item(0);
  v2 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void Realtime_V1_ServerEvent.conversationItemCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ConversationItemCreated(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    v18 = v12 + *(v0 + 28);
    sub_1B1C2C5B8();
    v19 = *(v0 + 32);
    type metadata accessor for Realtime_V1_Item(0);
    v20 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v23);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 8)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.transcriptionCompleted.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v14);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 9)
    {
      OUTLINED_FUNCTION_83_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = v12;
  v13 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  return OUTLINED_FUNCTION_284(v13);
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = v2;
  v3 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  return OUTLINED_FUNCTION_284(v3);
}

void Realtime_V1_ServerEvent.transcriptionCompleted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v12 + 48) = 0;
    *(v12 + 56) = 0;
    *(v12 + 64) = v18;
    v19 = v12 + *(v0 + 36);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 9)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_83_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.transcriptionFailed.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v18);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 10)
    {
      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = OUTLINED_FUNCTION_267();
  v12 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v11);
  OUTLINED_FUNCTION_231(v12);
  v13 = *(v12 + 36);
  type metadata accessor for Realtime_V1_CommonError(0);
  v14 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

void Realtime_V1_ServerEvent.transcriptionFailed.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251();
    v17 = *(v0 + 36);
    type metadata accessor for Realtime_V1_CommonError(0);
    v18 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 10)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_82_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemTruncated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 11)
    {
      OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  *(v0 + 48) = 0;
  v12 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  return OUTLINED_FUNCTION_284(v12);
}

uint64_t Realtime_V1_ConversationItemTruncated.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  v2 = type metadata accessor for Realtime_V1_ConversationItemTruncated(0);
  return OUTLINED_FUNCTION_284(v2);
}

void Realtime_V1_ServerEvent.conversationItemTruncated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ConversationItemTruncated(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v12 + 48) = 0;
    v18 = v12 + *(v0 + 36);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 11)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.conversationItemDeleted.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v12);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 12)
    {
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  return OUTLINED_FUNCTION_112_0(v11);
}

uint64_t Realtime_V1_ConversationItemDeleted.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = type metadata accessor for Realtime_V1_ConversationItemDeleted(0);
  return OUTLINED_FUNCTION_112_0(v0);
}

void Realtime_V1_ServerEvent.conversationItemDeleted.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ConversationItemDeleted(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    v18 = v12 + *(v0 + 28);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 12)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_79_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseCreated.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 13)
    {
      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v11 = type metadata accessor for Realtime_V1_ResponseCreated(0);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Response(v12);
  v13 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void Realtime_V1_ServerEvent.responseCreated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseCreated(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261();
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Response(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 13)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_78_1();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v17);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 14)
    {
      OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  v11 = type metadata accessor for Realtime_V1_ResponseDone(0);
  OUTLINED_FUNCTION_225(v11);
  v12 = OUTLINED_FUNCTION_275();
  type metadata accessor for Realtime_V1_Response(v12);
  v13 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

void Realtime_V1_ServerEvent.responseDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    OUTLINED_FUNCTION_261();
    v16 = OUTLINED_FUNCTION_239();
    type metadata accessor for Realtime_V1_Response(v16);
    v17 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 14)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_77_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseOutputItemAdded.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v18);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 15)
    {
      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = OUTLINED_FUNCTION_267();
  v12 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v11);
  OUTLINED_FUNCTION_231(v12);
  v13 = *(v12 + 36);
  type metadata accessor for Realtime_V1_Item(0);
  v14 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
}

uint64_t sub_1B1B9F1C8@<X0>(uint64_t (*a1)(void)@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0xE000000000000000;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0xE000000000000000;
  *(a3 + 48) = 0;
  v5 = a1(0);
  v6 = a3 + *(v5 + 32);
  sub_1B1C2C5B8();
  v7 = *(v5 + 36);
  a2(0);
  v8 = OUTLINED_FUNCTION_38_9();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Realtime_V1_ServerEvent.responseOutputItemAdded.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251();
    v17 = *(v0 + 36);
    type metadata accessor for Realtime_V1_Item(0);
    v18 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 15)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_76_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseOutputItemDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v13);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 16)
    {
      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v11 = OUTLINED_FUNCTION_267();
  v12 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v11);
  return OUTLINED_FUNCTION_231(v12);
}

uint64_t Realtime_V1_ResponseOutputItemDone.init()()
{
  OUTLINED_FUNCTION_11_20();
  v0 = OUTLINED_FUNCTION_267();
  v1 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v0);
  return OUTLINED_FUNCTION_231(v1);
}

void Realtime_V1_ServerEvent.responseOutputItemDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_251();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 16)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_75_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseContentPartAdded.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v19);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 17)
    {
      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_164(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(v12);
  OUTLINED_FUNCTION_255(v13);
  v14 = *(v0 + 44);
  type metadata accessor for Realtime_V1_Part(0);
  v15 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

void Realtime_V1_ServerEvent.responseContentPartAdded.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_216(v17);
    v18 = *(v0 + 44);
    type metadata accessor for Realtime_V1_Part(0);
    v19 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 17)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_73_5();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseContentPartDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v19);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 18)
    {
      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_164(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseContentPartDone(v12);
  OUTLINED_FUNCTION_255(v13);
  v14 = *(v0 + 44);
  type metadata accessor for Realtime_V1_Part(0);
  v15 = OUTLINED_FUNCTION_55_2();
  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

uint64_t sub_1B1B9FA3C@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_154(v3);
  *(v1 + 64) = 0;
  v5 = v4(0);
  OUTLINED_FUNCTION_255(v5);
  v6 = *(v2 + 44);
  type metadata accessor for Realtime_V1_Part(0);
  v7 = OUTLINED_FUNCTION_55_2();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void Realtime_V1_ServerEvent.responseContentPartDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ResponseContentPartDone(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_80(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_16_3(v14);
  OUTLINED_FUNCTION_2_30();
  if (v15)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_216(v17);
    v18 = *(v0 + 44);
    type metadata accessor for Realtime_V1_Part(0);
    v19 = OUTLINED_FUNCTION_38_9();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 18)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_72_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseTextDelta.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 19)
    {
      OUTLINED_FUNCTION_71_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_111_1(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseTextDelta(v12);
  return OUTLINED_FUNCTION_238(v13);
}

void Realtime_V1_ServerEvent.responseTextDelta.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseTextDelta(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_156(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 19)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_71_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseTextDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 20)
    {
      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_111_1(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseTextDone(v12);
  return OUTLINED_FUNCTION_238(v13);
}

uint64_t sub_1B1B9FFB0@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  OUTLINED_FUNCTION_269();
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3 = OUTLINED_FUNCTION_111_1(v2);
  v5 = v4(v3);
  return OUTLINED_FUNCTION_238(v5);
}

void Realtime_V1_ServerEvent.responseTextDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseTextDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_156(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 20)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_70_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseAudioTranscriptDelta.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 21)
    {
      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_111_1(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(v12);
  return OUTLINED_FUNCTION_238(v13);
}

void Realtime_V1_ServerEvent.responseAudioTranscriptDelta.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_156(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 21)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_69_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseAudioTranscriptDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 22)
    {
      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_111_1(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(v12);
  return OUTLINED_FUNCTION_238(v13);
}

void Realtime_V1_ServerEvent.responseAudioTranscriptDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_156(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 22)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_68_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseAudioDelta.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v12);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 23)
    {
      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  return Realtime_V1_ResponseAudioDelta.init()(v0);
}

uint64_t Realtime_V1_ResponseAudioDelta.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  *(a1 + 48) = 0;
  *(a1 + 56) = v2;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = v2;
  *(a1 + 88) = xmmword_1B1C35270;
  v3 = a1 + *(type metadata accessor for Realtime_V1_ResponseAudioDelta(0) + 48);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ServerEvent.responseAudioDelta.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_ResponseAudioDelta(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    *(v12 + 48) = 0;
    *(v12 + 56) = v18;
    *(v12 + 64) = 0;
    *(v12 + 72) = 0;
    *(v12 + 80) = v18;
    *(v12 + 88) = xmmword_1B1C35270;
    v19 = v12 + *(v0 + 48);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 23)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_66_4();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.responseAudioDone.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v15);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 24)
    {
      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v13 = OUTLINED_FUNCTION_164(v12);
  v14 = v0 + *(type metadata accessor for Realtime_V1_ResponseAudioDone(v13) + 40);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_ResponseAudioDone.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_11_20();
  v3 = OUTLINED_FUNCTION_164(v2);
  v4 = a1 + *(type metadata accessor for Realtime_V1_ResponseAudioDone(v3) + 40);
  return sub_1B1C2C5B8();
}

void Realtime_V1_ServerEvent.responseAudioDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseAudioDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_216(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 24)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_65_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.functionCallArgumentsDelta.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 25)
    {
      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_163(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(v12);
  return OUTLINED_FUNCTION_238(v13);
}

void Realtime_V1_ServerEvent.functionCallArgumentsDelta.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_235(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 25)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_64_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.functionCallArgumentsDone.getter()
{
  OUTLINED_FUNCTION_83();
  v1 = OUTLINED_FUNCTION_126();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_23(v7, v14);
  OUTLINED_FUNCTION_4_22();
  if (v8)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 26)
    {
      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_11_20();
  v12 = OUTLINED_FUNCTION_163(v11);
  v13 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(v12);
  return OUTLINED_FUNCTION_238(v13);
}

uint64_t sub_1B1BA0F64@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  OUTLINED_FUNCTION_269();
  OUTLINED_FUNCTION_154(v2);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = v3;
  *(v1 + 88) = 0;
  *(v1 + 96) = v3;
  v5 = v4(0);
  return OUTLINED_FUNCTION_238(v5);
}

void Realtime_V1_ServerEvent.functionCallArgumentsDone.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_38_7();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_37(v7);
  v9 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(v8);
  OUTLINED_FUNCTION_22_12(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_80(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_16_3(v13);
  OUTLINED_FUNCTION_2_30();
  if (v14)
  {
    sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_34_0();
    OUTLINED_FUNCTION_235(v16);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 26)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_63_3();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ServerEvent.rateLimitsUpdated.getter()
{
  OUTLINED_FUNCTION_83();
  v2 = OUTLINED_FUNCTION_126();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_23(v8, v13);
  OUTLINED_FUNCTION_4_22();
  if (v9)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    OUTLINED_FUNCTION_67_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 27)
    {
      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_49();
      return sub_1B1BB85CC();
    }

    sub_1B1B9C820();
  }

  OUTLINED_FUNCTION_33_9();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
  v12 = type metadata accessor for Realtime_V1_RateLimitsUpdated(0);
  return OUTLINED_FUNCTION_112_0(v12);
}

uint64_t sub_1B1BA1220()
{
  OUTLINED_FUNCTION_56_0();
  sub_1B1A90C20(v0, &qword_1EB7636C0, &qword_1B1C3D080);
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
  v1 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  OUTLINED_FUNCTION_67_0();
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_79_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v1);
}

uint64_t Realtime_V1_RateLimitsUpdated.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_29_11(a1);
  *(v1 + 24) = 1;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Realtime_V1_RateLimitsUpdated(0);
  return OUTLINED_FUNCTION_112_0(v2);
}

void Realtime_V1_ServerEvent.rateLimitsUpdated.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_38_7();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_RateLimitsUpdated(v9);
  OUTLINED_FUNCTION_22_12(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  OUTLINED_FUNCTION_16_3(v15);
  OUTLINED_FUNCTION_2_30();
  if (v16)
  {
    sub_1B1A90C20(v1, &qword_1EB7636C0, &qword_1B1C3D080);
LABEL_7:
    OUTLINED_FUNCTION_41_5();
    *(v12 + 32) = MEMORY[0x1E69E7CC0];
    v18 = v12 + *(v0 + 28);
    sub_1B1C2C5B8();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_126();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 27)
  {
    sub_1B1B9C820();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_67_2();
  sub_1B1BB85CC();
LABEL_8:
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA1460()
{
  OUTLINED_FUNCTION_25();
  v1 = (*v0)[3];
  v2 = (*v0)[4];
  v3 = (*v0)[1];
  v4 = (*v0)[2];
  v5 = **v0;
  if (v6)
  {
    OUTLINED_FUNCTION_33();
    sub_1B1BB8620();
    sub_1B1A90C20(v5, &qword_1EB7636C0, &qword_1B1C3D080);
    sub_1B1BB85CC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v2);
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(**v0, &qword_1EB7636C0, &qword_1B1C3D080);
    sub_1B1BB85CC();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_79_1();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v2);
  }

  free(v1);
  free(v4);
  free(v3);
  OUTLINED_FUNCTION_26_1();

  free(v13);
}

uint64_t Realtime_V1_ServerEvent.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_ServerEvent(v0) + 20);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_ServerEvent.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ServerEvent(v0) + 20);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_ServerEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ServerEvent(v0) + 20);
  return OUTLINED_FUNCTION_85_0();
}

void static Realtime_V1_ServerEvent.OneOf_Event.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25();
  a19 = v20;
  a20 = v21;
  v343 = v22;
  v344 = v23;
  v311 = type metadata accessor for Realtime_V1_RateLimitsUpdated(0);
  v24 = OUTLINED_FUNCTION_45(v311);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_1();
  v28 = OUTLINED_FUNCTION_49_6(v27);
  v29 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(v28);
  v30 = OUTLINED_FUNCTION_23(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_1();
  v34 = OUTLINED_FUNCTION_49_6(v33);
  v35 = type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(v34);
  v36 = OUTLINED_FUNCTION_23(v35);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14_1();
  v40 = OUTLINED_FUNCTION_49_6(v39);
  v41 = type metadata accessor for Realtime_V1_ResponseAudioDone(v40);
  v42 = OUTLINED_FUNCTION_23(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_14_1();
  v46 = OUTLINED_FUNCTION_49_6(v45);
  v47 = type metadata accessor for Realtime_V1_ResponseAudioDelta(v46);
  v48 = OUTLINED_FUNCTION_23(v47);
  v50 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_14_1();
  v52 = OUTLINED_FUNCTION_49_6(v51);
  v53 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(v52);
  v54 = OUTLINED_FUNCTION_23(v53);
  v56 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_14_1();
  v58 = OUTLINED_FUNCTION_49_6(v57);
  v59 = type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(v58);
  v60 = OUTLINED_FUNCTION_23(v59);
  v62 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_14_1();
  v64 = OUTLINED_FUNCTION_49_6(v63);
  v65 = type metadata accessor for Realtime_V1_ResponseTextDone(v64);
  v66 = OUTLINED_FUNCTION_23(v65);
  v68 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_14_1();
  v70 = OUTLINED_FUNCTION_49_6(v69);
  v71 = type metadata accessor for Realtime_V1_ResponseTextDelta(v70);
  v72 = OUTLINED_FUNCTION_23(v71);
  v74 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_14_1();
  v76 = OUTLINED_FUNCTION_49_6(v75);
  v77 = type metadata accessor for Realtime_V1_ResponseContentPartDone(v76);
  v78 = OUTLINED_FUNCTION_23(v77);
  v80 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_14_1();
  v82 = OUTLINED_FUNCTION_49_6(v81);
  v83 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(v82);
  v84 = OUTLINED_FUNCTION_23(v83);
  v86 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_14_1();
  v88 = OUTLINED_FUNCTION_49_6(v87);
  v89 = type metadata accessor for Realtime_V1_ResponseOutputItemDone(v88);
  v90 = OUTLINED_FUNCTION_23(v89);
  v92 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_14_1();
  v94 = OUTLINED_FUNCTION_49_6(v93);
  v95 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v94);
  v96 = OUTLINED_FUNCTION_23(v95);
  v98 = *(v97 + 64);
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_14_1();
  v100 = OUTLINED_FUNCTION_49_6(v99);
  v101 = type metadata accessor for Realtime_V1_ResponseDone(v100);
  v102 = OUTLINED_FUNCTION_23(v101);
  v104 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_14_1();
  v106 = OUTLINED_FUNCTION_49_6(v105);
  v107 = type metadata accessor for Realtime_V1_ResponseCreated(v106);
  v108 = OUTLINED_FUNCTION_23(v107);
  v110 = *(v109 + 64);
  MEMORY[0x1EEE9AC00](v108);
  OUTLINED_FUNCTION_14_1();
  v112 = OUTLINED_FUNCTION_49_6(v111);
  v312 = type metadata accessor for Realtime_V1_ConversationItemDeleted(v112);
  v113 = OUTLINED_FUNCTION_45(v312);
  v115 = *(v114 + 64);
  MEMORY[0x1EEE9AC00](v113);
  OUTLINED_FUNCTION_14_1();
  v117 = OUTLINED_FUNCTION_49_6(v116);
  v118 = type metadata accessor for Realtime_V1_ConversationItemTruncated(v117);
  v119 = OUTLINED_FUNCTION_23(v118);
  v121 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v119);
  OUTLINED_FUNCTION_14_1();
  v123 = OUTLINED_FUNCTION_49_6(v122);
  v124 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v123);
  v125 = OUTLINED_FUNCTION_23(v124);
  v127 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v125);
  OUTLINED_FUNCTION_14_1();
  v129 = OUTLINED_FUNCTION_49_6(v128);
  v130 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(v129);
  v131 = OUTLINED_FUNCTION_23(v130);
  v133 = *(v132 + 64);
  MEMORY[0x1EEE9AC00](v131);
  OUTLINED_FUNCTION_14_1();
  v135 = OUTLINED_FUNCTION_49_6(v134);
  v136 = type metadata accessor for Realtime_V1_ConversationItemCreated(v135);
  v137 = OUTLINED_FUNCTION_23(v136);
  v139 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v137);
  OUTLINED_FUNCTION_14_1();
  v141 = OUTLINED_FUNCTION_49_6(v140);
  v142 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v141);
  v143 = OUTLINED_FUNCTION_23(v142);
  v145 = *(v144 + 64);
  MEMORY[0x1EEE9AC00](v143);
  OUTLINED_FUNCTION_14_1();
  v147 = OUTLINED_FUNCTION_49_6(v146);
  v148 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v147);
  v149 = OUTLINED_FUNCTION_23(v148);
  v151 = *(v150 + 64);
  MEMORY[0x1EEE9AC00](v149);
  OUTLINED_FUNCTION_14_1();
  v153 = OUTLINED_FUNCTION_49_6(v152);
  v313 = type metadata accessor for Realtime_V1_InputAudioBufferCleared(v153);
  v154 = OUTLINED_FUNCTION_45(v313);
  v156 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v154);
  OUTLINED_FUNCTION_14_1();
  v158 = OUTLINED_FUNCTION_49_6(v157);
  v159 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(v158);
  v160 = OUTLINED_FUNCTION_23(v159);
  v162 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v160);
  OUTLINED_FUNCTION_14_1();
  v164 = OUTLINED_FUNCTION_49_6(v163);
  v165 = type metadata accessor for Realtime_V1_ConversationCreated(v164);
  v166 = OUTLINED_FUNCTION_23(v165);
  v168 = *(v167 + 64);
  MEMORY[0x1EEE9AC00](v166);
  OUTLINED_FUNCTION_14_1();
  v170 = OUTLINED_FUNCTION_49_6(v169);
  v316 = type metadata accessor for Realtime_V1_SessionUpdated(v170);
  v171 = OUTLINED_FUNCTION_45(v316);
  v173 = *(v172 + 64);
  MEMORY[0x1EEE9AC00](v171);
  OUTLINED_FUNCTION_14_1();
  v175 = OUTLINED_FUNCTION_49_6(v174);
  v315 = type metadata accessor for Realtime_V1_SessionCreated(v175);
  v176 = OUTLINED_FUNCTION_45(v315);
  v178 = *(v177 + 64);
  MEMORY[0x1EEE9AC00](v176);
  OUTLINED_FUNCTION_14_1();
  v180 = OUTLINED_FUNCTION_49_6(v179);
  v181 = type metadata accessor for Realtime_V1_ClientError(v180);
  v182 = OUTLINED_FUNCTION_23(v181);
  v184 = *(v183 + 64);
  MEMORY[0x1EEE9AC00](v182);
  OUTLINED_FUNCTION_14_1();
  v186 = OUTLINED_FUNCTION_49_6(v185);
  v342 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(v186);
  v187 = OUTLINED_FUNCTION_45(v342);
  v189 = *(v188 + 64);
  MEMORY[0x1EEE9AC00](v187);
  v341 = &v311 - ((v190 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v191);
  OUTLINED_FUNCTION_7_1();
  v340 = v192;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v193);
  OUTLINED_FUNCTION_7_1();
  v339 = v194;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v195);
  OUTLINED_FUNCTION_7_1();
  v337 = v196;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v197);
  OUTLINED_FUNCTION_7_1();
  v336 = v198;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v199);
  OUTLINED_FUNCTION_7_1();
  v335 = v200;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v201);
  OUTLINED_FUNCTION_7_1();
  v334 = v202;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v203);
  OUTLINED_FUNCTION_7_1();
  v333 = v204;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v205);
  OUTLINED_FUNCTION_7_1();
  v332 = v206;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v207);
  OUTLINED_FUNCTION_7_1();
  v331 = v208;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v209);
  OUTLINED_FUNCTION_7_1();
  v330 = v210;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v211);
  OUTLINED_FUNCTION_7_1();
  v329[2] = v212;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v213);
  OUTLINED_FUNCTION_7_1();
  v329[1] = v214;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v215);
  OUTLINED_FUNCTION_7_1();
  v328 = v216;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v217);
  OUTLINED_FUNCTION_7_1();
  v327 = v218;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v219);
  OUTLINED_FUNCTION_7_1();
  v338 = v220;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v221);
  OUTLINED_FUNCTION_7_1();
  v326 = v222;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v223);
  OUTLINED_FUNCTION_7_1();
  v325 = v224;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v225);
  OUTLINED_FUNCTION_7_1();
  v323 = v226;
  OUTLINED_FUNCTION_16_0();
  v228 = MEMORY[0x1EEE9AC00](v227);
  v229 = MEMORY[0x1EEE9AC00](v228);
  v230 = MEMORY[0x1EEE9AC00](v229);
  v232 = (&v311 - v231);
  MEMORY[0x1EEE9AC00](v230);
  OUTLINED_FUNCTION_7_1();
  v329[0] = v233;
  OUTLINED_FUNCTION_16_0();
  v235 = MEMORY[0x1EEE9AC00](v234);
  v237 = (&v311 - v236);
  v238 = MEMORY[0x1EEE9AC00](v235);
  MEMORY[0x1EEE9AC00](v238);
  OUTLINED_FUNCTION_7_1();
  v324 = v239;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v240);
  OUTLINED_FUNCTION_7_1();
  v242 = v241;
  OUTLINED_FUNCTION_16_0();
  MEMORY[0x1EEE9AC00](v243);
  v244 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C8, &qword_1B1C3D088);
  OUTLINED_FUNCTION_23(v244);
  v246 = *(v245 + 64);
  OUTLINED_FUNCTION_22_1();
  v248 = MEMORY[0x1EEE9AC00](v247);
  v250 = &v311 - v249;
  v251 = *(v248 + 56);
  sub_1B1BB8620();
  v343 = v251;
  v252 = v342;
  sub_1B1BB8620();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 1)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_91_2();
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_240(&v326);
      if (!v256)
      {

        OUTLINED_FUNCTION_43_0();
        sub_1B1BB95F4();
        v292 = v291;

        if ((v292 & 1) == 0)
        {
          goto LABEL_92;
        }
      }

      goto LABEL_43;
    case 2u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 2)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_90_1();
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_240(&v327);
      if (v256 || (, , OUTLINED_FUNCTION_43_0(), sub_1B1BB95F4(), v286 = v285, , , (v286 & 1) != 0))
      {
LABEL_43:
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_1_33();
        sub_1B1BB99B4(v287, v288);
        OUTLINED_FUNCTION_15();
        sub_1B1C2CB18();
      }

      goto LABEL_92;
    case 3u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 3)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_89_2();
      OUTLINED_FUNCTION_151(&v328);
      sub_1B1BB85CC();
      static Realtime_V1_ConversationCreated.== infix(_:_:)();
      sub_1B1B9C820();
      goto LABEL_93;
    case 4u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 4)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_88_2();
      OUTLINED_FUNCTION_151(v329);
      sub_1B1BB85CC();
      static Realtime_V1_InputAudioBufferCommitted.== infix(_:_:)(v237, v242);
      sub_1B1B9C820();
      goto LABEL_93;
    case 5u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 5)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_263(&v333);
      OUTLINED_FUNCTION_234();
      v297 = v256 && v295 == v296;
      if (v297 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_217())
      {
        v298 = *(v313 + 24);
        sub_1B1C2C5C8();
        OUTLINED_FUNCTION_1_33();
        sub_1B1BB99B4(v299, v300);
        OUTLINED_FUNCTION_218();
      }

      goto LABEL_92;
    case 6u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 6)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_86_2();
      OUTLINED_FUNCTION_151(&v330);
      sub_1B1BB85CC();
      static Realtime_V1_InputAudioBufferSpeechStarted.== infix(_:_:)(v232, v242);
      sub_1B1B9C820();
      goto LABEL_93;
    case 7u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_85_2();
      OUTLINED_FUNCTION_263(&v331);
      v289 = OUTLINED_FUNCTION_92();
      static Realtime_V1_InputAudioBufferSpeechStopped.== infix(_:_:)(v289, v290);
      sub_1B1B9C820();
      OUTLINED_FUNCTION_43_0();
      goto LABEL_93;
    case 8u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 8)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_84_2();
      OUTLINED_FUNCTION_151(&v332);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ConversationItemCreated.== infix(_:_:)();
      goto LABEL_92;
    case 9u:
      OUTLINED_FUNCTION_0_31();
      OUTLINED_FUNCTION_151(&a16);
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 9)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_83_2();
      OUTLINED_FUNCTION_263(&v334);
      v279 = OUTLINED_FUNCTION_67_0();
      static Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.== infix(_:_:)(v279, v280);
      sub_1B1B9C820();
      goto LABEL_93;
    case 0xAu:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 10)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_82_2();
      OUTLINED_FUNCTION_151(&v335);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ConversationItemInputAudioTranscriptionFailed.== infix(_:_:)();
      goto LABEL_92;
    case 0xBu:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 11)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_80_2();
      OUTLINED_FUNCTION_151(&v336);
      sub_1B1BB85CC();
      v269 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ConversationItemTruncated.== infix(_:_:)(v269, v270);
      goto LABEL_92;
    case 0xCu:
      OUTLINED_FUNCTION_0_31();
      v271 = v338;
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 12)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_263(&v341);
      OUTLINED_FUNCTION_234();
      v274 = v256 && v272 == v273;
      if (v274 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_217())
      {
        v275 = *(v271 + 32) == *(v252 + 32) && *(v271 + 40) == *(v252 + 40);
        if (v275 || (sub_1B1C2D7A8() & 1) != 0)
        {
          v276 = *(v312 + 28);
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_1_33();
          sub_1B1BB99B4(v277, v278);
          OUTLINED_FUNCTION_218();
        }
      }

      goto LABEL_92;
    case 0xDu:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 13)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_78_1();
      OUTLINED_FUNCTION_151(&v337);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseCreated.== infix(_:_:)();
      goto LABEL_92;
    case 0xEu:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 14)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_77_2();
      OUTLINED_FUNCTION_151(&v338);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseDone.== infix(_:_:)();
      goto LABEL_92;
    case 0xFu:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 15)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_76_3();
      OUTLINED_FUNCTION_151(&v339);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseOutputItemAdded.== infix(_:_:)();
      goto LABEL_92;
    case 0x10u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 16)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_75_3();
      OUTLINED_FUNCTION_151(&v340);
      sub_1B1BB85CC();
      v267 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseOutputItemDone.== infix(_:_:)(v267, v268);
      goto LABEL_92;
    case 0x11u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 17)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_73_5();
      OUTLINED_FUNCTION_151(&v342);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseContentPartAdded.== infix(_:_:)();
      goto LABEL_92;
    case 0x12u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 18)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_72_3();
      OUTLINED_FUNCTION_151(&v343);
      sub_1B1BB85CC();
      OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseContentPartDone.== infix(_:_:)();
      goto LABEL_92;
    case 0x13u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 19)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_71_3();
      OUTLINED_FUNCTION_151(&v344);
      sub_1B1BB85CC();
      v305 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseTextDelta.== infix(_:_:)(v305, v306);
      goto LABEL_92;
    case 0x14u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 20)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_70_2();
      OUTLINED_FUNCTION_151(&v345);
      sub_1B1BB85CC();
      v293 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseTextDone.== infix(_:_:)(v293, v294);
      goto LABEL_92;
    case 0x15u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 21)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_151(&a9);
      sub_1B1BB85CC();
      v301 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseAudioTranscriptDelta.== infix(_:_:)(v301, v302);
      goto LABEL_92;
    case 0x16u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 22)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_68_2();
      OUTLINED_FUNCTION_151(&a10);
      sub_1B1BB85CC();
      v303 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseAudioTranscriptDone.== infix(_:_:)(v303, v304);
      goto LABEL_92;
    case 0x17u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 23)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_66_4();
      OUTLINED_FUNCTION_151(&a11);
      sub_1B1BB85CC();
      v307 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseAudioDelta.== infix(_:_:)(v307, v308);
      goto LABEL_92;
    case 0x18u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 24)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_65_2();
      OUTLINED_FUNCTION_151(&a12);
      sub_1B1BB85CC();
      v283 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseAudioDone.== infix(_:_:)(v283, v284);
      goto LABEL_92;
    case 0x19u:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 25)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_64_3();
      OUTLINED_FUNCTION_151(&a13);
      sub_1B1BB85CC();
      v281 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseFunctionCallArgumentsDelta.== infix(_:_:)(v281, v282);
      goto LABEL_92;
    case 0x1Au:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 26)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_63_3();
      OUTLINED_FUNCTION_151(&a14);
      sub_1B1BB85CC();
      v309 = OUTLINED_FUNCTION_67_2();
      static Realtime_V1_ResponseFunctionCallArgumentsDone.== infix(_:_:)(v309, v310);
      goto LABEL_92;
    case 0x1Bu:
      OUTLINED_FUNCTION_0_31();
      v253 = v341;
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0() != 27)
      {
        goto LABEL_86;
      }

      OUTLINED_FUNCTION_62_2();
      OUTLINED_FUNCTION_263(&a15);
      OUTLINED_FUNCTION_234();
      v256 = v256 && v254 == v255;
      if (v256 || (sub_1B1C2D7A8()) && (OUTLINED_FUNCTION_217())
      {
        sub_1B1B8DB94(*(v253 + 4), *(v252 + 32), v257, v258, v259, v260, v261, v262, v311, v312, v313, v314, v315, v316, v317, v318, v319, v320, v321, v322);
        if (v263)
        {
          v264 = *(v311 + 28);
          sub_1B1C2C5C8();
          OUTLINED_FUNCTION_1_33();
          sub_1B1BB99B4(v265, v266);
          OUTLINED_FUNCTION_218();
        }
      }

LABEL_92:
      sub_1B1B9C820();
      goto LABEL_93;
    default:
      OUTLINED_FUNCTION_0_31();
      sub_1B1BB8620();
      if (OUTLINED_FUNCTION_129_0())
      {
LABEL_86:
        sub_1B1B9C820();
        sub_1B1A90C20(v250, &qword_1EB7636C8, &qword_1B1C3D088);
      }

      else
      {
        OUTLINED_FUNCTION_93_1();
        OUTLINED_FUNCTION_151(&v325);
        sub_1B1BB85CC();
        static Realtime_V1_ClientError.== infix(_:_:)();
        sub_1B1B9C820();
LABEL_93:
        sub_1B1B9C820();
        OUTLINED_FUNCTION_11_22();
        sub_1B1B9C820();
      }

      OUTLINED_FUNCTION_26_1();
      return;
  }
}

void static Realtime_V1_ClientError.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v2 = OUTLINED_FUNCTION_51_4();
  v3 = type metadata accessor for Realtime_V1_CommonError(v2);
  v4 = OUTLINED_FUNCTION_45(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D0, &qword_1B1C3D090);
  OUTLINED_FUNCTION_23(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_82();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D8, &qword_1B1C3D098);
  OUTLINED_FUNCTION_45(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_34_9();
  v17 = v17 && v15 == v16;
  if (!v17 && (sub_1B1C2D7A8() & 1) == 0 || (OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = type metadata accessor for Realtime_V1_ClientError(0);
  OUTLINED_FUNCTION_229(v18);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v17)
  {
    OUTLINED_FUNCTION_36_9(v0 + v1);
    if (v17)
    {
      sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
LABEL_19:
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v27, v28);
      v24 = OUTLINED_FUNCTION_42();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v19 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v19, v20, v21, v22);
  OUTLINED_FUNCTION_36_9(v0 + v1);
  if (v23)
  {
    OUTLINED_FUNCTION_81_3();
    sub_1B1B9C820();
LABEL_15:
    sub_1B1A90C20(v0, &qword_1EB7636D8, &qword_1B1C3D098);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_250();
  v25 = OUTLINED_FUNCTION_3_3();
  static Realtime_V1_CommonError.== infix(_:_:)(v25, v26);
  OUTLINED_FUNCTION_174();
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
  if (v3)
  {
    goto LABEL_19;
  }

LABEL_16:
  v24 = 0;
LABEL_17:
  OUTLINED_FUNCTION_205(v24);
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BA3210()
{
  v2 = OUTLINED_FUNCTION_51_4();
  v4 = *(v3(v2) + 20);
  if (*(v1 + v4) != *(v0 + v4))
  {
    v5 = *(v1 + v4);

    OUTLINED_FUNCTION_126();
    sub_1B1BB95F4();
    v7 = v6;

    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v8, v9);
  OUTLINED_FUNCTION_49();
  return sub_1B1C2CB18() & 1;
}

void static Realtime_V1_ConversationCreated.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_62();
  v4 = type metadata accessor for Realtime_V1_Conversation(0);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636E0, &qword_1B1C3D0A0);
  OUTLINED_FUNCTION_23(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636E8, &qword_1B1C3D0A8);
  OUTLINED_FUNCTION_45(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v37[-v21];
  v23 = *v1 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v23 && (sub_1B1C2D7A8() & 1) == 0 || (sub_1B1B1AFA0(*(v1 + 16), *(v1 + 24), *(v0 + 16), *(v0 + 24)) & 1) == 0)
  {
    goto LABEL_17;
  }

  v24 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  OUTLINED_FUNCTION_229(v24);
  sub_1B1B8D9D8(v1 + v2, v22, &qword_1EB7636E0, &qword_1B1C3D0A0);
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_48_0(v22, 1, v4);
  if (v23)
  {
    OUTLINED_FUNCTION_48_0(&v22[v3], 1, v4);
    if (v23)
    {
      sub_1B1A90C20(v22, &qword_1EB7636E0, &qword_1B1C3D0A0);
LABEL_30:
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v35, v36);
      v28 = sub_1B1C2CB18();
      goto LABEL_18;
    }

    goto LABEL_15;
  }

  sub_1B1B8D9D8(v22, v16, &qword_1EB7636E0, &qword_1B1C3D0A0);
  OUTLINED_FUNCTION_48_0(&v22[v3], 1, v4);
  if (v25)
  {
    OUTLINED_FUNCTION_179();
    sub_1B1B9C820();
LABEL_15:
    v26 = &qword_1EB7636E8;
    v27 = &qword_1B1C3D0A8;
LABEL_16:
    sub_1B1A90C20(v22, v26, v27);
    goto LABEL_17;
  }

  OUTLINED_FUNCTION_15_17();
  sub_1B1BB85CC();
  v29 = *v16 == *v10 && v16[1] == v10[1];
  if (!v29 && (sub_1B1C2D7A8() & 1) == 0 || (v16[2] == v10[2] ? (v30 = v16[3] == v10[3]) : (v30 = 0), !v30 && (sub_1B1C2D7A8() & 1) == 0))
  {
    sub_1B1B9C820();
    sub_1B1B9C820();
    v26 = &qword_1EB7636E0;
    v27 = &qword_1B1C3D0A0;
    goto LABEL_16;
  }

  v31 = *(v4 + 24);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v32, v33);
  v34 = sub_1B1C2CB18();
  sub_1B1B9C820();
  sub_1B1B9C820();
  sub_1B1A90C20(v22, &qword_1EB7636E0, &qword_1B1C3D0A0);
  if (v34)
  {
    goto LABEL_30;
  }

LABEL_17:
  v28 = 0;
LABEL_18:
  OUTLINED_FUNCTION_205(v28);
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_InputAudioBufferCommitted.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_143_0();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v12, v13);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t static Realtime_V1_InputAudioBufferCleared.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0 || (OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  v5 = *(type metadata accessor for Realtime_V1_InputAudioBufferCleared(0) + 24);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v6, v7);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1BA37D4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0 || *(v4 + 28) != *(v3 + 28))
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v12 = *(a3(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v13, v14);
  return OUTLINED_FUNCTION_42() & 1;
}

void static Realtime_V1_ConversationItemCreated.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v1 = OUTLINED_FUNCTION_51_4();
  v2 = type metadata accessor for Realtime_V1_Item(v1);
  v3 = OUTLINED_FUNCTION_45(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_82();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B00, &qword_1B1C3A128);
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_9();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_95_0();
  v19 = v16 && v17 == v18;
  if (!v19 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  v33 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  v20 = *(v33 + 32);
  v21 = *(v10 + 48);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_36_9(v0 + v21);
    if (v16)
    {
      sub_1B1A90C20(v0, &qword_1EB762AF8, &qword_1B1C3A120);
LABEL_24:
      v30 = *(v33 + 28);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v31, v32);
      v27 = OUTLINED_FUNCTION_42();
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v22 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v22, v23, v24, v25);
  OUTLINED_FUNCTION_36_9(v0 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_74_4();
    sub_1B1B9C820();
LABEL_20:
    sub_1B1A90C20(v0, &qword_1EB762B00, &qword_1B1C3A128);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_250();
  v28 = OUTLINED_FUNCTION_3_3();
  static Realtime_V1_Item.== infix(_:_:)(v28, v29);
  OUTLINED_FUNCTION_173();
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB762AF8, &qword_1B1C3A120);
  if (v2)
  {
    goto LABEL_24;
  }

LABEL_21:
  v27 = 0;
LABEL_22:
  OUTLINED_FUNCTION_205(v27);
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_162();
  if (!v6)
  {
    return 0;
  }

  v10 = *(v3 + 56) == *(v2 + 56) && *(v3 + 64) == *(v2 + 64);
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0) + 36);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v12, v13);
  return OUTLINED_FUNCTION_42() & 1;
}

void static Realtime_V1_ConversationItemInputAudioTranscriptionFailed.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v1 = OUTLINED_FUNCTION_51_4();
  v2 = type metadata accessor for Realtime_V1_CommonError(v1);
  v3 = OUTLINED_FUNCTION_45(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D0, &qword_1B1C3D090);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_82();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636D8, &qword_1B1C3D098);
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_9();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_95_0();
  v19 = v16 && v17 == v18;
  if (!v19 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_162();
  if (!v16)
  {
    goto LABEL_23;
  }

  v33 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(0);
  v20 = *(v33 + 36);
  v21 = *(v10 + 48);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_36_9(v0 + v21);
    if (v16)
    {
      sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
LABEL_26:
      v30 = *(v33 + 32);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v31, v32);
      v27 = OUTLINED_FUNCTION_42();
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v22 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v22, v23, v24, v25);
  OUTLINED_FUNCTION_36_9(v0 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_81_3();
    sub_1B1B9C820();
LABEL_22:
    sub_1B1A90C20(v0, &qword_1EB7636D8, &qword_1B1C3D098);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_250();
  v28 = OUTLINED_FUNCTION_3_3();
  static Realtime_V1_CommonError.== infix(_:_:)(v28, v29);
  OUTLINED_FUNCTION_174();
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
  if (v2)
  {
    goto LABEL_26;
  }

LABEL_23:
  v27 = 0;
LABEL_24:
  OUTLINED_FUNCTION_205(v27);
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_ConversationItemTruncated.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_162();
  if (!v6 || *(v3 + 52) != *(v2 + 52))
  {
    return 0;
  }

  v10 = *(type metadata accessor for Realtime_V1_ConversationItemTruncated(0) + 36);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v11, v12);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t static Realtime_V1_ConversationItemDeleted.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Realtime_V1_ConversationItemDeleted(0) + 28);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v9, v10);
  return OUTLINED_FUNCTION_42() & 1;
}

void sub_1B1BA3F7C()
{
  OUTLINED_FUNCTION_25();
  v3 = v2;
  v4 = OUTLINED_FUNCTION_51_4();
  v5 = type metadata accessor for Realtime_V1_Response(v4);
  v6 = OUTLINED_FUNCTION_45(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_82();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B10, &qword_1B1C3A138);
  OUTLINED_FUNCTION_45(v13);
  v15 = *(v14 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34_9();
  v19 = v19 && v17 == v18;
  if (!v19 && (sub_1B1C2D7A8() & 1) == 0 || (OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_16;
  }

  v20 = v3(0);
  OUTLINED_FUNCTION_229(v20);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v19)
  {
    OUTLINED_FUNCTION_36_9(v0 + v1);
    if (v19)
    {
      sub_1B1A90C20(v0, &qword_1EB762B08, &qword_1B1C3A130);
LABEL_19:
      OUTLINED_FUNCTION_249();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v28, v29);
      v26 = OUTLINED_FUNCTION_42();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v21 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v21, v22, v23, v24);
  OUTLINED_FUNCTION_36_9(v0 + v1);
  if (v25)
  {
    sub_1B1B9C820();
LABEL_15:
    sub_1B1A90C20(v0, &qword_1EB762B10, &qword_1B1C3A138);
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_250();
  OUTLINED_FUNCTION_3_3();
  v27 = static Realtime_V1_Response.== infix(_:_:)();
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB762B08, &qword_1B1C3A130);
  if (v27)
  {
    goto LABEL_19;
  }

LABEL_16:
  v26 = 0;
LABEL_17:
  OUTLINED_FUNCTION_205(v26);
  OUTLINED_FUNCTION_26_1();
}

void static Realtime_V1_ResponseOutputItemAdded.== infix(_:_:)()
{
  OUTLINED_FUNCTION_25();
  v1 = OUTLINED_FUNCTION_51_4();
  v2 = type metadata accessor for Realtime_V1_Item(v1);
  v3 = OUTLINED_FUNCTION_45(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_82();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B00, &qword_1B1C3A128);
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_34_9();
  v16 = v16 && v14 == v15;
  if (!v16 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_95_0();
  v19 = v16 && v17 == v18;
  if (!v19 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_162();
  if (!v16)
  {
    goto LABEL_23;
  }

  v33 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(0);
  v20 = *(v33 + 36);
  v21 = *(v10 + 48);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v16)
  {
    OUTLINED_FUNCTION_36_9(v0 + v21);
    if (v16)
    {
      sub_1B1A90C20(v0, &qword_1EB762AF8, &qword_1B1C3A120);
LABEL_26:
      v30 = *(v33 + 32);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v31, v32);
      v27 = OUTLINED_FUNCTION_42();
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  v22 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v22, v23, v24, v25);
  OUTLINED_FUNCTION_36_9(v0 + v21);
  if (v26)
  {
    OUTLINED_FUNCTION_74_4();
    sub_1B1B9C820();
LABEL_22:
    sub_1B1A90C20(v0, &qword_1EB762B00, &qword_1B1C3A128);
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_250();
  v28 = OUTLINED_FUNCTION_3_3();
  static Realtime_V1_Item.== infix(_:_:)(v28, v29);
  OUTLINED_FUNCTION_173();
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB762AF8, &qword_1B1C3A120);
  if (v2)
  {
    goto LABEL_26;
  }

LABEL_23:
  v27 = 0;
LABEL_24:
  OUTLINED_FUNCTION_205(v27);
  OUTLINED_FUNCTION_26_1();
}

uint64_t static Realtime_V1_ResponseOutputItemDone.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_162();
  if (!v4)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Realtime_V1_ResponseOutputItemDone(0) + 32);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v9, v10);
  return OUTLINED_FUNCTION_42() & 1;
}

void sub_1B1BA451C()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_51_4();
  v4 = type metadata accessor for Realtime_V1_Part(v3);
  v5 = OUTLINED_FUNCTION_45(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_10_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_82();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F8, &unk_1B1C3D0B8);
  OUTLINED_FUNCTION_45(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_34_9();
  v18 = v18 && v16 == v17;
  if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_30;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_95_0();
  v21 = v18 && v19 == v20;
  if (!v21 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_143_0();
  v24 = v18 && v22 == v23;
  if (!v24 && (sub_1B1C2D7A8() & 1) == 0)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_161();
  if (!v18)
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_191();
  if (!v18)
  {
    goto LABEL_30;
  }

  v39 = v2(0);
  v25 = *(v39 + 44);
  v26 = *(v12 + 48);
  OUTLINED_FUNCTION_147();
  OUTLINED_FUNCTION_135_0();
  OUTLINED_FUNCTION_36_9(v0);
  if (v18)
  {
    OUTLINED_FUNCTION_36_9(v0 + v26);
    if (v18)
    {
      sub_1B1A90C20(v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
LABEL_33:
      v36 = *(v39 + 40);
      sub_1B1C2C5C8();
      OUTLINED_FUNCTION_1_33();
      sub_1B1BB99B4(v37, v38);
      v32 = OUTLINED_FUNCTION_42();
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v27 = OUTLINED_FUNCTION_126();
  sub_1B1B8D9D8(v27, v28, v29, v30);
  OUTLINED_FUNCTION_36_9(v0 + v26);
  if (v31)
  {
    sub_1B1B9C820();
LABEL_29:
    sub_1B1A90C20(v0, &qword_1EB7636F8, &unk_1B1C3D0B8);
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_250();
  v33 = OUTLINED_FUNCTION_3_3();
  v35 = static Realtime_V1_Part.== infix(_:_:)(v33, v34);
  sub_1B1B9C820();
  OUTLINED_FUNCTION_254();
  sub_1B1A90C20(v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
  if (v35)
  {
    goto LABEL_33;
  }

LABEL_30:
  v32 = 0;
LABEL_31:
  OUTLINED_FUNCTION_205(v32);
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BA4828(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_143_0();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_161();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_191();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_227();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v16 = *(a3(0) + 44);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v17, v18);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t static Realtime_V1_ResponseAudioDelta.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_143_0();
  v12 = v6 && v10 == v11;
  if (!v12 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_161();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_191();
  if (!v6)
  {
    return 0;
  }

  OUTLINED_FUNCTION_227();
  v15 = v6 && v13 == v14;
  if (!v15 && (sub_1B1C2D7A8() & 1) == 0 || (MEMORY[0x1B2737770](*(v3 + 88), *(v3 + 96), *(v2 + 88), *(v2 + 96)) & 1) == 0)
  {
    return 0;
  }

  v16 = *(type metadata accessor for Realtime_V1_ResponseAudioDelta(0) + 48);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v17, v18);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t static Realtime_V1_ResponseAudioDone.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_143_0();
  v10 = v4 && v8 == v9;
  if (!v10 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_161();
  if (!v4)
  {
    return 0;
  }

  OUTLINED_FUNCTION_191();
  if (!v4)
  {
    return 0;
  }

  v11 = *(type metadata accessor for Realtime_V1_ResponseAudioDone(0) + 40);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v12, v13);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t sub_1B1BA4B10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_52_4(a1, a2);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  if ((OUTLINED_FUNCTION_96_2() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_95_0();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_143_0();
  v14 = v8 && v12 == v13;
  if (!v14 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_161();
  if (!v8)
  {
    return 0;
  }

  OUTLINED_FUNCTION_227();
  v17 = v8 && v15 == v16;
  if (!v17 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v18 = *(v4 + 88) == *(v3 + 88) && *(v4 + 96) == *(v3 + 96);
  if (!v18 && (sub_1B1C2D7A8() & 1) == 0)
  {
    return 0;
  }

  v19 = *(a3(0) + 44);
  sub_1B1C2C5C8();
  OUTLINED_FUNCTION_1_33();
  sub_1B1BB99B4(v20, v21);
  return OUTLINED_FUNCTION_42() & 1;
}

uint64_t Realtime_V1_ServerEvent.init()()
{
  v1 = OUTLINED_FUNCTION_89();
  type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(v1);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = v0 + *(type metadata accessor for Realtime_V1_ServerEvent(0) + 20);
  return sub_1B1C2C5B8();
}

uint64_t Realtime_V1_ClientError.eventID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ClientError.eventID.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

void Realtime_V1_ClientError.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Realtime_V1_ClientError.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Realtime_V1_ClientError.error.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ClientError(v7);
  OUTLINED_FUNCTION_160(*(v8 + 28));
  v9 = type metadata accessor for Realtime_V1_CommonError(0);
  OUTLINED_FUNCTION_13(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_128_0();
    a1[2] = 0;
    a1[3] = v11;
    OUTLINED_FUNCTION_154(v11);
    a1[8] = 0;
    a1[9] = v12;
    v13 = a1 + *(v9 + 36);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_13(v1);
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB7636D0, &qword_1B1C3D090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ClientError.error.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ClientError(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB7636D0, &qword_1B1C3D090);
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_CommonError(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ClientError.error.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_93_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_CommonError(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_1(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_58_5(v15);
  v17 = type metadata accessor for Realtime_V1_ClientError(v16);
  v18 = OUTLINED_FUNCTION_190(*(v17 + 28));
  OUTLINED_FUNCTION_122_0(v18);
  OUTLINED_FUNCTION_12_16();
  if (v19)
  {
    OUTLINED_FUNCTION_112_1();
    *(v12 + 64) = 0;
    *(v12 + 72) = v20;
    v21 = v12 + *(v10 + 36);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_12_16();
    if (!v19)
    {
      sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_33();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA5030()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1BB8620();
    sub_1B1A90C20(v4 + v3, &qword_1EB7636D0, &qword_1B1C3D090);
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_81_3();
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB7636D0, &qword_1B1C3D090);
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t Realtime_V1_ClientError.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ClientError(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA5204(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Realtime_V1_SessionCreated.eventID.setter();
}

uint64_t Realtime_V1_SessionCreated.eventID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_276(v2) + 64) = v0;
  v3 = *(type metadata accessor for Realtime_V1_SessionCreated(0) + 20);
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_92();
}

uint64_t Realtime_V1_SessionCreated.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_276(v2) + 88) = v0;
  v3 = *(type metadata accessor for Realtime_V1_SessionCreated(0) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_265();
  return OUTLINED_FUNCTION_15_11();
}

void Realtime_V1_SessionCreated.session.modify()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = OUTLINED_FUNCTION_32_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[4] = v8;
  v9 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v12 = type metadata accessor for Realtime_V1_SessionCreated(0);
  OUTLINED_FUNCTION_219(v12);
  v13 = OBJC_IVAR____TtCV14SiriTTSService26Realtime_V1_SessionCreatedP33_1FC65C7469DBAFEA095D5329DD5B613513_StorageClass__session;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_256(v0 + v13);
  OUTLINED_FUNCTION_46();
  if (v14)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_208(v15);
    v16 = *(v9 + 64);
    type metadata accessor for Realtime_V1_InputAudioTranscription(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = *(v9 + 68);
    type metadata accessor for Realtime_V1_TurnDetection(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_46();
    if (!v14)
    {
      sub_1B1A90C20(v8, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_26_1();
}

uint64_t sub_1B1BA56B4()
{
  v1 = OUTLINED_FUNCTION_274();
  v3 = v2(v1);
  OUTLINED_FUNCTION_219(v3);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t sub_1B1BA5708(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Realtime_V1_SessionUpdated.eventID.setter();
}

uint64_t sub_1B1BA577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v8 = v5;
  OUTLINED_FUNCTION_62();
  v10 = *(v9(0) + 20);
  v11 = *(v5 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v5 + v10);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = a4(0);
    OUTLINED_FUNCTION_207(v14);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    v13 = v15;
    *(v8 + v10) = v15;
  }

  OUTLINED_FUNCTION_66_0();
  v16 = *(v13 + 24);
  *(v13 + 16) = v6;
  *(v13 + 24) = v4;
}

uint64_t Realtime_V1_SessionUpdated.eventID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x50uLL);
  *(OUTLINED_FUNCTION_276(v2) + 64) = v0;
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdated(0) + 20);
  *(v1 + 72) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  v5 = *(v4 + 24);
  *(v1 + 48) = *(v4 + 16);
  *(v1 + 56) = v5;

  return OUTLINED_FUNCTION_92();
}

void sub_1B1BA58E4()
{
  OUTLINED_FUNCTION_53_0();
  v3 = *v0;
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 56);
  if (v6)
  {
    v7 = v2;
    v8 = *(v3 + 64);
    v9 = *(*v0 + 56);

    v10 = OUTLINED_FUNCTION_33();
    v7(v10);
    v11 = *(v3 + 56);
  }

  else
  {
    v12 = v1;
    v13 = *(v3 + 72);
    v14 = *(v3 + 64);
    v15 = *(v14 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v14 + v13);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v18 = *(v3 + 72);
      v19 = *(v3 + 64);
      v20 = v12(0);
      OUTLINED_FUNCTION_207(v20);
      swift_allocObject();
      OUTLINED_FUNCTION_47_5();
      sub_1B1BB8D64();
      v17 = v21;
      *(v19 + v18) = v21;
    }

    OUTLINED_FUNCTION_66_0();
    v22 = *(v17 + 24);
    *(v17 + 16) = v4;
    *(v17 + 24) = v5;
  }

  OUTLINED_FUNCTION_34_3();

  free(v23);
}

uint64_t sub_1B1BA59DC()
{
  v2 = OUTLINED_FUNCTION_117_0();
  v4 = v3(v2);
  OUTLINED_FUNCTION_219(v4);
  OUTLINED_FUNCTION_11_0();
  result = swift_beginAccess();
  v6 = *(v1 + 40);
  *v0 = *(v1 + 32);
  *(v0 + 8) = v6;
  return result;
}

void *sub_1B1BA5A30@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  result = a1(&v5);
  v4 = v6;
  *a2 = v5;
  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1B1BA5A78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

uint64_t sub_1B1BA5AF0(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = v3;
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a2(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = a3(0);
    OUTLINED_FUNCTION_207(v12);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    v11 = v13;
    *(v5 + v8) = v13;
  }

  result = OUTLINED_FUNCTION_66_0();
  *(v11 + 32) = v6;
  *(v11 + 40) = v7;
  return result;
}

uint64_t Realtime_V1_SessionUpdated.type.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_276(v2) + 88) = v0;
  v3 = *(type metadata accessor for Realtime_V1_SessionUpdated(0) + 20);
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_265();
  return OUTLINED_FUNCTION_15_11();
}

void sub_1B1BA5C38()
{
  OUTLINED_FUNCTION_25();
  v1 = v0;
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *(*v2 + 84);
  v6 = *(*v2 + 88);
  v7 = *(*v2 + 80);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + 84);
    v12 = *(v3 + 88);
    v13 = v1(0);
    OUTLINED_FUNCTION_207(v13);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    v10 = v14;
    *(v12 + v11) = v14;
  }

  OUTLINED_FUNCTION_66_0();
  *(v10 + 32) = v4;
  *(v10 + 40) = v7;
  OUTLINED_FUNCTION_26_1();

  free(v15);
}

void sub_1B1BA5D20()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_56_0();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_32_7();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_23(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_82();
  v12 = v2(0);
  OUTLINED_FUNCTION_219(v12);
  v13 = *v1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_256(v0 + v13);
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_13(v3);
  if (v14)
  {
    Realtime_V1_Session.init()(v5);
    OUTLINED_FUNCTION_13(v3);
    if (!v14)
    {
      sub_1B1A90C20(v3, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA5E64()
{
  OUTLINED_FUNCTION_53_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_8();
  v13 = *(v7(0) + 20);
  v14 = *(v0 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v0 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = v5(0);
    OUTLINED_FUNCTION_207(v17);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    v16 = v18;
    *(v8 + v13) = v18;
  }

  OUTLINED_FUNCTION_33();
  sub_1B1BB85CC();
  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_79_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *v3;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B8C2AC(v1, v16 + v23, &qword_1EB762B18, &qword_1B1C3A140);
  swift_endAccess();
  OUTLINED_FUNCTION_34_3();
}

void Realtime_V1_SessionUpdated.session.modify()
{
  OUTLINED_FUNCTION_25();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  v3[3] = v0;
  v4 = OUTLINED_FUNCTION_32_7();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v3[4] = v8;
  v9 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_45(v9);
  v11 = *(v10 + 64);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v3[6] = __swift_coroFrameAllocStub(v11);
  v12 = type metadata accessor for Realtime_V1_SessionUpdated(0);
  OUTLINED_FUNCTION_219(v12);
  v13 = OBJC_IVAR____TtCV14SiriTTSService26Realtime_V1_SessionUpdatedP33_1FC65C7469DBAFEA095D5329DD5B613513_StorageClass__session;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  OUTLINED_FUNCTION_256(v0 + v13);
  OUTLINED_FUNCTION_46();
  if (v14)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_208(v15);
    v16 = *(v9 + 64);
    type metadata accessor for Realtime_V1_InputAudioTranscription(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    v21 = *(v9 + 68);
    type metadata accessor for Realtime_V1_TurnDetection(0);
    OUTLINED_FUNCTION_64_1();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
    OUTLINED_FUNCTION_46();
    if (!v14)
    {
      sub_1B1A90C20(v8, &qword_1EB762B18, &qword_1B1C3A140);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_26_1();
}

void sub_1B1BA6150(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    OUTLINED_FUNCTION_15();
    sub_1B1BB8620();
    a3(v5);
    OUTLINED_FUNCTION_92_2();
    sub_1B1B9C820();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1B1BA6220()
{
  OUTLINED_FUNCTION_56_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_193();
  v9 = v2(v8);
  OUTLINED_FUNCTION_219(v9);
  v10 = *v1;
  OUTLINED_FUNCTION_11_0();
  swift_beginAccess();
  sub_1B1B8D9D8(v0 + v10, v3, &qword_1EB762B18, &qword_1B1C3A140);
  v11 = type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_48_0(v3, 1, v11);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  sub_1B1A90C20(v3, &qword_1EB762B18, &qword_1B1C3A140);
  return v13;
}

uint64_t sub_1B1BA6338(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3)
{
  v8 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B18, &qword_1B1C3A140);
  OUTLINED_FUNCTION_23(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_8();
  v13 = *(a1(0) + 20);
  v14 = *(v3 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v3 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = a2(0);
    OUTLINED_FUNCTION_207(v17);
    swift_allocObject();
    OUTLINED_FUNCTION_47_5();
    sub_1B1BB8D64();
    v16 = v18;
    *(v8 + v13) = v18;
  }

  type metadata accessor for Realtime_V1_Session(0);
  OUTLINED_FUNCTION_64_1();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = *a3;
  OUTLINED_FUNCTION_15_1();
  swift_beginAccess();
  sub_1B1B8C2AC(v4, v16 + v23, &qword_1EB762B18, &qword_1B1C3A140);
  return swift_endAccess();
}

uint64_t _s14SiriTTSService26Realtime_V1_SessionCreatedV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0()
{
  OUTLINED_FUNCTION_89();
  v0 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_43_0();

  return v4(v3);
}

uint64_t _s14SiriTTSService26Realtime_V1_SessionCreatedV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0()
{
  OUTLINED_FUNCTION_58_0();
  v0 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v0);
  v2 = *(v1 + 40);
  v3 = OUTLINED_FUNCTION_49();

  return v4(v3);
}

uint64_t Realtime_V1_ConversationCreated.conversation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ConversationCreated(v7);
  OUTLINED_FUNCTION_160(*(v8 + 28));
  v9 = type metadata accessor for Realtime_V1_Conversation(0);
  OUTLINED_FUNCTION_13(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_128_0();
    *(a1 + 16) = 0;
    *(a1 + 24) = v11;
    v12 = a1 + *(v9 + 24);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_13(v1);
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB7636E0, &qword_1B1C3D0A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ConversationCreated.conversation.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ConversationCreated(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB7636E0, &qword_1B1C3D0A0);
  OUTLINED_FUNCTION_15_17();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Conversation(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ConversationCreated.conversation.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_93_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_Conversation(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_1(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_58_5(v15);
  v17 = type metadata accessor for Realtime_V1_ConversationCreated(v16);
  v18 = OUTLINED_FUNCTION_190(*(v17 + 28));
  OUTLINED_FUNCTION_122_0(v18);
  OUTLINED_FUNCTION_12_16();
  if (v19)
  {
    OUTLINED_FUNCTION_119_1();
    v20 = v12 + *(v10 + 24);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_12_16();
    if (!v19)
    {
      sub_1B1A90C20(v0, &qword_1EB7636E0, &qword_1B1C3D0A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_33();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA67BC()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1BB8620();
    sub_1B1A90C20(v4 + v3, &qword_1EB7636E0, &qword_1B1C3D0A0);
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_179();
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB7636E0, &qword_1B1C3D0A0);
    OUTLINED_FUNCTION_15_17();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t sub_1B1BA68CC()
{
  OUTLINED_FUNCTION_166();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_193();
  v11 = *(v1(v10) + 28);
  OUTLINED_FUNCTION_131_0();
  sub_1B1B8D9D8(v12, v13, v14, v2);
  v15 = v0(0);
  OUTLINED_FUNCTION_48_0(v3, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_72_0();
  sub_1B1A90C20(v18, v19, v20);
  return v17;
}

uint64_t sub_1B1BA69BC()
{
  OUTLINED_FUNCTION_166();
  v4 = OUTLINED_FUNCTION_274();
  v6 = v5(v4);
  sub_1B1A90C20(v1 + *(v6 + 28), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t sub_1B1BA6A4C()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA6AD0()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ConversationCreated.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationCreated(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemCreated.item.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ConversationItemCreated(v7);
  OUTLINED_FUNCTION_160(*(v8 + 32));
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_13(v1);
  if (v9)
  {
    Realtime_V1_Item.init()(a1);
    result = OUTLINED_FUNCTION_13(v1);
    if (!v9)
    {
      return sub_1B1A90C20(v1, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ConversationItemCreated.item.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ConversationItemCreated(v1);
  sub_1B1A90C20(v0 + *(v2 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Item(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ConversationItemCreated.item.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_91(v7);
  v9 = type metadata accessor for Realtime_V1_Item(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_89_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_58_5(v13);
  v15 = type metadata accessor for Realtime_V1_ConversationItemCreated(v14);
  OUTLINED_FUNCTION_155(*(v15 + 32));
  OUTLINED_FUNCTION_46();
  if (v16)
  {
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_209(v17);
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA6E24()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1BB8620();
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_74_4();
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762AF8, &qword_1B1C3A120);
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t Realtime_V1_ConversationItemCreated.hasItem.getter()
{
  v2 = OUTLINED_FUNCTION_92();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_32_0();
  v9 = type metadata accessor for Realtime_V1_ConversationItemCreated(v8);
  sub_1B1B8D9D8(v0 + *(v9 + 32), v1, &qword_1EB762AF8, &qword_1B1C3A120);
  v10 = type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_48_0(v1, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = OUTLINED_FUNCTION_33_2();
  sub_1B1A90C20(v13, v14, &qword_1B1C3A120);
  return v12;
}

Swift::Void __swiftcall Realtime_V1_ConversationItemCreated.clearItem()()
{
  v1 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  sub_1B1A90C20(v0 + *(v1 + 32), &qword_1EB762AF8, &qword_1B1C3A120);
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_64_1();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Realtime_V1_ConversationItemCreated.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemCreated(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.transcript.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.transcript.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 64);

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionCompleted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(v0) + 36);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionFailed.error.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v7);
  OUTLINED_FUNCTION_160(*(v8 + 36));
  v9 = type metadata accessor for Realtime_V1_CommonError(0);
  OUTLINED_FUNCTION_13(v1);
  if (v10)
  {
    OUTLINED_FUNCTION_128_0();
    a1[2] = 0;
    a1[3] = v11;
    OUTLINED_FUNCTION_154(v11);
    a1[8] = 0;
    a1[9] = v12;
    v13 = a1 + *(v9 + 36);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_13(v1);
    if (!v10)
    {
      return sub_1B1A90C20(v1, &qword_1EB7636D0, &qword_1B1C3D090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionFailed.error.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v1);
  sub_1B1A90C20(v0 + *(v2 + 36), &qword_1EB7636D0, &qword_1B1C3D090);
  OUTLINED_FUNCTION_6_22();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_CommonError(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ConversationItemInputAudioTranscriptionFailed.error.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_93_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_CommonError(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_1(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_58_5(v15);
  v17 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v16);
  v18 = OUTLINED_FUNCTION_190(*(v17 + 36));
  OUTLINED_FUNCTION_122_0(v18);
  OUTLINED_FUNCTION_12_16();
  if (v19)
  {
    OUTLINED_FUNCTION_112_1();
    *(v12 + 64) = 0;
    *(v12 + 72) = v20;
    v21 = v12 + *(v10 + 36);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_12_16();
    if (!v19)
    {
      sub_1B1A90C20(v0, &qword_1EB7636D0, &qword_1B1C3D090);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_22();
    OUTLINED_FUNCTION_33();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ConversationItemInputAudioTranscriptionFailed.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionFailed(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA7640()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA76C4()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 36);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ConversationItemTruncated.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemTruncated(v0) + 36);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA77DC()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA7860()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 28);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ConversationItemDeleted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ConversationItemDeleted(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA7990()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA7A14()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_InputAudioBufferCommitted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferCommitted(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioBufferCleared.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferCleared(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioBufferSpeechStarted.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_InputAudioBufferSpeechStopped.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseCreated.response.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ResponseCreated(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Response(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ResponseCreated.response.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_91(v7);
  v9 = type metadata accessor for Realtime_V1_Response(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_89_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_58_5(v13);
  v15 = type metadata accessor for Realtime_V1_ResponseCreated(v14);
  OUTLINED_FUNCTION_155(*(v15 + 28));
  OUTLINED_FUNCTION_46();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_236(v17);
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      sub_1B1A90C20(v7, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ResponseCreated.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseCreated(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA803C@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_32_0();
  v10 = a1(v9);
  OUTLINED_FUNCTION_281(*(v10 + 28));
  type metadata accessor for Realtime_V1_Response(0);
  OUTLINED_FUNCTION_13(v2);
  if (v11)
  {
    Realtime_V1_Response.init()(a2);
    result = OUTLINED_FUNCTION_13(v2);
    if (!v11)
    {
      return sub_1B1A90C20(v2, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ResponseDone.response.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ResponseDone(v1);
  sub_1B1A90C20(v0 + *(v2 + 28), &qword_1EB762B08, &qword_1B1C3A130);
  OUTLINED_FUNCTION_16_18();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Response(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ResponseDone.response.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_91(v7);
  v9 = type metadata accessor for Realtime_V1_Response(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_89_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_58_5(v13);
  v15 = type metadata accessor for Realtime_V1_ResponseDone(v14);
  OUTLINED_FUNCTION_155(*(v15 + 28));
  OUTLINED_FUNCTION_46();
  if (v16)
  {
    OUTLINED_FUNCTION_104_0(MEMORY[0x1E69E7CC0]);
    OUTLINED_FUNCTION_236(v17);
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      sub_1B1A90C20(v7, &qword_1EB762B08, &qword_1B1C3A130);
    }
  }

  else
  {
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA82B4()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1BB8620();
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_75_0();
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB762B08, &qword_1B1C3A130);
    OUTLINED_FUNCTION_16_18();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t Realtime_V1_ResponseDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseDone(v0) + 24);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseOutputItemAdded.item.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_104_1();
  OUTLINED_FUNCTION_23(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_32_0();
  v8 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v7);
  OUTLINED_FUNCTION_160(*(v8 + 36));
  type metadata accessor for Realtime_V1_Item(0);
  OUTLINED_FUNCTION_13(v1);
  if (v9)
  {
    Realtime_V1_Item.init()(a1);
    result = OUTLINED_FUNCTION_13(v1);
    if (!v9)
    {
      return sub_1B1A90C20(v1, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t Realtime_V1_ResponseOutputItemAdded.item.setter()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v2 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v1);
  sub_1B1A90C20(v0 + *(v2 + 36), &qword_1EB762AF8, &qword_1B1C3A120);
  OUTLINED_FUNCTION_5_25();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Item(0);
  v3 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Realtime_V1_ResponseOutputItemAdded.item.modify()
{
  OUTLINED_FUNCTION_53_0();
  v1 = OUTLINED_FUNCTION_93_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_23_2(v2);
  v3 = OUTLINED_FUNCTION_66_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_23(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_91(v7);
  v9 = type metadata accessor for Realtime_V1_Item(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_45(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_89_1(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_58_5(v13);
  v15 = type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v14);
  OUTLINED_FUNCTION_155(*(v15 + 36));
  OUTLINED_FUNCTION_46();
  if (v16)
  {
    OUTLINED_FUNCTION_119_1();
    OUTLINED_FUNCTION_209(v17);
    OUTLINED_FUNCTION_46();
    if (!v16)
    {
      sub_1B1A90C20(v7, &qword_1EB762AF8, &qword_1B1C3A120);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_25();
    OUTLINED_FUNCTION_3_3();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

uint64_t sub_1B1BA8778()
{
  OUTLINED_FUNCTION_166();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_193();
  v11 = *(v1(v10) + 36);
  OUTLINED_FUNCTION_131_0();
  sub_1B1B8D9D8(v12, v13, v14, v2);
  v15 = v0(0);
  OUTLINED_FUNCTION_48_0(v3, 1, v15);
  if (v16)
  {
    v17 = 0;
  }

  else
  {
    v17 = 1;
  }

  OUTLINED_FUNCTION_72_0();
  sub_1B1A90C20(v18, v19, v20);
  return v17;
}

uint64_t sub_1B1BA8868()
{
  OUTLINED_FUNCTION_166();
  v4 = OUTLINED_FUNCTION_274();
  v6 = v5(v4);
  sub_1B1A90C20(v1 + *(v6 + 36), v3, v2);
  v0(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t Realtime_V1_ResponseOutputItemAdded.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseOutputItemAdded(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseOutputItemDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseOutputItemDone(v0) + 32);
  return OUTLINED_FUNCTION_85_0();
}

void Realtime_V1_ResponseContentPartAdded.part.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_93_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_Part(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_1(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_58_5(v15);
  v17 = type metadata accessor for Realtime_V1_ResponseContentPartAdded(v16);
  v18 = OUTLINED_FUNCTION_190(*(v17 + 44));
  OUTLINED_FUNCTION_122_0(v18);
  OUTLINED_FUNCTION_12_16();
  if (v19)
  {
    OUTLINED_FUNCTION_112_1();
    v20 = v12 + *(v10 + 32);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_12_16();
    if (!v19)
    {
      sub_1B1A90C20(v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_33();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

uint64_t Realtime_V1_ResponseContentPartAdded.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseContentPartAdded(v0) + 40);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BA8D68@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
  OUTLINED_FUNCTION_23(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_32_0();
  v10 = a1(v9);
  OUTLINED_FUNCTION_281(*(v10 + 44));
  v11 = type metadata accessor for Realtime_V1_Part(0);
  OUTLINED_FUNCTION_13(v2);
  if (v12)
  {
    OUTLINED_FUNCTION_128_0();
    *(a2 + 16) = 0;
    *(a2 + 24) = v13;
    OUTLINED_FUNCTION_154(v13);
    v14 = a2 + *(v11 + 32);
    sub_1B1C2C5B8();
    result = OUTLINED_FUNCTION_13(v2);
    if (!v12)
    {
      return sub_1B1A90C20(v2, &qword_1EB7636F0, &qword_1B1C3D0B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_33_2();
    return sub_1B1BB85CC();
  }

  return result;
}

uint64_t sub_1B1BA8E80()
{
  v1 = OUTLINED_FUNCTION_58_0();
  v3 = v2(v1);
  sub_1B1A90C20(v0 + *(v3 + 44), &qword_1EB7636F0, &qword_1B1C3D0B0);
  OUTLINED_FUNCTION_25_10();
  OUTLINED_FUNCTION_237();
  type metadata accessor for Realtime_V1_Part(0);
  v4 = OUTLINED_FUNCTION_38_8();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void Realtime_V1_ResponseContentPartDone.part.modify()
{
  OUTLINED_FUNCTION_53_0();
  v2 = OUTLINED_FUNCTION_93_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_23_2(v3);
  v4 = OUTLINED_FUNCTION_66_1();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_23(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_37(v8);
  v10 = type metadata accessor for Realtime_V1_Part(v9);
  *(v1 + 16) = v10;
  OUTLINED_FUNCTION_45(v10);
  v12 = *(v11 + 64);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_1(v13);
  v15 = __swift_coroFrameAllocStub(v14);
  v16 = OUTLINED_FUNCTION_58_5(v15);
  v17 = type metadata accessor for Realtime_V1_ResponseContentPartDone(v16);
  v18 = OUTLINED_FUNCTION_190(*(v17 + 44));
  OUTLINED_FUNCTION_122_0(v18);
  OUTLINED_FUNCTION_12_16();
  if (v19)
  {
    OUTLINED_FUNCTION_112_1();
    v20 = v12 + *(v10 + 32);
    sub_1B1C2C5B8();
    OUTLINED_FUNCTION_12_16();
    if (!v19)
    {
      sub_1B1A90C20(v0, &qword_1EB7636F0, &qword_1B1C3D0B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_33();
    sub_1B1BB85CC();
  }

  OUTLINED_FUNCTION_15_11();
  OUTLINED_FUNCTION_34_3();
}

void sub_1B1BA9008()
{
  OUTLINED_FUNCTION_53_0();
  OUTLINED_FUNCTION_102_0(v5);
  if (v6)
  {
    OUTLINED_FUNCTION_67_2();
    sub_1B1BB8620();
    sub_1B1A90C20(v4 + v3, &qword_1EB7636F0, &qword_1B1C3D0B0);
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_259();
    OUTLINED_FUNCTION_75_0();
    OUTLINED_FUNCTION_178();
    sub_1B1B9C820();
  }

  else
  {
    sub_1B1A90C20(v4 + v3, &qword_1EB7636F0, &qword_1B1C3D0B0);
    OUTLINED_FUNCTION_25_10();
    OUTLINED_FUNCTION_260();
    OUTLINED_FUNCTION_75_0();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_34_3();

  free(v7);
}

uint64_t sub_1B1BA90F4(uint64_t (*a1)(void))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636F0, &qword_1B1C3D0B0);
  OUTLINED_FUNCTION_23(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_22_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_82();
  v8 = a1(0);
  sub_1B1B8D9D8(v1 + *(v8 + 44), v2, &qword_1EB7636F0, &qword_1B1C3D0B0);
  v9 = type metadata accessor for Realtime_V1_Part(0);
  OUTLINED_FUNCTION_48_0(v2, 1, v9);
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = OUTLINED_FUNCTION_3_3();
  sub_1B1A90C20(v12, v13, &qword_1B1C3D0B0);
  return v11;
}

uint64_t sub_1B1BA91D4()
{
  v1 = OUTLINED_FUNCTION_274();
  v3 = v2(v1);
  sub_1B1A90C20(v0 + *(v3 + 44), &qword_1EB7636F0, &qword_1B1C3D0B0);
  type metadata accessor for Realtime_V1_Part(0);
  OUTLINED_FUNCTION_64_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1B1BA9254()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 40);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA92D8()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 40);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ResponseContentPartDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseContentPartDone(v0) + 40);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseTextDelta.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseTextDelta(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseTextDone.responseID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseTextDone.responseID.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Realtime_V1_ResponseTextDone.itemID.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseTextDone.itemID.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Realtime_V1_ResponseTextDone.text.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseTextDone.text.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 80);

  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  return result;
}

uint64_t sub_1B1BA96B0()
{
  v0 = OUTLINED_FUNCTION_117_0();
  v2 = *(v1(v0) + 44);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_84_0();

  return v7(v6);
}

uint64_t sub_1B1BA9734()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v2 = *(v1(v0) + 44);
  v3 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_113_0();

  return v7(v6);
}

uint64_t Realtime_V1_ResponseTextDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseTextDone(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseAudioTranscriptDelta.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioTranscriptDelta(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseAudioTranscriptDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioTranscriptDone(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseAudioDelta.audioBytes.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = OUTLINED_FUNCTION_43_0();
  sub_1B1AA64DC(v3, v4);
  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseAudioDelta.audioBytes.setter()
{
  OUTLINED_FUNCTION_62();
  result = sub_1B1A94524(*(v1 + 88), *(v1 + 96));
  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Realtime_V1_ResponseAudioDelta.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_89();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioDelta(v0) + 48);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_84_0();

  return v6(v5);
}

uint64_t Realtime_V1_ResponseAudioDelta.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioDelta(v0) + 48);
  v2 = sub_1B1C2C5C8();
  OUTLINED_FUNCTION_45(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_113_0();

  return v6(v5);
}

uint64_t Realtime_V1_ResponseAudioDelta.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioDelta(v0) + 48);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseAudioDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseAudioDone(v0) + 40);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseFunctionCallArgumentsDelta.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDelta(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_ResponseFunctionCallArgumentsDone.arguments.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_43_0();
}

uint64_t Realtime_V1_ResponseFunctionCallArgumentsDone.arguments.setter()
{
  OUTLINED_FUNCTION_62();
  v3 = *(v1 + 96);

  *(v1 + 88) = v2;
  *(v1 + 96) = v0;
  return result;
}

uint64_t Realtime_V1_ResponseFunctionCallArgumentsDone.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_ResponseFunctionCallArgumentsDone(v0) + 44);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t Realtime_V1_RateLimitsUpdated.rateLimits.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Realtime_V1_RateLimitsUpdated.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_58_0();
  v1 = *(type metadata accessor for Realtime_V1_RateLimitsUpdated(v0) + 28);
  return OUTLINED_FUNCTION_85_0();
}

uint64_t sub_1B1BAA0FC()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7633E0);
  __swift_project_value_buffer(v0, qword_1EB7633E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1B1C3D060;
  v4 = v64 + v3 + v1[14];
  *(v64 + v3) = 0;
  *v4 = "SERVER_EVENT_TYPE_UNSPECIFIED";
  *(v4 + 8) = 29;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B1C2C798();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v64 + v3 + v2 + v1[14];
  *(v64 + v3 + v2) = 1;
  *v8 = "SERVER_EVENT_TYPE_ERROR";
  *(v8 + 8) = 23;
  *(v8 + 16) = 2;
  v7();
  v9 = (v64 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "SERVER_EVENT_TYPE_SESSION_CREATED";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v7();
  v11 = (v64 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "SERVER_EVENT_TYPE_SESSION_UPDATED";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v7();
  v13 = (v64 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "SERVER_EVENT_TYPE_CONVERSATION_CREATED";
  *(v14 + 1) = 38;
  v14[16] = 2;
  v7();
  v15 = (v64 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "SERVER_EVENT_TYPE_INPUT_AUDIO_BUFFER_COMMITTED";
  *(v16 + 1) = 46;
  v16[16] = 2;
  v7();
  v17 = (v64 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "SERVER_EVENT_TYPE_INPUT_AUDIO_BUFFER_CLEARED";
  *(v18 + 1) = 44;
  v18[16] = 2;
  v7();
  v19 = (v64 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "SERVER_EVENT_TYPE_INPUT_AUDIO_BUFFER_SPEECH_STARTED";
  *(v20 + 1) = 51;
  v20[16] = 2;
  v7();
  v21 = (v64 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "SERVER_EVENT_TYPE_INPUT_AUDIO_BUFFER_SPEECH_STOPPED";
  *(v22 + 1) = 51;
  v22[16] = 2;
  v7();
  v23 = (v64 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SERVER_EVENT_TYPE_CONVERSATION_ITEM_CREATED";
  *(v24 + 1) = 43;
  v24[16] = 2;
  v7();
  v25 = (v64 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SERVER_EVENT_TYPE_CONVERSATION_ITEM_INPUT_AUDIO_TRANSCRIPTION_COMPLETED";
  *(v26 + 1) = 71;
  v26[16] = 2;
  v7();
  v27 = (v64 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SERVER_EVENT_TYPE_CONVERSATION_ITEM_INPUT_AUDIO_TRANSCRIPTION_FAILED";
  *(v28 + 1) = 68;
  v28[16] = 2;
  v7();
  v29 = (v64 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SERVER_EVENT_TYPE_CONVERSATION_ITEM_TRUNCATED";
  *(v30 + 1) = 45;
  v30[16] = 2;
  v7();
  v31 = (v64 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SERVER_EVENT_TYPE_CONVERSATION_ITEM_DELETED";
  *(v32 + 1) = 43;
  v32[16] = 2;
  v7();
  v33 = (v64 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SERVER_EVENT_TYPE_RESPONSE_CREATED";
  *(v34 + 1) = 34;
  v34[16] = 2;
  v7();
  v35 = (v64 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SERVER_EVENT_TYPE_RESPONSE_DONE";
  *(v36 + 1) = 31;
  v36[16] = 2;
  v7();
  v37 = (v64 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "SERVER_EVENT_TYPE_RESPONSE_OUTPUT_ITEM_ADDED";
  *(v38 + 1) = 44;
  v38[16] = 2;
  v7();
  v39 = (v64 + v3 + 17 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "SERVER_EVENT_TYPE_RESPONSE_OUTPUT_ITEM_DONE";
  *(v40 + 1) = 43;
  v40[16] = 2;
  v7();
  v41 = (v64 + v3 + 18 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "SERVER_EVENT_TYPE_RESPONSE_CONTENT_PART_ADDED";
  *(v42 + 1) = 45;
  v42[16] = 2;
  v7();
  v43 = (v64 + v3 + 19 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "SERVER_EVENT_TYPE_RESPONSE_CONTENT_PART_DONE";
  *(v44 + 1) = 44;
  v44[16] = 2;
  v7();
  v45 = (v64 + v3 + 20 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "SERVER_EVENT_TYPE_RESPONSE_TEXT_DELTA";
  *(v46 + 1) = 37;
  v46[16] = 2;
  v7();
  v47 = (v64 + v3 + 21 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "SERVER_EVENT_TYPE_RESPONSE_TEXT_DONE";
  *(v48 + 1) = 36;
  v48[16] = 2;
  v7();
  v49 = (v64 + v3 + 22 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "SERVER_EVENT_TYPE_RESPONSE_AUDIO_TRANSCRIPT_DELTA";
  *(v50 + 1) = 49;
  v50[16] = 2;
  v7();
  v51 = (v64 + v3 + 23 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "SERVER_EVENT_TYPE_RESPONSE_AUDIO_TRANSCRIPT_DONE";
  *(v52 + 1) = 48;
  v52[16] = 2;
  v7();
  v53 = (v64 + v3 + 24 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "SERVER_EVENT_TYPE_RESPONSE_AUDIO_DELTA";
  *(v54 + 1) = 38;
  v54[16] = 2;
  v7();
  v55 = (v64 + v3 + 25 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "SERVER_EVENT_TYPE_RESPONSE_AUDIO_DONE";
  *(v56 + 1) = 37;
  v56[16] = 2;
  v7();
  v57 = (v64 + v3 + 26 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "SERVER_EVENT_TYPE_RESPONSE_FUNCTION_CALL_ARGUMENTS_DELTA";
  *(v58 + 1) = 56;
  v58[16] = 2;
  v7();
  v59 = (v64 + v3 + 27 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "SERVER_EVENT_TYPE_RESPONSE_FUNCTION_CALL_ARGUMENTS_DONE";
  *(v60 + 1) = 55;
  v60[16] = 2;
  v7();
  v61 = (v64 + v3 + 28 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "SERVER_EVENT_TYPE_RATE_LIMITS_UPDATED";
  *(v62 + 1) = 37;
  v62[16] = 2;
  v7();
  return sub_1B1C2C7A8();
}

uint64_t sub_1B1BAA954()
{
  v0 = sub_1B1C2C7B8();
  __swift_allocate_value_buffer(v0, qword_1EB7633F8);
  __swift_project_value_buffer(v0, qword_1EB7633F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DC8, &unk_1B1C3B400);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB762DD0, &qword_1B1C3D040) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_1B1C3D070;
  v4 = v64 + v3;
  v5 = v64 + v3 + v1[14];
  *(v64 + v3) = 1;
  *v5 = "error";
  *(v5 + 8) = 5;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B1C2C798();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "session_created";
  *(v9 + 8) = 15;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "session_updated";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "conversation_created";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "input_audio_buffer_committed";
  *(v16 + 1) = 28;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "input_audio_buffer_cleared";
  *(v18 + 1) = 26;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "input_audio_buffer_speech_started";
  *(v20 + 1) = 33;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "input_audio_buffer_speech_stopped";
  *(v22 + 1) = 33;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "conversation_item_created";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "transcription_completed";
  *(v26 + 1) = 23;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "transcription_failed";
  *(v28 + 1) = 20;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "conversation_item_truncated";
  *(v30 + 1) = 27;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "conversation_item_deleted";
  *(v32 + 1) = 25;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "response_created";
  *(v34 + 1) = 16;
  v34[16] = 2;
  v8();
  v35 = (v4 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "response_done";
  *(v36 + 1) = 13;
  v36[16] = 2;
  v8();
  v37 = (v4 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "response_output_item_added";
  *(v38 + 1) = 26;
  v38[16] = 2;
  v8();
  v39 = (v4 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "response_output_item_done";
  *(v40 + 1) = 25;
  v40[16] = 2;
  v8();
  v41 = (v4 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "response_content_part_added";
  *(v42 + 1) = 27;
  v42[16] = 2;
  v8();
  v43 = (v4 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "response_content_part_done";
  *(v44 + 1) = 26;
  v44[16] = 2;
  v8();
  v45 = (v4 + 19 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "response_text_delta";
  *(v46 + 1) = 19;
  v46[16] = 2;
  v8();
  v47 = (v4 + 20 * v2);
  v48 = v47 + v1[14];
  *v47 = 21;
  *v48 = "response_text_done";
  *(v48 + 1) = 18;
  v48[16] = 2;
  v8();
  v49 = (v4 + 21 * v2);
  v50 = v49 + v1[14];
  *v49 = 22;
  *v50 = "response_audio_transcript_delta";
  *(v50 + 1) = 31;
  v50[16] = 2;
  v8();
  v51 = (v4 + 22 * v2);
  v52 = v51 + v1[14];
  *v51 = 23;
  *v52 = "response_audio_transcript_done";
  *(v52 + 1) = 30;
  v52[16] = 2;
  v8();
  v53 = (v4 + 23 * v2);
  v54 = v53 + v1[14];
  *v53 = 24;
  *v54 = "response_audio_delta";
  *(v54 + 1) = 20;
  v54[16] = 2;
  v8();
  v55 = (v4 + 24 * v2);
  v56 = v55 + v1[14];
  *v55 = 25;
  *v56 = "response_audio_done";
  *(v56 + 1) = 19;
  v56[16] = 2;
  v8();
  v57 = (v4 + 25 * v2);
  v58 = v57 + v1[14];
  *v57 = 26;
  *v58 = "function_call_arguments_delta";
  *(v58 + 1) = 29;
  v58[16] = 2;
  v8();
  v59 = (v4 + 26 * v2);
  v60 = v59 + v1[14];
  *v59 = 27;
  *v60 = "function_call_arguments_done";
  *(v60 + 1) = 28;
  v60[16] = 2;
  v8();
  v61 = (v4 + 27 * v2);
  v62 = v61 + v1[14];
  *v61 = 28;
  *v62 = "rate_limits_updated";
  *(v62 + 1) = 19;
  v62[16] = 2;
  v8();
  return sub_1B1C2C7A8();
}

uint64_t Realtime_V1_ServerEvent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_54_1();
  while (1)
  {
    OUTLINED_FUNCTION_15();
    result = sub_1B1C2C618();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAB38C(v3, v4, v5, v6);
        break;
      case 2:
        v59 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAB884(v59, v60, v61, v62);
        break;
      case 3:
        v43 = OUTLINED_FUNCTION_15_4();
        sub_1B1BABD7C(v43, v44, v45, v46);
        break;
      case 4:
        v51 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAC274(v51, v52, v53, v54);
        break;
      case 5:
        v23 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAC76C(v23, v24, v25, v26);
        break;
      case 6:
        v71 = OUTLINED_FUNCTION_15_4();
        sub_1B1BACC64(v71, v72, v73, v74);
        break;
      case 7:
        v83 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAD15C(v83, v84, v85, v86);
        break;
      case 8:
        v55 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAD654(v55, v56, v57, v58);
        break;
      case 9:
        v95 = OUTLINED_FUNCTION_15_4();
        sub_1B1BADB4C(v95, v96, v97, v98);
        break;
      case 10:
        v31 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAE044(v31, v32, v33, v34);
        break;
      case 11:
        v91 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAE53C(v91, v92, v93, v94);
        break;
      case 12:
        v19 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAEA34(v19, v20, v21, v22);
        break;
      case 13:
        v27 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAEF2C(v27, v28, v29, v30);
        break;
      case 14:
        v79 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAF424(v79, v80, v81, v82);
        break;
      case 15:
        v15 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAF91C(v15, v16, v17, v18);
        break;
      case 16:
        v47 = OUTLINED_FUNCTION_15_4();
        sub_1B1BAFE14(v47, v48, v49, v50);
        break;
      case 17:
        v11 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB030C(v11, v12, v13, v14);
        break;
      case 18:
        v63 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB0804(v63, v64, v65, v66);
        break;
      case 19:
        v87 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB0CFC(v87, v88, v89, v90);
        break;
      case 20:
        v103 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB11F4(v103, v104, v105, v106);
        break;
      case 21:
        v67 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB16EC(v67, v68, v69, v70);
        break;
      case 22:
        v75 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB1BE4(v75, v76, v77, v78);
        break;
      case 23:
        v99 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB20DC(v99, v100, v101, v102);
        break;
      case 24:
        v107 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB25D4(v107, v108, v109, v110);
        break;
      case 25:
        v39 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB2ACC(v39, v40, v41, v42);
        break;
      case 26:
        v35 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB2FC4(v35, v36, v37, v38);
        break;
      case 27:
        v111 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB34BC(v111, v112, v113, v114);
        break;
      case 28:
        v7 = OUTLINED_FUNCTION_15_4();
        sub_1B1BB39B4(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B1BAB38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ClientError(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763DF0, &qword_1B1C40440);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B1B9C820();
    }

    else
    {
      sub_1B1A90C20(v22, &qword_1EB763DF0, &qword_1B1C40440);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }
  }

  sub_1B1BB99B4(&qword_1EB763848, type metadata accessor for Realtime_V1_ClientError);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763DF0, &qword_1B1C40440);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763DF0, &qword_1B1C40440);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763DF0, &qword_1B1C40440);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763DF0, &qword_1B1C40440);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763DF0, &qword_1B1C40440);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAB884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_SessionCreated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763DF8, &qword_1B1C40448);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B1A90C20(v22, &qword_1EB763DF8, &qword_1B1C40448);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763860, type metadata accessor for Realtime_V1_SessionCreated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763DF8, &qword_1B1C40448);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763DF8, &qword_1B1C40448);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763DF8, &qword_1B1C40448);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763DF8, &qword_1B1C40448);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763DF8, &qword_1B1C40448);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BABD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_SessionUpdated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E00, &qword_1B1C40450);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B1A90C20(v22, &qword_1EB763E00, &qword_1B1C40450);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763878, type metadata accessor for Realtime_V1_SessionUpdated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E00, &qword_1B1C40450);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E00, &qword_1B1C40450);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E00, &qword_1B1C40450);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E00, &qword_1B1C40450);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E00, &qword_1B1C40450);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAC274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationCreated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E08, &qword_1B1C40458);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B1A90C20(v22, &qword_1EB763E08, &qword_1B1C40458);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763890, type metadata accessor for Realtime_V1_ConversationCreated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E08, &qword_1B1C40458);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E08, &qword_1B1C40458);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E08, &qword_1B1C40458);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E08, &qword_1B1C40458);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E08, &qword_1B1C40458);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferCommitted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E10, &qword_1B1C40460);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B1A90C20(v22, &qword_1EB763E10, &qword_1B1C40460);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763920, type metadata accessor for Realtime_V1_InputAudioBufferCommitted);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E10, &qword_1B1C40460);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E10, &qword_1B1C40460);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E10, &qword_1B1C40460);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E10, &qword_1B1C40460);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E10, &qword_1B1C40460);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BACC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferCleared(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E18, &qword_1B1C40468);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B1A90C20(v22, &qword_1EB763E18, &qword_1B1C40468);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763938, type metadata accessor for Realtime_V1_InputAudioBufferCleared);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E18, &qword_1B1C40468);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E18, &qword_1B1C40468);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E18, &qword_1B1C40468);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E18, &qword_1B1C40468);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E18, &qword_1B1C40468);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAD15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E20, &qword_1B1C40470);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B1A90C20(v22, &qword_1EB763E20, &qword_1B1C40470);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763950, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStarted);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E20, &qword_1B1C40470);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E20, &qword_1B1C40470);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E20, &qword_1B1C40470);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E20, &qword_1B1C40470);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E20, &qword_1B1C40470);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAD654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E28, &qword_1B1C40478);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B1A90C20(v22, &qword_1EB763E28, &qword_1B1C40478);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB763968, type metadata accessor for Realtime_V1_InputAudioBufferSpeechStopped);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E28, &qword_1B1C40478);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E28, &qword_1B1C40478);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E28, &qword_1B1C40478);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E28, &qword_1B1C40478);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E28, &qword_1B1C40478);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BADB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemCreated(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E30, &qword_1B1C40480);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B1A90C20(v22, &qword_1EB763E30, &qword_1B1C40480);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7638A8, type metadata accessor for Realtime_V1_ConversationItemCreated);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E30, &qword_1B1C40480);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E30, &qword_1B1C40480);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E30, &qword_1B1C40480);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E30, &qword_1B1C40480);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E30, &qword_1B1C40480);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}

uint64_t sub_1B1BAE044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted(0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v32 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7636C0, &qword_1B1C3D080);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v28 - v11;
  v13 = type metadata accessor for Realtime_V1_ServerEvent.OneOf_Event(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB763E38, &qword_1B1C40488);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16 - 8);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v28 - v21;
  __swift_storeEnumTagSinglePayload(&v28 - v21, 1, 1, v5);
  v29 = a1;
  sub_1B1B8D9D8(a1, v12, &qword_1EB7636C0, &qword_1B1C3D080);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  v31 = v13;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B1A90C20(v12, &qword_1EB7636C0, &qword_1B1C3D080);
  }

  else
  {
    sub_1B1BB85CC();
    sub_1B1BB85CC();
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1B1A90C20(v22, &qword_1EB763E38, &qword_1B1C40488);
      sub_1B1BB85CC();
      sub_1B1BB85CC();
      __swift_storeEnumTagSinglePayload(v22, 0, 1, v5);
    }

    else
    {
      sub_1B1B9C820();
    }
  }

  sub_1B1BB99B4(&qword_1EB7638C0, type metadata accessor for Realtime_V1_ConversationItemInputAudioTranscriptionCompleted);
  v23 = v33;
  sub_1B1C2C6B8();
  if (v23)
  {
    v24 = v22;
    return sub_1B1A90C20(v24, &qword_1EB763E38, &qword_1B1C40488);
  }

  sub_1B1B8D9D8(v22, v20, &qword_1EB763E38, &qword_1B1C40488);
  if (__swift_getEnumTagSinglePayload(v20, 1, v5) == 1)
  {
    sub_1B1A90C20(v22, &qword_1EB763E38, &qword_1B1C40488);
    v24 = v20;
    return sub_1B1A90C20(v24, &qword_1EB763E38, &qword_1B1C40488);
  }

  sub_1B1BB85CC();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B1C2C628();
  }

  v26 = v31;
  sub_1B1A90C20(v22, &qword_1EB763E38, &qword_1B1C40488);
  v27 = v29;
  sub_1B1A90C20(v29, &qword_1EB7636C0, &qword_1B1C3D080);
  sub_1B1BB85CC();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
}