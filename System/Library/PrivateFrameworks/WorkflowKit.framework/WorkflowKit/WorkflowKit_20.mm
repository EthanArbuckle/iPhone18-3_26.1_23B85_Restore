uint64_t sub_1CA444194(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4456C0, &qword_1CA987A30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1CA444218()
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v1 = result;
    v2 = sub_1CA94C3A8();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA44426C()
{
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v1 = result;
    v2 = sub_1CA94C3A8();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA4442C4(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))();
  result = WFDefaultLocalizedLabelForContentOperator();
  if (result)
  {
    v3 = result;
    v4 = sub_1CA94C3A8();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1CA444348()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA444390()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_8_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t RowTemplateValueComparisonOperator.formatString.getter()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = OUTLINED_FUNCTION_21_13(AssociatedTypeWitness);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = OUTLINED_FUNCTION_17_10();
  v9(v8);
  v10 = OUTLINED_FUNCTION_25_9();
  (*(v10 + 8))(v0, v10);
  return (*(v5 + 8))(v1, v0);
}

uint64_t sub_1CA4444D8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_8_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

uint64_t RowTemplateValueComparisonOperator.parameters(options:)(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = OUTLINED_FUNCTION_21_13(AssociatedTypeWitness);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = OUTLINED_FUNCTION_17_10();
  v11(v10);
  v12 = OUTLINED_FUNCTION_25_9();
  v13 = (*(v12 + 16))(a1, v1, v12);
  (*(v7 + 8))(v2, v1);
  return v13;
}

id sub_1CA444628()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA444670()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_5_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA4446B8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_5_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

uint64_t RowTemplateParameterOptions.init(row:parameterKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1CA43FE30(a1, a4);
  if (!a3)
  {
    a2 = 0x65756C6176;
    a3 = 0xE500000000000000;
  }

  result = sub_1CA444194(a1);
  *(a4 + 40) = a2;
  *(a4 + 48) = a3;
  return result;
}

uint64_t RowTemplateParameterOptions.parameterKey.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  sub_1CA94C218();
  return v1;
}

uint64_t sub_1CA44479C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1CA4447DC(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

uint64_t sub_1CA4448A0()
{
  sub_1CA445634(v0, v3);
  v1 = v3[32];
  sub_1CA44566C(v3);
  return v1;
}

uint64_t sub_1CA4448E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981310;
  v2 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1CA94C3A8();
  *(inited + 40) = v3;
  sub_1CA445634(v0, v13);
  v4 = v13[32];
  sub_1CA44566C(v13);
  if (v4)
  {
    sub_1CA94C438();
    if (qword_1EDB9F5F0 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
LABEL_6:
    OUTLINED_FUNCTION_0_3();
  }

LABEL_5:
  v5 = OUTLINED_FUNCTION_15();
  v6 = OUTLINED_FUNCTION_15();

  v8 = OUTLINED_FUNCTION_96(v7, sel_localizedStringForKey_value_table_);

  v9 = sub_1CA94C3A8();
  v11 = v10;

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v9;
  *(inited + 56) = v11;
  return sub_1CA94C1E8();
}

uint64_t dispatch thunk of RowTemplateFindFilterValueType.insertComparisonValue(into:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_31(v8);

  return v11(v10);
}

uint64_t sub_1CA444C78(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1CA444CB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of RowTemplateFindFilterOperator.insertComparisonValue(into:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_31(v8);

  return v11(v10);
}

uint64_t dispatch thunk of RowTemplateConditionalOperator.evaluate(content:context:)()
{
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_0_37(v0, v1, v2, v3);
  v13 = v4 + *v4;
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_20(v7);
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_1_31(v8);

  return v11(v10);
}

uint64_t sub_1CA444F90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1CA444FCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1CA445018(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1CA44504C()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA445094()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_13_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA4450D8()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA445120()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_12_18();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA445168()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_12_18();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

unint64_t sub_1CA4451AC()
{
  result = qword_1EC445880;
  if (!qword_1EC445880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445880);
  }

  return result;
}

uint64_t sub_1CA445200()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA445248()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_11_20();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA4452A8()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4452F0()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_10_15();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA445338()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_10_15();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA44537C()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4453C4()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_9_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA44540C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_9_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA44548C()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4454D4()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_7_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA44551C()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_7_21();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA445560()
{
  OUTLINED_FUNCTION_19_12();
  v0 = OUTLINED_FUNCTION_93();

  return sub_1CA4442C4(v0, v1);
}

uint64_t sub_1CA4455A8()
{
  OUTLINED_FUNCTION_15_12();
  OUTLINED_FUNCTION_6_25();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_34();

  return RowTemplateValueComparisonOperator.formatString.getter();
}

uint64_t sub_1CA4455F0()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_6_25();
  swift_getWitnessTable();
  v0 = OUTLINED_FUNCTION_3_30();

  return RowTemplateValueComparisonOperator.parameters(options:)(v0);
}

id sub_1CA4456E0()
{
  v41 = sub_1CA94B4D8();
  v39 = *(v41 - 8);
  v0 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981300;
  v3 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v3;
  *(inited + 72) = @"ActionKeywords";
  v4 = @"ActionClass";
  v5 = @"ActionKeywords";
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v21 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v22 = sub_1CA2F9F14(v6, v8, v9, v11, 0, 0, v15, v20);
  v23 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v22;
  *(inited + 104) = v23;
  *(inited + 112) = @"AppDefinition";
  v24 = @"AppDefinition";
  v25 = MEMORY[0x1E69E6158];
  v26 = sub_1CA94C1E8();
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v26;
  *(inited + 144) = v27;
  *(inited + 152) = @"DisabledOnPlatforms";
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FB160;
  *(inited + 184) = v28;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v25;
  *(inited + 232) = @"IconSymbol";
  *(inited + 264) = v25;
  *(inited + 240) = 0xD000000000000019;
  *(inited + 248) = 0x80000001CA9B6390;
  v29 = @"DisabledOnPlatforms";
  v30 = @"IconColor";
  v31 = @"IconSymbol";
  *(inited + 272) = sub_1CA94C368();
  *(inited + 280) = 0xD000000000000057;
  *(inited + 288) = 0x80000001CA9B63B0;
  *(inited + 304) = v25;
  *(inited + 312) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1CA9813B0;
  v33 = v40;
  (*(v39 + 104))(v40, *MEMORY[0x1E69DB3C8], v41);
  v34 = objc_allocWithZone(type metadata accessor for WFDeviceCapabilityResource());
  v35 = @"RequiredResources";
  WFDeviceCapabilityResource.init(capability:)(v33);
  *(v32 + 32) = v36;
  *(inited + 344) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444680, &qword_1CA9839D8);
  *(inited + 320) = v32;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA445BDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1CA94B1C8();
  v2[4] = v3;
  OUTLINED_FUNCTION_12(v3);
  v2[5] = v4;
  v6 = *(v5 + 64);
  v2[6] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for TypedValueConversionContext(0);
  v2[7] = v7;
  v8 = *(*(v7 - 8) + 64);
  v2[8] = OUTLINED_FUNCTION_45();
  v9 = sub_1CA94AD88();
  v2[9] = v9;
  OUTLINED_FUNCTION_12(v9);
  v2[10] = v10;
  v12 = *(v11 + 64);
  v2[11] = OUTLINED_FUNCTION_45();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0) - 8) + 64);
  v2[12] = OUTLINED_FUNCTION_45();
  v14 = sub_1CA94ADC8();
  v2[13] = v14;
  OUTLINED_FUNCTION_12(v14);
  v2[14] = v15;
  v17 = *(v16 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1CA445D9C, 0, 0);
}

uint64_t sub_1CA445D9C()
{
  [**(v0 + 24) singleStateClass];
  swift_getObjCClassMetadata();
  sub_1CA4467D8();
  if (!swift_dynamicCastMetatype())
  {
    sub_1CA3DBA78();
    swift_allocError();
    *v10 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_0_38();

    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_4_32();

    __asm { BRAA            X1, X16 }
  }

  v1 = *(v0 + 128);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA94A8B8();
  v4 = *(type metadata accessor for ParameterStateValueTransformContext(0) + 24);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1CA445F28;
  v6 = *(v0 + 128);
  v7 = *(v0 + 96);
  OUTLINED_FUNCTION_4_32();

  return sub_1CA4693D0();
}

uint64_t sub_1CA445F28()
{
  v2 = *v1;
  OUTLINED_FUNCTION_1();
  *v3 = v2;
  v5 = v4[18];
  v6 = v4[16];
  v7 = v4[14];
  v8 = v4[13];
  v9 = *v1;
  OUTLINED_FUNCTION_1();
  *v10 = v9;
  v2[19] = v0;

  v11 = *(v7 + 8);
  v2[20] = v11;
  v2[21] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v6, v8);
  if (v0)
  {
    v12 = sub_1CA44673C;
  }

  else
  {
    v12 = sub_1CA4460A4;
  }

  return MEMORY[0x1EEE6DFA0](v12, 0, 0);
}

uint64_t sub_1CA4460A4()
{
  v1 = v0[12];
  v2 = v0[13];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1CA44681C(v1);
LABEL_10:
    sub_1CA3DBA78();
    swift_allocError();
    *v30 = 2;
    swift_willThrow();
    OUTLINED_FUNCTION_0_38();

    OUTLINED_FUNCTION_5();

    return v31();
  }

  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  (*(v5 + 32))(v3, v1, v2);
  (*(v5 + 16))(v4, v3, v2);
  if ((*(v5 + 88))(v4, v2) != *MEMORY[0x1E69DB088])
  {
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[15];
    v29 = v0[13];
    v27(v0[17], v29);
    v27(v28, v29);
    goto LABEL_10;
  }

  v6 = v0[15];
  v8 = v0[10];
  v7 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v12 = v0[5];
  v11 = v0[6];
  v13 = v0[4];
  (*(v0[14] + 96))(v6, v0[13]);
  v14 = *v6;
  v15 = swift_projectBox();
  (*(v8 + 16))(v7, v15, v9);

  v16 = sub_1CA94AD68();
  MEMORY[0x1CCA9FFE0](v16);
  (*(v12 + 8))(v11, v13);
  if (qword_1EC4420F0 != -1)
  {
    swift_once();
  }

  v18 = v0[7];
  v17 = v0[8];
  v19 = qword_1EC4420F8;
  v20 = (v17 + v18[5]);
  v20[3] = type metadata accessor for DatabaseTypeDefinitionProvider();
  v20[4] = &protocol witness table for DatabaseTypeDefinitionProvider;
  *v20 = v19;
  v21 = objc_opt_self();

  *(v17 + v18[6]) = [v21 defaultContext];
  *(v17 + v18[7]) = 0;
  v22 = swift_task_alloc();
  v0[22] = v22;
  *v22 = v0;
  v22[1] = sub_1CA4463E4;
  v23 = v0[8];
  v24 = v0[2];

  return sub_1CA3445EC();
}

uint64_t sub_1CA4463E4(uint64_t a1)
{
  v4 = *v2;
  OUTLINED_FUNCTION_1();
  *v5 = v4;
  v7 = *(v6 + 176);
  v8 = *v2;
  OUTLINED_FUNCTION_1();
  *v9 = v8;
  *(v4 + 184) = v1;

  if (v1)
  {
    v10 = sub_1CA446664;
  }

  else
  {
    *(v4 + 192) = a1;
    v10 = sub_1CA446504;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_1CA446504()
{
  v1 = v0[24];
  v12 = v0[20];
  v13 = v0[21];
  v2 = v0[17];
  v14 = v0[16];
  v15 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v16 = v0[12];
  v17 = v0[6];
  v8 = [objc_allocWithZone(MEMORY[0x1E69ACEC8]) initWithValue:v1 indentationLevel:0];
  v9 = [objc_allocWithZone(WFLinkDynamicOptionSubstitutableState) initWithValue_];

  sub_1CA3DBD00(v6);
  (*(v5 + 8))(v4, v7);
  v12(v2, v3);

  v10 = v0[1];

  return v10(v9);
}

void sub_1CA446664()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[17];
  v4 = v0[13];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  sub_1CA3DBD00(v0[8]);
  (*(v6 + 8))(v5, v7);
  v2(v3, v4);
  v8 = v0[23];
  OUTLINED_FUNCTION_0_38();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  __asm { BRAA            X1, X16 }
}

void sub_1CA44673C()
{
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_0_38();

  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4_32();

  __asm { BRAA            X1, X16 }
}

unint64_t sub_1CA4467D8()
{
  result = qword_1EC446AB0;
  if (!qword_1EC446AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC446AB0);
  }

  return result;
}

uint64_t sub_1CA44681C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444368, &unk_1CA988BC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CA446884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1CA3DBB6C;

  return sub_1CA445BDC(a2, a3);
}

id sub_1CA446958()
{
  v131 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001CLL;
  *(inited + 48) = 0x80000001CA9B6420;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = inited;
  v3 = @"ActionClass";
  v4 = @"ActionKeywords";
  v5 = sub_1CA94C438();
  v7 = v6;
  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA948E58();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v138 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v139 = v13;
  v14 = &v124 - v138;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v135 = qword_1EDB9F690;
  v15 = [qword_1EDB9F690 bundleURL];
  v16 = sub_1CA948BA8();
  v137 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v134 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  v18 = &v124 - v134;
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v5, v7, v8, v10, 0, 0, v14, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v133 = v21;
  v136 = v2;
  v2[10] = v20;
  v2[13] = v21;
  v2[14] = @"Description";
  *&v132 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionResult";
  v23 = @"Description";
  v24 = @"DescriptionResult";
  v25 = sub_1CA94C438();
  v128 = v26;
  v129 = v25;
  v27 = sub_1CA94C438();
  v127 = v28;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v124 - v138;
  sub_1CA948D98();
  v30 = v135;
  v31 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v134;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v129, v128, v27, v127, 0, 0, v29, &v124 - v32);
  v34 = v133;
  *(v22 + 64) = v133;
  *(v22 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v36 = sub_1CA94C438();
  v128 = v37;
  v129 = v36;
  v127 = sub_1CA94C438();
  v39 = v38;
  v130 = &v124;
  MEMORY[0x1EEE9AC00](v127);
  v40 = &v124 - v138;
  sub_1CA948D98();
  v41 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v129, v128, v127, v39, 0, 0, v40, &v124 - v32);
  *(v22 + 104) = v34;
  *(v22 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v132;
  v45 = sub_1CA6B3784();
  v46 = v136;
  v136[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 0x6F6769646E49;
  v46[21] = 0xE600000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0xD000000000000011;
  v46[26] = 0x80000001CA9A3B70;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v47;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v132 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 0;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0x7475706E494657;
  *(v49 + 104) = 0xE700000000000000;
  *(v49 + 120) = v48;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 1;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  *(v49 + 184) = 0xE500000000000000;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v130;
  *(v49 + 192) = &unk_1F49FB190;
  v51 = @"IconColor";
  v52 = @"IconSymbol";
  v53 = @"Input";
  v54 = sub_1CA94C1E8();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v129 = v55;
  v46[30] = v54;
  v46[33] = v55;
  v46[34] = @"Name";
  v56 = @"Name";
  v57 = sub_1CA94C438();
  v125 = v58;
  v126 = v57;
  v59 = sub_1CA94C438();
  v61 = v60;
  v127 = &v124;
  MEMORY[0x1EEE9AC00](v59);
  v62 = v138;
  sub_1CA948D98();
  v63 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = v134;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v126, v125, v59, v61, 0, 0, &v124 - v62, &v124 - v64);
  v67 = v136;
  v136[35] = v66;
  v68 = v133;
  v67[38] = v133;
  v67[39] = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v132;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 0;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v126 = v72;
  v127 = v71;
  v125 = sub_1CA94C438();
  v74 = v73;
  v128 = &v124;
  MEMORY[0x1EEE9AC00](v125);
  sub_1CA948D98();
  v75 = v135;
  v76 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v76);
  sub_1CA948B68();

  v77 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v127, v126, v125, v74, 0, 0, &v124 - v62, &v124 - v64);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v130;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49FB1C0;
  v78 = MEMORY[0x1E69E6158];
  v79 = sub_1CA94C1E8();
  v80 = v136;
  v136[40] = v79;
  v80[43] = v129;
  v80[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v130 = swift_allocObject();
  *(v130 + 1) = xmmword_1CA9813B0;
  v129 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v81 = swift_initStackObject();
  *(v81 + 16) = v132;
  *(v81 + 32) = @"Class";
  *(v81 + 40) = 0xD000000000000019;
  *(v81 + 48) = 0x80000001CA99B030;
  *(v81 + 64) = v78;
  *(v81 + 72) = @"Key";
  *(v81 + 80) = 0x7475706E494657;
  *(v81 + 88) = 0xE700000000000000;
  *(v81 + 104) = v78;
  *(v81 + 112) = @"Label";
  v82 = @"Parameters";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = sub_1CA94C438();
  v127 = v87;
  v128 = v86;
  v88 = sub_1CA94C438();
  v126 = v89;
  *&v132 = &v124;
  MEMORY[0x1EEE9AC00](v88);
  v90 = v138;
  sub_1CA948D98();
  v91 = [v75 bundleURL];
  v125 = &v124;
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v124 - v134;
  sub_1CA948B68();

  v93 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v81 + 120) = sub_1CA2F9F14(v128, v127, v88, v126, 0, 0, &v124 - v90, v92);
  v94 = v133;
  *(v81 + 144) = v133;
  *(v81 + 152) = @"Placeholder";
  v95 = @"Placeholder";
  v96 = sub_1CA94C438();
  v127 = v97;
  v128 = v96;
  v126 = sub_1CA94C438();
  v99 = v98;
  *&v132 = &v124;
  MEMORY[0x1EEE9AC00](v126);
  sub_1CA948D98();
  v100 = [v75 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = v134;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v103 = sub_1CA2F9F14(v128, v127, v126, v99, 0, 0, &v124 - v90, &v124 - v101);
  *(v81 + 184) = v94;
  *(v81 + 160) = v103;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v104 = sub_1CA2F864C();
  v105 = v130;
  v130[4] = v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v107 = v136;
  v136[45] = v105;
  v107[48] = v106;
  v107[49] = @"ParameterSummary";
  v108 = @"ParameterSummary";
  v109 = sub_1CA94C438();
  v111 = v110;
  v112 = sub_1CA94C438();
  v114 = v113;
  v133 = &v124;
  MEMORY[0x1EEE9AC00](v112);
  v115 = &v124 - v138;
  sub_1CA948D98();
  v116 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948B68();

  v117 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v118 = sub_1CA2F9F14(v109, v111, v112, v114, 0, 0, v115, &v124 - v101);
  v119 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v120 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v121 = v136;
  v136[50] = v119;
  v121[53] = v120;
  v121[54] = @"ResidentCompatible";
  v121[58] = MEMORY[0x1E69E6370];
  *(v121 + 440) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v122 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA447978()
{
  v125 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B65E0;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v128 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v129 = v12;
  v13 = &v117 - v128;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v130 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v131 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v127 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v117 - v127;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v126 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v124 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v122 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v123 = &v117;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v117 - v128;
  sub_1CA948D98();
  v33 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v117 - v127;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v122, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v126;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v124;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 2036429383;
  *(inited + 208) = 0xE400000000000000;
  v38 = MEMORY[0x1E69E6158];
  *(inited + 224) = MEMORY[0x1E69E6158];
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x74616C75636C6163;
  *(inited + 248) = 0xEF6C6C69662E726FLL;
  *(inited + 264) = v38;
  *(inited + 272) = @"Input";
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_1CA981350;
  *(v39 + 32) = 0x656C7069746C754DLL;
  *(v39 + 40) = 0xE800000000000000;
  v40 = MEMORY[0x1E69E6370];
  *(v39 + 48) = 0;
  *(v39 + 72) = v40;
  strcpy((v39 + 80), "ParameterKey");
  *(v39 + 93) = 0;
  *(v39 + 94) = -5120;
  *(v39 + 96) = 0x7475706E49;
  *(v39 + 104) = 0xE500000000000000;
  *(v39 + 120) = v38;
  *(v39 + 128) = 0x6465726975716552;
  *(v39 + 136) = 0xE800000000000000;
  *(v39 + 144) = 1;
  *(v39 + 168) = v40;
  *(v39 + 176) = 0x7365707954;
  v41 = v40;
  *(v39 + 184) = 0xE500000000000000;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v39 + 216) = v124;
  *(v39 + 192) = &unk_1F49FB230;
  v42 = @"IconColor";
  v43 = @"IconSymbol";
  v44 = @"Input";
  v45 = sub_1CA94C1E8();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v123 = v46;
  *(inited + 280) = v45;
  *(inited + 304) = v46;
  *(inited + 312) = @"LocallyProcessesData";
  *(inited + 320) = 1;
  *(inited + 344) = v41;
  *(inited + 352) = @"Name";
  v47 = @"LocallyProcessesData";
  v48 = @"Name";
  v49 = sub_1CA94C438();
  v119 = v50;
  v120 = v49;
  v51 = sub_1CA94C438();
  v118 = v52;
  v121 = &v117;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v128;
  sub_1CA948D98();
  v54 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v54);
  v55 = v127;
  sub_1CA948B68();

  v56 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 360) = sub_1CA2F9F14(v120, v119, v51, v118, 0, 0, &v117 - v53, &v117 - v55);
  v57 = v126;
  *(inited + 384) = v126;
  *(inited + 392) = @"Output";
  v58 = swift_initStackObject();
  *(v58 + 16) = xmmword_1CA9813C0;
  *(v58 + 32) = 0x656C7069746C754DLL;
  *(v58 + 40) = 0xE800000000000000;
  *(v58 + 48) = 0;
  *(v58 + 72) = MEMORY[0x1E69E6370];
  *(v58 + 80) = 0x614E74757074754FLL;
  *(v58 + 88) = 0xEA0000000000656DLL;
  v59 = @"Output";
  v60 = sub_1CA94C438();
  v120 = v61;
  v121 = v60;
  v62 = sub_1CA94C438();
  v119 = v63;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v62);
  sub_1CA948D98();
  v64 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v58 + 96) = sub_1CA2F9F14(v121, v120, v62, v119, 0, 0, &v117 - v53, &v117 - v55);
  *(v58 + 120) = v57;
  *(v58 + 128) = 0x7365707954;
  *(v58 + 168) = v124;
  *(v58 + 136) = 0xE500000000000000;
  *(v58 + 144) = &unk_1F49FB260;
  v66 = MEMORY[0x1E69E6158];
  *(inited + 400) = sub_1CA94C1E8();
  *(inited + 424) = v123;
  *(inited + 432) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v124 = swift_allocObject();
  *(v124 + 16) = xmmword_1CA9813B0;
  v123 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v67 = swift_allocObject();
  *(v67 + 16) = xmmword_1CA981370;
  *(v67 + 32) = @"Class";
  *(v67 + 40) = 0xD000000000000014;
  *(v67 + 48) = 0x80000001CA99B500;
  *(v67 + 64) = v66;
  *(v67 + 72) = @"Key";
  *(v67 + 80) = 0x7475706E49;
  *(v67 + 88) = 0xE500000000000000;
  *(v67 + 104) = v66;
  *(v67 + 112) = @"Label";
  v68 = @"Parameters";
  v69 = @"Class";
  v70 = @"Key";
  v71 = @"Label";
  v72 = sub_1CA94C438();
  v120 = v73;
  v121 = v72;
  v74 = sub_1CA94C438();
  v119 = v75;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v128;
  sub_1CA948D98();
  v77 = v130;
  v78 = [v130 bundleURL];
  v118 = &v117;
  MEMORY[0x1EEE9AC00](v78);
  v79 = &v117 - v127;
  sub_1CA948B68();

  v80 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 120) = sub_1CA2F9F14(v121, v120, v74, v119, 0, 0, &v117 - v76, v79);
  *(v67 + 144) = v126;
  *(v67 + 152) = @"Placeholder";
  v81 = @"Placeholder";
  v82 = sub_1CA94C438();
  v120 = v83;
  v121 = v82;
  v119 = sub_1CA94C438();
  v85 = v84;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948D98();
  v86 = [v77 bundleURL];
  MEMORY[0x1EEE9AC00](v86);
  v87 = v127;
  sub_1CA948B68();

  v88 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v67 + 160) = sub_1CA2F9F14(v121, v120, v119, v85, 0, 0, &v117 - v76, &v117 - v87);
  *(v67 + 184) = v126;
  *(v67 + 192) = @"Prompt";
  v89 = @"Prompt";
  v90 = sub_1CA94C438();
  v120 = v91;
  v121 = v90;
  v92 = sub_1CA94C438();
  v119 = v93;
  v122 = &v117;
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v117 - v128;
  sub_1CA948D98();
  v95 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v95);
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v121, v120, v92, v119, 0, 0, v94, &v117 - v87);
  *(v67 + 224) = v126;
  *(v67 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v98 = sub_1CA2F864C();
  v99 = v124;
  *(v124 + 32) = v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  *(inited + 440) = v99;
  *(inited + 464) = v100;
  *(inited + 472) = @"ParameterSummary";
  v101 = @"ParameterSummary";
  v102 = sub_1CA94C438();
  v104 = v103;
  v105 = sub_1CA94C438();
  v107 = v106;
  v126 = &v117;
  MEMORY[0x1EEE9AC00](v105);
  v108 = &v117 - v128;
  sub_1CA948D98();
  v109 = [v130 bundleURL];
  MEMORY[0x1EEE9AC00](v109);
  v110 = &v117 - v127;
  sub_1CA948B68();

  v111 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v112 = sub_1CA2F9F14(v102, v104, v105, v107, 0, 0, v108, v110);
  v113 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v114 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 480) = v113;
  *(inited + 504) = v114;
  *(inited + 512) = @"ResidentCompatible";
  *(inited + 544) = MEMORY[0x1E69E6370];
  *(inited + 520) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v115 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA44899C()
{
  v205 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000011;
  *(inited + 48) = 0x80000001CA9B6830;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v222 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v223 = v12;
  v13 = &v198 - v222;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v221 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v219 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v220 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v198 - v220;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v218 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"Description";
  v217 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v21 = swift_initStackObject();
  v204 = xmmword_1CA981310;
  *(v21 + 16) = xmmword_1CA981310;
  *(v21 + 32) = @"DescriptionSummary";
  v22 = @"Description";
  v23 = @"DescriptionSummary";
  v24 = sub_1CA94C438();
  v26 = v25;
  v27 = sub_1CA94C438();
  v29 = v28;
  v216 = &v198;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v198 - v222;
  sub_1CA948D98();
  v31 = [v221 bundleURL];
  v211 = inited;
  v32 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v198 - v220;
  sub_1CA948B68();

  v34 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v35 = sub_1CA2F9F14(v24, v26, v27, v29, 0, 0, v30, v33);
  *(v21 + 64) = v218;
  *(v21 + 40) = v35;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v36 = v217;
  v37 = sub_1CA6B3784();
  v38 = v211;
  v211[15] = v37;
  v38[18] = v36;
  v38[19] = @"IconColor";
  v38[20] = 6579538;
  v38[21] = 0xE300000000000000;
  v39 = MEMORY[0x1E69E6158];
  v38[23] = MEMORY[0x1E69E6158];
  v38[24] = @"IconSymbol";
  v210 = 0xD000000000000013;
  v38[25] = 0xD000000000000013;
  v38[26] = 0x80000001CA99A850;
  v38[28] = v39;
  v38[29] = @"Input";
  v40 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v41 = swift_initStackObject();
  v212 = xmmword_1CA981350;
  *(v41 + 16) = xmmword_1CA981350;
  *(v41 + 32) = 0x656C7069746C754DLL;
  *(v41 + 40) = 0xE800000000000000;
  v42 = MEMORY[0x1E69E6370];
  *(v41 + 48) = 1;
  *(v41 + 72) = v42;
  strcpy((v41 + 80), "ParameterKey");
  *(v41 + 93) = 0;
  *(v41 + 94) = -5120;
  *(v41 + 96) = 0x747865544657;
  *(v41 + 104) = 0xE600000000000000;
  *(v41 + 120) = v39;
  *(v41 + 128) = 0x6465726975716552;
  *(v41 + 136) = 0xE800000000000000;
  *(v41 + 144) = 1;
  *(v41 + 168) = v42;
  *(v41 + 176) = 0x7365707954;
  v43 = v42;
  *(v41 + 184) = 0xE500000000000000;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v41 + 216) = v203;
  *(v41 + 192) = &unk_1F49FB290;
  v44 = @"IconColor";
  v45 = @"IconSymbol";
  v46 = @"Input";
  v47 = sub_1CA94C1E8();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v40[30] = v47;
  v40[33] = v48;
  v40[34] = @"InputPassthrough";
  *(v40 + 280) = 1;
  v40[38] = v43;
  v40[39] = @"Name";
  v49 = @"InputPassthrough";
  v50 = @"Name";
  v51 = sub_1CA94C438();
  v53 = v52;
  v54 = sub_1CA94C438();
  v56 = v55;
  MEMORY[0x1EEE9AC00](v54);
  v57 = &v198 - v222;
  sub_1CA948D98();
  v58 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v198 - v220;
  sub_1CA948B68();

  v60 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v61 = sub_1CA2F9F14(v51, v53, v54, v56, 0, 0, v57, v59);
  v62 = v211;
  v211[40] = v61;
  v62[43] = v218;
  v62[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_1CA981410;
  v216 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v63 = swift_initStackObject();
  *(v63 + 16) = v212;
  *(v63 + 32) = @"Class";
  *(v63 + 40) = 0xD000000000000011;
  *(v63 + 48) = 0x80000001CA99E620;
  v64 = MEMORY[0x1E69E6158];
  *(v63 + 64) = MEMORY[0x1E69E6158];
  *(v63 + 72) = @"DefaultValue";
  *(v63 + 80) = 1;
  *(v63 + 104) = MEMORY[0x1E69E6370];
  *(v63 + 112) = @"Key";
  *(v63 + 120) = 0x546B616570534657;
  *(v63 + 128) = 0xEF74696157747865;
  *(v63 + 144) = v64;
  *(v63 + 152) = @"Label";
  v65 = @"Class";
  v66 = @"DefaultValue";
  v67 = @"Key";
  v68 = @"Label";
  v69 = v65;
  v70 = v66;
  v71 = v67;
  v72 = v68;
  v206 = v69;
  v201 = v70;
  v202 = v71;
  v207 = v72;
  v73 = @"Parameters";
  v74 = sub_1CA94C438();
  v76 = v75;
  v77 = sub_1CA94C438();
  v79 = v78;
  v214 = &v198;
  MEMORY[0x1EEE9AC00](v77);
  v80 = &v198 - v222;
  sub_1CA948D98();
  v81 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v198 - v220;
  sub_1CA948B68();

  v83 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v84 = sub_1CA2F9F14(v74, v76, v77, v79, 0, 0, v80, v82);
  *(v63 + 184) = v218;
  *(v63 + 160) = v84;
  _s3__C3KeyVMa_0(0);
  v214 = v85;
  v213 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v217 + 32) = sub_1CA2F864C();
  v86 = swift_allocObject();
  v209 = xmmword_1CA981380;
  *(v86 + 16) = xmmword_1CA981380;
  v208 = 0x80000001CA9A0B80;
  v87 = v206;
  *(v86 + 32) = v206;
  *(v86 + 40) = 0xD000000000000011;
  *(v86 + 48) = 0x80000001CA9A0B80;
  v88 = MEMORY[0x1E69E6158];
  v89 = v201;
  v90 = v202;
  *(v86 + 64) = MEMORY[0x1E69E6158];
  *(v86 + 72) = v89;
  v91 = MEMORY[0x1E69E63B0];
  *(v86 + 80) = 0x3FE0000000000000;
  *(v86 + 104) = v91;
  *(v86 + 112) = v90;
  *(v86 + 120) = 0x546B616570534657;
  *(v86 + 128) = 0xEF65746152747865;
  v92 = v207;
  *(v86 + 144) = v88;
  *(v86 + 152) = v92;
  v206 = v87;
  v201 = v89;
  v200 = v90;
  v207 = v92;
  v93 = sub_1CA94C438();
  v95 = v94;
  v96 = sub_1CA94C438();
  v98 = v97;
  v202 = &v198;
  MEMORY[0x1EEE9AC00](v96);
  v99 = &v198 - v222;
  sub_1CA948D98();
  v100 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v198 - v220;
  sub_1CA948B68();

  v102 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v86 + 160) = sub_1CA2F9F14(v93, v95, v96, v98, 0, 0, v99, v101);
  *(v86 + 184) = v218;
  *(v86 + 192) = @"MaximumValue";
  v103 = MEMORY[0x1E69E6530];
  *(v86 + 200) = 1;
  *(v86 + 224) = v103;
  *(v86 + 232) = @"MinimumValue";
  *(v86 + 264) = v103;
  *(v86 + 240) = 0;
  v104 = @"MaximumValue";
  v105 = @"MinimumValue";
  v199 = v104;
  v198 = v105;
  sub_1CA94C1E8();
  *(v217 + 40) = sub_1CA2F864C();
  v106 = swift_allocObject();
  *(v106 + 16) = v209;
  v107 = v206;
  *(v106 + 32) = v206;
  *(v106 + 40) = 0xD000000000000011;
  *(v106 + 48) = v208;
  v108 = MEMORY[0x1E69E6158];
  v110 = v200;
  v109 = v201;
  *(v106 + 64) = MEMORY[0x1E69E6158];
  *(v106 + 72) = v109;
  *(v106 + 80) = 0x3FF0000000000000;
  *(v106 + 104) = MEMORY[0x1E69E63B0];
  *(v106 + 112) = v110;
  v202 = 0xD000000000000010;
  *(v106 + 120) = 0xD000000000000010;
  *(v106 + 128) = 0x80000001CA9B6940;
  v111 = v207;
  *(v106 + 144) = v108;
  *(v106 + 152) = v111;
  *&v209 = v107;
  v206 = v109;
  v208 = v110;
  v207 = v111;
  v112 = sub_1CA94C438();
  v114 = v113;
  v115 = sub_1CA94C438();
  v117 = v116;
  v201 = &v198;
  MEMORY[0x1EEE9AC00](v115);
  v118 = &v198 - v222;
  sub_1CA948D98();
  v119 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v198 - v220;
  sub_1CA948B68();

  v121 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v106 + 160) = sub_1CA2F9F14(v112, v114, v115, v117, 0, 0, v118, v120);
  v122 = v199;
  *(v106 + 184) = v218;
  *(v106 + 192) = v122;
  *(v106 + 200) = 0x4000000000000000;
  v123 = MEMORY[0x1E69E63B0];
  v124 = v198;
  *(v106 + 224) = MEMORY[0x1E69E63B0];
  *(v106 + 232) = v124;
  *(v106 + 264) = v123;
  *(v106 + 240) = 0x3FE0000000000000;
  sub_1CA94C1E8();
  *(v217 + 48) = sub_1CA2F864C();
  v125 = swift_allocObject();
  *(v125 + 16) = v212;
  v127 = v208;
  v126 = v209;
  *(v125 + 32) = v209;
  *(v125 + 40) = 0xD000000000000022;
  *(v125 + 48) = 0x80000001CA9B6980;
  v128 = MEMORY[0x1E69E6158];
  v129 = v206;
  v130 = v207;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = v129;
  *(v125 + 80) = 0x746C7561666544;
  *(v125 + 88) = 0xE700000000000000;
  *(v125 + 104) = v128;
  *(v125 + 112) = v127;
  v201 = 0x80000001CA997010;
  *(v125 + 120) = v210;
  *(v125 + 128) = 0x80000001CA997010;
  *(v125 + 144) = v128;
  *(v125 + 152) = v130;
  *&v209 = v126;
  v208 = v127;
  v207 = v130;
  v131 = sub_1CA94C438();
  v133 = v132;
  v134 = sub_1CA94C438();
  v136 = v135;
  v200 = &v198;
  MEMORY[0x1EEE9AC00](v134);
  v137 = &v198 - v222;
  sub_1CA948D98();
  v138 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = &v198 - v220;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v141 = sub_1CA2F9F14(v131, v133, v134, v136, 0, 0, v137, v139);
  *(v125 + 184) = v218;
  *(v125 + 160) = v141;
  sub_1CA94C1E8();
  *(v217 + 56) = sub_1CA2F864C();
  v142 = swift_allocObject();
  *(v142 + 16) = xmmword_1CA981300;
  *(v142 + 32) = @"AlwaysShowsButton";
  *(v142 + 40) = 1;
  v143 = v209;
  *(v142 + 64) = MEMORY[0x1E69E6370];
  *(v142 + 72) = v143;
  *(v142 + 80) = 0xD00000000000001FLL;
  *(v142 + 88) = 0x80000001CA9B69D0;
  v144 = MEMORY[0x1E69E6158];
  v145 = v206;
  *(v142 + 104) = MEMORY[0x1E69E6158];
  *(v142 + 112) = v145;
  *(v142 + 120) = 0x746C7561666544;
  *(v142 + 128) = 0xE700000000000000;
  *(v142 + 144) = v144;
  *(v142 + 152) = @"DisallowedVariableTypes";
  v146 = v144;
  *(v142 + 160) = &unk_1F49FB2C0;
  v147 = v202;
  *(v142 + 184) = v203;
  *(v142 + 192) = v208;
  *(v142 + 200) = v147;
  *(v142 + 208) = 0x80000001CA9B69F0;
  v148 = v207;
  *(v142 + 224) = v146;
  *(v142 + 232) = v148;
  v149 = @"AlwaysShowsButton";
  v150 = @"DisallowedVariableTypes";
  v151 = sub_1CA94C438();
  v153 = v152;
  v154 = sub_1CA94C438();
  v156 = v155;
  v206 = &v198;
  MEMORY[0x1EEE9AC00](v154);
  v157 = &v198 - v222;
  sub_1CA948D98();
  v158 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v158);
  v159 = &v198 - v220;
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v142 + 240) = sub_1CA2F9F14(v151, v153, v154, v156, 0, 0, v157, v159);
  *(v142 + 264) = v218;
  *(v142 + 272) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v161 = swift_allocObject();
  *(v161 + 16) = v204;
  v162 = @"RequiredResources";
  v163 = MEMORY[0x1E69E6158];
  *(v161 + 32) = sub_1CA94C1E8();
  *(v142 + 304) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v142 + 280) = v161;
  v164 = sub_1CA94C368();
  *(v142 + 344) = v163;
  v165 = v210;
  *(v142 + 312) = v164;
  *(v142 + 320) = v165;
  *(v142 + 328) = v201;
  sub_1CA94C1E8();
  *(v217 + 64) = sub_1CA2F864C();
  v166 = swift_allocObject();
  *(v166 + 16) = v212;
  *(v166 + 32) = v209;
  *(v166 + 40) = 0xD000000000000014;
  *(v166 + 48) = 0x80000001CA99B500;
  v167 = v208;
  *(v166 + 64) = v163;
  *(v166 + 72) = v167;
  *(v166 + 80) = 0x747865544657;
  *(v166 + 88) = 0xE600000000000000;
  v168 = v207;
  *(v166 + 104) = v163;
  *(v166 + 112) = v168;
  v169 = sub_1CA94C438();
  v171 = v170;
  v172 = sub_1CA94C438();
  v174 = v173;
  v215 = &v198;
  MEMORY[0x1EEE9AC00](v172);
  v175 = &v198 - v222;
  sub_1CA948D98();
  v176 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v176);
  v177 = &v198 - v220;
  sub_1CA948B68();

  v178 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v166 + 120) = sub_1CA2F9F14(v169, v171, v172, v174, 0, 0, v175, v177);
  *(v166 + 144) = v218;
  *(v166 + 152) = @"Multiline";
  *(v166 + 184) = MEMORY[0x1E69E6370];
  *(v166 + 160) = 1;
  v179 = @"Multiline";
  sub_1CA94C1E8();
  v180 = sub_1CA2F864C();
  v181 = v217;
  *(v217 + 72) = v180;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v183 = v211;
  v211[45] = v181;
  v183[48] = v182;
  v183[49] = @"ParameterSummary";
  v184 = @"ParameterSummary";
  v185 = sub_1CA94C438();
  v187 = v186;
  v188 = sub_1CA94C438();
  v190 = v189;
  v218 = &v198;
  MEMORY[0x1EEE9AC00](v188);
  v191 = &v198 - v222;
  sub_1CA948D98();
  v192 = [v221 bundleURL];
  MEMORY[0x1EEE9AC00](v192);
  v193 = &v198 - v220;
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v185, v187, v188, v190, 0, 0, v191, v193);
  v196 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v183[53] = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v183[50] = v196;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA44A094()
{
  v244 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  strcpy((inited + 40), "WFOutputAction");
  *(inited + 55) = -18;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v258 = sub_1CA94C438();
  v5 = v4;
  v6 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA948E58();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v262 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v263 = v11;
  v12 = v234 - v262;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v260 = qword_1EDB9F690;
  v13 = [qword_1EDB9F690 bundleURL];
  v14 = sub_1CA948BA8();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v259 = v15;
  v261 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = v234 - v261;
  sub_1CA948B68();

  v17 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v18 = sub_1CA2F9F14(v258, v5, v6, v8, 0, 0, v12, v16);
  v19 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v258 = v19;
  *(inited + 80) = v18;
  *(inited + 104) = v19;
  *(inited + 112) = @"AdditionalParameterSummaries";
  v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v255 = swift_allocObject();
  *(v255 + 1) = xmmword_1CA9813B0;
  v256 = swift_allocObject();
  v253 = xmmword_1CA981470;
  *(v256 + 16) = xmmword_1CA981470;
  v252 = "quit|return|workflow";
  v20 = @"AdditionalParameterSummaries";
  v250 = sub_1CA94C438();
  v22 = v21;
  v23 = sub_1CA94C438();
  v25 = v24;
  v251 = v234;
  MEMORY[0x1EEE9AC00](v23);
  v257 = inited;
  v26 = v234 - v262;
  sub_1CA948D98();
  v27 = v260;
  v28 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v28);
  v29 = v261;
  sub_1CA948B68();

  v30 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v31 = sub_1CA2F9F14(v250, v22, v23, v25, 0, 0, v26, v234 - v29);
  v32 = objc_allocWithZone(WFActionParameterSummaryValue);
  v33 = sub_1CA65DD78(0xD000000000000035, v252 | 0x8000000000000000, v31);
  v34 = v256;
  *(v256 + 32) = v33;
  v252 = "${WFNoOutputSurfaceBehavior}";
  v35 = sub_1CA94C438();
  v249 = v36;
  v250 = v35;
  v37 = sub_1CA94C438();
  v248 = v38;
  v251 = v234;
  MEMORY[0x1EEE9AC00](v37);
  v39 = v234 - v262;
  sub_1CA948D98();
  v40 = [v27 bundleURL];
  MEMORY[0x1EEE9AC00](v40);
  sub_1CA948B68();

  v41 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v42 = sub_1CA2F9F14(v250, v249, v37, v248, 0, 0, v39, v234 - v29);
  v43 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v34 + 40) = sub_1CA65DD78(0xD00000000000002ELL, v252 | 0x8000000000000000, v42);
  v252 = "eBehavior(Do Nothing),WFOutput";
  v44 = sub_1CA94C438();
  v249 = v45;
  v250 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v251 = v234;
  MEMORY[0x1EEE9AC00](v46);
  v49 = v262;
  sub_1CA948D98();
  v50 = v260;
  v51 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v261;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v250, v249, v46, v48, 0, 0, v234 - v49, v234 - v52);
  v55 = objc_allocWithZone(WFActionParameterSummaryValue);
  v56 = sub_1CA65DD78(0xD000000000000036, v252 | 0x8000000000000000, v54);
  v57 = v256;
  *(v256 + 48) = v56;
  v58 = sub_1CA94C438();
  v250 = v59;
  v251 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v252 = v234;
  MEMORY[0x1EEE9AC00](v60);
  sub_1CA948D98();
  v63 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v251, v250, v60, v62, 0, 0, v234 - v49, v234 - v52);
  v66 = objc_allocWithZone(WFActionParameterSummary);
  v67 = sub_1CA50D4C4(v57, v65);
  v68 = v255;
  v255[4] = v67;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445888, &unk_1CA988350);
  v70 = v257;
  v257[15] = v68;
  v70[18] = v69;
  v70[19] = @"BlocksSnapping";
  v71 = MEMORY[0x1E69E6370];
  *(v70 + 160) = 1;
  v70[23] = v71;
  v70[24] = @"Description";
  v256 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v72 = swift_initStackObject();
  v243 = xmmword_1CA981310;
  *(v72 + 16) = xmmword_1CA981310;
  *(v72 + 32) = @"DescriptionSummary";
  v73 = @"BlocksSnapping";
  v74 = @"Description";
  v75 = @"DescriptionSummary";
  v76 = sub_1CA94C438();
  v78 = v77;
  v79 = sub_1CA94C438();
  v81 = v80;
  v255 = v234;
  MEMORY[0x1EEE9AC00](v79);
  v82 = v234 - v262;
  sub_1CA948D98();
  v83 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v83);
  v84 = v234 - v261;
  sub_1CA948B68();

  v85 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v86 = sub_1CA2F9F14(v76, v78, v79, v81, 0, 0, v82, v84);
  *(v72 + 64) = v258;
  *(v72 + 40) = v86;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v87 = v256;
  v88 = sub_1CA6B3784();
  v89 = v257;
  v257[25] = v88;
  v89[28] = v87;
  v89[29] = @"IconColor";
  v89[30] = 1702194242;
  v89[31] = 0xE400000000000000;
  v90 = MEMORY[0x1E69E6158];
  v89[33] = MEMORY[0x1E69E6158];
  v89[34] = @"IconSymbol";
  v89[35] = 0xD000000000000022;
  v89[36] = 0x80000001CA9B6EA0;
  v89[38] = v90;
  v89[39] = @"Input";
  v91 = v90;
  v92 = v89;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v93 = swift_initStackObject();
  *(v93 + 16) = xmmword_1CA981350;
  *(v93 + 32) = 0x656C7069746C754DLL;
  *(v93 + 40) = 0xE800000000000000;
  *(v93 + 48) = 1;
  v94 = MEMORY[0x1E69E6370];
  *(v93 + 72) = MEMORY[0x1E69E6370];
  strcpy((v93 + 80), "ParameterKey");
  *(v93 + 93) = 0;
  *(v93 + 94) = -5120;
  *(v93 + 96) = 0x74757074754F4657;
  *(v93 + 104) = 0xE800000000000000;
  *(v93 + 120) = v91;
  *(v93 + 128) = 0x6465726975716552;
  *(v93 + 136) = 0xE800000000000000;
  *(v93 + 144) = 0;
  *(v93 + 168) = v94;
  *(v93 + 176) = 0x7365707954;
  *(v93 + 184) = 0xE500000000000000;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v93 + 216) = v252;
  *(v93 + 192) = &unk_1F49FB370;
  v95 = @"IconColor";
  v96 = @"IconSymbol";
  v97 = @"Input";
  v98 = sub_1CA94C1E8();
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v92[40] = v98;
  v92[43] = v99;
  v92[44] = @"Name";
  v100 = @"Name";
  v101 = sub_1CA94C438();
  v103 = v102;
  v104 = sub_1CA94C438();
  v106 = v105;
  MEMORY[0x1EEE9AC00](v104);
  v107 = v234 - v262;
  sub_1CA948D98();
  v108 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v108);
  v109 = v234 - v261;
  sub_1CA948B68();

  v110 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v111 = sub_1CA2F9F14(v101, v103, v104, v106, 0, 0, v107, v109);
  v112 = v257;
  v257[45] = v111;
  v112[48] = v258;
  v112[49] = @"Parameters";
  v256 = swift_allocObject();
  *(v256 + 16) = v253;
  v255 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v113 = swift_allocObject();
  *(v113 + 16) = xmmword_1CA981400;
  v242 = 0x80000001CA99B500;
  *(v113 + 32) = @"Class";
  *(v113 + 40) = 0xD000000000000014;
  *(v113 + 48) = 0x80000001CA99B500;
  v114 = MEMORY[0x1E69E6158];
  *(v113 + 64) = MEMORY[0x1E69E6158];
  *(v113 + 72) = @"DefaultValue";
  *(v113 + 80) = 0;
  *(v113 + 88) = 0xE000000000000000;
  *(v113 + 104) = v114;
  *(v113 + 112) = @"Key";
  *(v113 + 120) = 0x74757074754F4657;
  *(v113 + 128) = 0xE800000000000000;
  *(v113 + 144) = v114;
  *(v113 + 152) = @"Label";
  v115 = @"Class";
  v116 = @"DefaultValue";
  v117 = @"Key";
  v118 = @"Label";
  v119 = v115;
  v120 = v116;
  v121 = v117;
  v122 = v118;
  v248 = v119;
  v247 = v120;
  v249 = v121;
  v250 = v122;
  v123 = @"Parameters";
  v245 = sub_1CA94C438();
  v241 = v124;
  v125 = sub_1CA94C438();
  v127 = v126;
  v246 = v234;
  MEMORY[0x1EEE9AC00](v125);
  v128 = v234 - v262;
  sub_1CA948D98();
  v129 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v129);
  v130 = v234 - v261;
  sub_1CA948B68();

  v131 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v113 + 160) = sub_1CA2F9F14(v245, v241, v125, v127, 0, 0, v128, v130);
  v132 = v258;
  *(v113 + 184) = v258;
  *(v113 + 192) = @"Multiline";
  *(v113 + 200) = 1;
  *(v113 + 224) = MEMORY[0x1E69E6370];
  *(v113 + 232) = @"Placeholder";
  v133 = @"Multiline";
  v134 = @"Placeholder";
  v241 = v133;
  v240 = v134;
  v245 = sub_1CA94C438();
  v239 = v135;
  v136 = sub_1CA94C438();
  v138 = v137;
  v246 = v234;
  MEMORY[0x1EEE9AC00](v136);
  v139 = v262;
  sub_1CA948D98();
  v140 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v140);
  v141 = v234 - v261;
  sub_1CA948B68();

  v142 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v143 = sub_1CA2F9F14(v245, v239, v136, v138, 0, 0, v234 - v139, v141);
  *(v113 + 264) = v132;
  *(v113 + 240) = v143;
  v239 = "eter";
  *(v113 + 272) = sub_1CA94C368();
  *(v113 + 304) = MEMORY[0x1E69E6370];
  *(v113 + 280) = 1;
  _s3__C3KeyVMa_0(0);
  v246 = v144;
  v245 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v256 + 32) = sub_1CA2F864C();
  v145 = swift_allocObject();
  *(v145 + 16) = xmmword_1CA981380;
  *(v145 + 32) = v248;
  *(v145 + 40) = 0xD000000000000016;
  *(v145 + 48) = 0x80000001CA99C4A0;
  v146 = MEMORY[0x1E69E6158];
  v147 = v247;
  *(v145 + 64) = MEMORY[0x1E69E6158];
  *(v145 + 72) = v147;
  *(v145 + 80) = 0x6968746F4E206F44;
  *(v145 + 88) = 0xEA0000000000676ELL;
  *(v145 + 104) = v146;
  *(v145 + 112) = @"DisallowedVariableTypes";
  *(v145 + 120) = &unk_1F49FB3A0;
  *(v145 + 144) = v252;
  *(v145 + 152) = @"Items";
  v254 = swift_allocObject();
  *(v254 + 1) = v253;
  *&v253 = @"DisallowedVariableTypes";
  v148 = @"Items";
  v149 = sub_1CA94C438();
  v236 = v150;
  v237 = v149;
  v151 = sub_1CA94C438();
  v235 = v152;
  v238 = v234;
  MEMORY[0x1EEE9AC00](v151);
  sub_1CA948D98();
  v153 = v260;
  v154 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = v234 - v261;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v157 = sub_1CA2F9F14(v237, v236, v151, v235, 0, 0, v234 - v139, v155);
  v158 = v254;
  v254[4] = v157;
  v159 = sub_1CA94C438();
  v236 = v160;
  v237 = v159;
  v161 = sub_1CA94C438();
  v235 = v162;
  v238 = v234;
  MEMORY[0x1EEE9AC00](v161);
  sub_1CA948D98();
  v163 = [v153 bundleURL];
  v234[1] = v234;
  MEMORY[0x1EEE9AC00](v163);
  v164 = v261;
  sub_1CA948B68();

  v165 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v158[5] = sub_1CA2F9F14(v237, v236, v161, v235, 0, 0, v234 - v139, v234 - v164);
  v166 = sub_1CA94C438();
  v236 = v167;
  v237 = v166;
  v168 = sub_1CA94C438();
  v235 = v169;
  v238 = v234;
  MEMORY[0x1EEE9AC00](v168);
  sub_1CA948D98();
  v170 = v260;
  v171 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v171);
  sub_1CA948B68();

  v172 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v173 = sub_1CA2F9F14(v237, v236, v168, v235, 0, 0, v234 - v139, v234 - v164);
  v174 = v254;
  v254[6] = v173;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v145 + 160) = v174;
  v176 = v249;
  *(v145 + 184) = v175;
  *(v145 + 192) = v176;
  *(v145 + 200) = 0xD000000000000019;
  *(v145 + 208) = 0x80000001CA997030;
  v177 = v250;
  *(v145 + 224) = MEMORY[0x1E69E6158];
  *(v145 + 232) = v177;
  v178 = sub_1CA94C438();
  v237 = v179;
  v238 = v178;
  v180 = sub_1CA94C438();
  v182 = v181;
  v254 = v234;
  MEMORY[0x1EEE9AC00](v180);
  v183 = v262;
  sub_1CA948D98();
  v184 = [v170 bundleURL];
  MEMORY[0x1EEE9AC00](v184);
  v185 = v261;
  sub_1CA948B68();

  v186 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v187 = sub_1CA2F9F14(v238, v237, v180, v182, 0, 0, v234 - v183, v234 - v185);
  *(v145 + 264) = v258;
  *(v145 + 240) = v187;
  sub_1CA94C1E8();
  *(v256 + 40) = sub_1CA2F864C();
  v188 = swift_allocObject();
  *(v188 + 16) = xmmword_1CA9813E0;
  v189 = v247;
  *(v188 + 32) = v248;
  *(v188 + 40) = 0xD000000000000014;
  *(v188 + 48) = v242;
  v190 = MEMORY[0x1E69E6158];
  *(v188 + 64) = MEMORY[0x1E69E6158];
  *(v188 + 72) = v189;
  *(v188 + 80) = 0;
  *(v188 + 88) = 0xE000000000000000;
  *(v188 + 104) = v190;
  v191 = v190;
  *(v188 + 112) = v253;
  *(v188 + 120) = &unk_1F49FB3E0;
  v192 = v249;
  *(v188 + 144) = v252;
  *(v188 + 152) = v192;
  *(v188 + 160) = 0x6E6F707365524657;
  *(v188 + 168) = 0xEA00000000006573;
  v193 = v250;
  *(v188 + 184) = v191;
  *(v188 + 192) = v193;
  v194 = sub_1CA94C438();
  v252 = v195;
  *&v253 = v194;
  v196 = sub_1CA94C438();
  v251 = v197;
  v254 = v234;
  MEMORY[0x1EEE9AC00](v196);
  sub_1CA948D98();
  v198 = v260;
  v199 = [v260 bundleURL];
  v250 = v234;
  MEMORY[0x1EEE9AC00](v199);
  sub_1CA948B68();

  v200 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v188 + 200) = sub_1CA2F9F14(v253, v252, v196, v251, 0, 0, v234 - v183, v234 - v185);
  v201 = v241;
  *(v188 + 224) = v258;
  *(v188 + 232) = v201;
  *(v188 + 240) = 1;
  v202 = v240;
  *(v188 + 264) = MEMORY[0x1E69E6370];
  *(v188 + 272) = v202;
  v203 = sub_1CA94C438();
  v252 = v204;
  *&v253 = v203;
  v205 = sub_1CA94C438();
  v251 = v206;
  v254 = v234;
  MEMORY[0x1EEE9AC00](v205);
  v207 = v234 - v262;
  sub_1CA948D98();
  v208 = [v198 bundleURL];
  MEMORY[0x1EEE9AC00](v208);
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v253, v252, v205, v251, 0, 0, v207, v234 - v185);
  *(v188 + 304) = v258;
  *(v188 + 280) = v210;
  *(v188 + 312) = sub_1CA94C368();
  *(v188 + 320) = 1;
  *(v188 + 344) = MEMORY[0x1E69E6370];
  *(v188 + 352) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v211 = swift_allocObject();
  *(v211 + 16) = v243;
  v212 = @"RequiredResources";
  *(v211 + 32) = sub_1CA94C1E8();
  *(v188 + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v188 + 360) = v211;
  sub_1CA94C1E8();
  v213 = sub_1CA2F864C();
  v214 = v256;
  *(v256 + 48) = v213;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v216 = v257;
  v257[50] = v214;
  v216[53] = v215;
  v216[54] = @"ParameterSummary";
  v217 = @"ParameterSummary";
  v218 = sub_1CA94C438();
  v220 = v219;
  v221 = sub_1CA94C438();
  v223 = v222;
  MEMORY[0x1EEE9AC00](v221);
  v224 = v234 - v262;
  sub_1CA948D98();
  v225 = [v260 bundleURL];
  MEMORY[0x1EEE9AC00](v225);
  v226 = v234 - v261;
  sub_1CA948B68();

  v227 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v228 = sub_1CA2F9F14(v218, v220, v221, v223, 0, 0, v224, v226);
  v229 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v230 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v231 = v257;
  v257[55] = v229;
  v231[58] = v230;
  v231[59] = @"ResidentCompatible";
  v231[63] = MEMORY[0x1E69E6370];
  *(v231 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v232 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t RowTemplateLayoutElement.rawValue.getter()
{
  result = 0x79747265706F7270;
  switch(*v0)
  {
    case 1:
    case 2:
      result = 0x726F74617265706FLL;
      break;
    case 3:
      result = 0x65756C6176;
      break;
    case 4:
      result = 0x61765F726568746FLL;
      break;
    case 5:
      result = 1953066613;
      break;
    default:
      return result;
  }

  return result;
}

Swift::String __swiftcall RowTemplateFormatString.stringValue(condition:)(Swift::Bool condition)
{
  v2 = *v1;
  if (condition)
  {
    sub_1CA44CF44();
  }

  else
  {
    sub_1CA44D0DC();
  }

  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    OUTLINED_FUNCTION_0_3();
  }

  v3 = qword_1EDB9F690;
  v4 = sub_1CA94C368();
  v5 = sub_1CA94C368();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  sub_1CA94C3A8();
  sub_1CA27BAF0();
  v7 = sub_1CA94D1B8();
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result._object = v11;
  result._countAndFlagsBits = v10;
  return result;
}

uint64_t static RowTemplateLayoutElement.from(_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v5 = OUTLINED_FUNCTION_1_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445898, &qword_1CA988368);
  v13 = OUTLINED_FUNCTION_1_0(v12);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v24[-v18];
  sub_1CA949438();
  v26 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360);
  sub_1CA949658();
  v27 = a1;
  v28 = a2;
  sub_1CA44D248();
  v20 = sub_1CA94C2C8();
  v25 = v19;
  sub_1CA390C0C(sub_1CA44D29C, v24, v20);
  v22 = v21;

  (*(v7 + 8))(v11, v4);
  (*(v15 + 8))(v19, v12);
  return v22;
}

uint64_t sub_1CA44C154@<X0>(uint64_t a1@<X8>)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v47 = *(v1 - 8);
  v2 = *(v47 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v40 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  v41 = *(v7 - 8);
  v42 = v7;
  v8 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v32 - v9;
  v45 = sub_1CA9495F8();
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C8, &qword_1CA9884A0);
  v46 = *(v39 - 8);
  v15 = *(v46 + 64);
  v16 = MEMORY[0x1EEE9AC00](v39);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v37 = v32 - v19;
  v50 = 31524;
  v51 = 0xE200000000000000;
  v38 = sub_1CA44D62C();
  MEMORY[0x1CCA9E220](v52, &v50, MEMORY[0x1E69E6158], v38);
  sub_1CA9493E8();
  v44 = v6;
  sub_1CA44C6D0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445898, &qword_1CA988368);
  sub_1CA949428();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498);
  v32[0] = v10;
  v32[1] = v20;
  sub_1CA9495D8();
  v21 = *(v47 + 8);
  v47 += 8;
  v36 = v21;
  v21(v6, v1);
  v22 = *(v11 + 8);
  v34 = v11 + 8;
  v35 = v22;
  v22(v14, v45);
  MEMORY[0x1CCA9E260](v10, v20);
  v23 = sub_1CA25C3BC(&qword_1EC4458E0, &qword_1EC4458C8, &qword_1CA9884A0);
  v24 = v37;
  v25 = v39;
  MEMORY[0x1CCA9E220](v18, v39, v23);
  v26 = *(v46 + 8);
  v46 += 8;
  v33 = v26;
  v26(v18, v25);
  v48 = 125;
  v49 = 0xE100000000000000;
  MEMORY[0x1CCA9E220](&v50, &v48, MEMORY[0x1E69E6158], v38);
  v48 = v52[0];
  v49 = v52[1];
  sub_1CA9493D8();

  sub_1CA9493E8();
  v27 = v40;
  sub_1CA9495C8();
  v28 = v32[0];
  v29 = v24;
  sub_1CA9495B8();
  v30 = v36;
  v36(v27, v1);
  v35(v14, v45);
  sub_1CA44CBA0(v28, v50, v51, v43);

  (*(v41 + 8))(v28, v42);
  v30(v44, v1);
  return v33(v29, v25);
}

uint64_t sub_1CA44C6D0@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = sub_1CA9493F8();
  v44 = *(v1 - 8);
  v2 = *(v44 + 64);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v42 = &v39 - v13;
  v45 = sub_1CA9495F8();
  v43 = *(v45 - 8);
  v14 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458E8, &qword_1CA9884A8);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v39 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458F0, &unk_1CA9884B0);
  v41 = *(v20 - 8);
  v21 = *(v41 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  sub_1CA949628();
  v27 = sub_1CA949638();
  __swift_storeEnumTagSinglePayload(v19, 0, 1, v27);
  sub_1CA9493E8();
  sub_1CA949608();
  v28 = sub_1CA44D680();
  v29 = v1;
  MEMORY[0x1CCA9E220](v5, v1, v28);
  v30 = *(v44 + 8);
  v30(v5, v1);
  v31 = v40;
  sub_1CA9493D8();
  v30(v7, v29);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498);
  v32 = MEMORY[0x1E69E67B0];
  v33 = v42;
  v34 = v46;
  v35 = v39;
  sub_1CA9495E8();
  (*(v47 + 8))(v31, v34);
  (*(v43 + 8))(v35, v45);
  sub_1CA44D6D8(v19);
  MEMORY[0x1CCA9E270](v33, v32);
  v36 = sub_1CA25C3BC(&qword_1EC445900, &qword_1EC4458F0, &unk_1CA9884B0);
  MEMORY[0x1CCA9E220](v24, v20, v36);
  v37 = *(v41 + 8);
  v37(v24, v20);
  sub_1CA9493D8();
  return (v37)(v26, v20);
}

uint64_t sub_1CA44CBA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a4;
  v19 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458C0, &qword_1CA988498);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v17 = sub_1CA9495F8();
  v11 = *(v17 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA9493E8();
  v20 = a2;
  v21 = a3;
  sub_1CA44D62C();
  sub_1CA9495C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458A0, &qword_1CA988370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445890, &qword_1CA988360);
  sub_1CA25C3BC(&qword_1EC4458A8, &qword_1EC445890, &qword_1CA988360);
  sub_1CA25C3BC(&qword_1EC4458D8, &qword_1EC4458C0, &qword_1CA988498);
  sub_1CA9495B8();
  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v17);
}

WorkflowKit::RowTemplateLayoutElement_optional sub_1CA44CDE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444A58, &qword_1CA988490);
  sub_1CA949678();
  v0 = MEMORY[0x1CCAA1280]();
  v2 = v1;

  v3._countAndFlagsBits = v0;
  v3._object = v2;
  return RowTemplateLayoutElement.init(rawValue:)(v3);
}

WorkflowKit::RowTemplateLayoutElement_optional __swiftcall RowTemplateLayoutElement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CA94D6E8();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1CA44CEEC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1CA2BF790();
}

uint64_t sub_1CA44CF1C@<X0>(uint64_t *a1@<X8>)
{
  result = RowTemplateLayoutElement.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1CA44CF44()
{
  switch(*v0)
  {
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
      sub_1CA94C438();
      if (qword_1EDB9F5F0 != -1)
      {
        OUTLINED_FUNCTION_0_3();
      }

      v1 = qword_1EDB9F690;
      v2 = sub_1CA94C368();
      v3 = sub_1CA94C368();

      v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

      v5 = sub_1CA94C3A8();
      result = v5;
      break;
    default:
      result = sub_1CA94D5F8();
      __break(1u);
      break;
  }

  return result;
}

uint64_t sub_1CA44D0DC()
{
  *v0;
  sub_1CA94C438();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB9F690;
  v2 = sub_1CA94C368();
  v3 = sub_1CA94C368();

  v4 = [v1 localizedStringForKey:v2 value:v3 table:0];

  v5 = sub_1CA94C3A8();
  return v5;
}

unint64_t sub_1CA44D248()
{
  result = qword_1EC4458B0;
  if (!qword_1EC4458B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458B0);
  }

  return result;
}

unint64_t sub_1CA44D2BC()
{
  result = qword_1EC4458B8;
  if (!qword_1EC4458B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RowTemplateLayoutElement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for RowTemplateLayoutElement(_BYTE *result, unsigned int a2, unsigned int a3)
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

unsigned __int8 *getEnumTagSinglePayload for RowTemplateFormatString(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
LABEL_18:
    v6 = *result;
    if (v6 >= 5)
    {
      v7 = v6 - 4;
    }

    else
    {
      v7 = 0;
    }

    if (v7 >= 6)
    {
      return (v7 - 5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 9;
    if (a2 + 9 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 9);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RowTemplateFormatString(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 9;
  if (a3 + 9 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xF7)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xF6)
  {
    v7 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1CA44D5F8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 5)
  {
    return v1 - 4;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CA44D60C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 4;
  }

  return result;
}

unint64_t sub_1CA44D62C()
{
  result = qword_1EC4458D0;
  if (!qword_1EC4458D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458D0);
  }

  return result;
}

unint64_t sub_1CA44D680()
{
  result = qword_1EC4458F8;
  if (!qword_1EC4458F8)
  {
    sub_1CA9493F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4458F8);
  }

  return result;
}

uint64_t sub_1CA44D6D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4458E8, &qword_1CA9884A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void RunnableCollection.init(bundleIdentifier:namedQueryInfo:entries:)(id a1@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    v10 = [a1 name];
    v11 = sub_1CA94C3A8();
    v13 = v12;
  }

  else
  {
    if (qword_1EDB9F960 != -1)
    {
      swift_once();
    }

    v14 = sub_1CA2786EC(a2, a3);
    if (v15)
    {
      v11 = v14;
      v13 = v15;
    }

    else
    {
      sub_1CA94C218();
      v11 = a2;
      v13 = a3;
    }
  }

  *a5 = v11;
  a5[1] = v13;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = a1;
  a5[5] = a4;
}

uint64_t RunnableCollection.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CA94C218();
  return v1;
}

uint64_t RunnableCollection.bundleIdentifier.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1CA94C218();
  return v1;
}

void *RunnableCollection.namedQueryInfo.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

uint64_t RunnableCollection.id.getter(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v10 = *v1;
  v11 = v1[1];
  sub_1CA94C218();
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  MEMORY[0x1CCAA1300](v3, v4);
  MEMORY[0x1CCAA1300](58, 0xE100000000000000);
  v6 = *(a1 + 16);
  v7 = *(*(a1 + 24) + 8);
  sub_1CA94C778();
  v8 = sub_1CA94D798();
  MEMORY[0x1CCAA1300](v8);

  return v10;
}

uint64_t RunnableCollection.with<A>(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[1];
  v4 = v2[2];
  v5 = v2[3];
  v6 = v2[4];
  *a2 = *v2;
  a2[1] = v3;
  a2[2] = v4;
  a2[3] = v5;
  a2[4] = v6;
  a2[5] = a1;
  v7 = v6;
  sub_1CA94C218();
  sub_1CA94C218();

  return sub_1CA94C218();
}

uint64_t static RunnableCollection.== infix(_:_:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a2[2];
  v10 = a2[3];
  v12 = a2[4];
  v11 = a2[5];
  v13 = *a1 == *a2 && a1[1] == a2[1];
  if (!v13 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  v14 = v5 == v9 && v6 == v10;
  if (!v14 && (sub_1CA94D7F8() & 1) == 0)
  {
    return 0;
  }

  if (!v7)
  {
    if (!v12)
    {
      goto LABEL_14;
    }

    return 0;
  }

  if (!v12)
  {
    return 0;
  }

  sub_1CA25B3D0(0, &qword_1EDB9F6D8, 0x1E69E0990);
  v15 = v12;
  v16 = v7;
  v17 = sub_1CA94CFD8();

  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v18 = *(*(a4 + 8) + 8);

  return sub_1CA94C788();
}

uint64_t RunnableCollection.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  sub_1CA94C458();
  sub_1CA94C458();
  sub_1CA94D938();
  if (v9)
  {
    v10 = v9;
    sub_1CA94CFE8();
  }

  v11 = *(a2 + 16);
  v12 = *(*(a2 + 24) + 8);

  return sub_1CA94C768();
}

uint64_t RunnableCollection.hashValue.getter(uint64_t a1)
{
  v3 = v1[1];
  v4 = *(v1 + 4);
  v5 = *(v1 + 5);
  v8 = *v1;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  sub_1CA94D918();
  RunnableCollection.hash(into:)(v7, a1);
  return sub_1CA94D968();
}

uint64_t sub_1CA44DC2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = RunnableCollection.id.getter(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1CA44DC68(uint64_t a1, uint64_t a2)
{
  sub_1CA94D918();
  RunnableCollection.hash(into:)(v4, a2);
  return sub_1CA94D968();
}

uint64_t sub_1CA44DCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1CA44DD58;

  return RunnableDataSource.workflow(for:)();
}

uint64_t sub_1CA44DD58()
{
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = *(*v1 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_13();
  *v6 = v5;

  v8 = *(v5 + 8);
  if (!v0)
  {
    v7 = v3;
  }

  return v8(v7);
}

uint64_t RunnableDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  v0[19] = v1;
  v0[20] = v2;
  v0[18] = v3;
  v4 = *(v2 + 48);
  OUTLINED_FUNCTION_4_19();
  v12 = v5 + *v5;
  v7 = *(v6 + 4);
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v9 = OUTLINED_FUNCTION_0_39(v8);

  return v10(v9);
}

uint64_t sub_1CA44DF54()
{
  OUTLINED_FUNCTION_0();
  v2 = *(*v1 + 168);
  v3 = *v1;
  *(v3 + 176) = v4;

  if (v0)
  {
    v5 = *(v3 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1CA44E084, 0, 0);
  }
}

uint64_t sub_1CA44E084()
{
  v1 = v0[22];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v5 = [objc_allocWithZone(WFWorkflow) init];
  v0[23] = v5;
  [v5 addAction_];
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = *(AssociatedConformanceWitness + 24);
  v8 = swift_checkMetadataState();
  v7(v8, AssociatedConformanceWitness);
  v9 = sub_1CA94C368();

  [v5 setName_];

  v0[2] = v0;
  v0[3] = sub_1CA44E270;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445908, &qword_1CA9884C8);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA44E498;
  v0[13] = &block_descriptor_12;
  v0[14] = v10;
  [v5 configureAsSingleStepShortcutIfNecessary_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1CA44E270()
{
  OUTLINED_FUNCTION_0();
  v4 = *v0;
  v1 = *v0;
  OUTLINED_FUNCTION_13();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CA44E344, 0, 0);
}

uint64_t sub_1CA44E344()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[23];
  v2 = [objc_allocWithZone(WFAddShortcutEvent) init];
  v3 = [v1 actions];
  sub_1CA25B3D0(0, &qword_1EDB9F5D0, off_1E836DCF8);
  sub_1CA94C658();

  v4 = sub_1CA25B410();

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (HIDWORD(v4))
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = v0[22];
  [v2 setActionCount_];
  v7 = @"ShortcutSourceAppShortcut";
  [v2 setShortcutSource_];

  [v2 track];
  v8 = v0[1];
  v9 = v0[23];

  return v8(v9);
}

uint64_t sub_1CA44E498(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume();
}

uint64_t sub_1CA44E4CC()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  v2 = *(v0 + 8);
  OUTLINED_FUNCTION_4_33(&unk_1CA98AFC8);
  v9 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_6_1(v5);

  return v9(v7, v2);
}

uint64_t sub_1CA44E56C()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_4_33(&unk_1CA98AFC0);
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t sub_1CA44E600()
{
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_4_33(&dword_1CA98AEE0);
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_20(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_6_1(v4);

  return v8(v6);
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
  return __swift_destroy_boxed_opaque_existential_0((a1 + 32));
}

{
  v1 = *(a1 + 40);
}

uint64_t dispatch thunk of RunnableLoader.action(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_4_19();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_39(v6);

  return v9(v8);
}

uint64_t dispatch thunk of RunnableDataSource.action(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_4_19();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_39(v6);

  return v9(v8);
}

uint64_t dispatch thunk of RunnableDataSource.workflow(for:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_32();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_4_19();
  v11 = v2 + *v2;
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_0_39(v6);

  return v9(v8);
}

id sub_1CA44EA98()
{
  v220 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001BLL;
  *(inited + 48) = 0x80000001CA9B7370;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v231 = v12;
  v229 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v213 - v229;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v228 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v230 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v227 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v213 - v227;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v225 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v224 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v29 = v28;
  v30 = sub_1CA94C438();
  v32 = v31;
  *&v223 = &v213;
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v213 - v229;
  sub_1CA948D98();
  v34 = [v228 bundleURL];
  v226 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v213 - v227;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v38 = sub_1CA2F9F14(v27, v29, v30, v32, 0, 0, v33, v36);
  *(v24 + 64) = v225;
  *(v24 + 40) = v38;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v39 = v224;
  v40 = sub_1CA6B3784();
  v41 = v226;
  *(v226 + 20) = v40;
  *(v41 + 23) = v39;
  *(v41 + 24) = @"IconColor";
  *(v41 + 25) = 2036429383;
  *(v41 + 26) = 0xE400000000000000;
  v42 = MEMORY[0x1E69E6158];
  *(v41 + 28) = MEMORY[0x1E69E6158];
  *(v41 + 29) = @"IconSymbol";
  strcpy(v41 + 240, "chart.bar.fill");
  v41[255] = -18;
  *(v41 + 33) = v42;
  *(v41 + 34) = @"Input";
  v43 = v42;
  v44 = v41;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v45 = swift_initStackObject();
  v223 = xmmword_1CA981350;
  *(v45 + 16) = xmmword_1CA981350;
  *(v45 + 32) = 0x656C7069746C754DLL;
  *(v45 + 40) = 0xE800000000000000;
  v46 = MEMORY[0x1E69E6370];
  *(v45 + 48) = 1;
  *(v45 + 72) = v46;
  strcpy((v45 + 80), "ParameterKey");
  *(v45 + 93) = 0;
  *(v45 + 94) = -5120;
  *(v45 + 96) = 0x7475706E49;
  *(v45 + 104) = 0xE500000000000000;
  *(v45 + 120) = v43;
  *(v45 + 128) = 0x6465726975716552;
  *(v45 + 136) = 0xE800000000000000;
  *(v45 + 144) = 1;
  *(v45 + 168) = v46;
  *(v45 + 176) = 0x7365707954;
  v47 = v46;
  *(v45 + 184) = 0xE500000000000000;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v45 + 216) = v224;
  *(v45 + 192) = &unk_1F49FB580;
  v48 = @"IconColor";
  v49 = @"IconSymbol";
  v50 = @"Input";
  v51 = sub_1CA94C1E8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v222 = v52;
  *(v44 + 35) = v51;
  *(v44 + 38) = v52;
  *(v44 + 39) = @"LocallyProcessesData";
  v44[320] = 1;
  *(v44 + 43) = v47;
  *(v44 + 44) = @"Name";
  v53 = @"LocallyProcessesData";
  v54 = @"Name";
  v55 = sub_1CA94C438();
  v57 = v56;
  v58 = sub_1CA94C438();
  v60 = v59;
  v219 = &v213;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v213 - v229;
  sub_1CA948D98();
  v62 = v228;
  v63 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v213 - v227;
  sub_1CA948B68();

  v65 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v66 = sub_1CA2F9F14(v55, v57, v58, v60, 0, 0, v61, v64);
  v68 = v225;
  v67 = v226;
  *(v226 + 45) = v66;
  *(v67 + 48) = v68;
  *(v67 + 49) = @"Output";
  v69 = swift_allocObject();
  *(v69 + 16) = v223;
  *(v69 + 32) = 0x75736F6C63736944;
  *(v69 + 40) = 0xEF6C6576654C6572;
  *(v69 + 48) = 0x63696C627550;
  *(v69 + 56) = 0xE600000000000000;
  *(v69 + 72) = MEMORY[0x1E69E6158];
  *(v69 + 80) = 0x656C7069746C754DLL;
  *(v69 + 88) = 0xE800000000000000;
  *(v69 + 96) = 1;
  *(v69 + 120) = MEMORY[0x1E69E6370];
  *(v69 + 128) = 0x614E74757074754FLL;
  *(v69 + 136) = 0xEA0000000000656DLL;
  v70 = @"Output";
  v71 = sub_1CA94C438();
  v219 = v72;
  v73 = sub_1CA94C438();
  v75 = v74;
  v221 = &v213;
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v213 - v229;
  sub_1CA948D98();
  v77 = [v62 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v213 - v227;
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v69 + 144) = sub_1CA2F9F14(v71, v219, v73, v75, 0, 0, v76, v78);
  *(v69 + 168) = v68;
  *(v69 + 176) = 0x7365707954;
  *(v69 + 216) = v224;
  *(v69 + 184) = 0xE500000000000000;
  *(v69 + 192) = &unk_1F49FB5B0;
  v80 = MEMORY[0x1E69E6158];
  v81 = sub_1CA94C1E8();
  v82 = v226;
  *(v226 + 50) = v81;
  *(v82 + 53) = v222;
  *(v82 + 54) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v222 = swift_allocObject();
  *(v222 + 16) = xmmword_1CA981360;
  v221 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v83 = swift_allocObject();
  v217 = v83;
  *(v83 + 16) = xmmword_1CA981370;
  *(v83 + 32) = @"Class";
  *(v83 + 40) = 0xD000000000000016;
  *(v83 + 48) = 0x80000001CA99C4A0;
  *(v83 + 64) = v80;
  *(v83 + 72) = @"DefaultValue";
  *(v83 + 80) = 0x65676172657641;
  *(v83 + 88) = 0xE700000000000000;
  *(v83 + 104) = v80;
  *(v83 + 112) = @"Items";
  v224 = swift_allocObject();
  *(v224 + 1) = xmmword_1CA985370;
  v218 = @"Class";
  v84 = @"Parameters";
  v85 = @"DefaultValue";
  v86 = @"Items";
  v87 = sub_1CA94C438();
  v214 = v88;
  v215 = v87;
  v89 = sub_1CA94C438();
  v213 = v90;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v229;
  sub_1CA948D98();
  v92 = v228;
  v93 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v93);
  v94 = v227;
  sub_1CA948B68();

  v95 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v96 = sub_1CA2F9F14(v215, v214, v89, v213, 0, 0, &v213 - v91, &v213 - v94);
  v224[4] = v96;
  v97 = sub_1CA94C438();
  v214 = v98;
  v215 = v97;
  v99 = sub_1CA94C438();
  v213 = v100;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v213 - v91;
  sub_1CA948D98();
  v102 = [v92 bundleURL];
  MEMORY[0x1EEE9AC00](v102);
  v103 = v94;
  sub_1CA948B68();

  v104 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v105 = sub_1CA2F9F14(v215, v214, v99, v213, 0, 0, v101, &v213 - v94);
  v106 = v224;
  v224[5] = v105;
  v107 = sub_1CA94C438();
  v214 = v108;
  v215 = v107;
  v109 = sub_1CA94C438();
  v213 = v110;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v109);
  v111 = v229;
  sub_1CA948D98();
  v112 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v112);
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106[6] = sub_1CA2F9F14(v215, v214, v109, v213, 0, 0, &v213 - v111, &v213 - v103);
  v114 = sub_1CA94C438();
  v214 = v115;
  v215 = v114;
  v116 = sub_1CA94C438();
  v213 = v117;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v116);
  sub_1CA948D98();
  v118 = v228;
  v119 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v119);
  sub_1CA948B68();

  v120 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v121 = sub_1CA2F9F14(v215, v214, v116, v213, 0, 0, &v213 - v111, &v213 - v103);
  v122 = v224;
  v224[7] = v121;
  v123 = sub_1CA94C438();
  v214 = v124;
  v215 = v123;
  v125 = sub_1CA94C438();
  v213 = v126;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v125);
  v127 = v229;
  sub_1CA948D98();
  v128 = [v118 bundleURL];
  MEMORY[0x1EEE9AC00](v128);
  sub_1CA948B68();

  v129 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v122[8] = sub_1CA2F9F14(v215, v214, v125, v213, 0, 0, &v213 - v127, &v213 - v103);
  v130 = sub_1CA94C438();
  v214 = v131;
  v215 = v130;
  v132 = sub_1CA94C438();
  v213 = v133;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v132);
  v134 = &v213 - v127;
  sub_1CA948D98();
  v135 = v228;
  v136 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v136);
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v215, v214, v132, v213, 0, 0, v134, &v213 - v103);
  v139 = v224;
  v224[9] = v138;
  v140 = sub_1CA94C438();
  v214 = v141;
  v215 = v140;
  v142 = sub_1CA94C438();
  v213 = v143;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v142);
  v144 = v229;
  sub_1CA948D98();
  v145 = [v135 bundleURL];
  MEMORY[0x1EEE9AC00](v145);
  sub_1CA948B68();

  v146 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139[10] = sub_1CA2F9F14(v215, v214, v142, v213, 0, 0, &v213 - v144, &v213 - v103);
  v147 = sub_1CA94C438();
  v214 = v148;
  v215 = v147;
  v149 = sub_1CA94C438();
  v151 = v150;
  v216 = &v213;
  MEMORY[0x1EEE9AC00](v149);
  v152 = &v213 - v144;
  sub_1CA948D98();
  v153 = v228;
  v154 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v154);
  v155 = &v213 - v227;
  sub_1CA948B68();

  v156 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v139[11] = sub_1CA2F9F14(v215, v214, v149, v151, 0, 0, v152, v155);
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v158 = v217;
  v217[15] = v139;
  v158[18] = v157;
  v158[19] = @"Key";
  v158[20] = 0xD000000000000015;
  v158[21] = 0x80000001CA9B7620;
  v158[23] = MEMORY[0x1E69E6158];
  v158[24] = @"Label";
  v159 = @"Key";
  v160 = @"Label";
  v215 = v159;
  v214 = v160;
  v161 = sub_1CA94C438();
  v163 = v162;
  v164 = sub_1CA94C438();
  v166 = v165;
  v224 = &v213;
  MEMORY[0x1EEE9AC00](v164);
  v167 = &v213 - v229;
  sub_1CA948D98();
  v168 = [v153 bundleURL];
  MEMORY[0x1EEE9AC00](v168);
  v169 = &v213 - v227;
  sub_1CA948B68();

  v170 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v171 = sub_1CA2F9F14(v161, v163, v164, v166, 0, 0, v167, v169);
  v158[28] = v225;
  v158[25] = v171;
  _s3__C3KeyVMa_0(0);
  v224 = v172;
  v216 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v222 + 32) = sub_1CA2F864C();
  v173 = swift_initStackObject();
  *(v173 + 16) = v223;
  *(v173 + 32) = v218;
  *(v173 + 40) = 0xD000000000000019;
  *(v173 + 48) = 0x80000001CA99B030;
  v174 = MEMORY[0x1E69E6158];
  v175 = v215;
  *(v173 + 64) = MEMORY[0x1E69E6158];
  *(v173 + 72) = v175;
  *(v173 + 80) = 0x7475706E49;
  *(v173 + 88) = 0xE500000000000000;
  v176 = v214;
  *(v173 + 104) = v174;
  *(v173 + 112) = v176;
  v177 = sub_1CA94C438();
  v218 = v178;
  v219 = v177;
  v179 = sub_1CA94C438();
  v217 = v180;
  *&v223 = &v213;
  MEMORY[0x1EEE9AC00](v179);
  v181 = &v213 - v229;
  sub_1CA948D98();
  v182 = v228;
  v183 = [v228 bundleURL];
  v215 = &v213;
  MEMORY[0x1EEE9AC00](v183);
  v184 = v227;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v173 + 120) = sub_1CA2F9F14(v219, v218, v179, v217, 0, 0, v181, &v213 - v184);
  v186 = v225;
  *(v173 + 144) = v225;
  *(v173 + 152) = @"Placeholder";
  v187 = @"Placeholder";
  v188 = sub_1CA94C438();
  v218 = v189;
  v219 = v188;
  v217 = sub_1CA94C438();
  v191 = v190;
  *&v223 = &v213;
  MEMORY[0x1EEE9AC00](v217);
  v192 = v229;
  sub_1CA948D98();
  v193 = [v182 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v219, v218, v217, v191, 0, 0, &v213 - v192, &v213 - v184);
  *(v173 + 184) = v186;
  *(v173 + 160) = v195;
  sub_1CA94C1E8();
  v196 = sub_1CA2F864C();
  v197 = v222;
  *(v222 + 40) = v196;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v199 = v226;
  *(v226 + 55) = v197;
  *(v199 + 58) = v198;
  *(v199 + 59) = @"ParameterSummary";
  v200 = @"ParameterSummary";
  v201 = sub_1CA94C438();
  v203 = v202;
  v204 = sub_1CA94C438();
  v206 = v205;
  v225 = &v213;
  MEMORY[0x1EEE9AC00](v204);
  sub_1CA948D98();
  v207 = [v228 bundleURL];
  MEMORY[0x1EEE9AC00](v207);
  v208 = &v213 - v227;
  sub_1CA948B68();

  v209 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v210 = sub_1CA2F9F14(v201, v203, v204, v206, 0, 0, &v213 - v192, v208);
  v211 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  *(v199 + 63) = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(v199 + 60) = v211;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA450440()
{
  v0 = sub_1CA949D18();
  v217 = *(v0 - 8);
  v218 = v0;
  v1 = *(v217 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v216 = &v211 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981450;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9B7710;
  *(inited + 64) = v4;
  *(inited + 72) = @"ActionKeywords";
  v5 = @"ActionClass";
  v6 = @"ActionKeywords";
  v229 = sub_1CA94C438();
  v8 = v7;
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA948E58();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v232 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  v233 = v14;
  v15 = &v211 - v232;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v234 = qword_1EDB9F690;
  v16 = [qword_1EDB9F690 bundleURL];
  v17 = sub_1CA948BA8();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v231 = v18;
  v235 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  v19 = &v211 - v235;
  sub_1CA948B68();

  v20 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v21 = sub_1CA2F9F14(v229, v8, v9, v11, 0, 0, v15, v19);
  v22 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v229 = v22;
  *(inited + 80) = v21;
  *(inited + 104) = v22;
  *(inited + 112) = @"Description";
  v228 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v23 = swift_initStackObject();
  v215 = xmmword_1CA981310;
  *(v23 + 16) = xmmword_1CA981310;
  *(v23 + 32) = @"DescriptionSummary";
  v24 = @"Description";
  v25 = @"DescriptionSummary";
  v26 = sub_1CA94C438();
  v28 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v227 = &v211;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v211 - v232;
  sub_1CA948D98();
  v33 = [v234 bundleURL];
  v230 = inited;
  v34 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v211 - v235;
  sub_1CA948B68();

  v36 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v37 = sub_1CA2F9F14(v26, v28, v29, v31, 0, 0, v32, v35);
  *(v23 + 64) = v229;
  *(v23 + 40) = v37;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v38 = v228;
  v39 = sub_1CA6B3784();
  v40 = v230;
  v230[15] = v39;
  v40[18] = v38;
  v40[19] = @"IconColor";
  v40[20] = 1702194242;
  v40[21] = 0xE400000000000000;
  v41 = MEMORY[0x1E69E6158];
  v40[23] = MEMORY[0x1E69E6158];
  v40[24] = @"IconSymbol";
  v40[25] = 0xD000000000000014;
  v40[26] = 0x80000001CA9B77D0;
  v40[28] = v41;
  v40[29] = @"Input";
  v42 = v40;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v43 = swift_initStackObject();
  v226 = xmmword_1CA981350;
  *(v43 + 16) = xmmword_1CA981350;
  *(v43 + 32) = 0x656C7069746C754DLL;
  *(v43 + 40) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6370];
  *(v43 + 48) = 1;
  *(v43 + 72) = v44;
  strcpy((v43 + 80), "ParameterKey");
  *(v43 + 93) = 0;
  *(v43 + 94) = -5120;
  *(v43 + 96) = 0x7475706E494657;
  *(v43 + 104) = 0xE700000000000000;
  *(v43 + 120) = v41;
  *(v43 + 128) = 0x6465726975716552;
  *(v43 + 136) = 0xE800000000000000;
  *(v43 + 144) = 1;
  *(v43 + 168) = v44;
  *(v43 + 176) = 0x7365707954;
  v45 = v44;
  *(v43 + 184) = 0xE500000000000000;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v43 + 216) = v225;
  *(v43 + 192) = &unk_1F49FB5E0;
  v46 = @"IconColor";
  v47 = @"IconSymbol";
  v48 = @"Input";
  v49 = sub_1CA94C1E8();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v228 = v50;
  v42[30] = v49;
  v42[33] = v50;
  v42[34] = @"InputPassthrough";
  *(v42 + 280) = 0;
  v42[38] = v45;
  v42[39] = @"Name";
  v51 = @"InputPassthrough";
  v52 = @"Name";
  v53 = sub_1CA94C438();
  v222 = v54;
  *&v223 = v53;
  v55 = sub_1CA94C438();
  v57 = v56;
  v224 = &v211;
  MEMORY[0x1EEE9AC00](v55);
  v58 = v232;
  sub_1CA948D98();
  v59 = v234;
  v60 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v60);
  v61 = &v211 - v235;
  sub_1CA948B68();

  v62 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v63 = sub_1CA2F9F14(v223, v222, v55, v57, 0, 0, &v211 - v58, v61);
  v65 = v229;
  v64 = v230;
  v230[40] = v63;
  v64[43] = v65;
  v64[44] = @"Output";
  v66 = swift_allocObject();
  *(v66 + 16) = v226;
  *(v66 + 32) = 0x75736F6C63736944;
  *(v66 + 40) = 0xEF6C6576654C6572;
  *(v66 + 48) = 0x63696C627550;
  *(v66 + 56) = 0xE600000000000000;
  *(v66 + 72) = MEMORY[0x1E69E6158];
  *(v66 + 80) = 0x656C7069746C754DLL;
  *(v66 + 88) = 0xE800000000000000;
  *(v66 + 96) = 0;
  *(v66 + 120) = MEMORY[0x1E69E6370];
  *(v66 + 128) = 0x614E74757074754FLL;
  *(v66 + 136) = 0xEA0000000000656DLL;
  v67 = @"Output";
  v68 = sub_1CA94C438();
  *&v226 = v69;
  v70 = sub_1CA94C438();
  v72 = v71;
  v227 = &v211;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v211 - v58;
  sub_1CA948D98();
  v74 = [v59 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v211 - v235;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v66 + 144) = sub_1CA2F9F14(v68, v226, v70, v72, 0, 0, v73, v75);
  *(v66 + 168) = v65;
  *(v66 + 176) = 0x7365707954;
  *(v66 + 216) = v225;
  *(v66 + 184) = 0xE500000000000000;
  *(v66 + 192) = &unk_1F49FB610;
  v77 = MEMORY[0x1E69E6158];
  v78 = sub_1CA94C1E8();
  v79 = v230;
  v230[45] = v78;
  v79[48] = v228;
  v79[49] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v228 = swift_allocObject();
  v223 = xmmword_1CA981470;
  *(v228 + 16) = xmmword_1CA981470;
  v227 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_1CA981370;
  v214 = 0xD000000000000016;
  *(v80 + 32) = @"Class";
  *(v80 + 40) = 0xD000000000000016;
  *(v80 + 48) = 0x80000001CA99C4A0;
  *(v80 + 64) = v77;
  *(v80 + 72) = @"DefaultValue";
  strcpy((v80 + 80), "Horizontally");
  *(v80 + 93) = 0;
  *(v80 + 94) = -5120;
  *(v80 + 104) = v77;
  *(v80 + 112) = @"Items";
  *&v226 = swift_allocObject();
  *(v226 + 16) = v223;
  v81 = @"Class";
  v82 = @"DefaultValue";
  *&v223 = v81;
  v213 = v82;
  v83 = @"Parameters";
  v84 = @"Items";
  v85 = sub_1CA94C438();
  v220 = v86;
  v221 = v85;
  v87 = sub_1CA94C438();
  v212 = v88;
  v222 = &v211;
  MEMORY[0x1EEE9AC00](v87);
  v89 = v232;
  sub_1CA948D98();
  v90 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v90);
  v91 = v235;
  sub_1CA948B68();

  v92 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v93 = sub_1CA2F9F14(v221, v220, v87, v212, 0, 0, &v211 - v89, &v211 - v91);
  *(v226 + 32) = v93;
  v94 = sub_1CA94C438();
  v220 = v95;
  v221 = v94;
  v96 = sub_1CA94C438();
  v212 = v97;
  v222 = &v211;
  MEMORY[0x1EEE9AC00](v96);
  sub_1CA948D98();
  v98 = v234;
  v99 = [v234 bundleURL];
  v211 = &v211;
  MEMORY[0x1EEE9AC00](v99);
  sub_1CA948B68();

  v100 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v101 = sub_1CA2F9F14(v221, v220, v96, v212, 0, 0, &v211 - v89, &v211 - v91);
  *(v226 + 40) = v101;
  v102 = sub_1CA94C438();
  v220 = v103;
  v221 = v102;
  v104 = sub_1CA94C438();
  v212 = v105;
  v222 = &v211;
  MEMORY[0x1EEE9AC00](v104);
  sub_1CA948D98();
  v106 = [v98 bundleURL];
  MEMORY[0x1EEE9AC00](v106);
  sub_1CA948B68();

  v107 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v108 = sub_1CA2F9F14(v221, v220, v104, v212, 0, 0, &v211 - v89, &v211 - v91);
  v109 = v226;
  *(v226 + 48) = v108;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  *(v80 + 120) = v109;
  *(v80 + 144) = v110;
  *(v80 + 152) = @"Key";
  *(v80 + 160) = 0xD000000000000012;
  *(v80 + 168) = 0x80000001CA9B78F0;
  *(v80 + 184) = MEMORY[0x1E69E6158];
  *(v80 + 192) = @"Label";
  v111 = @"Key";
  v112 = @"Label";
  v113 = v111;
  v114 = v112;
  v221 = v113;
  v220 = v114;
  v115 = sub_1CA94C438();
  v117 = v116;
  v118 = sub_1CA94C438();
  v120 = v119;
  *&v226 = &v211;
  MEMORY[0x1EEE9AC00](v118);
  v121 = &v211 - v232;
  sub_1CA948D98();
  v122 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v211 - v235;
  sub_1CA948B68();

  v124 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v125 = sub_1CA2F9F14(v115, v117, v118, v120, 0, 0, v121, v123);
  *(v80 + 224) = v229;
  *(v80 + 200) = v125;
  _s3__C3KeyVMa_0(0);
  *&v226 = v126;
  v222 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v228 + 32) = sub_1CA2F864C();
  v127 = swift_allocObject();
  *(v127 + 16) = xmmword_1CA981300;
  *(v127 + 32) = @"AllowsDecimalNumbers";
  *(v127 + 40) = 1;
  v128 = v223;
  *(v127 + 64) = MEMORY[0x1E69E6370];
  *(v127 + 72) = v128;
  *(v127 + 80) = v214;
  *(v127 + 88) = 0x80000001CA99C180;
  v129 = v213;
  *(v127 + 104) = MEMORY[0x1E69E6158];
  *(v127 + 112) = v129;
  v130 = MEMORY[0x1E69E6530];
  *(v127 + 120) = 0;
  *(v127 + 144) = v130;
  *(v127 + 152) = @"Description";
  v131 = @"AllowsDecimalNumbers";
  v132 = @"Description";
  v133 = sub_1CA94C438();
  v212 = v134;
  v213 = v133;
  v135 = sub_1CA94C438();
  v211 = v136;
  v214 = &v211;
  MEMORY[0x1EEE9AC00](v135);
  v137 = &v211 - v232;
  sub_1CA948D98();
  v138 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v138);
  v139 = v235;
  sub_1CA948B68();

  v140 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 160) = sub_1CA2F9F14(v213, v212, v135, v211, 0, 0, v137, &v211 - v139);
  v141 = v229;
  v142 = v221;
  *(v127 + 184) = v229;
  *(v127 + 192) = v142;
  *(v127 + 200) = 0xD000000000000015;
  *(v127 + 208) = 0x80000001CA9B79F0;
  v143 = v220;
  *(v127 + 224) = MEMORY[0x1E69E6158];
  *(v127 + 232) = v143;
  v144 = sub_1CA94C438();
  v212 = v145;
  v213 = v144;
  v146 = sub_1CA94C438();
  v211 = v147;
  v214 = &v211;
  MEMORY[0x1EEE9AC00](v146);
  v148 = &v211 - v232;
  sub_1CA948D98();
  v149 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v149);
  sub_1CA948B68();

  v150 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 240) = sub_1CA2F9F14(v213, v212, v146, v211, 0, 0, v148, &v211 - v139);
  *(v127 + 264) = v141;
  *(v127 + 272) = @"Placeholder";
  v214 = @"Placeholder";
  v151 = sub_1CA94C438();
  v212 = v152;
  v153 = sub_1CA94C438();
  v155 = v154;
  v213 = &v211;
  MEMORY[0x1EEE9AC00](v153);
  v156 = &v211 - v232;
  sub_1CA948D98();
  v157 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v211 - v235;
  sub_1CA948B68();

  v159 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v127 + 280) = sub_1CA2F9F14(v151, v212, v153, v155, 0, 0, v156, v158);
  *(v127 + 304) = v141;
  *(v127 + 312) = @"TextAlignment";
  v160 = MEMORY[0x1E69E6158];
  *(v127 + 344) = MEMORY[0x1E69E6158];
  *(v127 + 320) = 0x7468676952;
  *(v127 + 328) = 0xE500000000000000;
  v161 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v228 + 40) = sub_1CA2F864C();
  v162 = swift_allocObject();
  *(v162 + 16) = xmmword_1CA981380;
  *(v162 + 32) = @"AllowsMultipleValues";
  v163 = v223;
  *(v162 + 64) = MEMORY[0x1E69E6370];
  *(v162 + 72) = v163;
  *(v162 + 40) = 1;
  *(v162 + 80) = 0xD000000000000019;
  *(v162 + 88) = 0x80000001CA99B030;
  v164 = v221;
  *(v162 + 104) = v160;
  *(v162 + 112) = v164;
  *(v162 + 120) = 0x7475706E494657;
  *(v162 + 128) = 0xE700000000000000;
  v165 = v220;
  *(v162 + 144) = v160;
  *(v162 + 152) = v165;
  v166 = @"AllowsMultipleValues";
  *&v223 = sub_1CA94C438();
  v221 = v167;
  v168 = sub_1CA94C438();
  v220 = v169;
  v224 = &v211;
  MEMORY[0x1EEE9AC00](v168);
  v170 = v232;
  sub_1CA948D98();
  v171 = v234;
  v172 = [v234 bundleURL];
  v213 = &v211;
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v211 - v235;
  sub_1CA948B68();

  v174 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 160) = sub_1CA2F9F14(v223, v221, v168, v220, 0, 0, &v211 - v170, v173);
  v175 = v229;
  v176 = v214;
  *(v162 + 184) = v229;
  *(v162 + 192) = v176;
  *&v223 = sub_1CA94C438();
  v221 = v177;
  v178 = sub_1CA94C438();
  v180 = v179;
  v224 = &v211;
  MEMORY[0x1EEE9AC00](v178);
  sub_1CA948D98();
  v181 = [v171 bundleURL];
  MEMORY[0x1EEE9AC00](v181);
  v182 = &v211 - v235;
  sub_1CA948B68();

  v183 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v162 + 200) = sub_1CA2F9F14(v223, v221, v178, v180, 0, 0, &v211 - v170, v182);
  *(v162 + 224) = v175;
  *(v162 + 232) = @"PreferredTypes";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443850, &qword_1CA9815F0);
  v184 = swift_allocObject();
  *(v184 + 16) = v215;
  v185 = @"PreferredTypes";
  v186 = v216;
  sub_1CA949CB8();
  v187 = sub_1CA949C68();
  v189 = v188;
  (*(v217 + 8))(v186, v218);
  *(v184 + 32) = v187;
  *(v184 + 40) = v189;
  *(v162 + 264) = v225;
  *(v162 + 240) = v184;
  sub_1CA94C1E8();
  v190 = sub_1CA2F864C();
  v191 = v228;
  *(v228 + 48) = v190;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v193 = v230;
  v230[50] = v191;
  v193[53] = v192;
  v193[54] = @"ParameterSummary";
  v194 = @"ParameterSummary";
  v195 = sub_1CA94C438();
  v197 = v196;
  v198 = sub_1CA94C438();
  v200 = v199;
  MEMORY[0x1EEE9AC00](v198);
  v201 = &v211 - v232;
  sub_1CA948D98();
  v202 = [v234 bundleURL];
  MEMORY[0x1EEE9AC00](v202);
  v203 = &v211 - v235;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v205 = sub_1CA2F9F14(v195, v197, v198, v200, 0, 0, v201, v203);
  v206 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v207 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v208 = v230;
  v230[55] = v206;
  v208[58] = v207;
  v208[59] = @"ResidentCompatible";
  v208[63] = MEMORY[0x1E69E6370];
  *(v208 + 480) = 1;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v209 = @"ResidentCompatible";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA451E60()
{
  v71 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813E0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0x666F646E61484657;
  *(inited + 48) = 0xEF6E6F6974634166;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v76 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v77 = v12;
  v13 = &v67 - v76;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v73 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v74 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v75 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v67 - v75;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v72 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v70 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v68 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v69 = &v67;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v67 - v76;
  sub_1CA948D98();
  v33 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = &v67 - v75;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v68, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v72;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29EBDC(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v70;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"InputPassthrough";
  v38 = MEMORY[0x1E69E6370];
  *(inited + 200) = 1;
  *(inited + 224) = v38;
  *(inited + 232) = @"LocallyProcessesData";
  *(inited + 240) = 1;
  *(inited + 264) = v38;
  *(inited + 272) = @"Name";
  v39 = @"InputPassthrough";
  v40 = @"LocallyProcessesData";
  v41 = @"Name";
  v42 = sub_1CA94C438();
  v69 = v43;
  v44 = sub_1CA94C438();
  v46 = v45;
  v70 = &v67;
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v67 - v76;
  sub_1CA948D98();
  v48 = v73;
  v49 = [v73 bundleURL];
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v67 - v75;
  sub_1CA948B68();

  v51 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v42, v69, v44, v46, 0, 0, v47, v50);
  *(inited + 304) = v72;
  *(inited + 312) = @"ParameterSummary";
  v52 = @"ParameterSummary";
  v53 = sub_1CA94C438();
  v70 = v54;
  v55 = sub_1CA94C438();
  v57 = v56;
  v72 = &v67;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v67 - v76;
  sub_1CA948D98();
  v59 = [v48 bundleURL];
  MEMORY[0x1EEE9AC00](v59);
  v60 = &v67 - v75;
  sub_1CA948B68();

  v61 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v62 = sub_1CA2F9F14(v53, v70, v55, v57, 0, 0, v58, v60);
  v63 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v64 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  *(inited + 320) = v63;
  *(inited + 344) = v64;
  *(inited + 352) = @"RequiredResources";
  *(inited + 384) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 360) = &unk_1F49FB680;
  type metadata accessor for Key(0);
  sub_1CA29EBDC(&qword_1EDB9FB10, type metadata accessor for Key);
  v65 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t static WFTimeTriggerOffset.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EC445910 = a1;
}

unint64_t sub_1CA452770()
{
  result = qword_1EC445918;
  if (!qword_1EC445918)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445920, &qword_1CA988688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445918);
  }

  return result;
}

uint64_t sub_1CA4527D4@<X0>(uint64_t *a1@<X8>)
{
  result = static WFTimeTriggerOffset.allCases.getter();
  *a1 = result;
  return result;
}

id sub_1CA452830()
{
  v363 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000013;
  *(inited + 48) = 0x80000001CA9B7C30;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v387 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v388 = v12;
  v13 = &v349 - v387;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v386 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v389 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v385 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v349 - v385;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v384 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  v362 = v23;
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v383 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v361 = xmmword_1CA97EDF0;
  *(v24 + 16) = xmmword_1CA97EDF0;
  *(v24 + 32) = @"DescriptionNote";
  v25 = @"Description";
  v26 = @"DescriptionNote";
  v27 = sub_1CA94C438();
  v380 = v28;
  v381 = v27;
  v29 = sub_1CA94C438();
  v31 = v30;
  v382 = &v349;
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v349 - v387;
  sub_1CA948D98();
  v33 = v386;
  v34 = [v386 bundleURL];
  v378 = inited;
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v36 = v385;
  sub_1CA948B68();

  v37 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v24 + 40) = sub_1CA2F9F14(v381, v380, v29, v31, 0, 0, v32, &v349 - v36);
  v38 = v384;
  *(v24 + 64) = v384;
  *(v24 + 72) = @"DescriptionSummary";
  v39 = @"DescriptionSummary";
  v40 = sub_1CA94C438();
  v380 = v41;
  v381 = v40;
  v42 = sub_1CA94C438();
  v44 = v43;
  v382 = &v349;
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v349 - v387;
  sub_1CA948D98();
  v46 = [v33 bundleURL];
  MEMORY[0x1EEE9AC00](v46);
  sub_1CA948B68();

  v47 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v48 = sub_1CA2F9F14(v381, v380, v42, v44, 0, 0, v45, &v349 - v36);
  *(v24 + 104) = v38;
  *(v24 + 80) = v48;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v49 = v383;
  v50 = sub_1CA6B3784();
  v51 = v378;
  v378[20] = v50;
  v51[23] = v49;
  v51[24] = @"Input";
  v377 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v52 = swift_initStackObject();
  v376 = xmmword_1CA981350;
  *(v52 + 16) = xmmword_1CA981350;
  *(v52 + 32) = 0x656C7069746C754DLL;
  *(v52 + 40) = 0xE800000000000000;
  v53 = MEMORY[0x1E69E6370];
  *(v52 + 48) = 1;
  *(v52 + 72) = v53;
  strcpy((v52 + 80), "ParameterKey");
  *(v52 + 93) = 0;
  *(v52 + 94) = -5120;
  *(v52 + 96) = 0x7475706E494657;
  *(v52 + 104) = 0xE700000000000000;
  *(v52 + 120) = MEMORY[0x1E69E6158];
  *(v52 + 128) = 0x6465726975716552;
  *(v52 + 136) = 0xE800000000000000;
  *(v52 + 144) = 1;
  *(v52 + 168) = v53;
  *(v52 + 176) = 0x7365707954;
  *(v52 + 184) = 0xE500000000000000;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v52 + 216) = v383;
  *(v52 + 192) = &unk_1F49FB7C8;
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v382 = v56;
  v51[25] = v55;
  v51[28] = v56;
  v51[29] = @"Name";
  v57 = @"Name";
  v58 = sub_1CA94C438();
  v379 = v59;
  v380 = v58;
  v60 = sub_1CA94C438();
  v62 = v61;
  v381 = &v349;
  MEMORY[0x1EEE9AC00](v60);
  v63 = &v349 - v387;
  sub_1CA948D98();
  v64 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v64);
  v65 = v385;
  sub_1CA948B68();

  v66 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v67 = sub_1CA2F9F14(v380, v379, v60, v62, 0, 0, v63, &v349 - v65);
  v68 = v378;
  v378[30] = v67;
  v69 = v384;
  v68[33] = v384;
  v68[34] = @"Output";
  v70 = swift_initStackObject();
  *(v70 + 16) = v376;
  *(v70 + 32) = 0x75736F6C63736944;
  *(v70 + 40) = 0xEF6C6576654C6572;
  *(v70 + 48) = 0x63696C627550;
  *(v70 + 56) = 0xE600000000000000;
  *(v70 + 72) = MEMORY[0x1E69E6158];
  *(v70 + 80) = 0x656C7069746C754DLL;
  *(v70 + 88) = 0xE800000000000000;
  *(v70 + 96) = 1;
  *(v70 + 120) = MEMORY[0x1E69E6370];
  *(v70 + 128) = 0x614E74757074754FLL;
  *(v70 + 136) = 0xEA0000000000656DLL;
  v71 = @"Output";
  v72 = sub_1CA94C438();
  v379 = v73;
  v380 = v72;
  v74 = sub_1CA94C438();
  v375 = v75;
  v381 = &v349;
  MEMORY[0x1EEE9AC00](v74);
  v76 = v387;
  sub_1CA948D98();
  v77 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v77);
  sub_1CA948B68();

  v78 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 144) = sub_1CA2F9F14(v380, v379, v74, v375, 0, 0, &v349 - v76, &v349 - v65);
  *(v70 + 168) = v69;
  *(v70 + 176) = 0x7365707954;
  *(v70 + 216) = v383;
  *(v70 + 184) = 0xE500000000000000;
  *(v70 + 192) = &unk_1F49FB7F8;
  v79 = MEMORY[0x1E69E6158];
  v80 = sub_1CA94C1E8();
  v81 = v378;
  v378[35] = v80;
  v81[38] = v382;
  v81[39] = @"Parameters";
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v383 = swift_allocObject();
  *(v383 + 16) = xmmword_1CA985370;
  v382 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v381 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v82 = swift_allocObject();
  *(v82 + 16) = v376;
  *(v82 + 32) = @"Class";
  *(v82 + 40) = 0xD000000000000019;
  *(v82 + 48) = 0x80000001CA99B030;
  *(v82 + 64) = v79;
  *(v82 + 72) = @"Key";
  *(v82 + 80) = 0x7475706E494657;
  *(v82 + 88) = 0xE700000000000000;
  *(v82 + 104) = v79;
  *(v82 + 112) = @"Label";
  v83 = @"Class";
  v84 = @"Key";
  v85 = @"Label";
  v86 = v83;
  v87 = v84;
  v88 = v85;
  *&v370 = v86;
  *&v371 = v87;
  v372 = v88;
  v89 = @"Parameters";
  v379 = sub_1CA94C438();
  v375 = v90;
  v374 = sub_1CA94C438();
  v92 = v91;
  v380 = &v349;
  MEMORY[0x1EEE9AC00](v374);
  v93 = v76;
  v94 = &v349 - v76;
  sub_1CA948D98();
  v95 = v386;
  v96 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v349 - v385;
  sub_1CA948B68();

  v98 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v82 + 120) = sub_1CA2F9F14(v379, v375, v374, v92, 0, 0, v94, v97);
  v99 = v384;
  *(v82 + 144) = v384;
  *(v82 + 152) = @"Placeholder";
  v374 = @"Placeholder";
  v379 = sub_1CA94C438();
  v375 = v100;
  v101 = sub_1CA94C438();
  v369 = v102;
  v380 = &v349;
  MEMORY[0x1EEE9AC00](v101);
  sub_1CA948D98();
  v103 = [v95 bundleURL];
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v349 - v385;
  sub_1CA948B68();

  v105 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v106 = sub_1CA2F9F14(v379, v375, v101, v369, 0, 0, &v349 - v93, v104);
  *(v82 + 184) = v99;
  *(v82 + 160) = v106;
  _s3__C3KeyVMa_0(0);
  v380 = v107;
  v379 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v383 + 32) = sub_1CA2F864C();
  v108 = swift_allocObject();
  *(v108 + 16) = v376;
  v364 = 0x80000001CA99E620;
  v375 = 0xD000000000000011;
  v109 = v370;
  *(v108 + 32) = v370;
  *(v108 + 40) = 0xD000000000000011;
  *(v108 + 48) = 0x80000001CA99E620;
  v110 = MEMORY[0x1E69E6158];
  *(v108 + 64) = MEMORY[0x1E69E6158];
  *(v108 + 72) = @"DefaultValue";
  *(v108 + 80) = 1;
  v111 = v371;
  *(v108 + 104) = MEMORY[0x1E69E6370];
  *(v108 + 112) = v111;
  *(v108 + 120) = 0xD000000000000010;
  *(v108 + 128) = 0x80000001CA9B7D20;
  v112 = v372;
  *(v108 + 144) = v110;
  *(v108 + 152) = v112;
  v113 = @"DefaultValue";
  *&v370 = v109;
  *&v371 = v111;
  v372 = v112;
  v360 = v113;
  v114 = sub_1CA94C438();
  v116 = v115;
  v117 = sub_1CA94C438();
  v119 = v118;
  *&v376 = &v349;
  MEMORY[0x1EEE9AC00](v117);
  v120 = &v349 - v387;
  sub_1CA948D98();
  v121 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  v122 = &v349 - v385;
  sub_1CA948B68();

  v123 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v124 = sub_1CA2F9F14(v114, v116, v117, v119, 0, 0, v120, v122);
  *(v108 + 184) = v384;
  *(v108 + 160) = v124;
  sub_1CA94C1E8();
  *(v383 + 40) = sub_1CA2F864C();
  v125 = swift_allocObject();
  v376 = xmmword_1CA981370;
  *(v125 + 16) = xmmword_1CA981370;
  v126 = v370;
  v127 = v375;
  *(v125 + 32) = v370;
  *(v125 + 40) = v127;
  *(v125 + 48) = v364;
  *(v125 + 64) = MEMORY[0x1E69E6158];
  *(v125 + 72) = @"Description";
  v128 = @"Description";
  v356 = v126;
  *&v359 = v128;
  v129 = sub_1CA94C438();
  v368 = v130;
  v369 = v129;
  v131 = sub_1CA94C438();
  v367 = v132;
  *&v370 = &v349;
  MEMORY[0x1EEE9AC00](v131);
  v133 = v387;
  sub_1CA948D98();
  v134 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v134);
  v135 = v385;
  sub_1CA948B68();

  v136 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 80) = sub_1CA2F9F14(v369, v368, v131, v367, 0, 0, &v349 - v133, &v349 - v135);
  v137 = v384;
  v138 = v371;
  *(v125 + 104) = v384;
  *(v125 + 112) = v138;
  *(v125 + 120) = v375;
  *(v125 + 128) = 0x80000001CA9B7E50;
  v139 = v372;
  *(v125 + 144) = MEMORY[0x1E69E6158];
  *(v125 + 152) = v139;
  v358 = v138;
  v357 = v139;
  *&v371 = sub_1CA94C438();
  *&v370 = v140;
  v141 = sub_1CA94C438();
  v369 = v142;
  v372 = &v349;
  MEMORY[0x1EEE9AC00](v141);
  sub_1CA948D98();
  v143 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v143);
  sub_1CA948B68();

  v144 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v125 + 160) = sub_1CA2F9F14(v371, v370, v141, v369, 0, 0, &v349 - v133, &v349 - v135);
  *(v125 + 184) = v137;
  *(v125 + 192) = @"RequiredResources";
  v372 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v145 = swift_allocObject();
  v371 = xmmword_1CA981310;
  *(v145 + 16) = xmmword_1CA981310;
  v146 = swift_allocObject();
  v370 = xmmword_1CA9813C0;
  *(v146 + 16) = xmmword_1CA9813C0;
  strcpy((v146 + 32), "WFParameterKey");
  *(v146 + 47) = -18;
  strcpy((v146 + 48), "WFImgurAlbum");
  *(v146 + 61) = 0;
  *(v146 + 62) = -5120;
  v369 = 0x80000001CA993570;
  v147 = MEMORY[0x1E69E6158];
  *(v146 + 72) = MEMORY[0x1E69E6158];
  *(v146 + 80) = 0xD000000000000010;
  *(v146 + 88) = 0x80000001CA993570;
  *(v146 + 96) = 0;
  v148 = MEMORY[0x1E69E6370];
  *(v146 + 120) = MEMORY[0x1E69E6370];
  *(v146 + 128) = 0x72756F7365524657;
  *(v146 + 168) = v147;
  v367 = 0xD00000000000001BLL;
  v368 = 0x80000001CA993590;
  *(v146 + 136) = 0xEF7373616C436563;
  *(v146 + 144) = 0xD00000000000001BLL;
  *(v146 + 152) = 0x80000001CA993590;
  v365 = @"RequiredResources";
  *(v145 + 32) = sub_1CA94C1E8();
  v366 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v125 + 224) = v366;
  *(v125 + 200) = v145;
  sub_1CA94C1E8();
  *(v383 + 48) = sub_1CA2F864C();
  v149 = swift_allocObject();
  *(v149 + 16) = v376;
  v150 = v356;
  v151 = v375;
  *(v149 + 32) = v356;
  *(v149 + 40) = v151;
  *(v149 + 48) = v364;
  v152 = v360;
  *(v149 + 64) = v147;
  *(v149 + 72) = v152;
  *(v149 + 80) = 0;
  v153 = v359;
  *(v149 + 104) = v148;
  *(v149 + 112) = v153;
  v356 = v150;
  v364 = v152;
  v360 = sub_1CA94C438();
  *&v359 = v154;
  v155 = sub_1CA94C438();
  v157 = v156;
  v375 = &v349;
  MEMORY[0x1EEE9AC00](v155);
  v158 = &v349 - v387;
  sub_1CA948D98();
  v159 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  v160 = v385;
  sub_1CA948B68();

  v161 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v149 + 120) = sub_1CA2F9F14(v360, v359, v155, v157, 0, 0, v158, &v349 - v160);
  v162 = v384;
  v164 = v357;
  v163 = v358;
  *(v149 + 144) = v384;
  *(v149 + 152) = v163;
  strcpy((v149 + 160), "WFImgurAlbum");
  *(v149 + 173) = 0;
  *(v149 + 174) = -5120;
  *(v149 + 184) = MEMORY[0x1E69E6158];
  *(v149 + 192) = v164;
  v353 = v163;
  v354 = v164;
  v360 = sub_1CA94C438();
  *&v359 = v165;
  v166 = sub_1CA94C438();
  v358 = v167;
  v375 = &v349;
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v349 - v387;
  sub_1CA948D98();
  v169 = v386;
  v170 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v170);
  sub_1CA948B68();

  v171 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v172 = sub_1CA2F9F14(v360, v359, v166, v358, 0, 0, v168, &v349 - v160);
  *(v149 + 224) = v162;
  *(v149 + 200) = v172;
  sub_1CA94C1E8();
  *(v383 + 56) = sub_1CA2F864C();
  v173 = swift_allocObject();
  v359 = xmmword_1CA981380;
  *(v173 + 16) = xmmword_1CA981380;
  v357 = 0xD000000000000016;
  v358 = 0x80000001CA99C4A0;
  v174 = v356;
  *(v173 + 32) = v356;
  *(v173 + 40) = 0xD000000000000016;
  *(v173 + 48) = 0x80000001CA99C4A0;
  v175 = MEMORY[0x1E69E6158];
  v176 = v364;
  *(v173 + 64) = MEMORY[0x1E69E6158];
  *(v173 + 72) = v176;
  *(v173 + 80) = 1735355458;
  *(v173 + 88) = 0xE400000000000000;
  *(v173 + 104) = v175;
  *(v173 + 112) = @"Items";
  v375 = swift_allocObject();
  *(v375 + 1) = xmmword_1CA981570;
  v177 = @"Items";
  v355 = v174;
  v356 = v177;
  v178 = sub_1CA94C438();
  v351 = v179;
  v352 = v178;
  v180 = sub_1CA94C438();
  v350 = v181;
  v360 = &v349;
  MEMORY[0x1EEE9AC00](v180);
  v182 = v387;
  sub_1CA948D98();
  v183 = [v169 bundleURL];
  v349 = &v349;
  MEMORY[0x1EEE9AC00](v183);
  v184 = v385;
  sub_1CA948B68();

  v185 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v186 = sub_1CA2F9F14(v352, v351, v180, v350, 0, 0, &v349 - v182, &v349 - v184);
  v375[4] = v186;
  v187 = sub_1CA94C438();
  v351 = v188;
  v352 = v187;
  v189 = sub_1CA94C438();
  v350 = v190;
  v360 = &v349;
  MEMORY[0x1EEE9AC00](v189);
  v191 = &v349 - v182;
  sub_1CA948D98();
  v192 = v386;
  v193 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v193);
  sub_1CA948B68();

  v194 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v195 = sub_1CA2F9F14(v352, v351, v189, v350, 0, 0, v191, &v349 - v184);
  v196 = v375;
  v375[5] = v195;
  v197 = sub_1CA94C438();
  v351 = v198;
  v352 = v197;
  v199 = sub_1CA94C438();
  v350 = v200;
  v360 = &v349;
  MEMORY[0x1EEE9AC00](v199);
  v201 = &v349 - v387;
  sub_1CA948D98();
  v202 = [v192 bundleURL];
  v349 = &v349;
  MEMORY[0x1EEE9AC00](v202);
  v203 = v385;
  sub_1CA948B68();

  v204 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v196 + 48) = sub_1CA2F9F14(v352, v351, v199, v350, 0, 0, v201, &v349 - v203);
  v205 = sub_1CA94C438();
  v351 = v206;
  v352 = v205;
  v207 = sub_1CA94C438();
  v350 = v208;
  v360 = &v349;
  MEMORY[0x1EEE9AC00](v207);
  v209 = v387;
  sub_1CA948D98();
  v210 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v210);
  sub_1CA948B68();

  v211 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v212 = sub_1CA2F9F14(v352, v351, v207, v350, 0, 0, &v349 - v209, &v349 - v203);
  v213 = v375;
  v375[7] = v212;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443830, &qword_1CA981580);
  v352 = v214;
  *(v173 + 120) = v213;
  v215 = v353;
  v216 = v354;
  *(v173 + 144) = v214;
  *(v173 + 152) = v215;
  v360 = 0xD000000000000012;
  *(v173 + 160) = 0xD000000000000012;
  *(v173 + 168) = 0x80000001CA9B8060;
  *(v173 + 184) = MEMORY[0x1E69E6158];
  *(v173 + 192) = v216;
  v353 = v215;
  v354 = v216;
  v217 = sub_1CA94C438();
  v351 = v218;
  v219 = sub_1CA94C438();
  v221 = v220;
  v375 = &v349;
  MEMORY[0x1EEE9AC00](v219);
  v222 = &v349 - v209;
  sub_1CA948D98();
  v223 = v386;
  v224 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v224);
  v225 = &v349 - v385;
  sub_1CA948B68();

  v226 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v173 + 200) = sub_1CA2F9F14(v217, v351, v219, v221, 0, 0, v222, v225);
  v227 = v365;
  *(v173 + 224) = v384;
  *(v173 + 232) = v227;
  v228 = swift_allocObject();
  *(v228 + 16) = v371;
  v229 = swift_allocObject();
  *(v229 + 16) = v370;
  strcpy((v229 + 32), "WFParameterKey");
  *(v229 + 47) = -18;
  strcpy((v229 + 48), "WFImgurAlbum");
  *(v229 + 61) = 0;
  *(v229 + 62) = -5120;
  v230 = MEMORY[0x1E69E6158];
  *(v229 + 72) = MEMORY[0x1E69E6158];
  *(v229 + 80) = 0xD000000000000010;
  *(v229 + 88) = v369;
  *(v229 + 96) = 1;
  *(v229 + 120) = MEMORY[0x1E69E6370];
  *(v229 + 128) = 0x72756F7365524657;
  *(v229 + 168) = v230;
  *(v229 + 136) = 0xEF7373616C436563;
  v231 = v368;
  *(v229 + 144) = v367;
  *(v229 + 152) = v231;
  v232 = v230;
  *(v228 + 32) = sub_1CA94C1E8();
  *(v173 + 264) = v366;
  *(v173 + 240) = v228;
  sub_1CA94C1E8();
  *(v383 + 64) = sub_1CA2F864C();
  v233 = swift_allocObject();
  *(v233 + 16) = v359;
  v234 = v355;
  v236 = v357;
  v235 = v358;
  *(v233 + 32) = v355;
  *(v233 + 40) = v236;
  *(v233 + 48) = v235;
  v237 = v364;
  *(v233 + 64) = v232;
  *(v233 + 72) = v237;
  *(v233 + 80) = 0x6E6564646948;
  *(v233 + 88) = 0xE600000000000000;
  v238 = v356;
  *(v233 + 104) = v232;
  *(v233 + 112) = v238;
  v375 = swift_allocObject();
  *(v375 + 1) = xmmword_1CA981470;
  v373 = v234;
  v239 = sub_1CA94C438();
  v358 = v240;
  *&v359 = v239;
  v241 = sub_1CA94C438();
  v357 = v242;
  v364 = &v349;
  MEMORY[0x1EEE9AC00](v241);
  v243 = v387;
  sub_1CA948D98();
  v244 = [v223 bundleURL];
  MEMORY[0x1EEE9AC00](v244);
  v245 = &v349 - v385;
  sub_1CA948B68();

  v246 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v247 = sub_1CA2F9F14(v359, v358, v241, v357, 0, 0, &v349 - v243, v245);
  v375[4] = v247;
  v248 = sub_1CA94C438();
  v358 = v249;
  *&v359 = v248;
  v250 = sub_1CA94C438();
  v357 = v251;
  v364 = &v349;
  MEMORY[0x1EEE9AC00](v250);
  sub_1CA948D98();
  v252 = [v223 bundleURL];
  MEMORY[0x1EEE9AC00](v252);
  v253 = v385;
  sub_1CA948B68();

  v254 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v255 = sub_1CA2F9F14(v359, v358, v250, v357, 0, 0, &v349 - v243, &v349 - v253);
  v375[5] = v255;
  v256 = sub_1CA94C438();
  v358 = v257;
  *&v359 = v256;
  v258 = sub_1CA94C438();
  v357 = v259;
  v364 = &v349;
  MEMORY[0x1EEE9AC00](v258);
  v260 = v387;
  sub_1CA948D98();
  v261 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v261);
  sub_1CA948B68();

  v262 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v263 = sub_1CA2F9F14(v359, v358, v258, v357, 0, 0, &v349 - v260, &v349 - v253);
  v264 = v375;
  v375[6] = v263;
  *(v233 + 120) = v264;
  v265 = v353;
  *(v233 + 144) = v352;
  *(v233 + 152) = v265;
  *(v233 + 160) = 0xD000000000000013;
  *(v233 + 168) = 0x80000001CA9B8120;
  v266 = v354;
  *(v233 + 184) = MEMORY[0x1E69E6158];
  *(v233 + 192) = v266;
  v364 = v265;
  v375 = v266;
  v358 = sub_1CA94C438();
  v268 = v267;
  v269 = sub_1CA94C438();
  v271 = v270;
  *&v359 = &v349;
  MEMORY[0x1EEE9AC00](v269);
  sub_1CA948D98();
  v272 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v272);
  v273 = &v349 - v385;
  sub_1CA948B68();

  v274 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v233 + 200) = sub_1CA2F9F14(v358, v268, v269, v271, 0, 0, &v349 - v260, v273);
  v275 = v365;
  *(v233 + 224) = v384;
  *(v233 + 232) = v275;
  v276 = swift_allocObject();
  *(v276 + 16) = v371;
  v277 = swift_allocObject();
  *(v277 + 16) = v370;
  strcpy((v277 + 32), "WFParameterKey");
  *(v277 + 47) = -18;
  strcpy((v277 + 48), "WFImgurAlbum");
  *(v277 + 61) = 0;
  *(v277 + 62) = -5120;
  v278 = MEMORY[0x1E69E6158];
  *(v277 + 72) = MEMORY[0x1E69E6158];
  *(v277 + 80) = 0xD000000000000010;
  *(v277 + 88) = v369;
  *(v277 + 96) = 1;
  *(v277 + 120) = MEMORY[0x1E69E6370];
  *(v277 + 128) = 0x72756F7365524657;
  *(v277 + 168) = v278;
  *(v277 + 136) = 0xEF7373616C436563;
  v279 = v368;
  *(v277 + 144) = v367;
  *(v277 + 152) = v279;
  v280 = v278;
  *(v276 + 32) = sub_1CA94C1E8();
  *(v233 + 264) = v366;
  *(v233 + 240) = v276;
  sub_1CA94C1E8();
  *(v383 + 72) = sub_1CA2F864C();
  v281 = swift_allocObject();
  *(v281 + 16) = v376;
  v377 = 0xD000000000000014;
  *(v281 + 32) = v373;
  *(v281 + 40) = 0xD000000000000014;
  v372 = 0x80000001CA99B500;
  *(v281 + 48) = 0x80000001CA99B500;
  v282 = v364;
  *(v281 + 64) = v280;
  *(v281 + 72) = v282;
  strcpy((v281 + 80), "WFImgurTitle");
  *(v281 + 93) = 0;
  *(v281 + 94) = -5120;
  v283 = v375;
  *(v281 + 104) = v280;
  *(v281 + 112) = v283;
  v284 = sub_1CA94C438();
  v369 = v285;
  *&v370 = v284;
  v286 = sub_1CA94C438();
  v368 = v287;
  *&v371 = &v349;
  MEMORY[0x1EEE9AC00](v286);
  v288 = &v349 - v387;
  sub_1CA948D98();
  v289 = v386;
  v290 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v290);
  v291 = v385;
  sub_1CA948B68();

  v292 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v281 + 120) = sub_1CA2F9F14(v370, v369, v286, v368, 0, 0, v288, &v349 - v291);
  v293 = v384;
  v294 = v374;
  *(v281 + 144) = v384;
  *(v281 + 152) = v294;
  v295 = sub_1CA94C438();
  v369 = v296;
  *&v370 = v295;
  v297 = sub_1CA94C438();
  v368 = v298;
  *&v371 = &v349;
  MEMORY[0x1EEE9AC00](v297);
  v299 = &v349 - v387;
  sub_1CA948D98();
  v300 = [v289 bundleURL];
  MEMORY[0x1EEE9AC00](v300);
  sub_1CA948B68();

  v301 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v281 + 160) = sub_1CA2F9F14(v370, v369, v297, v368, 0, 0, v299, &v349 - v291);
  *(v281 + 184) = v293;
  *(v281 + 192) = @"TextAlignment";
  v302 = MEMORY[0x1E69E6158];
  *(v281 + 224) = MEMORY[0x1E69E6158];
  *(v281 + 200) = 0x7468676952;
  *(v281 + 208) = 0xE500000000000000;
  v303 = @"TextAlignment";
  sub_1CA94C1E8();
  *(v383 + 80) = sub_1CA2F864C();
  v304 = swift_allocObject();
  *(v304 + 16) = v376;
  v305 = v377;
  *(v304 + 32) = v373;
  *(v304 + 40) = v305;
  *(v304 + 48) = v372;
  v306 = v364;
  *(v304 + 64) = v302;
  *(v304 + 72) = v306;
  *(v304 + 80) = v360;
  *(v304 + 88) = 0x80000001CA9B81C0;
  v307 = v375;
  *(v304 + 104) = v302;
  *(v304 + 112) = v307;
  v377 = sub_1CA94C438();
  *&v376 = v308;
  v309 = sub_1CA94C438();
  v375 = v310;
  v381 = &v349;
  MEMORY[0x1EEE9AC00](v309);
  v311 = v387;
  sub_1CA948D98();
  v312 = v386;
  v313 = [v386 bundleURL];
  v373 = &v349;
  MEMORY[0x1EEE9AC00](v313);
  v314 = v385;
  sub_1CA948B68();

  v315 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v304 + 120) = sub_1CA2F9F14(v377, v376, v309, v375, 0, 0, &v349 - v311, &v349 - v314);
  v316 = v384;
  *(v304 + 144) = v384;
  *(v304 + 152) = @"Multiline";
  *(v304 + 160) = 1;
  v317 = v374;
  *(v304 + 184) = MEMORY[0x1E69E6370];
  *(v304 + 192) = v317;
  v318 = @"Multiline";
  v377 = sub_1CA94C438();
  *&v376 = v319;
  v320 = sub_1CA94C438();
  v375 = v321;
  v381 = &v349;
  MEMORY[0x1EEE9AC00](v320);
  sub_1CA948D98();
  v322 = [v312 bundleURL];
  MEMORY[0x1EEE9AC00](v322);
  sub_1CA948B68();

  v323 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v324 = sub_1CA2F9F14(v377, v376, v320, v375, 0, 0, &v349 - v311, &v349 - v314);
  *(v304 + 224) = v316;
  *(v304 + 200) = v324;
  sub_1CA94C1E8();
  v325 = sub_1CA2F864C();
  v326 = v383;
  *(v383 + 88) = v325;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v328 = v378;
  v378[40] = v326;
  v328[43] = v327;
  v328[44] = @"ParameterSummary";
  v329 = @"ParameterSummary";
  v330 = sub_1CA94C438();
  v332 = v331;
  v333 = sub_1CA94C438();
  v335 = v334;
  MEMORY[0x1EEE9AC00](v333);
  v336 = &v349 - v387;
  sub_1CA948D98();
  v337 = [v386 bundleURL];
  MEMORY[0x1EEE9AC00](v337);
  v338 = &v349 - v385;
  sub_1CA948B68();

  v339 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v340 = sub_1CA2F9F14(v330, v332, v333, v335, 0, 0, v336, v338);
  v341 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v342 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v343 = v378;
  v378[45] = v341;
  v343[48] = v342;
  v343[49] = @"RequiredResources";
  v344 = v343;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4438F0, &unk_1CA9819E0);
  v345 = swift_allocObject();
  *(v345 + 16) = v361;
  v346 = @"RequiredResources";
  v347 = MEMORY[0x1E69E6158];
  *(v345 + 32) = sub_1CA94C1E8();
  *(v345 + 88) = v347;
  *(v345 + 56) = v362;
  *(v345 + 64) = 0xD00000000000001CLL;
  *(v345 + 72) = 0x80000001CA993620;
  v344[53] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  v344[50] = v345;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA4554FC()
{
  v192 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813A0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000014;
  *(inited + 48) = 0x80000001CA9B8270;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v202 = inited;
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v208 = v12;
  v211 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = &v186 - v211;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v206 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v209 = v16;
  v207 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v186 - v207;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v210 = v20;
  v21 = v202;
  v202[10] = v19;
  v21[13] = v20;
  v21[14] = @"Description";
  v205 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1CA97EDF0;
  *(v22 + 32) = @"DescriptionInput";
  v23 = @"Description";
  v24 = @"DescriptionInput";
  v203 = sub_1CA94C438();
  v201 = v25;
  v26 = sub_1CA94C438();
  v28 = v27;
  v204 = &v186;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v186 - v211;
  sub_1CA948D98();
  v30 = v206;
  v31 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v31);
  v32 = v207;
  sub_1CA948B68();

  v33 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v22 + 40) = sub_1CA2F9F14(v203, v201, v26, v28, 0, 0, v29, &v186 - v32);
  v34 = v210;
  *(v22 + 64) = v210;
  *(v22 + 72) = @"DescriptionSummary";
  v35 = @"DescriptionSummary";
  v203 = sub_1CA94C438();
  v201 = v36;
  v37 = sub_1CA94C438();
  v39 = v38;
  v204 = &v186;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v186 - v211;
  sub_1CA948D98();
  v41 = [v30 bundleURL];
  MEMORY[0x1EEE9AC00](v41);
  sub_1CA948B68();

  v42 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v43 = sub_1CA2F9F14(v203, v201, v37, v39, 0, 0, v40, &v186 - v32);
  *(v22 + 104) = v34;
  *(v22 + 80) = v43;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v44 = v205;
  v45 = sub_1CA6B3784();
  v46 = v202;
  v202[15] = v45;
  v46[18] = v44;
  v46[19] = @"IconColor";
  v46[20] = 6579538;
  v46[21] = 0xE300000000000000;
  v47 = MEMORY[0x1E69E6158];
  v46[23] = MEMORY[0x1E69E6158];
  v46[24] = @"IconSymbol";
  v46[25] = 0x6461622E6C6C6562;
  v46[26] = 0xEF6C6C69662E6567;
  v46[28] = v47;
  v46[29] = @"Input";
  v48 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v49 = swift_initStackObject();
  v198 = xmmword_1CA981350;
  *(v49 + 16) = xmmword_1CA981350;
  *(v49 + 32) = 0x656C7069746C754DLL;
  *(v49 + 40) = 0xE800000000000000;
  v50 = MEMORY[0x1E69E6370];
  *(v49 + 48) = 1;
  *(v49 + 72) = v50;
  strcpy((v49 + 80), "ParameterKey");
  v194 = 0xD000000000000018;
  v195 = 0x80000001CA9B8320;
  *(v49 + 93) = 0;
  *(v49 + 94) = -5120;
  *(v49 + 96) = 0xD000000000000018;
  *(v49 + 104) = 0x80000001CA9B8320;
  *(v49 + 120) = v47;
  *(v49 + 128) = 0x6465726975716552;
  *(v49 + 136) = 0xE800000000000000;
  *(v49 + 144) = 0;
  *(v49 + 168) = v50;
  *(v49 + 176) = 0x7365707954;
  v51 = v50;
  *(v49 + 184) = 0xE500000000000000;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v49 + 216) = v203;
  *(v49 + 192) = &unk_1F49FB868;
  v52 = @"IconColor";
  v53 = @"IconSymbol";
  v54 = @"Input";
  v55 = sub_1CA94C1E8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  v48[30] = v55;
  v48[33] = v56;
  v48[34] = @"InputPassthrough";
  *(v48 + 280) = 1;
  v48[38] = v51;
  v48[39] = @"Name";
  v57 = v48;
  v58 = @"InputPassthrough";
  v59 = @"Name";
  v60 = sub_1CA94C438();
  v62 = v61;
  v63 = sub_1CA94C438();
  v65 = v64;
  v205 = &v186;
  MEMORY[0x1EEE9AC00](v63);
  v66 = &v186 - v211;
  sub_1CA948D98();
  v67 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v67);
  v68 = &v186 - v207;
  sub_1CA948B68();

  v69 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v57[40] = sub_1CA2F9F14(v60, v62, v63, v65, 0, 0, v66, v68);
  v57[43] = v210;
  v57[44] = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v205 = swift_allocObject();
  *(v205 + 1) = xmmword_1CA981570;
  v204 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_1CA981370;
  v193 = 0x80000001CA99B500;
  *(v70 + 32) = @"Class";
  *(v70 + 40) = 0xD000000000000014;
  *(v70 + 48) = 0x80000001CA99B500;
  v71 = MEMORY[0x1E69E6158];
  *(v70 + 64) = MEMORY[0x1E69E6158];
  *(v70 + 72) = @"DisallowedVariableTypes";
  *(v70 + 80) = &unk_1F49FB898;
  *(v70 + 104) = v203;
  *(v70 + 112) = @"Key";
  v197 = 0xD000000000000019;
  *(v70 + 120) = 0xD000000000000019;
  *(v70 + 128) = 0x80000001CA9B8380;
  *(v70 + 144) = v71;
  *(v70 + 152) = @"Label";
  v72 = @"Class";
  v73 = @"Key";
  v74 = @"Label";
  v75 = v72;
  v76 = v73;
  v77 = v74;
  v78 = @"DisallowedVariableTypes";
  v189 = v75;
  v190 = v76;
  v191 = v77;
  v188 = v78;
  v79 = @"Parameters";
  v199 = sub_1CA94C438();
  v196 = v80;
  v81 = sub_1CA94C438();
  v83 = v82;
  v200 = &v186;
  MEMORY[0x1EEE9AC00](v81);
  v84 = v211;
  sub_1CA948D98();
  v85 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v186 - v207;
  sub_1CA948B68();

  v87 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v70 + 160) = sub_1CA2F9F14(v199, v196, v81, v83, 0, 0, &v186 - v84, v86);
  *(v70 + 184) = v210;
  *(v70 + 192) = @"Placeholder";
  v196 = @"Placeholder";
  v199 = sub_1CA94C438();
  v187 = v88;
  v89 = sub_1CA94C438();
  v91 = v90;
  v200 = &v186;
  MEMORY[0x1EEE9AC00](v89);
  v92 = &v186 - v84;
  sub_1CA948D98();
  v93 = v206;
  v94 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = &v186 - v207;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v199, v187, v89, v91, 0, 0, v92, v95);
  *(v70 + 224) = v210;
  *(v70 + 200) = v97;
  _s3__C3KeyVMa_0(0);
  v200 = v98;
  v199 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v205[4] = sub_1CA2F864C();
  v99 = swift_allocObject();
  *(v99 + 16) = xmmword_1CA981380;
  v100 = v189;
  v101 = v190;
  *(v99 + 32) = v189;
  *(v99 + 40) = 0xD000000000000014;
  *(v99 + 48) = v193;
  v102 = MEMORY[0x1E69E6158];
  v103 = v188;
  *(v99 + 64) = MEMORY[0x1E69E6158];
  *(v99 + 72) = v103;
  *(v99 + 80) = &unk_1F49FB8C8;
  *(v99 + 104) = v203;
  *(v99 + 112) = v101;
  v104 = v195;
  *(v99 + 120) = v194;
  *(v99 + 128) = v104;
  v105 = v191;
  *(v99 + 144) = v102;
  *(v99 + 152) = v105;
  v194 = v100;
  v193 = v101;
  v195 = v105;
  v106 = sub_1CA94C438();
  v189 = v107;
  v190 = v106;
  v108 = sub_1CA94C438();
  v188 = v109;
  v191 = &v186;
  MEMORY[0x1EEE9AC00](v108);
  v110 = &v186 - v211;
  sub_1CA948D98();
  v111 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v207;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v99 + 160) = sub_1CA2F9F14(v190, v189, v108, v188, 0, 0, v110, &v186 - v112);
  *(v99 + 184) = v210;
  *(v99 + 192) = @"Multiline";
  *(v99 + 200) = 1;
  v114 = v196;
  *(v99 + 224) = MEMORY[0x1E69E6370];
  *(v99 + 232) = v114;
  v115 = @"Multiline";
  v116 = sub_1CA94C438();
  v189 = v117;
  v190 = v116;
  v118 = sub_1CA94C438();
  v188 = v119;
  v191 = &v186;
  MEMORY[0x1EEE9AC00](v118);
  v120 = &v186 - v211;
  sub_1CA948D98();
  v121 = [v93 bundleURL];
  MEMORY[0x1EEE9AC00](v121);
  sub_1CA948B68();

  v122 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v123 = sub_1CA2F9F14(v190, v189, v118, v188, 0, 0, v120, &v186 - v112);
  *(v99 + 264) = v210;
  *(v99 + 240) = v123;
  sub_1CA94C1E8();
  v205[5] = sub_1CA2F864C();
  v124 = swift_allocObject();
  *(v124 + 16) = v198;
  *(v124 + 32) = v194;
  *(v124 + 40) = 0xD000000000000011;
  *(v124 + 48) = 0x80000001CA99E620;
  v125 = MEMORY[0x1E69E6158];
  *(v124 + 64) = MEMORY[0x1E69E6158];
  *(v124 + 72) = @"DefaultValue";
  *(v124 + 80) = 1;
  v126 = v193;
  *(v124 + 104) = MEMORY[0x1E69E6370];
  *(v124 + 112) = v126;
  *(v124 + 120) = v197;
  *(v124 + 128) = 0x80000001CA9B8470;
  v127 = v195;
  *(v124 + 144) = v125;
  *(v124 + 152) = v127;
  v128 = @"DefaultValue";
  v129 = sub_1CA94C438();
  v190 = v130;
  v131 = sub_1CA94C438();
  v133 = v132;
  v191 = &v186;
  MEMORY[0x1EEE9AC00](v131);
  v134 = &v186 - v211;
  sub_1CA948D98();
  v135 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v186 - v207;
  sub_1CA948B68();

  v137 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v138 = sub_1CA2F9F14(v129, v190, v131, v133, 0, 0, v134, v136);
  *(v124 + 184) = v210;
  *(v124 + 160) = v138;
  sub_1CA94C1E8();
  v205[6] = sub_1CA2F864C();
  v139 = swift_allocObject();
  *(v139 + 16) = v198;
  v140 = v197;
  *(v139 + 32) = v194;
  *(v139 + 40) = v140;
  *(v139 + 48) = 0x80000001CA99B030;
  v141 = MEMORY[0x1E69E6158];
  v142 = v193;
  *(v139 + 64) = MEMORY[0x1E69E6158];
  *(v139 + 72) = v142;
  *(v139 + 80) = 0x7475706E494657;
  *(v139 + 88) = 0xE700000000000000;
  v143 = v195;
  *(v139 + 104) = v141;
  *(v139 + 112) = v143;
  v144 = sub_1CA94C438();
  v197 = v145;
  *&v198 = v144;
  v146 = sub_1CA94C438();
  v195 = v147;
  v201 = &v186;
  MEMORY[0x1EEE9AC00](v146);
  v148 = v211;
  sub_1CA948D98();
  v149 = v202;
  v150 = v206;
  v151 = [v206 bundleURL];
  v194 = &v186;
  MEMORY[0x1EEE9AC00](v151);
  v152 = v207;
  sub_1CA948B68();

  v153 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v139 + 120) = sub_1CA2F9F14(v198, v197, v146, v195, 0, 0, &v186 - v148, &v186 - v152);
  v154 = v196;
  *(v139 + 144) = v210;
  *(v139 + 152) = v154;
  v155 = sub_1CA94C438();
  v197 = v156;
  *&v198 = v155;
  v157 = sub_1CA94C438();
  v196 = v158;
  v201 = &v186;
  MEMORY[0x1EEE9AC00](v157);
  sub_1CA948D98();
  v159 = [v150 bundleURL];
  MEMORY[0x1EEE9AC00](v159);
  sub_1CA948B68();

  v160 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v161 = sub_1CA2F9F14(v198, v197, v157, v196, 0, 0, &v186 - v148, &v186 - v152);
  *(v139 + 184) = v210;
  *(v139 + 160) = v161;
  sub_1CA94C1E8();
  v162 = sub_1CA2F864C();
  v163 = v205;
  v205[7] = v162;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v149[45] = v163;
  v149[48] = v164;
  v149[49] = @"ParameterSummary";
  v165 = @"ParameterSummary";
  v166 = sub_1CA94C438();
  v168 = v167;
  v169 = sub_1CA94C438();
  v171 = v170;
  v210 = &v186;
  MEMORY[0x1EEE9AC00](v169);
  v172 = &v186 - v211;
  sub_1CA948D98();
  v173 = [v206 bundleURL];
  MEMORY[0x1EEE9AC00](v173);
  v174 = &v186 - v207;
  sub_1CA948B68();

  v175 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v176 = sub_1CA2F9F14(v166, v168, v169, v171, 0, 0, v172, v174);
  v177 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v178 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v149[50] = v177;
  v149[53] = v178;
  v149[54] = @"RateLimit";
  v179 = @"RateLimit";
  v180 = sub_1CA94C1E8();
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443B18, "~R\t");
  v149[55] = v180;
  v149[58] = v181;
  v149[59] = @"RequiredResources";
  v149[60] = &unk_1F49FB960;
  v182 = v203;
  v149[63] = v203;
  v149[64] = @"UserInterfaces";
  v149[68] = v182;
  v149[65] = &unk_1F49FB9B0;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v183 = @"RequiredResources";
  v184 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t sub_1CA456B5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7372656E6E6162 && a2 == 0xE700000000000000;
  if (v4 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEB00000000736E6FLL)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA456C30(char a1)
{
  if (a1)
  {
    return 0x697463656C6C6F63;
  }

  else
  {
    return 0x7372656E6E6162;
  }
}

uint64_t sub_1CA456C90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA456B5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA456CD8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CA456C28();
  *a1 = result;
  return result;
}

uint64_t sub_1CA456D00(uint64_t a1)
{
  v2 = sub_1CA45A63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA456D3C(uint64_t a1)
{
  v2 = sub_1CA45A63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA456D78(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445980, &qword_1CA988740);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A63C();
  sub_1CA94D9A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445990, &qword_1CA988748);
  v11 = 0;
  sub_1CA45A6E4(&qword_1EC445998, &qword_1EC445990, &qword_1CA988748, sub_1CA45A690);
  sub_1CA94D728();
  v9 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459A8, &qword_1CA988750);
  v11 = 1;
  sub_1CA45A6E4(&qword_1EC4459B0, &qword_1EC4459A8, &qword_1CA988750, sub_1CA45A760);
  sub_1CA94D728();
  (*(v3 + 8))(v6, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v9;
}

uint64_t sub_1CA456FE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701273968 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA4570A8(char a1)
{
  if (a1)
  {
    return 1701273968;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CA4570CC(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459D8, &qword_1CA988928);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A96C();
  sub_1CA94D9A8();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_1CA94D718();
    v11 = 1;
    sub_1CA94D718();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1CA4572B0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1CA94D7F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756374726F6873 && a2 == 0xE900000000000073)
  {

    return 1;
  }

  else
  {
    v7 = sub_1CA94D7F8();

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

uint64_t sub_1CA457378(char a1)
{
  sub_1CA94D918();
  MEMORY[0x1CCAA2780](a1 & 1);
  return sub_1CA94D968();
}

uint64_t sub_1CA4573C0(char a1)
{
  if (a1)
  {
    return 0x74756374726F6873;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1CA4573F0(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4459E8, &qword_1CA988930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CA45A9C0();
  sub_1CA94D9A8();
  if (!v1)
  {
    v10[31] = 0;
    v8 = sub_1CA94D718();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
    v10[15] = 1;
    sub_1CA45AA14();
    sub_1CA94D728();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v8;
}

uint64_t sub_1CA4575F4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA456D78(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1CA457628@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA456FE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA457650(uint64_t a1)
{
  v2 = sub_1CA45A96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA45768C(uint64_t a1)
{
  v2 = sub_1CA45A96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4576C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA4570CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_1CA4576F8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1CA94D918();
  a4(v8, v6);
  return sub_1CA94D968();
}

uint64_t sub_1CA45774C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1CA4572B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1CA457774(uint64_t a1)
{
  v2 = sub_1CA45A9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CA4577B0(uint64_t a1)
{
  v2 = sub_1CA45A9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CA4577EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CA4573F0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

id sub_1CA45781C()
{
  result = sub_1CA45783C();
  qword_1EC445928 = result;
  return result;
}

id sub_1CA45783C()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CA948BA8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EC442D88 != -1)
  {
    swift_once();
  }

  v8 = sub_1CA45A438(0x7972656C6C6147, 0xE700000000000000, 0x656C646E7562, 0xE600000000000000, qword_1EC445BE0);
  if (v8)
  {
    v9 = v8;
    sub_1CA948B68();

    v10 = sub_1CA25B3D0(0, &qword_1EC443878, 0x1E696AAE8);
    MEMORY[0x1EEE9AC00](v10);
    (*(v6 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
    v11 = sub_1CA457B0C(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v6 + 8))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  }

  else
  {
    v12 = *MEMORY[0x1E69E10A8];
    sub_1CA949C58();
    v13 = sub_1CA949F68();
    v14 = sub_1CA94CC18();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1CA256000, v13, v14, "Unable to find Gallery.bundle", v15, 2u);
      MEMORY[0x1CCAA4BF0](v15, -1, -1);
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v11;
}

id sub_1CA457B0C(uint64_t a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1CA948B48();
  v4 = [v2 initWithURL_];

  v5 = sub_1CA948BA8();
  (*(*(v5 - 8) + 8))(a1, v5);
  return v4;
}

void *sub_1CA457BA8()
{
  result = sub_1CA457BC8();
  off_1EC445930 = result;
  return result;
}

uint64_t sub_1CA457BC8()
{
  v0 = sub_1CA949F78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v27 - v6;
  if (qword_1EC442D60 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC445928;
  if (qword_1EC445928)
  {
    v27[1] = v5;
    v28 = v1;
    v29 = v0;
    v9 = sub_1CA948BA8();
    v10 = *(v9 - 8);
    v11 = *(v10 + 64);
    MEMORY[0x1EEE9AC00](v9);
    v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    v13 = v8;
    v14 = sub_1CA45A438(0x7972656C6C6167, 0xE700000000000000, 0x7473696C70, 0xE500000000000000, v13);
    if (MEMORY[0x1EEE9AC00](v14))
    {
      sub_1CA948B68();

      (*(v10 + 32))(v12, v12, v9);
      v19 = sub_1CA948BB8();
      v21 = v20;
      v22 = sub_1CA9489C8();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      sub_1CA9489B8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445968, &qword_1CA9886E0);
      sub_1CA45A54C();
      sub_1CA9489A8();
      (*(v10 + 8))(v12, v9);

      sub_1CA266F2C(v19, v21);
      return v30;
    }

    v1 = v28;
    v0 = v29;
  }

  v15 = *MEMORY[0x1E69E10A8];
  sub_1CA949C58();
  v16 = sub_1CA949F68();
  v17 = sub_1CA94CC18();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1CA256000, v16, v17, "Unable to locate gallery.plist", v18, 2u);
    MEMORY[0x1CCAA4BF0](v18, -1, -1);
  }

  (*(v1 + 8))(v7, v0);
  return sub_1CA94C1E8();
}

uint64_t sub_1CA45811C()
{
  result = sub_1CA45813C();
  qword_1EC461698 = result;
  return result;
}

uint64_t sub_1CA45813C()
{
  v76 = sub_1CA949F78();
  v0 = *(v76 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v76);
  v3 = &v73 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC442D60 != -1)
  {
LABEL_57:
    swift_once();
  }

  v4 = qword_1EC445928;
  if (!qword_1EC445928)
  {
    sub_1CA25B3D0(0, &qword_1EC445938, off_1E836E3F0);

    return sub_1CA94C1E8();
  }

  v5 = sub_1CA25B3D0(0, &qword_1EC445938, off_1E836E3F0);
  v86 = v4;
  v73 = v5;
  v78 = sub_1CA94C1E8();
  if (qword_1EC442D68 != -1)
  {
    swift_once();
  }

  v6 = off_1EC445930 + 64;
  v7 = 1 << *(off_1EC445930 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(off_1EC445930 + 8);
  v10 = (v7 + 63) >> 6;
  v11 = *MEMORY[0x1E69E10A8];
  v74 = (v0 + 8);
  v75 = v11;
  v83 = off_1EC445930;
  sub_1CA94C218();
  v12 = 0;
  v77 = v3;
  v80 = v10;
  v81 = v6;
LABEL_8:
  while (2)
  {
    v13 = v12;
    while (1)
    {
      while (1)
      {
        if (!v9)
        {
          while (1)
          {
            v12 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              break;
            }

            if (v12 >= v10)
            {

              return v78;
            }

            v9 = *&v6[8 * v12];
            ++v13;
            if (v9)
            {
              goto LABEL_14;
            }
          }

LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v12 = v13;
LABEL_14:
        v85 = (v9 - 1) & v9;
        v14 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
        v15 = (v83[6] + v14);
        v16 = v15[1];
        v17 = v83[7] + v14;
        v0 = *v17;
        v18 = *(v17 + 8);
        v19 = *v15 == 0x65646F6D5F657375 && v16 == 0xE90000000000006CLL;
        v84 = *v15;
        if (!v19 && (sub_1CA94D7F8() & 1) == 0)
        {
          break;
        }

        v20 = objc_opt_self();
        sub_1CA94C218();
        sub_1CA94C218();
        sub_1CA94C218();
        v21 = [v20 shared];
        v22 = [v21 isActionVisible];

        if (v22)
        {
          goto LABEL_24;
        }

        sub_1CA949C58();
        v0 = sub_1CA949F68();
        v23 = sub_1CA94CC38();
        if (os_log_type_enabled(v0, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_1CA256000, v0, v23, "Ignoring use_model content due to action disablement", v24, 2u);
          MEMORY[0x1CCAA4BF0](v24, -1, -1);
        }

        (*v74)(v3, v76);
        v13 = v12;
        v10 = v80;
        v6 = v81;
        v9 = v85;
      }

      sub_1CA94C218();
      sub_1CA94C218();
      sub_1CA94C218();
LABEL_24:
      v82 = v16;
      v25 = *(v0 + 16);
      if (v25)
      {
        v92 = MEMORY[0x1E69E7CC0];
        sub_1CA94D508();
        v3 = 0;
        v26 = (v0 + 56);
        while (v3 < *(v0 + 16))
        {
          isa = v26[-2].isa;
          v28 = v26[-1].isa;
          v29 = v26->isa;
          v87 = v26[-3].isa;
          v88 = isa;
          v89 = v28;
          v90 = v29;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA458AF4(&v87, v86, &v91);

          ++v3;
          sub_1CA94D4D8();
          v30 = v92[2].isa;
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
          v26 += 4;
          if (v25 == v3)
          {
            v31 = v92;
            goto LABEL_30;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }

      v31 = MEMORY[0x1E69E7CC0];
LABEL_30:
      v79 = v31;
      v32 = *(v18 + 16);
      if (v32)
      {
        v92 = MEMORY[0x1E69E7CC0];
        sub_1CA94D508();
        v3 = 0;
        v33 = (v18 + 48);
        while (v3 < *(v18 + 16))
        {
          v34 = *(v33 - 1);
          v35 = *v33;
          v87 = *(v33 - 2);
          v88 = v34;
          v89 = v35;
          sub_1CA94C218();
          sub_1CA94C218();
          sub_1CA458F7C(&v87, v86, &v91);

          ++v3;
          sub_1CA94D4D8();
          v36 = v92[2].isa;
          sub_1CA94D518();
          sub_1CA94D528();
          sub_1CA94D4E8();
          v33 += 3;
          if (v32 == v3)
          {

            v0 = v92;
            goto LABEL_36;
          }
        }

        goto LABEL_55;
      }

      v0 = MEMORY[0x1E69E7CC0];
LABEL_36:
      sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
      v37 = v82;
      sub_1CA94C218();
      v38 = v84;
      v39 = sub_1CA458F08();
      v87 = 0x2D65676170;
      v88 = 0xE500000000000000;
      MEMORY[0x1CCAA1300](v38, v37);
      MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
      v40 = sub_1CA94C368();

      v41 = sub_1CA94C368();
      v42 = [v86 localizedStringForKey:v40 value:0 table:v41];

      v43 = sub_1CA94C3A8();
      v45 = v44;

      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v46 = sub_1CA94CFA8();
      objc_allocWithZone(WFGalleryPage);
      sub_1CA94C218();
      v47 = sub_1CA45A288(v39, v43, v45, 0, v46, v79, v0, 0, 0, 0, v38, v37);
      if (v47)
      {
        break;
      }

      v48 = sub_1CA271BF8();
      if (v49)
      {
        v0 = v48;
        v59 = v78;
        swift_isUniquelyReferenced_nonNull_native();
        v87 = v59;
        v60 = *(v59 + 24);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445948, &qword_1CA9886D8);
        sub_1CA94D588();
        v61 = v87;
        v62 = *(*(v87 + 48) + 16 * v0 + 8);

        v63 = *(*(v61 + 56) + 8 * v0);
        v78 = v61;
        sub_1CA94D5A8();

        v3 = v77;
        v10 = v80;
        v6 = v81;
        v9 = v85;
        goto LABEL_8;
      }

      v13 = v12;
      v3 = v77;
      v10 = v80;
      v6 = v81;
      v9 = v85;
    }

    v0 = v47;
    v50 = v78;
    swift_isUniquelyReferenced_nonNull_native();
    v87 = v50;
    v51 = sub_1CA271BF8();
    if (__OFADD__(*(v50 + 16), (v52 & 1) == 0))
    {
      __break(1u);
      goto LABEL_59;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445948, &qword_1CA9886D8);
    if ((sub_1CA94D588() & 1) == 0)
    {
      v57 = v54;
      v3 = v77;
      v9 = v85;
LABEL_45:
      v64 = v87;
      v78 = v87;
      if (v57)
      {
        v65 = *(v87 + 56);
        v66 = *(v65 + 8 * v53);
        *(v65 + 8 * v53) = v0;

LABEL_49:
        v10 = v80;
        v6 = v81;
        continue;
      }

      *(v87 + 8 * (v53 >> 6) + 64) |= 1 << v53;
      v67 = (v64[6] + 16 * v53);
      v68 = v82;
      *v67 = v38;
      v67[1] = v68;
      *(v64[7] + 8 * v53) = v0;
      v69 = v64[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (!v70)
      {
        v64[2] = v71;
        goto LABEL_49;
      }

LABEL_59:
      __break(1u);

      __break(1u);
      goto LABEL_60;
    }

    break;
  }

  v55 = sub_1CA271BF8();
  v57 = v54;
  v58 = v54 & 1;
  v3 = v77;
  v9 = v85;
  if (v58 == (v56 & 1))
  {
    v53 = v55;
    goto LABEL_45;
  }

LABEL_60:
  result = sub_1CA94D878();
  __break(1u);
  return result;
}

uint64_t sub_1CA458AF4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v38 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v36 = a1[3];
  v37 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444A90, &qword_1CA9827C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CA45A4CC(v4, v5, 6778480, 0xE300000000000000, a2);
  if (MEMORY[0x1EEE9AC00](v10))
  {
    sub_1CA948B68();

    v11 = sub_1CA948BA8();
    v12 = 0;
  }

  else
  {
    v11 = sub_1CA948BA8();
    v12 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v12, 1, v11);
  v13 = sub_1CA2ED774(v9, v9);
  MEMORY[0x1EEE9AC00](v13);
  v14 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA2F13FC(v9, v14);
  sub_1CA948BA8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v11);
  v16 = 0;
  if (EnumTagSinglePayload != 1)
  {
    v34[1] = v34;
    v35 = a2;
    v17 = *(v11 - 8);
    v18 = *(v17 + 64);
    MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
    v20 = v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 32))(v20, v14, v11);
    v21 = objc_opt_self();
    v22 = sub_1CA948B48();
    v16 = [v21 fileWithURL:v22 options:0];

    (*(v17 + 8))(v20, v11);
    a2 = v35;
  }

  sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
  sub_1CA94C218();
  v23 = sub_1CA458F08();
  v39 = 0x2D72656E6E6162;
  v40 = 0xE700000000000000;
  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
  v24 = sub_1CA94C368();

  v25 = sub_1CA94C368();
  v26 = [a2 localizedStringForKey:v24 value:0 table:v25];

  v27 = sub_1CA94C3A8();
  v29 = v28;

  sub_1CA94C218();
  v30 = sub_1CA458F08();
  v31 = objc_allocWithZone(WFGalleryBanner);
  v32 = sub_1CA459A9C(v23, v27, v29, 0, 0, v30, v16, 0, 0, 0, 0, 0, 0);
  result = sub_1CA30F7DC(v9, &qword_1EC444A90, &qword_1CA9827C0);
  *v38 = v32;
  return result;
}

id sub_1CA458F08()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1CA94C368();

  v2 = [v0 initWithRecordName_];

  return v2;
}

void sub_1CA458F7C(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v39 = a3;
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  sub_1CA94D408();

  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
  v7 = sub_1CA94C368();

  v8 = sub_1CA94C368();
  v9 = [a2 localizedStringForKey:v7 value:0 table:v8];

  v10 = sub_1CA94C3A8();
  v35 = v11;
  v36 = v10;

  sub_1CA94D408();

  v41 = 0x697463656C6C6F63;
  v42 = 0xEB000000002D6E6FLL;
  v37 = v5;
  v38 = v4;
  MEMORY[0x1CCAA1300](v4, v5);
  MEMORY[0x1CCAA1300](0x706972637365642DLL, 0xEC0000006E6F6974);
  v12 = sub_1CA94C368();

  v13 = sub_1CA94C368();
  v14 = [a2 localizedStringForKey:v12 value:0 table:v13];

  v15 = sub_1CA94C3A8();
  v33 = v16;
  v34 = v15;

  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v43 = MEMORY[0x1E69E7CC0];
  v19 = *(v6 + 16);
  for (i = (v6 + 40); ; i += 2)
  {
    if (v19 == v17)
    {
      sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
      v23 = v37;
      sub_1CA94C218();
      v24 = v38;
      v25 = sub_1CA458F08();
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      v27 = *(*(v26 - 8) + 64);
      MEMORY[0x1EEE9AC00](v26 - 8);
      v29 = &v33 - v28;
      v30 = sub_1CA948CB8();
      __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
      v31 = objc_allocWithZone(WFGalleryCollection);
      sub_1CA94C218();
      v32 = sub_1CA45A068(v25, v36, v35, v34, v33, v18, 0, 0, v29, 0, 0, 0, v24, v23);
      *v39 = v32;
      return;
    }

    if (v17 >= *(v6 + 16))
    {
      break;
    }

    v21 = *i;
    v41 = *(i - 1);
    v42 = v21;
    sub_1CA94C218();
    sub_1CA459334(&v41, a2, &v40);

    if (v40)
    {
      MEMORY[0x1CCAA1490](v22);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1CA94C698();
      }

      sub_1CA94C6E8();
      v18 = v43;
    }

    ++v17;
  }

  __break(1u);
}

uint64_t sub_1CA459334@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v68 = a3;
  v71 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v5 = *(a1 + 8);
  v7 = sub_1CA948BA8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = &v51 - v10;
  v67 = v5;
  v12 = sub_1CA45A4CC(v6, v5, 0x776F6C6677, 0xE500000000000000, a2);
  result = MEMORY[0x1EEE9AC00](v12);
  if (!result)
  {
    goto LABEL_6;
  }

  sub_1CA948B68();

  (*(v8 + 32))(&v51 - v10, &v51 - v10, v7);
  v14 = sub_1CA948BB8();
  if (v3)
  {
  }

  else
  {
    v16 = v15;
    v65 = v6;
    v66 = v7;
    v69 = v6;
    v70 = v67;
    v17 = v14;
    sub_1CA94C218();
    MEMORY[0x1CCAA1300](0x656D616E2DLL, 0xE500000000000000);
    v18 = v16;
    v19 = sub_1CA94C368();

    v20 = sub_1CA94C368();
    v21 = [a2 localizedStringForKey:v19 value:0 table:v20];

    v22 = v18;
    v23 = sub_1CA94C3A8();
    v25 = v24;

    v26 = objc_allocWithZone(WFWorkflowFile);
    sub_1CA25CF98(v17, v22);
    sub_1CA94C218();
    v27 = sub_1CA459C28(v17, v22, v23, v25);
    v62 = v23;
    v63 = v25;
    v29 = v65;
    v7 = v66;
    v64 = v17;
    if (!v27)
    {
      sub_1CA266F2C(v64, v22);

      result = (*(v8 + 8))(v11, v7);
      goto LABEL_6;
    }

    v69 = 0;
    v61 = v27;
    v30 = [v27 recordRepresentationWithError_];
    v31 = v69;
    if (v30)
    {
      v60 = v30;
      v32 = v29;
      v33._countAndFlagsBits = v29;
      v34 = v67;
      v33._object = v67;
      WFWorkflowRecord.importLocalizedStrings(table:bundle:)(v33, a2);
      v69 = v29;
      v70 = v34;
      sub_1CA94C218();
      MEMORY[0x1CCAA1300](0x706972637365642DLL, 0xEC0000006E6F6974);
      v35 = sub_1CA94C368();

      v36 = sub_1CA94C368();
      v37 = [a2 localizedStringForKey:v35 value:0 table:v36];
      v59 = v22;
      v38 = v37;

      v39 = sub_1CA94C3A8();
      v57 = v40;
      v58 = v39;

      sub_1CA25B3D0(0, &qword_1EC445940, 0x1E695BA70);
      sub_1CA94C218();
      v56 = sub_1CA458F08();
      sub_1CA94C218();
      v41 = v60;
      v55 = [v60 icon];
      sub_1CA25B3D0(0, &qword_1EDB9F5E0, 0x1E696AD98);
      v53 = v41;
      v52 = sub_1CA94CFA8();
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4466D0, &qword_1CA991AA0);
      v54 = &v51;
      v43 = *(*(v42 - 8) + 64);
      MEMORY[0x1EEE9AC00](v42 - 8);
      v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
      v45 = sub_1CA948CB8();
      v46 = __swift_storeEnumTagSinglePayload(&v51 - v44, 1, 1, v45);
      v51 = &v51;
      MEMORY[0x1EEE9AC00](v46);
      __swift_storeEnumTagSinglePayload(&v51 - v44, 1, 1, v45);
      v47 = objc_allocWithZone(WFGalleryWorkflow);
      sub_1CA94C218();
      v48 = sub_1CA459D44(v56, v62, v63, v58, v57, v58, v57, v55, v60, v52, 0, 0, 0, &v51 - v44, &v51 - v44, 0, 0, 0, v32, v34, 0, 0);

      sub_1CA266F2C(v64, v59);
      result = (*(v8 + 8))(v11, v66);
      *v68 = v48;
      goto LABEL_7;
    }

    v49 = v31;

    v50 = sub_1CA948AD8();

    swift_willThrow();
    sub_1CA266F2C(v64, v22);
  }

  result = (*(v8 + 8))(v11, v7);
LABEL_6:
  *v68 = 0;
LABEL_7:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

void __swiftcall WFGallerySessionManager.localPage(id:)(WFGalleryPage_optional *__return_ptr retstr, Swift::String id)
{
  if (qword_1EC442D70 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC461698;
  if (*(qword_1EC461698 + 16))
  {
    v3 = sub_1CA271BF8();
    if (v4)
    {
      v5 = *(*(v2 + 56) + 8 * v3);
    }
  }
}

id sub_1CA459A9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14 = v13;
  if (a3)
  {
    v18 = sub_1CA94C368();
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = sub_1CA94C368();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1CA94C368();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_1CA94C368();
  }

  else
  {
    v21 = 0;
  }

  if (a13)
  {
    v22 = sub_1CA94C648();
  }

  else
  {
    v22 = 0;
  }

  v23 = [v14 initWithIdentifier:a1 name:v18 subtitle:v19 detailPage:a6 imageFile:a7 language:v20 base:a10 persistentIdentifier:v21 supportedIdioms:v22];

  return v23;
}

id sub_1CA459C28(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16[1] = *MEMORY[0x1E69E9840];
  v9 = sub_1CA948BF8();
  if (a4)
  {
    v10 = sub_1CA94C368();
  }

  else
  {
    v10 = 0;
  }

  v16[0] = 0;
  v11 = [v5 initWithFileData:v9 name:v10 error:v16];

  if (v11)
  {
    v12 = v16[0];
  }

  else
  {
    v13 = v16[0];
    sub_1CA948AD8();

    swift_willThrow();
  }

  sub_1CA266F2C(a1, a2);
  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

id sub_1CA459D44(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, void *a22)
{
  if (a3)
  {
    v34 = sub_1CA94C368();

    if (a5)
    {
LABEL_3:
      v33 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v34 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v33 = 0;
LABEL_6:
  if (a7)
  {
    v32 = sub_1CA94C368();
  }

  else
  {
    v32 = 0;
  }

  if (a12)
  {
    v38 = sub_1CA94C648();
  }

  else
  {
    v38 = 0;
  }

  if (a13)
  {
    v31 = sub_1CA94C648();
  }

  else
  {
    v31 = 0;
  }

  v24 = sub_1CA948CB8();
  v25 = 0;
  if (__swift_getEnumTagSinglePayload(a14, 1, v24) != 1)
  {
    v25 = sub_1CA948C58();
    (*(*(v24 - 8) + 8))(a14, v24);
  }

  if (__swift_getEnumTagSinglePayload(a15, 1, v24) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_1CA948C58();
    (*(*(v24 - 8) + 8))(a15, v24);
  }

  if (a17)
  {
    v27 = sub_1CA94C368();
  }

  else
  {
    v27 = 0;
  }

  if (a20)
  {
    v28 = sub_1CA94C368();
  }

  else
  {
    v28 = 0;
  }

  v30 = [v35 initWithIdentifier:a1 name:v34 shortDescription:v33 longDescription:v32 icon:a8 workflowRecord:a9 searchable:a10 minVersion:a11 hiddenRegions:v38 supportedIdioms:v31 createdAt:v25 modifiedAt:v26 language:v27 base:a18 persistentIdentifier:v28 shortcutFile:a21 iconFile:a22];

  return v30;
}

id sub_1CA45A068(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14)
{
  if (a3)
  {
    v18 = sub_1CA94C368();

    if (a5)
    {
LABEL_3:
      v19 = sub_1CA94C368();

      goto LABEL_6;
    }
  }

  else
  {
    v18 = 0;
    if (a5)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  if (a6)
  {
    sub_1CA25B3D0(0, &qword_1EC445960, off_1E836E400);
    v20 = sub_1CA94C648();

    if (a8)
    {
LABEL_8:
      v21 = sub_1CA94C648();

      goto LABEL_11;
    }
  }

  else
  {
    v20 = 0;
    if (a8)
    {
      goto LABEL_8;
    }
  }

  v21 = 0;
LABEL_11:
  v22 = sub_1CA948CB8();
  v23 = 0;
  if (__swift_getEnumTagSinglePayload(a9, 1, v22) != 1)
  {
    v23 = sub_1CA948C58();
    (*(*(v22 - 8) + 8))(a9, v22);
  }

  if (a11)
  {
    v24 = sub_1CA94C368();
  }

  else
  {
    v24 = 0;
  }

  if (a14)
  {
    v25 = sub_1CA94C368();
  }

  else
  {
    v25 = 0;
  }

  v26 = [v28 initWithIdentifier:a1 name:v18 collectionDescription:v19 workflows:v20 minVersion:a7 supportedIdioms:v21 modifiedAt:v23 language:v24 base:a12 persistentIdentifier:v25];

  return v26;
}

id sub_1CA45A288(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  if (a3)
  {
    v17 = sub_1CA94C368();

    if (a6)
    {
LABEL_3:
      sub_1CA25B3D0(0, &qword_1EC445958, off_1E836E3E0);
      v18 = sub_1CA94C648();

      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_6:
  if (a7)
  {
    sub_1CA25B3D0(0, &qword_1EC445950, off_1E836E3E8);
    v19 = sub_1CA94C648();
  }

  else
  {
    v19 = 0;
  }

  if (a9)
  {
    v20 = sub_1CA94C368();
  }

  else
  {
    v20 = 0;
  }

  if (a12)
  {
    v21 = sub_1CA94C368();
  }

  else
  {
    v21 = 0;
  }

  v22 = [v24 initWithIdentifier:a1 name:v17 minVersion:a4 isRoot:a5 banners:v18 collections:v19 language:v20 base:a10 persistentIdentifier:v21];

  return v22;
}

id sub_1CA45A438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1CA94C368();

  v7 = sub_1CA94C368();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

id sub_1CA45A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1CA94C368();
  v7 = sub_1CA94C368();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

unint64_t sub_1CA45A54C()
{
  result = qword_1EC445970;
  if (!qword_1EC445970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC445968, &qword_1CA9886E0);
    sub_1CA45A5D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445970);
  }

  return result;
}

unint64_t sub_1CA45A5D8()
{
  result = qword_1EC445978;
  if (!qword_1EC445978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445978);
  }

  return result;
}

unint64_t sub_1CA45A63C()
{
  result = qword_1EC445988;
  if (!qword_1EC445988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445988);
  }

  return result;
}

unint64_t sub_1CA45A690()
{
  result = qword_1EC4459A0;
  if (!qword_1EC4459A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459A0);
  }

  return result;
}

uint64_t sub_1CA45A6E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CA45A760()
{
  result = qword_1EC4459B8;
  if (!qword_1EC4459B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459B8);
  }

  return result;
}

uint64_t sub_1CA45A7D4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1CA45A814(uint64_t result, int a2, int a3)
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

unint64_t sub_1CA45A868()
{
  result = qword_1EC4459C0;
  if (!qword_1EC4459C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459C0);
  }

  return result;
}

unint64_t sub_1CA45A8C0()
{
  result = qword_1EC4459C8;
  if (!qword_1EC4459C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459C8);
  }

  return result;
}

unint64_t sub_1CA45A918()
{
  result = qword_1EC4459D0;
  if (!qword_1EC4459D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459D0);
  }

  return result;
}

unint64_t sub_1CA45A96C()
{
  result = qword_1EC4459E0;
  if (!qword_1EC4459E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459E0);
  }

  return result;
}

unint64_t sub_1CA45A9C0()
{
  result = qword_1EC4459F0;
  if (!qword_1EC4459F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459F0);
  }

  return result;
}

unint64_t sub_1CA45AA14()
{
  result = qword_1EC4459F8;
  if (!qword_1EC4459F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC443E20, &qword_1CA986220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4459F8);
  }

  return result;
}

_BYTE *sub_1CA45AAA0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1CA45AB80()
{
  result = qword_1EC445A00;
  if (!qword_1EC445A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A00);
  }

  return result;
}

unint64_t sub_1CA45ABD8()
{
  result = qword_1EC445A08;
  if (!qword_1EC445A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A08);
  }

  return result;
}

unint64_t sub_1CA45AC30()
{
  result = qword_1EC445A10;
  if (!qword_1EC445A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A10);
  }

  return result;
}

unint64_t sub_1CA45AC88()
{
  result = qword_1EC445A18;
  if (!qword_1EC445A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A18);
  }

  return result;
}

unint64_t sub_1CA45ACE0()
{
  result = qword_1EC445A20;
  if (!qword_1EC445A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A20);
  }

  return result;
}

unint64_t sub_1CA45AD38()
{
  result = qword_1EC445A28;
  if (!qword_1EC445A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC445A28);
  }

  return result;
}

id sub_1CA45ADDC()
{
  v140 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA9813F0;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000012;
  *(inited + 48) = 0x80000001CA9B8570;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v150 = v12;
  v151 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = v130 - v151;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v149 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v147 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v130 - v148;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  v146 = v20;
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = sub_1CA94C1E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v22;
  *(inited + 144) = v23;
  *(inited + 152) = @"Description";
  v143 = sub_1CA25B3D0(0, &unk_1EC441790, off_1E836DD18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D0, &qword_1CA981390);
  v24 = swift_initStackObject();
  v144 = xmmword_1CA981310;
  *(v24 + 16) = xmmword_1CA981310;
  *(v24 + 32) = @"DescriptionSummary";
  v25 = @"Description";
  v26 = @"DescriptionSummary";
  v27 = sub_1CA94C438();
  v141 = v28;
  v29 = sub_1CA94C438();
  v31 = v30;
  v142 = v130;
  MEMORY[0x1EEE9AC00](v29);
  v32 = v130 - v151;
  sub_1CA948D98();
  v33 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v33);
  v34 = v130 - v148;
  sub_1CA948B68();

  v35 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v36 = sub_1CA2F9F14(v27, v141, v29, v31, 0, 0, v32, v34);
  *(v24 + 64) = v146;
  *(v24 + 40) = v36;
  type metadata accessor for DescriptionKey(0);
  sub_1CA29CF44(&qword_1EC441830, type metadata accessor for DescriptionKey);
  sub_1CA94C1E8();
  v37 = v143;
  *(inited + 160) = sub_1CA6B3784();
  *(inited + 184) = v37;
  *(inited + 192) = @"Input";
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v38 = swift_initStackObject();
  v137 = xmmword_1CA981350;
  *(v38 + 16) = xmmword_1CA981350;
  *(v38 + 32) = 0x656C7069746C754DLL;
  *(v38 + 40) = 0xE800000000000000;
  v39 = MEMORY[0x1E69E6370];
  *(v38 + 48) = 1;
  *(v38 + 72) = v39;
  strcpy((v38 + 80), "ParameterKey");
  *(v38 + 93) = 0;
  *(v38 + 94) = -5120;
  *(v38 + 96) = 0x7475706E494657;
  *(v38 + 104) = 0xE700000000000000;
  *(v38 + 120) = MEMORY[0x1E69E6158];
  *(v38 + 128) = 0x6465726975716552;
  *(v38 + 136) = 0xE800000000000000;
  *(v38 + 144) = 1;
  *(v38 + 168) = v39;
  *(v38 + 176) = 0x7365707954;
  v40 = v39;
  *(v38 + 184) = 0xE500000000000000;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(v38 + 216) = v143;
  *(v38 + 192) = &unk_1F49FBA40;
  v41 = @"Input";
  v42 = sub_1CA94C1E8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC447DE0, &qword_1CA9917E0);
  *(inited + 200) = v42;
  *(inited + 224) = v43;
  *(inited + 232) = @"InputPassthrough";
  *(inited + 240) = 1;
  *(inited + 264) = v40;
  *(inited + 272) = @"Name";
  v44 = @"InputPassthrough";
  v45 = @"Name";
  v46 = sub_1CA94C438();
  v48 = v47;
  v49 = sub_1CA94C438();
  v51 = v50;
  v142 = v130;
  MEMORY[0x1EEE9AC00](v49);
  v52 = v130 - v151;
  sub_1CA948D98();
  v53 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v53);
  v54 = v130 - v148;
  sub_1CA948B68();

  v55 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(inited + 280) = sub_1CA2F9F14(v46, v48, v49, v51, 0, 0, v52, v54);
  *(inited + 304) = v146;
  *(inited + 312) = @"Parameters";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  v142 = swift_allocObject();
  *(v142 + 1) = xmmword_1CA981360;
  v141 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v56 = swift_initStackObject();
  *(v56 + 16) = v137;
  *(v56 + 32) = @"Class";
  *(v56 + 40) = 0xD000000000000013;
  *(v56 + 48) = 0x80000001CA99B730;
  v57 = MEMORY[0x1E69E6158];
  *(v56 + 64) = MEMORY[0x1E69E6158];
  *(v56 + 72) = @"Key";
  *(v56 + 80) = 0x7475706E494657;
  *(v56 + 88) = 0xE700000000000000;
  *(v56 + 104) = v57;
  *(v56 + 112) = @"Label";
  v58 = @"Class";
  v59 = @"Key";
  v60 = @"Label";
  v135 = v58;
  v136 = v59;
  *&v137 = v60;
  v61 = @"Parameters";
  v62 = sub_1CA94C438();
  v132 = v63;
  v133 = v62;
  v131 = sub_1CA94C438();
  v65 = v64;
  v134 = v130;
  MEMORY[0x1EEE9AC00](v131);
  v66 = v130 - v151;
  sub_1CA948D98();
  v67 = v149;
  v68 = [v149 bundleURL];
  v130[1] = v130;
  MEMORY[0x1EEE9AC00](v68);
  v145 = inited;
  v69 = v148;
  sub_1CA948B68();

  v70 = objc_allocWithZone(MEMORY[0x1E696B100]);
  *(v56 + 120) = sub_1CA2F9F14(v133, v132, v131, v65, 0, 0, v66, v130 - v69);
  v71 = v146;
  *(v56 + 144) = v146;
  *(v56 + 152) = @"Placeholder";
  v72 = @"Placeholder";
  v73 = sub_1CA94C438();
  v132 = v74;
  v133 = v73;
  v75 = sub_1CA94C438();
  v131 = v76;
  v134 = v130;
  MEMORY[0x1EEE9AC00](v75);
  v77 = v130 - v151;
  sub_1CA948D98();
  v78 = [v67 bundleURL];
  MEMORY[0x1EEE9AC00](v78);
  sub_1CA948B68();

  v79 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v80 = sub_1CA2F9F14(v133, v132, v75, v131, 0, 0, v77, v130 - v69);
  *(v56 + 184) = v71;
  *(v56 + 160) = v80;
  _s3__C3KeyVMa_0(0);
  v134 = v81;
  v133 = sub_1CA29CF44(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  v142[4] = sub_1CA2F864C();
  v82 = swift_allocObject();
  *(v82 + 16) = xmmword_1CA981380;
  *(v82 + 32) = v135;
  *(v82 + 40) = 0xD000000000000018;
  *(v82 + 48) = 0x80000001CA9A2F80;
  v83 = MEMORY[0x1E69E6158];
  *(v82 + 64) = MEMORY[0x1E69E6158];
  *(v82 + 72) = @"DefaultValue";
  *(v82 + 80) = 1936744781;
  *(v82 + 88) = 0xE400000000000000;
  *(v82 + 104) = v83;
  *(v82 + 112) = @"Hidden";
  *(v82 + 120) = 1;
  v84 = v136;
  *(v82 + 144) = MEMORY[0x1E69E6370];
  *(v82 + 152) = v84;
  *(v82 + 160) = 0xD000000000000015;
  *(v82 + 168) = 0x80000001CA9B8670;
  v85 = v137;
  *(v82 + 184) = v83;
  *(v82 + 192) = v85;
  v86 = @"DefaultValue";
  v87 = @"Hidden";
  v88 = sub_1CA94C438();
  *&v137 = v89;
  v90 = sub_1CA94C438();
  v92 = v91;
  v138 = v130;
  MEMORY[0x1EEE9AC00](v90);
  v93 = v130 - v151;
  sub_1CA948D98();
  v94 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v94);
  v95 = v130 - v148;
  sub_1CA948B68();

  v96 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v97 = sub_1CA2F9F14(v88, v137, v90, v92, 0, 0, v93, v95);
  *(v82 + 224) = v146;
  *(v82 + 200) = v97;
  v98 = sub_1CA94C368();
  *(v82 + 264) = v143;
  *(v82 + 232) = v98;
  *(v82 + 240) = &unk_1F49FBA90;
  sub_1CA94C1E8();
  v99 = sub_1CA2F864C();
  v100 = v142;
  v142[5] = v99;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437D8, &qword_1CA981398);
  v102 = v145;
  v145[40] = v100;
  v102[43] = v101;
  v102[44] = @"ParameterSummary";
  v103 = @"ParameterSummary";
  v104 = sub_1CA94C438();
  v106 = v105;
  v107 = sub_1CA94C438();
  v109 = v108;
  v146 = v130;
  MEMORY[0x1EEE9AC00](v107);
  v110 = v130 - v151;
  sub_1CA948D98();
  v111 = [v149 bundleURL];
  MEMORY[0x1EEE9AC00](v111);
  v112 = v130 - v148;
  sub_1CA948B68();

  v113 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v114 = sub_1CA2F9F14(v104, v106, v107, v109, 0, 0, v110, v112);
  v115 = [objc_allocWithZone(WFActionParameterSummary) initWithString_];

  v116 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  v117 = v145;
  v145[45] = v115;
  v117[48] = v116;
  v117[49] = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v118 = swift_allocObject();
  *(v118 + 16) = v144;
  v119 = swift_allocObject();
  *(v119 + 16) = xmmword_1CA97EDF0;
  *(v119 + 32) = 0xD000000000000011;
  *(v119 + 40) = 0x80000001CA99B240;
  v120 = swift_allocObject();
  *(v120 + 16) = v144;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_1CA9813C0;
  strcpy((v121 + 32), "WFParameterKey");
  *(v121 + 47) = -18;
  *(v121 + 48) = 0x7475706E494657;
  *(v121 + 56) = 0xE700000000000000;
  v122 = MEMORY[0x1E69E6158];
  *(v121 + 72) = MEMORY[0x1E69E6158];
  *(v121 + 80) = 0xD000000000000010;
  *(v121 + 88) = 0x80000001CA993570;
  v123 = @"RequiredResources";
  v124 = sub_1CA94C1E8();
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443800, &unk_1CA981440);
  *(v121 + 96) = v124;
  *(v121 + 120) = v125;
  *(v121 + 128) = 0x72756F7365524657;
  *(v121 + 168) = v122;
  *(v121 + 136) = 0xEF7373616C436563;
  *(v121 + 144) = 0xD00000000000001BLL;
  *(v121 + 152) = 0x80000001CA993590;
  *(v120 + 32) = sub_1CA94C1E8();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v119 + 48) = v120;
  *(v119 + 72) = v126;
  *(v119 + 80) = 0x72756F7365524657;
  *(v119 + 120) = v122;
  *(v119 + 88) = 0xEF7373616C436563;
  *(v119 + 96) = 0xD000000000000018;
  *(v119 + 104) = 0x80000001CA994040;
  *(v118 + 32) = sub_1CA94C1E8();
  v127 = v145;
  v145[50] = v118;
  v127[53] = v126;
  v127[54] = @"UserInterfaces";
  v127[58] = v143;
  v127[55] = &unk_1F49FBB18;
  type metadata accessor for Key(0);
  sub_1CA29CF44(&qword_1EDB9FB10, type metadata accessor for Key);
  v128 = @"UserInterfaces";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

void WFTriggerInputAction.init(inputClass:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC11WorkflowKit20WFTriggerInputAction_inputClass] = a1;
  v2 = sub_1CA94C368();
  sub_1CA2ECC0C();
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  v3 = sub_1CA332510();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFTriggerInputAction();
  v4 = objc_msgSendSuper2(&v5, sel_initWithIdentifier_definition_serializedParameters_, v2, v3, 0);

  if (!v4)
  {
    __break(1u);
  }
}

uint64_t sub_1CA45C08C(void *a1)
{
  v3 = objc_opt_self();
  v4 = *(v1 + OBJC_IVAR____TtC11WorkflowKit20WFTriggerInputAction_inputClass);
  v5 = [v3 inputTypeDescriptionForClass_];
  v30 = sub_1CA94C3A8();
  v7 = v6;

  v8 = sub_1CA94C438();
  v10 = v9;
  v11 = sub_1CA94C438();
  v13 = v12;
  v14 = sub_1CA948E58();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v18 = [qword_1EDB9F690 bundleURL];
  v19 = sub_1CA948BA8();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v23 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v24 = sub_1CA2F9F14(v8, v10, v11, v13, 0, 0, v17, v22);
  v25 = [a1 localize_];

  sub_1CA94C3A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC446870, &qword_1CA982240);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1CA981310;
  *(v26 + 56) = MEMORY[0x1E69E6158];
  *(v26 + 64) = sub_1CA282DB4();
  *(v26 + 32) = v30;
  *(v26 + 40) = v7;
  v27 = sub_1CA94C3C8();

  return v27;
}

id WFTriggerInputAction.__allocating_init(identifier:definition:serializedParameters:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_1CA94C368();

  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444480, &unk_1CA983520);
    v9 = sub_1CA94C1A8();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithIdentifier:v8 definition:a3 serializedParameters:v9];

  return v10;
}

id WFTriggerInputAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFTriggerInputAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFTriggerInputAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1CA45C60C()
{
  v32[1] = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981400;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD000000000000019;
  *(inited + 48) = 0x80000001CA9A2900;
  *(inited + 64) = v1;
  *(inited + 72) = @"AppDefinition";
  v2 = @"ActionClass";
  v3 = @"AppDefinition";
  v4 = sub_1CA94C1E8();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 80) = v4;
  *(inited + 104) = v5;
  *(inited + 112) = @"LocallyProcessesData";
  v6 = MEMORY[0x1E69E6370];
  *(inited + 120) = 1;
  *(inited + 144) = v6;
  *(inited + 152) = @"Name";
  v7 = @"LocallyProcessesData";
  v8 = @"Name";
  v9 = sub_1CA94C438();
  v11 = v10;
  v12 = sub_1CA94C438();
  v14 = v13;
  v15 = sub_1CA948E58();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v19 = [qword_1EDB9F690 bundleURL];
  v20 = sub_1CA948BA8();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = v32 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v24 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v25 = sub_1CA2F9F14(v9, v11, v12, v14, 0, 0, v18, v23);
  v26 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 160) = v25;
  *(inited + 184) = v26;
  *(inited + 192) = @"RequiredResources";
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 200) = &unk_1F49FBB98;
  *(inited + 224) = v27;
  *(inited + 232) = @"SuggestedAsInitialAction";
  *(inited + 264) = MEMORY[0x1E69E6370];
  *(inited + 240) = 0;
  v28 = @"RequiredResources";
  v29 = @"SuggestedAsInitialAction";
  v30 = sub_1CA94C368();
  *(inited + 304) = MEMORY[0x1E69E6158];
  *(inited + 272) = v30;
  *(inited + 280) = 0xD000000000000014;
  *(inited + 288) = 0x80000001CA993920;
  type metadata accessor for Key(0);
  sub_1CA2ECC50();
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA45CA10()
{
  v40 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CA948B68();

  v19 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v20 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v18);
  v21 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v20;
  *(inited + 104) = v21;
  *(inited + 112) = @"AppDefinition";
  v22 = @"AppDefinition";
  v23 = MEMORY[0x1E69E6158];
  v24 = sub_1CA94C1E8();
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v24;
  *(inited + 144) = v25;
  *(inited + 152) = @"DisabledOnPlatforms";
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FBC08;
  *(inited + 184) = v26;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 0x65676E61724FLL;
  *(inited + 208) = 0xE600000000000000;
  *(inited + 224) = v23;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0x696873746867696ELL;
  *(inited + 248) = 0xEA00000000007466;
  *(inited + 264) = v23;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v27 = @"DisabledOnPlatforms";
  v28 = @"IconColor";
  v29 = @"IconSymbol";
  v30 = @"InputPassthrough";
  v31 = sub_1CA94C368();
  *(inited + 344) = v23;
  *(inited + 312) = v31;
  *(inited + 320) = 0xD000000000000055;
  *(inited + 328) = 0x80000001CA9B8870;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v32 = swift_initStackObject();
  v39 = xmmword_1CA981310;
  *(v32 + 16) = xmmword_1CA981310;
  *(v32 + 32) = 0x6574617473;
  *(v32 + 40) = 0xE500000000000000;
  sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v39;
  *(v33 + 64) = v23;
  *(v33 + 32) = @"Key";
  *(v33 + 40) = 0x65756C61566E4FLL;
  *(v33 + 48) = 0xE700000000000000;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  v34 = @"Key";
  sub_1CA94C1E8();
  *(v32 + 48) = sub_1CA2F864C();
  v35 = sub_1CA94C1E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v35;
  *(inited + 384) = v36;
  *(inited + 392) = @"RequiredResources";
  *(inited + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443838, &qword_1CA981588);
  *(inited + 400) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  v37 = @"RequiredResources";
  sub_1CA94C1E8();
  return sub_1CA332510();
}

id sub_1CA45D024()
{
  v92 = sub_1CA25B3D0(0, &qword_1EC4419A0, off_1E836DD08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B0, &qword_1CA981320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CA981420;
  v1 = MEMORY[0x1E69E6158];
  *(inited + 32) = @"ActionClass";
  *(inited + 40) = 0xD00000000000001ALL;
  *(inited + 48) = 0x80000001CA99DB90;
  *(inited + 64) = v1;
  *(inited + 72) = @"ActionKeywords";
  v2 = @"ActionClass";
  v3 = @"ActionKeywords";
  v4 = sub_1CA94C438();
  v6 = v5;
  v7 = sub_1CA94C438();
  v9 = v8;
  v10 = sub_1CA948E58();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v96 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  v97 = v12;
  v13 = &v83 - v96;
  sub_1CA948D98();
  if (qword_1EDB9F5F0 != -1)
  {
    swift_once();
  }

  v91 = qword_1EDB9F690;
  v14 = [qword_1EDB9F690 bundleURL];
  v15 = sub_1CA948BA8();
  v95 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v94 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v83 - v94;
  sub_1CA948B68();

  v18 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v19 = sub_1CA2F9F14(v4, v6, v7, v9, 0, 0, v13, v17);
  v20 = sub_1CA25B3D0(0, &qword_1EDB9F6E0, 0x1E696B100);
  *(inited + 80) = v19;
  *(inited + 104) = v20;
  *(inited + 112) = @"AppDefinition";
  v21 = @"AppDefinition";
  v22 = MEMORY[0x1E69E6158];
  v23 = sub_1CA94C1E8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437B8, &unk_1CA985870);
  *(inited + 120) = v23;
  *(inited + 144) = v24;
  *(inited + 152) = @"DisabledOnPlatforms";
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443E20, &qword_1CA986220);
  *(inited + 160) = &unk_1F49FBC78;
  *(inited + 184) = v25;
  *(inited + 192) = @"IconColor";
  *(inited + 200) = 1702194242;
  *(inited + 208) = 0xE400000000000000;
  *(inited + 224) = v22;
  *(inited + 232) = @"IconSymbol";
  *(inited + 240) = 0xD000000000000012;
  *(inited + 248) = 0x80000001CA9B8900;
  *(inited + 264) = v22;
  *(inited + 272) = @"InputPassthrough";
  *(inited + 304) = MEMORY[0x1E69E6370];
  *(inited + 280) = 1;
  v26 = @"DisabledOnPlatforms";
  v27 = @"IconColor";
  v28 = @"IconSymbol";
  v29 = @"InputPassthrough";
  v30 = sub_1CA94C368();
  *(inited + 344) = v22;
  *(inited + 312) = v30;
  *(inited + 320) = 0xD000000000000055;
  *(inited + 328) = 0x80000001CA9B8920;
  *(inited + 352) = sub_1CA94C368();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C0, &qword_1CA981328);
  v31 = swift_initStackObject();
  v93 = xmmword_1CA981310;
  *(v31 + 16) = xmmword_1CA981310;
  *(v31 + 32) = 0x65756C6176;
  *(v31 + 40) = 0xE500000000000000;
  v89 = sub_1CA25B3D0(0, &qword_1EDB9F710, off_1E836EDC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC443D80, &unk_1CA981BA0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1CA97EDF0;
  *(v32 + 32) = @"Key";
  *(v32 + 40) = 0xD000000000000011;
  *(v32 + 48) = 0x80000001CA9B8980;
  *(v32 + 64) = v22;
  *(v32 + 72) = @"RequiredResources";
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E0, &qword_1CA9813D0);
  v33 = swift_allocObject();
  *(v33 + 16) = v93;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC445FB0, &qword_1CA97EE10);
  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_1CA981370;
  *(v34 + 32) = 0xD000000000000011;
  *(v34 + 40) = 0x80000001CA99B240;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F0, &qword_1CA981430);
  v35 = swift_allocObject();
  *(v35 + 16) = v93;
  *&v93 = 0x80000001CA993590;
  v36 = @"Key";
  v37 = @"RequiredResources";
  v38 = MEMORY[0x1E69E6158];
  *(v35 + 32) = sub_1CA94C1E8();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437F8, &qword_1CA981438);
  *(v34 + 48) = v35;
  *(v34 + 72) = v39;
  strcpy((v34 + 80), "WFParameterKey");
  *(v34 + 95) = -18;
  *(v34 + 96) = 0x6574617473;
  *(v34 + 104) = 0xE500000000000000;
  *(v34 + 120) = v38;
  *(v34 + 128) = 0xD000000000000013;
  *(v34 + 136) = 0x80000001CA9939F0;
  *(v34 + 144) = 15649;
  *(v34 + 152) = 0xE200000000000000;
  v40 = MEMORY[0x1E69E6530];
  *(v34 + 168) = v38;
  *(v34 + 176) = 0xD000000000000010;
  *(v34 + 184) = 0x80000001CA993570;
  *(v34 + 192) = 0;
  *(v34 + 216) = v40;
  *(v34 + 224) = 0x72756F7365524657;
  *(v34 + 264) = v38;
  v90 = 0xD00000000000001BLL;
  *(v34 + 232) = 0xEF7373616C436563;
  *(v34 + 240) = 0xD00000000000001BLL;
  *(v34 + 248) = v93;
  *(v33 + 32) = sub_1CA94C1E8();
  *(v32 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437E8, &qword_1CA9813D8);
  *(v32 + 80) = v33;
  _s3__C3KeyVMa_0(0);
  sub_1CA29BCE4(&qword_1EDB9F780, _s3__C3KeyVMa_0);
  sub_1CA94C1E8();
  *(v31 + 48) = sub_1CA2F864C();
  v41 = sub_1CA94C1E8();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4437C8, &unk_1CA981330);
  *(inited + 360) = v41;
  *(inited + 384) = v42;
  *(inited + 392) = @"ParameterSummary";
  v89 = sub_1CA25B3D0(0, &unk_1EC441800, off_1E836DD60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC443910, &unk_1CA981A00);
  *&v93 = swift_allocObject();
  *(v93 + 16) = xmmword_1CA981470;
  v43 = @"ParameterSummary";
  v44 = sub_1CA94C438();
  v86 = v45;
  v87 = v44;
  v46 = sub_1CA94C438();
  v48 = v47;
  v88 = &v83;
  MEMORY[0x1EEE9AC00](v46);
  v49 = &v83 - v96;
  sub_1CA948D98();
  v50 = v91;
  v51 = [v91 bundleURL];
  MEMORY[0x1EEE9AC00](v51);
  v52 = v94;
  sub_1CA948B68();

  v53 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v54 = sub_1CA2F9F14(v87, v86, v46, v48, 0, 0, v49, &v83 - v52);
  v55 = objc_allocWithZone(WFActionParameterSummaryValue);
  v56 = sub_1CA65DD78(0x6F6974617265706FLL, 0xEF65746174732C6ELL, v54);
  v57 = v93;
  *(v93 + 32) = v56;
  v88 = "shlight ${state}";
  v58 = sub_1CA94C438();
  v85 = v59;
  v86 = v58;
  v84 = sub_1CA94C438();
  v61 = v60;
  v87 = &v83;
  MEMORY[0x1EEE9AC00](v84);
  v62 = &v83 - v96;
  sub_1CA948D98();
  v63 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v63);
  sub_1CA948B68();

  v64 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v65 = sub_1CA2F9F14(v86, v85, v84, v61, 0, 0, v62, &v83 - v52);
  v66 = objc_allocWithZone(WFActionParameterSummaryValue);
  *(v57 + 40) = sub_1CA65DD78(0xD000000000000021, v88 | 0x8000000000000000, v65);
  v88 = "WFFlashlightLevel";
  v67 = sub_1CA94C438();
  v69 = v68;
  v70 = sub_1CA94C438();
  v72 = v71;
  v87 = &v83;
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v83 - v96;
  sub_1CA948D98();
  v74 = [v50 bundleURL];
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v83 - v94;
  sub_1CA948B68();

  v76 = objc_allocWithZone(MEMORY[0x1E696B100]);
  v77 = sub_1CA2F9F14(v67, v69, v70, v72, 0, 0, v73, v75);
  v78 = objc_allocWithZone(WFActionParameterSummaryValue);
  v79 = sub_1CA65DD78(v90, v88 | 0x8000000000000000, v77);
  *(v93 + 48) = v79;
  v80 = v89;
  v81 = sub_1CA65AF90();
  *(inited + 424) = v80;
  *(inited + 400) = v81;
  type metadata accessor for Key(0);
  sub_1CA29BCE4(&qword_1EDB9FB10, type metadata accessor for Key);
  sub_1CA94C1E8();
  return sub_1CA332510();
}

uint64_t ContentGraphRepresentationContext.init(shortcutsParameter:shortcutsVariableSource:toolkitParameter:containerProvider:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 40) = a1;
  *(a4 + 48) = a2;
  v6 = type metadata accessor for ContentGraphRepresentationContext(0);
  sub_1CA393EE4(a3, a4 + *(v6 + 24), &qword_1EC444D00, &qword_1CA988B80);
  v7 = OUTLINED_FUNCTION_20_0();

  return sub_1CA2F1554(v7, v8);
}

uint64_t TypedValue.ID.resolve(in:)(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  OUTLINED_FUNCTION_90();
  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1CA45DCD4()
{
  OUTLINED_FUNCTION_23_1();
  OUTLINED_FUNCTION_6();
  v1 = v0[20];
  v2 = TypedValue.ID.variable.getter();
  v0[21] = v2;
  v3 = v2;
  v4 = *(v0[19] + 48);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1CA45DE34;
  v5 = OUTLINED_FUNCTION_213_0();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D50, &qword_1CA987A60);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1CA320A2C;
  v0[13] = &block_descriptor_13;
  v0[14] = v5;
  [v3 retrieveContentCollectionWithVariableSource:v4 completionHandler:v0 + 10];
  OUTLINED_FUNCTION_9_2();

  return MEMORY[0x1EEE6DEC8](v6);
}

uint64_t sub_1CA45DE34()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 176) = *(v3 + 48);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1CA45DF30()
{
  OUTLINED_FUNCTION_0();
  v1 = *(v0 + 144);

  v2 = OUTLINED_FUNCTION_1_3();

  return v3(v2);
}

uint64_t sub_1CA45DF8C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  swift_willThrow();

  v3 = *(v0 + 176);
  OUTLINED_FUNCTION_5();

  return v4();
}

uint64_t ContentGraphRepresentable.resolve(to:in:)()
{
  OUTLINED_FUNCTION_6();
  v0[2] = v1;
  v0[3] = v2;
  OUTLINED_FUNCTION_152_2(v3);
  v10 = (v4 + *v4);
  v6 = *(v5 + 4);
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1CA45E10C;
  v8 = OUTLINED_FUNCTION_188();

  return v10(v8);
}

uint64_t sub_1CA45E10C()
{
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_3();
  v5 = v4;
  OUTLINED_FUNCTION_2_2();
  *v6 = v5;
  v8 = *(v7 + 32);
  v9 = *v1;
  OUTLINED_FUNCTION_13();
  *v10 = v9;
  v5[5] = v3;

  if (v0)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v13 = swift_task_alloc();
    v5[6] = v13;
    *v13 = v9;
    v13[1] = sub_1CA45E270;
    v14 = v5[3];
    OUTLINED_FUNCTION_73_0(v5[2]);

    return WFContentCollection.resolve(to:in:)();
  }
}

uint64_t sub_1CA45E270()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_13();
  v4 = v3;
  OUTLINED_FUNCTION_2_2();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  OUTLINED_FUNCTION_13();
  *v9 = v8;
  *(v4 + 56) = v0;

  if (!v0)
  {
    *(v4 + 64) = v1;
  }

  OUTLINED_FUNCTION_27_3();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t TypedValue.resolve(to:in:)()
{
  OUTLINED_FUNCTION_0();
  v1[7] = v2;
  v1[8] = v0;
  v1[6] = v3;
  v4 = type metadata accessor for ContentGraphRepresentationContext(0);
  v1[9] = v4;
  OUTLINED_FUNCTION_18_0(v4);
  v6 = *(v5 + 64);
  v1[10] = OUTLINED_FUNCTION_45();
  v7 = type metadata accessor for ContentGraphRepresentationContext.ToolKitContext(0);
  OUTLINED_FUNCTION_18_0(v7);
  v9 = *(v8 + 64);
  v1[11] = OUTLINED_FUNCTION_45();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC444D00, &qword_1CA988B80);
  OUTLINED_FUNCTION_18_0(v10);
  v12 = *(v11 + 64);
  v1[12] = OUTLINED_FUNCTION_45();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A40, &unk_1CA983150);
  OUTLINED_FUNCTION_18_0(v13);
  v15 = *(v14 + 64);
  v1[13] = OUTLINED_FUNCTION_45();
  v16 = type metadata accessor for ParameterStateValueTransformContext(0);
  v1[14] = v16;
  OUTLINED_FUNCTION_18_0(v16);
  v18 = *(v17 + 64);
  v1[15] = OUTLINED_FUNCTION_45();
  v19 = sub_1CA94B778();
  v1[16] = v19;
  OUTLINED_FUNCTION_12(v19);
  v1[17] = v20;
  v22 = *(v21 + 64);
  v1[18] = OUTLINED_FUNCTION_45();
  v23 = sub_1CA94A928();
  v1[19] = v23;
  OUTLINED_FUNCTION_12(v23);
  v1[20] = v24;
  v26 = *(v25 + 64);
  v1[21] = OUTLINED_FUNCTION_45();
  v27 = sub_1CA94AC88();
  v1[22] = v27;
  OUTLINED_FUNCTION_12(v27);
  v1[23] = v28;
  v30 = *(v29 + 64);
  v1[24] = OUTLINED_FUNCTION_13_5();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v31 = sub_1CA949F78();
  v1[30] = v31;
  OUTLINED_FUNCTION_12(v31);
  v1[31] = v32;
  v34 = *(v33 + 64);
  v1[32] = OUTLINED_FUNCTION_13_5();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v35, v36, v37);
}

uint64_t sub_1CA45E630()
{
  v152 = v0;
  v1 = v0[36];
  v2 = v0[29];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[8];
  v0[37] = *MEMORY[0x1E69E10F8];
  sub_1CA949C58();
  v6 = *(v4 + 16);
  v0[38] = v6;
  v0[39] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7 = OUTLINED_FUNCTION_107_0();
  v6(v7);
  v8 = sub_1CA949F68();
  v145 = sub_1CA94CC38();
  v9 = os_log_type_enabled(v8, v145);
  v10 = v0[36];
  v11 = v0[31];
  v148 = v0[30];
  v12 = v0[29];
  v14 = v0[22];
  v13 = v0[23];
  if (v9)
  {
    v138 = v0[6];
    OUTLINED_FUNCTION_60_5();
    v144 = v6;
    v15 = swift_slowAlloc();
    v151[0] = OUTLINED_FUNCTION_29_4();
    *v15 = 136315394;
    v16 = sub_1CA94AC38();
    log = v8;
    v17 = *(v13 + 8);
    v18 = OUTLINED_FUNCTION_135_2();
    v17(v18);
    v19 = OUTLINED_FUNCTION_20_0();
    sub_1CA26B54C(v19, v20, v21);
    OUTLINED_FUNCTION_171();

    *(v15 + 4) = v12;
    *(v15 + 12) = 2080;
    v22 = sub_1CA94DA18();
    sub_1CA26B54C(v22, v23, v151);
    OUTLINED_FUNCTION_158();

    *(v15 + 14) = v16;
    _os_log_impl(&dword_1CA256000, log, v145, "Resolving %s into a %s", v15, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_76_4();
    v6 = v144;
    OUTLINED_FUNCTION_26();

    v24 = *(v11 + 8);
    v24(v10, v148);
  }

  else
  {

    v17 = *(v13 + 8);
    v25 = OUTLINED_FUNCTION_135_2();
    v17(v25);
    v24 = *(v11 + 8);
    v24(v10, v148);
  }

  v0[40] = v24;
  v0[41] = v17;
  v26 = v0[28];
  v27 = v0[22];
  v28 = v0[23];
  v29 = v0[8];
  v30 = OUTLINED_FUNCTION_136();
  v6(v30);
  v31 = *(v28 + 88);
  v32 = OUTLINED_FUNCTION_3_3();
  v34 = v33(v32);
  v35 = v0[28];
  if (v34 == *MEMORY[0x1E69DAE50])
  {
    v37 = v0[20];
    v36 = v0[21];
    v38 = v0[19];
    v39 = v0[6];
    v40 = OUTLINED_FUNCTION_14_1(v0[23]);
    v41(v40);
    v42 = *v35;
    swift_projectBox();
    v43 = OUTLINED_FUNCTION_22();
    v44(v43);

    if (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC445A50, &unk_1CA989900) == v39)
    {
      v106 = v0[18];
      v107 = v0[21];
      sub_1CA94A918();
      Query.toTableTemplateValue()();
      v109 = v0[20];
      v108 = v0[21];
      v110 = v0[19];
      (*(v0[17] + 8))(v0[18], v0[16]);
      v111 = *(v109 + 8);
      v112 = OUTLINED_FUNCTION_107_0();
      v113(v112);
      v115 = v0[35];
      v114 = v0[36];
      v117 = v0[33];
      v116 = v0[34];
      v118 = v0[32];
      v120 = v0[28];
      v119 = v0[29];
      v122 = v0[26];
      v121 = v0[27];
      v123 = v0[25];
      v133 = v0[24];
      v134 = v0[21];
      logb = v0[18];
      v139 = v0[15];
      v141 = v0[13];
      v143 = v0[12];
      v147 = v0[11];
      v150 = v0[10];

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_90_0();

      __asm { BRAA            X2, X16 }
    }

    (*(v0[20] + 8))(v0[21], v0[19]);
  }

  else
  {
    (v17)(v0[28], v0[22]);
  }

  v45 = *(v0[7] + 40);
  v0[42] = v45;
  if (v45)
  {
    v47 = v0[11];
    v46 = v0[12];
    v48 = OUTLINED_FUNCTION_22_13(*(v0[9] + 24));
    sub_1CA47154C(v48, v47);
    v49 = OUTLINED_FUNCTION_116();
    sub_1CA393EE4(v49, v50, v51, v52);
    v53 = sub_1CA94B258();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v46, 1, v53);
    v55 = v45;
    if (EnumTagSinglePayload == 1)
    {
      sub_1CA27080C(v0[12], &qword_1EC444D00, &qword_1CA988B80);
    }

    else
    {
      v91 = v0[12];
      v90 = v0[13];
      MEMORY[0x1CCAA00A0]();
      OUTLINED_FUNCTION_39(v53);
      v93 = *(v92 + 8);
      v94 = OUTLINED_FUNCTION_52_0();
      v95(v94);
      EnumTagSinglePayload = 0;
    }

    v97 = v0[14];
    v96 = v0[15];
    v98 = v0[13];
    v99 = v0[7];
    v100 = sub_1CA94AD08();
    __swift_storeEnumTagSinglePayload(v98, EnumTagSinglePayload, 1, v100);
    sub_1CA471C98(v99, v96 + *(v97 + 24));
    *v96 = v55;
    sub_1CA393EE4(v98, v96 + *(v97 + 20), &unk_1EC445A40, &unk_1CA983150);
    v101 = v55;
    v102 = swift_task_alloc();
    v0[43] = v102;
    *v102 = v0;
    v102[1] = sub_1CA45EE18;
    v103 = v0[15];
    OUTLINED_FUNCTION_73_0(v0[8]);
    OUTLINED_FUNCTION_90_0();

    return sub_1CA6337C0();
  }

  else
  {
    v57 = v0[38];
    v56 = v0[39];
    v58 = v0[33];
    v59 = v0[25];
    v60 = v0[22];
    v61 = v0[10];
    v62 = v0[8];
    v63 = *MEMORY[0x1E69E1110];
    sub_1CA949C58();
    v64 = OUTLINED_FUNCTION_164();
    v57(v64);
    OUTLINED_FUNCTION_6_26();
    v65 = OUTLINED_FUNCTION_41_0();
    sub_1CA47154C(v65, v66);
    v67 = sub_1CA949F68();
    v146 = sub_1CA94CBF8();
    v68 = os_log_type_enabled(v67, v146);
    v69 = v0[40];
    v70 = v0[41];
    v71 = v0[33];
    v72 = v0[30];
    v149 = v0[31];
    v73 = v0[25];
    v75 = v0[22];
    v74 = v0[23];
    v76 = v0[10];
    if (v68)
    {
      loga = v0[6];
      OUTLINED_FUNCTION_254();
      v151[0] = OUTLINED_FUNCTION_102_2();
      *v72 = 136315650;
      v140 = v71;
      v142 = v69;
      v77 = sub_1CA94AC38();
      v79 = v78;
      v80 = OUTLINED_FUNCTION_63_7();
      v70(v80);
      v81 = OUTLINED_FUNCTION_20_0();
      sub_1CA26B54C(v81, v82, v83);
      OUTLINED_FUNCTION_171();

      OUTLINED_FUNCTION_164_2();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_2_35();
      sub_1CA4715A8(v76, v84);
      v85 = OUTLINED_FUNCTION_3_3();
      sub_1CA26B54C(v85, v86, v87);
      OUTLINED_FUNCTION_87();

      *(v72 + 14) = v73;
      *(v72 + 22) = v79;
      v0[3] = loga;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
      v88 = sub_1CA94C408();
      sub_1CA26B54C(v88, v89, v151);
      OUTLINED_FUNCTION_158();

      *(v72 + 24) = v77;
      OUTLINED_FUNCTION_163_2(&dword_1CA256000, "Resolving typed value %s into content collection with context: %s, type: %s", v146);
      OUTLINED_FUNCTION_144_2();
      OUTLINED_FUNCTION_138();
      OUTLINED_FUNCTION_54_5();

      v142(v140, v72);
    }

    else
    {

      OUTLINED_FUNCTION_2_35();
      sub_1CA4715A8(v76, v126);
      v127 = OUTLINED_FUNCTION_63_7();
      v70(v127);
      v128 = OUTLINED_FUNCTION_164();
      (v69)(v128);
    }

    v129 = swift_task_alloc();
    v130 = OUTLINED_FUNCTION_154_3(v129);
    *v130 = v131;
    OUTLINED_FUNCTION_8_16(v130);
    OUTLINED_FUNCTION_90_0();

    return TypedValue.resolve(in:)();
  }
}

uint64_t sub_1CA45EE18()
{
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_2_2();
  *v4 = v3;
  v5 = *(v2 + 344);
  v6 = *v1;
  OUTLINED_FUNCTION_1_1();
  *v7 = v6;
  *(v9 + 352) = v8;

  v10 = *(v2 + 120);
  if (v0)
  {
  }

  sub_1CA4715A8(v10, type metadata accessor for ParameterStateValueTransformContext);
  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1CA45EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_124_1();
  a27 = v29;
  a28 = v30;
  OUTLINED_FUNCTION_162_0();
  a26 = v28;
  v31 = *(v28[7] + 48);
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32 && (v33 = [v32 workflow]) != 0)
  {
    v34 = v33;
    v85 = [v33 environment];
  }

  else
  {
    v85 = 0;
  }

  v35 = v28[44];
  v36 = v28[42];
  v81 = v28[38];
  v83 = v28[39];
  v37 = v28[37];
  v38 = v28[35];
  v77 = v28[27];
  v79 = v28[22];
  v39 = v28[8];
  v40 = objc_allocWithZone(WFContentAttributionTracker);
  v41 = v36;
  swift_unknownObjectRetain();
  v42 = [v40 init];
  v43 = *MEMORY[0x1E696E540];
  v44 = objc_allocWithZone(WFParameterStateProcessingContext);
  v45 = v43;
  v28[45] = sub_1CA4710A8(v31, v41, 0, v85, v42, v43);
  sub_1CA949C58();
  v81(v77, v39, v79);
  swift_unknownObjectRetain();
  v46 = sub_1CA949F68();
  v47 = sub_1CA94CC38();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = v28[44];
    v76 = v28[41];
    v82 = v28[35];
    v84 = v28[40];
    v78 = v28[31];
    v80 = v28[30];
    v49 = v28[27];
    v50 = v28[22];
    v51 = v28[23];
    OUTLINED_FUNCTION_60_5();
    v52 = swift_slowAlloc();
    a17 = OUTLINED_FUNCTION_29_4();
    *v52 = 136315394;
    v53 = sub_1CA94AC38();
    v55 = v54;
    v56 = OUTLINED_FUNCTION_61();
    v76(v56);
    sub_1CA26B54C(v53, v55, &a17);
    OUTLINED_FUNCTION_87();

    OUTLINED_FUNCTION_81_3();
    v28[5] = v48;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC446010, &unk_1CA987B90);
    v57 = sub_1CA94C408();
    sub_1CA26B54C(v57, v58, &a17);
    OUTLINED_FUNCTION_158();

    *(v52 + 14) = v55;
    OUTLINED_FUNCTION_140_3(&dword_1CA256000, v46, v47, "Transformed %s into a parameter state: %s");
    OUTLINED_FUNCTION_167_1();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_51();

    v84(v82, v80);
  }

  else
  {
    v60 = v28[40];
    v59 = v28[41];
    v61 = v28[35];
    v62 = v28[30];
    v63 = v28[31];
    v64 = v28[27];
    v65 = v28[22];
    v66 = v28[23];

    v67 = OUTLINED_FUNCTION_70();
    v59(v67);
    v68 = OUTLINED_FUNCTION_3_3();
    v60(v68);
  }

  v69 = v28[44];
  swift_getObjectType();
  v70 = swift_task_alloc();
  v28[46] = v70;
  *v70 = v28;
  v70[1] = sub_1CA45F2D4;
  v71 = v28[44];
  OUTLINED_FUNCTION_53();

  return WFParameterState.process(context:)(v72, v73);
}

uint64_t sub_1CA45F2D4()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_1();
  *v3 = v2;
  v5 = *(v4 + 368);
  *v3 = *v1;
  *(v2 + 376) = v6;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_90();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1CA45F3DC()
{
  v97 = v0;
  v2 = *(v0 + 376);
  if (v2)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 376);
    if (swift_getObjectType() == v3)
    {
      v44 = *(v0 + 304);
      v43 = *(v0 + 312);
      v45 = *(v0 + 296);
      v46 = *(v0 + 272);
      v47 = *(v0 + 208);
      v48 = *(v0 + 176);
      v49 = *(v0 + 64);
      sub_1CA949C58();
      v50 = OUTLINED_FUNCTION_56_5();
      v44(v50);
      swift_unknownObjectRetain();
      v51 = sub_1CA949F68();
      LOBYTE(v46) = sub_1CA94CC38();
      swift_unknownObjectRelease();
      v87 = v46;
      v52 = os_log_type_enabled(v51, v46);
      v53 = *(v0 + 352);
      v54 = *(v0 + 328);
      v91 = *(v0 + 336);
      v55 = *(v0 + 320);
      v56 = *(v0 + 272);
      v57 = *(v0 + 240);
      v94 = *(v0 + 248);
      v58 = *(v0 + 208);
      v59 = *(v0 + 176);
      v60 = *(v0 + 184);
      if (v52)
      {
        OUTLINED_FUNCTION_60_5();
        v81 = v61;
        v84 = v57;
        v62 = swift_slowAlloc();
        v96 = OUTLINED_FUNCTION_29_4();
        *v62 = 136315394;
        sub_1CA94AC38();
        v63 = OUTLINED_FUNCTION_52_0();
        v54(v63);
        v64 = OUTLINED_FUNCTION_176_0();
        v67 = sub_1CA26B54C(v64, v65, v66);

        *(v62 + 4) = v67;
        *(v62 + 12) = 2080;
        *(v0 + 32) = v2;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444280, &qword_1CA983550);
        v68 = sub_1CA94C408();
        sub_1CA26B54C(v68, v69, &v96);
        OUTLINED_FUNCTION_11();

        *(v62 + 14) = v59;
        _os_log_impl(&dword_1CA256000, v51, v87, "Resolved %s into a %s using parameter state transformation", v62, 0x16u);
        OUTLINED_FUNCTION_167_1();
        OUTLINED_FUNCTION_138();
        OUTLINED_FUNCTION_26();

        swift_unknownObjectRelease();
        OUTLINED_FUNCTION_153_3();
        v55(v56, v84);
      }

      else
      {

        swift_unknownObjectRelease();
        v70 = OUTLINED_FUNCTION_52_0();
        v54(v70);
        OUTLINED_FUNCTION_153_3();
        v55(v56, v57);
      }

      OUTLINED_FUNCTION_112_2();
      v72 = *(v0 + 224);
      v71 = *(v0 + 232);
      v74 = *(v0 + 208);
      v73 = *(v0 + 216);
      v77 = *(v0 + 200);
      v78 = *(v0 + 192);
      v80 = *(v0 + 168);
      v82 = *(v0 + 144);
      v85 = *(v0 + 120);
      v88 = *(v0 + 104);
      v89 = *(v0 + 96);
      v92 = *(v0 + 88);
      v95 = *(v0 + 80);

      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_202();

      __asm { BRAA            X2, X16 }
    }

    v5 = *(v0 + 352);
    v6 = *(v0 + 336);

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v0 + 352);
    v6 = *(v0 + 336);
  }

  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_30_13();
  v8 = *MEMORY[0x1E69E1110];
  sub_1CA949C58();
  v9 = OUTLINED_FUNCTION_116_3();
  v1(v9);
  OUTLINED_FUNCTION_6_26();
  v10 = OUTLINED_FUNCTION_195();
  sub_1CA47154C(v10, v11);
  v12 = sub_1CA949F68();
  v90 = sub_1CA94CBF8();
  v13 = os_log_type_enabled(v12, v90);
  v14 = *(v0 + 320);
  v15 = *(v0 + 328);
  v16 = *(v0 + 264);
  v17 = *(v0 + 240);
  v93 = *(v0 + 248);
  v18 = *(v0 + 200);
  v20 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 80);
  if (v13)
  {
    v79 = *(v0 + 48);
    OUTLINED_FUNCTION_254();
    v96 = OUTLINED_FUNCTION_102_2();
    *v17 = 136315650;
    v83 = v16;
    v86 = v14;
    v22 = sub_1CA94AC38();
    v24 = v23;
    v25 = OUTLINED_FUNCTION_63_7();
    v15(v25);
    v26 = OUTLINED_FUNCTION_20_0();
    sub_1CA26B54C(v26, v27, v28);
    OUTLINED_FUNCTION_171();

    OUTLINED_FUNCTION_164_2();
    OUTLINED_FUNCTION_5_0();
    OUTLINED_FUNCTION_2_35();
    sub_1CA4715A8(v21, v29);
    v30 = OUTLINED_FUNCTION_3_3();
    sub_1CA26B54C(v30, v31, v32);
    OUTLINED_FUNCTION_87();

    *(v17 + 14) = v18;
    *(v17 + 22) = v24;
    *(v0 + 24) = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC444880, &qword_1CA984340);
    v33 = sub_1CA94C408();
    sub_1CA26B54C(v33, v34, &v96);
    OUTLINED_FUNCTION_158();

    *(v17 + 24) = v22;
    OUTLINED_FUNCTION_163_2(&dword_1CA256000, "Resolving typed value %s into content collection with context: %s, type: %s", v90);
    OUTLINED_FUNCTION_144_2();
    OUTLINED_FUNCTION_138();
    OUTLINED_FUNCTION_54_5();

    OUTLINED_FUNCTION_153_3();
    v86(v83, v17);
  }

  else
  {

    OUTLINED_FUNCTION_2_35();
    sub_1CA4715A8(v21, v35);
    v36 = OUTLINED_FUNCTION_63_7();
    v15(v36);
    OUTLINED_FUNCTION_153_3();
    v37 = OUTLINED_FUNCTION_164();
    (v14)(v37);
  }

  v38 = swift_task_alloc();
  v39 = OUTLINED_FUNCTION_154_3(v38);
  *v39 = v40;
  OUTLINED_FUNCTION_8_16(v39);
  OUTLINED_FUNCTION_202();

  return TypedValue.resolve(in:)();
}