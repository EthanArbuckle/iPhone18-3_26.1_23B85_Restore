uint64_t sub_26F1527DC(uint64_t a1)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if (v5 == 1)
  {
    sub_26F151CCC();
    sub_26F15B0EC(1, 1, 0);

    result = sub_26F151CCC();
    v2 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
    v3 = __OFADD__(v2, 1);
    v4 = v2 + 1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v4;
    }
  }

  return result;
}

uint64_t sub_26F152894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v13 - v2;
  v4 = sub_26F180714();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F151CCC();
  sub_26F180704();
  (*(v5 + 56))(v3, 1, 1, v4);
  sub_26F15BCB8(v8, 1, v3);

  sub_26F13AB10(v3, &qword_2806D4360, &qword_26F181DC0);
  (*(v5 + 8))(v8, v4);
  result = sub_26F151CCC();
  v10 = *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(result + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64) = v12;
  }

  return result;
}

uint64_t sub_26F152AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_26F152B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for PinchZoomView()
{
  result = qword_2806D4968;
  if (!qword_2806D4968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F152C7C()
{
  sub_26F152DC8(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26F152D78();
    if (v1 <= 0x3F)
    {
      sub_26F152DC8(319, &qword_2806D4978, MEMORY[0x277CE42C8], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_26F152D78()
{
  if (!qword_2806D4210)
  {
    v0 = sub_26F180444();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4210);
    }
  }
}

void sub_26F152DC8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26F152E48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchZoomView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F152EB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PinchZoomView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_26F152F44()
{
  result = qword_2806D49B0;
  if (!qword_2806D49B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4990, &qword_26F182678);
    sub_26F152FD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49B0);
  }

  return result;
}

unint64_t sub_26F152FD0()
{
  result = qword_2806D49B8;
  if (!qword_2806D49B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49C0, &qword_26F182698);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49B8);
  }

  return result;
}

unint64_t sub_26F153034()
{
  result = qword_2806D49C8;
  if (!qword_2806D49C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A8, &qword_26F182690);
    sub_26F1532A8(&qword_2806D49D0, type metadata accessor for MKCoordinateSpan);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49C8);
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  v1 = (type metadata accessor for PinchZoomView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(v0 + v3);

  v6 = *(v0 + v3 + 24);

  v7 = v0 + v3 + v1[8];
  v8 = sub_26F17F834();
  (*(*(v8 - 8) + 8))(v7, v8);
  v9 = *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4960, &qword_26F182600) + 28));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F15322C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PinchZoomView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_26F1532A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F1532F0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A0, &qword_26F182688);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4998, &qword_26F182680);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4990, &qword_26F182678);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49A8, &qword_26F182690);
  sub_26F152F44();
  sub_26F153034();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F15340C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_26F13A854(v2, &v16 - v11, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v12, a1, &qword_2806D4200, &qword_26F181B88);
  }

  v14 = *v12;
  sub_26F180944();
  v15 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F1535EC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v16 - v10);
  v12 = type metadata accessor for TipsTryItView();
  sub_26F13A854(v1 + *(v12 + 20), v11, &qword_2806D49D8, &qword_26F183520);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F142810(v11, a1, &qword_2806D4A68, "Vo");
  }

  v14 = *v11;
  sub_26F180944();
  v15 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_26F1537D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F17FC84();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for TipsTryItView();
  sub_26F13A854(v1 + *(v12 + 24), v11, &qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_26F17FD64();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_26F180944();
    v16 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t TipsTryItView.init(lesson:tipId:collectionId:correlationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v50 = a6;
  v51 = a7;
  v48 = a4;
  v49 = a5;
  v12 = sub_26F17F6D4();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26F180104();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for TipsTryItView();
  v22 = v21[5];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v23 = v21[6];
  *(a8 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v24 = v21[7];
  v53 = 0x3FF8000000000000;
  (*(v17 + 104))(v20, *MEMORY[0x277CE0A68], v16);
  sub_26F1580A0();
  sub_26F17F934();
  v25 = a8 + v21[8];
  LOBYTE(v52) = 0;
  sub_26F180404();
  v26 = v54;
  *v25 = v53;
  *(v25 + 1) = v26;
  v27 = (a8 + v21[9]);
  v52 = 0;
  sub_26F180404();
  v28 = v54;
  *v27 = v53;
  v27[1] = v28;
  v29 = (a8 + v21[10]);
  v52 = 0;
  sub_26F180404();
  v30 = v54;
  *v29 = v53;
  v29[1] = v30;
  v31 = v21[11];
  v32 = type metadata accessor for TrainingManager();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_26F15DEDC();
  *(a8 + v31) = v35;
  if (*(v35 + 32) == a1)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v48 - 2) = v35;
    *(&v48 - 1) = a1;
    v53 = v35;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);

    sub_26F17F7B4();
  }

  swift_getKeyPath();
  v53 = v35;
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v35 + 32), v15);
  v37 = sub_26F180774();
  sub_26F15A234(v37, v38);
  swift_getKeyPath();
  v53 = v35;
  sub_26F17F7C4();

  v39 = *(v35 + 40);

  sub_26F15A524(v40);
  v41 = (v35 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v42 = *(v35 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 8);
  *v41 = a2;
  v41[1] = a3;
  v43 = v41[3];
  v44 = v49;
  v41[2] = v48;
  v41[3] = v44;
  v45 = v41[5];
  v46 = v51;
  v41[4] = v50;
  v41[5] = v46;

  sub_26F15D5A4();
}

uint64_t TipsTryItView.init(lesson:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26F180104();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for TipsTryItView();
  v10 = v9[5];
  *(a2 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v11 = v9[6];
  *(a2 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v12 = v9[7];
  v28 = 0x3FF8000000000000;
  (*(v5 + 104))(v8, *MEMORY[0x277CE0A68], v4);
  sub_26F1580A0();
  sub_26F17F934();
  v13 = a2 + v9[8];
  LOBYTE(v27) = 0;
  sub_26F180404();
  v14 = v29;
  *v13 = v28;
  *(v13 + 1) = v14;
  v15 = (a2 + v9[9]);
  v27 = 0;
  sub_26F180404();
  v16 = v29;
  *v15 = v28;
  v15[1] = v16;
  v17 = (a2 + v9[10]);
  v27 = 0;
  sub_26F180404();
  v18 = v29;
  *v17 = v28;
  v17[1] = v18;
  v19 = v9[11];
  v20 = type metadata accessor for TrainingManager();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  result = sub_26F15DEDC();
  *(a2 + v19) = result;
  if (*(result + 32) != a1)
  {
    v24 = result;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v26 - 2) = v24;
    *(&v26 - 1) = a1;
    v28 = v24;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);

    sub_26F17F7B4();
  }

  return result;
}

uint64_t TipsTryItView.init(lessons:tipId:collectionId:correlationId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v52 = a2;
  v53 = a3;
  v50 = a1;
  v13 = sub_26F17F6D4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v51 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26F180104();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a8 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for TipsTryItView();
  v22 = v21[5];
  *(a8 + v22) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v23 = v21[6];
  *(a8 + v23) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v24 = v21[7];
  v55 = 0x3FF8000000000000;
  (*(v17 + 104))(v20, *MEMORY[0x277CE0A68], v16);
  sub_26F1580A0();
  sub_26F17F934();
  v25 = a8 + v21[8];
  LOBYTE(v54) = 0;
  sub_26F180404();
  v26 = v56;
  *v25 = v55;
  *(v25 + 1) = v26;
  v27 = (a8 + v21[9]);
  v54 = 0;
  sub_26F180404();
  v28 = v56;
  *v27 = v55;
  v27[1] = v28;
  v29 = (a8 + v21[10]);
  v54 = 0;
  sub_26F180404();
  v30 = v56;
  *v29 = v55;
  v29[1] = v30;
  v31 = v21[11];
  v32 = type metadata accessor for TrainingManager();
  v33 = *(v32 + 48);
  v34 = *(v32 + 52);
  swift_allocObject();
  v35 = sub_26F15DEDC();
  v36 = v35;
  *(a8 + v31) = v35;
  v37 = v50;
  if (*(v50 + 16))
  {
    v38 = *(v50 + 32);
  }

  else
  {
    v38 = 0;
  }

  if (*(v35 + 32) == v38)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v49 = a4;
    MEMORY[0x28223BE20](KeyPath);
    *(&v48 - 2) = v36;
    *(&v48 - 1) = v38;
    v55 = v36;
    sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);

    sub_26F17F7B4();

    a4 = v49;
  }

  swift_getKeyPath();
  v55 = v36;
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v36 + 32), v51);
  v40 = sub_26F180774();
  sub_26F15A234(v40, v41);
  sub_26F15A524(v37);
  v42 = (v36 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v43 = *(v36 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 8);
  v44 = v53;
  *v42 = v52;
  v42[1] = v44;
  v45 = v42[3];
  v42[2] = a4;
  v42[3] = a5;
  v46 = v42[5];
  v42[4] = a6;
  v42[5] = a7;

  sub_26F15D5A4();
}

uint64_t TipsTryItView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_26F17FEF4();
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F0, &qword_26F1827D8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = v20 - v9;
  v25 = v1;
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F8, &qword_26F1827E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A00, &qword_26F1827E8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A08, &qword_26F1827F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A10, &qword_26F1827F8);
  v14 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0);
  v15 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v11;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26F17FA74();
  sub_26F17FEE4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0]);
  v18 = v21;
  v17 = v22;
  sub_26F1801D4();
  (*(v23 + 8))(v6, v17);
  return (*(v7 + 8))(v10, v18);
}

uint64_t sub_26F154A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A10, &qword_26F1827F8);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - v6;
  v8 = type metadata accessor for TipsTryItView();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A00, &qword_26F1827E8);
  v12 = *(v11 - 8);
  v34 = v11;
  v35 = v12;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = sub_26F17FD74();
  sub_26F158FA4(a1, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v18 = swift_allocObject();
  sub_26F158884(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  v37 = v16;
  v38 = 0;
  LOBYTE(v39) = 1;
  v40 = sub_26F1588E8;
  v41 = v18;
  sub_26F158FA4(a1, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v19 = swift_allocObject();
  sub_26F158884(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A80, &qword_26F182888);
  sub_26F1589C8();
  sub_26F180464();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A08, &qword_26F1827F0);
  v21 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0);
  v22 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8);
  v23 = v32;
  sub_26F1802A4();
  v24 = v23;
  (*(v33 + 8))(v7, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AA0, &qword_26F182890);
  v25 = *(sub_26F17FB34() - 8);
  v26 = *(v25 + 72);
  v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_26F1826D0;
  sub_26F17FB24();
  v37 = v20;
  v38 = v24;
  v39 = v21;
  v40 = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v30 = v34;
  MEMORY[0x274389EA0](2, v28, v34, OpaqueTypeConformance2);

  return (*(v35 + 8))(v15, v30);
}

uint64_t sub_26F154ED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = sub_26F180564();
  a3[1] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AA8, &qword_26F1828C8);
  return sub_26F154F38(a1, a2, a3 + *(v7 + 44));
}

uint64_t sub_26F154F38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v95 = a3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB0, &qword_26F1828D0);
  v5 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v90 = (&v74 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8);
  v8 = *(v7 - 8);
  v93 = v7 - 8;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8);
  v94 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v91 = &v74 - v12;
  v13 = type metadata accessor for TipsTryItView();
  v14 = *(v13 - 8);
  v89 = v13 - 8;
  v97 = v14;
  v98 = *(v14 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26F17FE54();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_26F17F8F4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v74 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AC0, &qword_26F1828E0);
  v80 = *(v79 - 8);
  v24 = *(v80 + 64);
  MEMORY[0x28223BE20](v79);
  v26 = &v74 - v25;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AC8, &qword_26F1828E8);
  v82 = *(v81 - 8);
  v27 = *(v82 + 64);
  MEMORY[0x28223BE20](v81);
  v77 = &v74 - v28;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AD0, &qword_26F1828F0);
  v85 = *(v84 - 8);
  v29 = *(v85 + 64);
  MEMORY[0x28223BE20](v84);
  v78 = &v74 - v30;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AD8, &qword_26F1828F8);
  v87 = *(v88 - 8);
  v31 = *(v87 + 64);
  v32 = MEMORY[0x28223BE20](v88);
  v86 = &v74 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v99 = &v74 - v34;
  v83 = a1;
  sub_26F17F9C4();
  sub_26F17F9C4();
  sub_26F180564();
  sub_26F17F9A4();
  v106 = v110;
  *&v101 = v107;
  BYTE8(v101) = v108;
  *&v102 = v109;
  BYTE8(v102) = v110;
  v103 = v111;
  v104 = xmmword_26F1826E0;
  v105 = 0;
  sub_26F17FE94();
  sub_26F17F8D4();
  v100 = type metadata accessor for TipsTryItView;
  v35 = a2;
  v76 = a2;
  v96 = v16;
  sub_26F158FA4(a2, v16, type metadata accessor for TipsTryItView);
  v97 = *(v97 + 80);
  v36 = (v97 + 16) & ~v97;
  v37 = swift_allocObject();
  sub_26F158884(v16, v37 + v36);
  sub_26F159C8C(&qword_2806D4AE0, MEMORY[0x277CDD730]);
  sub_26F1804C4();

  (*(v20 + 8))(v23, v19);
  sub_26F17F924();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AE8, &qword_26F182900);
  v39 = sub_26F158B98();
  v40 = sub_26F13AC54(&qword_2806D4B40, &qword_2806D4AC0, &qword_26F1828E0);
  v41 = v77;
  v42 = v79;
  sub_26F180304();
  (*(v80 + 8))(v26, v42);
  v43 = v96;
  sub_26F158FA4(v35, v96, v100);
  v75 = v36;
  v44 = swift_allocObject() + v36;
  sub_26F158884(v43, v44);
  *&v101 = v38;
  *(&v101 + 1) = v42;
  *&v102 = v39;
  *(&v102 + 1) = v40;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v46 = v78;
  v47 = v81;
  sub_26F180254();

  (*(v82 + 8))(v41, v47);
  v48 = v76;
  sub_26F158FA4(v76, v43, v100);
  v49 = v75;
  v50 = swift_allocObject();
  sub_26F158884(v43, v50 + v49);
  *&v101 = v47;
  *(&v101 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v51 = v84;
  sub_26F1802B4();

  (*(v85 + 8))(v46, v51);
  v52 = sub_26F180544();
  v53 = v90;
  *v90 = v52;
  *(v53 + 8) = v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B48, &qword_26F182928);
  sub_26F155ABC(v48, v83, v53 + *(v55 + 44));
  v56 = *(v48 + *(v89 + 52));
  type metadata accessor for TrainingManager();
  sub_26F13AC54(&qword_2806D4B50, &qword_2806D4AB0, &qword_26F1828D0);
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  v57 = v91;
  sub_26F180244();
  sub_26F13AB10(v53, &qword_2806D4AB0, &qword_26F1828D0);
  sub_26F17F9C4();
  sub_26F17F9C4();
  sub_26F180564();
  sub_26F17F9A4();
  v58 = &v57[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B58, &qword_26F182930) + 36)];
  v59 = v102;
  *v58 = v101;
  *(v58 + 1) = v59;
  *(v58 + 2) = v103;
  v60 = v96;
  sub_26F158FA4(v48, v96, v100);
  v61 = swift_allocObject();
  sub_26F158884(v60, v61 + v49);
  v62 = &v57[*(v93 + 44)];
  v63 = v57;
  *v62 = 0;
  *(v62 + 1) = 0;
  *(v62 + 2) = sub_26F15A1AC;
  *(v62 + 3) = v61;
  v64 = v87;
  v65 = *(v87 + 16);
  v66 = v86;
  v67 = v99;
  v68 = v88;
  v65(v86, v99, v88);
  v69 = v94;
  sub_26F158ECC(v63, v94);
  v70 = v95;
  v65(v95, v66, v68);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B60, &qword_26F182938);
  sub_26F158ECC(v69, &v70[*(v71 + 48)]);
  sub_26F158F3C(v63);
  v72 = *(v64 + 8);
  v72(v67, v68);
  sub_26F158F3C(v69);
  return (v72)(v66, v68);
}

uint64_t sub_26F155ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for InstructionView();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = (&v26 - v11);
  v13 = (a1 + *(type metadata accessor for TipsTryItView() + 36));
  v14 = *v13;
  v15 = v13[1];
  v32[0] = v14;
  v32[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180434();
  v16 = v33[0];
  v17 = v33[1];
  v18 = *&v33[2];
  type metadata accessor for TrainingManager();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  v19 = sub_26F17F914();
  sub_26F167438(v19, v20 & 1, v16, v17, v12, v18);
  v21 = sub_26F180564();
  v23 = v22;
  sub_26F155DDC(a1, a2, v33);
  memcpy(v29, v33, sizeof(v29));
  memcpy(v30, v33, 0x160uLL);
  sub_26F13A854(v29, v32, &qword_2806D4B68, &qword_26F182940);
  sub_26F13AB10(v30, &qword_2806D4B68, &qword_26F182940);
  memcpy(v28, v29, sizeof(v28));
  LOBYTE(a2) = sub_26F180014();
  v27 = v10;
  sub_26F158FA4(v12, v10, type metadata accessor for InstructionView);
  sub_26F158FA4(v10, a3, type metadata accessor for InstructionView);
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4B70, &qword_26F182948) + 48);
  v32[0] = v21;
  v32[1] = v23;
  memcpy(&v32[2], v28, 0x160uLL);
  LOBYTE(v32[46]) = a2;
  *(&v32[46] + 1) = *v31;
  HIDWORD(v32[46]) = *&v31[3];
  v32[47] = 0xBFF0000000000000;
  memcpy((a3 + v24), v32, 0x180uLL);
  sub_26F13A854(v32, v33, &qword_2806D4B78, &qword_26F182950);
  sub_26F15900C(v12);
  v33[0] = v21;
  v33[1] = v23;
  memcpy(&v33[2], v28, 0x160uLL);
  v34 = a2;
  *v35 = *v31;
  *&v35[3] = *&v31[3];
  v36 = 0xBFF0000000000000;
  sub_26F13AB10(v33, &qword_2806D4B78, &qword_26F182950);
  return sub_26F15900C(v27);
}

uint64_t sub_26F155DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v33 = a2;
  v37 = a3;
  v38 = sub_26F17F9E4();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v31 = v6;
  v32 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TipsTryItView();
  v8 = v7 - 8;
  v30 = *(v7 - 8);
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for TrainingManager();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  v36 = sub_26F17F914();
  v29 = v11;
  v12 = *(v8 + 52);
  v34 = a1;
  v13 = *(a1 + v12);
  swift_getKeyPath();
  *&v75 = v13;
  sub_26F17F7C4();

  if (*(v13 + 48) == 1)
  {
    swift_getKeyPath();
    *&v75 = v13;
    sub_26F17F7C4();

    v14 = *(v13 + 50);
  }

  else
  {
    v14 = 0;
  }

  KeyPath = swift_getKeyPath();
  v35 = swift_allocObject();
  *(v35 + 16) = v14;
  v15 = v34;
  sub_26F158FA4(v34, &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for TipsTryItView);
  v16 = v32;
  v17 = v38;
  (*(v4 + 16))(v32, v33, v38);
  v18 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v19 = (v9 + *(v4 + 80) + v18) & ~*(v4 + 80);
  v20 = swift_allocObject();
  sub_26F158884(v10, v20 + v18);
  (*(v4 + 32))(v20 + v19, v16, v17);
  v21 = sub_26F180564();
  v32 = v21;
  v38 = v22;
  v78 = v29 & 1;
  LOBYTE(v17) = v29 & 1;
  LODWORD(v33) = v29 & 1;
  v23 = sub_26F17FD74();
  LOBYTE(v40) = 1;
  sub_26F1569D4(v15, &v75);
  v64 = *&v76[176];
  v65 = *&v76[192];
  v66 = *&v76[208];
  v67 = *&v76[224];
  v60 = *&v76[112];
  v61 = *&v76[128];
  v62 = *&v76[144];
  v63 = *&v76[160];
  v56 = *&v76[48];
  v57 = *&v76[64];
  v58 = *&v76[80];
  v59 = *&v76[96];
  v52 = v75;
  v53 = *v76;
  v54 = *&v76[16];
  v55 = *&v76[32];
  v68[12] = *&v76[176];
  v68[13] = *&v76[192];
  v68[14] = *&v76[208];
  v68[15] = *&v76[224];
  v68[8] = *&v76[112];
  v68[9] = *&v76[128];
  v68[10] = *&v76[144];
  v68[11] = *&v76[160];
  v68[4] = *&v76[48];
  v68[5] = *&v76[64];
  v68[6] = *&v76[80];
  v68[7] = *&v76[96];
  v68[0] = v75;
  v68[1] = *v76;
  v68[2] = *&v76[16];
  v68[3] = *&v76[32];
  sub_26F13A854(&v52, v74, &qword_2806D4B80, &qword_26F1829B0);
  sub_26F13AB10(v68, &qword_2806D4B80, &qword_26F1829B0);
  *&v51[199] = v64;
  *&v51[215] = v65;
  *&v51[231] = v66;
  *&v51[247] = v67;
  *&v51[135] = v60;
  *&v51[151] = v61;
  *&v51[167] = v62;
  *&v51[183] = v63;
  *&v51[71] = v56;
  *&v51[87] = v57;
  *&v51[103] = v58;
  *&v51[119] = v59;
  *&v51[7] = v52;
  *&v51[23] = v53;
  *&v51[39] = v54;
  *&v51[55] = v55;
  v24 = v40;
  v25 = v36;
  *&v69 = v36;
  BYTE8(v69) = v17;
  HIDWORD(v69) = *&v77[3];
  *(&v69 + 9) = *v77;
  *&v70 = KeyPath;
  *(&v70 + 1) = sub_26F1590D8;
  v26 = v35;
  *&v71 = v35;
  *(&v71 + 1) = sub_26F159480;
  *&v72 = v20;
  *(&v72 + 1) = v21;
  v73 = v38;
  *&v50[4] = v38;
  v50[2] = v71;
  v50[3] = v72;
  v50[0] = v69;
  v50[1] = v70;
  v74[0] = v23;
  v74[1] = 0;
  LOBYTE(v74[2]) = v40;
  memcpy(&v74[2] + 1, v51, 0x107uLL);
  memcpy(&v50[4] + 8, v74, 0x118uLL);
  memcpy(v37, v50, 0x160uLL);
  v75 = v23;
  v76[0] = v24;
  memcpy(&v76[1], v51, 0x107uLL);
  sub_26F13A854(&v69, &v40, &qword_2806D4B88, &qword_26F1829B8);
  sub_26F13A854(v74, &v40, &qword_2806D4B90, &qword_26F1829C0);
  sub_26F13AB10(&v75, &qword_2806D4B90, &qword_26F1829C0);
  v40 = v25;
  v41 = v33;
  *v42 = *v77;
  *&v42[3] = *&v77[3];
  v43 = KeyPath;
  v44 = sub_26F1590D8;
  v45 = v26;
  v46 = sub_26F159480;
  v47 = v20;
  v48 = v32;
  v49 = v38;
  return sub_26F13AB10(&v40, &qword_2806D4B88, &qword_26F1829B8);
}

uint64_t sub_26F1564A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v27 = a1;
  v6 = sub_26F17F9E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = type metadata accessor for TipsTryItView();
  v24 = *(v13 - 8);
  v14 = *(v24 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_26F180354();
  sub_26F158FA4(a2, v15, type metadata accessor for TipsTryItView);
  v16 = *(v7 + 16);
  v16(v12, v26, v6);
  v16(v10, v27, v6);
  v17 = (*(v24 + 80) + 16) & ~*(v24 + 80);
  v18 = *(v7 + 80);
  v19 = (v14 + v18 + v17) & ~v18;
  v20 = (v8 + v18 + v19) & ~v18;
  v21 = swift_allocObject();
  sub_26F158884(v15, v21 + v17);
  v22 = *(v7 + 32);
  v22(v21 + v19, v12, v6);
  result = (v22)(v21 + v20, v10, v6);
  *a4 = v25;
  a4[1] = sub_26F15A080;
  a4[2] = v21;
  a4[3] = 0;
  a4[4] = 0;
  return result;
}

uint64_t sub_26F156708(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = sub_26F17FE54();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F17FE64();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for TipsTryItView();
  v14 = result;
  v15 = *(a1 + *(result + 44));
  MinY = *(v15 + 64);
  if (MinY != 0.0)
  {
    if (MinY <= 0.0)
    {
      sub_26F17FEA4();
      sub_26F17F9D4();
      v18 = v17;
      v20 = v19;
      v22 = v21;
      v24 = v23;
      (*(v9 + 8))(v12, v8);
      v45.origin.x = v18;
      v45.origin.y = v20;
      v45.size.width = v22;
      v45.size.height = v24;
      MinY = CGRectGetMinY(v45);
    }

    sub_26F17F9B4();
    v25 = (a1 + *(v14 + 36));
    v26 = *v25;
    v27 = v25[1];
    v42 = MinY - v28;
    v43 = v26;
    v44 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    result = sub_26F180424();
  }

  if (*(v15 + 56) != 0.0)
  {
    sub_26F17FE94();
    sub_26F17F9D4();
    v30 = v29;
    v32 = v31;
    v34 = v33;
    v36 = v35;
    (*(v4 + 8))(v7, v3);
    v46.origin.x = v30;
    v46.origin.y = v32;
    v46.size.width = v34;
    v46.size.height = v36;
    MaxY = CGRectGetMaxY(v46);
    v38 = (a1 + *(v14 + 40));
    v39 = *v38;
    v40 = v38[1];
    v42 = MaxY * 0.5 - *(v15 + 56);
    v43 = v39;
    v44 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
    return sub_26F180424();
  }

  return result;
}

uint64_t sub_26F1569D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v92 = sub_26F17FE84();
  v101 = *(v92 - 8);
  v4 = *(v101 + 64);
  MEMORY[0x28223BE20](v92);
  v86 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v6 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v91 = &v85 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v87 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v99 = &v85 - v13;
  MEMORY[0x28223BE20](v12);
  v100 = &v85 - v14;
  KeyPath = sub_26F17FD64();
  v15 = *(KeyPath - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](KeyPath);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v85 - v20;
  v22 = type metadata accessor for TipsTryItView();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  sub_26F158FA4(a1, &v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TipsTryItView);
  v25 = (*(v23 + 80) + 16) & ~*(v23 + 80);
  v98 = swift_allocObject();
  sub_26F158884(&v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0), v98 + v25);
  type metadata accessor for TrainingManager();
  v103 = sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  *&v97 = COERCE_DOUBLE(sub_26F17F914());
  v27 = v26;
  v102 = v22;
  v28 = *(v22 + 40);
  v29 = a1;
  v30 = a1 + v28;
  v32 = *(v30 + 8);
  v122 = *v30;
  v31 = v122;
  v123 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  sub_26F180554();
  sub_26F17FB44();
  v96 = v27 & 1;
  v155 = v27 & 1;
  v33 = v29;
  sub_26F1537D4(v21);
  v34 = KeyPath;
  (*(v15 + 104))(v19, *MEMORY[0x277CE0278], KeyPath);
  v93 = sub_26F159864(v21, v19);
  v35 = *(v15 + 8);
  v35(v19, v34);
  v35(v21, v34);
  KeyPath = swift_getKeyPath();
  v94 = sub_26F180034();
  v122 = v31;
  v123 = v32;
  sub_26F180414();
  v36 = v33;
  if (*&v107 <= 0.0 || (v37 = *(v102 + 28), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868), sub_26F17F944(), v122 <= 0.0))
  {
    v88 = v33;
    v89 = a2;
    v38 = v100;
    sub_26F15340C(v100);
    v39 = v101;
    v40 = v99;
    v41 = v92;
    (*(v101 + 104))(v99, *MEMORY[0x277CE0558], v92);
    (*(v39 + 56))(v40, 0, 1, v41);
    v42 = v91;
    v43 = *(v90 + 48);
    sub_26F13A854(v38, v91, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v40, v42 + v43, &qword_2806D4200, &qword_26F181B88);
    v44 = *(v39 + 48);
    if (v44(v42, 1, v41) == 1)
    {
      sub_26F13AB10(v40, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v38, &qword_2806D4200, &qword_26F181B88);
      v45 = v44(v42 + v43, 1, v41);
      v36 = v88;
      a2 = v89;
      if (v45 == 1)
      {
        sub_26F13AB10(v42, &qword_2806D4200, &qword_26F181B88);
        goto LABEL_12;
      }
    }

    else
    {
      v46 = v87;
      sub_26F13A854(v42, v87, &qword_2806D4200, &qword_26F181B88);
      if (v44(v42 + v43, 1, v41) != 1)
      {
        v47 = v101;
        v48 = v86;
        (*(v101 + 32))(v86, v42 + v43, v41);
        sub_26F159C8C(&qword_2806D4318, MEMORY[0x277CE0570]);
        sub_26F1806F4();
        v49 = *(v47 + 8);
        v49(v48, v41);
        sub_26F13AB10(v99, &qword_2806D4200, &qword_26F181B88);
        sub_26F13AB10(v100, &qword_2806D4200, &qword_26F181B88);
        v49(v46, v41);
        sub_26F13AB10(v42, &qword_2806D4200, &qword_26F181B88);
        v36 = v88;
        a2 = v89;
        goto LABEL_12;
      }

      sub_26F13AB10(v99, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v100, &qword_2806D4200, &qword_26F181B88);
      (*(v101 + 8))(v46, v41);
      v36 = v88;
      a2 = v89;
    }

    sub_26F13AB10(v42, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_12;
  }

  v122 = v31;
  v123 = v32;
  sub_26F180414();
  sub_26F17F944();
LABEL_12:
  sub_26F17F894();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v156 = 0;
  v58 = *(v36 + *(v102 + 44));
  swift_getKeyPath();
  v122 = v58;
  sub_26F17F7C4();

  if (*(*&v58 + 53) != 1 || (v59 = 1.0, (sub_26F15AF20() & 1) == 0))
  {
    v59 = 0.0;
  }

  if (v93)
  {
    v60 = 0.5;
  }

  else
  {
    v60 = 1.0;
  }

  v61 = sub_26F1805C4();
  swift_getKeyPath();
  v122 = v58;
  sub_26F17F7C4();

  v62 = *(*&v58 + 53) == 0;
  v63 = 0.0;
  v106 = 1;
  if (!v62)
  {
    v63 = 1.0;
  }

  v64 = *&v97;
  *&v107 = v97;
  v65 = v96;
  BYTE8(v107) = v96;
  *(&v107 + 9) = *v154;
  HIDWORD(v107) = *&v154[3];
  v66 = v151;
  v67 = v152;
  v113 = v151;
  v114 = v152;
  v68 = v153;
  v115 = v153;
  v69 = v147;
  v70 = v148;
  v109 = v147;
  v110 = v148;
  v71 = v150;
  v72 = v149;
  v112 = v150;
  v111 = v149;
  v73 = KeyPath;
  *&v116 = KeyPath;
  *(&v116 + 1) = v60;
  v74 = v94;
  LOBYTE(v117) = v94;
  DWORD1(v117) = *&v157[3];
  *(&v117 + 1) = *v157;
  *(&v117 + 1) = v51;
  *&v118 = v53;
  *(&v118 + 1) = v55;
  *&v119 = v57;
  BYTE8(v119) = 0;
  *(&v119 + 9) = v158[0];
  HIDWORD(v119) = *(v158 + 3);
  *&v120 = v59;
  *(&v120 + 1) = v61;
  *&v105[183] = v118;
  *&v105[215] = v120;
  *&v105[199] = v119;
  *&v105[119] = v152;
  *&v105[135] = v153;
  *&v105[151] = v116;
  *&v105[167] = v117;
  *&v105[55] = v148;
  *&v105[71] = v149;
  *&v108 = sub_26F159860;
  v75 = v98;
  *(&v108 + 1) = v98;
  *&v105[87] = v150;
  *&v105[103] = v151;
  *&v105[7] = v107;
  *&v121 = v63;
  *(&v121 + 1) = 0x4000000000000000;
  *&v105[23] = v108;
  *&v105[39] = v147;
  *&v105[231] = v121;
  v76 = *&v105[208];
  *(a2 + 201) = *&v105[192];
  *(a2 + 217) = v76;
  *(a2 + 233) = *&v105[224];
  v77 = *&v105[144];
  *(a2 + 137) = *&v105[128];
  *(a2 + 153) = v77;
  v78 = *&v105[176];
  *(a2 + 169) = *&v105[160];
  *(a2 + 185) = v78;
  v79 = *&v105[80];
  *(a2 + 73) = *&v105[64];
  *(a2 + 89) = v79;
  v80 = *&v105[112];
  *(a2 + 105) = *&v105[96];
  *(a2 + 121) = v80;
  v81 = *&v105[16];
  *(a2 + 9) = *v105;
  *(a2 + 25) = v81;
  v82 = *&v105[48];
  *(a2 + 41) = *&v105[32];
  *(a2 + 57) = v82;
  v130 = v66;
  v131 = v67;
  v132 = v68;
  v126 = v69;
  v127 = v70;
  v83 = v106;
  *a2 = 0;
  *(a2 + 8) = v83;
  *(a2 + 248) = *&v105[239];
  v122 = v64;
  LOBYTE(v123) = v65;
  *(&v123 + 1) = *v154;
  HIDWORD(v123) = *&v154[3];
  v124 = sub_26F159860;
  v125 = v75;
  v129 = v71;
  v128 = v72;
  v133 = v73;
  v134 = v60;
  v135 = v74;
  *&v136[3] = *&v157[3];
  *v136 = *v157;
  v137 = v51;
  v138 = v53;
  v139 = v55;
  v140 = v57;
  v141 = 0;
  *v142 = v158[0];
  *&v142[3] = *(v158 + 3);
  v143 = v59;
  v144 = v61;
  v145 = v63;
  v146 = 0x4000000000000000;
  sub_26F13A854(&v107, &v104, &qword_2806D4B98, &qword_26F182A48);
  return sub_26F13AB10(&v122, &qword_2806D4B98, &qword_26F182A48);
}

uint64_t sub_26F1576FC(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for TipsTryItView() + 44));
  if (*(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask))
  {
    v2 = *(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask);

    sub_26F180924();
  }

  sub_26F15CAF4();
  return sub_26F15C7B0();
}

uint64_t sub_26F157774(uint64_t a1)
{
  v2 = sub_26F17FB04();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo");
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  sub_26F1535EC(&v10 - v6);
  MEMORY[0x27438A090](v4);
  sub_26F17FAF4();
  sub_26F180484();
  sub_26F13AB10(v7, &qword_2806D4A68, "Vo");
  v8 = *(a1 + *(type metadata accessor for TipsTryItView() + 44));
  return sub_26F15D704();
}

uint64_t sub_26F1578A8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F1803B4();
  sub_26F180084();
  sub_26F1800C4();
  v3 = sub_26F1800E4();

  result = swift_getKeyPath();
  *a1 = v2;
  a1[1] = result;
  a1[2] = v3;
  return result;
}

uint64_t sub_26F15791C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v2 = sub_26F17FEF4();
  v3 = *(v2 - 8);
  v22 = v2;
  v23 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F0, &qword_26F1827D8);
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v21);
  v10 = v20 - v9;
  v25 = v1;
  v20[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49F8, &qword_26F1827E0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A00, &qword_26F1827E8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A08, &qword_26F1827F0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A10, &qword_26F1827F8);
  v14 = sub_26F13AC54(&qword_2806D4A18, &qword_2806D4A08, &qword_26F1827F0);
  v15 = sub_26F13AC54(&qword_2806D4A20, &qword_2806D4A10, &qword_26F1827F8);
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v11;
  v27 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_26F17FA74();
  sub_26F17FEE4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0]);
  v18 = v21;
  v17 = v22;
  sub_26F1801D4();
  (*(v23 + 8))(v6, v17);
  return (*(v7 + 8))(v10, v18);
}

uint64_t sub_26F157C5C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_26F157D2C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F159C8C(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 40);
}

uint64_t sub_26F157DD8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26F15A524(v4);
}

uint64_t sub_26F157E4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_26F13A854(a1, &v6 - v4, &qword_2806D4200, &qword_26F181B88);
  return sub_26F17FC04();
}

uint64_t type metadata accessor for TipsTryItView()
{
  result = qword_2806D4A50;
  if (!qword_2806D4A50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F157FD4(uint64_t a1)
{
  v2 = sub_26F17FD64();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_26F17FB84();
}

unint64_t sub_26F1580A0()
{
  result = qword_2806D49E8;
  if (!qword_2806D49E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D49E8);
  }

  return result;
}

uint64_t sub_26F158140(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_26F15A524(v4);
}

uint64_t sub_26F1581A4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A38, &qword_26F182858);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A40, &qword_26F182860);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = *(a1 + a3[11]);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  return (v17 + 1);
}

uint64_t sub_26F158384(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A38, &qword_26F182858);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A40, &qword_26F182860);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[11]) = (a2 - 1);
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

void sub_26F15854C()
{
  sub_26F158698(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88);
  if (v0 <= 0x3F)
  {
    sub_26F158698(319, &qword_2806D4A60, &qword_2806D4A68, "Vo");
    if (v1 <= 0x3F)
    {
      sub_26F1586EC();
      if (v2 <= 0x3F)
      {
        sub_26F158744();
        if (v3 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4210);
          if (v4 <= 0x3F)
          {
            sub_26F13FF30(319, &unk_2806D4218);
            if (v5 <= 0x3F)
            {
              type metadata accessor for TrainingManager();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F158698(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_26F17F904();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_26F1586EC()
{
  if (!qword_2806D4A70)
  {
    sub_26F17FD64();
    v0 = sub_26F17F904();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4A70);
    }
  }
}

void sub_26F158744()
{
  if (!qword_2806D4A78)
  {
    sub_26F1580A0();
    v0 = sub_26F17F954();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4A78);
    }
  }
}

uint64_t sub_26F1587A0()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D49F0, &qword_26F1827D8);
  sub_26F17FEF4();
  sub_26F13AC54(&qword_2806D4A28, &qword_2806D49F0, &qword_26F1827D8);
  sub_26F159C8C(&qword_2806D4A30, MEMORY[0x277CDE2A0]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F158884(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsTryItView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1588E8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TipsTryItView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F154ED8(a1, v6, a2);
}

uint64_t sub_26F158968()
{
  v1 = *(type metadata accessor for TipsTryItView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F157774(v2);
}

unint64_t sub_26F1589C8()
{
  result = qword_2806D4A88;
  if (!qword_2806D4A88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4A80, &qword_26F182888);
    sub_26F13AC54(&qword_2806D4A90, &qword_2806D4A98, &qword_26F183110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4A88);
  }

  return result;
}

uint64_t sub_26F158A80@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FC34();
  *a1 = result;
  return result;
}

uint64_t sub_26F158AAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FC34();
  *a1 = result;
  return result;
}

uint64_t sub_26F158AD8(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F17FC44();
}

uint64_t sub_26F158B04(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F17FC44();
}

uint64_t sub_26F158B30()
{
  v1 = type metadata accessor for TipsTryItView();
  v2 = *(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)) + *(v1 + 44));
  return sub_26F15C2EC(1);
}

unint64_t sub_26F158B98()
{
  result = qword_2806D4AF0;
  if (!qword_2806D4AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4AE8, &qword_26F182900);
    sub_26F158C50();
    sub_26F13AC54(&qword_2806D4658, &qword_2806D4660, &qword_26F182178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4AF0);
  }

  return result;
}

unint64_t sub_26F158C50()
{
  result = qword_2806D4AF8;
  if (!qword_2806D4AF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B00, &qword_26F182908);
    sub_26F158D08();
    sub_26F13AC54(&qword_2806D4B30, &qword_2806D4B38, &qword_26F182920);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4AF8);
  }

  return result;
}

unint64_t sub_26F158D08()
{
  result = qword_2806D4B08;
  if (!qword_2806D4B08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B10, &qword_26F182910);
    sub_26F158D94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B08);
  }

  return result;
}

unint64_t sub_26F158D94()
{
  result = qword_2806D4B18;
  if (!qword_2806D4B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4B20, &qword_26F182918);
    sub_26F158E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B18);
  }

  return result;
}

unint64_t sub_26F158E20()
{
  result = qword_2806D4B28;
  if (!qword_2806D4B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4B28);
  }

  return result;
}

uint64_t sub_26F158ECC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F158F3C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4AB8, &qword_26F1828D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F158FA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F15900C(uint64_t a1)
{
  v2 = type metadata accessor for InstructionView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F159070@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC54();
  *a1 = result & 1;
  return result;
}

uint64_t sub_26F1590F0()
{
  v1 = type metadata accessor for TipsTryItView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v29 = *(*(v1 - 1) + 64);
  v4 = sub_26F17F9E4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v30 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = &v7[v1[5]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v11 + 1);

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v16 = sub_26F17FB04();
    (*(*(v16 - 8) + 8))(&v11[v15], v16);
  }

  v17 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26F17FD64();
    (*(*(v18 - 8) + 8))(&v7[v17], v18);
  }

  else
  {
    v19 = *&v7[v17];
  }

  v20 = v2 | v6;
  v21 = (v3 + v29 + v6) & ~v6;
  v22 = v1[7];
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v23 - 8) + 8))(&v7[v22], v23);
  v24 = *&v7[v1[8] + 8];

  v25 = *&v7[v1[9] + 8];

  v26 = *&v7[v1[10] + 8];

  v27 = *&v7[v1[11]];

  (*(v5 + 8))(v0 + v21, v4);

  return MEMORY[0x2821FE8E8](v0, v21 + v30, v20 | 7);
}

uint64_t sub_26F159480@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TipsTryItView() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_26F17F9E4() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_26F1564A8(a1, v2 + v6, v9, a2);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for TipsTryItView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = &v5[v1[5]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v11 = *v9;

  if (EnumCaseMultiPayload == 1)
  {
    v12 = *(v9 + 1);

    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v14 = sub_26F17FB04();
    (*(*(v14 - 8) + 8))(&v9[v13], v14);
  }

  v15 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = sub_26F17FD64();
    (*(*(v16 - 8) + 8))(&v5[v15], v16);
  }

  else
  {
    v17 = *&v5[v15];
  }

  v18 = v1[7];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v19 - 8) + 8))(&v5[v18], v19);
  v20 = *&v5[v1[8] + 8];

  v21 = *&v5[v1[9] + 8];

  v22 = *&v5[v1[10] + 8];

  v23 = *&v5[v1[11]];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

BOOL sub_26F159864(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = sub_26F17FD64();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = *MEMORY[0x277CE0268];
  if (v13 != *MEMORY[0x277CE0268])
  {
    if (v13 == *MEMORY[0x277CE0298])
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE02A0])
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == *MEMORY[0x277CE0290])
    {
      goto LABEL_7;
    }

    if (v13 == *MEMORY[0x277CE0260])
    {
      v14 = 4;
    }

    else if (v13 == *MEMORY[0x277CE0270])
    {
      v14 = 5;
    }

    else if (v13 == *MEMORY[0x277CE0248])
    {
      v14 = 6;
    }

    else if (v13 == *MEMORY[0x277CE0280])
    {
      v14 = 7;
    }

    else if (v13 == *MEMORY[0x277CE0278])
    {
      v14 = 8;
    }

    else if (v13 == *MEMORY[0x277CE0288])
    {
      v14 = 9;
    }

    else if (v13 == *MEMORY[0x277CE0250])
    {
      v14 = 10;
    }

    else
    {
      if (v13 != *MEMORY[0x277CE0258])
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  v11(v8, v20, v3);
  v16 = v12(v8, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == *MEMORY[0x277CE0298])
  {
    v17 = 1;
  }

  else if (v16 == *MEMORY[0x277CE02A0])
  {
    v17 = 2;
  }

  else
  {
    if (v16 != *MEMORY[0x277CE0290])
    {
      if (v16 == *MEMORY[0x277CE0260])
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0270])
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0248])
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0280])
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0278])
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0288])
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0250])
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == *MEMORY[0x277CE0258])
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v8, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

uint64_t sub_26F159C8C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F159CD4()
{
  v1 = type metadata accessor for TipsTryItView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v31 = sub_26F17F9E4();
  v5 = *(v31 - 8);
  v6 = *(v5 + 80);
  v32 = *(v5 + 64);
  v7 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_26F17FE84();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v0 + v3, 1, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }
  }

  else
  {
    v10 = *v7;
  }

  v11 = &v7[v1[5]];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(v11 + 1);

    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A68, "Vo") + 32);
    v16 = sub_26F17FB04();
    (*(*(v16 - 8) + 8))(&v11[v15], v16);
  }

  v17 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = sub_26F17FD64();
    (*(*(v18 - 8) + 8))(&v7[v17], v18);
  }

  else
  {
    v19 = *&v7[v17];
  }

  v20 = (v3 + v4 + v6) & ~v6;
  v21 = (v32 + v6 + v20) & ~v6;
  v22 = v2 | v6;
  v23 = v1[7];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4A48, &qword_26F182868);
  (*(*(v24 - 8) + 8))(&v7[v23], v24);
  v25 = *&v7[v1[8] + 8];

  v26 = *&v7[v1[9] + 8];

  v27 = *&v7[v1[10] + 8];

  v28 = *&v7[v1[11]];

  v29 = *(v5 + 8);
  v29(v0 + v20, v31);
  v29(v0 + v21, v31);

  return MEMORY[0x2821FE8E8](v0, v21 + v32, v22 | 7);
}

uint64_t sub_26F15A080()
{
  v1 = *(type metadata accessor for TipsTryItView() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_26F17F9E4() - 8);
  v5 = *(v4 + 80);
  v6 = (v2 + v3 + v5) & ~v5;
  v7 = v0 + ((*(v4 + 64) + v5 + v6) & ~v5);

  return sub_26F156708(v0 + v2, v0 + v6);
}

uint64_t sub_26F15A1B4()
{
  swift_getKeyPath();
  v4 = v0;
  sub_26F15E0CC();
  sub_26F17F7C4();

  v2 = *(v0 + 16);
  v1 = *(v4 + 24);

  return v2;
}

uint64_t sub_26F15A234(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (v6 = *(v2 + 24), (sub_26F180B44() & 1) != 0))
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }
}

uint64_t sub_26F15A364()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 32);
}

uint64_t sub_26F15A3D4(uint64_t result)
{
  if (*(v1 + 32) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A4B0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v1 = *(v0 + 40);
}

uint64_t sub_26F15A524(uint64_t result)
{
  v2 = *(v1 + 40);
  v3 = *(v2 + 16);
  if (v3 == *(result + 16))
  {
    if (v3)
    {
      v4 = v2 == result;
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
LABEL_10:
      *(v1 + 40) = result;
    }

    else
    {
      v5 = (v2 + 32);
      v6 = (result + 32);
      while (v3)
      {
        if (*v5 != *v6)
        {
          goto LABEL_13;
        }

        ++v5;
        ++v6;
        if (!--v3)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_13:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A678()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 48);
}

uint64_t sub_26F15A6E8(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A7D0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 49);
}

uint64_t sub_26F15A840(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15A920()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 50);
}

uint64_t sub_26F15A990(uint64_t result)
{
  if (*(v1 + 50) == (result & 1))
  {
    *(v1 + 50) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AA78()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 51);
}

uint64_t sub_26F15AAE8(uint64_t result)
{
  if (*(v1 + 51) == (result & 1))
  {
    *(v1 + 51) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15ABD0()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 52);
}

uint64_t sub_26F15AC40(uint64_t result)
{
  if (*(v1 + 52) == (result & 1))
  {
    *(v1 + 52) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AD28()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  return *(v0 + 53);
}

uint64_t sub_26F15AD98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  *a2 = *(v3 + 53);
  return result;
}

uint64_t sub_26F15AE38(uint64_t result)
{
  if (*(v1 + 53) == (result & 1))
  {
    *(v1 + 53) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  return result;
}

uint64_t sub_26F15AF20()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v1 = *(v0 + 32);
  swift_getKeyPath();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  if (v3 && v1 == *(v2 + 8 * v3 + 24))
  {
    v4 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_26F17F7C4();

    v4 = sub_26F15B034(*(v0 + 40), MEMORY[0x277D84F90]);
  }

  return v4 & 1;
}

uint64_t sub_26F15B034(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F15B090(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F15B0EC(char a1, int a2, int a3)
{
  v70 = a2;
  v71 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v60 = &v59 - v7;
  v8 = sub_26F17F6C4();
  v67 = *(v8 - 8);
  v68 = v8;
  v9 = *(v67 + 64);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_26F17F7A4();
  v62 = *(v69 - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](v69);
  v65 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v59 - v14;
  v16 = sub_26F180714();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v59 - v22;
  v24 = sub_26F17F6D4();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v63 = &v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask;
  v72 = v3;
  if (*(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask))
  {

    sub_26F180924();
  }

  v27 = v72;
  v28 = a1 & 1;
  if (*(v72 + 48) == (a1 & 1))
  {
    *(v72 + 48) = v28;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v64 = &v59;
    MEMORY[0x28223BE20](KeyPath);
    *(&v59 - 2) = v27;
    *(&v59 - 8) = v28;
    v73 = v27;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  sub_26F180704();
  sub_26F1427C4();
  v30 = sub_26F1809E4();
  v64 = 0;
  if (!v30)
  {
    v30 = [objc_opt_self() mainBundle];
  }

  v31 = v30;
  sub_26F17F794();
  v32 = *(v17 + 16);
  v33 = v21;
  v61 = v23;
  v34 = v16;
  v32(v33, v23, v16);
  v35 = v62;
  v36 = v69;
  (*(v62 + 16))(v65, v15, v69);
  v37 = [v31 bundleURL];
  v38 = v66;
  sub_26F17F714();

  (*(v67 + 104))(v38, *MEMORY[0x277CC9118], v68);
  sub_26F17F6E4();

  (*(v35 + 8))(v15, v36);
  (*(v17 + 8))(v61, v34);
  v39 = sub_26F180774();
  v40 = v72;
  sub_26F15A234(v39, v41);
  v42 = v40 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
  v43 = *(v40 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 56);
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;

  sub_26F15D9C8();
  v44 = *(v42 + 56);
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;

  if (*(v40 + 51))
  {
    v46 = swift_getKeyPath();
    MEMORY[0x28223BE20](v46);
    *(&v59 - 2) = v40;
    *(&v59 - 8) = 0;
    v73 = v40;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  else
  {
    *(v40 + 51) = 0;
  }

  v47 = v70 & 1;
  if (*(v40 + 50) == (v70 & 1))
  {
    *(v40 + 50) = v47;
    if ((v71 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v48 = swift_getKeyPath();
    MEMORY[0x28223BE20](v48);
    *(&v59 - 2) = v40;
    *(&v59 - 8) = v47;
    v73 = v40;
    sub_26F15E0CC();
    sub_26F17F7B4();

    if ((v71 & 1) == 0)
    {
LABEL_13:
      v49 = *(v42 + 64);
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (!v50)
      {
        *(v42 + 64) = v51;
        *(v42 + 88) = 1;
LABEL_18:
        v54 = sub_26F180914();
        v55 = v60;
        (*(*(v54 - 8) + 56))(v60, 1, 1, v54);
        v56 = swift_allocObject();
        v56[2] = 0;
        v56[3] = 0;
        v56[4] = v40;

        v57 = sub_26F1726AC(0, 0, v55, &unk_26F182C88, v56);
        v58 = *(v40 + v59);
        *(v40 + v59) = v57;
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  v52 = *(v42 + 72);
  v50 = __OFADD__(v52, 1);
  v53 = v52 + 1;
  if (!v50)
  {
    *(v42 + 72) = v53;
    *(v42 + 89) = 1;
    goto LABEL_18;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_26F15B884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26F180AA4();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F15B944, 0, 0);
}

uint64_t sub_26F15B944()
{
  v1 = *(v0 + 40);
  sub_26F180B84();
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26F15BA10;
  v3 = *(v0 + 40);

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F15BA10()
{
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v8 = *v1;
  *(*v1 + 56) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_26F15BBE8;
  }

  else
  {
    v6 = sub_26F15BB80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F15BB80()
{
  v1 = v0[2];
  sub_26F15C40C();
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26F15BBE8()
{
  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2._object = 0x800000026F184B20;
  v2._countAndFlagsBits = 0xD000000000000038;
  TryItLog.log(_:)(v2);

  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F15BCB8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v54 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = &v48 - v8;
  v61 = sub_26F17F6C4();
  v59 = *(v61 - 8);
  v9 = *(v59 + 64);
  MEMORY[0x28223BE20](v61);
  v57 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_26F17F7A4();
  v58 = *(v60 - 8);
  v11 = *(v58 + 64);
  v12 = MEMORY[0x28223BE20](v60);
  v56 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - v14;
  v16 = sub_26F180714();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v52 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v53 = &v48 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v48 - v23;
  v25 = sub_26F17F6D4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v55 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask))
  {

    sub_26F180924();
  }

  if (a2)
  {
    v28 = v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    v29 = *(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 56);
    *(v3 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 48) = xmmword_26F182A50;

    sub_26F15D9C8();
    v30 = *(v28 + 56);
    *(v28 + 48) = 0;
    *(v28 + 56) = 0;
  }

  swift_getKeyPath();
  v64 = v3;
  sub_26F15E0CC();
  sub_26F17F7C4();

  if ((*(v3 + 48) & 1) == 0)
  {
    v32 = a2 & 1;
    if (*(v4 + 49) == (a2 & 1))
    {
      *(v4 + 49) = v32;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      v48 = &v48;
      MEMORY[0x28223BE20](KeyPath);
      *(&v48 - 2) = v4;
      *(&v48 - 8) = v32;
      v64 = v4;
      sub_26F17F7B4();
    }

    v34 = *(v17 + 16);
    v34(v24, v54, v16);
    sub_26F1427C4();
    v35 = sub_26F1809E4();
    v51 = v17;
    if (!v35)
    {
      v35 = [objc_opt_self() mainBundle];
    }

    v36 = v35;
    sub_26F17F794();
    v49 = v16;
    v50 = v24;
    v34(v53, v24, v16);
    v37 = v58;
    v38 = v60;
    (*(v58 + 16))(v56, v15, v60);
    v39 = [v36 bundleURL];
    v40 = v57;
    sub_26F17F714();

    (*(v59 + 104))(v40, *MEMORY[0x277CC9118], v61);
    sub_26F17F6E4();

    (*(v37 + 8))(v15, v38);
    v41 = v51;
    v42 = *(v51 + 8);
    v43 = v49;
    v42(v50, v49);
    v44 = sub_26F180774();
    sub_26F15A234(v44, v45);
    v46 = v63;
    sub_26F15E1BC(v62, v63);
    if ((*(v41 + 48))(v46, 1, v43) == 1)
    {
      return sub_26F15E22C(v46);
    }

    else
    {
      v47 = v52;
      (*(v41 + 32))(v52, v46, v43);
      sub_26F15CC90(v47);
      return (v42)(v47, v43);
    }
  }

  return result;
}

uint64_t sub_26F15C2EC(char a1)
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(v1 + 49) == (a1 & 1))
    {
      *(v1 + 49) = a1 & 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      sub_26F17F7B4();
    }
  }

  return result;
}

uint64_t sub_26F15C40C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  swift_getKeyPath();

  sub_26F17F7C4();

  v3 = *(v2 + 16);
  if (!v3)
  {
LABEL_5:

    if (qword_2806D3FE8 != -1)
    {
      swift_once();
    }

    sub_26F180A74();
    MEMORY[0x27438A3F0](0xD000000000000038, 0x800000026F184AC0);
    swift_getKeyPath();
    sub_26F17F7C4();

    v16 = *(v1 + 32);
    v5 = sub_26F180784();
    MEMORY[0x27438A3F0](v5);

    MEMORY[0x27438A3F0](0xD000000000000012, 0x800000026F184B00);
    swift_getKeyPath();
    sub_26F17F7C4();

    v6 = *(v1 + 40);

    v8 = MEMORY[0x27438A4A0](v7, &type metadata for TryItLesson);
    v10 = v9;

    MEMORY[0x27438A3F0](v8, v10);

    v11._countAndFlagsBits = 0;
    v11._object = 0xE000000000000000;
    TryItLog.error(_:)(v11);
  }

  v4 = 0;
  while (*(v2 + 8 * v4 + 32) != *(v1 + 32))
  {
    if (v3 == ++v4)
    {
      goto LABEL_5;
    }
  }

  v13 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_getKeyPath();
  sub_26F17F7C4();

  if (v13 >= *(*(v1 + 40) + 16))
  {
    return result;
  }

  swift_getKeyPath();
  sub_26F17F7C4();

  if ((v13 & 0x8000000000000000) != 0)
  {
    goto LABEL_17;
  }

  v14 = *(v1 + 40);
  if (v13 >= *(v14 + 16))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  if (*(v1 + 32) != *(v14 + 8 * v13 + 32))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_26F17F7B4();
  }

  return sub_26F15C7B0();
}

uint64_t sub_26F15C7B0()
{
  v1 = sub_26F17F6D4();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 48))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v12 - 2) = v0;
    *(&v12 - 8) = 0;
    v13 = v0;
    sub_26F15E0CC();
    sub_26F17F7B4();

    if ((*(v0 + 49) & 1) == 0)
    {
LABEL_3:
      *(v0 + 49) = 0;
      goto LABEL_6;
    }
  }

  else
  {
    *(v0 + 48) = 0;
    if ((*(v0 + 49) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v6 = swift_getKeyPath();
  MEMORY[0x28223BE20](v6);
  *(&v12 - 2) = v0;
  *(&v12 - 8) = 0;
  v13 = v0;
  sub_26F15E0CC();
  sub_26F17F7B4();

LABEL_6:
  if (*(v0 + 51) == 1)
  {
    *(v0 + 51) = 1;
  }

  else
  {
    v7 = swift_getKeyPath();
    MEMORY[0x28223BE20](v7);
    *(&v12 - 2) = v0;
    *(&v12 - 8) = 1;
    v13 = v0;
    sub_26F15E0CC();
    sub_26F17F7B4();
  }

  swift_getKeyPath();
  v13 = v0;
  sub_26F15E0CC();
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v0 + 32), v4);
  v8 = sub_26F180774();
  result = sub_26F15A234(v8, v9);
  if (*(v0 + 53))
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    *(&v12 - 2) = v0;
    *(&v12 - 8) = 0;
    v13 = v0;
    sub_26F17F7B4();
  }

  else
  {
    *(v0 + 53) = 0;
  }

  return result;
}

uint64_t sub_26F15CAF4()
{
  swift_getKeyPath();
  sub_26F15E0CC();
  sub_26F17F7C4();

  v2 = *(v0 + 40);
  if (*(v2 + 16))
  {
    v3 = *(v2 + 32);
    swift_getKeyPath();
    sub_26F17F7C4();

    v4 = *(v0 + 32);
    swift_getKeyPath();
    sub_26F17F7C4();

    v5 = *(v0 + 40);
    v6 = *(v5 + 16);
    if (v6)
    {
      if (v4 == *(v5 + 8 * v6 + 24) && *(v0 + 32) != v3)
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        sub_26F17F7B4();
      }
    }
  }

  return result;
}

uint64_t sub_26F15CC90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v48 = &v41 - v4;
  v47 = sub_26F17F6C4();
  v45 = *(v47 - 8);
  v5 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_26F17F7A4();
  v7 = *(v46 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v46);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v41 - v12;
  v14 = sub_26F180714();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  v22 = sub_26F17F6D4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v42 = v15;
  v43 = &v41 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v15 + 16);
  v25(v21, a1, v14);
  sub_26F1427C4();
  v26 = sub_26F1809E4();
  if (!v26)
  {
    v26 = [objc_opt_self() mainBundle];
  }

  v27 = v26;
  sub_26F17F794();
  v25(v19, v21, v14);
  v28 = v46;
  (*(v7 + 16))(v11, v13, v46);
  v29 = [v27 bundleURL];
  v30 = v44;
  sub_26F17F714();

  (*(v45 + 104))(v30, *MEMORY[0x277CC9118], v47);
  sub_26F17F6E4();

  (*(v7 + 8))(v13, v28);
  (*(v42 + 8))(v21, v14);
  v31 = sub_26F180774();
  v33 = v32;
  v34 = sub_26F180914();
  v35 = v48;
  (*(*(v34 - 8) + 56))(v48, 1, 1, v34);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v37 = v49;
  v36[4] = v49;
  v36[5] = v31;
  v36[6] = v33;

  v38 = sub_26F1726AC(0, 0, v35, &unk_26F182B60, v36);
  v39 = *(v37 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask);
  *(v37 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask) = v38;
}

uint64_t sub_26F15D150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v7 = sub_26F180AA4();
  v6[5] = v7;
  v8 = *(v7 - 8);
  v6[6] = v8;
  v9 = *(v8 + 64) + 15;
  v6[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F15D214, 0, 0);
}

uint64_t sub_26F15D214()
{
  v1 = *(v0 + 56);
  sub_26F180B84();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_26F15D2E0;
  v3 = *(v0 + 56);

  return sub_26F14A55C(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_26F15D2E0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  v8 = *v1;
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_26F15D4D4;
  }

  else
  {
    v6 = sub_26F15D450;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F15D450()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  sub_26F15A234(v1, v2);
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F15D4D4()
{
  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2._object = 0x800000026F184A90;
  v2._countAndFlagsBits = 0xD00000000000002BLL;
  TryItLog.log(_:)(v2);

  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F15D5A4()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 40);
  v3 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 8);
  v4 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 16);
  v5 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 24);
  v15 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 32);
  v14 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  swift_getKeyPath();
  sub_26F15E0CC();

  sub_26F17F7C4();

  v16 = *(v0 + 32);
  v6 = sub_26F180B34();
  v8 = v7;
  type metadata accessor for TryItLaunchAnalyticsEvent();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD00000000000001BLL;
  *(v9 + 24) = 0x800000026F184B80;
  *&v11 = v14;
  *&v10 = v15;
  *(&v11 + 1) = v3;
  *(&v10 + 1) = v2;
  *(v9 + 32) = v11;
  *(v9 + 48) = v10;
  *(v9 + 64) = v4;
  *(v9 + 72) = v5;

  *(v9 + 80) = v6;
  *(v9 + 88) = v8;

  v12 = *(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager);
  sub_26F17B574(v9);
}

uint64_t sub_26F15D704()
{
  v1 = v0;
  v2 = sub_26F17F784();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17F774();
  sub_26F17F764();
  v8 = v7;
  result = (*(v3 + 8))(v6, v2);
  *&v10 = ceil(v8 / 60.0);
  if ((v10 & 0x7FFFFFFFFFFFFFFFLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*&v10 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (*&v10 < 9.22337204e18)
  {
    v11 = v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
    *(v11 + 80) = *&v10;
    v12 = *(v11 + 40);
    v13 = *(v11 + 8);
    v30 = *(v11 + 16);
    v14 = *(v11 + 24);
    v26 = v12;
    v27 = v14;
    *&v10 = *(v11 + 32);
    v29 = v10;
    *&v10 = *v11;
    v28 = v10;
    swift_getKeyPath();
    v31 = v1;
    sub_26F15E0CC();

    sub_26F17F7C4();

    v31 = *(v1 + 32);
    v15 = sub_26F180B34();
    v17 = v16;
    v25 = *(v11 + 64);
    v18 = *(v11 + 80);
    v19 = *(v11 + 88);
    LOBYTE(v14) = *(v11 + 89);
    LOBYTE(v12) = *(v11 + 90);
    LOBYTE(v11) = *(v11 + 91);
    type metadata accessor for TryItSessionAnalyticsEvent();
    v20 = swift_allocObject();
    *(v20 + 96) = v25;
    *(v20 + 112) = v18;
    *(v20 + 120) = v19;
    *(v20 + 121) = v14;
    *(v20 + 122) = v12;
    *(v20 + 123) = v11;
    *(v20 + 16) = 0xD00000000000001CLL;
    *(v20 + 24) = 0x800000026F184B60;
    *&v22 = v28;
    *&v21 = v29;
    *(&v22 + 1) = v13;
    *(&v21 + 1) = v26;
    *(v20 + 32) = v22;
    *(v20 + 48) = v21;
    v23 = v27;
    *(v20 + 64) = v30;
    *(v20 + 72) = v23;

    *(v20 + 80) = v15;
    *(v20 + 88) = v17;

    v24 = *(v1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager);
    sub_26F17B574(v20);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F15D9C8()
{
  v1 = (v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v2 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93);
  v3 = 0xEE00747865746572;
  v4 = 0x6F6D7463656C6573;
  if (v2 != 5)
  {
    v4 = 0;
  }

  v5 = v1[1];
  if (v2 != 5)
  {
    v3 = 0xE000000000000000;
  }

  v6 = v1[5];
  v28 = v1[4];
  v29 = *v1;
  v7 = 0xEB000000006D6F6FLL;
  v8 = 0x7A6F7468636E6970;
  v9 = v1[3];
  v27 = v1[2];
  if (v2 != 3)
  {
    v8 = 0x65747463656C6573;
    v7 = 0xEA00000000007478;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) > 4u)
  {
    v10 = v3;
  }

  else
  {
    v4 = v8;
    v10 = v7;
  }

  v11 = 0xE300000000000000;
  v12 = 7364980;
  v13 = 0xEC000000646C6F68;
  v14 = 0x646E616863756F74;
  if (v2 != 1)
  {
    v14 = 1734439524;
    v13 = 0xE400000000000000;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93))
  {
    v12 = v14;
    v11 = v13;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) <= 2u)
  {
    v15 = v12;
  }

  else
  {
    v15 = v4;
  }

  if (*(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 93) <= 2u)
  {
    v16 = v11;
  }

  else
  {
    v16 = v10;
  }

  v17 = v0;

  MEMORY[0x27438A3F0](v15, v16);

  v19 = v1[6];
  v18 = v1[7];
  type metadata accessor for TryItAttemptAnalyticsEvent();
  v20 = swift_allocObject();
  v21 = v20;
  if (v18)
  {
    v22 = v19;
  }

  else
  {
    v22 = 0;
  }

  *(v20 + 96) = v22;
  *(v20 + 104) = v18;
  *(v20 + 112) = v18 == 0;
  *(v20 + 16) = 0xD00000000000001CLL;
  *(v20 + 24) = 0x800000026F184A70;
  *&v24 = v28;
  *&v23 = v29;
  *(&v23 + 1) = v5;
  *(&v24 + 1) = v6;
  *(v20 + 32) = v23;
  *(v20 + 48) = v24;
  *(v20 + 64) = v27;
  *(v20 + 72) = v9;

  *(v21 + 80) = 0;
  *(v21 + 88) = 0xE000000000000000;

  v25 = *(v17 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager);
  sub_26F17B574(v21);
}

uint64_t sub_26F15DBE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  v3 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_startTime;
  v4 = sub_26F17F784();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager);

  v6 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 48);
  v13[2] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 32);
  v13[3] = v6;
  v14[0] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 64);
  *(v14 + 14) = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 78);
  v7 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 16);
  v13[0] = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v13[1] = v7;
  sub_26F15E3C0(v13);
  v8 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask);

  v9 = *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask);

  v10 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager___observationRegistrar;
  v11 = sub_26F17F7E4();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t sub_26F15DD04()
{
  sub_26F15DBE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TrainingManager()
{
  result = qword_2806D4BC8;
  if (!qword_2806D4BC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F15DDB0()
{
  result = sub_26F17F784();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = sub_26F17F7E4();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_26F15DEDC()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 32) = 0;
  *(v0 + 40) = v1;
  *(v0 + 48) = 0x10000;
  *(v0 + 52) = 0;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  sub_26F17F774();
  v2 = OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsManager;
  type metadata accessor for TryItAnalyticsManager();
  swift_allocObject();
  *(v0 + v2) = sub_26F17BCC8();
  v3 = v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys;
  *(v3 + 77) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *v3 = 0u;
  *(v3 + 93) = 6;
  *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_delayedInstructionTask) = 0;
  *(v0 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_presentNextLessonTask) = 0;
  sub_26F17F7D4();
  return v0;
}

uint64_t sub_26F15DFB4()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26F15DFFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F15E4A8;

  return sub_26F15D150(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_26F15E0CC()
{
  result = qword_2806D40F0;
  if (!qword_2806D40F0)
  {
    type metadata accessor for TrainingManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D40F0);
  }

  return result;
}

uint64_t sub_26F15E1BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F15E22C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F15E2AC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26F15E2EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F149E48;

  return sub_26F15B884(a1, v4, v5, v6);
}

uint64_t sub_26F15E414()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 40);
  *(v1 + 40) = *(v0 + 24);
}

uint64_t sub_26F15E450()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = *(v1 + 24);
  *(v1 + 16) = v0[3];
  *(v1 + 24) = v2;
}

uint64_t sub_26F15E530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F15E578(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_26F15E5E4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_26F17FC84();
  v20 = *(v6 - 8);
  v21 = v6;
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F1803C4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F1427C4();

  if (!sub_26F1809E4())
  {
    v15 = [objc_opt_self() mainBundle];
  }

  sub_26F1803F4();
  (*(v11 + 104))(v14, *MEMORY[0x277CE0FE0], v10);
  v16 = sub_26F1803E4();

  result = (*(v11 + 8))(v14, v10);
  if ((a2 & 1) == 0)
  {

    sub_26F180944();
    v18 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();
    sub_26F15E8A4(a1, 0);
    result = (*(v20 + 8))(v9, v21);
    LOBYTE(a1) = v22;
  }

  *a3 = v16;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  *(a3 + 17) = a1 & 1;
  return result;
}

uint64_t sub_26F15E88C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_26F15E5E4(*v1, *(v1 + 8), a1);
}

uint64_t sub_26F15E8A4(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_26F15E8B4()
{
  result = qword_2806D4BE0;
  if (!qword_2806D4BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4BE8, &unk_26F182DB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4BE0);
  }

  return result;
}

uint64_t sub_26F15E94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_26F15EA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = -a2;
  }

  return result;
}

uint64_t type metadata accessor for HapticTouchButtonView()
{
  result = qword_2806D4C08;
  if (!qword_2806D4C08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F15EB3C()
{
  sub_26F13FE74();
  if (v0 <= 0x3F)
  {
    sub_26F13FED8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_26F15EBDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F17FC84();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v16 - v11);
  sub_26F13A854(v2, &v16 - v11, &unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F140EA0(v12, a1);
  }

  v14 = *v12;
  sub_26F180944();
  v15 = sub_26F17FFE4();
  sub_26F17F884();

  sub_26F17FC74();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_26F15EDAC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for HapticTouchButtonView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F15EEFC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C60, &qword_26F182EB0);
  __swift_allocate_value_buffer(v0, qword_2806D4BF0);
  __swift_project_value_buffer(v0, qword_2806D4BF0);
  return sub_26F17F724();
}

uint64_t sub_26F15EF6C@<X0>(uint64_t a1@<X8>)
{
  v97 = a1;
  v2 = sub_26F17FE84();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x28223BE20](v2);
  v80 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v96 = v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v77 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v94 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v81 = v77 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v93 = v77 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v82 = v77 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v77 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = v77 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C18, &qword_26F182E38);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = v77 - v29;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C20, &qword_26F182E40);
  v31 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v33 = v77 - v32;
  *v30 = sub_26F17FD74();
  *(v30 + 1) = 0;
  v30[16] = 1;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C28, &qword_26F182E48);
  sub_26F15F95C(v1, &v30[*(v34 + 44)]);
  v83 = sub_26F180024();
  v92 = v1;
  sub_26F15EBDC(v26);
  v35 = v3[13];
  v88 = *MEMORY[0x277CE0558];
  v86 = v35;
  v87 = v3 + 13;
  v35(v24);
  v84 = v3[7];
  v85 = v3 + 7;
  v84(v24, 0, 1, v2);
  v91 = v6;
  v36 = *(v6 + 48);
  sub_26F13A854(v26, v11, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v24, &v11[v36], &qword_2806D4200, &qword_26F181B88);
  v95 = v3;
  v37 = v3[6];
  v38 = v37(v11, 1, v2);
  v90 = v37;
  if (v38 == 1)
  {
    sub_26F13AB10(v24, &qword_2806D4200, &qword_26F181B88);
    v39 = v81;
    sub_26F13AB10(v26, &qword_2806D4200, &qword_26F181B88);
    if (v37(&v11[v36], 1, v2) == 1)
    {
      sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
LABEL_7:
      v40 = v93;
      v41 = v94;
      goto LABEL_9;
    }

LABEL_6:
    sub_26F13AB10(v11, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_7;
  }

  v78 = v26;
  sub_26F13A854(v11, v82, &qword_2806D4200, &qword_26F181B88);
  if (v37(&v11[v36], 1, v2) == 1)
  {
    sub_26F13AB10(v24, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v78, &qword_2806D4200, &qword_26F181B88);
    (v95[1])(v82, v2);
    v39 = v81;
    goto LABEL_6;
  }

  v42 = v95;
  v43 = v95[4];
  v79 = v33;
  v44 = v80;
  v43(v80, &v11[v36], v2);
  sub_26F160EA8(&qword_2806D4318, MEMORY[0x277CE0570]);
  v45 = v82;
  v77[1] = sub_26F1806F4();
  v46 = v42[1];
  v47 = v44;
  v33 = v79;
  v46(v47, v2);
  sub_26F13AB10(v24, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v78, &qword_2806D4200, &qword_26F181B88);
  v46(v45, v2);
  sub_26F13AB10(v11, &qword_2806D4200, &qword_26F181B88);
  v40 = v93;
  v41 = v94;
  v39 = v81;
LABEL_9:
  sub_26F17F894();
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  sub_26F142810(v30, v33, &qword_2806D4C18, &qword_26F182E38);
  v56 = &v33[*(v89 + 36)];
  *v56 = v83;
  *(v56 + 1) = v49;
  *(v56 + 2) = v51;
  *(v56 + 3) = v53;
  *(v56 + 4) = v55;
  v56[40] = 0;
  LODWORD(v94) = sub_26F180004();
  sub_26F15EBDC(v40);
  v86(v39, v88, v2);
  v84(v39, 0, 1, v2);
  v57 = v39;
  v58 = *(v91 + 48);
  v59 = v96;
  sub_26F13A854(v40, v96, &qword_2806D4200, &qword_26F181B88);
  sub_26F13A854(v57, v59 + v58, &qword_2806D4200, &qword_26F181B88);
  v60 = v90;
  if (v90(v59, 1, v2) != 1)
  {
    sub_26F13A854(v59, v41, &qword_2806D4200, &qword_26F181B88);
    if (v60(v59 + v58, 1, v2) != 1)
    {
      v61 = v40;
      v62 = v95;
      v63 = v95[4];
      v79 = v33;
      v64 = v80;
      v63(v80, v59 + v58, v2);
      sub_26F160EA8(&qword_2806D4318, MEMORY[0x277CE0570]);
      sub_26F1806F4();
      v65 = v62[1];
      v65(v64, v2);
      sub_26F13AB10(v57, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v61, &qword_2806D4200, &qword_26F181B88);
      v65(v41, v2);
      v33 = v79;
      sub_26F13AB10(v59, &qword_2806D4200, &qword_26F181B88);
      goto LABEL_16;
    }

    sub_26F13AB10(v57, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v40, &qword_2806D4200, &qword_26F181B88);
    (v95[1])(v41, v2);
    goto LABEL_14;
  }

  sub_26F13AB10(v57, &qword_2806D4200, &qword_26F181B88);
  sub_26F13AB10(v40, &qword_2806D4200, &qword_26F181B88);
  if (v60(v59 + v58, 1, v2) != 1)
  {
LABEL_14:
    sub_26F13AB10(v59, &qword_2806D4308, &qword_26F182E30);
    goto LABEL_16;
  }

  sub_26F13AB10(v59, &qword_2806D4200, &qword_26F181B88);
LABEL_16:
  sub_26F17F894();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v97;
  sub_26F142810(v33, v97, &qword_2806D4C20, &qword_26F182E40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C30, &unk_26F182E50);
  v76 = v74 + *(result + 36);
  *v76 = v94;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  return result;
}

uint64_t sub_26F15F95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v85 = a1;
  v95 = a2;
  v2 = sub_26F17FD54();
  v93 = *(v2 - 8);
  v94 = v2;
  v3 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HapticTouchButtonView();
  v82 = *(v5 - 8);
  v6 = *(v82 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v83 = v7;
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C38, &qword_26F182E60);
  v88 = *(v8 - 8);
  v89 = v8;
  v9 = *(v88 + 64);
  MEMORY[0x28223BE20](v8);
  v86 = &v77 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  v11 = *(*(v87 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v87);
  v92 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v90 = &v77 - v14;
  v15 = sub_26F17F6C4();
  v80 = *(v15 - 8);
  v81 = v15;
  v16 = *(v80 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26F17F7A4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v77 - v25;
  v27 = sub_26F180714();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v77 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v77 - v33;
  v35 = sub_26F17F6D4();
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35 - 8);
  v79 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v38 = sub_26F1809E4();
  if (!v38)
  {
    v38 = [objc_opt_self() mainBundle];
  }

  v39 = v38;
  sub_26F17F794();
  (*(v28 + 16))(v32, v34, v27);
  (*(v20 + 16))(v24, v26, v19);
  v40 = [v39 bundleURL];
  v78 = v27;
  v41 = v19;
  v42 = v40;
  sub_26F17F714();

  (*(v80 + 104))(v18, *MEMORY[0x277CC9118], v81);
  sub_26F17F6E4();

  (*(v20 + 8))(v26, v41);
  (*(v28 + 8))(v34, v78);
  v43 = sub_26F1801A4();
  v45 = v44;
  v47 = v46;
  sub_26F1800F4();
  v48 = sub_26F180184();
  v50 = v49;
  v52 = v51;

  sub_26F142878(v43, v45, v47 & 1);

  sub_26F180384();
  v53 = sub_26F180174();
  v55 = v54;
  LODWORD(v81) = v56;
  v58 = v57;

  sub_26F142878(v48, v50, v52 & 1);

  KeyPath = swift_getKeyPath();
  v60 = v84;
  sub_26F160B08(v85, v84);
  v61 = (*(v82 + 80) + 16) & ~*(v82 + 80);
  v62 = swift_allocObject();
  sub_26F160CE4(v60, v62 + v61);
  v63 = v86;
  sub_26F180464();
  v64 = v91;
  sub_26F17FD44();
  sub_26F13AC54(&qword_2806D4C48, &qword_2806D4C38, &qword_26F182E60);
  sub_26F160EA8(&qword_2806D4C50, MEMORY[0x277CDDEE0]);
  v66 = v89;
  v65 = v90;
  v67 = v94;
  sub_26F180214();
  (*(v93 + 8))(v64, v67);
  (*(v88 + 8))(v63, v66);
  LOBYTE(v45) = sub_26F180074();
  sub_26F17F894();
  v68 = v65 + *(v87 + 36);
  *v68 = v45;
  *(v68 + 8) = v69;
  *(v68 + 16) = v70;
  *(v68 + 24) = v71;
  *(v68 + 32) = v72;
  *(v68 + 40) = 0;
  v73 = v92;
  sub_26F160DA8(v65, v92);
  v74 = v95;
  *v95 = v53;
  v74[1] = v55;
  LOBYTE(v45) = v81 & 1;
  *(v74 + 16) = v81 & 1;
  v74[3] = v58;
  v74[4] = KeyPath;
  *(v74 + 40) = 1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C58, &unk_26F182EA0);
  sub_26F160DA8(v73, v74 + *(v75 + 48));
  sub_26F160E18(v53, v55, v45);

  sub_26F160E28(v65);
  sub_26F160E28(v73);
  sub_26F142878(v53, v55, v45);
}

uint64_t sub_26F1601E8()
{
  v0 = sub_26F180644();
  v18 = *(v0 - 8);
  v1 = *(v18 + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_26F180684();
  v4 = *(v17 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26F180654();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(sub_26F15EDAC() + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 91) = 1;

  sub_26F13AA48(0, &qword_2806D4340, 0x277D85C78);
  (*(v9 + 104))(v12, *MEMORY[0x277D851A8], v8);
  v13 = sub_26F1809B4();
  (*(v9 + 8))(v12, v8);
  aBlock[4] = sub_26F160590;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_1;
  v14 = _Block_copy(aBlock);
  sub_26F180664();
  v19 = MEMORY[0x277D84F90];
  sub_26F160EA8(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  sub_26F180A44();
  MEMORY[0x27438A5B0](0, v7, v3, v14);
  _Block_release(v14);

  (*(v18 + 8))(v3, v0);
  return (*(v4 + 8))(v7, v17);
}

void sub_26F160590()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C60, &qword_26F182EB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - v2;
  v4 = [objc_opt_self() defaultWorkspace];
  if (v4)
  {
    v5 = v4;
    if (qword_2806D3FD0 != -1)
    {
      swift_once();
    }

    v6 = __swift_project_value_buffer(v0, qword_2806D4BF0);
    sub_26F13A854(v6, v3, &qword_2806D4C60, &qword_26F182EB0);
    v7 = sub_26F17F734();
    v8 = *(v7 - 8);
    v9 = 0;
    if ((*(v8 + 48))(v3, 1, v7) != 1)
    {
      v9 = sub_26F17F704();
      (*(v8 + 8))(v3, v7);
    }

    [v5 openSensitiveURL:v9 withOptions:0];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26F160738@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = sub_26F17F6C4();
  v35 = *(v1 - 8);
  v36 = v1;
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1);
  v4 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F17F7A4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v34 - v11;
  v13 = sub_26F180714();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v34 - v19;
  v21 = sub_26F17F6D4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v34[1] = v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F180704();
  sub_26F13AA48(0, &qword_2806D4088, 0x277CCA8D8);
  v24 = sub_26F1809E4();
  if (!v24)
  {
    v24 = [objc_opt_self() mainBundle];
  }

  v25 = v24;
  sub_26F17F794();
  (*(v14 + 16))(v18, v20, v13);
  (*(v6 + 16))(v10, v12, v5);
  v26 = [v25 bundleURL];
  v34[0] = v13;
  v27 = v5;
  v28 = v26;
  sub_26F17F714();

  (*(v35 + 104))(v4, *MEMORY[0x277CC9118], v36);
  sub_26F17F6E4();

  (*(v6 + 8))(v12, v27);
  (*(v14 + 8))(v20, v34[0]);
  result = sub_26F1801A4();
  v30 = v37;
  *v37 = result;
  v30[1] = v31;
  *(v30 + 16) = v32 & 1;
  v30[3] = v33;
  return result;
}

uint64_t sub_26F160B08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticTouchButtonView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160B6C()
{
  v1 = type metadata accessor for HapticTouchButtonView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *(v5 + *(v1 + 20));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F160CE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HapticTouchButtonView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160D48()
{
  v0 = *(*(type metadata accessor for HapticTouchButtonView() - 8) + 80);

  return sub_26F1601E8();
}

uint64_t sub_26F160DA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F160E18(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_26F160E28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C40, &qword_26F182E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F160EA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t sub_26F160F90()
{
  result = qword_2806D4C68;
  if (!qword_2806D4C68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C30, &unk_26F182E50);
    sub_26F16101C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C68);
  }

  return result;
}

unint64_t sub_26F16101C()
{
  result = qword_2806D4C70;
  if (!qword_2806D4C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C20, &qword_26F182E40);
    sub_26F13AC54(&qword_2806D4C78, &qword_2806D4C18, &qword_26F182E38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C70);
  }

  return result;
}

uint64_t sub_26F1610EC()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t SelectTrainingView.body.getter()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C80, &qword_26F182EE0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  v10 = *v0;
  v11 = *(v0 + 8);
  sub_26F161468(v10, v11, &v14 - v8);

  if ((v11 & 1) == 0)
  {
    sub_26F180944();
    v12 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
  }

  type metadata accessor for TrainingManager();
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F180244();

  return sub_26F13AB10(v9, &qword_2806D4C80, &qword_26F182EE0);
}

uint64_t sub_26F161468@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v97 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D08, "<~");
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v72 - v7;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CF8, &qword_26F182F08);
  v9 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101);
  v92 = &v72 - v10;
  v80 = sub_26F17F834();
  v78 = *(v80 - 8);
  v11 = *(v78 + 64);
  v12 = MEMORY[0x28223BE20](v80);
  v77 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v76 = &v72 - v14;
  v15 = type metadata accessor for PinchZoomView();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v81 = (&v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v90 = type metadata accessor for SelectTextView();
  v18 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v79 = (&v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D10, &qword_26F183000);
  v20 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v89 = &v72 - v21;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CD8, &qword_26F182F00);
  v22 = *(*(v95 - 8) + 64);
  MEMORY[0x28223BE20](v95);
  v91 = &v72 - v23;
  v88 = type metadata accessor for TouchHoldView();
  v24 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v75 = (&v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = type metadata accessor for TapView();
  v26 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v74 = (&v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D18, &qword_26F183008);
  v28 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98);
  v100 = &v72 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D20, &qword_26F183010);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30);
  v94 = &v72 - v32;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D28, &qword_26F183018);
  v33 = *(*(v82 - 8) + 64);
  MEMORY[0x28223BE20](v82);
  v84 = &v72 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CB8, &qword_26F182EF8);
  v36 = *(*(v35 - 8) + 64);
  MEMORY[0x28223BE20](v35);
  v85 = &v72 - v37;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4CA8, &qword_26F182EF0);
  v38 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99);
  v96 = &v72 - v39;
  v83 = type metadata accessor for DragView();
  v40 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v73 = (&v72 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = sub_26F17FC84();
  v42 = *(v93 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v93);
  v45 = &v72 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a1;

  if ((a2 & 1) == 0)
  {
    sub_26F180944();
    v47 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v42 + 8))(v45, v93);
    v46 = v103;
  }

  swift_getKeyPath();
  v103 = v46;
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v48 = *(v46 + 32);

  if (v48 <= 2)
  {
    if (v48 == 1)
    {
      v67 = v73;
      sub_26F14E32C(v73);
      v61 = type metadata accessor for DragView;
      sub_26F162BA0(v67, v84, type metadata accessor for DragView);
      swift_storeEnumTagMultiPayload();
      sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView);
      sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView);
      v68 = v85;
      sub_26F17FE44();
      sub_26F13A854(v68, v94, &qword_2806D4CB8, &qword_26F182EF8);
      swift_storeEnumTagMultiPayload();
      sub_26F1625F4();
      sub_26F1626E0();
      v69 = v96;
      sub_26F17FE44();
      sub_26F13AB10(v68, &qword_2806D4CB8, &qword_26F182EF8);
      sub_26F13A854(v69, v100, &qword_2806D4CA8, &qword_26F182EF0);
      swift_storeEnumTagMultiPayload();
      sub_26F162568();
      sub_26F1627CC();
      sub_26F17FE44();
      sub_26F13AB10(v69, &qword_2806D4CA8, &qword_26F182EF0);
      v58 = v67;
    }

    else
    {
      if (v48 != 2)
      {
        goto LABEL_18;
      }

      v60 = v74;
      sub_26F148DCC(v74);
      v61 = type metadata accessor for TapView;
      sub_26F162BA0(v60, v84, type metadata accessor for TapView);
      swift_storeEnumTagMultiPayload();
      sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView);
      sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView);
      v62 = v85;
      sub_26F17FE44();
      sub_26F13A854(v62, v94, &qword_2806D4CB8, &qword_26F182EF8);
      swift_storeEnumTagMultiPayload();
      sub_26F1625F4();
      sub_26F1626E0();
      v63 = v96;
      sub_26F17FE44();
      sub_26F13AB10(v62, &qword_2806D4CB8, &qword_26F182EF8);
      sub_26F13A854(v63, v100, &qword_2806D4CA8, &qword_26F182EF0);
      swift_storeEnumTagMultiPayload();
      sub_26F162568();
      sub_26F1627CC();
      sub_26F17FE44();
      sub_26F13AB10(v63, &qword_2806D4CA8, &qword_26F182EF0);
      v58 = v60;
    }

LABEL_15:
    v59 = v61;
    return sub_26F162C08(v58, v59);
  }

  if (v48 == 3)
  {
    v64 = v75;
    sub_26F1729AC(v75);
    v61 = type metadata accessor for TouchHoldView;
    sub_26F162BA0(v64, v89, type metadata accessor for TouchHoldView);
LABEL_13:
    swift_storeEnumTagMultiPayload();
    sub_26F162888(&qword_2806D4CE0, type metadata accessor for TouchHoldView);
    sub_26F162888(&qword_2806D4CE8, type metadata accessor for SelectTextView);
    v65 = v91;
    sub_26F17FE44();
    sub_26F13A854(v65, v94, &qword_2806D4CD8, &qword_26F182F00);
    swift_storeEnumTagMultiPayload();
    sub_26F1625F4();
    sub_26F1626E0();
    v66 = v96;
    sub_26F17FE44();
    sub_26F13AB10(v65, &qword_2806D4CD8, &qword_26F182F00);
    sub_26F13A854(v66, v100, &qword_2806D4CA8, &qword_26F182EF0);
    swift_storeEnumTagMultiPayload();
    sub_26F162568();
    sub_26F1627CC();
    sub_26F17FE44();
    sub_26F13AB10(v66, &qword_2806D4CA8, &qword_26F182EF0);
    v58 = v64;
    goto LABEL_15;
  }

  if (v48 == 4)
  {
    v64 = v79;
    sub_26F13DEB4(v79);
    v61 = type metadata accessor for SelectTextView;
    sub_26F162BA0(v64, v89, type metadata accessor for SelectTextView);
    goto LABEL_13;
  }

  if (v48 != 5)
  {
LABEL_18:
    swift_storeEnumTagMultiPayload();
    sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView);
    v71 = v92;
    sub_26F17FE44();
    sub_26F13A854(v71, v100, &qword_2806D4CF8, &qword_26F182F08);
    swift_storeEnumTagMultiPayload();
    sub_26F162568();
    sub_26F1627CC();
    sub_26F17FE44();
    return sub_26F13AB10(v71, &qword_2806D4CF8, &qword_26F182F08);
  }

  type metadata accessor for TrainingManager();
  v49 = sub_26F17F914();
  v50 = v81;
  *v81 = v49;
  *(v50 + 8) = v51 & 1;
  v102 = 0;
  sub_26F180404();
  v52 = v104;
  *(v50 + 16) = v103;
  *(v50 + 24) = v52;
  v53 = *(v15 + 24);
  v54 = v76;
  sub_26F17F824();
  v55 = v78;
  v56 = v80;
  (*(v78 + 16))(v77, v54, v80);
  sub_26F180404();
  (*(v55 + 8))(v54, v56);
  sub_26F162BA0(v50, v8, type metadata accessor for PinchZoomView);
  swift_storeEnumTagMultiPayload();
  sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView);
  v57 = v92;
  sub_26F17FE44();
  sub_26F13A854(v57, v100, &qword_2806D4CF8, &qword_26F182F08);
  swift_storeEnumTagMultiPayload();
  sub_26F162568();
  sub_26F1627CC();
  sub_26F17FE44();
  sub_26F13AB10(v57, &qword_2806D4CF8, &qword_26F182F08);
  v58 = v50;
  v59 = type metadata accessor for PinchZoomView;
  return sub_26F162C08(v58, v59);
}

unint64_t sub_26F162458()
{
  result = qword_2806D4C88;
  if (!qword_2806D4C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C80, &qword_26F182EE0);
    sub_26F1624DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C88);
  }

  return result;
}

unint64_t sub_26F1624DC()
{
  result = qword_2806D4C90;
  if (!qword_2806D4C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C98, &qword_26F182EE8);
    sub_26F162568();
    sub_26F1627CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4C90);
  }

  return result;
}

unint64_t sub_26F162568()
{
  result = qword_2806D4CA0;
  if (!qword_2806D4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CA8, &qword_26F182EF0);
    sub_26F1625F4();
    sub_26F1626E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CA0);
  }

  return result;
}

unint64_t sub_26F1625F4()
{
  result = qword_2806D4CB0;
  if (!qword_2806D4CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CB8, &qword_26F182EF8);
    sub_26F162888(&qword_2806D4CC0, type metadata accessor for DragView);
    sub_26F162888(&qword_2806D4CC8, type metadata accessor for TapView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CB0);
  }

  return result;
}

unint64_t sub_26F1626E0()
{
  result = qword_2806D4CD0;
  if (!qword_2806D4CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CD8, &qword_26F182F00);
    sub_26F162888(&qword_2806D4CE0, type metadata accessor for TouchHoldView);
    sub_26F162888(&qword_2806D4CE8, type metadata accessor for SelectTextView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CD0);
  }

  return result;
}

unint64_t sub_26F1627CC()
{
  result = qword_2806D4CF0;
  if (!qword_2806D4CF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4CF8, &qword_26F182F08);
    sub_26F162888(&qword_2806D4D00, type metadata accessor for PinchZoomView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4CF0);
  }

  return result;
}

uint64_t sub_26F162888(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F1628EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4C80, &qword_26F182EE0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - v3;
  v5 = *v0;
  v6 = *(v0 + 8);
  sub_26F161468(v5, v6, &v8 - v3);
  v8 = v5;
  v9 = v6;
  sub_26F1610EC();
  type metadata accessor for TrainingManager();
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F180244();

  return sub_26F13AB10(v4, &qword_2806D4C80, &qword_26F182EE0);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_26F162A48(uint64_t a1, unsigned int a2)
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

uint64_t sub_26F162A90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26F162AE4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4C80, &qword_26F182EE0);
  type metadata accessor for TrainingManager();
  sub_26F162458();
  sub_26F162888(&qword_2806D40F0, type metadata accessor for TrainingManager);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F162BA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F162C08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F162C7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_26F162D08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for SystemFontScaledSupport()
{
  result = qword_2806D4D38;
  if (!qword_2806D4D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F162DD0()
{
  sub_26F162E44();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_26F162E44()
{
  if (!qword_2806D4D48)
  {
    sub_26F162EA0();
    v0 = sub_26F17F954();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4D48);
    }
  }
}

unint64_t sub_26F162EA0()
{
  result = qword_2806D4D50;
  if (!qword_2806D4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D50);
  }

  return result;
}

uint64_t sub_26F162F34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D30, &unk_26F183050);
  sub_26F17F944();
  v11 = sub_26F1800A4();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_26F1800D4();
  sub_26F1630DC(v10);
  v12 = *(v3 + *(a2 + 20));
  v13 = sub_26F1800E4();

  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D58, &qword_26F183100);
  (*(*(v15 - 8) + 16))(a3, a1, v15);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D60, &qword_26F183108);
  v17 = (a3 + *(result + 36));
  *v17 = KeyPath;
  v17[1] = v13;
  return result;
}

uint64_t sub_26F1630DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44D0, &qword_26F181FB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F163150()
{
  result = qword_2806D4D68;
  if (!qword_2806D4D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D60, &qword_26F183108);
    sub_26F13AC54(&qword_2806D4D70, &qword_2806D4D58, &qword_26F183100);
    sub_26F13AC54(&qword_2806D4A90, &qword_2806D4A98, &qword_26F183110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D68);
  }

  return result;
}

uint64_t TryItLesson.initialInstruction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = sub_26F17F6C4();
  v72 = *(v3 - 8);
  v73 = v3;
  v4 = *(v72 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_26F17F7A4();
  v7 = *(v76 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v76);
  v74 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v70 - v11;
  v13 = sub_26F180714();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v70 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v70 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v70 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v70 - v28;
  v30 = MEMORY[0x28223BE20](v27);
  v33 = &v70 - v32;
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      v63 = v31;
      v64 = v30;
      sub_26F180704();
      sub_26F1427C4();
      v65 = sub_26F1809E4();
      if (!v65)
      {
        v65 = [objc_opt_self() mainBundle];
      }

      v66 = v65;
      sub_26F17F794();
      v67 = *(v63 + 16);
      v71 = v64;
      v67(v29, v33, v64);
      v68 = v76;
      (*(v7 + 16))(v74, v12, v76);
      v69 = [v66 bundleURL];
      sub_26F17F714();

      (*(v72 + 104))(v6, *MEMORY[0x277CC9118], v73);
      sub_26F17F6E4();

      (*(v7 + 8))(v12, v68);
      v48 = *(v63 + 8);
      v49 = v33;
    }

    else
    {
      if (a1 != 2)
      {
LABEL_24:

        return MEMORY[0x28211CB40](0, 0xE000000000000000);
      }

      v41 = v31;
      v42 = v30;
      sub_26F180704();
      sub_26F1427C4();
      v43 = sub_26F1809E4();
      if (!v43)
      {
        v43 = [objc_opt_self() mainBundle];
      }

      v44 = v43;
      sub_26F17F794();
      v45 = *(v41 + 16);
      v71 = v42;
      v45(v29, v26, v42);
      v46 = v76;
      (*(v7 + 16))(v74, v12, v76);
      v47 = [v44 bundleURL];
      sub_26F17F714();

      (*(v72 + 104))(v6, *MEMORY[0x277CC9118], v73);
      sub_26F17F6E4();

      (*(v7 + 8))(v12, v46);
      v48 = *(v41 + 8);
      v49 = v26;
    }

    return v48(v49, v71);
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      if (a1 == 5)
      {
        v34 = v31;
        v35 = v30;
        sub_26F180704();
        sub_26F1427C4();
        v36 = sub_26F1809E4();
        if (!v36)
        {
          v36 = [objc_opt_self() mainBundle];
        }

        v37 = v36;
        v38 = v76;
        sub_26F17F794();
        (*(v34 + 16))(v29, v17, v35);
        (*(v7 + 16))(v74, v12, v38);
        v39 = [v37 bundleURL];
        sub_26F17F714();

        (*(v72 + 104))(v6, *MEMORY[0x277CC9118], v73);
        sub_26F17F6E4();

        (*(v7 + 8))(v12, v76);
        return (*(v34 + 8))(v17, v35);
      }

      goto LABEL_24;
    }

    v56 = v31;
    v57 = v30;
    sub_26F180704();
    sub_26F1427C4();
    v58 = sub_26F1809E4();
    if (!v58)
    {
      v58 = [objc_opt_self() mainBundle];
    }

    v59 = v58;
    sub_26F17F794();
    v60 = *(v56 + 16);
    v71 = v57;
    v60(v29, v20, v57);
    v61 = v76;
    (*(v7 + 16))(v74, v12, v76);
    v62 = [v59 bundleURL];
    sub_26F17F714();

    (*(v72 + 104))(v6, *MEMORY[0x277CC9118], v73);
    sub_26F17F6E4();

    (*(v7 + 8))(v12, v61);
    v48 = *(v56 + 8);
    v49 = v20;
    return v48(v49, v71);
  }

  v50 = v31;
  v51 = v30;
  sub_26F180704();
  sub_26F1427C4();
  v52 = sub_26F1809E4();
  if (!v52)
  {
    v52 = [objc_opt_self() mainBundle];
  }

  v53 = v52;
  v54 = v76;
  sub_26F17F794();
  (*(v50 + 16))(v29, v23, v51);
  (*(v7 + 16))(v74, v12, v54);
  v55 = [v53 bundleURL];
  sub_26F17F714();

  (*(v72 + 104))(v6, *MEMORY[0x277CC9118], v73);
  sub_26F17F6E4();

  (*(v7 + 8))(v12, v76);
  return (*(v50 + 8))(v23, v51);
}

uint64_t TryItLesson.description.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      return 1734439492;
    }

    if (a1 == 2)
    {
      return 7364948;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
        return 0x6E61206863756F54;
      case 4:
        return 0x54207463656C6553;
      case 5:
        return 1836019546;
    }
  }

  return 0;
}

uint64_t sub_26F163CF4()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

uint64_t sub_26F163D68()
{
  v1 = *v0;
  sub_26F180B94();
  MEMORY[0x27438A7C0](v1);
  return sub_26F180BB4();
}

unint64_t sub_26F163DAC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26F163DFC(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_26F163DFC(unint64_t result)
{
  if (result > 5)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26F163E10()
{
  result = qword_2806D4D78;
  if (!qword_2806D4D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D78);
  }

  return result;
}

unint64_t sub_26F163E68()
{
  result = qword_2806D4D80;
  if (!qword_2806D4D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D88, &qword_26F1831B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4D80);
  }

  return result;
}

uint64_t sub_26F163EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F163F24(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_26F163F90@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DD8, &qword_26F1833C8);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v64 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DE0, &qword_26F1833D0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v64 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DE8, &qword_26F1833D8);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v64 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DF0, &qword_26F1833E0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v64 = &v64 - v19;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DF8, &qword_26F1833E8);
  v20 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v22 = &v64 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E00, &qword_26F1833F0);
  v67 = *(v23 - 8);
  v68 = v23;
  v24 = *(v67 + 64);
  MEMORY[0x28223BE20](v23);
  v66 = &v64 - v25;
  sub_26F17FEC4();
  v26 = sub_26F180004();
  sub_26F17F894();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E08, &qword_26F1833F8) + 36)];
  *v35 = v26;
  *(v35 + 1) = v28;
  *(v35 + 2) = v30;
  *(v35 + 3) = v32;
  *(v35 + 4) = v34;
  v35[40] = 0;
  v36 = sub_26F180074();
  sub_26F17F894();
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v45 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E10, &qword_26F183400) + 36)];
  *v45 = v36;
  *(v45 + 1) = v38;
  *(v45 + 2) = v40;
  *(v45 + 3) = v42;
  *(v45 + 4) = v44;
  v45[40] = 0;
  v46 = [objc_opt_self() systemBlueColor];
  v47 = sub_26F1803A4();
  KeyPath = swift_getKeyPath();
  v49 = &v5[*(v2 + 44)];
  *v49 = KeyPath;
  v49[1] = v47;
  if (sub_26F17FED4())
  {
    v50 = 0.5;
  }

  else
  {
    v50 = 1.0;
  }

  sub_26F142810(v5, v10, &qword_2806D4DD8, &qword_26F1833C8);
  *&v10[*(v7 + 44)] = v50;
  v51 = &v15[*(v12 + 44)];
  sub_26F180524();
  v52 = sub_26F180014();
  v51[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E18, &qword_26F183438) + 36)] = v52;
  sub_26F142810(v10, v15, &qword_2806D4DE0, &qword_26F1833D0);
  v53 = v64;
  v54 = &v64[*(v17 + 44)];
  v55 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E20, &qword_26F183440) + 28);
  sub_26F17FB54();
  *v54 = swift_getKeyPath();
  sub_26F142810(v15, v53, &qword_2806D4DE8, &qword_26F1833D8);
  v56 = &v22[*(v65 + 36)];
  v57 = *MEMORY[0x277CE0118];
  v58 = sub_26F17FD14();
  (*(*(v58 - 8) + 104))(v56, v57, v58);
  *&v56[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E28, &qword_26F183478) + 36)] = 256;
  sub_26F142810(v53, v22, &qword_2806D4DF0, &qword_26F1833E0);
  sub_26F1800C4();
  sub_26F16523C();
  v59 = v66;
  sub_26F180204();
  sub_26F13AB10(v22, &qword_2806D4DF8, &qword_26F1833E8);
  v60 = sub_26F1805B4();
  v61 = v69;
  (*(v67 + 32))(v69, v59, v68);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4E98, &qword_26F183488);
  v63 = (v61 + *(result + 36));
  *v63 = v60;
  v63[1] = 0;
  return result;
}

uint64_t sub_26F1644EC(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v6 = sub_26F17FC84();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v9);

  if ((a2 & 1) == 0)
  {
    sub_26F180944();
    v12 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v7 + 8))(v11, v6);
    a1 = v14[1];
  }

  *(a1 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 90) = 1;
}

uint64_t sub_26F164660@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_26F17FCB4();
  *(a1 + 8) = 0x4000000000000000;
  *(a1 + 16) = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DB8, &qword_26F183318);
  return sub_26F1646B0(a1 + *(v2 + 44));
}

uint64_t sub_26F1646B0@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v60 = sub_26F17F6C4();
  v57 = *(v60 - 8);
  v1 = *(v57 + 64);
  MEMORY[0x28223BE20](v60);
  v58 = &v51 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_26F17F7A4();
  v52 = *(v59 - 8);
  v3 = *(v52 + 64);
  v4 = MEMORY[0x28223BE20](v59);
  v55 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v51 - v6;
  v8 = sub_26F180714();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v51 - v14;
  v16 = sub_26F17F6D4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v53 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC0, &qword_26F183320);
  v20 = v19 - 8;
  v21 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v56 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = (&v51 - v24);
  v26 = sub_26F1803B4();
  v27 = (v25 + *(v20 + 44));
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC8, &qword_26F183328) + 28);
  v29 = *MEMORY[0x277CE1050];
  v30 = sub_26F1803D4();
  (*(*(v30 - 8) + 104))(v27 + v28, v29, v30);
  *v27 = swift_getKeyPath();
  v54 = v25;
  *v25 = v26;
  sub_26F180704();
  sub_26F1427C4();
  v31 = sub_26F1809E4();
  if (!v31)
  {
    v31 = [objc_opt_self() mainBundle];
  }

  v32 = v31;
  sub_26F17F794();
  v33 = *(v9 + 16);
  v34 = v13;
  v51 = v15;
  v35 = v8;
  v33(v34, v15, v8);
  v36 = v52;
  v37 = v59;
  (*(v52 + 16))(v55, v7, v59);
  v38 = [v32 bundleURL];
  v39 = v58;
  sub_26F17F714();

  (*(v57 + 104))(v39, *MEMORY[0x277CC9118], v60);
  sub_26F17F6E4();

  (*(v36 + 8))(v7, v37);
  (*(v9 + 8))(v51, v35);
  v40 = sub_26F1801A4();
  v42 = v41;
  LOBYTE(v36) = v43;
  v45 = v44;
  v46 = v54;
  v47 = v56;
  sub_26F165038(v54, v56);
  v48 = v61;
  sub_26F165038(v47, v61);
  v49 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DD0, &unk_26F183360) + 48);
  *v49 = v40;
  *(v49 + 8) = v42;
  LOBYTE(v36) = v36 & 1;
  *(v49 + 16) = v36;
  *(v49 + 24) = v45;
  sub_26F160E18(v40, v42, v36);

  sub_26F13AB10(v46, &qword_2806D4DC0, &qword_26F183320);
  sub_26F142878(v40, v42, v36);

  return sub_26F13AB10(v47, &qword_2806D4DC0, &qword_26F183320);
}

uint64_t sub_26F164C5C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D90, &qword_26F183308);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v12 - v4;
  v6 = *v0;
  v7 = *(v0 + 8);
  v9 = v0[2];
  v8 = v0[3];
  v10 = swift_allocObject();
  *(v10 + 16) = v6;
  *(v10 + 24) = v7;
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4D98, &qword_26F183310);
  sub_26F13AC54(&qword_2806D4DA0, &qword_2806D4D98, &qword_26F183310);
  sub_26F180464();
  sub_26F13AC54(&qword_2806D4DA8, &qword_2806D4D90, &qword_26F183308);
  sub_26F164EB0();
  sub_26F180224();
  return (*(v2 + 8))(v5, v1);
}

uint64_t sub_26F164E58()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26F164EB0()
{
  result = qword_2806D4DB0;
  if (!qword_2806D4DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4DB0);
  }

  return result;
}

uint64_t sub_26F164F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_26F165038(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4DC0, &qword_26F183320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F1650B8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4D90, &qword_26F183308);
  sub_26F13AC54(&qword_2806D4DA8, &qword_2806D4D90, &qword_26F183308);
  sub_26F164EB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_26F165180@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26F17FB94();
  *a1 = result;
  return result;
}

uint64_t sub_26F1651AC(uint64_t *a1)
{
  v1 = *a1;

  return sub_26F17FBA4();
}

unint64_t sub_26F16523C()
{
  result = qword_2806D4E30;
  if (!qword_2806D4E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF8, &qword_26F1833E8);
    sub_26F1652F4();
    sub_26F13AC54(&qword_2806D4E90, &qword_2806D4E28, &qword_26F183478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E30);
  }

  return result;
}

unint64_t sub_26F1652F4()
{
  result = qword_2806D4E38;
  if (!qword_2806D4E38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF0, &qword_26F1833E0);
    sub_26F1653AC();
    sub_26F13AC54(&qword_2806D4E88, &qword_2806D4E20, &qword_26F183440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E38);
  }

  return result;
}

unint64_t sub_26F1653AC()
{
  result = qword_2806D4E40;
  if (!qword_2806D4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DE8, &qword_26F1833D8);
    sub_26F165464();
    sub_26F13AC54(&qword_2806D4E80, &qword_2806D4E18, &qword_26F183438);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E40);
  }

  return result;
}

unint64_t sub_26F165464()
{
  result = qword_2806D4E48;
  if (!qword_2806D4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DE0, &qword_26F1833D0);
    sub_26F1654F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E48);
  }

  return result;
}

unint64_t sub_26F1654F0()
{
  result = qword_2806D4E50;
  if (!qword_2806D4E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DD8, &qword_26F1833C8);
    sub_26F165604(&qword_2806D4E58, &qword_2806D4E10, &qword_26F183400, sub_26F1655D4);
    sub_26F13AC54(&qword_2806D4E70, &qword_2806D4E78, &qword_26F183480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E50);
  }

  return result;
}

uint64_t sub_26F165604(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_26F165688()
{
  result = qword_2806D4E68;
  if (!qword_2806D4E68)
  {
    sub_26F17FEB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4E68);
  }

  return result;
}

unint64_t sub_26F1656E4()
{
  result = qword_2806D4EA0;
  if (!qword_2806D4EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4E98, &qword_26F183488);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4DF8, &qword_26F1833E8);
    sub_26F16523C();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D4EA8, &qword_2806D4EB0, &unk_26F183490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4EA0);
  }

  return result;
}

char *TryItViewController.init(lessonURL:tipID:collectionID:correlationID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v71 = a6;
  v72 = a7;
  v69 = a4;
  v70 = a5;
  v67 = a2;
  v68 = a3;
  v9 = sub_26F17F6D4();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v66 = v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26F180104();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v73 = v64 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = (v64 - v21);
  *&v7[OBJC_IVAR___TryItViewController_hostingController] = 0;
  *&v7[OBJC_IVAR___TryItViewController_delegate] = 0;
  v23 = OBJC_IVAR___TryItViewController_tryItView;
  v24 = type metadata accessor for TipsTryItView();
  v25 = *(v24 - 1);
  v26 = *(v25 + 56);
  v64[1] = v25 + 56;
  v65 = v26;
  v26(&v7[v23], 1, 1, v24);
  v27 = type metadata accessor for TryItViewController();
  v77.receiver = v7;
  v77.super_class = v27;
  v28 = objc_msgSendSuper2(&v77, sel_initWithNibName_bundle_, 0, 0);
  v29 = sub_26F17DAB8(a1);
  *v22 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v30 = v24[5];
  *(v22 + v30) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49D8, &qword_26F183520);
  swift_storeEnumTagMultiPayload();
  v31 = v24[6];
  *(v22 + v31) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D49E0, &qword_26F182780);
  swift_storeEnumTagMultiPayload();
  v32 = v24[7];
  v74 = 0x3FF8000000000000;
  (*(v13 + 104))(v16, *MEMORY[0x277CE0A68], v12);
  sub_26F1580A0();
  sub_26F17F934();
  v33 = v22 + v24[8];
  LOBYTE(v76) = 0;
  sub_26F180404();
  v34 = v75;
  *v33 = v74;
  *(v33 + 1) = v34;
  v35 = (v22 + v24[9]);
  v76 = 0;
  sub_26F180404();
  v36 = v75;
  *v35 = v74;
  v35[1] = v36;
  v37 = (v22 + v24[10]);
  v76 = 0;
  sub_26F180404();
  v38 = v75;
  *v37 = v74;
  v37[1] = v38;
  v39 = v24[11];
  v40 = type metadata accessor for TrainingManager();
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  swift_allocObject();
  v43 = sub_26F15DEDC();
  v44 = v43;
  *(v22 + v39) = v43;
  if (*(v29 + 2))
  {
    v45 = *(v29 + 4);
  }

  else
  {
    v45 = 0;
  }

  v46 = &qword_2806D4000;
  if (*(v43 + 32) == v45)
  {
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v64[0] = a1;
    MEMORY[0x28223BE20](KeyPath);
    v64[-2] = v44;
    v64[-1] = v45;
    v74 = v44;
    sub_26F15E0CC();

    sub_26F17F7B4();
    v46 = &qword_2806D4000;

    a1 = v64[0];
  }

  swift_getKeyPath();
  v48 = v46[376];
  v74 = v44;
  sub_26F15E0CC();
  sub_26F17F7C4();

  TryItLesson.initialInstruction.getter(*(v44 + 32), v66);
  v49 = sub_26F180774();
  sub_26F15A234(v49, v50);
  sub_26F15A524(v29);
  v51 = (v44 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys);
  v52 = *(v44 + OBJC_IVAR____TtC9TipsTryIt15TrainingManager_analyticsKeys + 8);
  v53 = v68;
  *v51 = v67;
  v51[1] = v53;
  v54 = v51[3];
  v55 = v70;
  v51[2] = v69;
  v51[3] = v55;
  v56 = v51[5];
  v57 = v72;
  v51[4] = v71;
  v51[5] = v57;

  sub_26F15D5A4();

  v65(v22, 0, 1, v24);
  v58 = OBJC_IVAR___TryItViewController_tryItView;
  swift_beginAccess();
  sub_26F166A60(v22, &v28[v58]);
  swift_endAccess();
  sub_26F166AD0(&v28[v58], v73);
  v59 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4ED8, &qword_26F183588));
  v60 = sub_26F17FD84();
  v61 = sub_26F17F734();
  (*(*(v61 - 8) + 8))(a1, v61);
  v62 = *&v28[OBJC_IVAR___TryItViewController_hostingController];
  *&v28[OBJC_IVAR___TryItViewController_hostingController] = v60;

  return v28;
}

uint64_t type metadata accessor for TryItViewController()
{
  result = qword_2806D4EF0;
  if (!qword_2806D4EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F166138()
{
  v1 = type metadata accessor for TipsTryItView();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v13 - v8;
  v10 = OBJC_IVAR___TryItViewController_tryItView;
  swift_beginAccess();
  sub_26F166AD0(v0 + v10, v9);
  if ((*(v2 + 48))(v9, 1, v1))
  {
    return sub_26F166B40(v9);
  }

  sub_26F166BA8(v9, v5);
  sub_26F166B40(v9);
  v12 = *&v5[*(v1 + 44)];
  sub_26F15D704();
  return sub_26F166C0C(v5);
}

void sub_26F166434()
{
  v32.receiver = v0;
  v32.super_class = type metadata accessor for TryItViewController();
  objc_msgSendSuper2(&v32, sel_loadView);
  v1 = *&v0[OBJC_IVAR___TryItViewController_hostingController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (!v3)
    {
LABEL_10:

      return;
    }

    v4 = v3;
    [v0 addChildViewController_];
    v5 = [v0 view];
    if (v5)
    {
      v6 = v5;
      [v5 addSubview_];

      v7 = [objc_opt_self() systemBackgroundColor];
      [v4 setBackgroundColor_];

      [v4 setTranslatesAutoresizingMaskIntoConstraints_];
      v8 = [v0 view];
      if (v8)
      {
        v9 = v8;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EE0, &unk_26F183590);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_26F1834A0;
        v11 = [v4 leadingAnchor];
        v12 = [v0 view];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 leadingAnchor];

          v15 = [v11 constraintEqualToAnchor_];
          *(v10 + 32) = v15;
          v16 = [v4 topAnchor];
          v17 = [v0 view];
          if (v17)
          {
            v18 = v17;
            v19 = [v17 topAnchor];

            v20 = [v16 constraintEqualToAnchor_];
            *(v10 + 40) = v20;
            v21 = [v4 trailingAnchor];
            v22 = [v0 view];
            if (v22)
            {
              v23 = v22;
              v24 = [v22 trailingAnchor];

              v25 = [v21 constraintEqualToAnchor_];
              *(v10 + 48) = v25;
              v26 = [v4 bottomAnchor];
              v27 = [v0 view];
              if (v27)
              {
                v28 = v27;
                v29 = [v27 bottomAnchor];

                v30 = [v26 constraintEqualToAnchor_];
                *(v10 + 56) = v30;
                sub_26F166C68();
                v31 = sub_26F180864();

                [v9 addConstraints_];

                [v2 didMoveToParentViewController_];
                goto LABEL_10;
              }

LABEL_17:
              __break(1u);
              return;
            }

LABEL_16:
            __break(1u);
            goto LABEL_17;
          }

LABEL_15:
          __break(1u);
          goto LABEL_16;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_14;
  }
}

id TryItViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26F180724();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id TryItViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TryItViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F166A60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166AD0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166B40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4EB8, &qword_26F1834B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F166BA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TipsTryItView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F166C0C(uint64_t a1)
{
  v2 = type metadata accessor for TipsTryItView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26F166C68()
{
  result = qword_2806D4EE8;
  if (!qword_2806D4EE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4EE8);
  }

  return result;
}

void sub_26F166CBC()
{
  sub_26F166DB8();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_26F166DB8()
{
  if (!qword_2806D4F00)
  {
    type metadata accessor for TipsTryItView();
    v0 = sub_26F180A04();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D4F00);
    }
  }
}

uint64_t sub_26F166E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_26F180164();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_26F166F6C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D41D8, ".O");
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_26F180164();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for InstructionView()
{
  result = qword_2806D4F08;
  if (!qword_2806D4F08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F1670EC()
{
  sub_26F14BF64(319, &qword_2806D41F8, &qword_2806D4200, &qword_26F181B88, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26F167374(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
    if (v1 <= 0x3F)
    {
      sub_26F167324(319, &qword_2806D4F18, MEMORY[0x277D85048], MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_26F167324(319, &qword_2806D4210, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_26F167324(319, &unk_2806D4218, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
          if (v4 <= 0x3F)
          {
            sub_26F167374(319, &qword_2806D4F20, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
            if (v5 <= 0x3F)
            {
              sub_26F14BF64(319, &qword_2806D4F28, &qword_2806D4F30, qword_26F183608, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_26F180164();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F167324(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26F167374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_26F1673F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26F167438@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for InstructionView();
  v13 = a5 + v12[5];
  *v13 = a1;
  v13[8] = a2 & 1;
  v14 = a5 + v12[6];
  *v14 = a3;
  *(v14 + 1) = a4;
  *(v14 + 2) = a6;
  v15 = a5 + v12[7];
  sub_26F180404();
  *v15 = v22;
  *(v15 + 1) = *(&v22 + 1);
  v16 = a5 + v12[8];
  sub_26F180404();
  *v16 = v22;
  *(v16 + 1) = *(&v22 + 1);
  v17 = (a5 + v12[9]);
  sub_26F180404();
  *v17 = v22;
  v18 = a5 + v12[10];
  type metadata accessor for CGSize(0);
  sub_26F180404();
  *v18 = v22;
  *(v18 + 2) = v23;
  v19 = v12[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F30, qword_26F183608);
  sub_26F180404();
  *(a5 + v19) = v22;
  v20 = a5 + v12[12];
  return sub_26F180154();
}

uint64_t sub_26F1675F8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_26F1676A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_26F15A234(v2, v3);
}

uint64_t sub_26F1676E4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_26F1677B4()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for InstructionView() + 20));
  v7 = *v6;
  v8 = *(v6 + 8);

  if ((v8 & 1) == 0)
  {
    sub_26F180944();
    v9 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v11[1];
  }

  return v7;
}

uint64_t sub_26F167904@<X0>(uint64_t a1@<X8>)
{
  v132 = a1;
  v2 = type metadata accessor for InstructionView();
  v3 = *(v2 - 8);
  v133 = v2 - 8;
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v118 = v6;
  v7 = &v114 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F38, &qword_26F183660);
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v114 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F40, &qword_26F183668);
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v114 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F48, &qword_26F183670);
  v19 = *(v18 - 8);
  v124 = v18 - 8;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v119 = &v114 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F50, &qword_26F183678);
  v23 = *(v22 - 8);
  v126 = v22 - 8;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v120 = &v114 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F58, &qword_26F183680);
  v27 = *(v26 - 8);
  v125 = v26 - 8;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v121 = &v114 - v29;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F60, &qword_26F183688);
  v30 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v122 = &v114 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F68, &qword_26F183690);
  v128 = *(v32 - 8);
  v129 = v32;
  v33 = *(v128 + 64);
  MEMORY[0x28223BE20](v32);
  v134 = &v114 - v34;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F70, &qword_26F183698);
  v35 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127);
  v135 = &v114 - v36;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F78, &qword_26F1836A0);
  v37 = *(*(v131 - 8) + 64);
  MEMORY[0x28223BE20](v131);
  v130 = &v114 - v38;
  *v12 = sub_26F17FD74();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v39 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F80, &qword_26F1836A8) + 44)];
  v115 = v1;
  sub_26F168410(v1, v39);
  v40 = v1;
  v41 = v7;
  v116 = v7;
  sub_26F16A9D4(v40, v7);
  v42 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v117 = v42;
  v43 = swift_allocObject();
  sub_26F16AA3C(v41, v43 + v42);
  v44 = sub_26F180564();
  v46 = v45;
  v47 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F88, &qword_26F1836B0) + 36)];
  *v47 = sub_26F150C28;
  v47[1] = 0;
  v47[2] = v44;
  v47[3] = v46;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_26F16AAA0;
  *(v48 + 24) = v43;
  v49 = &v12[*(v9 + 44)];
  *v49 = sub_26F14B30C;
  v49[1] = v48;
  sub_26F180564();
  sub_26F17FB44();
  sub_26F142810(v12, v17, &qword_2806D4F38, &qword_26F183660);
  v50 = &v17[*(v14 + 44)];
  v51 = v158;
  *(v50 + 4) = v157;
  *(v50 + 5) = v51;
  *(v50 + 6) = v159;
  v52 = v154;
  *v50 = v153;
  *(v50 + 1) = v52;
  v53 = v156;
  *(v50 + 2) = v155;
  *(v50 + 3) = v53;
  LOBYTE(v41) = sub_26F180034();
  sub_26F17F894();
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v62 = v119;
  sub_26F142810(v17, v119, &qword_2806D4F40, &qword_26F183668);
  v63 = v62 + *(v124 + 44);
  *v63 = v41;
  *(v63 + 8) = v55;
  *(v63 + 16) = v57;
  *(v63 + 24) = v59;
  *(v63 + 32) = v61;
  *(v63 + 40) = 0;
  LOBYTE(v41) = sub_26F180004();
  sub_26F17F894();
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v72 = v62;
  v73 = v120;
  sub_26F142810(v72, v120, &qword_2806D4F48, &qword_26F183670);
  v74 = v73 + *(v126 + 44);
  *v74 = v41;
  *(v74 + 8) = v65;
  *(v74 + 16) = v67;
  *(v74 + 24) = v69;
  *(v74 + 32) = v71;
  *(v74 + 40) = 0;
  KeyPath = swift_getKeyPath();
  v76 = v73;
  v77 = v121;
  sub_26F142810(v76, v121, &qword_2806D4F50, &qword_26F183678);
  v78 = v77 + *(v125 + 44);
  *v78 = KeyPath;
  *(v78 + 8) = 1;
  v79 = v115;
  v80 = (v115 + *(v133 + 36));
  v81 = *v80;
  v82 = *(v80 + 1);
  LODWORD(v125) = v81;
  LOBYTE(v144) = v81;
  v126 = v82;
  v145 = v82;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v139)
  {
    v83 = -10.0;
  }

  else
  {
    v83 = 0.0;
  }

  v84 = v122;
  sub_26F142810(v77, v122, &qword_2806D4F58, &qword_26F183680);
  v85 = v84 + *(v123 + 36);
  *v85 = v83;
  *(v85 + 8) = 0;
  v86 = sub_26F1677B4();
  swift_getKeyPath();
  v144 = v86;
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v87 = *(v86 + 49);

  LOBYTE(v144) = v87;
  v88 = v116;
  sub_26F16A9D4(v79, v116);
  v89 = v117;
  v90 = swift_allocObject();
  sub_26F16AA3C(v88, v90 + v89);
  sub_26F16B1BC();
  sub_26F180314();

  sub_26F16B640(v84);
  v91 = sub_26F1677B4();
  swift_getKeyPath();
  v144 = v91;
  sub_26F17F7C4();

  LODWORD(v88) = *(v91 + 52);

  if (v88 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4FF8, &qword_26F183758);
    v92 = swift_allocObject();
    *(v92 + 16) = xmmword_26F181B20;
    v93 = [objc_opt_self() systemBackgroundColor];
    *(v92 + 32) = sub_26F1803A4();
    *(v92 + 40) = sub_26F180354();
    sub_26F180634();
    sub_26F180624();
    MEMORY[0x27438A100](v92);
    sub_26F17FA64();
    v133 = sub_26F17FAA4();
    v94 = sub_26F180014();
    v95 = v160;
    v96 = v161;
    v97 = v162;
    v98 = v163;
    v123 = v164;
  }

  else
  {
    v95 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v123 = 0;
    v133 = 0;
    v94 = 0;
  }

  LODWORD(v122) = v94;
  v99 = sub_26F180564();
  v101 = v100;
  *&v139 = v95;
  *(&v139 + 1) = v96;
  *&v140 = v97;
  *(&v140 + 1) = v98;
  v102 = v123;
  *&v141 = v123;
  *(&v141 + 1) = v133;
  LOBYTE(v142) = v94;
  *(&v142 + 1) = v99;
  v143 = v100;
  v103 = v98;
  v104 = v135;
  (*(v128 + 32))();
  v105 = v104 + *(v127 + 36);
  v106 = v142;
  *(v105 + 32) = v141;
  *(v105 + 48) = v106;
  *(v105 + 64) = v143;
  v107 = v140;
  *v105 = v139;
  *(v105 + 16) = v107;
  v144 = v95;
  v145 = v96;
  v146 = v97;
  v147 = v103;
  v148 = v102;
  v149 = v133;
  v150 = v122;
  v151 = v99;
  v152 = v101;
  sub_26F13A854(&v139, v137, &qword_2806D4FE8, &qword_26F183748);
  sub_26F13AB10(&v144, &qword_2806D4FE8, &qword_26F183748);
  sub_26F180604();
  v108 = sub_26F180594();

  v137[0] = v125;
  v138 = v126;
  sub_26F180414();
  v109 = v136;
  v110 = v130;
  sub_26F142810(v135, v130, &qword_2806D4F70, &qword_26F183698);
  v111 = v110 + *(v131 + 36);
  *v111 = v108;
  *(v111 + 8) = v109;
  v112 = v132;
  sub_26F142810(v110, v132, &qword_2806D4F78, &qword_26F1836A0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4FF0, &qword_26F183750);
  *(v112 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_26F168410@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v179 = a2;
  v183 = type metadata accessor for InstructionView();
  v176 = *(v183 - 8);
  v3 = *(v176 + 64);
  MEMORY[0x28223BE20](v183);
  v177 = v4;
  v178 = &v143 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_26F17FE84();
  v158 = *(v159 - 8);
  v5 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v146 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4308, &qword_26F182E30);
  v7 = *(*(v156 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v156);
  v148 = &v143 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v149 = &v143 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4200, &qword_26F181B88);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v145 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v147 = &v143 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v152 = &v143 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v144 = &v143 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v150 = &v143 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v143 - v23;
  v155 = sub_26F180104();
  v25 = *(v155 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v155);
  v29 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = &v143 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = &v143 - v33;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5010, &qword_26F183780);
  v35 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v180 = &v143 - v36;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5018, &qword_26F183788);
  v37 = *(*(v160 - 8) + 64);
  MEMORY[0x28223BE20](v160);
  v162 = &v143 - v38;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5020, &qword_26F183790);
  v39 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v164 = &v143 - v40;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5028, &qword_26F183798);
  v41 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v165 = &v143 - v42;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5030, &qword_26F1837A0);
  v43 = *(*(v172 - 8) + 64);
  MEMORY[0x28223BE20](v172);
  v173 = &v143 - v44;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5038, &qword_26F1837A8);
  v174 = *(v175 - 8);
  v45 = *(v174 + 64);
  v46 = MEMORY[0x28223BE20](v175);
  v182 = &v143 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v181 = &v143 - v48;
  v49 = sub_26F1677B4();
  swift_getKeyPath();
  *&v188 = v49;
  v50 = sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v51 = *(v49 + 48);

  v184 = v50;
  v151 = v24;
  if (v51 == 1)
  {
    type metadata accessor for TrainingManager();
    v52 = sub_26F17F914();
    v54 = v53;
    v186 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4068, &qword_26F181A90);
    sub_26F180404();
    v55 = v188;
    v186 = 0.0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4078, &qword_26F181AA0);
    sub_26F180404();
    v56 = v188;
    v166 = v54 & 1;
    v167 = *(&v188 + 1);

    v171 = v52;

    v169 = v55;
    v57 = v55;
    v170 = *(&v55 + 1);

    v168 = v56;
    v58 = v56;
  }

  else
  {
    v171 = 0;
    v166 = 0;
    v170 = 0;
    v168 = 0;
    v167 = 0;
    v169 = 1;
  }

  v59 = sub_26F1677B4();
  swift_getKeyPath();
  *&v188 = v59;
  sub_26F17F7C4();

  v60 = *(v59 + 24);
  v153 = *(v59 + 16);

  v61 = a1;
  v62 = v183;
  v63 = (v61 + *(v183 + 36));
  v64 = *v63;
  v65 = v63[1];
  *&v188 = v64;
  *(&v188 + 1) = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
  sub_26F180414();
  v66 = v186;
  v67 = v25;
  v68 = *(v25 + 104);
  v69 = v155;
  v68(v34, *MEMORY[0x277CE0A70], v155);
  sub_26F1800B4();
  v71 = v70;
  v72 = *(v67 + 16);
  v72(v32, v34, v69);
  *&v188 = v66;
  v72(v29, v32, v69);
  v73 = v180;
  v74 = v180 + *(v154 + 36);
  sub_26F162EA0();
  sub_26F17F934();
  v75 = *(v67 + 8);
  v75(v32, v69);
  v75(v34, v69);
  *(v74 + *(type metadata accessor for SystemFontScaledSupport() + 20)) = v71;
  *v73 = v153;
  *(v73 + 8) = v60;
  *(v73 + 16) = 0;
  *(v73 + 24) = MEMORY[0x277D84F90];
  v76 = *(v62 + 24);
  v77 = v61;
  v78 = (v61 + v76);
  v79 = *v78;
  v80 = v78[1];
  v81 = v78[2];
  *&v188 = *v78;
  *(&v188 + 1) = v80;
  *&v189 = v81;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4398, &qword_26F181EE8);
  MEMORY[0x27438A090](&v186);
  v157 = v77;
  if (v186 <= 0.0)
  {
    v92 = v152;
    sub_26F14E9B4(v152);
    v93 = v158;
    v94 = v147;
    v95 = v159;
    (*(v158 + 104))(v147, *MEMORY[0x277CE0558], v159);
    (*(v93 + 56))(v94, 0, 1, v95);
    v96 = *(v156 + 48);
    v88 = v148;
    sub_26F13A854(v92, v148, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v94, v88 + v96, &qword_2806D4200, &qword_26F181B88);
    v97 = *(v93 + 48);
    if (v97(v88, 1, v95) == 1)
    {
      sub_26F13AB10(v94, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v92, &qword_2806D4200, &qword_26F181B88);
      v98 = v97(v88 + v96, 1, v95);
      v91 = v157;
      if (v98 == 1)
      {
        goto LABEL_7;
      }

      goto LABEL_16;
    }

    v100 = v145;
    sub_26F13A854(v88, v145, &qword_2806D4200, &qword_26F181B88);
    if (v97(v88 + v96, 1, v95) == 1)
    {
      sub_26F13AB10(v94, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v152, &qword_2806D4200, &qword_26F181B88);
      (*(v93 + 8))(v100, v95);
      v91 = v157;
LABEL_16:
      sub_26F13AB10(v88, &qword_2806D4308, &qword_26F182E30);
      goto LABEL_18;
    }

    v140 = v88 + v96;
    v141 = v146;
    (*(v93 + 32))(v146, v140, v95);
    sub_26F16C1C4(&qword_2806D4318, MEMORY[0x277CE0570]);
    sub_26F1806F4();
    v142 = *(v93 + 8);
    v142(v141, v95);
    sub_26F13AB10(v94, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v152, &qword_2806D4200, &qword_26F181B88);
    v142(v100, v95);
    sub_26F13AB10(v88, &qword_2806D4200, &qword_26F181B88);
    v91 = v157;
  }

  else
  {
    *&v188 = v79;
    *(&v188 + 1) = v80;
    *&v189 = v81;
    MEMORY[0x27438A090](&v186, v82, v186);
    v83 = v151;
    sub_26F14E9B4(v151);
    v84 = v158;
    v85 = v150;
    v86 = v159;
    (*(v158 + 104))(v150, *MEMORY[0x277CE0558], v159);
    (*(v84 + 56))(v85, 0, 1, v86);
    v87 = *(v156 + 48);
    v88 = v149;
    sub_26F13A854(v83, v149, &qword_2806D4200, &qword_26F181B88);
    sub_26F13A854(v85, v88 + v87, &qword_2806D4200, &qword_26F181B88);
    v89 = *(v84 + 48);
    if (v89(v88, 1, v86) == 1)
    {
      sub_26F13AB10(v85, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v83, &qword_2806D4200, &qword_26F181B88);
      v90 = v89(v88 + v87, 1, v86);
      v91 = v157;
      if (v90 == 1)
      {
LABEL_7:
        sub_26F13AB10(v88, &qword_2806D4200, &qword_26F181B88);
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v99 = v144;
    sub_26F13A854(v88, v144, &qword_2806D4200, &qword_26F181B88);
    if (v89(v88 + v87, 1, v86) == 1)
    {
      sub_26F13AB10(v150, &qword_2806D4200, &qword_26F181B88);
      sub_26F13AB10(v151, &qword_2806D4200, &qword_26F181B88);
      (*(v84 + 8))(v99, v86);
      v91 = v157;
      goto LABEL_16;
    }

    v101 = v88 + v87;
    v102 = v146;
    (*(v84 + 32))(v146, v101, v86);
    sub_26F16C1C4(&qword_2806D4318, MEMORY[0x277CE0570]);
    sub_26F1806F4();
    v103 = *(v84 + 8);
    v103(v102, v86);
    sub_26F13AB10(v150, &qword_2806D4200, &qword_26F181B88);
    sub_26F13AB10(v151, &qword_2806D4200, &qword_26F181B88);
    v103(v99, v86);
    sub_26F13AB10(v88, &qword_2806D4200, &qword_26F181B88);
    v91 = v157;
  }

LABEL_18:
  v104 = sub_26F1677B4();
  swift_getKeyPath();
  *&v188 = v104;
  sub_26F17F7C4();

  v105 = *(v104 + 48);

  if (v105 == 1)
  {
    sub_26F180544();
  }

  else
  {
    sub_26F180564();
  }

  sub_26F17F9A4();
  v106 = v162;
  sub_26F142810(v180, v162, &qword_2806D5010, &qword_26F183780);
  v107 = (v106 + *(v160 + 36));
  v108 = v189;
  *v107 = v188;
  v107[1] = v108;
  v107[2] = v190;
  KeyPath = swift_getKeyPath();
  v110 = v164;
  sub_26F142810(v106, v164, &qword_2806D5018, &qword_26F183788);
  v111 = (v110 + *(v161 + 36));
  *v111 = KeyPath;
  v111[1] = 0x3FE0000000000000;
  v112 = v91 + *(v183 + 32);
  v113 = *v112;
  v114 = *(v112 + 8);
  LOBYTE(v186) = v113;
  v187 = v114;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v185)
  {
    v115 = 1.0;
  }

  else
  {
    v115 = 0.0;
  }

  v116 = v165;
  sub_26F142810(v110, v165, &qword_2806D5020, &qword_26F183790);
  *(v116 + *(v163 + 36)) = v115;
  v117 = v178;
  sub_26F16A9D4(v91, v178);
  v118 = (*(v176 + 80) + 16) & ~*(v176 + 80);
  v119 = swift_allocObject();
  sub_26F16AA3C(v117, v119 + v118);
  v120 = v173;
  sub_26F142810(v116, v173, &qword_2806D5028, &qword_26F183798);
  v121 = (v120 + *(v172 + 36));
  *v121 = sub_26F16BA88;
  v121[1] = v119;
  v121[2] = 0;
  v121[3] = 0;
  *&v122 = COERCE_DOUBLE(sub_26F1677B4());
  swift_getKeyPath();
  v186 = *&v122;
  sub_26F17F7C4();

  v123 = *(v122 + 16);
  v124 = *(v122 + 24);

  v186 = v123;
  v187 = v124;
  sub_26F16A9D4(v91, v117);
  v125 = swift_allocObject();
  sub_26F16AA3C(v117, v125 + v118);
  sub_26F16BAB8();
  v126 = v181;
  sub_26F180324();

  sub_26F13AB10(v120, &qword_2806D5030, &qword_26F1837A0);
  v127 = v174;
  v184 = *(v174 + 16);
  v128 = v175;
  v184(v182, v126, v175);
  v129 = v179;
  v130 = v171;
  v131 = v166;
  *v179 = v171;
  v129[1] = v131;
  v132 = v169;
  v133 = v170;
  v129[2] = v169;
  v129[3] = v133;
  v134 = v168;
  v135 = v167;
  v129[4] = v168;
  v129[5] = v135;
  v136 = v129 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5080, &qword_26F183838) + 48);
  v137 = v182;
  v184(v136, v182, v128);
  sub_26F16BDD0(v130, v131, v132, v133, v134);
  sub_26F16BE48(v130, v131, v132, v133, v134);
  v138 = *(v127 + 8);
  v138(v181, v128);
  v138(v137, v128);
  return sub_26F16BE48(v130, v131, v132, v133, v134);
}

uint64_t sub_26F1698B8(uint64_t a1)
{
  v32 = sub_26F180644();
  v35 = *(v32 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26F180684();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for InstructionView();
  v9 = v8 - 8;
  v28 = *(v8 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_26F1806A4();
  v30 = v11;
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v28 - v17;
  v19 = a1 + *(v9 + 48);
  v20 = *(v19 + 16);
  aBlock = *v19;
  v37 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  sub_26F180414();
  sub_26F169D5C(v41, v42);
  sub_26F16BEB0();
  v21 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v29 = *(v12 + 8);
  v29(v16, v11);
  sub_26F16A9D4(a1, &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v23 = swift_allocObject();
  sub_26F16AA3C(&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  v39 = sub_26F16C120;
  v40 = v23;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v37 = sub_26F1673F4;
  v38 = &block_descriptor_2;
  v24 = _Block_copy(&aBlock);

  sub_26F180664();
  *&aBlock = MEMORY[0x277D84F90];
  sub_26F16C1C4(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  v25 = v31;
  v26 = v32;
  sub_26F180A44();
  MEMORY[0x27438A580](v18, v7, v25, v24);
  _Block_release(v24);

  (*(v35 + 8))(v25, v26);
  (*(v33 + 8))(v7, v34);
  return (v29)(v18, v30);
}

void sub_26F169D5C(double a1, double a2)
{
  v3 = v2;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v4 = sub_26F1677B4();
    swift_getKeyPath();
    sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
    sub_26F17F7C4();

    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v5 & 0xFFFFFFFFFFFFLL;
    }

    if (v7)
    {
      sub_26F180094();
      v8 = sub_26F16AB50();

      v9 = (v3 + *(type metadata accessor for InstructionView() + 36));
      if (v8 <= 2)
      {
        v12 = *v9;
        v13 = v9[1];
      }

      else
      {
        v10 = *v9;
        v11 = v9[1];
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4230, &qword_26F181C60);
      sub_26F180424();
    }
  }
}

uint64_t sub_26F169EFC()
{
  sub_26F180604();
  sub_26F17FA44();
}

uint64_t sub_26F169F78(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for InstructionView() + 32));
  v2 = *v1;
  v3 = *(v1 + 1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  sub_26F180424();
}

void sub_26F16A034(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for InstructionView() + 40));
  v4 = *v1;
  v5 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  sub_26F180414();
  sub_26F169D5C(v2, v3);
}

uint64_t sub_26F16A0A8(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for InstructionView() + 40));
  v3 = *v1;
  v4 = *(v1 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5008, &qword_26F183778);
  return sub_26F180424();
}

void sub_26F16A128(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v2 = MEMORY[0x27438A200](0.5, 1.0, 0.0);
    MEMORY[0x28223BE20](v2);
    sub_26F17FA44();
  }
}

uint64_t sub_26F16A1D8(uint64_t a1)
{
  v3 = type metadata accessor for InstructionView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4BD8, &qword_26F182B50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = a1 + *(v3 + 28);
  v12 = *v11;
  v13 = *(v11 + 8);
  LOBYTE(v25) = v12;
  v26 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if ((v27 & 1) == 0)
  {
    v24[1] = v1;
    v15 = (a1 + *(v3 + 44));
    v17 = *v15;
    v16 = v15[1];
    v25 = *v15;
    v26 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5000, &qword_26F183760);
    sub_26F180414();
    if (v27)
    {
      sub_26F180924();
    }

    v18 = sub_26F180914();
    (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    sub_26F16A9D4(a1, v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    sub_26F1808E4();
    v19 = sub_26F1808D4();
    v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v21 = swift_allocObject();
    v22 = MEMORY[0x277D85700];
    *(v21 + 16) = v19;
    *(v21 + 24) = v22;
    sub_26F16AA3C(v6, v21 + v20);
    v23 = sub_26F1726AC(0, 0, v10, &unk_26F183770, v21);
    v25 = v17;
    v26 = v16;
    v27 = v23;
    return sub_26F180424();
  }

  return result;
}

uint64_t sub_26F16A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a4;
  v5 = sub_26F180AA4();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  sub_26F1808E4();
  v4[10] = sub_26F1808D4();
  v9 = sub_26F1808C4();
  v4[11] = v9;
  v4[12] = v8;

  return MEMORY[0x2822009F8](sub_26F16A568, v9, v8);
}

uint64_t sub_26F16A568()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = (v2 + *(type metadata accessor for InstructionView() + 28));
  v4 = *v3;
  *(v0 + 138) = *v3;
  v5 = *(v3 + 1);
  *(v0 + 16) = v4;
  *(v0 + 104) = v5;
  *(v0 + 24) = v5;
  *(v0 + 136) = 1;
  *(v0 + 112) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v6 = sub_26F180BC4();
  v8 = v7;
  sub_26F180B84();
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_26F16A6B0;
  v10 = *(v0 + 72);

  return sub_26F14A55C(v6, v8, 0, 0, 1);
}

uint64_t sub_26F16A6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 96);
  v9 = *(v2 + 88);
  if (v0)
  {
    v10 = sub_26F16A8F8;
  }

  else
  {
    v10 = sub_26F16A848;
  }

  return MEMORY[0x2822009F8](v10, v9, v8);
}

uint64_t sub_26F16A848()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 138);
  v4 = *(v0 + 80);
  v5 = *(v0 + 48);

  sub_26F1677B4();
  sub_26F15C2EC(0);

  *(v0 + 32) = v3;
  *(v0 + 40) = v2;
  *(v0 + 137) = 0;
  sub_26F180424();
  v6 = *(v0 + 72);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26F16A8F8()
{
  v1 = v0[10];

  if (qword_2806D3FE8 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3._object = 0x800000026F1850B0;
  v3._countAndFlagsBits = 0xD000000000000023;
  TryItLog.log(_:)(v3);

  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26F16A9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F16AA3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InstructionView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F16AAA0()
{
  v1 = *(type metadata accessor for InstructionView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_26F16A0A8(v2);
}

uint64_t sub_26F16AB18()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26F16AB50()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5088, &qword_26F183840);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v40 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5090, &qword_26F183848);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v40 - v6;
  v49 = sub_26F180144();
  v53 = *(v49 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x28223BE20](v49);
  v48 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26F180184();
  v51 = v11;
  v52 = v10;
  v43 = v12;
  v50 = v13;
  v14 = sub_26F1677B4();
  swift_getKeyPath();
  v54 = v14;
  sub_26F16C1C4(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  v16 = *(v14 + 16);
  v15 = *(v14 + 24);

  v54 = v16;
  v55 = v15;
  sub_26F140F5C();
  v17 = sub_26F1801B4();
  v19 = v18;
  v21 = v20;
  v22 = sub_26F180184();
  v46 = v23;
  v47 = v22;
  v44 = v24;
  v45 = v25;
  sub_26F142878(v17, v19, v21 & 1);

  v40[1] = *(type metadata accessor for InstructionView() + 48);
  v26 = sub_26F180114();
  v27 = *(v26 - 8);
  v41 = *(v27 + 56);
  v42 = v27 + 56;
  v41(v7, 1, 1, v26);
  v28 = sub_26F180194();
  v40[0] = *(*(v28 - 8) + 56);
  (v40[0])(v3, 1, 1, v28);
  v29 = v48;
  sub_26F180134();
  sub_26F180124();
  v31 = v30;
  v32 = *(v53 + 8);
  v53 += 8;
  v33 = v49;
  v32(v29, v49);
  v41(v7, 1, 1, v26);
  (v40[0])(v3, 1, 1, v28);
  sub_26F180134();
  LOBYTE(v3) = v44;
  v35 = v46;
  v34 = v47;
  sub_26F180124();
  v37 = v36;
  v32(v29, v33);
  v38 = round(v37 / v31);
  sub_26F142878(v34, v35, v3 & 1);

  sub_26F142878(v52, v51, v43 & 1);

  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v38 < 9.22337204e18)
  {
    return v38;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F16B014@<X0>(void *a1@<X8>)
{
  result = sub_26F17FBD4();
  *a1 = v3;
  return result;
}

uint64_t sub_26F16B068@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC14();
  *a1 = result;
  return result;
}

uint64_t sub_26F16B094@<X0>(_BYTE *a1@<X8>)
{
  result = sub_26F17FC14();
  *a1 = result;
  return result;
}

void sub_26F16B13C(uint64_t a1, _BYTE *a2)
{
  v4 = *(*(type metadata accessor for InstructionView() - 8) + 80);

  sub_26F16A128(a1, a2);
}

unint64_t sub_26F16B1BC()
{
  result = qword_2806D4F90;
  if (!qword_2806D4F90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F60, &qword_26F183688);
    sub_26F16B248();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4F90);
  }

  return result;
}

unint64_t sub_26F16B248()
{
  result = qword_2806D4F98;
  if (!qword_2806D4F98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F58, &qword_26F183680);
    sub_26F16B300();
    sub_26F13AC54(&qword_2806D4FD8, &qword_2806D4FE0, &qword_26F183718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4F98);
  }

  return result;
}

unint64_t sub_26F16B300()
{
  result = qword_2806D4FA0;
  if (!qword_2806D4FA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F50, &qword_26F183678);
    sub_26F16B38C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FA0);
  }

  return result;
}

unint64_t sub_26F16B38C()
{
  result = qword_2806D4FA8;
  if (!qword_2806D4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F48, &qword_26F183670);
    sub_26F16B418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FA8);
  }

  return result;
}

unint64_t sub_26F16B418()
{
  result = qword_2806D4FB0;
  if (!qword_2806D4FB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F40, &qword_26F183668);
    sub_26F16B4A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FB0);
  }

  return result;
}

unint64_t sub_26F16B4A4()
{
  result = qword_2806D4FB8;
  if (!qword_2806D4FB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F38, &qword_26F183660);
    sub_26F16B55C();
    sub_26F13AC54(&qword_2806D48F8, &qword_2806D4900, &qword_26F182480);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FB8);
  }

  return result;
}

unint64_t sub_26F16B55C()
{
  result = qword_2806D4FC0;
  if (!qword_2806D4FC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F88, &qword_26F1836B0);
    sub_26F13AC54(&qword_2806D4FC8, &qword_2806D4FD0, &qword_26F183710);
    sub_26F13AC54(&qword_2806D48E8, &qword_2806D48F0, &qword_26F182478);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D4FC0);
  }

  return result;
}

uint64_t sub_26F16B640(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4F60, &qword_26F183688);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26F16B6CC()
{
  v1 = type metadata accessor for InstructionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_26F17FE84();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 1, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }
  }

  else
  {
    v9 = *v6;
  }

  v10 = *&v6[v1[5]];

  v11 = &v6[v1[6]];
  v12 = *v11;

  v13 = *(v11 + 1);

  v14 = *&v6[v1[7] + 8];

  v15 = *&v6[v1[8] + 8];

  v16 = *&v6[v1[9] + 8];

  v17 = *&v6[v1[10] + 16];

  v18 = &v6[v1[11]];
  v19 = *v18;

  v20 = *(v18 + 1);

  v21 = v1[12];
  v22 = sub_26F180164();
  (*(*(v22 - 8) + 8))(&v6[v21], v22);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F16B8F8(uint64_t a1)
{
  v4 = *(type metadata accessor for InstructionView() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F149E48;

  return sub_26F16A474(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F16B9F4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  return sub_26F15A234(v2, v3);
}

uint64_t sub_26F16BA34@<X0>(void *a1@<X8>)
{
  result = sub_26F17FBD4();
  *a1 = v3;
  return result;
}

unint64_t sub_26F16BAB8()
{
  result = qword_2806D5040;
  if (!qword_2806D5040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5030, &qword_26F1837A0);
    sub_26F16BB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5040);
  }

  return result;
}

unint64_t sub_26F16BB44()
{
  result = qword_2806D5048;
  if (!qword_2806D5048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5028, &qword_26F183798);
    sub_26F16BBD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5048);
  }

  return result;
}

unint64_t sub_26F16BBD0()
{
  result = qword_2806D5050;
  if (!qword_2806D5050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5020, &qword_26F183790);
    sub_26F16BC88();
    sub_26F13AC54(&qword_2806D5070, &qword_2806D5078, &qword_26F183830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5050);
  }

  return result;
}

unint64_t sub_26F16BC88()
{
  result = qword_2806D5058;
  if (!qword_2806D5058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5018, &qword_26F183788);
    sub_26F16BD14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5058);
  }

  return result;
}

unint64_t sub_26F16BD14()
{
  result = qword_2806D5060;
  if (!qword_2806D5060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D5010, &qword_26F183780);
    sub_26F16C1C4(&qword_2806D5068, type metadata accessor for SystemFontScaledSupport);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5060);
  }

  return result;
}

void sub_26F16BDD0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != 1)
  {

    v7 = a3;

    v8 = a5;
  }
}

uint64_t sub_26F16BE48(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_26F16BEB0()
{
  result = qword_2806D4340;
  if (!qword_2806D4340)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2806D4340);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = type metadata accessor for InstructionView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4280, &qword_26F181CB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_26F17FE84();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = *&v5[v1[5]];

  v10 = &v5[v1[6]];
  v11 = *v10;

  v12 = *(v10 + 1);

  v13 = *&v5[v1[7] + 8];

  v14 = *&v5[v1[8] + 8];

  v15 = *&v5[v1[9] + 8];

  v16 = *&v5[v1[10] + 16];

  v17 = &v5[v1[11]];
  v18 = *v17;

  v19 = *(v17 + 1);

  v20 = v1[12];
  v21 = sub_26F180164();
  (*(*(v21 - 8) + 8))(&v5[v20], v21);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_26F16C138(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InstructionView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F16C1C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_26F16C234()
{
  result = qword_2806D5098;
  if (!qword_2806D5098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4FF0, &qword_26F183750);
    sub_26F16C2C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D5098);
  }

  return result;
}

unint64_t sub_26F16C2C0()
{
  result = qword_2806D50A0;
  if (!qword_2806D50A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F78, &qword_26F1836A0);
    sub_26F16C378();
    sub_26F13AC54(&qword_2806D4678, &qword_2806D4680, &qword_26F182188);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50A0);
  }

  return result;
}

unint64_t sub_26F16C378()
{
  result = qword_2806D50A8;
  if (!qword_2806D50A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F70, &qword_26F183698);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4F60, &qword_26F183688);
    sub_26F16B1BC();
    swift_getOpaqueTypeConformance2();
    sub_26F13AC54(&qword_2806D50B0, &qword_2806D4FE8, &qword_26F183748);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50A8);
  }

  return result;
}

uint64_t sub_26F16C4DC(uint64_t a1, uint64_t *a2)
{
  v3 = sub_26F180334();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 104))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CE0EE0]);
  result = sub_26F180394();
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DraggableLocationItem.GestureState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DraggableLocationItem.GestureState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_26F16C750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_26F180714();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 64);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_26F16C810(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_26F180714();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 64);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DraggableLocationItem()
{
  result = qword_2806D50B8;
  if (!qword_2806D50B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F16C900()
{
  sub_26F16CB0C(319, &qword_2806D4208, type metadata accessor for TrainingManager, MEMORY[0x277CDF468]);
  if (v0 <= 0x3F)
  {
    sub_26F16CAA8();
    if (v1 <= 0x3F)
    {
      sub_26F16CB0C(319, &qword_2806D50D0, type metadata accessor for CGRect, MEMORY[0x277CE11F8]);
      if (v2 <= 0x3F)
      {
        sub_26F13FF30(319, &qword_2806D4210);
        if (v3 <= 0x3F)
        {
          sub_26F13FF30(319, &qword_2806D4538);
          if (v4 <= 0x3F)
          {
            sub_26F13FF30(319, &qword_2806D50D8);
            if (v5 <= 0x3F)
            {
              sub_26F180714();
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_26F16CAA8()
{
  if (!qword_2806D50C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806D4830, "~m");
    v0 = sub_26F1804A4();
    if (!v1)
    {
      atomic_store(v0, &qword_2806D50C8);
    }
  }
}

void sub_26F16CB0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F16CB74()
{
  result = qword_2806D50E0;
  if (!qword_2806D50E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806D50E0);
  }

  return result;
}

uint64_t sub_26F16CBC8()
{
  v1 = sub_26F17FC84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    sub_26F180944();
    v8 = sub_26F17FFE4();
    sub_26F17F884();

    sub_26F17FC74();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

void *sub_26F16CD08@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v178 = a1;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D46A8, &qword_26F182228);
  v176 = *(v177 - 8);
  v3 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = v149 - v4;
  v161 = sub_26F17FE54();
  v5 = *(*(v161 - 8) + 64);
  MEMORY[0x28223BE20](v161);
  v159 = v149 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_26F17F8F4();
  v164 = *(v166 - 8);
  v7 = *(v164 + 64);
  MEMORY[0x28223BE20](v166);
  v162 = v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50E8, &qword_26F1839A0);
  v169 = *(v170 - 8);
  v9 = *(v169 + 64);
  MEMORY[0x28223BE20](v170);
  v168 = v149 - v10;
  v190 = sub_26F17FAE4();
  v192 = *(v190 - 8);
  v11 = *(v192 + 64);
  MEMORY[0x28223BE20](v190);
  v189 = v149 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = sub_26F17F8C4();
  v152 = *(v153 - 8);
  v13 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = v149 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50F0, &qword_26F1839A8);
  v15 = *(*(v163 - 8) + 64);
  MEMORY[0x28223BE20](v163);
  v187 = v149 - v16;
  v17 = type metadata accessor for DraggableLocationItem();
  v18 = v17 - 8;
  v193 = *(v17 - 8);
  v191 = *(v193 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v149 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_26F17FF14();
  v21 = *(v183 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v183);
  v24 = v149 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for LocationItemView();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25);
  v28 = v149 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D50F8, &qword_26F1839B0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29);
  v33 = v149 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5100, &qword_26F1839B8);
  v35 = v34 - 8;
  v36 = *(*(v34 - 8) + 64);
  MEMORY[0x28223BE20](v34);
  v180 = v149 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5108, &qword_26F1839C0);
  v39 = *(v38 - 8);
  v181 = v38 - 8;
  v40 = *(v39 + 64);
  MEMORY[0x28223BE20](v38 - 8);
  v179 = v149 - v41;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5110, &qword_26F1839C8);
  v42 = *(*(v184 - 8) + 64);
  MEMORY[0x28223BE20](v184);
  v185 = v149 - v43;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5118, &qword_26F1839D0);
  v156 = *(v158 - 8);
  v44 = *(v156 + 64);
  MEMORY[0x28223BE20](v158);
  v155 = v149 - v45;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5120, &qword_26F1839D8);
  v46 = *(*(v154 - 8) + 64);
  MEMORY[0x28223BE20](v154);
  v157 = v149 - v47;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5128, &qword_26F1839E0);
  v48 = *(*(v188 - 8) + 64);
  MEMORY[0x28223BE20](v188);
  v160 = v149 - v49;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5130, &qword_26F1839E8);
  v167 = *(v172 - 8);
  v50 = *(v167 + 64);
  MEMORY[0x28223BE20](v172);
  v165 = v149 - v51;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5138, &qword_26F1839F0);
  v173 = *(v174 - 8);
  v52 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v171 = v149 - v53;
  v54 = *(v18 + 72);
  v55 = sub_26F180714();
  (*(*(v55 - 8) + 16))(v28, v2 + v54, v55);
  v56 = *(v2 + 224);
  v57 = &v28[*(v25 + 20)];
  *v57 = *(v2 + 216);
  *(v57 + 1) = v56;

  sub_26F17FF04();
  sub_26F171CDC(&qword_2806D5140, type metadata accessor for LocationItemView);
  sub_26F1802D4();
  (*(v21 + 8))(v24, v183);
  sub_26F170B34(v28);
  v58 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5148, &unk_26F1839F8) + 36)];
  v59 = *(sub_26F17FB14() + 20);
  v60 = *MEMORY[0x277CE0118];
  v61 = sub_26F17FD14();
  (*(*(v61 - 8) + 104))(&v58[v59], v60, v61);
  __asm { FMOV            V0.2D, #18.0 }

  *v58 = _Q0;
  *&v58[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D44C8, &qword_26F181FB0) + 36)] = 256;
  v67 = sub_26F180354();
  LOBYTE(v58) = sub_26F180014();
  v68 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5150, &qword_26F183A08) + 36)];
  *v68 = v67;
  v68[8] = v58;
  v69 = v179;
  sub_26F170B90(v2, v20);
  v70 = *(v193 + 80);
  v71 = (v70 + 16) & ~v70;
  v72 = v71 + v191;
  v73 = swift_allocObject();
  sub_26F170BF8(v20, v73 + v71);
  v74 = &v33[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5158, &qword_26F183A10) + 36)];
  *v74 = sub_26F16E358;
  v74[1] = 0;
  v74[2] = sub_26F170C5C;
  v74[3] = v73;
  sub_26F170B90(v2, v20);
  v193 = v70;
  v191 = v72;
  v75 = swift_allocObject();
  v186 = v20;
  sub_26F170BF8(v20, v75 + v71);
  v76 = sub_26F180564();
  v77 = &v33[*(v30 + 44)];
  *v77 = sub_26F170CCC;
  v77[1] = v75;
  v77[2] = v76;
  v77[3] = v78;
  v79 = *(v2 + 192);
  v80 = *(v2 + 200);
  LOBYTE(v194) = *(v2 + 192);
  *&v195 = v80;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180414();
  if (v197 == 1)
  {
    v82 = 1.03;
  }

  else
  {
    v82 = 1.0;
  }

  sub_26F180634();
  v84 = v83;
  v86 = v85;
  v87 = v33;
  v88 = v180;
  sub_26F142810(v87, v180, &qword_2806D50F8, &qword_26F1839B0);
  v89 = &v88[*(v35 + 44)];
  *v89 = v82;
  v89[1] = v82;
  *(v89 + 2) = v84;
  *(v89 + 3) = v86;
  v90 = sub_26F1805F4();
  LOBYTE(v194) = v79;
  v150 = v80;
  *&v195 = v80;
  v149[1] = v81;
  sub_26F180414();
  v91 = v197 == 1;
  sub_26F142810(v88, v69, &qword_2806D5100, &qword_26F1839B8);
  v92 = v69 + *(v181 + 44);
  *v92 = v90;
  *(v92 + 8) = v91;
  v93 = *(v2 + 208);
  v194 = *(v2 + 40);
  v94 = v2;
  v195 = *(v2 + 48);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  result = MEMORY[0x27438A090](&v197, v95);
  if ((v93 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  result = v197;
  if (v93 >= v197[2])
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v97 = v197[v93 + 4];

  v98 = v185;
  sub_26F142810(v69, v185, &qword_2806D5108, &qword_26F1839C0);
  v99 = (v98 + *(v184 + 36));
  *v99 = 0;
  v99[1] = v97;
  v100 = v151;
  sub_26F17F8B4();
  v101 = v2;
  v102 = v186;
  sub_26F170B90(v101, v186);
  v103 = swift_allocObject();
  sub_26F170BF8(v102, v103 + v71);
  v104 = swift_allocObject();
  *(v104 + 16) = sub_26F170D4C;
  *(v104 + 24) = v103;
  v105 = v153;
  sub_26F1804C4();

  (*(v152 + 8))(v100, v105);
  LODWORD(v179) = v79;
  v106 = v189;
  sub_26F17FAD4();
  v107 = v94;
  sub_26F170B90(v94, v102);
  v108 = swift_allocObject();
  sub_26F170BF8(v102, v108 + v71);
  LODWORD(v100) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5170, &unk_26F183A28) + 52);
  v181 = sub_26F171CDC(&qword_2806D4700, MEMORY[0x277CDDAD8]);
  v109 = v190;
  sub_26F1804C4();

  v110 = *(v192 + 8);
  v192 += 8;
  v180 = v110;
  (v110)(v106, v109);
  sub_26F17FE94();
  v111 = v162;
  sub_26F17F8D4();
  v112 = v107;
  v182 = v107;
  sub_26F170B90(v107, v102);
  v113 = swift_allocObject();
  sub_26F170BF8(v102, v113 + v71);
  sub_26F171CDC(&qword_2806D4AE0, MEMORY[0x277CDD730]);
  sub_26F171CDC(&qword_2806D5178, MEMORY[0x277CDD708]);
  v114 = v168;
  v115 = v166;
  sub_26F1804D4();

  (*(v164 + 8))(v111, v115);
  sub_26F170B90(v112, v102);
  v116 = swift_allocObject();
  v183 = v71;
  v117 = v102;
  sub_26F170BF8(v102, v116 + v71);
  v118 = *(v163 + 52);
  sub_26F13AC54(&qword_2806D5180, &qword_2806D50E8, &qword_26F1839A0);
  v119 = v187;
  v120 = v170;
  sub_26F1804C4();

  (*(v169 + 8))(v114, v120);
  sub_26F17F924();
  sub_26F170E90();
  sub_26F13AC54(&qword_2806D51E0, &qword_2806D50F0, &qword_26F1839A8);
  v121 = v155;
  v122 = v185;
  sub_26F180304();
  sub_26F13AB10(v119, &qword_2806D50F0, &qword_26F1839A8);
  sub_26F13AB10(v122, &qword_2806D5110, &qword_26F1839C8);
  LOBYTE(v194) = v179;
  *&v195 = v150;
  sub_26F180414();
  v123 = 1.0;
  if (v197)
  {
    v124 = 1.0;
  }

  else
  {
    v124 = 0.0;
  }

  v125 = v157;
  (*(v156 + 32))(v157, v121, v158);
  *(v125 + *(v154 + 36)) = v124;
  v126 = v182;
  v127 = *(v182 + 120);
  LOBYTE(v194) = *(v182 + 112);
  *&v195 = v127;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180414();
  if (v197)
  {
    v123 = 0.85;
  }

  v128 = v160;
  sub_26F142810(v125, v160, &qword_2806D5120, &qword_26F1839D8);
  v129 = v189;
  *(v128 + *(v188 + 36)) = v123;
  sub_26F17FAD4();
  sub_26F170B90(v126, v117);
  v130 = swift_allocObject();
  sub_26F170BF8(v117, v130 + v71);
  v131 = v175;
  v132 = v190;
  sub_26F1804C4();

  (v180)(v129, v132);
  sub_26F17F924();
  v133 = sub_26F17143C();
  v134 = sub_26F13AC54(&qword_2806D4708, &qword_2806D46A8, &qword_26F182228);
  v135 = v165;
  v136 = v177;
  sub_26F1802C4();
  (*(v176 + 8))(v131, v136);
  sub_26F13AB10(v128, &qword_2806D5128, &qword_26F1839E0);
  v137 = v182;
  v138 = *(v182 + 152);
  LOBYTE(v194) = *(v182 + 144);
  *&v195 = v138;
  sub_26F180414();
  v139 = v186;
  sub_26F170B90(v137, v186);
  v140 = swift_allocObject();
  v141 = v139;
  sub_26F170BF8(v139, v140 + v183);
  v194 = v188;
  *&v195 = v136;
  *(&v195 + 1) = v133;
  v196 = v134;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v143 = MEMORY[0x277D839B0];
  v144 = v171;
  v145 = v172;
  sub_26F180324();

  (*(v167 + 8))(v135, v145);
  v146 = sub_26F16CBC8();
  swift_getKeyPath();
  v194 = v146;
  sub_26F171CDC(&qword_2806D40F0, type metadata accessor for TrainingManager);
  sub_26F17F7C4();

  LOBYTE(v139) = *(v146 + 51);

  LOBYTE(v197) = v139;
  sub_26F170B90(v137, v141);
  v147 = swift_allocObject();
  sub_26F170BF8(v141, v147 + v183);
  v194 = v145;
  *&v195 = v143;
  *(&v195 + 1) = OpaqueTypeConformance2;
  v196 = MEMORY[0x277D839C8];
  swift_getOpaqueTypeConformance2();
  v148 = v174;
  sub_26F180324();

  return (*(v173 + 8))(v144, v148);
}

void sub_26F16E358(CGFloat *a1@<X8>)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F17FEA4();
  sub_26F17F9D4();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetMidY(v16);
}

uint64_t sub_26F16E474(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 176);
  v5 = *(a2 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  return sub_26F180424();
}

uint64_t sub_26F16E4D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  v5 = sub_26F17F9E4();
  v6 = *(v5 - 8);
  v33 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DraggableLocationItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26F180354();
  v31 = v13;
  sub_26F170B90(a2, v12);
  v28 = *(v6 + 16);
  v14 = a1;
  v15 = v5;
  v28(v8, v14, v5);
  v16 = *(v10 + 80);
  v17 = *(v6 + 80);
  v18 = (v16 + 16) & ~v16;
  v27[0] = v18;
  v19 = (v11 + v17 + v18) & ~v17;
  v27[1] = v16 | v17;
  v20 = swift_allocObject();
  v30 = v20;
  sub_26F170BF8(v12, v20 + v18);
  v21 = *(v6 + 32);
  v21(v20 + v19, v8, v15);
  v38 = v13;
  v39 = sub_26F1718C4;
  v40 = v20;
  v41 = 0;
  v42 = 0;
  v22 = *(a2 + 72);
  *&v35 = *(a2 + 64);
  *(&v35 + 1) = v22;
  v23 = *(a2 + 96);
  v36 = *(a2 + 80);
  v37 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D51F8, &unk_26F183A98);
  MEMORY[0x27438A090](v34, v24);
  v35 = v34[0];
  v36 = v34[1];
  sub_26F170B90(a2, v12);
  v28(v8, v29, v15);
  v25 = swift_allocObject();
  sub_26F170BF8(v12, v25 + v27[0]);
  v21(v25 + v19, v8, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5200, &qword_26F183AA8);
  type metadata accessor for CGRect(0);
  sub_26F171C58();
  sub_26F171CDC(&qword_2806D5210, type metadata accessor for CGRect);
  sub_26F180314();
}

uint64_t sub_26F16E848(void *a1)
{
  v2 = sub_26F17FE64();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[26];
  sub_26F17FEA4();
  sub_26F17F9D4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  (*(v3 + 8))(v6, v2);
  v24.origin.x = v9;
  v24.origin.y = v11;
  v24.size.width = v13;
  v24.size.height = v15;
  MidY = CGRectGetMidY(v24);
  v17 = a1[2];
  v18 = a1[3];
  v19 = a1[4];
  v22[4] = v17;
  v22[5] = v18;
  v22[6] = v19;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v23);
  v20 = v23;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26F1716A8(v20);
  v20 = result;
  if ((v7 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v7 < *(v20 + 16))
  {
    *(v20 + 8 * v7 + 32) = MidY;
    v22[1] = v17;
    v22[2] = v18;
    v22[3] = v19;
    v22[0] = v20;
    sub_26F180484();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F16EA2C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26F17FE64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3[26];
  sub_26F17FEA4();
  sub_26F17F9D4();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  (*(v5 + 8))(v8, v4);
  v26.origin.x = v11;
  v26.origin.y = v13;
  v26.size.width = v15;
  v26.size.height = v17;
  MidY = CGRectGetMidY(v26);
  v19 = a3[2];
  v20 = a3[3];
  v21 = a3[4];
  v24[4] = v19;
  v24[5] = v20;
  v24[6] = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v25);
  v22 = v25;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v9 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_26F1716A8(v22);
  v22 = result;
  if ((v9 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v9 < *(v22 + 16))
  {
    *(v22 + 8 * v9 + 32) = MidY;
    v24[1] = v19;
    v24[2] = v20;
    v24[3] = v21;
    v24[0] = v22;
    sub_26F180484();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_26F16EC10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4];
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26F16CBC8();
  sub_26F180704();
  (*(v7 + 56))(v5, 1, 1, v6);
  sub_26F15BCB8(v10, 1, v5);

  sub_26F13AB10(v5, &qword_2806D4360, &qword_26F181DC0);
  (*(v7 + 8))(v10, v6);
  v11 = *(a1 + 120);
  v16 = *(a1 + 112);
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if ((v15 & 1) == 0)
  {
    v13 = *(a1 + 200);
    v16 = *(a1 + 192);
    v17 = v13;
    v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    return sub_26F180424();
  }

  return result;
}

uint64_t sub_26F16EE18(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v30 = sub_26F180644();
  v33 = *(v30 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26F180684();
  v31 = *(v5 - 8);
  v32 = v5;
  v6 = *(v31 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DraggableLocationItem();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = sub_26F1806A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_26F16BEB0();
  v27 = sub_26F180984();
  sub_26F180694();
  sub_26F1806B4();
  v29 = *(v13 + 8);
  v29(v17, v12);
  sub_26F170B90(v28, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v21 = swift_allocObject();
  sub_26F170BF8(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  aBlock[4] = sub_26F17181C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F1673F4;
  aBlock[3] = &block_descriptor_3;
  v22 = _Block_copy(aBlock);

  sub_26F180664();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_26F171CDC(&qword_2806D40E0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806D4350, &qword_26F181AE0);
  sub_26F13AC54(&qword_2806D40E8, &unk_2806D4350, &qword_26F181AE0);
  v23 = v30;
  sub_26F180A44();
  v24 = v27;
  MEMORY[0x27438A580](v19, v8, v4, v22);
  _Block_release(v22);

  (*(v33 + 8))(v4, v23);
  (*(v31 + 8))(v8, v32);
  return (v29)(v19, v12);
}

uint64_t sub_26F16F270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4360, &qword_26F181DC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14[-v4];
  v6 = sub_26F180714();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + 120);
  v16 = *(a1 + 112);
  v17 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  result = sub_26F180414();
  if ((v15 & 1) == 0)
  {
    sub_26F16CBC8();
    sub_26F180704();
    sub_26F180704();
    (*(v7 + 56))(v5, 0, 1, v6);
    sub_26F15BCB8(v10, 1, v5);

    sub_26F13AB10(v5, &qword_2806D4360, &qword_26F181DC0);
    (*(v7 + 8))(v10, v6);
    v13 = *(a1 + 200);
    v16 = *(a1 + 192);
    v17 = v13;
    v15 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
    return sub_26F180424();
  }

  return result;
}

uint64_t sub_26F16F4A0(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 112);
  v10 = *(a2 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v7 = *(a2 + 192);
  v11 = *(a2 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5160, &qword_26F183A18);
  sub_26F180414();
  v8 = *(a2 + 144);
  v12 = *(a2 + 152);
  LOBYTE(v5) = 0;
  sub_26F180424();
  v9 = *(a2 + 176);
  v13 = *(a2 + 184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D45F0, &qword_26F183A90);
  sub_26F180414();
  sub_26F16F63C(*(a2 + 208), v5);
  sub_26F1805D4();
  sub_26F1805A4();

  MEMORY[0x28223BE20](v3);
  sub_26F17FA44();
}

uint64_t sub_26F16F63C(unint64_t a1, double a2)
{
  v3 = v2;
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v35 = v7;
  v36 = v6;
  v37 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D5168, &qword_26F183A20);
  MEMORY[0x27438A090](&v34);
  v10 = *(v34 + 16);

  if (v10 <= a1)
  {
    goto LABEL_54;
  }

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  v11 = *(v34 + 16);

  if (v11 != 3)
  {
    goto LABEL_54;
  }

  v12 = sub_26F180894();
  v12[4] = 0.0;
  v13 = v12 + 4;
  *(v12 + 2) = 3;
  v12[5] = 0.0;
  v12[6] = 0.0;
  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_40;
  }

  if (*(v34 + 16) <= a1)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v14 = *(v34 + 8 * a1 + 32);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) <= a1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v15 = *(v34 + 8 * a1 + 32);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) < 2uLL)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(v34 + 40);

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (!*(v34 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v17 = *(v34 + 32);

  if (!a1)
  {
    v35 = v7;
    v36 = v6;
    v37 = v8;
    MEMORY[0x27438A090](&v34, v9);
    if (*(v34 + 16))
    {
      v20 = *(v34 + 32);

      if (v20 > a2)
      {
        return v12;
      }

LABEL_15:
      v19 = 1;
      goto LABEL_16;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (a1 != 2)
  {
    goto LABEL_15;
  }

  v35 = v7;
  v36 = v6;
  v37 = v8;
  MEMORY[0x27438A090](&v34, v9);
  if (*(v34 + 16) < 3uLL)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v18 = *(v34 + 48);

  if (v18 < a2)
  {
    return v12;
  }

  v19 = 0;
LABEL_16:
  v21 = a2 + 55.0 - v14;
  v22 = a2 + -55.0 - v15;
  v23 = v16 - v17;
  v24 = fabs(v22);
  v25 = fabs(v21);
  if (v16 - v17 > v24 && v23 > v25)
  {
    return v12;
  }

  v27 = v3[17];
  LOBYTE(v35) = *(v3 + 128);
  v36 = v27;
  LOBYTE(v34) = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806D4228, &unk_26F183A50);
  sub_26F180424();
  v28 = v3[19];
  LOBYTE(v35) = *(v3 + 144);
  v36 = v28;
  LOBYTE(v34) = 1;
  sub_26F180424();
  if (v22 < 0.0)
  {
    if (v24 / v23 < 2.0)
    {
      v29 = 1;
    }

    else
    {
      v29 = v19;
    }

    v30 = *(v12 + 2);
    if ((v29 & 1) == 0)
    {
      if (v30 > a1)
      {
        v33 = &v13[a1];
        *(v33 - 1) = v23;
        *v33 = v23 * -2.0;
        *(v33 - 2) = v23;
        return v12;
      }

      goto LABEL_47;
    }

    if (v30 > a1)
    {
      v31 = &v13[a1];
      *v31 = -v23;
      if (a1)
      {
        *(v31 - 1) = v23;
        return v12;
      }

      goto LABEL_48;
    }

LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v21 <= 0.0)
  {
    return v12;
  }

  v32 = *(v12 + 2);
  if (a1 || v25 / v23 < 2.0)
  {
    if (v32 > a1)
    {
      v13[a1] = v23;
      if (a1 + 1 < v32)
      {
        v13[a1 + 1] = -v23;
        return v12;
      }

      goto LABEL_51;
    }

    goto LABEL_49;
  }

  if (!v32)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  *v13 = v23 + v23;
  if (v32 != 1)
  {
    v12[5] = -v23;
    if (v32 != 2)
    {
      v12[6] = -v23;
      return v12;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  result = sub_26F180AC4();
  __break(1u);
  return result;
}