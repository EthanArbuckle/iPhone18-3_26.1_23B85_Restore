uint64_t sub_25E6EBCA8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return OUTLINED_FUNCTION_11(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6EBCC0(uint64_t result, int a2, int a3)
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

uint64_t sub_25E6EBCEC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_11(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25E6EBD04(uint64_t result, int a2, int a3)
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

uint64_t sub_25E6EBD9C()
{
  sub_25E755DF8();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 73) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25E6EBE1C()
{
  sub_25E755DF8();
  OUTLINED_FUNCTION_1();
  v2 = *(v1 + 80);
  v3 = (v2 + 88) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25E6EBF08()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03410);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25E755D38();
  OUTLINED_FUNCTION_9();
  sub_25E755F18();
  sub_25E7562C8();
  sub_25E756008();
  OUTLINED_FUNCTION_9();
  sub_25E755F18();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_25E756B28();
  OUTLINED_FUNCTION_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E7568B8();
  OUTLINED_FUNCTION_2();
  return swift_getWitnessTable();
}

uint64_t sub_25E6EC0B4()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25E6EC0F4()
{
  v1 = sub_25E755DF8();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 33) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v7, v4 | 7);
}

uint64_t sub_25E6EC1B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6EC1EC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A20);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A28);
  sub_25E6FD5AC();
  sub_25E6FD8D8();
  return swift_getOpaqueTypeConformance2();
}

id sub_25E6EC2B8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 value];
  *a2 = v4;
  return result;
}

uint64_t sub_25E6EC3C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BB0);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25E6EC414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BB0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_25E6EC4BC()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E70048C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25E6EC518()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6EC688()
{

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

id sub_25E6EC754()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E6FE788();
  *v0 = result;
  return result;
}

uint64_t sub_25E6EC780()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E6FE400();
  *v0 = result;
  return result;
}

uint64_t sub_25E6EC844(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
    v9 = a1 + *(a3 + 36);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_25E6EC8D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
    v8 = v5 + *(a4 + 36);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25E6EC964()
{
  v0 = OUTLINED_FUNCTION_14();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v0);
  OUTLINED_FUNCTION_1_1();
  sub_25E704D38(v1, &qword_27FD03C18);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E6EC9FC()
{
  type metadata accessor for PhotoStylePaletteSlider();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E755EE8();
    OUTLINED_FUNCTION_1();
    (*(v8 + 8))(v1 + v4 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, ((v6 + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_25E6ECB38()
{
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C98);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  return v0;
}

uint64_t sub_25E6ECBC8()
{
  OUTLINED_FUNCTION_31();
  result = sub_25E7560B8();
  *v0 = result;
  return result;
}

id sub_25E6ECC1C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) tone];
  *v1 = v3;
  return result;
}

id sub_25E6ECC60(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) color];
  *v1 = v3;
  return result;
}

id sub_25E6ECCA4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) palette];
  *v1 = v3;
  return result;
}

id sub_25E6ECCE8(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) hideToneAndColorLabels];
  *v1 = result;
  return result;
}

id sub_25E6ECD2C(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) hidePaletteLabel];
  *v1 = result;
  return result;
}

id sub_25E6ECD70(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) hideResetButton];
  *v1 = result;
  return result;
}

id sub_25E6ECDB4(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) isResetButtonEnabled];
  *v1 = result;
  return result;
}

uint64_t sub_25E6ECE50()
{
  OUTLINED_FUNCTION_16_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_6_2(*(v0 + 32));
  }

  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
  v4 = OUTLINED_FUNCTION_21_0(*(v1 + 48));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_25E6ECEC8()
{
  OUTLINED_FUNCTION_5_3();
  if (v3)
  {
    *(v1 + 32) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
    v5 = OUTLINED_FUNCTION_18_0(*(v4 + 48));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25E6ECF40()
{
  OUTLINED_FUNCTION_16_0();
  if (v2)
  {
    return OUTLINED_FUNCTION_6_2(*(v0 + 8));
  }

  OUTLINED_FUNCTION_33();
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
  v4 = OUTLINED_FUNCTION_21_0(*(v1 + 24));

  return __swift_getEnumTagSinglePayload(v4, v5, v6);
}

void sub_25E6ECFAC()
{
  OUTLINED_FUNCTION_5_3();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(0);
    v5 = OUTLINED_FUNCTION_18_0(*(v4 + 24));

    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  }
}

uint64_t sub_25E6ED018()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03E70);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03ED0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03ED8);
  sub_25E712884();
  OUTLINED_FUNCTION_28();
  sub_25E756908();
  OUTLINED_FUNCTION_12_1();
  sub_25E712E0C(v0, v1);
  OUTLINED_FUNCTION_11_1();
  swift_getOpaqueTypeConformance2();
  sub_25E712978();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E6ED1D4()
{
  OUTLINED_FUNCTION_16_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_6_2(*(v1 + 8));
  }

  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
  OUTLINED_FUNCTION_29();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
    v6 = *(v2 + 36);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25E6ED298()
{
  OUTLINED_FUNCTION_5_3();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
    OUTLINED_FUNCTION_29();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 32);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
      v8 = *(v5 + 36);
    }

    v9 = OUTLINED_FUNCTION_18_0(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_25E6ED360()
{
  OUTLINED_FUNCTION_16_0();
  if (v3)
  {
    return OUTLINED_FUNCTION_6_2(*(v1 + 8));
  }

  OUTLINED_FUNCTION_33();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
  OUTLINED_FUNCTION_29();
  if (*(v5 + 84) == v0)
  {
    v6 = *(v2 + 28);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
    v6 = *(v2 + 32);
  }

  v7 = OUTLINED_FUNCTION_21_0(v6);

  return __swift_getEnumTagSinglePayload(v7, v8, v9);
}

void sub_25E6ED424()
{
  OUTLINED_FUNCTION_5_3();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v3;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03F58);
    OUTLINED_FUNCTION_29();
    if (*(v7 + 84) == v6)
    {
      v8 = *(v5 + 28);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C28);
      v8 = *(v5 + 32);
    }

    v9 = OUTLINED_FUNCTION_18_0(v8);

    __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  }
}

uint64_t sub_25E6ED518()
{
  OUTLINED_FUNCTION_31();
  v0 = sub_25E7560D8();
  return OUTLINED_FUNCTION_27(v0);
}

uint64_t sub_25E6ED578()
{
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04208);
  OUTLINED_FUNCTION_1();
  v1 = OUTLINED_FUNCTION_14();
  v2(v1);
  return v0;
}

uint64_t sub_25E6ED5D8()
{
  OUTLINED_FUNCTION_31();
  result = sub_25E7560F8();
  *v0 = result;
  *(v0 + 8) = v2 & 1;
  return result;
}

uint64_t sub_25E6ED614()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6ED64C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6ED6DC()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_25E70FAA0();
  return OUTLINED_FUNCTION_27(v0);
}

uint64_t sub_25E6ED728()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_25E70F7FC();
  return OUTLINED_FUNCTION_27(v0);
}

uint64_t sub_25E6ED774()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_25E70F5FC();
  return OUTLINED_FUNCTION_27(v0);
}

uint64_t sub_25E6ED7C0()
{
  OUTLINED_FUNCTION_4_0();
  v0 = sub_25E70F3FC();
  return OUTLINED_FUNCTION_27(v0);
}

uint64_t sub_25E6ED8FC()
{
  OUTLINED_FUNCTION_31();
  result = sub_25E756098();
  *v0 = v2;
  return result;
}

uint64_t sub_25E6ED94C()
{
  type metadata accessor for BackgroundPlatter();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E7562D8();
  OUTLINED_FUNCTION_32();
  sub_25E755CA8();
  type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle(255);
  OUTLINED_FUNCTION_13_1();
  sub_25E712E0C(&qword_27FD041A0, type metadata accessor for PhotoStyleValueLabels.Configuration.BackgroundStyle);
  OUTLINED_FUNCTION_32();
  sub_25E756898();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E756278();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_32();
  sub_25E7562C8();
  OUTLINED_FUNCTION_32();
  sub_25E755FA8();
  OUTLINED_FUNCTION_28();
  sub_25E7562A8();
  sub_25E756E68();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E756028();
  OUTLINED_FUNCTION_28();
  sub_25E755F18();
  OUTLINED_FUNCTION_14_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25E6EDC00()
{
  type metadata accessor for BrightnessMultiply();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E7562D8();
  sub_25E755CA8();
  sub_25E755F18();
  OUTLINED_FUNCTION_28();
  sub_25E756008();
  OUTLINED_FUNCTION_9();
  sub_25E755F18();
  sub_25E755F18();
  sub_25E756E68();
  OUTLINED_FUNCTION_13_1();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9_1();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_9();
  sub_25E756028();
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_14_1();
  OUTLINED_FUNCTION_8_2();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25E6EDDAC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD041B8);
  sub_25E71443C();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25E6EDE80()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25E6EDEC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25E6EDEF8()
{
  _Block_release(*(v0 + 16));
  OUTLINED_FUNCTION_39();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6EDF30()
{
  OUTLINED_FUNCTION_39();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6EDF64()
{
  MEMORY[0x25F8BF5F0](v0 + 16);
  OUTLINED_FUNCTION_39();

  return MEMORY[0x2821FE8E8](v1, v2, v3);
}

uint64_t sub_25E6EDFE0()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_25E6EE0C0(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) pulsingValueIndicator];
  *v1 = result;
  return result;
}

id sub_25E6EE104(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) isDottedGridAnimated];
  *v1 = result;
  return result;
}

id sub_25E6EE148(uint64_t a1)
{
  result = [OUTLINED_FUNCTION_23_0(a1) snapIndicatorToGrid];
  *v1 = result;
  return result;
}

uint64_t sub_25E6EE24C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04630);

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_25E6EE2A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD04630);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void sub_25E6EE2F8()
{
  OUTLINED_FUNCTION_4_0();
  *v0 = sub_25E71D880();
  *(v0 + 8) = v1;
}

uint64_t sub_25E6EE324()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71EA30();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25E6EE378()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71EC24();
  *v0 = result & 1;
  return result;
}

uint64_t sub_25E6EE3CC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25E6EE404()
{

  OUTLINED_FUNCTION_5_0();

  return MEMORY[0x2821FE8E8](v0, v1, v2);
}

void *sub_25E6EE608()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71E4A0();
  *v0 = result;
  return result;
}

id sub_25E6EE634()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71E15C();
  *v0 = result;
  return result;
}

void *sub_25E6EE660()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71DEF4();
  *v0 = result;
  return result;
}

void *sub_25E6EE68C()
{
  OUTLINED_FUNCTION_4_0();
  result = sub_25E71DC50();
  *v0 = result;
  return result;
}

void sub_25E6EE6B8()
{
  OUTLINED_FUNCTION_4_0();
  *v0 = sub_25E71D9EC();
  *(v0 + 8) = v1;
}

void sub_25E6EE6E4()
{
  OUTLINED_FUNCTION_4_0();
  *v0 = sub_25E720F94();
  *(v0 + 8) = v1;
}

uint64_t sub_25E6EE710()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD04650);
  sub_25E722A20();
  return swift_getOpaqueTypeConformance2();
}

double static PhotoStyleDPad.Configuration.PhotoStyleDPadGridStyle.lines.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 12;
  *a1 = xmmword_25E75B180;
  *(a1 + 16) = 0;
  return result;
}

double static PhotoStyleDPad.Configuration.PhotoStyleDPadGridStyle.dotted.getter@<D0>(uint64_t a1@<X8>)
{
  *&result = 10;
  *a1 = xmmword_25E75B190;
  *(a1 + 16) = -32511;
  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

__n128 PhotoStyleDPad.Configuration.gridStyle.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[6].n128_u16[0];
  result = v1[5];
  *a1 = result;
  a1[1].n128_u16[0] = v2;
  return result;
}

__n128 PhotoStyleDPad.Configuration.gridStyle.setter(__n128 *a1)
{
  v2 = a1[1].n128_u16[0];
  result = *a1;
  v1[5] = *a1;
  v1[6].n128_u16[0] = v2;
  return result;
}

BOOL sub_25E6EEB44@<W0>(_BYTE *a1@<X8>)
{
  result = PhotoStyleDPad.Configuration.isDottedGridAnimated.getter();
  *a1 = result;
  return result;
}

uint64_t PhotoStyleDPad.Configuration.isDottedGridAnimated.setter(uint64_t result)
{
  if (*(v1 + 96) < 0)
  {
    if (result)
    {
      v2 = -32512;
    }

    else
    {
      v2 = 0x8000;
    }

    *(v1 + 96) = v2 & 0xFFFE | *(v1 + 96) & 1;
  }

  return result;
}

_BYTE *(*PhotoStyleDPad.Configuration.isDottedGridAnimated.modify(uint64_t a1))(void *a1)
{
  *a1 = v1;
  *(a1 + 8) = (~*(v1 + 96) & 0x8100) == 0;
  return sub_25E6EEBFC;
}

_BYTE *sub_25E6EEBFC(void *a1)
{
  v3 = *a1;
  result = a1 + 1;
  v2 = v3;
  v4 = *(v3 + 96);
  if (v4 < 0)
  {
    if (*result)
    {
      v5 = 256;
    }

    else
    {
      v5 = 0;
    }

    *(v2 + 96) = v5 | v4 & 0x8001;
  }

  return result;
}

uint64_t sub_25E6EEC40@<X0>(_BYTE *a1@<X8>)
{
  result = PhotoStyleDPad.Configuration.snapIndicatorToGrid.getter();
  *a1 = result & 1;
  return result;
}

uint64_t PhotoStyleDPad.Configuration.snapIndicatorToGrid.setter(uint64_t result)
{
  v2 = *(v1 + 96);
  if (v2 < 0)
  {
    *(v1 + 96) = v2 & 0x100 | result & 1 | 0x8000;
  }

  return result;
}

unsigned __int8 *(*PhotoStyleDPad.Configuration.snapIndicatorToGrid.modify(uint64_t a1))(void *a1)
{
  *a1 = v1;
  *(a1 + 8) = (*(v1 + 96) < 0) & *(v1 + 96);
  return sub_25E6EECF0;
}

unsigned __int8 *sub_25E6EECF0(void *a1)
{
  v3 = *a1;
  result = (a1 + 1);
  v2 = v3;
  v4 = *(v3 + 96);
  if (v4 < 0)
  {
    *(v2 + 96) = v4 & 0x8100 | *result;
  }

  return result;
}

__n128 PhotoStyleDPad.Configuration.init(showBackgroundGradient:showDecorativeElements:visibleGridCount:reachableGridCount:padCornerRadius:valueIndicatorActiveDimension:valueIndicatorInactiveDimension:valueIndicatorActiveShadowRadius:defaultValueIndicatorDimension:gridDotDimension:useDepthEffects:useGlassEffects:gridStyle:edgeAntiAliasingSafetyInset:axisCollisionHapticsIntensity:gestureActivationHapticsIntensity:)(uint64_t a1, char a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8();
  v21 = v20;
  v23 = v22;
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v24 + 8);
  v28 = MEMORY[0x25F8BEB80]();
  *v23 = v21;
  *(v23 + 1) = a2;
  *(v23 + 8) = v16;
  *(v23 + 16) = v15;
  *(v23 + 24) = v14;
  *(v23 + 32) = v13;
  *(v23 + 40) = v12;
  *(v23 + 48) = v11;
  *(v23 + 56) = v10;
  *(v23 + 64) = v30;
  *(v23 + 72) = a3;
  *(v23 + 73) = v28 & a4;
  *(v23 + 80) = v25;
  *(v23 + 88) = v26;
  *(v23 + 96) = v27;
  result = a9;
  *(v23 + 104) = a9;
  *(v23 + 120) = a10;
  return result;
}

double sub_25E6EEDF8()
{
  MEMORY[0x25F8BEB80]();
  word_27FD030A8 = 257;
  unk_27FD030B0 = xmmword_25E75B1A0;
  unk_27FD030C0 = xmmword_25E75B1B0;
  unk_27FD030D0 = xmmword_25E75B1C0;
  unk_27FD030E0 = xmmword_25E75B1D0;
  word_27FD030F0 = 1;
  xmmword_27FD030F8 = xmmword_25E75B1E0;
  word_27FD03108 = -32511;
  result = 1.0;
  *&algn_27FD0310A[6] = xmmword_25E75B1F0;
  qword_27FD03120 = 0x3FE3333333333333;
  return result;
}

void *static PhotoStyleDPad.Configuration.mac.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FD030A0 != -1)
  {
    swift_once();
  }

  return memcpy(a1, &word_27FD030A8, 0x80uLL);
}

double sub_25E6EEEF4()
{
  v0 = MEMORY[0x25F8BEB80]();
  word_27FD03130 = 257;
  unk_27FD03138 = xmmword_25E75B200;
  unk_27FD03148 = xmmword_25E75B210;
  unk_27FD03158 = xmmword_25E75B1C0;
  unk_27FD03168 = xmmword_25E75B1D0;
  byte_27FD03178 = 0;
  byte_27FD03179 = v0;
  xmmword_27FD03180 = xmmword_25E75B190;
  word_27FD03190 = -32511;
  result = 0.0;
  unk_27FD03198 = xmmword_25E75B220;
  qword_27FD031A8 = 0x3FE3333333333333;
  return result;
}

void *sub_25E6EEF84@<X0>(void *a1@<X8>)
{
  if (qword_27FD03128 != -1)
  {
    swift_once();
  }

  return memcpy(a1, &word_27FD03130, 0x80uLL);
}

void *sub_25E6EF048()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(v0 + 140);
  if (v5 < 0 && (v5 & 1) != 0)
  {
    v6 = v0[5];
    v7 = *(v0 + 48);
    v12 = v0[4];
    v13 = v6;
    LOBYTE(v14) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
    MEMORY[0x25F8BE020](&v11, v8);
  }

  v12 = v2;
  v13 = v1;
  v14 = v4;
  v15 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C8);
  return MEMORY[0x25F8BE020](&v11, v9);
}

void PhotoStyleDPad.init(value:isActive:pulsingValueIndicator:defaultValue:minValue:maxValue:backgroundImage:backgroundColor:gradientImageName:staticDottedGridImage:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12)
{
  OUTLINED_FUNCTION_8();
  v13 = v12;
  memcpy(__dst, a12, sizeof(__dst));
  type metadata accessor for CGPoint(0);
  sub_25E756858();
  *(v13 + 56) = v14;
  *(v13 + 72) = v15;
  sub_25E756858();
  *(v13 + 80) = v14;
  *(v13 + 88) = *(&v14 + 1);
  sub_25E755DB8();
  sub_25E6F57D0();
}

void *sub_25E6EF24C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char __src, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56)
{
  sub_25E755DC8();

  sub_25E755DB8();
  sub_25E756AF8();
  sub_25E755DC8();

  v69 = sub_25E755D98();

  *(v59 + 312) = v69;
  *v59 = v61;
  *(v59 + 8) = v60;
  *(v59 + 16) = v68;
  *(v59 + 24) = v67;
  *(v59 + 32) = v58;
  *(v59 + 40) = v57;
  *(v59 + 48) = v72;
  *(v59 + 49) = v73;
  *(v59 + 96) = v66;
  *(v59 + 104) = v65;
  *(v59 + 112) = v64;
  *(v59 + 120) = v63;
  *(v59 + 128) = v62;
  *(v59 + 136) = v74;
  *(v59 + 144) = v75;
  *(v59 + 152) = v76;
  *(v59 + 160) = v71;
  *(v59 + 176) = v56;
  return memcpy((v59 + 184), v77, 0x80uLL);
}

uint64_t PhotoStyleDPad.body.getter@<X0>(uint64_t a1@<X8>)
{
  memcpy(v12, v1, sizeof(v12));
  sub_25E6EF47C(v12, a1);
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD031F8) + 36);
  v4 = *MEMORY[0x277CE0640];
  sub_25E756308();
  OUTLINED_FUNCTION_0();
  (*(v5 + 104))(a1 + v3, v4);
  KeyPath = swift_getKeyPath();
  v7 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03200) + 36));
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03208) + 28);
  v9 = *MEMORY[0x277CDFA88];
  sub_25E755EE8();
  OUTLINED_FUNCTION_0();
  result = (*(v10 + 104))(v7 + v8, v9);
  *v7 = KeyPath;
  return result;
}

uint64_t sub_25E6EF47C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03288);
  MEMORY[0x28223BE20](v61);
  v4 = &v58 - v3;
  *&v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03278);
  MEMORY[0x28223BE20](v62);
  v6 = &v58 - v5;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03268);
  v7 = MEMORY[0x28223BE20](v65);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v58 - v10;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034A8);
  MEMORY[0x28223BE20](v63);
  v64 = &v58 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v58 - v18;
  if (*(a1 + 256))
  {
    memcpy(v71, a1, sizeof(v71));
    v59 = v11;
    sub_25E6EFC08(v17);
    v67 = *(a1 + 32);
    LOBYTE(v68) = *(a1 + 48);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
    MEMORY[0x25F8BE020](v70);
    if (LOBYTE(v70[0]))
    {
      v21 = 0.995;
    }

    else
    {
      v21 = 1.0;
    }

    v67 = *(a1 + 32);
    LOBYTE(v68) = *(a1 + 48);
    MEMORY[0x25F8BE020](v70, v20);
    if (LOBYTE(v70[0]))
    {
      v22 = 0.995;
    }

    else
    {
      v22 = 1.0;
    }

    sub_25E756B68();
    v24 = v23;
    v26 = v25;
    v27 = *(v14 + 32);
    v60 = v13;
    v27(v4, v17, v13);
    v28 = &v4[*(v61 + 36)];
    *v28 = v21;
    *(v28 + 1) = v22;
    *(v28 + 2) = v24;
    *(v28 + 3) = v26;
    v67 = *(a1 + 56);
    v68 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C0);
    sub_25E756868();
    v29 = v70[0] * 0.0174532925;
    sub_25E756B68();
    v31 = v30;
    v33 = v32;
    sub_25E6FCC3C(v4, v6, &qword_27FD03288);
    v34 = &v6[*(v62 + 36)];
    *v34 = v29;
    v62 = xmmword_25E75B230;
    *(v34 + 8) = xmmword_25E75B230;
    *(v34 + 3) = 0;
    *(v34 + 4) = v31;
    *(v34 + 5) = v33;
    *(v34 + 3) = xmmword_25E75B230;
    v67 = *(a1 + 56);
    v68 = *(a1 + 72);
    sub_25E756868();
    v35 = v70[1] * 0.0174532925;
    sub_25E756B68();
    v37 = v36;
    v39 = v38;
    sub_25E6FCC3C(v6, v9, &qword_27FD03278);
    v40 = &v9[*(v65 + 36)];
    *v40 = v35;
    *(v40 + 2) = 0;
    *(v40 + 3) = 0;
    *(v40 + 1) = 0xBFF0000000000000;
    *(v40 + 4) = v37;
    *(v40 + 5) = v39;
    *(v40 + 3) = v62;
    v41 = v59;
    sub_25E6FCC3C(v9, v59, &qword_27FD03268);
    sub_25E6FCC84(v41, v64, &qword_27FD03268);
    swift_storeEnumTagMultiPayload();
    v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03240);
    v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03248);
    type metadata accessor for CGPoint(255);
    v45 = v44;
    v46 = sub_25E6FDE84(&qword_27FD03250, &qword_27FD03248);
    v47 = sub_25E6F6D34(&qword_27FD03258, type metadata accessor for CGPoint);
    *&v67 = v43;
    *(&v67 + 1) = v45;
    v68 = v46;
    v69 = v47;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v67 = v42;
    *(&v67 + 1) = MEMORY[0x277D839B0];
    v68 = OpaqueTypeConformance2;
    v69 = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_25E6F6A80();
    sub_25E756298();
    return sub_25E6FCCCC(v41, &qword_27FD03268);
  }

  else
  {
    memcpy(v71, a1, sizeof(v71));
    sub_25E6EFC08(v19);
    v50 = v13;
    (*(v14 + 16))(v64, v19, v13);
    swift_storeEnumTagMultiPayload();
    v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03240);
    v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03248);
    type metadata accessor for CGPoint(255);
    v54 = v53;
    v55 = sub_25E6FDE84(&qword_27FD03250, &qword_27FD03248);
    v56 = sub_25E6F6D34(&qword_27FD03258, type metadata accessor for CGPoint);
    v71[0] = v52;
    v71[1] = v54;
    v71[2] = v55;
    v71[3] = v56;
    v57 = swift_getOpaqueTypeConformance2();
    v71[0] = v51;
    v71[1] = MEMORY[0x277D839B0];
    v71[2] = v57;
    v71[3] = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    sub_25E6F6A80();
    sub_25E756298();
    return (*(v14 + 8))(v19, v50);
  }
}

uint64_t sub_25E6EFC08@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v2 = sub_25E755F48();
  v27 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_25E755F98();
  v34 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03240);
  v9 = *(v8 - 8);
  v31 = v8;
  v32 = v9;
  MEMORY[0x28223BE20](v8);
  v26[0] = v26 - v10;
  memcpy(v39, v1, sizeof(v39));
  v11 = swift_allocObject();
  v29 = v11;
  memcpy((v11 + 16), v1, 0x140uLL);
  v38[0] = sub_25E6FB90C;
  v38[1] = v11;
  sub_25E6FB914(v39, &v36);
  sub_25E755F28();
  sub_25E755F78();
  v12 = *(v3 + 8);
  v26[1] = v3 + 8;
  v28 = v12;
  v12(v5, v2);
  v36 = v39[0];
  v37 = v39[1];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C8);
  MEMORY[0x25F8BE020](&v35, v13);
  v14 = swift_allocObject();
  memcpy((v14 + 16), v39, 0x140uLL);
  sub_25E6FB914(v39, &v36);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03248);
  type metadata accessor for CGPoint(0);
  v17 = v16;
  v18 = sub_25E6FDE84(&qword_27FD03250, &qword_27FD03248);
  v19 = sub_25E6F6D34(&qword_27FD03258, type metadata accessor for CGPoint);
  sub_25E7565B8();

  v20 = *(v34 + 8);
  v34 += 8;
  v21 = v30;
  v20(v7, v30);

  sub_25E755F38();
  sub_25E755F78();
  v28(v5, v27);
  v36 = v39[2];
  LOBYTE(v37) = v39[3];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](v38, v22);
  *&v36 = v15;
  *(&v36 + 1) = v17;
  *&v37 = v18;
  *(&v37 + 1) = v19;
  swift_getOpaqueTypeConformance2();
  v23 = v31;
  v24 = v26[0];
  sub_25E7565C8();
  v20(v7, v21);
  return (*(v32 + 8))(v24, v23);
}

uint64_t sub_25E6F00F4(uint64_t a1)
{
  sub_25E755EE8();
  OUTLINED_FUNCTION_5();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_25E756068();
}

double sub_25E6F01B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_25E756A78();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034D8);
  sub_25E6F0278(a2, a1, a3 + *(v7 + 44));
  sub_25E755DD8();
  sub_25E755DD8();
  sub_25E756A78();
  sub_25E755D78();
  v8 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034E0) + 36));
  *v8 = v10;
  v8[1] = v11;
  result = *&v12;
  v8[2] = v12;
  return result;
}

uint64_t sub_25E6F0278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v182 = a3;
  v183 = a2;
  v171 = sub_25E7562B8();
  MEMORY[0x28223BE20](v171);
  v170 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034E8);
  MEMORY[0x28223BE20](v174);
  v172 = &v141 - v5;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034F0);
  v176 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v175 = &v141 - v6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034F8);
  v178 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v177 = &v141 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03500);
  v180 = *(v8 - 8);
  v181 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v179 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v141 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03508);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v187 = &v141 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v189 = &v141 - v15;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03510);
  MEMORY[0x28223BE20](v169);
  v164 = &v141 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03518);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v185 = &v141 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v190 = &v141 - v20;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03520);
  MEMORY[0x28223BE20](v168);
  v22 = &v141 - v21;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03528);
  MEMORY[0x28223BE20](v152);
  v24 = (&v141 - v23);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03530);
  MEMORY[0x28223BE20](v154);
  v161 = &v141 - v25;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03538);
  MEMORY[0x28223BE20](v160);
  v159 = &v141 - v26;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03540);
  MEMORY[0x28223BE20](v158);
  v157 = &v141 - v27;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03548);
  v28 = MEMORY[0x28223BE20](v156);
  v163 = &v141 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v153 = &v141 - v31;
  MEMORY[0x28223BE20](v30);
  v162 = &v141 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03550);
  MEMORY[0x28223BE20](v33);
  v35 = (&v141 - v34);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03558);
  MEMORY[0x28223BE20](v36);
  v38 = &v141 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03560);
  v40 = MEMORY[0x28223BE20](v39);
  v155 = &v141 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v141 - v43;
  MEMORY[0x28223BE20](v42);
  v165 = &v141 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03568);
  v47 = MEMORY[0x28223BE20](v46 - 8);
  v184 = &v141 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v50 = &v141 - v49;
  v167 = *(a1 + 184);
  v52 = *(a1 + 192);
  v51 = *(a1 + 200);
  v53 = *(a1 + 224);
  v54 = *(a1 + 256);
  v188 = &v141 - v49;
  if (v54)
  {
    v142 = *(a1 + 288);
    v149 = *(a1 + 208);
    v55 = v149 + 3.0;
    v148 = sub_25E755FF8();
    v150 = v22;
    v151 = *&v36;
    v56 = *(v148 + 20);
    v146 = *MEMORY[0x277CE0118];
    v57 = v146;
    v145 = sub_25E7561E8();
    v58 = *(v145 - 8);
    v144 = *(v58 + 104);
    v147 = v58 + 104;
    v144(v35 + v56, v57, v145);
    *v35 = v55;
    v35[1] = v55;
    sub_25E7566F8();
    v59 = sub_25E756728();

    v60 = (v35 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035E8) + 36));
    *v60 = v59;
    v60[1] = 0x4020000000000000;
    v60[2] = 0;
    v60[3] = 0;
    sub_25E756B68();
    v61 = (v35 + *(v33 + 36));
    *v61 = vdupq_n_s64(0x3FF07AE147AE147BuLL);
    v61[1].i64[0] = v62;
    v61[1].i64[1] = v63;
    v199 = *(a1 + 32);
    v200 = *(a1 + 48);
    v191[0] = *(a1 + 32);
    LOBYTE(v191[1]) = *(a1 + 48);
    v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
    MEMORY[0x25F8BE020](v192);
    if (LOBYTE(v192[0]))
    {
      v64 = 0.9;
    }

    else
    {
      v64 = 0.5;
    }

    sub_25E6FCC3C(v35, v38, &qword_27FD03550);
    *&v38[*(*&v151 + 36)] = v64;
    v197 = *(a1 + 56);
    v198 = *(a1 + 72);
    v191[0] = *(a1 + 56);
    *&v191[1] = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C0);
    sub_25E756868();
    v151 = v53;
    v65 = v192[0] * -7.0;
    v191[0] = v197;
    *&v191[1] = v198;
    sub_25E756868();
    v66 = v192[1] * -7.0;
    sub_25E6FCC3C(v38, v44, &qword_27FD03558);
    v67 = &v44[*(v39 + 36)];
    *v67 = v65;
    v67[1] = v66;
    v68 = v165;
    sub_25E6FCC3C(v44, v165, &qword_27FD03560);
    sub_25E755DD8();
    *v24 = sub_25E756A78();
    v24[1] = v69;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035F0);
    sub_25E6F4C9C(a1, v24 + *(v70 + 44));
    v71 = sub_25E7563D8();
    sub_25E755C88();
    v73 = v72;
    v74 = v51;
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035F8) + 36);
    *v81 = v71;
    *(v81 + 1) = v73;
    *(v81 + 2) = v76;
    v51 = v74;
    *(v81 + 3) = v78;
    *(v81 + 4) = v80;
    v81[40] = 0;
    v53 = v151;
    sub_25E756A78();
    sub_25E755D78();
    v82 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03600) + 36));
    v83 = v194;
    *v82 = v193;
    v82[1] = v83;
    v82[2] = v195;
    v84 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03608) + 36));
    v144(v84 + *(v148 + 20), v146, v145);
    v85 = v149;
    *v84 = v149;
    v84[1] = v85;
    *(v84 + *(sub_25E755FE8() + 20)) = v142;
    *(v84 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03610) + 36)) = 256;
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03618) + 36)) = 0x4010000000000000;
    *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03620) + 36)) = 0x3FB999999999999ALL;
    v86 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03628) + 36);
    *v86 = 0x4049000000000000;
    v86[8] = 0;
    sub_25E756B68();
    v87 = (v24 + *(v152 + 36));
    *v87 = vdupq_n_s64(0x3FEB333333333333uLL);
    v87[1].i64[0] = v88;
    v87[1].i64[1] = v89;
    v191[0] = v199;
    LOBYTE(v191[1]) = v200;
    MEMORY[0x25F8BE020](v192, v143);
    if (LOBYTE(v192[0]))
    {
      v90 = 0.4;
    }

    else
    {
      v90 = 0.1;
    }

    v91 = v161;
    sub_25E6FCC3C(v24, v161, &qword_27FD03528);
    *(v91 + *(v154 + 36)) = v90;
    v191[0] = v197;
    *&v191[1] = v198;
    sub_25E756868();
    v92 = v192[0] * 7.0;
    v191[0] = v197;
    *&v191[1] = v198;
    sub_25E756868();
    v93 = v192[1] * 7.0;
    v94 = v159;
    sub_25E6FCC3C(v91, v159, &qword_27FD03530);
    v95 = (v94 + *(v160 + 36));
    *v95 = v92;
    v95[1] = v93;
    v96 = *(a1 + 312);
    v97 = v157;
    sub_25E6FCC3C(v94, v157, &qword_27FD03538);
    *(v97 + *(v158 + 36)) = v96;
    v196 = *(a1 + 144);
    v98 = v196;
    v99 = v153;
    sub_25E6FCC3C(v97, v153, &qword_27FD03540);
    *(v99 + *(v156 + 52)) = v98;
    v100 = v162;
    sub_25E6FCC3C(v99, v162, &qword_27FD03548);
    v101 = v155;
    v161 = a1;
    sub_25E6FCC84(v68, v155, &qword_27FD03560);
    v102 = v163;
    sub_25E6FCC84(v100, v163, &qword_27FD03548);
    v103 = v150;
    sub_25E6FCC84(v101, v150, &qword_27FD03560);
    v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03630);
    sub_25E6FCC84(v102, v103 + *(v104 + 48), &qword_27FD03548);

    sub_25E6FCC84(&v196, v191, &qword_27FD03638);
    sub_25E6FCCCC(v100, &qword_27FD03548);
    sub_25E6FCCCC(v165, &qword_27FD03560);
    sub_25E6FCCCC(v102, &qword_27FD03548);
    a1 = v161;
    sub_25E6FCCCC(v101, &qword_27FD03560);
    sub_25E6FCC3C(v103, v188, &qword_27FD03520);
    v50 = v188;
    v105 = 0;
  }

  else
  {
    v105 = 1;
  }

  v106 = 1;
  __swift_storeEnumTagSinglePayload(v50, v105, 1, v168);
  if (v167)
  {
    v107 = v164;
    sub_25E6F1860(a1, v183, v164);
    sub_25E6FCC3C(v107, v190, &qword_27FD03510);
    v106 = 0;
  }

  __swift_storeEnumTagSinglePayload(v190, v106, 1, v169);
  sub_25E6F2AE0(v183, v189);
  sub_25E6F3FD4(a1, v192);
  LOBYTE(v192[34]) = 0;
  sub_25E755DD8();
  v109 = v108;
  v111 = v110;
  v112 = (v52 - v51) / v52;
  v113 = v112 * v109 - v53;
  v114 = v112 * v111 - v53;
  if (v113 >= 0.0)
  {
    v115 = v113;
  }

  else
  {
    v115 = 0.0;
  }

  if (v114 >= 0.0)
  {
    v116 = v114;
  }

  else
  {
    v116 = 0.0;
  }

  v201.origin.x = 0.0;
  v201.origin.y = 0.0;
  v201.size.width = v109;
  v201.size.height = v111;
  v202 = CGRectInset(v201, v115, v116);
  x = v202.origin.x;
  y = v202.origin.y;
  width = v202.size.width;
  height = v202.size.height;
  v121 = v172;
  sub_25E755FB8();
  sub_25E7562E8();
  sub_25E755CB8();
  v122 = swift_allocObject();
  memcpy((v122 + 16), a1, 0x140uLL);
  *(v122 + 336) = v109;
  *(v122 + 344) = v111;
  *(v122 + 352) = x;
  *(v122 + 360) = y;
  *(v122 + 368) = width;
  *(v122 + 376) = height;
  sub_25E6FB914(a1, v191);
  sub_25E6FDE84(&qword_27FD03570, &qword_27FD034E8);
  sub_25E6FB968();
  v123 = v175;
  sub_25E756938();

  sub_25E6FCCCC(v121, &qword_27FD034E8);
  v124 = swift_allocObject();
  memcpy((v124 + 16), a1, 0x140uLL);
  sub_25E6FB914(a1, v191);
  sub_25E6FDE84(&qword_27FD03590, &qword_27FD034F0);
  v125 = v177;
  v126 = v166;
  sub_25E756928();

  (*(v176 + 8))(v123, v126);
  sub_25E755D18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03598);
  sub_25E6FBA2C();
  sub_25E6FDE84(&qword_27FD035D8, &qword_27FD034F8);
  v127 = v186;
  v128 = v173;
  sub_25E756628();
  (*(v178 + 8))(v125, v128);
  memcpy(v191, v192, 0x111uLL);
  sub_25E6FCCCC(v191, &qword_27FD03598);
  v129 = v184;
  sub_25E6FCC84(v188, v184, &qword_27FD03568);
  v130 = v185;
  sub_25E6FCC84(v190, v185, &qword_27FD03518);
  v131 = v187;
  sub_25E6FCC84(v189, v187, &qword_27FD03508);
  v133 = v179;
  v132 = v180;
  v134 = *(v180 + 16);
  v135 = v181;
  v134(v179, v127, v181);
  v136 = v129;
  v137 = v182;
  sub_25E6FCC84(v136, v182, &qword_27FD03568);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035E0);
  sub_25E6FCC84(v130, v137 + v138[12], &qword_27FD03518);
  sub_25E6FCC84(v131, v137 + v138[16], &qword_27FD03508);
  v134((v137 + v138[20]), v133, v135);
  v139 = *(v132 + 8);
  v139(v186, v135);
  sub_25E6FCCCC(v189, &qword_27FD03508);
  sub_25E6FCCCC(v190, &qword_27FD03518);
  sub_25E6FCCCC(v188, &qword_27FD03568);
  v139(v133, v135);
  sub_25E6FCCCC(v187, &qword_27FD03508);
  sub_25E6FCCCC(v185, &qword_27FD03518);
  return sub_25E6FCCCC(v184, &qword_27FD03568);
}

uint64_t sub_25E6F16E4(uint64_t TupleTypeMetadata, uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x28223BE20](TupleTypeMetadata);
    v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    for (i = 0; a2 != i; ++i)
    {
      *&v8[8 * i] = *((a3 & 0xFFFFFFFFFFFFFFFELL) + 8 * i);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x28223BE20](TupleTypeMetadata);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v12 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v6 + 32);
    v14 = a2;
    do
    {
      if (a2 == 1)
      {
        v15 = 0;
      }

      else
      {
        v15 = *v13;
      }

      v17 = *v12++;
      v16 = v17;
      v18 = *v5++;
      (*(*(v16 - 8) + 16))(&v11[v15], v18);
      v13 += 4;
      --v14;
    }

    while (v14);
  }

  return sub_25E756B38();
}

uint64_t sub_25E6F1860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v99 = a2;
  v105 = a3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036F0) - 8;
  MEMORY[0x28223BE20](v111);
  v100 = &v85[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036F8);
  v6 = v5 - 8;
  v106 = v5 - 8;
  v7 = MEMORY[0x28223BE20](v5);
  v104 = &v85[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = MEMORY[0x28223BE20](v7);
  v103 = &v85[-v10];
  MEMORY[0x28223BE20](v9);
  v114 = &v85[-v11];
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03700);
  v12 = MEMORY[0x28223BE20](v107);
  v116 = &v85[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v15 = &v85[-v14];
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03708);
  v115 = *(v102 - 8);
  v16 = MEMORY[0x28223BE20](v102);
  v113 = &v85[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v112 = &v85[-v18];
  sub_25E755DD8();
  *v15 = sub_25E756A78();
  v15[1] = v19;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035F0);
  sub_25E6F4C9C(a1, v15 + *(v98 + 44));
  v20 = *(a1 + 208);
  v101 = *(a1 + 257);
  v21 = *(a1 + 288);
  v22 = sub_25E7563D8();
  sub_25E755C88();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD035F8);
  v31 = v15 + *(v96 + 36);
  *v31 = v22;
  *(v31 + 1) = v24;
  *(v31 + 2) = v26;
  *(v31 + 3) = v28;
  *(v31 + 4) = v30;
  v31[40] = 0;
  sub_25E756A78();
  sub_25E755D78();
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03600);
  v32 = (v15 + *(v95 + 36));
  v33 = v119;
  *v32 = v118;
  v32[1] = v33;
  v32[2] = v120;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03608);
  v34 = v15 + *(v94 + 36);
  v108 = sub_25E755FF8();
  v35 = *(v108 + 20);
  v36 = *MEMORY[0x277CE0118];
  v92 = sub_25E7561E8();
  v37 = *(v92 - 8);
  v91 = *(v37 + 104);
  v93 = v37 + 104;
  v86 = v36;
  v91(&v34[v35], v36, v92);
  *v34 = v20;
  *(v34 + 1) = v20;
  v110 = sub_25E755FE8();
  *&v34[*(v110 + 20)] = v21;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03610);
  *&v34[*(v109 + 36)] = 256;
  *(v15 + *(v111 + 44)) = 0x3FF199999999999ALL;
  *(v15 + *(v6 + 44)) = 0x3FE6666666666666;
  v38 = *(v107 + 36);
  v39 = *MEMORY[0x277CE13F8];
  v89 = sub_25E756B18();
  v40 = *(v89 - 8);
  v88 = *(v40 + 104);
  v90 = v40 + 104;
  v88(v15 + v38, v39, v89);
  sub_25E756A68();
  v87 = a1;
  v117 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03710);
  sub_25E6FBD40();
  sub_25E6FC10C();
  v97 = v15;
  sub_25E756668();
  sub_25E6FCCCC(v15, &qword_27FD03700);
  sub_25E755DD8();
  v41 = sub_25E756A78();
  v42 = v116;
  *v116 = v41;
  v42[1] = v43;
  v44 = v98;
  sub_25E6F4C9C(a1, v42 + *(v98 + 44));
  LOBYTE(v6) = sub_25E7563D8();
  sub_25E755C88();
  v45 = v96;
  v46 = v42 + *(v96 + 36);
  *v46 = v6;
  *(v46 + 1) = v47;
  *(v46 + 2) = v48;
  *(v46 + 3) = v49;
  *(v46 + 4) = v50;
  v46[40] = 0;
  sub_25E756A78();
  sub_25E755D78();
  v51 = v95;
  v52 = (v42 + *(v95 + 36));
  v53 = v122;
  *v52 = v121;
  v52[1] = v53;
  v52[2] = v123;
  v54 = v94;
  v55 = v42 + *(v94 + 36);
  v56 = v92;
  v57 = v91;
  v91(&v55[*(v108 + 20)], v36, v92);
  *v55 = v20;
  *(v55 + 1) = v20;
  *&v55[*(v110 + 20)] = v21;
  *&v55[*(v109 + 36)] = 256;
  v58 = v111;
  *(v42 + *(v111 + 44)) = 0x3FF3333333333333;
  *(v42 + *(v106 + 44)) = 0x3FE0000000000000;
  v88(v42 + *(v107 + 36), *MEMORY[0x277CE13F0], v89);
  sub_25E755DD8();
  v59 = sub_25E756A78();
  v60 = v100;
  *v100 = v59;
  v60[1] = v61;
  v62 = v60 + *(v44 + 44);
  v63 = v60;
  sub_25E6F4C9C(v87, v62);
  LOBYTE(v39) = sub_25E7563D8();
  sub_25E755C88();
  v64 = v63 + *(v45 + 36);
  *v64 = v39;
  *(v64 + 8) = v65;
  *(v64 + 16) = v66;
  *(v64 + 24) = v67;
  *(v64 + 32) = v68;
  *(v64 + 40) = 0;
  sub_25E756A78();
  sub_25E755D78();
  v69 = (v63 + *(v51 + 36));
  v70 = v125;
  *v69 = v124;
  v69[1] = v70;
  v69[2] = v126;
  v71 = (v63 + *(v54 + 36));
  v57(&v71[*(v108 + 20)], v86, v56);
  *v71 = v20;
  *(v71 + 1) = v20;
  *&v71[*(v110 + 20)] = v21;
  *&v71[*(v109 + 36)] = 256;
  *(v63 + *(v58 + 44)) = 0x3FF4CCCCCCCCCCCDLL;
  if (v101)
  {
    v72 = 0.45;
  }

  else
  {
    v72 = 1.0;
  }

  v73 = v103;
  sub_25E6FCC3C(v63, v103, &qword_27FD036F0);
  *&v73[*(v106 + 44)] = v72;
  v74 = v114;
  sub_25E6FCC3C(v73, v114, &qword_27FD036F8);
  v75 = *(v115 + 16);
  v76 = v113;
  v77 = v102;
  v75(v113, v112, v102);
  v78 = v97;
  sub_25E6FCC84(v116, v97, &qword_27FD03700);
  v79 = v74;
  v80 = v104;
  sub_25E6FCC84(v79, v104, &qword_27FD036F8);
  v81 = v105;
  v75(v105, v76, v77);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD037A0);
  sub_25E6FCC84(v78, &v81[*(v82 + 48)], &qword_27FD03700);
  sub_25E6FCC84(v80, &v81[*(v82 + 64)], &qword_27FD036F8);
  sub_25E6FCCCC(v114, &qword_27FD036F8);
  sub_25E6FCCCC(v116, &qword_27FD03700);
  v83 = *(v115 + 8);
  v83(v112, v77);
  sub_25E6FCCCC(v80, &qword_27FD036F8);
  sub_25E6FCCCC(v78, &qword_27FD03700);
  return (v83)(v113, v77);
}

uint64_t sub_25E6F2300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a1;
  v37 = a3;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD037A8);
  MEMORY[0x28223BE20](v34);
  v5 = v32 - v4;
  v6 = sub_25E755FF8();
  MEMORY[0x28223BE20](v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E7568D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03778);
  v13 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD037B0);
  MEMORY[0x28223BE20](v36);
  if (*(a2 + 257))
  {
    v16 = *(a2 + 208);
    v32[5] = v15;
    v32[3] = v32 - v14;
    sub_25E7568C8();
    v32[6] = v5;
    v17 = *(v6 + 20);
    v32[4] = v13;
    v18 = *MEMORY[0x277CE0118];
    v19 = sub_25E7561E8();
    (*(*(v19 - 8) + 104))(&v8[v17], v18, v19);
    *v8 = v16;
    *(v8 + 1) = v16;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03700);
    v21 = sub_25E6FBD40();
    v32[0] = a2;
    v22 = v21;
    sub_25E6F6D34(&qword_27FD03788, MEMORY[0x277CDFC08]);
    v32[1] = v22;
    v32[2] = v20;
    sub_25E756568();
    sub_25E6FBCDC(v8);
    (*(v10 + 8))(v12, v9);
    sub_25E6F29F4();
  }

  sub_25E6FCC84(v33, v5, &qword_27FD03700);
  swift_storeEnumTagMultiPayload();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03700);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03780);
  v25 = sub_25E6FBD40();
  v26 = sub_25E6F6D34(&qword_27FD03788, MEMORY[0x277CDFC08]);
  v38 = v23;
  v39 = v6;
  v40 = v25;
  v41 = v26;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03790);
  v29 = sub_25E6FDE84(&qword_27FD03798, &qword_27FD03790);
  v38 = v28;
  v39 = v29;
  v30 = swift_getOpaqueTypeConformance2();
  v38 = v35;
  v39 = v24;
  v40 = OpaqueTypeConformance2;
  v41 = v30;
  swift_getOpaqueTypeConformance2();
  return sub_25E756298();
}

uint64_t sub_25E6F2A48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03790);
  sub_25E6FDE84(&qword_27FD03798, &qword_27FD03790);
  return sub_25E7565D8();
}

uint64_t sub_25E6F2AE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v182 = a1;
  v185 = a2;
  *&v159 = sub_25E7567C8();
  *&v177 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  *&v158 = &v146 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03808);
  MEMORY[0x28223BE20](v174);
  v160 = &v146 - v3;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03810);
  MEMORY[0x28223BE20](v168);
  *&v172 = &v146 - v4;
  v171.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03818);
  MEMORY[0x28223BE20](v171.i64[0]);
  v157 = &v146 - v5;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03820);
  MEMORY[0x28223BE20](v181);
  v173 = &v146 - v6;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03828);
  MEMORY[0x28223BE20](v178);
  v180 = &v146 - v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03830);
  MEMORY[0x28223BE20](v179);
  v176 = &v146 - v8;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03838);
  v169 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v167 = &v146 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03840);
  v165 = *(v10 - 8);
  v166 = v10;
  MEMORY[0x28223BE20](v10);
  v164 = &v146 - v11;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03848);
  v12 = MEMORY[0x28223BE20](v163);
  v170 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v162 = &v146 - v15;
  MEMORY[0x28223BE20](v14);
  v175 = &v146 - v16;
  v17 = sub_25E756178();
  *&v183 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03850);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v146 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v146 - v24;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03858);
  MEMORY[0x28223BE20](v184);
  v27 = &v146 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03860);
  MEMORY[0x28223BE20](v28);
  v30 = &v146 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03868);
  v32 = MEMORY[0x28223BE20](v31);
  v36 = (&v146 - v35);
  v37 = *(v33 + 264);
  v38 = *(v33 + 280);
  if (v38 < 0)
  {
    v147 = v17;
    v148 = v20;
    v48 = v177;
    v151 = v19;
    v152 = v25;
    v49 = v183;
    v149 = v23;
    v153 = v27;
    v154 = v28;
    v155 = v32;
    v156 = v30;
    v50 = *(v33 + 192);
    v51 = *(v33 + 200);
    *&v34 = *(v33 + 224);
    v52 = *(v33 + 272);
    v150 = v34;
    if ((v38 & 0x100) != 0)
    {
      v192 = *(v33 + 32);
      v193 = *(v33 + 48);
      v190[0] = *(v33 + 32);
      LOBYTE(v190[1]) = *(v33 + 48);
      v81 = v33;
      v82 = v37;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
      MEMORY[0x25F8BE020](&v187);
      v84 = v187;
      memcpy(v190, v81, sizeof(v190));
      sub_25E6EF048();
      v85 = v81[14];
      v86 = v81[15];
      v87 = v81[16];
      v88 = v81[17];
      v174 = v81;
      v158 = v88 - v86;
      *&v159 = v87 - v85;
      sub_25E704FCC(v85, v86, v87 - v85, v88 - v86);
      v89 = v82;
      sub_25E706058(0.0, 0.0, v82, v82);
      v91 = v90;
      v93 = v92;
      sub_25E755DD8();
      v171 = v95;
      v172 = v94;
      LOBYTE(v188) = 0;
      *&v94 = (v50 - v51) / v50;
      v177 = v94;
      v96 = sub_25E7563D8();
      LOBYTE(v187) = 0;
      LOBYTE(v190[0]) = 0;
      BYTE1(v190[0]) = v84;
      *(&v190[0] + 1) = v91;
      *&v190[1] = v82 - v93;
      v97 = 0;
      BYTE8(v190[1]) = v188;
      v173 = v82;
      *&v190[2] = v82;
      *(&v190[2] + 1) = v52;
      *&v190[3] = 0x3FD47AE147AE147BLL;
      BYTE8(v190[3]) = 0;
      LOBYTE(v190[4]) = v96;
      *&v98.f64[0] = v171.i64[0];
      *&v98.f64[1] = v172;
      v171 = vdupq_lane_s64(v150, 0);
      v99 = vsubq_f64(vmulq_n_f64(v98, *&v177), v171);
      *(&v190[5] + 8) = vbicq_s8(v99, vcltzq_f64(v99));
      *(&v190[4] + 8) = *(&v190[5] + 8);
      BYTE8(v190[6]) = 0;
      v100 = v49;
      v101 = *(v49 + 104);
      v102 = v151;
      LODWORD(v168) = *MEMORY[0x277CE00F0];
      v103 = v147;
      v160 = v101;
      (v101)(v151);
      v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD038D8);
      sub_25E6FC874();
      v105 = v152;
      *&v172 = v104;
      sub_25E756578();
      v106 = *(v100 + 8);
      v107 = v102;
      v108 = v103;
      *&v183 = v100 + 8;
      v106(v107, v103);
      v109 = v106;
      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03918) + 36);
      v111 = *MEMORY[0x277CE13F0];
      v112 = sub_25E756B18();
      (*(*(v112 - 8) + 104))(&v105[v110], v111, v112);
      *&v105[*(v148 + 36)] = 0x4000000000000000;
      v190[0] = v192;
      LOBYTE(v190[1]) = v193;
      MEMORY[0x25F8BE020](&v191, v83);
      v113 = v191;
      v190[0] = v192;
      LOBYTE(v190[1]) = v193;
      MEMORY[0x25F8BE020](&v191, v83);
      v114 = v191;
      v115 = 0.0;
      if ((v191 & 1) == 0)
      {
        memcpy(v190, v174, sizeof(v190));
        sub_25E6EF048();
        sub_25E704FCC(v85, v86, *&v159, v158);
        sub_25E706058(0.0, 0.0, v89, v89);
        v97 = v116;
        v115 = v89 - v117;
      }

      sub_25E755DD8();
      v182 = v118;
      v159 = v119;
      v186 = v114;
      v120 = sub_25E7563D8();
      LOBYTE(v191) = 0;
      LOBYTE(v190[0]) = 1;
      BYTE1(v190[0]) = v113;
      *(&v190[0] + 1) = v97;
      *&v190[1] = v115;
      BYTE8(v190[1]) = v186;
      *&v190[2] = v173;
      *(&v190[2] + 1) = v52;
      *&v190[3] = 0x3FD47AE147AE147BLL;
      BYTE8(v190[3]) = 1;
      LOBYTE(v190[4]) = v120;
      *&v121.f64[0] = v159;
      *&v121.f64[1] = v182;
      v122 = vsubq_f64(vmulq_n_f64(v121, *&v177), v171);
      *(&v190[5] + 8) = vbicq_s8(v122, vcltzq_f64(v122));
      *(&v190[4] + 8) = *(&v190[5] + 8);
      BYTE8(v190[6]) = 0;
      v123 = v151;
      (v160)(v151, v168, v108);
      sub_25E756578();
      v109(v123, v108);
      sub_25E6F29F4();
    }

    v53 = *(v33 + 176);
    if (v53)
    {
      v54 = v53;
      sub_25E756798();
      v55 = v48;
      v56 = *(v48 + 104);
      v58 = v158;
      v57 = v159;
      v56(*&v158, *MEMORY[0x277CE0FE0], v159);
      v59 = sub_25E7567E8();

      (*(v55 + 8))(COERCE_DOUBLE(*&v58), v57);
      sub_25E755DD8();
      v183 = v60;
      v177 = v61;
      *&v60 = (v50 - v51) / v50;
      v182 = v60;
      v62 = sub_25E7563D8();
      LOBYTE(v192) = 1;
      LOBYTE(v187) = 0;
      LOBYTE(v57) = sub_25E7563D8();
      sub_25E755C88();
      v64 = v63;
      v66 = v65;
      v68 = v67;
      v70 = v69;
      LOBYTE(v190[0]) = 0;
      v71 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03888) + 36);
      v72 = *MEMORY[0x277CE13F0];
      v73 = sub_25E756B18();
      v74 = v160;
      (*(*(v73 - 8) + 104))(&v160[v71], v72, v73);
      *v74 = v59;
      *(v74 + 8) = 0;
      *(v74 + 16) = 1;
      *(v74 + 24) = v62;
      *&v75.f64[0] = v177;
      *&v75.f64[1] = v183;
      v76 = vsubq_f64(vmulq_n_f64(v75, *&v182), vdupq_lane_s64(v150, 0));
      v77 = vbicq_s8(v76, vcltzq_f64(v76));
      *(v74 + 32) = v77;
      *(v74 + 48) = v77;
      *(v74 + 64) = 0;
      *(v74 + 72) = v57;
      *(v74 + 80) = v64;
      *(v74 + 88) = v66;
      *(v74 + 96) = v68;
      *(v74 + 104) = v70;
      *(v74 + 112) = 0;
      *(v74 + v174[9]) = 0x4000000000000000;
      sub_25E6FCC84(v74, v172, &qword_27FD03808);
      swift_storeEnumTagMultiPayload();
      sub_25E6FC450();
      sub_25E6FC730();
      v78 = v173;
      sub_25E756298();

      v79 = v74;
      v80 = &qword_27FD03808;
    }

    else
    {
      v124 = *(v33 + 185);
      v125 = v33;
      v126 = v37;
      memcpy(v190, v33, sizeof(v190));
      sub_25E6EF048();
      sub_25E704FCC(v125[14], v125[15], v125[16] - v125[14], v125[17] - v125[15]);
      sub_25E706058(0.0, 0.0, v126, v126);
      v128 = v127;
      v130 = v129;
      sub_25E755DD8();
      v182 = v132;
      v183 = v131;
      v186 = 0;
      v133 = v124 & 1;
      *&v131 = (v50 - v51) / v50;
      v177 = v131;
      v134 = sub_25E7563D8();
      v135 = v186;
      LOBYTE(v191) = 0;
      v136 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03870) + 36);
      v137 = *MEMORY[0x277CE13F0];
      v138 = sub_25E756B18();
      v139 = v157;
      (*(*(v138 - 8) + 104))(&v157[v136], v137, v138);
      *v139 = 0;
      *(v139 + 2) = v188;
      *(v139 + 6) = v189;
      *(v139 + 8) = v128;
      *(v139 + 16) = v126 - v130;
      *(v139 + 24) = v135;
      *(v139 + 25) = v190[0];
      *(v139 + 28) = *(v190 + 3);
      *(v139 + 32) = v126;
      *(v139 + 40) = v52;
      *(v139 + 48) = 0x3FD47AE147AE147BLL;
      *(v139 + 56) = v133;
      v140 = v192;
      *(v139 + 60) = *(&v192 + 3);
      *(v139 + 57) = v140;
      *(v139 + 64) = v134;
      *(v139 + 68) = *(&v187 + 3);
      *(v139 + 65) = v187;
      *&v141.f64[0] = v182;
      *&v141.f64[1] = v183;
      v142 = vsubq_f64(vmulq_n_f64(v141, *&v177), vdupq_lane_s64(v150, 0));
      v143 = vbicq_s8(v142, vcltzq_f64(v142));
      *(v139 + 88) = v143;
      *(v139 + 72) = v143;
      *(v139 + 104) = 0;
      *(v139 + *(v171.i64[0] + 36)) = 0x4000000000000000;
      sub_25E6FCC84(v139, v172, &qword_27FD03818);
      swift_storeEnumTagMultiPayload();
      sub_25E6FC450();
      sub_25E6FC730();
      v78 = v173;
      sub_25E756298();
      v79 = v139;
      v80 = &qword_27FD03818;
    }

    sub_25E6FCCCC(v79, v80);
    v144 = v156;
    v145 = v153;
    sub_25E6FCC84(v78, v180, &qword_27FD03820);
    swift_storeEnumTagMultiPayload();
    sub_25E6FDE84(&qword_27FD038E8, &qword_27FD03830);
    sub_25E6FC954();
    sub_25E756298();
    sub_25E6FCCCC(v78, &qword_27FD03820);
    sub_25E6FCC84(v145, v144, &qword_27FD03858);
    swift_storeEnumTagMultiPayload();
    sub_25E6FC9E0();
    sub_25E6FCAC4();
    sub_25E756298();
    return sub_25E6FCCCC(v145, &qword_27FD03858);
  }

  else
  {
    v39 = *(v33 + 208);
    v40 = v32;
    v41 = *(v33 + 264);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03908);
    v43 = v36 + *(v42 + 36);
    v44 = *(sub_25E755FF8() + 20);
    v45 = *MEMORY[0x277CE0118];
    v46 = sub_25E7561E8();
    (*(*(v46 - 8) + 104))(&v43[v44], v45, v46);
    *v43 = v39;
    *(v43 + 1) = v39;
    *v36 = v41;
    *(v36 + *(v42 + 40)) = 0;
    *(v36 + *(v40 + 36)) = 0x4000000000000000;
    sub_25E6FCC84(v36, v30, &qword_27FD03868);
    swift_storeEnumTagMultiPayload();
    sub_25E6FC9E0();
    sub_25E6FCAC4();
    sub_25E756298();
    return sub_25E6FCCCC(v36, &qword_27FD03868);
  }
}

uint64_t sub_25E6F3EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v10 = *(a2 + 32);
  v11 = *(a2 + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v9, v5);
  if (v9)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 0.8;
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03938);
  (*(*(v7 - 8) + 16))(a3, a1, v7);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03920);
  *(a3 + *(result + 36)) = v6;
  return result;
}

void sub_25E6F3FD4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_25E7566B8();
  MEMORY[0x28223BE20](v4);
  v6 = *(a1 + 192);
  v7 = *(a1 + 200);
  v8 = *(a1 + 224);
  v9 = *(a1 + 240);
  v105 = *(a1 + 216);
  v106 = v9;
  v10 = *(a1 + 256);
  v11 = *(a1 + 264);
  v12 = *(a1 + 280);
  (*(v13 + 104))(&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  v116 = sub_25E756758();
  v14 = *(a1 + 96);
  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = *(a1 + 120);
  v18 = *(a1 + 128);
  v19 = *(a1 + 136);
  v20 = v14;
  v21 = v15;
  if (v12 < 0)
  {
    v20 = *(a1 + 96);
    v21 = *(a1 + 104);
    if (v12)
    {
      v20 = (v18 - v16) / v11 * round(v14 / ((v18 - v16) / v11));
      v21 = (v19 - v17) / v11 * round(v15 / ((v19 - v17) / v11));
    }
  }

  v114 = v20;
  v115 = *&v21;
  v107 = v15;
  v108 = v14;
  sub_25E755DD8();
  v23 = v22;
  v25 = v24;
  v26 = (v6 - v7) / v6;
  v27 = v26 * v22 - v8;
  v111 = v26;
  v117 = v8;
  v28 = v26 * v25 - v8;
  v29 = 0.0;
  if (v27 >= 0.0)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0.0;
  }

  if (v28 >= 0.0)
  {
    v29 = v28;
  }

  v31 = 0;
  v32 = 0;
  v165 = CGRectInset(*(&v23 - 2), v30, v29);
  x = v165.origin.x;
  y = v165.origin.y;
  width = v165.size.width;
  height = v165.size.height;
  v112 = v17;
  v113 = v16;
  v109 = v19 - v17;
  v110 = v18 - v16;
  sub_25E704FCC(v16, v17, v18 - v16, v19 - v17);
  v38 = v37;
  v40 = v39;
  v166.origin.x = x;
  v166.origin.y = y;
  v166.size.width = width;
  v166.size.height = height;
  MinX = CGRectGetMinX(v166);
  v167.origin.x = x;
  v167.origin.y = y;
  v167.size.width = width;
  v167.size.height = height;
  MaxX = CGRectGetMaxX(v167);
  if (MinX > MaxX)
  {
    __break(1u);
    goto LABEL_29;
  }

  v43 = MaxX;
  v114 = v38;
  v168.origin.x = x;
  v168.origin.y = y;
  v168.size.width = width;
  v168.size.height = height;
  MinY = CGRectGetMinY(v168);
  v169.origin.x = x;
  v169.origin.y = y;
  v169.size.width = width;
  v169.size.height = height;
  MaxY = CGRectGetMaxY(v169);
  v104 = MinY;
  if (MinY > MaxY)
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v99 = MaxY;
  v100 = v43;
  v101 = MinX;
  v102 = v40;
  v98 = v10;
  v103 = a2;
  sub_25E755DB8();
  sub_25E756AC8();
  sub_25E756AB8();

  sub_25E755DC8();

  sub_25E755DB8();
  MEMORY[0x25F8BE210](0.5, 0.85, 0.0);
  sub_25E755DC8();

  v115 = sub_25E755D98();

  v163 = 1;
  *&v161[0] = 0;
  *(&v161[0] + 1) = 0xE000000000000000;
  *&v135 = v108;
  *(&v135 + 1) = v107;
  type metadata accessor for CGPoint(0);
  sub_25E756EB8();
  v107 = *(v161 + 1);
  v108 = *v161;
  memcpy(v161, a1, sizeof(v161));
  v95 = sub_25E6F4954();
  v161[0] = *(a1 + 32);
  LOBYTE(v161[1]) = *(a1 + 48);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v135, v46);
  v94 = v135;
  v96 = *(a1 + 49);
  v97 = sub_25E756718();
  v47 = sub_25E756A78();
  v49 = v48;
  v50 = sub_25E756A78();
  v52 = v51;
  sub_25E6F49DC(a1, v161);
  v145 = v161[0];
  v146 = v161[1];
  v147 = v161[2];
  v148 = v161[3];
  v149[0] = v161[0];
  v149[1] = v161[1];
  v149[2] = v161[2];
  v149[3] = v161[3];
  sub_25E6FCC84(&v145, &v135, &qword_27FD037E8);
  sub_25E6FCCCC(v149, &qword_27FD037E8);
  v152 = v145;
  v153 = v146;
  v154 = v147;
  v155 = v148;
  *&v150[0] = v50;
  *(&v150[0] + 1) = v52;
  v150[1] = v145;
  v150[2] = v146;
  v150[3] = v147;
  v150[4] = v148;
  *&v150[5] = v47;
  *(&v150[5] + 1) = v49;
  v159 = 0;
  memcpy(&v158[7], v150, 0x60uLL);
  v151[0] = v50;
  v151[1] = v52;
  v156 = v47;
  v157 = v49;
  sub_25E6FCC84(v150, v161, &qword_27FD037F0);
  sub_25E6FCCCC(v151, &qword_27FD037F0);
  v53 = v159;
  memcpy(v161, a1, sizeof(v161));
  sub_25E6EF048();
  sub_25E755DD8();
  v55 = v54;
  v57 = v56;
  v58 = v111 * v54 - v117;
  v59 = v111 * v56 - v117;
  if (v58 >= 0.0)
  {
    v60 = v58;
  }

  else
  {
    v60 = 0.0;
  }

  if (v59 >= 0.0)
  {
    v61 = v59;
  }

  else
  {
    v61 = 0.0;
  }

  v62 = 0;
  v63 = 0;
  v170 = CGRectInset(*(&v55 - 2), v60, v61);
  v64 = v170.origin.x;
  v65 = v170.origin.y;
  v66 = v170.size.width;
  v67 = v170.size.height;
  sub_25E704FCC(v113, v112, v110, v109);
  v69 = v68;
  v71 = v70;
  v171.origin.x = v64;
  v171.origin.y = v65;
  v171.size.width = v66;
  v171.size.height = v67;
  v72 = CGRectGetMinX(v171);
  v172.origin.x = v64;
  v172.origin.y = v65;
  v172.size.width = v66;
  v172.size.height = v67;
  v73 = CGRectGetMaxX(v172);
  if (v72 > v73)
  {
    goto LABEL_30;
  }

  v74 = v73;
  v113 = v69;
  v173.origin.x = v64;
  v173.origin.y = v65;
  v173.size.width = v66;
  v173.size.height = v67;
  v75 = CGRectGetMinY(v173);
  v174.origin.x = v64;
  v174.origin.y = v65;
  v174.size.width = v66;
  v174.size.height = v67;
  v76 = CGRectGetMaxY(v174);
  if (v75 > v76)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v77 = v76;
  LODWORD(v112) = v53;
  v78 = 0.0;
  v79 = 0.0;
  if ((v98 & 1) == 0)
  {
    v135 = *(a1 + 56);
    v136 = *(a1 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C0);
    sub_25E756868();
    sub_25E70506C(-1.0, -1.0, 1.0, 1.0);
    v135 = *(a1 + 56);
    v136 = *(a1 + 72);
    sub_25E756868();
    sub_25E756E38();
    v78 = v80 * 4.0;
    v79 = v81 * 4.0;
  }

  *(v133 + 1) = v164[0];
  HIDWORD(v133[0]) = *(v164 + 3);
  v82 = v75 + (1.0 - v71) * (v77 - v75);
  v83 = v72 + v113 * (v74 - v72);
  v113 = v104 + (1.0 - v102) * (v99 - v104);
  LOBYTE(v133[0]) = 0;
  v84 = v106;
  v133[1] = v106;
  v85 = v101 + v114 * (v100 - v101);
  if (v94)
  {
    v86 = v105;
  }

  else
  {
    v86 = v117;
  }

  v133[2] = v116;
  v133[3] = 0;
  if (v95)
  {
    v87 = 1.0;
  }

  else
  {
    v87 = 0.0;
  }

  LOBYTE(v133[4]) = 1;
  *(&v133[4] + 1) = *v162;
  HIDWORD(v133[4]) = *&v162[3];
  *&v133[5] = v101 + v114 * (v100 - v101);
  *&v133[6] = v104 + (1.0 - v102) * (v99 - v104);
  v133[7] = v115;
  v88 = v107;
  v89 = v108;
  *&v133[8] = v108;
  *&v133[9] = v107;
  *&v133[10] = v87;
  v133[11] = 0x4008000000000000;
  memcpy(v132, v133, 0x60uLL);
  v90 = v96;
  LOBYTE(v134[0]) = v96;
  *(v134 + 1) = *v160;
  HIDWORD(v134[0]) = *&v160[3];
  *&v134[1] = v86;
  v91 = v97;
  v134[2] = v97;
  v134[3] = 0x3FD6666666666666;
  v92 = LOBYTE(v112);
  LOBYTE(v134[4]) = LOBYTE(v112);
  memcpy(&v134[4] + 1, v158, 0x67uLL);
  *&v134[17] = v83;
  *&v134[18] = v82;
  *&v134[19] = v78;
  *&v134[20] = v79;
  v134[21] = 0x4010000000000000;
  memcpy(&v132[96], v134, 0xB0uLL);
  memcpy(v103, v132, 0x110uLL);
  LOBYTE(v135) = v90;
  *(&v135 + 1) = *v160;
  DWORD1(v135) = *&v160[3];
  *(&v135 + 1) = v86;
  v136 = v91;
  v137 = 0x3FD6666666666666;
  v138 = v92;
  memcpy(v139, v158, sizeof(v139));
  v140 = v83;
  v141 = v82;
  v142 = v78;
  v143 = v79;
  v144 = 0x4010000000000000;
  sub_25E6FCC84(v133, &v118, &qword_27FD037F8);
  sub_25E6FCC84(v134, &v118, &qword_27FD03800);
  sub_25E6FCCCC(&v135, &qword_27FD03800);
  v118 = 0;
  *v119 = v164[0];
  *&v119[3] = *(v164 + 3);
  v120 = v84;
  v121 = v116;
  v122 = 0;
  v123 = 1;
  *v124 = *v162;
  *&v124[3] = *&v162[3];
  v125 = v85;
  v126 = v113;
  v127 = v115;
  v128 = v89;
  v129 = v88;
  v130 = v87;
  v131 = 0x4008000000000000;
  sub_25E6FCCCC(&v118, &qword_27FD037F8);
}

uint64_t sub_25E6F4954()
{
  if (*(v0 + 185) == 1)
  {
    v1 = *(v0 + 280);
    if (v1 < 0 && (v1 & 1) != 0)
    {
      v2 = *(v0 + 112);
      v3 = *(v0 + 128);
      v4 = vaddq_f64(v2, v3);
      __asm { FMOV            V4.2D, #0.5 }

      v10 = vdivq_f64(vsubq_f64(v3, v2), vdupq_lane_s64(COERCE__INT64(*(v0 + 264)), 0));
      v11 = vmovn_s64(vmvnq_s8(vceqq_f64(vmulq_f64(v10, vrndaq_f64(vdivq_f64(*(v0 + 96), v10))), vmulq_f64(v10, vrndaq_f64(vdivq_f64(vmulq_f64(v4, _Q4), v10))))));
      v12 = v11.i8[0] | v11.i8[4];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25E6F49DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25E756718();
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v9);
  v5 = sub_25E756728();

  v6 = *(a1 + 232);
  sub_25E7566F8();
  v10 = *(a1 + 32);
  v11 = *(a1 + 48);
  MEMORY[0x25F8BE020](&v9, v4);
  v7 = sub_25E756728();

  *a2 = v5;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = v7;
  a2[5] = 0x4014000000000000;
  a2[6] = 0;
  a2[7] = 0;
  return result;
}

BOOL sub_25E6F4B00(double *a1, double *a2, _OWORD *a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v10[0] = a3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034D0);
  sub_25E756868();
  if (v11 == 1)
  {
    memcpy(v10, a3, sizeof(v10));
    return sub_25E6F4BB0(v4, v5, v6, v7);
  }

  else
  {
    return 0;
  }
}

BOOL sub_25E6F4BB0(double a1, double a2, double a3, double a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  v6 = (v4[17] + v4[15]) * 0.5;
  if (a1 == a3)
  {
    goto LABEL_6;
  }

  v8 = (v4[16] + v4[14]) * 0.5;
  if (a1 < a3)
  {
    if (v8 > a1)
    {
      v9 = v8 <= a3;
      goto LABEL_17;
    }

LABEL_6:
    if (a2 != a4)
    {
      if (a2 >= a4)
      {
        if (v6 >= a4)
        {
          return v6 < a2;
        }
      }

      else if (v6 > a2)
      {
        return v6 <= a4;
      }
    }

    return 0;
  }

  if (v8 < a3)
  {
    goto LABEL_6;
  }

  v9 = v8 < a1;
LABEL_17:
  if (a2 == a4)
  {
    return v9;
  }

  if (a2 >= a4)
  {
    if (v6 < a4)
    {
      return v9;
    }

    result = v6 < a2;
    if (v9)
    {
      return 1;
    }
  }

  else
  {
    if (v6 <= a2)
    {
      return v9;
    }

    result = v6 <= a4;
    if (v9)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_25E6F4C9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v97 = a2;
  v3 = sub_25E7566B8();
  v86 = *(v3 - 8);
  v87 = v3;
  MEMORY[0x28223BE20](v3);
  v85 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_25E755FF8();
  MEMORY[0x28223BE20](v84);
  v88 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03640);
  MEMORY[0x28223BE20](v94);
  v89 = &v82 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03648);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v96 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v95 = &v82 - v10;
  v90 = sub_25E7567C8();
  v11 = *(v90 - 1);
  MEMORY[0x28223BE20](v90);
  v13 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03650);
  MEMORY[0x28223BE20](v91);
  v15 = &v82 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03658);
  MEMORY[0x28223BE20](v92);
  v17 = (&v82 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03660);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = (&v82 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03668);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v93 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v82 - v27;
  v98 = a1;
  v29 = *(a1 + 168);
  if (v29)
  {
    v30 = v98;
    v83 = *(v98 + 160);
    v31 = objc_opt_self();

    v32 = [v31 pe_bundle];
    sub_25E7567A8();
    v33 = v11;
    v34 = *(v11 + 104);
    v35 = v90;
    v34(v13, *MEMORY[0x277CE0FE0], v90);
    v36 = sub_25E7567E8();

    (*(v33 + 8))(v13, v35);
    v37 = *(v30 + 312);
    *v15 = v36;
    *(v15 + 4) = 0;
    *(v15 + 2) = 0;
    *(v15 + 12) = 257;
    v38 = v83;
    *(v15 + 4) = v37;
    *(v15 + 5) = v38;
    *(v15 + 6) = v29;
    *(v15 + 7) = 0x3FF0000000000000;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03688);
    sub_25E6FBB94();
    sub_25E6FDE84(&qword_27FD036B8, &qword_27FD03658);
    sub_25E756298();
    v39 = v28;
  }

  else
  {
    v40 = v23;
    v90 = &v82 - v27;
    v41 = v98;
    v42 = *(v98 + 144);
    v113[0] = *(v98 + 152);
    if (v113[0])
    {
      v43 = v42;
      sub_25E6FCC84(v113, &v108, &qword_27FD036E8);
      v44 = sub_25E7566A8();
    }

    else
    {
      v45 = v42;
      v44 = sub_25E7566D8();
    }

    v46 = *(v41 + 312);
    v112 = 1;
    *&v103 = v42;
    *(&v103 + 1) = v44;
    LOBYTE(v104) = 1;
    *(&v104 + 1) = 0;
    LOWORD(v105) = 257;
    *(&v105 + 1) = 0x4000000000000000;
    *&v106 = v46;
    *(&v106 + 1) = v42;

    v47 = sub_25E756708();
    v48 = v40 + *(v18 + 36);
    sub_25E756A48();
    v49 = sub_25E7563D8();
    v48[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03670) + 36)] = v49;
    *v40 = v47;
    v99 = v103;
    v100 = v104;
    v101 = v105;
    v102 = v106;
    sub_25E6FCC84(v40, v21, &qword_27FD03660);
    v50 = v100;
    v107[0] = v99;
    v107[1] = v100;
    v51 = v101;
    v52 = v102;
    v107[2] = v101;
    v107[3] = v102;
    *v17 = v99;
    v17[1] = v50;
    v17[2] = v51;
    v17[3] = v52;
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03678);
    sub_25E6FCC84(v21, v17 + *(v53 + 48), &qword_27FD03660);
    *(v17 + *(v53 + 64)) = 0x3FF0000000000000;
    sub_25E6FCC84(&v103, &v108, &qword_27FD03680);
    sub_25E6FCC84(v107, &v108, &qword_27FD03680);
    sub_25E6FCCCC(v21, &qword_27FD03660);
    v108 = v99;
    v109 = v100;
    v110 = v101;
    v111 = v102;
    sub_25E6FCCCC(&v108, &qword_27FD03680);
    sub_25E6FCC84(v17, v15, &qword_27FD03658);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03688);
    sub_25E6FBB94();
    sub_25E6FDE84(&qword_27FD036B8, &qword_27FD03658);
    v54 = v90;
    sub_25E756298();
    v39 = v54;
    sub_25E6FCCCC(&v103, &qword_27FD03680);
    sub_25E6FCCCC(v17, &qword_27FD03658);
    sub_25E6FCCCC(v40, &qword_27FD03660);
  }

  v55 = v95;
  if (*(v98 + 257))
  {
    v56 = 1;
    v57 = v94;
  }

  else
  {
    v58 = *(v98 + 208);
    v59 = *(v84 + 20);
    v60 = *MEMORY[0x277CE0118];
    v61 = sub_25E7561E8();
    v62 = v88;
    (*(*(v61 - 8) + 104))(&v88[v59], v60, v61);
    *v62 = v58;
    v62[1] = v58;
    (*(v86 + 104))(v85, *MEMORY[0x277CE0EE0], v87);
    v63 = sub_25E756748();
    sub_25E755D28();
    v64 = v89;
    sub_25E6FBC78(v62, v89);
    v65 = *&v108 * 0.5;
    v66 = v64 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036C0) + 68);
    sub_25E6FBC78(v62, v66);
    *(v66 + *(sub_25E755FE8() + 20)) = v65;
    v67 = v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036C8) + 36);
    v68 = v109;
    *v67 = v108;
    *(v67 + 16) = v68;
    *(v67 + 32) = v110;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036D0);
    *(v66 + *(v69 + 52)) = v63;
    *(v66 + *(v69 + 56)) = 256;
    v70 = sub_25E756A78();
    v72 = v71;
    sub_25E6FBCDC(v62);
    v73 = (v66 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036D8) + 36));
    *v73 = v70;
    v73[1] = v72;
    v57 = v94;
    v74 = *(v94 + 36);
    v75 = *MEMORY[0x277CE13F0];
    v76 = sub_25E756B18();
    (*(*(v76 - 8) + 104))(v64 + v74, v75, v76);
    sub_25E6FCC3C(v64, v55, &qword_27FD03640);
    v56 = 0;
  }

  __swift_storeEnumTagSinglePayload(v55, v56, 1, v57);
  v77 = v93;
  sub_25E6FCC84(v39, v93, &qword_27FD03668);
  v78 = v96;
  sub_25E6FCC84(v55, v96, &qword_27FD03648);
  v79 = v97;
  sub_25E6FCC84(v77, v97, &qword_27FD03668);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD036E0);
  sub_25E6FCC84(v78, v79 + *(v80 + 48), &qword_27FD03648);
  sub_25E6FCCCC(v55, &qword_27FD03648);
  sub_25E6FCCCC(v39, &qword_27FD03668);
  sub_25E6FCCCC(v78, &qword_27FD03648);
  return sub_25E6FCCCC(v77, &qword_27FD03668);
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

uint64_t sub_25E6F5888(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03580);
  MEMORY[0x28223BE20](v56);
  v55 = v45 - v16;
  v49 = sub_25E755CE8();
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v46 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_25E756C08();
  MEMORY[0x28223BE20](v54);
  v51 = v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25E756C38();
  v52 = *(v19 - 8);
  v53 = v19;
  MEMORY[0x28223BE20](v19);
  v50 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25E756C58();
  v22 = MEMORY[0x28223BE20](v21);
  MEMORY[0x28223BE20](v22);
  v57 = *(a2 + 32);
  v58 = *(a2 + 48);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&aBlock, v23);
  if ((aBlock & 1) == 0)
  {
    v45[6] = a1;
    sub_25E6F57D0();
  }

  v48 = 0;
  v24 = v55;
  sub_25E6FCC84(a1, v55, &qword_27FD03580);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    v28 = &qword_27FD03580;
    v29 = v24;
    return sub_25E6FCCCC(v29, v28);
  }

  v26 = *v24;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD037D8) + 48);
  if ((v26 & 1) == 0 || __swift_getEnumTagSinglePayload(&v24[v27], 1, v49) == 1)
  {
    v28 = &unk_27FD037E0;
    v29 = &v24[v27];
    return sub_25E6FCCCC(v29, v28);
  }

  v32 = v46;
  v31 = v47;
  v33 = v49;
  (*(v47 + 32))(v46, &v24[v27], v49);
  sub_25E755CD8();
  sub_25E704FCC(0.0, 0.0, a3, a4);
  sub_25E706058(-1.0, -1.0, 2.0, 2.0);
  v35 = v34;
  v37 = v36;
  sub_25E755CD8();
  sub_25E704FCC(a5, a6, a7, a8);
  v38 = *(a2 + 120);
  v39 = *(a2 + 136);
  sub_25E706058(*(a2 + 112), v38, *(a2 + 128) - *(a2 + 112), v39 - v38);
  v41 = v40;
  v43 = v38 + v39 - v42;
  v44 = MEMORY[0x25F8BE1E0](0.05, 0.86, 0.25);
  MEMORY[0x28223BE20](v44);
  v45[-6] = a2;
  v45[-5] = v41;
  *&v45[-4] = v43;
  v45[-3] = v35;
  v45[-2] = v37;
  sub_25E755E78();

  return (*(v31 + 8))(v32, v33);
}

void *sub_25E6F60BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034D0);
  result = sub_25E756868();
  if ((v2 & 1) == 0)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
    result = MEMORY[0x25F8BE020](&v2, v1);
    if (v2 == 1)
    {
      return sub_25E756878();
    }
  }

  return result;
}

uint64_t sub_25E6F6178(double *a1)
{
  sub_25E70506C(a1[14], a1[15], a1[16], a1[17]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C8);
  sub_25E7568F8();
  sub_25E70506C(-3.0, -3.0, 3.0, 3.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C0);
  return sub_25E756878();
}

void sub_25E6F6258()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034D0);
  sub_25E756878();
  sub_25E6F29F4();
}

uint64_t sub_25E6F62D0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  sub_25E755E78();
}

uint64_t sub_25E6F633C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  sub_25E7568F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034C0);
  return sub_25E756878();
}

uint64_t sub_25E6F63F0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 320))
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

uint64_t sub_25E6F6430(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 312) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 320) = 1;
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

    *(result + 320) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25E6F64E0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 128))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 96) & 0xFE | (*(a1 + 96) >> 15) | (*(a1 + 96) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_25E6F6540(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 128) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 128) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *(result + 80) = 0;
      *(result + 88) = 0;
      *(result + 96) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotoStyleDPad.Configuration.PhotoStyleDPadGridStyle(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x3FFF && *(a1 + 18))
    {
      v2 = *a1 + 16382;
    }

    else
    {
      v2 = (*(a1 + 16) & 0xFE | (*(a1 + 16) >> 15) | (*(a1 + 16) >> 1) & 0x3F00) ^ 0x3FFF;
      if (v2 >= 0x3FFE)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t storeEnumTagSinglePayload for PhotoStyleDPad.Configuration.PhotoStyleDPadGridStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    *(result + 8) = 0;
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      v3 = ((-a2 >> 1) & 0x1FFF) - (a2 << 13);
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (4 * v3) & 0xFE00 | (2 * (v3 & 0x7F));
    }
  }

  return result;
}

unint64_t sub_25E6F66FC()
{
  result = qword_27FD03210;
  if (!qword_27FD03210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03200);
    sub_25E6F67FC();
    sub_25E6FDE84(&qword_27FD03298, &qword_27FD03208);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03210);
  }

  return result;
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

unint64_t sub_25E6F67FC()
{
  result = qword_27FD03218;
  if (!qword_27FD03218)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD031F8);
    sub_25E6FD6F0(&qword_27FD03220, &unk_27FD03228, &unk_25E75B510, sub_25E6F68E4);
    sub_25E6F6D34(&qword_27FD03290, MEMORY[0x277CDE450]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03218);
  }

  return result;
}

unint64_t sub_25E6F68E4()
{
  result = qword_27FD03230;
  if (!qword_27FD03230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03238);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03248);
    type metadata accessor for CGPoint(255);
    sub_25E6FDE84(&qword_27FD03250, &qword_27FD03248);
    sub_25E6F6D34(&qword_27FD03258, type metadata accessor for CGPoint);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_25E6F6A80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03230);
  }

  return result;
}

unint64_t sub_25E6F6A80()
{
  result = qword_27FD03260;
  if (!qword_27FD03260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03268);
    sub_25E6F6B0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03260);
  }

  return result;
}

unint64_t sub_25E6F6B0C()
{
  result = qword_27FD03270;
  if (!qword_27FD03270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03278);
    sub_25E6F6B98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03270);
  }

  return result;
}

unint64_t sub_25E6F6B98()
{
  result = qword_27FD03280;
  if (!qword_27FD03280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03288);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03240);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03248);
    type metadata accessor for CGPoint(255);
    sub_25E6FDE84(&qword_27FD03250, &qword_27FD03248);
    sub_25E6F6D34(&qword_27FD03258, type metadata accessor for CGPoint);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03280);
  }

  return result;
}

uint64_t sub_25E6F6D34(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25E6F6DE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 33))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_25E6F6E24(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25E6F6E94(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[57])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = v3 - 2;
      if (!v4)
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

uint64_t sub_25E6F6ED0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25E6F6F3C()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_DWORD *sub_25E6F6FC4(_DWORD *result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v6 < a2)
  {
    v8 = ((*(*(v4 - 8) + 64) + ((v7 + 8) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v6;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (v14)
        {
          goto LABEL_18;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_22;
        }

LABEL_18:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        return (v6 + (v10 | v15) + 1);
      default:
LABEL_22:
        if (v6)
        {
          return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
        }

        return 0;
    }
  }

  return __swift_getEnumTagSinglePayload((result + v7 + 8) & ~v7, v6, v4);
}

void sub_25E6F7110(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  v10 = *(v7 + 80);
  v11 = ((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((*(v7 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_29;
        }

        break;
      case 3:
LABEL_34:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_28;
      default:
LABEL_28:
        if (a2)
        {
LABEL_29:
          v18 = &a1[v10 + 8] & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v9, v6);
        }

        break;
    }
  }

  else
  {
    if (v11)
    {
      v16 = 1;
    }

    else
    {
      v16 = a2 - v9;
    }

    if (v11)
    {
      v17 = ~v9 + a2;
      bzero(a1, ((*(v8 + 64) + ((v10 + 8) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v16;
        break;
      case 2:
        *&a1[v11] = v16;
        break;
      case 3:
        goto LABEL_34;
      case 4:
        *&a1[v11] = v16;
        break;
      default:
        return;
    }
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25E6F7340(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25E6F7380(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_25E6F73EC@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 2);

  sub_25E755D28();
  v4 = sub_25E756A78();
  v6 = v5;
  v7 = *(v1 + 3);
  v8 = v1[32];

  sub_25E756A78();
  sub_25E755D78();
  v9 = *v1;
  sub_25E756B68();
  v11 = v10;
  v13 = v12;
  if (v9 != 1)
  {
    sub_25E6F29F4();
  }

  sub_25E756B08();
  v14 = sub_25E756A98();

  v15 = 0.0;
  if (!v8)
  {
    v15 = v7;
  }

  *a1 = v20;
  *(a1 + 8) = v21;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 32) = v24;
  *(a1 + 40) = v3;
  *(a1 + 48) = 256;
  *(a1 + 56) = v3;
  *(a1 + 64) = 256;
  *(a1 + 72) = v4;
  *(a1 + 80) = v6;
  *(a1 + 88) = v15;
  *(a1 + 96) = v17;
  *(a1 + 112) = v18;
  result = *&v19;
  *(a1 + 128) = v19;
  *(a1 + 144) = 1.5;
  *(a1 + 152) = 1.5;
  *(a1 + 160) = v11;
  *(a1 + 168) = v13;
  *(a1 + 176) = v14;
  *(a1 + 184) = 1;
  return result;
}

void *sub_25E6F7594@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25E756A78();
  v4 = v3;
  sub_25E6F7648(__src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v9, __src, sizeof(v9));
  sub_25E6FCC84(__dst, &v6, &qword_27FD03460);
  sub_25E6FCCCC(v9, &qword_27FD03460);
  *a1 = v2;
  a1[1] = v4;
  return memcpy(a1 + 2, __dst, 0x80uLL);
}

double sub_25E6F7648@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_25E7566B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03468);
  v6 = swift_allocObject();
  v24 = xmmword_25E75B240;
  *(v6 + 16) = xmmword_25E75B240;
  v7 = *MEMORY[0x277CE0EE0];
  v8 = *(v3 + 104);
  v8(v5, v7, v2);
  sub_25E756748();
  *(v6 + 32) = sub_25E7569A8();
  *(v6 + 40) = v9;
  sub_25E756708();
  *(v6 + 48) = sub_25E7569A8();
  *(v6 + 56) = v10;
  sub_25E7569B8();
  sub_25E755E98();
  v11 = swift_allocObject();
  *(v11 + 16) = v24;
  v8(v5, v7, v2);
  sub_25E756748();
  *(v11 + 32) = sub_25E7569A8();
  *(v11 + 40) = v12;
  sub_25E756708();
  *(v11 + 48) = sub_25E7569A8();
  *(v11 + 56) = v13;
  sub_25E7569B8();
  sub_25E755E98();
  v14 = v28;
  v15 = swift_allocObject();
  *(v15 + 16) = v24;
  sub_25E756708();
  *(v15 + 32) = sub_25E7569A8();
  *(v15 + 40) = v16;
  v23 = v30;
  v24 = v29;
  v8(v5, v7, v2);
  sub_25E756748();
  *(v15 + 48) = sub_25E7569A8();
  *(v15 + 56) = v17;
  sub_25E7569B8();
  sub_25E756B48();
  sub_25E756B58();
  sub_25E755E98();
  v18 = v31;
  *a1 = v25;
  v19 = v27;
  *(a1 + 8) = v26;
  *(a1 + 24) = v19;
  *(a1 + 40) = v14;
  v20 = v23;
  *(a1 + 48) = v24;
  *(a1 + 64) = v20;
  *(a1 + 80) = 0x3FE3333333333333;
  *(a1 + 88) = v18;
  result = *&v32;
  v22 = v33;
  *(a1 + 96) = v32;
  *(a1 + 112) = v22;
  return result;
}

uint64_t sub_25E6F797C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03410);
  v5 = a1 + 16;
  v4 = *(a1 + 16);
  v3 = *(v5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25E755D38();
  OUTLINED_FUNCTION_9();
  sub_25E755F18();
  v22 = v4;
  v23 = MEMORY[0x277CE0F78];
  v24 = MEMORY[0x277CE1428];
  v25 = v3;
  v26 = MEMORY[0x277CE0F60];
  v27 = MEMORY[0x277CE1410];
  sub_25E7562C8();
  sub_25E756008();
  OUTLINED_FUNCTION_9();
  sub_25E755F18();
  OUTLINED_FUNCTION_9();
  swift_getTupleTypeMetadata2();
  sub_25E756B28();
  OUTLINED_FUNCTION_3();
  swift_getWitnessTable();
  v6 = sub_25E7568B8();
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v18[-v13];
  v19 = v4;
  v20 = v3;
  v21 = v1;
  sub_25E756A78();
  sub_25E7568A8();
  OUTLINED_FUNCTION_2();
  WitnessTable = swift_getWitnessTable();
  sub_25E715754(v12, v6, WitnessTable);
  v16 = *(v8 + 8);
  v16(v12, v6);
  sub_25E715754(v14, v6, WitnessTable);
  return (v16)(v14, v6);
}

uint64_t sub_25E6F7BF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v73 = a1;
  v70 = a4;
  v74 = sub_25E756B18();
  v58 = *(v74 - 8);
  v6 = v58;
  MEMORY[0x28223BE20](v74);
  v69 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_25E7566B8();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v60 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80[0] = a2;
  v80[1] = MEMORY[0x277CE0F78];
  v80[2] = MEMORY[0x277CE1428];
  v80[3] = a3;
  v80[4] = MEMORY[0x277CE0F60];
  v80[5] = MEMORY[0x277CE1410];
  v63 = sub_25E7562C8();
  v68 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v61 = v50 - v9;
  sub_25E756008();
  v10 = sub_25E755F18();
  v11 = *(v10 - 8);
  v66 = v10;
  v67 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v59 = v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v65 = v50 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = v50 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03410);
  MEMORY[0x28223BE20](v18);
  v20 = v50 - v19;
  v52 = *(swift_getAssociatedConformanceWitness() + 8);
  v56 = sub_25E755D38();
  v21 = sub_25E755F18();
  v22 = *(v21 - 8);
  v71 = v21;
  v72 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v75 = v50 - v26;
  sub_25E6F8448(v73, v80);
  v27 = *(v18 + 36);
  v53 = *MEMORY[0x277CE13F0];
  v28 = *(v6 + 104);
  v54 = v6 + 104;
  v55 = v28;
  v28(&v20[v27]);
  memcpy(v20, v80, 0xE0uLL);
  v50[0] = a2;
  v50[1] = *(type metadata accessor for PhotoStyleDPad.SpiderGrid() + 36);
  sub_25E755EC8();
  v29 = sub_25E6FB744();
  sub_25E756698();
  v57[1](v17, AssociatedTypeWitness);
  sub_25E6FCCCC(v20, &qword_27FD03410);
  WitnessTable = swift_getWitnessTable();
  v79[4] = v29;
  v79[5] = WitnessTable;
  v31 = v71;
  v32 = swift_getWitnessTable();
  v51 = v25;
  v52 = v32;
  sub_25E715754(v25, v31, v32);
  v33 = *(v72 + 8);
  v56 = v72 + 8;
  v57 = v33;
  (v33)(v25, v31);
  (*(v62 + 104))(v60, *MEMORY[0x277CE0EE0], v64);
  v79[0] = sub_25E756748();
  sub_25E706C1C();
  v34 = v61;
  sub_25E706C24();

  v35 = v69;
  v36 = v74;
  v55(v69, v53, v74);
  v37 = v63;
  v38 = swift_getWitnessTable();
  v39 = v59;
  sub_25E756688();
  (*(v58 + 8))(v35, v36);
  (*(v68 + 8))(v34, v37);
  v79[2] = v38;
  v79[3] = MEMORY[0x277CDFC30];
  v40 = v66;
  v41 = swift_getWitnessTable();
  v42 = v65;
  v43 = v39;
  sub_25E715754(v39, v40, v41);
  v44 = v67;
  v45 = *(v67 + 8);
  v45(v43, v40);
  v46 = v71;
  v47 = v51;
  (*(v72 + 16))(v51, v75, v71);
  v79[0] = v47;
  (*(v44 + 16))(v43, v42, v40);
  v79[1] = v43;
  v78[0] = v46;
  v78[1] = v40;
  v76 = v52;
  v77 = v41;
  sub_25E6F16E4(v79, 2, v78);
  v45(v42, v40);
  v48 = v57;
  (v57)(v75, v46);
  v45(v43, v40);
  return (v48)(v47, v46);
}

uint64_t sub_25E6F8448@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v40 = a2;
  v3 = sub_25E7566B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *MEMORY[0x277CE0EE0];
  v9 = *(v4 + 104);
  v9(v6, v8, v3);
  v47 = sub_25E756758();
  sub_25E755D28();
  *&v64[7] = v67;
  *&v64[23] = v68;
  *&v64[39] = v69;
  v10 = sub_25E756A78();
  v45 = v11;
  v46 = v10;
  v12 = 0;
  v13 = 0;
  v42 = 0;
  v43 = 0;
  v41 = 0;
  v14 = 0;
  v44 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v48 = v7;
  if ((v7 & 1) == 0)
  {
    v9(v6, v8, v3);
    v44 = sub_25E756748();
    sub_25E755D28();
    v13 = v70;
    v42 = v72;
    v43 = v71;
    v41 = v73;
    v14 = v74;
    v15 = sub_25E756A78();
    v17 = 0x3FE75C28F5C28F5CLL;
    v18 = 256;
    v12 = 2;
  }

  v33 = v13;
  v34 = v18;
  v37 = v17;
  v38 = v16;
  v39 = v15;
  v19 = v8;
  v20 = v12;
  v35 = v12;
  v21 = v18;
  v9(v6, v19, v3);
  sub_25E756748();
  v36 = sub_25E756728();

  *(&v50[1] + 1) = *v64;
  v50[0] = v48;
  LOBYTE(v50[1]) = 0;
  *(&v50[3] + 1) = *&v64[16];
  *&v50[5] = *&v64[31];
  v50[7] = v47;
  LOWORD(v50[8]) = 256;
  *(&v50[8] + 2) = v65;
  HIWORD(v50[8]) = v66;
  v50[9] = v46;
  v50[10] = v45;
  v50[11] = 0x3FD3333333333333;
  memcpy(v49, v50, 0x60uLL);
  v51[0] = v20;
  v51[1] = 0;
  v23 = v42;
  v22 = v43;
  v51[2] = v13;
  v51[3] = v43;
  v24 = v41;
  v51[4] = v42;
  v51[5] = v41;
  v25 = v14;
  v51[6] = v14;
  v26 = v44;
  v51[7] = v44;
  v51[8] = v21;
  v28 = v38;
  v27 = v39;
  v51[9] = v39;
  v51[10] = v38;
  v29 = v37;
  v51[11] = v37;
  memcpy(&v49[96], v51, 0x60uLL);
  v30 = v40;
  memcpy(v40, v49, 0xC0uLL);
  v31 = v36;
  v30[24] = &unk_287063548;
  v30[25] = v31;
  *(v30 + 208) = 1;
  v30[27] = 0x3FD5C28F5C28F5C3;
  sub_25E6FCC84(v50, &v53, &qword_27FD03450);
  sub_25E6FCC84(v51, &v53, &qword_27FD03458);
  v52[0] = v35;
  v52[1] = 0;
  v52[2] = v33;
  v52[3] = v22;
  v52[4] = v23;
  v52[5] = v24;
  v52[6] = v25;
  v52[7] = v26;
  v52[8] = v34;
  v52[9] = v27;
  v52[10] = v28;
  v52[11] = v29;
  sub_25E6FCCCC(v52, &qword_27FD03458);
  v55 = *v64;
  v53 = v48;
  v54 = 0;
  *v56 = *&v64[16];
  *&v56[15] = *&v64[31];
  v57 = v47;
  v58 = 256;
  v59 = v65;
  v60 = v66;
  v61 = v46;
  v62 = v45;
  v63 = 0x3FD3333333333333;
  return sub_25E6FCCCC(&v53, &qword_27FD03450);
}

uint64_t sub_25E6F88E4(char a1)
{
  sub_25E756F38();
  MEMORY[0x25F8BE680](a1 & 1);
  return sub_25E756F58();
}

uint64_t sub_25E6F894C()
{
  v1 = *v0;
  sub_25E756F38();
  MEMORY[0x25F8BE680](v1);
  return sub_25E756F58();
}

__n128 sub_25E6F8990@<Q0>(uint64_t (**a1)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v3 = swift_allocObject();
  v4 = *(v1 + 16);
  *(v3 + 16) = *v1;
  *(v3 + 32) = v4;
  *(v3 + 48) = *(v1 + 32);
  result = *(v1 + 41);
  *(v3 + 57) = result;
  *a1 = sub_25E6FB238;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E6F89F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_25E756A78();
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03380);
  sub_25E6F8AB4(a2, a1);
  sub_25E755DD8();
  v8 = *(a2 + 32);
  v9 = v7 * -0.5 / v8;
  sub_25E755DD8();
  v11 = v10 * -0.5 / v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03388);
  v13 = (a3 + *(result + 36));
  *v13 = v9;
  v13[1] = v11;
  return result;
}

uint64_t sub_25E6F8AB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E755DF8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v8 = *(a1 + 32);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else if ((v10 & 0x8000000000000000) == 0)
  {
    v14[0] = 0;
    v14[1] = v10;
    swift_getKeyPath();
    (*(v5 + 16))(v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
    v11 = (*(v5 + 80) + 73) & ~*(v5 + 80);
    v12 = swift_allocObject();
    v13 = *(a1 + 16);
    v12[1] = *a1;
    v12[2] = v13;
    v12[3] = *(a1 + 32);
    *(v12 + 57) = *(a1 + 41);
    (*(v5 + 32))(v12 + v11, v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03398);
    sub_25E6FB2B8();
    sub_25E6FDE84(&qword_27FD033B0, &qword_27FD03398);
    return sub_25E756918();
  }

  __break(1u);
  return result;
}

uint64_t sub_25E6F8CCC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  *a4 = 0;
  *(a4 + 8) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03398);
  return sub_25E6F8D38(a2, v6, a3);
}

uint64_t sub_25E6F8D38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E755DF8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = MEMORY[0x28223BE20](v6);
  v10 = *(a1 + 32);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else if ((v12 & 0x8000000000000000) == 0)
  {
    v16[0] = 0;
    v16[1] = v12;
    swift_getKeyPath();
    (*(v7 + 16))(v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v6);
    v13 = (*(v7 + 80) + 88) & ~*(v7 + 80);
    v14 = swift_allocObject();
    v15 = *(a1 + 16);
    *(v14 + 16) = *a1;
    *(v14 + 32) = v15;
    *(v14 + 48) = *(a1 + 32);
    *(v14 + 57) = *(a1 + 41);
    *(v14 + 80) = a2;
    (*(v7 + 32))(v14 + v13, v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03390);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033B8);
    sub_25E6FB2B8();
    sub_25E6FB414();
    return sub_25E756918();
  }

  __break(1u);
  return result;
}

void sub_25E6F8F2C(uint64_t *a1, uint64_t a2, _BOOL8 a3)
{
  sub_25E6F911C(a3, *a1);
  sub_25E6F9150();
  sub_25E756A78();
  sub_25E755D78();
  sub_25E6F29F4();
}

double sub_25E6F8FFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033D0);
  sub_25E6FB508();
  sub_25E6FB5E8();
  sub_25E756678();

  sub_25E755DD8();
  sub_25E755DD8();
  sub_25E756A78();
  sub_25E755D78();
  v1 = (v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033B8) + 36));
  *v1 = v3;
  v1[1] = v4;
  result = *&v5;
  v1[2] = v5;
  return result;
}

BOOL sub_25E6F911C(_BOOL8 result, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else if (v5)
  {
    v6 = v5 / 2;
    return v6 == result && v6 == a2;
  }

  else
  {
    return 0;
  }

  return result;
}

void sub_25E6F9150()
{
  if ((*(v0 + 1) & 1) != 0 && (*(v0 + 24) & 1) == 0)
  {
    v1 = *(v0 + 32);
    sub_25E704FCC(0.0, 0.0, v1, v1);
    sub_25E704FCC(0.0, 0.0, v1, v1);
    if (*(v0 + 48) < 0.0)
    {
      __break(1u);
    }
  }
}

uint64_t sub_25E6F922C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033F8);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = 1.0;
  if (*a2 == 1)
  {
    if (sub_25E6F93F0(a3, a4))
    {
      v13 = 1.0;
    }

    else
    {
      v13 = 0.0;
    }
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03408);
  result = (*(*(v14 - 8) + 16))(v12, a1, v14);
  *&v12[*(v10 + 36)] = v13;
  if ((*(a2 + 1) & 1) == 0)
  {
    if (*(a2 + 56) & 1) != 0 && (sub_25E6F93F0(a3, a4))
    {
      v21 = 0.6;
    }

    else
    {
      v21 = 0.0;
    }

    goto LABEL_19;
  }

  v16 = *(a2 + 32);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    v19 = v18 / 2 == a4 || v18 / 2 == a3;
    v20 = 0.5;
    if (!v19)
    {
      v20 = 0.0;
    }

    if (v18)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0.0;
    }

LABEL_19:
    sub_25E6FCC3C(v12, a5, &qword_27FD033F8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD033D0);
    *(a5 + *(result + 36)) = v21;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25E6F93F0(uint64_t result, uint64_t a2)
{
  if (*(v2 + 1) & 1) != 0 || (*(v2 + 24))
  {
    return 0;
  }

  v3 = round(*(v2 + 8));
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 == a2)
  {
    return 1;
  }

  v4 = round(*(v2 + 16));
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v4 < 9.22337204e18)
  {
    return v4 == result;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_25E6F94B4(char a1, double a2)
{
  sub_25E6F9644(a1, __src);
  if (a2 >= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0.0;
  }

  if (a2 <= 1.0)
  {
    v4 = v3 * 0.5 + 0.5;
  }

  else
  {
    v4 = 1.0;
  }

  if (a2 <= 1.0)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1.0;
  }

  memcpy(__dst, __src, 0x69uLL);
  memcpy(v9, __dst, sizeof(v9));
  memcpy(v6, v9, sizeof(v6));
  v7 = v4;
  v8 = v5 * 0.5 + 0.0;
  sub_25E6F97F4();
}

uint64_t sub_25E6F9560()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03A20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03A28);
  sub_25E6FD5AC();
  sub_25E6FD8D8();
  sub_25E756678();

  memcpy(v2, v1, 0x80uLL);
  return sub_25E6FCCCC(v2, &qword_27FD03A20);
}

void *sub_25E6F9644@<X0>(char a1@<W0>, void *a2@<X8>)
{
  if (a1)
  {
    sub_25E756718();
    sub_25E756728();

    sub_25E755D28();
    sub_25E756A78();
    sub_25E756B68();
  }

  else
  {
    sub_25E756718();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03A90);
  sub_25E6FD820();
  sub_25E6FDE84(&qword_27FD03A88, &qword_27FD03A90);
  sub_25E756298();
  return memcpy(a2, __src, 0x69uLL);
}

uint64_t sub_25E6F9848@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = sub_25E6F9900(a2, a4);
  sub_25E756B68();
  v8 = v7;
  v10 = v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AA8);
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03A28);
  v13 = (a3 + *(result + 36));
  *v13 = v6;
  v13[1] = v6;
  *(v13 + 2) = v8;
  *(v13 + 3) = v10;
  return result;
}

double sub_25E6F9900(int a1, double a2)
{
  v2 = -0.1;
  if (a2 >= -0.1)
  {
    v2 = a2;
  }

  if (a2 > 1.0)
  {
    v2 = 1.0;
  }

  v3 = v2 * 3.5 + 1.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  v4 = a2 > 0.0;
  result = v3 * 0.5;
  if (v3 * 0.5 < 1.0)
  {
    result = 1.0;
  }

  if ((v4 & a1) == 0)
  {
    return v3;
  }

  return result;
}

double sub_25E6F9960@<D0>(uint64_t a1@<X8>)
{
  sub_25E756498();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_25E6F99CC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, uint64_t a6, char a7)
{
  if (__OFADD__(a6, 1))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (a6 + 1 < 0)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (a6 != -1)
  {
    v12 = 0;
    v13 = -a6;
    do
    {
      if ((a7 & 1) != 0 || v12 && v13)
      {
        v15.origin.x = a1;
        v15.origin.y = a2;
        v15.size.width = a3;
        v15.size.height = a4;
        CGRectGetWidth(v15);
        v16.origin.x = a1;
        v16.origin.y = a2;
        v16.size.width = a3;
        v16.size.height = a4;
        CGRectGetHeight(v16);
        v17.origin.x = a1;
        v17.origin.y = a2;
        v17.size.width = a3;
        v17.size.height = a4;
        CGRectGetMinX(v17);
        sub_25E756478();
        v18.origin.x = a1;
        v18.origin.y = a2;
        v18.size.width = a3;
        v18.size.height = a4;
        CGRectGetMaxX(v18);
        sub_25E756488();
        v19.origin.x = a1;
        v19.origin.y = a2;
        v19.size.width = a3;
        v19.size.height = a4;
        CGRectGetMinY(v19);
        sub_25E756478();
        v20.origin.x = a1;
        v20.origin.y = a2;
        v20.size.width = a3;
        v20.size.height = a4;
        CGRectGetMaxY(v20);
        result = sub_25E756488();
      }

      ++v13;
      ++v12;
    }

    while (v13 != 1);
  }

  return result;
}

double sub_25E6F9B24@<D0>(uint64_t a1@<X8>)
{
  sub_25E6F9960(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_25E6F9BA0(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_25E755C68();
  return sub_25E6F9C14;
}

void sub_25E6F9C14(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_25E6F9C60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6FDE30();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_25E6F9CC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25E6FDE30();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_25E6F9D28(uint64_t a1)
{
  v2 = sub_25E6FDE30();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_25E6F9D74()
{
  OUTLINED_FUNCTION_13();
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = v0;
  *v3 = sub_25E6FD990;
  v3[1] = v4;
}

uint64_t sub_25E6F9DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v16[0] = a5;
  v9 = sub_25E755DF8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v16[1] = sub_25E6FD99C(a2);
  swift_getKeyPath();
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 33) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  *(v13 + 32) = a4;
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_25E6FDB04;
  *(v14 + 24) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AB8);
  sub_25E6FDE84(&qword_27FD03AC0, &qword_27FD03AB0);
  sub_25E6FDBC4();
  return sub_25E756918();
}

uint64_t sub_25E6FA024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v77 = a2;
  v78 = a1;
  v76 = a5;
  v9 = sub_25E7562B8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25E755FF8();
  MEMORY[0x28223BE20](v13);
  v15 = (&v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AD8);
  MEMORY[0x28223BE20](v16);
  v18 = &v76 - v17;
  if ((a4 & 1) != 0 && ((v19 = *(v77 + 16), v20 = v19 != 0, v21 = v19 - 1, v20) ? (v22 = v21 == v78) : (v22 = 0), v22))
  {
    v75 = v76;

    return __swift_storeEnumTagSinglePayload(v75, 1, 1, v16);
  }

  else
  {
    v23 = *(v13 + 20);
    v24 = *MEMORY[0x277CE0118];
    v25 = sub_25E7561E8();
    (*(*(v25 - 8) + 104))(v15 + v23, v24, v25);
    *v15 = a6;
    v15[1] = a6;
    sub_25E755D28();
    sub_25E6FBC78(v15, v18);
    v26 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03B10) + 36)];
    v27 = v80;
    *v26 = v79;
    *(v26 + 1) = v27;
    *(v26 + 4) = v81;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03B18);
    *&v18[*(v28 + 52)] = a3;
    *&v18[*(v28 + 56)] = 256;

    v29 = sub_25E756A78();
    v31 = v30;
    sub_25E6FBCDC(v15);
    v32 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03B20) + 36)];
    *v32 = v29;
    v32[1] = v31;
    v33 = sub_25E7563C8();
    result = sub_25E755DD8();
    if (__OFSUB__(*(v77 + 16) - 1, v78))
    {
      __break(1u);
    }

    else
    {
      sub_25E755C88();
      v36 = v35;
      v38 = v37;
      v40 = v39;
      v42 = v41;
      v43 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AF8) + 36)];
      *v43 = v33;
      *(v43 + 1) = v36;
      *(v43 + 2) = v38;
      *(v43 + 3) = v40;
      *(v43 + 4) = v42;
      v43[40] = 0;
      v44 = sub_25E7563F8();
      sub_25E755DD8();
      sub_25E755C88();
      v46 = v45;
      v48 = v47;
      v50 = v49;
      v52 = v51;
      v53 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03AE8) + 36)];
      *v53 = v44;
      *(v53 + 1) = v46;
      *(v53 + 2) = v48;
      *(v53 + 3) = v50;
      *(v53 + 4) = v52;
      v53[40] = 0;
      sub_25E7562E8();
      sub_25E755DE8();
      v55 = v54;
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v62 = *(v10 + 8);
      v62(v12, v9);
      v83.origin.x = v55;
      v83.origin.y = v57;
      v83.size.width = v59;
      v83.size.height = v61;
      MidX = CGRectGetMidX(v83);
      sub_25E7562E8();
      sub_25E755DE8();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v62(v12, v9);
      v84.origin.x = v65;
      v84.origin.y = v67;
      v84.size.width = v69;
      v84.size.height = v71;
      MidY = CGRectGetMidY(v84);
      v73 = &v18[*(v16 + 36)];
      *v73 = MidX;
      v73[1] = MidY;
      v74 = v76;
      sub_25E6FCC3C(v18, v76, &qword_27FD03AD8);
      return __swift_storeEnumTagSinglePayload(v74, 0, 1, v16);
    }
  }

  return result;
}

uint64_t sub_25E6FA504()
{
  OUTLINED_FUNCTION_13();
  *v3 = sub_25E756A78();
  v3[1] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03470);
  return sub_25E6FA560(v2, v1, v0, v3 + *(v5 + 44));
}

uint64_t sub_25E6FA560@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v49 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03478);
  MEMORY[0x28223BE20](v7);
  v51 = (&v42 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03480);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03488);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v50 = &v42 - v15;
  v16 = sub_25E7567C8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03490);
  MEMORY[0x28223BE20](v20);
  v23 = (&v42 - v22);
  if (a1)
  {
    v42 = v21;
    v43 = v9;
    v44 = v14;
    v45 = v7;
    v46 = a4;
    v48 = a1;
    sub_25E756798();
    v24 = *MEMORY[0x277CE0FE0];
    v25 = *(v17 + 104);
    v25(v19, v24, v16);
    v26 = sub_25E7567E8();

    v27 = *(v17 + 8);
    v27(v19, v16);
    if (v49)
    {
      v28 = v48;
      sub_25E756798();
      v25(v19, v24, v16);
      v29 = sub_25E7567E8();

      v27(v19, v16);
      v30 = v43;
      v31 = *(v43 + 36);
      v32 = *MEMORY[0x277CE13E0];
      v33 = sub_25E756B18();
      v34 = v47;
      (*(*(v33 - 8) + 104))(&v47[v31], v32, v33);
      *v34 = v29;
      *(v34 + 4) = 0;
      v35 = v34;
      v36 = v50;
      sub_25E6FCC3C(v35, v50, &qword_27FD03480);
      v37 = 0;
    }

    else
    {
      v37 = 1;
      v36 = v50;
      v30 = v43;
    }

    __swift_storeEnumTagSinglePayload(v36, v37, 1, v30);
    v39 = v44;
    sub_25E6FCC84(v36, v44, &qword_27FD03488);
    v40 = v51;
    *v51 = v26;
    *(v40 + 8) = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034A0);
    sub_25E6FCC84(v39, v40 + *(v41 + 48), &qword_27FD03488);
    swift_retain_n();
    sub_25E6FCCCC(v39, &qword_27FD03488);

    sub_25E6FCC84(v40, v23, &qword_27FD03478);
    swift_storeEnumTagMultiPayload();
    sub_25E6FDE84(&qword_27FD03498, &qword_27FD03478);
    sub_25E756298();

    sub_25E6FCCCC(v40, &qword_27FD03478);
    return sub_25E6FCCCC(v36, &qword_27FD03488);
  }

  else
  {
    *v23 = a2;
    swift_storeEnumTagMultiPayload();
    sub_25E6FDE84(&qword_27FD03498, &qword_27FD03478);

    return sub_25E756298();
  }
}

uint64_t sub_25E6FABA4()
{
  sub_25E756F38();
  swift_getWitnessTable();
  sub_25E755A98();
  return sub_25E756F58();
}

uint64_t sub_25E6FAC1C(uint64_t a1, id *a2)
{
  result = sub_25E756CA8();
  *a2 = 0;
  return result;
}

uint64_t sub_25E6FAC98(uint64_t a1, id *a2)
{
  v3 = sub_25E756CB8();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_25E6FAD18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E6FAD40();
  *a1 = result;
  return result;
}

uint64_t sub_25E6FAD40()
{
  sub_25E756CC8();
  v0 = sub_25E756C98();

  return v0;
}

uint64_t sub_25E6FAD84()
{
  swift_getWitnessTable();

  return sub_25E755A88();
}

uint64_t sub_25E6FAF18@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25E756C98();

  *a1 = v2;
  return result;
}

uint64_t sub_25E6FAF60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25E706768(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25E6FAF8C(uint64_t a1)
{
  v2 = sub_25E6F6D34(&qword_27FD03370, type metadata accessor for PISemanticStyleCast);
  v3 = sub_25E6F6D34(&qword_27FD03378, type metadata accessor for PISemanticStyleCast);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_25E6FB128()
{
  v0 = sub_25E756CC8();
  v1 = MEMORY[0x25F8BE460](v0);

  return v1;
}

uint64_t sub_25E6FB168()
{
  sub_25E756CC8();
  sub_25E756D08();
}

uint64_t sub_25E6FB1C4()
{
  sub_25E756CC8();
  sub_25E756F38();
  sub_25E756D08();
  v0 = sub_25E756F58();

  return v0;
}

uint64_t sub_25E6FB240()
{
  v3 = *(OUTLINED_FUNCTION_10() - 8);
  v4 = v1 + ((*(v3 + 80) + 73) & ~*(v3 + 80));

  return sub_25E6F8CCC(v0, v1 + 16, v4, v2);
}

unint64_t sub_25E6FB2B8()
{
  result = qword_27FD033A0;
  if (!qword_27FD033A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03390);
    sub_25E6FB344();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033A0);
  }

  return result;
}

unint64_t sub_25E6FB344()
{
  result = qword_27FD033A8;
  if (!qword_27FD033A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033A8);
  }

  return result;
}

void sub_25E6FB398()
{
  OUTLINED_FUNCTION_10();
  v2 = *(v1 + 80);

  sub_25E6F8F2C(v0, v1 + 16, v2);
}

unint64_t sub_25E6FB414()
{
  result = qword_27FD033C0;
  if (!qword_27FD033C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033D0);
    sub_25E6FB508();
    sub_25E6FB5E8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033C0);
  }

  return result;
}

unint64_t sub_25E6FB508()
{
  result = qword_27FD033D8;
  if (!qword_27FD033D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033C8);
    sub_25E6FB594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033D8);
  }

  return result;
}

unint64_t sub_25E6FB594()
{
  result = qword_27FD033E0;
  if (!qword_27FD033E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033E0);
  }

  return result;
}

unint64_t sub_25E6FB5E8()
{
  result = qword_27FD033E8;
  if (!qword_27FD033E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033D0);
    sub_25E6FB674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033E8);
  }

  return result;
}

unint64_t sub_25E6FB674()
{
  result = qword_27FD033F0;
  if (!qword_27FD033F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD033F8);
    sub_25E6FDE84(&qword_27FD03400, &unk_27FD03408);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD033F0);
  }

  return result;
}

unint64_t sub_25E6FB744()
{
  result = qword_27FD03418;
  if (!qword_27FD03418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03410);
    sub_25E6FB7D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03418);
  }

  return result;
}

unint64_t sub_25E6FB7D0()
{
  result = qword_27FD03420;
  if (!qword_27FD03420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03428);
    sub_25E6FB85C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03420);
  }

  return result;
}

unint64_t sub_25E6FB85C()
{
  result = qword_27FD03430;
  if (!qword_27FD03430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03438);
    sub_25E6FDE84(&qword_27FD03440, &unk_27FD03448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03430);
  }

  return result;
}

unint64_t sub_25E6FB968()
{
  result = qword_27FD03578;
  if (!qword_27FD03578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03580);
    sub_25E6F6D34(&qword_27FD03588, MEMORY[0x277CDD708]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03578);
  }

  return result;
}

unint64_t sub_25E6FBA2C()
{
  result = qword_27FD035A0;
  if (!qword_27FD035A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03598);
    sub_25E6FBAE4();
    sub_25E6FDE84(&qword_27FD035C8, &unk_27FD035D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD035A0);
  }

  return result;
}

unint64_t sub_25E6FBAE4()
{
  result = qword_27FD035A8;
  if (!qword_27FD035A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD035B0);
    sub_25E6FDE84(&qword_27FD035B8, &unk_27FD035C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD035A8);
  }

  return result;
}

unint64_t sub_25E6FBB94()
{
  result = qword_27FD03690;
  if (!qword_27FD03690)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03688);
    sub_25E6FDE84(&qword_27FD03698, &unk_27FD036A0);
    sub_25E6FDE84(&qword_27FD036A8, &unk_27FD036B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03690);
  }

  return result;
}

uint64_t sub_25E6FBC78(uint64_t a1, uint64_t a2)
{
  v4 = sub_25E755FF8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E6FBCDC(uint64_t a1)
{
  v2 = sub_25E755FF8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25E6FBD40()
{
  result = qword_27FD03718;
  if (!qword_27FD03718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03700);
    sub_25E6FBDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03718);
  }

  return result;
}

unint64_t sub_25E6FBDCC()
{
  result = qword_27FD03720;
  if (!qword_27FD03720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD036F8);
    sub_25E6FBE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03720);
  }

  return result;
}

unint64_t sub_25E6FBE58()
{
  result = qword_27FD03728;
  if (!qword_27FD03728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD036F0);
    sub_25E6FBF10();
    sub_25E6FDE84(&qword_27FD03760, &unk_27FD03768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03728);
  }

  return result;
}

unint64_t sub_25E6FBF10()
{
  result = qword_27FD03730;
  if (!qword_27FD03730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03608);
    sub_25E6FBFC8();
    sub_25E6FDE84(&qword_27FD03758, &unk_27FD03610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03730);
  }

  return result;
}

unint64_t sub_25E6FBFC8()
{
  result = qword_27FD03738;
  if (!qword_27FD03738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03600);
    sub_25E6FC054();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03738);
  }

  return result;
}

unint64_t sub_25E6FC054()
{
  result = qword_27FD03740;
  if (!qword_27FD03740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD035F8);
    sub_25E6FDE84(&qword_27FD03748, &unk_27FD03750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03740);
  }

  return result;
}

unint64_t sub_25E6FC10C()
{
  result = qword_27FD03770;
  if (!qword_27FD03770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03710);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03700);
    sub_25E755FF8();
    sub_25E6FBD40();
    sub_25E6F6D34(&qword_27FD03788, MEMORY[0x277CDFC08]);
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03790);
    sub_25E6FDE84(&qword_27FD03798, &qword_27FD03790);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03770);
  }

  return result;
}

unint64_t sub_25E6FC334()
{
  result = qword_27FD037B8;
  if (!qword_27FD037B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD037B8);
  }

  return result;
}

uint64_t objectdestroy_78Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25E6FC450()
{
  result = qword_27FD03878;
  if (!qword_27FD03878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03808);
    sub_25E6FC508();
    sub_25E6FDE84(&qword_27FD03760, &unk_27FD03768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03878);
  }

  return result;
}

unint64_t sub_25E6FC508()
{
  result = qword_27FD03880;
  if (!qword_27FD03880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03888);
    sub_25E6FC594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03880);
  }

  return result;
}

unint64_t sub_25E6FC594()
{
  result = qword_27FD03890;
  if (!qword_27FD03890)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03898);
    sub_25E6FC620();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03890);
  }

  return result;
}

unint64_t sub_25E6FC620()
{
  result = qword_27FD038A0;
  if (!qword_27FD038A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD038A8);
    sub_25E6FC6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038A0);
  }

  return result;
}

unint64_t sub_25E6FC6AC()
{
  result = qword_27FD038B0;
  if (!qword_27FD038B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD038B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038B0);
  }

  return result;
}

unint64_t sub_25E6FC730()
{
  result = qword_27FD038C0;
  if (!qword_27FD038C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03818);
    sub_25E6FC7E8();
    sub_25E6FDE84(&qword_27FD03760, &unk_27FD03768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038C0);
  }

  return result;
}

unint64_t sub_25E6FC7E8()
{
  result = qword_27FD038C8;
  if (!qword_27FD038C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03870);
    sub_25E6FC874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038C8);
  }

  return result;
}

unint64_t sub_25E6FC874()
{
  result = qword_27FD038D0;
  if (!qword_27FD038D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD038D8);
    sub_25E6FC900();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038D0);
  }

  return result;
}

unint64_t sub_25E6FC900()
{
  result = qword_27FD038E0;
  if (!qword_27FD038E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038E0);
  }

  return result;
}

unint64_t sub_25E6FC954()
{
  result = qword_27FD038F0;
  if (!qword_27FD038F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03820);
    sub_25E6FC450();
    sub_25E6FC730();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038F0);
  }

  return result;
}

unint64_t sub_25E6FC9E0()
{
  result = qword_27FD038F8;
  if (!qword_27FD038F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03868);
    sub_25E6FDE84(&qword_27FD03900, &unk_27FD03908);
    sub_25E6FDE84(&qword_27FD03760, &unk_27FD03768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD038F8);
  }

  return result;
}

unint64_t sub_25E6FCAC4()
{
  result = qword_27FD03910;
  if (!qword_27FD03910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03858);
    sub_25E6FDE84(&qword_27FD038E8, &unk_27FD03830);
    sub_25E6FC954();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03910);
  }

  return result;
}

unint64_t sub_25E6FCB84()
{
  result = qword_27FD03928;
  if (!qword_27FD03928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03920);
    sub_25E6FDE84(&qword_27FD03930, &qword_27FD03938);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03928);
  }

  return result;
}

uint64_t sub_25E6FCC3C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_4(a1, a2, a3);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_14();
  v5(v4);
  return v3;
}

uint64_t sub_25E6FCC84(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_4(a1, a2, a3);
  OUTLINED_FUNCTION_0();
  v4 = OUTLINED_FUNCTION_14();
  v5(v4);
  return v3;
}

uint64_t sub_25E6FCCCC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_12(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3);
  OUTLINED_FUNCTION_1();
  (*(v4 + 8))(a1);
  return a1;
}

void sub_25E6FCD8C(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for PhotoStyleDPad.GridDot(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[16])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PhotoStyleDPad.GridDot(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_25E6FCE74(uint64_t *a1, int a2)
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

uint64_t sub_25E6FCEB4(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PhotoStyleDPad.GridLines(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t storeEnumTagSinglePayload for PhotoStyleDPad.GridLines(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhotoStyleDPad.DottedGrid.Role(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for PhotoStyleDPad.DottedGrid.Role(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25E6FD13C()
{
  result = qword_27FD03960;
  if (!qword_27FD03960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03968);
    sub_25E6FD1F4();
    sub_25E6FDE84(&qword_27FD039B0, &unk_27FD039B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03960);
  }

  return result;
}

unint64_t sub_25E6FD1F4()
{
  result = qword_27FD03970;
  if (!qword_27FD03970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03978);
    sub_25E6FD280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03970);
  }

  return result;
}

unint64_t sub_25E6FD280()
{
  result = qword_27FD03980;
  if (!qword_27FD03980)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03988);
    sub_25E6FD30C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03980);
  }

  return result;
}

unint64_t sub_25E6FD30C()
{
  result = qword_27FD03990;
  if (!qword_27FD03990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03998);
    sub_25E6FDE84(&qword_27FD039A0, &unk_27FD039A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03990);
  }

  return result;
}

unint64_t sub_25E6FD3C8()
{
  result = qword_27FD039F0;
  if (!qword_27FD039F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD039F0);
  }

  return result;
}

unint64_t sub_25E6FD464()
{
  result = qword_27FD03A08;
  if (!qword_27FD03A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A08);
  }

  return result;
}

unint64_t sub_25E6FD4BC()
{
  result = qword_27FD03A10;
  if (!qword_27FD03A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A10);
  }

  return result;
}

unint64_t sub_25E6FD514()
{
  result = qword_27FD03A18;
  if (!qword_27FD03A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A18);
  }

  return result;
}

unint64_t sub_25E6FD5AC()
{
  result = qword_27FD03A30;
  if (!qword_27FD03A30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A20);
    sub_25E6FD638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A30);
  }

  return result;
}

unint64_t sub_25E6FD638()
{
  result = qword_27FD03A38;
  if (!qword_27FD03A38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A40);
    sub_25E6FD6F0(&qword_27FD03A48, &unk_27FD03A50, &unk_25E75C1A8, sub_25E6FD768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A38);
  }

  return result;
}

uint64_t sub_25E6FD6F0(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_12(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25E6FD768()
{
  result = qword_27FD03A58;
  if (!qword_27FD03A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A60);
    sub_25E6FD820();
    sub_25E6FDE84(&qword_27FD03A88, &unk_27FD03A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A58);
  }

  return result;
}

unint64_t sub_25E6FD820()
{
  result = qword_27FD03A68;
  if (!qword_27FD03A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A70);
    sub_25E6FDE84(&qword_27FD03A78, &unk_27FD03A80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A68);
  }

  return result;
}

unint64_t sub_25E6FD8D8()
{
  result = qword_27FD03A98;
  if (!qword_27FD03A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03A28);
    sub_25E6FDE84(&qword_27FD03AA0, &unk_27FD03AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03A98);
  }

  return result;
}

uint64_t sub_25E6FD99C(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = result + 32;
    while (1)
    {
      v7 = *(v6 + 8 * v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03B28);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 16;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[2 * v15 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v15);
          }

          v2[2] = 0;
        }

        v5 = (v13 + 16 * v15);
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v3--, 1);
      if (v17)
      {
        break;
      }

      *v5 = v4;
      v5[1] = v7;
      v5 += 2;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25E6FDB04(double a1)
{
  OUTLINED_FUNCTION_10();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);

  return sub_25E6FA024(v1, v5, v6, v7, v3, a1);
}

unint64_t sub_25E6FDBC4()
{
  result = qword_27FD03AC8;
  if (!qword_27FD03AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03AB8);
    sub_25E6FDC48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03AC8);
  }

  return result;
}

unint64_t sub_25E6FDC48()
{
  result = qword_27FD03AD0;
  if (!qword_27FD03AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03AD8);
    sub_25E6FDCD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03AD0);
  }

  return result;
}

unint64_t sub_25E6FDCD4()
{
  result = qword_27FD03AE0;
  if (!qword_27FD03AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03AE8);
    sub_25E6FDD60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03AE0);
  }

  return result;
}

unint64_t sub_25E6FDD60()
{
  result = qword_27FD03AF0;
  if (!qword_27FD03AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03AF8);
    sub_25E6FDE84(&qword_27FD03B00, &unk_27FD03B08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03AF0);
  }

  return result;
}

unint64_t sub_25E6FDE30()
{
  result = qword_27FD03B30;
  if (!qword_27FD03B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03B30);
  }

  return result;
}

uint64_t sub_25E6FDE84(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_12(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3);
}

uint64_t OUTLINED_FUNCTION_6(unint64_t *a1, uint64_t a2)
{

  return sub_25E6FDE84(a1, a2);
}

uint64_t OUTLINED_FUNCTION_7(unint64_t *a1, uint64_t a2)
{

  return sub_25E6FDE84(a1, a2);
}

uint64_t OUTLINED_FUNCTION_10()
{

  return sub_25E755DF8();
}

double PEPhotoStylePaletteSlider.value.getter()
{
  OUTLINED_FUNCTION_3_0();
  v0 = sub_25E700604();

  return v0;
}

uint64_t PEPhotoStylePaletteSlider.value.setter(double a1)
{
  OUTLINED_FUNCTION_3_0();
  sub_25E6FFF40(1, a1);
}

uint64_t PEPhotoStylePaletteSlider.colors.setter()
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_8_0();
}

void sub_25E6FE2F8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 colors];
  if (v3)
  {
    v4 = v3;
    sub_25E701520(0, &qword_27FD03BF0);
    v5 = sub_25E756D48();
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_25E6FE378(void *a1, void **a2)
{
  v2 = *a2;
  if (*a1)
  {
    sub_25E701520(0, &qword_27FD03BF0);
    v3 = sub_25E756D38();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setColors_];
}

uint64_t sub_25E6FE400()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();
}

uint64_t sub_25E6FE4A4(uint64_t a1, uint64_t a2)
{

  sub_25E6FE4F8(a2);
}

uint64_t sub_25E6FE4F8(uint64_t a1)
{

  v4 = sub_25E7007AC(v3, a1);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E700880();
  }

  else
  {
    *(v1 + 32) = a1;
  }
}

uint64_t sub_25E6FE648(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t PEPhotoStylePaletteSlider.gradientCast.setter(void *a1)
{
  sub_25E756AE8();
  OUTLINED_FUNCTION_8_0();
}

id sub_25E6FE74C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 gradientCast];
  *a2 = result;
  return result;
}

id sub_25E6FE788()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  v1 = *(v0 + 40);

  return v1;
}

uint64_t sub_25E6FE838(uint64_t a1, void *a2)
{

  sub_25E6FE884(a2);
}

void sub_25E6FE884(void *a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25E7007E8();

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_25E700880();
  }

  else
  {
    v6 = *(v1 + 40);
    *(v1 + 40) = a1;
  }
}

uint64_t sub_25E6FEA3C(uint64_t a1, double a2)
{
  v3 = *(a1 + 32);

  v3(v4, a2);
}

uint64_t sub_25E6FEAE4@<X0>(id *a1@<X0>, uint64_t (**a2)(double *a1)@<X8>)
{
  v3 = [*a1 onValueChanged];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E7019D8;
  *(result + 24) = v4;
  *a2 = sub_25E7014F4;
  a2[1] = result;
  return result;
}

void sub_25E6FEB80(uint64_t *a1, void **a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = *a2;
  v8[4] = sub_25E7014BC;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_25E6FEA3C;
  v8[3] = &block_descriptor_73;
  v7 = _Block_copy(v8);

  [v6 setOnValueChanged_];
  _Block_release(v7);
}

uint64_t sub_25E6FEC64()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  v1 = *(v0 + 48);

  return v1;
}

void sub_25E6FED80(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_25E6FEE3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 onGestureDidBegin];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E7019C0;
  *(result + 24) = v4;
  *a2 = sub_25E7019E0;
  a2[1] = result;
  return result;
}

uint64_t sub_25E6FEED8()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_25E6FEF88()
{
  swift_getKeyPath();
  sub_25E700880();
}

id sub_25E6FF01C(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v6 = a1;
  v7 = a3();
  v9 = v8;

  v13[4] = v7;
  v13[5] = v9;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  v13[2] = v10;
  v13[3] = a4;
  v11 = _Block_copy(v13);

  return v11;
}

uint64_t sub_25E6FF0C4(uint64_t (*a1)(uint64_t))
{
  v2 = OUTLINED_FUNCTION_3_0();
  v3 = a1(v2);

  return v3;
}

uint64_t sub_25E6FF16C()
{
  OUTLINED_FUNCTION_3_0();
  sub_25E6FEF88();
}

uint64_t sub_25E6FF1DC@<X0>(id *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = [*a1 onGestureDidEnd];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  result = swift_allocObject();
  *(result + 16) = sub_25E7019C0;
  *(result + 24) = v4;
  *a2 = sub_25E7014B4;
  a2[1] = result;
  return result;
}

void sub_25E6FF278(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, SEL *a8)
{
  v13 = *a1;
  v12 = a1[1];
  OUTLINED_FUNCTION_5_0();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = *a2;
  v18[4] = a6;
  v18[5] = v14;
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  v18[2] = v16;
  v18[3] = a7;
  v17 = _Block_copy(v18);

  [v15 *a8];
  _Block_release(v17);
}

uint64_t sub_25E6FF324()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  v1 = *(v0 + 80);

  return v1;
}

uint64_t PEPhotoStylePaletteSlider.size.getter()
{
  OUTLINED_FUNCTION_3_0();
  v0 = sub_25E6FF4F0();

  return v0;
}

uint64_t sub_25E6FF428@<X0>(uint64_t a1@<X8>)
{
  result = PEPhotoStylePaletteSlider.size.getter();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t PEPhotoStylePaletteSlider.size.setter(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_3_0();
  sub_25E6FF594(a1, a2, a3 & 1);
}

uint64_t sub_25E6FF4F0()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  return *(v0 + 96);
}

uint64_t sub_25E6FF594(uint64_t result, uint64_t a2, int a3)
{
  v4 = *(v3 + 112);
  if ((v4 & 1) == 0 && (a3 & 1) == 0)
  {
    if (*(v3 + 96) != *&result || *(v3 + 104) != *&a2)
    {
      goto LABEL_10;
    }

LABEL_8:
    *(v3 + 96) = *&result;
    *(v3 + 104) = *&a2;
    *(v3 + 112) = a3 & 1;
    return result;
  }

  if (v4 & a3)
  {
    goto LABEL_8;
  }

LABEL_10:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_25E700880();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t (*PEPhotoStylePaletteSlider.size.modify(uint64_t a1))(uint64_t a1)
{
  *(a1 + 24) = v1;
  *a1 = PEPhotoStylePaletteSlider.size.getter();
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return sub_25E6FF6CC;
}

void __swiftcall PEPhotoStylePaletteSlider.init(value:)(PEPhotoStylePaletteSlider *__return_ptr retstr, Swift::Double value)
{
  v3 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v3 initWithValue_];
}

id PEPhotoStylePaletteSlider.init(value:)(double a1)
{
  v3 = [v1 initWithFrame_];

  sub_25E6FFF40(1, a1);

  return v3;
}

void __swiftcall PEPhotoStylePaletteSlider.init(frame:)(PEPhotoStylePaletteSlider *__return_ptr retstr, __C::CGRect frame)
{
  OUTLINED_FUNCTION_7_0();
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = OUTLINED_FUNCTION_6_0();

  [v3 v4];
}

id PEPhotoStylePaletteSlider.init(frame:)()
{
  OUTLINED_FUNCTION_7_0();
  v1 = _s15IntegrationViewVMa(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = v0 + OBJC_IVAR___PEPhotoStylePaletteSlider_touchAreaInsets;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 1;
  v5 = *MEMORY[0x277D3AB70];
  _s16IntegrationModelCMa(0);
  swift_allocObject();
  *(v0 + OBJC_IVAR___PEPhotoStylePaletteSlider_paletteSliderModel) = sub_25E700CB0(0, v5, nullsub_1, 0, nullsub_1, 0, nullsub_1, 0, 0.0);
  OUTLINED_FUNCTION_2_0();
  sub_25E701400(v6, v7);

  sub_25E756978();
  v8 = objc_allocWithZone(type metadata accessor for TouchAreaPaddingHostingView(0));
  v9 = sub_25E700FA0(v3);
  __asm { FMOV            V0.2D, #-13.0 }

  *v4 = _Q0;
  *(v4 + 16) = xmmword_25E75C260;
  *(v4 + 32) = 0;
  v15 = &v9[qword_27FD03B60];
  *v15 = _Q0;
  *(v15 + 1) = xmmword_25E75C260;
  *(v0 + OBJC_IVAR___PEPhotoStylePaletteSlider_hostingView) = v9;
  v22[0] = v0;
  v22[1] = PEPhotoStylePaletteSlider;
  v16 = v9;
  v17 = OUTLINED_FUNCTION_6_0();
  v20 = objc_msgSendSuper2(v18, v19, v17);
  sub_25E6FFA74();

  return v20;
}

void sub_25E6FFA74()
{
  v1 = v0;
  v2 = OBJC_IVAR___PEPhotoStylePaletteSlider_hostingView;
  v3 = *&v0[OBJC_IVAR___PEPhotoStylePaletteSlider_hostingView];
  sub_25E755EB8();

  v4 = *&v1[v2];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v1 addSubview_];
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BF8);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_25E75C270;
  v7 = [v4 topAnchor];
  v8 = [v1 topAnchor];
  v9 = [v7 constraintEqualToAnchor_];

  *(v6 + 32) = v9;
  v10 = [v4 bottomAnchor];
  v11 = [v1 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor_];

  *(v6 + 40) = v12;
  v13 = [v4 leadingAnchor];
  v14 = [v1 leadingAnchor];
  v15 = [v13 constraintEqualToAnchor_];

  *(v6 + 48) = v15;
  v16 = [v4 trailingAnchor];

  v17 = [v1 trailingAnchor];
  v18 = [v16 constraintEqualToAnchor_];

  *(v6 + 56) = v18;
  sub_25E701520(0, &qword_27FD03C00);
  v19 = sub_25E756D38();

  [v5 activateConstraints_];
}

void PEPhotoStylePaletteSlider.init(coder:)()
{
  v1 = v0 + OBJC_IVAR___PEPhotoStylePaletteSlider_touchAreaInsets;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  *(v1 + 32) = 1;
  sub_25E756ED8();
  __break(1u);
}

Swift::Bool __swiftcall PEPhotoStylePaletteSlider.point(inside:with:)(CGPoint inside, UIEvent_optional with)
{
  y = inside.y;
  x = inside.x;
  result = [v2 bounds];
  if (v2[OBJC_IVAR___PEPhotoStylePaletteSlider_touchAreaInsets + 32])
  {
    __break(1u);
  }

  else
  {
    v11.origin.x = UIEdgeInsetsInsetRect(v6, v7, v8, v9, *&v2[OBJC_IVAR___PEPhotoStylePaletteSlider_touchAreaInsets], *&v2[OBJC_IVAR___PEPhotoStylePaletteSlider_touchAreaInsets + 8]);
    v10.x = x;
    v10.y = y;
    return CGRectContainsPoint(v11, v10);
  }

  return result;
}

Swift::Void __swiftcall PEPhotoStylePaletteSlider.setValue(_:notifyObserver:)(Swift::Double _, Swift::Bool notifyObserver)
{
  OUTLINED_FUNCTION_3_0();
  sub_25E6FFF40(notifyObserver, _);
}

void sub_25E6FFF40(char a1, double a2)
{
  if (vabdd_f64(a2, sub_25E700604()) >= 2.22044605e-16)
  {
    sub_25E7006FC(a2);
    if (a1)
    {
      v4 = sub_25E6FEC64();
      v4(a2);
    }
  }
}

double sub_25E70002C@<D0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BB0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = type metadata accessor for PhotoStylePaletteSlider();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD0);
  v31 = *(v11 - 8);
  v32 = v11;
  MEMORY[0x28223BE20](v11);
  v30 = &v27 - v12;
  sub_25E756968();
  swift_getKeyPath();
  sub_25E756988();

  v13 = *(v2 + 8);
  v13(v7, v1);
  v28 = *(&v40 + 1);
  v29 = v40;
  v14 = v41;
  sub_25E756968();
  swift_getKeyPath();
  sub_25E756988();

  v13(v5, v1);
  v15 = v37;
  v16 = v38;
  LOBYTE(v7) = v39;
  sub_25E756958();
  v17 = sub_25E6FE788();
  v18 = PISemanticStyleCast.gradientColors.getter();

  v34 = 0;
  sub_25E756858();
  v19 = v36;
  *(v10 + 9) = v35;
  *(v10 + 10) = v19;
  v20 = *(v8 + 36);
  *&v10[v20] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  swift_storeEnumTagMultiPayload();
  v21 = v28;
  *v10 = v29;
  *(v10 + 1) = v21;
  *(v10 + 2) = v14;
  *(v10 + 3) = xmmword_25E75B230;
  *(v10 + 3) = v15;
  *(v10 + 4) = v16;
  v10[40] = v7;
  *(v10 + 8) = v18;
  sub_25E701400(&qword_27FD03BE0, type metadata accessor for PhotoStylePaletteSlider);
  v22 = v30;
  sub_25E7565F8();
  sub_25E7015C4(v10, type metadata accessor for PhotoStylePaletteSlider);
  sub_25E756958();
  sub_25E6FF4F0();

  sub_25E756958();
  sub_25E6FF4F0();

  sub_25E756A78();
  sub_25E755D78();
  v23 = v33;
  (*(v31 + 32))(v33, v22, v32);
  v24 = (v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BE8) + 36));
  v25 = v41;
  *v24 = v40;
  v24[1] = v25;
  result = *&v42;
  v24[2] = v42;
  return result;
}

uint64_t sub_25E70048C()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  return *(v0 + 24);
}

uint64_t sub_25E70052C(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    v3 = a1 & 1;

    return sub_25E700990(v3);
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25E700880();
  }
}

double sub_25E700604()
{
  swift_getKeyPath();
  sub_25E701400(&qword_27FD03B58, _s16IntegrationModelCMa);
  sub_25E755938();

  return *(v0 + 16);
}

uint64_t sub_25E7006FC(double a1)
{
  if (*(v1 + 16) == a1)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    swift_getKeyPath();
    MEMORY[0x28223BE20]();
    sub_25E700880();
  }

  return result;
}

BOOL sub_25E7007AC(unint64_t a1, uint64_t a2)
{
  v3 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    v3 = sub_25E7016D4(a1, a2);
  }

  return (v3 & 1) == 0;
}

uint64_t sub_25E7007E8()
{
  v0 = sub_25E756CC8();
  v2 = v1;
  if (v0 == sub_25E756CC8() && v2 == v3)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_25E756F08();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_25E700880()
{
  OUTLINED_FUNCTION_2_0();
  sub_25E701400(v0, v1);
  return sub_25E755928();
}

uint64_t sub_25E700928(uint64_t result, char a2)
{
  if ((result & 1) != (a2 & 1))
  {
    if (a2)
    {
      v2 = sub_25E6FEED8();
    }

    else
    {
      v2 = sub_25E6FF324();
    }

    v2();
  }

  return result;
}

uint64_t sub_25E700990(char a1)
{
  v2 = *(v1 + 24);
  *(v1 + 24) = a1;
  v3 = sub_25E70048C() & 1;

  return sub_25E700928(v2, v3);
}

uint64_t sub_25E7009FC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
}

void sub_25E700A64(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

uint64_t sub_25E700A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = a3;
}

uint64_t sub_25E700AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 64) = a2;
  *(a1 + 72) = a3;
}

uint64_t sub_25E700B10@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v5 = a1();
  v7 = v6;
  OUTLINED_FUNCTION_5_0();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = v7;
  *a3 = a2;
  a3[1] = result;
  return result;
}

uint64_t sub_25E700B70(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  OUTLINED_FUNCTION_5_0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;

  return sub_25E6FEF88();
}

uint64_t sub_25E700BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
}

uint64_t sub_25E700C28@<X0>(uint64_t a1@<X8>)
{
  result = sub_25E6FF4F0();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

uint64_t sub_25E700CB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  *(v9 + 24) = 0;
  *(v9 + 32) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 112) = 1;
  sub_25E755968();
  *(v9 + 16) = a9;

  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
  *(v9 + 48) = a3;
  *(v9 + 56) = a4;
  *(v9 + 64) = a5;
  *(v9 + 72) = a6;
  *(v9 + 80) = a7;
  *(v9 + 88) = a8;
  return v9;
}

uint64_t sub_25E700D7C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E700DB4()
{

  v1 = OBJC_IVAR____TtCE12PhotosUIEditCSo25PEPhotoStylePaletteSliderP33_BAD2206819EDFB03A5A5AC328C9B469516IntegrationModel___observationRegistrar;
  v2 = sub_25E755978();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_25E700E3C()
{
  v0 = sub_25E700DB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

BOOL sub_25E700EDC(CGFloat a1, CGFloat a2)
{
  [v2 bounds];
  v11.origin.x = UIEdgeInsetsInsetRect(v5, v6, v7, v8, *&v2[qword_27FD03B60], *&v2[qword_27FD03B60 + 8]);
  v10.x = a1;
  v10.y = a2;
  return CGRectContainsPoint(v11, v10);
}

BOOL sub_25E700F34(void *a1, CGFloat a2, CGFloat a3, uint64_t a4, void *a5)
{
  v8 = a5;
  v9 = a1;
  v10 = sub_25E700EDC(a2, a3);

  return v10;
}

uint64_t sub_25E700FA0(uint64_t a1)
{
  v3 = _s15IntegrationViewVMa(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v1 + qword_27FD03B60);
  v7 = *(MEMORY[0x277D768C8] + 16);
  *v6 = *MEMORY[0x277D768C8];
  v6[1] = v7;
  sub_25E701560(a1, v5);
  v8 = sub_25E755EA8();
  sub_25E7015C4(a1, _s15IntegrationViewVMa);
  return v8;
}

uint64_t sub_25E7010D0()
{
  result = sub_25E755978();
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

id sub_25E701208(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[qword_27FD03B60];
  v5 = *(MEMORY[0x277D768C8] + 16);
  *v4 = *MEMORY[0x277D768C8];
  *(v4 + 1) = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id sub_25E7012B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_25E701320()
{
  sub_25E70138C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_25E70138C()
{
  if (!qword_27FD03BC8)
  {
    _s16IntegrationModelCMa(255);
    v0 = sub_25E756998();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD03BC8);
    }
  }
}

uint64_t sub_25E701400(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25E7014BC(double a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_25E701520(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25E701560(uint64_t a1, uint64_t a2)
{
  v4 = _s15IntegrationViewVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E7015C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 sub_25E701624()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  result = *(v0 + 24);
  v1[6] = result;
  v1[7].n128_u8[0] = v2;
  return result;
}

uint64_t sub_25E7016D4(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25E756EE8())
  {
    if (a2 >> 62)
    {
      result = sub_25E756EE8();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_25E701520(0, &qword_27FD03BF0);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x25F8BE5D0](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x25F8BE5D0](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_25E756E48();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

double sub_25E7018A8()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + 16) = result;
  return result;
}

unint64_t sub_25E7018B8()
{
  result = qword_27FD03C08;
  if (!qword_27FD03C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03BE8);
    type metadata accessor for PhotoStylePaletteSlider();
    sub_25E701400(&qword_27FD03BE0, type metadata accessor for PhotoStylePaletteSlider);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03C08);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_25E755E78();
}

uint64_t sub_25E701AAC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25E756128();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  MEMORY[0x28223BE20](v6);
  v8 = &v12 - v7;
  type metadata accessor for PhotoStylePaletteSlider();
  sub_25E704F3C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_25E755EE8();
    return (*(*(v9 - 8) + 32))(a1, v8, v9);
  }

  else
  {
    sub_25E756DC8();
    v11 = sub_25E756388();
    sub_25E755AB8();

    sub_25E756118();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t PhotoStylePaletteSlider.body.getter@<X0>(uint64_t a1@<X8>)
{
  v23 = a1;
  v20 = sub_25E755F68();
  OUTLINED_FUNCTION_5();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E755F98();
  OUTLINED_FUNCTION_5();
  v21 = v8;
  v22 = v7;
  MEMORY[0x28223BE20](v7);
  v19 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotoStylePaletteSlider();
  MEMORY[0x28223BE20](v10 - 8);
  sub_25E704C98();
  v11 = swift_allocObject();
  sub_25E704E8C();
  v24[4] = sub_25E7020A0;
  v24[5] = v11;
  sub_25E755F28();
  sub_25E755F88();
  (*(v3 + 8))(v6, v20);
  v12 = v1[1];
  v13 = v1[2];
  v24[1] = *v1;
  v24[2] = v12;
  v24[3] = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C10);
  MEMORY[0x25F8BE020](v24, v14);
  sub_25E704C98();
  swift_allocObject();
  sub_25E704E8C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C18);
  OUTLINED_FUNCTION_1_1();
  sub_25E704D38(v15, &qword_27FD03C18);
  v16 = v19;
  sub_25E7565B8();

  (*(v21 + 8))(v16, v22);
}

uint64_t type metadata accessor for PhotoStylePaletteSlider()
{
  result = qword_27FD03C30;
  if (!qword_27FD03C30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25E702040(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_25E756A88();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C78);
  sub_25E702120(a2, a1, a3 + *(v7 + 44));
}

void sub_25E7020A0(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for PhotoStylePaletteSlider() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_25E702040(a1, v6, a2);
}

void sub_25E702120(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30[0] = a2;
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C80);
  v6 = *(v5 - 8);
  v36 = v5;
  v37 = v6;
  MEMORY[0x28223BE20](v5);
  v33 = v30 - v7;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C88);
  MEMORY[0x28223BE20](v32);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C90);
  v42 = *(v35 - 8);
  v8 = MEMORY[0x28223BE20](v35);
  v34 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = v30 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C98);
  MEMORY[0x28223BE20](v11);
  v13 = (v30 - v12);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CA0);
  v41 = *(v31 - 8);
  v14 = MEMORY[0x28223BE20](v31);
  v30[1] = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v39 = v30 - v16;
  *v13 = sub_25E756A88();
  v13[1] = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CA8);
  sub_25E7028C4(a1, a2, v13 + *(v18 + 44));
  sub_25E756A68();
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CB0);
  sub_25E704D38(&qword_27FD03CB8, &qword_27FD03C98);
  v19 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CC0);
  v20 = sub_25E704464();
  v68 = v19;
  v69 = v20;
  swift_getOpaqueTypeConformance2();
  sub_25E756668();
  sub_25E704C40(v13, &qword_27FD03C98);
  v21 = sub_25E756718();
  v22 = sub_25E756A78();
  v24 = v23;
  sub_25E7566F8();
  v25 = sub_25E756728();

  *&v58 = v25;
  *(&v58 + 1) = 0x4010000000000000;
  v59 = 0;
  v60 = 0;
  *&v61 = 0;
  *(&v61 + 1) = 0x4008000000000000;
  *&v62 = v22;
  *(&v62 + 1) = v24;
  v64 = v58;
  v65 = 0u;
  v66 = v61;
  v67 = v62;
  v63[0] = v25;
  v63[1] = 0x4010000000000000;
  memset(&v63[2], 0, 24);
  v63[5] = 0x4008000000000000;
  v63[6] = v22;
  v63[7] = v24;
  sub_25E704F3C();
  sub_25E704C40(v63, &qword_27FD03CD0);
  LOBYTE(v22) = sub_25E7563D8();
  sub_25E755C88();
  v47 = v64;
  v48 = v65;
  v49 = v66;
  v57 = 0;
  v44 = v21;
  v45 = 256;
  v46 = 0x3FD6666666666666;
  v50 = v67;
  v51 = v22;
  v52 = v26;
  v53 = v27;
  v54 = v28;
  v55 = v29;
  v56 = 0;
  sub_25E6F57D0();
}

uint64_t sub_25E7025F8()
{
  v0[16] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CE0);
  sub_25E704524();
  sub_25E704720();
  sub_25E756678();

  memcpy((v3 - 224), v0 + 22, 0x81uLL);
  sub_25E704C40(v3 - 224, &qword_27FD03CD8);
  v4 = v2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D30) + 36);
  *v4 = 0xC024000000000000;
  *(v4 + 8) = 0;
  sub_25E755DD8();
  sub_25E7036F4(v5, v6);
  v7 = (v2 + *(v0[3] + 36));
  *v7 = v8;
  v7[1] = 0;
  sub_25E755DD8();
  v9 = v0[4];
  sub_25E70379C(v9, v10, v11);
  sub_25E755D18();
  sub_25E7047D8();
  sub_25E704D38(&qword_27FD03D58, &qword_27FD03C80);
  v12 = v0[11];
  v13 = v0[7];
  sub_25E756628();
  (*(v0[8] + 8))(v9, v13);
  sub_25E704C40(v2, &qword_27FD03C88);
  v14 = *(v0[12] + 16);
  v16 = v0[1];
  v15 = v0[2];
  v14(v16, v0[10], v15);
  v17 = *(v0[13] + 16);
  v19 = v0[5];
  v18 = v0[6];
  v17(v19, v12, v18);
  v20 = v0[9];
  v14(v20, v16, v15);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D60);
  v17(v20 + *(v21 + 48), v19, v18);
  v22 = *(v0[13] + 8);
  v22(v0[11], v18);
  v23 = *(v0[12] + 8);
  v23(v0[10], v15);
  v22(v19, v18);
  return v23(v16, v15);
}

uint64_t sub_25E7028C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v59 = a2;
  v49 = a1;
  v62 = a3;
  v3 = sub_25E756908();
  MEMORY[0x28223BE20](v3 - 8);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D98);
  MEMORY[0x28223BE20](v52);
  v51 = &v47 - v5;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DA0);
  MEMORY[0x28223BE20](v56);
  v57 = &v47 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DA8);
  v7 = MEMORY[0x28223BE20](v54);
  v61 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v53 = &v47 - v10;
  MEMORY[0x28223BE20](v9);
  v60 = &v47 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DB0);
  MEMORY[0x28223BE20](v12);
  v14 = &v47 - v13;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DB8);
  v50 = *(v58 - 8);
  v15 = MEMORY[0x28223BE20](v58);
  v55 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - v17;
  v19 = *MEMORY[0x277CE0128];
  v20 = sub_25E7561E8();
  v21 = *(*(v20 - 8) + 104);
  v21(v14, v19, v20);
  v22 = sub_25E7566D8();
  v23 = &v14[*(v12 + 52)];
  *v23 = v22;
  v23[1] = 2;
  *&v14[*(v12 + 56)] = 256;
  sub_25E756A68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DC0);
  sub_25E704D38(&qword_27FD03DC8, &qword_27FD03DB0);
  sub_25E704D80();
  v47 = v18;
  sub_25E756668();
  v24 = v14;
  v25 = v48;
  sub_25E704C40(v24, &qword_27FD03DB0);
  v26 = v19;
  v27 = v49;
  v21(v25, v26, v20);
  if (*(v27 + 64))
  {
    v28 = *(v27 + 64);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DE0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_25E75C5E0;
    *(v28 + 32) = sub_25E7566D8();
  }

  sub_25E756B78();
  sub_25E756B88();
  MEMORY[0x25F8BE100](v28);
  sub_25E755E98();
  v29 = v51;
  sub_25E704E8C();
  v30 = v52;
  v31 = &v29[*(v52 + 52)];
  v32 = v64;
  *v31 = v63;
  *(v31 + 1) = v32;
  *(v31 + 4) = v65;
  *&v29[*(v30 + 56)] = 256;
  sub_25E755DD8();
  sub_25E7036F4(v33, v34);
  sub_25E756A78();
  sub_25E755D78();
  v35 = v57;
  sub_25E704EE4();
  v36 = &v35[*(v56 + 36)];
  v37 = v67;
  *v36 = v66;
  *(v36 + 1) = v37;
  *(v36 + 2) = v68;
  sub_25E7562F8();
  sub_25E704EE4();
  v38 = v60;
  sub_25E704EE4();
  v39 = v50;
  v40 = *(v50 + 16);
  v41 = v55;
  v42 = v47;
  v43 = v58;
  v40(v55, v47, v58);
  v44 = v61;
  sub_25E704F3C();
  v40(v62, v41, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DE8);
  sub_25E704F3C();
  sub_25E704C40(v38, &qword_27FD03DA8);
  v45 = *(v39 + 8);
  v45(v42, v43);
  sub_25E704C40(v44, &qword_27FD03DA8);
  return (v45)(v41, v43);
}

uint64_t sub_25E703008()
{
  v0 = sub_25E756908();
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v14 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_25E756A58();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CC0);
  v8 = v7 - 8;
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  sub_25E6ECB38();
  *&v10[*(v8 + 44)] = 0x3FE0000000000000;
  sub_25E703214();
  v11 = *MEMORY[0x277CE0128];
  v12 = sub_25E7561E8();
  (*(*(v12 - 8) + 104))(v2, v11, v12);
  sub_25E7033EC();
  sub_25E704BE4(v2);
  (*(v4 + 8))(v6, v3);
  return sub_25E704C40(v10, &qword_27FD03CC0);
}

uint64_t sub_25E703214()
{
  v0 = sub_25E7569E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E756A18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_25E756A08();
  (*(v1 + 104))(v3, *MEMORY[0x277CDF148], v0);
  sub_25E7569F8();
  (*(v1 + 8))(v3, v0);
  v11 = *(v5 + 8);
  v11(v8, v4);
  sub_25E756A28();
  return (v11)(v10, v4);
}

uint64_t sub_25E7033EC()
{
  v0 = sub_25E756908();
  MEMORY[0x28223BE20](v0);
  v1 = sub_25E756BA8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D88);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_25E75C5E0;
  sub_25E704C98();
  sub_25E704CF0(&qword_27FD03D90, MEMORY[0x277CE1260]);
  *(v5 + 32) = sub_25E756948();
  sub_25E756B98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CC0);
  sub_25E704464();
  sub_25E756598();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_25E7035F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v17 = *(a2 + 24);
  v18 = v5;
  v19 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v16, v7);
  if (v16)
  {
    v8 = 1.4;
  }

  else
  {
    v8 = 1.0;
  }

  sub_25E756B68();
  v10 = v9;
  v12 = v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D28);
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03CE0);
  v15 = a3 + *(result + 36);
  *v15 = v8;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  return result;
}

void *sub_25E7036F4(double a1, double a2)
{
  v3 = a1 - a2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  if (v3 >= 0.0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0.0;
  }

  v11[1] = *v2;
  v11[2] = v4;
  v11[3] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C10);
  result = MEMORY[0x25F8BE020](v11, v7);
  v10 = *(v2 + 48);
  v9 = *(v2 + 56);
  if (v10 > v9)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v6 < 0.0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

uint64_t sub_25E70379C@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v25 = a1;
  v5 = type metadata accessor for PhotoStylePaletteSlider();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = sub_25E7562B8();
  MEMORY[0x28223BE20](v8);
  v9 = sub_25E755CF8();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D68);
  v13 = *(v12 - 8);
  v23 = v12;
  v24 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v21 - v14;
  sub_25E7562E8();
  sub_25E755CB8();
  sub_25E704C98();
  v16 = (((*(v6 + 80) + 16) & ~*(v6 + 80)) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  sub_25E704E8C();
  v18 = (v17 + v16);
  *v18 = a2;
  v18[1] = a3;
  sub_25E704CF0(&qword_27FD03D70, MEMORY[0x277CDD730]);
  sub_25E704CF0(&qword_27FD03588, MEMORY[0x277CDD708]);
  sub_25E756938();

  (*(v22 + 8))(v11, v9);
  sub_25E704C98();
  swift_allocObject();
  sub_25E704E8C();
  sub_25E704D38(&qword_27FD03D78, &qword_27FD03D68);
  v19 = v23;
  sub_25E756928();

  return (*(v24 + 8))(v15, v19);
}

BOOL sub_25E703BB4(double *a1, double *a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *a2;
  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v14 = *(a3 + 24);
  v15 = v6;
  v16 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v13, v8);
  if (v13 != 1)
  {
    return 0;
  }

  v9 = *(a3 + 48);
  if (v4 != v9 && v5 == v9)
  {
    return 1;
  }

  v11 = *(a3 + 56);
  return v5 == v11 && v4 != v11;
}

BOOL sub_25E703C5C(double *a1, double *a2)
{
  v5 = *(type metadata accessor for PhotoStylePaletteSlider() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_25E703BB4(a1, a2, v6);
}

void *sub_25E703CF8(double a1, double a2, uint64_t a3, uint64_t *a4)
{
  v33[0] = sub_25E755EE8();
  v7 = *(v33[0] - 8);
  v8 = MEMORY[0x28223BE20](v33[0]);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v33 - v11;
  v13 = a4[3];
  v14 = a4[4];
  v15 = *(a4 + 40);
  v35 = v13;
  v36 = v14;
  LOBYTE(v37) = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  MEMORY[0x25F8BE020](&v34);
  if ((LOBYTE(v34) & 1) == 0)
  {
    v35 = v13;
    v36 = v14;
    LOBYTE(v37) = v15;
    LOBYTE(v34) = 1;
    sub_25E7568F8();
    v16 = a4[1];
    v17 = a4[2];
    v35 = *a4;
    v36 = v16;
    v37 = v17;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C10);
    result = MEMORY[0x25F8BE020](&v34, v18);
    v21 = *(a4 + 6);
    v20 = *(a4 + 7);
    if (v21 > v20)
    {
LABEL_16:
      __break(1u);
      return result;
    }

    if (v34 >= v21)
    {
      v21 = v34;
    }

    v22 = a4[9];
    v23 = a4[10];
    if (v20 >= v34)
    {
      v20 = v21;
    }

    v34 = v20;
    v35 = v22;
    v36 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D80);
    sub_25E756878();
  }

  if (a1 - a2 >= 0.0)
  {
    v24 = a1 - a2;
  }

  else
  {
    v24 = 0.0;
  }

  result = sub_25E755CC8();
  if (v24 < 0.0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = v25 / v24;
  sub_25E701AAC(v12);
  v27 = v33[0];
  (*(v7 + 104))(v10, *MEMORY[0x277CDFA90], v33[0]);
  v28 = sub_25E755ED8();
  v29 = *(v7 + 8);
  v29(v10, v27);
  v29(v12, v27);
  if (v28)
  {
    v26 = -v26;
  }

  v30 = a4[10];
  v35 = a4[9];
  v36 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D80);
  sub_25E756868();
  v31 = v26 + v34;
  v32 = sub_25E756B08();
  MEMORY[0x28223BE20](v32);
  v33[-2] = a4;
  *&v33[-1] = v31;
  sub_25E755E78();
}

uint64_t sub_25E704010(uint64_t result)
{
  v2 = *(result + 48);
  v1 = *(result + 56);
  if (v2 > v1)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C10);
    return sub_25E7568F8();
  }

  return result;
}

void *sub_25E704094(uint64_t a1, uint64_t *a2)
{
  v3 = a2[4];
  v4 = *(a2 + 40);
  v14 = a2[3];
  v15 = v3;
  LOBYTE(v16) = v4;
  LOBYTE(v13) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD034B8);
  sub_25E7568F8();
  v5 = a2[1];
  v6 = a2[2];
  v14 = *a2;
  v15 = v5;
  v16 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03C10);
  result = MEMORY[0x25F8BE020](&v13, v7);
  v10 = *(a2 + 6);
  v9 = *(a2 + 7);
  if (v10 > v9)
  {
    __break(1u);
  }

  else
  {
    if (v13 >= v10)
    {
      v10 = v13;
    }

    v11 = a2[9];
    v12 = a2[10];
    if (v9 >= v13)
    {
      v9 = v10;
    }

    v13 = v9;
    v14 = v11;
    v15 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03D80);
    return sub_25E756878();
  }

  return result;
}

void sub_25E7041A8()
{
  sub_25E7043B4(319, &qword_27FD03C40, MEMORY[0x277D839F8], MEMORY[0x277CE11F8]);
  if (v0 <= 0x3F)
  {
    sub_25E7043B4(319, &qword_27FD03C48, MEMORY[0x277D839B0], MEMORY[0x277CE11F8]);
    if (v1 <= 0x3F)
    {
      sub_25E7042F8();
      if (v2 <= 0x3F)
      {
        sub_25E704350();
        if (v3 <= 0x3F)
        {
          sub_25E7043B4(319, &qword_27FD03C68, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_25E704404();
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

void sub_25E7042F8()
{
  if (!qword_27FD03C50)
  {
    v0 = sub_25E756C88();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD03C50);
    }
  }
}

void sub_25E704350()
{
  if (!qword_27FD03C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03C60);
    v0 = sub_25E756E68();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD03C58);
    }
  }
}

void sub_25E7043B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_25E704404()
{
  if (!qword_27FD03C70)
  {
    sub_25E755EE8();
    v0 = sub_25E755D08();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD03C70);
    }
  }
}

unint64_t sub_25E704464()
{
  result = qword_27FD03CC8;
  if (!qword_27FD03CC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CC0);
    sub_25E704D38(&qword_27FD03CB8, &qword_27FD03C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03CC8);
  }

  return result;
}

unint64_t sub_25E704524()
{
  result = qword_27FD03CE8;
  if (!qword_27FD03CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CD8);
    sub_25E7045B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03CE8);
  }

  return result;
}

unint64_t sub_25E7045B0()
{
  result = qword_27FD03CF0;
  if (!qword_27FD03CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CF8);
    sub_25E704668();
    sub_25E704D38(&qword_27FD03D10, &qword_27FD03CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03CF0);
  }

  return result;
}

unint64_t sub_25E704668()
{
  result = qword_27FD03D00;
  if (!qword_27FD03D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03D08);
    sub_25E704D38(&qword_27FD03A88, &qword_27FD03A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03D00);
  }

  return result;
}

unint64_t sub_25E704720()
{
  result = qword_27FD03D18;
  if (!qword_27FD03D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CE0);
    sub_25E704D38(&qword_27FD03D20, &qword_27FD03D28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03D18);
  }

  return result;
}

unint64_t sub_25E7047D8()
{
  result = qword_27FD03D38;
  if (!qword_27FD03D38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03C88);
    sub_25E704864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03D38);
  }

  return result;
}

unint64_t sub_25E704864()
{
  result = qword_27FD03D40;
  if (!qword_27FD03D40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03D30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03CE0);
    sub_25E704524();
    sub_25E704720();
    swift_getOpaqueTypeConformance2();
    sub_25E704D38(&qword_27FD03D48, &qword_27FD03D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03D40);
  }

  return result;
}

void *sub_25E704984(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotoStylePaletteSlider() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];

  return sub_25E703CF8(v6, v7, a1, (v1 + v4));
}

uint64_t objectdestroyTm()
{
  type metadata accessor for PhotoStylePaletteSlider();
  OUTLINED_FUNCTION_5_1();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v6 = *(v5 + 64);

  v7 = *(v0 + 44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03BD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25E755EE8();
    OUTLINED_FUNCTION_1();
    (*(v8 + 8))(v1 + v4 + v7);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v1, v4 + v6, v3 | 7);
}

void *sub_25E704B54(uint64_t a1)
{
  v3 = *(type metadata accessor for PhotoStylePaletteSlider() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));

  return sub_25E704094(a1, v4);
}

uint64_t sub_25E704BE4(uint64_t a1)
{
  v2 = sub_25E756908();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E704C40(uint64_t a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  OUTLINED_FUNCTION_1();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_25E704C98()
{
  OUTLINED_FUNCTION_3_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

uint64_t sub_25E704CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25E704D38(unint64_t *a1, uint64_t *a2)
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

unint64_t sub_25E704D80()
{
  result = qword_27FD03DD0;
  if (!qword_27FD03DD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD03DC0);
    sub_25E704D38(&qword_27FD03DC8, &qword_27FD03DB0);
    sub_25E704E38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03DD0);
  }

  return result;
}

unint64_t sub_25E704E38()
{
  result = qword_27FD03DD8;
  if (!qword_27FD03DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD03DD8);
  }

  return result;
}

uint64_t sub_25E704E8C()
{
  OUTLINED_FUNCTION_3_1();
  v1(0);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

uint64_t sub_25E704EE4()
{
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

uint64_t sub_25E704F3C()
{
  OUTLINED_FUNCTION_3_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_1();
  v2 = OUTLINED_FUNCTION_14();
  v3(v2);
  return v0;
}

void sub_25E704FCC(double a1, double a2, double a3, double a4)
{
  v4 = OUTLINED_FUNCTION_18(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_4_1();
  if (v4 > CGRectGetMaxX(v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v7.origin.x = OUTLINED_FUNCTION_4_1();
  MinY = CGRectGetMinY(v7);
  v8.origin.x = OUTLINED_FUNCTION_4_1();
  if (MinY > CGRectGetMaxY(v8))
  {
LABEL_5:
    __break(1u);
  }
}

void sub_25E70506C(double a1, double a2, double a3, double a4)
{
  if (a1 > a3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (a2 > a4)
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t PISemanticStyleCast.gradientColors.getter()
{
  v2 = sub_25E7566B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  v7 = v7 && v0 == v6;
  if (v7)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v8)
  {

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
LABEL_86:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DE0);
    v40 = OUTLINED_FUNCTION_23();
    *(v40 + 16) = xmmword_25E75B240;
    v47 = OUTLINED_FUNCTION_0_1();
    (v0)(v47);
    OUTLINED_FUNCTION_7_1();
    v48 = sub_25E756748();
    v49 = OUTLINED_FUNCTION_1_2(v48);
    (v0)(v49);
    OUTLINED_FUNCTION_7_1();
    *(v40 + 40) = sub_25E756748();
    return v40;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v10)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v12)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v14)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
LABEL_83:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DE0);
    v40 = OUTLINED_FUNCTION_15();
    *(v40 + 16) = xmmword_25E75C790;
    v41 = OUTLINED_FUNCTION_0_1();
    (v0)(v41);
    OUTLINED_FUNCTION_7_1();
    v42 = sub_25E756748();
    v43 = OUTLINED_FUNCTION_1_2(v42);
    (v0)(v43);
    OUTLINED_FUNCTION_7_1();
    v44 = sub_25E756748();
    v45 = OUTLINED_FUNCTION_2_1(v44);
    (v0)(v45);
    OUTLINED_FUNCTION_7_1();
    *(v40 + 48) = sub_25E756748();
    return v40;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v16)
  {

    goto LABEL_94;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
LABEL_94:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD03DE0);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_25E75C5E0;
    (*(v3 + 104))(v5, *MEMORY[0x277CE0EE0], v2);
    OUTLINED_FUNCTION_7_1();
    *(v40 + 32) = sub_25E756748();
    return v40;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v18)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v20)
  {

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_86;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v22)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v24)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v26)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v28)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v30)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_83;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v32)
  {

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_86;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_9_0();
  if (v7 && v0 == v34)
  {

    goto LABEL_86;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v1)
  {
    goto LABEL_86;
  }

  v0 = sub_25E756CC8();
  v37 = v36;
  sub_25E756CC8();
  OUTLINED_FUNCTION_14_0();
  if (v7 && v37 == v38)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v0)
  {
    goto LABEL_83;
  }

  return MEMORY[0x277D84F90];
}

void sub_25E706058(double a1, double a2, double a3, double a4)
{
  v4 = OUTLINED_FUNCTION_18(*&a1);
  v6.origin.x = OUTLINED_FUNCTION_4_1();
  if (v4 > CGRectGetMaxX(v6))
  {
    __break(1u);
    goto LABEL_5;
  }

  v7.origin.x = OUTLINED_FUNCTION_4_1();
  MinY = CGRectGetMinY(v7);
  v8.origin.x = OUTLINED_FUNCTION_4_1();
  if (MinY > CGRectGetMaxY(v8))
  {
LABEL_5:
    __break(1u);
  }
}

uint64_t PISemanticStyleCast.gradientImageName.getter()
{
  sub_25E756CC8();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19();
  v4 = v4 && v0 == v3;
  if (v4)
  {

    goto LABEL_83;
  }

  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_21();

  if (v1)
  {
LABEL_83:
    OUTLINED_FUNCTION_11_0();
    return v46 + 1;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19();
  if (v4 && v0 == v5)
  {

    goto LABEL_85;
  }

  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_21();

  if (v1)
  {
    goto LABEL_85;
  }

  v7 = 0x4152475F45534F52;
  sub_25E756CC8();
  if (v2 == OUTLINED_FUNCTION_10_0() && v1 == v8)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();

  if (v2)
  {
    return v7;
  }

  v7 = 0x4152475F444C4F47;
  sub_25E756CC8();
  if (v2 == OUTLINED_FUNCTION_10_0() && v1 == v10)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();

  if (v2)
  {
    return v7;
  }

  v7 = 0x52475F5245424D41;
  v12 = sub_25E756CC8();
  v14 = v13;
  sub_25E756CC8();
  OUTLINED_FUNCTION_9_0();
  if (v4 && v14 == v15)
  {
LABEL_86:

    return v7;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v12)
  {
    return v7;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14_0();
  if (v4 && v1 == v17)
  {

    goto LABEL_90;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v14)
  {
LABEL_90:
    OUTLINED_FUNCTION_22();
    return v7;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14_0();
  if (v4 && v1 == v19)
  {

    goto LABEL_85;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v14)
  {
    goto LABEL_85;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14_0();
  if (v4 && v1 == v21)
  {

    goto LABEL_85;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v14)
  {
LABEL_85:
    OUTLINED_FUNCTION_11_0();
    return v47 - 1;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14_0();
  if (v4 && v1 == v23)
  {

    goto LABEL_90;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v14)
  {
    goto LABEL_90;
  }

  sub_25E756CC8();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_14_0();
  if (v4 && v1 == v25)
  {

    goto LABEL_90;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_16();

  if (v14)
  {
    goto LABEL_90;
  }

  v7 = 0x52475F5445495551;
  v27 = sub_25E756CC8();
  v29 = v28;
  sub_25E756CC8();
  OUTLINED_FUNCTION_9_0();
  if (v4 && v29 == v30)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_3_2();
  OUTLINED_FUNCTION_13_0();

  if (v27)
  {
    return v7;
  }

  v7 = 0x4152475F595A4F43;
  sub_25E756CC8();
  if (v29 == OUTLINED_FUNCTION_10_0() && v1 == v32)
  {
    goto LABEL_86;
  }

  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_16();

  if ((v29 & 1) == 0)
  {
    sub_25E756CC8();
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_19();
    if (v4 && v34 == 0x4152475F595A4F43)
    {
    }

    else
    {
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_21();

      if ((v1 & 1) == 0)
      {
        sub_25E756CC8();
        OUTLINED_FUNCTION_12_0();
        OUTLINED_FUNCTION_19();
        if (v4 && v36 == 0x4152475F595A4F43)
        {
        }

        else
        {
          OUTLINED_FUNCTION_6_1();
          OUTLINED_FUNCTION_21();

          if ((v1 & 1) == 0)
          {
            sub_25E756CC8();
            OUTLINED_FUNCTION_12_0();
            OUTLINED_FUNCTION_19();
            if (v4 && v38 == 0x4152475F595A4F43)
            {
            }

            else
            {
              OUTLINED_FUNCTION_6_1();
              OUTLINED_FUNCTION_21();

              if ((v1 & 1) == 0)
              {
                v40 = sub_25E756CC8();
                v42 = v41;
                if (v40 == sub_25E756CC8() && v42 == v43)
                {
                }

                else
                {
                  v45 = sub_25E756F08();

                  if ((v45 & 1) == 0)
                  {
                    return 0;
                  }
                }

                OUTLINED_FUNCTION_11_0();
                return v49 | 2;
              }
            }
          }
        }

        goto LABEL_83;
      }
    }

    goto LABEL_90;
  }

  return v7;
}