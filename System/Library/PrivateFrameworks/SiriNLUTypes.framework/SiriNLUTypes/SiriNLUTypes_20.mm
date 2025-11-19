uint64_t sub_1C895A088()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0) + 28);
  sub_1C8BD49BC();
  sub_1C8776818(&qword_1EC2B76D0, MEMORY[0x1E69AAB10]);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_692();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB30, &qword_1C8BFAA58);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_210();
  v7 = sub_1C8BD49BC();
  v8 = OUTLINED_FUNCTION_13_1(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  if (!*v1 || (v13 = *(v1 + 8), OUTLINED_FUNCTION_946(*v1), sub_1C89CBF68(), OUTLINED_FUNCTION_1146(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v0))
  {
    if (!*(v1 + 16) || (OUTLINED_FUNCTION_749(), sub_1C8BD4D9C(), !v0))
    {
      v14 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
      OUTLINED_FUNCTION_915(*(v14 + 28));
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_72_2(v2);
      if (v15)
      {
        sub_1C8778ED8(v2, &qword_1EC2BAB30, &qword_1C8BFAA58);
      }

      else
      {
        (*(v10 + 32))();
        OUTLINED_FUNCTION_823();
        sub_1C8776818(v16, v17);
        OUTLINED_FUNCTION_1037();
        OUTLINED_FUNCTION_445();
        sub_1C8BD4E2C();
        if (v0)
        {
          v18 = *(v10 + 8);
          v19 = OUTLINED_FUNCTION_223_1();
          v20(v19);
          goto LABEL_12;
        }

        v21 = *(v10 + 8);
        v22 = OUTLINED_FUNCTION_223_1();
        v23(v22);
      }

      v24 = v1 + *(v14 + 24);
      OUTLINED_FUNCTION_770();
    }
  }

LABEL_12:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895A414(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD500, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895A494(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895A504()
{
  sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895A584()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B96F0);
  __swift_project_value_buffer(v0, qword_1EC2B96F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Sign_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Sign_MINUS";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Sign_PLUS";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895A7C4()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6572757361654D2ELL, 0xEC000000746E656DLL);

  qword_1EC2B9708 = v1;
  unk_1EC2B9710 = v2;
  return result;
}

uint64_t sub_1C895A890()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9718);
  __swift_project_value_buffer(v0, qword_1EC2B9718);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "unit";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "unitType";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C895AB50();
        break;
      case 2:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C0C();
        break;
      case 1:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    if (*(v1 + 16) == 0.0 || (OUTLINED_FUNCTION_29_1(), OUTLINED_FUNCTION_119(), result = sub_1C8BD4DCC(), !v0))
    {
      if (!*(v1 + 24) || (v4 = *(v1 + 32), OUTLINED_FUNCTION_940(), sub_1C89CBFBC(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v0))
      {
        v5 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement(0) + 28);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t sub_1C895AD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895AD88(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBB60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895ADF8()
{
  sub_1C8776818(&qword_1EC2BBB60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Measurement);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895AE78()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x636E65727275432ELL, 0xEF746E756F6D4179);

  qword_1EC2B9730 = v1;
  *algn_1EC2B9738 = v2;
  return result;
}

uint64_t sub_1C895AF48()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9740);
  __swift_project_value_buffer(v0, qword_1EC2B9740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "amount";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "currencyIdentifier";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895B1C8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(0);
  sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C895B27C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = OUTLINED_FUNCTION_294_0(v7, v38);
  v40 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  v9 = OUTLINED_FUNCTION_21(v40);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_115_3(v12, v39);
  v13 = OUTLINED_FUNCTION_233();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(v13, v14);
  OUTLINED_FUNCTION_80(v15);
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_217_1();
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal(v19);
  v21 = OUTLINED_FUNCTION_74_1(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v24 = OUTLINED_FUNCTION_36_4();
  v25 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount(v24);
  v26 = v25[6];
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2);
  if (v27)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAB40, &qword_1C8BFAA68);
  }

  else
  {
    OUTLINED_FUNCTION_40_6();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB098, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Decimal);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_203();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_323_1();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_14;
    }
  }

  v28 = *v0;
  v29 = v0[1];
  OUTLINED_FUNCTION_88_0();
  if (v30)
  {
    OUTLINED_FUNCTION_302_0();
    sub_1C8BD4DDC();
    v31 = v41;
    if (v1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v31 = v41;
  }

  v32 = v25[7];
  sub_1C89CBE2C();
  v33 = OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_41_2(v33, v34);
  if (v27)
  {
    sub_1C8778ED8(v31, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_13:
    v37 = v0 + v25[5];
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_10_12();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_173_3();
  sub_1C8776818(v35, v36);
  OUTLINED_FUNCTION_130_0();
  OUTLINED_FUNCTION_1078();
  OUTLINED_FUNCTION_203();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_54_5();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895B694(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4F0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895B714(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBB78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895B784()
{
  sub_1C8776818(&qword_1EC2BBB78, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.CurrencyAmount);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895B804()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x746E656D7961502ELL, 0xEE00646F6874654DLL);

  qword_1EC2B9758 = v1;
  unk_1EC2B9760 = v2;
  return result;
}

uint64_t sub_1C895B8D4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9768);
  __swift_project_value_buffer(v0, qword_1EC2B9768);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identificationHint";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C895BC20();
        break;
      case 2:
        OUTLINED_FUNCTION_8();
        sub_1C8971D40();
        break;
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C895BBB8();
        break;
    }
  }

  return result;
}

uint64_t sub_1C895BC20()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_450();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_210();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v8);
  v10 = OUTLINED_FUNCTION_21(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_51_1();
  if (!*v2 || (v13 = *(v2 + 8), OUTLINED_FUNCTION_946(*v2), sub_1C89CC010(), OUTLINED_FUNCTION_1146(), OUTLINED_FUNCTION_445(), sub_1C8BD4D4C(), !v0))
  {
    v14 = OUTLINED_FUNCTION_1142();
    v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod(v14);
    OUTLINED_FUNCTION_994(v15);
    OUTLINED_FUNCTION_513(v16);
    if (!v18 || (OUTLINED_FUNCTION_512(v17), OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v0))
    {
      OUTLINED_FUNCTION_915(*(v1 + 28));
      sub_1C89CBE2C();
      OUTLINED_FUNCTION_377_0();
      if (v19)
      {
        sub_1C8778ED8(v3, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_9:
        OUTLINED_FUNCTION_688();
        goto LABEL_10;
      }

      OUTLINED_FUNCTION_10_12();
      OUTLINED_FUNCTION_223_1();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_173_3();
      sub_1C8776818(v20, v21);
      OUTLINED_FUNCTION_240();
      OUTLINED_FUNCTION_445();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_54_5();
      sub_1C88E3C58();
      if (!v0)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895BF04(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4E8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895BF84(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBB90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895BFF4()
{
  sub_1C8776818(&qword_1EC2BBB90, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.PaymentMethod);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895C074()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9780);
  __swift_project_value_buffer(v0, qword_1EC2B9780);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BFA930;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "Type_UNSPECIFIED";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Type_CHECKING";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "Type_SAVINGS";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "Type_BROKERAGE";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "Type_DEBIT";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "Type_CREDIT";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "Type_PREPAID";
  *(v20 + 1) = 12;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "Type_STORE";
  *(v22 + 1) = 10;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "Type_APPLE_PAY";
  *(v24 + 1) = 14;
  v24[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895C428()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x616D6563616C502ELL, 0xEA00000000006B72);

  qword_1EC2B9798 = v1;
  unk_1EC2B97A0 = v2;
  return result;
}

uint64_t sub_1C895C4F0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B97A8);
  __swift_project_value_buffer(v0, qword_1EC2B97A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "placemark";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895C720()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C895C888(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4E0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895C908(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBBA8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895C978()
{
  sub_1C8776818(&qword_1EC2BBBA8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Placemark);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895C9F8()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F737265502ELL, 0xE700000000000000);

  qword_1EC2B97C0 = v1;
  *algn_1EC2B97C8 = v2;
  return result;
}

uint64_t sub_1C895CABC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B97D0);
  __swift_project_value_buffer(v0, qword_1EC2B97D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "person";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895CCEC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void sub_1C895CDCC()
{
  OUTLINED_FUNCTION_189();
  v24 = v3;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_210();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v10);
  v12 = OUTLINED_FUNCTION_21(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v16 = *v0;
  v15 = v0[1];
  v17 = OUTLINED_FUNCTION_1029();
  if (sub_1C88E36B8(v17, v18) || (OUTLINED_FUNCTION_1029(), OUTLINED_FUNCTION_328(), sub_1C8BD4D6C(), !v1))
  {
    v19 = v24(0);
    OUTLINED_FUNCTION_994(v19);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v20)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_7:
      v23 = v0 + *(v5 + 20);
      OUTLINED_FUNCTION_548();
      sub_1C8BD49DC();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    OUTLINED_FUNCTION_173_3();
    sub_1C8776818(v21, v22);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
    if (!v1)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895D03C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895D0BC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBBC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895D12C()
{
  sub_1C8776818(&qword_1EC2BBBC0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.Person);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895D1AC()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656C69462ELL, 0xE500000000000000);

  qword_1EC2B97E8 = v1;
  unk_1EC2B97F0 = v2;
  return result;
}

uint64_t sub_1C895D26C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B97F8);
  __swift_project_value_buffer(v0, qword_1EC2B97F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "file";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895D49C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C895D604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4D0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895D684(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBBD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895D6F4()
{
  sub_1C8776818(&qword_1EC2BBBD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.File);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895D774()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](1886404910, 0xE400000000000000);

  qword_1EC2B9810 = v1;
  *algn_1EC2B9818 = v2;
  return result;
}

uint64_t sub_1C895D830()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9820);
  __swift_project_value_buffer(v0, qword_1EC2B9820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "displayRepresentation";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C895DA60()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void sub_1C895DB40()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  OUTLINED_FUNCTION_450();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v9);
  v11 = OUTLINED_FUNCTION_21(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_51_1();
  v14 = *v1;
  v15 = v1[1];
  OUTLINED_FUNCTION_88_0();
  if (!v16 || (OUTLINED_FUNCTION_564(), sub_1C8BD4DDC(), !v0))
  {
    v17 = (v4)(0);
    OUTLINED_FUNCTION_994(v17);
    OUTLINED_FUNCTION_915(v18);
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_377_0();
    if (v19)
    {
      sub_1C8778ED8(v2, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_7:
      v22 = v1 + *(v4 + 20);
      OUTLINED_FUNCTION_770();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_223_1();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_173_3();
    sub_1C8776818(v20, v21);
    OUTLINED_FUNCTION_434();
    OUTLINED_FUNCTION_445();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_54_5();
    sub_1C88E3C58();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895DD54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4C8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C895DDD4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBBF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C895DE44()
{
  sub_1C8776818(&qword_1EC2BBBF0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.App);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C895DEC4()
{
  if (qword_1EC2B5378 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B96A0;
  v2 = *algn_1EC2B96A8;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6D6F43657461442ELL, 0xEF73746E656E6F70);

  qword_1EC2B9838 = v1;
  unk_1EC2B9840 = v2;
  return result;
}

uint64_t sub_1C895DF94()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9848);
  __swift_project_value_buffer(v0, qword_1EC2B9848);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C8BFA920;
  v4 = v39 + v3;
  v5 = v39 + v3 + v1[14];
  *(v39 + v3) = 1;
  *v5 = "calendar";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1C8BD50FC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "timeZoneIdentifier";
  *(v9 + 8) = 18;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "era";
  *(v11 + 1) = 3;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "year";
  *(v13 + 1) = 4;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "month";
  *(v15 + 1) = 5;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "day";
  *(v17 + 1) = 3;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "hour";
  *(v19 + 1) = 4;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "minute";
  *(v21 + 1) = 6;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "second";
  *(v23 + 1) = 6;
  v23[16] = 2;
  v8();
  v24 = (v4 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "nanosecond";
  *(v25 + 1) = 10;
  v25[16] = 2;
  v8();
  v26 = (v4 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "weekday";
  *(v27 + 1) = 7;
  v27[16] = 2;
  v8();
  v28 = (v4 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "weekdayOrdinal";
  *(v29 + 1) = 14;
  v29[16] = 2;
  v8();
  v30 = (v4 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "quarter";
  *(v31 + 1) = 7;
  v31[16] = 2;
  v8();
  v32 = (v4 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "weekOfMonth";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v8();
  v34 = (v4 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "weekOfYear";
  *(v35 + 1) = 10;
  v35[16] = 2;
  v8();
  v36 = (v4 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "yearForWeekOfYear";
  *(v37 + 1) = 17;
  v37[16] = 2;
  v8();
  return sub_1C8BD510C();
}

uint64_t sub_1C895E518(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  OUTLINED_FUNCTION_218_2(v6);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_1C895E568()
{
  v1 = OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__calendar;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  *v3 = 0;
  v3[1] = 0;
  v4 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear;
  *v17 = 0;
  *(v17 + 8) = 1;
  return v0;
}

uint64_t sub_1C895E6E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB50, &qword_1C8BFAA78);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__calendar;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  __swift_storeEnumTagSinglePayload(v1 + v5, 1, 1, v6);
  v7 = (v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  *v7 = 0;
  v7[1] = 0;
  v8 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month;
  v55 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month;
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day;
  v56 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour;
  v57 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour;
  *v12 = 0;
  *(v12 + 8) = 1;
  v13 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute;
  v58 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute;
  *v13 = 0;
  *(v13 + 8) = 1;
  v14 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second;
  v59 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second;
  *v14 = 0;
  *(v14 + 8) = 1;
  v15 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond;
  v60 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday;
  v61 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal;
  v62 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal;
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter;
  v63 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth;
  v64 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth;
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear;
  v65 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear;
  *v20 = 0;
  *(v20 + 8) = 1;
  v21 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear;
  v66 = v1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear;
  *(v21 + 8) = 1;
  *v21 = 0;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v22 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  v25 = v7[1];
  *v7 = v24;
  v7[1] = v23;

  v26 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era);
  swift_beginAccess();
  v27 = *v26;
  LOBYTE(v26) = *(v26 + 8);
  swift_beginAccess();
  *v8 = v27;
  *(v8 + 8) = v26;
  v28 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year);
  swift_beginAccess();
  v29 = *v28;
  LOBYTE(v28) = *(v28 + 8);
  swift_beginAccess();
  *v9 = v29;
  *(v9 + 8) = v28;
  v30 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month);
  swift_beginAccess();
  v31 = *v30;
  LOBYTE(v30) = *(v30 + 8);
  swift_beginAccess();
  *v55 = v31;
  *(v55 + 8) = v30;
  v32 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day);
  swift_beginAccess();
  v33 = *v32;
  LOBYTE(v32) = *(v32 + 8);
  swift_beginAccess();
  *v56 = v33;
  *(v56 + 8) = v32;
  v34 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour);
  swift_beginAccess();
  v35 = *v34;
  LOBYTE(v34) = *(v34 + 8);
  swift_beginAccess();
  *v57 = v35;
  *(v57 + 8) = v34;
  v36 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute);
  swift_beginAccess();
  v37 = *v36;
  LOBYTE(v36) = *(v36 + 8);
  swift_beginAccess();
  *v58 = v37;
  *(v58 + 8) = v36;
  v38 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  swift_beginAccess();
  *v59 = v39;
  *(v59 + 8) = v38;
  v40 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  swift_beginAccess();
  *v60 = v41;
  *(v60 + 8) = v40;
  v42 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday);
  swift_beginAccess();
  v43 = *v42;
  LOBYTE(v42) = *(v42 + 8);
  swift_beginAccess();
  *v61 = v43;
  *(v61 + 8) = v42;
  v44 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal);
  swift_beginAccess();
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  swift_beginAccess();
  *v62 = v45;
  *(v62 + 8) = v44;
  v46 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter);
  swift_beginAccess();
  v47 = *v46;
  LOBYTE(v46) = *(v46 + 8);
  swift_beginAccess();
  *v63 = v47;
  *(v63 + 8) = v46;
  v48 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth);
  swift_beginAccess();
  v49 = *v48;
  LOBYTE(v48) = *(v48 + 8);
  swift_beginAccess();
  *v64 = v49;
  *(v64 + 8) = v48;
  v50 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear);
  swift_beginAccess();
  v51 = *v50;
  LOBYTE(v50) = *(v50 + 8);
  swift_beginAccess();
  *v65 = v51;
  *(v65 + 8) = v50;
  v52 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear);
  swift_beginAccess();
  v53 = *v52;
  LOBYTE(v52) = *(v52 + 8);

  swift_beginAccess();
  *v66 = v53;
  *(v66 + 8) = v52;
  return v1;
}

uint64_t sub_1C895EDA8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__calendar, &qword_1EC2BAB50, &qword_1C8BFAA78);
  v1 = *(v0 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier + 8);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v2, v3);
}

void sub_1C895EE98()
{
  OUTLINED_FUNCTION_189();
  v2 = v1;
  v16 = v3;
  v5 = v4;
  v6 = v0;
  v7 = OUTLINED_FUNCTION_644();
  v9 = *(v8(v7) + 20);
  v10 = *(v0 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v0 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = v5(0);
    OUTLINED_FUNCTION_218_2(v13);
    swift_allocObject();
    v14 = OUTLINED_FUNCTION_2();
    *(v6 + v9) = v16(v14);
  }

  v15 = OUTLINED_FUNCTION_69_3();
  v2(v15);
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C895EF34()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C895F1B4();
        break;
      case 2:
        sub_1C89AF0A0();
        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
        sub_1C898DE5C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C895F1B4()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  sub_1C8776818(&qword_1EC2BBC20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C895F2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v47 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB50, &qword_1C8BFAA78);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1C8778ED8(v8, &qword_1EC2BAB50, &qword_1C8BFAA78);
    v11 = v46;
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BBC20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar);
    v12 = v46;
    sub_1C8BD4E2C();
    v11 = v12;
    if (v12)
    {
      return sub_1C88E3C58();
    }

    sub_1C88E3C58();
  }

  v14 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  swift_beginAccess();
  if (!v14[1] || (v15 = *v14, v16 = v14[1], , sub_1C8BD4DDC(), result = , !v11))
  {
    v17 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era);
    swift_beginAccess();
    if ((v17[1] & 1) != 0 || (v18 = *v17, result = sub_1C8BD4D9C(), !v11))
    {
      v19 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year);
      swift_beginAccess();
      if ((v19[1] & 1) != 0 || (v20 = *v19, result = sub_1C8BD4D9C(), !v11))
      {
        v21 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month);
        swift_beginAccess();
        if ((v21[1] & 1) != 0 || (v22 = *v21, result = sub_1C8BD4D9C(), !v11))
        {
          v23 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day);
          swift_beginAccess();
          if ((v23[1] & 1) != 0 || (v24 = *v23, result = sub_1C8BD4D9C(), !v11))
          {
            v25 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour);
            swift_beginAccess();
            if ((v25[1] & 1) != 0 || (v26 = *v25, result = sub_1C8BD4D9C(), !v11))
            {
              v27 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute);
              swift_beginAccess();
              if ((v27[1] & 1) != 0 || (v28 = *v27, result = sub_1C8BD4D9C(), !v11))
              {
                v29 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second);
                swift_beginAccess();
                if ((v29[1] & 1) != 0 || (v30 = *v29, result = sub_1C8BD4D9C(), !v11))
                {
                  v31 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond);
                  swift_beginAccess();
                  if ((v31[1] & 1) != 0 || (v32 = *v31, result = sub_1C8BD4D9C(), !v11))
                  {
                    v33 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday);
                    swift_beginAccess();
                    if ((v33[1] & 1) != 0 || (v34 = *v33, result = sub_1C8BD4D9C(), !v11))
                    {
                      v35 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal);
                      swift_beginAccess();
                      if ((v35[1] & 1) != 0 || (v36 = *v35, result = sub_1C8BD4D9C(), !v11))
                      {
                        v37 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter);
                        swift_beginAccess();
                        if ((v37[1] & 1) != 0 || (v38 = *v37, result = sub_1C8BD4D9C(), !v11))
                        {
                          v39 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth);
                          swift_beginAccess();
                          if ((v39[1] & 1) != 0 || (v40 = *v39, result = sub_1C8BD4D9C(), !v11))
                          {
                            v41 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear);
                            swift_beginAccess();
                            if ((v41[1] & 1) != 0 || (v42 = *v41, result = sub_1C8BD4D9C(), !v11))
                            {
                              v43 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear);
                              result = swift_beginAccess();
                              if ((v43[1] & 1) == 0)
                              {
                                v44 = *v43;
                                return sub_1C8BD4D9C();
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

  return result;
}

uint64_t sub_1C895F948(uint64_t a1, uint64_t a2)
{
  v109 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v4 = *(*(v109 - 8) + 64);
  MEMORY[0x1EEE9AC00](v109);
  v107 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD888, &qword_1C8C0A740);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v107 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAB50, &qword_1C8BFAA78);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v108 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v107 - v15;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v17 = *(v7 + 56);
  sub_1C89CBE2C();
  v18 = v109;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v10, 1, v18) == 1)
  {

    sub_1C8778ED8(v16, &qword_1EC2BAB50, &qword_1C8BFAA78);
    v19 = a2;
    if (__swift_getEnumTagSinglePayload(&v10[v17], 1, v18) == 1)
    {
      sub_1C8778ED8(v10, &qword_1EC2BAB50, &qword_1C8BFAA78);
      goto LABEL_9;
    }

LABEL_6:
    sub_1C8778ED8(v10, &qword_1EC2BD888, &qword_1C8C0A740);
    goto LABEL_60;
  }

  v19 = a2;
  v20 = v108;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(&v10[v17], 1, v18) == 1)
  {

    sub_1C8778ED8(v16, &qword_1EC2BAB50, &qword_1C8BFAA78);
    sub_1C88E3C58();
    goto LABEL_6;
  }

  sub_1C88E3EC4();

  v21 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)(v20);
  sub_1C88E3C58();
  sub_1C8778ED8(v16, &qword_1EC2BAB50, &qword_1C8BFAA78);
  sub_1C88E3C58();
  sub_1C8778ED8(v10, &qword_1EC2BAB50, &qword_1C8BFAA78);
  if ((v21 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_9:
  v22 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  swift_beginAccess();
  v23 = *v22;
  v24 = v22[1];
  v25 = (v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__timeZoneIdentifier);
  swift_beginAccess();
  v26 = v25[1];
  if (v24)
  {
    if (!v26)
    {
      goto LABEL_60;
    }

    v27 = v23 == *v25 && v24 == v26;
    if (!v27 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if (v26)
  {
LABEL_60:

    return 0;
  }

  v28 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era);
  swift_beginAccess();
  v29 = *v28;
  v30 = *(v28 + 8);
  v31 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__era;
  swift_beginAccess();
  v32 = *(v31 + 8);
  if (v30)
  {
    v33 = a1;
    if ((*(v31 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v31 + 8))
    {
      goto LABEL_60;
    }

    v33 = a1;
    if (v29 != *v31)
    {
      goto LABEL_60;
    }
  }

  v34 = (v33 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year);
  swift_beginAccess();
  v35 = *v34;
  v36 = *(v34 + 8);
  v37 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__year;
  swift_beginAccess();
  v38 = *(v37 + 8);
  if (v36)
  {
    v39 = a1;
    if ((*(v37 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v37 + 8))
    {
      goto LABEL_60;
    }

    v39 = a1;
    if (v35 != *v37)
    {
      goto LABEL_60;
    }
  }

  v40 = (v39 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month);
  swift_beginAccess();
  v41 = *v40;
  v42 = *(v40 + 8);
  v43 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__month;
  swift_beginAccess();
  v44 = *(v43 + 8);
  if (v42)
  {
    v45 = a1;
    if ((*(v43 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v43 + 8))
    {
      goto LABEL_60;
    }

    v45 = a1;
    if (v41 != *v43)
    {
      goto LABEL_60;
    }
  }

  v46 = (v45 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day);
  swift_beginAccess();
  v47 = *v46;
  v48 = *(v46 + 8);
  v49 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__day;
  swift_beginAccess();
  v50 = *(v49 + 8);
  if (v48)
  {
    v51 = a1;
    if ((*(v49 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v49 + 8))
    {
      goto LABEL_60;
    }

    v51 = a1;
    if (v47 != *v49)
    {
      goto LABEL_60;
    }
  }

  v52 = (v51 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour);
  swift_beginAccess();
  v53 = *v52;
  v54 = *(v52 + 8);
  v55 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__hour;
  swift_beginAccess();
  v56 = *(v55 + 8);
  if (v54)
  {
    v57 = a1;
    if ((*(v55 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v55 + 8))
    {
      goto LABEL_60;
    }

    v57 = a1;
    if (v53 != *v55)
    {
      goto LABEL_60;
    }
  }

  v58 = (v57 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute);
  swift_beginAccess();
  v59 = *v58;
  v60 = *(v58 + 8);
  v61 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__minute;
  swift_beginAccess();
  v62 = *(v61 + 8);
  if (v60)
  {
    v63 = a1;
    if ((*(v61 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else
  {
    if (*(v61 + 8))
    {
      goto LABEL_60;
    }

    v63 = a1;
    if (v59 != *v61)
    {
      goto LABEL_60;
    }
  }

  v64 = (v63 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second);
  swift_beginAccess();
  v65 = *v64;
  v66 = *(v64 + 8);
  v67 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__second;
  swift_beginAccess();
  v68 = *(v67 + 8);
  if (v66)
  {
    if ((*(v67 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v67 + 8) & 1) != 0 || v65 != *v67)
  {
    goto LABEL_60;
  }

  v69 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond);
  swift_beginAccess();
  v70 = *v69;
  v71 = *(v69 + 8);
  v72 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__nanosecond;
  swift_beginAccess();
  v73 = *(v72 + 8);
  if (v71)
  {
    if ((*(v72 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v72 + 8) & 1) != 0 || v70 != *v72)
  {
    goto LABEL_60;
  }

  v74 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday);
  swift_beginAccess();
  v75 = *v74;
  v76 = *(v74 + 8);
  v77 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekday;
  swift_beginAccess();
  v78 = *(v77 + 8);
  if (v76)
  {
    if ((*(v77 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v77 + 8) & 1) != 0 || v75 != *v77)
  {
    goto LABEL_60;
  }

  v80 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal);
  swift_beginAccess();
  v81 = *v80;
  v82 = *(v80 + 8);
  v83 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekdayOrdinal;
  swift_beginAccess();
  v84 = *(v83 + 8);
  if (v82)
  {
    if ((*(v83 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v83 + 8) & 1) != 0 || v81 != *v83)
  {
    goto LABEL_60;
  }

  v85 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter);
  swift_beginAccess();
  v86 = *v85;
  v87 = *(v85 + 8);
  v88 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__quarter;
  swift_beginAccess();
  v89 = *(v88 + 8);
  if (v87)
  {
    if ((*(v88 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v88 + 8) & 1) != 0 || v86 != *v88)
  {
    goto LABEL_60;
  }

  v90 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth);
  swift_beginAccess();
  v91 = *v90;
  v92 = *(v90 + 8);
  v93 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfMonth;
  swift_beginAccess();
  v94 = *(v93 + 8);
  if (v92)
  {
    if ((*(v93 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v93 + 8) & 1) != 0 || v91 != *v93)
  {
    goto LABEL_60;
  }

  v95 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear);
  swift_beginAccess();
  v96 = *v95;
  v97 = *(v95 + 8);
  v98 = v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__weekOfYear;
  swift_beginAccess();
  v99 = *(v98 + 8);
  if (v97)
  {
    if ((*(v98 + 8) & 1) == 0)
    {
      goto LABEL_60;
    }
  }

  else if ((*(v98 + 8) & 1) != 0 || v96 != *v98)
  {
    goto LABEL_60;
  }

  v100 = (a1 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear);
  swift_beginAccess();
  v101 = *v100;
  v102 = *(v100 + 8);

  v103 = (v19 + OBJC_IVAR____TtCVVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue14PrimitiveValue14DateComponentsP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__yearForWeekOfYear);
  swift_beginAccess();
  v104 = *v103;
  v105 = *(v103 + 8);

  if (v102)
  {
    if (!v105)
    {
      return 0;
    }
  }

  else
  {
    if (v101 == v104)
    {
      v106 = v105;
    }

    else
    {
      v106 = 1;
    }

    if (v106)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C89603D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4C0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8960458(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC08, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89604C8()
{
  sub_1C8776818(&qword_1EC2BBC08, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8960548()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9868);
  __swift_project_value_buffer(v0, qword_1EC2B9868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C8BFA940;
  v4 = v40 + v3 + v1[14];
  *(v40 + v3) = 0;
  *v4 = "UNSPECIFIED";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v40 + v3 + v2 + v1[14];
  *(v40 + v3 + v2) = 1;
  *v8 = "GREGORIAN";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v40 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 2;
  *v10 = "BUDDHIST";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v7();
  v11 = (v40 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "CHINESE";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v7();
  v13 = (v40 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "COPTIC";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v40 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ETHIOPIC_AMETE_MIHRET";
  *(v16 + 1) = 21;
  v16[16] = 2;
  v7();
  v17 = (v40 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "ETHIOPIC_AMETE_ALEM";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v7();
  v19 = (v40 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "HEBREW";
  *(v20 + 1) = 6;
  v20[16] = 2;
  v7();
  v21 = (v40 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "ISO8601";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v7();
  v23 = (v40 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "INDIAN";
  *(v24 + 1) = 6;
  v24[16] = 2;
  v7();
  v25 = (v40 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "ISLAMIC";
  *(v26 + 1) = 7;
  v26[16] = 2;
  v7();
  v27 = (v40 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "ISLAMIC_CIVIL";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v40 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "JAPANESE";
  *(v30 + 1) = 8;
  v30[16] = 2;
  v7();
  v31 = (v40 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "PERSIAN";
  *(v32 + 1) = 7;
  v32[16] = 2;
  v7();
  v33 = (v40 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "REPUBLIC_OF_CHINA";
  *(v34 + 1) = 17;
  v34[16] = 2;
  v7();
  v35 = (v40 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "ISLAMIC_TABULAR";
  *(v36 + 1) = 15;
  v36[16] = 2;
  v7();
  v37 = (v40 + v3 + 16 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "ISLAMIC_UMM_AL_QURA";
  *(v38 + 1) = 19;
  v38[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t sub_1C8960AC4()
{
  if (qword_1EC2B5418 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9838;
  v2 = unk_1EC2B9840;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x61646E656C61432ELL, 0xE900000000000072);

  qword_1EC2B9880 = v1;
  *algn_1EC2B9888 = v2;
  return result;
}

uint64_t sub_1C8960B8C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9890);
  __swift_project_value_buffer(v0, qword_1EC2B9890);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "timeZoneIdentifier";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "localeIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "firstWeekday";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "minimumDaysInFirstWeek";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8960F20();
        break;
      case 2:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4BCC();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (!*v0 || (v3 = *(v2 + 8), OUTLINED_FUNCTION_940(), sub_1C89CC064(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
  {
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    OUTLINED_FUNCTION_88_0();
    if (!v7 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v1))
    {
      v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
      OUTLINED_FUNCTION_513(*(v8 + 36));
      if (!v10 || (v11 = *v9, OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v1))
      {
        if (!*(v2 + 32) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D9C(), !v1))
        {
          if (!*(v2 + 40) || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D9C(), !v1))
          {
            v12 = *(v8 + 32);
            return OUTLINED_FUNCTION_69();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_413(a1);
  v4 = *(v1 + 8);
  if (!sub_1C87E4678(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_646();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1C8BD529C() & 1) == 0)
  {
    return 0;
  }

  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar(0);
  v9 = *(v8 + 36);
  OUTLINED_FUNCTION_1();
  if (v12)
  {
    if (!v10)
    {
      return 0;
    }

    OUTLINED_FUNCTION_35(v11);
    v15 = v7 && v13 == v14;
    if (!v15 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (*(v2 + 32) == *(v1 + 32) && *(v2 + 40) == *(v1 + 40))
  {
    v16 = *(v8 + 32);
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_1_14();
    sub_1C8776818(v17, v18);
    return OUTLINED_FUNCTION_64_0() & 1;
  }

  return 0;
}

uint64_t sub_1C8961214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4B8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8961294(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8961304()
{
  sub_1C8776818(&qword_1EC2BBC20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.PrimitiveValue.DateComponents.Calendar);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8961384()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000011, 0x80000001C8C25340);

  qword_1EC2B98A8 = v1;
  unk_1EC2B98B0 = v2;
  return result;
}

uint64_t sub_1C896144C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B98B8);
  __swift_project_value_buffer(v0, qword_1EC2B98B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "caseValue";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89616CC()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8961780()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

void sub_1C8961860()
{
  OUTLINED_FUNCTION_189();
  v4 = v3;
  OUTLINED_FUNCTION_692();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = OUTLINED_FUNCTION_294_0(v9, v42);
  v44 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v10);
  v11 = OUTLINED_FUNCTION_21(v44);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_115_3(v14, v43);
  v15 = OUTLINED_FUNCTION_233();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v21 = OUTLINED_FUNCTION_217_1();
  v22 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v21);
  v23 = OUTLINED_FUNCTION_74_1(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = OUTLINED_FUNCTION_36_4();
  v27 = v4(v26);
  v28 = v27[6];
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v2);
  if (v29)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v30, v31);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_203();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_14;
    }
  }

  v32 = *v1;
  v33 = v1[1];
  OUTLINED_FUNCTION_88_0();
  if (v34)
  {
    OUTLINED_FUNCTION_302_0();
    sub_1C8BD4DDC();
    v35 = v45;
    if (v0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v35 = v45;
  }

  v36 = v27[7];
  sub_1C89CBE2C();
  v37 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_41_2(v37, v38);
  if (v29)
  {
    sub_1C8778ED8(v35, &qword_1EC2B60C8, &qword_1C8BFA9F0);
LABEL_13:
    v41 = v1 + v27[5];
    OUTLINED_FUNCTION_55();
    sub_1C8BD49DC();
    goto LABEL_14;
  }

  sub_1C88E3EC4();
  OUTLINED_FUNCTION_173_3();
  sub_1C8776818(v39, v40);
  OUTLINED_FUNCTION_930();
  OUTLINED_FUNCTION_1078();
  OUTLINED_FUNCTION_302_0();
  OUTLINED_FUNCTION_1031();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_54_5();
  sub_1C88E3C58();
  if (!v0)
  {
    goto LABEL_13;
  }

LABEL_14:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8961BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4B0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8961C5C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8961CCC()
{
  sub_1C8776818(&qword_1EC2BBC38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EnumerationValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8961D4C()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x56797469746E452ELL, 0xEC00000065756C61);

  qword_1EC2B98D0 = v1;
  *algn_1EC2B98D8 = v2;
  return result;
}

uint64_t sub_1C8961E18()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B98E0);
  __swift_project_value_buffer(v0, qword_1EC2B98E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "properties";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "displayRepresentation";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "hydratedAppEntity";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C89621A8();
        break;
      case 2:
        OUTLINED_FUNCTION_465();
        sub_1C8BD4C2C();
        break;
      case 3:
        OUTLINED_FUNCTION_8();
        sub_1C896225C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8962354();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8962408();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89621A8()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C896225C()
{
  sub_1C8BD49CC();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8776818(&qword_1EC2BB058, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  return sub_1C8BD4AEC();
}

uint64_t sub_1C8962354()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(0) + 32);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8962408()
{
  OUTLINED_FUNCTION_534_0();
  v2 = *(v1(0) + 36);
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  return v0();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1059(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60C8, &qword_1C8BFA9F0);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = OUTLINED_FUNCTION_405_0(v10);
  v51 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(v11);
  v12 = OUTLINED_FUNCTION_21(v51);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_115_3(v15, v49);
  v16 = OUTLINED_FUNCTION_890();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(v16, v17);
  OUTLINED_FUNCTION_80(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_217_1();
  v23 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v22);
  v24 = OUTLINED_FUNCTION_74_1(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = OUTLINED_FUNCTION_36_4();
  v52 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue(v27);
  v28 = v52[7];
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v1);
  if (v29)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_666();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v30, v31);
    OUTLINED_FUNCTION_435();
    OUTLINED_FUNCTION_328();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_17;
    }
  }

  v32 = v2;
  v33 = *v2;
  v34 = v2[1];
  OUTLINED_FUNCTION_88_0();
  if (!v35 || (OUTLINED_FUNCTION_328(), sub_1C8BD4DDC(), !v0))
  {
    if (*(v2[2] + 16))
    {
      sub_1C8BD49CC();
      v36 = OUTLINED_FUNCTION_1034();
      type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(v36);
      sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      sub_1C8776818(&qword_1EC2BB058, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
      OUTLINED_FUNCTION_328();
      sub_1C8BD4D0C();
      if (v0)
      {
        goto LABEL_17;
      }

      v32 = v2;
    }

    v37 = v52[8];
    sub_1C89CBE2C();
    v38 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_41_2(v38, v39);
    if (v29)
    {
      sub_1C8778ED8(v50, &qword_1EC2B60C8, &qword_1C8BFA9F0);
    }

    else
    {
      OUTLINED_FUNCTION_10_12();
      sub_1C88E3EC4();
      OUTLINED_FUNCTION_173_3();
      sub_1C8776818(v40, v41);
      OUTLINED_FUNCTION_930();
      OUTLINED_FUNCTION_1077();
      OUTLINED_FUNCTION_50_3();
      sub_1C8BD4E2C();
      OUTLINED_FUNCTION_54_5();
      sub_1C88E3C58();
      if (v0)
      {
        goto LABEL_17;
      }
    }

    v42 = (v32 + v52[9]);
    if (v42[1] >> 60 == 15)
    {
      goto LABEL_16;
    }

    v43 = *v42;
    v44 = OUTLINED_FUNCTION_97();
    sub_1C87A8FBC(v44, v45);
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_328();
    sub_1C8BD4D6C();
    v46 = OUTLINED_FUNCTION_97();
    sub_1C87A9A24(v46, v47);
    if (!v0)
    {
LABEL_16:
      v48 = v32 + v52[6];
      OUTLINED_FUNCTION_230();
      sub_1C8BD49DC();
    }
  }

LABEL_17:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C89628C4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8962944(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC50, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89629B4()
{
  sub_1C8776818(&qword_1EC2BBC50, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8962A34()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C25300);

  qword_1EC2B98F8 = v1;
  unk_1EC2B9900 = v2;
  return result;
}

uint64_t sub_1C8962AFC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9908);
  __swift_project_value_buffer(v0, qword_1EC2B9908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "values";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C9A50();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8962DB0();
    }
  }
}

uint64_t sub_1C8962DB0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_921(v2);
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v9);
  v11 = OUTLINED_FUNCTION_229_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211_3();
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue(0);
  OUTLINED_FUNCTION_329_0(v21);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v1);
  if (v14)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v15, v16);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_532();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_1050();
  if (!v17 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0), OUTLINED_FUNCTION_172_1(), sub_1C8776818(v18, v19), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_532(), sub_1C8BD4E0C(), !v0))
  {
    v20 = &qword_1C8BFA9C8 + *(v21 + 20);
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_1125();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8963098(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD4A0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8963118(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8963188()
{
  sub_1C8776818(&qword_1EC2BBC68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.CollectionValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8963208()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x615679726575512ELL, 0xEB0000000065756CLL);

  qword_1EC2B9920 = v1;
  *algn_1EC2B9928 = v2;
  return result;
}

uint64_t sub_1C89632D4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9930);
  __swift_project_value_buffer(v0, qword_1EC2B9930);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "query";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89634D4()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__query;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  result = __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  qword_1EC2B9948 = v3;
  return result;
}

uint64_t sub_1C8963558()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BABE0, &qword_1C8BFAA80);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__query;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v0;
}

uint64_t sub_1C896375C()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue10QueryValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__query, &qword_1EC2BABE0, &qword_1C8BFAA80);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v2 = OUTLINED_FUNCTION_252_3();
  Value = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue(v2);
  OUTLINED_FUNCTION_880(Value);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v7 = sub_1C8963558();
    OUTLINED_FUNCTION_951(v7);
  }

  v8 = OUTLINED_FUNCTION_9_4();
  sub_1C8982BCC(v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C8963880()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C896395C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  sub_1C8776818(&qword_1EC2BBF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8963A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BABE0, &qword_1C8BFAA80);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  v9 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    return sub_1C8778ED8(v8, &qword_1EC2BABE0, &qword_1C8BFAA80);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BBF70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C8963E20(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v48 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.Query(0);
  v2 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v44 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD8A0, &qword_1C8C0A758);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BABE0, &qword_1C8BFAA80);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v43 - v10;
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v43 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v43 - v22;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v24 = *(v15 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v11) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v18[v24], 1, v11) != 1)
    {
      sub_1C88E3EC4();

      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
      v26 = v25;
      sub_1C88E3C58();
      sub_1C8778ED8(v23, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      sub_1C88E3C58();
      sub_1C8778ED8(v18, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      if (v26)
      {
        goto LABEL_9;
      }

LABEL_7:

      return 0;
    }

    sub_1C8778ED8(v23, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    sub_1C88E3C58();
LABEL_6:
    sub_1C8778ED8(v18, &unk_1EC2BAAB8, &qword_1C8BFA9D0);
    goto LABEL_7;
  }

  sub_1C8778ED8(v23, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if (__swift_getEnumTagSinglePayload(&v18[v24], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v18, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
LABEL_9:
  swift_beginAccess();
  v27 = v49;
  sub_1C89CBE2C();
  swift_beginAccess();
  v28 = *(v47 + 48);
  v29 = v50;
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  v30 = v48;
  if (__swift_getEnumTagSinglePayload(v29, 1, v48) == 1)
  {

    sub_1C8778ED8(v27, &qword_1EC2BABE0, &qword_1C8BFAA80);
    if (__swift_getEnumTagSinglePayload(v29 + v28, 1, v30) == 1)
    {
      sub_1C8778ED8(v29, &qword_1EC2BABE0, &qword_1C8BFAA80);
      return 1;
    }

    goto LABEL_14;
  }

  v31 = v45;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v29 + v28, 1, v30) == 1)
  {

    sub_1C8778ED8(v27, &qword_1EC2BABE0, &qword_1C8BFAA80);
    sub_1C88E3C58();
LABEL_14:
    v32 = &qword_1EC2BD8A0;
    v33 = &qword_1C8C0A758;
    v34 = v29;
LABEL_15:
    sub_1C8778ED8(v34, v32, v33);
    return 0;
  }

  v36 = v44;
  sub_1C88E3EC4();
  v37 = *(v30 + 20);
  v38 = *&v31[v37];
  v39 = *&v36[v37];
  if (v38 != v39)
  {
    v40 = *&v31[v37];

    v41 = sub_1C898E1D8(v38, v39);

    if ((v41 & 1) == 0)
    {

      sub_1C88E3C58();
      sub_1C8778ED8(v27, &qword_1EC2BABE0, &qword_1C8BFAA80);
      sub_1C88E3C58();
      v34 = v29;
      v32 = &qword_1EC2BABE0;
      v33 = &qword_1C8BFAA80;
      goto LABEL_15;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v42 = sub_1C8BD517C();

  sub_1C88E3C58();
  sub_1C8778ED8(v27, &qword_1EC2BABE0, &qword_1C8BFAA80);
  sub_1C88E3C58();
  sub_1C8778ED8(v29, &qword_1EC2BABE0, &qword_1C8BFAA80);
  return (v42 & 1) != 0;
}

uint64_t sub_1C89646A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD498, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8964728(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8964798()
{
  sub_1C8776818(&qword_1EC2BBC80, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.QueryValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8964818()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000016, 0x80000001C8C252E0);

  qword_1EC2B9950 = v1;
  *algn_1EC2B9958 = v2;
  return result;
}

uint64_t sub_1C89648E0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9960);
  __swift_project_value_buffer(v0, qword_1EC2B9960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "displayRepresentation";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8964B60()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v6 = OUTLINED_FUNCTION_578();
        v0(v6);
        break;
      case 2:
        OUTLINED_FUNCTION_627();
        sub_1C8BD4C2C();
        break;
      case 1:
        v5 = OUTLINED_FUNCTION_578();
        v2(v5);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8964BF0()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8964CA4()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue(0) + 28);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation(0);
  sub_1C8776818(&qword_1EC2BAFC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.DisplayRepresentation);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8964E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD490, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8964E8C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBC98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8964EFC()
{
  sub_1C8776818(&qword_1EC2BBC98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.EntityIdentifierValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8964F7C()
{
  if (qword_1EC2B5350 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9648;
  v2 = qword_1EC2B9650;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x657272656665442ELL, 0xEE0065756C615664);

  qword_1EC2B9978 = v1;
  unk_1EC2B9980 = v2;
  return result;
}

uint64_t sub_1C896504C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9988);
  __swift_project_value_buffer(v0, qword_1EC2B9988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "expectedTypeInstance";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "storage";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89652C0()
{
  v1 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__expectedTypeInstance;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__storage;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  return v0;
}

uint64_t sub_1C896534C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC00, &qword_1C8BFAA88);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__expectedTypeInstance;
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__storage;
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v0;
}

uint64_t sub_1C8965638()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__type, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__expectedTypeInstance, &qword_1EC2B60D8, &qword_1C8BE6D88);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit10TypedValue13DeferredValueP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__storage, &qword_1EC2BAC00, &qword_1C8BFAA88);
  return v0;
}

uint64_t sub_1C8965730()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C8965998();
        break;
      case 2:
        sub_1C89658BC();
        break;
      case 1:
        sub_1C89657E0();
        break;
    }
  }

  return result;
}

uint64_t sub_1C89657E0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89658BC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8965998()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  sub_1C8776818(&qword_1EC2BBCC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C8965AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC00, &qword_1C8BFAA88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v26 = v25 - v6;
  v27 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  v7 = *(*(v27 - 8) + 64);
  MEMORY[0x1EEE9AC00](v27);
  v25[0] = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v25 - v11;
  v28 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v13 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v25[1] = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v25 - v17;
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v19) == 1)
  {
    sub_1C8778ED8(v18, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    v21 = v29;
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
    v22 = v29;
    sub_1C8BD4E2C();
    v21 = v22;
    result = sub_1C88E3C58();
    if (v22)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v28) == 1)
  {
    sub_1C8778ED8(v12, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v21)
    {
      return result;
    }
  }

  swift_beginAccess();
  v24 = v26;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v24, 1, v27) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2BAC00, &qword_1C8BFAA88);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BBCC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C896600C(uint64_t a1, uint64_t a2)
{
  v71 = a2;
  v62 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
  v2 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v59[1] = v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD8A8, &unk_1C8C0A760);
  v4 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v63 = v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC00, &qword_1C8BFAA88);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v59[2] = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v70 = v59 - v10;
  v67 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v11 = *(*(v67 - 8) + 64);
  MEMORY[0x1EEE9AC00](v67);
  v60 = v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  v13 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = v59 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v64 = v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = v59 - v19;
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v65 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BAAB8, &qword_1C8BFA9D0);
  v24 = v23 - 8;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v59 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = v59 - v31;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v33 = *(v24 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v27, 1, v20) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    if (__swift_getEnumTagSinglePayload(&v27[v33], 1, v20) == 1)
    {
      sub_1C8778ED8(v27, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &unk_1EC2BAAB8;
    v35 = &qword_1C8BFA9D0;
    v36 = v27;
LABEL_14:
    sub_1C8778ED8(v36, v34, v35);
    goto LABEL_15;
  }

  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(&v27[v33], 1, v20) == 1)
  {

    sub_1C8778ED8(v32, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
    sub_1C88E3C58();
    goto LABEL_6;
  }

  sub_1C88E3EC4();

  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier.== infix(_:_:)();
  v38 = v37;
  sub_1C88E3C58();
  sub_1C8778ED8(v32, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  sub_1C88E3C58();
  sub_1C8778ED8(v27, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  swift_beginAccess();
  v39 = v68;
  sub_1C89CBE2C();
  swift_beginAccess();
  v40 = *(v66 + 48);
  v41 = v69;
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  v42 = v67;
  if (__swift_getEnumTagSinglePayload(v41, 1, v67) != 1)
  {
    v45 = v64;
    sub_1C89CBE2C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41 + v40, 1, v42);
    v44 = v70;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3C58();
      goto LABEL_13;
    }

    v48 = v60;
    sub_1C88E3EC4();
    v49 = *(v42 + 20);
    v50 = *&v45[v49];
    if (v50 != *&v48[v49])
    {
      v51 = *&v45[v49];

      v52 = sub_1C896B338(v50);

      if ((v52 & 1) == 0)
      {
        sub_1C88E3C58();
        sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
        sub_1C88E3C58();
        v36 = v41;
        v34 = &qword_1EC2B60D8;
        v35 = &qword_1C8BE6D88;
        goto LABEL_14;
      }
    }

    sub_1C8BD49FC();
    sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
    v53 = sub_1C8BD517C();
    sub_1C88E3C58();
    sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C88E3C58();
    sub_1C8778ED8(v41, &qword_1EC2B60D8, &qword_1C8BE6D88);
    if (v53)
    {
      goto LABEL_21;
    }

LABEL_15:

    return 0;
  }

  sub_1C8778ED8(v39, &qword_1EC2B60D8, &qword_1C8BE6D88);
  v43 = __swift_getEnumTagSinglePayload(v41 + v40, 1, v42);
  v44 = v70;
  if (v43 != 1)
  {
LABEL_13:
    v34 = &qword_1EC2B60E0;
    v35 = &qword_1C8BE6D90;
    v36 = v41;
    goto LABEL_14;
  }

  sub_1C8778ED8(v41, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_21:
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v54 = *(v61 + 48);
  v55 = v63;
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  v56 = v62;
  if (__swift_getEnumTagSinglePayload(v55, 1, v62) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2BAC00, &qword_1C8BFAA88);
    if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v56) == 1)
    {
      sub_1C8778ED8(v55, &qword_1EC2BAC00, &qword_1C8BFAA88);
      return 1;
    }

    goto LABEL_26;
  }

  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v55 + v54, 1, v56) == 1)
  {

    sub_1C8778ED8(v44, &qword_1EC2BAC00, &qword_1C8BFAA88);
    sub_1C88E3C58();
LABEL_26:
    sub_1C8778ED8(v55, &qword_1EC2BD8A8, &unk_1C8C0A760);
    return 0;
  }

  sub_1C88E3EC4();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.== infix(_:_:)();
  v58 = v57;

  sub_1C88E3C58();
  sub_1C8778ED8(v44, &qword_1EC2BAC00, &qword_1C8BFAA88);
  sub_1C88E3C58();
  sub_1C8778ED8(v55, &qword_1EC2BAC00, &qword_1C8BFAA88);
  return (v58 & 1) != 0;
}

uint64_t sub_1C8966C1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD488, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8966C9C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBCB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8966D0C()
{
  sub_1C8776818(&qword_1EC2BBCB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8966D8C()
{
  if (qword_1EC2B54A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9978;
  v2 = unk_1EC2B9980;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x656761726F74532ELL, 0xE800000000000000);

  qword_1EC2B99A8 = v1;
  unk_1EC2B99B0 = v2;
  return result;
}

uint64_t sub_1C8966ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a3;
  v34 = a4;
  v35 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v30 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v27 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC10, &qword_1C8BFAA90);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v27 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD7A0, &qword_1C8C0A648);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v27 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v27 - v23;
  __swift_storeEnumTagSinglePayload(&v27 - v23, 1, 1, v6);
  v31 = a1;
  sub_1C89CBE2C();
  v29 = v15;
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    v28 = v22;
    sub_1C8778ED8(v14, &qword_1EC2BAC10, &qword_1C8BFAA90);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      return sub_1C8778ED8(v24, &qword_1EC2BD7A0, &qword_1C8C0A648);
    }

    v28 = v22;
    sub_1C88E3EC4();
    sub_1C8778ED8(v24, &qword_1EC2BD7A0, &qword_1C8C0A648);
    sub_1C88E3EC4();
    sub_1C88E3EC4();
    __swift_storeEnumTagSinglePayload(v24, 0, 1, v6);
  }

  sub_1C8776818(&qword_1EC2BB128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  sub_1C8BD4C7C();
  if (v4)
  {
    return sub_1C8778ED8(v24, &qword_1EC2BD7A0, &qword_1C8C0A648);
  }

  v24 = v28;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    return sub_1C8778ED8(v24, &qword_1EC2BD7A0, &qword_1C8C0A648);
  }

  sub_1C88E3EC4();
  v26 = v31;
  sub_1C8778ED8(v31, &qword_1EC2BAC10, &qword_1C8BFAA90);
  sub_1C88E3EC4();
  return __swift_storeEnumTagSinglePayload(v26, 0, 1, v29);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1060(v3, v4, v5);
  v6 = OUTLINED_FUNCTION_1022();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_17_4();
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage(v12);
  v14 = OUTLINED_FUNCTION_21(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_954();
  sub_1C89CBE2C();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(0);
  v17 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v17, v18, v19);
  if (v20)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAC10, &qword_1C8BFAA90);
LABEL_5:
    v21 = v0 + *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0) + 20);
    OUTLINED_FUNCTION_548();
    sub_1C8BD49DC();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_239_2();
  OUTLINED_FUNCTION_88();
  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage);
  OUTLINED_FUNCTION_240();
  OUTLINED_FUNCTION_50_3();
  OUTLINED_FUNCTION_504();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB130, &unk_1C8BFACF8);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_134_3(v16);
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC10, &qword_1C8BFAA90);
LABEL_12:
      v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage(0);
      OUTLINED_FUNCTION_716(v20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v21, v22);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_169();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB130, &unk_1C8BFACF8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  v19 = static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.OneOf_StorageKind.== infix(_:_:)();
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAC10, &qword_1C8BFAA90);
  if (v19)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8967764(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD480, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89677E4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBCC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8967854()
{
  sub_1C8776818(&qword_1EC2BBCC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89678D4()
{
  if (qword_1EC2B54B8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B99A8;
  v2 = unk_1EC2B99B0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C25280);

  qword_1EC2B99D0 = v1;
  *algn_1EC2B99D8 = v2;
  return result;
}

uint64_t sub_1C896799C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B99E0);
  __swift_project_value_buffer(v0, qword_1EC2B99E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyKey";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8967C64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD478, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8967CE4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8967D54()
{
  sub_1C8776818(&qword_1EC2BB128, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue.DeferredValue.Storage.ContentItemPropertyStorage);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8967E24()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9A08);
  __swift_project_value_buffer(v0, qword_1EC2B9A08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "collection";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "optionalVariant";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "union";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "restricted";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "deferred";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8968158(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void (*a4)(void), uint64_t *a5)
{
  v8 = a2(0);
  OUTLINED_FUNCTION_218_2(v8);
  v9 = swift_allocObject();
  v10 = *a3;
  a4(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *a5 = v9;
  return result;
}

void sub_1C89681C4()
{
  OUTLINED_FUNCTION_261();
  v1 = v0;
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_212();
  v10 = *v3;
  v1(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = *v3;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C89CBE2C();

  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C89682DC(void *a1, uint64_t *a2, uint64_t *a3)
{
  sub_1C8778ED8(v3 + *a1, a2, a3);
  v4 = *(*v3 + 48);
  v5 = *(*v3 + 52);

  return MEMORY[0x1EEE6BDC0](v3, v4, v5);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v2 = OUTLINED_FUNCTION_252_3();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(v2);
  OUTLINED_FUNCTION_880(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_61_6();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v7);
  }

  v8 = OUTLINED_FUNCTION_9_4();
  sub_1C89683C8(v8, v9, v10, v11);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89683C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C89684E0(a1, a2, a3, a4);
        break;
      case 2:
        sub_1C8968A04(a1, a2, a3, a4);
        break;
      case 3:
        sub_1C8968F2C(a1, a2, a3, a4);
        break;
      case 4:
        sub_1C8969454(a1, a2, a3, a4);
        break;
      case 5:
        sub_1C896997C(a1, a2, a3, a4);
        break;
      case 6:
        sub_1C8969EA4(a1, a2, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C89684E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAB0, &qword_1C8BFA9C8);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v25, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8968A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v25, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8968F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD780, &qword_1C8C0A628);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v25, &qword_1EC2BD780, &qword_1C8C0A628);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBD00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD780, &qword_1C8C0A628);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD780, &qword_1C8C0A628);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8969454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD788, &qword_1C8C0A630);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C8778ED8(v25, &qword_1EC2BD788, &qword_1C8C0A630);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBD18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD788, &qword_1C8C0A630);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD788, &qword_1C8C0A630);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C896997C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD790, &qword_1C8C0A638);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v25, &qword_1EC2BD790, &qword_1C8C0A638);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBD30, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD790, &qword_1C8C0A638);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD790, &qword_1C8C0A638);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C8969EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v38 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v31[0] = v31 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v32 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v31 - v15;
  v17 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD798, &qword_1C8C0A640);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v34 = v31 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v31 - v24;
  __swift_storeEnumTagSinglePayload(v31 - v24, 1, 1, v6);
  swift_beginAccess();
  v33 = a1;
  sub_1C89CBE2C();
  v35 = v17;
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C8778ED8(v25, &qword_1EC2BD798, &qword_1C8C0A640);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v25, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v27 = v25;
    return sub_1C8778ED8(v27, &qword_1EC2BD798, &qword_1C8C0A640);
  }

  v26 = v34;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    v27 = v26;
    return sub_1C8778ED8(v27, &qword_1EC2BD798, &qword_1C8C0A640);
  }

  sub_1C88E3EC4();
  v29 = v32;
  sub_1C88E3EC4();
  v30 = v35;
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v30);
  swift_beginAccess();
  sub_1C89CBD78();
  return swift_endAccess();
}

uint64_t sub_1C896A40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v14 - v10;
  swift_beginAccess();
  sub_1C89CBE2C();
  v12 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  result = __swift_getEnumTagSinglePayload(v11, 1, v12);
  if (result != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C896A834(a1, a2, a3, a4);
        break;
      case 2u:
        sub_1C896AA68(a1, a2, a3, a4);
        break;
      case 3u:
        sub_1C896AC9C(a1, a2, a3, a4);
        break;
      case 4u:
        sub_1C896AED0(a1, a2, a3, a4);
        break;
      case 5u:
        sub_1C896B104(a1, a2, a3, a4);
        break;
      default:
        sub_1C896A604(a1, a2, a3, a4);
        break;
    }

    return sub_1C88E3C58();
  }

  return result;
}

uint64_t sub_1C896A604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896A834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896AA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896AC9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896AED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD30, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896B104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60B0, &qword_1C8BE6D60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B60B0, &qword_1C8BE6D60);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void sub_1C896B338()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_644();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind(v2);
  v4 = OUTLINED_FUNCTION_40_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_207_0(v7);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A8, &qword_1C8BE6D58) - 8);
  v9 = *(*v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_112_0();
  v11 = OUTLINED_FUNCTION_890();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
  v14 = OUTLINED_FUNCTION_80(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_547();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v18 = v8[14];
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_790();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_65(v0);
  if (!v19)
  {
    OUTLINED_FUNCTION_1144();
    sub_1C89CBE2C();
    OUTLINED_FUNCTION_65(v0 + v18);
    if (!v19)
    {
      OUTLINED_FUNCTION_1158();
      OUTLINED_FUNCTION_254_0();
      static Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.OneOf_TypeInstanceKind.== infix(_:_:)();
      sub_1C88E3C58();
      v20 = OUTLINED_FUNCTION_300();
      sub_1C8778ED8(v20, v21, &qword_1C8BE6D60);
      OUTLINED_FUNCTION_268();
      sub_1C88E3C58();
      v22 = OUTLINED_FUNCTION_218();
      sub_1C8778ED8(v22, v23, &qword_1C8BE6D60);
      goto LABEL_10;
    }

    sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
    OUTLINED_FUNCTION_30_8();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B60A8, &qword_1C8BE6D58);
    goto LABEL_10;
  }

  sub_1C8778ED8(v1, &qword_1EC2B60B0, &qword_1C8BE6D60);
  OUTLINED_FUNCTION_65(v0 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v0, &qword_1EC2B60B0, &qword_1C8BE6D60);
LABEL_10:
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C896B64C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD470, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896B6CC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896B73C()
{
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896B7BC()
{
  if (qword_1EC2B54D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B99F8;
  v2 = qword_1EC2B9A00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x616E6F6974704F2ELL, 0xE90000000000006CLL);

  qword_1EC2B9A28 = v1;
  unk_1EC2B9A30 = v2;
  return result;
}

uint64_t sub_1C896B884()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9A38);
  __swift_project_value_buffer(v0, qword_1EC2B9A38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "defaultValue";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C896BA84()
{
  v0 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  v4 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstance8OptionalP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__value;
  v5 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v3 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstance8OptionalP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__defaultValue;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  result = __swift_storeEnumTagSinglePayload(v3 + v6, 1, 1, v7);
  qword_1EC2B9A50 = v3;
  return result;
}

uint64_t sub_1C896BB08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstance8OptionalP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__value;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit12TypeInstance8OptionalP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__defaultValue;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v0;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v2 = OUTLINED_FUNCTION_252_3();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional(v2);
  OUTLINED_FUNCTION_880(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_2();
    v7 = sub_1C896BB08();
    OUTLINED_FUNCTION_951(v7);
  }

  v8 = OUTLINED_FUNCTION_9_4();
  sub_1C8982BCC(v8, v9, v10, v11, v12, v13);
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C896BDC0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C896BE9C()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C896BFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a4;
  v20 = a2;
  v21 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v18 - v7;
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v9 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19);
  v18 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v18 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v19) == 1)
  {
    return sub_1C8778ED8(v8, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB0F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C896C360(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v56 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypedValue(0);
  v2 = *(*(v56 - 8) + 64);
  MEMORY[0x1EEE9AC00](v56);
  v52 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD880, &unk_1C8C0A730);
  v4 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC38, &qword_1C8BFAAB8);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v51 - v10;
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v51 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v23 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v51 - v24;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v26 = *(v15 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v18, 1, v11) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v18[v26], 1, v11) != 1)
    {
      v30 = v54;
      sub_1C88E3EC4();
      v31 = *(v11 + 20);
      v32 = *&v23[v31];
      v33 = *&v30[v31];

      if (v32 == v33 || (, , v34 = sub_1C896B338(v32), , , (v34 & 1) != 0))
      {
        sub_1C8BD49FC();
        sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
        v35 = sub_1C8BD517C();
        sub_1C88E3C58();
        sub_1C8778ED8(v25, &qword_1EC2B60D8, &qword_1C8BE6D88);
        sub_1C88E3C58();
        sub_1C8778ED8(v18, &qword_1EC2B60D8, &qword_1C8BE6D88);
        if (v35)
        {
          goto LABEL_12;
        }

LABEL_8:

        return 0;
      }

      sub_1C88E3C58();
      sub_1C8778ED8(v25, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3C58();
      v29 = v18;
      v27 = &qword_1EC2B60D8;
      v28 = &qword_1C8BE6D88;
LABEL_7:
      sub_1C8778ED8(v29, v27, v28);
      goto LABEL_8;
    }

    sub_1C8778ED8(v25, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C88E3C58();
LABEL_6:
    v27 = &qword_1EC2B60E0;
    v28 = &qword_1C8BE6D90;
    v29 = v18;
    goto LABEL_7;
  }

  sub_1C8778ED8(v25, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (__swift_getEnumTagSinglePayload(&v18[v26], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v18, &qword_1EC2B60D8, &qword_1C8BE6D88);
LABEL_12:
  swift_beginAccess();
  v36 = v57;
  sub_1C89CBE2C();
  swift_beginAccess();
  v37 = *(v55 + 48);
  v38 = v58;
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  v39 = v56;
  if (__swift_getEnumTagSinglePayload(v38, 1, v56) == 1)
  {

    sub_1C8778ED8(v36, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
    {
      sub_1C8778ED8(v38, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      return 1;
    }

    goto LABEL_17;
  }

  v40 = v53;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v38 + v37, 1, v39) == 1)
  {

    sub_1C8778ED8(v36, &qword_1EC2BAC38, &qword_1C8BFAAB8);
    sub_1C88E3C58();
LABEL_17:
    v41 = &qword_1EC2BD880;
    v42 = &unk_1C8C0A730;
    v43 = v38;
LABEL_18:
    sub_1C8778ED8(v43, v41, v42);
    return 0;
  }

  v45 = v52;
  sub_1C88E3EC4();
  v46 = *(v39 + 20);
  if (*&v40[v46] != *&v45[v46])
  {
    v47 = *&v40[v46];

    sub_1C8952AB8();
    v49 = v48;

    if ((v49 & 1) == 0)
    {

      sub_1C88E3C58();
      sub_1C8778ED8(v36, &qword_1EC2BAC38, &qword_1C8BFAAB8);
      sub_1C88E3C58();
      v43 = v38;
      v41 = &qword_1EC2BAC38;
      v42 = &qword_1C8BFAAB8;
      goto LABEL_18;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
  v50 = sub_1C8BD517C();

  sub_1C88E3C58();
  sub_1C8778ED8(v36, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  sub_1C88E3C58();
  sub_1C8778ED8(v38, &qword_1EC2BAC38, &qword_1C8BFAAB8);
  return (v50 & 1) != 0;
}

uint64_t sub_1C896CCE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD468, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896CD60(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896CDD0()
{
  sub_1C8776818(&qword_1EC2BBD00, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Optional);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896CE50()
{
  if (qword_1EC2B54D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B99F8;
  v2 = qword_1EC2B9A00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6E6F696E552ELL, 0xE600000000000000);

  qword_1EC2B9A58 = v1;
  unk_1EC2B9A60 = v2;
  return result;
}

void sub_1C896CFC0()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_567();
  while (1)
  {
    OUTLINED_FUNCTION_88();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 1)
    {
      OUTLINED_FUNCTION_522();
      OUTLINED_FUNCTION_1031();
      sub_1C89C9A50();
    }
  }

  OUTLINED_FUNCTION_1066();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_178_1();
  OUTLINED_FUNCTION_50_2();
  OUTLINED_FUNCTION_911();
  if (!v1 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0), OUTLINED_FUNCTION_337_0(), sub_1C8776818(v2, v3), OUTLINED_FUNCTION_551(), OUTLINED_FUNCTION_9_1(), sub_1C8BD4E0C(), !v0))
  {
    v4 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C896D148(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD460, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896D1C8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896D238()
{
  sub_1C8776818(&qword_1EC2BBD18, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Union);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896D2B8()
{
  if (qword_1EC2B54D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B99F8;
  v2 = qword_1EC2B9A00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x636972747365522ELL, 0xEB00000000646574);

  qword_1EC2B9A80 = v1;
  *algn_1EC2B9A88 = v2;
  return result;
}

uint64_t sub_1C896D384()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9A90);
  __swift_project_value_buffer(v0, qword_1EC2B9A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "identifier";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "context";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      OUTLINED_FUNCTION_8();
      sub_1C89C9A50();
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C896D638();
    }
  }
}

uint64_t sub_1C896D638()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(0);
  sub_1C8776818(&qword_1EC2B76D8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_921(v2);
  v3 = OUTLINED_FUNCTION_253();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_210();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeIdentifier(v9);
  v11 = OUTLINED_FUNCTION_229_2(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211_3();
  v19 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted(0);
  OUTLINED_FUNCTION_329_0(v19);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_72_2(v1);
  if (v14)
  {
    sub_1C8778ED8(v1, &qword_1EC2BAAB0, &qword_1C8BFA9C8);
  }

  else
  {
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_101_3();
    sub_1C8776818(v15, v16);
    OUTLINED_FUNCTION_225_1();
    OUTLINED_FUNCTION_532();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_41_8();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_1050();
  if (!v17 || (type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(0), sub_1C8776818(&qword_1EC2BB160, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext), OUTLINED_FUNCTION_574(), OUTLINED_FUNCTION_532(), sub_1C8BD4E0C(), !v0))
  {
    v18 = &qword_1C8BFA9C8 + *(v19 + 20);
    OUTLINED_FUNCTION_80_1();
    OUTLINED_FUNCTION_1125();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C896D930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD458, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896D9B0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD30, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896DA20()
{
  sub_1C8776818(&qword_1EC2BBD30, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Restricted);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896DAA0()
{
  if (qword_1EC2B54D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B99F8;
  v2 = qword_1EC2B9A00;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x657272656665442ELL, 0xE900000000000064);

  qword_1EC2B9AA8 = v1;
  unk_1EC2B9AB0 = v2;
  return result;
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_178_1();
  v2 = OUTLINED_FUNCTION_252_3();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred(v2);
  OUTLINED_FUNCTION_880(v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v1);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred._StorageClass(0);
    OUTLINED_FUNCTION_218_2(v6);
    swift_allocObject();
    OUTLINED_FUNCTION_522_0();
    sub_1C89681C4();
    OUTLINED_FUNCTION_951(v7);
  }

  OUTLINED_FUNCTION_9_4();
  sub_1C896DCA0();
  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C896DCA0()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C896DD08();
    }
  }

  return result;
}

uint64_t sub_1C896DD08()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C896DE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[5] = a4;
  v11[0] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v11 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_1C8778ED8(v7, &qword_1EC2B60D8, &qword_1C8BE6D88);
  }

  sub_1C88E3EC4();
  sub_1C8776818(&qword_1EC2BB060, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance);
  sub_1C8BD4E2C();
  return sub_1C88E3C58();
}

BOOL sub_1C896E018(uint64_t a1, uint64_t a2)
{
  v28[1] = a2;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v28[0] = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60E0, &qword_1C8BE6D90);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60D8, &qword_1C8BE6D88);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v28 - v15;
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  v17 = *(v6 + 56);
  sub_1C89CBE2C();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v9, 1, v2) != 1)
  {
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v2) != 1)
    {
      v22 = v28[0];
      sub_1C88E3EC4();
      v23 = *(v2 + 20);
      v24 = *&v14[v23];
      if (v24 == *(v22 + v23) || (v25 = *&v14[v23], , , v26 = sub_1C896B338(v24), , , (v26 & 1) != 0))
      {
        sub_1C8BD49FC();
        sub_1C8776818(&qword_1EC2B2F70, MEMORY[0x1E69AAC08]);
        v27 = sub_1C8BD517C();
        sub_1C88E3C58();
        sub_1C8778ED8(v16, &qword_1EC2B60D8, &qword_1C8BE6D88);
        sub_1C88E3C58();
        sub_1C8778ED8(v9, &qword_1EC2B60D8, &qword_1C8BE6D88);
        return (v27 & 1) != 0;
      }

      sub_1C88E3C58();
      sub_1C8778ED8(v16, &qword_1EC2B60D8, &qword_1C8BE6D88);
      sub_1C88E3C58();
      v20 = v9;
      v18 = &qword_1EC2B60D8;
      v19 = &qword_1C8BE6D88;
LABEL_7:
      sub_1C8778ED8(v20, v18, v19);
      return 0;
    }

    sub_1C8778ED8(v16, &qword_1EC2B60D8, &qword_1C8BE6D88);
    sub_1C88E3C58();
LABEL_6:
    v18 = &qword_1EC2B60E0;
    v19 = &qword_1C8BE6D90;
    v20 = v9;
    goto LABEL_7;
  }

  sub_1C8778ED8(v16, &qword_1EC2B60D8, &qword_1C8BE6D88);
  if (__swift_getEnumTagSinglePayload(&v9[v17], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_1C8778ED8(v9, &qword_1EC2B60D8, &qword_1C8BE6D88);
  return 1;
}

uint64_t sub_1C896E4E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD450, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C896E568(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C896E5D8()
{
  sub_1C8776818(&qword_1EC2BBD48, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeInstance.Deferred);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C896E658()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C25200);
  qword_1EC2B9AD8 = 0xD00000000000002BLL;
  unk_1EC2B9AE0 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C896E6EC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9AE8);
  __swift_project_value_buffer(v0, qword_1EC2B9AE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "inSet";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "representableAs";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "personReachableAs";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dateExpressibleAs";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "textTypedWith";
  *(v16 + 1) = 13;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C896EA54(v3, v4, v5, v6);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_33_4();
        sub_1C896EF0C(v13, v14, v15, v16);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_33_4();
        sub_1C896F3C8(v11);
        break;
      case 4:
        v12 = OUTLINED_FUNCTION_33_4();
        sub_1C896F574(v12);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C896F720(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C896EA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD768, &qword_1C8C0A610);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2BD768, &qword_1C8C0A610);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD768, &qword_1C8C0A610);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD768, &qword_1C8C0A610);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C896EF0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD770, &qword_1C8C0A618);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD770, &qword_1C8C0A618);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD770, &qword_1C8C0A618);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD770, &qword_1C8C0A618);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C896F3C8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v14 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v12 = 0;
    v13 = 256;
    sub_1C89DF358();
    result = sub_1C8BD4B4C();
    if (!v1 && (v13 & 0x100) == 0)
    {
      v9 = v13;
      v10 = v12;
      v11 = v14;
      sub_1C8778ED8(v14, &qword_1EC2B6098, &qword_1C8BFAAC0);
      *v11 = v10;
      *(v11 + 8) = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C896F574(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v14 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v12 = 0;
    v13 = 256;
    sub_1C89DF304();
    result = sub_1C8BD4B4C();
    if (!v1 && (v13 & 0x100) == 0)
    {
      v9 = v13;
      v10 = v12;
      v11 = v14;
      sub_1C8778ED8(v14, &qword_1EC2B6098, &qword_1C8BFAAC0);
      *v11 = v10;
      *(v11 + 8) = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C896F720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD778, &qword_1C8C0A620);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD778, &qword_1C8C0A620);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD778, &qword_1C8C0A620);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD778, &qword_1C8C0A620);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2B6098, &qword_1C8BFAAC0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_233();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_235_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (!v8)
  {
    OUTLINED_FUNCTION_104_0();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v19 = OUTLINED_FUNCTION_9_4();
        sub_1C896FF04(v19, v20, v21, v22);
        goto LABEL_12;
      case 2:
        OUTLINED_FUNCTION_9_4();
        sub_1C8970118();
        goto LABEL_9;
      case 3:
        OUTLINED_FUNCTION_9_4();
        sub_1C897027C();
LABEL_9:
        if (!v0)
        {
          break;
        }

        goto LABEL_13;
      case 4:
        v15 = OUTLINED_FUNCTION_9_4();
        sub_1C89703E0(v15, v16, v17, v18);
        goto LABEL_12;
      default:
        v11 = OUTLINED_FUNCTION_9_4();
        sub_1C896FCF4(v11, v12, v13, v14);
LABEL_12:
        OUTLINED_FUNCTION_249_1();
        sub_1C88E3C58();
        if (v0)
        {
          goto LABEL_13;
        }

        break;
    }
  }

  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(0);
  OUTLINED_FUNCTION_113_1(v9);
LABEL_13:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C896FCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C896FF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8970118()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1C89DF358();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C897027C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v7 - v2;
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = v3[8];
      v7 = *v3;
      v8 = v5;
      sub_1C89DF304();
      return sub_1C8BD4D4C();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89703E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6098, &qword_1C8BFAAC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2B6098, &qword_1C8BFAAC0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B60A0, &qword_1C8BE6D50);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_134_3(v16);
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext(0);
      OUTLINED_FUNCTION_716(v21);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_249_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2B60A0, &qword_1C8BE6D50);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.OneOf_RestrictionContextKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2B6098, &qword_1C8BFAAC0);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8970874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD448, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89708F4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB160, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8970964()
{
  sub_1C8776818(&qword_1EC2BB160, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89709E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B00);
  __swift_project_value_buffer(v0, qword_1EC2B9B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BEB0F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "PersonReachableAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "PersonReachableAs_CONTACT";
  *(v10 + 8) = 25;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PersonReachableAs_PHONE";
  *(v12 + 1) = 23;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "PersonReachableAs_EMAIL";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "PersonReachableAs_EMAILORPHONE";
  *(v16 + 1) = 30;
  v16[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8970C9C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B18);
  __swift_project_value_buffer(v0, qword_1EC2B9B18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DateExpressibleAs_UNSPECIFIED";
  *(v6 + 8) = 29;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DateExpressibleAs_DATE";
  *(v10 + 8) = 22;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "DateExpressibleAs_TIME";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "DateExpressibleAs_DATE_AND_TIME";
  *(v14 + 1) = 31;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8970F14()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x7465536E492ELL, 0xE600000000000000);

  qword_1EC2B9B30 = v1;
  *algn_1EC2B9B38 = v2;
  return result;
}

uint64_t sub_1C8970FD4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B40);
  __swift_project_value_buffer(v0, qword_1EC2B9B40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "definition";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "templates";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8971214()
{
  OUTLINED_FUNCTION_529_0();
  while (1)
  {
    OUTLINED_FUNCTION_516();
    result = sub_1C8BD4AFC();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v6 = OUTLINED_FUNCTION_578();
      v0(v6);
    }

    else if (result == 1)
    {
      v5 = OUTLINED_FUNCTION_578();
      v2(v5);
    }
  }

  return result;
}

uint64_t sub_1C8971288()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0) + 20);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C897133C()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(0);
  sub_1C8776818(&qword_1EC2BAFD8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_1059(v3, v4, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAAC0, &qword_1C8BFA9D8);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_17_4();
  v38 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Query.PredicateTemplates(v10);
  v11 = OUTLINED_FUNCTION_21(v38);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_115_3(v14, v37);
  v15 = OUTLINED_FUNCTION_315();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  OUTLINED_FUNCTION_80(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_278_1();
  v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(0);
  v22 = OUTLINED_FUNCTION_49_3(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = OUTLINED_FUNCTION_36_4();
  v26 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet(v25);
  v27 = *(v26 + 20);
  OUTLINED_FUNCTION_615();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_76(v28, v29, v30);
  if (v31)
  {
    sub_1C8778ED8(v0, &qword_1EC2BAC58, &qword_1C8BFAAD0);
  }

  else
  {
    OUTLINED_FUNCTION_102_3();
    OUTLINED_FUNCTION_251_0();
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);
    OUTLINED_FUNCTION_768();
    OUTLINED_FUNCTION_248_2();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_521();
    sub_1C88E3C58();
    if (v1)
    {
      goto LABEL_10;
    }
  }

  v32 = *(v26 + 24);
  sub_1C89CBE2C();
  v33 = OUTLINED_FUNCTION_158_1();
  OUTLINED_FUNCTION_76(v33, v34, v38);
  if (v31)
  {
    sub_1C8778ED8(v2, &qword_1EC2BAAC0, &qword_1C8BFA9D8);
LABEL_9:
    OUTLINED_FUNCTION_611();
    sub_1C8BD49DC();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_56_5();
  sub_1C88E3EC4();
  OUTLINED_FUNCTION_843();
  sub_1C8776818(v35, v36);
  OUTLINED_FUNCTION_298_0();
  OUTLINED_FUNCTION_248_2();
  sub_1C8BD4E2C();
  OUTLINED_FUNCTION_242_2();
  sub_1C88E3C58();
  if (!v1)
  {
    goto LABEL_9;
  }

LABEL_10:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8971724(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD440, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89717A4(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8971814()
{
  sub_1C8776818(&qword_1EC2BBD70, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8971894()
{
  if (qword_1EC2B5560 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B30;
  v2 = *algn_1EC2B9B38;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x655365756C61562ELL, 0xE900000000000074);

  qword_1EC2B9B58 = v1;
  unk_1EC2B9B60 = v2;
  return result;
}

uint64_t sub_1C897195C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B68);
  __swift_project_value_buffer(v0, qword_1EC2B9B68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dynamicEnumeration";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "contentPropertyPossibleValues";
  *(v12 + 1) = 29;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "linkQuery";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "standaloneLinkQuery";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "linkQueryOnParameter";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_8();
        sub_1C8971D40();
        break;
      case 2:
        v12 = OUTLINED_FUNCTION_33_4();
        sub_1C8971D90(v12, v13, v14, v15);
        break;
      case 3:
        v4 = OUTLINED_FUNCTION_33_4();
        sub_1C8972248(v4, v5, v6, v7);
        break;
      case 4:
        v8 = OUTLINED_FUNCTION_33_4();
        sub_1C8972704(v8, v9, v10, v11);
        break;
      case 5:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8972BC0(v3);
        break;
      case 6:
        v16 = OUTLINED_FUNCTION_33_4();
        sub_1C8972D54(v16, v17, v18, v19);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8971D40()
{
  OUTLINED_FUNCTION_534_0();
  v2 = v1(0);
  OUTLINED_FUNCTION_329_0(v2);
  OUTLINED_FUNCTION_1076();
  OUTLINED_FUNCTION_55();
  return v0();
}

uint64_t sub_1C8971D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD750, &qword_1C8C0A5F8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3C58();
    }

    else
    {
      sub_1C8778ED8(v23, &qword_1EC2BD750, &qword_1C8C0A5F8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }
  }

  sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD750, &qword_1C8C0A5F8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD750, &qword_1C8C0A5F8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8972248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD758, &qword_1C8C0A600);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD758, &qword_1C8C0A600);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD758, &qword_1C8C0A600);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD758, &qword_1C8C0A600);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8972704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD760, &qword_1C8C0A608);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD760, &qword_1C8C0A608);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8972BC0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v14 = a1;
  sub_1C89CBE2C();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  LODWORD(a1) = __swift_getEnumTagSinglePayload(v6, 1, v7);
  sub_1C8778ED8(v6, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  if (a1 == 1 || (result = sub_1C8BD4B0C(), !v1))
  {
    v12 = 0;
    v13 = 0;
    result = sub_1C8BD4C1C();
    v9 = v13;
    if (v1)
    {
    }

    else if (v13)
    {
      v10 = v12;
      v11 = v14;
      sub_1C8778ED8(v14, &qword_1EC2BAC68, &qword_1C8BFAAE0);
      *v11 = v10;
      v11[1] = v9;
      swift_storeEnumTagMultiPayload();
      return __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
    }
  }

  return result;
}

uint64_t sub_1C8972D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD760, &qword_1C8C0A608);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD760, &qword_1C8C0A608);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD760, &qword_1C8C0A608);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_50_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_80(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_17_4();
  v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v8);
  OUTLINED_FUNCTION_1148(v9);
  v11 = (v0 + v10);
  if (!v11[1] || (v12 = *v11, OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v1))
  {
    sub_1C89CBE2C();
    type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
    OUTLINED_FUNCTION_19(v3);
    if (!v13)
    {
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89735A0(v26, v27, v28, v29);
          goto LABEL_11;
        case 2u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89737B4(v22, v23, v24, v25);
          goto LABEL_11;
        case 3u:
          OUTLINED_FUNCTION_189_2();
          sub_1C88E3C58();
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C89739C8();
          if (!v1)
          {
            break;
          }

          goto LABEL_13;
        case 4u:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C8973B1C(v18, v19, v20, v21);
          goto LABEL_11;
        default:
          OUTLINED_FUNCTION_230();
          OUTLINED_FUNCTION_285_1();
          sub_1C8973390(v14, v15, v16, v17);
LABEL_11:
          OUTLINED_FUNCTION_189_2();
          sub_1C88E3C58();
          if (!v1)
          {
            break;
          }

          goto LABEL_13;
      }
    }

    v30 = *(v2 + 20);
    OUTLINED_FUNCTION_69();
  }

LABEL_13:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8973390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89735A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89737B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C89739C8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8973B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind(v2);
  v4 = OUTLINED_FUNCTION_21(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_18_4();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC68, &qword_1C8BFAAE0);
  OUTLINED_FUNCTION_80(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_211();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB190, &qword_1C8BFAD08);
  OUTLINED_FUNCTION_229_2(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v15 = OUTLINED_FUNCTION_74();
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet(v15);
  v17 = *(v16 + 24);
  OUTLINED_FUNCTION_1();
  if (v20)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_35(v19);
    v23 = v23 && v21 == v22;
    if (!v23 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v18)
  {
    goto LABEL_19;
  }

  v24 = *(v1 + 48);
  OUTLINED_FUNCTION_307();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_196_1();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v0);
  if (v23)
  {
    OUTLINED_FUNCTION_17_6(v0 + v24);
    if (v23)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
LABEL_22:
      v29 = *(v16 + 20);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v30, v31);
      v26 = OUTLINED_FUNCTION_64_0();
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_268();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_17_6(v0 + v24);
  if (v25)
  {
    OUTLINED_FUNCTION_189_2();
    sub_1C88E3C58();
LABEL_18:
    sub_1C8778ED8(v0, &qword_1EC2BB190, &qword_1C8BFAD08);
    goto LABEL_19;
  }

  OUTLINED_FUNCTION_1107();
  OUTLINED_FUNCTION_100();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.OneOf_ValueSetKind.== infix(_:_:)();
  v28 = v27;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_229();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAC68, &qword_1C8BFAAE0);
  if (v28)
  {
    goto LABEL_22;
  }

LABEL_19:
  v26 = 0;
LABEL_20:
  OUTLINED_FUNCTION_157(v26);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8974020(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD438, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89740A0(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8974110()
{
  sub_1C8776818(&qword_1EC2BB180, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8974190()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000013, 0x80000001C8C24FC0);

  qword_1EC2B9B80 = v1;
  *algn_1EC2B9B88 = v2;
  return result;
}

uint64_t sub_1C8974258()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9B90);
  __swift_project_value_buffer(v0, qword_1EC2B9B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "toolIdentifier";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "parameterKey";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void sub_1C8974480()
{
  OUTLINED_FUNCTION_1065();
  v3 = v2;
  OUTLINED_FUNCTION_60_4();
  if (!v4 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
  {
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    OUTLINED_FUNCTION_88_0();
    if (!v7 || (OUTLINED_FUNCTION_210_1(), sub_1C8BD4DDC(), !v0))
    {
      v8 = *(v3(0) + 24);
      OUTLINED_FUNCTION_69();
    }
  }

  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C897457C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD430, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89745FC(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C897466C()
{
  sub_1C8776818(&qword_1EC2BBD98, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.DynamicEnumeration);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C89746EC()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001ELL, 0x80000001C8C24F90);

  qword_1EC2B9BA8 = v1;
  unk_1EC2B9BB0 = v2;
  return result;
}

uint64_t sub_1C89747B4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9BB8);
  __swift_project_value_buffer(v0, qword_1EC2B9BB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "contentItemClass";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "propertyName";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_465();
      sub_1C8BD4C2C();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_8();
      sub_1C8974A18();
    }
  }

  return result;
}

uint64_t sub_1C8974A18()
{
  v0 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0) + 24);
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
  return sub_1C8BD4C7C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_189();
  OUTLINED_FUNCTION_692();
  v4 = OUTLINED_FUNCTION_253();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_210();
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(v10);
  v12 = OUTLINED_FUNCTION_74_1(v11);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_211_3();
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues(0);
  OUTLINED_FUNCTION_1148(v15);
  OUTLINED_FUNCTION_915(v16);
  OUTLINED_FUNCTION_613();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_19(v3);
  if (v17)
  {
    sub_1C8778ED8(v3, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  }

  else
  {
    OUTLINED_FUNCTION_29_6();
    OUTLINED_FUNCTION_455();
    sub_1C88E3EC4();
    OUTLINED_FUNCTION_829();
    sub_1C8776818(v18, v19);
    OUTLINED_FUNCTION_225_1();
    sub_1C8BD4E2C();
    OUTLINED_FUNCTION_188_1();
    sub_1C88E3C58();
    if (v0)
    {
      goto LABEL_8;
    }
  }

  v20 = *v1;
  v21 = v1[1];
  OUTLINED_FUNCTION_88_0();
  if (!v22 || (sub_1C8BD4DDC(), !v0))
  {
    v23 = v1 + *(v2 + 20);
    OUTLINED_FUNCTION_301_1();
    sub_1C8BD49DC();
  }

LABEL_8:
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_190();
}

uint64_t sub_1C8974CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD428, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8974D78(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8974DE8()
{
  sub_1C8776818(&qword_1EC2BBDB0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.ContentPropertyPossibleValues);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8974E68()
{
  if (qword_1EC2B5570 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9B58;
  v2 = unk_1EC2B9B60;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x6575516B6E694C2ELL, 0xEA00000000007972);

  qword_1EC2B9BD0 = v1;
  *algn_1EC2B9BD8 = v2;
  return result;
}

uint64_t sub_1C8974F30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9BE0);
  __swift_project_value_buffer(v0, qword_1EC2B9BE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 4;
  *v6 = "parameterKey";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 5;
  *v10 = "queryIdentifier";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 6;
  *v12 = "actionIdentifier";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 6 || result == 5 || result == 4)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_60_4();
  if (!v2 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
  {
    v4 = v1[2];
    v5 = v1[3];
    OUTLINED_FUNCTION_88_0();
    if (!v6 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
    {
      v7 = v1[4];
      v8 = v1[5];
      OUTLINED_FUNCTION_88_0();
      if (!v9 || (OUTLINED_FUNCTION_210_1(), result = sub_1C8BD4DDC(), !v0))
      {
        v10 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery(0) + 28);
        return OUTLINED_FUNCTION_69();
      }
    }
  }

  return result;
}

uint64_t sub_1C897530C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD420, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C897538C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89753FC()
{
  sub_1C8776818(&qword_1EC2BBDC8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.InSet.ValueSet.LinkQuery);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C897547C()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000010, 0x80000001C8C24F40);

  qword_1EC2B9BF8 = v1;
  unk_1EC2B9C00 = v2;
  return result;
}

void sub_1C89755C4()
{
  OUTLINED_FUNCTION_178_1();
  v3 = v2;
  OUTLINED_FUNCTION_50_2();
  if (!*(*v0 + 16) || (OUTLINED_FUNCTION_0_1(), sub_1C8BD4DAC(), !v1))
  {
    v4 = *(v3(0) + 20);
    OUTLINED_FUNCTION_69();
  }

  OUTLINED_FUNCTION_177_0();
}

uint64_t sub_1C89756A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD418, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8975724(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8975794()
{
  sub_1C8776818(&qword_1EC2BBDE0, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.RepresentableAs);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8975814()
{
  if (qword_1EC2B5540 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9AD8;
  v2 = unk_1EC2B9AE0;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0x707954747865542ELL, 0xEE00687469576465);

  qword_1EC2B9C20 = v1;
  *algn_1EC2B9C28 = v2;
  return result;
}

uint64_t sub_1C89758E4()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C30);
  __swift_project_value_buffer(v0, qword_1EC2B9C30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "multiline_allowed";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "smart_quotes_enabled";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "smart_dashes_enabled";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "keyboard_type";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "autocorrection_type";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "capitalization_type";
  *(v18 + 1) = 19;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
        OUTLINED_FUNCTION_119();
        sub_1C8BD4B3C();
        break;
      case 4:
        OUTLINED_FUNCTION_8();
        sub_1C8975C8C();
        break;
      case 5:
        OUTLINED_FUNCTION_8();
        sub_1C8975CF4();
        break;
      case 6:
        OUTLINED_FUNCTION_8();
        sub_1C8975D5C();
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_50_2();
  if (*v0 != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
  {
    if (*(v2 + 1) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
    {
      if (*(v2 + 2) != 1 || (OUTLINED_FUNCTION_0_1(), result = sub_1C8BD4D3C(), !v1))
      {
        if (!*(v2 + 8) || (v4 = *(v2 + 16), OUTLINED_FUNCTION_940(), sub_1C89CC0B8(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
        {
          if (!*(v2 + 24) || (v5 = *(v2 + 32), OUTLINED_FUNCTION_940(), sub_1C89CC10C(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
          {
            if (!*(v2 + 40) || (v6 = *(v2 + 48), OUTLINED_FUNCTION_940(), sub_1C89CC160(), OUTLINED_FUNCTION_9_1(), result = sub_1C8BD4D4C(), !v1))
            {
              v7 = *(type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith(0) + 40);
              return OUTLINED_FUNCTION_69();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C8975FB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD410, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8976030(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C89760A0()
{
  sub_1C8776818(&qword_1EC2BBDF8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.RestrictionContext.TextTypedWith);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8976120()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C48);
  __swift_project_value_buffer(v0, qword_1EC2B9C48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AutocorrectionType_DEFAULT";
  *(v6 + 8) = 26;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AutocorrectionType_ON";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "AutocorrectionType_OFF";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8976360()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C60);
  __swift_project_value_buffer(v0, qword_1EC2B9C60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D60;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "KeyboardType_DEFAULT";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "KeyboardType_ASCII_CAPABLE";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "KeyboardType_NUMBERS_AND_PUNCTUATION";
  *(v12 + 1) = 36;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "KeyboardType_URL";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "KeyboardType_NUMBER_PAD";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "KeyboardType_PHONE_PAD";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "KeyboardType_NAME_PHONE_PAD";
  *(v20 + 1) = 27;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "KeyboardType_EMAIL_ADDRESS";
  *(v22 + 1) = 26;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "KeyboardType_DECIMAL_PAD";
  *(v24 + 1) = 24;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 9;
  *v26 = "KeyboardType_TWITTER";
  *(v26 + 1) = 20;
  v26[16] = 2;
  v9();
  v27 = (v5 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 10;
  *v28 = "KeyboardType_WEB_SEARCH";
  *(v28 + 1) = 23;
  v28[16] = 2;
  v9();
  v29 = (v5 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 11;
  *v30 = "KeyboardType_ASCII_CAPABLE_NUMBER_PAD";
  *(v30 + 1) = 37;
  v30[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C89767CC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9C78);
  __swift_project_value_buffer(v0, qword_1EC2B9C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "CapitalizationType_NONE";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CapitalizationType_WORDS";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "CapitalizationType_SENTENCES";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CapitalizationType_ALL_CHARACTERS";
  *(v14 + 1) = 33;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8976A48()
{
  result = MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C24BD0);
  qword_1EC2B9C90 = 0xD00000000000002BLL;
  *algn_1EC2B9C98 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8976ADC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CA0);
  __swift_project_value_buffer(v0, qword_1EC2B9CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "regularContentItemClass";
  *(v6 + 8) = 23;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "linkEntityContentItemClass";
  *(v10 + 1) = 26;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "linkEnumContentItemClass";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    v1 = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 3:
        v7 = OUTLINED_FUNCTION_33_4();
        sub_1C8977280(v7, v8, v9, v10);
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_33_4();
        sub_1C8976DC4(v3, v4, v5, v6);
        break;
      case 1:
        OUTLINED_FUNCTION_36_6();
        sub_1C8955054();
        break;
    }
  }
}

uint64_t sub_1C8976DC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD740, &qword_1C8C0A5E8);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD740, &qword_1C8C0A5E8);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD740, &qword_1C8C0A5E8);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD740, &qword_1C8C0A5E8);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC88, &qword_1C8BFAB00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

uint64_t sub_1C8977280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v33 = a2;
  v6 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v28[1] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28[0] = v28 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BD748, &qword_1C8C0A5F0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v30 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v28 - v22;
  __swift_storeEnumTagSinglePayload(v28 - v22, 1, 1, v6);
  v29 = a1;
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8BD4B0C();
    if (v4)
    {
      sub_1C88E3C58();
      goto LABEL_8;
    }

    sub_1C88E3EC4();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C8778ED8(v23, &qword_1EC2BD748, &qword_1C8C0A5F0);
      sub_1C88E3EC4();
      sub_1C88E3EC4();
      __swift_storeEnumTagSinglePayload(v23, 0, 1, v6);
    }

    else
    {
      sub_1C88E3C58();
    }
  }

  sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);
  sub_1C8BD4C7C();
  if (v4)
  {
LABEL_8:
    v25 = v23;
    return sub_1C8778ED8(v25, &qword_1EC2BD748, &qword_1C8C0A5F0);
  }

  v24 = v30;
  sub_1C89DF3F4();
  if (__swift_getEnumTagSinglePayload(v24, 1, v6) == 1)
  {
    v25 = v24;
    return sub_1C8778ED8(v25, &qword_1EC2BD748, &qword_1C8C0A5F0);
  }

  sub_1C88E3EC4();
  v27 = v29;
  sub_1C8778ED8(v29, &qword_1EC2BAC88, &qword_1C8BFAB00);
  sub_1C88E3EC4();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v27, 0, 1, v15);
}

void Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_1065();
  OUTLINED_FUNCTION_115();
  v1 = OUTLINED_FUNCTION_233();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_235_2();
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  OUTLINED_FUNCTION_144_2(v7);
  if (v8)
  {
    goto LABEL_3;
  }

  OUTLINED_FUNCTION_104_0();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_246_1();
    sub_1C88E3C58();
    OUTLINED_FUNCTION_9_4();
    sub_1C8977830();
    if (v0)
    {
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v11 = OUTLINED_FUNCTION_9_4();
    sub_1C8977980(v11, v12, v13, v14);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_9_4();
    sub_1C8977B94(v15, v16, v17, v18);
  }

  OUTLINED_FUNCTION_246_1();
  sub_1C88E3C58();
  if (!v0)
  {
LABEL_3:
    v9 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
    OUTLINED_FUNCTION_113_1(v9);
  }

LABEL_11:
  OUTLINED_FUNCTION_245_1();
  OUTLINED_FUNCTION_1066();
}

uint64_t sub_1C8977830()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = (&v8 - v2);
  sub_1C89CBE2C();
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    result = sub_1C8778ED8(v3, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v5 = *v3;
      v6 = v3[1];
      sub_1C8BD4DDC();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8977980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8977B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC88, &qword_1C8BFAB00);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C89CBE2C();
  v10 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
  {
    result = sub_1C8778ED8(v7, &qword_1EC2BAC88, &qword_1C8BFAB00);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }

    result = sub_1C88E3C58();
  }

  __break(1u);
  return result;
}

void static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.== infix(_:_:)()
{
  OUTLINED_FUNCTION_124();
  v1 = OUTLINED_FUNCTION_84();
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind(v1);
  v3 = OUTLINED_FUNCTION_49_3(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_18_4();
  v6 = OUTLINED_FUNCTION_104_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_103();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BB1E8, &qword_1C8BFAD10);
  OUTLINED_FUNCTION_80(v12);
  v14 = *(v13 + 64);
  OUTLINED_FUNCTION_77();
  v16 = MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_134_3(v16);
  OUTLINED_FUNCTION_472();
  OUTLINED_FUNCTION_125_0();
  if (v17)
  {
    OUTLINED_FUNCTION_37_2();
    if (v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
LABEL_12:
      v21 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
      OUTLINED_FUNCTION_716(v21);
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_1_14();
      sub_1C8776818(v22, v23);
      v18 = OUTLINED_FUNCTION_64_0();
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_253();
  sub_1C89CBE2C();
  OUTLINED_FUNCTION_37_2();
  if (v17)
  {
    OUTLINED_FUNCTION_246_1();
    sub_1C88E3C58();
LABEL_9:
    sub_1C8778ED8(v0, &qword_1EC2BB1E8, &qword_1C8BFAD10);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_705();
  OUTLINED_FUNCTION_168_0();
  static Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.OneOf_ContentItemClassDescriptorKind.== infix(_:_:)();
  v20 = v19;
  sub_1C88E3C58();
  OUTLINED_FUNCTION_178_2();
  sub_1C88E3C58();
  sub_1C8778ED8(v0, &qword_1EC2BAC88, &qword_1C8BFAB00);
  if (v20)
  {
    goto LABEL_12;
  }

LABEL_10:
  v18 = 0;
LABEL_13:
  OUTLINED_FUNCTION_157(v18);
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8978028(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD408, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C89780A8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8978118()
{
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8978198()
{
  if (qword_1EC2B55E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9C90;
  v2 = *algn_1EC2B9C98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD00000000000001BLL, 0x80000001C8C24B50);

  qword_1EC2B9CB8 = v1;
  unk_1EC2B9CC0 = v2;
  return result;
}

uint64_t sub_1C8978260()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CC8);
  __swift_project_value_buffer(v0, qword_1EC2B9CC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C897851C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD400, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C897859C(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C897860C()
{
  sub_1C8776818(&qword_1EC2BBE20, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEntityContentItemClass);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C897868C()
{
  if (qword_1EC2B55E8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC2B9C90;
  v2 = *algn_1EC2B9C98;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1CCA7E2D0](0xD000000000000019, 0x80000001C8C24B30);

  qword_1EC2B9CE0 = v1;
  *algn_1EC2B9CE8 = v2;
  return result;
}

uint64_t sub_1C8978754()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9CF0);
  __swift_project_value_buffer(v0, qword_1EC2B9CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "bundleIdentifier";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "identifier";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8978954()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    OUTLINED_FUNCTION_97();
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_119();
      sub_1C8BD4C2C();
    }
  }

  return result;
}

uint64_t sub_1C8978A58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776818(&qword_1EC2BD3F8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8978AD8(uint64_t a1)
{
  v2 = sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8978B48()
{
  sub_1C8776818(&qword_1EC2BBE38, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor.LinkEnumContentItemClass);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8978BC8()
{
  result = MEMORY[0x1CCA7E2D0](0xD000000000000014, 0x80000001C8C24B10);
  qword_1EC2B9D08 = 0xD00000000000002BLL;
  unk_1EC2B9D10 = 0x80000001C8C22BA0;
  return result;
}

uint64_t sub_1C8978C5C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B9D18);
  __swift_project_value_buffer(v0, qword_1EC2B9D18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "property";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "comparison";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "rawGroupId";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "contentItemClass";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8978F08()
{
  v1 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property;
  v2 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison;
  v4 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = (v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass;
  v7 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  return v0;
}

uint64_t sub_1C8978FA8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property;
  v11 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison;
  v13 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = (v1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  *v14 = 0;
  v14[1] = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass;
  v16 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  swift_beginAccess();
  sub_1C89CBE2C();
  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  v17 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  swift_beginAccess();
  v19 = *v17;
  v18 = v17[1];
  swift_beginAccess();
  v20 = v14[1];
  *v14 = v19;
  v14[1] = v18;

  swift_beginAccess();
  sub_1C89CBE2C();

  swift_beginAccess();
  sub_1C89CBD78();
  swift_endAccess();
  return v1;
}

uint64_t sub_1C8979300()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__property, &qword_1EC2BAC98, &qword_1C8BFAB10);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__comparison, &unk_1EC2BACA8, &qword_1C8BFAB18);
  v1 = *(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID + 8);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__contentItemClass, &qword_1EC2BAC78, &qword_1C8BFAAF0);
  return v0;
}

uint64_t sub_1C897940C()
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C8979514();
        break;
      case 2:
        sub_1C89795F0();
        break;
      case 3:
        sub_1C89AF0A0();
        break;
      case 4:
        sub_1C89796CC();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8979514()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89795F0()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89796CC()
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C89797E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a3;
  v38 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC78, &qword_1C8BFAAF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v32 = v31 - v7;
  v33 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor(0);
  v8 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v31[1] = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2BACA8, &qword_1C8BFAB18);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v31 - v12;
  v35 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison(0);
  v14 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v34 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2BAC98, &qword_1C8BFAB10);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v31 - v18;
  v20 = type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1C8778ED8(v19, &qword_1EC2BAC98, &qword_1C8BFAB10);
    v22 = v36;
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BAF68, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.TypeDefinition.Version1.Entity.Property);
    v23 = v36;
    sub_1C8BD4E2C();
    v22 = v23;
    result = sub_1C88E3C58();
    if (v23)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1C89CBE2C();
  if (__swift_getEnumTagSinglePayload(v13, 1, v35) == 1)
  {
    sub_1C8778ED8(v13, &unk_1EC2BACA8, &qword_1C8BFAB18);
  }

  else
  {
    sub_1C88E3EC4();
    sub_1C8776818(&qword_1EC2BBE60, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ComparisonPredicate.Comparison);
    sub_1C8BD4E2C();
    result = sub_1C88E3C58();
    if (v22)
    {
      return result;
    }
  }

  v25 = (a1 + OBJC_IVAR____TtCVV12SiriNLUTypes42Siri_Nlu_External_IntelligenceFlow_ToolKit19ComparisonPredicateP33_13BFF459B1B300C4BE884A56C7458FCF13_StorageClass__rawGroupID);
  swift_beginAccess();
  v26 = *v25;
  v27 = v25[1];
  v28 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v28 = *v25 & 0xFFFFFFFFFFFFLL;
  }

  if (!v28 || (v29 = v25[1], , sub_1C8BD4DDC(), result = , !v22))
  {
    swift_beginAccess();
    v30 = v32;
    sub_1C89CBE2C();
    if (__swift_getEnumTagSinglePayload(v30, 1, v33) == 1)
    {
      return sub_1C8778ED8(v30, &qword_1EC2BAC78, &qword_1C8BFAAF0);
    }

    else
    {
      sub_1C88E3EC4();
      sub_1C8776818(&qword_1EC2BB1A8, type metadata accessor for Siri_Nlu_External_IntelligenceFlow_ToolKit.ContentItemClassDescriptor);
      sub_1C8BD4E2C();
      return sub_1C88E3C58();
    }
  }

  return result;
}