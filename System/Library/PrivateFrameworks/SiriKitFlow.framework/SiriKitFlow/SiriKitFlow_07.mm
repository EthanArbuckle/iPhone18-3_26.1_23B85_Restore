uint64_t sub_1DCBA1508(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PresentationElements.PresentationElementsBase(0);

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

uint64_t sub_1DCBA1768()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA1CBC()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA1CF4()
{
  v1 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2664()
{
  v1 = *(v0 + 24);
  type metadata accessor for DisambiguationResult();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 48) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2718()
{
  v1 = *(v0 + 48);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA2AC4()
{
  v1 = *(v0 + 16);
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA2D5C()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_33_1();
}

uint64_t sub_1DCBA2D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCE9B8D0();
  *a2 = result;
  return result;
}

uint64_t sub_1DCBA2E0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DB04C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v4);
  if (EnumTagSinglePayload >= 5)
  {
    return EnumTagSinglePayload - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBA2E54(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1DD0DB04C();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DCBA2EB4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3074(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for OptionalFlowMappingModifier();
  OUTLINED_FUNCTION_1_96();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3120(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for OptionalFlowMappingPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3174()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1DCBA31AC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for FlowMappingModifier();
  OUTLINED_FUNCTION_0_91();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3334(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for FlowMappingPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA3380()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA33B8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  type metadata accessor for ErrorReportingFlowModifier();
  OUTLINED_FUNCTION_0_92();
  swift_getWitnessTable();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA346C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ErrorReportingFlowPlan();

  return swift_getWitnessTable();
}

__n128 sub_1DCBA3570(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1DCBA3694()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1DCBA36CC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA3750()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCA9298, &qword_1DD0FF738);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA37D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  type metadata accessor for AnyHandleIntentFlow();
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA38F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA392C()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3964()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3B1C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA3B68()
{
  OUTLINED_FUNCTION_18_43();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3BF8()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3D18()
{
  if (v0[6])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 3);
  }

  if (v0[11])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBA3D68()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3DA8()
{
  OUTLINED_FUNCTION_18_43();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v6 = *(v0 + v3);

  v7 = *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3E6C()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1DCBA3F60()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);
  swift_unknownObjectRelease();
  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);

  if (*(v0 + 144) >= 3uLL)
  {
  }

  v10 = *(v0 + 152);

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

uint64_t sub_1DCBA3FF8()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  OUTLINED_FUNCTION_9_63();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v4 = v3;
  v5 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  OUTLINED_FUNCTION_9_63();
  v24 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(v24);
  v11 = v10;
  v12 = (*(v11 + 80) + v9 + 8) & ~*(v11 + 80);
  v14 = (*(v13 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(v0 + 5);

  (*(v4 + 8))(&v0[v5], AssociatedTypeWitness);
  v16 = *&v0[v7];

  v17 = *&v0[v8];
  swift_unknownObjectRelease();
  v18 = *&v0[v22];

  (*(v11 + 8))(&v0[v12], v24);
  v19 = *&v0[v14 + 8];

  v20 = *&v0[((v14 + 23) & 0xFFFFFFFFFFFFFFF8) + 8];

  return swift_deallocObject();
}

uint64_t sub_1DCBA41F4()
{
  OUTLINED_FUNCTION_20_10();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v6 = v5;
  v8 = (*(v5 + 80) + 88) & ~*(v5 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 40);

  v12 = *(v1 + 48);

  v13 = *(v1 + 56);
  swift_unknownObjectRelease();
  v14 = *(v1 + 64);

  (*(v6 + 8))(v1 + v8, v0);
  v15 = *(v1 + v9 + 8);

  v16 = *(v1 + v10 + 8);

  v17 = *(v1 + v10 + 16);

  v18 = *(v1 + v10 + 24);

  v19 = *(v1 + v10 + 32);

  v20 = *(v1 + v10 + 40);

  if (*(v1 + v10 + 56) >= 3uLL)
  {
  }

  v21 = *(v1 + v10 + 64);

  v22 = *(v1 + ((v10 + 79) & 0xFFFFFFFFFFFFFFF8) + 8);

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4360()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_76_15();
  if (v8)
  {
  }

  v9 = *(v0 + 120);

  v10 = *(v0 + 136);

  v11 = *(v0 + 144);
  swift_unknownObjectRelease();

  v12 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_1DCBA43FC()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v5 = *(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);

  v11 = *(v0 + 64);
  swift_unknownObjectRelease();

  v12 = OUTLINED_FUNCTION_46_20();
  v13(v12);

  return swift_deallocObject();
}

uint64_t sub_1DCBA44E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1DCBA454C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCBA45B4()
{
  OUTLINED_FUNCTION_20_10();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 72) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 40);

  v9 = *(v0 + 48);

  v10 = *(v0 + 56);
  swift_unknownObjectRelease();

  v11 = OUTLINED_FUNCTION_46_20();
  v12(v11);
  v13 = *(v0 + v6);

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA46C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  OUTLINED_FUNCTION_76_15();
  if (v8)
  {
  }

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  v11 = *(v0 + 136);
  swift_unknownObjectRelease();

  v12 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_1DCBA4768()
{
  v1 = *(v0 + 40);

  sub_1DCB6DE90(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 64);

  v3 = *(v0 + 72);
  swift_unknownObjectRelease();

  v4 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1DCBA47CC()
{
  OUTLINED_FUNCTION_20_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v1[5];

  v9 = v1[6];

  v10 = v1[8];

  v11 = v1[9];

  v12 = v1[10];

  v13 = v1[11];

  v14 = v1[12];

  OUTLINED_FUNCTION_76_15();
  if (v15)
  {
  }

  v16 = v1[15];

  v17 = v1[16];

  v18 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v18))
  {
    v19 = *(v0 + 8);

    v20 = *(v0 + 16);

    v21 = *(v0 + 24);

    v22 = *(v0 + 40);

    v23 = *(v0 + 48);

    v24 = *(v0 + 56);

    v25 = *(v0 + 80);

    v26 = *(v0 + 96);

    v27 = *(v0 + 104);

    v28 = *(v0 + 120);

    v29 = *(v0 + 152);

    v30 = *(v0 + 160);

    v31 = *(v0 + 168);

    v32 = *(v0 + 192);

    v33 = *(v0 + 208);

    v34 = *(v0 + 216);

    v35 = *(v0 + 224);

    v36 = *(v0 + 232);

    v37 = *(v0 + 240);

    if (*(v0 + 256))
    {

      v38 = *(v0 + 264);
    }

    v39 = *(v0 + 280);

    v40 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v40))
    {
      OUTLINED_FUNCTION_112(v2);
      v42 = *(v41 + 8);
      v43 = OUTLINED_FUNCTION_74_14();
      v44(v43);
    }

    OUTLINED_FUNCTION_43_21();
  }

  v45 = (v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
  v48 = *(v1 + v45);
  swift_unknownObjectRelease();
  v49 = *(v1 + v46);

  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4A0C()
{
  OUTLINED_FUNCTION_20_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 40);

  v9 = *(v1 + 48);

  v10 = *(v1 + 56);
  swift_unknownObjectRelease();
  v11 = *(v1 + 64);

  v12 = *(v1 + 96);

  v13 = *(v1 + 104);

  v14 = *(v1 + 112);

  v15 = *(v1 + 120);

  v16 = *(v1 + 128);

  if (*(v1 + 144) >= 3uLL)
  {
  }

  v17 = *(v1 + 152);

  v18 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v18))
  {
    v19 = *(v0 + 8);

    v20 = *(v0 + 16);

    v21 = *(v0 + 24);

    v22 = *(v0 + 40);

    v23 = *(v0 + 48);

    v24 = *(v0 + 56);

    v25 = *(v0 + 80);

    v26 = *(v0 + 96);

    v27 = *(v0 + 104);

    v28 = *(v0 + 120);

    v29 = *(v0 + 152);

    v30 = *(v0 + 160);

    v31 = *(v0 + 168);

    v32 = *(v0 + 192);

    v33 = *(v0 + 208);

    v34 = *(v0 + 216);

    v35 = *(v0 + 224);

    v36 = *(v0 + 232);

    v37 = *(v0 + 240);

    if (*(v0 + 256))
    {

      v38 = *(v0 + 264);
    }

    v39 = *(v0 + 280);

    v40 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v40))
    {
      OUTLINED_FUNCTION_112(v2);
      v42 = *(v41 + 8);
      v43 = OUTLINED_FUNCTION_74_14();
      v44(v43);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4C1C()
{
  OUTLINED_FUNCTION_20_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 112) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = v1[3];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[7];

  v12 = v1[8];

  v13 = v1[9];

  if (v1[11] >= 3uLL)
  {
  }

  v14 = v1[12];

  v15 = v1[13];

  v16 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v16))
  {
    v17 = *(v0 + 8);

    v18 = *(v0 + 16);

    v19 = *(v0 + 24);

    v20 = *(v0 + 40);

    v21 = *(v0 + 48);

    v22 = *(v0 + 56);

    v23 = *(v0 + 80);

    v24 = *(v0 + 96);

    v25 = *(v0 + 104);

    v26 = *(v0 + 120);

    v27 = *(v0 + 152);

    v28 = *(v0 + 160);

    v29 = *(v0 + 168);

    v30 = *(v0 + 192);

    v31 = *(v0 + 208);

    v32 = *(v0 + 216);

    v33 = *(v0 + 224);

    v34 = *(v0 + 232);

    v35 = *(v0 + 240);

    if (*(v0 + 256))
    {

      v36 = *(v0 + 264);
    }

    v37 = *(v0 + 280);

    v38 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v38))
    {
      OUTLINED_FUNCTION_112(v2);
      v40 = *(v39 + 8);
      v41 = OUTLINED_FUNCTION_74_14();
      v42(v41);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA4E0C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCBA4E74()
{
  v7 = v1[2];
  v6 = v1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v10 = v9;
  v12 = *(v11 + 64);
  v27 = *(v9 + 80);
  OUTLINED_FUNCTION_26_30();
  v14 = v13 & 0xFFFFFFFFFFFFFFF8;
  v15 = ((v13 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v16 = v1[4];

  v17 = v1[6];

  (*(v10 + 8))(v1 + ((v27 + 56) & ~v27), v0);
  v18 = *(v1 + v2);

  v19 = *(v1 + v14);
  swift_unknownObjectRelease();
  v20 = *(v1 + v15 + 8);

  v21 = *(v1 + v15 + 16);

  v22 = *(v1 + v15 + 24);

  v23 = *(v1 + v15 + 32);

  v24 = *(v1 + v15 + 40);

  if (*(v1 + v15 + 56) >= 3uLL)
  {
  }

  v25 = *(v1 + v15 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCBA4FE0()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();

  v2 = *(v0 + 64);

  v3 = *(v0 + 80);

  v4 = *(v0 + 88);

  v5 = *(v0 + 96);

  v6 = *(v0 + 104);

  v7 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  v10 = *(v0 + 152);

  v11 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5090()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DCBA50C8()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  if (*(v0 + 96) >= 3uLL)
  {
  }

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);
  swift_unknownObjectRelease();

  v9 = *(v0 + 136);

  v10 = *(v0 + 144);

  v11 = *(v0 + 152);

  v12 = *(v0 + 160);

  v13 = *(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_1DCBA51AC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();
  v4 = *(v0 + 64);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  if (*(v0 + 136) >= 3uLL)
  {
  }

  v10 = *(v0 + 144);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5270()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBA52C4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  if (*(v0 + 120) >= 3uLL)
  {
  }

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1DCBA535C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  if (*(v0 + 104) >= 3uLL)
  {
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_56();

  return swift_deallocObject();
}

uint64_t sub_1DCBA53E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA541C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCBA547C()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 64);

  v4 = *(v0 + 80);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  if (*(v0 + 128) >= 3uLL)
  {
  }

  v9 = *(v0 + 136);

  v10 = *(v0 + 152);

  OUTLINED_FUNCTION_54_16();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5514()
{
  OUTLINED_FUNCTION_20_10();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99(v3);
  v5 = (*(v4 + 80) + 160) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 40);

  v9 = *(v1 + 48);

  v10 = *(v1 + 56);
  swift_unknownObjectRelease();
  v11 = *(v1 + 64);

  v12 = *(v1 + 88);

  v13 = *(v1 + 96);

  v14 = *(v1 + 104);

  v15 = *(v1 + 112);

  v16 = *(v1 + 120);

  if (*(v1 + 136) >= 3uLL)
  {
  }

  v17 = *(v1 + 144);

  v18 = OUTLINED_FUNCTION_79_14();
  if (!OUTLINED_FUNCTION_27_30(v18))
  {
    v19 = *(v0 + 8);

    v20 = *(v0 + 16);

    v21 = *(v0 + 24);

    v22 = *(v0 + 40);

    v23 = *(v0 + 48);

    v24 = *(v0 + 56);

    v25 = *(v0 + 80);

    v26 = *(v0 + 96);

    v27 = *(v0 + 104);

    v28 = *(v0 + 120);

    v29 = *(v0 + 152);

    v30 = *(v0 + 160);

    v31 = *(v0 + 168);

    v32 = *(v0 + 192);

    v33 = *(v0 + 208);

    v34 = *(v0 + 216);

    v35 = *(v0 + 224);

    v36 = *(v0 + 232);

    v37 = *(v0 + 240);

    if (*(v0 + 256))
    {

      v38 = *(v0 + 264);
    }

    v39 = *(v0 + 280);

    v40 = OUTLINED_FUNCTION_78_16();
    if (!OUTLINED_FUNCTION_24_29(v40))
    {
      OUTLINED_FUNCTION_112(v2);
      v42 = *(v41 + 8);
      v43 = OUTLINED_FUNCTION_74_14();
      v44(v43);
    }

    OUTLINED_FUNCTION_43_21();
  }

  OUTLINED_FUNCTION_50_16();
  OUTLINED_FUNCTION_15_5();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5724()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5774()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_22_0(AssociatedTypeWitness);
  v6 = (*(v5 + 64) + ((*(v4 + 80) + 72) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 32);

  v8 = *(v0 + 40);
  swift_unknownObjectRelease();
  v9 = *(v0 + 48);

  v10 = OUTLINED_FUNCTION_46_20();
  v11(v10);
  v12 = *(v0 + v6 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5890()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  v4 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_1DCBA58F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5930()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBA596C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA59A4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBA5A04()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5A64()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5AF8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5B30()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5B68()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA5BC0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5C10()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5C4C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5CA4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5CDC()
{
  v1 = v0[5];

  v2 = v0[7];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5D24()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA5D94()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5DCC()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5E0C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5E5C()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBA5EDC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA6068()
{
  v1 = *(v0 + 16);
  OUTLINED_FUNCTION_60_14(*(v0 + 24));
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_6_0();
  type metadata accessor for AnnotatedIntent();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  OUTLINED_FUNCTION_4_11();
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA65E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  v7 = type metadata accessor for RCHFlowAsync.State();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v7);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBA662C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 1);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = type metadata accessor for RCHFlowAsync.State();

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v9);
}

uint64_t sub_1DCBA6800()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCBA6A24()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA6A5C()
{
  OUTLINED_FUNCTION_50();
  v2 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_98(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v0 + 32);
  swift_unknownObjectRelease();
  v8 = (v0 + v4);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v9 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v22 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v22);
      (*(v23 + 8))(v0 + v4);
      v24 = *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];

      break;
    case 2u:
      v11 = *(v8 + 1);

      v12 = *(v8 + 2);
      goto LABEL_17;
    case 3u:
      v13 = *v8;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v9 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v25 = *v8;
      goto LABEL_23;
    case 6u:
      v26 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v26);
      (*(v27 + 8))(v0 + v4);
      v28 = type metadata accessor for USOParse();
      v29 = *(v28 + 20);
      v30 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v30))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v31 + 8))(&v8[v29], v1);
      }

      v21 = *(v28 + 24);
      goto LABEL_16;
    case 7u:
      v14 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v14);
      (*(v15 + 8))(v0 + v4);
      v16 = type metadata accessor for USOParse();
      v17 = *(v16 + 20);
      v18 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_59_9(v18))
      {
        OUTLINED_FUNCTION_112(v1);
        (*(v19 + 8))(&v8[v17], v1);
      }

      OUTLINED_FUNCTION_42_15(*(v16 + 24));

      v20 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_42_15(v20[5]);

      OUTLINED_FUNCTION_42_15(v20[6]);

      v21 = v20[7];
LABEL_16:
      OUTLINED_FUNCTION_42_15(v21);
LABEL_17:

      break;
    case 8u:
      v32 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v32);
      (*(v33 + 8))(v0 + v4);
      v34 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_42_15(v34[5]);

      v35 = &v8[v34[6]];
      v36 = type metadata accessor for USOParse();
      if (!__swift_getEnumTagSinglePayload(v35, 1, v36))
      {
        v37 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v37);
        (*(v38 + 8))(v35);
        v39 = *(v36 + 20);
        v40 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v35 + v39, 1, v40))
        {
          OUTLINED_FUNCTION_112(v40);
          (*(v41 + 8))(v35 + v39, v40);
        }

        OUTLINED_FUNCTION_9_23(*(v36 + 24));
      }

      v25 = *&v8[v34[7]];
LABEL_23:

      break;
    case 9u:
      v9 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v9);
      (*(v10 + 8))(v0 + v4);
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_49();

  return swift_deallocObject();
}

uint64_t sub_1DCBA70E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7120()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t *_s11SiriKitFlow5StateOwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_1DCF0F92C(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

uint64_t sub_1DCBA71A0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA71E0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7288()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA72C0()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7300@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCD00FC4();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCBA7330@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_1DCF133C0();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1DCBA7360()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA73C4()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_22_0(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = *(v6 + 64);
  v8 = *(v1 + 32);

  (*(v4 + 8))(v1 + v5, v0);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7484()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_22_0(v2);
  v4 = v3;
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 32);

  (*(v4 + 8))(v1 + v5, v0);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + v7));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7558()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7680()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA76C8()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBA76FC(uint64_t a1)
{
  OUTLINED_FUNCTION_29_29(a1, *(v1 + 16));
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v1 + v3);
  v5 = *(v1 + v4);

  return swift_deallocObject();
}

uint64_t sub_1DCBA77E8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7834()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA799C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA79D4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7A1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  v4 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7A8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBA7B28(uint64_t *a1)
{
  v1 = *a1;
  sub_1DD0DE97C();
  sub_1DD0DDB6C();
  OUTLINED_FUNCTION_5_92();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA7BE4()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7C3C(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_1DCB8E3C0(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

uint64_t sub_1DCBA7D18()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBA7D98()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7DD0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA7E5C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA7EF0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *_s11SiriKitFlow19ResolveConfirmErrorOwCP_0(void *result, void *a2)
{
  if (*a2 >= 0xFFFFFFFFuLL)
  {
    sub_1DD0DCF8C();
  }

  *result = *a2;
  return result;
}

uint64_t sub_1DCBA8018()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8050()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBA808C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBA80C8()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  OUTLINED_FUNCTION_136();

  return swift_deallocObject();
}

uint64_t sub_1DCBA811C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ResolveIntoModifier();
  OUTLINED_FUNCTION_1_114();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  type metadata accessor for ModifiedPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA81CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for ResolveIntoPlan();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA8228()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  v4 = (type metadata accessor for ResolveIntoPlan() - 8);
  v5 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v6 = *(*v4 + 64);
  (*(*(v2 - 8) + 8))(&v0[v5], v2);
  v7 = *&v0[v5 + v4[13]];

  return swift_deallocObject();
}

uint64_t sub_1DCBA840C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8444()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1DCBA84B4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1DCBA852C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  v3 = *(v0 + 80);

  v4 = *(v0 + 96);

  v5 = *(v0 + 112);

  v6 = *(v0 + 120);

  v7 = *(v0 + 128);

  v8 = *(v0 + 136);

  v9 = *(v0 + 144);

  if (*(v0 + 160) >= 3uLL)
  {
  }

  v10 = *(v0 + 168);

  v11 = *(v0 + 176);

  v12 = *(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_1DCBA85E4()
{
  v1 = *(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1DCBA861C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  v6 = *(v0 + 80);

  if (*(v0 + 96) >= 3uLL)
  {
  }

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);
  swift_unknownObjectRelease();

  v11 = *(v0 + 144);

  v12 = *(v0 + 160);

  v13 = *(v0 + 176);

  v14 = *(v0 + 192);

  return swift_deallocObject();
}

uint64_t sub_1DCBA86E0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  v4 = *(v0 + 88);

  v5 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8750()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  if (*(v0 + 104) >= 3uLL)
  {
  }

  v7 = *(v0 + 112);

  v8 = *(v0 + 120);

  v9 = *(v0 + 128);
  swift_unknownObjectRelease();

  v10 = *(v0 + 160);

  v11 = *(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8800()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 72);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  v9 = *(v0 + 136);

  v10 = *(v0 + 144);

  if (*(v0 + 160) >= 3uLL)
  {
  }

  v11 = *(v0 + 168);

  v12 = *(v0 + 184);

  return swift_deallocObject();
}

uint64_t sub_1DCBA88B8()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA891C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 80);

  v5 = *(v0 + 96);

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8980()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBA89C0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8A20()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 48);
  swift_unknownObjectRelease();

  v4 = *(v0 + 72);

  v5 = *(v0 + 88);

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);

  if (*(v0 + 136) >= 3uLL)
  {
  }

  v10 = *(v0 + 144);

  v11 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8AC0()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 96);

  OUTLINED_FUNCTION_5_13();

  return swift_deallocObject();
}

uint64_t sub_1DCBA8B24()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  v3 = *(v0 + 72);

  v4 = *(v0 + 96);

  v5 = *(v0 + 104);

  v6 = *(v0 + 112);

  v7 = *(v0 + 120);

  v8 = *(v0 + 128);

  if (*(v0 + 144) >= 3uLL)
  {
  }

  v9 = *(v0 + 152);

  v10 = *(v0 + 160);

  v11 = *(v0 + 168);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8BCC()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88) >= 3uLL)
  {
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 112);

  v9 = *(v0 + 120);
  swift_unknownObjectRelease();

  v10 = *(v0 + 144);

  v11 = *(v0 + 160);

  v12 = *(v0 + 176);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8C88(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
    v9 = a1 + *(a3 + 28);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DCBA8D1C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA8A90, &qword_1DD0FE488);
    v8 = v5 + *(a4 + 28);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBA8DA8()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBA8DE0()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8E18()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 5);
  v3 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1DCBA8EBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_112(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  }

  v9 = *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA8FE0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v7))
  {
    OUTLINED_FUNCTION_112(v7);
    (*(v8 + 8))(v0 + v3, v7);
  }

  v9 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBA9168()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA9280()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA9338()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBA93A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9448(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for SequentialPlan1();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBA94C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  type metadata accessor for NeverPlan();

  return swift_getWitnessTable();
}

void _s11SiriKitFlow25ExternalActivationRequestVwxx_0(uint64_t *a1)
{
  if (a1[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v2 = a1[5];
}

uint64_t sub_1DCBA962C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9664()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_88_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBA96C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBA9D90()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBA9DC8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAB488, &qword_1DD1059E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1DCBAA1F8(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCDB1CB0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA24C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3C4C();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA2CC(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3CF8();
  *v1 = result;
  v1[1] = v3;
  return result;
}

void *sub_1DCBAA320(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3DA8();
  *v1 = result;
  return result;
}

uint64_t sub_1DCBAA34C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3E24();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA3A0(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3EA4();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA3F4(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3F24();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA448(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3F60();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA49C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFA3FE0();
  *v1 = result;
  v1[1] = v3;
  return result;
}

uint64_t sub_1DCBAA6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Parse(0);
  if (*(*(v6 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(a1, a2, v6);
  }

  else
  {
    v8 = *(a1 + *(a3 + 24));
    if (v8 >= 0xFFFFFFFF)
    {
      LODWORD(v8) = -1;
    }

    return (v8 + 1);
  }
}

uint64_t sub_1DCBAA758(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Parse(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBAA9E4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAAE68()
{
  v1 = sub_1DD0DD2DC();
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB068()
{
  v1 = type metadata accessor for Input(0);
  v2 = (*(*(v1 - 1) + 80) + 32) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4C00, &qword_1DD0EF970);
  OUTLINED_FUNCTION_9(v4);
  v6 = v5;
  v7 = *(v5 + 80);
  v60 = *(v8 + 64);
  v9 = v0 + v2;
  v10 = sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1(v10);
  (*(v11 + 8))(v0 + v2);
  v12 = v0 + v2 + v1[5];
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v13 = sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      v24 = sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1(v24);
      (*(v25 + 8))(v12);
      v26 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48));

      break;
    case 2u:
      v15 = *(v12 + 8);

      v16 = *(v12 + 16);

      break;
    case 3u:
      v17 = *v12;
      swift_unknownObjectRelease();
      break;
    case 4u:
      v13 = sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:

      break;
    case 6u:
      v58 = v3;
      v27 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v27);
      (*(v28 + 8))(v12);
      v56 = type metadata accessor for USOParse();
      v29 = *(v56 + 20);
      v30 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_67(v30))
      {
        (*(*(v29 - 8) + 8))(v12 + v53, v29);
      }

      v23 = *(v56 + 24);
      goto LABEL_16;
    case 7u:
      v58 = v3;
      v18 = sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1(v18);
      (*(v19 + 8))(v12);
      v55 = type metadata accessor for USOParse();
      v20 = *(v55 + 20);
      v21 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_67(v21))
      {
        (*(*(v20 - 8) + 8))(v12 + v53, v20);
      }

      OUTLINED_FUNCTION_24_37(*(v55 + 24));
      v22 = type metadata accessor for LinkParse();
      OUTLINED_FUNCTION_24_37(v22[5]);
      OUTLINED_FUNCTION_24_37(v22[6]);
      v23 = v22[7];
LABEL_16:
      OUTLINED_FUNCTION_24_37(v23);
      v3 = v58;
      break;
    case 8u:
      v57 = v4;
      v59 = v3;
      v31 = sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1(v31);
      (*(v32 + 8))(v12);
      v33 = type metadata accessor for NLRouterParse();
      OUTLINED_FUNCTION_24_37(v33[5]);
      v34 = v12 + v33[6];
      v35 = type metadata accessor for USOParse();
      v54 = v34;
      v36 = v34;
      v37 = v35;
      if (!__swift_getEnumTagSinglePayload(v36, 1, v35))
      {
        v52 = v33;
        v38 = sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1(v38);
        (*(v39 + 8))(v54);
        v51 = v37;
        v40 = *(v37 + 20);
        v41 = sub_1DD0DB3EC();
        if (!__swift_getEnumTagSinglePayload(v54 + v40, 1, v41))
        {
          (*(*(v41 - 8) + 8))(v54 + v40, v41);
        }

        v42 = *(v54 + *(v51 + 24) + 8);

        v33 = v52;
      }

      v4 = v57;
      v3 = v59;
      break;
    case 9u:
      v13 = sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1(v13);
      (*(v14 + 8))(v12);
      break;
    default:
      break;
  }

  v43 = *(v9 + v1[6]);

  v44 = (v9 + v1[7]);
  if (v44[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  v45 = (v3 + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = (v45 + 15) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + v7 + 8) & ~v7;
  v48 = *(v0 + v45);

  (*(v6 + 8))(v0 + v47, v4);
  v49 = *(v0 + ((v60 + v47 + 7) & 0xFFFFFFFFFFFFFFF8));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB614()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return swift_deallocObject();
}

uint64_t sub_1DCBAB65C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB6E4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1DCBAB764()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAB79C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBABA6C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

uint64_t sub_1DCBABB00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA28C0, &unk_1DD0E1D80);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAC100()
{
  sub_1DCFCCE88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC164()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  sub_1DCC99E2C(*(v0 + 40), *(v0 + 48), *(v0 + 49));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC1B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC1F4()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC254()
{
  sub_1DCFCCE88(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC2E4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC31C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

void *_s11SiriKitFlow7HintsUIVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;

  return a1;
}

uint64_t sub_1DCBAC3F8()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC434()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v9 = *(v0 + v6 + 8);

  v10 = *(v0 + v7 + 8);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC52C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC57C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1DCBAC5F4()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v5 = v4;
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 4);
  swift_unknownObjectRelease();
  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCBAC728(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFF359C();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1DCBAC77C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCFF37C8();
  *v1 = result & 1;
  return result;
}

uint64_t sub_1DCBAC824(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    return OUTLINED_FUNCTION_15_4(*a1);
  }

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
  v8 = a1 + *(a3 + 20);

  return __swift_getEnumTagSinglePayload(v8, a2, v7);
}

void *sub_1DCBAC8AC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCABE68, &qword_1DD109BF0);
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAC938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  if (*(*(v6 - 8) + 84) != a2)
  {
    return OUTLINED_FUNCTION_15_4(*(a1 + *(a3 + 20)));
  }

  return __swift_getEnumTagSinglePayload(a1, a2, v6);
}

uint64_t sub_1DCBAC9D8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_26_6();
  result = sub_1DD0DB04C();
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(v4, a2, a2, result);
  }

  else
  {
    *(v4 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1DCBACA7C()
{
  v1 = *(v0 + 24);

  OUTLINED_FUNCTION_5_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBACAB0()
{
  v1 = *(v0 + 80);

  return swift_deallocObject();
}

uint64_t sub_1DCBACAE8()
{
  v1 = *(v0 + 88);

  return swift_deallocObject();
}

uint64_t sub_1DCBACB20()
{
  v1 = *(v0 + 96);

  return swift_deallocObject();
}

uint64_t sub_1DCBACB58()
{
  v1 = *(v0 + 104);

  return swift_deallocObject();
}

uint64_t sub_1DCBACB90()
{
  v1 = *(v0 + 112);

  return swift_deallocObject();
}

uint64_t sub_1DCBACBC8()
{
  v1 = *(v0 + 120);

  return swift_deallocObject();
}

uint64_t sub_1DCBACC00()
{
  v1 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1DCBACC38()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  v4 = *(v0 + v3);

  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBACD14()
{
  OUTLINED_FUNCTION_18_8();
  v3 = type metadata accessor for RelationshipLabel();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20) + 8));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCBACDA8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = type metadata accessor for RelationshipLabel();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20) + 8) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCBACE78()
{
  OUTLINED_FUNCTION_18_8();
  v3 = sub_1DD0DBD0C();
  v4 = OUTLINED_FUNCTION_11_1(v3);
  if (*(v5 + 84) != v1)
  {
    return OUTLINED_FUNCTION_15_4(*(v0 + *(v2 + 20)));
  }

  return __swift_getEnumTagSinglePayload(v0, v1, v4);
}

uint64_t sub_1DCBACF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  OUTLINED_FUNCTION_7_14();
  v8 = sub_1DD0DBD0C();
  result = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = OUTLINED_FUNCTION_6_9();

    return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  }

  else
  {
    *(v5 + *(a4 + 20)) = (v4 - 1);
  }

  return result;
}

uint64_t sub_1DCBACFC0()
{
  OUTLINED_FUNCTION_7_14();
  v2 = sub_1DD0DC76C();

  return __swift_getEnumTagSinglePayload(v1, v0, v2);
}

uint64_t sub_1DCBAD000()
{
  OUTLINED_FUNCTION_7_14();
  sub_1DD0DC76C();
  v0 = OUTLINED_FUNCTION_6_9();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t sub_1DCBAD09C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD140(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  type metadata accessor for LifeCycleModifierFlow();
  OUTLINED_FUNCTION_1_138();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBAD194()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0_1();
  v3 = v2;
  v4 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v6 = (*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v1);
  v8 = *(v0 + v6);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)));

  return swift_deallocObject();
}

uint64_t sub_1DCBAD274()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD3FC()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_9(AssociatedTypeWitness);
  v5 = v4;
  v6 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 5);

  v10 = *(v0 + 6);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);
  v11 = *&v0[v8];

  v12 = *&v0[(v8 + 15) & 0xFFFFFFFFFFFFFFF8];
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1DCBAD50C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  if (*(v0 + 120) >= 3uLL)
  {
  }

  v9 = *(v0 + 128);

  v10 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD5A4()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  v5 = *(v0 + 72);

  if (*(v0 + 88) >= 3uLL)
  {
  }

  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 128);
  swift_unknownObjectRelease();

  v9 = *(v0 + 144);

  v10 = *(v0 + 160);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD644()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 48);

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  v7 = *(v0 + 96);

  if (*(v0 + 112) >= 3uLL)
  {
  }

  v8 = *(v0 + 120);

  v9 = *(v0 + 136);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD6D4()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocObject();
}

uint64_t sub_1DCBAD71C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  v6 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v3, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  v7 = *(v0 + ((v5 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD82C()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD86C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA8EE0, &unk_1DD0ECCD0);
  OUTLINED_FUNCTION_99(v1);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = sub_1DD0DD23C();
  if (!__swift_getEnumTagSinglePayload(v0 + v4, 1, v7))
  {
    OUTLINED_FUNCTION_112(v7);
    (*(v8 + 8))(v0 + v4, v7);
  }

  if (*(v0 + v5 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));
  }

  v9 = *(v0 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8);

  return swift_deallocObject();
}

uint64_t sub_1DCBAD9C8()
{
  v1 = *(v0 + 64);

  return swift_deallocObject();
}

uint64_t sub_1DCBADA00()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBADA38(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[3];
  swift_getAssociatedTypeWitness();
  type metadata accessor for ChainedFlow();
  OUTLINED_FUNCTION_0_126();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBADA9C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA1D30, &qword_1DD0E1EC0);
  type metadata accessor for ChainedFlow();
  OUTLINED_FUNCTION_0_126();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBADC00()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v5 = v4;
  v6 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v8 = *(v7 + 64);
  v9 = *(v0 + 5);

  (*(v5 + 8))(&v0[v6], AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1DCBADCF8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBADD74()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  OUTLINED_FUNCTION_1_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBADDA8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC3B0, &unk_1DD0E5A00);
  OUTLINED_FUNCTION_2(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return swift_deallocObject();
}

uint64_t sub_1DCBADE68()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBADF64(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for RelationshipLabel();
    v9 = a1 + *(a3 + 20);

    return __swift_getEnumTagSinglePayload(v9, a2, v8);
  }
}

void *sub_1DCBADFEC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for RelationshipLabel();
    v8 = v5 + *(a4 + 20);

    return __swift_storeEnumTagSinglePayload(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1DCBAE1A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = type metadata accessor for UnsetRelationshipFlowAsync.State();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, a2, v6);
  if (EnumTagSinglePayload >= 4)
  {
    return EnumTagSinglePayload - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBAE1F4(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = (a2 + 3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a4 + 16);
  v8 = type metadata accessor for UnsetRelationshipFlowAsync.State();

  return __swift_storeEnumTagSinglePayload(a1, v6, a3, v8);
}

uint64_t sub_1DCBAE34C()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[12];

  return swift_deallocObject();
}

uint64_t sub_1DCBAE3B4()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  return swift_deallocObject();
}

uint64_t sub_1DCBAE40C()
{
  v1 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_98(v1);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = *(v4 + 64);

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + v3 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v9 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2(v9);
    (*(v10 + 8))(v0 + v3 + v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCBAE51C()
{

  return swift_deallocObject();
}

uint64_t sub_1DCBAE5AC()
{
  v1 = *(v0 + 16);
  sub_1DD0DE40C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE790()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1DCBAE7F8()
{
  v1 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_49_28(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(v0 + v3 + 8);

  if (EnumCaseMultiPayload != 1)
  {
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v10 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_2(v10);
    (*(v11 + 8))(v0 + v3 + v9);
  }

  OUTLINED_FUNCTION_51_33();

  return swift_deallocObject();
}

uint64_t sub_1DCBAE910()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1DCBAE9B8()
{
  v1 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBAEA84()
{
  v2 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_49_28(v2);
  v4 = *(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();
  v8 = OUTLINED_FUNCTION_34_42();
  v9 = *(v0 + 8);

  if (v8 != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1(v11);
    (*(v12 + 8))(v0 + v10);
  }

  v13 = (v6 + ((v4 + 32) & ~v4) + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF8;

  v15 = *(v1 + v14 + 8);

  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEBA0()
{
  v2 = type metadata accessor for RelationshipLabel();
  OUTLINED_FUNCTION_49_28(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  v7 = *(v1 + 16);
  swift_unknownObjectRelease();

  v8 = OUTLINED_FUNCTION_34_42();
  v9 = *(v0 + 8);

  if (v8 != 1)
  {
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2088, &unk_1DD0E4060) + 48);
    v11 = sub_1DD0DB0FC();
    OUTLINED_FUNCTION_13_1(v11);
    (*(v12 + 8))(v0 + v10);
  }

  OUTLINED_FUNCTION_51_33();
  OUTLINED_FUNCTION_30_45();

  return swift_deallocObject();
}

uint64_t sub_1DCBAED58()
{
  v1 = *(v0 + 16);
  type metadata accessor for IntentPromptAnswer();
  sub_1DD0DE97C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v2 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v2);
  v4 = *(v3 + 64);
  (*(v3 + 8))(v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEE0C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECCACAD8, &qword_1DD10CAA8);
  OUTLINED_FUNCTION_13_1(v1);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  OUTLINED_FUNCTION_56_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAEEEC()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[13];

  v7 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1DCBAEF54()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBAEFB0()
{
  v1 = *(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_1DCBAEFF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];

  v3 = v0[7];

  return swift_deallocObject();
}

uint64_t sub_1DCBAF040()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  v3 = sub_1DD0DE47C();
  OUTLINED_FUNCTION_13_1(v3);
  v5 = *(v4 + 64);
  (*(v4 + 8))(v0 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return swift_deallocObject();
}

void sub_1DCBAF1F8(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD06A0AC();
}

void sub_1DCBAF24C(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD06A0C0();
}

void sub_1DCBAF29C(unsigned int *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_1DD06ABAC();
}

uint64_t sub_1DCBAF5EC()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);

  return swift_deallocObject();
}

uint64_t sub_1DCBAF634()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBAF66C(uint64_t *a1)
{
  OUTLINED_FUNCTION_9_2(a1);
  result = sub_1DCE9B8D0();
  *v1 = result;
  return result;
}

uint64_t sub_1DCBAF70C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_26_6();
  v5 = type metadata accessor for UserIdentityCheckFlow.AnalysisResult(v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, a2, v5);
  if (EnumTagSinglePayload >= 6)
  {
    return EnumTagSinglePayload - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBAF750(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 5);
  }

  else
  {
    v5 = 0;
  }

  OUTLINED_FUNCTION_28_41();

  return __swift_storeEnumTagSinglePayload(a1, v5, a3, v6);
}

uint64_t sub_1DCBAFA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB04C();
  v7 = OUTLINED_FUNCTION_11_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = type metadata accessor for Parse(0);
  v12 = OUTLINED_FUNCTION_11_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24));
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1DCBAFB5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DD0DB04C();
  v9 = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for Parse(0);
    result = OUTLINED_FUNCTION_11_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DCBAFC68()
{
  v1 = *(v0 + 32);

  OUTLINED_FUNCTION_92_2();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFC9C()
{
  v1 = *(v0 + 56);

  OUTLINED_FUNCTION_41_4();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFCE0()
{
  v1 = *(v0 + 104);

  OUTLINED_FUNCTION_75_18();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFD20()
{
  v1 = *(v0 + 120);

  OUTLINED_FUNCTION_156_0();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFD5C()
{
  v1 = *(v0 + 136);

  OUTLINED_FUNCTION_136_1();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFDA0()
{
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_7_3();

  return swift_deallocObject();
}

uint64_t sub_1DCBAFDDC()
{
  v1 = *(v0 + 88);

  OUTLINED_FUNCTION_74_22();

  return swift_deallocObject();
}

uint64_t sub_1DCBB004C()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBB0084()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_1DCBB00F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DD0DB4BC();
  v7 = OUTLINED_FUNCTION_11_1(v6);
  if (*(v8 + 84) == a2)
  {
    v9 = v7;
    v10 = a1;
LABEL_5:

    return __swift_getEnumTagSinglePayload(v10, a2, v9);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
  v12 = OUTLINED_FUNCTION_11_1(v11);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v15 = *(a1 + *(a3 + 24) + 8);
  if (v15 >= 0xFFFFFFFF)
  {
    LODWORD(v15) = -1;
  }

  v16 = v15 - 1;
  if (v16 < 0)
  {
    v16 = -1;
  }

  return (v16 + 1);
}

uint64_t sub_1DCBB0200(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DD0DB4BC();
  v9 = OUTLINED_FUNCTION_11_1(v8);
  if (*(v10 + 84) == a3)
  {
    v11 = v9;
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
    result = OUTLINED_FUNCTION_11_1(v13);
    if (*(v15 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v11 = result;
    v12 = a1 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v12, a2, a2, v11);
}

uint64_t sub_1DCBB02F8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for USOKeyPath() - 8);
  v5 = *(*v4 + 64);
  v6 = v0 + ((*(*v4 + 80) + 40) & ~*(*v4 + 80));
  v7 = *(v6 + 1);

  v8 = *(v6 + 3);

  v9 = *(v6 + 5);

  (*(*(v2 - 8) + 8))(&v6[v4[15]], v2);
  v10 = *&v6[v4[16] + 8];

  v11 = *&v6[v4[17] + 8];

  return swift_deallocObject();
}

uint64_t sub_1DCBB041C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  v1 = v0[13];

  v2 = v0[15];

  return swift_deallocObject();
}

uint64_t sub_1DCBB04DC()
{
  v1 = *(v0 + 48);

  return swift_deallocObject();
}

uint64_t sub_1DCBB0514()
{
  v1 = *(v0 + 56);

  return swift_deallocObject();
}

uint64_t sub_1DCBB05DC(uint64_t a1)
{
  v1 = *(a1 + 8);
  type metadata accessor for ConditionalValue();
  type metadata accessor for TransformFlow();
  OUTLINED_FUNCTION_2_125();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBB061C(uint64_t a1)
{
  v1 = *(a1 + 16);
  type metadata accessor for ConditionalValue();
  type metadata accessor for TransformFlow();
  OUTLINED_FUNCTION_2_125();

  return swift_getWitnessTable();
}

uint64_t sub_1DCBB1028()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocObject();
}

uint64_t sub_1DCBB1070(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DDD8C();

  return __swift_getEnumTagSinglePayload(a1, a2, v4);
}

uint64_t sub_1DCBB10B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DD0DDD8C();

  return __swift_storeEnumTagSinglePayload(a1, a2, a2, v4);
}

void *assignWithTake for DialogPhase(void *a1, void *a2)
{
  v3 = a2[1];
  v4 = a1[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

void sub_1DCBB1234(unint64_t a1)
{
  if ((~a1 & 0xF000000000000006) != 0)
  {
    sub_1DCBF44A0(a1);
  }
}

uint64_t sub_1DCBB1258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1DD0DF0AC() & 1;
  }
}

void sub_1DCBB12E0(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }
}

id sub_1DCBB12F4(id result, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
    return MEMORY[0x1EEE66C98](result);
  }

  return result;
}

void sub_1DCBB1310(id a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  else if (!a3)
  {
    MEMORY[0x1EEE66BB8](a1);
  }
}

uint64_t sub_1DCBB1358(uint64_t a1)
{
  v3 = type metadata accessor for OutputElementContainer();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  OUTLINED_FUNCTION_16();
  v10 = (v9 - v8);
  if (qword_1EDE4EBA8 != -1)
  {
    OUTLINED_FUNCTION_14_7();
  }

  v11 = unk_1EDE4EBB8;
  *v10 = qword_1EDE4EBB0;
  v10[1] = v11;
  v12 = MEMORY[0x1E69E7CC0];
  v10[2] = 0;
  v10[3] = v12;
  v10[4] = v12;
  v13 = v3[8];
  type metadata accessor for ResponseComponents(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  OUTLINED_FUNCTION_30_5(v10 + v3[9]);
  *(v10 + v18) = 0;
  *(v10 + v3[11]) = 0;
  v19 = (v10 + v3[12]);
  *v19 = 0;
  v19[1] = 0;
  v19[2] = 0;
  v20 = (v10 + v3[13]);
  *v20 = 0;
  v20[1] = 0;
  *(v10 + v3[14]) = 0;
  sub_1DCBB5E24();
  *(v1 + 16) = a1;

  return v1;
}

void sub_1DCBB1498(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6, uint64_t a7)
{
  LODWORD(v127) = a4;
  v126 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1820, &qword_1DD0E0F88);
  v14 = OUTLINED_FUNCTION_20_0(v13);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14, v17);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v20, v21);
  v122 = v120 - v22;
  v124 = type metadata accessor for ResponseComponents(0);
  v23 = OUTLINED_FUNCTION_2(v124);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23, v26);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_24_1();
  MEMORY[0x1EEE9AC00](v27, v28);
  v125 = v120 - v29;
  v128 = type metadata accessor for PresentationElements.PresentationElementsBase(0);
  v30 = OUTLINED_FUNCTION_2(v128);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30, v33);
  OUTLINED_FUNCTION_16();
  v137 = (v35 - v34);
  v36 = type metadata accessor for PresentationElements(0);
  v37 = OUTLINED_FUNCTION_20_0(v36);
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v37, v40);
  OUTLINED_FUNCTION_16();
  v43 = v42 - v41;
  v45 = *a1;
  v44 = a1[1];
  v46 = (v7 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData);
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v47 = v46[1];
  *v46 = v45;
  v46[1] = v44;

  if (a6)
  {
    v48 = (v46 + *(type metadata accessor for OutputElementContainer() + 52));
    v50 = *v48;
    v49 = v48[1];
    *v48 = a6;
    v48[1] = a7;
    sub_1DD0DCF8C();
  }

  if (a5)
  {
    v51 = 1;
  }

  else
  {
    v51 = *(v46 + *(type metadata accessor for OutputElementContainer() + 56));
  }

  v52 = type metadata accessor for OutputElementContainer();
  v53 = v52;
  *(v46 + v52[14]) = v51;
  v54 = v52[10];
  if (v126)
  {
    v55 = 1;
  }

  else
  {
    v55 = *(v46 + v54);
  }

  *(v46 + v54) = v55;
  v56 = v52[11];
  if (v127)
  {
    v57 = 1;
  }

  else
  {
    v57 = *(v46 + v56);
  }

  *(v46 + v56) = v57;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v58 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v58, qword_1EDE57E00);
  sub_1DCBB5D20();
  v59 = sub_1DD0DD8EC();
  v60 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = v43;
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *&v133 = v63;
    *v62 = 136315138;
    v64 = sub_1DCE55DC0();
    v127 = a2;
    v65 = v53;
    v67 = v66;
    OUTLINED_FUNCTION_11_14();
    sub_1DCBB5CC8(v61, v68);
    v69 = sub_1DCB10E9C(v64, v67, &v133);
    v53 = v65;

    *(v62 + 4) = v69;
    _os_log_impl(&dword_1DCAFC000, v59, v60, "Registering dialog of type %s", v62, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  else
  {

    OUTLINED_FUNCTION_11_14();
    sub_1DCBB5CC8(v43, v70);
  }

  v71 = v137;
  sub_1DCBB5D20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v86 = *v71;
      if (sub_1DCB08B14(v46[4]) || sub_1DCB08B14(v46[3]))
      {
        sub_1DCBB5C20();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        *v88 = v87 + 89;
        v88[1] = 0x80000001DD1125D0;
        swift_willThrow();
      }

      else
      {
        v90 = v46[2];
        if (v90)
        {
          [v90 append_];
        }

        else
        {
          v46[2] = v86;
        }
      }

      return;
    case 2u:
      OUTLINED_FUNCTION_9_4();
      v76 = v125;
      sub_1DCBB5E24();
      if (sub_1DCB08B14(v46[4]) || sub_1DCB08B14(v46[3]) || v46[2])
      {
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        v79 = v78 + 116;
LABEL_24:
        *v77 = v79;
        v77[1] = v71;
        swift_willThrow();
        v80 = OUTLINED_FUNCTION_5_6();
        sub_1DCBB5CC8(v80, v81);
        return;
      }

      v91 = v53[9];
      v71 = &unk_1ECCA1830;
      sub_1DCB8878C();
      v92 = *(&v133 + 1);
      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v93, v94, v95);
      if (v92)
      {
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        goto LABEL_24;
      }

      v103 = v46 + v53[8];
      v104 = v122;
      sub_1DCB8878C();
      v105 = v124;
      if (__swift_getEnumTagSinglePayload(v104, 1, v124) != 1)
      {
        OUTLINED_FUNCTION_9_4();
        v114 = v120[1];
        sub_1DCBB5E24();
        *&v129 = MEMORY[0x1E69E7CC0];
        if (*v114)
        {

          sub_1DCBB91B4(v115);
        }

        if (*v76)
        {

          sub_1DCBB91B4(v116);
        }

        v117 = v121;
        *(v121 + 24) = 0u;
        *(v117 + 40) = 0u;
        *(v117 + 56) = 0u;
        *(v117 + 72) = 0u;
        *(v117 + 88) = 0u;
        *(v117 + 104) = 0u;
        *(v117 + 8) = 0u;
        v118 = *(v105 + 36);
        sub_1DD0DCC3C();
      }

      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v106, v107, v108);
      sub_1DCBB5D20();
      OUTLINED_FUNCTION_40_1();
      __swift_storeEnumTagSinglePayload(v109, v110, v111, v105);
      OUTLINED_FUNCTION_22_6();
      v112 = v53[8];
      sub_1DCBB5D78();
      swift_endAccess();
      v113 = OUTLINED_FUNCTION_5_6();
      sub_1DCBB5CC8(v113, v119);
      return;
    case 3u:
      v82 = v71[1];
      v133 = *v71;
      v134 = v82;
      v135 = v71[2];
      v136 = *(v71 + 6);
      if (sub_1DCB08B14(v46[4]) || sub_1DCB08B14(v46[3]) || v46[2])
      {
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        v85 = v84 + 116;
LABEL_29:
        *v83 = v85;
        v83[1] = v71;
        swift_willThrow();
        sub_1DCBB5C74(&v133);
        return;
      }

      v71 = &qword_1ECCA1820;
      v96 = v46 + v53[8];
      v97 = v123;
      sub_1DCB8878C();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v97, 1, v124);
      OUTLINED_FUNCTION_43_2();
      sub_1DCB0E9D8(v99, v100, v101);
      if (EnumTagSinglePayload != 1)
      {
        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        goto LABEL_29;
      }

      v129 = v133;
      v130 = v134;
      v131 = v135;
      v132 = v136;
      swift_beginAccess();
      v102 = v53[9];
      sub_1DCBB5D78();
      swift_endAccess();
      return;
    default:
      v73 = *v71;
      v72 = *(v71 + 1);
      if (v46[2])
      {

        OUTLINED_FUNCTION_39_2();
        OUTLINED_FUNCTION_34();
        OUTLINED_FUNCTION_3_13();
        *v75 = v74 + 89;
        v75[1] = v72;
        swift_willThrow();
      }

      else
      {
        OUTLINED_FUNCTION_22_6();
        v89 = v73;
        MEMORY[0x1E12A6920]();
        sub_1DCBBF95C(*((v46[4] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_1DD0DE3AC();
        sub_1DCB673E0(v72);
        swift_endAccess();
      }

      return;
  }
}

uint64_t sub_1DCBB1E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1DCB8878C();
  if (v11)
  {
    sub_1DCAFF9E8(&v10, v12);
  }

  else
  {
    sub_1DCB8878C();
  }

  sub_1DCBB5D78();
  sub_1DCB8878C();
  if (v11)
  {
    sub_1DCAFF9E8(&v10, v12);
  }

  else
  {
    sub_1DCB8878C();
    if (v11)
    {
      sub_1DCB0E9D8(&v10, &qword_1ECCA1838, &unk_1DD0FC960);
    }
  }

  sub_1DCBB5D78();
  if (*(a2 + 96))
  {
    v6 = *(a2 + 88);
    v7 = *(a2 + 96);
  }

  else
  {
    v6 = *(a3 + 88);
    v7 = *(a3 + 96);
  }

  v8 = *(a1 + 96);

  *(a1 + 88) = v6;
  *(a1 + 96) = v7;
  return result;
}

uint64_t sub_1DCBB1FC8(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
    OUTLINED_FUNCTION_47_2();
    swift_beginAccess();
    v7 = (v6 + *(type metadata accessor for OutputElementContainer() + 52));
    v8 = *v7;
    v9 = v7[1];
    *v7 = a2;
    v7[1] = a3;
    sub_1DD0DCF8C();
  }

  if (a1)
  {
    v10 = 1;
  }

  else
  {
    v11 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
    swift_beginAccess();
    v10 = *(v11 + *(type metadata accessor for OutputElementContainer() + 40));
  }

  v12 = v3 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  result = type metadata accessor for OutputElementContainer();
  *(v12 + *(result + 40)) = v10;
  return result;
}

uint64_t sub_1DCBB20BC(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  OUTLINED_FUNCTION_47_2();
  swift_beginAccess();
  v6 = (v5 + *(type metadata accessor for OutputElementContainer() + 48));
  v7 = *v6;
  v8 = v6[1];
  v9 = v6[2];
  *v6 = v3;
  v6[1] = v2;
  v6[2] = v4;

  return sub_1DCBB5B64(v7, v8);
}

uint64_t sub_1DCBB2154()
{
  OUTLINED_FUNCTION_42();
  v1[20] = v2;
  v1[21] = v0;
  v1[22] = *v0;
  v3 = type metadata accessor for OutputElementContainer();
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[23] = OUTLINED_FUNCTION_38();
  v6 = type metadata accessor for OutputGenerationManifest();
  OUTLINED_FUNCTION_20_0(v6);
  v8 = *(v7 + 64);
  v1[24] = OUTLINED_FUNCTION_38();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[25] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DCBB2240()
{
  OUTLINED_FUNCTION_41();
  v16 = v0;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v1 = sub_1DD0DD8FC();
  v0[26] = __swift_project_value_buffer(v1, qword_1EDE57E00);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[22];
    v5 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v5 = 136315394;
    v6 = sub_1DD0DF2AC();
    v8 = sub_1DCB10E9C(v6, v7, &v15);

    *(v5 + 4) = v8;
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_1DCB10E9C(0x4F656375646F7270, 0xEF29287475707475, &v15);
    _os_log_impl(&dword_1DCAFC000, v2, v3, "%s %s", v5, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
    OUTLINED_FUNCTION_18();
    MEMORY[0x1E12A8390]();
  }

  swift_task_alloc();
  OUTLINED_FUNCTION_45();
  v0[27] = v9;
  *v9 = v10;
  v9[1] = sub_1DCBB2428;
  v11 = v0[25];
  v12 = v0[21];
  OUTLINED_FUNCTION_48();

  return sub_1DCBB3498();
}

uint64_t sub_1DCBB2428()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 216);
  v2 = *v0;
  OUTLINED_FUNCTION_27();
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCBB2510()
{
  v10 = v0;
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  v4 = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  v0[28] = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  v5 = (v3 + v4);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  v9[0] = v6;
  v9[1] = v7;
  v8 = swift_task_alloc();
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;

  OutputGenerationManifest.init(dialogPhase:_:)(v9, v1);
}

uint64_t sub_1DCBB2794()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_27();
  *v4 = v3;
  v5 = *(v2 + 256);
  *v4 = *v1;
  *(v3 + 264) = v0;

  v6 = *(v2 + 184);
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  OUTLINED_FUNCTION_10_10();
  sub_1DCBB5CC8(v6, v7);
  if (v0)
  {
    v8 = sub_1DCBB2B6C;
  }

  else
  {
    v8 = sub_1DCBB28D0;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1DCBB28D0()
{
  OUTLINED_FUNCTION_41();
  if (*(v0 + 120))
  {
    v1 = *(v0 + 208);
    sub_1DCAFF9E8((v0 + 96), v0 + 56);
    v2 = sub_1DD0DD8EC();
    v3 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v3))
    {
      v4 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v4);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v5, v6, "Output built from accumulated data. Returning");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v7 = *(v0 + 192);
    v8 = *(v0 + 160);

    OUTLINED_FUNCTION_0_5();
    sub_1DCBB5CC8(v7, v9);
    sub_1DCAFF9E8((v0 + 56), v8);
    goto LABEL_9;
  }

  result = sub_1DCB0E9D8(v0 + 96, &qword_1ECCA1810, &dword_1DD0E0F78);
  v11 = *(v0 + 240);
  v12 = *(v0 + 248) + 1;
  *(v0 + 248) = v12;
  if (v12 == v11)
  {
    v13 = *(v0 + 208);
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v15))
    {
      v16 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v16);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v17, v18, "No pattern result and no NL Context updates. No Output will be produced");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v7 = *(v0 + 192);
    v19 = *(v0 + 160);

    OUTLINED_FUNCTION_0_5();
    sub_1DCBB5CC8(v7, v20);
    *v19 = 0u;
    *(v19 + 16) = 0u;
    *(v19 + 32) = 0;
LABEL_9:
    OUTLINED_FUNCTION_25_3();
    sub_1DCB0E9D8(v7, &unk_1ECCA3270, &qword_1DD0E0F70);
    sub_1DCBB3AD8();

    OUTLINED_FUNCTION_29();
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X1, X16 }
  }

  v23 = *(v0 + 232);
  if (v12 < *(v23 + 16))
  {
    v24 = *(v0 + 224);
    v25 = *(v0 + 184);
    v26 = *(v0 + 168);
    sub_1DCB17CA0(v23 + 40 * v12 + 32, v0 + 16);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_8_8();
    OUTLINED_FUNCTION_32();
    v35 = v28 + *v28;
    v30 = *(v29 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_45();
    *(v0 + 256) = v31;
    *v31 = v32;
    OUTLINED_FUNCTION_4_5();
    OUTLINED_FUNCTION_48();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DCBB2B6C()
{
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_0_5();
  sub_1DCBB5CC8(v1, v3);
  sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCBB3AD8();

  OUTLINED_FUNCTION_29();
  v5 = *(v2 + 264);

  return v4();
}

void sub_1DCBB2C10()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1818, &qword_1DD0E0F80);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8, v2);
  v4[8] = v4 - v3;
  sub_1DD0DCC3C();
}

uint64_t sub_1DCBB3498()
{
  OUTLINED_FUNCTION_42();
  v1[5] = v2;
  v1[6] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCAC000, &unk_1DD0E0F60);
  OUTLINED_FUNCTION_20_0(v3);
  v5 = *(v4 + 64);
  v1[7] = OUTLINED_FUNCTION_38();
  v6 = sub_1DD0DB6EC();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64);
  v1[10] = OUTLINED_FUNCTION_38();
  v9 = type metadata accessor for NLContextUpdate();
  v1[11] = v9;
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  v1[12] = OUTLINED_FUNCTION_38();
  v12 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

void sub_1DCBB3594()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[6] + OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  swift_beginAccess();
  v2 = type metadata accessor for OutputElementContainer();
  v3 = v2;
  if (*(v1 + *(v2 + 52)) || *(v1 + *(v2 + 48) + 8))
  {
    v4 = v0[12];
    NLContextUpdate.init()(v4);
    v5 = (v1 + *(v3 + 48));
    v6 = *v5;
    v7 = v5[1];
    v8 = v5[2];
    v9 = v4[31];
    v10 = v4[32];
    v11 = v4[33];
    v4[31] = *v5;
    v4[32] = v7;
    v4[33] = v8;
    sub_1DCB599D8(v6, v7);
    sub_1DCBB5B64(v9, v10);
    v12 = (v1 + *(v3 + 52));
    v13 = *v12;
    v0[13] = *v12;
    if (v13)
    {
      v0[14] = v12[1];
      sub_1DD0DCF8C();
    }

    v14 = v0[7];
    v15 = v0[8];
    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    sub_1DCB0E9D8(v0[7], &qword_1ECCAC000, &unk_1DD0E0F60);
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_40_1();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v3);
    OUTLINED_FUNCTION_13_3();
  }

  else
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v23 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v23, qword_1EDE57E00);
    v24 = sub_1DD0DD8EC();
    v25 = sub_1DD0DE6DC();
    if (OUTLINED_FUNCTION_23(v25))
    {
      v26 = OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_46(v26);
      OUTLINED_FUNCTION_12_2(&dword_1DCAFC000, v27, v28, "No NL context data provided. No context update will be generated.");
      OUTLINED_FUNCTION_18();
      MEMORY[0x1E12A8390]();
    }

    v29 = v0[11];
    v30 = v0[5];

    OUTLINED_FUNCTION_31();
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v29);
  }

  v34 = v0[12];
  v35 = v0[10];
  v36 = v0[7];

  OUTLINED_FUNCTION_29();
  OUTLINED_FUNCTION_48();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1DCBB3864()
{
  OUTLINED_FUNCTION_42();
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 104);
  v4 = *v0;
  OUTLINED_FUNCTION_27();
  *v5 = v4;

  v6 = OUTLINED_FUNCTION_33_1();
  sub_1DCB370A4(v6);
  v7 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1DCBB397C()
{
  OUTLINED_FUNCTION_41();
  v1 = v0[7];
  v2 = v0[8];
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_1DCB0E9D8(v1, &qword_1ECCAC000, &unk_1DD0E0F60);
  }

  else
  {
    v3 = v0[12];
    v5 = v0[9];
    v4 = v0[10];
    v6 = *(v5 + 32);
    v5 += 32;
    OUTLINED_FUNCTION_43_2();
    v6();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA1800, &qword_1DD0F9820);
    v7 = *(v5 + 40);
    v8 = (*(v5 + 48) + 32) & ~*(v5 + 48);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1DD0E07C0;
    (v6)(v1 + v8, v4, v2);
    v9 = *(v3 + 216);

    *(v3 + 216) = v1;
  }

  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v1);
  OUTLINED_FUNCTION_13_3();
  v13 = v0[12];
  v14 = v0[10];
  v15 = v0[7];

  OUTLINED_FUNCTION_29();

  return v16();
}

uint64_t sub_1DCBB3AD8()
{
  v1 = type metadata accessor for OutputElementContainer();
  v2 = OUTLINED_FUNCTION_2(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  OUTLINED_FUNCTION_16();
  v8 = (v7 - v6);
  if (qword_1EDE4EBA8 != -1)
  {
    OUTLINED_FUNCTION_14_7();
  }

  v9 = unk_1EDE4EBB8;
  *v8 = qword_1EDE4EBB0;
  v8[1] = v9;
  v10 = MEMORY[0x1E69E7CC0];
  v8[2] = 0;
  v8[3] = v10;
  v8[4] = v10;
  v11 = v1[8];
  type metadata accessor for ResponseComponents(0);
  OUTLINED_FUNCTION_31();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  OUTLINED_FUNCTION_30_5(v8 + v1[9]);
  *(v8 + v16) = 0;
  *(v8 + v1[11]) = 0;
  v17 = (v8 + v1[12]);
  *v17 = 0;
  v17[1] = 0;
  v17[2] = 0;
  v18 = (v8 + v1[13]);
  *v18 = 0;
  v18[1] = 0;
  *(v8 + v1[14]) = 0;
  v19 = OBJC_IVAR____TtC11SiriKitFlow26AccumulatingOutputProducer_internalData;
  swift_beginAccess();

  sub_1DCBB5AAC(v8, v0 + v19);
  return swift_endAccess();
}

uint64_t sub_1DCBB3C18(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  MEMORY[0x1E12A6780](a1, a2);
  MEMORY[0x1E12A6780](10535, 0xE200000000000000);
  return 0x6C6167656C6C692ELL;
}

uint64_t sub_1DCBB3CC4()
{
  v1 = v0[2];

  OUTLINED_FUNCTION_10_10();
  sub_1DCBB5CC8(v0 + v2, v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DCBB3E7C()
{
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_36_6();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB3EF0()
{
  OUTLINED_FUNCTION_49_0();
  v0(v1);
  OUTLINED_FUNCTION_17_6();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4018()
{
  OUTLINED_FUNCTION_21();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB40CC()
{
  OUTLINED_FUNCTION_49_0();
  v0(v3, v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4138(uint64_t a1)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB41B0()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4234()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB42B0()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4344()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4420()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB44F4()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB45C0()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4664()
{
  sub_1DD0DF1DC();
  OUTLINED_FUNCTION_36_6();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB46D4()
{
  OUTLINED_FUNCTION_35_4();
  v0(v1);
  OUTLINED_FUNCTION_17_6();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB471C()
{
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_28_1();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB47B4()
{
  OUTLINED_FUNCTION_26_0();
  sub_1DD0DDF2C();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4870()
{
  OUTLINED_FUNCTION_35_4();
  v0(v3, v1);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB48C8()
{
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB492C()
{
  v1 = OUTLINED_FUNCTION_35_4();
  v0(v1);
  OUTLINED_FUNCTION_17_6();

  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB4978(uint64_t a1, uint64_t a2)
{
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](a2);
  return sub_1DD0DF20C();
}

uint64_t sub_1DCBB49BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1DCBB4A14(uint64_t a1)
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

uint64_t type metadata accessor for AccumulatingOutputProducer()
{
  result = qword_1ECCA1700;
  if (!qword_1ECCA1700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DCBB4ABC()
{
  result = type metadata accessor for OutputElementContainer();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCBB4C5C(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

uint64_t sub_1DCBB4C80(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

uint64_t sub_1DCBB4CA0@<X0>(uint64_t *a1@<X8>)
{
  result = j__OUTLINED_FUNCTION_5_44();
  *a1 = result;
  return result;
}

uint64_t sub_1DCBB4CD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C4C(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D04@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCE06FA8(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D34@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C54(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4D6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB4C5C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCBB4DA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB4C80(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t sub_1DCBB4DEC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4C98(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB4E5C()
{
  v1 = OUTLINED_FUNCTION_7_9();
  result = nullsub_1(v1);
  *v0 = result;
  return result;
}

uint64_t sub_1DCBB4E90()
{
  OUTLINED_FUNCTION_7_9();
  result = sub_1DCF12A38();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCBB4ED8()
{
  sub_1DD0DDFBC();
  sub_1DD0DF1DC();
  sub_1DD0DDF2C();
  v0 = sub_1DD0DF20C();

  return v0;
}

uint64_t sub_1DCBB4F4C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DD0DDF8C();

  *a2 = v5;
  return result;
}

uint64_t sub_1DCBB4F94()
{
  OUTLINED_FUNCTION_7_9();
  result = sub_1DCDADD08();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1DCBB4FCC(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46300, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DCBB5038(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46300, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DCBB50A4(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1DCBB5110@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DCBB5144(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_1DCBB5160@<X0>(_DWORD *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_1DCBB518C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DCBB4A14(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1DCBB51B4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DCC6106C();
}

uint64_t sub_1DCBB51D4(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1DCBB5240(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1DCBB52AC(void *a1, uint64_t a2)
{
  v4 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1DCBB5368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1DCBB53E4()
{
  v2 = *v0;
  sub_1DD0DF1DC();
  sub_1DD0DDF1C();
  return sub_1DD0DF20C();
}

void *sub_1DCBB5444@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1DCBB54E4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DCBB55BC(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1ECCA1898, type metadata accessor for INPersonRelationship);
  v3 = sub_1DCBB54E4(&unk_1ECCA18A0, type metadata accessor for INPersonRelationship);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DCBB5678(uint64_t a1)
{
  v2 = sub_1DCBB54E4(&qword_1EDE46198, type metadata accessor for INPersonHandleLabel);
  v3 = sub_1DCBB54E4(&qword_1ECCA18B0, type metadata accessor for INPersonHandleLabel);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1DCBB5734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DCBB54E4(&qword_1EDE462F8, type metadata accessor for AFLocationServiceError);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

unint64_t sub_1DCBB5980()
{
  result = qword_1EDE46318;
  if (!qword_1EDE46318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE46318);
  }

  return result;
}

uint64_t sub_1DCBB5AAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OutputElementContainer();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_1DCBB5B58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1DCE057C8();
}

uint64_t sub_1DCBB5B64(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1DCBB5BA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1DCBB2C10();
}

uint64_t sub_1DCBB5BB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DCBB5C20()
{
  result = qword_1ECCA1828;
  if (!qword_1ECCA1828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA1828);
  }

  return result;
}

uint64_t sub_1DCBB5CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_2(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1DCBB5D20()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

uint64_t sub_1DCBB5D78()
{
  OUTLINED_FUNCTION_21();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_33_1();
  v7(v6);
  return v0;
}

uint64_t sub_1DCBB5DD0()
{
  sub_1DD0DDFBC();
  sub_1DD0DDF2C();
}

uint64_t sub_1DCBB5E24()
{
  OUTLINED_FUNCTION_21();
  v2 = v1(0);
  OUTLINED_FUNCTION_2(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return v0;
}

uint64_t sub_1DCBB5ECC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBB5EEC(uint64_t result, int a2, int a3)
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

uint64_t sub_1DCBB5F34(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DCBB5F54(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void *assignWithCopy for DialogPhase(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a1[1];
  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for DialogPhase(uint64_t a1, int a2)
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

uint64_t sub_1DCBB6200()
{
  OUTLINED_FUNCTION_21();

  result = sub_1DD0DDF9C();
  *v0 = 0;
  return result;
}

uint64_t sub_1DCBB6274()
{
  OUTLINED_FUNCTION_21();

  v2 = sub_1DD0DDFAC();
  *v0 = 0;
  return v2 & 1;
}

uint64_t sub_1DCBB62F0()
{
  sub_1DD0DDFBC();
  v0 = sub_1DD0DDF8C();

  return v0;
}

uint64_t sub_1DCBB6328()
{
  v0 = sub_1DD0DDFBC();
  v1 = MEMORY[0x1E12A6810](v0);

  return v1;
}

Swift::String_optional __swiftcall AceObject.serializeToBase64()()
{
  v24[1] = *MEMORY[0x1E69E9840];
  v1 = [v0 dictionary];
  if (!v1)
  {
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v2 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v2, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DCAFC000, v2, v12, "Failed to serialize command to dictionary", v13, 2u);
      MEMORY[0x1E12A8390](v13, -1, -1);
    }

    goto LABEL_13;
  }

  v2 = v1;
  v24[0] = 0;
  v3 = [objc_opt_self() dataWithPropertyList:v1 format:200 options:0 error:v24];
  v4 = v24[0];
  if (!v3)
  {
    v14 = v4;
    v15 = sub_1DD0DAE0C();

    swift_willThrow();
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v16 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v16, qword_1EDE57E00);
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1DCAFC000, v17, v18, "Failed to serialize command to plist", v19, 2u);
      MEMORY[0x1E12A8390](v19, -1, -1);
    }

LABEL_13:
    v8 = 0;
    v10 = 0;
    goto LABEL_14;
  }

  v5 = sub_1DD0DAF2C();
  v7 = v6;

  v8 = sub_1DD0DAF0C();
  v10 = v9;
  sub_1DCB21A14(v5, v7);

LABEL_14:
  v20 = *MEMORY[0x1E69E9840];
  v21 = v8;
  v22 = v10;
  result.value._object = v22;
  result.value._countAndFlagsBits = v21;
  return result;
}

double sub_1DCBB665C()
{
  OUTLINED_FUNCTION_4();
  v1 = type metadata accessor for AceOutput();
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v2 = v1[7];
  v3 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(&v0[v2], v4, v5, v3);
  v6 = v1[9];
  v7 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&v0[v6], v8, v9, v7);
  v10 = v1[8];
  v11 = *MEMORY[0x1E69D0678];
  v12 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v12);
  (*(v13 + 104))(&v0[v10], v11);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(v16, v14, &unk_1ECCA3280, &unk_1DD0E23D0);
  v0[v1[10]] = 0;
  *v0 = MEMORY[0x1E69E7CC0];
  return OUTLINED_FUNCTION_0_6();
}

double AceOutput.init(commands:flowActivity:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4();
  v5 = type metadata accessor for AceOutput();
  v6 = v5[7];
  v7 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(&v2[v6], v8, v9, v7);
  v10 = v5[9];
  v11 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&v2[v10], v12, v13, v11);
  v14 = v5[8];
  v15 = *MEMORY[0x1E69D0678];
  v16 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v16);
  (*(v17 + 104))(&v2[v14], v15);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v18, &unk_1ECCA3280, &unk_1DD0E23D0);
  v2[v5[10]] = 0;
  *v2 = a1;
  return OUTLINED_FUNCTION_0_6();
}

uint64_t AceOutput.dialogEngineOutput.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x49uLL);
  memcpy(a1, (v1 + 8), 0x49uLL);
  return sub_1DCB41F3C(__dst, &v4);
}

uint64_t AceOutput.dialogActs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_9_5(v6);
  v7 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v0 + 208);

  sub_1DCB41F98(v0);
  if (!v8)
  {
    goto LABEL_4;
  }

  return v8;
}

uint64_t AceOutput.rrEntities.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v4, v5);
  v6 = OUTLINED_FUNCTION_13_4();
  OUTLINED_FUNCTION_9_5(v6);
  v7 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v0, 1, v7) == 1)
  {
    sub_1DCB0E9D8(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = *(v0 + 224);

  sub_1DCB41F98(v0);
  if (!v8)
  {
    goto LABEL_4;
  }

  return v8;
}

uint64_t AceOutput.nlContextUpdate.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for AceOutput();
  return sub_1DCB4F190(v1 + *(v2 + 28), v0, &unk_1ECCA3270, &qword_1DD0E0F70);
}

uint64_t AceOutput.executionSource.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = *(type metadata accessor for AceOutput() + 32);
  v3 = sub_1DD0DD15C();
  v4 = OUTLINED_FUNCTION_2(v3);
  v6 = *(v5 + 16);

  return v6(v0, v1 + v2, v4);
}

uint64_t AceOutput.inAppResponse.getter()
{
  OUTLINED_FUNCTION_4();
  v2 = type metadata accessor for AceOutput();
  return sub_1DCB4F190(v1 + *(v2 + 36), v0, &unk_1ECCAAEC0, &qword_1DD103A40);
}

void *AceOutput.init(commands:nlContextUpdate:dialogEngineOutput:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for AceOutput();
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  v9 = v8[9];
  v10 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(a4 + v9, v11, v12, v10);
  v13 = v8[8];
  v14 = *MEMORY[0x1E69D0678];
  v15 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v15);
  (*(v16 + 104))(a4 + v13, v14);
  *(a4 + 120) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 88) = 0u;
  sub_1DCBB7234(v18, a4 + 88, &unk_1ECCA3280, &unk_1DD0E23D0);
  *(a4 + v8[10]) = 0;
  *a4 = a1;
  sub_1DCBB6C68(a2, a4 + v8[7]);
  return memcpy((a4 + 8), a3, 0x49uLL);
}

uint64_t sub_1DCBB6C68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for NLContextUpdate();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  OUTLINED_FUNCTION_16();
  v14 = v13 - v12;
  NLContextUpdate.init()(v13 - v12);
  v15 = *(v14 + 208);

  *(v14 + 208) = a3;
  v16 = type metadata accessor for AceOutput();
  sub_1DCB46478(v14, &v3[v16[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v7);
  v20 = v16[9];
  v21 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v21);
  v22 = v16[8];
  v23 = *MEMORY[0x1E69D0678];
  v24 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v24);
  (*(v25 + 104))(&v3[v22], v23);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v26, &unk_1ECCA3280, &unk_1DD0E23D0);
  v3[v16[10]] = 0;
  *v3 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v14);
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:rrEntities:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v13, v14);
  v15 = OUTLINED_FUNCTION_14_8();
  v16 = OUTLINED_FUNCTION_2(v15);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  OUTLINED_FUNCTION_16();
  v22 = v21 - v20;
  sub_1DCB4F190(a2, v42, &unk_1ECCA3280, &unk_1DD0E23D0);
  NLContextUpdate.init()(v22);
  v23 = *(v22 + 208);

  *(v22 + 208) = a3;
  v24 = *(v22 + 224);

  *(v22 + 224) = a4;
  sub_1DD0DD70C();
  sub_1DCB0E9D8(a2, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DD0DD72C();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
  sub_1DCBB7234(v5, v22 + *(v15 + 128), &unk_1ECCA73E0, &unk_1DD0F8320);
  v29 = type metadata accessor for AceOutput();
  sub_1DCB46478(v22, &a5[v29[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v15);
  v33 = v29[9];
  v34 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v34);
  v35 = v29[8];
  v36 = *MEMORY[0x1E69D0678];
  v37 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v37);
  (*(v38 + 104))(&a5[v35], v36);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(v42, v39, &unk_1ECCA3280, &unk_1DD0E23D0);
  a5[v29[10]] = 0;
  *a5 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v22);
}

uint64_t AceOutput.init(commands:flowActivity:dialogActs:rrEntities:pegasusConversationContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
  OUTLINED_FUNCTION_20_0(v9);
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v12, v13);
  v14 = OUTLINED_FUNCTION_14_8();
  v15 = OUTLINED_FUNCTION_2(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_16();
  v21 = v20 - v19;
  NLContextUpdate.init()(v20 - v19);
  v22 = *(v21 + 208);

  *(v21 + 208) = a3;
  v23 = *(v21 + 224);

  *(v21 + 224) = a4;
  sub_1DD0DD70C();
  sub_1DD0DD72C();
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  sub_1DCBB7234(v5, v21 + *(v14 + 128), &unk_1ECCA73E0, &unk_1DD0F8320);
  v28 = type metadata accessor for AceOutput();
  sub_1DCB46478(v21, &a5[v28[7]]);
  OUTLINED_FUNCTION_40_1();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v14);
  v32 = v28[9];
  v33 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(&a5[v32], v34, v35, v33);
  v36 = v28[8];
  v37 = *MEMORY[0x1E69D0678];
  v38 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v38);
  (*(v39 + 104))(&a5[v36], v37);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v40, &unk_1ECCA3280, &unk_1DD0E23D0);
  a5[v28[10]] = 0;
  *a5 = a1;
  OUTLINED_FUNCTION_0_6();
  return sub_1DCB41F98(v21);
}

uint64_t sub_1DCBB7234(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = OUTLINED_FUNCTION_15_6(a1, a2, a3, a4);
  OUTLINED_FUNCTION_1_3(v6);
  (*(v7 + 40))(v4, v5);
  return v4;
}

double AceOutput.init(commands:flowActivity:nlContextUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_4();
  v7 = type metadata accessor for AceOutput();
  v8 = v7[9];
  v9 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_5_7(v9);
  v10 = v7[8];
  v11 = *MEMORY[0x1E69D0678];
  v12 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v12);
  (*(v13 + 104))(&v3[v10], v11);
  OUTLINED_FUNCTION_2_16();
  sub_1DCBB7234(a2, v14, &unk_1ECCA3280, &unk_1DD0E23D0);
  v3[v7[10]] = 0;
  *v3 = a1;
  sub_1DCBB6C68(a3, &v3[v7[7]]);
  return OUTLINED_FUNCTION_0_6();
}

uint64_t *assignWithCopy for AceOutput(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = *a1;
  *a1 = *a2;

  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v99 = a2[9];
  v101 = *(a2 + 80);
  sub_1DCB42788(v6, v7, v8, v9, v10, v11, v12, v13, v99, v101);
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1[5];
  v19 = a1[6];
  v20 = a1[7];
  v21 = a1[8];
  v22 = a1[9];
  v23 = *(a1 + 80);
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = v8;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v11;
  v24 = a2;
  a1[7] = v12;
  a1[8] = v13;
  a1[9] = v99;
  *(a1 + 80) = v101;
  sub_1DCB42C24(v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
  v25 = a2[14];
  if (a1[14])
  {
    v26 = a1 + 11;
    if (v25)
    {
      __swift_assign_boxed_opaque_existential_1(v26, a2 + 11);
      goto LABEL_8;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  else if (v25)
  {
    a1[14] = v25;
    a1[15] = a2[15];
    (**(v25 - 8))((a1 + 11), (a2 + 11));
    goto LABEL_8;
  }

  v27 = *(a2 + 11);
  v28 = *(a2 + 13);
  a1[15] = a2[15];
  *(a1 + 13) = v28;
  *(a1 + 11) = v27;
LABEL_8:
  v29 = a3;
  v30 = a3[7];
  v31 = a1 + v30;
  v32 = a2 + v30;
  v33 = type metadata accessor for NLContextUpdate();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, v33);
  v35 = __swift_getEnumTagSinglePayload(v32, 1, v33);
  if (!EnumTagSinglePayload)
  {
    if (v35)
    {
      sub_1DCB41F98(v31);
      goto LABEL_14;
    }

    *v31 = *v32;
    v40 = *(v31 + 8);
    *(v31 + 8) = *(v32 + 8);

    v41 = *(v31 + 16);
    *(v31 + 16) = *(v32 + 16);

    v42 = *(v31 + 24);
    *(v31 + 24) = *(v32 + 24);

    *(v31 + 32) = *(v32 + 32);
    v43 = *(v31 + 40);
    *(v31 + 40) = *(v32 + 40);

    v44 = *(v31 + 48);
    *(v31 + 48) = *(v32 + 48);

    v45 = *(v31 + 56);
    *(v31 + 56) = *(v32 + 56);

    v46 = *(v32 + 64);
    *(v31 + 72) = *(v32 + 72);
    *(v31 + 64) = v46;
    v47 = *(v31 + 80);
    *(v31 + 80) = *(v32 + 80);

    *(v31 + 88) = *(v32 + 88);
    v48 = *(v31 + 96);
    *(v31 + 96) = *(v32 + 96);

    v49 = *(v31 + 104);
    *(v31 + 104) = *(v32 + 104);

    *(v31 + 112) = *(v32 + 112);
    v50 = *(v31 + 120);
    *(v31 + 120) = *(v32 + 120);

    v51 = *(v31 + 128);
    v52 = *(v32 + 128);
    *(v31 + 128) = v52;
    v53 = v52;

    *(v31 + 136) = *(v32 + 136);
    v54 = *(v31 + 144);
    v55 = *(v32 + 144);
    *(v31 + 144) = v55;
    v56 = v55;

    v57 = *(v31 + 152);
    *(v31 + 152) = *(v32 + 152);

    v58 = *(v31 + 160);
    *(v31 + 160) = *(v32 + 160);

    v59 = *(v31 + 168);
    *(v31 + 168) = *(v32 + 168);

    *(v31 + 176) = *(v32 + 176);
    *(v31 + 184) = *(v32 + 184);
    v60 = *(v31 + 192);
    *(v31 + 192) = *(v32 + 192);

    *(v31 + 200) = *(v32 + 200);
    v61 = *(v31 + 208);
    *(v31 + 208) = *(v32 + 208);

    v62 = *(v31 + 216);
    *(v31 + 216) = *(v32 + 216);

    v63 = *(v31 + 224);
    *(v31 + 224) = *(v32 + 224);

    v64 = *(v31 + 232);
    *(v31 + 232) = *(v32 + 232);

    v65 = *(v31 + 240);
    *(v31 + 240) = *(v32 + 240);

    v66 = *(v32 + 256);
    if (*(v31 + 256))
    {
      if (v66)
      {
        *(v31 + 248) = *(v32 + 248);
        *(v31 + 256) = *(v32 + 256);

        v67 = *(v31 + 264);
        *(v31 + 264) = *(v32 + 264);
      }

      else
      {
        sub_1DCBB8090(v31 + 248);
        v75 = *(v32 + 264);
        *(v31 + 248) = *(v32 + 248);
        *(v31 + 264) = v75;
      }
    }

    else if (v66)
    {
      *(v31 + 248) = *(v32 + 248);
      *(v31 + 256) = *(v32 + 256);
      *(v31 + 264) = *(v32 + 264);
    }

    else
    {
      v76 = *(v32 + 248);
      *(v31 + 264) = *(v32 + 264);
      *(v31 + 248) = v76;
    }

    *(v31 + 272) = *(v32 + 272);
    v77 = *(v31 + 280);
    *(v31 + 280) = *(v32 + 280);

    v78 = v33[32];
    v79 = sub_1DD0DD72C();
    v80 = __swift_getEnumTagSinglePayload(v31 + v78, 1, v79);
    v81 = __swift_getEnumTagSinglePayload(v32 + v78, 1, v79);
    if (v80)
    {
      if (!v81)
      {
        (*(*(v79 - 8) + 16))(v31 + v78, v32 + v78, v79);
        __swift_storeEnumTagSinglePayload(v31 + v78, 0, 1, v79);
LABEL_33:
        *(v31 + v33[33]) = *(v32 + v33[33]);
        *(v31 + v33[34]) = *(v32 + v33[34]);
        v84 = v33[35];
        v85 = (v31 + v84);
        v86 = (v32 + v84);
        *v85 = *v86;
        v87 = v85[1];
        v85[1] = v86[1];

        goto LABEL_34;
      }
    }

    else
    {
      v82 = *(v79 - 8);
      if (!v81)
      {
        (*(v82 + 24))(v31 + v78, v32 + v78, v79);
        goto LABEL_33;
      }

      (*(v82 + 8))(v31 + v78, v79);
    }

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((v31 + v78), (v32 + v78), *(*(v83 - 8) + 64));
    goto LABEL_33;
  }

  if (v35)
  {
LABEL_14:
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v31, v32, *(*(v39 - 8) + 64));
    goto LABEL_34;
  }

  *v31 = *v32;
  *(v31 + 8) = *(v32 + 8);
  *(v31 + 16) = *(v32 + 16);
  *(v31 + 24) = *(v32 + 24);
  *(v31 + 32) = *(v32 + 32);
  *(v31 + 40) = *(v32 + 40);
  *(v31 + 48) = *(v32 + 48);
  *(v31 + 56) = *(v32 + 56);
  v36 = *(v32 + 64);
  *(v31 + 72) = *(v32 + 72);
  *(v31 + 64) = v36;
  *(v31 + 80) = *(v32 + 80);
  *(v31 + 88) = *(v32 + 88);
  *(v31 + 96) = *(v32 + 96);
  *(v31 + 104) = *(v32 + 104);
  *(v31 + 112) = *(v32 + 112);
  *(v31 + 120) = *(v32 + 120);
  v98 = *(v32 + 128);
  *(v31 + 128) = v98;
  *(v31 + 136) = *(v32 + 136);
  v97 = *(v32 + 144);
  *(v31 + 144) = v97;
  *(v31 + 152) = *(v32 + 152);
  *(v31 + 160) = *(v32 + 160);
  *(v31 + 168) = *(v32 + 168);
  *(v31 + 176) = *(v32 + 176);
  *(v31 + 184) = *(v32 + 184);
  *(v31 + 192) = *(v32 + 192);
  *(v31 + 200) = *(v32 + 200);
  *(v31 + 208) = *(v32 + 208);
  *(v31 + 216) = *(v32 + 216);
  *(v31 + 224) = *(v32 + 224);
  *(v31 + 232) = *(v32 + 232);
  *(v31 + 240) = *(v32 + 240);
  v100 = *(v32 + 256);

  v37 = v98;
  v38 = v97;

  if (v100)
  {
    *(v31 + 248) = *(v32 + 248);
    *(v31 + 256) = *(v32 + 256);
    *(v31 + 264) = *(v32 + 264);
  }

  else
  {
    v68 = *(v32 + 248);
    *(v31 + 264) = *(v32 + 264);
    *(v31 + 248) = v68;
  }

  *(v31 + 272) = *(v32 + 272);
  *(v31 + 280) = *(v32 + 280);
  v69 = v33[32];
  v70 = sub_1DD0DD72C();

  v24 = a2;
  v29 = a3;
  if (__swift_getEnumTagSinglePayload(v32 + v69, 1, v70))
  {
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((v31 + v69), (v32 + v69), *(*(v71 - 8) + 64));
  }

  else
  {
    (*(*(v70 - 8) + 16))(v31 + v69, v32 + v69, v70);
    __swift_storeEnumTagSinglePayload(v31 + v69, 0, 1, v70);
  }

  *(v31 + v33[33]) = *(v32 + v33[33]);
  *(v31 + v33[34]) = *(v32 + v33[34]);
  v72 = v33[35];
  v73 = (v31 + v72);
  v74 = (v32 + v72);
  *v73 = *v74;
  v73[1] = v74[1];

  __swift_storeEnumTagSinglePayload(v31, 0, 1, v33);
LABEL_34:
  v88 = v29[8];
  v89 = sub_1DD0DD15C();
  (*(*(v89 - 8) + 24))(a1 + v88, v24 + v88, v89);
  v90 = v29[9];
  v91 = sub_1DD0DD10C();
  v92 = __swift_getEnumTagSinglePayload(a1 + v90, 1, v91);
  v93 = __swift_getEnumTagSinglePayload(v24 + v90, 1, v91);
  if (!v92)
  {
    v94 = *(v91 - 8);
    if (!v93)
    {
      (*(v94 + 24))(a1 + v90, v24 + v90, v91);
      goto LABEL_40;
    }

    (*(v94 + 8))(a1 + v90, v91);
    goto LABEL_39;
  }

  if (v93)
  {
LABEL_39:
    v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy(a1 + v90, v24 + v90, *(*(v95 - 8) + 64));
    goto LABEL_40;
  }

  (*(*(v91 - 8) + 16))(a1 + v90, v24 + v90, v91);
  __swift_storeEnumTagSinglePayload(a1 + v90, 0, 1, v91);
LABEL_40:
  *(a1 + v29[10]) = *(v24 + v29[10]);
  return a1;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result[3];
    v5 = a2[3];
    if (v4 == v5)
    {
      v10 = *(v4 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        sub_1DD0DCF8C();
      }

      v11 = *(v10 + 24);
      v12 = result[3];

      return v11();
    }

    else
    {
      result[3] = v5;
      result[4] = a2[4];
      v6 = *(v4 - 8);
      v7 = *(v5 - 8);
      v8 = v7;
      v9 = *(v7 + 80);
      if ((*(v6 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v9 & 0x20000) != 0)
        {
          *result = *a2;
          sub_1DD0DCF8C();
        }

        (*(v7 + 16))(result, a2, v5);
      }

      else
      {
        (*(v6 + 32))(v16, result, v4);
        if ((v9 & 0x20000) != 0)
        {
          *v3 = *a2;
          sub_1DD0DCF8C();
        }

        (*(v8 + 16))(v3, a2, v5);
        return (*(v6 + 8))(v16, v4);
      }
    }
  }

  return result;
}

uint64_t initializeWithTake for AceOutput(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  memcpy((a1 + 8), (a2 + 8), 0x49uLL);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  v6 = a3[7];
  v7 = (a1 + v6);
  v8 = (a2 + v6);
  v9 = type metadata accessor for NLContextUpdate();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v7, v8, *(*(v10 - 8) + 64));
  }

  else
  {
    *v7 = *v8;
    *(v7 + 8) = *(v8 + 8);
    *(v7 + 3) = *(v8 + 3);
    v11 = *(v8 + 3);
    *(v7 + 2) = *(v8 + 2);
    *(v7 + 3) = v11;
    *(v7 + 8) = *(v8 + 8);
    v7[72] = v8[72];
    *(v7 + 10) = *(v8 + 10);
    *(v7 + 88) = *(v8 + 88);
    *(v7 + 13) = *(v8 + 13);
    *(v7 + 7) = *(v8 + 7);
    *(v7 + 16) = *(v8 + 16);
    v7[136] = v8[136];
    v12 = *(v8 + 10);
    *(v7 + 9) = *(v8 + 9);
    *(v7 + 10) = v12;
    v7[176] = v8[176];
    *(v7 + 184) = *(v8 + 184);
    v7[200] = v8[200];
    v13 = *(v8 + 14);
    *(v7 + 13) = *(v8 + 13);
    *(v7 + 14) = v13;
    *(v7 + 30) = *(v8 + 30);
    *(v7 + 33) = *(v8 + 33);
    *(v7 + 248) = *(v8 + 248);
    *(v7 + 17) = *(v8 + 17);
    v14 = v9[32];
    v15 = sub_1DD0DD72C();
    if (__swift_getEnumTagSinglePayload(&v8[v14], 1, v15))
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
      memcpy(&v7[v14], &v8[v14], *(*(v16 - 8) + 64));
    }

    else
    {
      (*(*(v15 - 8) + 32))(&v7[v14], &v8[v14], v15);
      __swift_storeEnumTagSinglePayload(&v7[v14], 0, 1, v15);
    }

    v7[v9[33]] = v8[v9[33]];
    v7[v9[34]] = v8[v9[34]];
    *&v7[v9[35]] = *&v8[v9[35]];
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  }

  v17 = a3[8];
  v18 = sub_1DD0DD15C();
  (*(*(v18 - 8) + 32))(a1 + v17, a2 + v17, v18);
  v19 = a3[9];
  v20 = sub_1DD0DD10C();
  if (__swift_getEnumTagSinglePayload(a2 + v19, 1, v20))
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy((a1 + v19), (a2 + v19), *(*(v21 - 8) + 64));
  }

  else
  {
    (*(*(v20 - 8) + 32))(a1 + v19, a2 + v19, v20);
    __swift_storeEnumTagSinglePayload(a1 + v19, 0, 1, v20);
  }

  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

uint64_t *assignWithTake for AceOutput(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a2[9];
  v8 = *(a2 + 80);
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[4];
  v13 = a1[5];
  v14 = a1[6];
  v15 = a1[7];
  v16 = a1[8];
  v17 = a1[9];
  v18 = *(a1 + 80);
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 7) = *(a2 + 7);
  a1[9] = v7;
  *(a1 + 80) = v8;
  sub_1DCB42C24(v9, v10, v11, v12, v13, v14, v15, v16, v17, v18);
  if (a1[14])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1 + 11);
  }

  *(a1 + 11) = *(a2 + 11);
  *(a1 + 13) = *(a2 + 13);
  a1[15] = a2[15];
  v19 = a3[7];
  v20 = a1 + v19;
  v21 = a2 + v19;
  v22 = type metadata accessor for NLContextUpdate();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v20, 1, v22);
  v24 = __swift_getEnumTagSinglePayload(v21, 1, v22);
  if (!EnumTagSinglePayload)
  {
    if (v24)
    {
      sub_1DCB41F98(v20);
      goto LABEL_9;
    }

    *v20 = *v21;
    v32 = *(v20 + 8);
    *(v20 + 8) = *(v21 + 8);

    v33 = *(v20 + 16);
    *(v20 + 16) = *(v21 + 16);

    v34 = *(v20 + 24);
    *(v20 + 24) = *(v21 + 24);

    v35 = *(v21 + 40);
    v36 = *(v20 + 40);
    *(v20 + 32) = *(v21 + 32);
    *(v20 + 40) = v35;

    v37 = *(v20 + 48);
    *(v20 + 48) = *(v21 + 48);

    v38 = *(v20 + 56);
    *(v20 + 56) = *(v21 + 56);

    *(v20 + 64) = *(v21 + 64);
    *(v20 + 72) = *(v21 + 72);
    v39 = *(v20 + 80);
    *(v20 + 80) = *(v21 + 80);

    v40 = *(v21 + 96);
    v41 = *(v20 + 96);
    *(v20 + 88) = *(v21 + 88);
    *(v20 + 96) = v40;

    v42 = *(v20 + 104);
    *(v20 + 104) = *(v21 + 104);

    v43 = *(v21 + 120);
    v44 = *(v20 + 120);
    *(v20 + 112) = *(v21 + 112);
    *(v20 + 120) = v43;

    v45 = *(v20 + 128);
    *(v20 + 128) = *(v21 + 128);

    *(v20 + 136) = *(v21 + 136);
    v46 = *(v20 + 144);
    *(v20 + 144) = *(v21 + 144);

    v47 = *(v20 + 152);
    *(v20 + 152) = *(v21 + 152);

    v48 = *(v20 + 160);
    *(v20 + 160) = *(v21 + 160);

    v49 = *(v20 + 168);
    *(v20 + 168) = *(v21 + 168);

    *(v20 + 176) = *(v21 + 176);
    v50 = *(v21 + 192);
    v51 = *(v20 + 192);
    *(v20 + 184) = *(v21 + 184);
    *(v20 + 192) = v50;

    *(v20 + 200) = *(v21 + 200);
    v52 = *(v20 + 208);
    *(v20 + 208) = *(v21 + 208);

    v53 = *(v20 + 216);
    *(v20 + 216) = *(v21 + 216);

    v54 = *(v20 + 224);
    *(v20 + 224) = *(v21 + 224);

    v55 = *(v20 + 232);
    *(v20 + 232) = *(v21 + 232);

    v56 = *(v20 + 240);
    *(v20 + 240) = *(v21 + 240);

    if (*(v20 + 256))
    {
      v57 = *(v21 + 256);
      if (v57)
      {
        *(v20 + 248) = *(v21 + 248);
        *(v20 + 256) = v57;

        v58 = *(v20 + 264);
        *(v20 + 264) = *(v21 + 264);

        goto LABEL_17;
      }

      sub_1DCBB8090(v20 + 248);
    }

    *(v20 + 248) = *(v21 + 248);
    *(v20 + 264) = *(v21 + 264);
LABEL_17:
    v59 = *(v21 + 280);
    v60 = *(v20 + 280);
    *(v20 + 272) = *(v21 + 272);
    *(v20 + 280) = v59;

    v61 = v22[32];
    v62 = sub_1DD0DD72C();
    v63 = __swift_getEnumTagSinglePayload(v20 + v61, 1, v62);
    v64 = __swift_getEnumTagSinglePayload(v21 + v61, 1, v62);
    if (v63)
    {
      if (!v64)
      {
        (*(*(v62 - 8) + 32))(v20 + v61, v21 + v61, v62);
        __swift_storeEnumTagSinglePayload(v20 + v61, 0, 1, v62);
LABEL_23:
        *(v20 + v22[33]) = *(v21 + v22[33]);
        *(v20 + v22[34]) = *(v21 + v22[34]);
        v67 = v22[35];
        v68 = (v20 + v67);
        v69 = (v21 + v67);
        v71 = *v69;
        v70 = v69[1];
        v72 = v68[1];
        *v68 = v71;
        v68[1] = v70;

        goto LABEL_24;
      }
    }

    else
    {
      v65 = *(v62 - 8);
      if (!v64)
      {
        (*(v65 + 40))(v20 + v61, v21 + v61, v62);
        goto LABEL_23;
      }

      (*(v65 + 8))(v20 + v61, v62);
    }

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((v20 + v61), (v21 + v61), *(*(v66 - 8) + 64));
    goto LABEL_23;
  }

  if (v24)
  {
LABEL_9:
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
    memcpy(v20, v21, *(*(v31 - 8) + 64));
    goto LABEL_24;
  }

  *v20 = *v21;
  *(v20 + 8) = *(v21 + 8);
  *(v20 + 24) = *(v21 + 24);
  v25 = *(v21 + 48);
  *(v20 + 32) = *(v21 + 32);
  *(v20 + 48) = v25;
  *(v20 + 64) = *(v21 + 64);
  *(v20 + 72) = *(v21 + 72);
  *(v20 + 80) = *(v21 + 80);
  *(v20 + 88) = *(v21 + 88);
  *(v20 + 104) = *(v21 + 104);
  *(v20 + 112) = *(v21 + 112);
  *(v20 + 128) = *(v21 + 128);
  *(v20 + 136) = *(v21 + 136);
  v26 = *(v21 + 160);
  *(v20 + 144) = *(v21 + 144);
  *(v20 + 160) = v26;
  *(v20 + 176) = *(v21 + 176);
  *(v20 + 184) = *(v21 + 184);
  *(v20 + 200) = *(v21 + 200);
  v27 = *(v21 + 224);
  *(v20 + 208) = *(v21 + 208);
  *(v20 + 224) = v27;
  *(v20 + 240) = *(v21 + 240);
  *(v20 + 264) = *(v21 + 264);
  *(v20 + 248) = *(v21 + 248);
  *(v20 + 272) = *(v21 + 272);
  v28 = v22[32];
  v29 = sub_1DD0DD72C();
  if (__swift_getEnumTagSinglePayload(v21 + v28, 1, v29))
  {
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA73E0, &unk_1DD0F8320);
    memcpy((v20 + v28), (v21 + v28), *(*(v30 - 8) + 64));
  }

  else
  {
    (*(*(v29 - 8) + 32))(v20 + v28, v21 + v28, v29);
    __swift_storeEnumTagSinglePayload(v20 + v28, 0, 1, v29);
  }

  *(v20 + v22[33]) = *(v21 + v22[33]);
  *(v20 + v22[34]) = *(v21 + v22[34]);
  *(v20 + v22[35]) = *(v21 + v22[35]);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v22);
LABEL_24:
  v73 = a3[8];
  v74 = sub_1DD0DD15C();
  (*(*(v74 - 8) + 40))(a1 + v73, a2 + v73, v74);
  v75 = a3[9];
  v76 = sub_1DD0DD10C();
  v77 = __swift_getEnumTagSinglePayload(a1 + v75, 1, v76);
  v78 = __swift_getEnumTagSinglePayload(a2 + v75, 1, v76);
  if (!v77)
  {
    v79 = *(v76 - 8);
    if (!v78)
    {
      (*(v79 + 40))(a1 + v75, a2 + v75, v76);
      goto LABEL_30;
    }

    (*(v79 + 8))(a1 + v75, v76);
    goto LABEL_29;
  }

  if (v78)
  {
LABEL_29:
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAEC0, &qword_1DD103A40);
    memcpy(a1 + v75, a2 + v75, *(*(v80 - 8) + 64));
    goto LABEL_30;
  }

  (*(*(v76 - 8) + 32))(a1 + v75, a2 + v75, v76);
  __swift_storeEnumTagSinglePayload(a1 + v75, 0, 1, v76);
LABEL_30:
  *(a1 + a3[10]) = *(a2 + a3[10]);
  return a1;
}

void sub_1DCBB8BC4()
{
  sub_1DCBB8D2C(319, &qword_1EDE49560, type metadata accessor for NLContextUpdate);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_1DD0DD15C();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1DCBB8D2C(319, &qword_1EDE46340, MEMORY[0x1E69D0248]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_initStructMetadata();
      }
    }
  }
}

void sub_1DCBB8D2C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD0DE97C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DCBB8D80()
{
  OUTLINED_FUNCTION_27_2();
  v3 = *(v1 + 608);
  OUTLINED_FUNCTION_2_17();
  sub_1DCB42D14(v4, v5);
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_20();
  v8(v7);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v9);
  v10 = *(v1 + 696);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_29();

  return v11();
}

uint64_t sub_1DCBB8E5C()
{
  v2 = OUTLINED_FUNCTION_18_5();
  v3(v2);
  OUTLINED_FUNCTION_0_7();
  sub_1DCB42D14(v0, v4);
  v5 = *(v1 + 712);
  OUTLINED_FUNCTION_3_14();

  OUTLINED_FUNCTION_29();

  return v6();
}

uint64_t sub_1DCBB8F24()
{
  v2 = *(v0 + 728);
  *(v0 + 536) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 728);
    OUTLINED_FUNCTION_27_2();

    v6 = *(v1 + 8);
    v7 = OUTLINED_FUNCTION_20();
    v8(v7);
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v0 + 536, v9);
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v10 = *(v0 + 728);
    v11 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v11, qword_1EDE57E00);
    v12 = v10;
    v13 = sub_1DD0DD8EC();
    v14 = sub_1DD0DE6EC();

    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 728);
    v17 = *(v0 + 672);
    v18 = *(v0 + 632);
    v19 = *(v0 + 624);
    v20 = *(v0 + 616);
    if (v15)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = v16;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_1DCAFC000, v13, v14, "Encountered error %@ while publishing DialogEngineOutput", v21, 0xCu);
      sub_1DCB0E9D8(v22, qword_1ECCA8AD0, &qword_1DD0E4F90);
      MEMORY[0x1E12A8390](v22, -1, -1);
      MEMORY[0x1E12A8390](v21, -1, -1);
    }

    (*(v19 + 8))(v18, v20);
    OUTLINED_FUNCTION_0_7();
    sub_1DCB42D14(v17, v25);
  }

  OUTLINED_FUNCTION_9_6();

  OUTLINED_FUNCTION_29();

  return v26();
}

void sub_1DCBB9238(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F71C(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 16 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DCBB92F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = sub_1DCB09A70(*v4);
  v9 = __OFADD__(v8, v6);
  v10 = v8 + v6;
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1DCB420B0(v10, 1);
  v11 = *v4;
  if (v5 == a3)
  {
    if (v6 <= 0)
    {
LABEL_10:
      swift_unknownObjectRelease();
      *v4 = v11;
      return;
    }

    __break(1u);
  }

  if ((*((v11 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
    goto LABEL_10;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9 = __OFADD__(v12, v6);
  v13 = v12 + v6;
  if (!v9)
  {
    *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) = v13;
    goto LABEL_10;
  }

LABEL_14:
  __break(1u);
}

void sub_1DCBB9420(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F734(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 24 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DCBB94B8(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F74C(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v3 + 24) >> 1) - *(v3 + 16);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA25C0, &qword_1DD0E5270) - 8);
  if (v7 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v11;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DCBB95CC(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F79C(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v7 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BE0, &qword_1DD0E1698);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v8;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_1DCBB9680(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F7CC(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + 96 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1DCBB9738(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87_0(a1);
  if (v6)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = v5(result, 1);
  v7 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v8 = *(v7 + 16);
  if ((*(v7 + 24) >> 1) - v8 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v7 + 48 * v8);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v7;
    return result;
  }

  v9 = *(v7 + 16);
  v6 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v6)
  {
    *(v7 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DCBB9878(uint64_t a1)
{
  result = OUTLINED_FUNCTION_87_0(a1);
  if (v7)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v6;
  v5(result, 1);
  v9 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v10 = (*(v9 + 24) >> 1) - *(v9 + 16);
  result = v8(0);
  v11 = *(result - 8);
  if (v10 < v1)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v11 + 72);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v9;
    return result;
  }

  v14 = *(v9 + 16);
  v7 = __OFADD__(v14, v1);
  v15 = v14 + v1;
  if (!v7)
  {
    *(v9 + 16) = v15;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1DCBB9980(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_6_4(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1DCD3F814(v4, 1);
  OUTLINED_FUNCTION_56_7();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_13_5();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_8(v3 + (v7 << 6));
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_55_5();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void static AceOutputHelper.makeCancellationViewOutput(templateResult:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v24 - v13;
  memcpy(v27, v5, sizeof(v27));
  type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_41_2();
  *(swift_allocObject() + 16) = v3;
  memcpy(v29, v5, 0x48uLL);
  v15 = sub_1DD0BE950(v29);
  OUTLINED_FUNCTION_97_1(v1, &v26);
  v16 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_5(v14, v17, v18, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v19 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_83_1(v19, xmmword_1DD0E15D0);
  v20 = v15;
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)(v19, v14, MEMORY[0x1E69E7CC0], &v26);

  sub_1DCB16D50(v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_99_0();
  sub_1DCB16D50(v21, v22, v23);
  memcpy(v28, v27, sizeof(v28));
  memcpy(v29, (v7 + 8), 0x49uLL);
  sub_1DCBBF670(v27, &v25);
  sub_1DCB431E0(v29);
  memcpy((v7 + 8), v28, 0x48uLL);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  memcpy(v9, v3, sizeof(v9));
  sub_1DCBBA39C(v1);
}

void static AceOutputHelper.makeCancellationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:canUseServerTTS:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_20_0(v4);
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v7, v8);
  memcpy(v9, v3, sizeof(v9));
  sub_1DCBBA39C(v1);
}

void sub_1DCBBA39C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1BE8, &unk_1DD0EB600);
  OUTLINED_FUNCTION_20_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  (*(v8 + 184))(v7, v8);
  sub_1DD0DCFCC();
}

uint64_t sub_1DCBBA630(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = sub_1DCB09A70(a2);
  v4 = 0;
  v5 = v2 & 0xC000000000000001;
  v6 = v2 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v3 == v4)
    {
      v10 = sub_1DCB09A70(a1);
      v48 = sub_1DCB09A70(v2);
      if (v48 < v10)
      {
        OUTLINED_FUNCTION_109_0();
        if (!v15)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v11 = sub_1DD0DD8FC();
        OUTLINED_FUNCTION_92(v11, qword_1EDE57E00);

        v12 = sub_1DD0DD8EC();
        v13 = sub_1DD0DE6EC();
        if (OUTLINED_FUNCTION_75(v13))
        {
          v14 = swift_slowAlloc();
          *v14 = 134218240;
          *(v14 + 4) = sub_1DCB09A70(a1);

          *(v14 + 12) = 2048;
          *(v14 + 14) = sub_1DCB09A70(v2);

          _os_log_impl(&dword_1DCAFC000, v12, v13, "AceOutputHelper is applying dialogs to snippets but there are %ld dialogs and %ld snippets. We will attempt to attach dialogs to as many snippets as possible and add empty AceViews as needed.", v14, 0x16u);
          OUTLINED_FUNCTION_80();
        }

        else
        {
        }
      }

      if (v10 < 0)
      {
        goto LABEL_67;
      }

      v20 = MEMORY[0x1E69E7CC0];
      if (v10)
      {
        v50 = MEMORY[0x1E69E7CC0];
        sub_1DD0DED0C();
        v21 = a1 & 0xC000000000000001;
        v22 = v10;
        v23 = 4;
        v47 = v22;
        do
        {
          if (v23 - 4 >= v48)
          {
            v29 = [objc_allocWithZone(MEMORY[0x1E69C7708]) init];
            if (v21)
            {
              v30 = MEMORY[0x1E12A72C0](v23 - 4, a1);
            }

            else
            {
              v30 = *(a1 + 8 * v23);
            }

            v31 = v30;
            [v29 setDialog_];

            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v32 = sub_1DD0DE8CC();
            [v29 setListenAfterSpeaking_];
          }

          else
          {
            if (v5)
            {
              v24 = MEMORY[0x1E12A72C0](v23 - 4, v2);
            }

            else
            {
              if ((v23 - 4) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_66;
              }

              v24 = *(v2 + 8 * v23);
            }

            v25 = v24;
            if (v21)
            {
              v26 = MEMORY[0x1E12A72C0](v23 - 4, a1);
            }

            else
            {
              v26 = *(a1 + 8 * v23);
            }

            v27 = v26;
            [v25 setDialog_];

            if (v5)
            {
              v28 = MEMORY[0x1E12A72C0](v23 - 4, v2);
            }

            else
            {
              v28 = *(v2 + 8 * v23);
            }

            v33 = v28;
            sub_1DCB10E5C(0, &qword_1EDE460A0, 0x1E696AD98);
            v34 = sub_1DD0DE8CC();
            [v33 setListenAfterSpeaking_];

            if (v5)
            {
              MEMORY[0x1E12A72C0](v23 - 4, v2);
            }

            else
            {
              v35 = *(v2 + 8 * v23);
            }
          }

          sub_1DD0DECDC();
          v36 = *(v50 + 16);
          sub_1DD0DED1C();
          sub_1DD0DED2C();
          sub_1DD0DECEC();
          ++v23;
          --v22;
        }

        while (v22);
        v20 = v50;
        v10 = v47;
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      if (v10 >= v48)
      {
        return v20;
      }

      OUTLINED_FUNCTION_109_0();
      if (!v15)
      {
        OUTLINED_FUNCTION_0_0();
      }

      v37 = sub_1DD0DD8FC();
      OUTLINED_FUNCTION_92(v37, qword_1EDE57E00);

      v38 = sub_1DD0DD8EC();
      v39 = sub_1DD0DE6DC();
      if (OUTLINED_FUNCTION_75(v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 134218240;
        *(v40 + 4) = sub_1DCB09A70(a1);

        *(v40 + 12) = 2048;
        *(v40 + 14) = sub_1DCB09A70(v2);

        _os_log_impl(&dword_1DCAFC000, v38, v39, "AceOutputHelper received %ld dialogs but there are %ld snippets. Adding remaining snippets without dialog.", v40, 0x16u);
        OUTLINED_FUNCTION_80();
      }

      else
      {
      }

      if (v3 < v10)
      {
        __break(1u);
      }

      else
      {
        sub_1DCF41428(v10, v2);
        result = sub_1DCF41428(v3, v2);
        if (!v5 || v10 == v3)
        {
        }

        else
        {
          if (v10 >= v3)
          {
            __break(1u);
            return result;
          }

          sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);

          v42 = v10;
          do
          {
            v43 = v42 + 1;
            sub_1DD0DEC4C();
            v42 = v43;
          }

          while (v3 != v43);
        }

        if (!(v2 >> 62))
        {
          v44 = v6 + 32;
          v45 = (2 * v3) | 1;
LABEL_62:
          sub_1DCBB92F8(v6, v44, v10, v45);
          return v20;
        }
      }

      OUTLINED_FUNCTION_63_0();
      v6 = sub_1DD0DEE4C();
      v10 = v46;
      goto LABEL_62;
    }

    if (v5)
    {
      v7 = MEMORY[0x1E12A72C0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v7 = *(v2 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    v9 = [v7 dialog];

    ++v4;
    if (v9)
    {

      OUTLINED_FUNCTION_109_0();
      if (!v15)
      {
        goto LABEL_68;
      }

      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  OUTLINED_FUNCTION_0_0();
LABEL_17:
  v16 = sub_1DD0DD8FC();
  OUTLINED_FUNCTION_92(v16, qword_1EDE57E00);
  v17 = sub_1DD0DD8EC();
  v18 = sub_1DD0DE6CC();
  if (OUTLINED_FUNCTION_75(v18))
  {
    v19 = OUTLINED_FUNCTION_50_0();
    *v19 = 0;
    _os_log_impl(&dword_1DCAFC000, v17, v18, "AceOutputHelper detected SADialogs on one or more snippets. Declining to modify provided snippets", v19, 2u);
    OUTLINED_FUNCTION_80();
  }

  return v2;
}

void _s11SiriKitFlow15AceOutputHelperO04makedE010addDialogs15nlContextUpdate18additionalCommands12flowActivityAA0dE0VSo07SAUIAddI0C_AA09NLContextL0VSgSaySo13SABaseCommandCGAA0cP0_pSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14)
{
  OUTLINED_FUNCTION_50();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v24 = OUTLINED_FUNCTION_20_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v52 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v32 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_67_2(v32, xmmword_1DD0E15D0);
  v53 = MEMORY[0x1E69E7CC0];
  sub_1DCB4F1DC(v18, v31, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_12_9(v31);
  if (v33)
  {
    v34 = v20;
    sub_1DCB16D50(v31, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v52[0] = 0;
    v35 = v20;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v52);
    v36 = sub_1DCB41F98(v31);
    MEMORY[0x1E12A6920](v36);
    OUTLINED_FUNCTION_23_1(v53);
    if (v37)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v18, v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_12_9(v14);
  if (v33)
  {
    sub_1DCB16D50(v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v38 = OUTLINED_FUNCTION_96_4();
    MEMORY[0x1E12A6920](v38);
    OUTLINED_FUNCTION_11_16(v53);
    if (v39)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_98_0();
  }

  sub_1DCB41FF4(v32, sub_1DCB420B0, sub_1DCF77950);

  OUTLINED_FUNCTION_99_0();
  sub_1DCB41FF4(v40, v41, v42);
  v43 = v53;
  sub_1DCB4F1DC(v16, v52, &unk_1ECCA3280, &unk_1DD0E23D0);
  v44 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v44);
  sub_1DCB4F1DC(v18, v22 + v45, &unk_1ECCA3270, &qword_1DD0E0F70);
  v46 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(v22 + a13, v47, v48, v46);
  v49 = *MEMORY[0x1E69D0678];
  v50 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v50);
  (*(v51 + 104))(v22 + a12, v49);
  OUTLINED_FUNCTION_39_3();
  *(v22 + a14) = 0;
  *v22 = v43;
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeClarificationViewOutput(templateResult:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v11 = v10;
  OUTLINED_FUNCTION_102_0();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_79_2();
  type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_41_2();
  *(swift_allocObject() + 16) = v1;
  memcpy(v54, v5, 0x48uLL);
  v21 = MEMORY[0x1E69E7CC0];
  v24 = sub_1DD0BEA00(v54, v3, MEMORY[0x1E69E7CC0], 0, v11, v51, v22, v23);
  sub_1DCB4F1DC(v49, v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB4F1DC(v50, v56, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v25 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_101_1(v25, xmmword_1DD0E15D0);
  v55 = v21;
  OUTLINED_FUNCTION_95_1(v2, v6);
  v26 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_7_10(v6);
  if (v27)
  {
    v28 = v24;
    sub_1DCB16D50(v6, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v54[0] = 0;
    v29 = v24;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v54);
    v30 = sub_1DCB41F98(v6);
    MEMORY[0x1E12A6920](v30);
    OUTLINED_FUNCTION_30_6();
    v33 = *(v31 + 16);
    v32 = *(v31 + 24);
    if (v33 >= v32 >> 1)
    {
      OUTLINED_FUNCTION_21_0(v32);
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_100_1();
    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v2, v4, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_7_10(v4);
  if (v27)
  {
    sub_1DCB16D50(v4, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v34 = OUTLINED_FUNCTION_88_3();
    v35 = sub_1DCB41F98(v34);
    MEMORY[0x1E12A6920](v35);
    OUTLINED_FUNCTION_20_6(v55);
    if (v36)
    {
      OUTLINED_FUNCTION_21_0(v37);
      OUTLINED_FUNCTION_91();
    }

    OUTLINED_FUNCTION_54_3();
    sub_1DD0DE3AC();
  }

  OUTLINED_FUNCTION_0_8();
  sub_1DCB41FF4(v25, v26, sub_1DCF77950);

  OUTLINED_FUNCTION_114(v38);

  v39 = v55;
  v40 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v40);
  sub_1DCBB6C68(v2, v0 + v41);
  v42 = OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_18_6(v42);
  v43 = v56[6];
  v44 = *MEMORY[0x1E69D0678];
  v45 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v45);
  (*(v46 + 104))(v0 + v43, v44);
  OUTLINED_FUNCTION_3_11();
  sub_1DCB6C5E8(v56, v47);
  OUTLINED_FUNCTION_48_3();
  *v0 = v39;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_58_2(v53);
  OUTLINED_FUNCTION_73_5(v54);
  sub_1DCBBF670(&v57, &v52);
  v48 = sub_1DCB431E0(v54);
  OUTLINED_FUNCTION_72_0(v48, v53);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeClarificationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_106();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_5();
  sub_1DCBBA39C(v1);
}

void static AceOutputHelper.makeClarificationViewOutput(aceViews:nlContextUpdate:additionalCommands:flowActivity:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14)
{
  OUTLINED_FUNCTION_50();
  v60 = v15;
  v61 = v16;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = &qword_1DD0E0F70;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v25 = OUTLINED_FUNCTION_20_0(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25, v28);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v60 - v31;
  sub_1DCB10E5C(0, &unk_1EDE46230, 0x1E69C7AF8);
  v33 = *MEMORY[0x1E69C8300];
  v34 = sub_1DD0DDFBC();
  v35 = MEMORY[0x1E69E7CC0];
  v37 = sub_1DCF77328(v34, v36, v20, MEMORY[0x1E69E7CC0], 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v38 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_66_1(v38, xmmword_1DD0E15D0);
  v63 = v35;
  sub_1DCB4F1DC(v18, v32, &unk_1ECCA3270, &qword_1DD0E0F70);
  v39 = type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_31_4(v32, 1, v39);
  if (v40)
  {
    v41 = v37;
    sub_1DCB16D50(v32, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v62[0] = 0;
    v42 = v37;
    v23 = NLContextUpdate.doConvertToAceContextUpdate(options:)(v62);
    v43 = sub_1DCB41F98(v32);
    MEMORY[0x1E12A6920](v43);
    OUTLINED_FUNCTION_23_1(v63);
    if (v44)
    {
      OUTLINED_FUNCTION_21_0(v45);
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_68_1();
    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v18, v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_31_4(v14, 1, v39);
  if (v40)
  {
    sub_1DCB16D50(v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v23 = NLContextUpdate.doConvertToServerContextUpdate()();
    v46 = sub_1DCB41F98(v14);
    MEMORY[0x1E12A6920](v46);
    OUTLINED_FUNCTION_11_16(v63);
    if (v47)
    {
      OUTLINED_FUNCTION_17_7();
    }

    sub_1DD0DE3AC();
  }

  OUTLINED_FUNCTION_0_8();
  sub_1DCB41FF4(v38, v23, sub_1DCF77950);

  OUTLINED_FUNCTION_46_2();
  sub_1DCB41FF4(v48, v49, v50);

  v51 = v63;
  sub_1DCB4F1DC(v61, v62, &unk_1ECCA3280, &unk_1DD0E23D0);
  v52 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v52);
  sub_1DCB4F1DC(v18, v22 + v53, &unk_1ECCA3270, &qword_1DD0E0F70);
  v54 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(v22 + a13, v55, v56, v54);
  v57 = *MEMORY[0x1E69D0678];
  v58 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v58);
  (*(v59 + 104))(v22 + a12, v57);
  OUTLINED_FUNCTION_39_3();
  *(v22 + a14) = 0;
  *v22 = v51;
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:requestEndBehavior:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_77_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_35_5();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_106();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_5();
  sub_1DCBBA39C(v1);
}

void static AceOutputHelper.makeConfirmationViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_35_5();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_27_3();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_5();
  sub_1DCBBA39C(v1);
}

void static AceOutputHelper.makeErrorOutput(templateResult:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v61 = v2;
  v60 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_35_5();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  v62 = v23;
  memcpy(v69, v11, 0x48uLL);
  type metadata accessor for ViewFactory();
  *(swift_initStackObject() + 16) = v9;
  v68 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_58_2(v65);
  v24 = sub_1DCB72840(v65, v7, v5);
  if (v24 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
    v25 = sub_1DD0DEE0C();
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46080, 0x1E69C7708);
    v25 = v24;
  }

  sub_1DCB41FF4(v25, sub_1DCB420B0, sub_1DCB6740C);

  sub_1DCB41FF4(v26, sub_1DCB420B0, sub_1DCB6740C);
  v27 = sub_1DD0BEBAC(v68);

  v28 = v62;
  OUTLINED_FUNCTION_94(v60, v62);
  sub_1DCB4F1DC(v61, v67, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v29 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_101_1(v29, xmmword_1DD0E15D0);
  v66 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_94(v62, v1);
  type metadata accessor for NLContextUpdate();
  v30 = OUTLINED_FUNCTION_88_3();
  OUTLINED_FUNCTION_7_10(v30);
  if (v31)
  {
    v32 = v27;
    sub_1DCB16D50(v1, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v65[0] = 0;
    v33 = v27;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v65);
    v34 = sub_1DCB41F98(v1);
    MEMORY[0x1E12A6920](v34);
    OUTLINED_FUNCTION_16_2(v66);
    if (v35)
    {
      OUTLINED_FUNCTION_21_0(v36);
      OUTLINED_FUNCTION_115_0();
    }

    sub_1DD0DE3AC();
    v28 = v62;
  }

  v37 = OUTLINED_FUNCTION_100_1();
  sub_1DCB4F1DC(v37, v38, v39, v40);
  OUTLINED_FUNCTION_7_10(v0);
  if (v31)
  {
    sub_1DCB16D50(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v41 = OUTLINED_FUNCTION_110();
    v42 = sub_1DCB41F98(v41);
    MEMORY[0x1E12A6920](v42);
    OUTLINED_FUNCTION_20_6(v66);
    if (v43)
    {
      OUTLINED_FUNCTION_21_0(v44);
      OUTLINED_FUNCTION_91();
    }

    OUTLINED_FUNCTION_54_3();
    sub_1DD0DE3AC();
  }

  OUTLINED_FUNCTION_0_8();
  sub_1DCB41FF4(v29, &qword_1DD0E0F70, sub_1DCF77950);

  OUTLINED_FUNCTION_46_2();
  sub_1DCB41FF4(v45, v46, v47);

  v48 = v66;
  v49 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v49);
  sub_1DCBB6C68(v28, v13 + v50);
  v51 = OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_8_10(v51);
  v52 = *MEMORY[0x1E69D0678];
  v53 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v53);
  v55 = *(v54 + 104);
  v56 = OUTLINED_FUNCTION_53();
  v57(v56);
  OUTLINED_FUNCTION_3_11();
  sub_1DCB6C5E8(v67, v58);
  OUTLINED_FUNCTION_48_3();
  *v13 = v48;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_58_2(v64);
  OUTLINED_FUNCTION_73_5(v65);
  sub_1DCBBF670(v69, &v63);
  v59 = sub_1DCB431E0(v65);
  OUTLINED_FUNCTION_72_0(v59, v64);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeErrorOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_77_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_105_1();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_5();
  sub_1DCBBA39C(v1);
}

void static AceOutputHelper.makeSummaryViewOutput(templateResult:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)()
{
  OUTLINED_FUNCTION_50();
  v5 = v4;
  v7 = v6;
  v55 = v8;
  v54 = v9;
  v53 = v10;
  v52 = v11;
  v13 = v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v15 = OUTLINED_FUNCTION_20_0(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_37_6();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_26_2();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_35_5();
  MEMORY[0x1EEE9AC00](v23, v24);
  OUTLINED_FUNCTION_79_2();
  sub_1DCB4F1DC(v7, v1, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB4F1DC(v5, v62, &unk_1ECCA3280, &unk_1DD0E23D0);
  type metadata accessor for ViewFactory();
  OUTLINED_FUNCTION_41_2();
  *(swift_allocObject() + 16) = v52;
  OUTLINED_FUNCTION_58_2(v59);
  v25 = sub_1DD0BEBA0(v59, v53, v54, v55);
  sub_1DCB4F1DC(v1, v2, &unk_1ECCA3270, &qword_1DD0E0F70);
  sub_1DCB4F1DC(v62, v61, &unk_1ECCA3280, &unk_1DD0E23D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
  v26 = OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_67_2(v26, xmmword_1DD0E15D0);
  v60 = MEMORY[0x1E69E7CC0];
  v56 = v2;
  OUTLINED_FUNCTION_46_2();
  sub_1DCB4F1DC(v27, v28, v29, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  OUTLINED_FUNCTION_9_7(v0);
  if (v30)
  {
    v31 = v25;
    sub_1DCB16D50(v0, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v59[0] = 0;
    v32 = v25;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v59);
    v33 = sub_1DCB41F98(v0);
    MEMORY[0x1E12A6920](v33);
    OUTLINED_FUNCTION_24_3(v60);
    if (v34)
    {
      OUTLINED_FUNCTION_21_0(v35);
      OUTLINED_FUNCTION_93_0();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v2, v3, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_9_7(v3);
  if (v30)
  {
    sub_1DCB16D50(v3, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v36 = OUTLINED_FUNCTION_88_3();
    v37 = sub_1DCB41F98(v36);
    MEMORY[0x1E12A6920](v37);
    OUTLINED_FUNCTION_20_6(v60);
    if (v38)
    {
      OUTLINED_FUNCTION_21_0(v39);
      OUTLINED_FUNCTION_91();
    }

    OUTLINED_FUNCTION_54_3();
    sub_1DD0DE3AC();
  }

  OUTLINED_FUNCTION_0_8();
  sub_1DCB41FF4(v26, v0, sub_1DCF77950);

  OUTLINED_FUNCTION_114(v40);

  sub_1DCB16D50(v62, &unk_1ECCA3280, &unk_1DD0E23D0);
  sub_1DCB16D50(v1, &unk_1ECCA3270, &qword_1DD0E0F70);
  v41 = v60;
  v42 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v42);
  sub_1DCBB6C68(v56, v13 + v43);
  v44 = OUTLINED_FUNCTION_74_2();
  OUTLINED_FUNCTION_18_6(v44);
  v45 = v61[6];
  v46 = *MEMORY[0x1E69D0678];
  v47 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v47);
  (*(v48 + 104))(v13 + v45, v46);
  OUTLINED_FUNCTION_3_11();
  sub_1DCB6C5E8(v61, v49);
  OUTLINED_FUNCTION_48_3();
  *v13 = v41;
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_58_2(v57);
  OUTLINED_FUNCTION_73_5(v58);
  sub_1DCBBF670(v63, v59);
  sub_1DCBBF670(v63, v59);
  v50 = sub_1DCB431E0(v58);
  OUTLINED_FUNCTION_72_0(v50, v57);
  *(v13 + 80) = 0;
  OUTLINED_FUNCTION_73_5(v59);
  v51 = sub_1DCB431E0(v59);
  OUTLINED_FUNCTION_72_0(v51, v57);
  OUTLINED_FUNCTION_40_4();
  OUTLINED_FUNCTION_49();
}

void sub_1DCBBE6C0()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  OUTLINED_FUNCTION_77_1();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v3 = OUTLINED_FUNCTION_20_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_35_5();
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_105_1();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v15, v16);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v17, v18);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v19, v20);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_29_0();
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_71_0();
  OUTLINED_FUNCTION_38_5();
  sub_1DCBBA39C(v1);
}

void sub_1DCBBF20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13, int a14)
{
  OUTLINED_FUNCTION_50();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA3270, &qword_1DD0E0F70);
  v24 = OUTLINED_FUNCTION_20_0(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24, v27);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = v50 - v30;
  v51 = MEMORY[0x1E69E7CC0];
  sub_1DCB4F1DC(v18, v50 - v30, &unk_1ECCA3270, &qword_1DD0E0F70);
  type metadata accessor for NLContextUpdate();
  v32 = OUTLINED_FUNCTION_62_2();
  OUTLINED_FUNCTION_12_9(v32);
  if (v33)
  {
    sub_1DCB16D50(v31, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    v50[0] = 0;
    NLContextUpdate.doConvertToAceContextUpdate(options:)(v50);
    v34 = sub_1DCB41F98(v31);
    MEMORY[0x1E12A6920](v34);
    if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1DD0DE33C();
    }

    sub_1DD0DE3AC();
  }

  sub_1DCB4F1DC(v18, v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  OUTLINED_FUNCTION_12_9(v14);
  if (v33)
  {
    sub_1DCB16D50(v14, &unk_1ECCA3270, &qword_1DD0E0F70);
  }

  else
  {
    NLContextUpdate.doConvertToServerContextUpdate()();
    v35 = OUTLINED_FUNCTION_96_4();
    MEMORY[0x1E12A6920](v35);
    OUTLINED_FUNCTION_11_16(v51);
    if (v36)
    {
      sub_1DD0DE33C();
    }

    OUTLINED_FUNCTION_98_0();
  }

  if (v20 >> 62)
  {
    sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);

    v49 = sub_1DD0DEE0C();

    v20 = v49;
  }

  else
  {

    sub_1DD0DF0CC();
    sub_1DCB10E5C(0, &qword_1EDE46210, 0x1E69C7738);
  }

  sub_1DCB41FF4(v20, sub_1DCB420B0, sub_1DCF77950);

  OUTLINED_FUNCTION_99_0();
  sub_1DCB41FF4(v37, v38, v39);
  v40 = v51;
  sub_1DCB4F1DC(v16, v50, &unk_1ECCA3280, &unk_1DD0E23D0);
  v41 = type metadata accessor for AceOutput();
  OUTLINED_FUNCTION_32_0(v41);
  sub_1DCB4F1DC(v18, v22 + v42, &unk_1ECCA3270, &qword_1DD0E0F70);
  v43 = sub_1DD0DD10C();
  OUTLINED_FUNCTION_7_5(v22 + a13, v44, v45, v43);
  v46 = *MEMORY[0x1E69D0678];
  v47 = sub_1DD0DD15C();
  OUTLINED_FUNCTION_1_3(v47);
  (*(v48 + 104))(v22 + a12, v46);
  OUTLINED_FUNCTION_39_3();
  *(v22 + a14) = 0;
  *v22 = v40;
  OUTLINED_FUNCTION_14_10();
  OUTLINED_FUNCTION_49();
}

void static AceOutputHelper.makeUtteranceView(for:canUseServerTTS:listenAfterSpeaking:printSupportingDialogInDisplayModes:forcePrintDialog:containsVisual:responseMode:dialogCategory:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_85_0();
  HIBYTE(v17[0]) = 0;
  LOBYTE(v16) = AFDeviceSupportsSystemAssistantExperience();
  sub_1DCCE01D8(v12, v11, v10, v9, a6, 0, a7, v17 + 7, a8, a9, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7], v17[8], v17[9], v17[10], vars0);
}

uint64_t sub_1DCBBF75C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1DCBBF7A4(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_1DD0DE33C();
  }

  return result;
}

void sub_1DCBBF7D0(void *a1, uint64_t a2)
{
  if (a2)
  {
  }
}

void *sub_1DCBBF814(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AceOutputHelper(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for AceOutputHelper(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 *OUTLINED_FUNCTION_101_1(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_112_0()
{
  v2 = *(v0 - 160);
  v3 = *(v0 - 152);
}

uint64_t OUTLINED_FUNCTION_117_0()
{

  return sub_1DD0DE33C();
}

uint64_t OUTLINED_FUNCTION_118_0()
{

  return sub_1DD0DE3AC();
}

uint64_t SubmitCommandError.errorDescription.getter()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  return SubmitCommandError.description.getter();
}

uint64_t sub_1DCBBFA6C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = 0x707365526C696E2ELL;
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_104_1();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_74();
      v24 = v11 + 28;
      v25 = v10;
      *&v21[0] = [v1 errorCode];
      v12 = sub_1DD0DF03C();
      MEMORY[0x1E12A6780](v12);

      MEMORY[0x1E12A6780](41, 0xE100000000000000);
      return v24;
    case 2:
      OUTLINED_FUNCTION_104_1();
      sub_1DD0DEC1C();

      OUTLINED_FUNCTION_87_1();
      OUTLINED_FUNCTION_133();
      v24 = v14;
      v25 = v13;
      v15 = [v1 description];
      sub_1DD0DDFBC();

      v16 = OUTLINED_FUNCTION_131();
      MEMORY[0x1E12A6780](v16);
      goto LABEL_7;
    case 3:
      return v3;
    default:
      v23 = v1;
      v4 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA33E0, &unk_1DD0E1650);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C18, &qword_1DD100A20);
      if (swift_dynamicCast())
      {
        sub_1DCAFF9E8(v21, &v24);
        *&v21[0] = 0;
        *(&v21[0] + 1) = 0xE000000000000000;
        sub_1DD0DEC1C();

        OUTLINED_FUNCTION_87_1();
        *&v21[0] = 0xD000000000000010;
        *(&v21[0] + 1) = v5;
        v6 = v26;
        v7 = v27;
        OUTLINED_FUNCTION_57_1(&v24, v26);
        v8 = *(v7 + 8);
        v9 = sub_1DCEE0FD4(v6);
        MEMORY[0x1E12A6780](v9);

        v3 = *&v21[0];
        __swift_destroy_boxed_opaque_existential_1Tm_0(&v24);
      }

      else
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        sub_1DCB185D0(v21, &qword_1ECCA1C20, &qword_1DD0E1B70);
        v17 = sub_1DD0DADFC();
        OUTLINED_FUNCTION_104_1();
        sub_1DD0DEC1C();

        OUTLINED_FUNCTION_87_1();
        v24 = 0xD000000000000010;
        v25 = v18;
        *&v21[0] = [v17 code];
        v19 = sub_1DD0DF03C();
        MEMORY[0x1E12A6780](v19);

LABEL_7:

        return v24;
      }

      return v3;
  }
}

uint64_t sub_1DCBBFD38(uint64_t a1)
{
  switch(a1)
  {
    case 1011:
      result = 2;
      break;
    case 1012:
    case 1013:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
      goto LABEL_6;
    case 1018:
      result = 3;
      break;
    case 1019:
      result = 4;
      break;
    case 1020:
      result = 5;
      break;
    default:
      if (a1 == 18)
      {
        result = 0;
      }

      else if (a1 == 1007)
      {
        result = 1;
      }

      else
      {
LABEL_6:
        result = 6;
      }

      break;
  }

  return result;
}

uint64_t sub_1DCBBFDB4(uint64_t a1, uint64_t a2)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v5 = sub_1DCBC8F54(0xD00000000000001BLL, 0x80000001DD112D80, 0);
  v6 = sub_1DD0DDF8C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA1C30, &qword_1DD0E1B98);
  sub_1DCBCC64C();
  sub_1DCB1C4D8();
  v7 = sub_1DD0DE91C();
  v9 = [v5 firstMatchInString:v6 options:0 range:{v7, v8, a1, a2, 15}];

  if (!v9)
  {
    goto LABEL_11;
  }

  [v9 rangeAtIndex_];
  OUTLINED_FUNCTION_142_0();
  sub_1DD0DE69C();
  if (v10)
  {

    return 6;
  }

  OUTLINED_FUNCTION_142_0();
  v11 = sub_1DD0DE1EC();
  v12 = MEMORY[0x1E12A66E0](v11);
  v14 = v13;

  v15 = v12 == 0xD000000000000017 && 0x80000001DD112DA0 == v14;
  if (v15 || (OUTLINED_FUNCTION_138(), (sub_1DD0DF0AC() & 1) != 0))
  {
    [v9 rangeAtIndex_];
    OUTLINED_FUNCTION_142_0();
    sub_1DD0DE69C();
    if (v16)
    {
LABEL_10:

LABEL_11:
      return 6;
    }

    OUTLINED_FUNCTION_142_0();
    v18 = sub_1DD0DE1EC();
    v22 = v21;
    if (!((v18 ^ v19) >> 14))
    {

      goto LABEL_10;
    }

    v23 = v18;
    v24 = v19;
    v25 = v20;
    v26 = sub_1DCBCBEC0(v18, v19, v20, v21, 10);
    if ((v27 & 0x100) != 0)
    {
      v28 = sub_1DCBC9030(v23, v24, v25, v22, 10);
      v35 = v34;

      if (v35)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v28 = v26;
      v29 = v27;

      if (v29)
      {
        goto LABEL_10;
      }
    }

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v36 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v36, qword_1EDE57E00);

    v37 = sub_1DD0DD8EC();
    v38 = sub_1DD0DE6DC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v44 = OUTLINED_FUNCTION_83();
      *v39 = 136315394;
      v40 = OUTLINED_FUNCTION_138();
      v43 = sub_1DCB10E9C(v40, v41, v42);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2048;
      *(v39 + 14) = v28;
      _os_log_impl(&dword_1DCAFC000, v37, v38, "Domain is: %s, code value is: %ld", v39, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm_0(v44);
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    else
    {
    }

    return sub_1DCBBFD38(v28);
  }

  else
  {

    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v30 = sub_1DD0DD8FC();
    __swift_project_value_buffer(v30, qword_1EDE57E00);
    v31 = sub_1DD0DD8EC();
    v32 = sub_1DD0DE6DC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1DCAFC000, v31, v32, "Received a non companion availability related error, will throw execution failed error.", v33, 2u);
      OUTLINED_FUNCTION_80();
    }

    return 3;
  }
}

uint64_t sub_1DCBC01F0()
{
  type metadata accessor for RefreshableAceServiceInvoker();
  OUTLINED_FUNCTION_135();
  v0 = swift_allocObject();
  result = sub_1DCBC8034();
  qword_1EDE57D78 = v0;
  return result;
}

void static AceService.setCurrentInvokerForTesting(_:)(uint64_t a1)
{
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCB19D68(a1);
}

void static AceService.setCurrentInvokerForTesting(_:)()
{
  if (qword_1EDE4A110 != -1)
  {
    OUTLINED_FUNCTION_20_1();
  }

  sub_1DCBC4960();
}

void AceServiceInvoker.submitToCompanion<A>(_:completion:)()
{
  OUTLINED_FUNCTION_50();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  OUTLINED_FUNCTION_45_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - v9;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    v7 = v11;
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_72_1(v12, qword_1EDE57E00);
  v14 = v13;
  (*(v13 + 16))(v10);
  v15 = OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_100_2(v15, v16, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (OUTLINED_FUNCTION_93_1(v0) == 1)
  {
    sub_1DCB185D0(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_51_2(v18))
    {
      OUTLINED_FUNCTION_83();
      v25[1] = OUTLINED_FUNCTION_54();
      *v7 = 136315650;
      v19 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_98_1(v19, v20);
      OUTLINED_FUNCTION_92_1();
      *(v7 + 4) = v1;
      *(v7 + 12) = 2048;
      OUTLINED_FUNCTION_91_0(375);
      *(v7 + 24) = sub_1DCB10E9C(0xD00000000000003ELL, v21, v22);
      OUTLINED_FUNCTION_16_3(&dword_1DCAFC000, v23, v24, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_52();
    }

    (*(v14 + 8))(v0, v12);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003ELL, v2 | 0x8000000000000000);
}

void sub_1DCBC06EC()
{
  OUTLINED_FUNCTION_50();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v23 - v7;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v9 = OUTLINED_FUNCTION_146();
  v10 = __swift_project_value_buffer(v9, qword_1EDE57E00);
  v11 = *(v9 - 8);
  (*(v11 + 16))(v8, v10, v9);
  v12 = OUTLINED_FUNCTION_68_3();
  OUTLINED_FUNCTION_147(v12, v13, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (__swift_getEnumTagSinglePayload(v0, 1, v9) == 1)
  {
    sub_1DCB185D0(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v14 = sub_1DD0DD8EC();
    v15 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_94_0(v15))
    {
      v16 = OUTLINED_FUNCTION_83();
      v23[0] = OUTLINED_FUNCTION_85();
      v23[1] = v23[0];
      *v16 = 136315650;
      v17 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_149(v17, v18);
      OUTLINED_FUNCTION_148();
      OUTLINED_FUNCTION_71_1();
      *(v16 + 24) = sub_1DCB10E9C(0xD00000000000004ALL, v19, v20);
      OUTLINED_FUNCTION_65_3(&dword_1DCAFC000, v21, v22, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_67_3();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_80();
    }

    (*(v11 + 8))(v0, v9);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004ALL, v1 | 0x8000000000000000);
}

void AceServiceInvoker.submitToRemote<A>(_:_:completion:)()
{
  OUTLINED_FUNCTION_50();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8, v5);
  OUTLINED_FUNCTION_45_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - v9;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    v7 = v11;
    swift_once();
  }

  v12 = OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_72_1(v12, qword_1EDE57E00);
  v14 = v13;
  (*(v13 + 16))(v10);
  v15 = OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_100_2(v15, v16, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (OUTLINED_FUNCTION_93_1(v0) == 1)
  {
    sub_1DCB185D0(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v17 = sub_1DD0DD8EC();
    v18 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_51_2(v18))
    {
      OUTLINED_FUNCTION_83();
      v25[1] = OUTLINED_FUNCTION_54();
      *v7 = 136315650;
      v19 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_98_1(v19, v20);
      OUTLINED_FUNCTION_92_1();
      *(v7 + 4) = v1;
      *(v7 + 12) = 2048;
      OUTLINED_FUNCTION_91_0(383);
      *(v7 + 24) = sub_1DCB10E9C(0xD00000000000003BLL, v21, v22);
      OUTLINED_FUNCTION_16_3(&dword_1DCAFC000, v23, v24, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_52();
    }

    (*(v14 + 8))(v0, v12);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000003BLL, v2 | 0x8000000000000000);
}

void AceServiceInvoker.submitAndForgetWithoutRefId(_:)()
{
  OUTLINED_FUNCTION_50();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  OUTLINED_FUNCTION_45_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v22 - v8;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    v6 = v10;
    swift_once();
  }

  v11 = OUTLINED_FUNCTION_99_1();
  OUTLINED_FUNCTION_72_1(v11, qword_1EDE57E00);
  v13 = v12;
  (*(v12 + 16))(v9);
  v14 = OUTLINED_FUNCTION_18_7();
  OUTLINED_FUNCTION_100_2(v14, v15, &unk_1ECCA7470, &qword_1DD0E16E0);
  if (OUTLINED_FUNCTION_93_1(v0) == 1)
  {
    sub_1DCB185D0(v0, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v16 = sub_1DD0DD8EC();
    v17 = sub_1DD0DE6EC();
    if (OUTLINED_FUNCTION_51_2(v17))
    {
      OUTLINED_FUNCTION_83();
      v22[1] = OUTLINED_FUNCTION_54();
      *v6 = 136315650;
      v18 = OUTLINED_FUNCTION_84_1();
      OUTLINED_FUNCTION_98_1(v18, v19);
      OUTLINED_FUNCTION_92_1();
      *(v6 + 4) = v1;
      *(v6 + 12) = 2048;
      *(v6 + 24) = OUTLINED_FUNCTION_44_3(403);
      OUTLINED_FUNCTION_16_3(&dword_1DCAFC000, v20, v21, "FatalError at %s:%lu - %s");
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_37();
      OUTLINED_FUNCTION_52();
    }

    (*(v13 + 8))(v0, v11);
  }

  OUTLINED_FUNCTION_119();
}