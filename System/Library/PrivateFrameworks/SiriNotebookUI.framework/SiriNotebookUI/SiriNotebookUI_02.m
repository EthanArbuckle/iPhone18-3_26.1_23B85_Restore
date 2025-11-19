uint64_t sub_26849515C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  [v1 setDoesRelativeDateFormatting_];
  v2 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v3 = v2;
  v4 = 0;
  if ((*(v0 + *(v2 + 24)) & 1) == 0)
  {
    v4 = ~*(v0 + *(v2 + 28)) & 1;
  }

  [v1 setTimeStyle_];
  v5 = *(v0 + *(v3 + 28));
  [v1 setDateStyle_];
  v6 = sub_2684B38B4();
  [v1 setLocale_];

  [v1 setFormattingContext_];
  v7 = sub_2684B3814();
  v8 = [v1 stringFromDate_];

  v9 = sub_2684B5554();
  return v9;
}

uint64_t sub_268495298(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E2F0, &qword_2684B8EF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849617C();
  sub_2684B5AB4();
  v14[15] = 0;
  sub_2684B3924();
  sub_268496084(&qword_28027E2F8, MEMORY[0x277CC9788]);
  sub_2684B59D4();
  if (!v2)
  {
    v11 = type metadata accessor for TemporalTriggerFormatStyle(0);
    v12 = *(v11 + 20);
    v14[14] = 1;
    sub_2684B3974();
    sub_268496084(&qword_28027E300, MEMORY[0x277CC99E8]);
    sub_2684B59D4();
    v14[13] = *(v3 + *(v11 + 24));
    v14[12] = 2;
    sub_268496284();
    sub_2684B59B4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2684954E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_2684B3974();
  v29 = *(v32 - 8);
  v3 = *(v29 + 64);
  MEMORY[0x28223BE20](v32);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3924();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  MEMORY[0x28223BE20](v6);
  v34 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E2C8, &qword_2684B8EF0);
  v33 = *(v35 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v11 = &v27 - v10;
  v12 = type metadata accessor for TemporalTriggerFormatStyle(0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B38E4();
  v17 = *(v13 + 28);
  sub_2684B3944();
  v18 = *(v13 + 32);
  v16[v18] = 2;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849617C();
  v20 = v36;
  sub_2684B5AA4();
  if (!v20)
  {
    v36 = v17;
    v21 = v30;
    v27 = v18;
    v22 = v32;
    v40 = 0;
    sub_268496084(&qword_28027E2D8, MEMORY[0x277CC9788]);
    v23 = v31;
    sub_2684B5984();
    (*(v21 + 40))(v16, v34, v23);
    v39 = 1;
    sub_268496084(&qword_28027E2E0, MEMORY[0x277CC99E8]);
    sub_2684B5984();
    (*(v29 + 40))(&v16[v36], v5, v22);
    v37 = 2;
    sub_268496230();
    v25 = v35;
    sub_2684B5964();
    (*(v33 + 8))(v11, v25);
    v26 = v28;
    v16[v27] = v38;
    sub_268497D74(v16, v26, type metadata accessor for TemporalTriggerFormatStyle);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_2684961D0(v16, type metadata accessor for TemporalTriggerFormatStyle);
}

uint64_t sub_26849593C()
{
  v1 = 0x7261646E656C6163;
  if (*v0 != 1)
  {
    v1 = 0x696E557375636F66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t sub_268495998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_268497DDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2684959CC(uint64_t a1)
{
  v2 = sub_26849617C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268495A08(uint64_t a1)
{
  v2 = sub_26849617C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268495A44@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v26 = a2;
  v4 = sub_2684B3844();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v10 = (v9 - 8);
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2684B3924();
  (*(*(v14 - 8) + 16))(v13, v2, v14);
  v15 = *(a1 + 20);
  v16 = v10[7];
  v17 = sub_2684B3974();
  (*(*(v17 - 8) + 16))(&v13[v16], v2 + v15, v17);
  v18 = sub_2684B40A4();
  v19 = *(v2 + *(a1 + 24));
  v13[v10[8]] = v18 & 1;
  v13[v10[9]] = v19;
  sub_2684B4094();
  v20 = sub_26849515C();
  v22 = v21;
  (*(v5 + 8))(v8, v4);
  result = sub_2684961D0(v13, type metadata accessor for TemporalTriggerDateFormatStyle);
  v24 = v26;
  *v26 = v20;
  v24[1] = v22;
  return result;
}

uint64_t sub_268495C98(uint64_t a1)
{
  v3 = v1;
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v4 = *(a1 + 20);
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v5 = *(v3 + *(a1 + 24));
  sub_2684B5A84();
  if (v5 != 2)
  {
    MEMORY[0x26D619E40](v5 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268495DBC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v5 = *(a2 + 20);
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v6 = *(v4 + *(a2 + 24));
  if (v6 == 2)
  {
    return sub_2684B5A84();
  }

  sub_2684B5A84();
  return MEMORY[0x26D619E40](v6 & 1);
}

uint64_t sub_268495ED0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v5 = *(a2 + 20);
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v6 = *(v4 + *(a2 + 24));
  sub_2684B5A84();
  if (v6 != 2)
  {
    MEMORY[0x26D619E40](v6 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496084(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26849617C()
{
  result = qword_28027E2D0;
  if (!qword_28027E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2D0);
  }

  return result;
}

uint64_t sub_2684961D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_268496230()
{
  result = qword_28027E2E8;
  if (!qword_28027E2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E2E8);
  }

  return result;
}

unint64_t sub_268496284()
{
  result = qword_28027E308;
  if (!qword_28027E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E308);
  }

  return result;
}

uint64_t sub_2684962D8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E400, &qword_2684B93F8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268497EF8();
  sub_2684B5AB4();
  v15[15] = 0;
  sub_2684B3924();
  sub_268496084(&qword_28027E2F8, MEMORY[0x277CC9788]);
  sub_2684B59D4();
  if (!v2)
  {
    v11 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
    v12 = v11[5];
    v15[14] = 1;
    sub_2684B3974();
    sub_268496084(&qword_28027E300, MEMORY[0x277CC99E8]);
    sub_2684B59D4();
    v13 = *(v3 + v11[6]);
    v15[13] = 2;
    sub_2684B59C4();
    v15[12] = *(v3 + v11[7]);
    v15[11] = 3;
    sub_268496284();
    sub_2684B59B4();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_26849654C()
{
  v1 = v0;
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v2 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v3 = v2[5];
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v4 = *(v1 + v2[6]);
  sub_2684B5A84();
  v5 = *(v1 + v2[7]);
  sub_2684B5A84();
  if (v5 != 2)
  {
    MEMORY[0x26D619E40](v5 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496688@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v38 = sub_2684B3974();
  v33 = *(v38 - 8);
  v3 = *(v33 + 64);
  MEMORY[0x28223BE20](v38);
  v34 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_2684B3924();
  v36 = *(v39 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x28223BE20](v39);
  v41 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E3F0, &qword_2684B93F0);
  v35 = *(v40 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x28223BE20](v40);
  v9 = &v29 - v8;
  v10 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v11 = (v10 - 8);
  v12 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B38E4();
  v15 = v11[7];
  sub_2684B3944();
  v16 = v11[8];
  v14[v16] = 0;
  v17 = v11[9];
  v14[v17] = 2;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_268497EF8();
  v37 = v9;
  v19 = v42;
  sub_2684B5AA4();
  if (v19)
  {
    v28 = a1;
  }

  else
  {
    v30 = v16;
    v31 = v15;
    v21 = v35;
    v20 = v36;
    v29 = v17;
    v42 = a1;
    v22 = v38;
    v47 = 0;
    sub_268496084(&qword_28027E2D8, MEMORY[0x277CC9788]);
    v23 = v40;
    v24 = v39;
    v25 = v37;
    sub_2684B5984();
    (*(v20 + 40))(v14, v41, v24);
    v46 = 1;
    sub_268496084(&qword_28027E2E0, MEMORY[0x277CC99E8]);
    v26 = v34;
    sub_2684B5984();
    (*(v33 + 40))(&v14[v31], v26, v22);
    v45 = 2;
    v14[v30] = sub_2684B5974() & 1;
    v43 = 3;
    sub_268496230();
    sub_2684B5964();
    (*(v21 + 8))(v25, v23);
    v14[v29] = v44;
    sub_268497D74(v14, v32, type metadata accessor for TemporalTriggerDateFormatStyle);
    v28 = v42;
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return sub_2684961D0(v14, type metadata accessor for TemporalTriggerDateFormatStyle);
}

uint64_t sub_268496B20()
{
  v1 = 0x656C61636F6CLL;
  v2 = 0x7961446C6C417369;
  if (*v0 != 2)
  {
    v2 = 0x696E557375636F66;
  }

  if (*v0)
  {
    v1 = 0x7261646E656C6163;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_268496B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2684981A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_268496BD0(uint64_t a1)
{
  v2 = sub_268497EF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_268496C0C(uint64_t a1)
{
  v2 = sub_268497EF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_268496C48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26849515C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268496C88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  sub_268497D74(v3, a3, a2);
  v6 = sub_2684B3924();
  v7 = *(*(v6 - 8) + 24);

  return v7(a3, a1, v6);
}

uint64_t sub_268496D40(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v5 = a2[5];
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v6 = *(v4 + a2[6]);
  sub_2684B5A84();
  v7 = *(v4 + a2[7]);
  if (v7 == 2)
  {
    return sub_2684B5A84();
  }

  sub_2684B5A84();
  return MEMORY[0x26D619E40](v7 & 1);
}

uint64_t sub_268496E64(uint64_t a1, int *a2)
{
  v4 = v2;
  sub_2684B5A64();
  sub_2684B3924();
  sub_268496084(&qword_28027E310, MEMORY[0x277CC9788]);
  sub_2684B5524();
  v5 = a2[5];
  sub_2684B3974();
  sub_268496084(&qword_28027E318, MEMORY[0x277CC99E8]);
  sub_2684B5524();
  v6 = *(v4 + a2[6]);
  sub_2684B5A84();
  v7 = *(v4 + a2[7]);
  sub_2684B5A84();
  if (v7 != 2)
  {
    MEMORY[0x26D619E40](v7 & 1);
  }

  return sub_2684B5A94();
}

uint64_t sub_268496F98(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x26D617CA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemporalTriggerFormatStyle(0);
  if ((MEMORY[0x26D617D20](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v7 ^ v6) & 1;
    if (v7 == 2 || v9 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_268497028(uint64_t a1, uint64_t a2)
{
  if ((MEMORY[0x26D617CA0]() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  if ((MEMORY[0x26D617D20](a1 + v4[5], a2 + v4[5]) & 1) == 0 || *(a1 + v4[6]) != *(a2 + v4[6]))
  {
    return 0;
  }

  v6 = v4[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 == 2)
  {
    if (v8 != 2)
    {
      return 0;
    }
  }

  else
  {
    v9 = (v8 ^ v7) & 1;
    if (v8 == 2 || v9 != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_2684970D0(uint64_t *a1)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E320, &qword_2684B8F00);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  MEMORY[0x28223BE20](v29);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E328, &qword_2684B8F08);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E330, &qword_2684B8F10);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v25 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26849750C();
  v14 = v31;
  sub_2684B5AA4();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_2684B5994();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_2684B58E4();
    swift_allocError();
    v22 = v21;
    v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E340, &qword_2684B8F18) + 48);
    *v22 = &type metadata for TemporalTriggerFormatStyle.FocusUnit;
    sub_2684B5954();
    sub_2684B58D4();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_268497560();
    sub_2684B5944();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_2684975B4();
    sub_2684B5944();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v32;
}

unint64_t sub_26849750C()
{
  result = qword_28027E338;
  if (!qword_28027E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E338);
  }

  return result;
}

unint64_t sub_268497560()
{
  result = qword_28027E348;
  if (!qword_28027E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E348);
  }

  return result;
}

unint64_t sub_2684975B4()
{
  result = qword_28027E350;
  if (!qword_28027E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E350);
  }

  return result;
}

uint64_t sub_268497608(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t getEnumTagSinglePayload for TemporalTriggerFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemporalTriggerFormatStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_268497840()
{
  sub_2684B3924();
  if (v0 <= 0x3F)
  {
    sub_2684B3974();
    if (v1 <= 0x3F)
    {
      sub_268494A84();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_268497930()
{
  result = qword_28027E388;
  if (!qword_28027E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E388);
  }

  return result;
}

unint64_t sub_268497988()
{
  result = qword_28027E390;
  if (!qword_28027E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E390);
  }

  return result;
}

unint64_t sub_2684979E0()
{
  result = qword_28027E398;
  if (!qword_28027E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E398);
  }

  return result;
}

unint64_t sub_268497A38()
{
  result = qword_28027E3A0;
  if (!qword_28027E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3A0);
  }

  return result;
}

unint64_t sub_268497A90()
{
  result = qword_28027E3A8;
  if (!qword_28027E3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3A8);
  }

  return result;
}

unint64_t sub_268497AE8()
{
  result = qword_28027E3B0;
  if (!qword_28027E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3B0);
  }

  return result;
}

unint64_t sub_268497B40()
{
  result = qword_28027E3B8;
  if (!qword_28027E3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3B8);
  }

  return result;
}

unint64_t sub_268497B98()
{
  result = qword_28027E3C0;
  if (!qword_28027E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3C0);
  }

  return result;
}

unint64_t sub_268497BF0()
{
  result = qword_28027E3C8;
  if (!qword_28027E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3C8);
  }

  return result;
}

unint64_t sub_268497C48()
{
  result = qword_28027E3D0;
  if (!qword_28027E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3D0);
  }

  return result;
}

uint64_t sub_268497D74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_268497DDC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_2684B59F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696E557375636F66 && a2 == 0xE900000000000074)
  {

    return 2;
  }

  else
  {
    v6 = sub_2684B59F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_268497EF8()
{
  result = qword_28027E3F8;
  if (!qword_28027E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E3F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TemporalTriggerDateFormatStyle.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TemporalTriggerDateFormatStyle.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2684980A0()
{
  result = qword_28027E408;
  if (!qword_28027E408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E408);
  }

  return result;
}

unint64_t sub_2684980F8()
{
  result = qword_28027E410;
  if (!qword_28027E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E410);
  }

  return result;
}

unint64_t sub_268498150()
{
  result = qword_28027E418;
  if (!qword_28027E418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E418);
  }

  return result;
}

uint64_t sub_2684981A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_2684B59F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7261646E656C6163 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000 || (sub_2684B59F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696E557375636F66 && a2 == 0xE900000000000074)
  {

    return 3;
  }

  else
  {
    v6 = sub_2684B59F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t type metadata accessor for SimpleConfirmationSnippetView()
{
  result = qword_28027E420;
  if (!qword_28027E420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684983B0()
{
  result = sub_2684B3DD4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_268498438@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v1 = sub_2684B3A74();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3D44();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v48 - v12;
  v14 = *MEMORY[0x277D5E0D0];
  v15 = *(v7 + 104);
  v66 = v7 + 104;
  v67 = v15;
  v48 = &v48 - v12;
  v17 = v16;
  (v15)(&v48 - v12, v14);
  v18 = *MEMORY[0x277D5DFB0];
  v19 = v2[13];
  v64 = v2 + 13;
  v65 = v19;
  v49 = v5;
  v50 = v1;
  v19(v5, v18, v1);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E430, &qword_2684B9580);
  v70[3] = v52;
  v63 = sub_26846ACF0(&qword_28027E438, &qword_28027E430, &qword_2684B9580);
  v70[4] = v63;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  v62 = v2[2];
  v62(boxed_opaque_existential_1, v5, v1);
  v21 = *(v7 + 16);
  v54 = v7 + 16;
  v61 = v21;
  v53 = v11;
  v22 = v17;
  v21(v11, v13, v17);
  v56 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = v56;
  v24 = swift_allocObject();
  v59 = *(v7 + 32);
  v25 = v24 + v23;
  v26 = v22;
  v59(v25, v11, v22);
  v27 = v52;
  v28 = (boxed_opaque_existential_1 + *(v52 + 52));
  *v28 = sub_2684989E0;
  v28[1] = v24;
  v29 = v27;
  v30 = boxed_opaque_existential_1 + *(v27 + 56);
  sub_2684B52A4();
  v31 = v2[1];
  v57 = v2 + 1;
  v58 = v31;
  v32 = v49;
  v33 = v50;
  v31(v49, v50);
  v34 = *(v7 + 8);
  v51 = v7 + 8;
  v55 = v34;
  v35 = v48;
  v34(v48, v26);
  v67(v35, *MEMORY[0x277D5E0C8], v26);
  v36 = v32;
  v37 = v32;
  v38 = v33;
  v65(v37, *MEMORY[0x277D5DFA8], v33);
  v39 = v29;
  v69[3] = v29;
  v69[4] = v63;
  v40 = __swift_allocate_boxed_opaque_existential_1(v69);
  v41 = v38;
  v62(v40, v36, v38);
  v42 = v53;
  v61(v53, v35, v26);
  v43 = v56;
  v44 = swift_allocObject();
  v59(v44 + v43, v42, v26);
  v45 = (v40 + *(v39 + 52));
  *v45 = sub_268498ADC;
  v45[1] = v44;
  v46 = v40 + *(v39 + 56);
  sub_2684B52A4();
  v58(v36, v41);
  v55(v35, v26);
  return sub_2684B51A4();
}

uint64_t sub_268498924()
{
  sub_2684B51B4();
  sub_268498988();

  return sub_2684B5184();
}

unint64_t sub_268498988()
{
  result = qword_28027D798;
  if (!qword_28027D798)
  {
    sub_2684B51B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D798);
  }

  return result;
}

uint64_t objectdestroyTm_6()
{
  v1 = sub_2684B3D44();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_268498A6C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_2684B3D44() - 8) + 80);

  return sub_26847D254(a1);
}

uint64_t sub_268498AE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268498B28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for AppLinkView()
{
  result = qword_28027E450;
  if (!qword_28027E450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_268498BF4()
{
  sub_2684B4184();
  if (v0 <= 0x3F)
  {
    sub_268498C90();
    if (v1 <= 0x3F)
    {
      sub_268498CE0();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_268498C90()
{
  if (!qword_28027E460)
  {
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E460);
    }
  }
}

void sub_268498CE0()
{
  if (!qword_28027E468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E018, &qword_2684B88D8);
    v0 = sub_2684B4F64();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E468);
    }
  }
}

uint64_t sub_268498D60@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = type metadata accessor for AppLinkView();
  v45 = *(v2 - 8);
  v3 = *(v45 + 64);
  MEMORY[0x28223BE20](v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E470, &qword_2684B9630);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v41 - v6;
  v8 = sub_2684B47F4();
  v43 = *(v8 - 1);
  v44 = v8;
  v9 = *(v43 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E478, &qword_2684B9638);
  v46 = *(v12 - 8);
  v13 = *(v46 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v41 - v14;
  v16 = (v1 + *(v2 + 24));
  v17 = v16[1];
  v54 = *v16;
  v55 = v17;
  v56 = v16[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E480, &qword_2684B9640);
  sub_2684B4F34();
  if (v49)
  {
    v42 = v4;
    v45 = v12;
    v19 = v50;
    v18 = v51;
    v20 = v53;
    v41 = v52;
    v21 = v1 + *(v2 + 20);
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = v49;
    if (v23 != 1)
    {
      sub_26846A6D0(v22, 0);
      sub_2684B5704();
      v34 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v22, 0);
      (*(v43 + 8))(v11, v44);
    }

    *&v54 = sub_2684B4F04();
    v35 = swift_allocObject();
    v35[2] = v24;
    v35[3] = v19;
    v36 = v41;
    v35[4] = v18;
    v35[5] = v36;
    v35[6] = v20;
    v44 = v24;

    v37 = MEMORY[0x277CE1088];
    v38 = MEMORY[0x277CE1078];
    sub_2684B4CF4();

    v39 = v45;
    v40 = v46;
    (*(v46 + 16))(v7, v15, v45);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E488, &qword_2684B9648);
    *&v54 = v37;
    *(&v54 + 1) = v38;
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    sub_2684B49B4();

    return (*(v40 + 8))(v15, v39);
  }

  else
  {
    v46 = sub_2684B4E64();
    sub_2684B50A4();
    sub_2684B44A4();
    v25 = BYTE8(v54);
    v43 = v55;
    v44 = v54;
    v26 = BYTE8(v55);
    v42 = *(&v56 + 1);
    v27 = v56;
    sub_268499BEC(v1, &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
    v28 = (*(v45 + 80) + 16) & ~*(v45 + 80);
    v29 = swift_allocObject();
    sub_268499C50(&v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v29 + v28);
    LOBYTE(v49) = v25;
    v48 = v26;
    v30 = v43;
    v31 = v44;
    *v7 = v46;
    *(v7 + 1) = v31;
    v7[16] = v25;
    *(v7 + 3) = v30;
    v7[32] = v26;
    v32 = v42;
    *(v7 + 5) = v27;
    *(v7 + 6) = v32;
    *(v7 + 7) = sub_268499CB4;
    *(v7 + 8) = v29;
    *(v7 + 9) = 0;
    *(v7 + 10) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E488, &qword_2684B9648);
    v49 = MEMORY[0x277CE1088];
    v50 = MEMORY[0x277CE1078];
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    return sub_2684B49B4();
  }
}

void sub_26849937C()
{
  v1 = sub_2684B4184();
  v45 = *(v1 - 8);
  v2 = *(v45 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AppLinkView();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2684B47F4();
  v46 = *(v9 - 8);
  v47 = v9;
  v10 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2684B4314();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_268499884();
  if (v18)
  {
    v19 = v18;
    v42 = v4;
    (*(v14 + 104))(v17, *MEMORY[0x277D45370], v13);
    v20 = v0 + *(v5 + 20);
    v21 = *v20;
    LODWORD(v20) = *(v20 + 8);
    v43 = v5;
    v44 = v0;
    if (v20 != 1)
    {

      sub_2684B5704();
      v22 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v21, 0);
      (*(v46 + 8))(v12, v47);
    }

    v23 = sub_2684B5724();
    v25 = v24;
    v27 = v26;
    (*(v14 + 8))(v17, v13);
    if (v23)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = v19;
      v29 = (v44 + *(v43 + 24));
      v30 = v29[1];
      v53[0] = *v29;
      v53[1] = v30;
      v53[2] = v29[2];
      v48 = v23;
      v49 = v25;
      v50 = v27;
      v51 = sub_268499EA4;
      v52 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E480, &qword_2684B9640);
      sub_2684B4F44();
      return;
    }

    v4 = v42;
    v0 = v44;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v31 = sub_2684B4354();
  __swift_project_value_buffer(v31, qword_280282910);
  sub_268499BEC(v0, v8);
  v32 = sub_2684B4334();
  v33 = sub_2684B56F4();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = v8;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v53[0] = v36;
    *v35 = 136315138;
    (*(v45 + 16))(v4, v34, v1);
    v37 = sub_2684B5564();
    v39 = v38;
    sub_268499E48(v34);
    v40 = sub_268479394(v37, v39, v53);

    *(v35 + 4) = v40;
    _os_log_impl(&dword_26845C000, v32, v33, "Could not load app icon from app link: %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x26D61A450](v36, -1, -1);
    MEMORY[0x26D61A450](v35, -1, -1);
  }

  else
  {

    sub_268499E48(v8);
  }
}

id sub_268499884()
{
  v1 = v0;
  v2 = sub_2684B4124();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B37F4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2684B4184();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, v1, v12);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x277D5E190])
  {
    (*(v13 + 96))(v16, v12);
    (*(v8 + 32))(v11, v16, v7);
    v18 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v19 = sub_2684B37D4();
    v20 = [v18 initWithUniversalLink_];

    (*(v8 + 8))(v11, v7);
  }

  else if (v17 == *MEMORY[0x277D5E198])
  {
    (*(v13 + 96))(v16, v12);
    (*(v3 + 32))(v6, v16, v2);
    v21 = sub_2684B4114();
    v23 = v22;
    v24 = objc_allocWithZone(MEMORY[0x277D448F0]);
    v25 = sub_2684B3804();
    v20 = [v24 initWithUserActivityData_];

    sub_2684799F0(v21, v23);
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  return v20;
}

uint64_t sub_268499BEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLinkView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268499C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppLinkView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268499CB4()
{
  v1 = *(type metadata accessor for AppLinkView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  sub_26849937C();
}

unint64_t sub_268499D10()
{
  result = qword_28027E490;
  if (!qword_28027E490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E488, &qword_2684B9648);
    sub_268499D9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E490);
  }

  return result;
}

unint64_t sub_268499D9C()
{
  result = qword_28027E498;
  if (!qword_28027E498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4A0, &qword_2684B9650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E498);
  }

  return result;
}

uint64_t sub_268499E20()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  return v1();
}

uint64_t sub_268499E48(uint64_t a1)
{
  v2 = type metadata accessor for AppLinkView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_268499EC8()
{
  result = qword_28027E4A8;
  if (!qword_28027E4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4B0, &qword_2684B9658);
    swift_getOpaqueTypeConformance2();
    sub_268499D10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4A8);
  }

  return result;
}

uint64_t type metadata accessor for NotebookEnvironmentSetupModifier()
{
  result = qword_28027E4B8;
  if (!qword_28027E4B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268499FF8()
{
  result = sub_2684B3924();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26849A088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v33 = a2;
  v31 = sub_2684B3904();
  v3 = *(v31 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v31);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B45A4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4C8, &qword_2684B96D8);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  KeyPath = swift_getKeyPath();
  v18 = &v16[*(v13 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4D0, &qword_2684B9710) + 28);
  v20 = sub_2684B3924();
  (*(*(v20 - 8) + 16))(v18 + v19, v2, v20);
  *v18 = KeyPath;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4D8, &qword_2684B9718);
  (*(*(v21 - 8) + 16))(v16, v32, v21);
  v22 = swift_getKeyPath();
  if (*(v2 + *(type metadata accessor for NotebookEnvironmentSetupModifier() + 20)) == 1)
  {
    (*(v8 + 104))(v11, *MEMORY[0x277CDFA90], v7);
  }

  else
  {
    sub_2684B3914();
    v23 = sub_2684B38F4();
    (*(v3 + 8))(v6, v31);
    if (v23 == 2)
    {
      v24 = MEMORY[0x277CDFA90];
    }

    else
    {
      v24 = MEMORY[0x277CDFA88];
    }

    (*(v8 + 104))(v11, *v24, v7);
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4E0, &qword_2684B9750);
  v26 = v33;
  v27 = (v33 + *(v25 + 36));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4E8, &qword_2684B9758);
  (*(v8 + 32))(v27 + *(v28 + 28), v11, v7);
  *v27 = v22;
  return sub_26849A4A0(v16, v26);
}

uint64_t sub_26849A3D4(uint64_t a1)
{
  v2 = sub_2684B45A4();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B46F4();
}

uint64_t sub_26849A4A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4C8, &qword_2684B96D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26849A510()
{
  result = qword_28027E4F0;
  if (!qword_28027E4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4E0, &qword_2684B9750);
    sub_26849A5C8();
    sub_26846ACF0(&qword_28027E510, &qword_28027E4E8, &qword_2684B9758);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4F0);
  }

  return result;
}

unint64_t sub_26849A5C8()
{
  result = qword_28027E4F8;
  if (!qword_28027E4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E4C8, &qword_2684B96D8);
    sub_26846ACF0(&qword_28027E500, &qword_28027E4D8, &qword_2684B9718);
    sub_26846ACF0(&qword_28027E508, &qword_28027E4D0, &qword_2684B9710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E4F8);
  }

  return result;
}

uint64_t sub_26849A6C0()
{
  sub_26849A6FC();
  sub_2684B4804();
  return v1;
}

unint64_t sub_26849A6FC()
{
  result = qword_28027E518;
  if (!qword_28027E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E518);
  }

  return result;
}

uint64_t sub_26849A760()
{
  v0 = sub_2684B3F04();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  (MEMORY[0x28223BE20])();
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D4A8, &unk_2684B6D30) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (MEMORY[0x28223BE20])();
  v7 = &v26 - v6;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E520, &unk_2684B97B0) - 8) + 64);
  v9 = (MEMORY[0x28223BE20])();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = sub_2684B4E34();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v27 = &v26 - v20;
  sub_2684B3F14();
  if ((*(v1 + 48))(v7, 1, v0) == 1)
  {
    sub_268467A4C(v7, &qword_28027D4A8, &unk_2684B6D30);
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_10:
    sub_268467A4C(v13, &qword_28027E520, &unk_2684B97B0);
    sub_2684B3F24();
    sub_2684B3F54();
    sub_2684B3F44();
    (*(v15 + 104))(v19, *MEMORY[0x277CE0EE0], v14);
    return sub_2684B4E94();
  }

  (*(v1 + 16))(v4, v7, v0);
  v21 = (*(v1 + 88))(v4, v0);
  if (v21 == *MEMORY[0x277D5E158])
  {
    v22 = MEMORY[0x277CE0EE8];
LABEL_7:
    (*(v15 + 104))(v11, *v22, v14);
    (*(v15 + 56))(v11, 0, 1, v14);
    goto LABEL_9;
  }

  if (v21 == *MEMORY[0x277D5E150])
  {
    v22 = MEMORY[0x277CE0EE0];
    goto LABEL_7;
  }

  (*(v15 + 56))(v11, 1, 1, v14);
  (*(v1 + 8))(v4, v0);
LABEL_9:
  sub_26849AC40(v11, v13);
  (*(v1 + 8))(v7, v0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_10;
  }

  v24 = v27;
  (*(v15 + 32))(v27, v13, v14);
  (*(v15 + 16))(v19, v24, v14);
  sub_2684B3F24();
  sub_2684B3F54();
  sub_2684B3F44();
  v25 = sub_2684B4E94();
  (*(v15 + 8))(v24, v14);
  return v25;
}

uint64_t sub_26849AC40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E520, &unk_2684B97B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for AppPunchoutSnippet()
{
  result = qword_28027E528;
  if (!qword_28027E528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26849AD24()
{
  result = sub_2684B3B24();
  if (v1 <= 0x3F)
  {
    result = sub_2684B52B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_26849ADC4(uint64_t a1)
{
  v2 = type metadata accessor for AppPunchoutSnippet();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26849B2F4(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26849B358(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  return sub_2684B4F74();
}

uint64_t sub_26849AEF8(uint64_t a1)
{
  v2 = sub_2684B5464();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
  sub_2684B3B14();
  v8 = sub_2684B5544();

  [v7 setLaunchId_];

  v9 = a1 + *(type metadata accessor for AppPunchoutSnippet() + 20);
  sub_2684B5294();
  v10 = v7;
  sub_2684B5444();

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_26849B040@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B4884();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2684B4874();
  sub_2684B4864();
  sub_2684B3B04();
  sub_2684B4854();

  sub_2684B4864();
  sub_2684B48A4();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v4 = qword_280282928;
  result = sub_2684B4B94();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_26849B1AC(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26849B2F4(v1, &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_26849B358(&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v5 + v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D788, &qword_2684B74D8);
  sub_26846ACF0(&qword_28027D790, &qword_28027D788, &qword_2684B74D8);
  return sub_2684B5184();
}

uint64_t sub_26849B2F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchoutSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849B358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPunchoutSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849B3BC()
{
  v1 = *(type metadata accessor for AppPunchoutSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26849ADC4(v2);
}

uint64_t objectdestroyTm_7()
{
  v1 = (type metadata accessor for AppPunchoutSnippet() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3B24();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_2684B52B4();
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_26849B544()
{
  v1 = *(type metadata accessor for AppPunchoutSnippet() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26849AEF8(v2);
}

_BYTE *sub_26849B5BC(_BYTE *result, void *(*a2)(uint64_t *__return_ptr))
{
  v2 = result;
  if (*result == 1)
  {
    result = a2(&v4);
    v3 = v4;
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t type metadata accessor for RemindersAppPunchoutModifier()
{
  result = qword_28027E550;
  if (!qword_28027E550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26849B6E0()
{
  sub_2684B3E74();
  if (v0 <= 0x3F)
  {
    sub_2684B52B4();
    if (v1 <= 0x3F)
    {
      sub_268467F10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26849B798(NSObject *a1)
{
  v2 = sub_2684B5464();
  v117 = *(v2 - 8);
  v118 = v2;
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v2);
  v116 = &v105 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_2684B3E74();
  v113 = *(v115 - 8);
  v5 = *(v113 + 64);
  MEMORY[0x28223BE20](v115);
  v112 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RemindersAppPunchoutModifier();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v119 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v105 - v12;
  MEMORY[0x28223BE20](v11);
  v111 = &v105 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E570, &qword_2684B9928);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v108 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v105 - v18;
  v20 = sub_2684B4304();
  v120 = *(v20 - 8);
  v21 = v120[8];
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v105 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v105 - v25;
  v122 = sub_2684B37F4();
  v124 = *(v122 - 8);
  v27 = *(v124 + 64);
  v28 = MEMORY[0x28223BE20](v122);
  v106 = &v105 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v105 = &v105 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v109 = &v105 - v33;
  MEMORY[0x28223BE20](v32);
  v121 = &v105 - v34;
  v35 = sub_2684B47F4();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v105 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v7;
  v40 = *(v7 + 24);
  v123 = a1;
  v41 = a1 + v40;
  v42 = *v41;
  if ((v41[8] & 1) == 0)
  {

    sub_2684B5704();
    v43 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v42, 0);
    (*(v36 + 8))(v39, v35);
  }

  v44 = sub_2684B5784();
  v45 = v123;
  sub_26847EBF8(v19);
  v46 = v120;
  v47 = v120[6];
  v48 = v47(v19, 1, v20);
  v107 = v24;
  if (v48 == 1)
  {
    v49 = *MEMORY[0x277D45150];
    v50 = sub_2684B42B4();
    (*(*(v50 - 8) + 104))(v26, v49, v50);
    (v46[13])(v26, *MEMORY[0x277D45200], v20);
    if (v47(v19, 1, v20) != 1)
    {
      sub_26849C6B0(v19);
    }
  }

  else
  {
    (v46[4])(v26, v19, v20);
  }

  v51 = v121;
  sub_2684B42F4();
  v52 = v46[1];
  v52(v26, v20);
  if (v44)
  {
    v53 = *(v124 + 8);
    v124 += 8;
    v121 = v53;
    (v53)(v51, v122);
    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v54 = sub_2684B4354();
    __swift_project_value_buffer(v54, qword_280282910);
    v55 = v110;
    sub_26849C524(v45, v110);
    v56 = v119;
    sub_26849C524(v45, v119);
    v57 = sub_2684B4334();
    v58 = sub_2684B56F4();
    if (os_log_type_enabled(v57, v58))
    {
      LODWORD(v118) = v58;
      v123 = v57;
      v59 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v125[0] = v117;
      *v59 = 136315650;
      (*(v113 + 16))(v112, v55, v115);
      v60 = sub_2684B5564();
      v62 = v61;
      sub_26849C718(v55);
      v63 = sub_268479394(v60, v62, v125);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2080;
      v64 = v108;
      sub_26847EBF8(v108);
      if (v47(v64, 1, v20) == 1)
      {
        v65 = *MEMORY[0x277D45150];
        v66 = sub_2684B42B4();
        v67 = v107;
        v68 = v65;
        v69 = v108;
        (*(*(v66 - 8) + 104))(v107, v68, v66);
        (v120[13])(v67, *MEMORY[0x277D45200], v20);
        if (v47(v69, 1, v20) != 1)
        {
          sub_26849C6B0(v69);
        }
      }

      else
      {
        v67 = v107;
        (v120[4])(v107, v64, v20);
      }

      v95 = v105;
      sub_2684B42F4();
      v52(v67, v20);
      v96 = v106;
      sub_2684B37B4();
      v98 = v121;
      v97 = v122;
      (v121)(v95, v122);
      v99 = sub_2684B37C4();
      v101 = v100;
      v98(v96, v97);
      sub_26849C718(v119);
      v102 = sub_268479394(v99, v101, v125);

      *(v59 + 14) = v102;
      *(v59 + 22) = 1024;
      *(v59 + 24) = 0;
      v103 = v123;
      _os_log_impl(&dword_26845C000, v123, v118, "Not punching out to %s with url %s, isValidForCurrentIdiom: %{BOOL}d", v59, 0x1Cu);
      v104 = v117;
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v104, -1, -1);
      MEMORY[0x26D61A450](v59, -1, -1);
    }

    else
    {

      sub_26849C718(v56);
      sub_26849C718(v55);
    }
  }

  else
  {
    v70 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    v71 = sub_2684B37D4();
    v120 = v70;
    [v70 setPunchOutUri_];

    if (qword_28027CF20 != -1)
    {
      swift_once();
    }

    v72 = sub_2684B4354();
    __swift_project_value_buffer(v72, qword_280282910);
    v73 = v111;
    sub_26849C524(v45, v111);
    v74 = v124;
    v75 = v109;
    v76 = v122;
    (*(v124 + 16))(v109, v51, v122);
    v77 = sub_2684B4334();
    v78 = sub_2684B5714();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v125[0] = v119;
      *v79 = 136315394;
      v80 = v73;
      (*(v113 + 16))(v112, v73, v115);
      v81 = sub_2684B5564();
      v83 = v82;
      sub_26849C718(v80);
      v84 = sub_268479394(v81, v83, v125);

      *(v79 + 4) = v84;
      *(v79 + 12) = 2080;
      sub_26849C774();
      v85 = sub_2684B59E4();
      v87 = v86;
      v88 = *(v74 + 8);
      v88(v75, v76);
      v89 = sub_268479394(v85, v87, v125);

      *(v79 + 14) = v89;
      _os_log_impl(&dword_26845C000, v77, v78, "Punching out to %s with url: %s", v79, 0x16u);
      v90 = v119;
      swift_arrayDestroy();
      MEMORY[0x26D61A450](v90, -1, -1);
      v91 = v79;
      v51 = v121;
      MEMORY[0x26D61A450](v91, -1, -1);
    }

    else
    {

      v88 = *(v74 + 8);
      v88(v75, v76);
      sub_26849C718(v73);
    }

    v92 = v123 + *(v114 + 20);
    v93 = v116;
    sub_2684B5294();
    v94 = v120;
    sub_2684B5444();

    (*(v117 + 8))(v93, v118);
    v88(v51, v76);
  }
}

uint64_t sub_26849C3F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  sub_26849C524(v4, &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v6 = swift_allocObject();
  sub_26849C588(&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E560, &qword_2684B9920);
  sub_26849C64C();
  sub_2684B4CF4();
}

uint64_t sub_26849C524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersAppPunchoutModifier();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849C588(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemindersAppPunchoutModifier();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_26849C5EC()
{
  v1 = *(type metadata accessor for RemindersAppPunchoutModifier() - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));

  sub_26849B798(v2);
}

unint64_t sub_26849C64C()
{
  result = qword_28027E568;
  if (!qword_28027E568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E560, &qword_2684B9920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E568);
  }

  return result;
}

uint64_t sub_26849C6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E570, &qword_2684B9928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26849C718(uint64_t a1)
{
  v2 = type metadata accessor for RemindersAppPunchoutModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26849C774()
{
  result = qword_28027D810;
  if (!qword_28027D810)
  {
    sub_2684B37F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027D810);
  }

  return result;
}

uint64_t type metadata accessor for ReminderHeadingTextView()
{
  result = qword_28027E578;
  if (!qword_28027E578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26849C840()
{
  result = sub_2684B3CF4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26849C8C8()
{
  v1 = v0;
  v51 = type metadata accessor for ReminderHeadingTextView();
  v2 = *(*(v51 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v51);
  v50 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v53 = &v50 - v5;
  v6 = sub_2684B4884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for TemporalTriggerDateFormatStyle(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2684B3844();
  v13 = *(v57 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v57);
  v56 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = sub_2684B3C14();
  v55 = *(v19 - 8);
  v20 = *(v55 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2684B3CF4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = (&v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = *(v24 + 16);
  v52 = v1;
  v28(v27, v1, v23);
  v29 = (*(v24 + 88))(v27, v23);
  if (v29 == *MEMORY[0x277D5E058])
  {
    (*(v24 + 96))(v27, v23);
    v30 = v57;
    (*(v13 + 32))(v18, v27, v57);
    (*(v13 + 16))(v56, v18, v30);
    sub_2684B38E4();
    v31 = &v12[v9[5]];
    sub_2684B3944();
    v32 = v9[6];
    v12[v32] = 0;
    v12[v9[7]] = 2;
    v12[v32] = 1;
    sub_26849D354(&qword_28027E588, type metadata accessor for TemporalTriggerDateFormatStyle);
    sub_26849D354(&qword_28027E590, MEMORY[0x277CC9578]);
    v33 = sub_2684B4B84();
    (*(v13 + 8))(v18, v30);
    return v33;
  }

  if (v29 == *MEMORY[0x277D5E060])
  {
    (*(v24 + 96))(v27, v23);
    v34 = v55;
    (*(v55 + 32))(v22, v27, v19);
    v33 = sub_2684B3BF4();
    (*(v34 + 8))(v22, v19);
    return v33;
  }

  if (v29 == *MEMORY[0x277D5E040])
  {
    (*(v24 + 96))(v27, v23);
    v33 = *v27;
    v35 = v27[1];
    return v33;
  }

  if (v29 == *MEMORY[0x277D5E048])
  {
    (*(v24 + 96))(v27, v23);
    v36 = *v27;
    v37 = v27[1];
    sub_2684B4874();
    sub_2684B4864();
    sub_2684B4854();

    sub_2684B4864();
    sub_2684B48A4();
LABEL_15:
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v38 = qword_280282928;
    return sub_2684B4B94();
  }

  if (v29 == *MEMORY[0x277D5E050] || v29 == *MEMORY[0x277D5E088] || v29 == *MEMORY[0x277D5E080] || v29 == *MEMORY[0x277D5E068] || v29 == *MEMORY[0x277D5E090] || v29 == *MEMORY[0x277D5E098] || v29 == *MEMORY[0x277D5E0A0] || v29 == *MEMORY[0x277D5E070] || v29 == *MEMORY[0x277D5E078] || v29 == *MEMORY[0x277D5E038])
  {
    sub_2684B4894();
    goto LABEL_15;
  }

  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v40 = sub_2684B4354();
  __swift_project_value_buffer(v40, qword_280282910);
  v41 = v53;
  sub_26849D294(v52, v53);
  v42 = sub_2684B4334();
  v43 = sub_2684B5704();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v58 = v45;
    *v44 = 136315138;
    sub_26849D294(v41, v50);
    v46 = sub_2684B5564();
    v48 = v47;
    sub_26849D2F8(v41);
    v49 = sub_268479394(v46, v48, &v58);

    *(v44 + 4) = v49;
    _os_log_impl(&dword_26845C000, v42, v43, "Unknown ReminderSectionHeading: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v45);
    MEMORY[0x26D61A450](v45, -1, -1);
    MEMORY[0x26D61A450](v44, -1, -1);
  }

  else
  {

    sub_26849D2F8(v41);
  }

  (*(v24 + 8))(v27, v23);
  return 0;
}

uint64_t sub_26849D260@<X0>(uint64_t a1@<X8>)
{
  result = sub_26849C8C8();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_26849D294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderHeadingTextView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26849D2F8(uint64_t a1)
{
  v2 = type metadata accessor for ReminderHeadingTextView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26849D354(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26849D39C@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2684B3EA4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2684B3C34();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v10);
  v12 = (&v59 - v11);
  sub_2684B3C44();
  v13 = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x277D5E020])
  {
    (*(v8 + 96))(v12, v7);
    v14 = *v12;
    v15 = sub_2684B4894();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5D8, &qword_2684B99C0);
    a1[3] = v22;
    a1[4] = sub_26846ACF0(&qword_28027E5E0, &qword_28027E5D8, &qword_2684B99C0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v15;
    boxed_opaque_existential_1[1] = v17;
    *(boxed_opaque_existential_1 + 16) = v19 & 1;
    boxed_opaque_existential_1[3] = v21;
    boxed_opaque_existential_1[4] = v14;
    *(boxed_opaque_existential_1 + 40) = 0;
    v24 = sub_26849F51C;
LABEL_10:
    boxed_opaque_existential_1[6] = v24;
    boxed_opaque_existential_1[7] = 0;
    v54 = boxed_opaque_existential_1 + *(v22 + 56);
    return sub_2684B52A4();
  }

  if (v13 == *MEMORY[0x277D5E018])
  {
    (*(v8 + 96))(v12, v7);
    v25 = *v12;
    v26 = sub_2684B4894();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E598, &qword_2684B99A0);
    a1[3] = v22;
    a1[4] = sub_26846ACF0(&qword_28027E5A0, &qword_28027E598, &qword_2684B99A0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v26;
    boxed_opaque_existential_1[1] = v28;
    *(boxed_opaque_existential_1 + 16) = v30 & 1;
    boxed_opaque_existential_1[3] = v32;
    boxed_opaque_existential_1[4] = v25;
    *(boxed_opaque_existential_1 + 40) = 0;
    v24 = sub_26849FA68;
    goto LABEL_10;
  }

  if (v13 != *MEMORY[0x277D5E030])
  {
    if (v13 != *MEMORY[0x277D5E028])
    {
      *&v60 = 0;
      *(&v60 + 1) = 0xE000000000000000;
      sub_2684B58A4();

      *&v60 = 0xD000000000000026;
      *(&v60 + 1) = 0x80000002684C45D0;
      sub_2684B3C44();
      v58 = sub_2684B5564();
      MEMORY[0x26D619980](v58);

      result = sub_2684B5914();
      __break(1u);
      return result;
    }

    (*(v8 + 96))(v12, v7);
    v46 = *v12;
    v47 = sub_2684B4894();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5A8, &qword_2684B99A8);
    a1[3] = v22;
    a1[4] = sub_26846ACF0(&qword_28027E5B0, &qword_28027E5A8, &qword_2684B99A8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    *boxed_opaque_existential_1 = v47;
    boxed_opaque_existential_1[1] = v49;
    *(boxed_opaque_existential_1 + 16) = v51 & 1;
    boxed_opaque_existential_1[3] = v53;
    boxed_opaque_existential_1[4] = v46;
    *(boxed_opaque_existential_1 + 40) = 0;
    v24 = sub_26849F914;
    goto LABEL_10;
  }

  (*(v8 + 96))(v12, v7);
  v33 = *v12;
  sub_2684B3C24();
  v34 = sub_2684B3E94();
  (*(v3 + 8))(v6, v2);
  v35 = sub_2684B4894();
  v37 = v36;
  v39 = v38;
  v41 = v40 & 1;
  if (v34)
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5C8, &qword_2684B99B8);
    v61 = v42;
    v43 = sub_26846ACF0(&qword_28027E5D0, &qword_28027E5C8, &qword_2684B99B8);
    v44 = sub_26849F7FC;
    v45 = 1;
  }

  else
  {
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5B8, &qword_2684B99B0);
    v61 = v42;
    v43 = sub_26846ACF0(&qword_28027E5C0, &qword_28027E5B8, &qword_2684B99B0);
    v45 = 0;
    v44 = sub_26849F868;
  }

  v62 = v43;
  v56 = __swift_allocate_boxed_opaque_existential_1(&v60);
  *v56 = v35;
  v56[1] = v37;
  *(v56 + 16) = v41;
  v56[3] = v39;
  v56[4] = v33;
  *(v56 + 40) = v45;
  v56[6] = v44;
  v56[7] = 0;
  v57 = v56 + *(v42 + 56);
  sub_2684B52A4();
  return sub_268474100(&v60, a1);
}

uint64_t sub_26849DA20(uint64_t a1)
{
  v2 = sub_2684B3924();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_2684B4774();
}

uint64_t sub_26849DB10(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_2684B4404();
  }

  else
  {
    sub_2684B4414();
  }

  return sub_2684B4DB4();
}

uint64_t sub_26849DB98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v50 = *(a1 - 1);
  v51 = *(v50 + 64);
  MEMORY[0x28223BE20](a1);
  v49 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B5284();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v41[1] = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1[2];
  swift_getTupleTypeMetadata2();
  v7 = sub_2684B5664();
  v46 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v8 = sub_2684B45B4();
  v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  v44 = a1[4];
  v10 = v44;
  v11 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90);
  v61 = v10;
  v62 = v11;
  v47 = MEMORY[0x277CDFAD8];
  WitnessTable = swift_getWitnessTable();
  v13 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  v56 = v8;
  v57 = v9;
  v58 = WitnessTable;
  v59 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v56 = v8;
  v57 = v9;
  v58 = WitnessTable;
  v59 = v13;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v56 = OpaqueTypeMetadata2;
  v57 = OpaqueTypeConformance2;
  v16 = swift_getOpaqueTypeMetadata2();
  v17 = swift_getWitnessTable();
  v56 = v7;
  v57 = MEMORY[0x277D83B88];
  v58 = v16;
  v59 = v17;
  v60 = MEMORY[0x277D83B98];
  v41[3] = sub_2684B5034();
  v56 = OpaqueTypeMetadata2;
  v57 = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v41[2] = swift_getWitnessTable();
  v18 = sub_2684B5254();
  v42 = *(v18 - 8);
  v19 = *(v42 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = v41 - v20;
  v22 = sub_2684B45B4();
  v43 = *(v22 - 8);
  v23 = *(v43 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v41 - v27;
  v29 = a1;
  v30 = v45;
  sub_26849E180();
  v32 = v49;
  v31 = v50;
  (*(v50 + 16))(v49, v30, a1);
  v33 = (*(v31 + 80) + 40) & ~*(v31 + 80);
  v34 = swift_allocObject();
  v35 = v46;
  *(v34 + 2) = v48;
  *(v34 + 3) = v35;
  *(v34 + 4) = v44;
  (*(v31 + 32))(&v34[v33], v32, v29);
  sub_2684B5244();
  v36 = swift_getWitnessTable();
  sub_2684ACFD8(1, v18, v36);
  (*(v42 + 8))(v21, v18);
  v37 = sub_26846B18C();
  v53 = v36;
  v54 = v37;
  v38 = swift_getWitnessTable();
  sub_26847D324(v26, v22, v38);
  v39 = *(v43 + 8);
  v39(v26, v22);
  sub_26847D324(v28, v22, v38);
  return (v39)(v28, v22);
}

uint64_t sub_26849E180()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = qword_28027CF30;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_280282928;
  v7 = sub_2684B4B94();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = v7;
  *(v15 + 24) = v9;
  *(v15 + 32) = v11 & 1;
  *(v15 + 40) = v13;
  return sub_2684B5274();
}

uint64_t sub_26849E2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v50 = a1;
  v56 = a5;
  v55 = type metadata accessor for DisambiguationSnippetView();
  v53 = *(v55 - 8);
  v54 = *(v53 + 64);
  MEMORY[0x28223BE20](v55);
  v52 = &v41 - v8;
  v9 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10 = sub_2684B5664();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v11 = sub_2684B45B4();
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DA58, &qword_2684B7D40);
  v13 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90);
  v67 = a4;
  v68 = v13;
  WitnessTable = swift_getWitnessTable();
  v15 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  v62 = v11;
  v63 = v12;
  v64 = WitnessTable;
  v65 = v15;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v48 = OpaqueTypeMetadata2;
  v62 = v11;
  v63 = v12;
  v64 = WitnessTable;
  v65 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v62 = OpaqueTypeMetadata2;
  v63 = OpaqueTypeConformance2;
  v43 = MEMORY[0x277D63968];
  v17 = swift_getOpaqueTypeMetadata2();
  v45 = v17;
  v46 = v10;
  v44 = swift_getWitnessTable();
  v62 = v10;
  v63 = MEMORY[0x277D83B88];
  v64 = v17;
  v65 = v44;
  v66 = MEMORY[0x277D83B98];
  v18 = sub_2684B5034();
  v49 = *(v18 - 8);
  v19 = *(v49 + 64);
  v20 = MEMORY[0x28223BE20](v18);
  v41 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v42 = &v41 - v22;
  v23 = v50;
  v61 = *(v50 + 32);
  v24 = v9;
  v25 = sub_2684B5664();
  v26 = swift_getWitnessTable();
  MEMORY[0x26D6199E0](&v62, v25, v26);
  v61 = v62;
  sub_2684B5924();
  swift_getWitnessTable();
  v61 = sub_2684B5674();
  v57 = v9;
  v58 = a3;
  v27 = a3;
  v28 = a4;
  v59 = a4;
  TupleTypeMetadata2 = swift_getKeyPath();
  v29 = v52;
  v30 = v53;
  v31 = v55;
  (*(v53 + 16))(v52, v23, v55);
  v32 = (*(v30 + 80) + 40) & ~*(v30 + 80);
  v33 = swift_allocObject();
  *(v33 + 2) = v24;
  *(v33 + 3) = v27;
  *(v33 + 4) = v28;
  (*(v30 + 32))(&v33[v32], v29, v31);
  v34 = swift_allocObject();
  v34[2] = v24;
  v34[3] = v27;
  v34[4] = v28;
  v34[5] = sub_26849FF2C;
  v34[6] = v33;
  v62 = v48;
  v63 = OpaqueTypeConformance2;
  v40 = swift_getOpaqueTypeConformance2();
  v35 = v41;
  sub_2684B5014();
  v60 = v40;
  v36 = swift_getWitnessTable();
  v37 = v42;
  sub_26847D324(v35, v18, v36);
  v38 = *(v49 + 8);
  v38(v35, v18);
  sub_26847D324(v37, v18, v36);
  return (v38)(v37, v18);
}

uint64_t sub_26849E88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v81 = a4;
  v82 = a7;
  v74 = a2;
  v78 = a1;
  v10 = type metadata accessor for DisambiguationSnippetView();
  v76 = *(v10 - 8);
  v77 = v10;
  v80 = *(v76 + 64);
  MEMORY[0x28223BE20](v10);
  v79 = &v56 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DA58, &qword_2684B7D40);
  v75 = *(v12 - 8);
  v13 = *(v75 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v56 - v15;
  v72 = *(a5 - 8);
  v16 = *(v72 + 64);
  MEMORY[0x28223BE20](v14);
  v69 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027DAB0, &unk_2684B9A90);
  v18 = sub_2684B45B4();
  v71 = *(v18 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v18);
  v64 = &v56 - v20;
  v21 = sub_26846ACF0(&qword_28027DAA8, &qword_28027DAB0, &unk_2684B9A90);
  v57 = a6;
  v87 = a6;
  v88 = v21;
  WitnessTable = swift_getWitnessTable();
  v23 = sub_26846ACF0(&qword_28027DAB8, &qword_28027DA58, &qword_2684B7D40);
  v83 = v18;
  v84 = v12;
  v59 = v12;
  v85 = WitnessTable;
  v86 = v23;
  v24 = WitnessTable;
  v61 = WitnessTable;
  v25 = v23;
  v60 = v23;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v66 = OpaqueTypeMetadata2;
  v70 = *(OpaqueTypeMetadata2 - 8);
  v27 = *(v70 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v58 = &v56 - v28;
  v83 = v18;
  v84 = v12;
  v85 = v24;
  v86 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = OpaqueTypeMetadata2;
  v84 = OpaqueTypeConformance2;
  v67 = MEMORY[0x277D63968];
  v29 = swift_getOpaqueTypeMetadata2();
  v68 = *(v29 - 8);
  v30 = *(v68 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v62 = &v56 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v63 = &v56 - v33;
  v34 = *(a3 + 56);
  v35 = v69;
  (*(a3 + 48))(v74);
  sub_2684A0058();
  v36 = v64;
  v56 = a5;
  sub_2684B4CD4();
  (*(v72 + 8))(v35, a5);
  v37 = v73;
  v38 = v77;
  v39 = v78;
  sub_26849EFC8(v78, v77, v73);
  v40 = v58;
  v41 = v59;
  sub_26849DB10(v37, *(a3 + 40));
  (*(v75 + 8))(v37, v41);
  (*(v71 + 8))(v36, v18);
  v42 = v76;
  v43 = v79;
  v44 = v38;
  (*(v76 + 16))(v79, a3, v38);
  v45 = (*(v42 + 80) + 40) & ~*(v42 + 80);
  v46 = (v80 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  v48 = v56;
  *(v47 + 2) = v81;
  *(v47 + 3) = v48;
  *(v47 + 4) = v57;
  (*(v42 + 32))(&v47[v45], v43, v44);
  *&v47[v46] = v39;
  v49 = v62;
  v50 = v66;
  v51 = OpaqueTypeConformance2;
  sub_2684B4C24();

  (*(v70 + 8))(v40, v50);
  v83 = v50;
  v84 = v51;
  v52 = swift_getOpaqueTypeConformance2();
  v53 = v63;
  sub_26847D324(v49, v29, v52);
  v54 = *(v68 + 8);
  v54(v49, v29);
  sub_26847D324(v53, v29, v52);
  return (v54)(v53, v29);
}

uint64_t sub_26849EFC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v18[1] = a3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = sub_2684B43E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B43D4();
  (*(v7 + 16))(v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = *(a2 + 16);
  *(v15 + 32) = *(a2 + 32);
  (*(v7 + 32))(v15 + v14, v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  *(v15 + ((v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2684A0208;
  *(v16 + 24) = v15;
  sub_2684B5044();

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_26849F208(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v5 = sub_2684B5464();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B3A94();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v15 = sub_2684B4354();
  __swift_project_value_buffer(v15, qword_280282910);
  v16 = sub_2684B4334();
  v17 = sub_2684B5714();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v6;
    v19 = a2;
    v20 = v3;
    v21 = v5;
    v22 = v18;
    *v18 = 134217984;
    *(v18 + 4) = v29;
    _os_log_impl(&dword_26845C000, v16, v17, "Selecting disambiguation index %ld", v18, 0xCu);
    v23 = v22;
    v5 = v21;
    v3 = v20;
    a2 = v19;
    v6 = v28;
    MEMORY[0x26D61A450](v23, -1, -1);
  }

  *v14 = v29;
  (*(v11 + 104))(v14, *MEMORY[0x277D5DFB8], v10);
  v24 = v3 + *(a2 + 56);
  sub_2684B5294();
  v25 = [objc_allocWithZone(MEMORY[0x277D5C218]) init];
  sub_2684A00AC(&qword_28027E690, MEMORY[0x277D5DFC8]);
  v26 = sub_2684B3A84();

  sub_2684B5454();
  (*(v6 + 8))(v9, v5);
  return (*(v11 + 8))(v14, v10);
}

uint64_t sub_26849F51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v22 = sub_2684B3C14();
  v3 = *(v22 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v22);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5E8, &qword_2684B99C8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5F0, &qword_2684B99D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v21 - v14;
  v16 = sub_2684B3BF4();
  v51 = MEMORY[0x277D837D0];
  v52 = MEMORY[0x277D63F80];
  v49 = v16;
  v50 = v17;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  (*(v3 + 16))(v6, a1, v22);
  sub_26847B704(v6, v10);
  v18 = sub_26849FB24();
  sub_2684B4C14();
  sub_26849FBD8(v10);
  v24 = v7;
  v25 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = sub_2684B4BC4();
  (*(v12 + 8))(v15, v11);
  v26 = MEMORY[0x277CE11C8];
  v27 = MEMORY[0x277D63A60];
  v24 = v19;
  return sub_2684B5264();
}

uint64_t sub_26849F7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_26849F868@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  v5 = *(type metadata accessor for ReminderDetail3pView() + 20);
  *(a2 + v5) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26849F914()
{
  v0 = sub_2684B39C4();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_2684B3F84();
  v29 = MEMORY[0x277D837D0];
  v30 = MEMORY[0x277D63F80];
  v27 = v2;
  v28 = v3;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0;
  v18 = 0u;
  v19 = 0u;
  v17 = 0;
  v15 = 0u;
  v16 = 0u;
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  sub_2684B3F74();
  sub_2684B39B4();

  v5[3] = sub_2684B5144();
  v5[4] = MEMORY[0x277D63B10];
  __swift_allocate_boxed_opaque_existential_1(v5);
  sub_2684B5154();
  return sub_2684B5264();
}

uint64_t sub_26849FA68(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_2684B5264();
}

unint64_t sub_26849FB24()
{
  result = qword_28027E5F8;
  if (!qword_28027E5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E5E8, &qword_2684B99C8);
    sub_2684A00AC(qword_28027E600, type metadata accessor for ListBadgeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E5F8);
  }

  return result;
}

uint64_t sub_26849FBD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E5E8, &qword_2684B99C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26849FC40(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_2684B5664();
  if (v3 <= 0x3F)
  {
    result = sub_26847D10C();
    if (v4 <= 0x3F)
    {
      result = sub_2684B52B4();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_26849FD38(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26849FD84@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(type metadata accessor for DisambiguationSnippetView() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_26849E2A8(v7, v3, v4, v5, a1);
}

uint64_t objectdestroyTm_8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for DisambiguationSnippetView() - 8);
  v5 = *(*v4 + 64);
  v6 = v0 + ((*(*v4 + 80) + 40) & ~*(*v4 + 80));
  v7 = *(v6 + 1);

  v8 = *(v6 + 3);

  v9 = *(v6 + 4);

  v10 = *(v6 + 7);

  v11 = v4[16];
  v12 = sub_2684B52B4();
  (*(*(v12 - 8) + 8))(&v6[v11], v12);

  return swift_deallocObject();
}

uint64_t sub_26849FF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(type metadata accessor for DisambiguationSnippetView() - 8);
  v11 = v3 + ((*(v10 + 80) + 40) & ~*(v10 + 80));

  return sub_26849E88C(a1, a2, v11, v7, v8, v9, a3);
}

uint64_t sub_26849FFE4(char *a1)
{
  v3 = v1[2];
  v5 = v1[5];
  v4 = v1[6];
  v6 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(v6, &a1[*(TupleTypeMetadata2 + 48)]);
}

unint64_t sub_2684A0058()
{
  result = qword_28027E688;
  if (!qword_28027E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E688);
  }

  return result;
}

uint64_t sub_2684A00AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_12Tm()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for DisambiguationSnippetView() - 8);
  v5 = (*(*v4 + 80) + 40) & ~*(*v4 + 80);
  v6 = (*(*v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0 + v5;
  v8 = *(v0 + v5 + 8);

  v9 = *(v7 + 3);

  v10 = *(v7 + 4);

  v11 = *(v7 + 7);

  v12 = v4[16];
  v13 = sub_2684B52B4();
  (*(*(v13 - 8) + 8))(&v7[v12], v13);

  return swift_deallocObject();
}

uint64_t sub_2684A020C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = type metadata accessor for DisambiguationSnippetView();
  return sub_26849F208(*(v0 + ((*(*(v4 - 8) + 64) + ((*(*(v4 - 8) + 80) + 40) & ~*(*(v4 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), v4);
}

uint64_t sub_2684A02A4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2684A02E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2684A032C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2684A03A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2684B45D4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E698, &qword_2684B9B58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-v11];
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v24 = v1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6A0, &qword_2684B9B60);
  sub_2684A0904();
  sub_2684B4F74();
  sub_2684B45C4();
  sub_26846ACF0(&qword_28027E6E0, &qword_28027E698, &qword_2684B9B58);
  sub_2684A0A74();
  sub_2684B4CB4();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  sub_2684B4B24();
  v15 = sub_2684B4AD4();

  KeyPath = swift_getKeyPath();
  v17 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6F0, &qword_2684B9BB0) + 36));
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = swift_getKeyPath();
  v19 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6F8, &qword_2684B9BE8) + 36));
  v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E700, &qword_2684B9BF0) + 28);
  sub_2684B5064();
  v21 = sub_2684B5074();
  result = (*(*(v21 - 8) + 56))(v19 + v20, 0, 1, v21);
  *v19 = v18;
  return result;
}

uint64_t sub_2684A06A8@<X0>(uint64_t a1@<X8>)
{
  sub_2684B4F14();
  v2 = sub_2684B4A54();
  sub_2684B4364();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6B8, &qword_2684B9B68) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = sub_2684B49C4();
  v13 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6A0, &qword_2684B9B60) + 36));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E6D8, &qword_2684B9B78);
  v15 = *(v14 + 52);
  v16 = *MEMORY[0x277CE0118];
  v17 = sub_2684B48B4();
  result = (*(*(v17 - 8) + 104))(&v13[v15], v16, v17);
  *v13 = v12;
  *&v13[*(v14 + 56)] = 256;
  return result;
}

uint64_t sub_2684A0830(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E708, &qword_2684B9BF8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2684A0ACC(a1, &v6 - v4);
  return sub_2684B4714();
}

uint64_t sub_2684A08C0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  return sub_2684A03A4(a1);
}

unint64_t sub_2684A0904()
{
  result = qword_28027E6A8;
  if (!qword_28027E6A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6A0, &qword_2684B9B60);
    sub_2684A09BC();
    sub_26846ACF0(&qword_28027E6D0, &qword_28027E6D8, &qword_2684B9B78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6A8);
  }

  return result;
}

unint64_t sub_2684A09BC()
{
  result = qword_28027E6B0;
  if (!qword_28027E6B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6B8, &qword_2684B9B68);
    sub_26846ACF0(&qword_28027E6C0, &qword_28027E6C8, &qword_2684B9B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6B0);
  }

  return result;
}

unint64_t sub_2684A0A74()
{
  result = qword_28027E6E8;
  if (!qword_28027E6E8)
  {
    sub_2684B45D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E6E8);
  }

  return result;
}

uint64_t sub_2684A0ACC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E708, &qword_2684B9BF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A0B3C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = v2[1];
  *a1 = *v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_2684A0B5C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);

  result = sub_2684B4EC4();
  *a1 = result;
  return result;
}

unint64_t sub_2684A0BA4()
{
  result = qword_28027E710;
  if (!qword_28027E710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6F8, &qword_2684B9BE8);
    sub_2684A0C5C();
    sub_26846ACF0(&qword_28027E720, &qword_28027E700, &qword_2684B9BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E710);
  }

  return result;
}

unint64_t sub_2684A0C5C()
{
  result = qword_28027E718;
  if (!qword_28027E718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E6F0, &qword_2684B9BB0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E698, &qword_2684B9B58);
    sub_2684B45D4();
    sub_26846ACF0(&qword_28027E6E0, &qword_28027E698, &qword_2684B9B58);
    sub_2684A0A74();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E718);
  }

  return result;
}

uint64_t sub_2684A0DA4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v78 = a1;
  v3 = sub_2684B3994();
  v76 = *(v3 - 8);
  v77 = v3;
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v3);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v68 - v8;
  v69 = sub_2684B4B34();
  v10 = *(v69 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v69);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E740, &qword_2684B9D40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v68 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E748, &qword_2684B9D48);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - v21;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E750, &qword_2684B9D50);
  v23 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v68 - v24;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E758, &qword_2684B9D58);
  v73 = *(v74 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](v74);
  v71 = &v68 - v26;
  *v17 = sub_2684B4834();
  *(v17 + 1) = 0;
  v17[16] = 1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E760, &qword_2684B9D60);
  sub_2684A14EC(v2, &v17[*(v27 + 44)]);
  sub_26846ACF0(&qword_28027E768, &qword_28027E740, &qword_2684B9D40);
  sub_2684B4D44();
  sub_268467A4C(v17, &qword_28027E740, &qword_2684B9D40);
  v28 = v69;
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A90], v69);
  v29 = *MEMORY[0x277CE09A0];
  v30 = sub_2684B4AE4();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v9, v29, v30);
  (*(v31 + 56))(v9, 0, 1, v30);
  sub_2684B4AF4();
  v32 = sub_2684B4B14();
  sub_268467A4C(v9, &qword_28027D330, &qword_2684BAEE0);
  (*(v10 + 8))(v13, v28);
  KeyPath = swift_getKeyPath();
  v34 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E770, &qword_2684B9D98) + 36)];
  *v34 = KeyPath;
  v34[1] = v32;
  v35 = sub_2684A3D74();
  *&v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E778, &qword_2684B9DA0) + 36)] = v35;
  LOBYTE(v13) = sub_2684B4A64();
  v36 = v2 + *(type metadata accessor for ReminderPrimaryHeadingView() + 24);
  v37 = *(v36 + 16);
  sub_2684B4364();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v22[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E780, &qword_2684B9DA8) + 36)];
  *v46 = v13;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v32) = sub_2684B4A74();
  v47 = *(v36 + 24);
  sub_2684B4364();
  v48 = &v22[*(v19 + 44)];
  *v48 = v32;
  *(v48 + 1) = v49;
  *(v48 + 2) = v50;
  *(v48 + 3) = v51;
  *(v48 + 4) = v52;
  v48[40] = 0;
  sub_2684B50B4();
  sub_2684B45F4();
  v53 = v70;
  sub_268462EC0(v22, v70);
  v54 = (v53 + *(v72 + 36));
  v55 = v84;
  v54[4] = v83;
  v54[5] = v55;
  v54[6] = v85;
  v56 = v80;
  *v54 = v79;
  v54[1] = v56;
  v57 = v82;
  v54[2] = v81;
  v54[3] = v57;
  v59 = v76;
  v58 = v77;
  v60 = v75;
  (*(v76 + 104))(v75, *MEMORY[0x277D62F48], v77);
  sub_2684A1C04();
  v61 = v71;
  sub_2684B4C04();
  (*(v59 + 8))(v60, v58);
  sub_268462F30(v53);
  v62 = swift_getKeyPath();
  v63 = swift_getKeyPath();
  v64 = swift_getKeyPath();
  v65 = v78;
  (*(v73 + 32))(v78, v61, v74);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7C0, &qword_2684B9E38);
  v67 = v65 + *(result + 36);
  *v67 = 1;
  *(v67 + 8) = v62;
  *(v67 + 16) = 0;
  *(v67 + 24) = v63;
  *(v67 + 32) = 0;
  *(v67 + 40) = v64;
  *(v67 + 48) = 0;
  return result;
}

uint64_t sub_2684A14EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ReminderHeadingTextView();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v23 - v9;
  v11 = sub_2684B3CF4();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = sub_2684A16DC();
  v16 = v15;
  if (v15)
  {
    v17 = v12;
    v18 = v13;
    v19 = v14;
    sub_268475600(v12, v13, v14 & 1);

    sub_26846D468(v17, v18, v19 & 1);

    v20 = v19 & 1;
    sub_268475600(v17, v18, v19 & 1);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v20 = 0;
  }

  sub_26849D294(v10, v8);
  sub_26849D294(v8, a2);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7C8, &qword_2684B9E40) + 48));
  sub_2684A1F50(0, 0, v17, v18, v20, v16);
  sub_2684A1F9C(0, 0, v17, v18, v20, v16);
  *v21 = 0;
  v21[1] = 0;
  v21[2] = v17;
  v21[3] = v18;
  v21[4] = v20;
  v21[5] = v16;
  sub_26849D2F8(v10);
  sub_2684A1F9C(0, 0, v17, v18, v20, v16);
  return sub_26849D2F8(v8);
}

uint64_t sub_2684A16DC()
{
  v1 = sub_2684B4884();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = sub_2684B3924();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E7D0, &qword_2684B9E48);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = v0 + *(type metadata accessor for ReminderPrimaryHeadingView() + 20);
  if (*(v7 + 8))
  {
    return 0;
  }

  if (*v7 <= 50)
  {
    sub_2684B38C4();
    sub_2684A1FE8();
    sub_2684B3794();
    sub_26846ACF0(&qword_28027E7E0, &qword_28027E7D0, &qword_2684B9E48);
    return sub_2684B4B84();
  }

  else
  {
    sub_2684B4874();
    sub_2684B4864();
    sub_2684B59E4();
    sub_2684B4854();

    sub_2684B4864();
    sub_2684B48A4();
    if (qword_28027CF30 != -1)
    {
      swift_once();
    }

    v9 = qword_280282928;
    return sub_2684B4B94();
  }
}

double sub_2684A19A4@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B9C00;
  return result;
}

uint64_t type metadata accessor for ReminderPrimaryHeadingView()
{
  result = qword_28027E728;
  if (!qword_28027E728)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684A1A38()
{
  sub_2684B3CF4();
  if (v0 <= 0x3F)
  {
    sub_2684A1B1C(319, &qword_28027DC20, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_2684A1B1C(319, &qword_28027E738, &type metadata for ReminderPrimaryHeadingView.Constants, type metadata accessor for IdiomConstant);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2684A1B1C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_2684A1B88@<D0>(_OWORD *a1@<X8>)
{
  result = 10.0;
  *a1 = xmmword_2684B9C10;
  return result;
}

double sub_2684A1B98@<D0>(_OWORD *a1@<X8>)
{
  result = 14.0;
  *a1 = xmmword_2684B9C20;
  return result;
}

uint64_t sub_2684A1BAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2684B4724();
  *a1 = result;
  return result;
}

uint64_t sub_2684A1BD8(uint64_t *a1)
{
  v1 = *a1;

  return sub_2684B4734();
}

unint64_t sub_2684A1C04()
{
  result = qword_28027E788;
  if (!qword_28027E788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E750, &qword_2684B9D50);
    sub_2684A1CEC(&qword_28027E790, &qword_28027E748, &qword_2684B9D48, sub_2684A1CBC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E788);
  }

  return result;
}

uint64_t sub_2684A1CEC(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2684A1D70()
{
  result = qword_28027E7A0;
  if (!qword_28027E7A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E778, &qword_2684B9DA0);
    sub_2684A1E28();
    sub_26846ACF0(&qword_28027E7B0, &qword_28027E7B8, &qword_2684BAF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7A0);
  }

  return result;
}

unint64_t sub_2684A1E28()
{
  result = qword_28027E7A8;
  if (!qword_28027E7A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E770, &qword_2684B9D98);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E740, &qword_2684B9D40);
    sub_26846ACF0(&qword_28027E768, &qword_28027E740, &qword_2684B9D40);
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7A8);
  }

  return result;
}

uint64_t sub_2684A1F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_268475600(a3, a4, a5 & 1);
  }

  return result;
}

uint64_t sub_2684A1F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  if (a6)
  {
    sub_26846D468(a3, a4, a5 & 1);
  }

  return result;
}

unint64_t sub_2684A1FE8()
{
  result = qword_28027E7D8;
  if (!qword_28027E7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7D8);
  }

  return result;
}

unint64_t sub_2684A203C()
{
  result = qword_28027E7E8;
  if (!qword_28027E7E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E7C0, &qword_2684B9E38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E750, &qword_2684B9D50);
    sub_2684A1C04();
    swift_getOpaqueTypeConformance2();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E7E8);
  }

  return result;
}

uint64_t type metadata accessor for CreateNote3pSnippet()
{
  result = qword_28027E7F0;
  if (!qword_28027E7F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2684A2178()
{
  result = sub_2684B3B84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2684A2200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v90 = a2;
  v3 = sub_2684B52C4();
  v83 = *(v3 - 8);
  v84 = v3;
  v4 = *(v83 + 64);
  MEMORY[0x28223BE20](v3);
  v82 = &v76 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B52E4();
  v88 = *(v6 - 8);
  v89 = v6;
  v7 = *(v88 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v87 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v85 = &v76 - v10;
  v80 = type metadata accessor for NoteDetail3pView();
  v11 = *(*(v80 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v80);
  v86 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v92 = &v76 - v14;
  v15 = sub_2684B5204();
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15);
  v77 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v76 - v20;
  v22 = sub_2684B3B54();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v76 - v28;
  v30 = sub_2684B3EA4();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35 - 8);
  v91 = &v76 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v40 = &v76 - v39;
  v81 = a1;
  sub_2684B3B64();
  sub_2684B3B44();
  v41 = v29;
  v42 = v22;
  v43 = *(v23 + 8);
  v43(v41, v42);
  if ((*(v31 + 48))(v21, 1, v30) == 1)
  {
    sub_268467A4C(v21, &qword_28027D3E8, &unk_2684B7F40);
    v44 = 1;
    v45 = v40;
    v47 = v78;
    v46 = v79;
  }

  else
  {
    (*(v31 + 32))(v34, v21, v30);
    sub_2684B3E84();
    v48 = v77;
    sub_2684B5214();
    (*(v31 + 8))(v34, v30);
    v49 = v78;
    v50 = v48;
    v51 = v79;
    (*(v78 + 32))(v40, v50, v79);
    v44 = 0;
    v45 = v40;
    v46 = v51;
    v47 = v49;
  }

  (*(v47 + 56))(v45, v44, 1, v46);
  v52 = v92;
  sub_2684B3B74();
  sub_2684B3B64();
  v53 = v80;
  v54 = v52 + *(v80 + 20);
  sub_2684B3B44();
  v43(v27, v42);
  *(v52 + *(v53 + 24)) = 1;
  v55 = v52 + *(v53 + 28);
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v56 = qword_280282928;
  v57 = sub_2684B4B94();
  v59 = v58;
  v61 = v60;
  v63 = v62;
  v94 = MEMORY[0x277CE0BD8];
  v95 = MEMORY[0x277D638E8];
  v64 = swift_allocObject();
  v93 = v64;
  *(v64 + 16) = v57;
  *(v64 + 24) = v59;
  *(v64 + 32) = v61 & 1;
  *(v64 + 40) = v63;
  (*(v83 + 104))(v82, *MEMORY[0x277D63D60], v84);
  v65 = v85;
  sub_2684B52D4();
  v66 = v91;
  sub_2684A2C98(v45, v91);
  v67 = v86;
  sub_2684A2D08(v52, v86, type metadata accessor for NoteDetail3pView);
  v69 = v88;
  v68 = v89;
  v70 = *(v88 + 16);
  v84 = v45;
  v71 = v87;
  v70(v87, v65, v89);
  v72 = v90;
  sub_2684A2C98(v66, v90);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E818, &qword_2684B9F50);
  sub_2684A2D08(v67, v72 + *(v73 + 48), type metadata accessor for NoteDetail3pView);
  v70((v72 + *(v73 + 64)), v71, v68);
  v74 = *(v69 + 8);
  v74(v65, v68);
  sub_2684A2D70(v92);
  sub_268467A4C(v84, &qword_28027D3F0, &qword_2684B6C10);
  v74(v71, v68);
  sub_2684A2D70(v67);
  return sub_268467A4C(v91, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_2684A29FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2684A2D08(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CreateNote3pSnippet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2684A2BC4(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E800, &qword_2684B9EB8);
  sub_26846ACF0(&qword_28027E808, &qword_28027E800, &qword_2684B9EB8);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E810, &qword_2684B9F48);
  v12 = a2 + *(result + 36);
  *v12 = 1;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = v9;
  *(v12 + 32) = 0;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  return result;
}

uint64_t sub_2684A2BC4(uint64_t a1, uint64_t a2)
{
  Note3pSnippet = type metadata accessor for CreateNote3pSnippet();
  (*(*(Note3pSnippet - 8) + 32))(a2, a1, Note3pSnippet);
  return a2;
}

uint64_t sub_2684A2C28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CreateNote3pSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684A2200(v4, a1);
}

uint64_t sub_2684A2C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A2D08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684A2D70(uint64_t a1)
{
  v2 = type metadata accessor for NoteDetail3pView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684A2DCC()
{
  result = qword_28027E820;
  if (!qword_28027E820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E810, &qword_2684B9F48);
    sub_26846ACF0(&qword_28027E828, &qword_28027E830, &qword_2684B9F58);
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E820);
  }

  return result;
}

id sub_2684A2EB8()
{
  type metadata accessor for SiriNotebookUIBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_280282928 = result;
  return result;
}

uint64_t type metadata accessor for MessagingTriggerPill()
{
  result = qword_28027E838;
  if (!qword_28027E838)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684A2F84()
{
  sub_2684B40F4();
  if (v0 <= 0x3F)
  {
    sub_2684744F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2684A3024@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v20 = sub_2684B3984();
  v1 = *(v20 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v20);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2684B3F94();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2684B39C4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2684B5144();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B40E4();
  sub_2684B3F74();
  (*(v5 + 8))(v8, v19);
  sub_2684B39B4();

  sub_2684B5154();
  v16 = v20;
  (*(v1 + 104))(v4, *MEMORY[0x277D62A88], v20);
  sub_2684A3CB8();
  sub_2684B4BF4();
  (*(v1 + 8))(v4, v16);
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_2684A32E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for MessagingTriggerPill() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  sub_2684B4454();
  *a2 = sub_2684B4834();
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D720, &unk_2684B7430);
  return sub_2684A337C(a1, (a2 + *(v5 + 44)));
}

uint64_t sub_2684A337C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a1;
  v45 = a2;
  v44 = sub_2684B3F94();
  v42 = *(v44 - 8);
  v2 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v40 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2684B3D44();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D348, &unk_2684BA020);
  v9 = *(v39 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v39);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  (*(v5 + 104))(v8, *MEMORY[0x277D5E0F8], v4);
  sub_2684B3D34();
  sub_2684B4894();
  if (qword_28027CF30 != -1)
  {
    swift_once();
  }

  v15 = qword_280282928;
  v16 = sub_2684B4B94();
  v18 = v17;
  v20 = v19;
  (*(v5 + 8))(v8, v4);
  v21 = sub_2684B4B64();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  sub_26846D468(v16, v18, v20 & 1);

  v46 = v21;
  v47 = v23;
  v48 = v25 & 1;
  v49 = v27;
  sub_2684B4D44();
  sub_26846D468(v21, v23, v25 & 1);

  v28 = v40;
  sub_2684B40E4();
  v29 = sub_2684B3F84();
  v31 = v30;
  (*(v42 + 8))(v28, v44);
  v32 = v9[2];
  v33 = v41;
  v34 = v39;
  v32(v41, v14, v39);
  v35 = v45;
  v32(v45, v33, v34);
  v36 = &v35[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D730, &unk_2684B89E0) + 48)];
  *v36 = v29;
  *(v36 + 1) = v31;
  v36[16] = 0;
  *(v36 + 3) = MEMORY[0x277D84F90];
  sub_268475600(v29, v31, 0);
  v37 = v9[1];

  v37(v14, v34);
  sub_26846D468(v29, v31, 0);

  return (v37)(v33, v34);
}

double sub_2684A37D4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1 - 8);
  v7 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  sub_2684A3968(v2, &v15 - v8);
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_2684A39CC(v9, v11 + v10);
  sub_2684A3968(v2, v7);
  v12 = swift_allocObject();
  sub_2684A39CC(v7, v12 + v10);
  KeyPath = swift_getKeyPath();
  *a2 = sub_2684A3A30;
  *(a2 + 8) = v11;
  *(a2 + 16) = sub_2684A3B6C;
  *(a2 + 24) = v12;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  result = 24.0;
  *(a2 + 48) = xmmword_2684B6710;
  *(a2 + 64) = sub_2684A3C08;
  *(a2 + 72) = 0;
  return result;
}

uint64_t sub_2684A3968(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingTriggerPill();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A39CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagingTriggerPill();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for MessagingTriggerPill() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B40F4();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D6E8, &unk_2684B7370);
  (*(*(v6 - 8) + 8))(v3 + v5, v6);

  return swift_deallocObject();
}

uint64_t sub_2684A3B84(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for MessagingTriggerPill() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

double sub_2684A3C08@<D0>(_OWORD *a1@<X8>)
{
  sub_2684A3C64();
  sub_2684B53E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

unint64_t sub_2684A3C64()
{
  result = qword_28027E848;
  if (!qword_28027E848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E848);
  }

  return result;
}

unint64_t sub_2684A3CB8()
{
  result = qword_28027E158;
  if (!qword_28027E158)
  {
    sub_2684B5144();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E158);
  }

  return result;
}

unint64_t sub_2684A3D10()
{
  result = qword_28027E850;
  if (!qword_28027E850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E858, &unk_2684BA030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E850);
  }

  return result;
}

uint64_t sub_2684A3D74()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v42 - v3;
  v5 = sub_2684B3C14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2684B3CF4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v44 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v42 - v17;
  v19 = *(v11 + 16);
  v19(&v42 - v17, v0, v10);
  v20 = (*(v11 + 88))(v18, v10);
  if (v20 == *MEMORY[0x277D5E058])
  {
    LODWORD(v45) = sub_2684B49D4();
    v21 = sub_2684B44B4();
    (*(v11 + 8))(v18, v10);
    return v21;
  }

  if (v20 == *MEMORY[0x277D5E060])
  {
    (*(v11 + 96))(v18, v10);
    (*(v6 + 32))(v9, v18, v5);
    sub_2684B3BE4();
    v22 = sub_2684B3F64();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v4, 1, v22) == 1)
    {
      sub_268467A4C(v4, &qword_28027D8A8, &qword_2684BB110);
      v24 = sub_2684B4E54();
    }

    else
    {
      v24 = sub_26849A760();
      (*(v23 + 8))(v4, v22);
    }

    v45 = v24;
    v21 = sub_2684B44B4();
    (*(v6 + 8))(v9, v5);
    return v21;
  }

  if (v20 == *MEMORY[0x277D5E040])
  {
    (*(v11 + 8))(v18, v10);
LABEL_8:
    v25 = sub_2684B49D4();
LABEL_9:
    LODWORD(v45) = v25;
    return sub_2684B44B4();
  }

  if (v20 == *MEMORY[0x277D5E048])
  {
    (*(v11 + 8))(v18, v10);
LABEL_14:
    if (qword_28027CF00 != -1)
    {
      swift_once();
    }

    v26 = sub_2684B3F64();
    __swift_project_value_buffer(v26, qword_2802828F8);
    v27 = sub_26849A760();
    goto LABEL_17;
  }

  if (v20 == *MEMORY[0x277D5E050])
  {
    goto LABEL_8;
  }

  if (v20 == *MEMORY[0x277D5E088])
  {
    v27 = sub_2684B4E84();
LABEL_17:
    v45 = v27;
    return sub_2684B44B4();
  }

  if (v20 == *MEMORY[0x277D5E080])
  {
    goto LABEL_14;
  }

  if (v20 == *MEMORY[0x277D5E068] || v20 == *MEMORY[0x277D5E090])
  {
    goto LABEL_8;
  }

  if (v20 == *MEMORY[0x277D5E098])
  {
    goto LABEL_14;
  }

  if (v20 == *MEMORY[0x277D5E0A0])
  {
    v27 = sub_2684B4E44();
    goto LABEL_17;
  }

  if (v20 == *MEMORY[0x277D5E070])
  {
    goto LABEL_8;
  }

  if (v20 == *MEMORY[0x277D5E078])
  {
    v27 = sub_2684B4E54();
    goto LABEL_17;
  }

  if (v20 == *MEMORY[0x277D5E038])
  {
    v25 = sub_2684B49F4();
    goto LABEL_9;
  }

  v29 = v11;
  if (qword_28027CF20 != -1)
  {
    swift_once();
  }

  v30 = sub_2684B4354();
  __swift_project_value_buffer(v30, qword_280282910);
  v31 = v44;
  v19(v44, v0, v10);
  v32 = sub_2684B4334();
  v33 = sub_2684B5704();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v34 = 136315138;
    v19(v43, v31, v10);
    v35 = sub_2684B5564();
    v36 = v31;
    v38 = v37;
    v39 = *(v29 + 8);
    v39(v36, v10);
    v40 = sub_268479394(v35, v38, &v45);

    *(v34 + 4) = v40;
    _os_log_impl(&dword_26845C000, v32, v33, "Unknown ReminderSectionHeading: %s", v34, 0xCu);
    v41 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x26D61A450](v41, -1, -1);
    MEMORY[0x26D61A450](v34, -1, -1);
  }

  else
  {

    v39 = *(v29 + 8);
    v39(v31, v10);
  }

  LODWORD(v45) = sub_2684B49D4();
  v21 = sub_2684B44B4();
  v39(v18, v10);
  return v21;
}

uint64_t sub_2684A44AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v19 - v4;
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - v12;
  sub_2684A46E8(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_268467A4C(v5, &qword_28027E860, &unk_2684BA290);
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v11, v13, v6);
    v14 = (*(v7 + 88))(v11, v6);
    v15 = *MEMORY[0x277D5E060];
    v16 = *(v7 + 8);
    v16(v11, v6);
    if (v14 == v15)
    {
      v17 = sub_2684A3D74();
      v16(v13, v6);
      return v17;
    }

    v16(v13, v6);
  }

  return sub_2684A3D74();
}

uint64_t sub_2684A46E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684A4758@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  v3 = v2 - 8;
  v35 = *(v2 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B3CF4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  sub_2684B3DE4();
  (*(v7 + 16))(v10, v12, v6);
  sub_2684A714C(v1, v5, type metadata accessor for ReminderSearchResult1pSnippet);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = (v8 + *(v35 + 80) + v13) & ~*(v35 + 80);
  v15 = swift_allocObject();
  (*(v7 + 32))(v15 + v13, v10, v6);
  sub_2684A6DB0(v5, v15 + v14, type metadata accessor for ReminderSearchResult1pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E880, &qword_2684BA188);
  sub_26846ACF0(&qword_28027E888, &qword_28027E880, &qword_2684BA188);
  v16 = v36;
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v18 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E890, &qword_2684BA1B8) + 36);
  *v18 = KeyPath;
  *(v18 + 8) = 1;
  LOBYTE(KeyPath) = sub_2684B4A44();
  v19 = *(v1 + *(v3 + 28) + 96);
  sub_2684B4364();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E898, &qword_2684BA1C0) + 36);
  *v28 = KeyPath;
  *(v28 + 8) = v21;
  *(v28 + 16) = v23;
  *(v28 + 24) = v25;
  *(v28 + 32) = v27;
  *(v28 + 40) = 0;
  v29 = sub_2684A3D74();
  v30 = swift_getKeyPath();
  v37 = v29;

  v31 = sub_2684B44B4();
  (*(v7 + 8))(v12, v6);

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8A0, &qword_2684BA1F8);
  v33 = (v16 + *(result + 36));
  *v33 = v30;
  v33[1] = v31;
  return result;
}

uint64_t sub_2684A4B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v122 = a3;
  v102 = type metadata accessor for ReadingPromptButtons();
  v5 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v114 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D138, &qword_2684BA200);
  v119 = *(v121 - 8);
  v7 = *(v119 + 64);
  MEMORY[0x28223BE20](v121);
  v103 = &v99 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v112 = &v99 - v11;
  v12 = sub_2684B3FB4();
  v110 = *(v12 - 8);
  v111 = v12;
  v13 = *(v110 + 64);
  MEMORY[0x28223BE20](v12);
  v113 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D100, &qword_2684B65E0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v120 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v118 = &v99 - v19;
  v20 = sub_2684B3CF4();
  v123 = *(v20 - 8);
  v21 = v123;
  v109 = *(v123 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v101 = &v99 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v108 = &v99 - v24;
  v25 = type metadata accessor for ReminderSearchResult1pSnippet(0);
  v26 = v25 - 8;
  v107 = *(v25 - 8);
  v106 = *(v107 + 64);
  MEMORY[0x28223BE20](v25);
  v105 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8B0, &qword_2684BA208);
  v116 = *(v28 - 8);
  v117 = v28;
  v29 = *(v116 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v115 = &v99 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v126 = &v99 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8B8, &qword_2684BA210);
  v34 = v33 - 8;
  v35 = *(*(v33 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v125 = &v99 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v39 = &v99 - v38;
  v40 = *(v21 + 16);
  v40(&v99 - v38, a1, v20);
  v41 = sub_2684B3DF4();
  v43 = v42;
  v44 = type metadata accessor for ReminderPrimaryHeadingView();
  v45 = &v39[*(v44 + 20)];
  *v45 = v41;
  v46 = a1;
  v45[8] = v43 & 1;
  v47 = &v39[*(v44 + 24)];
  *v47 = swift_getKeyPath();
  v47[8] = 0;
  *(v47 + 1) = xmmword_2684B9C00;
  *(v47 + 4) = sub_2684A6B5C;
  *(v47 + 5) = 0;
  LOBYTE(v47) = sub_2684B4A44();
  v48 = *(a2 + *(v26 + 28) + 104);
  sub_2684B4364();
  v49 = *(v34 + 44);
  v124 = v39;
  v50 = &v39[v49];
  *v50 = v47;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  v104 = a2;
  v55 = sub_2684B3E54();
  v56 = sub_2684ABFC0(v55);

  v127 = v56;
  swift_getKeyPath();
  v57 = v105;
  sub_2684A714C(a2, v105, type metadata accessor for ReminderSearchResult1pSnippet);
  v58 = v108;
  v99 = v46;
  v100 = v40;
  v40(v108, v46, v20);
  v59 = (*(v107 + 80) + 16) & ~*(v107 + 80);
  v60 = v123;
  v61 = (v106 + *(v123 + 80) + v59) & ~*(v123 + 80);
  v62 = v110;
  v63 = swift_allocObject();
  sub_2684A6DB0(v57, v63 + v59, type metadata accessor for ReminderSearchResult1pSnippet);
  v64 = *(v60 + 32);
  v109 = v20;
  v64(v63 + v61, v58, v20);
  v65 = swift_allocObject();
  *(v65 + 16) = sub_2684A6BB8;
  *(v65 + 24) = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C8, &unk_2684BA270);
  sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268);
  sub_2684A6CA8();
  v66 = v111;
  sub_2684B5014();
  v67 = v112;
  sub_2684B3E44();
  v68 = v67;
  if ((*(v62 + 48))(v67, 1, v66) != 1)
  {
    v75 = v113;
    (*(v62 + 32))(v113, v68, v66);
    v76 = v114;
    (*(v62 + 16))(v114, v75, v66);
    v77 = v76 + *(v102 + 20);
    sub_2684B52A4();
    v78 = v101;
    v79 = v109;
    v100(v101, v99, v109);
    v80 = v123;
    v81 = (*(v123 + 88))(v78, v79);
    v82 = v78;
    if (v81 == *MEMORY[0x277D5E058] || v81 == *MEMORY[0x277D5E040] || v81 == *MEMORY[0x277D5E048])
    {
      (*(v80 + 8))(v78, v79);
      v83 = v120;
      v71 = v121;
      v73 = v119;
      v84 = v103;
    }

    else
    {
      v83 = v120;
      v71 = v121;
      v73 = v119;
      v84 = v103;
      if (v81 != *MEMORY[0x277D5E050] && v81 != *MEMORY[0x277D5E080] && v81 != *MEMORY[0x277D5E068] && v81 != *MEMORY[0x277D5E090] && v81 != *MEMORY[0x277D5E098] && v81 != *MEMORY[0x277D5E070] && v81 != *MEMORY[0x277D5E038])
      {
        v85 = v82;
        v86 = sub_2684A3D74();
        (*(v80 + 8))(v85, v79);
LABEL_16:
        KeyPath = swift_getKeyPath();
        v127 = v86;

        v88 = sub_2684B44B4();
        (*(v62 + 8))(v113, v66);

        sub_2684A6DB0(v114, v84, type metadata accessor for ReadingPromptButtons);
        v89 = (v84 + *(v71 + 36));
        *v89 = KeyPath;
        v89[1] = v88;
        v74 = v118;
        sub_26846A8C8(v84, v118, &qword_28027D138, &qword_2684BA200);
        v69 = 0;
        v72 = v83;
        v70 = v122;
        goto LABEL_17;
      }
    }

    v127 = sub_2684B4E54();
    v86 = sub_2684B44B4();
    goto LABEL_16;
  }

  sub_268467A4C(v67, &qword_28027D140, &qword_2684B6610);
  v69 = 1;
  v71 = v121;
  v70 = v122;
  v73 = v119;
  v72 = v120;
  v74 = v118;
LABEL_17:
  (*(v73 + 56))(v74, v69, 1, v71);
  v90 = v125;
  sub_26846A6DC(v124, v125, &qword_28027E8B8, &qword_2684BA210);
  v92 = v115;
  v91 = v116;
  v93 = *(v116 + 16);
  v94 = v126;
  v95 = v117;
  v93(v115, v126, v117);
  sub_26846A6DC(v74, v72, &qword_28027D100, &qword_2684B65E0);
  sub_26846A6DC(v90, v70, &qword_28027E8B8, &qword_2684BA210);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8F8, &qword_2684BA280);
  v93((v70 + *(v96 + 48)), v92, v95);
  sub_26846A6DC(v72, v70 + *(v96 + 64), &qword_28027D100, &qword_2684B65E0);
  sub_268467A4C(v74, &qword_28027D100, &qword_2684B65E0);
  v97 = *(v91 + 8);
  v97(v94, v95);
  sub_268467A4C(v124, &qword_28027E8B8, &qword_2684BA210);
  sub_268467A4C(v72, &qword_28027D100, &qword_2684B65E0);
  v97(v92, v95);
  return sub_268467A4C(v125, &qword_28027E8B8, &qword_2684BA210);
}

uint64_t sub_2684A5710@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v17 - v8;
  v10 = *(a2 + *(type metadata accessor for ReminderSearchResult1pSnippet(0) + 20) + 104);
  v11 = sub_2684B3E34();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  *(a3 + *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) + 20)) = v10;
  sub_2684B3E24();
  v12 = sub_2684A44AC(v9);
  sub_268467A4C(v9, &qword_28027E860, &unk_2684BA290);
  KeyPath = swift_getKeyPath();
  v17[1] = v12;
  v14 = sub_2684B44B4();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C8, &unk_2684BA270);
  v16 = (a3 + *(result + 36));
  *v16 = KeyPath;
  v16[1] = v14;
  return result;
}

uint64_t sub_2684A5894@<X0>(_BYTE *a1@<X8>)
{
  sub_2684A6B08();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_2684A58E4(char *a1)
{
  v2 = *a1;
  sub_2684A6B08();
  return sub_2684B4814();
}

uint64_t sub_2684A5930@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v83 = type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0);
  v85 = *(v83 - 8);
  v2 = *(v85 + 64);
  MEMORY[0x28223BE20](v83);
  v87 = v3;
  v88 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E958, &qword_2684BA348);
  v90 = *(v103 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v103);
  v89 = &v82 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E960, &qword_2684BA350);
  v6 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v102 = &v82 - v7;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E968, &qword_2684BA358);
  v8 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94);
  v95 = &v82 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E970, &unk_2684BA360);
  v10 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = &v82 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E978, &qword_2684BB190);
  v86 = *(v96 - 8);
  v12 = *(v86 + 64);
  MEMORY[0x28223BE20](v96);
  v84 = &v82 - v13;
  v14 = sub_2684B3E04();
  v91 = *(v14 - 8);
  v92 = v14;
  v15 = *(v91 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v82 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v82 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E980, &qword_2684BA370);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v100 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v97 = &v82 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E988, &qword_2684BA378);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v82 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v33 = &v82 - v32;
  v34 = sub_2684B3CF4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v82 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E990, &qword_2684BA380);
  v40 = *(*(v39 - 8) + 64);
  v41 = MEMORY[0x28223BE20](v39 - 8);
  v93 = &v82 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v44 = &v82 - v43;
  sub_2684B3E24();
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_268467A4C(v33, &qword_28027E860, &unk_2684BA290);
    v45 = 1;
  }

  else
  {
    (*(v35 + 32))(v38, v33, v34);
    (*(v35 + 16))(v29, v38, v34);
    v46 = &v29[*(type metadata accessor for ReminderSectionHeadingView() + 20)];
    *v46 = swift_getKeyPath();
    v46[8] = 0;
    LOBYTE(v46) = sub_2684B4A44();
    v47 = *(v1 + *(v83 + 20));
    sub_2684B4364();
    v49 = v48;
    v51 = v50;
    v53 = v52;
    v55 = v54;
    (*(v35 + 8))(v38, v34);
    v56 = &v29[*(v25 + 36)];
    *v56 = v46;
    *(v56 + 1) = v49;
    *(v56 + 2) = v51;
    *(v56 + 3) = v53;
    *(v56 + 4) = v55;
    v56[40] = 0;
    sub_26846A8C8(v29, v44, &qword_28027E988, &qword_2684BA378);
    v45 = 0;
  }

  v57 = v44;
  (*(v26 + 56))(v44, v45, 1, v25);
  sub_2684B3E14();
  v59 = v91;
  v58 = v92;
  v60 = (*(v91 + 88))(v19, v92);
  if (v60 == *MEMORY[0x277D5E120])
  {
    (*(v59 + 96))(v19, v58);
    v105 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
    sub_2684B3894();
    type metadata accessor for ReminderView(0);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0);
    sub_2684A7440(&qword_28027D7F8, type metadata accessor for ReminderView);
    sub_2684A7440(&qword_28027DEB0, MEMORY[0x277D5E1A8]);
    v61 = v84;
    sub_2684B5024();
    v62 = v86;
    v63 = v96;
    (*(v86 + 16))(v95, v61, v96);
    swift_storeEnumTagMultiPayload();
    sub_2684A738C();
    sub_2684A7488();
    v64 = v99;
    sub_2684B49B4();
    sub_26846A6DC(v64, v102, &qword_28027E970, &unk_2684BA360);
    swift_storeEnumTagMultiPayload();
    sub_2684A750C();
    v65 = v97;
    sub_2684B49B4();
    sub_268467A4C(v64, &qword_28027E970, &unk_2684BA360);
    (*(v62 + 8))(v61, v63);
LABEL_8:
    v76 = v93;
    sub_26846A6DC(v57, v93, &qword_28027E990, &qword_2684BA380);
    v77 = v100;
    sub_26846A6DC(v65, v100, &qword_28027E980, &qword_2684BA370);
    v78 = v104;
    sub_26846A6DC(v76, v104, &qword_28027E990, &qword_2684BA380);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E9C0, &unk_2684BA390);
    sub_26846A6DC(v77, v78 + *(v79 + 48), &qword_28027E980, &qword_2684BA370);
    sub_268467A4C(v65, &qword_28027E980, &qword_2684BA370);
    sub_268467A4C(v57, &qword_28027E990, &qword_2684BA380);
    sub_268467A4C(v77, &qword_28027E980, &qword_2684BA370);
    return sub_268467A4C(v76, &qword_28027E990, &qword_2684BA380);
  }

  v66 = v1;
  if (v60 == *MEMORY[0x277D5E118])
  {
    (*(v59 + 96))(v19, v58);
    v67 = sub_2684ABFC0(*v19);

    v105 = v67;
    swift_getKeyPath();
    v68 = v88;
    sub_2684A714C(v66, v88, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    v69 = (*(v85 + 80) + 16) & ~*(v85 + 80);
    v70 = swift_allocObject();
    sub_2684A6DB0(v68, v70 + v69, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    v71 = swift_allocObject();
    *(v71 + 16) = sub_2684A71B4;
    *(v71 + 24) = v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E998, &qword_2684BA388);
    sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268);
    sub_2684A72A4();
    v72 = v89;
    sub_2684B5014();
    v73 = v90;
    v74 = v103;
    (*(v90 + 16))(v95, v72, v103);
    swift_storeEnumTagMultiPayload();
    sub_2684A738C();
    sub_2684A7488();
    v75 = v99;
    sub_2684B49B4();
    sub_26846A6DC(v75, v102, &qword_28027E970, &unk_2684BA360);
    swift_storeEnumTagMultiPayload();
    sub_2684A750C();
    v65 = v97;
    sub_2684B49B4();
    sub_268467A4C(v75, &qword_28027E970, &unk_2684BA360);
    (*(v73 + 8))(v72, v74);
    goto LABEL_8;
  }

  v105 = 0;
  v106 = 0xE000000000000000;
  sub_2684B58A4();

  v105 = 0xD000000000000022;
  v106 = 0x80000002684C46A0;
  sub_2684B3E14();
  v81 = sub_2684B5564();
  MEMORY[0x26D619980](v81);

  result = sub_2684B5914();
  __break(1u);
  return result;
}

uint64_t sub_2684A66D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2684B41E4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  *(a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  result = type metadata accessor for ReminderView(0);
  *(a2 + *(result + 20)) = 0;
  *(a2 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2684A6768@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0);
  v7 = *(a2 + *(v6 + 20));
  v8 = sub_2684B3E34();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + *(v6 + 20)) = v7;
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E998, &qword_2684BA388);
  v11 = a3 + *(result + 36);
  *v11 = KeyPath;
  *(v11 + 8) = 1;
  return result;
}

uint64_t sub_2684A6834()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684BA040;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_280282930 = v0;
  return result;
}

double sub_2684A68A8@<D0>(_OWORD *a1@<X8>)
{
  result = 16.0;
  *a1 = xmmword_2684B6170;
  return result;
}

void sub_2684A6910()
{
  sub_2684B3E64();
  if (v0 <= 0x3F)
  {
    sub_2684A6994();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684A6994()
{
  if (!qword_28027E878)
  {
    v0 = type metadata accessor for AmbientScaledIdiomConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_28027E878);
    }
  }
}

double sub_2684A6A04@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_2684BA050;
  return result;
}

uint64_t sub_2684A6A34@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_2684B3CF4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_2684A4B04(v1 + v4, v7, a1);
}

unint64_t sub_2684A6B08()
{
  result = qword_28027E8A8;
  if (!qword_28027E8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E8A8);
  }

  return result;
}

double sub_2684A6B5C@<D0>(_OWORD *a1@<X8>)
{
  sub_2684A6E18();
  sub_2684B53E4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_2684A6BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderSearchResult1pSnippet(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2684B3CF4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_2684A5710(a1, v2 + v6, a2);
}

unint64_t sub_2684A6CA8()
{
  result = qword_28027E8D8;
  if (!qword_28027E8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E8C8, &unk_2684BA270);
    sub_2684A7440(&qword_28027E8E0, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E8D8);
  }

  return result;
}

uint64_t sub_2684A6DB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2684A6E18()
{
  result = qword_28027E908;
  if (!qword_28027E908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E908);
  }

  return result;
}

uint64_t sub_2684A6E94()
{
  result = sub_2684B3E34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2684A6F08()
{
  result = qword_28027E920;
  if (!qword_28027E920)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E8A0, &qword_2684BA1F8);
    sub_2684A6FC0();
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E920);
  }

  return result;
}

unint64_t sub_2684A6FC0()
{
  result = qword_28027E928;
  if (!qword_28027E928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E898, &qword_2684BA1C0);
    sub_2684A704C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E928);
  }

  return result;
}

unint64_t sub_2684A704C()
{
  result = qword_28027E930;
  if (!qword_28027E930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E890, &qword_2684BA1B8);
    sub_26846ACF0(&qword_28027E938, &qword_28027E940, "Rz");
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E930);
  }

  return result;
}

uint64_t sub_2684A714C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684A71B4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderSearchResult1pSnippet.SectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684A6768(a1, v6, a2);
}

uint64_t sub_2684A723C(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E900, &qword_2684BA288);
  return v4(v5, &a1[*(v6 + 48)]);
}

unint64_t sub_2684A72A4()
{
  result = qword_28027E9A0;
  if (!qword_28027E9A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E998, &qword_2684BA388);
    sub_2684A7440(&qword_28027E8E0, type metadata accessor for ReminderSearchResult1pSnippet.SectionView);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9A0);
  }

  return result;
}

unint64_t sub_2684A738C()
{
  result = qword_28027E9A8;
  if (!qword_28027E9A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E978, &qword_2684BB190);
    sub_2684A7440(&qword_28027D7F8, type metadata accessor for ReminderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9A8);
  }

  return result;
}

uint64_t sub_2684A7440(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2684A7488()
{
  result = qword_28027E9B0;
  if (!qword_28027E9B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E958, &qword_2684BA348);
    sub_2684A72A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9B0);
  }

  return result;
}

unint64_t sub_2684A750C()
{
  result = qword_28027E9B8;
  if (!qword_28027E9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E970, &unk_2684BA360);
    sub_2684A738C();
    sub_2684A7488();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9B8);
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

uint64_t sub_2684A75B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2684A75F8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_2684A7668@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2684B47F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 1) == 0)
  {

    sub_2684B5704();
    v13 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846EFC8(a1, 0);
    (*(v7 + 8))(v10, v6);
    if (v16[1])
    {
      goto LABEL_3;
    }

LABEL_5:
    v12 = 1;
    goto LABEL_6;
  }

  v11 = a1;
  if (!a1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_2684B5374();
  v12 = 0;
LABEL_6:
  v14 = sub_2684B5364();
  return (*(*(v14 - 8) + 56))(a3, v12, 1, v14);
}

uint64_t sub_2684A7830()
{
  v0 = sub_2684B5164();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B5174();
  v5 = sub_2684B5334();
  (*(v1 + 8))(v4, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A0, &unk_2684B79F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2684B7880;
  *(v6 + 32) = v5;
  v7 = sub_2684B5324();

  return v7;
}

uint64_t sub_2684A7964@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2684B4E64();
  sub_2684B50A4();
  sub_2684B44A4();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E4A0, &qword_2684B9650);
  a1[4] = sub_268499D9C();
  result = swift_allocObject();
  *a1 = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = v5;
  *(result + 40) = v6;
  *(result + 48) = v7;
  *(result + 56) = v8;
  *(result + 64) = v9;
  return result;
}

unint64_t sub_2684A7A3C()
{
  result = qword_28027E9D8;
  if (!qword_28027E9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027E9E0, &unk_2684BA4C0);
    sub_26847A73C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E9D8);
  }

  return result;
}

uint64_t sub_2684A7B08()
{
  result = sub_2684B3CE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2684A7B90@<X0>(_BYTE *a1@<X8>)
{
  sub_26849A6FC();
  result = sub_2684B4804();
  *a1 = v3;
  return result;
}

uint64_t sub_2684A7BE0(char *a1)
{
  v2 = *a1;
  sub_26849A6FC();
  return sub_2684B4814();
}

uint64_t sub_2684A7C2C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2684B3EF4();
  v12 = *(v2 - 8);
  v3 = *(v12 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(sub_2684B3CB4() + 16);

  if (!v6)
  {
    v7 = *(sub_2684B3CC4() + 16);

    if (v7 == 1)
    {
      v8 = sub_2684B3CC4();
      if (*(v8 + 16))
      {
        (*(v12 + 16))(v5, v8 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v2);

        (*(v12 + 32))(a1, v5, v2);
        return (*(v12 + 56))(a1, 0, 1, v2);
      }
    }
  }

  v10 = *(v12 + 56);

  return v10(a1, 1, 1, v2);
}

uint64_t sub_2684A7DD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v148 = a2;
  v147 = type metadata accessor for ReadingPromptButtons();
  v145 = *(v147 - 8);
  v3 = *(v145 + 64);
  MEMORY[0x28223BE20](v147);
  v128 = &v116 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D140, &qword_2684B6610);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v142 = &v116 - v7;
  v8 = sub_2684B3FB4();
  v143 = *(v8 - 8);
  v144 = v8;
  v9 = *(v143 + 64);
  MEMORY[0x28223BE20](v8);
  v127 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA10, &qword_2684BA5E0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v146 = &v116 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v151 = &v116 - v15;
  v140 = type metadata accessor for NoteDetail3pView();
  v16 = *(*(v140 - 8) + 64);
  MEMORY[0x28223BE20](v140);
  v125 = &v116 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA18, &qword_2684BA5E8);
  v18 = *(*(v137 - 8) + 64);
  MEMORY[0x28223BE20](v137);
  v139 = &v116 - v19;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA20, &qword_2684BA5F0);
  v20 = *(*(v138 - 8) + 64);
  MEMORY[0x28223BE20](v138);
  v126 = &v116 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA28, &qword_2684BA5F8);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v124 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v135 = &v116 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA30, &qword_2684BA600);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v123 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v134 = &v116 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA38, &qword_2684BA608);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v122 = &v116 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v133 = &v116 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA40, &qword_2684BA610);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v130 = &v116 - v39;
  v132 = sub_2684B3EF4();
  v131 = *(v132 - 8);
  v40 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v121 = &v116 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA48, &qword_2684BA618);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v141 = &v116 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v152 = &v116 - v46;
  v129 = sub_2684B5204();
  v47 = *(v129 - 8);
  v48 = *(v47 + 64);
  MEMORY[0x28223BE20](v129);
  v118 = &v116 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3E8, &unk_2684B7F40);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50 - 8);
  v53 = &v116 - v52;
  v54 = sub_2684B3B54();
  v55 = *(v54 - 8);
  v56 = *(v55 + 64);
  v57 = MEMORY[0x28223BE20](v54);
  v119 = &v116 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v60 = &v116 - v59;
  v61 = sub_2684B3EA4();
  v62 = *(v61 - 8);
  v63 = *(v62 + 64);
  MEMORY[0x28223BE20](v61);
  v65 = &v116 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F0, &qword_2684B6C10);
  v67 = *(*(v66 - 8) + 64);
  v68 = MEMORY[0x28223BE20](v66 - 8);
  v136 = &v116 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v68);
  v71 = &v116 - v70;
  v150 = a1;
  sub_2684B3C94();
  sub_2684B3B44();
  v72 = *(v55 + 8);
  v120 = v54;
  v117 = v72;
  v72(v60, v54);
  if ((*(v62 + 48))(v53, 1, v61) == 1)
  {
    sub_268467A4C(v53, &qword_28027D3E8, &unk_2684B7F40);
    v73 = 1;
    v74 = v71;
    v75 = v129;
  }

  else
  {
    (*(v62 + 32))(v65, v53, v61);
    sub_2684B3E84();
    v76 = v118;
    sub_2684B5214();
    (*(v62 + 8))(v65, v61);
    v77 = v76;
    v78 = v129;
    (*(v47 + 32))(v71, v77, v129);
    v73 = 0;
    v74 = v71;
    v75 = v78;
  }

  (*(v47 + 56))(v74, v73, 1, v75);
  v79 = v130;
  sub_2684A7C2C(v130);
  v80 = v131;
  v81 = v132;
  v82 = (*(v131 + 48))(v79, 1, v132);
  v83 = v151;
  v149 = v74;
  if (v82 == 1)
  {
    sub_268467A4C(v79, &qword_28027EA40, &qword_2684BA610);
    v84 = v133;
    sub_2684A8E40(v133);
    v85 = v134;
    sub_2684A93E4(v134);
    v86 = v135;
    sub_2684A9A30(v135);
    v87 = v122;
    sub_26846A6DC(v84, v122, &qword_28027EA38, &qword_2684BA608);
    v88 = v123;
    sub_26846A6DC(v85, v123, &qword_28027EA30, &qword_2684BA600);
    v89 = v124;
    sub_26846A6DC(v86, v124, &qword_28027EA28, &qword_2684BA5F8);
    v90 = v126;
    sub_26846A6DC(v87, v126, &qword_28027EA38, &qword_2684BA608);
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA50, &qword_2684BA620);
    sub_26846A6DC(v88, v90 + *(v91 + 48), &qword_28027EA30, &qword_2684BA600);
    sub_26846A6DC(v89, v90 + *(v91 + 64), &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v89, &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v88, &qword_28027EA30, &qword_2684BA600);
    sub_268467A4C(v87, &qword_28027EA38, &qword_2684BA608);
    sub_26846A6DC(v90, v139, &qword_28027EA20, &qword_2684BA5F0);
    swift_storeEnumTagMultiPayload();
    sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView);
    sub_26846ACF0(&qword_28027EA60, &qword_28027EA20, &qword_2684BA5F0);
    sub_2684B49B4();
    sub_268467A4C(v90, &qword_28027EA20, &qword_2684BA5F0);
    v83 = v151;
    sub_268467A4C(v135, &qword_28027EA28, &qword_2684BA5F8);
    sub_268467A4C(v134, &qword_28027EA30, &qword_2684BA600);
    sub_268467A4C(v133, &qword_28027EA38, &qword_2684BA608);
  }

  else
  {
    v92 = v121;
    (*(v80 + 32))(v121, v79, v81);
    v93 = v125;
    (*(v80 + 16))(v125, v92, v81);
    v94 = v119;
    sub_2684B3C94();
    v95 = v140;
    v96 = v93 + *(v140 + 20);
    sub_2684B3B44();
    v117(v94, v120);
    *(v93 + *(v95 + 24)) = 1;
    v97 = v93 + *(v95 + 28);
    *v97 = 5;
    *(v97 + 8) = 0;
    sub_2684AB6D0(v93, v139, type metadata accessor for NoteDetail3pView);
    swift_storeEnumTagMultiPayload();
    sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView);
    sub_26846ACF0(&qword_28027EA60, &qword_28027EA20, &qword_2684BA5F0);
    sub_2684B49B4();
    sub_2684ACF74(v93, type metadata accessor for NoteDetail3pView);
    v98 = v92;
    v74 = v149;
    (*(v80 + 8))(v98, v81);
  }

  v99 = v142;
  sub_2684B3CD4();
  v101 = v143;
  v100 = v144;
  v102 = (*(v143 + 48))(v99, 1, v144);
  v103 = v147;
  if (v102 == 1)
  {
    sub_268467A4C(v99, &qword_28027D140, &qword_2684B6610);
    v104 = 1;
  }

  else
  {
    v105 = v127;
    (*(v101 + 32))(v127, v99, v100);
    v106 = v128;
    (*(v101 + 16))(v128, v105, v100);
    v107 = v106 + *(v103 + 20);
    sub_2684B52A4();
    (*(v101 + 8))(v105, v100);
    sub_2684AB668(v106, v83, type metadata accessor for ReadingPromptButtons);
    v104 = 0;
  }

  v108 = v83;
  (*(v145 + 56))(v83, v104, 1, v103);
  v109 = v136;
  sub_26846A6DC(v74, v136, &qword_28027D3F0, &qword_2684B6C10);
  v110 = v152;
  v111 = v141;
  sub_26846A6DC(v152, v141, &qword_28027EA48, &qword_2684BA618);
  v112 = v146;
  sub_26846A6DC(v83, v146, &qword_28027EA10, &qword_2684BA5E0);
  v113 = v148;
  sub_26846A6DC(v109, v148, &qword_28027D3F0, &qword_2684B6C10);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA68, &qword_2684BA628);
  sub_26846A6DC(v111, v113 + *(v114 + 48), &qword_28027EA48, &qword_2684BA618);
  sub_26846A6DC(v112, v113 + *(v114 + 64), &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v108, &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v110, &qword_28027EA48, &qword_2684BA618);
  sub_268467A4C(v149, &qword_28027D3F0, &qword_2684B6C10);
  sub_268467A4C(v112, &qword_28027EA10, &qword_2684BA5E0);
  sub_268467A4C(v111, &qword_28027EA48, &qword_2684BA618);
  return sub_268467A4C(v109, &qword_28027D3F0, &qword_2684B6C10);
}

uint64_t sub_2684A8E40@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v40 = sub_2684B3994();
  v39 = *(v40 - 8);
  v1 = *(v39 + 64);
  MEMORY[0x28223BE20](v40);
  v38 = &v35 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for ReminderHeadingTextView();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2684B5354();
  v37 = *(v36 - 8);
  v7 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAC8, &unk_2684BA6C0);
  v10 = *(v41 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v41);
  v13 = &v35 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v35 - v16;
  v18 = sub_2684B3CF4();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2684B3CA4();
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_268467A4C(v17, &qword_28027E860, &unk_2684BA290);
    v23 = 1;
    v24 = v42;
    v25 = v41;
  }

  else
  {
    (*(v19 + 32))(v22, v17, v18);
    (*(v19 + 16))(v6, v22, v18);
    sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView);
    v26 = sub_2684B4BC4();
    sub_2684ACF74(v6, type metadata accessor for ReminderHeadingTextView);
    v57 = MEMORY[0x277D63A60];
    v56 = MEMORY[0x277CE11C8];
    v55 = v26;
    v54 = 0;
    v52 = 0u;
    v53 = 0u;
    v51 = 0;
    v49 = 0u;
    v50 = 0u;
    v48 = 0;
    v47 = 0u;
    v46 = 0u;
    v45 = 0;
    v44 = 0u;
    v43 = 0u;
    v27 = v9;
    sub_2684B5344();
    v28 = v39;
    v29 = v38;
    v30 = v40;
    (*(v39 + 104))(v38, *MEMORY[0x277D62F48], v40);
    sub_2684AB738(&qword_28027EAD0, MEMORY[0x277D63DB8]);
    v31 = v36;
    sub_2684B4C04();
    (*(v28 + 8))(v29, v30);
    (*(v37 + 8))(v27, v31);
    (*(v19 + 8))(v22, v18);
    v32 = v42;
    v33 = v41;
    (*(v10 + 32))(v42, v13, v41);
    v23 = 0;
    v24 = v32;
    v25 = v33;
  }

  return (*(v10 + 56))(v24, v23, 1, v25);
}

uint64_t sub_2684A93E4@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA98, &qword_2684BA678);
  v55 = *(v52 - 8);
  v5 = v55[8];
  v6 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  v9 = type metadata accessor for ReminderHeadingTextView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2684B3CF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2684B54A4();
  v46 = *(v49 - 8);
  v18 = v46;
  v19 = *(v46 + 64);
  v20 = MEMORY[0x28223BE20](v49);
  v54 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  (*(v14 + 104))(v17, *MEMORY[0x277D5E068], v13);
  (*(v14 + 16))(v12, v17, v13);
  sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView);
  v24 = sub_2684B4BC4();
  sub_2684ACF74(v12, type metadata accessor for ReminderHeadingTextView);
  v57 = MEMORY[0x277CE11C8];
  v58 = MEMORY[0x277D63A60];
  v56 = v24;
  v45 = v23;
  sub_2684B5494();
  (*(v14 + 8))(v17, v13);
  v25 = sub_2684B3CC4();
  v26 = sub_2684AC434(v25);

  v56 = v26;
  swift_getKeyPath();
  v27 = v2;
  v28 = v47;
  sub_2684AB6D0(v27, v47, type metadata accessor for SearchForNotebookItems3pSnippet);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = swift_allocObject();
  sub_2684AB668(v28, v30 + v29, type metadata accessor for SearchForNotebookItems3pSnippet);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2684AC77C;
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAA0, &qword_2684BA6A0);
  type metadata accessor for NoteDetail3pView();
  sub_26846ACF0(&qword_28027EAA8, &qword_28027EAA0, &qword_2684BA6A0);
  sub_2684AB738(&qword_28027EA58, type metadata accessor for NoteDetail3pView);
  v32 = v50;
  sub_2684B5014();
  v33 = *(v18 + 16);
  v34 = v54;
  v35 = v23;
  v36 = v49;
  v33(v54, v35, v49);
  v37 = v55[2];
  v38 = v51;
  v39 = v52;
  v37(v51, v32, v52);
  v40 = v53;
  v33(v53, v34, v36);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAB0, &qword_2684BA6A8);
  v37(&v40[*(v41 + 48)], v38, v39);
  v42 = v55[1];
  v42(v32, v39);
  v43 = *(v46 + 8);
  v43(v45, v36);
  v42(v38, v39);
  return (v43)(v54, v36);
}

uint64_t sub_2684A9A30@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v53 = a1;
  v3 = type metadata accessor for SearchForNotebookItems3pSnippet(0);
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA70, &qword_2684BA630);
  v55 = *(v52 - 8);
  v5 = v55[8];
  v6 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v50 = &v45 - v8;
  v9 = type metadata accessor for ReminderHeadingTextView();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2684B3CF4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_2684B54A4();
  v46 = *(v49 - 8);
  v18 = v46;
  v19 = *(v46 + 64);
  v20 = MEMORY[0x28223BE20](v49);
  v54 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  (*(v14 + 104))(v17, *MEMORY[0x277D5E070], v13);
  (*(v14 + 16))(v12, v17, v13);
  sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView);
  v24 = sub_2684B4BC4();
  sub_2684ACF74(v12, type metadata accessor for ReminderHeadingTextView);
  v57 = MEMORY[0x277CE11C8];
  v58 = MEMORY[0x277D63A60];
  v56 = v24;
  v45 = v23;
  sub_2684B5494();
  (*(v14 + 8))(v17, v13);
  v25 = sub_2684B3CB4();
  v26 = sub_2684ABFC0(v25);

  v56 = v26;
  swift_getKeyPath();
  v27 = v2;
  v28 = v47;
  sub_2684AB6D0(v27, v47, type metadata accessor for SearchForNotebookItems3pSnippet);
  v29 = (*(v48 + 80) + 16) & ~*(v48 + 80);
  v30 = swift_allocObject();
  sub_2684AB668(v28, v30 + v29, type metadata accessor for SearchForNotebookItems3pSnippet);
  v31 = swift_allocObject();
  *(v31 + 16) = sub_2684AC3D4;
  *(v31 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
  type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268);
  sub_2684AB738(&qword_28027EA80, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
  v32 = v50;
  sub_2684B5014();
  v33 = *(v18 + 16);
  v34 = v54;
  v35 = v23;
  v36 = v49;
  v33(v54, v35, v49);
  v37 = v55[2];
  v38 = v51;
  v39 = v52;
  v37(v51, v32, v52);
  v40 = v53;
  v33(v53, v34, v36);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA88, &unk_2684BA660);
  v37(&v40[*(v41 + 48)], v38, v39);
  v42 = v55[1];
  v42(v32, v39);
  v43 = *(v46 + 8);
  v43(v45, v36);
  v42(v38, v39);
  return (v43)(v54, v36);
}

uint64_t sub_2684AA07C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2684B3B54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2684B3EF4();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  sub_2684B3C94();
  v10 = type metadata accessor for NoteDetail3pView();
  v11 = a2 + v10[5];
  sub_2684B3B44();
  result = (*(v5 + 8))(v8, v4);
  *(a2 + v10[6]) = 0;
  v13 = a2 + v10[7];
  *v13 = 2;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_2684AA1C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_2684B3B54();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2684B3E34();
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  sub_2684B3C94();
  v10 = a2 + *(type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) + 20);
  sub_2684B3B44();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_2684AA2EC@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB10, &qword_2684BA760);
  v84 = *(v102 - 8);
  v2 = *(v84 + 64);
  MEMORY[0x28223BE20](v102);
  v83 = v79 - v3;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB18, &qword_2684BA768);
  v4 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100);
  v101 = v79 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB20, &qword_2684BA770);
  v6 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v95 = v79 - v7;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB28, &qword_2684BA778);
  v8 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v99 = v79 - v9;
  v10 = type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  v88 = *(v10 - 8);
  v11 = *(v88 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v89 = v12;
  v90 = v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB30, &qword_2684BA780);
  v82 = *(v94 - 8);
  v13 = *(v82 + 64);
  MEMORY[0x28223BE20](v94);
  v81 = v79 - v14;
  v87 = sub_2684B3E04();
  v86 = *(v87 - 8);
  v15 = *(v86 + 64);
  v16 = MEMORY[0x28223BE20](v87);
  v79[1] = v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (v79 - v18);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB38, &qword_2684BA788);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v97 = v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v96 = v79 - v24;
  v80 = type metadata accessor for ReminderHeadingTextView();
  v25 = *(*(v80 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  v27 = v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_2684B5434();
  v28 = *(v85 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](v85);
  v31 = v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E860, &unk_2684BA290);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = v79 - v34;
  v36 = sub_2684B3CF4();
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  v40 = v79 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB40, &qword_2684BA790);
  v42 = *(*(v41 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v41 - 8);
  v92 = v79 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v46 = v79 - v45;
  v91 = v1;
  sub_2684B3E24();
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_268467A4C(v35, &qword_28027E860, &unk_2684BA290);
    v47 = 1;
    v48 = v85;
  }

  else
  {
    (*(v37 + 32))(v40, v35, v36);
    (*(v37 + 16))(v27, v40, v36);
    sub_2684AB738(&qword_28027EA78, type metadata accessor for ReminderHeadingTextView);
    v49 = sub_2684B4BC4();
    sub_2684ACF74(v27, type metadata accessor for ReminderHeadingTextView);
    v106 = MEMORY[0x277CE11C8];
    v107 = MEMORY[0x277D63A60];
    v104 = v49;
    sub_2684B5424();
    (*(v37 + 8))(v40, v36);
    v50 = v85;
    (*(v28 + 32))(v46, v31, v85);
    v47 = 0;
    v48 = v50;
  }

  (*(v28 + 56))(v46, v47, 1, v48);
  v51 = v91;
  sub_2684B3E14();
  v52 = v86;
  v53 = v87;
  v54 = (*(v86 + 88))(v19, v87);
  if (v54 == *MEMORY[0x277D5E120])
  {
    (*(v52 + 96))(v19, v53);
    v104 = *v19;
    v55 = v51;
    v56 = v90;
    sub_2684AB6D0(v55, v90, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v57 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v58 = swift_allocObject();
    sub_2684AB668(v56, v58 + v57, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
    sub_2684B3894();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D470, &unk_2684B6C90);
    sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0);
    sub_2684ACB50();
    sub_2684AB738(&qword_28027DEB0, MEMORY[0x277D5E1A8]);
    v59 = v81;
    sub_2684B5024();
    v60 = v82;
    v61 = v94;
    (*(v82 + 16))(v95, v59, v94);
    swift_storeEnumTagMultiPayload();
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    v62 = v99;
    sub_2684B49B4();
    sub_26846A6DC(v62, v101, &qword_28027EB28, &qword_2684BA778);
    swift_storeEnumTagMultiPayload();
    sub_2684ACCB8();
    v63 = v96;
    sub_2684B49B4();
    sub_268467A4C(v62, &qword_28027EB28, &qword_2684BA778);
    (*(v60 + 8))(v59, v61);
LABEL_8:
    v73 = v92;
    sub_26846A6DC(v46, v92, &qword_28027EB40, &qword_2684BA790);
    v74 = v97;
    sub_26846A6DC(v63, v97, &qword_28027EB38, &qword_2684BA788);
    v75 = v103;
    sub_26846A6DC(v73, v103, &qword_28027EB40, &qword_2684BA790);
    v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB78, &unk_2684BA7A0);
    sub_26846A6DC(v74, v75 + *(v76 + 48), &qword_28027EB38, &qword_2684BA788);
    sub_268467A4C(v63, &qword_28027EB38, &qword_2684BA788);
    sub_268467A4C(v46, &qword_28027EB40, &qword_2684BA790);
    sub_268467A4C(v74, &qword_28027EB38, &qword_2684BA788);
    return sub_268467A4C(v73, &qword_28027EB40, &qword_2684BA790);
  }

  if (v54 == *MEMORY[0x277D5E118])
  {
    (*(v52 + 96))(v19, v53);
    v64 = sub_2684ABFC0(*v19);

    v104 = v64;
    swift_getKeyPath();
    v65 = v90;
    sub_2684AB6D0(v51, v90, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v66 = (*(v88 + 80) + 16) & ~*(v88 + 80);
    v67 = swift_allocObject();
    sub_2684AB668(v65, v67 + v66, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    v68 = swift_allocObject();
    *(v68 + 16) = sub_2684AC9DC;
    *(v68 + 24) = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E8C0, &qword_2684BA268);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB48, &qword_2684BA798);
    sub_26846ACF0(&qword_28027E8D0, &qword_28027E8C0, &qword_2684BA268);
    sub_2684ACA68();
    v69 = v83;
    sub_2684B5014();
    v70 = v84;
    v71 = v102;
    (*(v84 + 16))(v95, v69, v102);
    swift_storeEnumTagMultiPayload();
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    v72 = v99;
    sub_2684B49B4();
    sub_26846A6DC(v72, v101, &qword_28027EB28, &qword_2684BA778);
    swift_storeEnumTagMultiPayload();
    sub_2684ACCB8();
    v63 = v96;
    sub_2684B49B4();
    sub_268467A4C(v72, &qword_28027EB28, &qword_2684BA778);
    (*(v70 + 8))(v69, v71);
    goto LABEL_8;
  }

  v104 = 0;
  v105 = 0xE000000000000000;
  sub_2684B58A4();

  v104 = 0xD000000000000022;
  v105 = 0x80000002684C46A0;
  sub_2684B3E14();
  v78 = sub_2684B5564();
  MEMORY[0x26D619980](v78);

  result = sub_2684B5914();
  __break(1u);
  return result;
}

uint64_t sub_2684AB204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ReminderDetail3pView();
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B41E4();
  (*(*(v11 - 8) + 16))(v10, a1, v11);
  v12 = *(v7 + 28);
  *&v10[v12] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D3F8, &qword_2684BA7E0);
  swift_storeEnumTagMultiPayload();
  v13 = *(type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) + 20);
  v14 = sub_2684B3FC4();
  sub_26846EA2C(a2 + v13, v14, v15, a3);

  return sub_2684ACF74(v10, type metadata accessor for ReminderDetail3pView);
}

uint64_t sub_2684AB350@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2684B3E34();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0);
  sub_26846A6DC(a2 + *(v7 + 20), a3 + *(v7 + 20), &qword_28027D3E8, &unk_2684B7F40);
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB48, &qword_2684BA798);
  v10 = a3 + *(result + 36);
  *v10 = KeyPath;
  *(v10 + 8) = 1;
  return result;
}

uint64_t sub_2684AB420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_2684AB6D0(v2, &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SearchForNotebookItems3pSnippet);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_2684AB668(&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for SearchForNotebookItems3pSnippet);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E9F8, &qword_2684BA540);
  sub_26846ACF0(&qword_28027EA00, &qword_28027E9F8, &qword_2684BA540);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v9 = swift_getKeyPath();
  v10 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA08, &unk_2684BA5D0);
  v12 = a2 + *(result + 36);
  *v12 = 0;
  *(v12 + 8) = KeyPath;
  *(v12 + 16) = 0;
  *(v12 + 24) = v9;
  *(v12 + 32) = 0;
  *(v12 + 40) = v10;
  *(v12 + 48) = 0;
  return result;
}

uint64_t sub_2684AB5F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SearchForNotebookItems3pSnippet(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684A7DD8(v4, a1);
}

uint64_t sub_2684AB668(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684AB6D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2684AB738(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2684AB780(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v4 = 0;
    v5 = (MEMORY[0x277D84F90] + 32);
    v6 = (result + 40);
    while (1)
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      if (v4)
      {
        v9 = *v6;

        v10 = __OFSUB__(v4--, 1);
        if (v10)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v11 = v2[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_29;
        }

        v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v12 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v12;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAD8, &unk_2684BA6D0);
        v14 = swift_allocObject();
        v15 = (_swift_stdlib_malloc_size(v14) - 32) / 24;
        v14[2] = v13;
        v14[3] = 2 * v15;
        v16 = v14 + 4;
        v17 = v2[3] >> 1;
        v5 = &v14[3 * v17 + 4];
        v18 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - v17;
        if (v2[2])
        {
          if (v14 != v2 || v16 >= &v2[3 * v17 + 4])
          {
            memmove(v16, v2 + 4, 24 * v17);
          }

          v2[2] = 0;
        }

        else
        {
        }

        v2 = v14;
        v10 = __OFSUB__(v18, 1);
        v4 = v18 - 1;
        if (v10)
        {
LABEL_28:
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          return result;
        }
      }

      *v5 = v3;
      v5[1] = v7;
      v5[2] = v8;
      v5 += 3;
      v6 += 2;
      if (v1 == ++v3)
      {
        goto LABEL_24;
      }
    }
  }

  v4 = 0;
LABEL_24:
  v20 = v2[3];
  if (v20 >= 2)
  {
    v21 = v20 >> 1;
    v10 = __OFSUB__(v21, v4);
    v22 = v21 - v4;
    if (v10)
    {
      goto LABEL_30;
    }

    v2[2] = v22;
  }

  return v2;
}

uint64_t sub_2684AB930(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D550, &qword_2684B6F10);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = v40 - v7;
  v9 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = v6;
    v11 = *(v6 + 80);
    v40[1] = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v41;
    v13 = 0;
    v14 = 0;
    v45 = sub_2684B41E4();
    v15 = *(v45 - 8);
    v16 = *(v15 + 16);
    v43 = v15 + 16;
    v44 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v18 = v9;
    v40[0] = v10;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v13;
      v44(v21 + v22, v17, v45);
      result = sub_26846A8C8(v21, v8, &qword_28027D550, &qword_2684B6F10);
      if (v14)
      {
        v9 = v18;
        v19 = v10;
        v20 = __OFSUB__(v14--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAE0, &unk_2684BA6E0);
        v27 = *(v10 + 72);
        v28 = v41;
        v9 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v9);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v9[2] = v26;
        v9[3] = 2 * (v29 / v27);
        v32 = v9 + v28;
        v33 = v18[3] >> 1;
        v34 = v33 * v27;
        if (v18[2])
        {
          if (v9 < v18 || v32 >= v18 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v19 = v40[0];
        v8 = v24;
        v20 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_26846A8C8(v8, v12, &qword_28027D550, &qword_2684B6F10);
      v10 = v19;
      v12 += *(v19 + 72);
      v17 += v42;
      v18 = v9;
      if (v46 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v9[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v20)
    {
      goto LABEL_36;
    }

    v9[2] = v39;
  }

  return v9;
}

uint64_t sub_2684ABC78(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DF20, &qword_2684B87B0);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = v40 - v7;
  v9 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = v6;
    v11 = *(v6 + 80);
    v40[1] = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v41;
    v13 = 0;
    v14 = 0;
    v45 = sub_2684B4034();
    v15 = *(v45 - 8);
    v16 = *(v15 + 16);
    v43 = v15 + 16;
    v44 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v18 = v9;
    v40[0] = v10;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v13;
      v44(v21 + v22, v17, v45);
      result = sub_26846A8C8(v21, v8, &qword_28027DF20, &qword_2684B87B0);
      if (v14)
      {
        v9 = v18;
        v19 = v10;
        v20 = __OFSUB__(v14--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB90, &unk_2684BA820);
        v27 = *(v10 + 72);
        v28 = v41;
        v9 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v9);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v9[2] = v26;
        v9[3] = 2 * (v29 / v27);
        v32 = v9 + v28;
        v33 = v18[3] >> 1;
        v34 = v33 * v27;
        if (v18[2])
        {
          if (v9 < v18 || v32 >= v18 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v19 = v40[0];
        v8 = v24;
        v20 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_26846A8C8(v8, v12, &qword_28027DF20, &qword_2684B87B0);
      v10 = v19;
      v12 += *(v19 + 72);
      v17 += v42;
      v18 = v9;
      if (v46 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v9[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v20)
    {
      goto LABEL_36;
    }

    v9[2] = v39;
  }

  return v9;
}

uint64_t sub_2684ABFC0(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E900, &qword_2684BA288);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = v40 - v7;
  v9 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = v6;
    v11 = *(v6 + 80);
    v40[1] = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v41;
    v13 = 0;
    v14 = 0;
    v45 = sub_2684B3E34();
    v15 = *(v45 - 8);
    v16 = *(v15 + 16);
    v43 = v15 + 16;
    v44 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v18 = v9;
    v40[0] = v10;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v13;
      v44(v21 + v22, v17, v45);
      result = sub_26846A8C8(v21, v8, &qword_28027E900, &qword_2684BA288);
      if (v14)
      {
        v9 = v18;
        v19 = v10;
        v20 = __OFSUB__(v14--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EA90, &qword_2684BA670);
        v27 = *(v10 + 72);
        v28 = v41;
        v9 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v9);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v9[2] = v26;
        v9[3] = 2 * (v29 / v27);
        v32 = v9 + v28;
        v33 = v18[3] >> 1;
        v34 = v33 * v27;
        if (v18[2])
        {
          if (v9 < v18 || v32 >= v18 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v19 = v40[0];
        v8 = v24;
        v20 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_26846A8C8(v8, v12, &qword_28027E900, &qword_2684BA288);
      v10 = v19;
      v12 += *(v19 + 72);
      v17 += v42;
      v18 = v9;
      if (v46 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v9[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v20)
    {
      goto LABEL_36;
    }

    v9[2] = v39;
  }

  return v9;
}

uint64_t objectdestroyTm_10()
{
  v1 = *(type metadata accessor for SearchForNotebookItems3pSnippet(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = sub_2684B3CE4();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);

  return swift_deallocObject();
}

uint64_t sub_2684AC434(uint64_t a1)
{
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAB8, &qword_2684BA6B0);
  v2 = *(*(v48 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v48);
  v47 = (v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v3);
  v8 = v40 - v7;
  v9 = MEMORY[0x277D84F90];
  v46 = *(a1 + 16);
  if (v46)
  {
    v10 = v6;
    v11 = *(v6 + 80);
    v40[1] = v11;
    v41 = (v11 + 32) & ~v11;
    v12 = MEMORY[0x277D84F90] + v41;
    v13 = 0;
    v14 = 0;
    v45 = sub_2684B3EF4();
    v15 = *(v45 - 8);
    v16 = *(v15 + 16);
    v43 = v15 + 16;
    v44 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v42 = *(v15 + 72);
    v18 = v9;
    v40[0] = v10;
    while (1)
    {
      v21 = v47;
      v22 = *(v48 + 48);
      *v47 = v13;
      v44(v21 + v22, v17, v45);
      result = sub_26846A8C8(v21, v8, &qword_28027EAB8, &qword_2684BA6B0);
      if (v14)
      {
        v9 = v18;
        v19 = v10;
        v20 = __OFSUB__(v14--, 1);
        if (v20)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v23 = v18[3];
        if (((v23 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return result;
        }

        v24 = v8;
        v25 = v23 & 0xFFFFFFFFFFFFFFFELL;
        if (v25 <= 1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v25;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EAC0, &qword_2684BA6B8);
        v27 = *(v10 + 72);
        v28 = v41;
        v9 = swift_allocObject();
        result = _swift_stdlib_malloc_size(v9);
        if (!v27)
        {
          goto LABEL_34;
        }

        v29 = result - v28;
        if (result - v28 == 0x8000000000000000 && v27 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v27;
        v9[2] = v26;
        v9[3] = 2 * (v29 / v27);
        v32 = v9 + v28;
        v33 = v18[3] >> 1;
        v34 = v33 * v27;
        if (v18[2])
        {
          if (v9 < v18 || v32 >= v18 + v41 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v9 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v19 = v40[0];
        v8 = v24;
        v20 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v20)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      result = sub_26846A8C8(v8, v12, &qword_28027EAB8, &qword_2684BA6B0);
      v10 = v19;
      v12 += *(v19 + 72);
      v17 += v42;
      v18 = v9;
      if (v46 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v9[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v20 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v20)
    {
      goto LABEL_36;
    }

    v9[2] = v39;
  }

  return v9;
}

uint64_t sub_2684AC7A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

void sub_2684AC884()
{
  sub_2684B3E34();
  if (v0 <= 0x3F)
  {
    sub_268480848();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2684AC908()
{
  result = qword_28027EAF8;
  if (!qword_28027EAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EA08, &unk_2684BA5D0);
    sub_26846ACF0(&qword_28027EB00, &qword_28027EB08, &qword_2684BA708);
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EAF8);
  }

  return result;
}

uint64_t sub_2684ACA08(char *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  return v6(v7, &a1[*(v8 + 48)]);
}

unint64_t sub_2684ACA68()
{
  result = qword_28027EB50;
  if (!qword_28027EB50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EB48, &qword_2684BA798);
    sub_2684AB738(&qword_28027EA80, type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB50);
  }

  return result;
}

unint64_t sub_2684ACB50()
{
  result = qword_28027EB60;
  if (!qword_28027EB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027D470, &unk_2684B6C90);
    sub_2684AB738(&qword_28027D530, type metadata accessor for ReminderDetail3pView);
    sub_2684AB738(&qword_28027D540, type metadata accessor for PunchoutToNotebookItemModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB60);
  }

  return result;
}

uint64_t sub_2684ACC3C(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_2684ACCB8()
{
  result = qword_28027EB70;
  if (!qword_28027EB70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EB28, &qword_2684BA778);
    sub_2684ACC3C(&qword_28027EB58, &qword_28027EB30, &qword_2684BA780, sub_2684ACB50);
    sub_2684ACC3C(&qword_28027EB68, &qword_28027EB10, &qword_2684BA760, sub_2684ACA68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EB70);
  }

  return result;
}

uint64_t objectdestroy_37Tm()
{
  v1 = (type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3E34();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v1[7];
  v6 = sub_2684B3EA4();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v3 + v5, 1, v6))
  {
    (*(v7 + 8))(v3 + v5, v6);
  }

  return swift_deallocObject();
}

uint64_t sub_2684ACEF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SearchForNotebookItems3pSnippet.ReminderSectionView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684AB204(a1, v6, a2);
}

uint64_t sub_2684ACF74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2684ACFD8(char a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  KeyPath = swift_getKeyPath();
  v8 = 0;
  v9 = swift_getKeyPath();
  v10 = 0;
  v11 = swift_getKeyPath();
  v12 = 0;
  MEMORY[0x26D6191B0](v6, a2, &type metadata for NotebookAmbientDrawableModifier, a3);
}

uint64_t sub_2684AD0A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v75 = a2;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB98, &qword_2684BAA90);
  v5 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v67 = v62 - v6;
  v7 = sub_2684B4844();
  v65 = *(v7 - 8);
  v66 = v7;
  v8 = *(v65 + 64);
  MEMORY[0x28223BE20](v7);
  v64 = v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBA0, &qword_2684BAA98);
  v10 = *(*(v70 - 8) + 64);
  MEMORY[0x28223BE20](v70);
  v68 = v62 - v11;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBA8, &qword_2684BAAA0);
  v12 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v71 = v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBB0, &qword_2684BAAA8);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v62 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBB8, &qword_2684BAAB0);
  v18 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74);
  v20 = v62 - v19;
  v69 = sub_2684B47F4();
  v21 = *(v69 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v69);
  v24 = v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = *(v2 + 16);
  v25 = *(v2 + 8);
  v81 = v25;
  if (v82 == 1)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_2684B5704();
    v26 = v3;
    v27 = v17;
    v28 = v20;
    v29 = sub_2684B4A24();
    sub_2684B4324();

    v20 = v28;
    v17 = v27;
    v3 = v26;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v81, &qword_28027EBC0, &qword_2684BAAB8);
    (*(v21 + 8))(v24, v69);
    if (v79 != 1)
    {
      goto LABEL_10;
    }
  }

  v80 = *(v3 + 48);
  v30 = *(v3 + 40);
  v79 = v30;
  if (v80 != 1)
  {

    sub_2684B5704();
    v31 = v24;
    v32 = a1;
    v33 = v3;
    v34 = v17;
    v35 = v20;
    v36 = sub_2684B4A24();
    sub_2684B4324();

    v20 = v35;
    v17 = v34;
    v3 = v33;
    a1 = v32;
    v24 = v31;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v79, &qword_28027EBC0, &qword_2684BAAB8);
    (*(v21 + 8))(v31, v69);
    if ((v77 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_10:
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
    (*(*(v37 - 8) + 16))(v17, a1, v37);
    swift_storeEnumTagMultiPayload();
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0);
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    sub_2684B49B4();
    sub_26846A6DC(v20, v71, &qword_28027EBB8, &qword_2684BAAB0);
    swift_storeEnumTagMultiPayload();
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    sub_2684B49B4();
    v38 = v20;
    v39 = &qword_28027EBB8;
    v40 = &qword_2684BAAB0;
    return sub_268467A4C(v38, v39, v40);
  }

  if (v30)
  {
    goto LABEL_10;
  }

LABEL_9:
  if ([objc_opt_self() saeAvailable])
  {
    goto LABEL_10;
  }

  v63 = v21;
  if (*v3)
  {
    v42 = v64;
    v43 = v65;
    v44 = v66;
    (*(v65 + 104))(v64, *MEMORY[0x277CE00F0], v66);
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
    v46 = sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0);
    v67 = v45;
    v62[1] = v46;
    sub_2684B4CE4();
    (*(v43 + 8))(v42, v44);
    v78 = *(v3 + 32);
    v47 = *(v3 + 24);
    v77 = v47;
    v62[2] = v14;
    if (v78 == 1)
    {
      v51 = v47;
    }

    else
    {

      sub_2684B5704();
      v50 = sub_2684B4A24();
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_268467A4C(&v77, &qword_28027EC18, &qword_2684BAAE0);
      (*(v63 + 8))(v24, v69);
      v51 = v76;
    }

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBE8, &unk_2684BAAC8);
    v53 = v68;
    *&v68[*(v52 + 36)] = v51;
    KeyPath = swift_getKeyPath();
    v55 = v53 + *(v70 + 36);
    *v55 = KeyPath;
    *(v55 + 8) = 1;
    sub_26846A6DC(v53, v17, &qword_28027EBA0, &qword_2684BAA98);
    swift_storeEnumTagMultiPayload();
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    sub_2684B49B4();
    sub_26846A6DC(v20, v71, &qword_28027EBB8, &qword_2684BAAB0);
    swift_storeEnumTagMultiPayload();
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    sub_2684B49B4();
    sub_268467A4C(v20, &qword_28027EBB8, &qword_2684BAAB0);
    v38 = v53;
    v39 = &qword_28027EBA0;
    v40 = &qword_2684BAA98;
    return sub_268467A4C(v38, v39, v40);
  }

  v78 = *(v3 + 32);
  v48 = *(v3 + 24);
  v77 = v48;
  if (v78 == 1)
  {
    v49 = v48;
  }

  else
  {

    sub_2684B5704();
    v56 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_268467A4C(&v77, &qword_28027EC18, &qword_2684BAAE0);
    (*(v63 + 8))(v24, v69);
    v49 = v76;
  }

  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EBC8, &qword_2684BAAC0);
  v58 = v67;
  (*(*(v57 - 8) + 16))(v67, a1, v57);
  *(v58 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC10, &qword_2684BAAD8) + 36)) = v49;
  v59 = swift_getKeyPath();
  v60 = v71;
  v61 = v58 + *(v72 + 36);
  *v61 = v59;
  *(v61 + 8) = 1;
  sub_2684AE0BC(v58, v60);
  swift_storeEnumTagMultiPayload();
  sub_2684ADE70();
  sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
  sub_2684B49B4();
  return sub_268467A4C(v58, &qword_28027EB98, &qword_2684BAA90);
}

uint64_t sub_2684ADBE0()
{
  sub_268467BB4();
  sub_2684B4804();
  return v1;
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

uint64_t sub_2684ADC4C(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_2684ADCA0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2684ADD20()
{
  result = qword_28027EBE0;
  if (!qword_28027EBE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBE8, &unk_2684BAAC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBC8, &qword_2684BAAC0);
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0);
    swift_getOpaqueTypeConformance2();
    sub_2684ADE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBE0);
  }

  return result;
}

unint64_t sub_2684ADE1C()
{
  result = qword_28027EBF0;
  if (!qword_28027EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBF0);
  }

  return result;
}

unint64_t sub_2684ADE70()
{
  result = qword_28027EBF8;
  if (!qword_28027EBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EBB8, &qword_2684BAAB0);
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0);
    sub_2684ADF54(&qword_28027EBD8, &qword_28027EBA0, &qword_2684BAA98, sub_2684ADD20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EBF8);
  }

  return result;
}

uint64_t sub_2684ADF54(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2684AE004()
{
  result = qword_28027EC08;
  if (!qword_28027EC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC10, &qword_2684BAAD8);
    sub_26846ACF0(&qword_28027EBD0, &qword_28027EBC8, &qword_2684BAAC0);
    sub_2684ADE1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC08);
  }

  return result;
}

uint64_t sub_2684AE0BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EB98, &qword_2684BAA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684AE12C()
{
  result = qword_28027EC20;
  if (!qword_28027EC20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC28, &qword_2684BAAE8);
    sub_2684ADE70();
    sub_2684ADF54(&qword_28027EC00, &qword_28027EB98, &qword_2684BAA90, sub_2684AE004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC20);
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_2684AE1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2684AE244(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2684AE2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, __int16 a3@<W3>, uint64_t a4@<X8>)
{
  v32[1] = a2;
  v36 = a1;
  v39 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC30, &qword_2684BABC8);
  v34 = *(v5 - 8);
  v35 = v5;
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v32 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC38, &qword_2684BABD0);
  v9 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33);
  v11 = v32 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  v12 = *(*(v38 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v38);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v32 - v16;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC48, &qword_2684BABE0);
  v18 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37);
  v20 = v32 - v19;
  v21 = sub_2684B39F4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v32 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a3 & 0x100) != 0)
  {

    sub_2684B39E4();
    (*(v22 + 16))(v20, v26, v21);
    swift_storeEnumTagMultiPayload();
    sub_2684AE7E8();
    sub_2684AE8B0();
    sub_2684B49B4();
    return (*(v22 + 8))(v26, v21);
  }

  else
  {
    MEMORY[0x28223BE20](v24);
    sub_2684B4A34();
    sub_2684AE7E8();
    sub_2684B43C4();
    sub_2684B5094();
    sub_2684B45F4();
    (*(v34 + 32))(v11, v8, v35);
    v27 = &v11[*(v33 + 36)];
    v28 = v45;
    *(v27 + 4) = v44;
    *(v27 + 5) = v28;
    *(v27 + 6) = v46;
    v29 = v41;
    *v27 = v40;
    *(v27 + 1) = v29;
    v30 = v43;
    *(v27 + 2) = v42;
    *(v27 + 3) = v30;
    sub_26846A8C8(v11, v15, &qword_28027EC38, &qword_2684BABD0);
    *&v15[*(v38 + 36)] = 256;
    sub_26846A8C8(v15, v17, &qword_28027EC40, &qword_2684BABD8);
    sub_2684AE840(v17, v20);
    swift_storeEnumTagMultiPayload();
    sub_2684AE8B0();
    sub_2684B49B4();
    return sub_2684AEA2C(v17);
  }
}

uint64_t sub_2684AE76C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  if (*(v1 + 25))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_2684AE2B4(*v1, *(v1 + 16), v3 | *(v1 + 24), a1);
}

uint64_t sub_2684AE798()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return sub_2684B39E4();
}

unint64_t sub_2684AE7E8()
{
  result = qword_28027EC50;
  if (!qword_28027EC50)
  {
    sub_2684B39F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC50);
  }

  return result;
}

uint64_t sub_2684AE840(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684AE8B0()
{
  result = qword_28027EC58;
  if (!qword_28027EC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC40, &qword_2684BABD8);
    sub_2684AE93C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC58);
  }

  return result;
}

unint64_t sub_2684AE93C()
{
  result = qword_28027EC60;
  if (!qword_28027EC60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC38, &qword_2684BABD0);
    sub_2684AE9C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC60);
  }

  return result;
}

unint64_t sub_2684AE9C8()
{
  result = qword_28027EC68;
  if (!qword_28027EC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EC30, &qword_2684BABC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC68);
  }

  return result;
}

uint64_t sub_2684AEA2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EC40, &qword_2684BABD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2684AEA94()
{
  result = qword_28027EC70;
  if (!qword_28027EC70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28027EC78, &qword_2684BABE8);
    sub_2684AE7E8();
    sub_2684AE8B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EC70);
  }

  return result;
}

uint64_t sub_2684AEB20()
{
  sub_2684A6B08();
  sub_2684B4804();
  return v1;
}

void sub_2684AEB74(uint64_t a1)
{
  sub_2684AF0F4(319, &qword_28027D648);
  if (v2 <= 0x3F)
  {
    sub_2684AF0F4(319, qword_28027ED00);
    if (v3 <= 0x3F)
    {
      v4 = *(a1 + 16);
      type metadata accessor for IdiomConstant();
      if (v5 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2684AEC58(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  v7 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = v6 | 7;
  v10 = v7 + 7;
  v11 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v12 = ((14 - (((-42 - v9) | v9) - v6 + ((((-10 - v6) | v6) - v10) | 7))) & ~v6) + v7;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v16 < 2)
    {
LABEL_26:
      v18 = (v6 + (((a1 & 0xFFFFFFFFFFFFFFF8) + v9 + 41) & ~v9) + 9) & ~v6;
      if (v5 >= 0x7FFFFFFF)
      {
        return (*(v4 + 48))(v18);
      }

      v19 = *((v10 + v18) & 0xFFFFFFFFFFFFFFF8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_15:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v8 + (v12 | v17) + 1;
}

void sub_2684AEE34(unint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = *(*(*(a4 + 16) - 8) + 64);
  v11 = v10 + 7;
  v12 = ((14 - (((-42 - (v9 | 7)) | v9 | 7) - v9 + ((((-10 - v9) | v9) - (v10 + 7)) | 7))) & ~v9) + v10;
  v13 = a3 >= v8;
  v14 = a3 - v8;
  if (v14 != 0 && v13)
  {
    if (v12 <= 3)
    {
      v18 = ((v14 + ~(-1 << (8 * v12))) >> (8 * v12)) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v8 < a2)
  {
    v16 = ~v8 + a2;
    if (v12 < 4)
    {
      v17 = (v16 >> (8 * v12)) + 1;
      if (v12)
      {
        v20 = v16 & ~(-1 << (8 * v12));
        bzero(a1, v12);
        if (v12 != 3)
        {
          if (v12 == 2)
          {
            *a1 = v20;
            if (v15 > 1)
            {
LABEL_46:
              if (v15 == 2)
              {
                *(a1 + v12) = v17;
              }

              else
              {
                *(a1 + v12) = v17;
              }

              return;
            }
          }

          else
          {
            *a1 = v16;
            if (v15 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v20;
        *(a1 + 2) = BYTE2(v20);
      }

      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v16;
      v17 = 1;
      if (v15 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v15)
    {
      *(a1 + v12) = v17;
    }

    return;
  }

  if (v15 > 1)
  {
    if (v15 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *(a1 + v12) = 0;
  }

  else if (v15)
  {
    *(a1 + v12) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  v21 = (v9 + (((a1 & 0xFFFFFFFFFFFFFFF8) + (v9 | 7) + 41) & ~(v9 | 7)) + 9) & ~v9;
  if (v7 < 0x7FFFFFFF)
  {
    v23 = ((v11 + v21) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      *v23 = a2 & 0x7FFFFFFF;
      v23[1] = 0;
    }

    else
    {
      *v23 = a2 - 1;
    }
  }

  else
  {
    v22 = *(v6 + 56);

    v22(v21);
  }
}

void sub_2684AF0F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_2684B43F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

double sub_2684AF140@<D0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v5 = v2[1];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v16[0] = *v2;
  v16[1] = v5;
  v16[2] = v6;
  v16[3] = v7;
  v16[4] = v8;
  *&v17 = v16[0];
  *(&v17 + 1) = v5;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  v19 = v8;
  v9 = qword_28027CF18;

  if (v9 != -1)
  {
    v10 = swift_once();
  }

  MEMORY[0x28223BE20](v10);
  v15[2] = &v17;
  *&v15[3] = a2;
  v15[4] = v16;
  sub_2684AF3E8(sub_2684B04E0, v15, v11);
  v12 = v19;
  result = *&v17;
  v14 = v18;
  *a1 = v17;
  *(a1 + 16) = v14;
  *(a1 + 32) = v12;
  return result;
}

double sub_2684AF244(void *a1, uint64_t *a2, double a3, double a4)
{
  v4 = a4;
  if (*a1 != -1)
  {
LABEL_16:
    v12 = a2;
    swift_once();
    a2 = v12;
  }

  v6 = *a2;
  if (*a2 >> 62)
  {
    if (v6 < 0)
    {
      v13 = *a2;
    }

    v7 = sub_2684B5814();
    if (v7)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
LABEL_4:
      for (i = 0; ; ++i)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          MEMORY[0x26D619C80](i, v6);
          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_12:
            __break(1u);
            return a4;
          }
        }

        else
        {
          if (i >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v9 = *(v6 + 8 * i + 32);

          v10 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_12;
          }
        }

        swift_getAtKeyPath();
        v14 = v14 * a3;
        swift_setAtWritableKeyPath();

        if (v10 == v7)
        {
          return a4;
        }
      }
    }
  }

  return v4;
}

void sub_2684AF39C(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 8);
  *a1 = sub_2684AF244(&qword_28027CF38, &qword_280282930, a2, *v2);
  *(a1 + 8) = v5;
}

uint64_t sub_2684AF3E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v9 = result;
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    do
    {
      v6 = 0;
      while ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x26D619C80](v6, a3);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v10 = v7;
        v9(&v10);

        if (!v3)
        {
          ++v6;
          if (v8 != v5)
          {
            continue;
          }
        }

        return result;
      }

      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(a3 + 8 * v6 + 32);

      v8 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_2684B5814();
      v5 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_2684AF4FC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v57 = *(v3 - 8);
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](a1);
  v51 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2684B47F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v9);
  v55 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v54 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v49 - v18;
  v20 = v12[2];
  v58 = v1;
  v56 = v20;
  v20(&v49 - v18, v1, a1);
  v21 = &v19[*(a1 + 40)];
  v22 = *v21;
  LODWORD(v21) = v21[8];
  v52 = v11;
  v53 = v6;
  if (v21 != 1)
  {

    sub_2684B5704();
    v23 = sub_2684B4A24();
    v50 = v12;
    v24 = v7;
    v25 = v6;
    v26 = v23;
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v22, 0);
    v27 = *(v24 + 8);
    v28 = v25;
    v7 = v24;
    v12 = v50;
    v27(v11, v28);
    LOBYTE(v22) = v61;
  }

  v29 = v12[1];
  v29(v19, a1);
  if ((v22 & 1) == 0)
  {
    return (*(v57 + 24))(v58 + *(a1 + 32), v58, v3);
  }

  v30 = v54;
  v56(v54, v58, a1);
  v31 = &v30[*(a1 + 44)];
  v32 = *v31;
  if (v31[8] != 1)
  {

    sub_2684B5704();
    v40 = v3;
    v41 = sub_2684B4A24();
    sub_2684B4324();

    v3 = v40;
    v42 = v52;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v32, 0);
    (*(v7 + 8))(v42, v53);
    LOBYTE(v42) = v60;
    v29(v30, a1);
    if ((v42 & 1) == 0)
    {
      goto LABEL_6;
    }

    return (*(v57 + 24))(v58 + *(a1 + 32), v58, v3);
  }

  v29(v30, a1);
  if (v32)
  {
    return (*(v57 + 24))(v58 + *(a1 + 32), v58, v3);
  }

LABEL_6:
  v33 = v58 + *(a1 + 28);
  v35 = *v33;
  v34 = *(v33 + 8);
  v36 = v55;
  (v56)(v55);
  v37 = &v36[*(a1 + 36)];
  v38 = *v37;
  if (v37[8] == 1)
  {
    v39 = *v37;
  }

  else
  {

    sub_2684B5704();
    v44 = v3;
    v45 = sub_2684B4A24();
    sub_2684B4324();

    v3 = v44;
    v46 = v52;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v38, 0);
    (*(v7 + 8))(v46, v53);
    v39 = v59;
  }

  v29(v55, a1);
  v47 = v51;
  v48 = v58;
  v35(v58, v39);
  return (*(v57 + 40))(v48 + *(a1 + 32), v47, v3);
}

uint64_t sub_2684AFA50()
{
  v1 = sub_2684B47F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *v0;
  if (*(v0 + 8) == 1)
  {
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v7 = *v0;

    sub_2684B5704();
    v8 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v6, 0);
    (*(v2 + 8))(v5, v1);
    if (v13[15] != 1)
    {
      return 0;
    }
  }

  v9 = *(v0 + 32);
  if (*(v0 + 40) == 1)
  {
    if (v9)
    {
      return 0;
    }
  }

  else
  {
    v11 = *(v0 + 32);

    sub_2684B5704();
    v12 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v9, 0);
    (*(v2 + 8))(v5, v1);
    if (v13[14])
    {
      return 0;
    }
  }

  return [objc_opt_self() saeAvailable] ^ 1;
}

uint64_t sub_2684AFC74(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2684B47F4();
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v11);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2684AFA50())
  {
    (*(v9 + 16))(v13, v1, a1);
    v19 = *(v13 + 2);
    if (v13[24] == 1)
    {
      v20 = *(v13 + 2);
    }

    else
    {
      v23 = *(v13 + 2);

      v29[1] = sub_2684B5704();
      v24 = sub_2684B4A24();
      v30 = v4;
      v25 = v24;
      sub_2684B4324();

      sub_2684B47E4();
      swift_getAtKeyPath();
      sub_26845E0C8(v19, 0);
      (*(v31 + 8))(v8, v30);
      v20 = v32;
    }

    v26 = v2 + *(a1 + 44);
    v27 = *(type metadata accessor for IdiomConstant() + 28);
    (*(v9 + 8))(v13, a1);
    (*(*(a1 + 24) + 8))(v14, v20);
  }

  else
  {
    v21 = v1 + *(a1 + 44);
    v22 = type metadata accessor for IdiomConstant();
    (*(v15 + 16))(v18, v21 + *(v22 + 28), v14);
  }

  return (*(v15 + 40))(v2 + *(a1 + 48), v18, v14);
}

void sub_2684AFFA4(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = *(v2 + 8);
  *a1 = sub_2684AF244(&qword_28027CF40, &qword_280282938, a2, *v2);
  *(a1 + 8) = v5;
}

void sub_2684AFFF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_26847D10C();
    if (v3 <= 0x3F)
    {
      sub_2684AF0F4(319, qword_28027ED00);
      if (v4 <= 0x3F)
      {
        sub_2684AF0F4(319, &qword_28027D648);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2684B00D4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v4 + 80) + 16) & ~*(v4 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_2684B0244(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v18 = a2 & 0x7FFFFFFF;
          v18[1] = 0;
        }

        else
        {
          *v18 = a2 - 1;
        }
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + *(v6 + 80) + 16) & ~*(v6 + 80)) + 39) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_2684B045C(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = *a1;
  v5 = *a3;
  v6 = a3[1];
  v7 = *(a3 + 4);
  swift_getAtKeyPath();
  return swift_setAtWritableKeyPath();
}

uint64_t sub_2684B050C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_2684B0568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

id sub_2684B05F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v29[1] = a1;
  v35 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED88, &qword_2684BADE0);
  v36 = *(v31 - 8);
  v4 = v36[8];
  MEMORY[0x28223BE20](v31);
  v6 = v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED90, &qword_2684BADE8);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  MEMORY[0x28223BE20](v7);
  v30 = v29 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027ED98, &unk_2684BADF0);
  v10 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32);
  v12 = v29 - v11;
  v39 = *v2;
  v40 = *(v2 + 16);
  v37 = *v2;
  v38 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4394();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDA0, &unk_2684BAE00);
  v14 = sub_26846ACF0(&qword_28027EDA8, &qword_28027EDA0, &unk_2684BAE00);
  sub_2684B4DA4();

  v37 = v39;
  v38 = v40;
  sub_2684B4374();
  v15 = *(v2 + 3);
  v16 = *(v2 + 4);
  v17 = swift_allocObject();
  v18 = v2[1];
  *(v17 + 16) = *v2;
  *(v17 + 32) = v18;
  *(v17 + 48) = *(v2 + 4);
  sub_2684B0CA4(&v39, &v37);
  v19 = v15;
  *&v37 = v13;
  *(&v37 + 1) = v14;
  v20 = v30;
  swift_getOpaqueTypeConformance2();
  v21 = v31;
  sub_2684B4E04();

  (v36[1])(v6, v21);
  if (v15)
  {
    v36 = v19;
    v22 = sub_2684B54D4();

    v23 = swift_allocObject();
    v24 = v3[1];
    *(v23 + 16) = *v3;
    *(v23 + 32) = v24;
    *(v23 + 48) = *(v3 + 4);
    (*(v33 + 32))(v12, v20, v34);
    v25 = v32;
    *&v12[*(v32 + 52)] = v22;
    v26 = &v12[*(v25 + 56)];
    *v26 = sub_2684B0DAC;
    v26[1] = v23;
    sub_26846401C(v12, v35);
    sub_2684B0CA4(&v39, &v37);
    v27 = v36;

    return v27;
  }

  else
  {
    sub_2684B5504();
    sub_2684B0D14();
    result = sub_2684B4604();
    __break(1u);
  }

  return result;
}

void sub_2684B0A38(__int128 *a1)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  sub_2684B4374();
  v2 = *(a1 + 3);
  if (v6 == 1)
  {
    if (v2)
    {
      v3 = v2;
      sub_2684B54C4();
      v4 = [objc_allocWithZone(sub_2684B5474()) init];
      sub_2684B54E4();

LABEL_6:
      return;
    }
  }

  else if (v2)
  {
    v3 = v2;
    sub_2684B54B4();
    goto LABEL_6;
  }

  v5 = *(a1 + 4);
  sub_2684B5504();
  sub_2684B0D14();
  sub_2684B4604();
  __break(1u);
}

uint64_t sub_2684B0B18(uint64_t a1, __int128 *a2)
{
  v4 = sub_2684B54F4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v5 + 88))(v8, v4) != *MEMORY[0x277D63F38])
  {
    return (*(v5 + 8))(v8, v4);
  }

  result = (*(v5 + 96))(v8, v4);
  if ((*v8 - 3) <= 1)
  {
    v11 = *a2;
    v12 = *(a2 + 16);
    v10[15] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
    return sub_2684B4384();
  }

  return result;
}

uint64_t sub_2684B0CA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E260, &qword_2684B8CC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684B0D14()
{
  result = qword_28027E268;
  if (!qword_28027E268)
  {
    sub_2684B5504();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027E268);
  }

  return result;
}

uint64_t objectdestroyTm_11()
{
  v1 = *(v0 + 24);

  return swift_deallocObject();
}

uint64_t sub_2684B0DB4()
{
  sub_26846EE50();
  sub_2684B4804();
  return v1;
}

uint64_t sub_2684B0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2684B0E6C();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_2684B0E6C()
{
  result = qword_28027EDB8;
  if (!qword_28027EDB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDC0, &unk_2684BAE60);
    sub_2684B0EF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EDB8);
  }

  return result;
}

unint64_t sub_2684B0EF0()
{
  result = qword_28027EDC8;
  if (!qword_28027EDC8)
  {
    sub_2684B0F48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EDC8);
  }

  return result;
}

unint64_t sub_2684B0F48()
{
  result = qword_28027EDD0;
  if (!qword_28027EDD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28027EDD0);
  }

  return result;
}

uint64_t type metadata accessor for ReminderSectionHeadingView()
{
  result = qword_28027EDD8;
  if (!qword_28027EDD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684B1008()
{
  sub_2684B3CF4();
  if (v0 <= 0x3F)
  {
    sub_2684B108C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2684B108C()
{
  if (!qword_28027D648)
  {
    v0 = sub_2684B43F4();
    if (!v1)
    {
      atomic_store(v0, &qword_28027D648);
    }
  }
}

uint64_t sub_2684B10F8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v98 = a1;
  v3 = sub_2684B3994();
  v96 = *(v3 - 8);
  v97 = v3;
  v4 = *(v96 + 64);
  MEMORY[0x28223BE20](v3);
  v95 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D330, &qword_2684BAEE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v75 - v8;
  v10 = sub_2684B47F4();
  v99 = *(v10 - 8);
  v11 = *(v99 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_2684B4B34();
  v14 = *(v76 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v76);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ReminderHeadingTextView();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v21 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDE8, &qword_2684BAEE8);
  v22 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v24 = &v75 - v23;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDF0, &qword_2684BAEF0);
  v80 = *(v81 - 8);
  v25 = *(v80 + 64);
  MEMORY[0x28223BE20](v81);
  v78 = &v75 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EDF8, &qword_2684BAEF8);
  v27 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v79 = &v75 - v28;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE00, &qword_2684BAF00);
  v85 = *(v86 - 8);
  v29 = *(v85 + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v75 - v30;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE08, &qword_2684BAF08);
  v31 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v88 = &v75 - v32;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE10, &qword_2684BAF10);
  v90 = *(v91 - 8);
  v33 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v89 = &v75 - v34;
  v35 = sub_2684B3CF4();
  v36 = *(*(v35 - 8) + 16);
  v77 = v21;
  v36(v21, v2, v35);
  v37 = *(type metadata accessor for ReminderSectionHeadingView() + 20);
  v93 = v2;
  v38 = (v2 + v37);
  v39 = *v38;
  v40 = *(v38 + 8);
  v94 = v10;
  v92 = v13;
  if (v40 == 1)
  {
    if (v39)
    {
LABEL_3:
      v41 = MEMORY[0x277CE0A58];
      goto LABEL_6;
    }
  }

  else
  {

    sub_2684B5704();
    v42 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v39, 0);
    (*(v99 + 8))(v13, v10);
    if (v100)
    {
      goto LABEL_3;
    }
  }

  v41 = MEMORY[0x277CE0AC0];
LABEL_6:
  v43 = v76;
  (*(v14 + 104))(v17, *v41, v76);
  v44 = *MEMORY[0x277CE09A0];
  v45 = sub_2684B4AE4();
  v46 = *(v45 - 8);
  (*(v46 + 104))(v9, v44, v45);
  (*(v46 + 56))(v9, 0, 1, v45);
  v47 = sub_2684B4B14();
  sub_268467A4C(v9, &qword_28027D330, &qword_2684BAEE0);
  (*(v14 + 8))(v17, v43);
  KeyPath = swift_getKeyPath();
  sub_2684B1C50(v77, v24);
  v49 = &v24[*(v82 + 36)];
  *v49 = KeyPath;
  v49[1] = v47;
  if (v40)
  {
    v50 = v94;
    v51 = v99;
    v52 = v92;
  }

  else
  {

    sub_2684B5704();
    v53 = sub_2684B4A24();
    sub_2684B4324();

    v52 = v92;
    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v39, 0);
    v51 = v99;
    v50 = v94;
    (*(v99 + 8))(v52, v94);
  }

  v54 = v83;
  sub_2684B1CB4();
  v55 = v78;
  sub_2684B4D74();
  sub_268467A4C(v24, &qword_28027EDE8, &qword_2684BAEE8);
  v56 = sub_2684A3D74();
  v57 = v79;
  (*(v80 + 32))(v79, v55, v81);
  *(v57 + *(v54 + 36)) = v56;
  if (!v40)
  {

    sub_2684B5704();
    v58 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26846B1E0(v39, 0);
    (*(v51 + 8))(v52, v50);
  }

  sub_2684B1DC4();
  v59 = v84;
  sub_2684B4C34();
  sub_268467A4C(v57, &qword_28027EDF8, &qword_2684BAEF8);
  sub_2684B50B4();
  sub_2684B45F4();
  v60 = v88;
  (*(v85 + 32))(v88, v59, v86);
  v61 = (v60 + *(v87 + 36));
  v62 = v105;
  v61[4] = v104;
  v61[5] = v62;
  v61[6] = v106;
  v63 = v101;
  *v61 = v100;
  v61[1] = v63;
  v64 = v103;
  v61[2] = v102;
  v61[3] = v64;
  v66 = v95;
  v65 = v96;
  v67 = v97;
  (*(v96 + 104))(v95, *MEMORY[0x277D62F48], v97);
  sub_2684B1EB8();
  v68 = v89;
  sub_2684B4C04();
  (*(v65 + 8))(v66, v67);
  sub_268467A4C(v60, &qword_28027EE08, &qword_2684BAF08);
  v69 = swift_getKeyPath();
  v70 = swift_getKeyPath();
  v71 = swift_getKeyPath();
  v72 = v98;
  (*(v90 + 32))(v98, v68, v91);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE30, &unk_2684BAFE0);
  v74 = v72 + *(result + 36);
  *v74 = 1;
  *(v74 + 8) = v69;
  *(v74 + 16) = 0;
  *(v74 + 24) = v70;
  *(v74 + 32) = 0;
  *(v74 + 40) = v71;
  *(v74 + 48) = 0;
  return result;
}

uint64_t sub_2684B1C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderHeadingTextView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2684B1CB4()
{
  result = qword_28027EE18;
  if (!qword_28027EE18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDE8, &qword_2684BAEE8);
    sub_2684B1D6C();
    sub_26846ACF0(&qword_28027D2F0, &qword_28027D2E8, &unk_2684B68E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE18);
  }

  return result;
}

unint64_t sub_2684B1D6C()
{
  result = qword_28027EA78;
  if (!qword_28027EA78)
  {
    type metadata accessor for ReminderHeadingTextView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EA78);
  }

  return result;
}

unint64_t sub_2684B1DC4()
{
  result = qword_28027EE20;
  if (!qword_28027EE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDF8, &qword_2684BAEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDE8, &qword_2684BAEE8);
    sub_2684B1CB4();
    swift_getOpaqueTypeConformance2();
    sub_26846ACF0(&qword_28027E7B0, &qword_28027E7B8, &qword_2684BAF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE20);
  }

  return result;
}

unint64_t sub_2684B1EB8()
{
  result = qword_28027EE28;
  if (!qword_28027EE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE08, &qword_2684BAF08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EDF8, &qword_2684BAEF8);
    sub_2684B1DC4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE28);
  }

  return result;
}

unint64_t sub_2684B1F80()
{
  result = qword_28027EE38;
  if (!qword_28027EE38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE30, &unk_2684BAFE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE08, &qword_2684BAF08);
    sub_2684B1EB8();
    swift_getOpaqueTypeConformance2();
    sub_26846B18C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EE38);
  }

  return result;
}

uint64_t sub_2684B2048@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v42 - v5;
  v44 = sub_2684B3C14();
  v42 = *(v44 - 8);
  v7 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ReminderDetail1pSnippet();
  v10 = *(v45 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v45);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE58, &qword_2684BB118);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v42 - v15;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE60, &qword_2684BB120);
  v17 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v19 = &v42 - v18;
  sub_2684B311C(v2, &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_2684B3180(&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE68, &qword_2684BB128);
  sub_26846ACF0(&qword_28027EE70, &qword_28027EE68, &qword_2684BB128);
  sub_2684B5184();
  KeyPath = swift_getKeyPath();
  v23 = &v16[*(v13 + 44)];
  *v23 = KeyPath;
  v23[8] = 0;
  sub_2684B3C64();
  sub_2684B3BE4();
  v24 = sub_2684B3F64();
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v6, 1, v24) == 1)
  {
    sub_2684B3254(v6);
    v26 = sub_2684B4E54();
  }

  else
  {
    v26 = sub_26849A760();
    (*(v25 + 8))(v6, v24);
  }

  (*(v42 + 8))(v9, v44);
  v27 = swift_getKeyPath();
  v47 = v26;
  v28 = sub_2684B44B4();
  sub_26846A8C8(v16, v19, &qword_28027EE58, &qword_2684BB118);
  v29 = &v19[*(v43 + 36)];
  *v29 = v27;
  v29[1] = v28;
  LOBYTE(v27) = sub_2684B4A44();
  v30 = *(v2 + *(v45 + 20) + 96);
  sub_2684B4364();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v46;
  sub_26846A8C8(v19, v46, &qword_28027EE60, &qword_2684BB120);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE78, &qword_2684BB188);
  v41 = v39 + *(result + 36);
  *v41 = v27;
  *(v41 + 8) = v32;
  *(v41 + 16) = v34;
  *(v41 + 24) = v36;
  *(v41 + 32) = v38;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_2684B24E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v3 = type metadata accessor for ReminderDetail1pSnippet();
  v4 = *(v3 - 8);
  v74 = v3 - 8;
  v77 = v4;
  v76 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v75 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027E978, &qword_2684BB190);
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v79 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v68 - v10;
  v11 = sub_2684B3C14();
  v71 = *(v11 - 8);
  v72 = v11;
  v12 = *(v71 + 64);
  MEMORY[0x28223BE20](v11);
  v68 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_2684B3E74();
  v14 = *(v70 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v70);
  v17 = (&v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_2684B3994();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v68 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for ReminderPrimaryHeadingView();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE80, &qword_2684BB198);
  v28 = *(v27 - 8);
  v69 = v27 - 8;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27 - 8);
  v73 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v68 - v32;
  sub_2684B3C64();
  v34 = *MEMORY[0x277D5E060];
  v35 = sub_2684B3CF4();
  (*(*(v35 - 8) + 104))(v26, v34, v35);
  v36 = &v26[*(v23 + 20)];
  *v36 = 0;
  v36[8] = 1;
  v37 = &v26[*(v23 + 24)];
  *v37 = swift_getKeyPath();
  v37[8] = 0;
  *(v37 + 1) = xmmword_2684B9C00;
  *(v37 + 4) = sub_2684A6B5C;
  *(v37 + 5) = 0;
  (*(v19 + 104))(v22, *MEMORY[0x277D62F38], v18);
  sub_2684B34D0(&qword_28027EE88, type metadata accessor for ReminderPrimaryHeadingView);
  sub_2684B4C04();
  (*(v19 + 8))(v22, v18);
  sub_2684B32BC(v26);
  v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE90, &qword_2684BB1D0) + 36)] = 0;
  v38 = v68;
  v39 = a1;
  sub_2684B3C64();
  v40 = v38;
  v41 = sub_2684B3BC4();
  v43 = v42;
  (*(v71 + 8))(v40, v72);
  *v17 = v41;
  v17[1] = v43;
  v44 = v70;
  (*(v14 + 104))(v17, *MEMORY[0x277D5E130], v70);
  v45 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EE98, &qword_2684BB1D8) + 36)];
  (*(v14 + 16))(v45, v17, v44);
  v46 = type metadata accessor for RemindersAppPunchoutModifier();
  v47 = &v45[*(v46 + 20)];
  sub_2684B52A4();
  (*(v14 + 8))(v17, v44);
  v48 = &v45[*(v46 + 24)];
  *v48 = swift_getKeyPath();
  v48[8] = 0;
  LOBYTE(v46) = sub_2684B4A44();
  v49 = *(v39 + *(v74 + 28) + 104);
  sub_2684B4364();
  v50 = &v33[*(v69 + 44)];
  *v50 = v46;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  v83 = sub_2684B3C74();
  v55 = v75;
  sub_2684B311C(v39, v75);
  v56 = (*(v77 + 80) + 16) & ~*(v77 + 80);
  v57 = swift_allocObject();
  sub_2684B3180(v55, v57 + v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DE98, &qword_2684BB1E0);
  sub_2684B3894();
  type metadata accessor for ReminderView(0);
  sub_26846ACF0(&qword_28027DEA0, &qword_28027DE98, &qword_2684BB1E0);
  sub_2684B34D0(&qword_28027D7F8, type metadata accessor for ReminderView);
  sub_2684B34D0(&qword_28027DEB0, MEMORY[0x277D5E1A8]);
  v58 = v78;
  sub_2684B5024();
  v59 = v73;
  sub_268464408(v33, v73);
  v61 = v79;
  v60 = v80;
  v62 = *(v80 + 16);
  v63 = v81;
  v62(v79, v58, v81);
  v64 = v82;
  sub_268464408(v59, v82);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027EEA0, &qword_2684BB1E8);
  v62((v64 + *(v65 + 48)), v61, v63);
  v66 = *(v60 + 8);
  v66(v58, v63);
  sub_268464478(v33);
  v66(v61, v63);
  return sub_268464478(v59);
}

uint64_t sub_2684B2D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2684B47F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2684B41E4();
  (*(*(v11 - 8) + 16))(a3, a1, v11);
  v12 = a2 + *(type metadata accessor for ReminderDetail1pSnippet() + 24);
  if ((*(v12 + 8) & 1) == 0)
  {
    v13 = *v12;

    sub_2684B5704();
    v14 = sub_2684B4A24();
    sub_2684B4324();

    sub_2684B47E4();
    swift_getAtKeyPath();
    sub_26845E0C8(v13, 0);
    (*(v7 + 8))(v10, v6);
  }

  v15 = sub_2684B5784();
  *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D7D0, &qword_2684B7560) + 28)) = 0;
  result = type metadata accessor for ReminderView(0);
  *(a3 + *(result + 20)) = (v15 & 1) == 0;
  *(a3 + *(result + 24)) = 0;
  return result;
}

uint64_t sub_2684B2F10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027DDB8, &qword_2684B8B70);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2684BA040;
  *(v0 + 32) = swift_getKeyPath();
  result = swift_getKeyPath();
  *(v0 + 40) = result;
  qword_280282938 = v0;
  return result;
}

uint64_t type metadata accessor for ReminderDetail1pSnippet()
{
  result = qword_28027EE40;
  if (!qword_28027EE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2684B3008()
{
  sub_2684B3C84();
  if (v0 <= 0x3F)
  {
    sub_2684B30A4();
    if (v1 <= 0x3F)
    {
      sub_268467F10();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2684B30A4()
{
  if (!qword_28027EE50)
  {
    v0 = type metadata accessor for AmbientScaledIdiomConstant();
    if (!v1)
    {
      atomic_store(v0, &qword_28027EE50);
    }
  }
}

uint64_t sub_2684B311C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderDetail1pSnippet();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684B3180(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderDetail1pSnippet();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2684B31E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ReminderDetail1pSnippet() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_2684B24E8(v4, a1);
}

uint64_t sub_2684B3254(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28027D8A8, &qword_2684BB110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2684B32BC(uint64_t a1)
{
  v2 = type metadata accessor for ReminderPrimaryHeadingView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_12()
{
  v1 = (type metadata accessor for ReminderDetail1pSnippet() - 8);
  v2 = *(*v1 + 64);
  v3 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));
  v4 = sub_2684B3C84();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];
  sub_26845E0C8(*v5, *(v5 + 8));
  sub_26845E0C8(*(v5 + 16), *(v5 + 24));
  sub_26845E0C8(*(v5 + 32), *(v5 + 40));
  sub_26845E0C8(*(v5 + 48), *(v5 + 56));
  v6 = *(v5 + 88);

  sub_26845E0C8(*(v3 + v1[8]), *(v3 + v1[8] + 8));

  return swift_deallocObject();
}

uint64_t sub_2684B3450@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for ReminderDetail1pSnippet() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2684B2D2C(a1, v6, a2);
}

uint64_t sub_2684B34D0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2684B3518()
{
  result = qword_28027EEA8;
  if (!qword_28027EEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE78, &qword_2684BB188);
    sub_2684B35A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEA8);
  }

  return result;
}

unint64_t sub_2684B35A4()
{
  result = qword_28027EEB0;
  if (!qword_28027EEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE60, &qword_2684BB120);
    sub_2684B365C();
    sub_26846ACF0(&qword_28027E8E8, &qword_28027E8F0, &unk_2684BB240);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEB0);
  }

  return result;
}

unint64_t sub_2684B365C()
{
  result = qword_28027EEB8;
  if (!qword_28027EEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28027EE58, &qword_2684BB118);
    sub_26846ACF0(&qword_28027EEC0, &qword_28027EEC8, &unk_2684BB230);
    sub_26846ACF0(&qword_28027E948, &qword_28027E950, &qword_2684BA2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28027EEB8);
  }

  return result;
}