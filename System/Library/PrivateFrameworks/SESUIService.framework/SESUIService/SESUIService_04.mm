uint64_t sub_262945184(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookGroupView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2629451E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(type metadata accessor for PassbookGroupView() - 8);
  v8 = v3 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return sub_262941828(a1, a2, v8, a3);
}

uint64_t sub_262945270(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301A8, &qword_2629517B8);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_2629452D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_26293BF98(&qword_27FF2E958, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_26294538C()
{
  result = qword_27FF30160;
  if (!qword_27FF30160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30168, &qword_262951730);
    sub_2628DFD0C(&qword_27FF30170, &qword_27FF30178, &qword_262951738);
    sub_2628DFD0C(&qword_27FF30180, &qword_27FF30188, &unk_262951740);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30160);
  }

  return result;
}

unint64_t sub_262945470()
{
  result = qword_27FF30190;
  if (!qword_27FF30190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30150, &qword_262951728);
    sub_2628DFD0C(&qword_27FF2E960, &qword_27FF2E938, &unk_26294F890);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30190);
  }

  return result;
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for PassbookGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CBA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v0 + v3 + v1[9] + 8);

  v7 = (v0 + v3 + v1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = *v7;

      v10 = *(v7 + 1);

      v11 = *(v8 + 32);
      v12 = sub_26294DAC8();
      (*(*(v12 - 8) + 8))(&v7[v11], v12);
    }
  }

  else
  {
    v13 = *v7;
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_262945758()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_262945790(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30120, &qword_2629516C8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_262945834()
{
  v1 = (type metadata accessor for PassbookGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = sub_26294CBA8();
  (*(*(v9 - 8) + 8))(v0 + v3, v9);

  v10 = *(v0 + v3 + v1[9] + 8);

  v11 = (v0 + v3 + v1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
    {
      v13 = *v11;

      v14 = *(v11 + 1);

      v15 = *(v12 + 32);
      v16 = sub_26294DAC8();
      (*(*(v16 - 8) + 8))(&v11[v15], v16);
    }
  }

  else
  {
    v17 = *v11;
  }

  v18 = (v3 + v4 + v7) & ~v7;
  (*(v6 + 8))(v0 + v18, v5);

  return MEMORY[0x2821FE8E8](v0, v18 + v8, v2 | v7 | 7);
}

uint64_t sub_262945A90()
{
  v1 = *(type metadata accessor for PassbookGroupView() - 8);
  v2 = (*(v1 + 80) + 17) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26294CB98() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_26294317C(v5, v0 + v2, v6);
}

uint64_t sub_262945B60()
{
  v1 = (type metadata accessor for PassbookGroupView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_26294CBA8();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v0 + v3 + v1[9] + 8);

  v7 = (v0 + v3 + v1[10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = *v7;

      v10 = *(v7 + 1);

      v11 = *(v8 + 32);
      v12 = sub_26294DAC8();
      (*(*(v12 - 8) + 8))(&v7[v11], v12);
    }
  }

  else
  {
    v13 = *v7;
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_262945D3C()
{
  v1 = *(type metadata accessor for PassbookGroupView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_262942BFC(v0 + v2, v3);
}

unint64_t sub_262945DC8()
{
  result = qword_27FF301B0;
  if (!qword_27FF301B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF301B0);
  }

  return result;
}

uint64_t sub_262945E7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_262946074(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_26294CD78();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7E0, &unk_26294F980);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[9];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for PassbookCategoryView()
{
  result = qword_27FF301D8;
  if (!qword_27FF301D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2629462A4()
{
  sub_26294CD78();
  if (v0 <= 0x3F)
  {
    sub_2628DCCD8();
    if (v1 <= 0x3F)
    {
      sub_26290E0CC(319, &qword_27FF2E808, MEMORY[0x277CDD968], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_26290E0CC(319, &qword_27FF2F0E8, MEMORY[0x277CDF0E0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26290E0CC(319, &qword_27FF2E810, MEMORY[0x277CDD848], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_262946448(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2FDF8, "4;");
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2628DF954(a1, &v6 - v4, &qword_27FF2FDF8, "4;");
  return sub_26294D2C8();
}

uint64_t sub_2629464F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v10[-v3];
  v5 = *(v0 + *(type metadata accessor for PassbookCategoryView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v11 = v0;
  sub_262918150(sub_26294C47C, v12, v4);

  v6 = sub_26294CD78();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    sub_2628DF6F0(v4, &qword_27FF2F080, &unk_26294F7D0);
    return MEMORY[0x277D84F90];
  }

  else
  {
    v9 = sub_26294CD58();
    (*(v7 + 8))(v4, v6);
    return v9;
  }
}

uint64_t sub_2629466A8()
{
  v0 = sub_26294CCE8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  sub_26294CD08();
  sub_26294CD08();
  v8 = MEMORY[0x26672C300](v7, v5);
  v9 = *(v1 + 8);
  v9(v5, v0);
  v9(v7, v0);
  return v8 & 1;
}

uint64_t sub_2629467DC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_26294DAC8();
  v50 = *(v2 - 8);
  v51 = v2;
  v3 = *(v50 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v49 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = v43 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301F0, &qword_262951860);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v43 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301F8, &qword_262951868);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v43 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30200, &qword_262951870);
  v17 = *(v16 - 8);
  v46 = v16;
  v47 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v43[0] = v43 - v19;
  *v10 = sub_26294D3C8();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30208, &qword_262951878);
  sub_262946D20(v1, &v10[*(v20 + 44)]);
  KeyPath = swift_getKeyPath();
  v22 = &v10[*(v7 + 36)];
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F110, &unk_2629518B0) + 28);
  v43[1] = *(type metadata accessor for PassbookCategoryView() + 32);
  v43[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D958();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F118, &qword_26294FA50);
  (*(*(v24 - 8) + 56))(v22 + v23, 0, 1, v24);
  *v22 = KeyPath;
  v54 = sub_26294CD38();
  v55 = v25;
  v26 = sub_26294B734();
  v27 = sub_2628DF230();
  v28 = MEMORY[0x277D837D0];
  sub_26294D708();

  sub_2628DF6F0(v10, &qword_27FF301F0, &qword_262951860);
  v53 = v1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F140, &unk_26294FA60);
  v54 = v7;
  v55 = v28;
  v56 = v26;
  v57 = v27;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
  v32 = sub_2629136CC();
  v54 = v31;
  v55 = v32;
  v33 = swift_getOpaqueTypeConformance2();
  v34 = v44;
  sub_26294D818();
  (*(v45 + 8))(v15, v34);
  v35 = v48;
  sub_26294D938();
  v37 = v49;
  v36 = v50;
  v38 = v51;
  (*(v50 + 104))(v49, *MEMORY[0x277CDF0D0], v51);
  sub_26294DAB8();
  v39 = *(v36 + 8);
  v39(v37, v38);
  v39(v35, v38);
  v54 = v34;
  v55 = v29;
  v56 = OpaqueTypeConformance2;
  v57 = v33;
  swift_getOpaqueTypeConformance2();
  v40 = v46;
  v41 = v43[0];
  sub_26294D7C8();
  return (*(v47 + 8))(v41, v40);
}

uint64_t sub_262946D20@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1E0, &qword_262951990);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v49 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v41 - v7;
  v8 = sub_26294D468();
  v9 = *(v8 - 8);
  v46 = v8;
  v47 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30228, &qword_262951998);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30230, &qword_2629519A0);
  v45 = *(v18 - 8);
  v19 = *(v45 + 64);
  MEMORY[0x28223BE20](v18);
  v21 = &v41 - v20;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30238, &qword_2629519A8);
  v42 = *(v44 - 8);
  v22 = v42;
  v23 = *(v42 + 64);
  v24 = MEMORY[0x28223BE20](v44);
  v43 = &v41 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v41 - v26;
  v51 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30240, &qword_2629519B0);
  sub_26294BA44();
  sub_26294D5E8();
  v28 = sub_2628DFD0C(&qword_27FF30268, &qword_27FF30228, &qword_262951998);
  sub_26294D7A8();
  (*(v14 + 8))(v17, v13);
  sub_26294D458();
  v52 = v13;
  v53 = v28;
  swift_getOpaqueTypeConformance2();
  v29 = v27;
  v30 = v46;
  sub_26294D828();
  (*(v47 + 8))(v12, v30);
  (*(v45 + 8))(v21, v18);
  v31 = v48;
  sub_262947510(v48);
  v32 = *(v22 + 16);
  v33 = v43;
  v34 = v44;
  v35 = v29;
  v32(v43, v29, v44);
  v36 = v49;
  sub_2628DF954(v31, v49, &qword_27FF2F1E0, &qword_262951990);
  v37 = v50;
  v32(v50, v33, v34);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30270, &qword_2629519C8);
  sub_2628DF954(v36, &v37[*(v38 + 48)], &qword_27FF2F1E0, &qword_262951990);
  sub_2628DF6F0(v31, &qword_27FF2F1E0, &qword_262951990);
  v39 = *(v42 + 8);
  v39(v35, v34);
  sub_2628DF6F0(v36, &qword_27FF2F1E0, &qword_262951990);
  return (v39)(v33, v34);
}

uint64_t sub_26294723C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PassbookCategoryView();
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = *(sub_2629464F0() + 16);

  v17 = sub_2629464F0();
  sub_26294B860(a1, &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  sub_26294B8C8(&v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9);
  *(v10 + v9 + v7) = v8 > 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30278, &unk_262951A60);
  type metadata accessor for PassbookGroupView();
  sub_2628DFD0C(&qword_27FF30280, &qword_27FF30278, &unk_262951A60);
  sub_26294BF44(&qword_27FF30260, type metadata accessor for PassbookGroupView);
  sub_26294BF44(&qword_27FF30288, MEMORY[0x277D48F58]);
  sub_26294DA68();
  v11 = *(a1 + *(v5 + 28) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  LOBYTE(v10) = v16[7];
  KeyPath = swift_getKeyPath();
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF30240, &qword_2629519B0);
  v15 = (a2 + *(result + 36));
  *v15 = KeyPath;
  v15[1] = sub_26292E384;
  v15[2] = v13;
  return result;
}

uint64_t sub_262947510@<X0>(uint64_t a1@<X8>)
{
  v44 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F228, &unk_2629519D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v41 - v4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F230, &unk_26294FB50);
  v6 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v43 = &v41 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F238, &unk_2629519E0);
  v45 = *(v8 - 8);
  v9 = *(v45 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v42 = &v41 - v13;
  v14 = sub_26294DAC8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = *(type metadata accessor for PassbookCategoryView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  v23 = v1;
  sub_26294D938();
  (*(v15 + 104))(v19, *MEMORY[0x277CDF0D0], v14);
  LOBYTE(v22) = sub_26294DAB8();
  v24 = *(v15 + 8);
  v24(v19, v14);
  v25 = v21;
  v26 = v8;
  v24(v25, v14);
  v27 = v44;
  v28 = 1;
  if (v22)
  {
    *v5 = sub_26294D3C8();
    *(v5 + 1) = 0;
    v5[16] = 0;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F240, &unk_26294FB60);
    sub_262949900(v23, &v5[*(v29 + 44)]);
    sub_26294DAE8();
    sub_26294D1F8();
    v30 = v43;
    sub_262906F00(v5, v43, &qword_27FF2F228, &unk_2629519D0);
    v31 = (v30 + *(v41 + 36));
    v32 = v51;
    v31[4] = v50;
    v31[5] = v32;
    v31[6] = v52;
    v33 = v47;
    *v31 = v46;
    v31[1] = v33;
    v34 = v49;
    v31[2] = v48;
    v31[3] = v34;
    v35 = [objc_opt_self() secondarySystemBackgroundColor];
    v36 = sub_26294D838();
    v37 = sub_26294D528();
    sub_262906F00(v30, v12, &qword_27FF2F230, &unk_26294FB50);
    v38 = &v12[*(v26 + 36)];
    *v38 = v36;
    v38[8] = v37;
    v39 = v42;
    sub_262906F00(v12, v42, &qword_27FF2F238, &unk_2629519E0);
    sub_262906F00(v39, v27, &qword_27FF2F238, &unk_2629519E0);
    v28 = 0;
  }

  return (*(v45 + 56))(v27, v28, 1, v26);
}

uint64_t sub_262947970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F180, &qword_26294FA88);
  v3 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v73 - v4;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F170, &unk_2629518E0);
  v90 = *(v93 - 8);
  v5 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v89 = &v73 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F188, &qword_26294FA90);
  v82 = *(v7 - 8);
  v83 = v7;
  v8 = *(v82 + 64);
  MEMORY[0x28223BE20](v7);
  v74 = &v73 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F190, &qword_26294FA98);
  v85 = *(v87 - 8);
  v10 = *(v85 + 64);
  MEMORY[0x28223BE20](v87);
  v84 = &v73 - v11;
  v12 = sub_26294DAC8();
  v79 = *(v12 - 8);
  v80 = v12;
  v13 = *(v79 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v76 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F198, &qword_26294FAA0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v81 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v91 = &v73 - v21;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1A0, &qword_26294FAA8);
  v78 = *(v94 - 8);
  v22 = *(v78 + 8);
  MEMORY[0x28223BE20](v94);
  v24 = &v73 - v23;
  v25 = sub_26294D448();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F158, &unk_26294FA70);
  v75 = *(v27 - 8);
  v28 = *(v75 + 64);
  MEMORY[0x28223BE20](v27);
  v30 = &v73 - v29;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F148, &unk_2629518D0);
  v31 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v33 = &v73 - v32;
  v34 = type metadata accessor for PassbookCategoryView();
  v35 = a1;
  v36 = *(a1 + *(v34 + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  if (v96 == 1)
  {
    sub_26294D428();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1C0, &unk_26294FB00);
    sub_2628DFD0C(&qword_27FF2F1C8, &qword_27FF2F1C0, &unk_26294FB00);
    sub_26294D088();
    v37 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70);
    MEMORY[0x26672CAA0](v30, v27, v37);
    v96 = v27;
    v97 = v37;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0);
    v40 = v94;
    MEMORY[0x26672CAB0](v24, v94, v93, OpaqueTypeConformance2, v39);
    (*(v78 + 1))(v24, v40);
    (*(v75 + 8))(v30, v27);
  }

  else
  {
    v75 = v27;
    v78 = v33;
    v41 = *(v34 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
    v42 = v35;
    v43 = v76;
    sub_26294D938();
    v45 = v79;
    v44 = v80;
    v46 = v77;
    (*(v79 + 104))(v77, *MEMORY[0x277CDF0D0], v80);
    LOBYTE(v41) = sub_26294DAB8();
    v47 = *(v45 + 8);
    v47(v46, v44);
    v47(v43, v44);
    if (v41)
    {
      v48 = sub_26294D408();
      MEMORY[0x28223BE20](v48);
      *(&v73 - 2) = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
      sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8);
      v49 = v84;
      sub_26294D088();
      v50 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98);
      v51 = v74;
      v52 = v87;
      MEMORY[0x26672CAA0](v49, v87, v50);
      v54 = v81;
      v53 = v82;
      v55 = v83;
      (*(v82 + 16))(v81, v51, v83);
      (*(v53 + 56))(v54, 0, 1, v55);
      v96 = v52;
      v97 = v50;
      v56 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v54, v55, v56);
      sub_2628DF6F0(v54, &qword_27FF2F198, &qword_26294FAA0);
      (*(v53 + 8))(v51, v55);
      v57 = v85;
      (*(v85 + 8))(v49, v52);
      v58 = v93;
    }

    else
    {
      v59 = v81;
      v60 = v83;
      (*(v82 + 56))(v81, 1, 1, v83);
      v61 = sub_2628DFD0C(&qword_27FF2F1A8, &qword_27FF2F190, &qword_26294FA98);
      v52 = v87;
      v96 = v87;
      v97 = v61;
      v62 = swift_getOpaqueTypeConformance2();
      MEMORY[0x26672CAD0](v59, v60, v62);
      sub_2628DF6F0(v59, &qword_27FF2F198, &qword_26294FAA0);
      v58 = v93;
      v49 = v84;
      v57 = v85;
    }

    v63 = sub_26294D428();
    MEMORY[0x28223BE20](v63);
    *(&v73 - 2) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1B0, &qword_26294FAF8);
    sub_2628DFD0C(&qword_27FF2F1B8, &qword_27FF2F1B0, &qword_26294FAF8);
    sub_26294D088();
    v64 = *(v88 + 48);
    v65 = v91;
    v66 = v86;
    sub_262913804(v91, v86);
    (*(v57 + 16))(v66 + v64, v49, v52);
    v67 = v89;
    sub_26294D3E8();
    v68 = sub_2628DFD0C(&qword_27FF2F160, &qword_27FF2F158, &unk_26294FA70);
    v96 = v75;
    v97 = v68;
    v69 = swift_getOpaqueTypeConformance2();
    v70 = sub_2628DFD0C(&qword_27FF2F168, &qword_27FF2F170, &unk_2629518E0);
    v33 = v78;
    MEMORY[0x26672CAC0](v67, v94, v58, v69, v70);
    (*(v90 + 8))(v67, v58);
    (*(v57 + 8))(v49, v52);
    sub_2628DF6F0(v65, &qword_27FF2F198, &qword_26294FAA0);
  }

  v71 = sub_2629136CC();
  MEMORY[0x26672CAA0](v33, v92, v71);
  return sub_2628DF6F0(v33, &qword_27FF2F148, &unk_2629518D0);
}

uint64_t sub_2629485B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for PassbookCategoryView();
  v4 = v3 - 8;
  v54 = *(v3 - 8);
  v5 = *(v54 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = v6;
  v56 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294CB98();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v72 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = v52 - v16;
  v17 = sub_26294CBA8();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v62 = v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + *(v4 + 28) + 8);
  v22 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v52[1] = v21;
  v23 = *(v21 + v22);
  v66 = *(v23 + 16);
  if (v66)
  {
    v52[0] = a1;
    v65 = v23 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v71 = v8 + 16;
    v24 = (v8 + 8);
    v69 = (v8 + 32);
    v63 = (v18 + 8);
    v64 = v18 + 16;

    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v28 = v62;
    v60 = v17;
    v61 = v8;
    v58 = v23;
    v59 = v18;
    while (v26 < *(v23 + 16))
    {
      v29 = *(v18 + 72);
      v68 = v26;
      (*(v18 + 16))(v28, v65 + v29 * v26, v17);
      v30 = sub_26294CAB8();
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (*(v8 + 80) + 32) & ~*(v8 + 80);
        v67 = v30;
        v70 = v32;
        v33 = v30 + v32;
        v34 = *(v8 + 72);
        v35 = *(v8 + 16);
        v35(v13, v30 + v32, v7);
        while (1)
        {
          if (sub_26294CB78())
          {
            v35(v72, v13, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_26291D74C(0, *(v27 + 2) + 1, 1, v27);
            }

            v37 = *(v27 + 2);
            v36 = *(v27 + 3);
            if (v37 >= v36 >> 1)
            {
              v27 = sub_26291D74C(v36 > 1, v37 + 1, 1, v27);
            }

            (*v24)(v13, v7);
            *(v27 + 2) = v37 + 1;
            (*v69)(&v27[v70 + v37 * v34], v72, v7);
          }

          else
          {
            (*v24)(v13, v7);
          }

          v33 += v34;
          if (!--v31)
          {
            break;
          }

          v35(v13, v33, v7);
        }

        v17 = v60;
        v8 = v61;
        v23 = v58;
        v18 = v59;
        v28 = v62;
      }

      else
      {
      }

      v26 = v68 + 1;
      result = (*v63)(v28, v17);
      if (v26 == v66)
      {

        a1 = v52[0];
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_20:
    v38 = *(v27 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v40 = v73;
    MEMORY[0x28223BE20](v39);
    v52[-2] = a1;
    v41 = v53;
    sub_262918150(sub_26294B840, v40, v53);

    v42 = sub_26294CD78();
    v43 = *(v42 - 8);
    if ((*(v43 + 48))(v41, 1, v42) == 1)
    {
      sub_2628DF6F0(v41, &qword_27FF2F080, &unk_26294F7D0);
      v44 = 0;
    }

    else
    {
      v44 = sub_26294CD68();
      (*(v43 + 8))(v41, v42);
    }

    v45 = v38 == v44;
    v46 = a1;
    v47 = v56;
    sub_26294B860(v46, v56);
    v48 = (*(v54 + 80) + 16) & ~*(v54 + 80);
    v49 = v48 + v55;
    v50 = swift_allocObject();
    v51 = sub_26294B8C8(v47, v50 + v48);
    *(v50 + v49) = v45;
    MEMORY[0x28223BE20](v51);
    LOBYTE(v52[-2]) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
    sub_2629139D0();
    return sub_26294D988();
  }

  return result;
}

uint64_t sub_262948CAC(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14[-v6];
  v8 = *(a1 + *(type metadata accessor for PassbookCategoryView() + 20) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26294CFF8();

  v15 = a1;
  sub_262918150(sub_26294C47C, v16, v7);

  v9 = sub_26294CD78();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v7, 1, v9) == 1)
  {
    return sub_2628DF6F0(v7, &qword_27FF2F080, &unk_26294F7D0);
  }

  v12 = sub_26294CD18();
  result = (*(v10 + 8))(v7, v9);
  if (v12)
  {
    v13 = sub_2629464F0();
    sub_2628F1CA4(v13, (a2 & 1) == 0);
  }

  return result;
}

double sub_262948E8C@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = sub_26294C5F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277D48E08], v4);
  v9 = (v5 + 8);
  if (a1)
  {
    v10 = sub_26294C5E8();
    v12 = v11;
    (*v9)(v8, v4);
    *&v31 = v10;
    *(&v31 + 1) = v12;
    sub_2628DF230();
    v26 = sub_26294D648();
    v27 = v13;
    v28 = v14 & 1;
    v29 = v15;
    v30 = 0;
  }

  else
  {
    v16 = sub_26294C5E8();
    v18 = v17;
    (*v9)(v8, v4);
    *&v31 = v16;
    *(&v31 + 1) = v18;
    sub_2628DF230();
    v26 = sub_26294D648();
    v27 = v20;
    v28 = v19 & 1;
    v29 = v21;
    v30 = 1;
  }

  sub_26294D3F8();
  result = *&v31;
  v23 = v32;
  v24 = v33;
  *a2 = v31;
  *(a2 + 16) = v23;
  *(a2 + 32) = v24;
  return result;
}

uint64_t sub_262949084(uint64_t a1)
{
  v2 = type metadata accessor for PassbookCategoryView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26294B860(a1, &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26294B8C8(&v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)], v6 + v5);
  v9 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F1D0, &unk_26294FB10);
  sub_2629139D0();
  return sub_26294D988();
}

uint64_t sub_2629491CC(uint64_t a1)
{
  v2 = sub_26294DAC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = type metadata accessor for PassbookCategoryView();
  v11 = *(v10 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v3 + 104))(v7, *MEMORY[0x277CDF0D0], v2);
  LOBYTE(v11) = sub_26294DAB8();
  v12 = *(v3 + 8);
  v12(v7, v2);
  v12(v9, v2);
  if (v11)
  {
    v13 = *(a1 + *(v10 + 20) + 8);
    v14 = sub_2629464F0();
    sub_2628F1CA4(v14, 0);
  }

  v15 = sub_26294DB28();
  MEMORY[0x28223BE20](v15);
  *&v17[-16] = a1;
  sub_26294D108();
}

uint64_t sub_2629493D4(uint64_t a1)
{
  v17 = a1;
  v1 = sub_26294DAC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v14[-v7];
  v18 = *(type metadata accessor for PassbookCategoryView() + 32);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  v9 = *MEMORY[0x277CDF0D0];
  v10 = *(v2 + 104);
  v10(v6, *MEMORY[0x277CDF0D0], v1);
  v15 = sub_26294DAB8();
  v11 = *(v2 + 8);
  v11(v6, v1);
  v11(v8, v1);
  if (v15)
  {
    v12 = *MEMORY[0x277CDF0D8];
  }

  else
  {
    v12 = v9;
  }

  v10(v8, v12, v1);
  (*(v2 + 16))(v6, v8, v1);
  sub_26294D948();
  return (v11)(v8, v1);
}

double sub_2629495D0@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26294DAC8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v34 - v13;
  v15 = *(type metadata accessor for PassbookCategoryView() + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v8 + 104))(v12, *MEMORY[0x277CDF0D0], v7);
  v16 = sub_26294DAB8();
  v17 = *(v8 + 8);
  v17(v12, v7);
  v17(v14, v7);
  (*(v3 + 104))(v6, *MEMORY[0x277D48DF0], v2);
  v18 = (v3 + 8);
  if (v16)
  {
    v19 = sub_26294C5E8();
    v21 = v20;
    (*v18)(v6, v2);
    *&v40 = v19;
    *(&v40 + 1) = v21;
    sub_2628DF230();
    v35 = sub_26294D648();
    v36 = v22;
    v37 = v23 & 1;
    v38 = v24;
    v39 = 0;
  }

  else
  {
    v25 = sub_26294C5E8();
    v27 = v26;
    (*v18)(v6, v2);
    *&v40 = v25;
    *(&v40 + 1) = v27;
    sub_2628DF230();
    v35 = sub_26294D648();
    v36 = v29;
    v37 = v28 & 1;
    v38 = v30;
    v39 = 1;
  }

  sub_26294D3F8();
  result = *&v40;
  v32 = v41;
  v33 = v42;
  *a1 = v40;
  *(a1 + 16) = v32;
  *(a1 + 32) = v33;
  return result;
}

uint64_t sub_262949900@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F248, &unk_2629519F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_26294DA38();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v24 - v17;
  sub_26294DA28();
  *v10 = sub_26294D338();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F250, &unk_26294FB70);
  sub_262949B64(a1, &v10[*(v19 + 44)]);
  v20 = v12[2];
  v20(v16, v18, v11);
  sub_2628DF954(v10, v8, &qword_27FF2F248, &unk_2629519F0);
  v20(a2, v16, v11);
  v21 = &a2[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F258, &qword_262951A00) + 48)];
  sub_2628DF954(v8, v21, &qword_27FF2F248, &unk_2629519F0);
  sub_2628DF6F0(v10, &qword_27FF2F248, &unk_2629519F0);
  v22 = v12[1];
  v22(v18, v11);
  sub_2628DF6F0(v8, &qword_27FF2F248, &unk_2629519F0);
  return (v22)(v16, v11);
}

uint64_t sub_262949B64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v3 = type metadata accessor for PassbookCategoryView();
  v4 = v3 - 8;
  v89 = *(v3 - 8);
  v5 = *(v89 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = v6;
  v91 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F260, &unk_26294FB80);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v94 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v93 = &v83 - v11;
  v88 = sub_26294C5F8();
  v87 = *(v88 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x28223BE20](v88);
  v86 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_26294CB98();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v83 - v20;
  v22 = sub_26294CBA8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v106 = &v83 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v4 + 28);
  v92 = a1;
  v27 = *(a1 + v26 + 8);
  v28 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v85 = v27;
  v29 = *(v27 + v28);
  v103 = *(v29 + 16);
  if (v103)
  {
    v84 = v7;
    v101 = v29 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v100 = v23 + 16;
    v109 = v15 + 16;
    v30 = (v15 + 8);
    v107 = (v15 + 32);
    v99 = (v23 + 8);

    v32 = 0;
    v110 = v19;
    v33 = MEMORY[0x277D84F90];
    v98 = v15;
    v97 = v22;
    v96 = v23;
    v102 = result;
    while (v32 < *(result + 16))
    {
      (*(v23 + 16))(v106, v101 + *(v23 + 72) * v32, v22);
      v34 = sub_26294CAB8();
      v35 = *(v34 + 16);
      if (v35)
      {
        v105 = v32;
        v36 = (*(v15 + 80) + 32) & ~*(v15 + 80);
        v104 = v34;
        v108 = v36;
        v37 = v34 + v36;
        v38 = *(v15 + 72);
        v39 = *(v15 + 16);
        do
        {
          v39(v21, v37, v14);
          if (sub_26294CB78())
          {
            v39(v110, v21, v14);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_26291D74C(0, *(v33 + 2) + 1, 1, v33);
            }

            v41 = *(v33 + 2);
            v40 = *(v33 + 3);
            if (v41 >= v40 >> 1)
            {
              v33 = sub_26291D74C(v40 > 1, v41 + 1, 1, v33);
            }

            (*v30)(v21, v14);
            *(v33 + 2) = v41 + 1;
            (*v107)(&v33[v108 + v41 * v38], v110, v14);
          }

          else
          {
            (*v30)(v21, v14);
          }

          v37 += v38;
          --v35;
        }

        while (v35);

        v15 = v98;
        v22 = v97;
        v23 = v96;
        v32 = v105;
      }

      else
      {
      }

      ++v32;
      (*v99)(v106, v22);
      result = v102;
      if (v32 == v103)
      {

        v7 = v84;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
LABEL_19:
    v42 = *(v33 + 2);

    v43 = v87;
    v44 = v86;
    v45 = v88;
    (*(v87 + 104))(v86, *MEMORY[0x277D48E08], v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E8B8, &qword_26294EC60);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_26294ECB0;
    v47 = sub_2628FA818();
    v48 = MEMORY[0x277D83C10];
    *(v46 + 56) = MEMORY[0x277D83B88];
    *(v46 + 64) = v48;
    *(v46 + 32) = v47;
    v49 = sub_26294C6B8();
    v51 = v50;

    (*(v43 + 8))(v44, v45);
    v116 = v49;
    v117 = v51;
    sub_2628DF230();
    v52 = sub_26294D648();
    v54 = v53;
    LOBYTE(v43) = v55;
    sub_26294D5D8();
    v56 = sub_26294D638();
    v109 = v57;
    v59 = v58;
    v110 = v60;

    sub_2628DF758(v52, v54, v43 & 1);

    LODWORD(v108) = sub_26294D528();
    LODWORD(v107) = v59 & 1;
    LOBYTE(v116) = v59 & 1;
    LOBYTE(v113) = 1;
    v61 = sub_26294DB08();
    v63 = v62;
    v64 = *(v7 + 36);
    v65 = v93;
    v66 = &v93[v64];
    v67 = v91;
    sub_26294B860(v92, v91);
    v68 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v69 = swift_allocObject();
    sub_26294B8C8(v67, v69 + v68);
    sub_26294D988();
    KeyPath = swift_getKeyPath();
    v71 = swift_allocObject();
    *(v71 + 16) = v42 == 0;
    v72 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F268, &unk_26294FBC0) + 36)];
    *v72 = KeyPath;
    v72[1] = sub_262913BC8;
    v72[2] = v71;
    LOBYTE(KeyPath) = sub_26294D528();
    v73 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F270, &unk_262951A40) + 36)];
    *v73 = KeyPath;
    *(v73 + 8) = 0u;
    *(v73 + 24) = 0u;
    v73[40] = 1;
    v74 = &v66[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F278, &unk_26294FBD0) + 36)];
    *v74 = v61;
    v74[1] = v63;
    *v65 = 0;
    *(v65 + 8) = 1;
    v75 = v94;
    sub_2628DF954(v65, v94, &qword_27FF2F260, &unk_26294FB80);
    v76 = v56;
    *&v113 = v56;
    v77 = v109;
    *(&v113 + 1) = v109;
    LOBYTE(KeyPath) = v107;
    LOBYTE(v114) = v107;
    *(&v114 + 1) = *v112;
    DWORD1(v114) = *&v112[3];
    v78 = v110;
    *(&v114 + 1) = v110;
    LOBYTE(v66) = v108;
    v115[0] = v108;
    *&v115[1] = *v111;
    *&v115[4] = *&v111[3];
    memset(&v115[8], 0, 32);
    v115[40] = 1;
    v79 = *&v115[16];
    v80 = v95;
    *(v95 + 48) = *v115;
    *(v80 + 64) = v79;
    *(v80 + 73) = *&v115[25];
    v81 = v114;
    *(v80 + 16) = v113;
    *(v80 + 32) = v81;
    *v80 = 0;
    *(v80 + 8) = 1;
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F280, &unk_262951A50);
    sub_2628DF954(v75, v80 + *(v82 + 64), &qword_27FF2F260, &unk_26294FB80);
    sub_2628DF954(&v113, &v116, &qword_27FF2F288, &qword_26294FBE0);
    sub_2628DF6F0(v65, &qword_27FF2F260, &unk_26294FB80);
    sub_2628DF6F0(v75, &qword_27FF2F260, &unk_26294FB80);
    v116 = v76;
    v117 = v77;
    v118 = KeyPath;
    *v119 = *v112;
    *&v119[3] = *&v112[3];
    v120 = v78;
    v121 = v66;
    *v122 = *v111;
    *&v122[3] = *&v111[3];
    v123 = 0u;
    v124 = 0u;
    v125 = 1;
    return sub_2628DF6F0(&v116, &qword_27FF2F288, &qword_26294FBE0);
  }

  return result;
}

uint64_t sub_26294A644()
{
  v1 = type metadata accessor for PassbookCategoryView();
  v2 = v1 - 8;
  v56 = *(v1 - 8);
  v3 = *(v56 + 64);
  MEMORY[0x28223BE20](v1);
  v57 = v4;
  v58 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26294CB98();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v74 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F080, &unk_26294F7D0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v54 = &v53 - v14;
  v15 = sub_26294CBA8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v2 + 28);
  v59 = v0;
  v21 = *(v0 + v20 + 8);
  v22 = OBJC_IVAR____TtC12SESUIService29SEStorageManagementController_walletGroups;
  swift_beginAccess();
  v55 = v21;
  v23 = *&v21[v22];
  v68 = *(v23 + 16);
  if (v68)
  {
    v65 = v23 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v24 = (v6 + 8);
    v71 = (v6 + 32);
    v63 = (v16 + 8);
    v64 = v16 + 16;

    v26 = 0;
    v27 = MEMORY[0x277D84F90];
    v72 = v6 + 16;
    v61 = v15;
    v62 = v6;
    v60 = v16;
    v66 = result;
    v67 = v19;
    while (v26 < *(result + 16))
    {
      v28 = *(v16 + 72);
      v70 = v26;
      (*(v16 + 16))(v19, v65 + v28 * v26, v15);
      v29 = sub_26294CAB8();
      v30 = *(v29 + 16);
      if (v30)
      {
        v31 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v69 = v29;
        v73 = v31;
        v32 = v29 + v31;
        v33 = *(v6 + 72);
        v34 = *(v6 + 16);
        v34(v11, v29 + v31, v5);
        while (1)
        {
          if (sub_26294CB78())
          {
            v34(v74, v11, v5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v27 = sub_26291D74C(0, *(v27 + 2) + 1, 1, v27);
            }

            v36 = *(v27 + 2);
            v35 = *(v27 + 3);
            if (v36 >= v35 >> 1)
            {
              v27 = sub_26291D74C(v35 > 1, v36 + 1, 1, v27);
            }

            (*v24)(v11, v5);
            *(v27 + 2) = v36 + 1;
            (*v71)(&v27[v73 + v36 * v33], v74, v5);
          }

          else
          {
            (*v24)(v11, v5);
          }

          v32 += v33;
          if (!--v30)
          {
            break;
          }

          v34(v11, v32, v5);
        }

        v15 = v61;
        v6 = v62;
        v16 = v60;
      }

      else
      {
      }

      v26 = v70 + 1;
      v19 = v67;
      (*v63)(v67, v15);
      result = v66;
      if (v26 == v68)
      {

        goto LABEL_20;
      }
    }

    __break(1u);
  }

  else
  {
    v27 = MEMORY[0x277D84F90];
LABEL_20:
    v37 = *(v27 + 2);

    swift_getKeyPath();
    swift_getKeyPath();
    v38 = v55;
    sub_26294CFF8();

    v40 = v75;
    MEMORY[0x28223BE20](v39);
    v41 = v59;
    *(&v53 - 2) = v59;
    v42 = v54;
    sub_262918150(sub_26294C47C, v40, v54);

    v43 = sub_26294CD78();
    v44 = *(v43 - 8);
    if ((*(v44 + 48))(v42, 1, v43) == 1)
    {
      sub_2628DF6F0(v42, &qword_27FF2F080, &unk_26294F7D0);
      v45 = 0;
    }

    else
    {
      v45 = sub_26294CD68();
      (*(v44 + 8))(v42, v43);
    }

    v46 = v37 == v45;
    v47 = v41;
    v48 = v58;
    sub_26294B860(v47, v58);
    v49 = (*(v56 + 80) + 16) & ~*(v56 + 80);
    v50 = v49 + v57;
    v51 = swift_allocObject();
    sub_26294B8C8(v48, v51 + v49);
    *(v51 + v50) = v46;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    if ((v75 & 1) == 0)
    {
      v52 = v38;

      sub_262905918(v52, v52, sub_26294BBC8, v51);
    }
  }

  return result;
}

uint64_t sub_26294AD38@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26294C5F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, *MEMORY[0x277D48DF0], v2);
  v7 = sub_26294C5E8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v23 = v7;
  v24 = v9;
  sub_2628DF230();
  v10 = sub_26294D648();
  v12 = v11;
  LOBYTE(v7) = v13;
  v23 = sub_26294D858();
  v14 = sub_26294D618();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  sub_2628DF758(v10, v12, v7 & 1);

  *a1 = v14;
  *(a1 + 8) = v16;
  *(a1 + 16) = v18 & 1;
  *(a1 + 24) = v20;
  return result;
}

id sub_26294AF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for PassbookCategoryView();
  v9 = v8 - 8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = sub_26294CBA8();
  (*(*(v12 - 8) + 16))(a4, a1, v12);
  v21 = *(a2 + *(v9 + 28) + 8);
  sub_26294B860(a2, &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v14 = swift_allocObject();
  sub_26294B8C8(&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  KeyPath = swift_getKeyPath();
  v16 = type metadata accessor for PassbookGroupView();
  *(a4 + v16[8]) = KeyPath;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F2A8, &qword_26294FBF0);
  swift_storeEnumTagMultiPayload();
  v17 = v21;
  *(a4 + v16[5]) = v21;
  *(a4 + v16[6]) = a3;
  v18 = (a4 + v16[7]);
  *v18 = sub_26294C1B8;
  v18[1] = v14;

  return v17;
}

uint64_t sub_26294B0D0(int a1, char *a2, int a3)
{
  v36 = a1;
  v37 = a3;
  v4 = sub_26294D168();
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v31 = &v31 - v8;
  v35 = sub_26294D0F8();
  v9 = *(v35 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v35);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26294DAC8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v31 - v19;
  v21 = type metadata accessor for PassbookCategoryView();
  v22 = v21[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D938();
  (*(v14 + 104))(v18, *MEMORY[0x277CDF0D0], v13);
  LOBYTE(v22) = sub_26294DAB8();
  v23 = *(v14 + 8);
  v23(v18, v13);
  result = (v23)(v20, v13);
  if (v22)
  {
    MEMORY[0x28223BE20](result);
    *(&v31 - 2) = a2;
    sub_26294DB18();
    sub_26294D108();
  }

  if (v37 & 1) != 0 && (v36)
  {
    v25 = &a2[v21[9]];
    sub_26291D460(v12);
    sub_26294D0E8();
    (*(v9 + 8))(v12, v35);
    v26 = *&a2[v21[5] + 8];
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26294CFF8();

    v27 = *(v38 + 16);

    if (!v27)
    {
      v28 = v21[6];
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50);
      v30 = v31;
      MEMORY[0x26672D010]();
      sub_26294D138();
      (*(v32 + 8))(v30, v33);
      MEMORY[0x26672D010](v29);
      sub_26294D128();
      return sub_26294D9F8();
    }
  }

  return result;
}

uint64_t sub_26294B4E8()
{
  v0 = sub_26294DAC8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v10 - v6;
  (*(v1 + 104))(v10 - v6, *MEMORY[0x277CDF0D8], v0);
  v8 = *(type metadata accessor for PassbookCategoryView() + 32);
  (*(v1 + 16))(v5, v7, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978);
  sub_26294D948();
  return (*(v1 + 8))(v7, v0);
}

uint64_t sub_26294B654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_2629467DC(a2);
  v5 = *(v2 + *(a1 + 20) + 8);
  type metadata accessor for SEStorageManagementController();
  sub_26294BF44(&qword_27FF2E800, type metadata accessor for SEStorageManagementController);
  v6 = v5;
  v7 = sub_26294D178();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF301E8, &qword_262951858);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9;
  return result;
}

unint64_t sub_26294B734()
{
  result = qword_27FF30210;
  if (!qword_27FF30210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F0, &qword_262951860);
    sub_2628DFD0C(&qword_27FF30218, &qword_27FF30220, &unk_2629518C0);
    sub_2628DFD0C(&qword_27FF2F138, &qword_27FF2F110, &unk_2629518B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30210);
  }

  return result;
}

uint64_t sub_26294B860(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookCategoryView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26294B8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PassbookCategoryView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26294B92C()
{
  v1 = *(type metadata accessor for PassbookCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));

  return sub_262948CAC(v2, v3);
}

uint64_t sub_26294B9B8()
{
  v1 = *(type metadata accessor for PassbookCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2629491CC(v2);
}

unint64_t sub_26294BA44()
{
  result = qword_27FF30248;
  if (!qword_27FF30248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30240, &qword_2629519B0);
    sub_26294BAFC();
    sub_2628DFD0C(&qword_27FF2F5A0, &qword_27FF2F5A8, &qword_2629519C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30248);
  }

  return result;
}

unint64_t sub_26294BAFC()
{
  result = qword_27FF30250;
  if (!qword_27FF30250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30258, &qword_2629519B8);
    sub_26294BF44(&qword_27FF30260, type metadata accessor for PassbookGroupView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30250);
  }

  return result;
}

uint64_t sub_26294BBC8(int a1)
{
  v3 = *(type metadata accessor for PassbookCategoryView() - 8);
  v4 = (v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80)));
  v5 = v4[*(v3 + 64)];

  return sub_26294B0D0(a1, v4, v5);
}

uint64_t objectdestroyTm_9()
{
  v1 = (type metadata accessor for PassbookCategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294CD78();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v11 = sub_26294D168();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v0 + v3 + v1[10];
  v13 = sub_26294DAC8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978) + 28));

  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_26294D0F8();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

id sub_26294BEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for PassbookCategoryView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_26294AF00(a1, v6, v7, a2);
}

uint64_t sub_26294BF44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_20Tm()
{
  v1 = (type metadata accessor for PassbookCategoryView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_26294CD78();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = (v0 + v3 + v1[8]);
  v8 = *v7;

  v9 = *(v7 + 1);

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E7D8, &unk_26294EB50) + 32);
  v11 = sub_26294D168();
  (*(*(v11 - 8) + 8))(&v7[v10], v11);
  v12 = v0 + v3 + v1[10];
  v13 = sub_26294DAC8();
  (*(*(v13 - 8) + 8))(v12, v13);
  v14 = *(v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2F0D0, &qword_26294F978) + 28));

  v15 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FF2E840, &qword_26294FEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_26294D0F8();
    (*(*(v16 - 8) + 8))(v5 + v15, v16);
  }

  else
  {
    v17 = *(v5 + v15);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26294C1BC()
{
  v1 = *(type metadata accessor for PassbookCategoryView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_26294A644();
}

unint64_t sub_26294C21C()
{
  result = qword_27FF30290;
  if (!qword_27FF30290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301E8, &qword_262951858);
    sub_26294C2A8();
    sub_26290C97C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30290);
  }

  return result;
}

unint64_t sub_26294C2A8()
{
  result = qword_27FF30298;
  if (!qword_27FF30298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FF302A0, &qword_262951A70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF30200, &qword_262951870);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F8, &qword_262951868);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F140, &unk_26294FA60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF301F0, &qword_262951860);
    sub_26294B734();
    sub_2628DF230();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FF2F148, &unk_2629518D0);
    sub_2629136CC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FF30298);
  }

  return result;
}