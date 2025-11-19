uint64_t sub_2743F36A0()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2743F36D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F3708()
{

  return swift_deallocObject();
}

BOOL sub_2743F3740(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_2743F3770()
{
  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_12();
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2743F37C4()
{
  if (OUTLINED_FUNCTION_34())
  {
    OUTLINED_FUNCTION_12();
  }

  else
  {
    OUTLINED_FUNCTION_11();
  }

  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F3818()
{
  if (OUTLINED_FUNCTION_61())
  {
    sub_27463A12C();
    OUTLINED_FUNCTION_43();

    return sub_27463965C();
  }

  else
  {
    sub_27463972C();
    OUTLINED_FUNCTION_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_22();
    sub_27463965C();
    sub_27463C0AC();
    OUTLINED_FUNCTION_13();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_27463972C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_43();
    return sub_27463965C();
  }
}

uint64_t sub_2743F3934()
{
  if (OUTLINED_FUNCTION_61())
  {
    sub_27463A12C();
    OUTLINED_FUNCTION_63();
  }

  else
  {
    sub_27463972C();
    OUTLINED_FUNCTION_14();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    OUTLINED_FUNCTION_63();
    sub_27463C0AC();
    OUTLINED_FUNCTION_13();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_27463972C();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_22();
    sub_274639F4C();
    sub_27463965C();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743F3B18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27440C9CC();
  *a1 = result;
  return result;
}

void sub_2743F3BC4(uint64_t a1@<X8>)
{
  sub_2743F3BF8();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

uint64_t sub_2743F3C74(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_46(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2743F3C8C(uint64_t result, int a2, int a3)
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

uint64_t sub_2743F3CB8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_46(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VelocityFilter(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_2743F3CFC()
{

  OUTLINED_FUNCTION_20();

  return swift_deallocObject();
}

uint64_t sub_2743F3D30()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F3DA8()
{
  v1 = sub_274638CDC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2743F3E68()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F3E9C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F3EDC()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F3F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
      v10 = *(a3 + 36);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_2743F3FF4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
      v10 = *(a4 + 36);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2743F40D4()
{
  v1 = (type metadata accessor for WorkflowOutputPreviewView() - 8);
  v2 = (v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80)));

  v3 = v2 + v1[8];
  sub_2746389FC();
  OUTLINED_FUNCTION_7();
  (*(v4 + 8))(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);

  v5 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v2 + v5);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743F4278@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

uint64_t get_enum_tag_for_layout_string_s11AnyHashableVSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2743F439C()
{
  v1 = type metadata accessor for ListParameterListContentView();
  OUTLINED_FUNCTION_11_0();
  v3 = (*(v2 + 80) + 120) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = v0 + v3;

  sub_2743F459C();
  if (*(v0 + v3 + 152))
  {
    if (*(v4 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v4 + 112);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v4 + 160), *(v4 + 168));
  v5 = v1[38];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_86(v4 + v5))
    {
      OUTLINED_FUNCTION_23_0();
      (*(v7 + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  v8 = OUTLINED_FUNCTION_68(v4 + v1[39]);
  j__swift_release(v8, v9);
  v10 = v1[40];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
  OUTLINED_FUNCTION_7();
  (*(v11 + 8))(v4 + v10);
  OUTLINED_FUNCTION_90();
  return swift_deallocObject();
}

uint64_t sub_2743F45D0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_2743F45E8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

__n128 sub_2743F4650(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = result;
  return result;
}

uint64_t sub_2743F4708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 152);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
      v10 = *(a3 + 160);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2743F47EC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 152);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A490);
      v10 = *(a4 + 160);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

double sub_2743F4930@<D0>(uint64_t a1@<X8>)
{
  sub_2746398BC();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_2743F49D0()
{

  sub_2743F459C();
  sub_2743F45E8(*(v0 + 160), *(v0 + 168));

  if (*(v0 + 232))
  {
    if (*(v0 + 216))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 192);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v0 + 240), *(v0 + 248));

  return swift_deallocObject();
}

uint64_t sub_2743F4A70()
{

  return swift_deallocObject();
}

void sub_2743F4B3C()
{
  OUTLINED_FUNCTION_24();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6B0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_274639DEC();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  sub_27463ADBC();
  OUTLINED_FUNCTION_67();
  sub_274639EFC();
  OUTLINED_FUNCTION_34_0();
  sub_274433D44(v0);
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  sub_27463965C();
  sub_27463965C();
  OUTLINED_FUNCTION_51_0();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_50_0();
  sub_274433D44(v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for StackList();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A6C8);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_52_0();
  sub_27463965C();
  sub_27463965C();
  sub_274430088();
  OUTLINED_FUNCTION_49_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_48_0();
  sub_274434E04(v2);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463914C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  sub_27463AC1C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6E0);
  OUTLINED_FUNCTION_52_0();
  sub_27463965C();
  type metadata accessor for ListParameterOutlineModalEditor();
  type metadata accessor for ListParameterListContentView();
  sub_274639F1C();
  OUTLINED_FUNCTION_31_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_46_0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_274412BBC();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  swift_getOpaqueTypeConformance2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  OUTLINED_FUNCTION_44_0();
  sub_274434E04(v3);
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_22();
  sub_2746394FC();
  sub_27463A11C();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_41_0();
  sub_274433D44(v4);
  swift_getOpaqueTypeMetadata2();
  type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_67();
  sub_27463965C();
  sub_27463C0AC();
  OUTLINED_FUNCTION_40_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  sub_274434E04(v5);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_0();
  sub_274434E04(v6);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_38_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_37_0();
  sub_274433D44(v7);
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_23();
}

uint64_t sub_2743F53C8()
{
  OUTLINED_FUNCTION_36_0();
  sub_27463AF4C();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B92C();
  OUTLINED_FUNCTION_69();
  swift_getAssociatedTypeWitness();
  type metadata accessor for StackListRow();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_67();
  sub_27463965C();
  OUTLINED_FUNCTION_6_0();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  sub_27463AF9C();
  OUTLINED_FUNCTION_30();
  sub_27463965C();
  OUTLINED_FUNCTION_36_0();
  type metadata accessor for DismissDeleteConfirmationModifier();
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_30();
  sub_27463AE6C();
  OUTLINED_FUNCTION_30();
  sub_27463913C();
  OUTLINED_FUNCTION_30();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F5674()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A908);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F56D4()
{
  v23 = *(v0 + 56);
  v4 = type metadata accessor for StackListRow();
  OUTLINED_FUNCTION_11_0();
  v6 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_98();

  OUTLINED_FUNCTION_76(v7, v8, v9, v10, v11, v12, v13, v14, v23);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_52_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v16 = sub_27463AF4C();
  if (!OUTLINED_FUNCTION_83(v16))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v17 + 8))(v2 + v3, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_98();

  v18 = *(v1 + 32);
  if (!OUTLINED_FUNCTION_86(v2 + v18))
  {
    OUTLINED_FUNCTION_23_0();
    (*(v19 + 8))(v2 + v18, AssociatedTypeWitness);
  }

  v20 = OUTLINED_FUNCTION_68(v0 + v6 + *(v4 + 96));
  sub_2743F45E8(v20, v21);
  return swift_deallocObject();
}

uint64_t sub_2743F58A8()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F5908(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A898);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F5980()
{
  OUTLINED_FUNCTION_64();
  v1 = type metadata accessor for DismissDeleteConfirmationModifier();
  OUTLINED_FUNCTION_19_0(v1);
  v3 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_36_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_35_0();
  v5 = *(sub_27463AF4C() + 32);
  if (!__swift_getEnumTagSinglePayload(v3 + v5, 1, AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v6 + 8))(v3 + v5, AssociatedTypeWitness);
  }

  OUTLINED_FUNCTION_90();

  return swift_deallocObject();
}

void sub_2743F5AE8()
{
  OUTLINED_FUNCTION_96();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A898);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A0);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8A8);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_36_0();
  type metadata accessor for DismissDeleteConfirmationModifier();
  OUTLINED_FUNCTION_62_0();
  sub_27463965C();
  OUTLINED_FUNCTION_36_0();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A760);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33();
  sub_274434E04(v0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_0();
  sub_274434E04(v1);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_0();
  sub_274434E04(v2);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094A8B8);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A8C0);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_77();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463AE6C();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_95();
}

uint64_t sub_2743F5FA4()
{
  type metadata accessor for DismissDeleteConfirmationModifier();
  OUTLINED_FUNCTION_32_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA60);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_33();
  sub_274434E04(v0);
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F6098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483645)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 2;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2743F613C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483645)
  {
    *(result + 16) = (a2 + 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F6204()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094ABE0);
  OUTLINED_FUNCTION_0_4();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F6268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2743F62BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2743F633C()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438A28();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6398()
{
  OUTLINED_FUNCTION_5_3();
  v0 = sub_274438B20();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F649C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443A0F0();
  *v0 = result;
  return result;
}

uint64_t sub_2743F64D4()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443A95C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6520()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443AC4C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F656C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443AF38();
  *v0 = result;
  return result;
}

uint64_t sub_2743F65BC()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443B22C();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6610()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443B680();
  *v0 = result;
  return result;
}

uint64_t sub_2743F664C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C514();
  *v0 = result;
  return result;
}

uint64_t sub_2743F6678()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443CDC8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F66AC()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443D564();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F66F8()
{

  return swift_deallocObject();
}

uint64_t sub_2743F6738()
{

  return swift_deallocObject();
}

uint64_t sub_2743F6770()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463985C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F679C()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27451D5DC();
  *v0 = result;
  return result;
}

uint64_t sub_2743F6A08()
{
  OUTLINED_FUNCTION_16_1();
  v0 = sub_27443B4C4();
  return OUTLINED_FUNCTION_6_1(v0);
}

uint64_t sub_2743F6B74()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C030();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F6BC8()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C0F0();
  *v0 = result;
  return result;
}

uint64_t sub_2743F6BF4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27443C2B8();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F6EFC()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F6F34()
{

  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t sub_2743F6F7C()
{
  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743F6FB8()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743F6FF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7040()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743F7074()
{

  return swift_deallocObject();
}

uint64_t sub_2743F70BC()
{
  OUTLINED_FUNCTION_9_3();

  return swift_deallocObject();
}

uint64_t sub_2743F7118()
{
  OUTLINED_FUNCTION_9_3();

  return swift_deallocObject();
}

uint64_t sub_2743F7174()
{
  type metadata accessor for PropertyListOutlineContent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D0);
  sub_274448EC8();
  OUTLINED_FUNCTION_0_9();
  sub_27440CA78(v0, &qword_28094B2F8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B2D8);
  sub_27463A11C();
  OUTLINED_FUNCTION_3_6();
  sub_27440CA78(v1, &qword_28094B2D8);
  OUTLINED_FUNCTION_2_7();
  sub_2744493A4(v2, v3);
  OUTLINED_FUNCTION_1_7();
  swift_getOpaqueTypeConformance2();
  type metadata accessor for ListParameterLayoutView();
  type metadata accessor for ListParameterLayoutView();
  sub_274639DEC();
  OUTLINED_FUNCTION_4_4();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F7398()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743F73D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7490()
{

  return swift_deallocObject();
}

uint64_t sub_2743F74C8()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

char *sub_2743F7524(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_11(a3, result);
  }

  return result;
}

uint64_t sub_2743F7614()
{
  sub_27445429C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_2743F7658()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7690()
{
  sub_27463965C();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743F770C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7764()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F77B8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2743F7838()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2743F78B4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  if (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BBD8) - 8) + 84) == a2)
  {
    v5 = *(a3 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    v5 = *(a3 + 36);
  }

  v6 = OUTLINED_FUNCTION_20_2(v5);

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F7984()
{
  OUTLINED_FUNCTION_23_2();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BBD8) - 8);
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_20_2(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v0, v11);
  }
}

uint64_t sub_2743F7A58()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC40);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743F7AB8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC40);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F7B24()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7B78()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7BAC()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F7BE0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F7C18()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7CB4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7CF4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F7D40(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    OUTLINED_FUNCTION_13_6();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = a3[10];
    }

    else
    {
      sub_274637B5C();
      OUTLINED_FUNCTION_13_6();
      if (*(v13 + 84) == a2)
      {
        v10 = v12;
        v11 = a3[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEA0);
        v11 = a3[13];
      }
    }

    return __swift_getEnumTagSinglePayload(a1 + v11, a2, v10);
  }
}

uint64_t sub_2743F7E60(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    OUTLINED_FUNCTION_13_6();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = a4[10];
    }

    else
    {
      sub_274637B5C();
      OUTLINED_FUNCTION_13_6();
      if (*(v13 + 84) == a3)
      {
        v10 = v12;
        v11 = a4[11];
      }

      else
      {
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BEA0);
        v11 = a4[13];
      }
    }

    return __swift_storeEnumTagSinglePayload(v5 + v11, a2, a2, v10);
  }

  return result;
}

uint64_t sub_2743F7F8C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8008(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743F809C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F8170()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C060);
  sub_27440CA78(&unk_2809493B0, &unk_2809493A0);
  sub_27440AA3C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F823C()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F82A4()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743F8324()
{

  sub_2744671A4(*(v0 + 88), *(v0 + 96), *(v0 + 104));

  return swift_deallocObject();
}

uint64_t sub_2743F840C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F845C()
{
  swift_unknownObjectUnownedDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F8490()
{

  return swift_deallocObject();
}

uint64_t sub_2743F84E0()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743F8524()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F8564()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274468B20();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743F85C0()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27446894C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F85EC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274468770();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743F8618()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744686A0();
  *v0 = result;
  *(v0 + 8) = v2;
  return result;
}

uint64_t sub_2743F86AC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27447EB8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743F8714()
{
  OUTLINED_FUNCTION_5_3();
  result = MEMORY[0x277C55F30]();
  *v0 = result;
  return result;
}

uint64_t sub_2743F8744()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463983C();
  *v0 = result;
  return result;
}

uint64_t sub_2743F8798()
{
  OUTLINED_FUNCTION_48_1();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_53_1(*(v0 + 8));
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
  v6 = OUTLINED_FUNCTION_20_2(*(v5 + 80));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F8818(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1();
  if (v5 == v6)
  {
    *(v2 + 8) = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    v8 = OUTLINED_FUNCTION_20_2(*(v7 + 80));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2743F889C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v3 = *(a1 + 16);
    if (v3 > 1)
    {
      return (v3 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v6 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

    return __swift_getEnumTagSinglePayload(v6, v7, v8);
  }
}

uint64_t sub_2743F8924(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 254)
  {
    *(result + 16) = -a2;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v6 = OUTLINED_FUNCTION_20_2(*(a4 + 24));

    return __swift_storeEnumTagSinglePayload(v6, v7, a2, v8);
  }

  return result;
}

uint64_t sub_2743F89A8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C350);
  sub_274480A38();
  sub_274452C2C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743F8AA8()
{

  sub_27447FCE8(*(v0 + 48), *(v0 + 56));
  sub_274482198(*(v0 + 64), *(v0 + 72));
  sub_2743F45E8(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_2743F8B14()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F8B5C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8BAC()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8C18()
{

  return swift_deallocObject();
}

uint64_t sub_2743F8C64@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2745E2684();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743F8CBC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746397FC();
  *v0 = v2;
  return result;
}

uint64_t sub_2743F8D14()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_46_1() == 1)
  {
    v1 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v1))
    {
      OUTLINED_FUNCTION_25_0();
      v2 = OUTLINED_FUNCTION_42_2();
      v3(v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_39_2();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F8EA4()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F8EF8()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_47_1();
  if (*(v0 + 16))
  {
  }

  if (*(v0 + 32))
  {
  }

  if (*(v0 + 48))
  {
  }

  if (*(v0 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_46_1() == 1)
  {
    v1 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v1))
    {
      OUTLINED_FUNCTION_25_0();
      v2 = OUTLINED_FUNCTION_42_2();
      v3(v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F9088()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F90DC()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for ActionView(0);
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_47_1();
  if (*(v1 + 16))
  {
  }

  if (*(v1 + 32))
  {
  }

  if (*(v1 + 48))
  {
  }

  if (*(v1 + 72))
  {
  }

  OUTLINED_FUNCTION_2_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_46_1() == 1)
  {
    v6 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_14_7(v6))
    {
      OUTLINED_FUNCTION_25_0();
      v7 = OUTLINED_FUNCTION_42_2();
      v8(v7);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743F9268()
{
  OUTLINED_FUNCTION_48_1();
  if (v2 == v3)
  {
    return OUTLINED_FUNCTION_53_1(*v0);
  }

  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8);
  v6 = OUTLINED_FUNCTION_20_2(*(v5 + 32));

  return __swift_getEnumTagSinglePayload(v6, v7, v8);
}

void sub_2743F92E8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_48_1();
  if (v5 == v6)
  {
    *v2 = (a2 - 1);
  }

  else
  {
    v7 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CAC8);
    v8 = OUTLINED_FUNCTION_20_2(*(v7 + 32));

    __swift_storeEnumTagSinglePayload(v8, v9, a2, v10);
  }
}

uint64_t sub_2743F936C()
{
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C5D0);
  sub_27463965C();
  sub_274639DEC();
  sub_274639DEC();
  swift_getWitnessTable();
  sub_27440CA78(&qword_28094C5D8, &qword_28094C5D0);
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743F9570()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2743F966C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743F96F4()
{

  return swift_deallocObject();
}

uint64_t sub_2743F972C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9784()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743F97EC()
{

  return swift_deallocObject();
}

uint64_t sub_2743F985C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F989C()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9914()
{

  return swift_deallocObject();
}

uint64_t sub_2743F994C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743F9A48()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9AAC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_2743F9B40(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743F9BD0()
{

  return swift_deallocObject();
}

uint64_t sub_2743F9C08()
{
  type metadata accessor for TagPickerView();
  OUTLINED_FUNCTION_5_16();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);

  v4 = v1 + v3 + *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {

    v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A210) + 32);
    sub_2746396DC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(v4 + v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2743F9D74(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D130);
  OUTLINED_FUNCTION_7();
  (*(v4 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2743F9DDC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D130);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_2743F9EA0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D0A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D0D8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D098);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D090);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D088);
  sub_27463955C();
  sub_27440CA78(&qword_28094D0C0, &qword_28094D088);
  OUTLINED_FUNCTION_3_16();
  OUTLINED_FUNCTION_3_16();
  sub_274412BBC();
  OUTLINED_FUNCTION_3_16();
  sub_27440CA78(&qword_28094D0E0, &qword_28094D0D8);
  return OUTLINED_FUNCTION_3_16();
}

uint64_t sub_2743FA0AC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA0EC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA150()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FA188()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA1D0()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA220()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA25C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA29C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FA304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278);
    v10 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }
}

uint64_t sub_2743FA3A4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 32) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FA45C()
{
  type metadata accessor for ParameterValuePickerView();
  OUTLINED_FUNCTION_5_16();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_17();
  v6 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8);
  if (OUTLINED_FUNCTION_11_7() == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_15();

  return swift_deallocObject();
}

uint64_t sub_2743FA554@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2746399BC();
  *a1 = result;
  return result;
}

uint64_t sub_2743FA5AC()
{
  type metadata accessor for ParameterValuePickerView();
  OUTLINED_FUNCTION_5_16();
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_5_17();
  v6 = *(v0 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BAE8);
  if (OUTLINED_FUNCTION_11_7() == 1)
  {
    sub_27463936C();
    OUTLINED_FUNCTION_4_2();
    (*(v7 + 8))(v3 + v6);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7_15();

  return swift_deallocObject();
}

uint64_t sub_2743FA6AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274468A2C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2743FA774()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA7AC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FA7EC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FA82C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743FA8C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FA94C()
{
  v1 = type metadata accessor for TagFieldHostView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_274482198(*(v2 + 64), *(v2 + 72));
  v3 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743FAABC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FAAF4()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FAB8C()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890);

  return __swift_getEnumTagSinglePayload(v1 + v3, v0, v4);
}

uint64_t sub_2743FABE8()
{
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D890);

  return __swift_storeEnumTagSinglePayload(v1 + v3, v0, v0, v4);
}

uint64_t sub_2743FAC50()
{
  OUTLINED_FUNCTION_57();
  v2 = sub_274637EEC();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_2743FAC94()
{
  OUTLINED_FUNCTION_57();
  v2 = sub_274637EEC();

  return __swift_storeEnumTagSinglePayload(v1, v0, v0, v2);
}

uint64_t sub_2743FAD18()
{
  if (*(v0 + 40) >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  }

  return swift_deallocObject();
}

uint64_t sub_2743FAD5C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744AB724();
  *v0 = result;
  return result;
}

uint64_t sub_2743FAD88()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9950();
  *v0 = result;
  return result;
}

uint64_t sub_2743FADB4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9824();
  *v0 = result;
  return result;
}

uint64_t sub_2743FADE0()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9EE8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FAE34()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2744A9ED4();
  *v0 = result & 1;
  return result;
}

__n128 sub_2743FAF04(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_2743FAF18()
{
  v3 = *(v0 + 16);
  v1 = *(type metadata accessor for DragReorderableForEach() - 8);
  (*(*(v3 - 8) + 8))(v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FB064()
{
  type metadata accessor for DragReorderableForEach.Item();
  sub_27463B92C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA20);
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094DA28);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_6_0();
  swift_getWitnessTable();
  sub_27463AF9C();
  OUTLINED_FUNCTION_13_7();
  sub_27440CA78(v0, &qword_28094DA20);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_6();
  sub_27440CA78(v1, &qword_28094DA28);
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_12();
  return swift_getWitnessTable();
}

uint64_t sub_2743FB1D8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_2743FB21C()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC00);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_2743FB27C()
{
  type metadata accessor for DragReorderingGeometryWritingModifier();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  type metadata accessor for CGRect(255);
  sub_27463A0BC();
  sub_27463965C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FB370()
{
  v0 = OUTLINED_FUNCTION_5_0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  sub_27440CA78(&qword_28094DBE0, &qword_28094DBD8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FB414(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + 8));
  }

  OUTLINED_FUNCTION_70_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_13_6();
  if (*(v5 + 84) == v2)
  {
    v6 = *(v3 + 36);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    v6 = *(v3 + 40);
  }

  v7 = OUTLINED_FUNCTION_20_2(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_2743FB4E0()
{
  OUTLINED_FUNCTION_57();
  if (v2 == 0x7FFFFFFF)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 36);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
      v7 = *(v4 + 40);
    }

    v8 = OUTLINED_FUNCTION_28_6(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_2743FB5B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27463AC2C();
  *a1 = result;
  return result;
}

uint64_t sub_2743FB5FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27463989C();
  *v0 = result;
  return result;
}

uint64_t sub_2743FB658()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();
  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_75_0() == 1)
  {
    v3 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v3))
    {
      OUTLINED_FUNCTION_25_0();
      v4 = OUTLINED_FUNCTION_62_1();
      v5(v4);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743FB7F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C9E0);
  OUTLINED_FUNCTION_4_2();
  v0 = OUTLINED_FUNCTION_61_1();
  v1(v0);

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FB884()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FB8BC()
{
  OUTLINED_FUNCTION_55_1();
  type metadata accessor for WorkflowView(0);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_76_0();

  OUTLINED_FUNCTION_23_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094DCE0);
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DC58);
  OUTLINED_FUNCTION_58_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (OUTLINED_FUNCTION_75_0() == 1)
  {
    v3 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_25_7(v3))
    {
      OUTLINED_FUNCTION_25_0();
      v4 = OUTLINED_FUNCTION_62_1();
      v5(v4);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_13_8();
  OUTLINED_FUNCTION_46_2();

  OUTLINED_FUNCTION_90();
  OUTLINED_FUNCTION_56_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBA50()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_27452F6C4();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FBAA8()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746399FC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FBAD4()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2746398DC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FBB0C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FBB44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E0E8);
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBBC8()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FBC18()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

uint64_t sub_2743FBC50()
{
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FBC8C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_47_2();

  return swift_deallocObject();
}

uint64_t sub_2743FBCC4(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_30_4();
    return (v3 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v5 = OUTLINED_FUNCTION_20_2(*(v2 + 20));

    return __swift_getEnumTagSinglePayload(v5, v6, v7);
  }
}

void sub_2743FBD48()
{
  OUTLINED_FUNCTION_57();
  if (v3 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v5 = OUTLINED_FUNCTION_28_6(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2743FBDD0(uint64_t a1, int a2)
{
  if (a2 == 2147483646)
  {
    OUTLINED_FUNCTION_30_4();
    return (v4 + 1);
  }

  else
  {
    OUTLINED_FUNCTION_70_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v2)
    {
      v7 = *(v3 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
      v7 = *(v3 + 28);
    }

    v8 = OUTLINED_FUNCTION_20_2(v7);

    return __swift_getEnumTagSinglePayload(v8, v9, v10);
  }
}

void sub_2743FBEA0()
{
  OUTLINED_FUNCTION_57();
  if (v2 == 2147483646)
  {
    *v1 = v0;
  }

  else
  {
    v4 = v3;
    v5 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    OUTLINED_FUNCTION_13_6();
    if (*(v6 + 84) == v5)
    {
      v7 = *(v4 + 24);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
      v7 = *(v4 + 28);
    }

    v8 = OUTLINED_FUNCTION_28_6(v7);

    __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  }
}

uint64_t sub_2743FBFB4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FBFF0()
{
  sub_27463969C();
  OUTLINED_FUNCTION_4_2();
  v2 = OUTLINED_FUNCTION_61_1();
  v3(v2);

  OUTLINED_FUNCTION_65_0();

  return swift_deallocObject();
}

uint64_t sub_2743FC07C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FC0CC()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FC124()
{
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FC170()
{

  return swift_deallocObject();
}

uint64_t sub_2743FC1DC(unint64_t *a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*a1);
  }

  OUTLINED_FUNCTION_70_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
  v4 = OUTLINED_FUNCTION_20_2(*(v2 + 60));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_2743FC25C()
{
  OUTLINED_FUNCTION_57();
  if (v3 == 0x7FFFFFFF)
  {
    *v1 = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
    v5 = OUTLINED_FUNCTION_28_6(*(v4 + 60));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_2743FC320()
{
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_7_1();
  sub_27463914C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  OUTLINED_FUNCTION_43_2();
  sub_274639DEC();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FC498()
{
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E750);
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_74_0();
  OUTLINED_FUNCTION_5_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_20_6();
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_74_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43_2();
  sub_27463AE6C();
  OUTLINED_FUNCTION_43_2();
  sub_27463ADAC();
  sub_274639DEC();
  sub_27463AC1C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951400);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2744CA97C(&unk_28094D180, &qword_28094C600);
  swift_getWitnessTable();
  sub_2744CA97C(&qword_28094A710, &qword_280951400);
  return swift_getWitnessTable();
}

uint64_t sub_2743FC7C0()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FC824()
{

  sub_274458484(*(v0 + 104), *(v0 + 112), *(v0 + 113));

  return swift_deallocObject();
}

uint64_t sub_2743FC894()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FC8D8()
{
  sub_2744671A4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_2743FC944()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7C8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094E7D0);
  sub_2744CD448();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FCA4C()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FCB00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2744D36C0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCB58@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2744D3780();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCBB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2744D3840();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FCD04()
{

  return swift_deallocObject();
}

__n128 sub_2743FCD5C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2743FCD68()
{

  return swift_deallocObject();
}

uint64_t sub_2743FCDF4()
{
  OUTLINED_FUNCTION_1_18();
  v1 = type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  sub_274639F5C();
  OUTLINED_FUNCTION_25_0();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (v3 + *(v2 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  (*(v2 + 8))(v0 + v3);

  v5 = *(v1 + 52);
  if (!__swift_getEnumTagSinglePayload(v0 + v4 + v5, 1, v8))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v6 + 8))(v0 + v4 + v5);
  }

  return swift_deallocObject();
}

uint64_t sub_2743FCF84()
{
  OUTLINED_FUNCTION_1_18();
  type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_3_14();
  v4 = *(v3 + 64);
  v5 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v1 + v5 + v9, 1, v11))
  {
    (*(v7 + 8))(v1 + v5 + v9);
  }

  (*(v7 + 8))(v1 + ((v5 + v4 + v8) & ~v8));
  return swift_deallocObject();
}

uint64_t sub_2743FD108()
{
  v12 = *(v1 + 24);
  type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_3_14();
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v13 = *(v4 + 64);
  v5 = sub_2746393DC();
  OUTLINED_FUNCTION_4_0();
  v7 = v6;
  v8 = *(v6 + 80);

  v9 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v1 + v3 + v9, 1, v12))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v10 + 8))(v1 + v3 + v9, v12);
  }

  (*(v7 + 8))(v1 + ((v3 + v13 + v8) & ~v8), v5);
  return swift_deallocObject();
}

uint64_t sub_2743FD2CC()
{
  type metadata accessor for ContentAvoidingSheet();
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  sub_27463C0AC();
  OUTLINED_FUNCTION_5_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17();
  sub_27440CA78(v0, &qword_28094EFD0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_14();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  sub_27440CA78(v1, &qword_280953AD0);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  return swift_getWitnessTable();
}

uint64_t sub_2743FD600()
{
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_7_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008);
  OUTLINED_FUNCTION_30();
  sub_27463965C();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010);
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_274639DEC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  sub_274639DEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_9(WitnessTable, MEMORY[0x277CDF918]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_274412BBC();
  OUTLINED_FUNCTION_4_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_62_0();
  sub_27463AD8C();
  OUTLINED_FUNCTION_9_10();
  swift_getWitnessTable();
  sub_274482428();
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  OUTLINED_FUNCTION_12_8();
  sub_274639DEC();
  OUTLINED_FUNCTION_62_0();
  sub_27463AC1C();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_15();
  sub_2744E9640(v1, v2);
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_20();
  sub_27440CA78(v3, &qword_28094AA90);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FDB90()
{

  return swift_deallocObject();
}

uint64_t sub_2743FDC68@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463999C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FDD04()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8);
  type metadata accessor for ActionAttributionView();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE8C();
  sub_27463965C();
  OUTLINED_FUNCTION_2_19();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_0();
  return swift_getWitnessTable();
}

uint64_t sub_2743FDE90()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F3C0);
  sub_2744F296C();
  sub_27463A4BC();
  sub_27463A15C();
  swift_getWitnessTable();
  sub_2744F32CC(&qword_28094F430, MEMORY[0x277CDE310]);
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  sub_274639DEC();
  swift_getOpaqueTypeConformance2();
  sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470]);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2743FE05C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FE0AC()
{
  if (*(v0 + 48))
  {
  }

  if (*(v0 + 96))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2743FE128()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE1BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D688);
  sub_27440CA78(&qword_280952FC0, &qword_28094D688);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FE2B4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE2FC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE370()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE3A8()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE424()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE468()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FE4A8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FE508()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE5B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F8E8);
  sub_2745065E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FE670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F9D0);
  OUTLINED_FUNCTION_4_2();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FE71C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FE75C()
{

  sub_274482198(*(v0 + 80), *(v0 + 88));

  return swift_deallocObject();
}

uint64_t sub_2743FE810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278);
      v10 = *(a3 + 40);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

uint64_t sub_2743FE8F4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FAA0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 28);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D278);
      v10 = *(a4 + 40);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_2743FEA3C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FEA78()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094FB00);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094A6F0);
  sub_274510AEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094D100);
  OUTLINED_FUNCTION_44_0();
  sub_27440CA78(v0, &unk_28094D100);
  OUTLINED_FUNCTION_43_0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2743FEC60()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743FECAC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274512524();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2743FECD8()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745127A4();
  *v0 = result;
  return result;
}

BOOL sub_2743FED04()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513CBC();
  *v0 = result;
  return result;
}

uint64_t sub_2743FED58()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513DB0();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FEDAC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513E8C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2743FEE00()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274513F68();
  *v0 = result;
  return result;
}

uint64_t sub_2743FEE50()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_274514068();
  *v0 = result;
  return result;
}

uint64_t sub_2743FEE84()
{
  v1 = sub_27463800C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2743FEF3C()
{
  _Block_release(*(v0 + 32));

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2743FEF88()
{
  v1 = *(type metadata accessor for EditorHostingViewController.MoveActionMode(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_27463800C();
    OUTLINED_FUNCTION_7();
    v5 = *(v4 + 8);
    v5(v0 + v2, v3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094FD88);
    v5(v0 + v2 + *(v6 + 48), v3);
  }

  else
  {
    sub_27463BDAC();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(v0 + v2);
  }

  return swift_deallocObject();
}

uint64_t sub_2743FF0DC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FF118()
{

  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FF14C()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2743FF18C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094FE58);
  OUTLINED_FUNCTION_7();
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_2743FF23C()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2743FF30C(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463800C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_2743FF354(uint64_t a1, uint64_t a2)
{
  v4 = sub_27463800C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_2743FF3A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274520E50();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF3D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27451D93C();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF400@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27451D914();
  *a1 = result;
  return result;
}

uint64_t sub_2743FF4AC()
{
  sub_274639DEC();
  sub_27463AC1C();
  sub_274529750();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  sub_2745297A4();
  swift_getOpaqueTypeMetadata2();
  sub_274639DEC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  type metadata accessor for ParameterLayoutView();
  OUTLINED_FUNCTION_0_32();
  return swift_getWitnessTable();
}

uint64_t sub_2743FF5F0()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF6CC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF70C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF754@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274639A6C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_2743FF7CC()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF80C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF844()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FF894()
{

  return swift_deallocObject();
}

uint64_t sub_2743FF8EC()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FF92C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FFA54()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFA8C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_2743FFAC4()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743FFB10()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2743FFB5C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2743FFC5C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFC98()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FFD0C()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2743FFD7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v9 = a1 + *(a3 + 56);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2743FFE10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 56);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2743FFE9C()
{

  return swift_deallocObject();
}

uint64_t sub_2743FFED4()
{

  return swift_deallocObject();
}

uint64_t sub_2743FFF0C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2743FFF7C()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2743FFFB8()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400000()
{

  return swift_deallocObject();
}

uint64_t sub_274400040()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274400164()
{

  return swift_deallocObject();
}

uint64_t sub_2744001C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2745684BC();
  *a1 = result;
  return result;
}

uint64_t sub_2744001F4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400234()
{
  v1 = sub_274637EEC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_27440031C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274400374()
{
  swift_unknownObjectRelease();

  sub_2743F459C();
  sub_2743F459C();
  if (*(v0 + 208))
  {
    if (*(v0 + 192))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 168);
    }
  }

  else
  {
  }

  sub_274482198(*(v0 + 248), *(v0 + 256));

  return swift_deallocObject();
}

uint64_t sub_274400488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
  OUTLINED_FUNCTION_13_6();
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
  OUTLINED_FUNCTION_13_6();
  if (*(v11 + 84) == a2)
  {
    v8 = v10;
    v9 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v13 = *(a1 + *(a3 + 28));
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  return (v13 + 1);
}

void sub_27440058C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
  OUTLINED_FUNCTION_13_6();
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = a1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A4A0);
    OUTLINED_FUNCTION_13_6();
    if (*(v13 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return;
    }

    v10 = v12;
    v11 = a1 + *(a4 + 24);
  }

  __swift_storeEnumTagSinglePayload(v11, a2, a2, v10);
}

uint64_t sub_2744006A0()
{
  type metadata accessor for VariableEditorModifier();
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v8))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v9 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v10 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v11))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v12 + 8))(v7 + v10, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

uint64_t sub_274400844()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_274400880(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E28);
  OUTLINED_FUNCTION_0_4();
  v3 = OUTLINED_FUNCTION_5_0();
  v4(v3);
  return a2;
}

uint64_t sub_2744008F4()
{
  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_2744009D4()
{

  return swift_deallocObject();
}

uint64_t sub_274400A48(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18);
  OUTLINED_FUNCTION_7();
  (*(v4 + 32))(a2, a1);
  return a2;
}

uint64_t sub_274400AB0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274400B14()
{

  if (*(v0 + 112))
  {
    if (*(v0 + 96))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 72);
    }
  }

  else
  {
  }

  sub_274458484(*(v0 + 120), *(v0 + 128), *(v0 + 129));
  sub_274435568(*(v0 + 136), *(v0 + 144));

  return swift_deallocObject();
}

uint64_t sub_274400BA4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950F20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094D4E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950F18);
  OUTLINED_FUNCTION_7_8();
  sub_27440CA78(v0, &qword_280950F18);
  OUTLINED_FUNCTION_2_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_30();
  sub_27440CA78(v1, &qword_28094D4E8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274400CB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v9 = a1 + *(a3 + 80);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274400D48(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 80);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274400E08()
{

  if (*(v0 + 80))
  {
  }

  if (*(v0 + 104))
  {
  }

  sub_274482198(*(v0 + 128), *(v0 + 136));
  sub_274482198(*(v0 + 144), *(v0 + 152));
  if (*(v0 + 168))
  {
    MEMORY[0x277C5A3A0](v0 + 160);
  }

  else
  {
  }

  sub_2743F45E8(*(v0 + 176), *(v0 + 184));

  sub_2743F459C();

  return swift_deallocObject();
}

uint64_t sub_274400EEC()
{
  v1 = type metadata accessor for SummaryHostingView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x277C5A3A0](v2 + 72);

  if (*(v2 + 104))
  {
  }

  if (*(v2 + 128))
  {
  }

  v3 = v1[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v2 + v3, 1, v4))
    {
      (*(*(v4 - 8) + 8))(v2 + v3, v4);
    }
  }

  else
  {
  }

  v5 = OUTLINED_FUNCTION_0_37(v1[21]);
  sub_2743F45E8(v5, v6);
  v7 = OUTLINED_FUNCTION_0_37(v1[22]);
  sub_2743F45E8(v7, v8);
  v9 = OUTLINED_FUNCTION_0_37(v1[23]);
  j_j__swift_release(v9, v10);
  v11 = OUTLINED_FUNCTION_0_37(v1[24]);
  sub_2743F45E8(v11, v12);
  v13 = OUTLINED_FUNCTION_0_37(v1[25]);
  sub_27447FCE8(v13, v14);
  v15 = v2 + v1[26];
  if (*(v15 + 9))
  {
    if ((*(v15 + 8) & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274401128()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401160()
{
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401198()
{

  return swift_deallocObject();
}

uint64_t sub_2744011D0()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_274401214()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274401248()
{

  return swift_deallocObject();
}

uint64_t sub_274401288()
{
  v1 = sub_2746381FC();
  OUTLINED_FUNCTION_4_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_274401344()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744013D4()
{

  return swift_deallocObject();
}

uint64_t sub_27440142C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274401474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274401508(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2744015E4()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_274401628()
{

  return swift_deallocObject();
}

uint64_t sub_274401660()
{
  if (*(v0 + 32))
  {
  }

  OUTLINED_FUNCTION_2_6();

  return swift_deallocObject();
}

uint64_t sub_2744016A4()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2744016D4()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274401710()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455C3BC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2744017CC()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455CFC8();
  *v0 = result & 1;
  return result;
}

uint64_t sub_274401848()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455D36C();
  *v0 = result & 1;
  return result;
}

void *sub_27440189C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_27455D528();
  *v0 = result;
  return result;
}

uint64_t sub_274401920()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274401950()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274401984()
{

  return swift_deallocObject();
}

uint64_t sub_2744019C8()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_2744019F8()
{

  return swift_deallocObject();
}

uint64_t sub_274401A30()
{

  return swift_deallocObject();
}

uint64_t sub_274401B34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274438F4C();
  *a1 = result;
  return result;
}

uint64_t sub_274401B6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_274438798();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274401BE0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809513A0);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274401C40(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v9 = a1 + *(a3 + 52);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_274401CD4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 52);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274401D64()
{

  return swift_deallocObject();
}

uint64_t sub_274401DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274637EEC();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_274401E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_274637EEC();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_274401F18()
{
  type metadata accessor for ModuleSummaryModalViewModifier(255);
  sub_27463965C();
  sub_27456C1A8(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier);
  return OUTLINED_FUNCTION_3_34();
}

uint64_t sub_274401F94()
{
  sub_27463965C();
  sub_27456BE60();
  return OUTLINED_FUNCTION_3_34();
}

uint64_t sub_274401FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_53_1(*(a1 + 8));
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
  v8 = a1 + *(a3 + 32);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

uint64_t sub_274402060(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 32);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2744020F4()
{

  return swift_deallocObject();
}

uint64_t sub_274402134()
{

  return swift_deallocObject();
}

uint64_t sub_27440216C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2744021A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27456879C();
  *a1 = result;
  return result;
}

uint64_t sub_2744021F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951588);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809514B0);
  sub_27456C54C();
  sub_27456C6E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2744022AC()
{

  return swift_deallocObject();
}

uint64_t sub_274402344()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809516D0);
  sub_27463C0AC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_27463AE6C();
  OUTLINED_FUNCTION_45_0();

  return swift_getWitnessTable();
}

uint64_t sub_2744023FC()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_2744387D8();
  *v0 = result;
  return result;
}

uint64_t sub_274402428()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274438758();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2744024F8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v9 = a1 + *(a3 + 64);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_27440258C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
    v8 = v5 + *(a4 + 64);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274402618()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F0);
  type metadata accessor for SlotParameterPicker();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809517F8);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951800);
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  sub_27463965C();
  OUTLINED_FUNCTION_22();
  sub_274639DEC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_274639DEC();
  OUTLINED_FUNCTION_5_1();
  swift_getWitnessTable();
  sub_274573A5C();
  OUTLINED_FUNCTION_9_0();
  return swift_getWitnessTable();
}

uint64_t sub_27440278C()
{
  v1 = type metadata accessor for ModuleSummaryRowView();
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = v0 + v2;

  if (*(v0 + v2 + 16) >= 5uLL)
  {
  }

  sub_274547E9C();

  sub_2743F45E8(*(v4 + 96), *(v4 + 104));
  if (*(v4 + 152))
  {
    if (*(v4 + 136))
    {
      __swift_destroy_boxed_opaque_existential_1(v4 + 112);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v4 + 160), *(v4 + 168));
  sub_274482198(*(v4 + 176), *(v4 + 184));
  sub_2743F45E8(*(v4 + 192), *(v4 + 200));
  v5 = *(v1 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
    {
      (*(*(v6 - 8) + 8))(v4 + v5, v6);
    }
  }

  else
  {
  }

  sub_2743F45E8(*(v4 + *(v1 + 68)), *(v4 + *(v1 + 68) + 8));

  return swift_deallocObject();
}

uint64_t sub_274402980()
{
  OUTLINED_FUNCTION_5_3();
  result = sub_274639A8C();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_2744029BC()
{
  type metadata accessor for RowTemplateEditorView();
  OUTLINED_FUNCTION_43();
  return sub_27457A90C();
}

uint64_t sub_2744029FC()
{

  return swift_deallocObject();
}

__n128 sub_274402A44(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_274402A50()
{
  OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_43();
  v1 = sub_27463869C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 168) & ~*(v2 + 80);

  OUTLINED_FUNCTION_20_14();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_274402B70()
{
  v0 = OUTLINED_FUNCTION_12_16();
  OUTLINED_FUNCTION_13_15();
  OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_5_16();
  v2 = (*(v1 + 80) + 48) & ~*(v1 + 80);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_17_13();
  (*(v3 + 8))(v4 + v2, v0);

  return swift_deallocObject();
}

uint64_t sub_274402C6C()
{
  v1 = OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_42_4();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_43();
  type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_22_9();
  v3 = *(v2 + 80);
  swift_unknownObjectRelease();

  sub_274482198(*(v0 + 112), *(v0 + 120));

  OUTLINED_FUNCTION_17_13();
  (*(v4 + 8))(v5 + ((v3 + 184) & ~v3), v1);
  OUTLINED_FUNCTION_15_17();

  return swift_deallocObject();
}

uint64_t sub_274402DCC()
{

  return swift_deallocObject();
}

uint64_t sub_274402E80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094AF80);
  OUTLINED_FUNCTION_28_13();
  OUTLINED_FUNCTION_27_10();
  type metadata accessor for TableTemplateRow();
  OUTLINED_FUNCTION_26_0();
  sub_27463B92C();
  type metadata accessor for RowTemplateEditorView();
  sub_27463965C();
  sub_27463AF6C();
  OUTLINED_FUNCTION_10_25();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  swift_getWitnessTable();
  sub_27463AF9C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951E48);
  OUTLINED_FUNCTION_10_25();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_25();
  sub_27463AE6C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280951E50);
  OUTLINED_FUNCTION_10_25();
  sub_27463965C();
  sub_27454E488(&qword_280951E60, &unk_28094AF80);
  swift_getWitnessTable();
  sub_27454E488(&qword_280951E68, &unk_280951E50);
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_27463971C();
  return swift_getWitnessTable();
}

uint64_t sub_274403130()
{

  return swift_deallocObject();
}

uint64_t sub_274403168()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_2744031A0()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744031D4()
{

  return swift_deallocObject();
}

uint64_t sub_27440322C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274583048();
  *a1 = result;
  return result;
}

uint64_t sub_27440325C()
{
  v1 = *(v0 + 16);
  v2 = sub_27463C0AC();
  OUTLINED_FUNCTION_19_0(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);

  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v1))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v7 + 8))(v0 + v4, v1);
  }

  return swift_deallocObject();
}

uint64_t sub_27440336C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744033DC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403410()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_27440344C()
{

  return swift_deallocObject();
}

uint64_t sub_27440349C()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744034D0()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_27440350C()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403564()
{

  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744035B0()
{

  return swift_deallocObject();
}

uint64_t sub_2744035E8()
{
  v1 = sub_274637C3C();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_2744036E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27459A97C();
  *a1 = result;
  return result;
}

uint64_t sub_274403760()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403794()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744037D0()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_274403820()
{
  OUTLINED_FUNCTION_12_1();

  return swift_deallocObject();
}

uint64_t sub_274403854()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403890()
{

  return swift_deallocObject();
}

uint64_t sub_2744038C8()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744038FC()
{

  OUTLINED_FUNCTION_8_4();

  return swift_deallocObject();
}

uint64_t sub_274403938()
{
  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27440396C()
{

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_274403A9C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
      v10 = *(a3 + 28);
    }

    return __swift_getEnumTagSinglePayload(a1 + v10, a2, v9);
  }
}

void *sub_274403B80(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 24);
    }

    else
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_280950730);
      v10 = *(a4 + 28);
    }

    return __swift_storeEnumTagSinglePayload(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_274403C64@<X0>(uint64_t a1@<X8>)
{
  result = sub_2746399DC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_274403D54()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403DBC()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280952DF0);
  OUTLINED_FUNCTION_7();
  v1 = OUTLINED_FUNCTION_5_0();
  v2(v1);
  return v0;
}

uint64_t sub_274403E34()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274403E70(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 20));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274403EF0()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280952E50);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 20));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_274403FA4()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404004()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_2744040C4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953088);
  sub_27463AFDC();
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  sub_27463AFDC();
  sub_274639DEC();
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  OUTLINED_FUNCTION_0_3();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_274639DEC();
  sub_274639DEC();
  sub_2745B8810();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_45_0();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_27440434C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v9 = a1 + *(a3 + 108);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2744043E0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v8 = v5 + *(a4 + 108);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274404498()
{
  swift_weakDestroy();
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744044CC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404500()
{
  type metadata accessor for VariableTextEditor(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = (v1 + v4);

  if (*(v1 + v4 + 72))
  {
  }

  sub_2743F459C();

  OUTLINED_FUNCTION_20_17();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    (*(v6 + 8))(v5 + v2);
  }

  else
  {
  }

  v7 = v5 + *(v0 + 112);
  if (v7[9])
  {
    if ((v7[8] & 1) == 0)
    {
      MEMORY[0x277C5A3A0]();
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_2744046BC()
{

  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744046EC()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274404744()
{

  return swift_deallocObject();
}

uint64_t sub_27440477C()
{
  OUTLINED_FUNCTION_3();

  return swift_deallocObject();
}

uint64_t sub_2744047AC()
{

  return swift_deallocObject();
}

uint64_t sub_2744047F4()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9890();
  *v0 = result;
  return result;
}

uint64_t sub_274404820()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9868();
  *v0 = result;
  return result;
}

uint64_t sub_27440484C()
{
  OUTLINED_FUNCTION_16_1();
  result = sub_2745B9840();
  *v0 = result;
  return result;
}

uint64_t sub_274404978()
{

  if (*(v0 + 200))
  {
  }

  sub_2743F459C();
  if (*(v0 + 320))
  {
    if (*(v0 + 304))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 280);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_274404A20(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536A0);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274404A80()
{

  return swift_deallocObject();
}

uint64_t sub_274404AC8()
{
  v1 = *(v0 + 16);
  v2 = sub_27463AF4C();
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 80);

  if (*(v0 + 200))
  {
  }

  sub_2743F459C();
  if (*(v0 + 320))
  {
    if (*(v0 + 304))
    {
      __swift_destroy_boxed_opaque_existential_1(v0 + 280);
    }
  }

  else
  {
  }

  (*(*(v1 - 8) + 8))(v0 + ((v4 + 321) & ~v4) + *(v2 + 32), v1);

  return swift_deallocObject();
}

uint64_t sub_274404C28()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809536D8);
  OUTLINED_FUNCTION_7();
  (*(v2 + 32))(v0, v1);
  return v0;
}

uint64_t sub_274404C94()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A0);
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809536A8);
  sub_2745C8470();
  OUTLINED_FUNCTION_3_37();
  swift_getWitnessTable();
  sub_2745C85B4();
  type metadata accessor for ListParameterListContentView();
  sub_27463AC1C();
  type metadata accessor for ListParameterLayoutView.PresentedAuxiliaryValueEditor();
  OUTLINED_FUNCTION_8_26();
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_5_35();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274404E9C()
{
  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_274404EDC()
{

  return swift_deallocObject();
}

uint64_t sub_274404F14()
{
  v1 = sub_274637EEC();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_274404FCC()
{
  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_274405008()
{

  OUTLINED_FUNCTION_39();

  return swift_deallocObject();
}

uint64_t sub_27440503C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405074()
{

  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_2744050AC()
{

  OUTLINED_FUNCTION_5_36();

  return swift_deallocObject();
}

uint64_t sub_2744050FC()
{

  return swift_deallocObject();
}

uint64_t sub_2744051B0(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 24));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_274405230()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094E180);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_2744052D8()
{

  return swift_deallocObject();
}

uint64_t sub_274405320()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405360()
{

  return swift_deallocObject();
}

uint64_t sub_274405398()
{

  return swift_deallocObject();
}

uint64_t sub_2744053E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_27463992C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274405450(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_17_2();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
  v5 = OUTLINED_FUNCTION_20_2(*(a3 + 44));

  return __swift_getEnumTagSinglePayload(v5, v6, v7);
}

void sub_2744054D0()
{
  OUTLINED_FUNCTION_23_2();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C4F0);
    v5 = OUTLINED_FUNCTION_20_2(*(v4 + 44));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_27440555C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280953A90);
  OUTLINED_FUNCTION_7();
  (*(v2 + 8))(a1);
  return a1;
}

uint64_t sub_274405668()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_2744056E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280953F70);
  sub_274506594();
  sub_2745DB750();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_27440580C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_2744058A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C010);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_274405934()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744059A4()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_2744059DC()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_274405A2C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2745E0654();
  *a1 = result;
  return result;
}

uint64_t sub_274405ABC()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405AF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2745E26A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_274405B48()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405B7C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274405BDC()
{

  return swift_deallocObject();
}

uint64_t sub_274405C5C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809542F8);
  sub_27440CA78(&qword_280954300, &qword_2809542F8);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_274405D00()
{
  _Block_release(*(v0 + 16));

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405D3C()
{

  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405D6C()
{
  OUTLINED_FUNCTION_38_2();

  return swift_deallocObject();
}

uint64_t sub_274405DA4()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_274405DF4()
{
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405E28()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274405F0C()
{
  v13 = *(v1 + 24);
  type metadata accessor for FlatteningPicker();
  OUTLINED_FUNCTION_5_16();
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v5 = v3 + *(v4 + 64);
  OUTLINED_FUNCTION_0_47();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  (*(*(v13 - 8) + 8))(v1 + v3, v13);
  v9 = v1 + v3 + *(v0 + 68);

  v10 = sub_27463AF4C();
  v11 = *(v7 + 8);
  v11(v9 + *(v10 + 32), AssociatedTypeWitness);

  v11(v1 + v8, AssociatedTypeWitness);
  return swift_deallocObject();
}

uint64_t sub_27440611C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C600);
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543E8);
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90);
  sub_27463965C();
  swift_getWitnessTable();
  sub_27440CA78(&unk_28094DE30, &qword_28094AA90);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AD8C();
  sub_2746396BC();
  swift_getWitnessTable();
  sub_2745F2184(&qword_280949470, MEMORY[0x277CDDB18]);
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809543F0);
  swift_getTupleTypeMetadata3();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  sub_27463965C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_47();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AD8C();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_27463AF9C();
  OUTLINED_FUNCTION_26_0();
  sub_27463C0AC();
  OUTLINED_FUNCTION_22();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  sub_27463AC1C();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_2744064F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v4 = a1;
  if (*(*(*(a3 + 16) - 8) + 84) == a2)
  {
    v5 = *(a3 + 16);
  }

  else
  {
    type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache();
    v5 = sub_27463B02C();
    a1 = v4 + *(a3 + 36);
    a2 = v3;
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v5);
}

uint64_t sub_2744065A0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  if (*(*(v7 - 8) + 84) != a3)
  {
    type metadata accessor for FrameLayoutHostingView.BoundsBindingView.Cache();
    v7 = sub_27463B02C();
    a1 = v6 + *(a4 + 36);
  }

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v7);
}

__n128 sub_274406688(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_2744066B4()
{

  return swift_deallocObject();
}

uint64_t sub_274406704()
{
  MEMORY[0x277C5A3A0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_27440673C()
{

  return swift_deallocObject();
}

uint64_t sub_2744067FC()
{

  return swift_deallocObject();
}

uint64_t sub_274406860()
{
  if (*(v0 + 48))
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  }

  return swift_deallocObject();
}

uint64_t sub_2744068A8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_2744068DC()
{
  MEMORY[0x277C5A3A0](v0 + 16);
  OUTLINED_FUNCTION_5();

  return swift_deallocObject();
}

uint64_t sub_274406910()
{
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_68_0();

  return swift_deallocObject();
}

uint64_t sub_27440694C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_2744069A4@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x277C56160]();
  *a1 = result;
  return result;
}

uint64_t sub_2744069F0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274406A94(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_274406AC0()
{
  OUTLINED_FUNCTION_6();
  result = sub_2743F3814();
  *v0 = result;
  v0[1] = v2;
  return result;
}

double sub_274406AEC@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_274406AFC()
{
  sub_27440CC1C();
  sub_274639ACC();
  return v1;
}

uint64_t (*sub_274406B84())()
{
  sub_27440CB7C();
  sub_274639ACC();
  if (!v2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_39();
  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_27440D70C;
}

uint64_t sub_274406C08(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    OUTLINED_FUNCTION_39();
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  sub_27440CB7C();
  return sub_274639ADC();
}

uint64_t sub_274406C8C(uint64_t a1)
{
  OUTLINED_FUNCTION_3();
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_274406CB8()
{
  v1 = [*(v0 + 16) currentState];

  return v1;
}

uint64_t sub_274406CF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (a1)
  {
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50);
    if (swift_dynamicCast())
    {
      v3 = v5;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  [v2 stageState_];
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_274406E24()
{
  sub_274406E04();
  v0 = OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_274406E50()
{
  sub_27463C74C();
  sub_274406DC0();
  return sub_27463C7AC();
}

uint64_t (*sub_274406E98(id *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_274406CB8();
  return sub_274406EE0;
}

uint64_t sub_274406EE0(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return sub_274406CF0(*a1);
  }

  v2 = swift_unknownObjectRetain();
  sub_274406CF0(v2);

  return swift_unknownObjectRelease();
}

uint64_t sub_274406F68@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SummaryEditorParameterStateDataSource();
  result = sub_274638EFC();
  *a1 = result;
  return result;
}

uint64_t sub_274406FF4()
{
  sub_27463C74C();
  sub_274406DC0();
  return sub_27463C7AC();
}

uint64_t _s14WorkflowEditor0aB7OptionsC17ScrollingBehaviorO9hashValueSivg_0()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_2744070E8()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

__n128 SummaryModal.__allocating_init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v19 = objc_allocWithZone(v10);
  SummaryModal.init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, v21, a9, *(&a9 + 1), v22, v23, v24, v25, v26, v27, v28, v29, v30);
  return result;
}

void sub_2744071D8()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v34 = v2;
  OUTLINED_FUNCTION_55();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5 & 1;
  v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v7;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v13 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v13 = sub_27440D72C;
  v13[1] = v10;
  v14 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v14 = sub_27440D6CC;
  v14[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949930);
  OUTLINED_FUNCTION_5();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_28(v16);
  OUTLINED_FUNCTION_44();

  v35 = v0;
  OUTLINED_FUNCTION_49();
  sub_2745824D4();
  v18 = v17;
  v19 = type metadata accessor for SummaryModal();
  v37.receiver = v1;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, sel_init);
  sub_274464EA4(v3, v18, v48);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  memcpy(v38, v48, sizeof(v38));
  memcpy(v47, v48, 0x141uLL);
  memcpy(v39, v48, 0x141uLL);
  sub_27440CAC0();
  sub_27440CB1C(v39, &qword_280949938);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_27(v24);
  swift_unknownObjectWeakInit();

  memcpy(v40, v47, 0x148uLL);
  v40[41] = KeyPath;
  v40[42] = sub_27440D6E4;
  v40[43] = v22;
  v40[44] = sub_27440D6E8;
  v40[45] = v23;
  memcpy(v36, v40, sizeof(v36));
  memcpy(v41, v47, sizeof(v41));
  v42 = KeyPath;
  v43 = sub_27440D6E4;
  v44 = v22;
  v45 = sub_27440D6E8;
  v46 = v23;
  sub_27440CAC0();
  sub_27440CB1C(v41, &qword_280949940);
  memcpy(v47, v36, 0x170uLL);
  v47[46] = v33;
  v47[47] = sub_27440D728;
  v47[48] = &unk_288361B50;
  memcpy(v48, v47, 0x188uLL);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949948));
  sub_27440CAC0();
  v26 = sub_274639CDC();
  sub_27463A2AC();
  v27 = sub_274639CBC();
  v29 = v28;
  OUTLINED_FUNCTION_26();
  sub_27440A004();
  v30 = OUTLINED_FUNCTION_38();
  v29(v30);
  v31 = OUTLINED_FUNCTION_26();
  v29(v31);
  v27(v48, 0);

  memcpy(v48, v36, 0x170uLL);
  v48[46] = v33;
  v48[47] = sub_27440D728;
  v48[48] = &unk_288361B50;
  sub_27440CB1C(v48, &unk_280949950);
  v32 = *&v20[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v20[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v26;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_2744076C8()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v32 = v2;
  OUTLINED_FUNCTION_55();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0();
  v30 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_53(v10);
  v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v5;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v11 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v11 = sub_27440D72C;
  v11[1] = v9;
  v12 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v12 = sub_27440D6CC;
  v12[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949928);
  OUTLINED_FUNCTION_5();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_28(v14);
  OUTLINED_FUNCTION_44();

  v31 = v0;
  OUTLINED_FUNCTION_49();
  sub_274582598();
  v16 = v15;
  v17 = type metadata accessor for SummaryModal();
  v33.receiver = v1;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, sel_init);
  v29 = [v3 parameter];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_45(v19);
  OUTLINED_FUNCTION_3();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29(v21);
  swift_unknownObjectWeakInit();
  v34[0] = v29;
  v34[1] = v16;
  v34[2] = KeyPath;
  v34[3] = sub_27440D6E4;
  v34[4] = v3;
  v34[5] = sub_27440D6E8;
  v34[6] = v20;
  v34[7] = v27;
  v34[8] = sub_27440D728;
  v34[9] = v1;
  memcpy(v35, v34, 0x50uLL);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D240));

  sub_27440CAC0();
  v23 = sub_274639CDC();
  sub_27463A2AC();
  sub_274639CBC();
  OUTLINED_FUNCTION_48();
  v24 = OUTLINED_FUNCTION_40();
  v23(v24);
  (v23)(v3, v30);
  v27(v35, 0);

  v25 = OUTLINED_FUNCTION_15();
  sub_27440CB1C(v25, &qword_280949810);
  v26 = *&v18[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v18[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v23;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274407A8C()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v34 = v2;
  OUTLINED_FUNCTION_55();
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_19();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v5 & 1;
  v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v7;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v13 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v13 = sub_27440D72C;
  v13[1] = v10;
  v14 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v14 = sub_27440D6CC;
  v14[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949900);
  OUTLINED_FUNCTION_5();
  v16 = swift_allocObject();
  OUTLINED_FUNCTION_28(v16);
  OUTLINED_FUNCTION_44();

  v35 = v0;
  OUTLINED_FUNCTION_49();
  sub_274582874();
  v18 = v17;
  v19 = type metadata accessor for SummaryModal();
  v37.receiver = v1;
  v37.super_class = v19;
  v20 = objc_msgSendSuper2(&v37, sel_init);
  sub_2744CB3BC(v3, v18, v48);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_5();
  v23 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  memcpy(v38, v48, sizeof(v38));
  memcpy(v47, v48, 0xB9uLL);
  memcpy(v39, v48, 0xB9uLL);
  sub_27440CAC0();
  sub_27440CB1C(v39, &qword_280949908);
  v33 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v24 = swift_allocObject();
  OUTLINED_FUNCTION_27(v24);
  swift_unknownObjectWeakInit();

  memcpy(v40, v47, 0xC0uLL);
  v40[24] = KeyPath;
  v40[25] = sub_27440D6E4;
  v40[26] = v22;
  v40[27] = sub_27440D6E8;
  v40[28] = v23;
  memcpy(v36, v40, sizeof(v36));
  memcpy(v41, v47, sizeof(v41));
  v42 = KeyPath;
  v43 = sub_27440D6E4;
  v44 = v22;
  v45 = sub_27440D6E8;
  v46 = v23;
  sub_27440CAC0();
  sub_27440CB1C(v41, &qword_280949910);
  memcpy(v47, v36, 0xE8uLL);
  v47[29] = v33;
  v47[30] = sub_27440D728;
  v47[31] = &unk_288361B50;
  memcpy(v48, v47, 0x100uLL);
  v25 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949918));
  sub_27440CAC0();
  v26 = sub_274639CDC();
  sub_27463A2AC();
  v27 = sub_274639CBC();
  v29 = v28;
  OUTLINED_FUNCTION_26();
  sub_27440A004();
  v30 = OUTLINED_FUNCTION_38();
  v29(v30);
  v31 = OUTLINED_FUNCTION_26();
  v29(v31);
  v27(v48, 0);

  memcpy(v48, v36, 0xE8uLL);
  v48[29] = v33;
  v48[30] = sub_27440D728;
  v48[31] = &unk_288361B50;
  sub_27440CB1C(v48, &qword_280949920);
  v32 = *&v20[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v20[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v26;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274407F7C()
{
  OUTLINED_FUNCTION_24();
  v42 = v2;
  v47 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  v45 = v11;
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0();
  v43 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v44 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949818);
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_9();
  *&v5[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v19 = swift_allocObject();
  v20 = OUTLINED_FUNCTION_50(v19);
  v5[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v9;
  v5[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v7 & 1;
  v21 = &v5[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v21 = sub_27440D72C;
  v21[1] = v18;
  v22 = &v5[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v22 = sub_27440D6CC;
  v22[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949820);
  OUTLINED_FUNCTION_5();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44();

  v41 = v0;
  sub_274582938();
  v49.receiver = v5;
  v49.super_class = type metadata accessor for SummaryModal();
  v23 = objc_msgSendSuper2(&v49, sel_init);
  v24 = [v47 parameter];
  sub_27453755C();
  v40 = v42;
  sub_27445F820();
  v25 = sub_27463967C();
  v26 = sub_27463A32C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949828);
  OUTLINED_FUNCTION_60();
  *v27 = v25;
  *(v27 + 8) = v26;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949830);
  OUTLINED_FUNCTION_60();
  *v31 = KeyPath;
  v31[1] = sub_27440D6E4;
  v31[2] = v29;
  v31[3] = sub_27440D6E8;
  v31[4] = v30;
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_29(v33);
  swift_unknownObjectWeakInit();
  v34 = (v1 + *(v16 + 44));
  *v34 = v32;
  v34[1] = sub_27440D728;
  v34[2] = &unk_288361B50;
  sub_27440CAC0();
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949838));
  v36 = sub_274639CDC();
  sub_27463A2AC();
  v37 = sub_274639CBC();
  sub_27440A004();
  v38 = *(v45 + 8);
  v38(v43, v46);
  v38(v44, v46);
  v37(&v48, 0);

  sub_27440CB1C(v1, &qword_280949818);
  v39 = *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v23[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v36;

  OUTLINED_FUNCTION_23();
}

void sub_27440846C()
{
  OUTLINED_FUNCTION_24();
  v3 = v2;
  v32 = v2;
  OUTLINED_FUNCTION_55();
  v5 = v4;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_0();
  v30 = v7;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_19();
  *&v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v9 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_53(v10);
  v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v5;
  OUTLINED_FUNCTION_52(OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior);
  v11 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v11 = sub_27440D72C;
  v11[1] = v9;
  v12 = &v1[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v12 = sub_27440D6CC;
  v12[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949800);
  OUTLINED_FUNCTION_5();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_28(v14);
  OUTLINED_FUNCTION_44();

  v31 = v0;
  OUTLINED_FUNCTION_49();
  sub_2745829FC();
  v16 = v15;
  v17 = type metadata accessor for SummaryModal();
  v33.receiver = v1;
  v33.super_class = v17;
  v18 = objc_msgSendSuper2(&v33, sel_init);
  v29 = [v3 parameter];
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_45(v19);
  OUTLINED_FUNCTION_3();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_32();
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v21 = swift_allocObject();
  OUTLINED_FUNCTION_29(v21);
  swift_unknownObjectWeakInit();
  v34[0] = v29;
  v34[1] = v16;
  v34[2] = KeyPath;
  v34[3] = sub_27440D6E4;
  v34[4] = v3;
  v34[5] = sub_27440D6E8;
  v34[6] = v20;
  v34[7] = v27;
  v34[8] = sub_27440D728;
  v34[9] = v1;
  memcpy(v35, v34, 0x50uLL);
  v22 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D240));

  sub_27440CAC0();
  v23 = sub_274639CDC();
  sub_27463A2AC();
  sub_274639CBC();
  OUTLINED_FUNCTION_48();
  v24 = OUTLINED_FUNCTION_40();
  v23(v24);
  (v23)(v3, v30);
  v27(v35, 0);

  v25 = OUTLINED_FUNCTION_15();
  sub_27440CB1C(v25, &qword_280949810);
  v26 = *&v18[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v18[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v23;

  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_23();
}

void sub_274408830()
{
  OUTLINED_FUNCTION_24();
  v45 = v2;
  v4 = v3;
  v42 = v5;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2();
  v13 = v11 - v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_19();
  v44 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949720);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_9();
  *&v4[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v19 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_5();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v7 & 1;
  v4[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v9;
  v4[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v42 & 1;
  v22 = &v4[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v22 = sub_27440D72C;
  v22[1] = v19;
  v23 = &v4[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v23 = sub_27440D6CC;
  v23[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949728);
  OUTLINED_FUNCTION_5();
  v24 = swift_allocObject();
  *(v24 + 16) = v0;
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44();

  v43 = v0;
  sub_274582AC0();
  v26 = v25;
  v47.receiver = v4;
  v47.super_class = type metadata accessor for SummaryModal();
  v27 = objc_msgSendSuper2(&v47, sel_init);
  sub_2745B121C(v45, v26, v1);
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v30 = swift_allocObject();
  OUTLINED_FUNCTION_29(v30);
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949730);
  OUTLINED_FUNCTION_60();
  *v31 = KeyPath;
  v31[1] = sub_27440D6E4;
  v31[2] = v29;
  v31[3] = sub_27440D6E8;
  v31[4] = v24;
  v32 = swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v33 = swift_allocObject();
  OUTLINED_FUNCTION_29(v33);
  swift_unknownObjectWeakInit();
  v34 = (v1 + *(v17 + 44));
  *v34 = v32;
  v34[1] = sub_27440D728;
  v34[2] = v24;
  sub_27440CAC0();
  v35 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949738));
  v36 = sub_274639CDC();
  sub_27463A2AC();
  v37 = sub_274639CBC();
  v39 = v38;
  sub_27440A004();
  v40 = OUTLINED_FUNCTION_37();
  v39(v40);
  (v39)(v44, v13);
  v37(&v46, 0);

  sub_27440CB1C(v1, &qword_280949720);
  v41 = *&v27[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v27[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v36;

  OUTLINED_FUNCTION_23();
}

void sub_274408C90()
{
  OUTLINED_FUNCTION_24();
  v51 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  OUTLINED_FUNCTION_21();
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_0();
  v54 = v12;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_19();
  v55 = v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809496E8) - 8;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_9();
  *&v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  swift_allocObject();
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_20();
  v17 = swift_allocObject();
  v18 = OUTLINED_FUNCTION_50(v17);
  v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v10;
  v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v8 & 1;
  v19 = &v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v19 = sub_27440CA3C;
  v19[1] = v16;
  v20 = &v6[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v20 = sub_27440CA58;
  v20[1] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809496F0);
  OUTLINED_FUNCTION_5();
  *(swift_allocObject() + 16) = v0;
  type metadata accessor for ParameterStateStore();
  OUTLINED_FUNCTION_44();

  v52 = v0;
  sub_274582B84();
  v57.receiver = v6;
  v57.super_class = type metadata accessor for SummaryModal();
  v21 = objc_msgSendSuper2(&v57, sel_init);
  v50 = v4;
  v22 = [v4 parameter];
  v23 = sub_2745DFB1C();
  v25 = v24;
  v48 = v26;
  *(v1 + 64) = swift_getKeyPath();
  v27 = type metadata accessor for ContactPickerView(0);
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 72) = 0;
  *(v1 + 96) = 0;
  v28 = *(v27 + 36);
  *(v1 + v28) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000);
  swift_storeEnumTagMultiPayload();
  v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949700));
  v49 = v51;
  v30 = v22;
  sub_27444A5DC(v30);
  sub_27440CA78(&qword_280949708, &qword_280949700);
  v31 = sub_27463950C();
  v33 = v32;

  *v1 = v31;
  *(v1 + 8) = v33;
  *(v1 + 16) = v23;
  *(v1 + 24) = v25;
  *(v1 + 32) = v48;
  *(v1 + 40) = v51;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v35 = swift_allocObject();
  OUTLINED_FUNCTION_27(v35);
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_3();
  v36 = swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949710);
  OUTLINED_FUNCTION_60();
  *v37 = KeyPath;
  v37[1] = sub_27440D6E4;
  v37[2] = v33;
  v37[3] = sub_27440D6E8;
  v37[4] = v36;
  v38 = swift_getKeyPath();
  OUTLINED_FUNCTION_3();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = (v1 + *(v53 + 44));
  *v40 = v38;
  v40[1] = sub_27440D728;
  v40[2] = v39;
  sub_27440CAC0();
  v41 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949718));
  v42 = sub_274639CDC();
  sub_27463A2AC();
  v43 = sub_274639CBC();
  v45 = v44;
  sub_27440A004();
  v46 = OUTLINED_FUNCTION_37();
  v45(v46);
  (v45)(v55, v54);
  v43(&v56, 0);

  sub_27440CB1C(v1, &qword_2809496E8);
  v47 = *&v21[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v21[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v42;

  OUTLINED_FUNCTION_23();
}

void SummaryModal.init<A, B, C, D>(_:isPopoverInCompactWidth:editingChangeBehavior:dismissBehavior:view:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_24();
  v25 = v23;
  v86 = v26;
  v28 = v27;
  v90 = v29;
  v91 = v30;
  v32 = v31;
  v34 = v33;
  LODWORD(v88) = v35;
  v37 = v36;
  v84 = a23;
  sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  v100 = v39;
  v101 = v38;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0();
  v98 = v40;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_19();
  v99 = v41;
  v93 = *(v28 - 8);
  MEMORY[0x28223BE20]();
  v87 = &v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949340);
  OUTLINED_FUNCTION_43();
  v92 = sub_27463965C();
  v96 = *(v92 - 8);
  MEMORY[0x28223BE20]();
  v103 = &v82 - v43;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949348);
  OUTLINED_FUNCTION_43();
  v95 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v97 = v44;
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0();
  v94 = v45;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_19();
  v102 = v46;
  v82 = *v34;
  v83 = *v32;
  *&v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = 0;
  OUTLINED_FUNCTION_5();
  v47 = swift_allocObject();
  OUTLINED_FUNCTION_27(v47);
  swift_unknownObjectWeakInit();
  v48 = swift_allocObject();
  v49 = v28;
  v85 = v28;
  v50 = v86;
  *(v48 + 2) = v28;
  *(v48 + 3) = v50;
  *(v48 + 4) = a21;
  *(v48 + 5) = a22;
  v51 = v84;
  *(v48 + 6) = v84;
  *(v48 + 7) = v24;
  OUTLINED_FUNCTION_5();
  v52 = swift_allocObject();
  OUTLINED_FUNCTION_27(v52);
  swift_unknownObjectWeakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  *(v53 + 24) = v50;
  *(v53 + 32) = a21;
  *(v53 + 40) = a22;
  *(v53 + 48) = v51;
  *(v53 + 56) = v24;
  *(v53 + 64) = v82;
  v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth] = v88;
  v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_dismissBehavior] = v83;
  v54 = &v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss];
  *v54 = sub_274409B84;
  v54[1] = v48;
  v89 = v48;
  v55 = &v25[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange];
  *v55 = sub_274409CC8;
  v55[1] = v53;
  type metadata accessor for ParameterStateStore();
  v56 = type metadata accessor for SummaryEditorParameterStateDataSource();
  v57 = sub_274406C8C(v37);

  v88 = v37;
  WitnessTable = swift_getWitnessTable();
  v59 = swift_getWitnessTable();
  v60 = ParameterStateStore.__allocating_init<A>(_:)(v57, v56, WitnessTable, v59);
  v86 = v60;
  v61 = type metadata accessor for SummaryModal();
  v112.receiver = v25;
  v112.super_class = v61;
  v62 = objc_msgSendSuper2(&v112, sel_init);
  v63 = v87;
  v91(v60);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v64 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v108 = sub_274409D98;
  v109 = v64;
  v110 = sub_274409E74;
  v111 = v65;
  v66 = v85;
  sub_27463A6CC();

  (*(v93 + 8))(v63, v66);
  swift_getKeyPath();
  OUTLINED_FUNCTION_5();
  v67 = swift_allocObject();
  OUTLINED_FUNCTION_27(v67);
  swift_unknownObjectWeakInit();

  v108 = sub_274409FFC;
  v109 = &unk_288361B50;
  v68 = sub_27440CA78(&qword_280949378, &qword_280949340);
  v106 = v51;
  v107 = v68;
  v69 = v92;
  v70 = swift_getWitnessTable();
  v72 = v102;
  v71 = v103;
  sub_27463A6CC();

  (*(v96 + 8))(v71, v69);
  v73 = sub_27440CA78(&qword_280949380, &qword_280949348);
  v104 = v70;
  v105 = v73;
  v74 = v95;
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  sub_274639CFC();
  v75 = v97;
  (*(v97 + 16))(v94, v72, v74);
  v76 = sub_274639CCC();
  v77 = v98;
  sub_27463A2AC();
  v78 = sub_274639CBC();
  OUTLINED_FUNCTION_26();
  sub_27440A004();
  v79 = *(v100 + 8);
  v79(v77, v101);
  v80 = OUTLINED_FUNCTION_26();
  (v79)(v80);
  v78(&v108, 0);

  (*(v75 + 8))(v102, v74);
  v81 = *&v62[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController];
  *&v62[OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController] = v76;

  OUTLINED_FUNCTION_23();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_274409A34(char a1)
{
  OUTLINED_FUNCTION_47();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = Strong;
      v5 = [v4 currentState];
      [v4 commitState_];
    }

    [v3 completeEditing];
  }
}

void sub_274409AD4(char a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (a1)
    {
      v4 = Strong;
      [v4 commitState_];

      swift_unknownObjectRelease();
    }

    [v3 completeEditing];
  }
}

void sub_274409B98(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_47();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = Strong;
      v6 = [v5 currentState];
      [v5 commitState_];
    }
  }
}

void sub_274409C28(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (a2)
    {
      v5 = Strong;
      [v5 commitState_];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_274409D18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274406AFC();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return result;
}

uint64_t sub_274409D48()
{
  v0 = OUTLINED_FUNCTION_54();
  sub_27440CBD8(v0);
  OUTLINED_FUNCTION_54();
  return sub_274406B3C();
}

uint64_t sub_274409DC0(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_29(a1);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_27440A5E8();
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = *(result + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onDismiss);

    v7(a2 & 1);
  }

  return result;
}

uint64_t sub_274409E94@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_274406B84();
  if (result)
  {
    v4 = result;
    v5 = v3;
    OUTLINED_FUNCTION_39();
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27440D744;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_274409F00(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    OUTLINED_FUNCTION_39();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27440CB74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2744069F0(v1);
  return sub_274406C08(v4, v3);
}

uint64_t sub_274409F88()
{
  OUTLINED_FUNCTION_47();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = *(result + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_onEditingChange);

    v2();
  }

  return result;
}

void sub_27440A004()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949960);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_9();
  v3 = sub_27463A2BC();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20]();
  OUTLINED_FUNCTION_2();
  v6 = v4 - v5;
  MEMORY[0x28223BE20]();
  v7 = OUTLINED_FUNCTION_18();
  v0(v7);
  v8 = MEMORY[0x277CDE4B0];
  v9 = sub_27440AEC8(&qword_280949968, MEMORY[0x277CDE4B0]);
  OUTLINED_FUNCTION_36(v9);
  sub_27440AEC8(&qword_280949970, v8);
  v10 = OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_41(v10);
  if (v11)
  {
    v14 = OUTLINED_FUNCTION_59();
    v15(v14);
    v16 = OUTLINED_FUNCTION_51();
    v0(v16);
    (v0)(v6, v2, v3);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v12 = OUTLINED_FUNCTION_42();
    v13(v12);
  }

  sub_27440D1CC();
  v17 = OUTLINED_FUNCTION_31();
  v18(v17);
  OUTLINED_FUNCTION_23();
}

void sub_27440A218()
{
  OUTLINED_FUNCTION_24();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949A40);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9();
  v5 = sub_274639E1C();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = OUTLINED_FUNCTION_18();
  v0(v11);
  v12 = MEMORY[0x277CDDFC8];
  v13 = sub_27440AEC8(&qword_280949A48, MEMORY[0x277CDDFC8]);
  OUTLINED_FUNCTION_36(v13);
  sub_27440AEC8(&qword_280949A50, v12);
  v14 = OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_41(v14);
  if (v15)
  {
    v18 = OUTLINED_FUNCTION_59();
    v19(v18);
    v20 = OUTLINED_FUNCTION_51();
    v0(v20);
    (v0)(v9, v2, v5);
    OUTLINED_FUNCTION_62();
  }

  else
  {
    v16 = OUTLINED_FUNCTION_42();
    v17(v16);
  }

  sub_27440D1CC();
  v21 = OUTLINED_FUNCTION_31();
  v22(v21);
  OUTLINED_FUNCTION_23();
}

void sub_27440A42C(void *a1)
{
  v2 = OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController;
  v3 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController);
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v5 = v3;
  v6 = [v5 view];
  if (!v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v7 = v6;
  [v6 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  [v5 setPreferredContentSize_];
  v12 = *(v1 + v2);
  if (!v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  [v12 setModalPresentationStyle_];
  v13 = *(v1 + v2);
  if (!v13)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return;
  }

  v14 = [v13 popoverPresentationController];
  if (v14)
  {
    v15 = v14;
    [v14 setDelegate_];
    v16 = [a1 sourceView];
    [v15 setSourceView_];

    [a1 sourceRect];
    [v15 setSourceRect_];
    [v15 wf_forcePresentationInPresenterSceneIfNeeded];
  }

  v17 = [a1 sourceViewController];
  v18 = *(v1 + v2);
  if (!v18)
  {
    goto LABEL_15;
  }

  v19 = v17;
  [v17 presentViewController:v18 animated:1 completion:0];
}

void sub_27440A5E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_viewController);
  if (v1)
  {
    v2 = [v1 presentingViewController];
    if (v2)
    {
      v3 = v2;
      [v2 dismissViewControllerAnimated:1 completion:0];
    }
  }

  else
  {
    __break(1u);
  }
}

id SummaryModal.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SummaryModal.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryModal();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

UIModalPresentationStyle __swiftcall SummaryModal.adaptivePresentationStyle(for:traitCollection:)(UIPresentationController a1, UITraitCollection traitCollection)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 wf_isWidgetConfigurationExtensionBundle];

  if (v5)
  {
    return 2;
  }

  if ([(objc_class *)traitCollection.super.isa horizontalSizeClass]!= 1)
  {
    return -1;
  }

  if (*(v2 + OBJC_IVAR____TtC14WorkflowEditor12SummaryModal_isPopoverInCompactWidth))
  {
    return -1;
  }

  return 2;
}

uint64_t sub_27440A91C(unsigned __int8 a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1);
  return sub_27463C7AC();
}

uint64_t sub_27440A964()
{
  sub_27463C74C();
  sub_27463C77C();
  return sub_27463C7AC();
}

uint64_t sub_27440A9AC(uint64_t a1)
{
  sub_27463C74C();
  MEMORY[0x277C58EA0](a1);
  return sub_27463C7AC();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_27440AA3C()
{
  result = qword_28094C070;
  if (!qword_28094C070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C060);
    sub_27440AAC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C070);
  }

  return result;
}

unint64_t sub_27440AAC8()
{
  result = qword_2809493C0;
  if (!qword_2809493C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094C080);
    sub_27440AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809493C0);
  }

  return result;
}

unint64_t sub_27440AB54()
{
  result = qword_2809493D0;
  if (!qword_2809493D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809493D0);
  }

  return result;
}

unint64_t sub_27440ABA8()
{
  result = qword_28094C3D0;
  if (!qword_28094C3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E8);
    sub_27440AC34();
    sub_27440AD18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3D0);
  }

  return result;
}

unint64_t sub_27440AC34()
{
  result = qword_280949400;
  if (!qword_280949400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28094C330);
    sub_27440CA78(&qword_280949410, &qword_280949418);
    sub_27440CA78(&unk_280949420, &unk_28094C3E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949400);
  }

  return result;
}

unint64_t sub_27440AD18()
{
  result = qword_280949430;
  if (!qword_280949430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949430);
  }

  return result;
}

unint64_t sub_27440AD6C()
{
  result = qword_28094C3F0;
  if (!qword_28094C3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809493F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C3F0);
  }

  return result;
}

unint64_t sub_27440ADE8()
{
  result = qword_280949440;
  if (!qword_280949440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809493E0);
    sub_27440AE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949440);
  }

  return result;
}

unint64_t sub_27440AE74()
{
  result = qword_28094C400;
  if (!qword_28094C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094C400);
  }

  return result;
}

uint64_t sub_27440AEC8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_27440AF10()
{
  result = qword_28094D1B0;
  if (!qword_28094D1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949458);
    sub_27440AEC8(&qword_280949480, type metadata accessor for TagPickerView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094D1B0);
  }

  return result;
}

unint64_t sub_27440AFCC()
{
  result = qword_280949498;
  if (!qword_280949498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809494A0);
    sub_27440AEC8(&qword_2809494A8, type metadata accessor for VariableConfigurationSheet);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949498);
  }

  return result;
}

uint64_t sub_27440B094(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_27440B110(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_27440B134(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_27440B198@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_1_2();
  *a1 = result;
  return result;
}

uint64_t sub_27440B1C0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B100(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27440B1F0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8(a1);
  result = sub_2744554E0(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_27440B218@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B108(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27440B248@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B110(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_27440B27C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B134(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_27440B2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440B15C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_27440B338()
{
  v1 = OUTLINED_FUNCTION_6();
  result = CGSizeMake(v1);
  *v0 = result;
  return result;
}

uint64_t sub_27440B364@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_27440B398(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_27440B3B4@<X0>(_DWORD *a1@<X8>)
{
  result = CGSizeMake(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_27440B3E0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_27440D448(a1);
  *a2 = result;
  return result;
}

void *sub_27440B408@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_27440B418(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AF8, type metadata accessor for WFContactFieldProperty);
  v3 = sub_27440AEC8(&qword_280949B00, type metadata accessor for WFContactFieldProperty);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B4D4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_28094BAE0, type metadata accessor for WFVariableType);
  v3 = sub_27440AEC8(&unk_2809496C0, type metadata accessor for WFVariableType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B590(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_28094C090, type metadata accessor for AttributeName);
  v3 = sub_27440AEC8(&qword_280949B30, type metadata accessor for AttributeName);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B64C(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_2809496A8, type metadata accessor for WFTextFieldKeyboardType);
  v3 = sub_27440AEC8(&unk_2809496B0, type metadata accessor for WFTextFieldKeyboardType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B708(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949698, type metadata accessor for WFTextFieldAutocapitalizationType);
  v3 = sub_27440AEC8(&qword_2809496A0, type metadata accessor for WFTextFieldAutocapitalizationType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B7C4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AD8, _s3__C3KeyVMa_0);
  v3 = sub_27440AEC8(&unk_280949AE0, _s3__C3KeyVMa_0);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B880(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280953420, type metadata accessor for Key);
  v3 = sub_27440AEC8(&qword_2809496D0, type metadata accessor for Key);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B93C(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949BB0, type metadata accessor for WFMeasurementUnitType);
  v3 = sub_27440AEC8(&qword_280949BB8, type metadata accessor for WFMeasurementUnitType);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440B9F8(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949BA0, type metadata accessor for WFDateFormattingStyle);
  v3 = sub_27440AEC8(&qword_280949BA8, type metadata accessor for WFDateFormattingStyle);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BAB4(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_2809496D8, type metadata accessor for WFWorkflowRunSource);
  v3 = sub_27440AEC8(&qword_2809496E0, type metadata accessor for WFWorkflowRunSource);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BB70(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AB8, type metadata accessor for URLResourceKey);
  v3 = sub_27440AEC8(&qword_280949AC0, type metadata accessor for URLResourceKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BC2C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_27463B66C();

  *a1 = v2;
  return result;
}

uint64_t sub_27440BC74(uint64_t a1)
{
  v2 = sub_27440AEC8(&unk_280950450, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_27440AEC8(&qword_280949AF0, type metadata accessor for ProgressUserInfoKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_27440BD30(uint64_t a1)
{
  v2 = sub_27440AEC8(&qword_280949AC8, type metadata accessor for WFExecutionPlatform);
  v3 = sub_27440AEC8(&qword_280949AD0, type metadata accessor for WFExecutionPlatform);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

unint64_t sub_27440BDF0()
{
  result = qword_280949510;
  if (!qword_280949510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949510);
  }

  return result;
}

unint64_t sub_27440BE48()
{
  result = qword_280949518[0];
  if (!qword_280949518[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280949518);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PropertyListOutlineContent.Mode(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *sub_27440C030(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_27440C23C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_27440C27C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_27440C790()
{
  sub_27463B6AC();
  sub_27463B71C();
}

uint64_t sub_27440C7E4()
{
  sub_27463B6AC();
  sub_27463C74C();
  sub_27463B71C();
  v0 = sub_27463C7AC();

  return v0;
}

uint64_t sub_27440C858()
{
  v0 = sub_27463B6AC();
  v2 = v1;
  if (v0 == sub_27463B6AC() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_27463C6BC();
  }

  return v5 & 1;
}

uint64_t sub_27440C8DC()
{
  OUTLINED_FUNCTION_57();

  v2 = sub_27463B69C();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_27440C958()
{
  OUTLINED_FUNCTION_57();

  result = sub_27463B68C();
  *v0 = 0;
  return result;
}

uint64_t sub_27440C9CC()
{
  sub_27463B6AC();
  v0 = sub_27463B66C();

  return v0;
}

uint64_t sub_27440CA04()
{
  v0 = sub_27463B6AC();
  v1 = MEMORY[0x277C57ED0](v0);

  return v1;
}

uint64_t sub_27440CA78(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27440CAC0()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_7();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t sub_27440CB1C(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_27440CB7C()
{
  result = qword_280949978;
  if (!qword_280949978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949978);
  }

  return result;
}

uint64_t sub_27440CBD8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_27440CC1C()
{
  result = qword_280949980;
  if (!qword_280949980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280949980);
  }

  return result;
}

uint64_t sub_27440D1CC()
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2);
  OUTLINED_FUNCTION_7();
  (*(v3 + 32))(v0, v1);
  return v0;
}

uint64_t sub_27440D448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_27440D4C4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_15()
{
  v5 = v0[7];
  *(v4 - 168) = v0[8];
  *(v4 - 160) = v1;
  v6 = v0[5];
  v7 = v0[6];
  *(v4 - 152) = v5;
  *(v4 - 144) = v6;
  v9 = v0[3];
  v8 = v0[4];
  *(v4 - 136) = v7;
  *(v4 - 128) = v9;
  *(v4 - 120) = v3;
  *(v4 - 112) = v8;
  *(v4 - 104) = v0[2];
  *(v4 - 96) = v2;
  return v4 - 168;
}

uint64_t OUTLINED_FUNCTION_18()
{
  result = v1;
  *(v2 - 112) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_25()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_28(uint64_t a1)
{
  *(a1 + 16) = v1;

  return type metadata accessor for ParameterStateStore();
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_34()
{

  return __isPlatformVersionAtLeast(2, 18, 1, 0);
}

uint64_t OUTLINED_FUNCTION_35()
{
  *(v1 - 120) = v0;

  return sub_27463B5BC();
}

uint64_t OUTLINED_FUNCTION_36(uint64_t a1)
{
  *(v3 - 128) = a1;

  return MEMORY[0x2821FCE08](v1, v2);
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_45(uint64_t a1)
{
  *(v1 + 48) = a1;

  return swift_unknownObjectWeakInit();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_48()
{

  sub_27440A004();
}

uint64_t OUTLINED_FUNCTION_50(uint64_t result)
{
  *(result + 16) = v1;
  *(result + 24) = v2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_53(uint64_t result)
{
  *(result + 16) = v2;
  *(result + 24) = v1 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_61()
{

  return __isPlatformVersionAtLeast(2, 26, 0, 0);
}

uint64_t OUTLINED_FUNCTION_62()
{
  v4 = *(v2 - 128);

  return MEMORY[0x2821FCE60](v1, v0, v4);
}

uint64_t OUTLINED_FUNCTION_63()
{

  return sub_27463965C();
}

id sub_27440DC38()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper);
  }

  else
  {
    v4 = [objc_allocWithZone(sub_274637C9C()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_27440DCAC(uint64_t a1, void *a2)
{
  v3 = sub_274638DAC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  (MEMORY[0x28223BE20])();
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274638CAC();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  v11 = (MEMORY[0x28223BE20])();
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v30 - v14;
  v16 = sub_27440DC38();
  v17 = sub_274637C8C();

  if (v17)
  {
    sub_274638C2C();
    v18 = sub_274638D9C();
    v19 = sub_27463BBEC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_2743F0000, v18, v19, "Ignoring attempt to present Montara onboarding as it is already enabled", v20, 2u);
      MEMORY[0x277C5A270](v20, -1, -1);
    }

    return (*(v5 + 8))(v7, v3);
  }

  else
  {
    v22 = type metadata accessor for WFMontaraEnablementDelegate();
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v23 + 24) = 0;
    v30[4] = v22;
    v30[5] = sub_27440F2F0(&qword_280949EA8, type metadata accessor for WFMontaraEnablementDelegate);
    v30[1] = v23;

    sub_274638C9C();
    (*(v10 + 16))(v13, v15, v8);
    v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949EB0));
    v25 = sub_274639CDC();
    OUTLINED_FUNCTION_5();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    v27 = *(v23 + 16);
    *(v23 + 16) = sub_27440F338;
    *(v23 + 24) = v26;
    v28 = v25;
    sub_274406A94(v27);
    v29 = [a2 sourceViewController];
    [v29 presentViewController:v28 animated:1 completion:0];

    return (*(v10 + 8))(v15, v8);
  }
}

uint64_t sub_27440DFFC(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  MEMORY[0x28223BE20]();
  v5 = &v13 - v4;
  v6 = sub_274637E2C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20]();
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a2 dismissViewControllerAnimated:1 completion:0];
  sub_27440F340(a1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    return sub_27440F1E8(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  v11 = [objc_opt_self() sharedContext];
  v12 = sub_274637DFC();
  [v11 openURL_];

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_27440E234(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_27440DC38();
  v8 = sub_274637C8C();

  if (v8)
  {
    v47.receiver = v3;
    v47.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v47, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
    goto LABEL_9;
  }

  v10 = OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper;
  v11 = *&v3[OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper];
  v12 = sub_274637C6C();
  v14 = v13;

  if (!v14)
  {
LABEL_8:
    v49.receiver = v3;
    v49.super_class = ObjectType;
    v9 = objc_msgSendSuper2(&v49, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
LABEL_9:
    v21 = v9;
    if (!v21)
    {
      return 0;
    }

    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v23 = sub_27463B81C();

    return v23;
  }

  v15 = *&v3[v10];
  v16 = sub_274637C5C();
  v18 = v17;

  if (!v18)
  {

    goto LABEL_8;
  }

  v48.receiver = v3;
  v48.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v48, sel_customMenuElementsForSlotWithIdentifier_style_, a1, a2);
  if (v19)
  {
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E80);
    v46 = sub_27463B81C();
  }

  else
  {
    v46 = MEMORY[0x277D84F90];
  }

  v45 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  sub_27463B70C();
  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v25 = qword_28094BB00;
  v26 = sub_27463B66C();
  v27 = sub_27463B66C();

  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = sub_27463B6AC();
  v43 = v30;
  v44 = v29;

  sub_27463B70C();
  v31 = sub_27463B66C();
  v32 = sub_27463B66C();

  v33 = [v25 localizedStringForKey:v31 value:v32 table:0];

  sub_27463B6AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280949E90);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_274648570;
  *(v34 + 56) = MEMORY[0x277D837D0];
  *(v34 + 64) = sub_27440F250();
  *(v34 + 32) = v12;
  *(v34 + 40) = v14;
  v35 = sub_27463B67C();
  v37 = v36;

  sub_27440F2A4();
  v38 = sub_274443914(v45);
  OUTLINED_FUNCTION_5();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = a1;
  objc_allocWithZone(MEMORY[0x277D7D790]);
  v41 = a1;
  *(inited + 32) = sub_2744978D8(v44, v43, v35, v37, v38, sub_27440F2E8, v40);
  sub_27445BB24(inited);
  return v46;
}

void sub_27440E674(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    [Strong requestEditingSlotIdentifier_];
  }
}

id sub_27440E778(void *a1, uint64_t a2, char a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC14WorkflowEditor35WFAskLLMModelParameterSummaryEditor____lazy_storage___enablementHelper] = 0;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithParameter_arrayIndex_processing_, a1, a2, a3 & 1);

  return v8;
}

id sub_27440E844()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27440E8B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_274638CDC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094A480);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = sub_27463B9FC();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  (*(v5 + 16))(&v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  sub_27463B9CC();

  v11 = sub_27463B9BC();
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  *(v13 + 2) = v11;
  *(v13 + 3) = v14;
  *(v13 + 4) = v2;
  (*(v5 + 32))(&v13[v12], &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  sub_274512004();
}

uint64_t sub_27440EA88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  v5[6] = swift_task_alloc();
  v6 = sub_274638CCC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = sub_274637E2C();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = sub_274638CDC();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  sub_27463B9CC();
  v5[16] = sub_27463B9BC();
  v10 = sub_27463B96C();

  return MEMORY[0x2822009F8](sub_27440EC6C, v10, v9);
}

uint64_t sub_27440EC6C()
{
  v1 = *(v0[4] + 16);
  if (!v1)
  {
    return sub_27463C56C();
  }

  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 104))(v2, *MEMORY[0x277D0D7F0], v3);
  sub_27440F2F0(&qword_280949E18, MEMORY[0x277D0D830]);
  sub_27463B7DC();
  sub_27463B7DC();
  (*(v4 + 8))(v2, v3);
  if (v0[2] == v0[3])
  {
    v6 = v0[11];
    v5 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    v9 = v0[7];
    v10 = v0[8];
    v11 = v0[6];
    (*(v10 + 104))(v7, *MEMORY[0x277D0D758], v9);
    sub_274638CBC();
    (*(v10 + 8))(v7, v9);
    (*(v6 + 16))(v11, v5, v8);
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v8);
    v1(v11);
    sub_274406A94(v1);
    sub_27440F1E8(v11);
    (*(v6 + 8))(v5, v8);
  }

  else
  {
    v13 = v0[6];
    __swift_storeEnumTagSinglePayload(v13, 1, 1, v0[10]);
    v1(v13);
    sub_274406A94(v1);
    sub_27440F1E8(v13);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_27440EF54()
{
  sub_274406A94(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_27440EFFC(uint64_t a1)
{
  v4 = *(sub_274638CDC() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_27440F0F4;

  return sub_27440EA88(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_27440F0F4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_27440F1E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_27440F250()
{
  result = qword_28094B3F0;
  if (!qword_28094B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094B3F0);
  }

  return result;
}

unint64_t sub_27440F2A4()
{
  result = qword_280949EA0;
  if (!qword_280949EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280949EA0);
  }

  return result;
}

uint64_t sub_27440F2F0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_27440F340(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_27440F3D8()
{
  type metadata accessor for EditorHostingViewController();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280965DC8 = result;
  return result;
}

id WFFrameLayoutPlatformView.__allocating_init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v1 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_0_0();

  return [v2 v3];
}

id WFFrameLayoutPlatformView.init(frame:)()
{
  OUTLINED_FUNCTION_1_0();
  v5 = type metadata accessor for WFFrameLayoutPlatformView();
  v1 = OUTLINED_FUNCTION_0_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id WFFrameLayoutPlatformView.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id WFFrameLayoutPlatformView.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for WFFrameLayoutPlatformView();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id WFFrameLayoutPlatformView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFFrameLayoutPlatformView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WorkflowOutputPreviewView()
{
  result = qword_280949EC8;
  if (!qword_280949EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27440F6B0()
{
  sub_274412734(319, &unk_280950440);
  if (v0 <= 0x3F)
  {
    sub_2746388BC();
    if (v1 <= 0x3F)
    {
      sub_27440F8B8(319, &qword_280949ED8, MEMORY[0x277D7D408], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_27440F804();
        if (v3 <= 0x3F)
        {
          sub_27440F868();
          if (v4 <= 0x3F)
          {
            sub_27440F8B8(319, &qword_280949EF8, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_27440F804()
{
  if (!qword_280949EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949EE8);
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280949EE0);
    }
  }
}

void sub_27440F868()
{
  if (!qword_280949EF0)
  {
    v0 = sub_27463AD1C();
    if (!v1)
    {
      atomic_store(v0, &qword_280949EF0);
    }
  }
}

void sub_27440F8B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_27440F938@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  v13 = type metadata accessor for WorkflowOutputPreviewView();
  sub_274412C20(v1 + *(v13 + 36), v12, &qword_28094D000);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27463918C();
    OUTLINED_FUNCTION_7();
    return (*(v14 + 32))(a1, v12);
  }

  else
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v9, v3);
  }
}

uint64_t sub_27440FB1C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v46 = sub_2746389FC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v44 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v11);
  v13 = &v44 - v12;
  v14 = sub_274638C1C();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_3_0();
  v20 = v19 - v18;
  sub_2746388BC();
  swift_allocObject();
  a2[1] = sub_2746388AC();
  v21 = type metadata accessor for WorkflowOutputPreviewView();
  v22 = v21[7];
  v47 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EE8);
  sub_27463ACDC();
  *(a2 + v22) = v48;
  v23 = v21[8];
  v47 = 0;
  sub_27463ACDC();
  *(a2 + v23) = v48;
  v24 = v21[9];
  *(a2 + v24) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000);
  swift_storeEnumTagMultiPayload();
  *a2 = [a1 getListRepresentation];
  (*(v16 + 104))(v20, *MEMORY[0x277D79BD0], v14);
  LOBYTE(v24) = sub_274638C0C();
  (*(v16 + 8))(v20, v14);
  if (v24)
  {
    v25 = sub_27463BD5C();

    v26 = *MEMORY[0x277D7D410];
    sub_274638A0C();
    OUTLINED_FUNCTION_7();
    (*(v27 + 104))(v10, v26);
    v28 = MEMORY[0x277D7D3E0];
    if ((v25 & 1) == 0)
    {
      v28 = MEMORY[0x277D7D3E8];
    }

    v29 = v46;
    (*(v5 + 104))(v10, *v28, v46);
    *&v13[*(v45 + 28)] = 0;
    (*(v5 + 32))(v13, v10, v29);
    return sub_274412E58(v13, a2 + v21[6]);
  }

  else
  {
    v31 = v5;
    v33 = v45;
    v32 = v46;
    v34 = [a1 items];
    sub_274412734(0, &qword_280949F00);
    v35 = sub_27463B81C();

    v36 = a1;
    if (sub_274453594(v35))
    {
      sub_2744535A4(0, (v35 & 0xC000000000000001) == 0);
      if ((v35 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x277C58B20](0, v35);
      }

      else
      {
        v37 = *(v35 + 32);
      }

      v38 = v37;
      v39 = v33;
    }

    else
    {

      v38 = 0;
      v39 = v33;
    }

    v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A068) + 48);
    v41 = v44;
    *v44 = v38;
    *&v41[v40] = 0;
    v42 = *MEMORY[0x277D7D418];
    sub_274638A0C();
    OUTLINED_FUNCTION_7();
    (*(v43 + 104))(&v41[v40], v42);
    (*(v31 + 104))(v41, *MEMORY[0x277D7D3F0], v32);
    *(a2 + v21[6] + *(v39 + 28)) = 0;
    return (*(v31 + 32))();
  }
}

void sub_274410004(uint64_t a1@<X8>)
{
  v3 = sub_2746389FC();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_3_0();
  v9 = v8 - v7;
  type metadata accessor for WorkflowOutputPreviewView();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
  sub_27463ACEC();
  v10 = [*v1 items];
  sub_274412734(0, &qword_280949F00);
  sub_27463B81C();

  v11 = sub_2746389CC();

  (*(v5 + 8))(v9, v3);
  *a1 = sub_274639C5C();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F08);
  v12 = OUTLINED_FUNCTION_5_0();
  sub_274410180(v12, v13, v14);
}

uint64_t sub_274410180@<X0>(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a2;
  v63 = a3;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F10);
  MEMORY[0x28223BE20](v60);
  v54 = (&v52 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F18);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v62 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v61 = &v52 - v8;
  v9 = sub_274638C1C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F20);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v52 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F28);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F30);
  v20 = MEMORY[0x28223BE20](v57);
  v58 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  MEMORY[0x28223BE20](v22);
  v64 = &v52 - v25;
  sub_274410850(a1, v15);
  sub_27463B0CC();
  sub_27463973C();
  sub_27441277C(v15, v19, &qword_280949F20);
  memcpy(&v19[*(v17 + 44)], __src, 0x70uLL);
  v26 = *(v10 + 104);
  v56 = *MEMORY[0x277D79BD0];
  v55 = v26;
  v26(v12);
  LOBYTE(v15) = sub_274638C0C();
  v27 = *(v10 + 8);
  v27(v12, v9);
  v59 = a1;
  if ((v15 & 1) != 0 && (sub_27463BD5C() & 1) == 0)
  {
    sub_2744127C8(v68);
  }

  else
  {
    v28 = sub_274639C5C();
    LOBYTE(v65[0]) = 1;
    sub_2744111B4(v67);
    memcpy(&v66[7], v67, 0x71uLL);
    v29 = v65[0];
    v65[0] = v28;
    v65[1] = 0;
    LOBYTE(v65[2]) = v29;
    memcpy(&v65[2] + 1, v66, 0x78uLL);
    sub_274412774(v65);
    memcpy(v68, v65, 0x8AuLL);
  }

  memcpy(v65, v68, 0x8AuLL);
  v30 = sub_27463B0CC();
  v32 = v31;
  sub_27441277C(v19, v24, &qword_280949F28);
  v33 = &v24[*(v57 + 36)];
  memcpy(v33, v65, 0x90uLL);
  *(v33 + 18) = v30;
  *(v33 + 19) = v32;
  sub_27441277C(v24, v64, &qword_280949F30);
  v55(v12, v56, v9);
  LOBYTE(v30) = sub_274638C0C();
  v27(v12, v9);
  v34 = v59;
  if ((v30 & 1) != 0 && (sub_27463BD5C() & 1) == 0)
  {
    v45 = 1;
    v42 = v60;
    v43 = v61;
  }

  else
  {
    v35 = sub_274639B2C();
    v36 = v54;
    *v54 = v35;
    *(v36 + 8) = 0;
    *(v36 + 16) = 1;
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F38);
    sub_2744113B8(v34, v53, v36 + *(v37 + 44));
    v38 = sub_27463A32C();
    v39 = v36 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F40) + 36);
    *v39 = v38;
    *(v39 + 8) = xmmword_274648680;
    *(v39 + 24) = xmmword_274648690;
    *(v39 + 40) = 0;
    sub_27463ABBC();
    v40 = sub_27463ABAC();

    v41 = sub_27463A32C();
    v42 = v60;
    v43 = v61;
    v44 = v36 + *(v60 + 36);
    *v44 = v40;
    *(v44 + 8) = v41;
    sub_27441277C(v36, v43, &qword_280949F10);
    v45 = 0;
  }

  __swift_storeEnumTagSinglePayload(v43, v45, 1, v42);
  v46 = v64;
  v47 = v58;
  sub_274412C20(v64, v58, &qword_280949F30);
  v48 = v62;
  sub_274412C20(v43, v62, &qword_280949F18);
  v49 = v63;
  sub_274412C20(v47, v63, &qword_280949F30);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F48);
  sub_274412C20(v48, v49 + *(v50 + 48), &qword_280949F18);
  sub_27440CB1C(v43, &qword_280949F18);
  sub_27440CB1C(v46, &qword_280949F30);
  sub_27440CB1C(v48, &qword_280949F18);
  return sub_27440CB1C(v47, &qword_280949F30);
}

uint64_t sub_274410850@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949F88);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_274638A2C();
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A010);
  MEMORY[0x28223BE20](v58);
  v8 = v44 - v7;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A018);
  MEMORY[0x28223BE20](v56);
  v57 = v44 - v9;
  v10 = sub_27463879C();
  v47 = *(v10 - 8);
  v48 = v10;
  MEMORY[0x28223BE20](v10);
  v46 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2746389FC();
  MEMORY[0x28223BE20](v12 - 8);
  v54 = sub_274638A9C();
  v49 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v45 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A020);
  v51 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v50 = v44 - v14;
  v15 = sub_274638C1C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 104))(v18, *MEMORY[0x277D79BD0], v15);
  v19 = sub_274638C0C();
  (*(v16 + 8))(v18, v15);
  v20 = type metadata accessor for WorkflowOutputPreviewView();
  v21 = v20;
  if (v19)
  {
    v59 = *(a1 + *(v20 + 32));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A000);
    sub_27463AD0C();
    v44[1] = *(&v60 + 1);
    v52 = v60;
    v44[0] = v61;
    v22 = (a1 + *(v21 + 28));
    v24 = v22[1];
    *&v59 = *v22;
    v23 = v59;
    *(&v59 + 1) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008);
    sub_27463AD0C();
    v25 = *a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
    sub_27463ACEC();
    (*(v47 + 104))(v46, *MEMORY[0x277D7D328], v48);

    v26 = v45;
    sub_274638A8C();
    *&v59 = v23;
    *(&v59 + 1) = v24;
    sub_27463AD0C();
    v27 = v61;
    v28 = sub_274412C6C(&qword_28094A040, MEMORY[0x277D7D438]);
    v29 = v50;
    v30 = v54;
    sub_27463A56C();

    (*(v49 + 8))(v26, v30);
    v31 = v51;
    v32 = v55;
    (*(v51 + 16))(v57, v29, v55);
    swift_storeEnumTagMultiPayload();
    *&v60 = v30;
    *(&v60 + 1) = v28;
    swift_getOpaqueTypeConformance2();
    sub_274412CB4();
    sub_274639DDC();
    return (*(v31 + 8))(v29, v32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949EC0);
    sub_27463AD0C();
    v34 = *a1;
    sub_274638A1C();
    v59 = *(a1 + *(v21 + 28));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A008);
    sub_27463AD0C();
    v35 = v8;
    v36 = v61;
    sub_274412C6C(&qword_28094A028, MEMORY[0x277D7D428]);
    sub_27463A56C();

    (*(v52 + 8))(v6, v4);
    sub_27463B0CC();
    sub_2746392FC();
    v37 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A030) + 36));
    v38 = v61;
    *v37 = v60;
    v37[1] = v38;
    v37[2] = v62;
    v39 = [objc_allocWithZone(sub_274638ACC()) init];
    sub_274412C6C(&qword_28094A038, MEMORY[0x277D7D448]);
    v40 = sub_274638EEC();
    v41 = v57;
    v42 = (v35 + *(v58 + 36));
    *v42 = v40;
    v42[1] = v39;
    sub_274412C20(v35, v41, &qword_28094A010);
    swift_storeEnumTagMultiPayload();
    v43 = sub_274412C6C(&qword_28094A040, MEMORY[0x277D7D438]);
    *&v59 = v54;
    *(&v59 + 1) = v43;
    swift_getOpaqueTypeConformance2();
    sub_274412CB4();
    sub_274639DDC();
    return sub_27440CB1C(v35, &qword_28094A010);
  }
}