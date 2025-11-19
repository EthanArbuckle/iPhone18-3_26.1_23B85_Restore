uint64_t (*sub_261BB5898(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261BB5914()
{
  result = qword_280D22CB0;
  if (!qword_280D22CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CB0);
  }

  return result;
}

unint64_t sub_261BB596C()
{
  result = qword_280D22CB8[0];
  if (!qword_280D22CB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D22CB8);
  }

  return result;
}

uint64_t sub_261BB5A2C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99D8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB730);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BB5AD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  sub_261CFFD24();
  *(v2 + 40) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x2822009F8](sub_261BB5B78, v4, v3);
}

uint64_t sub_261BB5B78()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_261BB5C4C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_261C58674)(v6, "OpenSmartListAppIntent", 22, 2, v4, v5);
}

uint64_t sub_261BB5C4C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = v0;

  v5 = *(v2 + 56);
  v6 = *(v2 + 48);
  if (v0)
  {
    v7 = sub_261BB5DEC;
  }

  else
  {
    v7 = sub_261BB5D88;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BB5D88()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261BB5DEC()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_261BB5E54(uint64_t a1)
{
  v2 = sub_261B318F4();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenSmartListAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t DeleteSectionsAppIntent.entities.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t DeleteSectionsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v36 = a1;
  v1 = sub_261CFD184();
  v34 = *(v1 - 8);
  v35 = v1;
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v1);
  v33 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v31 - v12;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v31[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB778, &qword_261D072C0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v15 + 104))(v18, *MEMORY[0x277CC9110], v14);
  sub_261CFD6C4();
  (*(v24 + 56))(v13, 1, 1, v23);
  v38 = 0;
  v26 = sub_261CFC834();
  v27 = *(*(v26 - 8) + 56);
  v27(v9, 1, 1, v26);
  v27(v32, 1, 1, v26);
  (*(v34 + 104))(v33, *MEMORY[0x277CBA308], v35);
  sub_261BB64D0();
  v28 = sub_261CFCC34();
  v29 = v36;
  *v36 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB780, &qword_261D072C8);
  v37 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v29[1] = result;
  return result;
}

unint64_t sub_261BB64D0()
{
  result = qword_280D224E0;
  if (!qword_280D224E0)
  {
    type metadata accessor for SectionEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D224E0);
  }

  return result;
}

uint64_t sub_261BB6530()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDB760);
  __swift_project_value_buffer(v9, qword_27FEDB760);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static DeleteSectionsAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static DeleteSectionsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261BB6ABC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261BB6AF8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v5 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

void (*DeleteSectionsAppIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA3C4;
}

uint64_t static DeleteSectionsAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB788, &qword_261D072D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB790, &qword_261D072D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B318A0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB798, &qword_261D07308);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t DeleteSectionsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = *v1;
  sub_261CFFD24();
  *(v2 + 136) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 144) = v4;
  *(v2 + 152) = v3;

  return MEMORY[0x2822009F8](sub_261BB6E5C, v4, v3);
}

uint64_t sub_261BB6E5C()
{
  v1 = v0[15];
  v2 = v0[16];
  sub_261B1CFCC(0, v1, v2);
  sub_261CFC664();
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[12] = v1;
  v0[13] = v2;
  v5 = *(v4 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_261BB6FC8;

  return (v9)(v0 + 7, v0 + 12, v3, v4);
}

uint64_t sub_261BB6FC8()
{
  v2 = *v1;
  v3 = (*v1)[20];
  v8 = *v1;
  (*v1)[21] = v0;

  if (v0)
  {
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_261BB715C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v4 = v2[18];
    v5 = v2[19];
    v6 = sub_261BB70E4;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261BB70E4()
{
  v1 = v0[17];
  v2 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_261CFC9A4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_261BB715C()
{
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[21];

  return v2();
}

unint64_t sub_261BB71CC()
{
  result = qword_27FEDB7A0;
  if (!qword_27FEDB7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7A0);
  }

  return result;
}

uint64_t sub_261BB7224()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

unint64_t sub_261BB725C()
{
  result = qword_27FEDB7A8;
  if (!qword_27FEDB7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7A8);
  }

  return result;
}

unint64_t sub_261BB72B4()
{
  result = qword_27FEDB7B0;
  if (!qword_27FEDB7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7B0);
  }

  return result;
}

uint64_t sub_261BB7340@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB760);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BB73E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB788, &qword_261D072D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB790, &qword_261D072D8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB798, &qword_261D07308);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261BB7580(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return DeleteSectionsAppIntent.perform()(a1);
}

uint64_t sub_261BB7620(uint64_t a1)
{
  v2 = sub_261B318A0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of DeleteSectionsAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t ColorEntity.init(name:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a1;
  v31 = a2;
  v34 = a3;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v35 = 64;
  v36 = 0xE100000000000000;
  MEMORY[0x26671C210](a1, a2);
  v32 = v36;
  v33 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v6 + 104);
  v17(v9, v16, v5);
  sub_261CFD6C4();
  v29 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v17(v9, v16, v5);
  sub_261CFD6B4();
  v28 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v17(v9, v16, v5);
  sub_261CFD6B4();
  v27 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v17(v9, v16, v5);
  sub_261CFD6B4();
  v18 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v17(v9, v16, v5);
  sub_261CFD6C4();
  v19 = sub_261CFCB44();
  v35 = v30;
  v36 = v31;
  v20 = v29;
  sub_261CFCA14();
  v35 = 0;
  LOBYTE(v36) = 1;
  v21 = v28;
  sub_261CFCA14();
  v35 = 0;
  LOBYTE(v36) = 1;
  v22 = v27;
  sub_261CFCA14();
  v35 = 0;
  LOBYTE(v36) = 1;
  sub_261CFCA14();
  v35 = 0;
  LOBYTE(v36) = 1;
  result = sub_261CFCA14();
  v24 = v34;
  v25 = v32;
  *v34 = v33;
  v24[1] = v25;
  v24[2] = v20;
  v24[3] = v21;
  v24[4] = v22;
  v24[5] = v18;
  v24[6] = v19;
  return result;
}

uint64_t ColorEntity.name.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCA04();
  return v3;
}

uint64_t ColorEntity.init(id:name:red:green:blue:alpha:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13)
{
  v49 = a8;
  v48 = a7;
  v45 = a6;
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v40 = a1;
  v37 = a9;
  v51 = a13;
  v50 = a12;
  v47 = a11;
  v46 = a10;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD884();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = sub_261CFFA44();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = sub_261CFD6A4();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v14 + 104);
  v35 = v14 + 104;
  v34 = v24;
  v25(v17, v24, v13);
  sub_261CFD6C4();
  v39 = sub_261CFCB14();
  v26 = v37;
  v37[2] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v27 = v13;
  v25(v17, v24, v13);
  sub_261CFD6B4();
  v38 = sub_261CFCB44();
  v28 = v26;
  v26[3] = v38;
  sub_261CFF9B4();
  sub_261CFD874();
  v29 = v34;
  v33 = v27;
  v25(v17, v34, v27);
  sub_261CFD6B4();
  v36 = sub_261CFCB44();
  v28[4] = v36;
  sub_261CFF9B4();
  sub_261CFD874();
  v25(v17, v29, v27);
  sub_261CFD6B4();
  v28[5] = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v25(v17, v29, v33);
  sub_261CFD6C4();
  v28[6] = sub_261CFCB44();
  v30 = v41;
  *v28 = v40;
  v28[1] = v30;
  v52 = v42;
  v53 = v43;
  sub_261CFCA14();
  v52 = v44;
  LOBYTE(v53) = v45 & 1;
  sub_261CFCA14();
  v52 = v48;
  LOBYTE(v53) = v49 & 1;
  sub_261CFCA14();
  v52 = v46;
  LOBYTE(v53) = v47 & 1;
  sub_261CFCA14();
  v52 = v50;
  LOBYTE(v53) = v51 & 1;
  return sub_261CFCA14();
}

uint64_t ColorEntity.red.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCA04();
  return v3;
}

uint64_t ColorEntity.green.getter()
{
  v1 = *(v0 + 32);
  sub_261CFCA04();
  return v3;
}

uint64_t ColorEntity.blue.getter()
{
  v1 = *(v0 + 40);
  sub_261CFCA04();
  return v3;
}

uint64_t ColorEntity.alpha.getter()
{
  v1 = *(v0 + 48);
  sub_261CFCA04();
  return v3;
}

uint64_t ColorEntity.init(red:green:blue:alpha:)@<X0>(double a1@<X0>, int a2@<W1>, void *a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>)
{
  v50 = a3;
  v51 = a1;
  v48 = sub_261CFD674();
  v45 = *(v48 - 8);
  v10 = *(v45 + 64);
  MEMORY[0x28223BE20](v48);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_261CFD6A4();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v54 = 0.0;
  v55 = 0xE000000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_261D01420;
  v20 = sub_261BBB14C(a4);
  v21 = MEMORY[0x277D83B88];
  v22 = MEMORY[0x277D83C10];
  *(v19 + 56) = MEMORY[0x277D83B88];
  *(v19 + 64) = v22;
  *(v19 + 32) = v20;
  v23 = sub_261BBB14C(a5);
  *(v19 + 96) = v21;
  *(v19 + 104) = v22;
  *(v19 + 72) = v23;
  v24 = sub_261BBB14C(a6);
  *(v19 + 136) = v21;
  *(v19 + 144) = v22;
  *(v19 + 112) = v24;
  v25 = sub_261CFFA84();
  v27 = v26;
  v52 = v25;
  v53 = v26;
  v49 = a2;
  if ((a2 & 1) == 0)
  {
    v28 = v51;
    if (v51 >= 0.0 && v51 < 1.0)
    {
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_261D03450;
      v30 = sub_261BBB14C(v28);
      *(v29 + 56) = v21;
      *(v29 + 64) = v22;
      *(v29 + 32) = v30;
      v31 = sub_261CFFA84();
      MEMORY[0x26671C210](v31);

      v25 = v52;
      v27 = v53;
    }
  }

  MEMORY[0x26671C210](v25, v27);

  v46 = v55;
  v47 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v32 = *MEMORY[0x277CC9110];
  v33 = *(v45 + 104);
  v34 = v48;
  v33(v12, v32, v48);
  sub_261CFD6C4();
  v45 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v12, v32, v34);
  sub_261CFD6B4();
  v44 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v12, v32, v34);
  sub_261CFD6B4();
  v43 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v12, v32, v34);
  sub_261CFD6B4();
  v35 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v12, v32, v34);
  sub_261CFD6C4();
  v36 = sub_261CFCB44();
  v54 = 0.0;
  v55 = 0;
  v37 = v45;
  sub_261CFCA14();
  v54 = a4;
  LOBYTE(v55) = 0;
  v38 = v44;
  sub_261CFCA14();
  v54 = a5;
  LOBYTE(v55) = 0;
  v39 = v43;
  sub_261CFCA14();
  v54 = a6;
  LOBYTE(v55) = 0;
  sub_261CFCA14();
  v54 = v51;
  LOBYTE(v55) = v49 & 1;
  result = sub_261CFCA14();
  v41 = v50;
  v42 = v46;
  *v50 = v47;
  v41[1] = v42;
  v41[2] = v37;
  v41[3] = v38;
  v41[4] = v39;
  v41[5] = v35;
  v41[6] = v36;
  return result;
}

uint64_t ColorEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t ColorEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_261BB89E8(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v9 = *a1;
  v10 = a1[1];
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB8B68(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.red.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261BB8CF4(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v5 = a2[3];
  v4 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.green.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB8E80(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.blue.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB900C(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v7 = a2[5];
  v6 = a2[6];
  v9 = *a1;
  v10 = *(a1 + 8);
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*ColorEntity.alpha.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 48);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261BB9198()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDB7C8);
  __swift_project_value_buffer(v15, qword_27FEDB7C8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t static ColorEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ColorEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ColorEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDB7C8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261BB96B4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261BB9774(uint64_t a1)
{
  if (qword_27FED99E8 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB7C8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ColorEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v4;
  v5 = sub_261CFD6A4();
  v33 = *(v5 - 8);
  v34 = v5;
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v31 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v30 = &v28 - v12;
  v29 = sub_261CFDC94();
  v13 = *(v29 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v29);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v1;
  v17 = v1[1];
  v19 = v1[3];
  v28 = v1[2];
  v21 = v1[4];
  v20 = v1[5];
  v22 = v1[6];
  v37 = v18;
  v38 = v17;
  v39 = v28;
  v40 = v19;
  v41 = v21;
  v42 = v20;
  v43 = v22;
  v23 = sub_261B42C3C(1);
  sub_261CFDCC4();
  sub_261CFDCB4();
  v24 = sub_261CFDC84();

  (*(v13 + 8))(v16, v29);
  v25 = v24;
  v26 = v30;
  sub_261CFD014();
  v37 = v18;
  v38 = v17;
  v39 = v28;
  v40 = v19;
  v41 = v21;
  v42 = v20;
  v43 = v22;
  sub_261BB9B60(v32);
  (*(v33 + 56))(v35, 1, 1, v34);
  sub_261BA9C98(v26, v31);
  sub_261CFD0A4();

  return sub_261BBB1CC(v26);
}

uint64_t sub_261BB9B60@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v24 = sub_261CFD674();
  v2 = *(v24 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_261CFFA44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFD6A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v1 + 16);
  sub_261CFCA04();
  v16 = v27;
  if (v27)
  {
    v17 = v26;
    if (qword_27FED99F8 != -1)
    {
      v22 = v26;
      swift_once();
      v17 = v22;
    }

    v18 = qword_27FEF3E40;
    if (*(qword_27FEF3E40 + 16))
    {
      v23 = sub_261B37CE8(v17, v16);
      v20 = v19;

      if (v20)
      {
        (*(v11 + 16))(v14, *(v18 + 56) + *(v11 + 72) * v23, v10);
        return (*(v11 + 32))(v25, v14, v10);
      }
    }

    else
    {
    }
  }

  sub_261CFF9B4();
  sub_261CFD874();
  (*(v2 + 104))(v5, *MEMORY[0x277CC9110], v24);
  return sub_261CFD6C4();
}

uint64_t sub_261BB9E64@<X0>(void *a1@<X8>)
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDB7E0 + 1);
  v3 = qword_27FEDB7F0;
  *a1 = xmmword_27FEDB7E0;
  a1[1] = v2;
  a1[2] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static ColorEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDB7E0 + 1);
  v3 = qword_27FEDB7F0;
  *a1 = xmmword_27FEDB7E0;
  a1[1] = v2;
  a1[2] = v3;
  sub_261CFCDA4();
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t sub_261BB9FA4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
  return sub_261CFD104();
}

uint64_t sub_261BB9FB0(uint64_t a1)
{
  v2 = sub_261AFF5A0();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261BBA000(uint64_t a1)
{
  v2 = sub_261BBB498();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t static ColorEntity.defaultQuery.setter(uint64_t a1)
{
  v3 = *a1;
  v1 = *(a1 + 16);
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDB7E0 = v3;
  qword_27FEDB7F0 = v1;
}

uint64_t (*static ColorEntity.defaultQuery.modify())()
{
  if (qword_27FED99F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t ColorEntity.init(name:red:green:blue:alpha:)@<X0>(double a1@<X0>, unint64_t a2@<X1>, double a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>)
{
  v57 = a5;
  v58 = a3;
  v53 = sub_261CFD674();
  v50 = *(v53 - 8);
  v14 = *(v50 + 64);
  MEMORY[0x28223BE20](v53);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = sub_261CFFA44();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFD6A4();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  *&v61 = 64;
  v62 = 0xE100000000000000;
  v54 = a1;
  v55 = a2;
  MEMORY[0x26671C210](*&a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA968, &qword_261D074F0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_261D01420;
  v24 = sub_261BBB14C(a6);
  v25 = MEMORY[0x277D83B88];
  v26 = MEMORY[0x277D83C10];
  *(v23 + 56) = MEMORY[0x277D83B88];
  *(v23 + 64) = v26;
  *(v23 + 32) = v24;
  v27 = sub_261BBB14C(a7);
  *(v23 + 96) = v25;
  *(v23 + 104) = v26;
  *(v23 + 72) = v27;
  v28 = sub_261BBB14C(a8);
  *(v23 + 136) = v25;
  *(v23 + 144) = v26;
  *(v23 + 112) = v28;
  v29 = sub_261CFFA84();
  v31 = v30;
  v59 = v29;
  v60 = v30;
  v56 = a4;
  if ((a4 & 1) == 0)
  {
    v32 = v58;
    if (v58 >= 0.0 && v58 < 1.0)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_261D03450;
      v34 = sub_261BBB14C(v32);
      *(v33 + 56) = v25;
      *(v33 + 64) = v26;
      *(v33 + 32) = v34;
      v35 = sub_261CFFA84();
      MEMORY[0x26671C210](v35);

      v29 = v59;
      v31 = v60;
    }
  }

  MEMORY[0x26671C210](v29, v31);

  v51 = v62;
  v52 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *MEMORY[0x277CC9110];
  v37 = *(v50 + 104);
  v38 = v53;
  v37(v16, v36, v53);
  sub_261CFD6C4();
  v50 = sub_261CFCB14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA850, &qword_261D033C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v16, v36, v38);
  sub_261CFD6B4();
  v49 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v16, v36, v38);
  sub_261CFD6B4();
  v48 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v16, v36, v38);
  sub_261CFD6B4();
  v39 = sub_261CFCB44();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v16, v36, v38);
  sub_261CFD6C4();
  v40 = sub_261CFCB44();
  v61 = v54;
  v62 = v55;
  v41 = v50;
  sub_261CFCA14();
  v61 = a6;
  LOBYTE(v62) = 0;
  v42 = v49;
  sub_261CFCA14();
  v61 = a7;
  LOBYTE(v62) = 0;
  v43 = v48;
  sub_261CFCA14();
  v61 = a8;
  LOBYTE(v62) = 0;
  sub_261CFCA14();
  v61 = v58;
  LOBYTE(v62) = v56 & 1;
  result = sub_261CFCA14();
  v45 = v57;
  v46 = v51;
  *v57 = v52;
  v45[1] = v46;
  v45[2] = v41;
  v45[3] = v42;
  v45[4] = v43;
  v45[5] = v39;
  v45[6] = v40;
  return result;
}

uint64_t sub_261BBA7F4()
{
  v0 = sub_261CFD884();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v72 = v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFD674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFFA44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB848, &qword_261D07720);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD230, &qword_261D0F9D0);
  v11 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v79 = *(*(v10 - 8) + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_261D074D0;
  v73 = v12;
  v13 = (v12 + v11);
  v14 = v10;
  v15 = *(v10 + 48);
  *v13 = 6579570;
  v13[1] = 0xE300000000000000;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v16 = v3;
  v17 = __swift_project_value_buffer(v3, qword_280D27028);
  v80 = *(v4 + 16);
  v75 = v17;
  v77 = v3;
  v80(v7, v17, v3);
  sub_261CFD874();
  sub_261CFD6C4();
  v78 = v13;
  v18 = (v13 + v79);
  v19 = v79;
  v76 = v4 + 16;
  v20 = *(v14 + 48);
  *v18 = 0x65676E61726FLL;
  v18[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v21 = v16;
  v22 = v80;
  v80(v7, v17, v21);
  sub_261CFD874();
  sub_261CFD6C4();
  v23 = 2 * v19;
  v24 = v78;
  v25 = (v78 + v23);
  v71 = *(v14 + 48);
  v26 = v14;
  *v25 = 0x776F6C6C6579;
  v25[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v27 = v77;
  v22(v7, v75, v77);
  sub_261CFD874();
  sub_261CFD6C4();
  v28 = v79;
  v29 = (v24 + v23 + v79);
  v30 = *(v26 + 48);
  v74 = v26;
  *v29 = 0x6E65657267;
  v29[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v31 = v75;
  v80(v7, v75, v27);
  sub_261CFD874();
  sub_261CFD6C4();
  v32 = v78;
  v33 = (v78 + 4 * v28);
  v71 = *(v26 + 48);
  *v33 = 0x756C42746867696CLL;
  v33[1] = 0xE900000000000065;
  sub_261CFF9B4();
  v34 = v31;
  v35 = v31;
  v36 = v77;
  v37 = v80;
  v80(v7, v35, v77);
  sub_261CFD874();
  sub_261CFD6C4();
  v38 = (v32 + 5 * v28);
  v71 = *(v74 + 48);
  *v38 = 1702194274;
  v38[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v39 = v36;
  v37(v7, v34, v36);
  v40 = v37;
  sub_261CFD874();
  sub_261CFD6C4();
  v41 = v79;
  v42 = (v78 + 6 * v79);
  v43 = v74;
  v71 = *(v74 + 48);
  *v42 = 0x6F6769646E69;
  v42[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v40(v7, v34, v39);
  sub_261CFD874();
  sub_261CFD6C4();
  v44 = v41;
  v45 = 7 * v41;
  v71 = 8 * v41;
  v46 = v78;
  v47 = (v78 + v45);
  v48 = *(v43 + 48);
  *v47 = 0x656C70727570;
  v47[1] = 0xE600000000000000;
  sub_261CFF9B4();
  v49 = v34;
  v50 = v77;
  v51 = v80;
  v80(v7, v49, v77);
  sub_261CFD874();
  sub_261CFD6C4();
  v52 = &v46[v44];
  v53 = v46;
  v54 = v74;
  v70[1] = *(v74 + 48);
  *v52 = 1802398064;
  v52[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v55 = v75;
  v51(v7, v75, v50);
  sub_261CFD874();
  sub_261CFD6C4();
  v56 = v79;
  v57 = (v53 + v71 + v79);
  v58 = *(v54 + 48);
  *v57 = 1702063986;
  v57[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v59 = v77;
  v80(v7, v55, v77);
  sub_261CFD874();
  sub_261CFD6C4();
  v60 = v78;
  v61 = (v78 + 10 * v56);
  v62 = *(v54 + 48);
  *v61 = 0x6E776F7262;
  v61[1] = 0xE500000000000000;
  sub_261CFF9B4();
  v63 = v75;
  v64 = v59;
  v65 = v80;
  v80(v7, v75, v64);
  sub_261CFD874();
  sub_261CFD6C4();
  v66 = (v60 + 11 * v79);
  v67 = *(v54 + 48);
  *v66 = 2036429415;
  v66[1] = 0xE400000000000000;
  sub_261CFF9B4();
  v65(v7, v63, v77);
  sub_261CFD874();
  sub_261CFD6C4();
  v68 = sub_261C39E1C(v73);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEF3E40 = v68;
  return result;
}

uint64_t sub_261BBB14C(double a1)
{
  if (a1 <= 0.0)
  {
    return 0;
  }

  if (a1 >= 1.0)
  {
    return 255;
  }

  v1 = round(a1 * 255.0);
  if (*&v1 >> 52 > 0x7FEuLL)
  {
    __break(1u);
  }

  else if (v1 > -9.22337204e18)
  {
    if (v1 < 9.22337204e18)
    {
      return v1;
    }

    goto LABEL_11;
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_261BBB1CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_261BBB238()
{
  result = qword_27FEDB7F8;
  if (!qword_27FEDB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB7F8);
  }

  return result;
}

unint64_t sub_261BBB290()
{
  result = qword_27FEDB800;
  if (!qword_27FEDB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB800);
  }

  return result;
}

unint64_t sub_261BBB2E8()
{
  result = qword_27FEDB808;
  if (!qword_27FEDB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB808);
  }

  return result;
}

unint64_t sub_261BBB340()
{
  result = qword_27FEDB810;
  if (!qword_27FEDB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB810);
  }

  return result;
}

unint64_t sub_261BBB398()
{
  result = qword_27FEDB818;
  if (!qword_27FEDB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB818);
  }

  return result;
}

unint64_t sub_261BBB3EC()
{
  result = qword_27FEDB820;
  if (!qword_27FEDB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB820);
  }

  return result;
}

unint64_t sub_261BBB440()
{
  result = qword_280D22680;
  if (!qword_280D22680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22680);
  }

  return result;
}

unint64_t sub_261BBB498()
{
  result = qword_27FEDB828;
  if (!qword_27FEDB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB828);
  }

  return result;
}

unint64_t sub_261BBB4F0()
{
  result = qword_27FEDB830;
  if (!qword_27FEDB830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB838, &qword_261D07640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB830);
  }

  return result;
}

unint64_t sub_261BBB558()
{
  result = qword_27FEDB840;
  if (!qword_27FEDB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB840);
  }

  return result;
}

uint64_t destroy for ColorEntity(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];

  v5 = a1[4];

  v6 = a1[5];

  v7 = a1[6];
}

void *initializeWithCopy for ColorEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ColorEntity(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  sub_261CFD104();

  v5 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v6 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v7 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v8 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v9 = a2[6];
  v10 = a1[6];
  a1[6] = v9;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
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

void *assignWithTake for ColorEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];

  v7 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  v8 = a1[5];

  v9 = a1[6];
  *(a1 + 5) = *(a2 + 40);

  return a1;
}

uint64_t getEnumTagSinglePayload for ColorEntity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for ColorEntity(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_261BBB90C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  if (swift_isUniquelyReferenced_nonNull_native() && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v6 = a2();
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v13 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v14 = *(result - 8);
  if (v13 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = *(v14 + 72);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v17 = *(v6 + 16);
  v18 = __OFADD__(v17, v5);
  v19 = v17 + v5;
  if (!v18)
  {
    *(v6 + 16) = v19;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261BBBAB4(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  v10 = *v3;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v11 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  v12 = *(result - 8);
  if (v11 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v13 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v14 = *(v12 + 72);
  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v15 = *(v5 + 16);
  v16 = __OFADD__(v15, v4);
  v17 = v15 + v4;
  if (!v16)
  {
    *(v5 + 16) = v17;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261BBBBF8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_261D00274();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_261D00274();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_261BBDEB8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_261BBE10C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_261BBBCE8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261B42274(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_261BBBDDC()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB850);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB850);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BBC078()
{
  v145 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 120) + 16);
  *(v0 + 248) = v2;
  *(v0 + 256) = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  sub_261CFCBB4();
  v3 = *(v0 + 40);
  *(v0 + 264) = v3;
  v4 = *(v3 + 16);
  *(v0 + 272) = v4;
  if (v4)
  {
    v5 = *(v0 + 184);
    *(v0 + 352) = *(*(v0 + 176) + 20);
    *(v0 + 356) = *(v5 + 80);
    *(v0 + 360) = *MEMORY[0x277D45D78];
    *(v0 + 364) = *MEMORY[0x277D45D70];
    *(v0 + 280) = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_79;
    }

    v6 = 0;
    while (1)
    {
      v7 = *(v0 + 352);
      v8 = *(v0 + 192);
      v10 = *(v0 + 160);
      v9 = *(v0 + 168);
      sub_261BBE2C0(v3 + ((*(v0 + 356) + 32) & ~*(v0 + 356)) + *(*(v0 + 184) + 72) * v6, v8, type metadata accessor for GroupEntity);
      sub_261BBE2C0(v8 + v7, v9, type metadata accessor for AppEntityID);
      sub_261BBE328(v8, type metadata accessor for GroupEntity);
      v11 = *(v10 + 20);
      v12 = *v9;
      v13 = v9[1];
      v14 = objc_allocWithZone(MEMORY[0x277D44700]);
      v15 = sub_261CFD814();
      v16 = sub_261CFFA54();
      v17 = [v14 initWithUUID:v15 entityName:v16];
      *(v0 + 288) = v17;

      sub_261BBE328(v9, type metadata accessor for AppEntityID);
      if (qword_27FED9A00 != -1)
      {
        swift_once();
      }

      v18 = sub_261CFF7A4();
      *(v0 + 296) = __swift_project_value_buffer(v18, qword_27FEDB850);
      v19 = v17;
      v20 = sub_261CFF784();
      v21 = sub_261CFFE84();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138543362;
        *(v22 + 4) = v19;
        *v23 = v19;
        v24 = v19;
        _os_log_impl(&dword_261AE2000, v20, v21, "[DeleteRemindersListGroupsAppIntent] Delete group {listObjectID: %{public}@}", v22, 0xCu);
        sub_261AE6A40(v23, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v23, -1, -1);
        MEMORY[0x26671D560](v22, -1, -1);
      }

      v25 = *(v0 + 248);

      *(v0 + 48) = 0;
      v26 = [v25 fetchListWithObjectID:v19 error:v0 + 48];
      *(v0 + 304) = v26;
      v27 = *(v0 + 48);
      if (!v26)
      {
        v93 = *(v0 + 256);
        v92 = *(v0 + 264);
        v94 = *(v0 + 224);
        v95 = v27;

        sub_261CFD654();

        swift_willThrow();
        goto LABEL_66;
      }

      v28 = v26;
      v29 = *(v0 + 248);
      v30 = v27;
      v31 = [v28 accountID];
      *(v0 + 56) = 0;
      v32 = [v29 fetchAccountWithObjectID:v31 error:v0 + 56];
      *(v0 + 312) = v32;

      v33 = *(v0 + 56);
      if (!v32)
      {
        v97 = *(v0 + 256);
        v96 = *(v0 + 264);
        v98 = *(v0 + 224);
        v99 = v33;

        sub_261CFD654();

        swift_willThrow();
        goto LABEL_66;
      }

      v34 = *(v0 + 256);
      sub_261CFDE94();
      *(v0 + 72) = v32;
      v35 = v33;
      v36 = v32;
      v37 = v34;
      sub_261CFDF34();
      *(v0 + 320) = *(v0 + 64);
      if (![v28 isGroup])
      {
        v100 = *(v0 + 264);
        v101 = *(v0 + 224);

        v102 = v19;
        v103 = sub_261CFF784();
        v104 = sub_261CFFE74();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          *v105 = 138543362;
          *(v105 + 4) = v102;
          *v106 = v102;
          v107 = v102;
          _os_log_impl(&dword_261AE2000, v103, v104, "[DeleteRemindersListGroupsAppIntent] Attempt to delete a regular list {listObjectID: %{public}@}", v105, 0xCu);
          sub_261AE6A40(v106, &unk_27FEDA730, &unk_261D035C0);
          MEMORY[0x26671D560](v106, -1, -1);
          MEMORY[0x26671D560](v105, -1, -1);
        }

        v108 = *(v0 + 256);

        sub_261B01D70();
        swift_allocError();
        *v109 = 20;
        swift_willThrow();

LABEL_66:
        v125 = *(v0 + 192);
        v126 = *(v0 + 168);
        v128 = *(v0 + 144);
        v127 = *(v0 + 152);

        v122 = *(v0 + 8);
        v129 = *MEMORY[0x277D85DE8];
        goto LABEL_67;
      }

      v38 = MEMORY[0x277D84F90];
      *(v0 + 80) = MEMORY[0x277D84F90];
      v39 = [v28 sublistContext];
      if (v39)
      {
        *(v0 + 104) = 0;
        v40 = v39;
        v41 = [v39 fetchListsWithError_];

        v42 = *(v0 + 104);
        if (!v41)
        {
          v132 = *(v0 + 256);
          v131 = *(v0 + 264);
          v133 = *(v0 + 224);
          v134 = v42;

          sub_261CFD654();

          swift_willThrow();

          goto LABEL_66;
        }

        sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
        v43 = sub_261CFFC64();
        v44 = v42;

        v38 = MEMORY[0x277D84F90];
        if (!(v43 >> 62))
        {
LABEL_14:
          v45 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_15;
        }
      }

      else
      {
        v43 = v38;
        if (!(v38 >> 62))
        {
          goto LABEL_14;
        }
      }

      v45 = sub_261D00274();
LABEL_15:
      v142 = v19;
      v143 = v28;
      if (v45)
      {
        v46 = 0;
        do
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v47 = MEMORY[0x26671CA10](v46, v43);
            v48 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v46 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_76;
            }

            v47 = *(v43 + 8 * v46 + 32);
            v48 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
            }
          }

          v49 = *(v0 + 360);
          v50 = *(v0 + 152);
          v51 = *(v0 + 128);
          v52 = *(v0 + 136);
          *v50 = v47;
          (*(v52 + 104))(v50, v49, v51);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v38 = sub_261B4224C(0, *(v38 + 16) + 1, 1, v38);
          }

          v54 = *(v38 + 16);
          v53 = *(v38 + 24);
          if (v54 >= v53 >> 1)
          {
            v38 = sub_261B4224C(v53 > 1, v54 + 1, 1, v38);
          }

          v55 = *(v0 + 152);
          v56 = *(v0 + 128);
          v57 = *(v0 + 136);
          *(v38 + 16) = v54 + 1;
          (*(v57 + 32))(v38 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v54, v55, v56);
          ++v46;
        }

        while (v48 != v45);
      }

      v58 = [v143 sublistContext];
      if (v58)
      {
        *(v0 + 96) = 0;
        v59 = v58;
        v60 = [v58 fetchCustomSmartListsWithError_];

        v61 = *(v0 + 96);
        if (!v60)
        {
          v136 = *(v0 + 256);
          v135 = *(v0 + 264);
          v137 = *(v0 + 224);
          v138 = v61;

          sub_261CFD654();

          swift_willThrow();

          goto LABEL_66;
        }

        sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
        v62 = sub_261CFFC64();
        v63 = v61;

        if (!(v62 >> 62))
        {
LABEL_32:
          v64 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v64)
          {
            goto LABEL_33;
          }

          goto LABEL_50;
        }
      }

      else
      {
        v62 = MEMORY[0x277D84F90];
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          goto LABEL_32;
        }
      }

      v64 = sub_261D00274();
      if (v64)
      {
LABEL_33:
        v65 = 0;
        v144 = (v62 & 0xC000000000000001);
        v66 = v62 & 0xFFFFFFFFFFFFFF8;
        v67 = MEMORY[0x277D84F90];
        v68 = v62;
        while (1)
        {
          if (v144)
          {
            v69 = MEMORY[0x26671CA10](v65, v62);
            v70 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_77;
            }
          }

          else
          {
            if (v65 >= *(v66 + 16))
            {
              goto LABEL_78;
            }

            v69 = *(v62 + 8 * v65 + 32);
            v70 = v65 + 1;
            if (__OFADD__(v65, 1))
            {
              goto LABEL_77;
            }
          }

          v71 = *(v0 + 364);
          v73 = *(v0 + 136);
          v72 = *(v0 + 144);
          v74 = *(v0 + 128);
          *v72 = v69;
          (*(v73 + 104))(v72, v71, v74);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v67 = sub_261B4224C(0, v67[2] + 1, 1, v67);
          }

          v76 = v67[2];
          v75 = v67[3];
          if (v76 >= v75 >> 1)
          {
            v67 = sub_261B4224C(v75 > 1, v76 + 1, 1, v67);
          }

          v78 = *(v0 + 136);
          v77 = *(v0 + 144);
          v79 = *(v0 + 128);
          v67[2] = v76 + 1;
          (*(v78 + 32))(v67 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v76, v77, v79);
          ++v65;
          v62 = v68;
          if (v70 == v64)
          {
            goto LABEL_51;
          }
        }
      }

LABEL_50:
      v67 = MEMORY[0x277D84F90];
LABEL_51:
      v80 = *(v0 + 208);

      v81 = MEMORY[0x277D45D80];
      sub_261BBBAB4(v38, sub_261B4224C, MEMORY[0x277D45D80]);
      sub_261BBBAB4(v67, sub_261B4224C, v81);
      sub_261CFCBB4();
      v82 = *(v0 + 368);
      v83 = *(v0 + 80);
      *(v0 + 328) = v83;
      if (*(v83 + 16))
      {
        v84 = *(v0 + 208);
        sub_261CFCBB4();
        if (*(v0 + 369) == 2)
        {
          v139 = *(v0 + 216);
          *(v0 + 16) = *(v0 + 200);
          *(v0 + 32) = v139;
          v140 = swift_task_alloc();
          *(v0 + 336) = v140;
          *v140 = v0;
          v140[1] = sub_261BBCDD4;
          v141 = *MEMORY[0x277D85DE8];

          return sub_261BBE388(v0 + 16);
        }

        v85 = *(v0 + 328);
      }

      v87 = *(v0 + 312);
      v86 = *(v0 + 320);
      v88 = *(v0 + 304);
      v89 = *(v0 + 288);
      v90 = *(v0 + 272);
      v91 = *(v0 + 280) + 1;
      sub_261CFDE74();

      if (v91 == v90)
      {
        v110 = *(v0 + 264);
        break;
      }

      v6 = *(v0 + 280) + 1;
      *(v0 + 280) = v6;
      v3 = *(v0 + 264);
      if (v6 >= *(v3 + 16))
      {
        goto LABEL_79;
      }
    }
  }

  v111 = *(v0 + 256);
  v112 = *(v0 + 224);

  *(v0 + 88) = 0;
  v113 = [v111 saveSynchronouslyWithError_];
  v114 = *(v0 + 88);
  v115 = *(v0 + 256);
  if (!v113)
  {
    v124 = v114;
    sub_261CFD654();

    swift_willThrow();
    goto LABEL_66;
  }

  v116 = *(v0 + 192);
  v117 = *(v0 + 168);
  v119 = *(v0 + 144);
  v118 = *(v0 + 152);
  v120 = *(v0 + 112);
  v120[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
  v120[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0);
  __swift_allocate_boxed_opaque_existential_1(v120);
  v121 = v114;
  sub_261CFC9A4();

  v122 = *(v0 + 8);
  v123 = *MEMORY[0x277D85DE8];
LABEL_67:

  return v122();
}

uint64_t sub_261BBCDD4(char a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 336);
  v14 = *v2;
  *(*v2 + 344) = v1;

  if (v1)
  {
    v6 = *(v4 + 328);
    v7 = *(v4 + 264);

    v8 = *(v4 + 232);
    v9 = *(v4 + 240);
    v10 = sub_261BBDC08;
  }

  else
  {
    *(v4 + 370) = a1 & 1;
    v8 = *(v4 + 232);
    v9 = *(v4 + 240);
    v10 = sub_261BBCF3C;
  }

  v11 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v10, v8, v9);
}

uint64_t sub_261BBCF3C()
{
  v142 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 370);
  while (1)
  {
    v3 = *(v0 + 320);
    v2 = *(v0 + 328);
    v4 = *(v0 + 304);
    v5 = *(v0 + 312);
    v6 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 280) + 1;
    sub_261CFDE74();

    if (v8 == v7)
    {
      break;
    }

    v9 = *(v0 + 280) + 1;
    *(v0 + 280) = v9;
    v10 = *(v0 + 264);
    if (v9 >= *(v10 + 16))
    {
      goto LABEL_75;
    }

    v11 = *(v0 + 352);
    v12 = *(v0 + 192);
    v14 = *(v0 + 160);
    v13 = *(v0 + 168);
    sub_261BBE2C0(v10 + ((*(v0 + 356) + 32) & ~*(v0 + 356)) + *(*(v0 + 184) + 72) * v9, v12, type metadata accessor for GroupEntity);
    sub_261BBE2C0(v12 + v11, v13, type metadata accessor for AppEntityID);
    sub_261BBE328(v12, type metadata accessor for GroupEntity);
    v15 = *(v14 + 20);
    v16 = *v13;
    v17 = v13[1];
    v18 = objc_allocWithZone(MEMORY[0x277D44700]);
    v19 = sub_261CFD814();
    v20 = sub_261CFFA54();
    v21 = [v18 initWithUUID:v19 entityName:v20];
    *(v0 + 288) = v21;

    sub_261BBE328(v13, type metadata accessor for AppEntityID);
    if (qword_27FED9A00 != -1)
    {
      swift_once();
    }

    v22 = sub_261CFF7A4();
    *(v0 + 296) = __swift_project_value_buffer(v22, qword_27FEDB850);
    v23 = v21;
    v24 = sub_261CFF784();
    v25 = sub_261CFFE84();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138543362;
      *(v26 + 4) = v23;
      *v27 = v23;
      v28 = v23;
      _os_log_impl(&dword_261AE2000, v24, v25, "[DeleteRemindersListGroupsAppIntent] Delete group {listObjectID: %{public}@}", v26, 0xCu);
      sub_261AE6A40(v27, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v27, -1, -1);
      MEMORY[0x26671D560](v26, -1, -1);
    }

    v29 = *(v0 + 248);

    *(v0 + 48) = 0;
    v30 = [v29 fetchListWithObjectID:v23 error:v0 + 48];
    *(v0 + 304) = v30;
    v31 = *(v0 + 48);
    if (!v30)
    {
      v104 = *(v0 + 256);
      v103 = *(v0 + 264);
      v105 = *(v0 + 224);
      v106 = v31;

      sub_261CFD654();

      swift_willThrow();
      goto LABEL_67;
    }

    v32 = v30;
    v33 = *(v0 + 248);
    v34 = v31;
    v35 = [v32 accountID];
    *(v0 + 56) = 0;
    v36 = [v33 fetchAccountWithObjectID:v35 error:v0 + 56];
    *(v0 + 312) = v36;

    v37 = *(v0 + 56);
    if (!v36)
    {
      v108 = *(v0 + 256);
      v107 = *(v0 + 264);
      v109 = *(v0 + 224);
      v110 = v37;

      sub_261CFD654();

      swift_willThrow();
      goto LABEL_67;
    }

    v38 = *(v0 + 256);
    sub_261CFDE94();
    *(v0 + 72) = v36;
    v39 = v37;
    v40 = v36;
    v41 = v38;
    sub_261CFDF34();
    *(v0 + 320) = *(v0 + 64);
    if (![v32 isGroup])
    {
      v111 = *(v0 + 264);
      v112 = *(v0 + 224);

      v113 = v23;
      v114 = sub_261CFF784();
      v115 = sub_261CFFE74();

      if (os_log_type_enabled(v114, v115))
      {
        v116 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v116 = 138543362;
        *(v116 + 4) = v113;
        *v117 = v113;
        v118 = v113;
        _os_log_impl(&dword_261AE2000, v114, v115, "[DeleteRemindersListGroupsAppIntent] Attempt to delete a regular list {listObjectID: %{public}@}", v116, 0xCu);
        sub_261AE6A40(v117, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v117, -1, -1);
        MEMORY[0x26671D560](v116, -1, -1);
      }

      v119 = *(v0 + 256);

      sub_261B01D70();
      swift_allocError();
      *v120 = 20;
      swift_willThrow();

      goto LABEL_67;
    }

    v42 = MEMORY[0x277D84F90];
    *(v0 + 80) = MEMORY[0x277D84F90];
    v43 = [v32 sublistContext];
    if (v43)
    {
      *(v0 + 104) = 0;
      v44 = v43;
      v45 = [v43 fetchListsWithError_];

      v46 = *(v0 + 104);
      if (!v45)
      {
        v122 = *(v0 + 256);
        v121 = *(v0 + 264);
        v123 = *(v0 + 224);
        v124 = v46;

        sub_261CFD654();

        swift_willThrow();

        goto LABEL_67;
      }

      sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
      v47 = sub_261CFFC64();
      v48 = v46;

      v42 = MEMORY[0x277D84F90];
      if (!(v47 >> 62))
      {
LABEL_14:
        v49 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_15;
      }
    }

    else
    {
      v47 = v42;
      if (!(v42 >> 62))
      {
        goto LABEL_14;
      }
    }

    v49 = sub_261D00274();
LABEL_15:
    v139 = v23;
    v140 = v32;
    if (v49)
    {
      v50 = 0;
      do
      {
        if ((v47 & 0xC000000000000001) != 0)
        {
          v51 = MEMORY[0x26671CA10](v50, v47);
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
            goto LABEL_71;
          }
        }

        else
        {
          if (v50 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v51 = *(v47 + 8 * v50 + 32);
          v52 = v50 + 1;
          if (__OFADD__(v50, 1))
          {
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
          }
        }

        v53 = *(v0 + 360);
        v54 = *(v0 + 152);
        v55 = *(v0 + 128);
        v56 = *(v0 + 136);
        *v54 = v51;
        (*(v56 + 104))(v54, v53, v55);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_261B4224C(0, *(v42 + 16) + 1, 1, v42);
        }

        v58 = *(v42 + 16);
        v57 = *(v42 + 24);
        if (v58 >= v57 >> 1)
        {
          v42 = sub_261B4224C(v57 > 1, v58 + 1, 1, v42);
        }

        v59 = *(v0 + 152);
        v60 = *(v0 + 128);
        v61 = *(v0 + 136);
        *(v42 + 16) = v58 + 1;
        (*(v61 + 32))(v42 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v58, v59, v60);
        ++v50;
      }

      while (v52 != v49);
    }

    v62 = [v140 sublistContext];
    if (v62)
    {
      *(v0 + 96) = 0;
      v63 = v62;
      v64 = [v62 fetchCustomSmartListsWithError_];

      v65 = *(v0 + 96);
      if (!v64)
      {
        v126 = *(v0 + 256);
        v125 = *(v0 + 264);
        v127 = *(v0 + 224);
        v128 = v65;

        sub_261CFD654();

        swift_willThrow();

        goto LABEL_67;
      }

      sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
      v66 = sub_261CFFC64();
      v67 = v65;

      if (v66 >> 62)
      {
LABEL_49:
        v68 = sub_261D00274();
        if (v68)
        {
LABEL_33:
          v69 = 0;
          v141 = (v66 & 0xC000000000000001);
          v70 = v66 & 0xFFFFFFFFFFFFFF8;
          v71 = MEMORY[0x277D84F90];
          v72 = v66;
          while (1)
          {
            if (v141)
            {
              v73 = MEMORY[0x26671CA10](v69, v66);
              v74 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_73;
              }
            }

            else
            {
              if (v69 >= *(v70 + 16))
              {
                goto LABEL_74;
              }

              v73 = *(v66 + 8 * v69 + 32);
              v74 = v69 + 1;
              if (__OFADD__(v69, 1))
              {
                goto LABEL_73;
              }
            }

            v75 = *(v0 + 364);
            v77 = *(v0 + 136);
            v76 = *(v0 + 144);
            v78 = *(v0 + 128);
            *v76 = v73;
            (*(v77 + 104))(v76, v75, v78);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_261B4224C(0, v71[2] + 1, 1, v71);
            }

            v80 = v71[2];
            v79 = v71[3];
            if (v80 >= v79 >> 1)
            {
              v71 = sub_261B4224C(v79 > 1, v80 + 1, 1, v71);
            }

            v82 = *(v0 + 136);
            v81 = *(v0 + 144);
            v83 = *(v0 + 128);
            v71[2] = v80 + 1;
            (*(v82 + 32))(v71 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v80, v81, v83);
            ++v69;
            v66 = v72;
            if (v74 == v68)
            {
              goto LABEL_51;
            }
          }
        }

        goto LABEL_50;
      }
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {
        goto LABEL_49;
      }
    }

    v68 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v68)
    {
      goto LABEL_33;
    }

LABEL_50:
    v71 = MEMORY[0x277D84F90];
LABEL_51:
    v84 = *(v0 + 208);

    v85 = MEMORY[0x277D45D80];
    sub_261BBBAB4(v42, sub_261B4224C, MEMORY[0x277D45D80]);
    sub_261BBBAB4(v71, sub_261B4224C, v85);
    sub_261CFCBB4();
    v86 = *(v0 + 368);
    v87 = *(v0 + 80);
    *(v0 + 328) = v87;
    if (*(v87 + 16))
    {
      v88 = *(v0 + 208);
      sub_261CFCBB4();
      if (*(v0 + 369) == 2)
      {
        v129 = *(v0 + 216);
        *(v0 + 16) = *(v0 + 200);
        *(v0 + 32) = v129;
        v130 = swift_task_alloc();
        *(v0 + 336) = v130;
        *v130 = v0;
        v130[1] = sub_261BBCDD4;
        v131 = *MEMORY[0x277D85DE8];

        return sub_261BBE388(v0 + 16);
      }
    }
  }

  v89 = *(v0 + 264);

  v90 = *(v0 + 256);
  v91 = *(v0 + 224);

  *(v0 + 88) = 0;
  v92 = [v90 saveSynchronouslyWithError_];
  v93 = *(v0 + 88);
  v94 = *(v0 + 256);
  if (v92)
  {
    v95 = *(v0 + 192);
    v96 = *(v0 + 168);
    v98 = *(v0 + 144);
    v97 = *(v0 + 152);
    v99 = *(v0 + 112);
    v99[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
    v99[4] = sub_261B01D28(&qword_27FEDAFD8, &qword_27FEDAFD0, &qword_261D072B0);
    __swift_allocate_boxed_opaque_existential_1(v99);
    v100 = v93;
    sub_261CFC9A4();

    v101 = *(v0 + 8);
    v102 = *MEMORY[0x277D85DE8];
    goto LABEL_68;
  }

  v133 = v93;
  sub_261CFD654();

  swift_willThrow();
LABEL_67:
  v134 = *(v0 + 192);
  v135 = *(v0 + 168);
  v137 = *(v0 + 144);
  v136 = *(v0 + 152);

  v101 = *(v0 + 8);
  v138 = *MEMORY[0x277D85DE8];
LABEL_68:

  return v101();
}

uint64_t sub_261BBDC08()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[28];

  v4 = v1;
  v5 = sub_261CFF784();
  v6 = sub_261CFFE74();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_261AE2000, v5, v6, "[DeleteRemindersListGroupsAppIntent] Could not confirm to delete the sublists {listObjectID: %{public}@}", v8, 0xCu);
    sub_261AE6A40(v9, &unk_27FEDA730, &unk_261D035C0);
    MEMORY[0x26671D560](v9, -1, -1);
    MEMORY[0x26671D560](v8, -1, -1);
  }

  v11 = v0[43];
  v13 = v0[39];
  v12 = v0[40];
  v14 = v0[38];
  v15 = v0[36];
  v16 = v0[32];

  sub_261B01D70();
  swift_allocError();
  *v17 = 15;
  swift_willThrow();

  v18 = v0[24];
  v19 = v0[21];
  v21 = v0[18];
  v20 = v0[19];

  v22 = v0[1];
  v23 = *MEMORY[0x277D85DE8];

  return v22();
}

uint64_t sub_261BBDE0C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261BBDEB8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_261D00274();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_261D00354();
  *v1 = result;
  return result;
}

uint64_t sub_261BBDF58(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D00274();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D00274();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261B01D28(&qword_27FEDB888, &qword_27FEDB880, &qword_261D07758);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB880, &qword_261D07758);
            v9 = sub_261B49564(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261B05020(0, &qword_27FEDB878, 0x277D44780);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BBE10C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_261D00274();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_261D00274();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_261B01D28(&qword_27FEDB870, &qword_27FEDB868, &qword_261D07750);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB868, &qword_261D07750);
            v9 = sub_261B49794(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BBE2C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BBE328(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261BBE388(uint64_t a1)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310) - 8) + 64) + 15;
  v1[2] = swift_task_alloc();
  v4 = *(*(sub_261CFD884() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v5 = sub_261CFD674();
  v1[4] = v5;
  v6 = *(v5 - 8);
  v1[5] = v6;
  v7 = *(v6 + 64) + 15;
  v1[6] = swift_task_alloc();
  v8 = *(*(sub_261CFFA44() - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v9 = *(*(sub_261CFD6A4() - 8) + 64) + 15;
  v1[8] = swift_task_alloc();
  v10 = sub_261CFC834();
  v1[9] = v10;
  v11 = *(v10 - 8);
  v1[10] = v11;
  v12 = *(v11 + 64) + 15;
  v13 = swift_task_alloc();
  v14 = *(a1 + 8);
  v1[11] = v13;
  v1[12] = v14;

  return MEMORY[0x2822009F8](sub_261BBE564, 0, 0);
}

uint64_t sub_261BBE564()
{
  v1 = *(v0 + 56);
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 88);
  v3 = *(v0 + 80);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);
  v10 = __swift_project_value_buffer(v8, qword_280D27028);
  (*(v6 + 16))(v7, v10, v8);
  sub_261CFD874();
  sub_261CFD6C4();
  sub_261CFC844();
  *(v0 + 104) = sub_261CFCBD4();
  *(v0 + 128) = 1;
  (*(v3 + 16))(v9, v2, v16);
  (*(v3 + 56))(v9, 0, 1, v16);
  v11 = *(MEMORY[0x277CB9ED8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *v12 = v0;
  v12[1] = sub_261BBE758;
  v13 = *(v0 + 16);

  return MEMORY[0x28210BA18](v0 + 128, v13);
}

uint64_t sub_261BBE758(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 112);
  v11 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v6 = *(v4 + 104);
    sub_261AE6A40(*(v4 + 16), &qword_27FEDA1E8, &unk_261D02310);

    v7 = sub_261BBE98C;
  }

  else
  {
    v8 = *(v4 + 104);
    v9 = *(v4 + 16);
    *(v4 + 129) = a1 & 1;
    sub_261AE6A40(v9, &qword_27FEDA1E8, &unk_261D02310);

    v7 = sub_261BBE8C8;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261BBE8C8()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));

  v6 = *(v0 + 8);
  v7 = *(v0 + 129);

  return v6(v7);
}

uint64_t sub_261BBE98C()
{
  v1 = v0[8];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[2];
  v4 = v0[3];
  (*(v0[10] + 8))(v0[11], v0[9]);

  v6 = v0[1];
  v7 = v0[15];

  return v6(0);
}

uint64_t sub_261BBEA50@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v77 = a2;
  LODWORD(v83) = a1;
  v3 = sub_261CFD754();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  MEMORY[0x28223BE20](v3);
  v79 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SectionEntity();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v78 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_261CFEF34();
  v9 = *(v76 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v76);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppEntityID();
  v14 = v13 - 8;
  v15 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v74 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = (&v72 - v18);
  v20 = type metadata accessor for SectionEntityID();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v72 = &v72 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v73 = &v72 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v72 - v26;
  v28 = sub_261CFEEC4();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v72 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((v83 == 2) | a1 & 1)
  {
    v33 = MEMORY[0x277D45120];
  }

  else
  {
    v33 = MEMORY[0x277D45118];
  }

  (*(v29 + 104))(v32, *v33, v28);
  v75 = v6;
  sub_261BC1028(v84 + *(v6 + 24), v27, type metadata accessor for SectionEntityID);
  sub_261BC0FC4(v27, v19);
  v34 = *(v14 + 28);
  v35 = *v19;
  v36 = v19[1];
  v37 = objc_allocWithZone(MEMORY[0x277D44700]);
  v38 = sub_261CFD814();
  v39 = sub_261CFFA54();
  v40 = [v37 initWithUUID:v38 entityName:v39];

  sub_261BC1090(v19, type metadata accessor for AppEntityID);
  v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8D8, &unk_261D07770) + 48);
  *v12 = v40;
  v82 = v29;
  v83 = v32;
  v42 = v29;
  v43 = v77;
  v44 = v32;
  v45 = v28;
  (*(v42 + 16))(&v12[v41], v44, v28);
  v46 = v76;
  (*(v9 + 104))(v12, *MEMORY[0x277D45238], v76);
  v47 = v40;
  sub_261CFEF24();
  (*(v9 + 8))(v12, v46);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v48 = sub_261CFF7A4();
  __swift_project_value_buffer(v48, qword_27FEDB890);
  v49 = v78;
  sub_261BC1028(v84, v78, type metadata accessor for SectionEntity);
  v50 = v79;
  v51 = v80;
  v52 = v81;
  (*(v80 + 16))(v79, v43, v81);
  v53 = sub_261CFF784();
  v54 = sub_261CFFE84();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v85 = v77;
    *v55 = 136315394;
    v56 = *(v75 + 24);
    LODWORD(v75) = v54;
    v84 = v47;
    v57 = v73;
    sub_261BC1028(v49 + v56, v73, type metadata accessor for SectionEntityID);
    v58 = v72;
    sub_261BC1028(v57, v72, type metadata accessor for SectionEntityID);
    v59 = v74;
    sub_261BC0FC4(v58, v74);
    v60 = AppEntityID.entityIdentifierString.getter();
    v76 = v45;
    v61 = v49;
    v62 = v50;
    v64 = v63;
    sub_261BC1090(v59, type metadata accessor for AppEntityID);
    sub_261BC1090(v57, type metadata accessor for SectionEntityID);
    sub_261BC1090(v61, type metadata accessor for SectionEntity);
    v65 = sub_261B879C8(v60, v64, &v85);

    *(v55 + 4) = v65;
    *(v55 + 12) = 2080;
    sub_261BC0F6C();
    v66 = sub_261D005F4();
    v68 = v67;
    (*(v51 + 8))(v62, v52);
    v69 = sub_261B879C8(v66, v68, &v85);

    *(v55 + 14) = v69;
    _os_log_impl(&dword_261AE2000, v53, v75, "[AppIntent] Open reminder with id: %s url: %s", v55, 0x16u);
    v70 = v77;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v70, -1, -1);
    MEMORY[0x26671D560](v55, -1, -1);

    return (*(v82 + 8))(v83, v76);
  }

  else
  {

    (*(v51 + 8))(v50, v52);
    sub_261BC1090(v49, type metadata accessor for SectionEntity);
    return (*(v82 + 8))(v83, v45);
  }
}

Swift::Void __swiftcall URL.open()()
{
  v0 = [objc_opt_self() defaultWorkspace];
  if (v0)
  {
    v1 = v0;
    sub_261D00034();
  }
}

void sub_261BBF2F8(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, const char *a4@<X3>, uint64_t a5@<X8>)
{
  v54 = a4;
  v55 = a5;
  v60 = a2;
  v61 = a3;
  v7 = type metadata accessor for AppEntityID();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v52 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_261CFD754();
  v57 = *(v59 - 8);
  v10 = *(v57 + 64);
  MEMORY[0x28223BE20](v59);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v56 = &v51 - v15;
  v16 = sub_261CFEF34();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8D0, &qword_261D07768) + 48);
  v51 = v13;
  v22 = *(v13 + 20);
  v58 = v5;
  v23 = (v5 + v22);
  v53 = v7;
  v24 = *(v7 + 20);
  v25 = *v23;
  v26 = v23[1];
  v27 = objc_allocWithZone(MEMORY[0x277D44700]);
  v28 = v55;
  v29 = sub_261CFD814();
  v30 = sub_261CFFA54();
  v31 = [v27 initWithUUID:v29 entityName:v30];

  *v20 = v31;
  v32 = *MEMORY[0x277D45140];
  v33 = sub_261CFEEE4();
  (*(*(v33 - 8) + 104))(&v20[v21], v32, v33);
  (*(v17 + 104))(v20, *MEMORY[0x277D451F8], v16);
  sub_261CFEF24();
  (*(v17 + 8))(v20, v16);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v34 = sub_261CFF7A4();
  __swift_project_value_buffer(v34, qword_27FEDB890);
  v35 = v56;
  sub_261BC1028(v58, v56, v60);
  v36 = v57;
  v37 = v28;
  v38 = v59;
  (*(v57 + 16))(v12, v37, v59);
  v39 = sub_261CFF784();
  v40 = sub_261CFFE84();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v62 = v42;
    *v41 = 136315394;
    sub_261BC1028(v35 + *(v51 + 20), v52, type metadata accessor for AppEntityID);
    v43 = sub_261CFFAB4();
    v45 = v44;
    sub_261BC1090(v35, v61);
    v46 = sub_261B879C8(v43, v45, &v62);

    *(v41 + 4) = v46;
    *(v41 + 12) = 2080;
    sub_261BC0F6C();
    v47 = sub_261D005F4();
    v49 = v48;
    (*(v36 + 8))(v12, v38);
    v50 = sub_261B879C8(v47, v49, &v62);

    *(v41 + 14) = v50;
    _os_log_impl(&dword_261AE2000, v39, v40, v54, v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v42, -1, -1);
    MEMORY[0x26671D560](v41, -1, -1);
  }

  else
  {

    (*(v36 + 8))(v12, v38);
    sub_261BC1090(v35, v61);
  }
}

uint64_t sub_261BBF818@<X0>(char a1@<W0>, char *a2@<X8>)
{
  v68 = a2;
  v4 = type metadata accessor for AppEntityID();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_261CFD754();
  v7 = *(v72 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v72);
  v70 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ReminderEntity();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v69 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_261CFEF34();
  v13 = *(v66 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v66);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFEF14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = v7;
  v64 = v18;
  if (a1)
  {
    v22 = *MEMORY[0x277D45180];
    v23 = sub_261CFEF04();
    (*(*(v23 - 8) + 104))(v21, v22, v23);
    (*(v18 + 104))(v21, *MEMORY[0x277D45168], v17);
  }

  else
  {
    sub_261CFEEF4();
  }

  v24 = v17;
  v25 = v21;
  v67 = v24;
  v26 = v24;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB8C8, &qword_261D07760) + 48);
  v61 = v10;
  v28 = *(v10 + 40);
  v65 = v2;
  v29 = (v2 + v28);
  v63 = v4;
  v30 = *(v4 + 20);
  v31 = *v29;
  v32 = v29[1];
  v33 = objc_allocWithZone(MEMORY[0x277D44700]);
  v34 = sub_261CFD814();
  v35 = sub_261CFFA54();
  v36 = [v33 initWithUUID:v34 entityName:v35];

  *v16 = v36;
  v37 = v64;
  (*(v64 + 16))(&v16[v27], v25, v26);
  v38 = v66;
  (*(v13 + 104))(v16, *MEMORY[0x277D45248], v66);
  v39 = v68;
  sub_261CFEF24();
  (*(v13 + 8))(v16, v38);
  v40 = v37;
  v41 = v25;
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v42 = sub_261CFF7A4();
  __swift_project_value_buffer(v42, qword_27FEDB890);
  v43 = v69;
  sub_261BC1028(v65, v69, type metadata accessor for ReminderEntity);
  v44 = v70;
  v45 = v71;
  v46 = v72;
  (*(v71 + 16))(v70, v39, v72);
  v47 = sub_261CFF784();
  v48 = sub_261CFFE84();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v73 = v66;
    *v49 = 136315394;
    sub_261BC1028(v43 + *(v61 + 40), v62, type metadata accessor for AppEntityID);
    v50 = sub_261CFFAB4();
    v68 = v41;
    v52 = v51;
    sub_261BC1090(v43, type metadata accessor for ReminderEntity);
    v53 = sub_261B879C8(v50, v52, &v73);

    *(v49 + 4) = v53;
    *(v49 + 12) = 2080;
    sub_261BC0F6C();
    v54 = sub_261D005F4();
    v56 = v55;
    (*(v45 + 8))(v44, v46);
    v57 = sub_261B879C8(v54, v56, &v73);

    *(v49 + 14) = v57;
    _os_log_impl(&dword_261AE2000, v47, v48, "[AppIntent] Open reminder with id: %s url: %s", v49, 0x16u);
    v58 = v66;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v58, -1, -1);
    MEMORY[0x26671D560](v49, -1, -1);

    return (*(v40 + 8))(v68, v67);
  }

  else
  {

    (*(v45 + 8))(v44, v46);
    sub_261BC1090(v43, type metadata accessor for ReminderEntity);
    return (*(v40 + 8))(v41, v67);
  }
}

void sub_261BBFE8C(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_261CFD754();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFEF34();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a1;
  v15[1] = a2;
  v16 = *MEMORY[0x277D450F0];
  v17 = sub_261CFEE94();
  (*(*(v17 - 8) + 104))(v15, v16, v17);
  (*(v12 + 104))(v15, *MEMORY[0x277D45210], v11);
  sub_261CFD104();
  sub_261CFEF24();
  (*(v12 + 8))(v15, v11);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v18 = sub_261CFF7A4();
  __swift_project_value_buffer(v18, qword_27FEDB890);
  (*(v7 + 16))(v10, a3, v6);
  sub_261CFD104();
  v19 = sub_261CFF784();
  v20 = sub_261CFFE84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315394;
    *(v21 + 4) = sub_261B879C8(a1, a2, &v28);
    *(v21 + 12) = 2080;
    sub_261BC0F6C();
    v23 = sub_261D005F4();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = sub_261B879C8(v23, v25, &v28);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_261AE2000, v19, v20, "[AppIntent] Open search with phrase: %s) url: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v22, -1, -1);
    MEMORY[0x26671D560](v21, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_261BC0220()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB890);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB890);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BC02E8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_261CFD754();
  __swift_allocate_value_buffer(v4, qword_27FEDB8A8);
  v5 = __swift_project_value_buffer(v4, qword_27FEDB8A8);
  sub_261CFD744();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_261BC0418@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_261CFD754();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFEF34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  v14 = *MEMORY[0x277D45128];
  v15 = sub_261CFEED4();
  (*(*(v15 - 8) + 104))(v12, v14, v15);
  (*(v9 + 104))(v12, **(&unk_279AF9D98 + v13), v8);
  sub_261CFEF24();
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v16 = sub_261CFF7A4();
  __swift_project_value_buffer(v16, qword_27FEDB890);
  (*(v4 + 16))(v7, a1, v3);
  v17 = sub_261CFF784();
  v18 = sub_261CFFE84();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v13;
    v20 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v20 = 136315394;
    v33 = v19;
    v21 = sub_261CFFAB4();
    v23 = sub_261B879C8(v21, v22, &v34);
    v32 = v8;
    v24 = v23;

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_261BC0F6C();
    v25 = sub_261D005F4();
    v27 = v26;
    (*(v4 + 8))(v7, v3);
    v28 = sub_261B879C8(v25, v27, &v34);

    *(v20 + 14) = v28;
    _os_log_impl(&dword_261AE2000, v17, v18, "[AppIntent] Open smart list type: %s url: %s", v20, 0x16u);
    v29 = v31;
    swift_arrayDestroy();
    MEMORY[0x26671D560](v29, -1, -1);
    MEMORY[0x26671D560](v20, -1, -1);

    return (*(v9 + 8))(v12, v32);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }
}

void sub_261BC07C8(uint64_t a1@<X8>)
{
  v3 = sub_261CFD754();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFEF34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *v1;
  sub_261CFCBB4();
  if (v29)
  {
    v14 = v28;
  }

  else
  {
    v14 = 0;
  }

  if (v29)
  {
    v15 = v29;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  *v12 = v14;
  v12[1] = v15;
  v16 = *MEMORY[0x277D45110];
  v17 = sub_261CFEEB4();
  (*(*(v17 - 8) + 104))(v12, v16, v17);
  (*(v9 + 104))(v12, *MEMORY[0x277D45230], v8);
  sub_261CFD104();
  sub_261CFEF24();
  (*(v9 + 8))(v12, v8);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v18 = sub_261CFF7A4();
  __swift_project_value_buffer(v18, qword_27FEDB890);
  (*(v4 + 16))(v7, a1, v3);
  sub_261CFD104();
  v19 = sub_261CFF784();
  v20 = sub_261CFFE84();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315394;
    v23 = sub_261B879C8(v14, v15, &v28);

    *(v21 + 4) = v23;
    *(v21 + 12) = 2080;
    sub_261BC0F6C();
    v24 = sub_261D005F4();
    v26 = v25;
    (*(v4 + 8))(v7, v3);
    v27 = sub_261B879C8(v24, v26, &v28);

    *(v21 + 14) = v27;
    _os_log_impl(&dword_261AE2000, v19, v20, "[AppIntent] Open list with name: %s url: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v22, -1, -1);
    MEMORY[0x26671D560](v21, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

void sub_261BC0B8C(uint64_t a1@<X8>)
{
  v3 = sub_261CFD754();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFEF34();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1;
  sub_261CFCBB4();
  if (v28)
  {
    if (v28[2])
    {
      sub_261B49EB8(v28);

      sub_261CFF024();

      goto LABEL_6;
    }
  }

  v14 = *MEMORY[0x277D45398];
  v15 = sub_261CFF034();
  (*(*(v15 - 8) + 104))(v12, v14, v15);
LABEL_6:
  v16 = *MEMORY[0x277D45100];
  v17 = sub_261CFEEA4();
  (*(*(v17 - 8) + 104))(v12, v16, v17);
  (*(v9 + 104))(v12, *MEMORY[0x277D45218], v8);
  sub_261CFEF24();
  (*(v9 + 8))(v12, v8);
  if (qword_27FED9A08 != -1)
  {
    swift_once();
  }

  v18 = sub_261CFF7A4();
  __swift_project_value_buffer(v18, qword_27FEDB890);
  (*(v4 + 16))(v7, a1, v3);
  v19 = sub_261CFF784();
  v20 = sub_261CFFE84();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v28 = v22;
    *v21 = 136315138;
    sub_261BC0F6C();
    v23 = sub_261D005F4();
    v25 = v24;
    (*(v4 + 8))(v7, v3);
    v26 = sub_261B879C8(v23, v25, &v28);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_261AE2000, v19, v20, "[AppIntent] Open tags browser with url: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x26671D560](v22, -1, -1);
    MEMORY[0x26671D560](v21, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v7, v3);
  }
}

unint64_t sub_261BC0F6C()
{
  result = qword_27FEDB8C0;
  if (!qword_27FEDB8C0)
  {
    sub_261CFD754();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB8C0);
  }

  return result;
}

uint64_t sub_261BC0FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261BC1028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261BC1090(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MoveRemindersToListAppIntent.reminders.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261BC116C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[4];
  v7 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersToListAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC12C4(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[4];
  v7 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t MoveRemindersToListAppIntent.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*MoveRemindersToListAppIntent.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC141C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261B425D4(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[4];
  sub_261B425D4(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B59E9C(v10);
}

uint64_t MoveRemindersToListAppIntent.targetList.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_261B425D4(a1, &v8 - v6);
  sub_261CFCBC4();
  return sub_261B59E9C(a1);
}

uint64_t (*MoveRemindersToListAppIntent.targetList.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261BC1668()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDB8E0);
  __swift_project_value_buffer(v9, qword_27FEDB8E0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static MoveRemindersToListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A18 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static MoveRemindersToListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t static MoveRemindersToListAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDB8F8 = a1;
  return result;
}

uint64_t MoveRemindersToListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v52 = &v49 - v3;
  v68 = sub_261CFD184();
  v70 = *(v68 - 8);
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v68);
  v67 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v66 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v49 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v61 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v54 = *MEMORY[0x277CC9110];
  v27 = v54;
  v56 = v14;
  v28(v18, v54, v14);
  v55 = v28;
  v57 = v15 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v59;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v60 = v24 + 56;
  v62 = v30;
  v30(v29, 0, 1, v23);
  v72 = 0;
  v31 = sub_261CFC834();
  v32 = *(v31 - 8);
  v33 = *(v32 + 56);
  v58 = v32 + 56;
  v33(v65, 1, 1, v31);
  v33(v66, 1, 1, v31);
  v63 = *MEMORY[0x277CBA308];
  v34 = *(v70 + 104);
  v70 += 104;
  v64 = v34;
  v34(v67);
  sub_261BC3E74(&qword_280D22358, type metadata accessor for ReminderEntity);
  *v69 = sub_261CFCC34();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v54;
  v36 = v56;
  v37 = v55;
  v55(v18, v54, v56);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v37(v18, v35, v36);
  v38 = v59;
  sub_261CFD6C4();
  v62(v38, 0, 1, v61);
  LOBYTE(v72) = 2;
  v50 = v31;
  v49 = v33;
  v33(v65, 1, 1, v31);
  v33(v66, 1, 1, v31);
  v64(v67, v63, v68);
  sub_261B07F3C();
  v69[1] = sub_261CFCC04();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v54;
  v40 = v56;
  v41 = v55;
  v55(v18, v54, v56);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v18, v39, v40);
  sub_261CFD6C4();
  v62(v38, 0, 1, v61);
  v42 = type metadata accessor for ListEntity();
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v43 = v50;
  v44 = v49;
  v49(v65, 1, 1, v50);
  v44(v66, 1, 1, v43);
  v64(v67, v63, v68);
  sub_261BC3E74(&qword_280D227A0, type metadata accessor for ListEntity);
  v45 = sub_261CFCC34();
  v46 = v69;
  v69[2] = v45;
  *(v46 + 24) = 2;
  v47 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB900, &qword_261D07780);
  v71 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v47[4] = result;
  return result;
}

uint64_t MoveRemindersToListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261BC27F4, v5, v4);
}

uint64_t sub_261BC27F4()
{
  sub_261BC3EBC(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC28BC;
  v2 = *(v0 + 96);

  return sub_261C4F28C(v2, "MoveRemindersToListAppIntent", 28, 2, v0 + 16);
}

uint64_t sub_261BC28BC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_261BC4414;
  }

  else
  {
    v7 = sub_261BC4418;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BC29F8(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  sub_261CFFD24();
  v2[14] = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  v2[15] = v4;
  v2[16] = v3;

  return MEMORY[0x2822009F8](sub_261BC2A90, v4, v3);
}

uint64_t sub_261BC2A90()
{
  v1 = *(v0 + 104);
  sub_261B1DD74(0);
  v2 = *(v1 + 4);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  v5 = *v1;
  v6 = v1[1];
  *(v0 + 88) = *(v1 + 4);
  *(v0 + 72) = v6;
  *(v0 + 56) = v5;
  v7 = *(v4 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_261BC2BF8;
  v10 = *(v0 + 96);

  return v12(v10, v0 + 56, v3, v4);
}

uint64_t sub_261BC2BF8()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v8 = *v1;
  *(*v1 + 144) = v0;

  v4 = *(v2 + 120);
  v5 = *(v2 + 128);
  if (v0)
  {
    v6 = sub_261BC2D78;
  }

  else
  {
    v6 = sub_261BC2D0C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261BC2D0C()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_261BC2D78()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[18];

  return v2();
}

uint64_t sub_261BC2DE4@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v71 = a5;
  v70 = a4;
  v69 = a3;
  v68 = a1;
  v88 = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v67 = v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v66 = v61 - v11;
  v87 = sub_261CFD184();
  v89 = *(v87 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v87);
  v86 = v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v85 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v84 = v61 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v77 = v61 - v21;
  v22 = sub_261CFD674();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = v61 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_261CFD884();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_261CFFA44();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v31 = sub_261CFD6A4();
  v79 = v31;
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v83 = v61 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = *a2;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *(v23 + 104);
  v73 = *MEMORY[0x277CC9110];
  v35 = v73;
  v74 = v22;
  v36(v26, v73, v22);
  v72 = v36;
  v75 = v23 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v26, v35, v22);
  v37 = v77;
  sub_261CFD6C4();
  v38 = *(v32 + 56);
  v78 = v32 + 56;
  v80 = v38;
  v38(v37, 0, 1, v31);
  v91 = 0;
  v39 = sub_261CFC834();
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v76 = v40 + 56;
  v41(v84, 1, 1, v39);
  v41(v85, 1, 1, v39);
  v81 = *MEMORY[0x277CBA308];
  v42 = *(v89 + 104);
  v89 += 104;
  v82 = v42;
  v42(v86);
  sub_261BC3E74(&qword_280D22358, type metadata accessor for ReminderEntity);
  v64 = sub_261CFCC34();
  *v88 = v64;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v43 = v73;
  v44 = v74;
  v45 = v72;
  v72(v26, v73, v74);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v26, v43, v44);
  v46 = v77;
  sub_261CFD6C4();
  v80(v46, 0, 1, v79);
  LOBYTE(v91) = 2;
  v62 = v39;
  v61[0] = v41;
  v41(v84, 1, 1, v39);
  v41(v85, 1, 1, v39);
  v82(v86, v81, v87);
  sub_261B07F3C();
  v47 = v46;
  v63 = sub_261CFCC04();
  v88[1] = v63;
  v61[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v48 = v73;
  v49 = v74;
  v50 = v72;
  v72(v26, v73, v74);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v50(v26, v48, v49);
  sub_261CFD6C4();
  v80(v47, 0, 1, v79);
  v51 = type metadata accessor for ListEntity();
  v52 = v66;
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  v53 = v62;
  v54 = v61[0];
  (v61[0])(v84, 1, 1, v62);
  v54(v85, 1, 1, v53);
  v82(v86, v81, v87);
  sub_261BC3E74(&qword_280D227A0, type metadata accessor for ListEntity);
  v55 = sub_261CFCC34();
  v56 = v88;
  v88[2] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB900, &qword_261D07780);
  v90[0] = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v56[4] = sub_261CFC684();
  v57 = v56;
  v91 = v68;
  sub_261CFCBC4();
  LOBYTE(v91) = v65;
  sub_261CFCBC4();
  v58 = v69;
  sub_261B425D4(v69, v52);
  sub_261B425D4(v52, v67);
  sub_261CFCBC4();
  sub_261B59E9C(v52);
  *(v57 + 24) = v70;
  v59 = v71;
  sub_261AE498C(v71, &v91);
  sub_261AE498C(&v91, v90);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(v59);
  sub_261B59E9C(v58);
  return __swift_destroy_boxed_opaque_existential_0(&v91);
}

uint64_t sub_261BC39D0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9A18 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB8E0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261BC3AC0(uint64_t a1)
{
  *(v2 + 96) = a1;
  v3 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v3;
  *(v2 + 48) = *(v1 + 32);
  sub_261CFFD24();
  *(v2 + 104) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 112) = v5;
  *(v2 + 120) = v4;

  return MEMORY[0x2822009F8](sub_261BC3B68, v5, v4);
}

uint64_t sub_261BC3B68()
{
  sub_261BC3EBC(v0 + 16, v0 + 56);
  v1 = swift_task_alloc();
  *(v0 + 128) = v1;
  *v1 = v0;
  v1[1] = sub_261BC3C30;
  v2 = *(v0 + 96);

  return sub_261C4F28C(v2, "MoveRemindersToListAppIntent", 28, 2, v0 + 16);
}

uint64_t sub_261BC3C30()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);
  v6 = *(v2 + 112);
  if (v0)
  {
    v7 = sub_261BC3DD0;
  }

  else
  {
    v7 = sub_261BC3D6C;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BC3D6C()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261BC3DD0()
{
  v1 = v0[13];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_261BC3E38(uint64_t a1)
{
  v2 = sub_261B3184C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_261BC3E74(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261BC3EF8()
{
  result = qword_27FEDB908;
  if (!qword_27FEDB908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB908);
  }

  return result;
}

unint64_t sub_261BC3F50()
{
  result = qword_27FEDB910;
  if (!qword_27FEDB910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB910);
  }

  return result;
}

uint64_t destroy for MoveRemindersToListAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[4];
}

uint64_t initializeWithCopy for MoveRemindersToListAppIntent(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for MoveRemindersToListAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  *(a1 + 24) = *(a2 + 24);
  v7 = a2[4];
  v8 = a1[4];
  a1[4] = v7;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t *assignWithTake for MoveRemindersToListAppIntent(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];
  a1[2] = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  v7 = a1[4];
  a1[4] = *(a2 + 32);

  return a1;
}

uint64_t getEnumTagSinglePayload for MoveRemindersToListAppIntent(uint64_t *a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MoveRemindersToListAppIntent(uint64_t result, int a2, int a3)
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

uint64_t dispatch thunk of MoveRemindersToListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261BC43C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA238, &qword_261D02480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_261BC441C(uint64_t a1)
{
  v1 = a1;
  v35 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v42 = MEMORY[0x277D84F90];
    sub_261B39FA4(0, v2 & ~(v2 >> 63), 0);
    v37 = v42;
    if (v35)
    {
      v3 = sub_261D00224();
    }

    else
    {
      v5 = -1 << *(v1 + 32);
      v3 = sub_261D001E4();
      v4 = *(v1 + 36);
    }

    v39 = v3;
    v40 = v4;
    v41 = v35 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v33 = v1 + 56;
      v32 = v1 + 64;
      v34 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v39;
        v10 = v41;
        v36 = v40;
        v11 = v1;
        sub_261BC6DA0(v39, v40, v41, v1);
        v13 = v12;
        v14 = [v12 stringRepresentation];
        v15 = sub_261CFFA74();
        v17 = v16;

        v18 = v37;
        v42 = v37;
        v20 = *(v37 + 16);
        v19 = *(v37 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_261B39FA4((v19 > 1), v20 + 1, 1);
          v18 = v42;
        }

        *(v18 + 16) = v20 + 1;
        v21 = v18 + 16 * v20;
        *(v21 + 32) = v15;
        *(v21 + 40) = v17;
        v37 = v18;
        if (v35)
        {
          if (!v10)
          {
            goto LABEL_40;
          }

          v1 = v11;
          if (sub_261D00244())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBAA8, &unk_261D07B50);
          v7 = sub_261CFFD94();
          sub_261D002C4();
          v7(v38, 0);
          if (v6 == v34)
          {
LABEL_32:
            sub_261B91FE4(v39, v40, v41);
            return;
          }
        }

        else
        {
          if (v10)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v11;
          v22 = 1 << *(v11 + 32);
          if (v9 >= v22)
          {
            goto LABEL_36;
          }

          v23 = v9 >> 6;
          v24 = *(v33 + 8 * (v9 >> 6));
          if (((v24 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v11 + 36) != v36)
          {
            goto LABEL_38;
          }

          v25 = v24 & (-2 << (v9 & 0x3F));
          if (v25)
          {
            v22 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
            v2 = v34;
          }

          else
          {
            v26 = v23 << 6;
            v27 = v23 + 1;
            v28 = (v32 + 8 * v23);
            v2 = v34;
            while (v27 < (v22 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_261B91FE4(v9, v36, 0);
                v22 = __clz(__rbit64(v29)) + v26;
                goto LABEL_31;
              }
            }

            sub_261B91FE4(v9, v36, 0);
          }

LABEL_31:
          v31 = *(v11 + 36);
          v39 = v22;
          v40 = v31;
          v41 = 0;
          if (v6 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t sub_261BC4784(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_261CFFDC4();
  if (!v26)
  {
    return sub_261CFFC94();
  }

  v48 = v26;
  v52 = sub_261D003E4();
  v39 = sub_261D003F4();
  sub_261D00394();
  result = sub_261CFFDB4();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_261CFFDE4();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_261D003D4();
      result = sub_261CFFDD4();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.ActionStyle.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t sub_261BC4C38()
{
  sub_261D006C4();
  RemindersInCalendarUtilities.Alert.ActionStyle.hash(into:)();
  return sub_261D006F4();
}

uint64_t RemindersInCalendarUtilities.Alert.Action.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.Action.init(title:style:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action();
  v11 = *(*(a5 - 8) + 32);
  v12 = a6 + *(v10 + 32);

  return v11(v12, a4, a5);
}

uint64_t RemindersInCalendarUtilities.Alert.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.message.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarUtilities.Alert.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t RemindersInCalendarUtilities.Alert.init(title:message:actions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_261BC4F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_261CFE284();
  v19[5] = sub_261CFE264();
  v19[2] = a2;
  sub_261CFE254();
  v7 = sub_261CFFCC4();
  v8 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_261BC4784(sub_261BC695C, v19, v7, v8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v10);

  v12 = sub_261CFE214();
  v14 = v13;
  v15 = sub_261CFE274();
  v17 = v16;
  result = (*(*(v6 - 8) + 8))(a1, v6);
  *a3 = v12;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v17;
  a3[4] = v11;
  return result;
}

uint64_t sub_261BC505C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFE204();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  sub_261CFE254();
  sub_261CFE224();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == *MEMORY[0x277D45D40])
  {
    v15 = 0;
LABEL_7:
    v16 = sub_261CFE234();
    v18 = v17;
    sub_261CFE244();
    *a3 = v16;
    *(a3 + 8) = v18;
    *(a3 + 16) = v15;
    v19 = type metadata accessor for RemindersInCalendarUtilities.Alert.Action();
    return (*(v5 + 32))(a3 + *(v19 + 32), v8, a2);
  }

  if (v14 == *MEMORY[0x277D45D38])
  {
    v15 = 1;
    goto LABEL_7;
  }

  if (v14 == *MEMORY[0x277D45D30])
  {
    v15 = 2;
    goto LABEL_7;
  }

  result = sub_261D00604();
  __break(1u);
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformerConfiguration.alertPresenter.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0(v1);

  return sub_261AE49F0(a1, v1);
}

uint64_t RemindersInCalendarUtilities.RequestPerformerConfiguration.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = _s21DefaultAlertPresenterCMa();
  result = swift_allocObject();
  a1[3] = v2;
  a1[4] = &off_287444558;
  *a1 = result;
  return result;
}

__n128 RemindersInCalendarUtilities.RequestPerformer.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  result = *a1;
  v4 = *(a1 + 16);
  *(v2 + 32) = *a1;
  *(v2 + 48) = v4;
  *(v2 + 64) = *(a1 + 32);
  return result;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.init(configuration:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  v2 = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = v2;
  *(v1 + 64) = *(a1 + 32);
  return v1;
}

uint64_t sub_261BC53A8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 16);
  }

  else
  {
    sub_261BC697C(v0 + 32, v6);
    sub_261AE49F0(v6, v5);
    _s24AlertPresentationAdaptorCMa();
    v2 = swift_allocObject();
    sub_261AE49F0(v5, v2 + 16);
    v3 = sub_261BC69DC();
    *(v0 + 16) = v2;
    *(v0 + 24) = v3;
    sub_261CFCDA4();
  }

  swift_unknownObjectRetain();
  return v2;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_261BC5470((v0 + 32));
  return v0;
}

uint64_t RemindersInCalendarUtilities.RequestPerformer.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_261BC5470((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of RemindersInCalendarAlertPresenting.present<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261AF43A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_261BC5638(void *a1)
{
  v2 = a1[1];

  v3 = a1[3];

  v4 = a1[4];
}

void *sub_261BC567C(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  a1[4] = a2[4];
  sub_261CFD104();
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

void *sub_261BC56D4(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  v5 = a1[3];
  a1[3] = a2[3];
  sub_261CFD104();

  v6 = a2[4];
  v7 = a1[4];
  a1[4] = v6;
  sub_261CFD104();

  return a1;
}

void *sub_261BC575C(void *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = a1[1];
  *a1 = *a2;
  a1[1] = v4;

  a1[2] = *(a2 + 16);
  v6 = a1[3];

  v7 = a1[4];
  *(a1 + 3) = *(a2 + 24);

  return a1;
}

uint64_t sub_261BC57B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261BC57FC(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_261BC587C(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261BC5920(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  if (v6 <= 7 && (*(v5 + 80) & 0x100000) == 0 && ((-18 - v6) | v6) - *(v5 + 64) >= 0xFFFFFFFFFFFFFFE7)
  {
    v10 = a2[1];
    *a1 = *a2;
    *(a1 + 8) = v10;
    *(a1 + 16) = *(a2 + 16);
    v11 = a2 + v6 + 17;
    v12 = *(v5 + 16);
    sub_261CFD104();
    v12((a1 + v6 + 17) & ~v6, v11 & ~v6, v4);
  }

  else
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = v9 + ((v6 & 0xF8 ^ 0x1F8) & (v6 + 16));
    sub_261CFCDA4();
  }

  return a1;
}

uint64_t sub_261BC5A34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);

  v5 = *(*(a2 + 16) - 8);
  v6 = *(v5 + 8);
  v7 = (a1 + *(v5 + 80) + 17) & ~*(v5 + 80);

  return v6(v7);
}

uint64_t sub_261BC5AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 16);
  v7 = *(*(v5 - 8) + 80);
  v8 = v7 + 17 + a2;
  sub_261CFD104();
  v6((v7 + 17 + a1) & ~v7, v8 & ~v7, v5);
  return a1;
}

uint64_t sub_261BC5B40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = *(a2 + 8);
  sub_261CFD104();

  *(a1 + 16) = *(a2 + 16);
  v7 = *(*(a3 + 16) - 8);
  (*(v7 + 24))((*(v7 + 80) + 17 + a1) & ~*(v7 + 80), (*(v7 + 80) + 17 + a2) & ~*(v7 + 80));
  return a1;
}

uint64_t sub_261BC5BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v4 = *(*(a3 + 16) - 8);
  (*(v4 + 32))((*(v4 + 80) + 17 + a1) & ~*(v4 + 80), (*(v4 + 80) + 17 + a2) & ~*(v4 + 80));
  return a1;
}

uint64_t sub_261BC5C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  v7 = *(a1 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;

  *(a1 + 16) = *(a2 + 16);
  v8 = *(*(a3 + 16) - 8);
  (*(v8 + 40))((*(v8 + 80) + 17 + a1) & ~*(v8 + 80), (*(v8 + 80) + 17 + a2) & ~*(v8 + 80));
  return a1;
}

uint64_t sub_261BC5CE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_261BC5E6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t _s29RequestPerformerConfigurationVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  *(a1 + 24) = v3;
  (**(v3 - 8))();
  return a1;
}

uint64_t _s29RequestPerformerConfigurationVwta(uint64_t a1, uint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0(a1);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t _s29RequestPerformerConfigurationVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t _s29RequestPerformerConfigurationVwst(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_261BC6288()
{
  v1 = objc_opt_self();
  v2 = sub_261CFFA54();
  [v1 internalErrorWithDebugDescription_];

  swift_willThrow();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_261BC6344()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return sub_261BC626C();
}

uint64_t sub_261BC63F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_261CFE284();
  v4[11] = v5;
  v6 = *(v5 - 8);
  v4[12] = v6;
  v7 = *(v6 + 64) + 15;
  v4[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261BC64C0, 0, 0);
}

uint64_t sub_261BC64C0()
{
  v23 = v0;
  v1 = v0[13];
  v2 = v0[10];
  v3 = v0[9];
  (*(v0[12] + 16))(v1, v0[8], v0[11]);
  sub_261BC4F00(v1, v3, &v18);
  v4 = v18;
  v5 = v19;
  v6 = v20;
  v7 = v21;
  v0[14] = v19;
  v0[15] = v7;
  v8 = v22;
  v0[16] = v22;
  v9 = v2[5];
  v10 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v9);
  v0[2] = v4;
  v0[3] = v5;
  v0[4] = v6;
  v0[5] = v7;
  v0[6] = v8;
  v11 = *(v10 + 8);
  v17 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  v0[17] = v13;
  *v13 = v0;
  v13[1] = sub_261BC6660;
  v14 = v0[9];
  v15 = v0[7];

  return (v17)(v15, v0 + 2, v14, v9, v10);
}

uint64_t sub_261BC6660()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_261BC67C8, 0, 0);
  }

  else
  {
    v5 = v3[15];
    v4 = v3[16];
    v6 = v3[13];
    v7 = v3[14];

    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_261BC67C8()
{
  v2 = v0[15];
  v1 = v0[16];
  v4 = v0[13];
  v3 = v0[14];

  v5 = v0[1];
  v6 = v0[18];

  return v5();
}

uint64_t sub_261BC6850()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_261BC68AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF4BDC;

  return sub_261BC63F8(a1, a2, a3);
}

uint64_t sub_261BC697C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_261BC69DC()
{
  result = qword_27FEDBAA0;
  if (!qword_27FEDBAA0)
  {
    _s24AlertPresentationAdaptorCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBAA0);
  }

  return result;
}

uint64_t sub_261BC6A34(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_5;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_261C44054(v2, 0);
    sub_261CFD104();
    v1 = sub_261BC6C7C(&v5, (v3 + 32), v2, v1);

    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = sub_261D00274();
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

uint64_t sub_261BC6B0C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_261D00274();
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    v3 = sub_261C44054(v2, 0);
    sub_261CFD104();
    v1 = sub_261C43ABC(&v5, (v3 + 32), v2, v1);
    sub_261AE6F74();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v3;
}

char *sub_261BC6BBC(uint64_t a1, char *a2, uint64_t (*a3)(uint64_t *, char *, uint64_t, uint64_t))
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v6 = sub_261D00274();
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  while (1)
  {
    a2 = (a2)(v6, 0);
    sub_261CFD104();
    a3 = a3(&v8, a2 + 32, v6, a1);
    sub_261AE6F74();
    if (a3 == v6)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v6 = *(a1 + 16);
    if (!v6)
    {
      return MEMORY[0x277D84F90];
    }
  }

  return a2;
}

uint64_t sub_261BC6C7C(uint64_t result, void *a2, uint64_t a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  if (!(a4 >> 62))
  {
    v8 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_24:
    v10 = v8;
    v8 = 0;
    goto LABEL_25;
  }

LABEL_23:
  result = sub_261D00274();
  v8 = result;
  if (!v6)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a3)
  {
    v10 = v8;
    v8 = 0;
LABEL_25:
    *v7 = a4;
    v7[1] = v10;
    return v8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v9 = 1;
    v10 = v8;
    while (v10)
    {
      v11 = __OFSUB__(v10--, 1);
      if (v11)
      {
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if ((a4 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x26671CA10](v10, a4);
      }

      else
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_20;
        }

        if (v10 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v12 = *(a4 + 32 + 8 * v10);
      }

      *v6 = v12;
      if (a3 == v9)
      {
        v8 = a3;
        goto LABEL_25;
      }

      ++v6;
      v11 = __OFADD__(v9++, 1);
      if (v11)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

  __break(1u);
  return result;
}

void sub_261BC6DA0(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x26671C960](a1, a2, v7);
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    if (sub_261D00254() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_261D00264();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_261D000E4();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_261D000F4();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

id sub_261BC6FC4(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  v2 = qword_280D21E98;
  sub_261BC6BBC(a1, sub_261C44054, sub_261C43CC0);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v3 = sub_261CFFC54();

  v21 = 0;
  v4 = [v2 fetchRemindersWithObjectIDs:v3 error:&v21];

  v5 = v21;
  if (v4)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B3B918();
    v6 = sub_261CFF8F4();
    v7 = v5;

    sub_261CFD104();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v8 = sub_261D00274();
      v9 = swift_unknownObjectRetain();
      a1 = sub_261B558DC(v9, v8);
    }

    else
    {
      sub_261CFD104();
    }

    v11 = sub_261B564FC(v6, a1);

    if ((v11 & 0xC000000000000001) != 0)
    {
      if (sub_261D00274())
      {
LABEL_10:

        sub_261BC441C(v11);
        v13 = v12;

        v21 = v13;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6E0, &qword_261D06FD8);
        sub_261BC731C();
        v14 = sub_261CFF954();
        v16 = v15;

        v17 = objc_opt_self();
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_261D00334();

        v21 = 0xD000000000000025;
        v22 = 0x8000000261D1C490;
        MEMORY[0x26671C210](v14, v16);

        MEMORY[0x26671C210](93, 0xE100000000000000);
        v10 = sub_261CFFA54();

        v18 = [v17 internalErrorWithDebugDescription_];
        goto LABEL_11;
      }
    }

    else if (*(v11 + 16))
    {
      goto LABEL_10;
    }

    v10 = sub_261BC6B0C(v6);

    goto LABEL_14;
  }

  v10 = v21;
  sub_261CFD654();
LABEL_11:

  swift_willThrow();
LABEL_14:
  v19 = *MEMORY[0x277D85DE8];
  return v10;
}

unint64_t sub_261BC731C()
{
  result = qword_27FEDB6E8;
  if (!qword_27FEDB6E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB6E0, &qword_261D06FD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB6E8);
  }

  return result;
}

uint64_t ReminderInsertionPosition.rawValue.getter()
{
  if (*v0)
  {
    result = 0x6D6F74746F62;
  }

  else
  {
    result = 7368564;
  }

  *v0;
  return result;
}

uint64_t sub_261BC73E8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBAB0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBAB0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261BC74B0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDBAC8);
  __swift_project_value_buffer(v15, qword_27FEDBAC8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261BC77C4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v29 - v5;
  v43 = sub_261CFD674();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = sub_261CFD6A4();
  v45 = *(v42 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCD0, &qword_261D08388);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCD8, &unk_261D08390);
  v44 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_261D01400;
  v19 = v18 + v17;
  v35 = *(v15 + 48);
  *(v18 + v17) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v30 = v9;
  v20(v9);
  sub_261CFD6C4();
  v21 = *(v45 + 56);
  v45 += 56;
  v32 = v21;
  v22 = v40;
  v21(v40, 1, 1, v42);
  v23 = sub_261CFD074();
  v31 = *(*(v23 - 8) + 56);
  v24 = v41;
  v31(v41, 1, 1, v23);
  v33 = v19;
  v25 = v24;
  sub_261CFD0A4();
  v26 = (v19 + v39);
  v39 = *(v44 + 48);
  *v26 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v30, v36, v43);
  sub_261CFD6C4();
  v32(v22, 1, 1, v42);
  v31(v25, 1, 1, v23);
  sub_261CFD0A4();
  v27 = sub_261C3A3D8(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBAE0 = v27;
  return result;
}

RemindersAppIntents::ReminderInsertionPosition_optional __swiftcall ReminderInsertionPosition.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261BC7DB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6D6F74746F62;
  }

  else
  {
    v4 = 7368564;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x6D6F74746F62;
  }

  else
  {
    v6 = 7368564;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_261D00614();
  }

  return v9 & 1;
}

uint64_t sub_261BC7E50()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC7EC8()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261BC7F2C()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC7FA0@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_261BC8000(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 0x6D6F74746F62;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261BC807C(uint64_t a1)
{
  v2 = sub_261B07F3C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BC80EC(uint64_t a1)
{
  v2 = sub_261BCD914();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261BC8138()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDBAE8);
  __swift_project_value_buffer(v15, qword_27FEDBAE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261BC844C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v45 = v36 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v53 = v36 - v5;
  v51 = sub_261CFD674();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v51);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v42 = sub_261CFD6A4();
  v54 = *(v42 - 8);
  v16 = *(v54 + 64);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCC0, &qword_261D08378);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCC8, &qword_261D08380);
  v18 = *(*(v17 - 8) + 72);
  v19 = (*(*(v17 - 8) + 80) + 32) & ~*(*(v17 - 8) + 80);
  v43 = 2 * v18;
  v20 = swift_allocObject();
  v44 = v20;
  *(v20 + 16) = xmmword_261D01420;
  v41 = *(v17 + 48);
  v21 = v17;
  *(v20 + v19) = 0;
  v22 = v20 + v19;
  sub_261CFF9B4();
  v36[1] = v13;
  sub_261CFD874();
  v40 = *MEMORY[0x277CC9110];
  v52 = *(v6 + 104);
  v37 = v9;
  v52(v9);
  v38 = v6 + 104;
  sub_261CFD6C4();
  v23 = *(v54 + 56);
  v54 += 56;
  v49 = v23;
  v24 = v42;
  v23(v53, 1, 1, v42);
  v47 = sub_261CFD074();
  v25 = *(v47 - 8);
  v46 = *(v25 + 56);
  v48 = v25 + 56;
  v26 = v45;
  v46(v45, 1, 1, v47);
  v50 = v22;
  v27 = v26;
  sub_261CFD0A4();
  v28 = v21;
  v39 = v21;
  v41 = *(v21 + 48);
  *(v22 + v18) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v29 = v37;
  v30 = v40;
  (v52)(v37, v40, v51);
  v31 = v29;
  sub_261CFD6C4();
  v32 = v53;
  v49(v53, 1, 1, v24);
  v46(v27, 1, 1, v47);
  sub_261CFD0A4();
  v33 = (v50 + v43);
  v43 = *(v28 + 48);
  *v33 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  (v52)(v31, v30, v51);
  sub_261CFD6C4();
  v49(v32, 1, 1, v24);
  v46(v27, 1, 1, v47);
  sub_261CFD0A4();
  v34 = sub_261C3A5C0(v44);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDBB00 = v34;
  return result;
}

RemindersAppIntents::MoveRemindersAppIntent::MoveTargetType_optional __swiftcall MoveRemindersAppIntent.MoveTargetType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t MoveRemindersAppIntent.MoveTargetType.rawValue.getter()
{
  v1 = 0x6E6F6974636573;
  if (*v0 != 1)
  {
    v1 = 0x6552746E65726170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_261BC8BB8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F6974636573;
  if (v2 != 1)
  {
    v4 = 0x6552746E65726170;
    v3 = 0xEE007265646E696DLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1953720684;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F6974636573;
  if (*a2 != 1)
  {
    v8 = 0x6552746E65726170;
    v7 = 0xEE007265646E696DLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953720684;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261BC8CCC()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261BC8D74()
{
  *v0;
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261BC8E08()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261BC8EB8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F6974636573;
  if (v2 != 1)
  {
    v5 = 0x6552746E65726170;
    v4 = 0xEE007265646E696DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953720684;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261BC8F64(uint64_t a1)
{
  v2 = sub_261BCC330();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261BC8FD4(uint64_t a1)
{
  v2 = sub_261BCDD30();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t MoveRemindersAppIntent.reminders.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261BC9054(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9214(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t MoveRemindersAppIntent.position.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.position.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC93D4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261BC9410(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v10 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t MoveRemindersAppIntent.targetType.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*MoveRemindersAppIntent.targetType.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261BC95F4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_261AFB668(a1, &v19 - v9, &unk_27FEDE0C0, &unk_261D02500);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  sub_261AFB668(v10, v8, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t MoveRemindersAppIntent.list.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t (*MoveRemindersAppIntent.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9914(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_261AFB668(a1, &v19 - v9, &qword_27FEDA1E0, &unk_261D02300);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  sub_261AFB668(v10, v8, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v10, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t MoveRemindersAppIntent.section.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*MoveRemindersAppIntent.section.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9C38(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v19 - v9;
  sub_261AFB668(a1, &v19 - v9, &unk_27FEDE110, &unk_261D035B0);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  sub_261AFB668(v10, v8, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261AE6A40(v10, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t MoveRemindersAppIntent.parentReminder.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 40);
  sub_261AFB668(a1, &v8 - v6, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCBC4();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*MoveRemindersAppIntent.parentReminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261BC9F10()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDBB08);
  __swift_project_value_buffer(v9, qword_27FEDBB08);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t sub_261BCA130@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static MoveRemindersAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t static MoveRemindersAppIntent.openAppWhenRun.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDBB20 = a1;
  return result;
}

uint64_t static MoveRemindersAppIntent.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB28, &unk_261D07B88);
  v2 = sub_261BCAC34();
  v3 = sub_261B01D28(&qword_27FEDBB38, &qword_27FEDBB28, &unk_261D07B88);

  return MEMORY[0x28210C568](KeyPath, sub_261BCA680, 0, v1, v2, v3);
}

uint64_t sub_261BCA680@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC50, &qword_261D08250);
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v44 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = v36 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC58, &qword_261D08258);
  v51 = *(v6 - 8);
  v7 = *(v51 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = v36 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v36 - v13;
  MEMORY[0x28223BE20](v12);
  v42 = v36 - v15;
  v54 = 0;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC60, &qword_261D08260);
  v17 = sub_261BCAC34();
  v18 = sub_261BCDCD8();
  v19 = sub_261B01D28(&qword_27FEDBC68, &qword_27FEDBC60, &qword_261D08260);
  v36[0] = v17;
  v36[1] = v18;
  sub_261CFD2B4();
  v38 = sub_261B01D28(&qword_27FEDBC70, &qword_27FEDBC58, &qword_261D08258);
  v20 = v6;
  sub_261CFD284();
  v21 = v51 + 8;
  v37 = *(v51 + 8);
  v41 = v14;
  v37(v14, v20);
  v53 = 1;
  v40 = v19;
  v22 = v50;
  sub_261CFD2B4();
  v49 = v20;
  sub_261CFD284();
  v23 = v37;
  v37(v22, v20);
  v51 = v21;
  v52 = 2;
  v24 = v43;
  v39 = v16;
  sub_261CFD2B4();
  v25 = v49;
  sub_261CFD284();
  v23(v24, v25);
  v26 = v44;
  sub_261CFD344();
  sub_261B01D28(&qword_27FEDBC78, &qword_27FEDBC50, &qword_261D08250);
  v27 = v45;
  v28 = v26;
  v29 = v47;
  sub_261CFD284();
  v30 = *(v46 + 8);
  v30(v28, v29);
  v31 = v49;
  v33 = v41;
  v32 = v42;
  v34 = v50;
  sub_261CFD274();
  v30(v27, v29);
  v23(v34, v31);
  v23(v33, v31);
  return (v23)(v32, v31);
}

unint64_t sub_261BCAC34()
{
  result = qword_27FEDBB30;
  if (!qword_27FEDBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB30);
  }

  return result;
}

uint64_t sub_261BCACA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v20 = a2;
  v21 = a3;
  v19 = a1;
  v22 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC80, &qword_261D08268);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC88, &qword_261D08270);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC60, &qword_261D08260);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - v14;
  sub_261BCAC34();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC90, &qword_261D082A0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBC98, &qword_261D082D0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBCA0, &qword_261D082D8);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v16 = sub_261B01D28(&qword_27FEDBC68, &qword_27FEDBC60, &qword_261D08260);
  MEMORY[0x266719870](v13, &type metadata for MoveRemindersAppIntent, v8, v16);
  v17 = *(v9 + 8);
  v17(v13, v8);
  MEMORY[0x266719860](v15, &type metadata for MoveRemindersAppIntent, v8, v16);
  return (v17)(v15, v8);
}

uint64_t MoveRemindersAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v103 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v87 = v84 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v86 = v84 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v85 = v84 - v9;
  v102 = sub_261CFD184();
  v107 = *(v102 - 8);
  v10 = *(v107 + 64);
  MEMORY[0x28223BE20](v102);
  v101 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v106 = v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v100 = v84 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v104 = v84 - v19;
  v20 = sub_261CFD674();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_261CFD884();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFFA44();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = sub_261CFD6A4();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  v32 = MEMORY[0x28223BE20](v29);
  v93 = v84 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v35 = v84 - v34;
  v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *MEMORY[0x277CC9110];
  v94 = v21;
  v37 = *(v21 + 104);
  v37(v24, v36, v20);
  v105 = v35;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v97 = v36;
  v38 = v36;
  v39 = v104;
  v96 = v21 + 104;
  v91 = v37;
  v37(v24, v38, v20);
  sub_261CFD6C4();
  v40 = *(v30 + 56);
  v98 = v30 + 56;
  v99 = v29;
  v95 = v40;
  v40(v39, 0, 1, v29);
  v109 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v41 = __swift_project_value_buffer(v20, qword_280D27028);
  v94[2](v24, v41, v20);
  sub_261CFD874();
  sub_261CFD6C4();
  v42 = v100;
  sub_261CFC844();
  v43 = sub_261CFC834();
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v92 = v45;
  v46 = v44 + 56;
  v45(v42, 0, 1, v43);
  v45(v106, 1, 1, v43);
  LODWORD(v93) = *MEMORY[0x277CBA308];
  v47 = *(v107 + 104);
  v107 += 104;
  v94 = v47;
  (v47)(v101);
  v84[1] = sub_261B517D0(&qword_280D22358, type metadata accessor for ReminderEntity);
  *v103 = sub_261CFCC34();
  v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F8, &qword_261D02320);
  sub_261CFF9B4();
  sub_261CFD874();
  v48 = v97;
  v88 = v20;
  v49 = v91;
  v91(v24, v97, v20);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v49(v24, v48, v20);
  v50 = v104;
  sub_261CFD6C4();
  v95(v50, 0, 1, v99);
  LOBYTE(v109) = 1;
  v89 = v43;
  v90 = v46;
  v51 = v92;
  v92(v100, 1, 1, v43);
  v51(v106, 1, 1, v43);
  v52 = v102;
  (v94)(v101, v93, v102);
  sub_261B07F3C();
  v103[1] = sub_261CFCC04();
  v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB40, &qword_261D07B98);
  sub_261CFF9B4();
  sub_261CFD874();
  v53 = v97;
  v54 = v88;
  v49(v24, v97, v88);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v49(v24, v53, v54);
  v55 = v104;
  sub_261CFD6C4();
  v95(v55, 0, 1, v99);
  LOBYTE(v109) = 0;
  v56 = v100;
  v57 = v89;
  v58 = v92;
  v92(v100, 1, 1, v89);
  v58(v106, 1, 1, v57);
  (v94)(v101, v93, v52);
  sub_261BCC330();
  v59 = v56;
  v103[2] = sub_261CFCC04();
  v84[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA60, &unk_261D03620);
  sub_261CFF9B4();
  sub_261CFD874();
  v60 = v97;
  v61 = v88;
  v62 = v91;
  v91(v24, v97, v88);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v24, v60, v61);
  v63 = v104;
  sub_261CFD6C4();
  v95(v63, 0, 1, v99);
  v64 = type metadata accessor for ListEntity();
  (*(*(v64 - 8) + 56))(v85, 1, 1, v64);
  v65 = v89;
  v66 = v92;
  v92(v59, 1, 1, v89);
  v66(v106, 1, 1, v65);
  (v94)(v101, v93, v102);
  sub_261B517D0(&qword_280D227A0, type metadata accessor for ListEntity);
  v103[3] = sub_261CFCC34();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA208, &qword_261D02328);
  sub_261CFF9B4();
  sub_261CFD874();
  v67 = v97;
  v68 = v88;
  v69 = v91;
  v91(v24, v97, v88);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v69(v24, v67, v68);
  sub_261CFD6C4();
  v95(v63, 0, 1, v99);
  v70 = type metadata accessor for SectionEntity();
  (*(*(v70 - 8) + 56))(v86, 1, 1, v70);
  v71 = v89;
  v72 = v92;
  v92(v100, 1, 1, v89);
  v72(v106, 1, 1, v71);
  v73 = v101;
  (v94)(v101, v93, v102);
  sub_261B517D0(&qword_280D224E0, type metadata accessor for SectionEntity);
  v74 = sub_261CFCC34();
  v75 = v103;
  v103[4] = v74;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAB0, &qword_261D07BA0);
  sub_261CFF9B4();
  sub_261CFD874();
  v76 = v97;
  v77 = v88;
  v78 = v91;
  v91(v24, v97, v88);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v78(v24, v76, v77);
  v79 = v104;
  sub_261CFD6C4();
  v95(v79, 0, 1, v99);
  v80 = type metadata accessor for ReminderEntity();
  (*(*(v80 - 8) + 56))(v87, 1, 1, v80);
  v81 = v89;
  v82 = v92;
  v92(v100, 1, 1, v89);
  v82(v106, 1, 1, v81);
  (v94)(v73, v93, v102);
  v75[5] = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB50, &qword_261D07BA8);
  v108 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v75[6] = result;
  return result;
}

unint64_t sub_261BCC330()
{
  result = qword_27FEDBB48;
  if (!qword_27FEDBB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB48);
  }

  return result;
}

uint64_t MoveRemindersAppIntent.perform()(uint64_t a1)
{
  *(v2 + 640) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  *(v2 + 648) = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300) - 8) + 64) + 15;
  *(v2 + 656) = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 664) = swift_task_alloc();
  v6 = *(v1 + 16);
  *(v2 + 16) = *v1;
  *(v2 + 32) = v6;
  *(v2 + 48) = *(v1 + 32);
  *(v2 + 64) = *(v1 + 48);
  sub_261CFFD24();
  *(v2 + 672) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 680) = v8;
  *(v2 + 688) = v7;

  return MEMORY[0x2822009F8](sub_261BCC4E0, v8, v7);
}

uint64_t sub_261BCC4E0()
{
  v56 = v0;
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  v2 = *(*(v0 + 608) + 16);

  if (v2)
  {
    v3 = *(v0 + 32);
    sub_261CFCBB4();
    if (*(v0 + 808))
    {
      if (*(v0 + 808) == 1)
      {
        v4 = *(v0 + 656);
        sub_261CFCBB4();
        v5 = *(v0 + 624);
        v6 = *(v0 + 24);
        sub_261CFCBB4();
        v55 = *(v0 + 810);
        v7 = *(v0 + 48);
        sub_261CFCBB4();
        v8 = *(v0 + 64);
        sub_261CFC664();
        v9 = *(v0 + 208);
        v10 = *(v0 + 232);
        v11 = __swift_project_boxed_opaque_existential_1((v0 + 184), v9);
        *(v0 + 512) = v9;
        *(v0 + 520) = v10;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 488));
        (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v11, v9);
        sub_261B06EA4(v5, &v55, v4, v0 + 488, &v52);
        __swift_destroy_boxed_opaque_existential_0((v0 + 184));
        v13 = *(&v52 + 1);
        *(v0 + 712) = v52;
        *(v0 + 720) = v13;
        v14 = *(&v53 + 1);
        *(v0 + 728) = v53;
        *(v0 + 736) = v14;
        sub_261BCD318((v0 + 16), (v0 + 240));
        v50 = sub_261C504E0;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v15 = swift_task_alloc();
        *(v0 + 744) = v15;
        *v15 = v0;
        v15[1] = sub_261BCCD1C;
      }

      else
      {
        v39 = *(v0 + 648);
        sub_261CFCBB4();
        v40 = *(v0 + 616);
        v41 = *(v0 + 24);
        sub_261CFCBB4();
        v55 = *(v0 + 809);
        v42 = *(v0 + 56);
        sub_261CFCBB4();
        v43 = *(v0 + 64);
        sub_261CFC664();
        v44 = *(v0 + 96);
        v45 = *(v0 + 112);
        v46 = __swift_project_boxed_opaque_existential_1((v0 + 72), v44);
        *(v0 + 472) = v44;
        *(v0 + 480) = v45;
        v47 = __swift_allocate_boxed_opaque_existential_1((v0 + 448));
        (*(*(v44 - 8) + 16))(v47, v46, v44);
        sub_261C90058(v40, &v55, v39, v0 + 448, &v52);
        __swift_destroy_boxed_opaque_existential_0((v0 + 72));
        v48 = *(&v52 + 1);
        *(v0 + 760) = v52;
        *(v0 + 768) = v48;
        v14 = *(&v53 + 1);
        *(v0 + 776) = v53;
        *(v0 + 784) = v14;
        sub_261BCD318((v0 + 16), (v0 + 128));
        v50 = sub_261C50FA4;
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        sub_261CFCDA4();
        v49 = swift_task_alloc();
        *(v0 + 792) = v49;
        *v49 = v0;
        v49[1] = sub_261BCCF14;
      }

      v16 = *(v0 + 640);
      v58 = v14;

      __asm { BR              X8 ; sub_261C504E0 sub_261C50FA4 }
    }

    v28 = *(v0 + 664);
    sub_261CFCBB4();
    v29 = *(v0 + 632);
    v30 = *(v0 + 24);
    sub_261CFCBB4();
    v55 = *(v0 + 811);
    v31 = *(v0 + 40);
    sub_261CFCBB4();
    v32 = *(v0 + 64);
    sub_261CFC664();
    v51 = *(v0 + 320);
    v33 = *(v0 + 320);
    v34 = __swift_project_boxed_opaque_existential_1((v0 + 296), v33);
    *(v0 + 552) = v51;
    v35 = __swift_allocate_boxed_opaque_existential_1((v0 + 528));
    (*(*(v33 - 8) + 16))(v35, v34, v33);
    sub_261BC2DE4(v29, &v55, v28, 0, v0 + 528, &v52);
    __swift_destroy_boxed_opaque_existential_0((v0 + 296));
    v36 = v53;
    *(v0 + 408) = v52;
    *(v0 + 424) = v36;
    *(v0 + 440) = v54;
    sub_261BCD318((v0 + 16), (v0 + 352));
    sub_261BC3EBC(v0 + 408, v0 + 568);
    v37 = swift_task_alloc();
    *(v0 + 696) = v37;
    *v37 = v0;
    v37[1] = sub_261BCCB54;
    v38 = *(v0 + 640);

    return sub_261C4FA8C(v38, "MoveRemindersToListAppIntent", 28, 2, v0 + 16, v0 + 408);
  }

  else
  {
    v17 = *(v0 + 672);

    if (qword_27FED9A20 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDBAB0);
    v19 = sub_261CFF784();
    v20 = sub_261CFFE64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261AE2000, v19, v20, "[MoveRemindersAppIntent] reminders parameter is an empty array despite requestValueDialog was prompted.", v21, 2u);
      MEMORY[0x26671D560](v21, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v22 = 24;
    swift_willThrow();
    v23 = *(v0 + 664);
    v24 = *(v0 + 656);
    v25 = *(v0 + 648);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_261BCCB54()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  v5 = *(v2 + 688);
  v6 = *(v2 + 680);
  if (v0)
  {
    v7 = sub_261BCD10C;
  }

  else
  {
    v7 = sub_261BCCC90;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BCCC90()
{
  v1 = v0[84];

  sub_261BCD350((v0 + 51));
  v2 = v0[83];
  v3 = v0[82];
  v4 = v0[81];

  v5 = v0[1];

  return v5();
}

uint64_t sub_261BCCD1C()
{
  v2 = *v1;
  v3 = *(*v1 + 744);
  v4 = *v1;
  *(*v1 + 752) = v0;

  v5 = *(v2 + 688);
  v6 = *(v2 + 680);
  if (v0)
  {
    v7 = sub_261BCD1A0;
  }

  else
  {
    v7 = sub_261BCCE58;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BCCE58()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[84];

  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261BCCF14()
{
  v2 = *v1;
  v3 = *(*v1 + 792);
  v4 = *v1;
  *(*v1 + 800) = v0;

  v5 = *(v2 + 688);
  v6 = *(v2 + 680);
  if (v0)
  {
    v7 = sub_261BCD25C;
  }

  else
  {
    v7 = sub_261BCD050;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261BCD050()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[84];

  v6 = v0[83];
  v7 = v0[82];
  v8 = v0[81];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261BCD10C()
{
  v1 = v0[84];

  sub_261BCD350((v0 + 51));
  v2 = v0[88];
  v3 = v0[83];
  v4 = v0[82];
  v5 = v0[81];

  v6 = v0[1];

  return v6();
}

uint64_t sub_261BCD1A0()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  v4 = v0[89];
  v5 = v0[84];

  v6 = v0[94];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];

  v10 = v0[1];

  return v10();
}

uint64_t sub_261BCD25C()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  v4 = v0[95];
  v5 = v0[84];

  v6 = v0[100];
  v7 = v0[83];
  v8 = v0[82];
  v9 = v0[81];

  v10 = v0[1];

  return v10();
}

uint64_t sub_261BCD3DC@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_261BCD4C8(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBB28, &unk_261D07B88);
  v5 = sub_261B01D28(&qword_27FEDBB38, &qword_27FEDBB28, &unk_261D07B88);

  return MEMORY[0x28210C568](KeyPath, sub_261BCA680, 0, v4, a2, v5);
}

uint64_t sub_261BCD594(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return MoveRemindersAppIntent.perform()(a1);
}

uint64_t sub_261BCD630(uint64_t a1)
{
  v2 = sub_261BCAC34();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261BCD670()
{
  result = qword_27FEDBB58;
  if (!qword_27FEDBB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB58);
  }

  return result;
}

unint64_t sub_261BCD70C()
{
  result = qword_27FEDBB70;
  if (!qword_27FEDBB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB70);
  }

  return result;
}

unint64_t sub_261BCD764()
{
  result = qword_27FEDBB78;
  if (!qword_27FEDBB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB78);
  }

  return result;
}

unint64_t sub_261BCD7BC()
{
  result = qword_27FEDBB80;
  if (!qword_27FEDBB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB80);
  }

  return result;
}

unint64_t sub_261BCD814()
{
  result = qword_27FEDBB88;
  if (!qword_27FEDBB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB88);
  }

  return result;
}

unint64_t sub_261BCD868()
{
  result = qword_27FEDBB90;
  if (!qword_27FEDBB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB90);
  }

  return result;
}

unint64_t sub_261BCD8BC()
{
  result = qword_27FEDBB98;
  if (!qword_27FEDBB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBB98);
  }

  return result;
}

unint64_t sub_261BCD914()
{
  result = qword_27FEDBBA0;
  if (!qword_27FEDBBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBA0);
  }

  return result;
}

unint64_t sub_261BCD984()
{
  result = qword_27FEDBBA8;
  if (!qword_27FEDBBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBA8);
  }

  return result;
}

unint64_t sub_261BCD9DC()
{
  result = qword_27FEDBBB0;
  if (!qword_27FEDBBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBB0);
  }

  return result;
}

unint64_t sub_261BCDA34()
{
  result = qword_27FEDBBB8;
  if (!qword_27FEDBBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBB8);
  }

  return result;
}

unint64_t sub_261BCDA8C()
{
  result = qword_27FEDBBC0;
  if (!qword_27FEDBBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBC0);
  }

  return result;
}

unint64_t sub_261BCDB28()
{
  result = qword_27FEDBBD8;
  if (!qword_27FEDBBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBD8);
  }

  return result;
}

unint64_t sub_261BCDB80()
{
  result = qword_27FEDBBE0;
  if (!qword_27FEDBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBE0);
  }

  return result;
}

unint64_t sub_261BCDBD8()
{
  result = qword_27FEDBBE8;
  if (!qword_27FEDBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBE8);
  }

  return result;
}

unint64_t sub_261BCDC30()
{
  result = qword_27FEDBBF0;
  if (!qword_27FEDBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBF0);
  }

  return result;
}

unint64_t sub_261BCDC84()
{
  result = qword_27FEDBBF8;
  if (!qword_27FEDBBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBBF8);
  }

  return result;
}

unint64_t sub_261BCDCD8()
{
  result = qword_27FEDBC00;
  if (!qword_27FEDBC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC00);
  }

  return result;
}

unint64_t sub_261BCDD30()
{
  result = qword_27FEDBC08;
  if (!qword_27FEDBC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC08);
  }

  return result;
}

unint64_t sub_261BCDDF4()
{
  result = qword_27FEDBC10;
  if (!qword_27FEDBC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC10);
  }

  return result;
}

unint64_t sub_261BCDE4C()
{
  result = qword_27FEDBC18;
  if (!qword_27FEDBC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC18);
  }

  return result;
}

unint64_t sub_261BCDEA4()
{
  result = qword_27FEDBC20;
  if (!qword_27FEDBC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC20);
  }

  return result;
}

unint64_t sub_261BCDEFC()
{
  result = qword_27FEDBC28;
  if (!qword_27FEDBC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC28);
  }

  return result;
}

unint64_t sub_261BCDF54()
{
  result = qword_27FEDBC30;
  if (!qword_27FEDBC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDBC30);
  }

  return result;
}

uint64_t destroy for MoveRemindersAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];
}

void *initializeWithCopy for MoveRemindersAppIntent(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  a1[6] = a2[6];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for MoveRemindersAppIntent(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v5 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v6 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v7 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v8 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v9 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v10 = a2[6];
  v11 = a1[6];
  a1[6] = v10;
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for MoveRemindersAppIntent(void *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = *(a2 + 16);

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = *(a2 + 32);

  v10 = a1[6];
  a1[6] = *(a2 + 48);

  return a1;
}

uint64_t getEnumTagSinglePayload for MoveRemindersAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for MoveRemindersAppIntent(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_261BCE32C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDBCE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDBCE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t EarlyAlertEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  a1[1] = result;
  return result;
}

uint64_t EarlyAlertEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return MEMORY[0x2822009F8](sub_261BCE494, 0, 0);
}

uint64_t sub_261BCE494()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261BAEC14;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C60018("EarlyAlertEntityQuery.entitiesForIdentifiers", 44, 2, v5, v6, v7);
}

uint64_t sub_261BCE578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_261BCE59C, 0, 0);
}

void sub_261BCE59C()
{
  v26 = v0;
  v1 = *(v0 + 40);
  sub_261B6C17C(0x7365697469746E65, 0xEE00293A726F6628);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = *(v0 + 40) + 40;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v6 = (v4 + 16 * v3);
      v7 = v3;
      while (1)
      {
        if (v7 >= v2)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          return;
        }

        v3 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_21;
        }

        v9 = *(v6 - 1);
        v8 = *v6;
        v25 = *(v0 + 24);
        sub_261CFD104();
        sub_261BCE780(v9, v8, &v22);

        v10 = *(&v22 + 1);
        if (*(&v22 + 1))
        {
          break;
        }

        sub_261B49F50(v22, 0);
        v6 += 2;
        ++v7;
        if (v3 == v2)
        {
          goto LABEL_17;
        }
      }

      v11 = v22;
      v12 = v23;
      v13 = v24;
      v21 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_261B42274(0, *(v5 + 2) + 1, 1, v5);
      }

      v15 = *(v5 + 2);
      v14 = *(v5 + 3);
      if (v15 >= v14 >> 1)
      {
        v19 = sub_261B42274((v14 > 1), v15 + 1, 1, v5);
        v17 = v12;
        v16 = v13;
        v5 = v19;
      }

      else
      {
        v16 = v13;
        v17 = v12;
      }

      *(v5 + 2) = v15 + 1;
      v18 = &v5[32 * v15];
      *(v18 + 4) = v11;
      *(v18 + 5) = v10;
      *(v18 + 6) = v17;
      *(v18 + 7) = v16;
      v4 = v21;
    }

    while (v3 != v2);
  }

  else
  {
    v5 = MEMORY[0x277D84F90];
  }

LABEL_17:
  **(v0 + 16) = v5;
  v20 = *(v0 + 8);

  v20();
}

double sub_261BCE780@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v58 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD60, &qword_261D085E0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD68, &qword_261D085E8);
  v56 = *(v17 - 8);
  v57 = v17;
  v18 = *(v56 + 64);
  MEMORY[0x28223BE20](v17);
  v55 = &v52 - v19;
  if (qword_27FED9A68 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v5, qword_27FEDBCF8);
  (*(v6 + 16))(v12, v20, v5);
  v53 = a1;
  v54 = a2;
  sub_261CFFBF4();
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418);
  sub_261CFE984();
  sub_261CFE9B4();

  v21 = *(v6 + 8);
  v21(v10, v5);
  v21(v12, v5);
  v23 = v56;
  v22 = v57;
  if ((*(v56 + 48))(v16, 1, v57) == 1)
  {
    sub_261AE6A40(v16, &qword_27FEDBD60, &qword_261D085E0);
LABEL_21:
    result = 0.0;
    v49 = v58;
    *v58 = 0u;
    v49[1] = 0u;
    return result;
  }

  (*(v23 + 32))(v55, v16, v22);
  sub_261CFE9C4();

  v24 = v63;
  v25 = v64;
  v27 = v65;
  v26 = v66;
  v28 = MEMORY[0x26671C1B0](v67, v68, v69, v70);
  v30 = v29;

  v31._countAndFlagsBits = v28;
  v31._object = v30;
  EarlyAlertEntity.Unit.init(rawValue:)(v31);
  v32 = v60;
  if (v60 == 5)
  {

    if (qword_27FED9A50 != -1)
    {
      swift_once();
    }

    v33 = sub_261CFF7A4();
    __swift_project_value_buffer(v33, qword_27FEDBCE0);
    v34 = v54;
    sub_261CFD104();
    v35 = sub_261CFF784();
    v36 = sub_261CFFE64();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_261B879C8(v53, v34, &v60);
    v39 = "[EarlyAlertEntityQuery] Cannot create entity due to unknown 'unit' value from identifier: %s";
LABEL_19:
    _os_log_impl(&dword_261AE2000, v35, v36, v39, v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x26671D560](v38, -1, -1);
    MEMORY[0x26671D560](v37, -1, -1);
LABEL_20:

    (*(v23 + 8))(v55, v22);
    goto LABEL_21;
  }

  if (!((v25 ^ v24) >> 14))
  {

    goto LABEL_15;
  }

  v40 = sub_261BD1624(v24, v25, v27, v26, 10);
  if ((v41 & 0x100) == 0)
  {
    v42 = v40;
    v43 = v41;

    if ((v43 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_15:
    if (qword_27FED9A50 != -1)
    {
      swift_once();
    }

    v46 = sub_261CFF7A4();
    __swift_project_value_buffer(v46, qword_27FEDBCE0);
    v47 = v54;
    sub_261CFD104();
    v35 = sub_261CFF784();
    v36 = sub_261CFFE64();

    if (!os_log_type_enabled(v35, v36))
    {
      goto LABEL_20;
    }

    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v60 = v38;
    *v37 = 136315138;
    *(v37 + 4) = sub_261B879C8(v53, v47, &v60);
    v39 = "[EarlyAlertEntityQuery] Cannot create entity due to non-integer 'interval' value from identifier: %s";
    goto LABEL_19;
  }

  v42 = sub_261BD0C18(v24, v25, v27, v26, 10);
  v45 = v44;

  if (v45)
  {
    goto LABEL_15;
  }

LABEL_22:
  v59 = v32;
  EarlyAlertEntity.init(unit:interval:)(&v59, v42, &v60);
  (*(v23 + 8))(v55, v22);
  v50 = v62;
  v51 = v58;
  *v58 = v60;
  result = *&v61;
  *(v51 + 8) = v61;
  *(v51 + 3) = v50;
  return result;
}

uint64_t sub_261BCEEB8()
{
  v1 = v0[2];
  v2 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261BCEF88;
  v4 = v0[2];
  v5 = v0[3];

  return (sub_261C604A8)("EarlyAlertEntityQuery.suggestedEntities", 39, 2, v4, v5);
}

uint64_t sub_261BCEF88(uint64_t a1)
{
  v4 = *(*v2 + 32);
  v5 = *(*v2 + 24);
  v6 = *(*v2 + 16);
  v10 = *v2;

  v8 = *(v10 + 8);
  if (!v1)
  {
    v7 = a1;
  }

  return v8(v7);
}

uint64_t sub_261BCF0C8()
{
  v1 = sub_261CFD4E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v24[-v8];
  v10 = type metadata accessor for ReminderEntity();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v24[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = v0[1];
  v15 = *v0;
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261BD1DA8();
    sub_261CFCD54();

    v16 = v24[15];
  }

  else
  {
    v18 = sub_261CFD1F4();
    v16 = v18;
    if (v18)
    {
      swift_getKeyPath();
      sub_261BD1ED4(&qword_280D22350, type metadata accessor for ReminderEntity);
      sub_261CFCD54();

      v19 = *(v13 + 2);
      sub_261CFCA04();
      sub_261B4C974(v13);
      if ((*(v2 + 48))(v9, 1, v1))
      {
        sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
        v16 = 0;
      }

      else
      {
        (*(v2 + 16))(v5, v9, v1);
        sub_261AE6A40(v9, &qword_27FEDA160, &qword_261D02220);
        sub_261CFD494();
        if (v20 & 1) != 0 && (sub_261CFD4A4(), (v21) && (sub_261CFD4B4(), (v22))
        {
          sub_261CFD424();
          v16 = v23;
        }

        else
        {
          v16 = 0;
        }

        (*(v2 + 8))(v5, v1);
      }
    }
  }

  return v16 & 1;
}

uint64_t sub_261BCF3B4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261D06F90;
  v6 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v6, 5, (v0 + 32));
  v5 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v5, 15, (v0 + 64));
  v4 = 0;
  EarlyAlertEntity.init(unit:interval:)(&v4, 30, (v0 + 96));
  v3 = 1;
  EarlyAlertEntity.init(unit:interval:)(&v3, 1, (v0 + 128));
  v2 = 1;
  result = EarlyAlertEntity.init(unit:interval:)(&v2, 2, (v0 + 160));
  qword_27FEF3E48 = v0;
  return result;
}

uint64_t sub_261BCF478()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA800, &qword_261D03380);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_261D083A0;
  v8 = 2;
  EarlyAlertEntity.init(unit:interval:)(&v8, 1, (v0 + 32));
  v7 = 2;
  EarlyAlertEntity.init(unit:interval:)(&v7, 2, (v0 + 64));
  v6 = 3;
  EarlyAlertEntity.init(unit:interval:)(&v6, 1, (v0 + 96));
  v5 = 3;
  EarlyAlertEntity.init(unit:interval:)(&v5, 2, (v0 + 128));
  v4 = 4;
  EarlyAlertEntity.init(unit:interval:)(&v4, 1, (v0 + 160));
  v3 = 4;
  EarlyAlertEntity.init(unit:interval:)(&v3, 3, (v0 + 192));
  v2 = 4;
  result = EarlyAlertEntity.init(unit:interval:)(&v2, 6, (v0 + 224));
  qword_27FEF3E50 = v0;
  return result;
}

uint64_t sub_261BCF56C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 64);
  result = sub_261CFCBD4();
  *a2 = result;
  return result;
}

uint64_t sub_261BCF598()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  __swift_allocate_value_buffer(v0, qword_27FEDBCF8);
  __swift_project_value_buffer(v0, qword_27FEDBCF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418);
  return sub_261CFE9A4();
}

uint64_t sub_261BCF670@<X0>(uint64_t a1@<X8>)
{
  v135 = a1;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8E8, &qword_261D03418);
  v136 = *(v134 - 8);
  v1 = *(v136 + 64);
  MEMORY[0x28223BE20](v134);
  v133 = &v117 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA898, &unk_261D08600);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v139 = &v117 - v5;
  v6 = sub_261CFDB44();
  v158 = *(v6 - 8);
  v7 = *(v158 + 64);
  MEMORY[0x28223BE20](v6);
  v129 = &v117 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA938, &qword_261D03440);
  v159 = *(v141 - 8);
  v9 = *(v159 + 64);
  v10 = MEMORY[0x28223BE20](v141);
  v140 = &v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v117 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA858, &unk_261D08610);
  v15 = *(v14 - 8);
  v164 = v14;
  v165 = v15;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v155 = &v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v157 = &v117 - v19;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA888, &qword_261D033E8);
  v132 = *(v150 - 8);
  v20 = *(v132 + 64);
  v21 = MEMORY[0x28223BE20](v150);
  v149 = &v117 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v162 = &v117 - v23;
  v24 = sub_261CFE944();
  v161 = v24;
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v117 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v153 = &v117 - v30;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA8F0, &qword_261D08620);
  v166 = *(v163 - 8);
  v31 = *(v166 + 64);
  v32 = MEMORY[0x28223BE20](v163);
  v131 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v167 = &v117 - v35;
  MEMORY[0x28223BE20](v34);
  v156 = &v117 - v36;
  v37 = sub_261CFDB84();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v130 = &v117 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v44 = &v117 - v43;
  MEMORY[0x28223BE20](v42);
  v148 = &v117 - v45;
  v145 = v44;
  sub_261CFDB64();
  v143 = sub_261BD1ED4(&qword_27FEDBD78, MEMORY[0x277D853F0]);
  v142 = v37;
  MEMORY[0x26671A1D0](v44, v37, v143);
  v46 = *(v38 + 8);
  v146 = v38 + 8;
  v147 = v46;
  v46(v44, v37);
  sub_261CFDB34();
  v47 = v129;
  sub_261CFE964();
  v127 = sub_261CFE994();
  v48 = *(v127 - 8);
  v126 = *(v48 + 56);
  v128 = v48 + 56;
  v49 = v139;
  v126(v139, 1, 1, v127);
  v122 = v29;
  sub_261CFDB34();
  v125 = sub_261BD1ED4(&qword_27FEDA940, MEMORY[0x277D853D0]);
  v50 = MEMORY[0x277D83E40];
  v51 = v155;
  v121 = v6;
  sub_261CFE924();
  v52 = *(v25 + 8);
  v117 = v25 + 8;
  v52(v29, v24);
  v53 = v52;
  sub_261AE6A40(v49, &qword_27FEDA898, &unk_261D08600);
  v54 = *(v158 + 8);
  v158 += 8;
  v123 = v54;
  v55 = v47;
  v54(v47, v6);
  v56 = v140;
  MEMORY[0x26671A290](v51, v50);
  v57 = sub_261B01D28(&qword_27FEDA948, &qword_27FEDA938, &qword_261D03440);
  v58 = v141;
  v119 = v57;
  MEMORY[0x26671A1D0](v56, v141, v57);
  v59 = v159 + 8;
  v60 = v56;
  v61 = *(v159 + 8);
  v120 = v61;
  v61(v60, v58);
  v159 = v59;
  v62 = v157;
  v118 = v13;
  sub_261CFDB14();
  v61(v13, v58);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA900, &qword_261D03420);
  v138 = MEMORY[0x277D85AC0];
  v154 = sub_261B01D28(&qword_27FEDA860, &qword_27FEDA858, &unk_261D08610);
  v64 = v162;
  v152 = v63;
  v65 = v164;
  v66 = v153;
  sub_261CFE914();
  v67 = *(v165 + 8);
  v165 += 8;
  v160 = v67;
  v67(v62, v65);
  v68 = v53;
  v53(v66, v161);
  v69 = v167;
  MEMORY[0x26671A260](v64, v63);
  v137 = sub_261B01D28(&qword_27FEDA908, &qword_27FEDA8F0, &qword_261D08620);
  v70 = v163;
  MEMORY[0x26671A1D0](v69, v163, v137);
  v71 = *(v166 + 8);
  v166 += 8;
  v144 = v71;
  v71(v69, v70);
  v168 = 58;
  v169 = 0xE100000000000000;
  v124 = sub_261B426C0();
  MEMORY[0x26671A1D0](v170, &v168, MEMORY[0x277D837D0], v124);
  sub_261CFDB34();
  v72 = v55;
  sub_261CFE954();
  v73 = v139;
  v126(v139, 1, 1, v127);
  v74 = v122;
  sub_261CFDB34();
  v75 = v155;
  v76 = MEMORY[0x277D83E40];
  v77 = v121;
  sub_261CFE924();
  v78 = v74;
  v79 = v161;
  v68(v78, v161);
  v80 = v68;
  sub_261AE6A40(v73, &qword_27FEDA898, &unk_261D08600);
  v123(v72, v77);
  v81 = v140;
  MEMORY[0x26671A290](v75, v76);
  v82 = v118;
  v83 = v141;
  MEMORY[0x26671A1D0](v81, v141, v119);
  v84 = v120;
  v120(v81, v83);
  v85 = v157;
  sub_261CFDB14();
  v84(v82, v83);
  v86 = v162;
  v87 = v85;
  v89 = v152;
  v88 = v153;
  v90 = v164;
  sub_261CFE914();
  v160(v87, v90);
  v151 = v80;
  v80(v88, v79);
  v91 = v131;
  MEMORY[0x26671A260](v86, v89);
  v92 = v163;
  MEMORY[0x26671A1D0](v91, v163, v137);
  v144(v91, v92);
  v93 = v130;
  sub_261CFDB74();
  v94 = v142;
  MEMORY[0x26671A1D0](v93, v142, v143);
  v147(v93, v94);
  sub_261CFDB14();
  v95 = v153;
  sub_261CFDB34();
  v96 = v155;
  v97 = v164;
  v98 = v95;
  sub_261CFE904();
  sub_261CFE8D4();
  v160(v96, v97);
  v99 = v161;
  v151(v95, v161);
  v101 = v170[0];
  v100 = v170[1];
  sub_261CFDB34();
  v168 = v101;
  v169 = v100;
  v102 = v98;
  sub_261CFE904();

  sub_261B01D28(&qword_27FEDA8B0, &qword_27FEDA888, &qword_261D033E8);
  sub_261CFE8D4();
  v160(v96, v97);
  v103 = v151;
  v151(v98, v99);
  sub_261CFDB34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA910, &qword_261D03428);
  v104 = v133;
  sub_261CFE8D4();
  v103(v98, v99);
  sub_261CFDB34();
  v105 = v145;
  v106 = v142;
  sub_261CFE904();
  sub_261B01D28(&qword_27FEDA920, &qword_27FEDA8E8, &qword_261D03418);
  v107 = v134;
  v108 = v164;
  sub_261CFE8D4();
  v109 = v96;
  v110 = v160;
  v160(v109, v108);
  v151(v102, v161);
  (*(v136 + 8))(v104, v107);
  v111 = *(v132 + 8);
  v112 = v150;
  v111(v149, v150);
  v111(v162, v112);
  v110(v157, v108);
  v113 = v147;
  v147(v105, v106);
  v114 = v163;
  v115 = v144;
  v144(v167, v163);
  v115(v156, v114);
  return v113(v148, v106);
}