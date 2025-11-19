uint64_t sub_261B68EA4()
{
  v1 = v0[79];

  v2 = v0[78];
  v3 = v0[77];

  return MEMORY[0x2822009F8](sub_261B68F0C, v3, v2);
}

uint64_t sub_261B68F0C()
{
  v1 = v0[76];

  sub_261B59E48((v0 + 2));
  v2 = v0[83];
  v3 = v0[71];
  v4 = v0[70];
  v5 = v0[67];
  v7 = v0[63];
  v6 = v0[64];
  v8 = v0[62];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261B68FC8(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B69058(uint64_t *a1))()
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

uint64_t sub_261B690CC(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = a1[3];
  v7 = a1[4];
  return sub_261CFCBC4();
}

uint64_t (*sub_261B69114(uint64_t *a1))()
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

uint64_t sub_261B69188()
{
  if (qword_27FED98F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B69200@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED98F0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADB8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B692AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListBadgeAppIntent.perform()(a1);
}

uint64_t sub_261B69348(uint64_t a1)
{
  v2 = sub_261B31A98();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B693D0()
{
  result = qword_280D22C68;
  if (!qword_280D22C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C68);
  }

  return result;
}

unint64_t sub_261B69428()
{
  result = qword_280D22C78;
  if (!qword_280D22C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C78);
  }

  return result;
}

uint64_t sub_261B69510()
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
  __swift_allocate_value_buffer(v9, qword_27FEDADE8);
  __swift_project_value_buffer(v9, qword_27FEDADE8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListColorAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9900 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListColorAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B69AB8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[3];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListColorAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListColorAppIntent.entity.modify(uint64_t *a1))()
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

double sub_261B69D00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_261CFCBB4();
  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 24) = v7;
  result = *&v8;
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_261B69D50(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v12 = a1[6];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t UpdateListColorAppIntent.property.setter(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  return sub_261CFCBC4();
}

uint64_t (*UpdateListColorAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B69F04()
{
  result = swift_getKeyPath();
  qword_27FEDAE00 = result;
  return result;
}

uint64_t static UpdateListColorAppIntent.binding.getter()
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListColorAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAE00 = a1;
}

uint64_t (*static UpdateListColorAppIntent.binding.modify())()
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B6A0AC@<X0>(void *a1@<X8>)
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAE00;
  return sub_261CFCDA4();
}

uint64_t sub_261B6A12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9908;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAE00 = v1;
}

uint64_t UpdateListColorAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v64 = a1;
  v63 = sub_261CFD184();
  v65 = *(v63 - 8);
  v1 = *(v65 + 64);
  MEMORY[0x28223BE20](v63);
  v62 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v61 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v45 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v56 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v45 = &v45 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v28 = *(v15 + 104);
  v46 = *MEMORY[0x277CC9110];
  v27 = v46;
  v47 = v14;
  v28(v18, v46, v14);
  v49 = v28;
  v48 = v15 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v28(v18, v27, v14);
  v29 = v59;
  sub_261CFD6C4();
  v30 = *(v24 + 56);
  v55 = v24 + 56;
  v57 = v30;
  v30(v29, 0, 1, v23);
  v31 = type metadata accessor for ListEntity();
  (*(*(v31 - 8) + 56))(v58, 1, 1, v31);
  v32 = sub_261CFC834();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v50 = v34;
  v51 = v33 + 56;
  v34(v60, 1, 1, v32);
  v34(v61, 1, 1, v32);
  v52 = *MEMORY[0x277CBA308];
  v35 = *(v65 + 104);
  v65 += 104;
  v53 = v35;
  v35(v62);
  sub_261B5F3AC(&qword_280D227A0);
  *v64 = sub_261CFCC34();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE08, &unk_261D047A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v46;
  v37 = v47;
  v38 = v49;
  v49(v18, v46, v47);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v18, v36, v37);
  v39 = v59;
  sub_261CFD6C4();
  v57(v39, 0, 1, v56);
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v67 = 0u;
  v40 = v50;
  v50(v60, 1, 1, v32);
  v40(v61, 1, 1, v32);
  v53(v62, v52, v63);
  sub_261AFF5A0();
  v41 = sub_261CFCC34();
  v42 = v64;
  v64[1] = v41;
  *(v42 + 16) = 0;
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v43[3] = result;
  return result;
}

uint64_t UpdateListColorAppIntent.perform()(uint64_t a1)
{
  *(v2 + 504) = a1;
  v3 = sub_261CFD754();
  *(v2 + 512) = v3;
  v4 = *(v3 - 8);
  *(v2 + 520) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 528) = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 552) = v7;
  v8 = *(v7 - 8);
  *(v2 + 560) = v8;
  v9 = *(v8 + 64) + 15;
  *(v2 + 568) = swift_task_alloc();
  v10 = type metadata accessor for ListEntity();
  *(v2 + 576) = v10;
  v11 = *(v10 - 8);
  *(v2 + 584) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 592) = swift_task_alloc();
  *(v2 + 600) = swift_task_alloc();
  *(v2 + 608) = *v1;
  *(v2 + 704) = *(v1 + 16);
  *(v2 + 624) = *(v1 + 24);
  *(v2 + 632) = sub_261CFFD24();
  *(v2 + 640) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  *(v2 + 648) = v14;
  *(v2 + 656) = v13;

  return MEMORY[0x2822009F8](sub_261B6AC6C, v14, v13);
}

uint64_t sub_261B6AC6C()
{
  v16 = v0;
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 704);
  v4 = *(v0 + 616);
  v5 = *(v0 + 608);
  v6 = *(v0 + 600);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v6, v0 + 464, v15);
  __swift_destroy_boxed_opaque_existential_0((v0 + 464));
  sub_261B0A1F0(v6);
  v7 = v15[5];
  *(v0 + 80) = v15[4];
  *(v0 + 96) = v7;
  *(v0 + 112) = v15[6];
  v8 = v15[1];
  *(v0 + 16) = v15[0];
  *(v0 + 32) = v8;
  v9 = v15[3];
  *(v0 + 48) = v15[2];
  *(v0 + 64) = v9;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v10 = *(v0 + 48);
  *(v0 + 408) = *(v0 + 352);
  v11 = *(v0 + 376);
  *(v0 + 416) = *(v0 + 360);
  *(v0 + 432) = v11;
  *(v0 + 448) = *(v0 + 392);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B18AFC(0, v5, v4, v3, v2);
  *(v0 + 664) = sub_261CFFD14();
  v13 = sub_261CFFCF4();
  *(v0 + 672) = v13;
  *(v0 + 680) = v12;

  return MEMORY[0x2822009F8](sub_261B6ADE8, v13, v12);
}

uint64_t sub_261B6ADE8()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 688) = v1;
  *v1 = v0;
  v1[1] = sub_261B6AEB0;
  v2 = *(v0 + 568);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B6AEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 688);
  v4 = *v1;
  *(*v1 + 696) = v0;

  v5 = *(v2 + 680);
  v6 = *(v2 + 672);
  if (v0)
  {
    v7 = sub_261B6B4B8;
  }

  else
  {
    v7 = sub_261B6AFEC;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B6AFEC()
{
  v1 = v0[83];

  v2 = v0[82];
  v3 = v0[81];

  return MEMORY[0x2822009F8](sub_261B6B054, v3, v2);
}

uint64_t sub_261B6B054()
{
  v43 = v0;
  v1 = v0[80];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[69];
  v6 = v0[68];
  v7 = v0[67];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v8 = v0[66];
    v9 = v0[65];
    v10 = v0[64];
    sub_261B59E9C(v0[67]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v42[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v42);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v42);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v29 = v0[71];
    v30 = v0[70];
    v31 = v0[69];
    v32 = v0[68];
    sub_261B01D70();
    swift_allocError();
    *v33 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v32);
    (*(v30 + 8))(v29, v31);
    v34 = v0[75];
    v35 = v0[74];
    v36 = v0[71];
    v37 = v0[68];
    v38 = v0[67];
    v39 = v0[66];

    v28 = v0[1];
  }

  else
  {
    v20 = v0[75];
    v21 = v0[74];
    v22 = v0[72];
    v23 = v0[71];
    v24 = v0[70];
    v25 = v0[69];
    v26 = v0[68];
    v41 = v0[66];
    v27 = v0[63];
    sub_261B01E2C(v0[67], v21);
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);
    sub_261B5F3AC(&qword_280D22790);
    sub_261CFC994();
    sub_261B59E48((v0 + 2));
    sub_261B0A1F0(v21);

    v28 = v0[1];
  }

  return v28();
}

uint64_t sub_261B6B4B8()
{
  v1 = v0[83];

  v2 = v0[82];
  v3 = v0[81];

  return MEMORY[0x2822009F8](sub_261B6B520, v3, v2);
}

uint64_t sub_261B6B520()
{
  v1 = v0[80];

  sub_261B59E48((v0 + 2));
  v2 = v0[87];
  v3 = v0[75];
  v4 = v0[74];
  v5 = v0[71];
  v6 = v0[68];
  v7 = v0[67];
  v8 = v0[66];

  v9 = v0[1];

  return v9();
}

uint64_t sub_261B6B5E0(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B6B670(uint64_t *a1))()
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

uint64_t sub_261B6B6E4(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *(a1 + 3);
  v7 = *(a1 + 5);
  return sub_261CFCBC4();
}

uint64_t (*sub_261B6B730(uint64_t *a1))()
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

uint64_t sub_261B6B7A4()
{
  if (qword_27FED9908 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B6B81C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9900 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDADE8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B6B8C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListColorAppIntent.perform()(a1);
}

uint64_t sub_261B6B964(uint64_t a1)
{
  v2 = sub_261B31A44();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B6B9EC()
{
  result = qword_280D22C50;
  if (!qword_280D22C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C50);
  }

  return result;
}

unint64_t sub_261B6BA44()
{
  result = qword_280D22C60;
  if (!qword_280D22C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C60);
  }

  return result;
}

void sub_261B6BB2C(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D19BC0, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BCC0(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000012, 0x8000000261D04AE0, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BE54(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000014, 0x8000000261D19B80, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6BFE8(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000010, 0x8000000261D19B60, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C17C(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000015, 0x8000000261D19B40, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C310(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000013, 0x8000000261D19B20, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C4A4(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0x69746E457473694CLL, 0xEF79726575517974, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

void sub_261B6C640(uint64_t a1, unint64_t a2)
{
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v4 = sub_261CFF7A4();
  __swift_project_value_buffer(v4, qword_27FEDB1E0);
  sub_261CFD104();
  oslog = sub_261CFF784();
  v5 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_261B879C8(0xD000000000000010, 0x8000000261D19B00, &v9);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_261B879C8(a1, a2, &v9);
    _os_log_impl(&dword_261AE2000, oslog, v5, "Logging Analytics for query: %s.%s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v7, -1, -1);
    MEMORY[0x26671D560](v6, -1, -1);
  }
}

uint64_t SectionEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t SectionEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6C884, 0, 0);
}

uint64_t sub_261B6C884()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0E3F8;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5E608)("SectionEntityQuery.entitiesForIdentifiers", 41, 2, v4, v5);
}

uint64_t SectionEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6C978, 0, 0);
}

uint64_t sub_261B6C978()
{
  v1 = v0[3];
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_261B6EAB8;
  v3 = v0[2];
  v4 = v0[3];

  return sub_261C57094(v3, "SectionEntityQuery.suggestedEntities", 36, 2, v4);
}

uint64_t sub_261B6CA3C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261B6CAC8(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6CAEC, 0, 0);
}

uint64_t sub_261B6CAEC()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0D104;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5E608)("SectionEntityQuery.entitiesForIdentifiers", 41, 2, v4, v5);
}

uint64_t sub_261B6CBBC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B6CBE0, 0, 0);
}

uint64_t sub_261B6CBE0()
{
  v1 = v0[3];
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_261B6CCA4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_261C57094(v3, "SectionEntityQuery.suggestedEntities", 36, 2, v4);
}

uint64_t sub_261B6CCA4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261B6CD98(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261B6E1C4();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t SectionEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261B6CE74, 0, 0);
}

uint64_t sub_261B6CE74()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_261B6EABC;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return (sub_261C57978)(v6, "SectionEntityQuery.entitiesMatchingString", 41, 2, v4, v7, v5);
}

uint64_t sub_261B6CF48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_261B6CF6C, 0, 0);
}

uint64_t sub_261B6CF6C()
{
  v1 = v0[9];
  sub_261B6BCC0(0xD000000000000013, 0x8000000261D19BA0);
  sub_261CFC664();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[7] = v1;
  v4 = *(v3 + 16);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_261B6D0DC;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];

  return (v11)(v9, v0 + 7, v7, v8, v2, v3);
}

uint64_t sub_261B6D0DC()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_261B6D254;
  }

  else
  {
    v3 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261B6D1F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B6D254()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[13];

  return v1();
}

uint64_t sub_261B6D2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261B6D2E0, 0, 0);
}

uint64_t sub_261B6D2E0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_261B6D3B4;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return (sub_261C57978)(v6, "SectionEntityQuery.entitiesMatchingString", 41, 2, v4, v7, v5);
}

uint64_t sub_261B6D3B4()
{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_261B6D4A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a2;
  v35 = a3;
  v36 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE58, &qword_261D04B78);
  v6 = *(v5 - 8);
  v37 = v5;
  v38 = v6;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v31 = &v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE60, &qword_261D04B80);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE68, &qword_261D04B88);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v31 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE70, &qword_261D04B90);
  v20 = *(v19 - 8);
  v32 = v19;
  v33 = v20;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v31 - v22;
  v24 = *a1;
  sub_261B01D28(&qword_27FEDAE78, &qword_27FEDAE60, &qword_261D04B80);
  sub_261CFD634();
  swift_getKeyPath();
  sub_261CFD604();

  (*(v10 + 8))(v13, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE80, &unk_261D04BC0);
  type metadata accessor for ListEntity();
  sub_261B01D28(&qword_27FEDAE88, &qword_27FEDAE68, &qword_261D04B88);
  sub_261B01D28(&qword_27FEDAE90, &qword_27FEDAE80, &unk_261D04BC0);
  sub_261CFD614();
  (*(v15 + 8))(v18, v14);
  v39 = v34;
  v40 = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE98, &qword_261D0AAA0);
  v25 = v31;
  sub_261CFD624();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAEA0, &qword_261D04BD0);
  v27 = v36;
  v36[3] = v26;
  v27[4] = sub_261B6E618();
  __swift_allocate_boxed_opaque_existential_1(v27);
  sub_261B01D28(&qword_27FEDAF08, &qword_27FEDAE70, &qword_261D04B90);
  sub_261B01D28(&qword_27FEDAF10, &qword_27FEDAE58, &qword_261D04B78);
  sub_261B6EA4C(&qword_27FEDAF18);
  v28 = v32;
  v29 = v37;
  sub_261CFD5F4();
  (*(v38 + 8))(v25, v29);
  return (*(v33 + 8))(v23, v28);
}

uint64_t sub_261B6D9B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAEE8, &qword_261D04BE0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAED8, &qword_261D04BD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  sub_261B01D28(&qword_27FEDAF20, &qword_27FEDAEE8, &qword_261D04BE0);
  sub_261CFD634();
  swift_getKeyPath();
  sub_261CFD604();

  (*(v1 + 8))(v4, v0);
  swift_getKeyPath();
  sub_261B01D28(&qword_27FEDAF28, &qword_27FEDAED8, &qword_261D04BD8);
  sub_261CFD604();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_261B6DC04(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 112) = a4;
  *(v4 + 72) = a2;
  *(v4 + 80) = a3;
  *(v4 + 64) = a1;
  return MEMORY[0x2822009F8](sub_261B6DC2C, 0, 0);
}

void sub_261B6DC2C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_261B6BCC0(0xD000000000000028, 0x8000000261D19AD0);
  sub_261CFC664();
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE50, &qword_261D04B68);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD940, &qword_261D04B70);
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v0 + 88) = v8;
  *(v8 + 16) = xmmword_261D03450;
  (*(v5 + 16))(v8 + v7, v2, v4);
  v9 = *(v3 + 24);
  v14 = v9 + *v9;
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v0 + 96) = v11;
  *v11 = v0;
  v11[1] = sub_261B6DE84;
  v12 = *(v0 + 112);
  v13 = *(v0 + 64);

  __asm { BRAA            X8, X16 }
}

uint64_t sub_261B6DE84()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_261B6DFA0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261B6DFA0()
{
  v1 = v0[11];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[13];

  return v2();
}

unint64_t sub_261B6E010()
{
  result = qword_27FEDAE20;
  if (!qword_27FEDAE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE20);
  }

  return result;
}

unint64_t sub_261B6E068()
{
  result = qword_27FEDAE28;
  if (!qword_27FEDAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE28);
  }

  return result;
}

unint64_t sub_261B6E0F4()
{
  result = qword_27FEDAE30;
  if (!qword_27FEDAE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE30);
  }

  return result;
}

unint64_t sub_261B6E1C4()
{
  result = qword_27FEDAE48;
  if (!qword_27FEDAE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAE48);
  }

  return result;
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B01F5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_261AF43A8;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of SectionEntitySectionQueryPerforming.entities(query:matching:mode:sortedBy:limit:excludeSectionlessSections:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, unsigned int a8, uint64_t a9, uint64_t a10)
{
  v18 = *(a10 + 24);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v10 + 16) = v20;
  *v20 = v10;
  v20[1] = sub_261AF4BDC;

  return (v22)(a1, a2, a3, a4 & 1, a5, a6, a7 & 1, a8, a9, a10);
}

unint64_t sub_261B6E618()
{
  result = qword_27FEDAEA8;
  if (!qword_27FEDAEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAEA0, &qword_261D04BD0);
    sub_261B6E6A4();
    sub_261B6E914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEA8);
  }

  return result;
}

unint64_t sub_261B6E6A4()
{
  result = qword_27FEDAEB0;
  if (!qword_27FEDAEB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE70, &qword_261D04B90);
    sub_261B6E730();
    sub_261B6E7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEB0);
  }

  return result;
}

unint64_t sub_261B6E730()
{
  result = qword_27FEDAEB8;
  if (!qword_27FEDAEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE68, &qword_261D04B88);
    sub_261B01D28(&qword_27FEDAEC0, &qword_27FEDAE60, &qword_261D04B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEB8);
  }

  return result;
}

unint64_t sub_261B6E7E0()
{
  result = qword_27FEDAEC8;
  if (!qword_27FEDAEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE80, &unk_261D04BC0);
    sub_261B6E864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEC8);
  }

  return result;
}

unint64_t sub_261B6E864()
{
  result = qword_27FEDAED0;
  if (!qword_27FEDAED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAED8, &qword_261D04BD8);
    sub_261B01D28(&qword_27FEDAEE0, &qword_27FEDAEE8, &qword_261D04BE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAED0);
  }

  return result;
}

unint64_t sub_261B6E914()
{
  result = qword_27FEDAEF0;
  if (!qword_27FEDAEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE58, &qword_261D04B78);
    sub_261B6EA4C(&qword_27FEDAEF8);
    sub_261B6EA4C(&qword_27FEDAF00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAEF0);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_261B6EA4C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAE98, &qword_261D0AAA0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261B6EC50()
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
  __swift_allocate_value_buffer(v9, qword_27FEDAF30);
  __swift_project_value_buffer(v9, qword_27FEDAF30);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListNameAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9910 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListNameAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B6F1F8(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListNameAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListNameAppIntent.entity.modify(uint64_t *a1))()
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

uint64_t UpdateListNameAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B6F450@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261B6F48C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListNameAppIntent.property.modify(uint64_t *a1))()
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

uint64_t sub_261B6F5D0()
{
  result = swift_getKeyPath();
  qword_27FEDAF48 = result;
  return result;
}

uint64_t static UpdateListNameAppIntent.binding.getter()
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListNameAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAF48 = a1;
}

uint64_t (*static UpdateListNameAppIntent.binding.modify())()
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261B6F778@<X0>(void *a1@<X8>)
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDAF48;
  return sub_261CFCDA4();
}

uint64_t sub_261B6F7F8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9918;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDAF48 = v1;
}

uint64_t UpdateListNameAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v68 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v63 = v47 - v3;
  v67 = sub_261CFD184();
  v69 = *(v67 - 8);
  v4 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v66 = v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v62 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v65 = v47 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v61 = v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v64 = v47 - v16;
  v17 = sub_261CFD674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFFA44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFD6A4();
  v59 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v47[1] = v47 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *(v18 + 104);
  v48 = *MEMORY[0x277CC9110];
  v30 = v48;
  v49 = v17;
  v31(v21, v48, v17);
  v51 = v31;
  v50 = v18 + 104;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v21, v30, v17);
  v32 = v64;
  sub_261CFD6C4();
  v33 = *(v27 + 56);
  v58 = v27 + 56;
  v60 = v33;
  v33(v32, 0, 1, v26);
  v34 = type metadata accessor for ListEntity();
  (*(*(v34 - 8) + 56))(v61, 1, 1, v34);
  v35 = sub_261CFC834();
  v54 = v35;
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v55 = v37;
  v56 = v36 + 56;
  v37(v65, 1, 1, v35);
  v37(v62, 1, 1, v35);
  v52 = *MEMORY[0x277CBA308];
  v38 = *(v69 + 104);
  v69 += 104;
  v53 = v38;
  v38(v66);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  *v68 = sub_261CFCC34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA288, &unk_261D02520);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v48;
  v40 = v49;
  v41 = v51;
  v51(v21, v48, v49);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v41(v21, v39, v40);
  v42 = v64;
  sub_261CFD6C4();
  v60(v42, 0, 1, v59);
  v43 = sub_261CFF994();
  v71 = 0;
  v72 = 0;
  (*(*(v43 - 8) + 56))(v63, 1, 1, v43);
  v55(v65, 1, 1, v54);
  v53(v66, v52, v67);
  v44 = sub_261CFCD24();
  v45 = v68;
  v68[1] = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v70 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v45[2] = result;
  return result;
}

uint64_t UpdateListNameAppIntent.perform()(uint64_t a1)
{
  *(v2 + 456) = a1;
  v3 = sub_261CFD754();
  *(v2 + 464) = v3;
  v4 = *(v3 - 8);
  *(v2 + 472) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 488) = v6;
  v7 = *(v6 - 8);
  *(v2 + 496) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 528) = v10;
  v11 = *(v10 - 8);
  *(v2 + 536) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 544) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 552) = v13;
  v14 = *(v13 - 8);
  *(v2 + 560) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = swift_task_alloc();
  *(v2 + 584) = *v1;
  *(v2 + 600) = *(v1 + 16);
  *(v2 + 608) = sub_261CFFD24();
  *(v2 + 616) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 624) = v17;
  *(v2 + 632) = v16;

  return MEMORY[0x2822009F8](sub_261B703F4, v17, v16);
}

uint64_t sub_261B703F4()
{
  v17 = v0;
  v1 = *(v0 + 608);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 576);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v16);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v16[5];
  *(v0 + 80) = v16[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v16[6];
  v7 = v16[1];
  *(v0 + 16) = v16[0];
  *(v0 + 32) = v7;
  v8 = v16[3];
  *(v0 + 48) = v16[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v9 = *(v0 + 400);
  v10 = *(v0 + 40);
  *(v0 + 408) = *(v0 + 392);
  *(v0 + 416) = v9;
  sub_261CFCBC4();
  sub_261CFCBB4();
  v11 = *(v0 + 432);
  v12 = *(v0 + 16);
  *(v0 + 440) = *(v0 + 424);
  *(v0 + 448) = v11;
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B198D4(0, v4, v3, v2);
  *(v0 + 640) = sub_261CFFD14();
  v14 = sub_261CFFCF4();
  *(v0 + 648) = v14;
  *(v0 + 656) = v13;

  return MEMORY[0x2822009F8](sub_261B7056C, v14, v13);
}

uint64_t sub_261B7056C()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 664) = v1;
  *v1 = v0;
  v1[1] = sub_261B70634;
  v2 = *(v0 + 544);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B70634()
{
  v2 = *v1;
  v3 = *(*v1 + 664);
  v4 = *v1;
  *(*v1 + 672) = v0;

  v5 = *(v2 + 656);
  v6 = *(v2 + 648);
  if (v0)
  {
    v7 = sub_261B70CEC;
  }

  else
  {
    v7 = sub_261B70770;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B70770()
{
  v1 = v0[80];

  v2 = v0[79];
  v3 = v0[78];

  return MEMORY[0x2822009F8](sub_261B707D8, v3, v2);
}

uint64_t sub_261B707D8()
{
  v48 = v0;
  v1 = v0[77];
  v2 = v0[70];
  v3 = v0[69];
  v4 = v0[68];
  v5 = v0[66];
  v6 = v0[65];
  v7 = v0[64];

  sub_261B01D28(&qword_27FEDABB0, &qword_27FEDABA8, &qword_261D03840);
  sub_261CFC964();
  sub_261B425D4(v6, v7);
  if ((*(v2 + 48))(v7, 1, v3) == 1)
  {
    v9 = v0[59];
    v8 = v0[60];
    v10 = v0[58];
    sub_261B59E9C(v0[64]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    (*(v9 + 8))(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v14 = sub_261CFF7A4();
    __swift_project_value_buffer(v14, qword_27FED9EF8);
    sub_261CFD104();
    v15 = sub_261CFF784();
    v16 = sub_261CFFE64();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v47[0] = v18;
      *v17 = 136315650;
      v19 = sub_261B879C8(v11, v13, v47);

      *(v17 + 4) = v19;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 231;
      *(v17 + 22) = 2080;
      *(v17 + 24) = sub_261B879C8(0xD000000000000049, 0x8000000261D188E0, v47);
      _os_log_impl(&dword_261AE2000, v15, v16, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v18, -1, -1);
      MEMORY[0x26671D560](v17, -1, -1);
    }

    else
    {
    }

    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[66];
    v33 = v0[65];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261B59E48((v0 + 2));
    sub_261B59E9C(v33);
    (*(v31 + 8))(v30, v32);
    v35 = v0[72];
    v36 = v0[71];
    v37 = v0[68];
    v38 = v0[65];
    v40 = v0[63];
    v39 = v0[64];
    v41 = v0[60];

    v29 = v0[1];
  }

  else
  {
    v20 = v0[73];
    v21 = v0[72];
    v22 = v0[71];
    v23 = v0[68];
    v24 = v0[67];
    v25 = v0[66];
    v26 = v0[65];
    v27 = v0[63];
    v45 = v0[69];
    v46 = v0[62];
    v28 = v0[60];
    v43 = v0[57];
    v44 = v0[61];
    sub_261B01E2C(v0[64], v22);
    sub_261B59E9C(v26);
    (*(v24 + 8))(v23, v25);
    sub_261CFCBB4();
    sub_261BBF268(v28);
    sub_261B0A1F0(v21);
    sub_261CFC9E4();
    sub_261B5A458(&qword_280D22790, type metadata accessor for ListEntity);
    sub_261B5A458(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    sub_261B59E48((v0 + 2));
    (*(v46 + 8))(v27, v44);
    sub_261B0A1F0(v22);

    v29 = v0[1];
  }

  return v29();
}

uint64_t sub_261B70CEC()
{
  v1 = v0[80];

  v2 = v0[79];
  v3 = v0[78];

  return MEMORY[0x2822009F8](sub_261B70D54, v3, v2);
}

uint64_t sub_261B70D54()
{
  v1 = v0[77];

  sub_261B59E48((v0 + 2));
  v2 = v0[84];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[68];
  v6 = v0[65];
  v8 = v0[63];
  v7 = v0[64];
  v9 = v0[60];

  v10 = v0[1];

  return v10();
}

uint64_t static UpdateListNameAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF50, &qword_261D04D38);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF58, &qword_261D04D40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B319F0();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF60, &qword_261D04D70);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAF68, &unk_261D04DA0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261B71010(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261B710A0(uint64_t *a1))()
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

uint64_t sub_261B71114@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 8);
  result = sub_261CFCBB4();
  *a1 = v5;
  a1[1] = v6;
  return result;
}

uint64_t sub_261B71150(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = a1[1];
  return sub_261CFCBC4();
}

uint64_t (*sub_261B71188(uint64_t *a1))()
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

uint64_t sub_261B711FC()
{
  if (qword_27FED9918 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261B71274@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9910 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDAF30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B71324(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListNameAppIntent.perform()(a1);
}

uint64_t sub_261B713C0(uint64_t a1)
{
  v2 = sub_261B319F0();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261B71448()
{
  result = qword_280D22C98;
  if (!qword_280D22C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22C98);
  }

  return result;
}

unint64_t sub_261B714A0()
{
  result = qword_280D22CA8;
  if (!qword_280D22CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22CA8);
  }

  return result;
}

uint64_t sub_261B71554()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAF88);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAF88);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B7161C()
{
  v2 = v1;
  v3 = sub_261CFE674();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27FED9920 != -1)
  {
    swift_once();
  }

  v8 = sub_261CFF7A4();
  __swift_project_value_buffer(v8, qword_27FEDAF88);
  v9 = v0;
  v10 = sub_261CFF784();
  v11 = sub_261CFFE84();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v38 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v35 = v7;
    v36 = v1;
    v15 = v4;
    v16 = v14;
    v37[0] = v14;
    *v13 = 136315138;
    v17 = RemindersInCalendarUtilities.ReminderSpecifier.description.getter();
    v19 = sub_261B879C8(v17, v18, v37);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_261AE2000, v10, v11, "RemindersInCalendar: fetch reminder to generate text description {specifiers: %s}", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    v20 = v16;
    v4 = v15;
    v7 = v35;
    v2 = v36;
    MEMORY[0x26671D560](v20, -1, -1);
    v21 = v13;
    v3 = v38;
    MEMORY[0x26671D560](v21, -1, -1);
  }

  sub_261CFE454();
  v22 = OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier;
  v23 = *&v9[OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier];
  if (qword_280D21E90 != -1)
  {
    v32 = v2;
    v33 = *&v9[OBJC_IVAR____TtCO19RemindersAppIntents28RemindersInCalendarUtilities16ReminderDragItem_reminderSpecifier];
    swift_once();
    v2 = v32;
  }

  v24 = sub_261CFE434();
  if (!v2)
  {
    v25 = v24;
    v26 = sub_261B026B0(v24, 1);
    v27 = sub_261CFE6B4();
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    swift_allocObject();
    sub_261CFE6A4();
    (*(v4 + 104))(v7, *MEMORY[0x277D45E50], v3);
    sub_261CFE684();
    v37[3] = sub_261B71AAC();
    v37[4] = MEMORY[0x277D45E98];
    v37[0] = v25;
    v30 = v25;
    v22 = sub_261CFE694();

    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  return v22;
}

id sub_261B71980()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s16ReminderDragItemCMa()
{
  result = qword_27FEDAFA8;
  if (!qword_27FEDAFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B71A1C()
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier();
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

unint64_t sub_261B71AAC()
{
  result = qword_27FEDDF20;
  if (!qword_27FEDDF20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FEDDF20);
  }

  return result;
}

uint64_t sub_261B71AF8(unint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v20 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = sub_261D00424() | 0x8000000000000000;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v4 = ~v7;
    v3 = a1 + 64;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v5 = v9 & *(a1 + 64);
    v6 = a1;
  }

  result = sub_261CFD104();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  if ((v6 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v11;
    v14 = v5;
    v15 = v11;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v5 = (v14 - 1) & v14;
    if (!*(*(v6 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14))))))
    {
LABEL_20:
      sub_261AE6F74();
      return v12;
    }

    while (1)
    {
      MEMORY[0x26671C310]();
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_261CFFC84();
      }

      result = sub_261CFFCB4();
      v12 = v20;
      v11 = v15;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_261D004B4())
      {
        swift_unknownObjectRelease();
        sub_261B05020(0, a2, a3);
        swift_dynamicCast();
        v15 = v11;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_20;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= ((v4 + 64) >> 6))
    {
      goto LABEL_20;
    }

    v14 = *(v3 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261B71D20()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAFB8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAFB8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B71EBC()
{
  v93 = v0;
  v92 = *MEMORY[0x277D85DE8];
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  *&v89 = v3;
  *(&v89 + 1) = v2;
  v88[0] = 0;
  v4 = sub_261B729F4(v88);
  *&v89 = v3;
  *(&v89 + 1) = v2;
  v88[0] = 1;
  v5 = sub_261B729F4(v88);
  if (v4 >> 62)
  {
    v6 = sub_261D00274();
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v5 >> 62;
  v8 = 0x27FED9000uLL;
  if (!v6)
  {
    if (!v7)
    {
      if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_6;
      }

LABEL_25:

      if (qword_27FED9928 == -1)
      {
LABEL_26:
        v32 = sub_261CFF7A4();
        __swift_project_value_buffer(v32, qword_27FEDAFB8);
        v33 = sub_261CFF784();
        v34 = sub_261CFFE64();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 0;
          _os_log_impl(&dword_261AE2000, v33, v34, "[DeleteSectionsAppIntentPerforming] Delete sections failed because the list or section IDs array has no valid inputs.", v35, 2u);
          MEMORY[0x26671D560](v35, -1, -1);
        }

        sub_261B01D70();
        swift_allocError();
        *v36 = 24;
        swift_willThrow();
        goto LABEL_56;
      }

LABEL_66:
      swift_once();
      goto LABEL_26;
    }

    if (!sub_261D00274())
    {
      goto LABEL_25;
    }
  }

LABEL_6:
  v9 = *(v0[9] + 16);
  v87 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v87 setSaveIsNoopIfNoChangedKeys_];
  if (!v6)
  {
    goto LABEL_31;
  }

  if (qword_27FED9928 != -1)
  {
    swift_once();
  }

  v10 = sub_261CFF7A4();
  __swift_project_value_buffer(v10, qword_27FEDAFB8);
  sub_261CFD104();
  v11 = sub_261CFF784();
  v12 = sub_261CFFE84();

  v85 = v5 >> 62;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v89 = v14;
    *v13 = 136446210;
    v15 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v16 = MEMORY[0x26671C340](v4, v15);
    v18 = sub_261B879C8(v16, v17, &v89);

    *(v13 + 4) = v18;
    v8 = 0x27FED9000uLL;
    _os_log_impl(&dword_261AE2000, v11, v12, "[DeleteRemindersAppIntent] Delete list sections with ids: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x26671D560](v14, -1, -1);
    MEMORY[0x26671D560](v13, -1, -1);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v19 = sub_261CFFC54();

  v0[5] = 0;
  v20 = [v9 fetchListSectionsWithObjectIDs:v19 error:v0 + 5];

  v21 = v0[5];
  if (!v20)
  {
    v31 = v21;

    sub_261CFD654();

LABEL_55:
    swift_willThrow();

    goto LABEL_56;
  }

  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  sub_261B3B918();
  v22 = sub_261CFF8F4();
  v23 = v21;

  v24 = sub_261B71AF8(v22, &qword_27FEDA5E0, 0x277D44698);

  if (v24 >> 62)
  {
    v25 = sub_261D00274();
    if (v25)
    {
      goto LABEL_14;
    }

LABEL_30:
    v7 = v5 >> 62;
    goto LABEL_31;
  }

  v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v25)
  {
    goto LABEL_30;
  }

LABEL_14:
  v84 = v5;
  sub_261CFDD24();
  if (v25 < 1)
  {
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v26 = 0;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v27 = MEMORY[0x26671CA10](v26, v24);
    }

    else
    {
      v27 = *(v24 + 8 * v26 + 32);
    }

    v28 = v27;
    ++v26;
    v0[6] = [v27 list];
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    v29 = v87;
    sub_261CFDF24();
    v30 = v0[5];
    sub_261CFDCD4();
  }

  while (v25 != v26);
  v8 = 0x27FED9000;
  v5 = v84;
  v7 = v85;
LABEL_31:

  if (v7)
  {
    if (!sub_261D00274())
    {
      goto LABEL_47;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_47;
  }

  if (*(v8 + 2344) != -1)
  {
    swift_once();
  }

  v37 = sub_261CFF7A4();
  __swift_project_value_buffer(v37, qword_27FEDAFB8);
  sub_261CFD104();
  v38 = sub_261CFF784();
  v39 = sub_261CFFE84();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    *&v89 = v86;
    *v40 = 136446210;
    v41 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v42 = MEMORY[0x26671C340](v5, v41);
    v44 = v8;
    v45 = sub_261B879C8(v42, v43, &v89);

    *(v40 + 4) = v45;
    v8 = v44;
    _os_log_impl(&dword_261AE2000, v38, v39, "[DeleteRemindersAppIntent] Delete smart list sections with ids: %{public}s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v86);
    MEMORY[0x26671D560](v86, -1, -1);
    MEMORY[0x26671D560](v40, -1, -1);
  }

  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v46 = sub_261CFFC54();

  v0[5] = 0;
  v47 = [v9 fetchSmartListSectionsWithObjectIDs:v46 error:v0 + 5];

  v48 = v0[5];
  if (!v47)
  {
    v81 = v48;
    sub_261CFD654();

    goto LABEL_55;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  sub_261B3B918();
  v49 = sub_261CFF8F4();
  v50 = v48;

  v51 = sub_261B71AF8(v49, &qword_27FEDA5E8, 0x277D44818);

  if (v51 >> 62)
  {
    v52 = sub_261D00274();
    if (v52)
    {
LABEL_40:
      sub_261CFE184();
      if (v52 >= 1)
      {
        v53 = 0;
        v54 = v51;
        v55 = v51 & 0xC000000000000001;
        do
        {
          if (v55)
          {
            v56 = MEMORY[0x26671CA10](v53, v54);
          }

          else
          {
            v56 = *(v54 + 8 * v53 + 32);
          }

          v57 = v56;
          ++v53;
          v0[6] = [v56 smartList];
          v91 = 0;
          v89 = 0u;
          v90 = 0u;
          v58 = v87;
          sub_261CFDF24();
          v59 = v0[5];
          sub_261CFE174();
        }

        while (v52 != v53);
        v8 = 0x27FED9000uLL;
        goto LABEL_47;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v52 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v52)
    {
      goto LABEL_40;
    }
  }

LABEL_47:

  v0[5] = 0;
  v60 = [v87 saveSynchronouslyWithError_];
  v61 = v0[5];
  if (v60)
  {
    v62 = v0[8];
    v62[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAFD0, &qword_261D072B0);
    v62[4] = sub_261B730AC();
    __swift_allocate_boxed_opaque_existential_1(v62);
    v63 = v61;
    sub_261CFC9A4();

    v64 = v0[1];
    v65 = *MEMORY[0x277D85DE8];
    goto LABEL_57;
  }

  v66 = v61;
  v67 = sub_261CFD654();

  swift_willThrow();
  if (*(v8 + 2344) != -1)
  {
    swift_once();
  }

  v68 = sub_261CFF7A4();
  __swift_project_value_buffer(v68, qword_27FEDAFB8);
  v69 = v67;
  v70 = sub_261CFF784();
  v71 = sub_261CFFE64();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *&v89 = v73;
    *v72 = 136315138;
    swift_getErrorValue();
    v75 = v0[2];
    v74 = v0[3];
    v76 = v0[4];
    v77 = sub_261D00674();
    v79 = sub_261B879C8(v77, v78, &v89);

    *(v72 + 4) = v79;
    _os_log_impl(&dword_261AE2000, v70, v71, "[DeleteSectionsAppIntentPerforming] Delete sections failed with save error: %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v73);
    MEMORY[0x26671D560](v73, -1, -1);
    MEMORY[0x26671D560](v72, -1, -1);
  }

  sub_261B01D70();
  swift_allocError();
  *v80 = 19;
  swift_willThrow();

LABEL_56:
  v64 = v0[1];
  v82 = *MEMORY[0x277D85DE8];
LABEL_57:

  return v64();
}

uint64_t sub_261B729F4(unsigned __int8 *a1)
{
  v50 = type metadata accessor for AppEntityID();
  v3 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v49 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for SectionEntityID();
  v5 = *(*(v55 - 8) + 64);
  MEMORY[0x28223BE20](v55);
  v53 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v48 - v9;
  v52 = type metadata accessor for ListEntity();
  v11 = *(v52 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v52);
  v60 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SectionEntity();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v20 = *v1;
  sub_261CFCBB4();
  v21 = v61;
  v61 = MEMORY[0x277D84F90];
  v22 = *(v21 + 16);
  if (v22)
  {
    v54 = v14;
    v59 = *(v14 + 36);
    v23 = *(v15 + 80);
    v48 = v21;
    v24 = v21 + ((v23 + 32) & ~v23);
    v25 = *(v15 + 72);
    v26 = (v11 + 48);
    if (v19)
    {
      v27 = 0x6D536D6F74737563;
    }

    else
    {
      v27 = 1953720684;
    }

    v28 = 0xE400000000000000;
    if (v19)
    {
      v28 = 0xEF7473694C747261;
    }

    v56 = v28;
    v57 = v27;
    v51 = MEMORY[0x277D84F90];
    v30 = v52;
    v29 = v53;
    v58 = v25;
    while (1)
    {
      sub_261B73110(v24, v18, type metadata accessor for SectionEntity);
      v31 = *&v18[v59];
      sub_261CFCA04();
      if ((*v26)(v10, 1, v30) != 1)
      {
        break;
      }

      sub_261B731E0(v18, type metadata accessor for SectionEntity);
      sub_261B59E9C(v10);
LABEL_9:
      v24 += v25;
      if (!--v22)
      {

        return v51;
      }
    }

    v32 = v60;
    sub_261B73178(v10, v60, type metadata accessor for ListEntity);
    if (*(v32 + *(v30 + 84)))
    {
      v33 = 0x6D536D6F74737563;
    }

    else
    {
      v33 = 1953720684;
    }

    if (*(v32 + *(v30 + 84)))
    {
      v34 = 0xEF7473694C747261;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    if (v33 == v57 && v34 == v56)
    {
    }

    else
    {
      v36 = sub_261D00614();

      if ((v36 & 1) == 0)
      {
        sub_261B731E0(v60, type metadata accessor for ListEntity);
        v37 = type metadata accessor for SectionEntity;
        v38 = v18;
        goto LABEL_26;
      }
    }

    sub_261B73110(&v18[*(v54 + 24)], v29, type metadata accessor for SectionEntityID);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v39 = v49;
      sub_261B73178(v29, v49, type metadata accessor for AppEntityID);
      v40 = *(v50 + 20);
      v41 = *v39;
      v42 = v39[1];
      v43 = objc_allocWithZone(MEMORY[0x277D44700]);
      v44 = sub_261CFD814();
      v45 = sub_261CFFA54();
      [v43 initWithUUID:v44 entityName:{v45, v48}];

      sub_261B731E0(v60, type metadata accessor for ListEntity);
      sub_261B731E0(v39, type metadata accessor for AppEntityID);
      v46 = sub_261B731E0(v18, type metadata accessor for SectionEntity);
      MEMORY[0x26671C310](v46);
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_261CFFC84();
      }

      sub_261CFFCB4();
      v51 = v61;
      v30 = v52;
      v29 = v53;
      goto LABEL_30;
    }

    sub_261B731E0(v60, type metadata accessor for ListEntity);
    sub_261B731E0(v18, type metadata accessor for SectionEntity);
    v37 = type metadata accessor for SectionEntityID;
    v38 = v29;
LABEL_26:
    sub_261B731E0(v38, v37);
LABEL_30:
    v25 = v58;
    goto LABEL_9;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_261B73000(uint64_t a1, _OWORD *a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

unint64_t sub_261B730AC()
{
  result = qword_27FEDAFD8;
  if (!qword_27FEDAFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAFD0, &qword_261D072B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAFD8);
  }

  return result;
}

uint64_t sub_261B73110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B73178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B731E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B73240@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v214 = a2;
  v199 = sub_261CFEC94();
  v3 = *(*(v199 - 8) + 64);
  MEMORY[0x28223BE20](v199);
  v200 = &v163 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_261CFD674();
  v213 = *(v211 - 8);
  v5 = v213[8];
  MEMORY[0x28223BE20](v211);
  v196 = &v163 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v195 = &v163 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v194 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD6A4();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v206 = &v163 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = sub_261CFDDD4();
  v193 = *(v209 - 1);
  v16 = *(v193 + 64);
  MEMORY[0x28223BE20](v209);
  v192 = (&v163 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for AppEntityID();
  v18 = *(*(v204 - 8) + 64);
  MEMORY[0x28223BE20](v204);
  v210 = (&v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v163 - v22;
  v24 = sub_261CFC954();
  v216 = *(v24 - 8);
  v25 = *(v216 + 64);
  MEMORY[0x28223BE20](v24);
  v218 = (&v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v198 = &v163 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v197 = &v163 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v207 = &v163 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v163 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = &v163 - v38;
  v40 = type metadata accessor for GroupEntity();
  v41 = *(*(v40 - 8) + 56);
  v208 = v39;
  v41(v39, 1, 1, v40);
  v42 = [a1 parentList];
  v215 = v24;
  if (v42)
  {
    v43 = v42;
    sub_261B84F14(v43, 0, v37);
    v44 = v208;
    sub_261AE6A40(v208, &unk_27FEDD950, &unk_261D01440);

    v41(v37, 0, 1, v40);
    sub_261B7C25C(v37, v44);
  }

  v45 = [a1 shareeContext];
  if (v45)
  {
    v230[0] = v45;
    v46 = v45;
    sub_261B05020(0, &qword_27FEDB0E8, 0x277D446B8);
    v47 = sub_261CFE4A4();

    if (v47 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
    {
      v205 = a1;
      if (!i)
      {
        break;
      }

      v49 = 0;
      v50 = v47 & 0xC000000000000001;
      v51 = v47 & 0xFFFFFFFFFFFFFF8;
      a1 = (v216 + 48);
      v217 = (v216 + 32);
      v219 = MEMORY[0x277D84F90];
      v212 = v47 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v50)
        {
          v52 = MEMORY[0x26671CA10](v49, v47);
        }

        else
        {
          if (v49 >= *(v51 + 16))
          {
            goto LABEL_33;
          }

          v52 = *(v47 + 8 * v49 + 32);
        }

        v53 = v52;
        v54 = v49 + 1;
        if (__OFADD__(v49, 1))
        {
          break;
        }

        sub_261B76B88(v23);

        if ((*a1)(v23, 1, v24) == 1)
        {
          sub_261AE6A40(v23, &unk_27FEDB0B0, &unk_261D035D0);
        }

        else
        {
          v55 = v47;
          v56 = v50;
          v57 = i;
          v58 = *v217;
          (*v217)(v218, v23, v24);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v219 = sub_261B41588(0, v219[2] + 1, 1, v219);
          }

          v60 = v219[2];
          v59 = v219[3];
          if (v60 >= v59 >> 1)
          {
            v219 = sub_261B41588(v59 > 1, v60 + 1, 1, v219);
          }

          v61 = v219;
          v219[2] = v60 + 1;
          v62 = v61 + ((*(v216 + 80) + 32) & ~*(v216 + 80)) + *(v216 + 72) * v60;
          v24 = v215;
          v58(v62, v218, v215);
          i = v57;
          v50 = v56;
          v47 = v55;
          v51 = v212;
        }

        ++v49;
        if (v54 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v219 = MEMORY[0x277D84F90];
LABEL_23:

    a1 = v205;
  }

  else
  {
    v219 = 0;
  }

  v63 = [a1 groceryContext];
  LODWORD(v205) = v63 && (v64 = v63, v65 = [v63 shouldCategorizeGroceryItems], v64, (v65 & 1) != 0);
  v66 = [a1 objectID];
  v67 = [v66 entityName];
  v68 = sub_261CFFA74();
  v70 = v69;

  v71 = [v66 uuid];
  v72 = v204;
  v73 = v210;
  v74 = v210 + *(v204 + 20);
  sub_261CFD834();

  v75 = *(v72 + 24);
  v76 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v76 - 8) + 56))(v73 + v75, 1, 1, v76);
  *v73 = v68;
  v73[1] = v70;
  v77 = [a1 displayName];
  v191 = sub_261CFFA74();
  v190 = v78;

  v79 = sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
  v80 = MEMORY[0x277D45F10];
  v223 = v79;
  v224 = MEMORY[0x277D45F10];
  v220 = a1;
  v81 = a1;
  ColorEntity.init(list:)(&v220, v230);
  v82 = v230[1];
  v186 = v230[0];
  v83 = v230[2];
  v184 = v230[3];
  v203 = v230[4];
  v202 = v230[5];
  v201 = v230[6];
  v223 = v79;
  v224 = v80;
  v220 = v81;
  v84 = v81;
  ListBadgeEntity.init(list:)(&v220, v229);
  v216 = v229[0];
  v215 = v229[1];
  v212 = v229[2];
  v183 = v229[3];
  v182 = v229[4];
  sub_261AFB668(v208, v207, &unk_27FEDD950, &unk_261D01440);
  v85 = sub_261B7777C();
  v87 = v86;
  v88 = sub_261B77B74();
  v181 = [v84 isPinned];
  sub_261CFDE54();
  v89 = sub_261CFDDA4();
  v90 = [v84 remObjectID];
  v91 = v192;
  *v192 = v90;
  v92 = v193;
  v93 = v209;
  (*(v193 + 104))(v91, *MEMORY[0x277D45C90], v209);
  v180 = sub_261CFDDC4();

  (*(v92 + 8))(v91, v93);
  v94 = sub_261D000C4();
  v189 = v85;
  v188 = v87;
  v187 = v88;
  v185 = v82;
  v204 = v83;
  if (v94)
  {
    v95 = v94;
    v179 = [v94 shouldAutoCategorizeItems];
  }

  else
  {
    v179 = 0;
  }

  sub_261B77E3C(&v228);
  v178 = v228;
  v96 = [v84 sortingStyle];
  sub_261B781A4(&v227);

  v177 = v227;
  v97 = sub_261D000B4();
  v175 = [v97 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v172 = sub_261AFF54C();
  v193 = sub_261CFCA44();
  v98 = v214;
  *v214 = v193;
  v99 = type metadata accessor for ListEntity();
  v100 = v99[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v192 = sub_261CFCB24();
  *(v98 + v100) = v192;
  v176 = v99[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v217) = *MEMORY[0x277CC9110];
  v101 = v213[13];
  v213 += 13;
  v102 = v196;
  v103 = v211;
  (v101)(v196);
  v104 = v206;
  sub_261CFD6B4();
  v105 = MEMORY[0x2667199E0](v104, &type metadata for UpdateListNameAppIntent);
  *(v176 + v98) = v105;
  v176 = v84;
  v218 = v99;
  v173 = v99[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v106 = v217;
  (v101)(v102, v217, v103);
  sub_261CFD6B4();
  v107 = sub_261AFF5A0();
  v174 = MEMORY[0x2667199D0](v104, &type metadata for UpdateListColorAppIntent, v107);
  *(v214 + v173) = v174;
  v171 = v99[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  (v101)(v102, v106, v103);
  v209 = v101;
  sub_261CFD6B4();
  v108 = sub_261AFF5F4();
  v173 = MEMORY[0x2667199D0](v104, &type metadata for UpdateListBadgeAppIntent, v108);
  v109 = v214;
  *(v214 + v171) = v173;
  v110 = v218;
  v170 = v218[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  (v101)(v102, v217, v103);
  sub_261CFD6B4();
  v111 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity);
  v171 = MEMORY[0x2667199D0](v104, &type metadata for UpdateListParentAppIntent, v111);
  *(v109 + v170) = v171;
  v112 = v110;
  v169 = v110[11];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v113 = v217;
  v114 = v209;
  (v209)(v102, v217, v103);
  sub_261CFD6B4();
  v170 = sub_261CFCA84();
  *(v109 + v169) = v170;
  v168 = v112[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v114(v102, v113, v103);
  v115 = v104;
  v116 = v102;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity);
  v169 = sub_261CFCA54();
  v117 = v214;
  *(v214 + v168) = v169;
  v167 = v218[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v118 = v209;
  (v209)(v102, v113, v103);
  sub_261CFD6B4();
  v168 = MEMORY[0x2667199F0](v115, &type metadata for UpdateListIsPinnedAppIntent);
  *(v117 + v167) = v168;
  v119 = v218;
  v166 = v218[14];
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v120 = v113;
  v121 = v113;
  v122 = v211;
  v118(v102, v120, v211);
  v123 = v206;
  sub_261CFD6B4();
  v167 = MEMORY[0x2667199F0](v123, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v117 + v166) = v167;
  v165 = v119[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v118(v116, v121, v122);
  v124 = v123;
  v125 = v116;
  sub_261CFD6B4();
  v126 = v124;
  v166 = MEMORY[0x2667199F0](v124, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v117 + v165) = v166;
  v164 = v218[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v127 = v217;
  v128 = v211;
  v118(v125, v217, v211);
  sub_261CFD6B4();
  v129 = sub_261AFF648();
  v165 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListListLayoutAppIntent, v129);
  *(v117 + v164) = v165;
  v130 = v218;
  v163 = v218[17];
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v131 = v128;
  v132 = v209;
  (v209)(v125, v127, v131);
  sub_261CFD6B4();
  v133 = sub_261AFF69C();
  v164 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListSortingStyleAppIntent, v133);
  *(v117 + v163) = v164;
  v134 = v130[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v132(v125, v217, v211);
  sub_261CFD6B4();
  v211 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListTypeAppIntent, v172);
  *(v117 + v134) = v211;
  v135 = (v117 + v130[19]);
  v213 = v135;
  *v135 = 0;
  v135[1] = 0;
  v217 = v130[20];
  *(v217 + v117) = 0;
  sub_261B7C0F0(v210, v117 + v130[5]);
  *(v117 + v130[21]) = 0;
  v136 = type metadata accessor for AnyListEntityLazyImage();
  v137 = *(v136 + 48);
  v138 = *(v136 + 52);
  v139 = swift_allocObject();
  v220 = MEMORY[0x277D84F90];
  v140 = v183;
  v141 = v182;
  sub_261AF9C0C(v216, v215);
  v142 = v186;
  v143 = v185;
  v144 = v204;
  v145 = v184;
  sub_261AF9844(v186, v185);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v146 = sub_261CFECB4();
  v147 = *(v146 + 48);
  v148 = *(v146 + 52);
  swift_allocObject();
  *(v139 + 128) = sub_261CFECA4();
  v149 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v150 = sub_261CFD074();
  (*(*(v150 - 8) + 56))(v139 + v149, 1, 1, v150);
  *(v139 + 16) = 1;
  v151 = v215;
  *(v139 + 24) = v216;
  *(v139 + 32) = v151;
  *(v139 + 40) = v212;
  *(v139 + 48) = v140;
  *(v139 + 56) = v141;
  *(v139 + 64) = v142;
  v152 = v143;
  *(v139 + 72) = v143;
  *(v139 + 80) = v144;
  v153 = v203;
  *(v139 + 88) = v145;
  *(v139 + 96) = v153;
  v154 = v202;
  v155 = v201;
  *(v139 + 104) = v202;
  *(v139 + 112) = v155;
  *(v139 + 120) = v175;
  *(v139 + 121) = 1;
  *(v214 + v218[22]) = v139;
  LOBYTE(v220) = v181;
  sub_261CFD2E4();
  LOBYTE(v220) = v180 & 1;
  sub_261CFD2E4();
  LOBYTE(v220) = v179;
  sub_261CFD2E4();
  LOBYTE(v220) = v178;
  sub_261CFD2E4();
  LOBYTE(v220) = v177;
  sub_261CFD2E4();
  LOBYTE(v220) = v205;
  sub_261CFD2E4();
  v220 = v142;
  v221 = v152;
  v222 = v204;
  v223 = v145;
  v224 = v153;
  v225 = v154;
  v226 = v155;
  sub_261CFD2E4();
  v220 = v216;
  v221 = v215;
  v222 = v212;
  v223 = v140;
  v224 = v141;
  sub_261CFD2E4();
  v156 = v207;
  v157 = v197;
  sub_261AFB668(v207, v197, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v157, v198, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v157, &unk_27FEDD950, &unk_261D01440);
  v158 = v213;
  v159 = v188;
  *v213 = v189;
  v158[1] = v159;
  v160 = v214;
  *(v217 + v214) = v187;
  v220 = v219;
  sub_261CFCA14();
  v220 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v220 = v191;
  v221 = v190;
  sub_261CFCA14();
  LOBYTE(v220) = v205;
  sub_261CFCA14();
  sub_261AE6A40(v156, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v210);
  v161 = v176;
  sub_261B78660(v160);

  return sub_261AE6A40(v208, &unk_27FEDD950, &unk_261D01440);
}

uint64_t sub_261B750A0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v185 = a3;
  v167 = sub_261CFEC94();
  v5 = *(*(v167 - 8) + 64);
  MEMORY[0x28223BE20](v167);
  v168 = v135 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_261CFD674();
  v179 = *(v184 - 8);
  v7 = *(v179 + 64);
  MEMORY[0x28223BE20](v184);
  v164 = v135 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v170 = v135 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_261CFDDD4();
  v182 = *(v183 - 1);
  v18 = *(v182 + 8);
  MEMORY[0x28223BE20](v183);
  v181 = (v135 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v178 = type metadata accessor for AppEntityID();
  v20 = *(*(v178 - 8) + 64);
  MEMORY[0x28223BE20](v178);
  v180 = (v135 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x28223BE20](v22 - 8);
  v166 = v135 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v165 = v135 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v175 = v135 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = (v135 - v31);
  MEMORY[0x28223BE20](v30);
  v34 = v135 - v33;
  v35 = type metadata accessor for GroupEntity();
  v36 = *(*(v35 - 8) + 56);
  v36(v34, 1, 1, v35);
  v169 = a2;
  if (a2)
  {
    v37 = a2;
    sub_261B84F14(v37, 0, v32);
    sub_261AE6A40(v34, &unk_27FEDD950, &unk_261D01440);

    v36(v32, 0, 1, v35);
    sub_261B7C25C(v32, v34);
  }

  v160 = v34;
  v38 = [a1 objectID];
  v39 = [v38 entityName];
  v40 = sub_261CFFA74();
  v42 = v41;

  v43 = [v38 uuid];
  v44 = v178;
  v45 = v180;
  v46 = v180 + *(v178 + 20);
  sub_261CFD834();

  v47 = *(v44 + 24);
  v48 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v48 - 8) + 56))(v45 + v47, 1, 1, v48);
  *v45 = v40;
  v45[1] = v42;
  v49 = [a1 name];
  v163 = sub_261CFFA74();
  v162 = v50;

  v51 = sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
  v52 = MEMORY[0x277D45EA8];
  v189 = v51;
  v190 = MEMORY[0x277D45EA8];
  v186 = a1;
  v53 = a1;
  ColorEntity.init(list:)(&v186, v196);
  v174 = v196[0];
  v173 = v196[1];
  v153 = v196[2];
  v152 = v196[3];
  v151 = v196[4];
  v150 = v196[5];
  v149 = v196[6];
  v189 = v51;
  v190 = v52;
  v186 = v53;
  v54 = v53;
  ListBadgeEntity.init(list:)(&v186, v195);
  v171 = v195[0];
  v172 = v195[1];
  v176 = v195[2];
  v178 = v195[3];
  v177 = v195[4];
  sub_261AFB668(v34, v175, &unk_27FEDD950, &unk_261D01440);
  v159 = [v54 isPinned];
  sub_261CFDE54();
  v55 = sub_261CFDDA4();
  v56 = [v54 objectID];
  v57 = v181;
  *v181 = v56;
  v58 = v182;
  v59 = v183;
  (*(v182 + 13))(v57, *MEMORY[0x277D45C98], v183);
  v157 = sub_261CFDDC4();

  (*(v58 + 1))(v57, v59);
  sub_261B78D78(&v194);
  v155 = v194;
  v161 = v54;
  v60 = [v54 sortingStyle];
  sub_261B781A4(&v193);

  v154 = v193;
  v61 = [v54 accountCapabilities];
  v148 = [v61 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v145 = sub_261AFF54C();
  v158 = sub_261CFCA44();
  v62 = v185;
  *v185 = v158;
  v63 = v62;
  v64 = type metadata accessor for ListEntity();
  v65 = v64[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v156 = sub_261CFCB24();
  *(v63 + v65) = v156;
  v147 = v64[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v181) = *MEMORY[0x277CC9110];
  v66 = v179 + 104;
  v67 = *(v179 + 104);
  v68 = v164;
  v69 = v184;
  v67(v164);
  v182 = v67;
  v70 = v170;
  sub_261CFD6B4();
  v71 = MEMORY[0x2667199E0](v70, &type metadata for UpdateListNameAppIntent);
  v72 = v185;
  *(v185 + v147) = v71;
  v146 = v64[8];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v73 = v68;
  v74 = v68;
  v75 = v181;
  (v67)(v73, v181, v69);
  sub_261CFD6B4();
  v76 = sub_261AFF5A0();
  v147 = MEMORY[0x2667199D0](v70, &type metadata for UpdateListColorAppIntent, v76);
  *(v72 + v146) = v147;
  v144 = v64[9];
  v77 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v78 = v12;
  sub_261CFD874();
  v79 = v69;
  v80 = v69;
  v81 = v182;
  (v182)(v74, v75, v79);
  v82 = v78;
  sub_261CFD6B4();
  v83 = sub_261AFF5F4();
  v146 = MEMORY[0x2667199D0](v70, &type metadata for UpdateListBadgeAppIntent, v83);
  v84 = v185;
  *(v185 + v144) = v146;
  v143 = v77[10];
  v183 = v77;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  v135[1] = v82;
  sub_261CFD874();
  (v81)(v74, v181, v80);
  sub_261CFD6B4();
  v85 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity);
  v144 = MEMORY[0x2667199D0](v70, &type metadata for UpdateListParentAppIntent, v85);
  *(v84 + v143) = v144;
  v86 = v84;
  v142 = v77[11];
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v87 = v181;
  v88 = v184;
  v89 = v182;
  (v182)(v74, v181, v184);
  sub_261CFD6B4();
  v143 = sub_261CFCA84();
  *(v86 + v142) = v143;
  v141 = v183[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v89(v74, v87, v88);
  v90 = v89;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity);
  v142 = sub_261CFCA54();
  *(v86 + v141) = v142;
  v91 = v183;
  v140 = v183[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v90(v74, v87, v184);
  v179 = v66;
  sub_261CFD6B4();
  v141 = MEMORY[0x2667199F0](v70, &type metadata for UpdateListIsPinnedAppIntent);
  *(v86 + v140) = v141;
  v92 = v86;
  v139 = v91[14];
  v93 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v94 = v87;
  v95 = v184;
  v96 = v182;
  (v182)(v74, v94, v184);
  sub_261CFD6B4();
  v140 = MEMORY[0x2667199F0](v70, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v92 + v139) = v140;
  v138 = v93[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v97 = v181;
  (v96)(v74, v181, v95);
  sub_261CFD6B4();
  v139 = MEMORY[0x2667199F0](v70, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v92 + v138) = v139;
  v98 = v183;
  v137 = v183[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v99 = v97;
  v100 = v182;
  (v182)(v74, v97, v184);
  sub_261CFD6B4();
  v101 = sub_261AFF648();
  v138 = MEMORY[0x2667199C0](v70, &type metadata for UpdateListListLayoutAppIntent, v101);
  v102 = v185;
  *(v185 + v137) = v138;
  v136 = v98[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v103 = v184;
  v100(v74, v99, v184);
  v104 = v170;
  sub_261CFD6B4();
  v105 = sub_261AFF69C();
  v137 = MEMORY[0x2667199C0](v104, &type metadata for UpdateListSortingStyleAppIntent, v105);
  *(v102 + v136) = v137;
  v106 = v183;
  v107 = v183[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v182)(v74, v181, v103);
  sub_261CFD6B4();
  v181 = MEMORY[0x2667199C0](v104, &type metadata for UpdateListTypeAppIntent, v145);
  *(v102 + v107) = v181;
  v108 = (v102 + v106[19]);
  v182 = v108;
  *v108 = 0;
  *(v108 + 1) = 0;
  v184 = v106[20];
  *(v102 + v184) = 0;
  sub_261B7C0F0(v180, v102 + v106[5]);
  *(v102 + v106[21]) = 1;
  LOBYTE(v179) = sub_261D00614() & 1;
  LODWORD(v179) = v179;
  v109 = type metadata accessor for AnyListEntityLazyImage();
  v110 = *(v109 + 48);
  v111 = *(v109 + 52);
  v112 = swift_allocObject();
  v186 = MEMORY[0x277D84F90];
  v113 = v171;
  sub_261AF9C0C(v171, v172);
  v114 = v153;
  v115 = v152;
  v116 = v151;
  v117 = v150;
  v118 = v149;
  sub_261AF9844(v174, v173);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v119 = sub_261CFECB4();
  v120 = *(v119 + 48);
  v121 = *(v119 + 52);
  swift_allocObject();
  *(v112 + 128) = sub_261CFECA4();
  v122 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v123 = sub_261CFD074();
  (*(*(v123 - 8) + 56))(v112 + v122, 1, 1, v123);
  *(v112 + 16) = v179;
  *(v112 + 24) = v113;
  v124 = v172;
  v125 = v176;
  *(v112 + 32) = v172;
  *(v112 + 40) = v125;
  v126 = v177;
  *(v112 + 48) = v178;
  *(v112 + 56) = v126;
  v127 = v174;
  v128 = v173;
  *(v112 + 64) = v174;
  *(v112 + 72) = v128;
  *(v112 + 80) = v114;
  *(v112 + 88) = v115;
  *(v112 + 96) = v116;
  *(v112 + 104) = v117;
  *(v112 + 112) = v118;
  *(v112 + 120) = v148;
  *(v112 + 121) = 1;
  *(v185 + v183[22]) = v112;
  LOBYTE(v186) = v159;
  sub_261CFD2E4();
  LOBYTE(v186) = v157 & 1;
  sub_261CFD2E4();
  LOBYTE(v186) = 0;
  sub_261CFD2E4();
  LOBYTE(v186) = v155;
  sub_261CFD2E4();
  LOBYTE(v186) = v154;
  sub_261CFD2E4();
  LOBYTE(v186) = 0;
  sub_261CFD2E4();
  v186 = v127;
  v187 = v128;
  v188 = v114;
  v189 = v115;
  v190 = v116;
  v191 = v117;
  v192 = v118;
  sub_261CFD2E4();
  v186 = v171;
  v187 = v124;
  v188 = v176;
  v189 = v178;
  v190 = v177;
  sub_261CFD2E4();
  v129 = v175;
  v130 = v165;
  sub_261AFB668(v175, v165, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v130, v166, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v130, &unk_27FEDD950, &unk_261D01440);
  v131 = v182;
  *v182 = 0;
  *(v131 + 1) = 0;
  v132 = v185;
  *(v185 + v184) = 0;
  v186 = 0;
  sub_261CFCA14();
  v186 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v186 = v163;
  v187 = v162;
  sub_261CFCA14();
  LOBYTE(v186) = 0;
  sub_261CFCA14();
  sub_261AE6A40(v129, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v180);
  v133 = v161;
  sub_261B790E0(v132);

  return sub_261AE6A40(v160, &unk_27FEDD950, &unk_261D01440);
}

uint64_t sub_261B76AC0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAFE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAFE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B76B88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0C8, &qword_261D050E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v115 = &v108 - v6;
  v7 = sub_261CFC8A4();
  v117 = *(v7 - 8);
  v118 = v7;
  v8 = *(v117 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v114 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v116 = (&v108 - v12);
  MEMORY[0x28223BE20](v11);
  v14 = &v108 - v13;
  v15 = sub_261CFD754();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v108 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v108 - v22;
  v24 = sub_261CFC954();
  v25 = *(v24 - 8);
  v120 = v24;
  v121 = v25;
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24);
  v119 = &v108 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [v1 address];
  if (v28)
  {
    v29 = v28;
    sub_261CFFA74();

    sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
    v30 = sub_261D00074();
    if (v30)
    {
      v31 = v30;
      v32 = [v2 objectID];
      v33 = [v32 urlRepresentation];

      sub_261CFD734();
      v34 = sub_261CFD6F4();
      v36 = v35;
      (*(v16 + 8))(v19, v15);
      sub_261C7D878(v34, v36, v23);

      v37 = v120;
      if ((*(v121 + 48))(v23, 1, v120) == 1)
      {
        v38 = v31;
        sub_261AE6A40(v23, &unk_27FEDB0B0, &unk_261D035D0);
        if (qword_27FED9930 != -1)
        {
          swift_once();
        }

        v39 = sub_261CFF7A4();
        __swift_project_value_buffer(v39, qword_27FEDAFE0);
        v40 = v2;
        v41 = sub_261CFF784();
        v42 = sub_261CFFE64();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v123[0] = v44;
          *v43 = 136315138;
          v45 = v40;
          v46 = [v45 description];
          v47 = sub_261CFFA74();
          v49 = v48;

          v37 = v120;
          v50 = sub_261B879C8(v47, v49, v123);

          *(v43 + 4) = v50;
          _os_log_impl(&dword_261AE2000, v41, v42, "Failed to convert sharee to IntentPerson for {sharee: %s}", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x26671D560](v44, -1, -1);
          MEMORY[0x26671D560](v43, -1, -1);
        }

        return (*(v121 + 56))(a1, 1, 1, v37);
      }

      (*(v121 + 32))(v119, v23, v37);
      sub_261CFC8B4();
      v66 = v117;
      v67 = v118;
      v68 = (*(v117 + 88))(v14, v118);
      v69 = *MEMORY[0x277CB9CF8];
      if (v68 == v69)
      {
        (*(v66 + 8))(v14, v67);
        goto LABEL_18;
      }

      if (v68 != *MEMORY[0x277CB9D08])
      {
        if (v68 == *MEMORY[0x277CB9D18])
        {
LABEL_18:
          v70 = [v2 firstName];
          if (v70)
          {
            v71 = v31;
            v72 = v70;
            v114 = sub_261CFFA74();

            v73 = [v2 lastName];
            if (v73)
            {
              v74 = v73;
              v75 = sub_261CFFA74();
              v112 = v76;
              v113 = v75;

              v77 = [v2 namePrefix];
              if (v77)
              {
                v78 = v77;
                v79 = sub_261CFFA74();
                v110 = v80;
                v111 = v79;
              }

              else
              {
                v110 = 0;
                v111 = 0;
              }

              v100 = [v2 middleName];
              if (v100)
              {
                v101 = v100;
                v109 = sub_261CFFA74();
              }

              else
              {
                v109 = 0;
              }

              v102 = [v2 nameSuffix];
              if (v102)
              {
                v103 = v102;
                sub_261CFFA74();
              }

              v104 = [v2 nickname];
              if (v104)
              {
                v105 = v104;
                sub_261CFFA74();
              }

              v31 = v71;
              v106 = sub_261CFD5E4();
              (*(*(v106 - 8) + 56))(v115, 1, 1, v106);
              v107 = v116;
              sub_261CFD5D4();
              (*(v117 + 104))(v107, *MEMORY[0x277CB9D08], v118);
              goto LABEL_43;
            }

            v31 = v71;
            v67 = v118;
          }

          v92 = [v2 displayName];
          if (!v92)
          {
            v81 = v119;
            sub_261CFC8B4();
LABEL_44:
            sub_261CFC8C4();

            goto LABEL_45;
          }

          v93 = v66;
          v94 = v31;
          v95 = v92;
          v96 = sub_261CFFA74();
          v98 = v97;

          v31 = v94;
          v99 = v116;
          *v116 = v96;
          v99[1] = v98;
          (*(v93 + 104))(v99, v69, v67);
LABEL_43:
          v81 = v119;
          goto LABEL_44;
        }

        if (qword_27FED9930 != -1)
        {
          swift_once();
        }

        v82 = sub_261CFF7A4();
        __swift_project_value_buffer(v82, qword_27FEDAFE0);
        v83 = sub_261CFF784();
        v84 = sub_261CFFE74();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v122 = v86;
          *v85 = 136315138;
          swift_beginAccess();
          sub_261CFC8B4();
          swift_endAccess();
          v87 = sub_261CFFAB4();
          v89 = sub_261B879C8(v87, v88, &v122);

          *(v85 + 4) = v89;
          _os_log_impl(&dword_261AE2000, v83, v84, "Unhandled name case %s", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          v90 = v86;
          v67 = v118;
          MEMORY[0x26671D560](v90, -1, -1);
          v91 = v85;
          v66 = v117;
          MEMORY[0x26671D560](v91, -1, -1);

          goto LABEL_24;
        }
      }

LABEL_24:
      (*(v66 + 8))(v14, v67);
      v81 = v119;
LABEL_45:
      swift_beginAccess();
      (*(v121 + 16))(a1, v81, v37);
      (*(v121 + 56))(a1, 0, 1, v37);
      return (*(v121 + 8))(v81, v37);
    }
  }

  if (qword_27FED9930 != -1)
  {
    swift_once();
  }

  v52 = sub_261CFF7A4();
  __swift_project_value_buffer(v52, qword_27FEDAFE0);
  v53 = v2;
  v54 = sub_261CFF784();
  v55 = sub_261CFFE64();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v123[0] = v57;
    *v56 = 136315138;
    v58 = v53;
    v59 = [v58 description];
    v60 = sub_261CFFA74();
    v62 = v61;

    v63 = sub_261B879C8(v60, v62, v123);

    *(v56 + 4) = v63;
    _os_log_impl(&dword_261AE2000, v54, v55, "Cannot create REMContactRepresentation with invalid sharee.address, will not create IntentPerson for {sharee: %s}", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x26671D560](v57, -1, -1);
    MEMORY[0x26671D560](v56, -1, -1);
  }

  v64 = v120;
  v65 = *(v121 + 56);

  return v65(a1, 1, 1, v64);
}

uint64_t (*sub_261B7777C())()
{
  v1 = sub_261CFD844();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 store];
  v7 = [v0 accountID];
  v8 = sub_261D000B4();
  v9 = [v6 storeContainerToken];
  if (v9)
  {
    v10 = v9;

    v7 = v6;
    v6 = v10;
LABEL_5:

    return sub_261B7C07C;
  }

  if (([v8 supportsCloudKitSync] & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = [v7 uuid];
  sub_261CFD834();

  v12 = sub_261CFD804();
  v14 = v13;

  (*(v2 + 8))(v5, v1);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v14;
  return sub_261B7C2D4;
}

uint64_t (*sub_261B77960())()
{
  v1 = v0;
  v2 = sub_261CFD844();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 saveRequest];
  v8 = [v7 store];

  v9 = [v1 accountID];
  v10 = [v1 accountCapabilities];
  v11 = [v8 storeContainerToken];
  if (v11)
  {
    v12 = v11;

    v9 = v8;
    v8 = v12;
LABEL_5:

    return sub_261B7C07C;
  }

  if (([v10 supportsCloudKitSync] & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = [v9 uuid];
  sub_261CFD834();

  v14 = sub_261CFD804();
  v16 = v15;

  (*(v3 + 8))(v6, v2);
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  *(v17 + 24) = v16;
  return sub_261B7C2CC;
}

id sub_261B77B74()
{
  v17[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 store];
  v2 = [v1 storeContainerToken];

  if (!v2)
  {
    v4 = [v0 account];
    v5 = [v4 accountTypeHost];

    LODWORD(v4) = [v5 isCloudKit];
    if (!v4 || ![v0 isShared])
    {
      result = 0;
      goto LABEL_12;
    }

    v6 = [v0 store];
    v7 = [v0 objectID];
    v17[0] = 0;
    v8 = [v6 fetchShareForListWithID:v7 error:v17];

    if (!v17[0])
    {
      result = v8;
      goto LABEL_12;
    }

    v2 = v17[0];

    swift_willThrow();
    if (qword_27FED9930 != -1)
    {
      swift_once();
    }

    v9 = sub_261CFF7A4();
    __swift_project_value_buffer(v9, qword_27FEDAFE0);
    v10 = v0;
    v11 = sub_261CFF784();
    v12 = sub_261CFFE64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v10 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_261AE2000, v11, v12, "Cannot fetch share for list entity with objectID: %@", v13, 0xCu);
      sub_261AE6A40(v14, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v14, -1, -1);
      MEMORY[0x26671D560](v13, -1, -1);
    }
  }

  result = 0;
LABEL_12:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_261B77E3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_261CFE314();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFDDB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_261CFDE54();
  v20 = sub_261CFDDA4();
  *v12 = [v2 remObjectID];
  (*(v9 + 104))(v12, *MEMORY[0x277D45C88], v8);
  sub_261CFDE04();

  (*(v9 + 8))(v12, v8);
  sub_261AFB668(v19, v17, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v4 + 48))(v17, 1, v3) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v17, &qword_27FEDB0A8, &unk_261D050D8);
    *v26 = 2;
    return result;
  }

  v22 = v26;
  (*(v4 + 16))(v7, v17, v3);
  v23 = (*(v4 + 88))(v7, v3);
  if (v23 == *MEMORY[0x277D45D58])
  {
    v24 = 0;
  }

  else
  {
    if (v23 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v24 = 1;
  }

  sub_261AE6A40(v19, &qword_27FEDB0A8, &unk_261D050D8);
  *v22 = v24;
  return (*(v4 + 8))(v17, v3);
}

uint64_t sub_261B781A4@<X0>(char *a1@<X8>)
{
  v2 = *MEMORY[0x277D44BD8];
  v3 = sub_261CFFA74();
  v5 = v4;
  if (v3 == sub_261CFFA74() && v5 == v6)
  {
    v10 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_261D00614();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = *MEMORY[0x277D44BF0];
  v12 = sub_261CFFA74();
  v14 = v13;
  if (v12 == sub_261CFFA74() && v14 == v15)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v17 = sub_261D00614();

  if (v17)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v18 = *MEMORY[0x277D44BD0];
  v19 = sub_261CFFA74();
  v21 = v20;
  if (v19 == sub_261CFFA74() && v21 == v22)
  {
    v10 = 6;
    goto LABEL_13;
  }

  v23 = sub_261D00614();

  if (v23)
  {
    v10 = 6;
    goto LABEL_14;
  }

  v24 = *MEMORY[0x277D44BC8];
  v25 = sub_261CFFA74();
  v27 = v26;
  if (v25 == sub_261CFFA74() && v27 == v28)
  {
    v10 = 7;
    goto LABEL_13;
  }

  v29 = sub_261D00614();

  if (v29)
  {
    v10 = 7;
    goto LABEL_14;
  }

  v30 = *MEMORY[0x277D44BE8];
  v31 = sub_261CFFA74();
  v33 = v32;
  if (v31 == sub_261CFFA74() && v33 == v34)
  {
    v10 = 2;
    goto LABEL_13;
  }

  v35 = sub_261D00614();

  if (v35)
  {
    v10 = 2;
    goto LABEL_14;
  }

  v36 = *MEMORY[0x277D44BE0];
  v37 = sub_261CFFA74();
  v39 = v38;
  if (v37 == sub_261CFFA74() && v39 == v40)
  {
    v10 = 3;
    goto LABEL_13;
  }

  v41 = sub_261D00614();

  if (v41)
  {
    v10 = 3;
    goto LABEL_14;
  }

  v42 = *MEMORY[0x277D44C00];
  v43 = sub_261CFFA74();
  v45 = v44;
  if (v43 == sub_261CFFA74() && v45 == v46)
  {
    v10 = 4;
    goto LABEL_13;
  }

  v47 = sub_261D00614();

  if (v47)
  {
    v10 = 4;
    goto LABEL_14;
  }

  v48 = *MEMORY[0x277D44BF8];
  v49 = sub_261CFFA74();
  v51 = v50;
  if (v49 == sub_261CFFA74() && v51 == v52)
  {
    v10 = 5;
    goto LABEL_13;
  }

  v53 = sub_261D00614();

  if (v53)
  {
    v10 = 5;
    goto LABEL_14;
  }

  v54 = *MEMORY[0x277D44C08];
  v55 = sub_261CFFA74();
  v57 = v56;
  if (v55 == sub_261CFFA74() && v57 == v58)
  {
    v10 = 8;
    goto LABEL_13;
  }

  v59 = sub_261D00614();

  if (v59)
  {
    v10 = 8;
    goto LABEL_14;
  }

  v60 = *MEMORY[0x277D44C10];
  v61 = sub_261CFFA74();
  v63 = v62;
  v10 = 9;
  if (v61 == sub_261CFFA74() && v63 == v64)
  {
    goto LABEL_13;
  }

  v65 = sub_261D00614();

  if (v65)
  {
    v10 = 9;
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  *a1 = v10;
  return result;
}

id sub_261B78660(uint64_t a1)
{
  v48 = a1;
  v1 = sub_261CFF274();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFF114();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v40 - v9;
  v10 = sub_261CFF244();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_261CFF334();
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v49);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFF284();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFF204();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_261CFF374();
  v52 = *(v28 - 8);
  v53 = v28;
  v29 = *(v52 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v55 sectionContext];
  if (result)
  {

    (*(v24 + 104))(v27, *MEMORY[0x277D45418], v23);
    (*(v19 + 104))(v22, *MEMORY[0x277D45468], v18);
    (*(v14 + 104))(v17, *MEMORY[0x277D45500], v49);
    (*(v50 + 104))(v13, *MEMORY[0x277D45458], v51);
    sub_261CFF364();
    v33 = [v55 store];
    v34 = v54;
    sub_261CFF0C4();

    v35 = v41;
    v36 = v42;
    sub_261CFF534();
    v37 = (*(v40 + 8))(v34, v35);
    v38 = v45;
    MEMORY[0x26671B7D0](v37);
    (*(v43 + 8))(v36, v44);
    sub_261CFF264();

    (*(v46 + 8))(v38, v47);
    v39 = *(v48 + *(type metadata accessor for ListEntity() + 48));
    v56 = 0;
    sub_261CFCA14();
    return (*(v52 + 8))(v31, v53);
  }

  return result;
}

uint64_t sub_261B78D78@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_261CFE314();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFDDB4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_261CFDE54();
  v20 = sub_261CFDDA4();
  *v12 = [v2 objectID];
  (*(v9 + 104))(v12, *MEMORY[0x277D45C80], v8);
  sub_261CFDE04();

  (*(v9 + 8))(v12, v8);
  sub_261AFB668(v19, v17, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v4 + 48))(v17, 1, v3) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v17, &qword_27FEDB0A8, &unk_261D050D8);
    *v26 = 2;
    return result;
  }

  v22 = v26;
  (*(v4 + 16))(v7, v17, v3);
  v23 = (*(v4 + 88))(v7, v3);
  if (v23 == *MEMORY[0x277D45D58])
  {
    v24 = 0;
  }

  else
  {
    if (v23 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v24 = 1;
  }

  sub_261AE6A40(v19, &qword_27FEDB0A8, &unk_261D050D8);
  *v22 = v24;
  return (*(v4 + 8))(v17, v3);
}

id sub_261B790E0(uint64_t a1)
{
  v48 = a1;
  v1 = sub_261CFF274();
  v46 = *(v1 - 8);
  v47 = v1;
  v2 = *(v46 + 64);
  MEMORY[0x28223BE20](v1);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFF054();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A0, &qword_261D050D0);
  v40 = *(v7 - 8);
  v41 = v7;
  v8 = *(v40 + 64);
  MEMORY[0x28223BE20](v7);
  v54 = &v40 - v9;
  v10 = sub_261CFF244();
  v50 = *(v10 - 8);
  v51 = v10;
  v11 = *(v50 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_261CFF334();
  v14 = *(v49 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v49);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFF284();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFF204();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_261CFF374();
  v52 = *(v28 - 8);
  v53 = v28;
  v29 = *(v52 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v40 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v55 sectionContext];
  if (result)
  {

    (*(v24 + 104))(v27, *MEMORY[0x277D45418], v23);
    (*(v19 + 104))(v22, *MEMORY[0x277D45468], v18);
    (*(v14 + 104))(v17, *MEMORY[0x277D45500], v49);
    (*(v50 + 104))(v13, *MEMORY[0x277D45458], v51);
    sub_261CFF364();
    v33 = [v55 store];
    v34 = v54;
    sub_261CFF0B4();

    v35 = v41;
    v36 = v42;
    sub_261CFF534();
    v37 = (*(v40 + 8))(v34, v35);
    v38 = v45;
    MEMORY[0x26671B710](v37);
    (*(v43 + 8))(v36, v44);
    sub_261CFF264();

    (*(v46 + 8))(v38, v47);
    v39 = *(v48 + *(type metadata accessor for ListEntity() + 48));
    v56 = 0;
    sub_261CFCA14();
    return (*(v52 + 8))(v31, v53);
  }

  return result;
}

uint64_t sub_261B797FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v228 = a3;
  v212 = sub_261CFEC94();
  v5 = *(*(v212 - 8) + 64);
  MEMORY[0x28223BE20](v212);
  v213 = &v175 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_261CFD674();
  v226 = *(v223 - 8);
  v7 = *(v226 + 64);
  MEMORY[0x28223BE20](v223);
  v224 = &v175 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v209 = &v175 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v208 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFD6A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v227 = (&v175 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v221 = sub_261CFDDD4();
  v207 = *(v221 - 1);
  v18 = *(v207 + 64);
  MEMORY[0x28223BE20](v221);
  v206 = (&v175 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v218 = type metadata accessor for AppEntityID();
  v20 = *(*(v218 - 8) + 64);
  MEMORY[0x28223BE20](v218);
  v225 = (&v175 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v230 = &v175 - v24;
  v231 = sub_261CFC954();
  v229 = *(v231 - 8);
  v25 = *(v229 + 64);
  MEMORY[0x28223BE20](v231);
  v232 = (&v175 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27 - 8);
  v211 = &v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v210 = &v175 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v219 = &v175 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v37 = (&v175 - v36);
  MEMORY[0x28223BE20](v35);
  v39 = &v175 - v38;
  v40 = type metadata accessor for GroupEntity();
  v41 = *(*(v40 - 8) + 56);
  v220 = v39;
  v41(v39, 1, 1, v40);
  v214 = a2;
  if (a2)
  {
    v42 = v214;
    sub_261B857C8(v42, 0, v37);
    v43 = v220;
    sub_261AE6A40(v220, &unk_27FEDD950, &unk_261D01440);

    v41(v37, 0, 1, v40);
    sub_261B7C25C(v37, v43);
  }

  v44 = [a1 sharees];
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v45 = sub_261CFFC64();

  v244[0] = MEMORY[0x277D84F90];
  if (v45 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v47 = v231;
    v222 = a1;
    if (i)
    {
      v48 = 0;
      while (1)
      {
        if ((v45 & 0xC000000000000001) != 0)
        {
          v49 = MEMORY[0x26671CA10](v48, v45);
        }

        else
        {
          if (v48 >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v49 = *(v45 + 8 * v48 + 32);
        }

        v50 = v49;
        a1 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          break;
        }

        if ([v49 status] == 1)
        {
          sub_261D00374();
          v51 = *(v244[0] + 16);
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        else
        {
        }

        ++v48;
        if (a1 == i)
        {
          v52 = v244[0];
          v47 = v231;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v52 = MEMORY[0x277D84F90];
LABEL_18:

    if (v52 < 0 || (v52 & 0x4000000000000000) != 0)
    {
      v53 = sub_261D00274();
    }

    else
    {
      v53 = *(v52 + 16);
    }

    if (!v53)
    {
      break;
    }

    v54 = 0;
    v45 = v52 & 0xC000000000000001;
    v55 = (v229 + 48);
    v56 = (v229 + 32);
    v233 = MEMORY[0x277D84F90];
    a1 = v230;
    while (1)
    {
      if (v45)
      {
        v57 = MEMORY[0x26671CA10](v54, v52);
      }

      else
      {
        if (v54 >= *(v52 + 16))
        {
          goto LABEL_48;
        }

        v57 = *(v52 + 8 * v54 + 32);
      }

      v58 = v57;
      v59 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      sub_261B76B88(a1);

      if ((*v55)(a1, 1, v47) == 1)
      {
        sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
      }

      else
      {
        v60 = v47;
        v61 = *v56;
        (*v56)(v232, a1, v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v233 = sub_261B41588(0, v233[2] + 1, 1, v233);
        }

        v63 = v233[2];
        v62 = v233[3];
        if (v63 >= v62 >> 1)
        {
          v233 = sub_261B41588(v62 > 1, v63 + 1, 1, v233);
        }

        v64 = v233;
        v233[2] = v63 + 1;
        v65 = v231;
        v61((v64 + ((*(v229 + 80) + 32) & ~*(v229 + 80)) + *(v229 + 72) * v63), v232, v231);
        v47 = v65;
        a1 = v230;
      }

      ++v54;
      if (v59 == v53)
      {
        goto LABEL_37;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v233 = MEMORY[0x277D84F90];
LABEL_37:

  v66 = v222;
  v67 = [v222 groceryContextChangeItem];
  v205 = v67 && (v68 = v67, v69 = [v67 shouldCategorizeGroceryItems], v68, (v69 & 1) != 0);
  v70 = [v66 objectID];
  v71 = [v70 entityName];
  v72 = sub_261CFFA74();
  v74 = v73;

  v75 = [v70 uuid];
  v76 = v218;
  v77 = v225;
  v78 = v225 + *(v218 + 20);
  sub_261CFD834();

  v79 = *(v76 + 24);
  v80 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v80 - 8) + 56))(v77 + v79, 1, 1, v80);
  *v77 = v72;
  v77[1] = v74;
  v81 = [v66 name];
  v204 = sub_261CFFA74();
  v203 = v82;

  v83 = sub_261B05020(0, &qword_27FEDB0C0, 0x277D44680);
  v84 = MEMORY[0x277D45EB8];
  v237 = v83;
  v238 = MEMORY[0x277D45EB8];
  v234 = v66;
  v85 = v66;
  ColorEntity.init(list:)(&v234, v244);
  v199 = v244[0];
  v198 = v244[1];
  v197 = v244[2];
  v218 = v244[3];
  v215 = v244[4];
  v216 = v244[5];
  v217 = v244[6];
  v237 = v83;
  v238 = v84;
  v234 = v85;
  v86 = v85;
  ListBadgeEntity.init(list:)(&v234, v243);
  v229 = v243[0];
  v222 = v243[1];
  v230 = v243[2];
  v196 = v243[3];
  v195 = v243[4];
  sub_261AFB668(v220, v219, &unk_27FEDD950, &unk_261D01440);
  v202 = sub_261B77960();
  v201 = v87;
  v200 = sub_261B7B71C();
  v194 = [v86 isPinned];
  sub_261CFDE54();
  v88 = sub_261CFDDA4();
  v89 = [v86 remObjectID];
  v90 = v206;
  *v206 = v89;
  v91 = v207;
  v92 = v221;
  (*(v207 + 104))(v90, *MEMORY[0x277D45C90], v221);
  v193 = sub_261CFDDC4();

  (*(v91 + 8))(v90, v92);
  v93 = [v86 autoCategorizeContextChangeItem];
  if (v93)
  {
    v94 = v93;
    v192 = [v93 shouldAutoCategorizeItems];
  }

  else
  {
    v192 = 0;
  }

  sub_261B77E3C(&v242);
  v190 = v242;
  v95 = [v86 sortingStyle];
  sub_261B781A4(&v241);

  v189 = v241;
  v96 = [v86 accountCapabilities];
  v188 = [v96 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v185 = sub_261AFF54C();
  v207 = sub_261CFCA44();
  v97 = v228;
  *v228 = v207;
  v98 = type metadata accessor for ListEntity();
  v99 = *(v98 + 24);
  v100 = v98;
  v232 = v98;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v191 = sub_261CFCB24();
  *(v97 + v99) = v191;
  v206 = v86;
  v187 = *(v100 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  v101 = *MEMORY[0x277CC9110];
  v103 = v226 + 104;
  v102 = *(v226 + 104);
  v104 = v224;
  v105 = v223;
  v102(v224, v101, v223);
  v221 = v102;
  v106 = v227;
  sub_261CFD6B4();
  v107 = MEMORY[0x2667199E0](v106, &type metadata for UpdateListNameAppIntent);
  *(v97 + v187) = v107;
  v108 = v232;
  v186 = v232[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v231) = v101;
  v102(v104, v101, v105);
  sub_261CFD6B4();
  v109 = sub_261AFF5A0();
  v187 = MEMORY[0x2667199D0](v106, &type metadata for UpdateListColorAppIntent, v109);
  v110 = v228;
  *(v228 + v186) = v187;
  v184 = v108[9];
  v111 = v108;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v112 = v101;
  v113 = v221;
  (v221)(v224, v112, v105);
  sub_261CFD6B4();
  v114 = sub_261AFF5F4();
  v186 = MEMORY[0x2667199D0](v106, &type metadata for UpdateListBadgeAppIntent, v114);
  v115 = v110;
  *(v110 + v184) = v186;
  v183 = v111[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v116 = v224;
  v117 = v231;
  v113(v224, v231, v105);
  v118 = v227;
  sub_261CFD6B4();
  v119 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity);
  v184 = MEMORY[0x2667199D0](v118, &type metadata for UpdateListParentAppIntent, v119);
  *(v115 + v183) = v184;
  v120 = v115;
  v121 = v232;
  v182 = v232[11];
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v122 = v117;
  v123 = v117;
  v124 = v223;
  v125 = v221;
  (v221)(v116, v122, v223);
  sub_261CFD6B4();
  v183 = sub_261CFCA84();
  *(v120 + v182) = v183;
  v181 = v121[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v125(v116, v123, v124);
  v226 = v103;
  v126 = v125;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity);
  v182 = sub_261CFCA54();
  *(v120 + v181) = v182;
  v127 = v232;
  v180 = v232[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v126(v116, v231, v124);
  v128 = v227;
  sub_261CFD6B4();
  v181 = MEMORY[0x2667199F0](v128, &type metadata for UpdateListIsPinnedAppIntent);
  *(v120 + v180) = v181;
  v179 = v127[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v129 = v231;
  v126(v116, v231, v124);
  v130 = v126;
  v131 = v227;
  v132 = v116;
  sub_261CFD6B4();
  v133 = v131;
  v180 = MEMORY[0x2667199F0](v131, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v120 + v179) = v180;
  v134 = v232;
  v178 = v232[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v135 = v132;
  v136 = v132;
  v137 = v223;
  v130(v136, v129, v223);
  v138 = v133;
  sub_261CFD6B4();
  v179 = MEMORY[0x2667199F0](v133, &type metadata for UpdateListAutoCategorizeAppIntent);
  v139 = v228;
  *(v228 + v178) = v179;
  v177 = v134[16];
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v140 = v135;
  v141 = v135;
  v142 = v231;
  v143 = v221;
  (v221)(v141, v231, v137);
  sub_261CFD6B4();
  v144 = sub_261AFF648();
  v178 = MEMORY[0x2667199C0](v138, &type metadata for UpdateListListLayoutAppIntent, v144);
  *(v139 + v177) = v178;
  v145 = v232;
  v176 = v232[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v143(v140, v142, v137);
  sub_261CFD6B4();
  v146 = sub_261AFF69C();
  v177 = MEMORY[0x2667199C0](v138, &type metadata for UpdateListSortingStyleAppIntent, v146);
  v147 = v228;
  *(v228 + v176) = v177;
  v148 = v145[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v143(v140, v231, v137);
  sub_261CFD6B4();
  v226 = MEMORY[0x2667199C0](v138, &type metadata for UpdateListTypeAppIntent, v185);
  *(v147 + v148) = v226;
  v149 = (v147 + v145[19]);
  v227 = v149;
  *v149 = 0;
  v149[1] = 0;
  v231 = v145[20];
  *(v147 + v231) = 0;
  sub_261B7C0F0(v225, v147 + v145[5]);
  *(v147 + v145[21]) = 0;
  v150 = type metadata accessor for AnyListEntityLazyImage();
  v151 = *(v150 + 48);
  v152 = *(v150 + 52);
  v153 = swift_allocObject();
  v234 = MEMORY[0x277D84F90];
  v154 = v196;
  v155 = v195;
  sub_261AF9C0C(v229, v222);
  v156 = v199;
  v157 = v198;
  v158 = v197;
  v159 = v215;
  sub_261AF9844(v199, v198);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v160 = sub_261CFECB4();
  v161 = *(v160 + 48);
  v162 = *(v160 + 52);
  swift_allocObject();
  *(v153 + 128) = sub_261CFECA4();
  v163 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v164 = sub_261CFD074();
  (*(*(v164 - 8) + 56))(v153 + v163, 1, 1, v164);
  *(v153 + 16) = 1;
  v165 = v222;
  *(v153 + 24) = v229;
  *(v153 + 32) = v165;
  *(v153 + 40) = v230;
  *(v153 + 48) = v154;
  *(v153 + 56) = v155;
  *(v153 + 64) = v156;
  *(v153 + 72) = v157;
  *(v153 + 80) = v158;
  v166 = v158;
  v167 = v218;
  *(v153 + 88) = v218;
  *(v153 + 96) = v159;
  v168 = v216;
  v169 = v217;
  *(v153 + 104) = v216;
  *(v153 + 112) = v169;
  *(v153 + 120) = v188;
  *(v153 + 121) = 1;
  *(v228 + v232[22]) = v153;
  LOBYTE(v234) = v194;
  sub_261CFD2E4();
  LOBYTE(v234) = v193 & 1;
  sub_261CFD2E4();
  LOBYTE(v234) = v192;
  sub_261CFD2E4();
  LOBYTE(v234) = v190;
  sub_261CFD2E4();
  LOBYTE(v234) = v189;
  sub_261CFD2E4();
  LOBYTE(v153) = v205;
  LOBYTE(v234) = v205;
  sub_261CFD2E4();
  v234 = v156;
  v235 = v157;
  v236 = v166;
  v237 = v167;
  v238 = v215;
  v239 = v168;
  v240 = v169;
  sub_261CFD2E4();
  v234 = v229;
  v235 = v222;
  v236 = v230;
  v237 = v154;
  v238 = v155;
  sub_261CFD2E4();
  v170 = v219;
  v171 = v210;
  sub_261AFB668(v219, v210, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v171, v211, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v171, &unk_27FEDD950, &unk_261D01440);
  v172 = v227;
  v173 = v201;
  *v227 = v202;
  v172[1] = v173;
  *(v228 + v231) = v200;
  v234 = v233;
  sub_261CFCA14();
  v234 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v234 = v204;
  v235 = v203;
  sub_261CFCA14();
  LOBYTE(v234) = v153;
  sub_261CFCA14();

  sub_261AE6A40(v170, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v225);
  return sub_261AE6A40(v220, &unk_27FEDD950, &unk_261D01440);
}

id sub_261B7B71C()
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 saveRequest];
  v3 = [v2 store];

  v4 = [v3 storeContainerToken];
  if (!v4)
  {
    v6 = [v0 accountCapabilities];
    v7 = [v6 supportsCloudKitSync];

    if (v7)
    {
      v8 = [v0 sharees];
      sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
      v9 = sub_261CFFC64();

      if (v9 >> 62)
      {
        v10 = sub_261D00274();

        v11 = objc_opt_self();
        if (v10 < 0)
        {
          __break(1u);
LABEL_18:
          swift_once();
LABEL_9:
          v14 = sub_261CFF7A4();
          __swift_project_value_buffer(v14, qword_27FEDAFE0);
          v15 = v0;
          v16 = sub_261CFF784();
          v17 = sub_261CFFE64();

          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            *v18 = 138412290;
            v20 = [v15 v1[49]];
            *(v18 + 4) = v20;
            *v19 = v20;
            _os_log_impl(&dword_261AE2000, v16, v17, "Cannot fetch share for list entity with objectID: %@", v18, 0xCu);
            sub_261AE6A40(v19, &unk_27FEDA730, &unk_261D035C0);
            MEMORY[0x26671D560](v19, -1, -1);
            MEMORY[0x26671D560](v18, -1, -1);
          }

          goto LABEL_12;
        }
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

        v11 = objc_opt_self();
      }

      if ([v11 isSharedWithShareeCount:v10 sharingStatus:{objc_msgSend(v0, sel_sharingStatus)}])
      {
        v1 = &unk_279AFB000;
        v12 = [v0 objectID];
        v23[0] = 0;
        v13 = [v3 fetchShareForListWithID:v12 error:v23];

        if (!v23[0])
        {

          result = v13;
          goto LABEL_14;
        }

        v9 = v23[0];

        swift_willThrow();
        if (qword_27FED9930 == -1)
        {
          goto LABEL_9;
        }

        goto LABEL_18;
      }
    }

LABEL_12:

    goto LABEL_13;
  }

  v5 = v4;

LABEL_13:
  result = 0;
LABEL_14:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_261B7BA84(uint64_t *a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_261CFC8F4();
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v54 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v52 - v12;
  v13 = sub_261CFC914();
  v14 = *(v13 - 8);
  v61 = v13;
  v62 = v14;
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v57 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v60 = &v52 - v18;
  v19 = sub_261CFC864();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v52 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8);
  v30 = &v52 - v29;
  v31 = sub_261CFC954();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = *a1;
  sub_261B76B88(v30);
  if ((*(v32 + 48))(v30, 1, v31) != 1)
  {
    (*(v32 + 32))(v35, v30, v31);
    sub_261CFC884();
    sub_261CFC884();
    v39 = sub_261CFC854();
    v40 = *(v20 + 8);
    v40(v24, v19);
    v40(v26, v19);
    if (v39)
    {
      (*(v32 + 8))(v35, v31);
      return 1;
    }

    v30 = v59;
    sub_261CFC934();
    v43 = v61;
    v42 = v62;
    v44 = *(v62 + 48);
    if (v44(v30, 1, v61) != 1)
    {
      v59 = *(v42 + 32);
      (v59)(v60, v30, v43);
      v30 = v58;
      sub_261CFC934();
      if (v44(v30, 1, v43) != 1)
      {
        (v59)(v57, v30, v43);
        v45 = v53;
        v46 = v60;
        sub_261CFC904();
        v47 = v54;
        sub_261CFC904();
        LODWORD(v63) = sub_261CFC8E4();
        v48 = *(v55 + 8);
        v49 = v47;
        v50 = v56;
        v48(v49, v56);
        v48(v45, v50);
        v51 = *(v62 + 8);
        v51(v57, v43);
        v51(v46, v43);
        (*(v32 + 8))(v35, v31);
        return (v63 & 1) != 0;
      }

      (*(v62 + 8))(v60, v43);
    }

    (*(v32 + 8))(v35, v31);
    v37 = &qword_27FEDB0D8;
    v38 = &qword_261D050F0;
    goto LABEL_10;
  }

  v37 = &unk_27FEDB0B0;
  v38 = &unk_261D035D0;
LABEL_10:
  sub_261AE6A40(v30, v37, v38);
  return 0;
}

id sub_261B7C084()
{
  v0 = objc_opt_self();
  v1 = sub_261CFFA54();
  v2 = [v0 newCloudContainerForAccountID_];

  return v2;
}

uint64_t sub_261B7C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B7C154(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B7C19C()
{
  result = qword_280D21E20;
  if (!qword_280D21E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDD9E0, &qword_261D014D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E20);
  }

  return result;
}

uint64_t sub_261B7C200(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B7C25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_261B7C2CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_261B7C084();
}

uint64_t sub_261B7C2D8(void *a1)
{
  v2 = v1;
  *(v1 + 16) = a1;
  *(v1 + 24) = 0;
  sub_261B7C464();
  v4 = objc_opt_self();
  v5 = a1;
  sub_261CFCDA4();
  v6 = [v4 daemonUserDefaults];
  v7 = sub_261CFE164();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  v10 = sub_261CFE154();

  v11 = *(v2 + 24);
  *(v2 + 24) = v10;

  return v2;
}

uint64_t sub_261B7C3D8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void *sub_261B7C43C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_261B7C464()
{
  result = qword_27FEDB100;
  if (!qword_27FEDB100)
  {
    _s21PrivacyCheckerWrapperCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB100);
  }

  return result;
}

__n128 sub_261B7C4B8@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for ListEntity();
  v13 = (v12 - 8);
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  UpdateListAppIntent.init()(v44);
  sub_261B0A18C(a1, v19);
  sub_261B0A18C(v19, v17);
  sub_261B59DEC(v44, &v40);
  sub_261CFCBC4();
  sub_261B0A1F0(v19);
  sub_261B59E48(v44);
  v20 = *(a1 + v13[8]);
  sub_261B59DEC(v44, &v40);
  sub_261CFCA04();
  sub_261CFCBC4();
  v21 = *(a1 + v13[10]);
  sub_261CFD2D4();
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  v22 = *(a1 + v13[11]);
  sub_261B59DEC(v44, &v40);
  sub_261CFD2D4();
  v36 = v40;
  v37 = v41;
  *&v38 = v42;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  v23 = *(a1 + v13[12]);
  sub_261B59DEC(v44, &v40);
  sub_261CFD2D4();
  sub_261B7CD38(v11, v9);
  sub_261CFCBC4();
  sub_261B7CDA8(v11);
  sub_261B59E48(v44);
  v24 = *(a1 + v13[15]);
  sub_261B59DEC(v44, &v40);
  sub_261CFD2D4();
  sub_261CFCBC4();
  v25 = *(a1 + v13[16]);
  sub_261CFD2D4();
  sub_261CFCBC4();
  v26 = *(a1 + v13[17]);
  sub_261CFD2D4();
  sub_261CFCBC4();
  v27 = *(a1 + v13[18]);
  sub_261CFD2D4();
  LOBYTE(v36) = v40;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  v28 = *(a1 + v13[19]);
  sub_261B59DEC(v44, &v40);
  sub_261CFD2D4();
  LOBYTE(v36) = v40;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  v29 = *(a1 + v13[20]);
  sub_261B59DEC(v44, &v40);
  sub_261CFD2D4();
  LOBYTE(v36) = v40;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  sub_261AE498C(v34, &v36);
  sub_261AE498C(&v36, &v35);
  sub_261B59DEC(v44, &v40);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(&v36);
  sub_261B59E48(v44);
  sub_261B59DEC(v44, &v40);
  sub_261CFCA04();
  sub_261CFCBC4();
  v30 = *a1;
  sub_261CFCA04();
  LOBYTE(v36) = v40;
  sub_261CFCBC4();
  sub_261B59E48(v44);
  v31 = v44[5];
  *(a3 + 64) = v44[4];
  *(a3 + 80) = v31;
  *(a3 + 96) = v44[6];
  v32 = v44[1];
  *a3 = v44[0];
  *(a3 + 16) = v32;
  result = v44[3];
  *(a3 + 32) = v44[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t UpdateListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 240) = a1;
  v3 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v3;
  *(v2 + 112) = v1[6];
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 256) = v7;
  *(v2 + 264) = v6;

  return MEMORY[0x2822009F8](sub_261B7C9C0, v7, v6);
}

uint64_t sub_261B7C9C0()
{
  sub_261B59DEC(v0 + 16, v0 + 128);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_261B7CA88;
  v2 = *(v0 + 240);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B7CA88()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_261B81C64;
  }

  else
  {
    v7 = sub_261B81C68;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t UpdateListAppIntent.listType.setter(char *a1)
{
  v2 = *(v1 + 96);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.sortingStyle.setter(char *a1)
{
  v2 = *(v1 + 88);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.listLayout.setter(char *a1)
{
  v2 = *(v1 + 80);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.parent.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 48);
  sub_261B7CD38(a1, &v8 - v6);
  sub_261CFCBC4();
  return sub_261B7CDA8(a1);
}

uint64_t sub_261B7CD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B7CDA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t UpdateListAppIntent.badge.setter(__int128 *a1)
{
  v2 = *(v1 + 40);
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 4);
  return sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.color.setter(__int128 *a1)
{
  v2 = *(v1 + 32);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  return sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.title.getter()
{
  v1 = *v0;
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B7CF34(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[2];
  v16 = a2[1];
  v4 = a2[4];
  v14 = *a2;
  v15 = a2[5];
  v5 = a2[6];
  v6 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v13 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  v18 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.title.modify(uint64_t *a1))()
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

uint64_t sub_261B7D178(char *a1, uint64_t *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v14 = *a2;
  v4 = a2[4];
  v5 = a2[7];
  v6 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v13 = a2[6];
  v7 = a2[12];
  v8 = a2[13];
  v15 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t UpdateListAppIntent.type.setter(char *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.type.modify(uint64_t *a1))()
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

uint64_t static UpdateListAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDB108 = a1;
  return result;
}

uint64_t sub_261B7D4A0()
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
  __swift_allocate_value_buffer(v9, qword_27FEDB110);
  __swift_project_value_buffer(v9, qword_27FEDB110);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9938 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_261B7DA48(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v22 - v9;
  sub_261B0A18C(a1, v22 - v9);
  v11 = *a2;
  v22[9] = a2[1];
  v22[10] = v11;
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[5];
  v22[11] = a2[4];
  v22[7] = v14;
  v22[8] = v13;
  v15 = a2[6];
  v16 = a2[7];
  v17 = a2[9];
  v22[1] = a2[8];
  v22[2] = v17;
  v18 = a2[11];
  v22[3] = a2[10];
  v22[4] = v18;
  v19 = a2[12];
  v20 = a2[13];
  v22[5] = v19;
  v22[6] = v15;
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 16);
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListAppIntent.target.modify(uint64_t *a1))()
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
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.name.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B7DDA4(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[5];
  v13 = a2[2];
  v4 = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  v11 = a2[11];
  v12 = a2[6];
  v5 = a2[12];
  v6 = a2[13];
  v16 = *a1;
  v17 = a1[1];
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.name.modify(uint64_t *a1))()
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

uint64_t sub_261B7DFDC(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[5];
  v13 = a2[2];
  v4 = a2[6];
  v9 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v12 = a2[10];
  v5 = a2[11];
  v6 = a2[12];
  v7 = a2[13];
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  v19 = a1[5];
  v20 = a1[6];
  sub_261AF9844(*a1, a1[1]);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.color.modify(uint64_t *a1))()
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

uint64_t sub_261B7E238(uint64_t *a1, uint64_t *a2)
{
  v14 = a2[1];
  v15 = *a2;
  v2 = a2[3];
  v3 = a2[4];
  v13 = a2[2];
  v4 = a2[6];
  v5 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v6 = a2[12];
  v7 = a2[13];
  v16 = a1[2];
  v17 = a1[3];
  v18 = a1[4];
  sub_261AF9C0C(*a1, a1[1]);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.badge.modify(uint64_t *a1))()
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

uint64_t sub_261B7E48C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v21 - v9;
  sub_261B7CD38(a1, v21 - v9);
  v11 = *a2;
  v21[9] = a2[1];
  v21[10] = v11;
  v12 = a2[2];
  v21[7] = a2[3];
  v21[8] = v12;
  v13 = a2[5];
  v21[11] = a2[4];
  v14 = a2[6];
  v15 = a2[7];
  v16 = a2[9];
  v21[1] = a2[8];
  v21[2] = v16;
  v17 = a2[11];
  v21[3] = a2[10];
  v21[4] = v17;
  v18 = a2[12];
  v19 = a2[13];
  v21[5] = v18;
  v21[6] = v13;
  sub_261B7CD38(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B7CDA8(v10);
}

uint64_t (*UpdateListAppIntent.parent.modify(uint64_t *a1))()
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
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.isPinned.getter()
{
  v1 = *(v0 + 56);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B7E764(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.isPinned.modify(uint64_t *a1))()
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
  v4 = *(v1 + 56);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.showsCompleted.getter()
{
  v1 = *(v0 + 64);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B7E9A4(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.showsCompleted.modify(uint64_t *a1))()
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
  v4 = *(v1 + 64);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.autoCategorize.getter()
{
  v1 = *(v0 + 72);
  sub_261CFCBB4();
  return v3;
}

uint64_t sub_261B7EBE4(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = a2[9];
  v10 = a2[8];
  v11 = a2[10];
  v12 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.autoCategorize.modify(uint64_t *a1))()
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
  v4 = *(v1 + 72);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7EE48(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v6 = a2[10];
  v12 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.listLayout.modify(uint64_t *a1))()
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
  v4 = *(v1 + 80);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B7F078(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v10 = a2[8];
  v11 = a2[9];
  v6 = a2[11];
  v12 = a2[10];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.sortingStyle.modify(uint64_t *a1))()
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
  v4 = *(v1 + 88);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7F2A8(char *a1, uint64_t *a2)
{
  v15 = a2[1];
  v16 = *a2;
  v13 = a2[3];
  v14 = a2[2];
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = a2[8];
  v10 = a2[9];
  v11 = a2[10];
  v12 = a2[11];
  v7 = a2[12];
  v8 = a2[13];
  v17 = *a1;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.listType.modify(uint64_t *a1))()
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
  v4 = *(v1 + 96);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v118 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v113 = &v102 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = &v102 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v109 = &v102 - v9;
  v133 = sub_261CFD674();
  v130 = *(v133 - 8);
  v10 = *(v130 + 64);
  MEMORY[0x28223BE20](v133);
  v129 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v127 = &v102 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v132 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD6A4();
  v119 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v115 = &v102 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_261CFD184();
  v22 = *(v121 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v121);
  v25 = &v102 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v116 = &v102 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v102 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v35 = &v102 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8);
  v39 = &v102 - v38;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v120 = *(v19 + 56);
  v120(v39, 1, 1, v18);
  v124 = v19 + 56;
  v105 = sub_261CFF994();
  v137 = 0uLL;
  v40 = *(v105 - 8);
  v104 = *(v40 + 56);
  v108 = (v40 + 56);
  v103 = v35;
  v104(v35, 1, 1, v105);
  v41 = sub_261CFC834();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v125 = v42 + 56;
  v43(v31, 1, 1, v41);
  v126 = *MEMORY[0x277CBA308];
  v128 = *(v22 + 104);
  v131 = v25;
  v44 = v121;
  v128(v25);
  v117 = v22 + 104;
  v45 = sub_261CFCD04();
  v46 = v118;
  *v118 = v45;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB128, &unk_261D05180);
  v120(v39, 1, 1, v119);
  LOBYTE(v137) = 2;
  v134 = v41;
  v135 = v43;
  v43(v31, 1, 1, v41);
  v43(v116, 1, 1, v41);
  v47 = v131;
  (v128)(v131, v126, v44);
  v106 = sub_261AFF54C();
  v46[1] = sub_261CFCBF4();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v122 = *MEMORY[0x277CC9110];
  v123 = *(v130 + 104);
  v130 += 104;
  v123(v129);
  sub_261CFD6B4();
  v48 = v119;
  v120(v39, 1, 1, v119);
  v49 = type metadata accessor for ListEntity();
  (*(*(v49 - 8) + 56))(v109, 1, 1, v49);
  v51 = v134;
  v50 = v135;
  v135(v31, 1, 1, v134);
  v50(v116, 1, 1, v51);
  v52 = v126;
  (v128)(v47, v126, v121);
  sub_261B80F44(&qword_280D227A0, type metadata accessor for ListEntity);
  v118[2] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v53 = v48;
  v54 = v120;
  v120(v39, 1, 1, v53);
  v137 = 0uLL;
  v104(v103, 1, 1, v105);
  v114 = v31;
  v135(v31, 1, 1, v134);
  v55 = v52;
  v56 = v121;
  (v128)(v131, v55, v121);
  v57 = sub_261CFCD24();
  v58 = v118;
  v118[3] = v57;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB130, &qword_261D05190);
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v54(v39, 1, 1, v119);
  v140 = 0;
  v138 = 0u;
  v139 = 0u;
  v137 = 0u;
  v59 = v114;
  v60 = v134;
  v61 = v135;
  v135(v114, 1, 1, v134);
  v61(v116, 1, 1, v60);
  v62 = v128;
  (v128)(v131, v126, v56);
  sub_261AFF5A0();
  v58[4] = sub_261CFCC34();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB138, &qword_261D05198);
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v112 = v39;
  v63 = v119;
  v64 = v120;
  v120(v112, 1, 1, v119);
  *&v139 = 0;
  v137 = 0u;
  v138 = 0u;
  v65 = v59;
  v66 = v134;
  v67 = v135;
  v135(v65, 1, 1, v134);
  v67(v116, 1, 1, v66);
  v68 = v126;
  v69 = v121;
  (v62)(v131, v126, v121);
  sub_261AFF5F4();
  v118[5] = sub_261CFCC34();
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB140, &unk_261D051A0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v70 = v112;
  v64(v112, 1, 1, v63);
  v71 = type metadata accessor for GroupEntity();
  (*(*(v71 - 8) + 56))(v110, 1, 1, v71);
  v72 = v114;
  v73 = v134;
  v74 = v135;
  v135(v114, 1, 1, v134);
  v74(v116, 1, 1, v73);
  (v128)(v131, v68, v69);
  sub_261B80F44(&qword_280D22670, type metadata accessor for GroupEntity);
  v75 = v70;
  v76 = v72;
  v77 = sub_261CFCC34();
  v78 = v118;
  v118[6] = v77;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v120(v75, 1, 1, v119);
  LOBYTE(v137) = 2;
  v109 = sub_261CFFCE4();
  v79 = *(v109 - 1);
  v108 = *(v79 + 56);
  v111 = v79 + 56;
  v108(v113, 1, 1, v109);
  v135(v76, 1, 1, v134);
  v80 = v128;
  (v128)(v131, v126, v121);
  v78[7] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = v122;
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v82 = v112;
  v120(v112, 1, 1, v119);
  LOBYTE(v137) = 2;
  v108(v113, 1, 1, v109);
  v135(v114, 1, 1, v134);
  v83 = v121;
  (v80)(v131, v126, v121);
  v118[8] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v84 = v123;
  (v123)(v129, v81, v133);
  sub_261CFD6B4();
  v85 = v119;
  v86 = v120;
  v120(v82, 1, 1, v119);
  LOBYTE(v137) = 2;
  v108(v113, 1, 1, v109);
  v135(v114, 1, 1, v134);
  (v128)(v131, v126, v83);
  v87 = sub_261CFCD44();
  v88 = v118;
  v118[9] = v87;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB148, &qword_261D051B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v89 = v129;
  (v84)(v129, v122, v133);
  sub_261CFD6B4();
  v90 = v112;
  v86(v112, 1, 1, v85);
  LOBYTE(v137) = 2;
  v91 = v114;
  v93 = v134;
  v92 = v135;
  v135(v114, 1, 1, v134);
  v94 = v116;
  v92(v116, 1, 1, v93);
  (v128)(v131, v126, v121);
  sub_261AFF648();
  v88[10] = sub_261CFCC04();
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB150, qword_261D051B8);
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v89, v122, v133);
  sub_261CFD6B4();
  v120(v90, 1, 1, v119);
  LOBYTE(v137) = 10;
  v96 = v134;
  v95 = v135;
  v135(v91, 1, 1, v134);
  v95(v94, 1, 1, v96);
  (v128)(v131, v126, v121);
  sub_261AFF69C();
  v97 = sub_261CFCC04();
  v98 = v118;
  v118[11] = v97;
  sub_261CFF9B4();
  sub_261CFD874();
  (v123)(v129, v122, v133);
  sub_261CFD6B4();
  v120(v90, 1, 1, v119);
  LOBYTE(v137) = 2;
  v100 = v134;
  v99 = v135;
  v135(v91, 1, 1, v134);
  v99(v116, 1, 1, v100);
  (v128)(v131, v126, v121);
  v98[12] = sub_261CFCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v136 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v98[13] = result;
  return result;
}

uint64_t sub_261B80F44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_261B80F90()
{
  result = qword_27FEDB158;
  if (!qword_27FEDB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB158);
  }

  return result;
}

unint64_t sub_261B80FE8()
{
  result = qword_27FEDB160;
  if (!qword_27FEDB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB160);
  }

  return result;
}

unint64_t sub_261B810C0()
{
  result = qword_27FEDB168;
  if (!qword_27FEDB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB168);
  }

  return result;
}

uint64_t sub_261B81114@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9938 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B81204(uint64_t a1)
{
  *(v2 + 240) = a1;
  v3 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v3;
  *(v2 + 112) = v1[6];
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 256) = v7;
  *(v2 + 264) = v6;

  return MEMORY[0x2822009F8](sub_261B812BC, v7, v6);
}

uint64_t sub_261B812BC()
{
  sub_261B59DEC(v0 + 16, v0 + 128);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_261B81384;
  v2 = *(v0 + 240);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B81384()
{
  v2 = *v1;
  v3 = *(*v1 + 272);
  v4 = *v1;
  *(*v1 + 280) = v0;

  v5 = *(v2 + 264);
  v6 = *(v2 + 256);
  if (v0)
  {
    v7 = sub_261B81524;
  }

  else
  {
    v7 = sub_261B814C0;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_261B814C0()
{
  v1 = *(v0 + 248);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261B81524()
{
  v1 = v0[31];

  v2 = v0[1];
  v3 = v0[35];

  return v2();
}

uint64_t sub_261B815D4(uint64_t a1)
{
  v2 = sub_261B810C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t destroy for UpdateListAppIntent(uint64_t *a1)
{
  v2 = *a1;

  v3 = a1[1];

  v4 = a1[2];

  v5 = a1[3];

  v6 = a1[4];

  v7 = a1[5];

  v8 = a1[6];

  v9 = a1[7];

  v10 = a1[8];

  v11 = a1[9];

  v12 = a1[10];

  v13 = a1[11];

  v14 = a1[12];

  v15 = a1[13];
}

void *initializeWithCopy for UpdateListAppIntent(void *a1, void *a2)
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
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  v10 = a2[13];
  a1[12] = a2[12];
  a1[13] = v10;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListAppIntent(uint64_t *a1, uint64_t *a2)
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

  v10 = a1[6];
  a1[6] = a2[6];
  sub_261CFCDA4();

  v11 = a1[7];
  a1[7] = a2[7];
  sub_261CFCDA4();

  v12 = a1[8];
  a1[8] = a2[8];
  sub_261CFCDA4();

  v13 = a1[9];
  a1[9] = a2[9];
  sub_261CFCDA4();

  v14 = a1[10];
  a1[10] = a2[10];
  sub_261CFCDA4();

  v15 = a1[11];
  a1[11] = a2[11];
  sub_261CFCDA4();

  v16 = a1[12];
  a1[12] = a2[12];
  sub_261CFCDA4();

  v17 = a2[13];
  v18 = a1[13];
  a1[13] = v17;
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void *assignWithTake for UpdateListAppIntent(void *a1, _OWORD *a2)
{
  v4 = *a1;

  v5 = a1[1];
  *a1 = *a2;

  v6 = a1[2];

  v7 = a1[3];
  *(a1 + 1) = a2[1];

  v8 = a1[4];

  v9 = a1[5];
  *(a1 + 2) = a2[2];

  v10 = a1[6];

  v11 = a1[7];
  *(a1 + 3) = a2[3];

  v12 = a1[8];

  v13 = a1[9];
  *(a1 + 4) = a2[4];

  v14 = a1[10];

  v15 = a1[11];
  *(a1 + 5) = a2[5];

  v16 = a1[12];

  v17 = a1[13];
  *(a1 + 6) = a2[6];

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateListAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for UpdateListAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of UpdateListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

unint64_t sub_261B81C00()
{
  result = qword_27FEDABE8;
  if (!qword_27FEDABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDABA8, &qword_261D03840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDABE8);
  }

  return result;
}

uint64_t sub_261B81C6C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB170);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB170);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B81DDC()
{
  v1 = *(v0 + 80);
  sub_261CFCBB4();
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  if (*(v0 + 208))
  {
    sub_261CFCBB4();
    v4 = *(v0 + 16);
    *(v0 + 168) = v4;
    sub_261CFCBB4();
    v5 = *(v0 + 24);
    *(v0 + 176) = v5;
    v6 = swift_task_alloc();
    *(v0 + 184) = v6;
    *v6 = v0;
    v6[1] = sub_261B8211C;
    v7 = *(v0 + 72);
    v8 = 1;
  }

  else
  {
    sub_261CFCBB4();
    v4 = *(v0 + 40);
    *(v0 + 128) = v4;
    sub_261CFCBB4();
    v5 = *(v0 + 48);
    *(v0 + 136) = v5;
    v9 = swift_task_alloc();
    *(v0 + 144) = v9;
    *v9 = v0;
    v9[1] = sub_261B81F30;
    v10 = *(v0 + 72);
    v8 = 0;
  }

  return sub_261B82408(v8, v4, v5);
}

uint64_t sub_261B81F30(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = v4[15];
    v9 = sub_261B82308;
  }

  else
  {
    v10 = v4[16];
    v11 = v4[17];

    v4[20] = a1;
    v7 = v4[14];
    v8 = v4[15];
    v9 = sub_261B82068;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_261B82068()
{
  v1 = v0[20];
  v2 = v0[13];
  v3 = v0[8];

  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261B8211C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 184);
  v6 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v7 = v4[14];
    v8 = v4[15];
    v9 = sub_261B82388;
  }

  else
  {
    v10 = v4[21];
    v11 = v4[22];

    v4[25] = a1;
    v7 = v4[14];
    v8 = v4[15];
    v9 = sub_261B82254;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_261B82254()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[8];

  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v4 = v0[1];

  return v4();
}

uint64_t sub_261B82308()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_261B82388()
{
  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_261B82408(char a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 160) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0) - 8) + 64) + 15;
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v6 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v4 + 72) = v6;
  v7 = *(v6 - 8);
  *(v4 + 80) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 88) = swift_task_alloc();
  v9 = type metadata accessor for ReminderEntity();
  *(v4 + 96) = v9;
  v10 = *(v9 - 8);
  *(v4 + 104) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v12 = sub_261CFD884();
  *(v4 + 136) = v12;
  v13 = *(v12 - 8);
  *(v4 + 144) = v13;
  v14 = *(v13 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();
  v15 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_261B82610, 0, 0);
}

uint64_t sub_261B82610()
{
  v159 = v0;
  v2 = v0;
  v158[5] = *MEMORY[0x277D85DE8];
  v3 = *(v0 + 40);
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = (*(v0 + 144) + 8);
    v8 = v3 + 40;
    v149 = v3 + 40;
    while (2)
    {
      v153 = v5;
      v9 = (v8 + 16 * v6);
      v10 = v6;
      while (1)
      {
        if (v10 >= v4)
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          sub_261B01D70();
          swift_allocError();
          *v134 = 6;
          swift_willThrow();

LABEL_81:
          sub_261B83750(*(v2 + 88), _s20CategorizedRemindersV15FetchedReminderVMa);
          goto LABEL_82;
        }

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_79;
        }

        v1 = *(v2 + 152);
        v11 = *(v2 + 136);
        v12 = *(v9 - 1);
        v13 = *v9;
        sub_261CFD104();
        sub_261CFD874();
        v14 = sub_261CFFAF4();
        v16 = v15;

        (*v7)(v1, v11);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          break;
        }

        v9 += 2;
        ++v10;
        v2 = v156;
        if (v6 == v4)
        {
          v5 = v153;
          goto LABEL_16;
        }
      }

      v5 = v153;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_261B41B60(0, *(v153 + 2) + 1, 1, v153);
      }

      v2 = v156;
      v8 = v149;
      v19 = *(v5 + 2);
      v18 = *(v5 + 3);
      v1 = (v19 + 1);
      if (v19 >= v18 >> 1)
      {
        v5 = sub_261B41B60((v18 > 1), v19 + 1, 1, v5);
      }

      *(v5 + 2) = v1;
      v20 = &v5[16 * v19];
      *(v20 + 4) = v14;
      *(v20 + 5) = v16;
      if (v6 != v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v21 = *(v5 + 2);
  if (!v21)
  {
    if (qword_27FED9940 != -1)
    {
      swift_once();
    }

    v28 = sub_261CFF7A4();
    __swift_project_value_buffer(v28, qword_27FEDB170);
    v29 = sub_261CFF784();
    v30 = sub_261CFFE64();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_261AE2000, v29, v30, "[EditHashtagsInRemindersIntent] Hashtags array has no valid values despite prompts.", v31, 2u);
      MEMORY[0x26671D560](v31, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v33 = 21;
LABEL_31:
    *v32 = v33;
    swift_willThrow();
    goto LABEL_47;
  }

  v22 = *(*(v2 + 32) + 16);
  if (!v22)
  {
    if (qword_27FED9940 != -1)
    {
LABEL_86:
      swift_once();
    }

    v34 = sub_261CFF7A4();
    __swift_project_value_buffer(v34, qword_27FEDB170);
    v35 = sub_261CFF784();
    v36 = sub_261CFFE64();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_261AE2000, v35, v36, "[EditHashtagsInRemindersIntent] Reminders array is empty despite prompts.", v37, 2u);
      MEMORY[0x26671D560](v37, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v33 = 24;
    goto LABEL_31;
  }

  if (v21 != 1)
  {
    v23 = sub_261CFD104();
    v24 = sub_261B49EB8(v23);

    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = sub_261C437E4(*(v24 + 16), 0);
      v27 = sub_261C4390C(v158, v26 + 4, v25, v24);
      sub_261B57B30();
      if (v27 != v25)
      {
        __break(1u);
      }

      v5 = v26;
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }
  }

  if (qword_27FED9940 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v39 = *(v2 + 32);
    v38 = *(v2 + 40);
    v40 = sub_261CFF7A4();
    __swift_project_value_buffer(v40, qword_27FEDB170);
    sub_261CFD104();
    sub_261CFD104();
    v41 = sub_261CFF784();
    v42 = sub_261CFFE84();

    if (os_log_type_enabled(v41, v42))
    {
      v145 = v42;
      v154 = v5;
      v43 = *(v2 + 104);
      log = v41;
      v150 = *(v2 + 96);
      v44 = *(v2 + 32);
      v45 = *(v2 + 160);
      v46 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v157 = v141;
      *v46 = 136315650;
      if (v45)
      {
        v47 = 0xD000000000000024;
      }

      else
      {
        v47 = 0xD00000000000001FLL;
      }

      if (v45)
      {
        v48 = "eminders List AppIntent";
      }

      else
      {
        v48 = "omRemindersAppIntent";
      }

      v49 = sub_261B879C8(v47, v48 | 0x8000000000000000, &v157);

      *(v46 + 4) = v49;
      v143 = v46;
      *(v46 + 12) = 2080;
      v158[0] = MEMORY[0x277D84F90];
      sub_261B39FA4(0, v22, 0);
      v50 = v158[0];
      v51 = v44 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
      v52 = *(v43 + 72);
      do
      {
        v53 = *(v2 + 128);
        sub_261B836E8(v51, v53, type metadata accessor for ReminderEntity);
        v54 = v53 + *(v150 + 40);
        v55 = AppEntityID.entityIdentifierString.getter();
        v57 = v56;
        sub_261B83750(v53, type metadata accessor for ReminderEntity);
        v158[0] = v50;
        v59 = *(v50 + 16);
        v58 = *(v50 + 24);
        if (v59 >= v58 >> 1)
        {
          sub_261B39FA4((v58 > 1), v59 + 1, 1);
          v50 = v158[0];
        }

        *(v50 + 16) = v59 + 1;
        v60 = v50 + 16 * v59;
        *(v60 + 32) = v55;
        *(v60 + 40) = v57;
        v51 += v52;
        --v22;
        v2 = v156;
      }

      while (v22);
      v61 = MEMORY[0x277D837D0];
      v62 = MEMORY[0x26671C340](v50, MEMORY[0x277D837D0]);
      v64 = v63;

      v65 = sub_261B879C8(v62, v64, &v157);

      *(v143 + 14) = v65;
      *(v143 + 22) = 2080;
      v5 = v154;
      v66 = sub_261CFD104();
      v67 = MEMORY[0x26671C340](v66, v61);
      v69 = v68;

      v70 = sub_261B879C8(v67, v69, &v157);

      *(v143 + 24) = v70;
      v41 = log;
      _os_log_impl(&dword_261AE2000, log, v145, "[%s] Edit hashtags in reminders with ids: %s, hashtags: %s", v143, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v141, -1, -1);
      MEMORY[0x26671D560](v143, -1, -1);
    }

    v71 = *(*(v2 + 48) + 24);
    v72 = sub_261B9A654(*(v2 + 32), 1);
    v84 = sub_261B9B744(3, v72, v73);
    v155 = v5;
    v85 = *(v2 + 48);

    v1 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v1 setSaveIsNoopIfNoChangedKeys_];
    v138 = *(v84 + 16);
    if (!v138)
    {
      break;
    }

    v86 = 0;
    v5 = (*(v2 + 160) ^ 1u);
    v135 = *(v2 + 104);
    v87 = MEMORY[0x277D84F90];
    v139 = *(v2 + 72);
    v140 = *(v2 + 80);
    v88 = &unk_279AFB000;
    v136 = v84;
    v137 = v1;
    while (1)
    {
      if (v86 >= *(v84 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v2 = v156;
      v89 = v156[11];
      sub_261B836E8(v84 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v86, v89, _s20CategorizedRemindersV15FetchedReminderVMa);
      v90 = *(v89 + *(v139 + 20));
      v91 = sub_261CFFDF4();
      v92 = [v91 supportsHashtags];

      v151 = v87;
      if (!v92)
      {
        goto LABEL_80;
      }

      v93 = [v90 parentReminder];
      loga = v86;
      if (v93)
      {
        v94 = v93;
        v95 = [v1 v88[107]];
      }

      else
      {
        v95 = 0;
      }

      v96 = [v1 v88[107]];
      v22 = sub_261CFE144();
      sub_261B83638(&qword_27FEDA9B8, MEMORY[0x277D45CF0]);
      v97 = v96;
      sub_261CFE194();
      v98 = v156[2];
      v99 = *(v155 + 2);
      sub_261CFD104();
      if (v99)
      {
        break;
      }

LABEL_61:
      v103 = v156[8];

      v104 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
      v105 = v95;
      v106 = v97;
      v107 = [v106 listChangeItem];
      if (!v107 || (v108 = v107, v109 = [v107 storage], v108, !v109))
      {
        v131 = v156[8];

        sub_261B01D70();
        swift_allocError();
        *v132 = 11;
        swift_willThrow();

        sub_261B83680(v131);
        goto LABEL_81;
      }

      v110 = [v106 storage];
      v144 = [v106 accountCapabilities];
      v146 = v110;
      if (v95)
      {
        v95 = [v105 storage];
      }

      v111 = v156[15];
      v142 = v156[14];
      v113 = v156[7];
      v112 = v156[8];
      sub_261AE7A78(v112, v113);
      sub_261C7EDC4(v146, v109, v144, v95, 0, v113, v111);

      sub_261B83680(v112);
      sub_261B836E8(v111, v142, type metadata accessor for ReminderEntity);
      v87 = v151;
      v114 = v105;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v87 = sub_261B41560(0, v151[2] + 1, 1, v151);
      }

      v116 = v87[2];
      v115 = v87[3];
      if (v116 >= v115 >> 1)
      {
        v87 = sub_261B41560(v115 > 1, v116 + 1, 1, v87);
      }

      v118 = v156[14];
      v117 = v156[15];
      v2 = v156[11];
      v86 = (&loga->isa + 1);

      sub_261B83750(v117, type metadata accessor for ReminderEntity);
      v87[2] = v116 + 1;
      sub_261B837B0(v118, v87 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v116);
      sub_261B83750(v2, _s20CategorizedRemindersV15FetchedReminderVMa);
      v1 = v137;
      v84 = v136;
      v88 = &unk_279AFB000;
      if ((&loga->isa + 1) == v138)
      {
        goto LABEL_72;
      }
    }

    v100 = 0;
    v101 = (v155 + 40);
    while (v100 < *(v155 + 2))
    {
      ++v100;
      v102 = *(v101 - 1);
      v22 = *v101;
      sub_261CFD104();
      sub_261CFE0F4();

      v101 += 2;
      if (v99 == v100)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_84:
    swift_once();
  }

  v87 = MEMORY[0x277D84F90];
LABEL_72:
  v152 = v87;

  v2 = v156;
  v156[3] = 0;
  v119 = [v1 saveSynchronouslyWithError_];
  v120 = v156[3];
  if (v119)
  {
    v121 = v156[19];
    v123 = v156[15];
    v122 = v156[16];
    v124 = v156[14];
    v125 = v156[11];
    v126 = v156[8];
    v127 = v156[7];
    v128 = v120;

    v129 = v156[1];
    v130 = *MEMORY[0x277D85DE8];

    return v129(v152);
  }

  v133 = v120;
  sub_261CFD654();

  swift_willThrow();
LABEL_82:

LABEL_47:

  v74 = *(v2 + 152);
  v75 = *(v2 + 120);
  v76 = *(v2 + 128);
  v77 = *(v2 + 112);
  v78 = *(v2 + 88);
  v79 = *(v2 + 64);
  v80 = v156[7];

  v81 = v156[1];
  v82 = *MEMORY[0x277D85DE8];

  return v81();
}

unint64_t sub_261B834D8()
{
  result = qword_280D21E10;
  if (!qword_280D21E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE0D0, qword_261D11550);
    sub_261B83638(&qword_280D22350, type metadata accessor for ReminderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E10);
  }

  return result;
}

uint64_t sub_261B8358C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B83638(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261B83680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B836E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B83750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B837B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SmartListEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t SmartListEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B838C4, 0, 0);
}

uint64_t sub_261B838C4()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0E3F8;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5EA24)("SmartListEntityQuery.entitiesForIdentifiers", 43, 2, v4, v5);
}

uint64_t sub_261B839B8()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_261B84F10;
  v3 = *(v0 + 16);

  return sub_261C5EE64("SmartListEntityQuery.suggestedEntities", 38, 2, v3);
}

uint64_t sub_261B83A7C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261B83B08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B83B2C, 0, 0);
}

uint64_t sub_261B83B2C()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0D104;
  v5 = v0[2];
  v4 = v0[3];

  return (sub_261C5EA24)("SmartListEntityQuery.entitiesForIdentifiers", 43, 2, v4, v5);
}

uint64_t sub_261B83BFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B83C20, 0, 0);
}

uint64_t sub_261B83C20()
{
  v1 = *(v0 + 24);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B83CE4;
  v3 = *(v0 + 24);

  return sub_261C5EE64("SmartListEntityQuery.suggestedEntities", 38, 2, v3);
}

uint64_t sub_261B83CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *v2;

  if (v1)
  {
    v8 = *(v7 + 8);

    return v8();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_261B84F0C, 0, 0);
  }
}

uint64_t sub_261B83E58(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261B849E8();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t sub_261B83F30()
{
  v1 = *(v0 + 16);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_261B0CE60;
  v3 = *(v0 + 16);

  return sub_261C5F3B0("SmartListEntityQuery.allEntities", 32, 2, v3);
}

uint64_t static SmartListEntityQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v33 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v35 = &v27 - v5;
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v31 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v32 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v7 + 104);
  v20(v10, v19, v6);
  sub_261CFD6C4();
  v30 = *(v16 + 56);
  v30(v35, 1, 1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA130, &qword_261D021D0);
  v29 = v16 + 56;
  v21 = *(v16 + 72);
  v22 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_261D05320;
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v20(v10, v19, v6);
  v23 = v33;
  sub_261CFD6C4();
  v30(v23, 0, 1, v31);
  v24 = v34;
  sub_261CFCEF4();
  v25 = sub_261CFCEE4();
  return (*(*(v25 - 8) + 56))(v24, 0, 1, v25);
}

uint64_t sub_261B846BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B846E0, 0, 0);
}

uint64_t sub_261B846E0()
{
  v1 = *(v0 + 24);
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_261B0D32C;
  v3 = *(v0 + 24);

  return sub_261C5F3B0("SmartListEntityQuery.allEntities", 32, 2, v3);
}

unint64_t sub_261B847AC()
{
  result = qword_27FEDB190;
  if (!qword_27FEDB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB190);
  }

  return result;
}

unint64_t sub_261B84804()
{
  result = qword_27FEDB198;
  if (!qword_27FEDB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB198);
  }

  return result;
}

unint64_t sub_261B8485C()
{
  result = qword_27FEDB1A0;
  if (!qword_27FEDB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1A0);
  }

  return result;
}

unint64_t sub_261B848B4()
{
  result = qword_27FEDB1A8;
  if (!qword_27FEDB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1A8);
  }

  return result;
}

unint64_t sub_261B84908()
{
  result = qword_280D22158;
  if (!qword_280D22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22158);
  }

  return result;
}

unint64_t sub_261B84960()
{
  result = qword_27FEDB1B0;
  if (!qword_27FEDB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB1B8, qword_261D053C8);
    sub_261B84908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1B0);
  }

  return result;
}

unint64_t sub_261B849E8()
{
  result = qword_27FEDB1C0;
  if (!qword_27FEDB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1C0);
  }

  return result;
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B0E3FC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261B0E3FC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.suggestedEntities(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_261B0E3FC;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.allEntities(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3);
}

void sub_261B84F14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v92 = sub_261CFEC94();
  v7 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v93 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD674();
  v89 = *(v9 - 8);
  v90 = v9;
  v10 = *(v89 + 64);
  MEMORY[0x28223BE20](v9);
  v91 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v87 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD6A4();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v86 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFDDD4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = (&v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = type metadata accessor for AppEntityID();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = (&v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isGroup])
  {
    v30 = [a1 objectID];
    v85 = a1;
    v31 = v30;
    v32 = [v30 entityName];
    v77 = a3;
    v33 = v32;
    v34 = sub_261CFFA74();
    v82 = a2;
    v83 = v3;
    v35 = v34;
    v37 = v36;

    v38 = [v31 uuid];
    v39 = v29 + *(v26 + 20);
    sub_261CFD834();

    v40 = *(v26 + 24);
    v41 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v42 = *(*(v41 - 8) + 56);
    v84 = v29;
    v42(v29 + v40, 1, 1, v41);
    *v29 = v35;
    v29[1] = v37;
    v43 = v85;
    v44 = [v85 name];
    v45 = sub_261CFFA74();
    v80 = v46;
    v81 = v45;

    sub_261CFDE54();
    v47 = sub_261CFDDA4();
    *v25 = [v43 remObjectID];
    (*(v22 + 104))(v25, *MEMORY[0x277D45C90], v21);
    v96 = sub_261CFDDC4();

    (*(v22 + 8))(v25, v21);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
    sub_261B86228(&qword_280D227A0, type metadata accessor for ListEntity);
    v79 = sub_261CFCA64();
    v48 = v77;
    *v77 = v79;
    v49 = type metadata accessor for GroupEntity();
    v50 = *(v49 + 24);
    v51 = v49;
    v76 = v49;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    v78 = sub_261CFCB24();
    *(v48 + v50) = v78;
    v52 = *(v51 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
    sub_261CFF9B4();
    sub_261CFD874();
    v75 = *MEMORY[0x277CC9110];
    v53 = v90;
    v89 = *(v89 + 104);
    v54 = v91;
    (v89)(v91);
    v55 = v86;
    sub_261CFD6B4();
    *(v48 + v52) = MEMORY[0x2667199E0](v55, &type metadata for UpdateGroupNameAppIntent);
    v56 = v76;
    v74 = v76[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
    sub_261CFF9B4();
    sub_261CFD874();
    (v89)(v54, v75, v53);
    sub_261CFD6B4();
    v57 = MEMORY[0x2667199F0](v55, &type metadata for UpdateListShowsCompletedAppIntent);
    *(v48 + v74) = v57;
    v58 = v56[9];
    *(v48 + v58) = 0;
    sub_261B7C0F0(v84, v48 + v56[5]);
    v59 = type metadata accessor for AnyListEntityLazyImage();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    v62 = swift_allocObject();
    v94 = MEMORY[0x277D84F90];
    sub_261B86228(&qword_280D22D90, MEMORY[0x277D44D10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B7C19C();
    sub_261D001D4();
    v63 = sub_261CFECB4();
    v64 = *(v63 + 48);
    v65 = *(v63 + 52);
    swift_allocObject();
    *(v62 + 128) = sub_261CFECA4();
    v66 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v67 = sub_261CFD074();
    (*(*(v67 - 8) + 56))(v62 + v66, 1, 1, v67);
    *(v62 + 105) = 0u;
    *(v62 + 80) = 0u;
    *(v62 + 96) = 0u;
    *(v62 + 48) = 0u;
    *(v62 + 64) = 0u;
    *(v62 + 16) = 0u;
    *(v62 + 32) = 0u;
    *(v62 + 121) = 3;
    *(v48 + v56[10]) = v62;
    LOBYTE(v94) = v96 & 1;
    sub_261CFD2E4();
    v68 = v82;
    *(v48 + v58) = v82;
    v94 = v81;
    v95 = v80;
    v69 = v68;
    sub_261CFD104();
    sub_261CFCA14();
    v70 = MEMORY[0x277D84F90];
    if (v69)
    {
      v70 = v69;
    }

    v94 = v70;
    sub_261CFCA14();

    sub_261B7C200(v84);
  }

  else
  {

    v71 = objc_opt_self();
    v72 = sub_261CFFA54();
    [v71 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

void sub_261B857C8(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_261CFEC94();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v89[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_261CFD674();
  v104 = *(v10 - 8);
  v105 = v10;
  v11 = *(v104 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v89[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_261CFD884();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v103 = &v89[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_261CFFA44();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v102 = &v89[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = sub_261CFD6A4();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v101 = &v89[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = sub_261CFDDD4();
  v99 = *(v23 - 8);
  v100 = v23;
  v24 = *(v99 + 64);
  MEMORY[0x28223BE20](v23);
  v98 = &v89[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v97 = type metadata accessor for AppEntityID();
  v26 = *(*(v97 - 8) + 64);
  MEMORY[0x28223BE20](v97);
  v28 = &v89[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v29 = type metadata accessor for ListEntity();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v33 = &v89[-((v32 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (![a1 isGroup])
  {

    v44 = objc_opt_self();
    v45 = sub_261CFFA54();
    [v44 internalErrorWithDebugDescription_];

    swift_willThrow();
    return;
  }

  v92 = v13;
  v34 = MEMORY[0x277D84F90];
  v94 = v9;
  v95 = a3;
  v93 = v6;
  v96 = v28;
  if (a2)
  {
    v107 = a2;
    if (a2 >> 62)
    {
      v35 = sub_261D00274();
      if (v35)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v35 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v35)
      {
LABEL_5:
        v108 = v34;
        sub_261B3A0E8(0, v35 & ~(v35 >> 63), 0);
        v106 = v35;
        if (v35 < 0)
        {
          __break(1u);
          return;
        }

        v36 = 0;
        v37 = v107;
        v34 = v108;
        v38 = v107 & 0xC000000000000001;
        do
        {
          if (v38)
          {
            v39 = MEMORY[0x26671CA10](v36, v37);
          }

          else
          {
            v39 = *(v37 + 8 * v36 + 32);
          }

          v40 = v39;
          v41 = a1;
          sub_261B797FC(v40, a1);
          v108 = v34;
          v43 = *(v34 + 16);
          v42 = *(v34 + 24);
          if (v43 >= v42 >> 1)
          {
            sub_261B3A0E8(v42 > 1, v43 + 1, 1);
            v34 = v108;
          }

          ++v36;
          *(v34 + 16) = v43 + 1;
          sub_261B01E2C(v33, v34 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v43);
          v37 = v107;
        }

        while (v106 != v36);
      }
    }

    goto LABEL_18;
  }

  v34 = 0;
LABEL_18:
  v91 = a1;
  v46 = [a1 objectID];
  v47 = [v46 entityName];
  v48 = sub_261CFFA74();
  v50 = v49;

  v51 = [v46 uuid];
  v53 = v96;
  v52 = v97;
  v54 = v96 + *(v97 + 20);
  sub_261CFD834();

  v55 = *(v52 + 24);
  v56 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v56 - 8) + 56))(v53 + v55, 1, 1, v56);
  *v53 = v48;
  v53[1] = v50;
  v57 = [a1 name];
  v106 = sub_261CFFA74();
  v97 = v58;

  sub_261CFDE54();
  v59 = sub_261CFDDA4();
  v60 = [a1 remObjectID];
  v62 = v98;
  v61 = v99;
  *v98 = v60;
  v63 = v100;
  (*(v61 + 104))(v62, *MEMORY[0x277D45C90], v100);
  v110 = sub_261CFDDC4();

  (*(v61 + 8))(v62, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
  sub_261B86228(&qword_280D227A0, type metadata accessor for ListEntity);
  v100 = sub_261CFCA64();
  v64 = v95;
  *v95 = v100;
  v65 = type metadata accessor for GroupEntity();
  v66 = *(v65 + 24);
  v67 = v65;
  v107 = v65;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v68 = sub_261CFCB24();
  *(v64 + v66) = v68;
  v98 = *(v67 + 28);
  v99 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
  sub_261CFF9B4();
  sub_261CFD874();
  v90 = *MEMORY[0x277CC9110];
  v69 = v105;
  v104 = *(v104 + 104);
  v70 = v92;
  (v104)(v92);
  v71 = v101;
  sub_261CFD6B4();
  v72 = MEMORY[0x2667199E0](v71, &type metadata for UpdateGroupNameAppIntent);
  *(v98 + v64) = v72;
  v98 = *(v107 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
  sub_261CFF9B4();
  sub_261CFD874();
  (v104)(v70, v90, v69);
  sub_261CFD6B4();
  v73 = MEMORY[0x2667199F0](v71, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v98 + v64) = v73;
  v74 = v107;
  v105 = *(v107 + 36);
  *(v64 + v105) = 0;
  v75 = v64 + v74[5];
  v76 = v64;
  v77 = v96;
  sub_261B7C0F0(v96, v75);
  v78 = type metadata accessor for AnyListEntityLazyImage();
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  v81 = swift_allocObject();
  v82 = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  sub_261B86228(&qword_280D22D90, MEMORY[0x277D44D10]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  v83 = sub_261CFECB4();
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  swift_allocObject();
  *(v81 + 128) = sub_261CFECA4();
  v86 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v87 = sub_261CFD074();
  (*(*(v87 - 8) + 56))(v81 + v86, 1, 1, v87);
  *(v81 + 105) = 0u;
  *(v81 + 80) = 0u;
  *(v81 + 96) = 0u;
  *(v81 + 48) = 0u;
  *(v81 + 64) = 0u;
  *(v81 + 16) = 0u;
  *(v81 + 32) = 0u;
  *(v81 + 121) = 3;
  *(v76 + *(v107 + 40)) = v81;
  LOBYTE(v108) = v110 & 1;
  sub_261CFD2E4();
  *(v76 + v105) = v34;
  v108 = v106;
  v109 = v97;
  sub_261CFD104();
  sub_261CFCA14();
  if (v34)
  {
    v88 = v34;
  }

  else
  {
    v88 = v82;
  }

  v108 = v88;
  sub_261CFCA14();

  sub_261B7C200(v77);
}

uint64_t sub_261B86228(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall EntityQuery.postAnalytics(queryName:category:)(Swift::String queryName, RemindersAppIntents::RemindersAppIntentCategory category)
{
  object = queryName._object;
  countAndFlagsBits = queryName._countAndFlagsBits;
  v4 = sub_261D00764();
  v6 = v5;
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v7 = sub_261CFF7A4();
  __swift_project_value_buffer(v7, qword_27FEDB1E0);
  sub_261CFD104();
  sub_261CFD104();
  oslog = sub_261CFF784();
  v8 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    v11 = sub_261B879C8(v4, v6, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_261B879C8(countAndFlagsBits, object, &v13);
    _os_log_impl(&dword_261AE2000, oslog, v8, "Logging Analytics for query: %s.%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v10, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_261B871D0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB1E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB1E0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::RemindersAppIntentCategory_optional __swiftcall RemindersAppIntentCategory.init(rawValue:)(Swift::String rawValue)
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

unint64_t RemindersAppIntentCategory.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x704163696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_261B87348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B873B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x704163696C627570;
  }

  if (v3)
  {
    v5 = 0xEF746E65746E4970;
  }

  else
  {
    v5 = 0x8000000261D14240;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x704163696C627570;
  }

  if (*a2)
  {
    v7 = 0x8000000261D14240;
  }

  else
  {
    v7 = 0xEF746E65746E4970;
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

uint64_t sub_261B87470()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261B87504()
{
  *v0;
  sub_261CFFB14();
}

uint64_t sub_261B87584()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261B87614@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
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

void sub_261B87674(unint64_t *a1@<X8>)
{
  v2 = 0x8000000261D14240;
  v3 = 0x704163696C627570;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEF746E65746E4970;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_261B876C4()
{
  v1 = sub_261CFCF84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == *MEMORY[0x277CBA140])
  {
    return 7368801;
  }

  if (v6 == *MEMORY[0x277CBA138])
  {
    return 4803651;
  }

  if (v6 == *MEMORY[0x277CBA148])
  {
    return 1769105779;
  }

  if (v6 == *MEMORY[0x277CBA168])
  {
    return 0x74756374726F6873;
  }

  if (v6 == *MEMORY[0x277CBA158])
  {
    return 0x676E6974736574;
  }

  if (v6 == *MEMORY[0x277CBA128])
  {
    return 0x75426E6F69746361;
  }

  if (v6 == *MEMORY[0x277CBA170])
  {
    return 0x6867696C746F7073;
  }

  if (v6 == *MEMORY[0x277CBA130])
  {
    return 0x436C6F72746E6F63;
  }

  if (v6 == *MEMORY[0x277CBA150])
  {
    return 0x746567646977;
  }

  if (v6 == *MEMORY[0x277CBA160])
  {
    return 0x6E61747369737361;
  }

  v10[0] = sub_261CFCF74();
  v8 = sub_261D005F4();
  v10[0] = 0x2D6E776F6E6B6E75;
  v10[1] = 0xE800000000000000;
  MEMORY[0x26671C210](v8);

  v9 = v10[0];
  (*(v2 + 8))(v5, v1);
  return v9;
}

uint64_t sub_261B879C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_261CFD104();
  v6 = sub_261B87B54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_261B87C60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_261B87A94()
{
  result = qword_27FEDA438;
  if (!qword_27FEDA438)
  {
    sub_261CFCF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA438);
  }

  return result;
}

unint64_t sub_261B87AF0()
{
  result = qword_27FEDB1F8;
  if (!qword_27FEDB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1F8);
  }

  return result;
}

unint64_t sub_261B87B54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261B87CBC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_261D00364();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}