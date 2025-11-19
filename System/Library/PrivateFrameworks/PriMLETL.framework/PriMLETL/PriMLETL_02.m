uint64_t sub_25F593D28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[42] = v3;
  v5[43] = a1;
  v5[44] = a2;
  v5[45] = v2;
  v6 = v4[66];
  v7 = *v3;
  v5[67] = v2;

  v8 = v4[65];

  if (v2)
  {
    v9 = sub_25F593F34;
  }

  else
  {
    v9 = sub_25F593E64;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F593E64()
{
  v1 = v0[43];
  v2 = v0[44];
  v3 = v0[61];
  v4 = v0[60];
  v5 = v0[57];
  v6 = v0[54];
  v7 = v0[50];
  (*(v0[63] + 8))(v0[64], v0[62]);
  *v7 = v1;
  v7[1] = v2;

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F593F34()
{
  (*(v0[63] + 8))(v0[64], v0[62]);
  v1 = v0[67];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[57];
  v6 = v0[54];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F593FEC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[46] = v3;
  v5[47] = a1;
  v5[48] = a2;
  v5[49] = v2;
  v6 = v4[68];
  v7 = *v3;
  v5[69] = v2;

  v8 = v4[65];

  if (v2)
  {
    v9 = sub_25F5941F4;
  }

  else
  {
    v9 = sub_25F594128;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F594128()
{
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[64];
  v5 = v0[60];
  v4 = v0[61];
  v6 = v0[54];
  v7 = v0[50];
  (*(v0[56] + 8))(v0[57], v0[55]);
  *v7 = v1;
  v7[1] = v2;

  v8 = v0[1];

  return v8();
}

uint64_t sub_25F5941F4()
{
  (*(v0[56] + 8))(v0[57], v0[55]);
  v1 = v0[69];
  v2 = v0[64];
  v4 = v0[60];
  v3 = v0[61];
  v5 = v0[57];
  v6 = v0[54];

  v7 = v0[1];

  return v7();
}

uint64_t sub_25F5942AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[42] = a5;
  v6[43] = a6;
  v6[40] = a3;
  v6[41] = a4;
  v6[38] = a1;
  v6[39] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF78, &qword_25F5E7988);
  v6[44] = v7;
  v8 = *(v7 - 8);
  v6[45] = v8;
  v9 = *(v8 + 64) + 15;
  v6[46] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF80, &qword_25F5E7990) - 8) + 64) + 15;
  v6[47] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF88, &qword_25F5E7998);
  v6[48] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v6[49] = swift_task_alloc();
  v13 = sub_25F5E3C64();
  v6[50] = v13;
  v14 = *(v13 - 8);
  v6[51] = v14;
  v15 = *(v14 + 64) + 15;
  v6[52] = swift_task_alloc();
  v16 = sub_25F5E3C84();
  v6[53] = v16;
  v17 = *(v16 - 8);
  v6[54] = v17;
  v18 = *(v17 + 64) + 15;
  v6[55] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v6[56] = swift_task_alloc();
  v20 = sub_25F5E3F84();
  v6[57] = v20;
  v21 = *(v20 - 8);
  v6[58] = v21;
  v22 = *(v21 + 64) + 15;
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v6[61] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v6[62] = v24;
  v25 = *(v24 - 8);
  v6[63] = v25;
  v26 = *(v25 + 64) + 15;
  v6[64] = swift_task_alloc();
  v27 = sub_25F5E4144();
  v6[65] = v27;
  v28 = *(v27 - 8);
  v6[66] = v28;
  v29 = *(v28 + 64) + 15;
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F594654, 0, 0);
}

uint64_t sub_25F594654()
{
  v1 = *(v0 + 536);
  v24 = *(v0 + 544);
  v25 = *(v0 + 528);
  v2 = *(v0 + 504);
  v3 = *(v0 + 512);
  v22 = *(v0 + 496);
  v23 = *(v0 + 520);
  v21 = *(v0 + 488);
  v27 = *(v0 + 480);
  v5 = *(v0 + 336);
  v4 = *(v0 + 344);
  v6 = *(v0 + 328);
  v26 = *(v0 + 448);
  v7 = *(v0 + 304);
  v8 = swift_task_alloc();
  v9 = *(v0 + 312);
  *(v8 + 16) = v7;
  *(v8 + 24) = v9;
  *(v8 + 40) = v6;
  *(v8 + 48) = v5;
  sub_25F5E4154();

  v10 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 552) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v11 = v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 560) = *(v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 684) = *(v11 + 8);
  v12 = v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 568) = *(v4 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 685) = *(v12 + 8);
  sub_25F573B94(v4 + v10, v21, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 680) = *MEMORY[0x277D0E548];
  v13 = *(v2 + 104);
  *(v0 + 576) = v13;
  *(v0 + 584) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v13(v3);
  *(v0 + 592) = sub_25F59CA78(&qword_27FD9DF98, MEMORY[0x277D42D78]);
  sub_25F5E4264();
  v14 = *(v2 + 8);
  *(v0 + 600) = v14;
  *(v0 + 608) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v3, v22);
  v15 = *(v25 + 8);
  *(v0 + 616) = v15;
  *(v0 + 624) = (v25 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v1, v23);
  v16 = sub_25F5E3F74();
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);
  sub_25F5E3F64();
  v17 = *(MEMORY[0x277D0E540] + 4);
  v18 = swift_task_alloc();
  *(v0 + 632) = v18;
  *v18 = v0;
  v18[1] = sub_25F5949C4;
  v19 = *(v0 + 376);

  return MEMORY[0x282166B60](v19, 0xD00000000000001CLL, 0x800000025F5EC470);
}

uint64_t sub_25F5949C4()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_25F59546C;
  }

  else
  {
    v3 = sub_25F594AD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F594AD8()
{
  v1 = *(v0 + 376);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFA0, &qword_25F5E79B0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF80, &qword_25F5E7990);
  }

  else
  {
    v65 = *(v0 + 616);
    v66 = *(v0 + 624);
    v58 = *(v0 + 600);
    v59 = *(v0 + 608);
    v56 = *(v0 + 576);
    v57 = *(v0 + 584);
    v55 = *(v0 + 680);
    v50 = *(v0 + 685);
    v53 = *(v0 + 684);
    v51 = *(v0 + 568);
    v52 = *(v0 + 560);
    v48 = *(v0 + 552);
    v61 = *(v0 + 536);
    v62 = *(v0 + 544);
    v63 = *(v0 + 520);
    v64 = *(v0 + 528);
    v49 = *(v0 + 512);
    v54 = *(v0 + 496);
    v47 = *(v0 + 488);
    v37 = *(v0 + 472);
    v38 = *(v0 + 464);
    v39 = *(v0 + 456);
    v40 = *(v0 + 480);
    v67 = *(v0 + 440);
    v60 = *(v0 + 432);
    v3 = *(v0 + 424);
    v36 = *(v0 + 416);
    v4 = *(v0 + 408);
    v34 = *(v2 + 48);
    v35 = *(v0 + 400);
    v5 = *(v0 + 384);
    v6 = *(v0 + 392);
    v45 = *(v0 + 336);
    v46 = *(v0 + 344);
    v7 = *(v0 + 312);
    v43 = v7;
    v44 = *(v0 + 328);
    v41 = *(v0 + 320);
    v42 = *(v0 + 304);
    v8 = *(v5 + 48);
    v9 = *(v60 + 32);
    v9(v6, v1, v3);
    v10 = *(v4 + 32);
    v10(v6 + v8, v1 + v34, v35);
    v11 = *(v5 + 48);
    v9(v67, v6, v3);
    v10(v36, v6 + v11, v35);
    sub_25F5E3C54();
    (*(v38 + 8))(v40, v39);
    (*(v38 + 32))(v40, v37, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EF0;
    *(inited + 32) = 0x7461446567616D69;
    *(inited + 40) = 0xE900000000000061;
    v13 = sub_25F5E4234();
    v14 = MEMORY[0x277D42E10];
    *(inited + 72) = v13;
    *(inited + 80) = v14;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1Tm, v41, v13);
    strcpy((inited + 88), "systemPrompt");
    *(inited + 101) = 0;
    *(inited + 102) = -5120;
    v16 = MEMORY[0x277D837D0];
    v17 = MEMORY[0x277D42EC0];
    *(inited + 128) = MEMORY[0x277D837D0];
    *(inited + 136) = v17;
    *(inited + 104) = v42;
    *(inited + 112) = v43;
    *(inited + 144) = 0x6D6F725072657375;
    *(inited + 152) = 0xEA00000000007470;
    *(inited + 184) = v16;
    *(inited + 192) = v17;
    *(inited + 160) = v44;
    *(inited + 168) = v45;

    sub_25F572474(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC60, &qword_25F5E68C0);
    swift_arrayDestroy();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v18 = swift_initStackObject();
    *(v18 + 16) = xmmword_25F5E5EE0;
    *(v18 + 32) = 0xD0000000000000A0;
    *(v18 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v46 + v48, v47, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v56(v49, v55, v54);
    *(v18 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v18 + 48));
    sub_25F5E3BB4();
    v58(v49, v54);
    sub_25F571A78(v18);
    swift_setDeallocating();
    sub_25F57C148(v18 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F572340(MEMORY[0x277D84F90]);
    sub_25F5E3C44();

    (*(v4 + 8))(v36, v35);
    (*(v60 + 8))(v67, v3);
    v65(v62, v63);
    (*(v64 + 32))(v62, v61, v63);
  }

  v19 = *(v0 + 624);
  v20 = *(v0 + 616);
  v21 = *(v0 + 592);
  v22 = *(v0 + 544);
  v23 = *(v0 + 536);
  v24 = *(v0 + 520);
  v25 = *(v0 + 480);
  v26 = *(v0 + 368);
  v27 = *(v0 + 344);
  sub_25F5E4254();
  *(v0 + 296) = *(v27 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v20(v23, v24);
  v28 = *(MEMORY[0x277D0D8E8] + 4);
  v29 = swift_task_alloc();
  *(v0 + 648) = v29;
  v30 = sub_25F59CA78(&qword_27FD9DFA8, MEMORY[0x277D71A98]);
  *v29 = v0;
  v29[1] = sub_25F595198;
  v31 = *(v0 + 368);
  v32 = *(v0 + 352);

  return MEMORY[0x282165A78](v32, v30);
}

uint64_t sub_25F595198(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 648);
  v8 = *v3;
  v6[82] = v2;

  v9 = v6[46];
  v10 = v6[45];
  v11 = v6[44];
  if (v2)
  {
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F5955A8;
  }

  else
  {
    v6[83] = a2;
    v6[84] = a1;
    (*(v10 + 8))(v9, v11);
    v12 = sub_25F595328;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_25F595328()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[68];
  v4 = v0[67];
  v5 = v0[65];
  v6 = v0[64];
  v7 = v0[61];
  v8 = v0[59];
  v13 = v0[56];
  v14 = v0[55];
  v15 = v0[52];
  v16 = v0[49];
  v17 = v0[47];
  v18 = v0[46];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v2(v3, v5);

  v9 = v0[1];
  v10 = v0[84];
  v11 = v0[83];

  return v9(v10, v11);
}

uint64_t sub_25F59546C()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[68];
  v4 = v0[65];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v2(v3, v4);
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[64];
  v9 = v0[60];
  v8 = v0[61];
  v10 = v0[59];
  v12 = v0[55];
  v11 = v0[56];
  v13 = v0[52];
  v14 = v0[49];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[80];

  v15 = v0[1];

  return v15();
}

uint64_t sub_25F5955A8()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[68];
  v4 = v0[65];
  (*(v0[58] + 8))(v0[60], v0[57]);
  v2(v3, v4);
  v5 = v0[68];
  v6 = v0[67];
  v7 = v0[64];
  v9 = v0[60];
  v8 = v0[61];
  v10 = v0[59];
  v12 = v0[55];
  v11 = v0[56];
  v13 = v0[52];
  v14 = v0[49];
  v17 = v0[47];
  v18 = v0[46];
  v19 = v0[82];

  v15 = v0[1];

  return v15();
}

uint64_t sub_25F5956E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v40 = a2;
  v53 = a6;
  v7 = sub_25F5E42A4();
  v8 = *(v7 - 8);
  v46 = v7;
  v47 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F5E42C4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_25F5E4144();
  v41 = *(v19 - 8);
  v20 = v41;
  v21 = *(v41 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v38 = &v38 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v25);
  v39 = &v38 - v26;
  v51 = a1;
  v52 = v40;
  v27 = v42;
  sub_25F5E42D4();
  sub_25F5E4174();
  (*(v14 + 8))(v18, v13);
  v48 = v43;
  v49 = v44;
  v50 = v45;
  sub_25F5E42B4();
  v45 = v27;
  v28 = v38;
  v29 = v46;
  sub_25F5E4174();
  (*(v47 + 8))(v12, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DFB0, &qword_25F5E79B8);
  v30 = *(v41 + 72);
  v31 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_25F5E77E0;
  v33 = v32 + v31;
  v34 = *(v20 + 16);
  v35 = v39;
  v34(v33, v39, v19);
  v34(v33 + v30, v28, v19);
  MEMORY[0x25F8E2820](v32);

  v36 = *(v20 + 8);
  v36(v28, v19);
  return (v36)(v35, v19);
}

uint64_t sub_25F595A74(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F5E4244();
  v5 = *(v4 - 8);
  v6 = v5;
  v7 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v8);
  v10 = &v17[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = MEMORY[0x277D837D0];
  v17[4] = MEMORY[0x277D42EC0];
  v17[0] = a1;
  v17[1] = a2;

  v11 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v12 = *(v5 + 72);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F5E5EE0;
  (*(v6 + 16))(v14 + v13, v10, v4);
  MEMORY[0x25F8E2880](v14, v4, v11);

  return (*(v6 + 8))(v10, v4);
}

uint64_t sub_25F595C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v44 = a4;
  v41 = a2;
  v42 = a3;
  v38 = a1;
  v4 = sub_25F5E4244();
  v43 = *(v4 - 8);
  v5 = v43;
  v6 = *(v43 + 64);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v8, v11);
  v36 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v15, v18);
  v48 = &v35 - v19;
  sub_25F5E4204();
  sub_25F5E41E4();
  v20 = *(v5 + 8);
  v37 = v17;
  v20(v17, v4);
  v39 = v20;
  v40 = v5 + 8;
  v21 = v20;
  v22 = sub_25F5E4234();
  v46 = v22;
  v47 = MEMORY[0x277D42E10];
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v45);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_1Tm, v38, v22);
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  sub_25F5E4204();
  sub_25F5E41E4();
  v35 = v10;
  v21(v10, v4);
  v46 = MEMORY[0x277D837D0];
  v47 = MEMORY[0x277D42EC0];
  v45[0] = v41;
  v45[1] = v42;

  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v24 = *(v43 + 72);
  v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25F5E81E0;
  v27 = v26 + v25;
  v28 = *(v5 + 16);
  v28(v27, v48, v4);
  v29 = v37;
  v28(v27 + v24, v37, v4);
  v30 = v36;
  v28(v27 + 2 * v24, v36, v4);
  v31 = v27 + 3 * v24;
  v32 = v35;
  v28(v31, v35, v4);
  MEMORY[0x25F8E2880](v26, v4, MEMORY[0x277D42E18]);

  v33 = v39;
  v39(v32, v4);
  v33(v30, v4);
  v33(v29, v4);
  return (v33)(v48, v4);
}

uint64_t sub_25F595FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_25F5E3C64();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_25F5E3C74();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v17 = sub_25F5E3F84();
  v3[40] = v17;
  v18 = *(v17 - 8);
  v3[41] = v18;
  v19 = *(v18 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v21;
  v22 = *(v21 - 8);
  v3[46] = v22;
  v23 = *(v22 + 64) + 15;
  v3[47] = swift_task_alloc();
  v24 = sub_25F5E4114();
  v3[48] = v24;
  v25 = *(v24 - 8);
  v3[49] = v25;
  v26 = *(v25 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5963AC, 0, 0);
}

uint64_t sub_25F5963AC()
{
  v22 = *(v0 + 416);
  v19 = *(v0 + 408);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v25 = *(v0 + 384);
  v4 = *(v0 + 368);
  v21 = *(v0 + 360);
  v18 = *(v0 + 352);
  v24 = *(v0 + 344);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v23 = *(v0 + 312);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  *(v0 + 424) = sub_25F59CA78(&qword_27FD9DF18, MEMORY[0x277D42D40]);
  sub_25F5E4284();
  v20 = *(v2 + 8);
  *(v0 + 432) = v20;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v1, v25);
  v8 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v9 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 556) = *(v9 + 8);
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 557) = *(v10 + 8);
  sub_25F573B94(v5 + v8, v18, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v11 = *(v4 + 104);
  *(v0 + 472) = v11;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v3);
  sub_25F5E4264();
  v12 = *(v4 + 8);
  *(v0 + 488) = v12;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v3, v21);
  v20(v19, v25);
  v13 = sub_25F5E3F74();
  (*(*(v13 - 8) + 56))(v23, 1, 1, v13);
  sub_25F5E3F64();
  v14 = *(MEMORY[0x277D0E538] + 4);
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_25F596730;
  v16 = *(v0 + 240);

  return MEMORY[0x282166B58](v16, 0xD00000000000001CLL, 0x800000025F5EC430);
}

uint64_t sub_25F596730()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_25F584D10;
  }

  else
  {
    v3 = sub_25F596844;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F596844()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v50 = *(v0 + 488);
    v51 = *(v0 + 496);
    v49 = *(v0 + 480);
    v47 = *(v0 + 552);
    v42 = *(v0 + 557);
    v48 = *(v0 + 472);
    v45 = *(v0 + 556);
    v43 = *(v0 + 464);
    v44 = *(v0 + 456);
    v40 = *(v0 + 448);
    v57 = *(v0 + 432);
    v58 = *(v0 + 440);
    v53 = *(v0 + 408);
    v54 = *(v0 + 416);
    v55 = *(v0 + 384);
    v56 = *(v0 + 392);
    v41 = *(v0 + 376);
    v46 = *(v0 + 360);
    v39 = *(v0 + 352);
    v33 = *(v0 + 336);
    v34 = *(v0 + 328);
    v35 = *(v0 + 320);
    v36 = *(v0 + 344);
    v59 = *(v0 + 304);
    v52 = *(v0 + 296);
    v3 = *(v0 + 288);
    v32 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v37 = *(v0 + 192);
    v38 = *(v0 + 208);
    v30 = *(v6 + 48);
    v31 = *(v2 + 48);
    v8 = *(v52 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v30, v1 + v31, v5);
    v10 = *(v6 + 48);
    v8(v59, v7, v3);
    v9(v32, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v34 + 8))(v36, v35);
    (*(v34 + 32))(v36, v33, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xE800000000000000;
    v12 = sub_25F5E3D64();
    *(inited + 72) = v12;
    *(inited + 80) = sub_25F59CA78(&qword_27FD9DF68, MEMORY[0x277D0E698]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v37, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_25F5E5EE0;
    *(v14 + 32) = 0xD0000000000000A0;
    *(v14 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v38 + v40, v39, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v48(v41, v47, v46);
    *(v14 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v14 + 48));
    sub_25F5E3BB4();
    v50(v41, v46);
    sub_25F571A78(v14);
    swift_setDeallocating();
    sub_25F57C148(v14 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v32, v5);
    (*(v52 + 8))(v59, v3);
    v57(v54, v55);
    (*(v56 + 32))(v54, v53, v55);
  }

  v16 = *(v0 + 432);
  v15 = *(v0 + 440);
  v18 = *(v0 + 416);
  v17 = *(v0 + 424);
  v19 = *(v0 + 408);
  v20 = *(v0 + 384);
  v21 = *(v0 + 344);
  v22 = *(v0 + 232);
  v23 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v23 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v16(v19, v20);
  v24 = *(MEMORY[0x277D0D8C8] + 4);
  v25 = swift_task_alloc();
  *(v0 + 520) = v25;
  v26 = sub_25F59CA78(&qword_27FD9DF58, MEMORY[0x277D71A98]);
  *v25 = v0;
  v25[1] = sub_25F584A38;
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);

  return MEMORY[0x282165A58](v28, v26);
}

uint64_t sub_25F596E70(uint64_t a1)
{
  v2 = sub_25F5E4244();
  v3 = *(v2 - 8);
  v4 = v3;
  v5 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v6);
  v8 = &v17[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F5E3D64();
  v17[3] = v9;
  v17[4] = sub_25F59CA78(&qword_27FD9DF68, MEMORY[0x277D0E698]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v9);
  v11 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v12 = *(v3 + 72);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_25F5E5EE0;
  (*(v4 + 16))(v14 + v13, v8, v2);
  MEMORY[0x25F8E2880](v14, v2, v11);

  return (*(v4 + 8))(v8, v2);
}

uint64_t sub_25F597084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v5 = *(v4 - 8);
  v3[28] = v5;
  v6 = *(v5 + 64) + 15;
  v3[29] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570) - 8) + 64) + 15;
  v3[30] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[31] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v10 = sub_25F5E3C64();
  v3[33] = v10;
  v11 = *(v10 - 8);
  v3[34] = v11;
  v12 = *(v11 + 64) + 15;
  v3[35] = swift_task_alloc();
  v13 = sub_25F5E3C74();
  v3[36] = v13;
  v14 = *(v13 - 8);
  v3[37] = v14;
  v15 = *(v14 + 64) + 15;
  v3[38] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();
  v17 = sub_25F5E3F84();
  v3[40] = v17;
  v18 = *(v17 - 8);
  v3[41] = v18;
  v19 = *(v18 + 64) + 15;
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0) - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v21;
  v22 = *(v21 - 8);
  v3[46] = v22;
  v23 = *(v22 + 64) + 15;
  v3[47] = swift_task_alloc();
  v24 = sub_25F5E4114();
  v3[48] = v24;
  v25 = *(v24 - 8);
  v3[49] = v25;
  v26 = *(v25 + 64) + 15;
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F597434, 0, 0);
}

uint64_t sub_25F597434()
{
  v22 = *(v0 + 416);
  v19 = *(v0 + 408);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v25 = *(v0 + 384);
  v4 = *(v0 + 368);
  v21 = *(v0 + 360);
  v18 = *(v0 + 352);
  v24 = *(v0 + 344);
  v6 = *(v0 + 200);
  v5 = *(v0 + 208);
  v23 = *(v0 + 312);
  v7 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v7;
  sub_25F5E4134();

  *(v0 + 424) = sub_25F59CA78(&qword_27FD9DF18, MEMORY[0x277D42D40]);
  sub_25F5E4284();
  v20 = *(v2 + 8);
  *(v0 + 432) = v20;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v20(v1, v25);
  v8 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v9 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 556) = *(v9 + 8);
  v10 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 557) = *(v10 + 8);
  sub_25F573B94(v5 + v8, v18, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v11 = *(v4 + 104);
  *(v0 + 472) = v11;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v11(v3);
  sub_25F5E4264();
  v12 = *(v4 + 8);
  *(v0 + 488) = v12;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v3, v21);
  v20(v19, v25);
  v13 = sub_25F5E3F74();
  (*(*(v13 - 8) + 56))(v23, 1, 1, v13);
  sub_25F5E3F64();
  v14 = *(MEMORY[0x277D0E538] + 4);
  v15 = swift_task_alloc();
  *(v0 + 504) = v15;
  *v15 = v0;
  v15[1] = sub_25F5977B8;
  v16 = *(v0 + 240);

  return MEMORY[0x282166B58](v16, 0xD00000000000001CLL, 0x800000025F5EC450);
}

uint64_t sub_25F5977B8()
{
  v2 = *(*v1 + 504);
  v5 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {
    v3 = sub_25F58C4C8;
  }

  else
  {
    v3 = sub_25F5978CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F5978CC()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v51 = *(v0 + 488);
    v52 = *(v0 + 496);
    v50 = *(v0 + 480);
    v48 = *(v0 + 552);
    v43 = *(v0 + 557);
    v49 = *(v0 + 472);
    v46 = *(v0 + 556);
    v44 = *(v0 + 464);
    v45 = *(v0 + 456);
    v41 = *(v0 + 448);
    v58 = *(v0 + 432);
    v59 = *(v0 + 440);
    v54 = *(v0 + 408);
    v55 = *(v0 + 416);
    v56 = *(v0 + 384);
    v57 = *(v0 + 392);
    v42 = *(v0 + 376);
    v47 = *(v0 + 360);
    v40 = *(v0 + 352);
    v34 = *(v0 + 336);
    v35 = *(v0 + 328);
    v36 = *(v0 + 320);
    v37 = *(v0 + 344);
    v60 = *(v0 + 304);
    v53 = *(v0 + 296);
    v3 = *(v0 + 288);
    v33 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v38 = *(v0 + 192);
    v39 = *(v0 + 208);
    v31 = *(v6 + 48);
    v32 = *(v2 + 48);
    v8 = *(v53 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v31, v1 + v32, v5);
    v10 = *(v6 + 48);
    v8(v60, v7, v3);
    v9(v33, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v35 + 8))(v37, v36);
    (*(v35 + 32))(v37, v34, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v12 = sub_25F5E4244();
    v13 = MEMORY[0x277D42E20];
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v38, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_25F5E5EE0;
    *(v15 + 32) = 0xD0000000000000A0;
    *(v15 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v39 + v41, v40, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v49(v42, v48, v47);
    *(v15 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v15 + 48));
    sub_25F5E3BB4();
    v51(v42, v47);
    sub_25F571A78(v15);
    swift_setDeallocating();
    sub_25F57C148(v15 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v33, v5);
    (*(v53 + 8))(v60, v3);
    v58(v55, v56);
    (*(v57 + 32))(v55, v54, v56);
  }

  v17 = *(v0 + 432);
  v16 = *(v0 + 440);
  v19 = *(v0 + 416);
  v18 = *(v0 + 424);
  v20 = *(v0 + 408);
  v21 = *(v0 + 384);
  v22 = *(v0 + 344);
  v23 = *(v0 + 232);
  v24 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v24 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v17(v20, v21);
  v25 = *(MEMORY[0x277D0D8C8] + 4);
  v26 = swift_task_alloc();
  *(v0 + 520) = v26;
  v27 = sub_25F59CA78(&qword_27FD9DF58, MEMORY[0x277D71A98]);
  *v26 = v0;
  v26[1] = sub_25F586040;
  v28 = *(v0 + 232);
  v29 = *(v0 + 216);

  return MEMORY[0x282165A58](v29, v27);
}

uint64_t sub_25F597EC4()
{
  v0 = sub_25F5E4244();
  v1 = *(v0 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D42E18];
  sub_25F5E41E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v8 = *(v1 + 72);
  v9 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25F5E5EE0;
  (*(v2 + 16))(v10 + v9, v6, v0);
  MEMORY[0x25F8E2880](v10, v0, v7);

  return (*(v2 + 8))(v6, v0);
}

uint64_t MultiModalLLMInference.deinit()
{
  v1 = *(v0 + 16);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  return v0;
}

uint64_t MultiModalLLMInference.__deallocating_deinit()
{
  v1 = v0[2];

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);
  v2 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion + 8);

  v3 = *(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt + 8);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25F5981D8()
{
  v1 = (*v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t sub_25F598218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_25F598240, 0, 0);
}

uint64_t sub_25F598240()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  v4 = v2;

  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_25F59CAFC;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_25F598744(v7, v6, v8, v9);
}

uint64_t sub_25F5982FC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F598324, 0, 0);
}

uint64_t sub_25F598324()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F59CB00;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_25F59AB20(v7, v5, v6);
}

uint64_t type metadata accessor for MultiModalLLMInference()
{
  result = qword_27FD9E068;
  if (!qword_27FD9E068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F598430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965736163657375 && a2 == 0xE900000000000064 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xEC0000006769666ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C436567616D69 && a2 == 0xEF6874646957706DLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC410 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706D61534B706F74 && a2 == 0xEC000000676E696CLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x537375656C63756ELL && a2 == 0xEF676E696C706D61 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25F598744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_25F5E3D44();
  v4[14] = v5;
  v6 = *(v5 - 8);
  v4[15] = v6;
  v7 = *(v6 + 64) + 15;
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v8 = sub_25F5E39F4();
  v4[19] = v8;
  v9 = *(v8 - 8);
  v4[20] = v9;
  v10 = *(v9 + 64) + 15;
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v11 = sub_25F5E3CC4();
  v4[24] = v11;
  v12 = *(v11 - 8);
  v4[25] = v12;
  v13 = *(v12 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v14 = sub_25F5E3F54();
  v4[30] = v14;
  v15 = *(v14 - 8);
  v4[31] = v15;
  v16 = *(v15 + 64) + 15;
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v17 = sub_25F5E4234();
  v4[36] = v17;
  v18 = *(v17 - 8);
  v4[37] = v18;
  v19 = *(v18 + 64) + 15;
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5989F0, 0, 0);
}

uint64_t sub_25F5989F0()
{
  v181 = v0;
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    v4 = *(v0 + 304);
    sub_25F592944(*(v0 + 88));
    v5 = swift_task_alloc();
    *(v0 + 312) = v5;
    *v5 = v0;
    v5[1] = sub_25F599990;
    v6 = *(v0 + 304);
    v7 = *(v0 + 96);
    v8 = *(v0 + 104);
    v9 = *(v0 + 80);

    return sub_25F5942AC(v3, v2, v6, v7, v8, v9);
  }

  sub_25F581FD8();
  v11 = swift_allocError();
  *v12 = 6;
  swift_willThrow();
  v13 = *(v0 + 280);
  v14 = *(v0 + 240);
  *(v0 + 40) = v11;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v17 = *(v0 + 272);
    v16 = *(v0 + 280);
    v18 = *(v0 + 240);
    v19 = *(v0 + 248);

    (*(v19 + 32))(v17, v16, v18);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v22 = *(v0 + 256);
    v24 = *(v0 + 240);
    v25 = sub_25F5E3FB4();
    __swift_project_value_buffer(v25, qword_27FD9EA20);
    v26 = *(v23 + 16);
    v26(v20, v21, v24);
    v26(v22, v21, v24);
    v27 = sub_25F5E3F94();
    v28 = sub_25F5E47B4();
    v29 = os_log_type_enabled(v27, v28);
    v30 = *(v0 + 256);
    v31 = *(v0 + 264);
    v32 = *(v0 + 240);
    v33 = *(v0 + 248);
    if (v29)
    {
      v176 = v28;
      v34 = swift_slowAlloc();
      v173 = swift_slowAlloc();
      *v34 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v26(v35, v31, v32);
      v36 = _swift_stdlib_bridgeErrorToNSError();
      v37 = *(v33 + 8);
      v37(v31, v32);
      *(v34 + 4) = v36;
      *v173 = v36;
      v38 = v37;
      *(v34 + 12) = 2048;
      v39 = sub_25F5E3F44();
      v37(v30, v32);
      *(v34 + 14) = v39;
      _os_log_impl(&dword_25F56A000, v27, v176, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v34, 0x16u);
      sub_25F57C148(v173, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v173, -1, -1);
      MEMORY[0x25F8E3B70](v34, -1, -1);
    }

    else
    {
      v38 = *(v33 + 8);
      v38(*(v0 + 256), *(v0 + 240));

      v38(v31, v32);
    }

    v66 = *(v0 + 272);
    v67 = *(v0 + 240);
    v69 = *(v0 + 80);
    v68 = *(v0 + 88);
    v70 = sub_25F58DD74();
    sub_25F581FD8();
    swift_allocError();
    *v71 = v70;
    swift_willThrow();
    v38(v66, v67);

    goto LABEL_43;
  }

  v40 = *(v0 + 232);
  v41 = *(v0 + 192);

  *(v0 + 48) = v11;
  v42 = v11;
  if (swift_dynamicCast())
  {
    v44 = *(v0 + 224);
    v43 = *(v0 + 232);
    v45 = *(v0 + 192);
    v46 = *(v0 + 200);

    (*(v46 + 32))(v44, v43, v45);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v47 = *(v0 + 216);
    v48 = *(v0 + 224);
    v50 = *(v0 + 200);
    v49 = *(v0 + 208);
    v51 = *(v0 + 192);
    v52 = sub_25F5E3FB4();
    __swift_project_value_buffer(v52, qword_27FD9EA20);
    v53 = *(v50 + 16);
    v53(v47, v48, v51);
    v53(v49, v48, v51);
    v54 = sub_25F5E3F94();
    v55 = sub_25F5E47B4();
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v0 + 208);
    v58 = *(v0 + 216);
    v59 = *(v0 + 192);
    v60 = *(v0 + 200);
    if (v56)
    {
      v177 = v55;
      v61 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v61 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58]);
      swift_allocError();
      v53(v62, v58, v59);
      v63 = _swift_stdlib_bridgeErrorToNSError();
      v64 = *(v60 + 8);
      v64(v58, v59);
      *(v61 + 4) = v63;
      *v174 = v63;
      *(v61 + 12) = 2048;
      v65 = sub_25F5E3CB4();
      v64(v57, v59);
      *(v61 + 14) = v65;
      _os_log_impl(&dword_25F56A000, v54, v177, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v61, 0x16u);
      sub_25F57C148(v174, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v174, -1, -1);
      MEMORY[0x25F8E3B70](v61, -1, -1);
    }

    else
    {
      v64 = *(v60 + 8);
      v64(*(v0 + 208), *(v0 + 192));

      v64(v58, v59);
    }

    v95 = *(v0 + 224);
    v96 = sub_25F5E3CB4();
    v97 = v96 - 1000;
    if (__OFSUB__(v96, 1000))
    {
      __break(1u);
    }

    else
    {
      v98 = v96 + 19100;
      if (!__OFADD__(v97, 20100))
      {
        v99 = *(v0 + 224);
        v100 = *(v0 + 192);
        v101 = *(v0 + 200);
        v102 = *(v0 + 80);
        v103 = *(v0 + 88);
        v104 = sub_25F58E04C(v98);
        if (v104 == 89)
        {
          v105 = 50;
        }

        else
        {
          v105 = v104;
        }

        sub_25F581FD8();
        swift_allocError();
        *v106 = v105;
        swift_willThrow();
        v64(v99, v100);

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
    goto LABEL_19;
  }

  v72 = *(v0 + 184);
  v73 = *(v0 + 152);

  *(v0 + 56) = v11;
  v74 = v11;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v107 = *(v0 + 144);
    v108 = *(v0 + 112);

    *(v0 + 64) = v11;
    v109 = v11;
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v137 = sub_25F5E3FB4();
      __swift_project_value_buffer(v137, qword_27FD9EA20);
      v138 = v11;
      v139 = sub_25F5E3F94();
      v140 = sub_25F5E47B4();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v180 = v143;
        *v141 = 138412546;
        v144 = v11;
        v145 = _swift_stdlib_bridgeErrorToNSError();
        *(v141 + 4) = v145;
        *v142 = v145;
        *(v141 + 12) = 2080;
        swift_getErrorValue();
        v146 = *(v0 + 16);
        v147 = *(v0 + 24);
        swift_getDynamicType();
        v148 = sub_25F5E4D04();
        v150 = sub_25F570AF8(v148, v149, &v180);

        *(v141 + 14) = v150;
        _os_log_impl(&dword_25F56A000, v139, v140, "Failed to complete multimodal chat, reason=%@, type=%s", v141, 0x16u);
        sub_25F57C148(v142, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v142, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v143);
        MEMORY[0x25F8E3B70](v143, -1, -1);
        MEMORY[0x25F8E3B70](v141, -1, -1);
      }

      v151 = *(v0 + 80);
      v152 = *(v0 + 88);
      sub_25F581FD8();
      swift_allocError();
      *v153 = 4;
      swift_willThrow();

      goto LABEL_43;
    }

    v111 = *(v0 + 136);
    v110 = *(v0 + 144);
    v112 = *(v0 + 112);
    v113 = *(v0 + 120);

    (*(v113 + 32))(v111, v110, v112);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v114 = *(v0 + 128);
    v115 = *(v0 + 136);
    v116 = *(v0 + 112);
    v117 = *(v0 + 120);
    v118 = sub_25F5E3FB4();
    __swift_project_value_buffer(v118, qword_27FD9EA20);
    v119 = *(v117 + 16);
    v119(v114, v115, v116);
    v120 = sub_25F5E3F94();
    v121 = sub_25F5E47B4();
    v122 = os_log_type_enabled(v120, v121);
    v124 = *(v0 + 120);
    v123 = *(v0 + 128);
    v125 = *(v0 + 112);
    if (v122)
    {
      v126 = swift_slowAlloc();
      v179 = swift_slowAlloc();
      *v126 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
      swift_allocError();
      v119(v127, v123, v125);
      v128 = _swift_stdlib_bridgeErrorToNSError();
      v129 = *(v124 + 8);
      v129(v123, v125);
      *(v126 + 4) = v128;
      *v179 = v128;
      _os_log_impl(&dword_25F56A000, v120, v121, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v126, 0xCu);
      sub_25F57C148(v179, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v179, -1, -1);
      MEMORY[0x25F8E3B70](v126, -1, -1);
    }

    else
    {

      v129 = *(v124 + 8);
      v129(v123, v125);
    }

    v154 = *(v0 + 136);
    v155 = *(v0 + 112);
    v156 = *(v0 + 80);
    v133 = *(v0 + 88);
    sub_25F581FD8();
    swift_allocError();
    *v157 = 8;
    swift_willThrow();
    v129(v154, v155);
    v136 = *(v0 + 64);
    goto LABEL_42;
  }

  v76 = *(v0 + 176);
  v75 = *(v0 + 184);
  v77 = *(v0 + 152);
  v78 = *(v0 + 160);

  (*(v78 + 32))(v76, v75, v77);
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_48;
  }

LABEL_19:
  v79 = *(v0 + 168);
  v80 = *(v0 + 176);
  v81 = *(v0 + 152);
  v82 = *(v0 + 160);
  v83 = sub_25F5E3FB4();
  __swift_project_value_buffer(v83, qword_27FD9EA20);
  v84 = *(v82 + 16);
  v84(v79, v80, v81);
  v85 = sub_25F5E3F94();
  v86 = sub_25F5E47B4();
  v87 = os_log_type_enabled(v85, v86);
  v89 = *(v0 + 160);
  v88 = *(v0 + 168);
  v90 = *(v0 + 152);
  if (v87)
  {
    v91 = swift_slowAlloc();
    v178 = swift_slowAlloc();
    *v91 = 138412290;
    sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08]);
    swift_allocError();
    v84(v92, v88, v90);
    v93 = _swift_stdlib_bridgeErrorToNSError();
    v94 = *(v89 + 8);
    v94(v88, v90);
    *(v91 + 4) = v93;
    *v178 = v93;
    _os_log_impl(&dword_25F56A000, v85, v86, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v91, 0xCu);
    sub_25F57C148(v178, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v178, -1, -1);
    MEMORY[0x25F8E3B70](v91, -1, -1);
  }

  else
  {

    v94 = *(v89 + 8);
    v94(v88, v90);
  }

  v130 = *(v0 + 176);
  v131 = *(v0 + 152);
  v132 = *(v0 + 80);
  v133 = *(v0 + 88);
  v134 = sub_25F58E838(v130);
  sub_25F581FD8();
  swift_allocError();
  *v135 = v134;
  swift_willThrow();
  v94(v130, v131);
  v136 = *(v0 + 56);
LABEL_42:

LABEL_43:
  v158 = *(v0 + 304);
  v160 = *(v0 + 272);
  v159 = *(v0 + 280);
  v162 = *(v0 + 256);
  v161 = *(v0 + 264);
  v164 = *(v0 + 224);
  v163 = *(v0 + 232);
  v166 = *(v0 + 208);
  v165 = *(v0 + 216);
  v167 = *(v0 + 184);
  v169 = *(v0 + 176);
  v170 = *(v0 + 168);
  v171 = *(v0 + 144);
  v172 = *(v0 + 136);
  v175 = *(v0 + 128);

  v168 = *(v0 + 8);

  return v168();
}

uint64_t sub_25F599990(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 312);
  v8 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v9 = sub_25F599C1C;
  }

  else
  {
    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v9 = sub_25F599AC4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_25F599AC4()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[34];
  v4 = v0[32];
  v6 = v0[28];
  v5 = v0[29];
  v14 = v0[27];
  v15 = v0[26];
  v16 = v0[23];
  v17 = v0[22];
  v7 = v0[21];
  v18 = v0[18];
  v19 = v0[17];
  v20 = v0[16];
  v9 = v0[10];
  v8 = v0[11];
  (*(v0[37] + 8))(v0[38], v0[36]);

  v10 = v0[1];
  v12 = v0[41];
  v11 = v0[42];

  return v10(v11, v12);
}

uint64_t sub_25F599C1C()
{
  v182 = v0;
  v1 = v0;
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v2 = *(v0 + 320);
  *(v0 + 40) = v2;
  v3 = v0 + 40;
  v4 = *(v0 + 280);
  v5 = *(v0 + 240);
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v8 = *(v0 + 272);
    v7 = *(v0 + 280);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);

    (*(v9 + 32))(v8, v7, v10);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v11 = v1[33];
    v12 = v1[34];
    v14 = v1[31];
    v13 = v1[32];
    v15 = v1[30];
    v16 = sub_25F5E3FB4();
    __swift_project_value_buffer(v16, qword_27FD9EA20);
    v17 = *(v14 + 16);
    v17(v11, v12, v15);
    v17(v13, v12, v15);
    v18 = sub_25F5E3F94();
    v19 = sub_25F5E47B4();
    v20 = os_log_type_enabled(v18, v19);
    v21 = v1;
    v22 = v1[33];
    v24 = v21[31];
    v23 = v21[32];
    v176 = v21;
    v25 = v21[30];
    if (v20)
    {
      v26 = swift_slowAlloc();
      v173 = v19;
      v27 = swift_slowAlloc();
      *v26 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v17(v28, v22, v25);
      v29 = _swift_stdlib_bridgeErrorToNSError();
      v30 = *(v24 + 8);
      v30(v22, v25);
      *(v26 + 4) = v29;
      *v27 = v29;
      *(v26 + 12) = 2048;
      v31 = sub_25F5E3F44();
      v30(v23, v25);
      *(v26 + 14) = v31;
      _os_log_impl(&dword_25F56A000, v18, v173, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v26, 0x16u);
      sub_25F57C148(v27, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v27, -1, -1);
      MEMORY[0x25F8E3B70](v26, -1, -1);
    }

    else
    {
      v30 = *(v24 + 8);
      v30(v23, v21[30]);

      v30(v22, v25);
    }

    v1 = v176;
    v59 = v176[34];
    v60 = v176[30];
    v62 = v176[10];
    v61 = v176[11];
    v63 = sub_25F58DD74();
    sub_25F581FD8();
    swift_allocError();
    *v64 = v63;
    swift_willThrow();
    v30(v59, v60);

    goto LABEL_39;
  }

  v32 = *(v0 + 232);
  v33 = *(v0 + 192);

  *(v0 + 48) = v2;
  v34 = v2;
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 224);
    v35 = v1[29];
    v37 = v1[24];
    v38 = v1[25];

    (*(v38 + 32))(v36, v35, v37);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v40 = v1[27];
    v39 = v1[28];
    v42 = v1[25];
    v41 = v1[26];
    v43 = v1[24];
    v44 = sub_25F5E3FB4();
    __swift_project_value_buffer(v44, qword_27FD9EA20);
    v45 = *(v42 + 16);
    v45(v40, v39, v43);
    v45(v41, v39, v43);
    v46 = sub_25F5E3F94();
    v47 = sub_25F5E47B4();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v1;
    v50 = v1[27];
    v52 = v49[25];
    v51 = v49[26];
    v177 = v49;
    v53 = v49[24];
    if (v48)
    {
      v54 = swift_slowAlloc();
      v174 = swift_slowAlloc();
      *v54 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58]);
      swift_allocError();
      v45(v55, v50, v53);
      v56 = _swift_stdlib_bridgeErrorToNSError();
      v57 = *(v52 + 8);
      v57(v50, v53);
      *(v54 + 4) = v56;
      *v174 = v56;
      *(v54 + 12) = 2048;
      v58 = sub_25F5E3CB4();
      v57(v51, v53);
      *(v54 + 14) = v58;
      _os_log_impl(&dword_25F56A000, v46, v47, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v54, 0x16u);
      sub_25F57C148(v174, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v174, -1, -1);
      MEMORY[0x25F8E3B70](v54, -1, -1);
    }

    else
    {
      v57 = *(v52 + 8);
      v57(v51, v49[24]);

      v57(v50, v53);
    }

    v1 = v177;
    v90 = v177[28];
    v91 = sub_25F5E3CB4();
    v92 = v91 - 1000;
    if (__OFSUB__(v91, 1000))
    {
      __break(1u);
    }

    else
    {
      v93 = v91 + 19100;
      if (!__OFADD__(v92, 20100))
      {
        v94 = v177[28];
        v95 = v177[24];
        v96 = v177[25];
        v97 = v177[10];
        v98 = v177[11];
        v99 = sub_25F58E04C(v93);
        if (v99 == 89)
        {
          v100 = 50;
        }

        else
        {
          v100 = v99;
        }

        sub_25F581FD8();
        swift_allocError();
        *v101 = v100;
        swift_willThrow();
        v57(v94, v95);

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v65 = *(v0 + 184);
  v66 = v1[19];

  v1[7] = v2;
  v67 = v2;
  if (swift_dynamicCast())
  {
    v69 = v1[22];
    v68 = v1[23];
    v70 = v1[19];
    v71 = v1[20];

    (*(v71 + 32))(v69, v68, v70);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v73 = v1[21];
      v72 = v1[22];
      v74 = v1[19];
      v75 = v1[20];
      v76 = sub_25F5E3FB4();
      __swift_project_value_buffer(v76, qword_27FD9EA20);
      v77 = *(v75 + 16);
      v77(v73, v72, v74);
      v78 = sub_25F5E3F94();
      v79 = sub_25F5E47B4();
      v80 = os_log_type_enabled(v78, v79);
      v82 = v1[20];
      v81 = v1[21];
      v83 = v1[19];
      if (v80)
      {
        v84 = swift_slowAlloc();
        v178 = v1;
        v85 = swift_slowAlloc();
        *v84 = 138412290;
        sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08]);
        swift_allocError();
        v77(v86, v81, v83);
        v87 = _swift_stdlib_bridgeErrorToNSError();
        v88 = *(v82 + 8);
        v88(v81, v83);
        *(v84 + 4) = v87;
        *v85 = v87;
        _os_log_impl(&dword_25F56A000, v78, v79, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v84, 0xCu);
        sub_25F57C148(v85, &qword_27FD9DEF0, &qword_25F5E8550);
        v89 = v85;
        v1 = v178;
        MEMORY[0x25F8E3B70](v89, -1, -1);
        MEMORY[0x25F8E3B70](v84, -1, -1);
      }

      else
      {

        v88 = *(v82 + 8);
        v88(v81, v83);
      }

      v127 = v1[22];
      v128 = v1[19];
      v129 = v1[10];
      v130 = v1[11];
      v131 = sub_25F58E838(v127);
      sub_25F581FD8();
      swift_allocError();
      *v132 = v131;
      swift_willThrow();
      v88(v127, v128);
      v133 = v1[7];
LABEL_38:

      goto LABEL_39;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v102 = v1[18];
  v103 = v1[14];

  v1[8] = v2;
  v104 = v2;
  if (swift_dynamicCast())
  {
    v106 = v1[17];
    v105 = v1[18];
    v107 = v1[14];
    v108 = v1[15];

    (*(v108 + 32))(v106, v105, v107);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v110 = v1[16];
    v109 = v1[17];
    v111 = v1[14];
    v112 = v1[15];
    v113 = sub_25F5E3FB4();
    __swift_project_value_buffer(v113, qword_27FD9EA20);
    v114 = *(v112 + 16);
    v114(v110, v109, v111);
    v115 = sub_25F5E3F94();
    v116 = sub_25F5E47B4();
    v117 = os_log_type_enabled(v115, v116);
    v119 = v1[15];
    v118 = v1[16];
    v120 = v1[14];
    if (v117)
    {
      v121 = swift_slowAlloc();
      v179 = v1;
      v122 = swift_slowAlloc();
      *v121 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
      swift_allocError();
      v114(v123, v118, v120);
      v124 = _swift_stdlib_bridgeErrorToNSError();
      v125 = *(v119 + 8);
      v125(v118, v120);
      *(v121 + 4) = v124;
      *v122 = v124;
      _os_log_impl(&dword_25F56A000, v115, v116, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v121, 0xCu);
      sub_25F57C148(v122, &qword_27FD9DEF0, &qword_25F5E8550);
      v126 = v122;
      v1 = v179;
      MEMORY[0x25F8E3B70](v126, -1, -1);
      MEMORY[0x25F8E3B70](v121, -1, -1);
    }

    else
    {

      v125 = *(v119 + 8);
      v125(v118, v120);
    }

    v153 = v1[17];
    v154 = v1[14];
    v155 = v1[10];
    v130 = v1[11];
    sub_25F581FD8();
    swift_allocError();
    *v156 = 8;
    swift_willThrow();
    v125(v153, v154);
    v133 = v1[8];
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v134 = sub_25F5E3FB4();
  __swift_project_value_buffer(v134, qword_27FD9EA20);
  v135 = v2;
  v136 = sub_25F5E3F94();
  v137 = sub_25F5E47B4();

  if (os_log_type_enabled(v136, v137))
  {
    v138 = swift_slowAlloc();
    v139 = swift_slowAlloc();
    v140 = v1;
    v141 = swift_slowAlloc();
    v181 = v141;
    *v138 = 138412546;
    v142 = v2;
    v143 = _swift_stdlib_bridgeErrorToNSError();
    *(v138 + 4) = v143;
    *v139 = v143;
    *(v138 + 12) = 2080;
    swift_getErrorValue();
    v144 = v140[2];
    v145 = v140[3];
    swift_getDynamicType();
    v146 = sub_25F5E4D04();
    v148 = sub_25F570AF8(v146, v147, &v181);

    *(v138 + 14) = v148;
    _os_log_impl(&dword_25F56A000, v136, v137, "Failed to complete multimodal chat, reason=%@, type=%s", v138, 0x16u);
    sub_25F57C148(v139, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v139, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v141);
    v149 = v141;
    v1 = v140;
    MEMORY[0x25F8E3B70](v149, -1, -1);
    MEMORY[0x25F8E3B70](v138, -1, -1);
  }

  v150 = v1[10];
  v151 = v1[11];
  sub_25F581FD8();
  swift_allocError();
  *v152 = 4;
  swift_willThrow();

LABEL_39:
  v157 = v1[38];
  v159 = v1[34];
  v158 = v1[35];
  v161 = v1[32];
  v160 = v1[33];
  v162 = v1;
  v163 = v1[29];
  v165 = v162[27];
  v164 = v162[28];
  v166 = v162[26];
  v167 = v162[23];
  v170 = v162[22];
  v171 = v162[21];
  v172 = v162[18];
  v175 = v162[17];
  v180 = v162[16];

  v168 = v162[1];

  return v168();
}

uint64_t sub_25F59AB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a2;
  v7 = sub_25F5E3D44();
  v3[14] = v7;
  v8 = *(v7 - 8);
  v3[15] = v8;
  v9 = *(v8 + 64) + 15;
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v10 = sub_25F5E39F4();
  v3[19] = v10;
  v11 = *(v10 - 8);
  v3[20] = v11;
  v12 = *(v11 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v13 = sub_25F5E3CC4();
  v3[24] = v13;
  v14 = *(v13 - 8);
  v3[25] = v14;
  v15 = *(v14 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v16 = sub_25F5E3F54();
  v3[30] = v16;
  v17 = *(v16 - 8);
  v3[31] = v17;
  v18 = *(v17 + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v19 = swift_task_alloc();
  v3[36] = v19;
  *v19 = v3;
  v19[1] = sub_25F59ADC0;

  return sub_25F592F28((v3 + 5), a1, a2, a3);
}

uint64_t sub_25F59ADC0()
{
  v2 = *(*v1 + 288);
  v5 = *v1;
  *(*v1 + 296) = v0;

  if (v0)
  {
    v3 = sub_25F59B008;
  }

  else
  {
    v3 = sub_25F59AED4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F59AED4()
{
  v2 = v0[34];
  v1 = v0[35];
  v4 = v0[32];
  v3 = v0[33];
  v5 = v0[28];
  v6 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v13 = v0[23];
  v14 = v0[22];
  v15 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[16];
  v9 = v0[12];
  v10 = v0[13];

  v19 = v0[6];
  v20 = v0[5];

  v11 = v0[1];

  return v11(v20, v19);
}

uint64_t sub_25F59B008()
{
  v191 = v0;
  v1 = v0;
  isa = v0[37].isa;
  v0[7].isa = isa;
  v3 = v0 + 7;
  v4 = v0[35].isa;
  v5 = v0[30].isa;
  v6 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  v7 = swift_dynamicCast();
  v8 = v0[37].isa;
  if (v7)
  {
    v9 = v0[34].isa;
    v10 = v0[35].isa;
    v12 = v0[30].isa;
    v11 = v0[31].isa;

    (*(v11 + 4))(v9, v10, v12);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v13 = v1[33].isa;
    v14 = v1[34].isa;
    v16 = v1[31].isa;
    v15 = v1[32].isa;
    v17 = v1[30].isa;
    v18 = sub_25F5E3FB4();
    __swift_project_value_buffer(v18, qword_27FD9EA20);
    v19 = *(v16 + 2);
    v19(v13, v14, v17);
    v19(v15, v14, v17);
    v20 = sub_25F5E3F94();
    v21 = sub_25F5E47B4();
    v22 = os_log_type_enabled(v20, v21);
    v23 = v1[32].isa;
    v24 = v1[33].isa;
    v25 = v1[30].isa;
    v26 = v1[31].isa;
    if (v22)
    {
      v27 = swift_slowAlloc();
      logc = v20;
      v28 = swift_slowAlloc();
      *v27 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0]);
      swift_allocError();
      v182 = v21;
      v29 = v1;
      v19(v30, v24, v25);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      v32 = *(v26 + 1);
      v32(v24, v25);
      *(v27 + 4) = v31;
      *v28 = v31;
      v1 = v29;
      *(v27 + 12) = 2048;
      v33 = sub_25F5E3F44();
      v32(v23, v25);
      *(v27 + 14) = v33;
      _os_log_impl(&dword_25F56A000, logc, v182, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v27, 0x16u);
      sub_25F57C148(v28, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v28, -1, -1);
      MEMORY[0x25F8E3B70](v27, -1, -1);
    }

    else
    {
      v32 = *(v26 + 1);
      v32(v1[32].isa, v1[30].isa);

      v32(v24, v25);
    }

    v64 = v1[34].isa;
    v65 = v1[30].isa;
    v67 = v1[12].isa;
    v66 = v1[13].isa;
    v68 = sub_25F58DD74();
    sub_25F581FD8();
    swift_allocError();
    *v69 = v68;
    swift_willThrow();
    v32(v64, v65);

    goto LABEL_39;
  }

  v34 = v0[29].isa;
  v35 = v0[24].isa;

  v0[8].isa = v8;
  v36 = v8;
  v37 = swift_dynamicCast();
  v38 = v0[37].isa;
  if (v37)
  {
    v40 = v0[28].isa;
    v39 = v1[29].isa;
    v41 = v1[24].isa;
    v42 = v1[25].isa;

    (*(v42 + 4))(v40, v39, v41);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v44 = v1[27].isa;
    v43 = v1[28].isa;
    v45 = v1;
    v48 = v1 + 25;
    v47 = v1[25].isa;
    v46 = v48[1].isa;
    v49 = v45[24].isa;
    v50 = sub_25F5E3FB4();
    __swift_project_value_buffer(v50, qword_27FD9EA20);
    v51 = *(v47 + 2);
    v51(v44, v43, v49);
    v51(v46, v43, v49);
    v52 = sub_25F5E3F94();
    v53 = sub_25F5E47B4();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v45[26].isa;
    v56 = v45[27].isa;
    log = v45;
    v59 = v45 + 24;
    v57 = v45[24].isa;
    v58 = v59[1].isa;
    if (v54)
    {
      v60 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v60 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58]);
      swift_allocError();
      v51(v61, v56, v57);
      v62 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v58 + 1);
      (v1)(v56, v57);
      *(v60 + 4) = v62;
      *v183 = v62;
      *(v60 + 12) = 2048;
      v63 = sub_25F5E3CB4();
      (v1)(v55, v57);
      *(v60 + 14) = v63;
      _os_log_impl(&dword_25F56A000, v52, v53, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v60, 0x16u);
      sub_25F57C148(v183, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v183, -1, -1);
      MEMORY[0x25F8E3B70](v60, -1, -1);
    }

    else
    {
      v1 = *(v58 + 1);
      (v1)(v55, v57);

      (v1)(v56, v57);
    }

    v97 = log[28].isa;
    v98 = sub_25F5E3CB4();
    v99 = v98 - 1000;
    if (__OFSUB__(v98, 1000))
    {
      __break(1u);
    }

    else
    {
      v100 = v98 + 19100;
      if (!__OFADD__(v99, 20100))
      {
        v101 = log[28].isa;
        v102 = log[24].isa;
        v103 = log[25].isa;
        v105 = log[12].isa;
        v104 = log[13].isa;
        v106 = sub_25F58E04C(v100);
        if (v106 == 89)
        {
          v107 = 50;
        }

        else
        {
          v107 = v106;
        }

        sub_25F581FD8();
        swift_allocError();
        *v108 = v107;
        swift_willThrow();
        (v1)(v101, v102);
        v1 = log;
        v109 = log[8].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v70 = v0[23].isa;
  v71 = v1[19].isa;

  v1[9].isa = v38;
  v72 = v38;
  v73 = swift_dynamicCast();
  v74 = v1[37].isa;
  if (v73)
  {
    v76 = v1[22].isa;
    v75 = v1[23].isa;
    v77 = v1[19].isa;
    v78 = v1[20].isa;

    (*(v78 + 4))(v76, v75, v77);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v80 = v1[21].isa;
      v79 = v1[22].isa;
      v81 = v1[19].isa;
      v82 = v1[20].isa;
      v83 = sub_25F5E3FB4();
      __swift_project_value_buffer(v83, qword_27FD9EA20);
      v84 = v1;
      v85 = *(v82 + 2);
      v85(v80, v79, v81);
      v86 = sub_25F5E3F94();
      v87 = sub_25F5E47B4();
      v88 = os_log_type_enabled(v86, v87);
      v90 = v84[20].isa;
      v89 = v84[21].isa;
      loga = v84;
      v91 = v84[19].isa;
      if (v88)
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 138412290;
        sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08]);
        swift_allocError();
        v85(v94, v89, v91);
        v95 = _swift_stdlib_bridgeErrorToNSError();
        v96 = *(v90 + 1);
        v96(v89, v91);
        *(v92 + 4) = v95;
        *v93 = v95;
        _os_log_impl(&dword_25F56A000, v86, v87, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v92, 0xCu);
        sub_25F57C148(v93, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v93, -1, -1);
        MEMORY[0x25F8E3B70](v92, -1, -1);
      }

      else
      {

        v96 = *(v90 + 1);
        v96(v89, v91);
      }

      v135 = loga[22].isa;
      v136 = loga[19].isa;
      v138 = loga[12].isa;
      v137 = loga[13].isa;
      v139 = sub_25F58E838(v135);
      sub_25F581FD8();
      swift_allocError();
      *v140 = v139;
      swift_willThrow();
      v96(v135, v136);
      v1 = loga;
      v109 = loga[9].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v110 = v1[18].isa;
  v111 = v1[14].isa;

  v1[10].isa = v74;
  v112 = v74;
  if (swift_dynamicCast())
  {
    v114 = v1[17].isa;
    v113 = v1[18].isa;
    v115 = v1[14].isa;
    v116 = v1[15].isa;

    (*(v116 + 4))(v114, v113, v115);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v118 = v1[16].isa;
    v117 = v1[17].isa;
    v119 = v1[14].isa;
    v120 = v1[15].isa;
    v121 = sub_25F5E3FB4();
    __swift_project_value_buffer(v121, qword_27FD9EA20);
    v122 = v1;
    v123 = *(v120 + 2);
    v123(v118, v117, v119);
    v124 = sub_25F5E3F94();
    v125 = sub_25F5E47B4();
    v126 = os_log_type_enabled(v124, v125);
    v128 = v122[15].isa;
    v127 = v122[16].isa;
    logb = v122;
    v129 = v122[14].isa;
    if (v126)
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *v130 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10]);
      swift_allocError();
      v123(v132, v127, v129);
      v133 = _swift_stdlib_bridgeErrorToNSError();
      v134 = *(v128 + 1);
      v134(v127, v129);
      *(v130 + 4) = v133;
      *v131 = v133;
      _os_log_impl(&dword_25F56A000, v124, v125, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v130, 0xCu);
      sub_25F57C148(v131, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v131, -1, -1);
      MEMORY[0x25F8E3B70](v130, -1, -1);
    }

    else
    {

      v134 = *(v128 + 1);
      v134(v127, v129);
    }

    v161 = logb[17].isa;
    v162 = logb[13].isa;
    v163 = logb[14].isa;
    v164 = logb[12].isa;
    sub_25F581FD8();
    swift_allocError();
    *v165 = 8;
    swift_willThrow();
    v134(v161, v163);
    v1 = logb;
    v109 = logb[10].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v141 = v1[37].isa;
  v142 = sub_25F5E3FB4();
  __swift_project_value_buffer(v142, qword_27FD9EA20);
  v143 = v141;
  v144 = sub_25F5E3F94();
  v145 = sub_25F5E47B4();

  if (os_log_type_enabled(v144, v145))
  {
    v146 = v1[37].isa;
    v147 = swift_slowAlloc();
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v190 = v149;
    *v147 = 138412546;
    v150 = v146;
    v151 = _swift_stdlib_bridgeErrorToNSError();
    *(v147 + 4) = v151;
    *v148 = v151;
    *(v147 + 12) = 2080;
    swift_getErrorValue();
    v152 = v1[2].isa;
    v153 = v1[3].isa;
    swift_getDynamicType();
    v154 = sub_25F5E4D04();
    v156 = sub_25F570AF8(v154, v155, &v190);

    *(v147 + 14) = v156;
    _os_log_impl(&dword_25F56A000, v144, v145, "Failed to complete multimodal chat, reason=%@, type=%s", v147, 0x16u);
    sub_25F57C148(v148, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v148, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v149);
    MEMORY[0x25F8E3B70](v149, -1, -1);
    MEMORY[0x25F8E3B70](v147, -1, -1);
  }

  v157 = v1[37].isa;
  v158 = v1[12].isa;
  v159 = v1[13].isa;
  sub_25F581FD8();
  swift_allocError();
  *v160 = 4;
  swift_willThrow();

LABEL_39:

  v167 = v1[34].isa;
  v166 = v1[35].isa;
  v169 = v1[32].isa;
  v168 = v1[33].isa;
  v171 = v1[28].isa;
  v170 = v1[29].isa;
  p_isa = &v1->isa;
  v175 = v1 + 26;
  v174 = v1[26].isa;
  v173 = v175[1].isa;
  v176 = p_isa[22];
  v177 = p_isa[23];
  v180 = p_isa[21];
  v181 = p_isa[18];
  v184 = p_isa[17];
  logd = p_isa[16];

  v178 = p_isa[1];

  return v178();
}

uint64_t dispatch thunk of MultiModalChatPromptResponding.completeChat(userPrompt:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_25F58C4D8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MultiModalChatPromptResponding.completeChat(bindVariables:images:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F58C4D8;

  return v13(a1, a2, a3, a4);
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F59C1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_25F59C1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F59C274()
{
  sub_25F58C230(319, &qword_27FD9DED0, MEMORY[0x277D71C58]);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_25F58C230(319, &qword_27FD9DED8, MEMORY[0x277D0E698]);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_25F58C230(319, &qword_27FD9DEE0, MEMORY[0x277D42E28]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MultiModalLLMInference.completeChat(userPrompt:image:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 192);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_25F58C004;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of MultiModalLLMInference.completeChat(bindVariables:images:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 200);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F58C4D8;

  return v10(a1, a2);
}

uint64_t getEnumTagSinglePayload for MultiModalLLMInferenceConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiModalLLMInferenceConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F59C878()
{
  result = qword_27FD9E078;
  if (!qword_27FD9E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E078);
  }

  return result;
}

unint64_t sub_25F59C8D0()
{
  result = qword_27FD9E080;
  if (!qword_27FD9E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E080);
  }

  return result;
}

unint64_t sub_25F59C928()
{
  result = qword_27FD9E088;
  if (!qword_27FD9E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E088);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x25F8E3B70);
  }

  return result;
}

uint64_t sub_25F59CA78(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getTags(for:taggingArgs:chatPromptResponder:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 224) = a1;
  *(v3 + 232) = a3;
  v5 = sub_25F5E3F14();
  *(v3 + 240) = v5;
  v6 = *(v5 - 8);
  *(v3 + 248) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 256) = swift_task_alloc();
  v8 = type metadata accessor for ExtractedItem(0);
  *(v3 + 264) = v8;
  v9 = *(v8 - 8);
  *(v3 + 272) = v9;
  v10 = *(v9 + 64) + 15;
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a2;
  *(v3 + 304) = v11;
  *(v3 + 312) = v12;
  *(v3 + 320) = *(a2 + 1);
  *(v3 + 336) = a2[3];
  *(v3 + 444) = *(a2 + 48);
  *(v3 + 344) = *(a2 + 15);
  *(v3 + 360) = a2[17];
  *(v3 + 445) = *(a2 + 144);
  *(v3 + 446) = *(a2 + 145);

  return MEMORY[0x2822009F8](sub_25F59CC90, 0, 0);
}

void sub_25F59CC90()
{
  if (*(v0 + 446) == 1)
  {
    sub_25F59FDA4(v0 + 80);
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 368) = v2;
  if (v2)
  {
    v3 = *(v0 + 444);
    v4 = *(v0 + 272);
    v5 = *(v4 + 80);
    *(v0 + 440) = v5;
    v6 = *(v4 + 72);
    v7 = MEMORY[0x277D84F90];
    v8 = v3 - 1;
    *(v0 + 384) = 0;
    *(v0 + 392) = v7;
    *(v0 + 376) = v6;
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    sub_25F57B808(v1 + ((v5 + 32) & ~v5), v10);
    sub_25F57B808(v10, v9);
    if (v8 > 1)
    {
      v37 = *(v0 + 304);
      v38 = *(v0 + 264);
      v39 = *(v0 + 232);
      v40 = v39[3];
      v41 = v39[4];
      __swift_project_boxed_opaque_existential_1Tm(v39, v40);
      v42 = (v37 + *(v38 + 20));
      v43 = *v42;
      v44 = v42[1];
      v45 = *(v41 + 16);
      v56 = (v45 + *v45);
      v46 = v45[1];
      v47 = swift_task_alloc();
      *(v0 + 424) = v47;
      *v47 = v0;
      v47[1] = sub_25F59DE04;

      v56(v43, v44, v40, v41);
    }

    else
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 264);
      v13 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v15 = (v11 + *(v12 + 20));
      v16 = v15[1];
      *(inited + 48) = *v15;
      *(inited + 56) = v16;

      v17 = sub_25F571EB0(inited);
      *(v0 + 400) = v17;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v18 = v13[3];
      v19 = v13[4];
      __swift_project_boxed_opaque_existential_1Tm(v13, v18);
      v20 = *(v19 + 24);
      v55 = (v20 + *v20);
      v21 = v20[1];
      v22 = swift_task_alloc();
      *(v0 + 408) = v22;
      *v22 = v0;
      v22[1] = sub_25F59D1EC;

      v55(v17, v18, v19);
    }
  }

  else
  {
    v23 = 0;
    v25 = *(v0 + 264);
    v24 = *(v0 + 272);
    v26 = MEMORY[0x277D84F90];
    v27 = *(MEMORY[0x277D84F90] + 16);
    while (v27 != v23)
    {
      if (v23 >= *(v26 + 16))
      {
        __break(1u);
        return;
      }

      v28 = *(v0 + 280);
      sub_25F57B808(v26 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23++, v28);
      v29 = *(v28 + *(v25 + 24));

      sub_25F57B8D4(v28);
      if (v29)
      {
        v31 = *(v0 + 296);
        v30 = *(v0 + 304);
        v33 = *(v0 + 280);
        v32 = *(v0 + 288);
        v34 = *(v0 + 256);

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v35 = *(v0 + 8);
        v36 = MEMORY[0x277D84F90];

        v35(v36);
        return;
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v48 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);
    v50 = *(v0 + 296);
    v49 = *(v0 + 304);
    v52 = *(v0 + 280);
    v51 = *(v0 + 288);
    v53 = *(v0 + 256);

    v54 = *(v0 + 8);

    v54();
  }
}

uint64_t sub_25F59D1EC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[20] = v3;
  v5[21] = a1;
  v5[22] = a2;
  v5[23] = v2;
  v6 = v4[51];
  v7 = *v3;
  v5[52] = v2;

  v8 = v4[50];
  if (v2)
  {
    v9 = v5[49];

    v10 = sub_25F59E9F4;
  }

  else
  {

    v10 = sub_25F59D338;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_25F59D338()
{
  v108 = v0;
  v1 = *(v0 + 416);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = qword_27FD9D8B0;

  if (v4 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v107[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F570AF8(v3, v2, v107);
    _os_log_impl(&dword_25F56A000, v6, v7, "chat response with tags %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v10 = sub_25F59F5FC(v3, v2, *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 445));

  if (v1)
  {

    v11 = v1;
    v12 = sub_25F5E3F94();
    v13 = sub_25F5E47B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v107[0] = v16;
      *v14 = 136315394;
      v17 = sub_25F570AF8(v3, v2, v107);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_25F56A000, v12, v13, "failed to parse llm response: %s, error: %@", v14, 0x16u);
      sub_25F57C148(v15, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8E3B70](v16, -1, -1);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v20 = sub_25F5E3F94();
    v21 = sub_25F5E4794();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v107[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x25F8E2CF0](v10, MEMORY[0x277D837D0]);
      v26 = sub_25F570AF8(v24, v25, v107);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25F56A000, v20, v21, "parsed auto tagger response: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8E3B70](v23, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    if (*(v0 + 446) == 1)
    {
      sub_25F573B94(v0 + 80, v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      if (*(v0 + 144))
      {
        v103 = *(v0 + 336);
        v104 = *(v0 + 320);
        v101 = *(v0 + 328);
        v102 = *(v0 + 312);
        v27 = *(v0 + 304);
        v28 = *(v0 + 256);
        v29 = *(v0 + 264);
        v30 = *(v0 + 240);
        v31 = *(v0 + 248);
        v32 = *(v0 + 232);
        v33 = v32[3];
        v34 = v32[4];
        __swift_project_boxed_opaque_existential_1Tm(v32, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v37 = v36;
        v99 = *(v27 + *(v29 + 36));
        v100 = *(v27 + *(v29 + 32));
        v38 = swift_task_alloc();
        *(v38 + 16) = v27;
        *(v38 + 24) = v101;
        *(v38 + 32) = v103;
        *(v38 + 40) = v10;
        *(v38 + 48) = v102;
        *(v38 + 56) = v104;
        *(v38 + 64) = v35;
        *(v38 + 72) = v37;
        *(v38 + 80) = v100;
        *(v38 + 96) = v99;
        sub_25F5E3F34();

        v39 = *(v0 + 152);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 120), *(v0 + 144));
        sub_25F5E3F24();
        (*(v31 + 8))(v28, v30);
        sub_25F5A0120(v0 + 120);
      }

      else
      {
        sub_25F57C148(v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      }
    }

    v40 = *(v0 + 296);
    v41 = *(*(v0 + 264) + 24);
    v42 = *(v40 + v41);

    *(v40 + v41) = v10;
  }

  v43 = *(v0 + 392);
  sub_25F57B808(*(v0 + 296), *(v0 + 288));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_25F57851C(0, v45[2] + 1, 1, *(v0 + 392));
  }

  v47 = v45[2];
  v46 = v45[3];
  if (v47 >= v46 >> 1)
  {
    v45 = sub_25F57851C(v46 > 1, v47 + 1, 1, v45);
  }

  v48 = *(v0 + 376);
  v49 = *(v0 + 440);
  v50 = *(v0 + 368);
  v51 = *(v0 + 296);
  v1 = *(v0 + 304);
  v52 = *(v0 + 288);
  v53 = *(v0 + 384) + 1;
  v45[2] = v47 + 1;
  sub_25F57B6DC(v52, v45 + ((v49 + 32) & ~v49) + v48 * v47);
  sub_25F57B8D4(v1);
  sub_25F57B8D4(v51);
  if (v53 == v50)
  {
    v2 = 0;
    v54 = *(v0 + 264);
    v3 = *(v0 + 272);
    v55 = v45[2];
    while (v55 != v2)
    {
      if (v2 >= v45[2])
      {
        __break(1u);
        goto LABEL_38;
      }

      v1 = *(v0 + 280);
      sub_25F57B808(v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2++, v1);
      v56 = *&v1[*(v54 + 24)];

      sub_25F57B8D4(v1);
      if (v56)
      {
        v58 = *(v0 + 296);
        v57 = *(v0 + 304);
        v60 = *(v0 + 280);
        v59 = *(v0 + 288);
        v61 = *(v0 + 256);

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v62 = *(v0 + 8);

        return v62(v45);
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v81 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);
    v83 = *(v0 + 296);
    v82 = *(v0 + 304);
    v85 = *(v0 + 280);
    v84 = *(v0 + 288);
    v86 = *(v0 + 256);

    v87 = *(v0 + 8);

    return v87();
  }

  else
  {
    v64 = *(v0 + 376);
    v65 = *(v0 + 384) + 1;
    *(v0 + 384) = v65;
    *(v0 + 392) = v45;
    v66 = *(v0 + 296);
    v67 = *(v0 + 304);
    v68 = *(v0 + 444) - 1;
    sub_25F57B808(*(v0 + 224) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + v64 * v65, v67);
    sub_25F57B808(v67, v66);
    if (v68 >= 2)
    {
      v88 = *(v0 + 304);
      v89 = *(v0 + 264);
      v90 = *(v0 + 232);
      v91 = v90[3];
      v92 = v90[4];
      __swift_project_boxed_opaque_existential_1Tm(v90, v91);
      v93 = (v88 + *(v89 + 20));
      v94 = *v93;
      v95 = v93[1];
      v96 = *(v92 + 16);
      v106 = (v96 + *v96);
      v97 = v96[1];
      v98 = swift_task_alloc();
      *(v0 + 424) = v98;
      *v98 = v0;
      v98[1] = sub_25F59DE04;

      return v106(v94, v95, v91, v92);
    }

    else
    {
      v69 = *(v0 + 304);
      v70 = *(v0 + 264);
      v71 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v73 = (v69 + *(v70 + 20));
      v74 = v73[1];
      *(inited + 48) = *v73;
      *(inited + 56) = v74;

      v75 = sub_25F571EB0(inited);
      *(v0 + 400) = v75;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v76 = v71[3];
      v77 = v71[4];
      __swift_project_boxed_opaque_existential_1Tm(v71, v76);
      v78 = *(v77 + 24);
      v105 = (v78 + *v78);
      v79 = v78[1];
      v80 = swift_task_alloc();
      *(v0 + 408) = v80;
      *v80 = v0;
      v80[1] = sub_25F59D1EC;

      return v105(v75, v76, v77);
    }
  }
}

uint64_t sub_25F59DE04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v5[24] = v3;
  v5[25] = a1;
  v5[26] = a2;
  v5[27] = v2;
  v6 = v4[53];
  v10 = *v3;
  v5[54] = v2;

  if (v2)
  {
    v7 = v5[49];

    v8 = sub_25F59EABC;
  }

  else
  {
    v8 = sub_25F59DF28;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_25F59DF28()
{
  v108 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = qword_27FD9D8B0;

  if (v4 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v107[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F570AF8(v3, v2, v107);
    _os_log_impl(&dword_25F56A000, v6, v7, "chat response with tags %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v10 = sub_25F59F5FC(v3, v2, *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 445));

  if (v1)
  {

    v11 = v1;
    v12 = sub_25F5E3F94();
    v13 = sub_25F5E47B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v107[0] = v16;
      *v14 = 136315394;
      v17 = sub_25F570AF8(v3, v2, v107);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_25F56A000, v12, v13, "failed to parse llm response: %s, error: %@", v14, 0x16u);
      sub_25F57C148(v15, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8E3B70](v16, -1, -1);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v20 = sub_25F5E3F94();
    v21 = sub_25F5E4794();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v107[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x25F8E2CF0](v10, MEMORY[0x277D837D0]);
      v26 = sub_25F570AF8(v24, v25, v107);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25F56A000, v20, v21, "parsed auto tagger response: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8E3B70](v23, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    if (*(v0 + 446) == 1)
    {
      sub_25F573B94(v0 + 80, v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      if (*(v0 + 144))
      {
        v103 = *(v0 + 336);
        v104 = *(v0 + 320);
        v101 = *(v0 + 328);
        v102 = *(v0 + 312);
        v27 = *(v0 + 304);
        v28 = *(v0 + 256);
        v29 = *(v0 + 264);
        v30 = *(v0 + 240);
        v31 = *(v0 + 248);
        v32 = *(v0 + 232);
        v33 = v32[3];
        v34 = v32[4];
        __swift_project_boxed_opaque_existential_1Tm(v32, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v37 = v36;
        v99 = *(v27 + *(v29 + 36));
        v100 = *(v27 + *(v29 + 32));
        v38 = swift_task_alloc();
        *(v38 + 16) = v27;
        *(v38 + 24) = v101;
        *(v38 + 32) = v103;
        *(v38 + 40) = v10;
        *(v38 + 48) = v102;
        *(v38 + 56) = v104;
        *(v38 + 64) = v35;
        *(v38 + 72) = v37;
        *(v38 + 80) = v100;
        *(v38 + 96) = v99;
        sub_25F5E3F34();

        v39 = *(v0 + 152);
        __swift_project_boxed_opaque_existential_1Tm((v0 + 120), *(v0 + 144));
        sub_25F5E3F24();
        (*(v31 + 8))(v28, v30);
        sub_25F5A0120(v0 + 120);
      }

      else
      {
        sub_25F57C148(v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      }
    }

    v40 = *(v0 + 296);
    v41 = *(*(v0 + 264) + 24);
    v42 = *(v40 + v41);

    *(v40 + v41) = v10;
  }

  v43 = *(v0 + 392);
  sub_25F57B808(*(v0 + 296), *(v0 + 288));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_25F57851C(0, v45[2] + 1, 1, *(v0 + 392));
  }

  v47 = v45[2];
  v46 = v45[3];
  if (v47 >= v46 >> 1)
  {
    v45 = sub_25F57851C(v46 > 1, v47 + 1, 1, v45);
  }

  v48 = *(v0 + 376);
  v49 = *(v0 + 440);
  v50 = *(v0 + 368);
  v51 = *(v0 + 296);
  v1 = *(v0 + 304);
  v52 = *(v0 + 288);
  v53 = *(v0 + 384) + 1;
  v45[2] = v47 + 1;
  sub_25F57B6DC(v52, v45 + ((v49 + 32) & ~v49) + v48 * v47);
  sub_25F57B8D4(v1);
  sub_25F57B8D4(v51);
  if (v53 == v50)
  {
    v2 = 0;
    v54 = *(v0 + 264);
    v3 = *(v0 + 272);
    v55 = v45[2];
    while (v55 != v2)
    {
      if (v2 >= v45[2])
      {
        __break(1u);
        goto LABEL_38;
      }

      v1 = *(v0 + 280);
      sub_25F57B808(v45 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2++, v1);
      v56 = *&v1[*(v54 + 24)];

      sub_25F57B8D4(v1);
      if (v56)
      {
        v58 = *(v0 + 296);
        v57 = *(v0 + 304);
        v60 = *(v0 + 280);
        v59 = *(v0 + 288);
        v61 = *(v0 + 256);

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v62 = *(v0 + 8);

        return v62(v45);
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v81 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);
    v83 = *(v0 + 296);
    v82 = *(v0 + 304);
    v85 = *(v0 + 280);
    v84 = *(v0 + 288);
    v86 = *(v0 + 256);

    v87 = *(v0 + 8);

    return v87();
  }

  else
  {
    v64 = *(v0 + 376);
    v65 = *(v0 + 384) + 1;
    *(v0 + 384) = v65;
    *(v0 + 392) = v45;
    v66 = *(v0 + 296);
    v67 = *(v0 + 304);
    v68 = *(v0 + 444) - 1;
    sub_25F57B808(*(v0 + 224) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + v64 * v65, v67);
    sub_25F57B808(v67, v66);
    if (v68 >= 2)
    {
      v88 = *(v0 + 304);
      v89 = *(v0 + 264);
      v90 = *(v0 + 232);
      v91 = v90[3];
      v92 = v90[4];
      __swift_project_boxed_opaque_existential_1Tm(v90, v91);
      v93 = (v88 + *(v89 + 20));
      v94 = *v93;
      v95 = v93[1];
      v96 = *(v92 + 16);
      v106 = (v96 + *v96);
      v97 = v96[1];
      v98 = swift_task_alloc();
      *(v0 + 424) = v98;
      *v98 = v0;
      v98[1] = sub_25F59DE04;

      return v106(v94, v95, v91, v92);
    }

    else
    {
      v69 = *(v0 + 304);
      v70 = *(v0 + 264);
      v71 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v73 = (v69 + *(v70 + 20));
      v74 = v73[1];
      *(inited + 48) = *v73;
      *(inited + 56) = v74;

      v75 = sub_25F571EB0(inited);
      *(v0 + 400) = v75;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v76 = v71[3];
      v77 = v71[4];
      __swift_project_boxed_opaque_existential_1Tm(v71, v76);
      v78 = *(v77 + 24);
      v105 = (v78 + *v78);
      v79 = v78[1];
      v80 = swift_task_alloc();
      *(v0 + 408) = v80;
      *v80 = v0;
      v80[1] = sub_25F59D1EC;

      return v105(v75, v76, v77);
    }
  }
}

uint64_t sub_25F59E9F4()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_25F57C148((v0 + 10), &qword_27FD9E090, &unk_25F5E85C8);
  sub_25F57B8D4(v2);
  sub_25F57B8D4(v1);
  v3 = v0[52];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t sub_25F59EABC()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_25F57C148((v0 + 10), &qword_27FD9E090, &unk_25F5E85C8);
  sub_25F57B8D4(v2);
  sub_25F57B8D4(v1);
  v3 = v0[54];
  v5 = v0[37];
  v4 = v0[38];
  v7 = v0[35];
  v6 = v0[36];
  v8 = v0[32];

  v9 = v0[1];

  return v9();
}

uint64_t TaggingParameters.llmInferenceConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_25F57B740(v11, v10);
}

__n128 TaggingParameters.llmInferenceConfig.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_25F5767CC(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t TaggingParameters.allowListedTags.setter(uint64_t a1)
{
  v3 = *(v1 + 120);

  *(v1 + 120) = a1;
  return result;
}

uint64_t TaggingParameters.denyListedTags.setter(uint64_t a1)
{
  v3 = *(v1 + 128);

  *(v1 + 128) = a1;
  return result;
}

uint64_t TaggingParameters.maxNumTags.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t TaggingParameters.maxNumTags.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

unint64_t sub_25F59EDA8()
{
  v1 = *v0;
  v2 = 0x73694C776F6C6C61;
  v3 = 0x7473694C796E6564;
  v4 = 0x61546D754E78616DLL;
  if (v1 != 3)
  {
    v4 = 0x426E4965726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F59EE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5A049C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F59EE94(uint64_t a1)
{
  v2 = sub_25F5A0150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F59EED0(uint64_t a1)
{
  v2 = sub_25F5A0150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaggingParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0A8, &qword_25F5E85E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v29 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5A0150();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v32);
  }

  v31 = v6;
  v67 = 0;
  sub_25F576820();
  v13 = v5;
  sub_25F5E4AD4();
  v61 = v53;
  v62 = v54;
  v63 = v55;
  LOBYTE(v64) = v56;
  v57 = v49;
  v58 = v50;
  v59 = v51;
  v60 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  LOBYTE(v33[0]) = 1;
  sub_25F576874();
  sub_25F5E4A84();
  v14 = *&v42[0];
  LOBYTE(v33[0]) = 2;
  sub_25F5E4A84();
  v15 = *&v42[0];
  LOBYTE(v42[0]) = 3;
  v16 = sub_25F5E4A74();
  v17 = v31;
  v30 = v16;
  v65 = v18 & 1;
  v66 = 4;
  v19 = sub_25F5E4AA4();
  (*(v17 + 8))(v10, v13);
  v19 &= 1u;
  v36 = v61;
  v37 = v62;
  v38 = v63;
  v33[0] = v57;
  v33[1] = v58;
  v34 = v59;
  v35 = v60;
  *&v39 = v64;
  *(&v39 + 1) = v14;
  v20 = v30;
  *&v40 = v15;
  *(&v40 + 1) = v30;
  LOBYTE(v13) = v65;
  LOBYTE(v41) = v65;
  HIBYTE(v41) = v19;
  v21 = v58;
  *a2 = v57;
  *(a2 + 16) = v21;
  v22 = v34;
  v23 = v35;
  v24 = v37;
  *(a2 + 64) = v36;
  *(a2 + 80) = v24;
  *(a2 + 32) = v22;
  *(a2 + 48) = v23;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  *(a2 + 144) = v41;
  *(a2 + 112) = v26;
  *(a2 + 128) = v27;
  *(a2 + 96) = v25;
  sub_25F5A01A4(v33, v42);
  __swift_destroy_boxed_opaque_existential_1Tm(v32);
  v42[4] = v61;
  v42[5] = v62;
  v42[6] = v63;
  v42[0] = v57;
  v42[1] = v58;
  v42[2] = v59;
  v42[3] = v60;
  v43 = v64;
  v44 = v14;
  v45 = v15;
  v46 = v20;
  v47 = v13;
  v48 = v19;
  return sub_25F57B7B4(v42);
}

uint64_t sub_25F59F380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F5E4B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F59F408(uint64_t a1)
{
  v2 = sub_25F5A0838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F59F444(uint64_t a1)
{
  v2 = sub_25F5A0838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F59F480@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0F0, &qword_25F5E88F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v16 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A0838();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v12 = sub_25F5E4A94();
  v14 = v13;
  (*(v6 + 8))(v10, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_25F59F5FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;

  v14 = sub_25F5ACBF0(a1, a2);
  v16 = v15;
  v17 = sub_25F5E33E4();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  sub_25F5E33D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0D8, &qword_25F5E8898);
  sub_25F5A06CC();
  sub_25F5E33C4();
  if (v7)
  {
    sub_25F571820(v14, v16);

    if (qword_27FD9D8B0 != -1)
    {
      goto LABEL_78;
    }

    goto LABEL_3;
  }

  v83 = a6;
  v80 = a5;
  v81 = v14;
  v82 = v16;

  v29 = v89;
  v30 = *(v89 + 16);
  v84 = a3;
  if (v30)
  {
    v90 = MEMORY[0x277D84F90];
    sub_25F571230(0, v30, 0);
    a6 = v90;
    v31 = (v29 + 40);
    do
    {
      v32 = *(v31 - 1);
      v33 = *v31;
      v35 = *(v90 + 16);
      v34 = *(v90 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_25F571230((v34 > 1), v35 + 1, 1);
      }

      *(v90 + 16) = v35 + 1;
      v36 = v90 + 16 * v35;
      *(v36 + 32) = v32;
      *(v36 + 40) = v33;
      v31 += 2;
      --v30;
    }

    while (v30);

    a3 = v84;
    if (!v84)
    {
LABEL_12:
      if (a4)
      {
        goto LABEL_40;
      }

LABEL_13:
      if (v83)
      {
        goto LABEL_67;
      }

LABEL_64:
      if (*(a6 + 16) <= v80)
      {
LABEL_67:
        sub_25F571820(v81, v82);
        return a6;
      }

      sub_25F5C73CC();
      v72 = sub_25F5C3408(v80, a6);
      if (v71)
      {
        v74 = v71;
        v75 = v70;
        v76 = v69;
        sub_25F5E4B94();
        swift_unknownObjectRetain_n();
        v77 = swift_dynamicCastClass();
        if (!v77)
        {
          swift_unknownObjectRelease();
          v77 = MEMORY[0x277D84F90];
        }

        v78 = *(v77 + 16);

        if (__OFSUB__(v74 >> 1, v75))
        {
          __break(1u);
        }

        else if (v78 == (v74 >> 1) - v75)
        {
          v73 = swift_dynamicCastClass();
          if (!v73)
          {
            swift_unknownObjectRelease();
            sub_25F571820(v81, v82);
            swift_unknownObjectRelease();
            return MEMORY[0x277D84F90];
          }

          goto LABEL_73;
        }

        swift_unknownObjectRelease();
        v71 = v74;
        v70 = v75;
        v69 = v76;
      }

      sub_25F5C7154(v72, v69, v70, v71);
LABEL_73:
      a6 = v73;
      sub_25F571820(v81, v82);
      swift_unknownObjectRelease();
      return a6;
    }
  }

  else
  {

    a6 = MEMORY[0x277D84F90];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v88 = *(a6 + 16);
  if (!v88)
  {
    v85 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v37 = 0;
  v7 = a3 + 56;
  v85 = MEMORY[0x277D84F90];
  do
  {
    v38 = v37;
    while (1)
    {
      if (v38 >= *(a6 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      v37 = v38 + 1;
      if (*(a3 + 16))
      {
        break;
      }

LABEL_20:
      v38 = v37;
      if (v37 == v88)
      {
        goto LABEL_39;
      }
    }

    v39 = (a6 + 32 + 16 * v38);
    v40 = *v39;
    v41 = v39[1];
    v42 = *(a3 + 40);
    sub_25F5E4C34();

    sub_25F5E4334();
    v43 = sub_25F5E4C54();
    v44 = -1 << *(a3 + 32);
    v45 = v43 & ~v44;
    if (((*(v7 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v46 = ~v44;
    while (1)
    {
      v47 = (*(a3 + 48) + 16 * v45);
      v48 = *v47 == v40 && v47[1] == v41;
      if (v48 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v45 = (v45 + 1) & v46;
      if (((*(v7 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v49 = v85;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25F571230(0, *(v85 + 16) + 1, 1);
      v49 = v85;
    }

    v51 = *(v49 + 16);
    v50 = *(v49 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_25F571230((v50 > 1), v51 + 1, 1);
      v49 = v85;
    }

    *(v49 + 16) = v51 + 1;
    v85 = v49;
    v52 = v49 + 16 * v51;
    *(v52 + 32) = v40;
    *(v52 + 40) = v41;
    a3 = v84;
  }

  while (v37 != v88);
LABEL_39:

  a6 = v85;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_40:
  v53 = *(a6 + 16);
  if (!v53)
  {
    v55 = MEMORY[0x277D84F90];
LABEL_63:

    a6 = v55;
    if (v83)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v7 = 0;
  v54 = a4 + 56;
  v55 = MEMORY[0x277D84F90];
  v86 = *(a6 + 16);
LABEL_42:
  v87 = v55;
  while (v7 < *(a6 + 16))
  {
    v56 = (a6 + 32 + 16 * v7);
    v58 = *v56;
    v57 = v56[1];
    ++v7;
    if (!*(a4 + 16))
    {

LABEL_54:
      v55 = v87;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25F571230(0, *(v87 + 16) + 1, 1);
        v55 = v87;
      }

      v67 = *(v55 + 16);
      v66 = *(v55 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_25F571230((v66 > 1), v67 + 1, 1);
        v55 = v87;
      }

      *(v55 + 16) = v67 + 1;
      v68 = v55 + 16 * v67;
      *(v68 + 32) = v58;
      *(v68 + 40) = v57;
      v53 = v86;
      if (v7 != v86)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

    v59 = *(a4 + 40);
    sub_25F5E4C34();

    sub_25F5E4334();
    v60 = sub_25F5E4C54();
    v61 = -1 << *(a4 + 32);
    v62 = v60 & ~v61;
    if (((*(v54 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
    {
      goto LABEL_54;
    }

    v63 = ~v61;
    while (1)
    {
      v64 = (*(a4 + 48) + 16 * v62);
      v65 = *v64 == v58 && v64[1] == v57;
      if (v65 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v62 = (v62 + 1) & v63;
      if (((*(v54 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (v7 == v53)
    {
      v55 = v87;
      goto LABEL_63;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  swift_once();
LABEL_3:
  v20 = sub_25F5E3FB4();
  __swift_project_value_buffer(v20, qword_27FD9EA20);
  v21 = v7;
  v22 = sub_25F5E3F94();
  v23 = sub_25F5E47B4();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    v26 = v7;
    v27 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v27;
    *v25 = v27;
    _os_log_impl(&dword_25F56A000, v22, v23, "Failed to parse tags: %@", v24, 0xCu);
    sub_25F57C148(v25, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v25, -1, -1);
    MEMORY[0x25F8E3B70](v24, -1, -1);
  }

  sub_25F581FD8();
  swift_allocError();
  *v28 = 1;
  swift_willThrow();

  return a6;
}

void sub_25F59FDA4(uint64_t a1@<X8>)
{
  sub_25F5E3D74();
  sub_25F5A0674();
  sub_25F5E3D94();
  if (v1)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v3 = sub_25F5E3FB4();
    __swift_project_value_buffer(v3, qword_27FD9EA20);
    v4 = v1;
    v5 = sub_25F5E3F94();
    v6 = sub_25F5E47B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_25F56A000, v5, v6, "Failed to connect to Biome tag source: %@", v7, 0xCu);
      sub_25F57C148(v8, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v8, -1, -1);
      MEMORY[0x25F8E3B70](v7, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  else
  {
    sub_25F573A2C(&v12, a1);
  }
}

uint64_t sub_25F59FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19[1] = a3;
  v19[2] = a6;
  v19[5] = a8;
  v19[6] = a13;
  v19[7] = a12;
  v19[3] = a11;
  v19[4] = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  sub_25F573B94(a2, v19 - v17, &qword_27FD9DE10, &unk_25F5E7240);
  sub_25F5E3EE4();

  sub_25F5E3F04();

  sub_25F5E3ED4();

  sub_25F5E3EF4();

  sub_25F5E3EA4();

  sub_25F5E3EC4();

  return sub_25F5E3EB4();
}

unint64_t sub_25F5A0150()
{
  result = qword_27FD9E0B0;
  if (!qword_27FD9E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0B0);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F5A0210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
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

uint64_t sub_25F5A0258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_25F5A02F4(uint64_t a1, int a2)
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

uint64_t sub_25F5A033C(uint64_t result, int a2, int a3)
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

unint64_t sub_25F5A0398()
{
  result = qword_27FD9E0B8;
  if (!qword_27FD9E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0B8);
  }

  return result;
}

unint64_t sub_25F5A03F0()
{
  result = qword_27FD9E0C0;
  if (!qword_27FD9E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0C0);
  }

  return result;
}

unint64_t sub_25F5A0448()
{
  result = qword_27FD9E0C8;
  if (!qword_27FD9E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0C8);
  }

  return result;
}

uint64_t sub_25F5A049C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000025F5EC490 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73694C776F6C6C61 && a2 == 0xEF73676154646574 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473694C796E6564 && a2 == 0xEE00736761546465 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61546D754E78616DLL && a2 == 0xEA00000000007367 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426E4965726F7473 && a2 == 0xEC000000656D6F69)
  {

    return 4;
  }

  else
  {
    v5 = sub_25F5E4B84();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_25F5A0674()
{
  result = qword_27FD9E0D0;
  if (!qword_27FD9E0D0)
  {
    sub_25F5E3D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0D0);
  }

  return result;
}

unint64_t sub_25F5A06CC()
{
  result = qword_27FD9E0E0;
  if (!qword_27FD9E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E0D8, &qword_25F5E8898);
    sub_25F5A0750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0E0);
  }

  return result;
}

unint64_t sub_25F5A0750()
{
  result = qword_27FD9E0E8;
  if (!qword_27FD9E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0E8);
  }

  return result;
}

uint64_t sub_25F5A07A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F5A07EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5A0838()
{
  result = qword_27FD9E0F8;
  if (!qword_27FD9E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0F8);
  }

  return result;
}

unint64_t sub_25F5A08A0()
{
  result = qword_27FD9E100;
  if (!qword_27FD9E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E100);
  }

  return result;
}

unint64_t sub_25F5A08F8()
{
  result = qword_27FD9E108;
  if (!qword_27FD9E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E108);
  }

  return result;
}

unint64_t sub_25F5A0950()
{
  result = qword_27FD9E110;
  if (!qword_27FD9E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E110);
  }

  return result;
}

uint64_t static PriMLETLUtils.processDataWithIgnoreFailures(data:ignoreFailures:processSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F575BD4;

  return sub_25F5A1F60(a1, a2, a3, a4);
}

uint64_t static PriMLETLUtils.checkGenerativeModelsAvailability(_:useCaseIdentifier:)(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v133 = a2;
  v5 = sub_25F5E3B34();
  v124 = *(v5 - 8);
  v125 = v5;
  v6 = *(v124 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v123 = &v119 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_25F5E3B44();
  v9 = *(v137 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x28223BE20](v137, v11);
  v120 = &v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v135 = &v119 - v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v119 - v18;
  v132 = sub_25F5E3B84();
  v130 = *(v132 - 8);
  v20 = *(v130 + 64);
  MEMORY[0x28223BE20](v132, v21);
  v129 = &v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_25F5E3B64();
  v128 = *(v131 - 8);
  v23 = *(v128 + 64);
  MEMORY[0x28223BE20](v131, v24);
  v127 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25F5E3BA4();
  v134 = *(v26 - 8);
  v27 = *(v134 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v30 = &v119 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v32 = sub_25F5E3FB4();
  v33 = __swift_project_value_buffer(v32, qword_27FD9EA20);

  v136 = v33;
  v34 = sub_25F5E3F94();
  v35 = sub_25F5E47A4();

  v36 = os_log_type_enabled(v34, v35);
  v126 = v31;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v122 = v26;
    v38 = v37;
    v39 = swift_slowAlloc();
    v121 = v19;
    v40 = v39;
    v139 = v39;
    *v38 = 136315394;
    v138 = v31;
    v41 = GenerativeModelsAvailabilityType.description.getter();
    v43 = v9;
    v44 = sub_25F570AF8(v41, v42, &v139);

    *(v38 + 4) = v44;
    v9 = v43;
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_25F570AF8(v133, a3, &v139);
    _os_log_impl(&dword_25F56A000, v34, v35, "Checking for GenerativeModels availability == %s for %s.", v38, 0x16u);
    swift_arrayDestroy();
    v45 = v40;
    v19 = v121;
    MEMORY[0x25F8E3B70](v45, -1, -1);
    v46 = v38;
    v26 = v122;
    MEMORY[0x25F8E3B70](v46, -1, -1);
  }

  (*(v130 + 104))(v129, *MEMORY[0x277D0E2D8], v132);

  v47 = v127;
  sub_25F5E3B54();
  sub_25F5E3B94();
  (*(v128 + 8))(v47, v131);
  sub_25F5E3B74();
  v48 = *(v9 + 16);
  v49 = v135;
  v50 = v19;
  v51 = v19;
  v52 = v137;
  v48(v135, v51, v137);
  v53 = (*(v9 + 88))(v49, v52);
  v54 = v30;
  if (v53 != *MEMORY[0x277D0DFA8])
  {
    if (v53 == *MEMORY[0x277D0DFB0])
    {
      v132 = v9;
      v133 = v30;
      (*(v9 + 96))(v49, v137);
      (*(v124 + 32))(v123, v49, v125);
      sub_25F5E3B24();
      v73 = sub_25F5E3F94();
      v74 = sub_25F5E47B4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v122 = v26;
        v77 = v76;
        v139 = v76;
        *v75 = 136315138;
        sub_25F5E3B14();
        sub_25F5A27B8(&qword_27FD9E130, MEMORY[0x277D0E218]);
        v78 = sub_25F5E46F4();
        v79 = v50;
        v81 = v80;

        v82 = sub_25F570AF8(v78, v81, &v139);
        v50 = v79;

        *(v75 + 4) = v82;
        _os_log_impl(&dword_25F56A000, v73, v74, "GenerativeModels is unavailable: %s.", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v77);
        v83 = v77;
        v26 = v122;
        MEMORY[0x25F8E3B70](v83, -1, -1);
        MEMORY[0x25F8E3B70](v75, -1, -1);
      }

      else
      {
      }

      sub_25F5A2764();
      swift_allocError();
      *v101 = 0;
      swift_willThrow();
      (*(v124 + 8))(v123, v125);
      (*(v132 + 8))(v50, v137);
    }

    else
    {
      if (v53 != *MEMORY[0x277D0E278])
      {
        v133 = v30;
        v102 = v120;
        v121 = v50;
        v48(v120, v50, v137);
        v103 = sub_25F5E3F94();
        v104 = sub_25F5E47B4();
        if (os_log_type_enabled(v103, v104))
        {
          v105 = v9;
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v122 = v26;
          v108 = v107;
          v139 = v107;
          *v106 = 136315138;
          sub_25F5A27B8(&qword_27FD9E120, MEMORY[0x277D0E280]);
          LODWORD(v136) = v104;
          v109 = v137;
          v110 = sub_25F5E4B44();
          v112 = v111;
          v113 = *(v105 + 8);
          v113(v102, v109);
          v49 = v135;
          v114 = sub_25F570AF8(v110, v112, &v139);

          *(v106 + 4) = v114;
          _os_log_impl(&dword_25F56A000, v103, v136, "Unexpected availibility state: %s.", v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v108);
          v115 = v108;
          v26 = v122;
          MEMORY[0x25F8E3B70](v115, -1, -1);
          MEMORY[0x25F8E3B70](v106, -1, -1);
        }

        else
        {

          v113 = *(v9 + 8);
          v113(v102, v137);
        }

        v116 = sub_25F5E3D24();
        sub_25F5A27B8(&qword_27FD9E118, MEMORY[0x277D413F8]);
        swift_allocError();
        (*(*(v116 - 8) + 104))(v117, *MEMORY[0x277D413E0], v116);
        swift_willThrow();
        v118 = v137;
        v113(v121, v137);
        (*(v134 + 8))(v133, v26);
        return (v113)(v49, v118);
      }

      v86 = sub_25F5E3F94();
      v87 = sub_25F5E47A4();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        *v88 = 0;
        _os_log_impl(&dword_25F56A000, v86, v87, "GenerativeModels is available.", v88, 2u);
        MEMORY[0x25F8E3B70](v88, -1, -1);
      }

      v89 = v126;
      if (v126)
      {
        (*(v9 + 8))(v50, v137);
        return (*(v134 + 8))(v54, v26);
      }

      v133 = v54;
      v90 = sub_25F5E3F94();
      v91 = sub_25F5E47A4();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v132 = v9;
        v93 = v92;
        v94 = v26;
        v95 = swift_slowAlloc();
        v139 = v95;
        *v93 = 136315138;
        v138 = v89;
        v96 = GenerativeModelsAvailabilityType.description.getter();
        v98 = sub_25F570AF8(v96, v97, &v139);

        *(v93 + 4) = v98;
        _os_log_impl(&dword_25F56A000, v90, v91, "GenerativeModels is available but task required %s.", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v95);
        v99 = v95;
        v26 = v94;
        MEMORY[0x25F8E3B70](v99, -1, -1);
        v9 = v132;
        MEMORY[0x25F8E3B70](v93, -1, -1);
      }

      sub_25F5A2764();
      swift_allocError();
      *v100 = 0;
      swift_willThrow();
      (*(v9 + 8))(v50, v137);
    }

    return (*(v134 + 8))(v133, v26);
  }

  v55 = sub_25F5E3F94();
  v56 = sub_25F5E47A4();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_25F56A000, v55, v56, "GenerativeModels is restricted.", v57, 2u);
    MEMORY[0x25F8E3B70](v57, -1, -1);
  }

  v58 = v126;
  if ((v126 & 2) != 0)
  {
    v84 = *(v9 + 8);
    v85 = v137;
    v84(v50, v137);
    (*(v134 + 8))(v54, v26);
    return (v84)(v49, v85);
  }

  else
  {
    v133 = v54;
    v59 = sub_25F5E3F94();
    v60 = sub_25F5E47A4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v132 = v9;
      v62 = v61;
      v63 = v26;
      v64 = swift_slowAlloc();
      v139 = v64;
      *v62 = 136315138;
      v138 = v58;
      v65 = GenerativeModelsAvailabilityType.description.getter();
      v67 = sub_25F570AF8(v65, v66, &v139);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_25F56A000, v59, v60, "GenerativeModels is restricted but task required %s.", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      v68 = v64;
      v26 = v63;
      v49 = v135;
      MEMORY[0x25F8E3B70](v68, -1, -1);
      v9 = v132;
      MEMORY[0x25F8E3B70](v62, -1, -1);
    }

    sub_25F5A2764();
    swift_allocError();
    *v69 = 0;
    swift_willThrow();
    v70 = *(v9 + 8);
    v71 = v137;
    v70(v50, v137);
    (*(v134 + 8))(v133, v26);
    return (v70)(v49, v71);
  }
}

uint64_t sub_25F5A186C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25F5A1894, 0, 0);
}

void *sub_25F5A1894()
{
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  result = sub_25F5783E8(0, v1, 0, MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[2];
    v0[6] = result;
    v0[7] = 0;
    if (v0[5])
    {
      v4 = *(v3 + 32);
      v0[8] = v4;
      v0[9] = 1;

      v5 = swift_task_alloc();
      v0[10] = v5;
      *v5 = v0;
      v5[1] = sub_25F5A19B0;
      v6 = v0[3];
      v7 = v0[4];

      return sub_25F575180(0, v4, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    return v8(result);
  }

  return result;
}

uint64_t sub_25F5A19B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[8];

  if (v1)
  {
    v8 = sub_25F5A1C80;
  }

  else
  {
    v4[12] = a1;
    v8 = sub_25F5A1AF4;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_25F5A1AF4()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[6];
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25F5783E8((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = v0[9];
    v6 = v0[5];
    v2[2] = v4 + 1;
    v2[v4 + 4] = v1;
    if (v5 != v6)
    {
      v7 = v0[9];
      v0[6] = v2;
      v8 = v0[5];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v0[9];
    v8 = v0[5];
    if (v7 != v8)
    {
LABEL_11:
      v0[7] = v7;
      if (v7 >= v8)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0[2] + 8 * v7 + 32);
        v0[8] = v10;
        v0[9] = v7 + 1;
        if (!__OFADD__(v7, 1))
        {

          v11 = swift_task_alloc();
          v0[10] = v11;
          *v11 = v0;
          v11[1] = sub_25F5A19B0;
          v12 = v0[3];
          v13 = v0[4];

          sub_25F575180(v7, v10, v12, v13);
          return;
        }
      }

      __break(1u);
      return;
    }

    v2 = v0[6];
  }

  v9 = v0[1];

  v9(v2);
}

void sub_25F5A1C80()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_25F5E3FB4();
  __swift_project_value_buffer(v2, qword_27FD9EA20);
  v3 = v1;
  v4 = sub_25F5E3F94();
  v5 = sub_25F5E47B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_25F56A000, v4, v5, "Processing failed for item %ld with error: %@", v8, 0x16u);
    sub_25F5A2810(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v12 = *(v0 + 104);

  if (v12 == 1)
  {
    if (*(v0 + 56) != *(v0 + 40) - 1 || *(*(v0 + 48) + 16))
    {

      v13 = *(v0 + 72);
      v14 = *(v0 + 40);
      if (v13 == v14)
      {
        v15 = *(v0 + 48);
        v16 = *(v0 + 8);

        v16(v15);
        return;
      }

      *(v0 + 56) = v13;
      if (v13 >= v14)
      {
        __break(1u);
      }

      else
      {
        v21 = *(*(v0 + 16) + 8 * v13 + 32);
        *(v0 + 64) = v21;
        *(v0 + 72) = v13 + 1;
        if (!__OFADD__(v13, 1))
        {

          v22 = swift_task_alloc();
          *(v0 + 80) = v22;
          *v22 = v0;
          v22[1] = sub_25F5A19B0;
          v23 = *(v0 + 24);
          v24 = *(v0 + 32);

          sub_25F575180(v13, v21, v23, v24);
          return;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
    v17 = *(v0 + 48);
  }

  v18 = *(v0 + 88);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 88);

  v19();
}

uint64_t sub_25F5A1F60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25F5A1F88, 0, 0);
}

void *sub_25F5A1F88()
{
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  result = sub_25F5783E8(0, v1, 0, MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[2];
    v4 = v0[3];
    v0[6] = result;
    v0[7] = 0;
    if (v0[5])
    {
      v5 = *(v3 + 32);
      v0[8] = v5;
      v0[9] = 1;

      v10 = (v4 + *v4);
      v6 = v4[1];
      v7 = swift_task_alloc();
      v0[10] = v7;
      *v7 = v0;
      v7[1] = sub_25F5A2100;
      v8 = v0[4];

      return (v10)(0, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = v0[1];

    return v9(result);
  }

  return result;
}

uint64_t sub_25F5A2100(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  v4[11] = v1;

  v7 = v4[8];

  if (v1)
  {
    v8 = sub_25F5A2430;
  }

  else
  {
    v4[12] = a1;
    v8 = sub_25F5A2244;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

void sub_25F5A2244()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[6];
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25F5783E8((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = v0[9];
    v6 = v0[5];
    v2[2] = v4 + 1;
    v2[v4 + 4] = v1;
    if (v5 != v6)
    {
      v7 = v0[9];
      v0[6] = v2;
      v8 = v0[5];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v0[9];
    v8 = v0[5];
    if (v7 != v8)
    {
LABEL_11:
      v0[7] = v7;
      if (v7 >= v8)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0[2] + 8 * v7 + 32);
        v0[8] = v10;
        v0[9] = v7 + 1;
        if (!__OFADD__(v7, 1))
        {
          v11 = v0[3];

          v15 = (v11 + *v11);
          v12 = v11[1];
          v13 = swift_task_alloc();
          v0[10] = v13;
          *v13 = v0;
          v13[1] = sub_25F5A2100;
          v14 = v0[4];

          v15(v7, v10);
          return;
        }
      }

      __break(1u);
      return;
    }

    v2 = v0[6];
  }

  v9 = v0[1];

  v9(v2);
}

void sub_25F5A2430()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_25F5E3FB4();
  __swift_project_value_buffer(v2, qword_27FD9EA20);
  v3 = v1;
  v4 = sub_25F5E3F94();
  v5 = sub_25F5E47B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_25F56A000, v4, v5, "Processing failed for item %ld with error: %@", v8, 0x16u);
    sub_25F5A2810(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v12 = *(v0 + 104);

  if (v12)
  {
    if (*(v0 + 56) != *(v0 + 40) - 1 || *(*(v0 + 48) + 16))
    {

      v13 = *(v0 + 72);
      v14 = *(v0 + 40);
      if (v13 == v14)
      {
        v15 = *(v0 + 48);
        v16 = *(v0 + 8);

        v16(v15);
        return;
      }

      *(v0 + 56) = v13;
      if (v13 >= v14)
      {
        __break(1u);
      }

      else
      {
        v21 = *(*(v0 + 16) + 8 * v13 + 32);
        *(v0 + 64) = v21;
        *(v0 + 72) = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          v22 = *(v0 + 24);

          v26 = (v22 + *v22);
          v23 = v22[1];
          v24 = swift_task_alloc();
          *(v0 + 80) = v24;
          *v24 = v0;
          v24[1] = sub_25F5A2100;
          v25 = *(v0 + 32);

          v26(v13, v21);
          return;
        }
      }

      __break(1u);
      return;
    }
  }

  else
  {
    v17 = *(v0 + 48);
  }

  v18 = *(v0 + 88);
  swift_willThrow();
  v19 = *(v0 + 8);
  v20 = *(v0 + 88);

  v19();
}

unint64_t sub_25F5A2764()
{
  result = qword_27FD9E128;
  if (!qword_27FD9E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E128);
  }

  return result;
}

uint64_t sub_25F5A27B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F5A2810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEF0, &qword_25F5E8550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5A2888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F5A28D0(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F5A2928(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40) - 8) + 64) + 15;
  *(v2 + 24) = swift_task_alloc();
  v4 = sub_25F5E3774();
  *(v2 + 32) = v4;
  v5 = *(v4 - 8);
  *(v2 + 40) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230) - 8) + 64) + 15;
  *(v2 + 56) = swift_task_alloc();
  v8 = sub_25F5E3794();
  *(v2 + 64) = v8;
  v9 = *(v8 - 8);
  *(v2 + 72) = v9;
  v10 = *(v9 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  v11 = type metadata accessor for ExtractedItem(0);
  *(v2 + 88) = v11;
  v12 = *(v11 - 8);
  *(v2 + 96) = v12;
  v13 = *(v12 + 64) + 15;
  *(v2 + 104) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  *(v2 + 112) = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240) - 8) + 64) + 15;
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;
  *(v2 + 144) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25F5A2B90, 0, 0);
}

uint64_t sub_25F5A2B90()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[16];
  v4 = sub_25F5E4784();
  v5 = [v4 next];

  v6 = v0[14];
  v7 = v0[15];
  v8 = v0[13];
  if (v5)
  {
    v10 = v0[11];
    v9 = v0[12];
    v11 = v0[10];
    v13 = v0[6];
    v12 = v0[7];
    v14 = v0[5];
    v61 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE8, &unk_25F5E7208);
    v15 = *(v9 + 72);
    v66 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_25F5E5EE0;
    v16 = sub_25F5E36D4();
    (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
    v17 = sub_25F5E3694();
    v64 = *(*(v17 - 8) + 56);
    v65 = v17;
    v64(v6, 1, 1);
    v18 = MEMORY[0x277D84F90];
    v63 = sub_25F571FC4(MEMORY[0x277D84F90]);
    *(v8 + v10[6]) = 0;
    sub_25F571FC4(v18);
    sub_25F5E3754();
    sub_25F573B94(v7, v8, &qword_27FD9DE10, &unk_25F5E7240);
    v19 = (v8 + v10[5]);
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    sub_25F573B94(v6, v8 + v10[7], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v14 + 8))(v13, v61);
    v20 = sub_25F5E3704();
    v21 = *(v20 - 8);
    v22 = (*(v21 + 48))(v12, 1, v20);
    v23 = v0[7];
    if (v22 == 1)
    {
      sub_25F57C148(v0[7], &qword_27FD9DE08, &unk_25F5E7230);
      v24 = 0;
      v25 = 0;
    }

    else
    {
      v33 = v0[7];
      v24 = sub_25F5E36F4();
      v25 = v34;
      (*(v21 + 8))(v23, v20);
    }

    v35 = v0[10];
    v36 = v0[3];
    v37 = (v0[13] + *(v0[11] + 32));
    *v37 = v24;
    v37[1] = v25;
    sub_25F5E3744();
    v38 = sub_25F5E3734();
    v39 = *(v38 - 8);
    v40 = (*(v39 + 48))(v36, 1, v38);
    v42 = v0[14];
    v41 = v0[15];
    v43 = v0[9];
    v44 = v0[10];
    v45 = v0[8];
    v46 = v0[3];
    if (v40 == 1)
    {
      (*(v43 + 8))(v0[10], v0[8]);
      sub_25F57C148(v42, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v41, &qword_27FD9DE10, &unk_25F5E7240);
      sub_25F57C148(v46, &qword_27FD9DE00, &unk_25F5E9D40);

      v47 = 0;
      v48 = 0;
    }

    else
    {
      v62 = sub_25F5E36F4();
      v48 = v49;
      (*(v43 + 8))(v44, v45);
      sub_25F57C148(v42, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v41, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v39 + 8))(v46, v38);

      v47 = v62;
    }

    v50 = v0[14];
    v51 = v0[15];
    v52 = v0[13];
    v53 = v0[10];
    v55 = v0[6];
    v54 = v0[7];
    v57 = v0[2];
    v56 = v0[3];
    v58 = *(v0[11] + 40);
    v59 = (v52 + *(v0[11] + 36));
    *v59 = v47;
    v59[1] = v48;
    *(v52 + v58) = v63;
    sub_25F57B6DC(v52, v67 + v66);
    (v64)(v57, 1, 1, v65);

    v60 = v0[1];

    return v60(v67);
  }

  else
  {
    v26 = v0[10];
    v28 = v0[6];
    v27 = v0[7];
    v29 = v0[3];
    sub_25F5A31D0();
    swift_allocError();
    *v30 = 4;
    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_25F5A3138(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5A2928(a1);
}

unint64_t sub_25F5A31D0()
{
  result = qword_27FD9E670;
  if (!qword_27FD9E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E670);
  }

  return result;
}

uint64_t sub_25F5A3224(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E4CC4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4, v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    return 0;
  }

  v28 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v29 = a2 & 0xFFFFFFFFFFFFFFLL;
  v11 = (v7 + 8);

  v12 = 0;
  v13 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_25F5E4944();
      v17 = v16;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v30[0] = a1;
        v30[1] = v29;
        v15 = v30 + v13;
      }

      else
      {
        v14 = v28;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v14 = sub_25F5E49A4();
        }

        v15 = (v14 + v13);
      }

      v18 = *v15;
      if ((*v15 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v22 = (__clz(v18 ^ 0xFF) - 24);
      if (v22 > 2)
      {
        if (v22 == 3)
        {
          v24 = ((v18 & 0xF) << 12) | ((v15[1] & 0x3F) << 6) | v15[2] & 0x3Fu;
          v17 = 3;
        }

        else
        {
          v25 = ((v18 & 0xF) << 18) | ((v15[1] & 0x3F) << 12) | ((v15[2] & 0x3F) << 6) | v15[3] & 0x3Fu;
          v17 = 4;
        }

        goto LABEL_16;
      }

      if (v22 == 1)
      {
LABEL_15:
        v17 = 1;
      }

      else
      {
        v23 = v15[1] & 0x3F | ((v18 & 0x1F) << 6);
        v17 = 2;
      }
    }

LABEL_16:
    if ((v12 & 1) == 0 || (sub_25F5E4CD4(), v19 = sub_25F5E4CA4(), (*v11)(v9, v4), (v19 & 1) == 0))
    {
      v13 += v17;
      sub_25F5E4CD4();
      v12 = sub_25F5E4CB4();
      v20 = *v11;
      (*v11)(v9, v4);
      if ((v12 & 1) == 0)
      {
        continue;
      }

      sub_25F5E4CD4();
      v21 = sub_25F5E4C94();
      v20(v9, v4);
      if ((v21 & 1) == 0)
      {
        continue;
      }
    }

    v26 = 1;
    goto LABEL_28;
  }

  while (v13 < v10);
  v26 = 0;
LABEL_28:

  return v26;
}

uint64_t sub_25F5A34D0(uint64_t a1, char a2)
{
  sub_25F5E4C34();
  v3 = qword_25F5E9CD8[a2];
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t GenerativeModelsAvailabilityType.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_25F578544(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_25F578544((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C62616C69617661;
  *(v5 + 5) = 0xE900000000000065;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_25F578544(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_25F578544((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463697274736572;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50);
  v9 = sub_25F5E4364();

  return v9;
}

PriMLETL::WeekDay_optional __swiftcall WeekDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F5A3778()
{
  v1 = qword_25F5E9CD8[*v0];
  sub_25F5E4334();
}

uint64_t EmailFilterCriteria.init(weekDays:startHour:endHour:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_25F5A3874()
{
  v1 = 0x756F487472617473;
  if (*v0 != 1)
  {
    v1 = 0x72756F48646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961446B656577;
  }
}

uint64_t sub_25F5A38D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5A9F80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5A3908(uint64_t a1)
{
  v2 = sub_25F5A9644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A3944(uint64_t a1)
{
  v2 = sub_25F5A9644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailFilterCriteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E138, &qword_25F5E8AA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9644();
  sub_25F5E4C74();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E148, &qword_25F5E8AB0);
    v24 = 0;
    sub_25F5A9698();
    sub_25F5E4A84();
    v12 = v25;
    v23 = 1;
    v13 = sub_25F5E4A74();
    v21 = v14;
    v20 = v13;
    v22 = 2;
    v16 = sub_25F5E4A74();
    v18 = v17;
    (*(v6 + 8))(v10, v5);
    v19 = v20;
    *a2 = v12;
    *(a2 + 8) = v19;
    *(a2 + 16) = v21 & 1;
    *(a2 + 24) = v16;
    *(a2 + 32) = v18 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 ExtractEmailParameters.init(lastDays:minMessages:maxMessages:maxLength:filterMessages:singleMessages:cleanupText:samplingSize:filterCriteria:customPredicateFormat:queryTimeout:useMorpheusToCleanupText:textCleanupMorpheusProgram:generativeModelsAvailabilityType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, __n128 a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v20 = *(a12 + 32);
  v21 = *a19;
  v22 = *(a19 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11 & 1;
  sub_25F5A9770(1);
  v23 = *(a12 + 16);
  *(a9 + 64) = *a12;
  *(a9 + 80) = v23;
  *(a9 + 96) = v20;
  result = a13;
  *(a9 + 104) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15 & 1;
  *(a9 + 129) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 152) = v21;
  *(a9 + 160) = v22;
  return result;
}

uint64_t sub_25F5A3D64(char a1)
{
  result = 0x737961447473616CLL;
  switch(a1)
  {
    case 1:
      v3 = 1299081581;
      return v3 | 0x6173736500000000;
    case 2:
      v3 = 1299734893;
      return v3 | 0x6173736500000000;
    case 3:
      return 0x74676E654C78616DLL;
    case 4:
      v4 = 0x7265746C6966;
      goto LABEL_12;
    case 5:
      v4 = 0x656C676E6973;
LABEL_12:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      break;
    case 6:
      result = 0x5470756E61656C63;
      break;
    case 7:
      result = 0x676E696C706D6173;
      break;
    case 8:
      result = 0x72437265746C6966;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x6D69547972657571;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F5A3F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5AA0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5A3F90(uint64_t a1)
{
  v2 = sub_25F5A9780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A3FCC(uint64_t a1)
{
  v2 = sub_25F5A9780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractEmailParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E160, &qword_25F5E8AB8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v46 - v9;
  v120 = 0;
  v116 = 1;
  v113 = 0;
  v110 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5A9780();
  sub_25F5E4C74();
  if (v2)
  {
    v121 = v2;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v66 = 0;
    v67 = 0;
    v60 = 0;
    v59 = 0uLL;
    v58 = 0;
    v61 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v65 = 0x403E000000000000;
    v16 = 7;
    v17 = 128;
    v18 = 2048;
    v19 = 1;
    v20 = 1;
  }

  else
  {
    LOBYTE(v82) = 0;
    v56 = sub_25F5E4AC4();
    LOBYTE(v82) = 1;
    v55 = sub_25F5E4A74();
    v120 = v22 & 1;
    LOBYTE(v82) = 2;
    v54 = sub_25F5E4AC4();
    LOBYTE(v82) = 3;
    v53 = sub_25F5E4AC4();
    LOBYTE(v82) = 4;
    v52 = sub_25F5E4A54();
    LOBYTE(v82) = 5;
    v51 = sub_25F5E4A54();
    LOBYTE(v82) = 6;
    v50 = sub_25F5E4A54();
    LOBYTE(v82) = 7;
    v23 = sub_25F5E4A74();
    v121 = 0;
    v61 = v23;
    v116 = v24 & 1;
    LOBYTE(v68) = 8;
    sub_25F5A9804();
    v25 = v121;
    sub_25F5E4A84();
    v121 = v25;
    if (v25)
    {
      (*(v6 + 8))(v10, v5);
      v62 = 0;
      v63 = 0;
      v64 = 0;
      v66 = 0;
      v67 = 0;
      v60 = 0;
      v59 = 0uLL;
      v58 = 0;
      v65 = 0x403E000000000000;
      v19 = 1;
      v20 = v55;
      v16 = v56;
      v18 = v53;
      v17 = v54;
      v14 = v51;
      v15 = v52;
      v13 = v50;
    }

    else
    {
      v49 = v82;
      v58 = v83;
      v59 = v84;
      v60 = v85;
      sub_25F5A9770(1);
      LOBYTE(v82) = 9;
      v26 = v121;
      v66 = sub_25F5E4A44();
      v67 = v27;
      v121 = v26;
      if (v26)
      {
        (*(v6 + 8))(v10, v5);
        v62 = 0;
        v63 = 0;
        v64 = 0;
        v66 = 0;
        v67 = 0;
        v65 = 0x403E000000000000;
      }

      else
      {
        LOBYTE(v82) = 10;
        v65 = sub_25F5E4A64();
        v121 = 0;
        v113 = v28 & 1;
        LOBYTE(v82) = 11;
        v64 = sub_25F5E4A54();
        v121 = 0;
        LOBYTE(v82) = 12;
        v62 = sub_25F5E4A44();
        v63 = v29;
        v121 = 0;
        v79 = 13;
        sub_25F5A9858();
        v30 = v121;
        sub_25F5E4A84();
        v121 = v30;
        if (!v30)
        {
          (*(v6 + 8))(v10, v5);
          v48 = v80;
          v110 = v81;
          v32 = v55;
          v31 = v56;
          *&v68 = v56;
          *(&v68 + 1) = v55;
          v33 = v120;
          LOBYTE(v69) = v120;
          v34 = v53;
          *(&v69 + 1) = v54;
          *&v70 = v53;
          v35 = v51;
          BYTE8(v70) = v52;
          BYTE9(v70) = v51;
          v36 = v50;
          BYTE10(v70) = v50;
          *&v71 = v61;
          v46 = v116;
          BYTE8(v71) = v116;
          *&v72 = v49;
          *(&v72 + 1) = v58;
          v73 = v59;
          LOBYTE(v74) = v60;
          *(&v74 + 1) = v66;
          *&v75 = v67;
          *(&v75 + 1) = v65;
          v47 = v113;
          LOBYTE(v76) = v113;
          BYTE1(v76) = v64;
          *(&v76 + 1) = v62;
          *&v77 = v63;
          *(&v77 + 1) = v80;
          v37 = v81;
          v78 = v81;
          v38 = v69;
          *a2 = v68;
          *(a2 + 16) = v38;
          v39 = v70;
          v40 = v71;
          v41 = v73;
          *(a2 + 64) = v72;
          *(a2 + 80) = v41;
          *(a2 + 32) = v39;
          *(a2 + 48) = v40;
          v42 = v74;
          v43 = v75;
          v44 = v76;
          v45 = v77;
          *(a2 + 160) = v37;
          *(a2 + 128) = v44;
          *(a2 + 144) = v45;
          *(a2 + 96) = v42;
          *(a2 + 112) = v43;
          sub_25F5A98AC(&v68, &v82);
          __swift_destroy_boxed_opaque_existential_1Tm(v57);
          v82 = v31;
          v83 = v32;
          LOBYTE(v84) = v33;
          *(&v84 + 1) = *v119;
          DWORD1(v84) = *&v119[3];
          *(&v84 + 1) = v54;
          v85 = v34;
          v86 = v52;
          v87 = v35;
          v88 = v36;
          v89 = v117;
          v90 = v118;
          v91 = v61;
          v92 = v46;
          *&v93[3] = *&v115[3];
          *v93 = *v115;
          v94 = v49;
          v95 = v58;
          v96 = v59;
          v97 = v60;
          *v98 = *v114;
          *&v98[3] = *&v114[3];
          v99 = v66;
          v100 = v67;
          v101 = v65;
          v102 = v47;
          v103 = v64;
          v105 = v112;
          v104 = v111;
          v106 = v62;
          v107 = v63;
          v108 = v48;
          v109 = v37;
          return sub_25F5A97D4(&v82);
        }

        (*(v6 + 8))(v10, v5);
      }

      v20 = v55;
      v16 = v56;
      v18 = v53;
      v17 = v54;
      v14 = v51;
      v15 = v52;
      v13 = v50;
      v19 = v49;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  v82 = v16;
  v83 = v20;
  LOBYTE(v84) = v120;
  *(&v84 + 1) = *v119;
  DWORD1(v84) = *&v119[3];
  *(&v84 + 1) = v17;
  v85 = v18;
  v86 = v15;
  v87 = v14;
  v88 = v13;
  v89 = v117;
  v90 = v118;
  v91 = v61;
  v92 = v116;
  *v93 = *v115;
  *&v93[3] = *&v115[3];
  v94 = v19;
  v95 = v58;
  v96 = v59;
  v97 = v60;
  *v98 = *v114;
  *&v98[3] = *&v114[3];
  v99 = v66;
  v100 = v67;
  v101 = v65;
  v102 = v113;
  v103 = v64;
  v105 = v112;
  v104 = v111;
  v106 = v62;
  v107 = v63;
  v108 = 0;
  v109 = v110;
  return sub_25F5A97D4(&v82);
}

uint64_t GeneratedImageFeaturesFilterCriteria.init(userInterfaceLanguage:userSetRegionFormat:personalizations:results:features:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_25F5A4A90()
{
  v1 = *v0;
  v2 = 0x73746C75736572;
  if (v1 != 3)
  {
    v2 = 0x7365727574616566;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000013;
  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5A4B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5AA528(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5A4B5C(uint64_t a1)
{
  v2 = sub_25F5A98E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A4B98(uint64_t a1)
{
  v2 = sub_25F5A98E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeneratedImageFeaturesFilterCriteria.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E180, &unk_25F5E8AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v25 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A98E4();
  sub_25F5E4C74();
  if (!v2)
  {
    LOBYTE(v31) = 0;
    v12 = sub_25F5E4A44();
    v15 = v14;
    v29 = v12;
    LOBYTE(v31) = 1;
    v16 = sub_25F5E4A44();
    v18 = v17;
    v26 = v16;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E190, qword_25F5EA790);
    v30 = 2;
    v27 = sub_25F5A9938();
    v28 = v19;
    sub_25F5E4A84();
    v25 = a2;
    v20 = v31;
    v30 = 3;
    sub_25F5E4A84();
    v21 = v6;
    v22 = v31;
    v30 = 4;
    sub_25F5E4A84();
    (*(v21 + 8))(v10, v5);
    v23 = v31;
    v24 = v25;
    *v25 = v29;
    v24[1] = v15;
    v24[2] = v26;
    v24[3] = v18;
    v24[4] = v20;
    v24[5] = v22;
    v24[6] = v23;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 ExtractGenmojiPromptParameters.init(lastN:maxEvents:minPrompts:samplingSize:filterCriteria:generativeModelsAvailabilityType:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v17 = *(a10 + 32);
  v12 = *(a10 + 48);
  v13 = *a11;
  v14 = *(a11 + 8);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  sub_25F5A99B4(0, 1);
  v15 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v15;
  result = v17;
  *(a9 + 96) = v17;
  *(a9 + 112) = v12;
  *(a9 + 120) = v13;
  *(a9 + 128) = v14;
  return result;
}

uint64_t sub_25F5A5024()
{
  v1 = *v0;
  v2 = 0x4E7473616CLL;
  v3 = 0x676E696C706D6173;
  v4 = 0x72437265746C6966;
  if (v1 != 4)
  {
    v4 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E65764578616DLL;
  if (v1 != 1)
  {
    v5 = 0x706D6F72506E696DLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5A50FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5AA6EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5A5130(uint64_t a1)
{
  v2 = sub_25F5A9A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A516C(uint64_t a1)
{
  v2 = sub_25F5A9A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractGenmojiPromptParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1A0, &qword_25F5E8AD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v93 = 0;
  v91 = 0;
  v89 = 0;
  v87 = 1;
  v85 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5A9A28();
  sub_25F5E4C74();
  if (v2)
  {
    v94 = v2;
    v56 = 0;
    v54 = 0uLL;
    v53 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 1;
    v19 = 1;
  }

  else
  {
    LOBYTE(v69) = 0;
    v52 = sub_25F5E4A74();
    v93 = v21 & 1;
    LOBYTE(v69) = 1;
    v51 = sub_25F5E4A74();
    v91 = v22 & 1;
    LOBYTE(v69) = 2;
    v50 = sub_25F5E4A74();
    v89 = v23 & 1;
    LOBYTE(v69) = 3;
    v24 = sub_25F5E4A74();
    v94 = 0;
    v49 = v24;
    v87 = v25 & 1;
    LOBYTE(v57) = 4;
    sub_25F5A9AAC();
    v26 = v94;
    sub_25F5E4A84();
    v94 = v26;
    if (v26)
    {
      (*(v6 + 8))(v10, v5);
      v56 = 0;
      v54 = 0uLL;
      v53 = 0;
      v13 = 0;
      v14 = 0;
      v18 = 1;
    }

    else
    {
      v14 = v69;
      v18 = v70;
      v13 = v71;
      v53 = v72;
      v54 = v73;
      v56 = v74;
      sub_25F5A99B4(0, 1);
      v66 = 5;
      sub_25F5A9858();
      v27 = v94;
      sub_25F5E4A84();
      v94 = v27;
      if (!v27)
      {
        (*(v6 + 8))(v10, v5);
        v45 = v67;
        v85 = v68;
        *&v57 = v52;
        v48 = v93;
        BYTE8(v57) = v93;
        *&v58 = v51;
        v47 = v91;
        BYTE8(v58) = v91;
        v28 = v49;
        *&v59 = v50;
        v46 = v89;
        BYTE8(v59) = v89;
        *&v60 = v49;
        v44 = v87;
        BYTE8(v60) = v87;
        *&v61 = v14;
        *(&v61 + 1) = v18;
        v29 = v18;
        v43 = v14;
        v30 = a2;
        v31 = v13;
        *&v62 = v13;
        v32 = v53;
        v33 = v54;
        *(&v62 + 1) = v53;
        v63 = v54;
        v34 = *(&v54 + 1);
        v35 = v56;
        *&v64 = v56;
        *(&v64 + 1) = v67;
        v36 = v68;
        v65 = v68;
        v37 = v60;
        *(v30 + 32) = v59;
        *(v30 + 48) = v37;
        v38 = v61;
        v39 = v62;
        v40 = v63;
        v41 = v64;
        *(v30 + 128) = v36;
        *(v30 + 96) = v40;
        *(v30 + 112) = v41;
        *(v30 + 64) = v38;
        *(v30 + 80) = v39;
        v42 = v58;
        *v30 = v57;
        *(v30 + 16) = v42;
        sub_25F5A9B00(&v57, &v69);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v69 = v52;
        LOBYTE(v70) = v48;
        v71 = v51;
        LOBYTE(v72) = v47;
        *&v73 = v50;
        BYTE8(v73) = v46;
        v74 = v28;
        v75 = v44;
        v77 = v43;
        v78 = v29;
        v79 = v31;
        v80 = v32;
        *&v81 = v33;
        *(&v81 + 1) = v34;
        v82 = v35;
        v83 = v45;
        v84 = v36;
        return sub_25F5A9A7C(&v69);
      }

      (*(v6 + 8))(v10, v5);
    }

    v16 = v51;
    v17 = v52;
    v15 = v49;
    v19 = v50;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v69 = v17;
  LOBYTE(v70) = v93;
  *(&v70 + 1) = *v92;
  HIDWORD(v70) = *&v92[3];
  v71 = v16;
  LOBYTE(v72) = v91;
  *(&v72 + 1) = *v90;
  HIDWORD(v72) = *&v90[3];
  *&v73 = v19;
  BYTE8(v73) = v89;
  HIDWORD(v73) = *&v88[3];
  *(&v73 + 9) = *v88;
  v74 = v15;
  v75 = v87;
  *v76 = *v86;
  *&v76[3] = *&v86[3];
  v77 = v14;
  v78 = v18;
  v79 = v13;
  v80 = v53;
  v81 = v54;
  v82 = v56;
  v83 = 0;
  v84 = v85;
  return sub_25F5A9A7C(&v69);
}

uint64_t sub_25F5A57A0(char a1)
{
  result = 0x7961444E6D6F7266;
  switch(a1)
  {
    case 1:
      return 0x61444E6C69746E75;
    case 2:
      v3 = 1282304365;
      return v3 | 0x74676E6500000000;
    case 3:
      v3 = 1282957677;
      return v3 | 0x74676E6500000000;
    case 4:
      return 0x6576454E7473616CLL;
    case 5:
      return 0x746E65764578616DLL;
    case 6:
      v4 = 1400398189;
      goto LABEL_18;
    case 7:
      v4 = 1399744877;
LABEL_18:
      result = v4 | 0x6C706D6100000000;
      break;
    case 8:
      result = 0x654D656C676E6973;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x685472655078616DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x796C6E4F746E6573;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x5470756E61656C63;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F5A5A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5AA908(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5A5A98(uint64_t a1)
{
  v2 = sub_25F5A9B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A5AD4(uint64_t a1)
{
  v2 = sub_25F5A9B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractSmsParameters.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1B8, &qword_25F5E8AD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v49 - v9;
  v150 = 1;
  v148 = 0;
  v146 = 0;
  v144 = 1;
  v142 = 1;
  v141 = 1;
  v139 = 1;
  v134 = 1;
  v11 = a1[3];
  v12 = a1[4];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v11);
  sub_25F5A9B38();
  sub_25F5E4C74();
  if (v2)
  {
    v151 = v2;
    v66 = 0;
    v68 = 0;
    v69 = 0;
    v67 = 0;
    v65 = 0;
    v70 = 0;
    v71 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = 0;
    v78 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 1;
    v18 = 7;
    v19 = 150;
    v20 = 2048;
    v21 = v72;
  }

  else
  {
    LOBYTE(v94) = 0;
    v64 = sub_25F5E4AC4();
    LOBYTE(v94) = 1;
    v63 = sub_25F5E4A74();
    v150 = v23 & 1;
    LOBYTE(v94) = 2;
    v62 = sub_25F5E4AC4();
    LOBYTE(v94) = 3;
    v61 = sub_25F5E4AC4();
    LOBYTE(v94) = 4;
    v60 = sub_25F5E4A74();
    v148 = v24 & 1;
    LOBYTE(v94) = 5;
    v59 = sub_25F5E4A74();
    v146 = v25 & 1;
    LOBYTE(v94) = 6;
    v58 = sub_25F5E4A74();
    v144 = v26 & 1;
    LOBYTE(v94) = 7;
    v71 = sub_25F5E4A74();
    v142 = v27 & 1;
    LOBYTE(v94) = 8;
    v28 = sub_25F5E4A54();
    v151 = 0;
    v57 = v28;
    LOBYTE(v94) = 9;
    HIDWORD(v78) = sub_25F5E4A54();
    v151 = 0;
    LOBYTE(v94) = 10;
    LODWORD(v78) = sub_25F5E4A54();
    v151 = 0;
    LOBYTE(v94) = 11;
    v77 = sub_25F5E4A74();
    v151 = 0;
    v141 = v29 & 1;
    LOBYTE(v94) = 12;
    v76 = sub_25F5E4A74();
    v151 = 0;
    v139 = v30 & 1;
    LOBYTE(v94) = 13;
    v75 = sub_25F5E4A54();
    v151 = 0;
    LOBYTE(v94) = 14;
    v73 = sub_25F5E4A44();
    v74 = v31;
    v151 = 0;
    LOBYTE(v94) = 15;
    v69 = sub_25F5E4A44();
    v70 = v32;
    v151 = 0;
    LOBYTE(v94) = 16;
    v65 = sub_25F5E4A54();
    v151 = 0;
    LOBYTE(v94) = 17;
    v67 = sub_25F5E4A54();
    v151 = 0;
    LOBYTE(v94) = 18;
    v68 = sub_25F5E4A44();
    v66 = v33;
    v151 = 0;
    v91 = 19;
    sub_25F5A9858();
    v34 = v151;
    sub_25F5E4A84();
    v151 = v34;
    if (!v34)
    {
      (*(v6 + 8))(v10, v5);
      v49 = v92;
      v134 = v93;
      *&v79 = v64;
      *(&v79 + 1) = v63;
      v56 = v150;
      LOBYTE(v80) = v150;
      *(&v80 + 1) = *v149;
      DWORD1(v80) = *&v149[3];
      *(&v80 + 1) = v62;
      *&v81 = v61;
      *(&v81 + 1) = v60;
      v55 = v148;
      LOBYTE(v82) = v148;
      DWORD1(v82) = *&v147[3];
      *(&v82 + 1) = *v147;
      *(&v82 + 1) = v59;
      v54 = v146;
      LOBYTE(v83) = v146;
      *(&v83 + 1) = *v145;
      DWORD1(v83) = *&v145[3];
      *(&v83 + 1) = v58;
      v53 = v144;
      LOBYTE(v84) = v144;
      *(&v84 + 1) = *v143;
      DWORD1(v84) = *&v143[3];
      *(&v84 + 1) = v71;
      v52 = v142;
      LOBYTE(v85) = v142;
      BYTE1(v85) = v57;
      BYTE2(v85) = BYTE4(v78);
      BYTE3(v85) = v78;
      *(&v85 + 1) = v77;
      v51 = v141;
      LOBYTE(v86) = v141;
      DWORD1(v86) = *&v140[3];
      *(&v86 + 1) = *v140;
      *(&v86 + 1) = v76;
      v50 = v139;
      LOBYTE(v87) = v139;
      v35 = v75;
      BYTE1(v87) = v75;
      WORD3(v87) = v138;
      *(&v87 + 2) = v137;
      v36 = v74;
      *(&v87 + 1) = v73;
      *&v88 = v74;
      *(&v88 + 1) = v69;
      *&v89 = v70;
      BYTE8(v89) = v65;
      BYTE9(v89) = v67;
      HIWORD(v89) = v136;
      *(&v89 + 10) = v135;
      v37 = v68;
      v38 = v66;
      *v90 = v68;
      *&v90[8] = v66;
      *&v90[16] = v92;
      v39 = v93;
      v90[24] = v93;
      v40 = v79;
      v41 = v80;
      v42 = v82;
      a2[2] = v81;
      a2[3] = v42;
      *a2 = v40;
      a2[1] = v41;
      v43 = v83;
      v44 = v84;
      v45 = v86;
      a2[6] = v85;
      a2[7] = v45;
      a2[4] = v43;
      a2[5] = v44;
      v46 = v87;
      v47 = v88;
      *(a2 + 185) = *&v90[9];
      v48 = *v90;
      a2[10] = v89;
      a2[11] = v48;
      a2[8] = v46;
      a2[9] = v47;
      sub_25F5A9BBC(&v79, &v94);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      v94 = v64;
      v95 = v63;
      v96 = v56;
      *v97 = *v149;
      *&v97[3] = *&v149[3];
      v98 = v62;
      v99 = v61;
      v100 = v60;
      v101 = v55;
      *v102 = *v147;
      *&v102[3] = *&v147[3];
      v103 = v59;
      v104 = v54;
      *&v105[3] = *&v145[3];
      *v105 = *v145;
      v106 = v58;
      v107 = v53;
      *v108 = *v143;
      *&v108[3] = *&v143[3];
      v109 = v71;
      v110 = v52;
      v111 = v57;
      v112 = BYTE4(v78);
      v113 = v78;
      v114 = v77;
      v115 = v51;
      *&v116[3] = *&v140[3];
      *v116 = *v140;
      v117 = v76;
      v118 = v50;
      v119 = v35;
      v121 = v138;
      v120 = v137;
      v122 = v73;
      v123 = v36;
      v124 = v69;
      v125 = v70;
      v126 = v65;
      v127 = v67;
      v128 = v135;
      v129 = v136;
      v130 = v37;
      v131 = v38;
      v132 = v49;
      v133 = v39;
      return sub_25F5A9B8C(&v94);
    }

    (*(v6 + 8))(v10, v5);
    v21 = v72;
    v16 = v63;
    v18 = v64;
    v20 = v61;
    v19 = v62;
    v14 = v59;
    v15 = v60;
    v13 = v58;
    v17 = v57;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v21);
  v94 = v18;
  v95 = v16;
  v96 = v150;
  *v97 = *v149;
  *&v97[3] = *&v149[3];
  v98 = v19;
  v99 = v20;
  v100 = v15;
  v101 = v148;
  *v102 = *v147;
  *&v102[3] = *&v147[3];
  v103 = v14;
  v104 = v146;
  *v105 = *v145;
  *&v105[3] = *&v145[3];
  v106 = v13;
  v107 = v144;
  *v108 = *v143;
  *&v108[3] = *&v143[3];
  v109 = v71;
  v110 = v142;
  v111 = v17;
  v112 = BYTE4(v78);
  v113 = v78;
  v114 = v77;
  v115 = v141;
  *&v116[3] = *&v140[3];
  *v116 = *v140;
  v117 = v76;
  v118 = v139;
  v119 = v75;
  v121 = v138;
  v120 = v137;
  v122 = v73;
  v123 = v74;
  v124 = v69;
  v125 = v70;
  v126 = v65;
  v127 = v67;
  v129 = v136;
  v128 = v135;
  v130 = v68;
  v131 = v66;
  v132 = 0;
  v133 = v134;
  return sub_25F5A9B8C(&v94);
}

unint64_t sub_25F5A69A0()
{
  if (*v0)
  {
    result = 0xD000000000000020;
  }

  else
  {
    result = 0x7972657571;
  }

  *v0;
  return result;
}

uint64_t sub_25F5A69DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_25F5A6ABC(uint64_t a1)
{
  v2 = sub_25F5A9BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A6AF8(uint64_t a1)
{
  v2 = sub_25F5A9BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeDataAvailabilityParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1C8, &qword_25F5E8AE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9BF4();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = 0;
  v12 = sub_25F5E4A94();
  v14 = v13;
  v15 = v12;
  v21 = 1;
  sub_25F5A9858();
  sub_25F5E4A84();
  (*(v6 + 8))(v10, v5);
  v16 = v19;
  v17 = v20;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

PriMLETL::DataSource_optional __swiftcall DataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DataSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C69616D45;
  v3 = 0x50696A6F6D6E6547;
  v4 = 0x7375656870726F4DLL;
  if (v1 != 3)
  {
    v4 = 0x656D6F6942;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7564627;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F5A6E58()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A6F38()
{
  *v0;
  *v0;
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5A7004()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5A70EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C69616D45;
  v5 = 0xED000074706D6F72;
  v6 = 0x50696A6F6D6E6547;
  v7 = 0xE800000000000000;
  v8 = 0x7375656870726F4DLL;
  if (v2 != 3)
  {
    v8 = 0x656D6F6942;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7564627;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F5A71F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000011;
  }

  else
  {
    v4 = 0x72756F5361746144;
  }

  if (v3)
  {
    v5 = 0xEA00000000006563;
  }

  else
  {
    v5 = 0x800000025F5E90F0;
  }

  if (*a2)
  {
    v6 = 0xD000000000000011;
  }

  else
  {
    v6 = 0x72756F5361746144;
  }

  if (*a2)
  {
    v7 = 0x800000025F5E90F0;
  }

  else
  {
    v7 = 0xEA00000000006563;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();
  }

  return v9 & 1;
}

uint64_t sub_25F5A72A8()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A7334()
{
  *v0;
  sub_25F5E4334();
}

uint64_t sub_25F5A73AC()
{
  v1 = *v0;
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A7434@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25F5E4A14();

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

void sub_25F5A7494(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F5E90F0;
  v3 = 0x72756F5361746144;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006563;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_25F5A74DC()
{
  if (*v0)
  {
    result = 0xD000000000000011;
  }

  else
  {
    result = 0x72756F5361746144;
  }

  *v0;
  return result;
}

uint64_t sub_25F5A7520@<X0>(char *a1@<X8>)
{
  v2 = sub_25F5E4A14();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25F5A7584(uint64_t a1)
{
  v2 = sub_25F5A9C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A75C0(uint64_t a1)
{
  v2 = sub_25F5A9C64();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *DataSourceConfig.generativeModelAvailabilityType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v13[10] = v1[10];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 185);
  v4 = v1[7];
  v13[6] = v1[6];
  v13[7] = v4;
  v5 = v1[9];
  v13[8] = v1[8];
  v13[9] = v5;
  v6 = v1[3];
  v13[2] = v1[2];
  v13[3] = v6;
  v7 = v1[5];
  v13[4] = v1[4];
  v13[5] = v7;
  v8 = v1[1];
  v13[0] = *v1;
  v13[1] = v8;
  v9 = sub_25F5A9C48(v13);
  result = sub_25F5A9C54(v13);
  if (v9 <= 1)
  {
    if (v9)
    {
      if ((result[200] & 1) == 0)
      {
        v11 = 192;
        goto LABEL_16;
      }
    }

    else if ((result[160] & 1) == 0)
    {
      v11 = 152;
      goto LABEL_16;
    }
  }

  else if (v9 == 2)
  {
    if ((result[128] & 1) == 0)
    {
      v11 = 120;
      goto LABEL_16;
    }
  }

  else if (v9 == 3)
  {
    if ((result[64] & 1) == 0)
    {
      v11 = 56;
LABEL_16:
      v12 = *&result[v11];
      goto LABEL_17;
    }
  }

  else if ((result[24] & 1) == 0)
  {
    v11 = 16;
    goto LABEL_16;
  }

  v12 = 3;
LABEL_17:
  *a1 = v12;
  return result;
}

unint64_t DataSourceConfig.generativeModelsUseCaseIdentifier.getter()
{
  v1 = 0xD000000000000024;
  v2 = v0[11];
  v10[10] = v0[10];
  v11[0] = v2;
  *(v11 + 9) = *(v0 + 185);
  v3 = v0[7];
  v10[6] = v0[6];
  v10[7] = v3;
  v4 = v0[9];
  v10[8] = v0[8];
  v10[9] = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v10[3] = v5;
  v6 = v0[5];
  v10[4] = v0[4];
  v10[5] = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  v8 = sub_25F5A9C48(v10);
  if (v8 == 2)
  {
    v1 = 0xD00000000000002ELL;
  }

  else if (v8 != 3)
  {
    return v1;
  }

  sub_25F5A9C54(v10);
  return v1;
}

uint64_t DataSourceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v238 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1D8, &qword_25F5E8AE8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v96 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9C64();
  sub_25F5E4C74();
  if (v2)
  {
    v11 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  v127 = v5;
  v236 = 0;
  sub_25F5A9CB8();
  sub_25F5E4A84();
  v13 = v238;
  v14 = a1;
  if (v237 == 5)
  {
    goto LABEL_7;
  }

  if (v237 <= 1u)
  {
    if (!v237)
    {
LABEL_7:
      v216 = 1;
      sub_25F5A9D0C();
      sub_25F5E4A84();
      v123 = v9;
      v124 = v4;
      v125 = a1;
      LODWORD(v126) = v192;
      LODWORD(v145) = *(&v192 + 1);
      *(&v145 + 3) = DWORD1(v192);
      LOBYTE(v174[1]) = HIBYTE(v193);
      v174[0] = *(&v193 + 11);
      *(&v128 + 3) = HIDWORD(v194);
      LODWORD(v128) = *(&v194 + 9);
      *(v215 + 3) = DWORD1(v197);
      v215[0] = *(&v197 + 1);
      v19 = *(&v198 + 1);
      LOWORD(v175[1]) = WORD3(v199);
      v175[0] = *(&v199 + 2);
      v21 = *(&v200 + 1);
      v20 = v200;
      DWORD1(v183[0]) = DWORD1(v192);
      *(v183 + 1) = *(&v192 + 1);
      v183[1] = v193;
      v121 = *(&v191 + 1);
      v122 = v191;
      v182 = v191;
      LOBYTE(v183[0]) = v192;
      v107 = v195;
      v108 = *(&v192 + 1);
      *(&v183[0] + 1) = *(&v192 + 1);
      v22 = v201;
      *&v111 = v193;
      LODWORD(v120) = BYTE8(v193);
      LODWORD(v119) = BYTE9(v193);
      LODWORD(v118) = BYTE10(v193);
      v117 = v194;
      *&v183[2] = v194;
      v116 = BYTE8(v194);
      BYTE8(v183[2]) = BYTE8(v194);
      HIDWORD(v183[2]) = HIDWORD(v194);
      *(&v183[2] + 9) = *(&v194 + 9);
      v183[3] = v195;
      v114 = v196;
      v115 = *(&v195 + 1);
      v113 = *(&v196 + 1);
      v184 = v196;
      v112 = v197;
      LOBYTE(v185) = v197;
      DWORD1(v185) = DWORD1(v197);
      *(&v185 + 1) = *(&v197 + 1);
      v109 = v198;
      v110 = *(&v197 + 1);
      *(&v185 + 1) = *(&v197 + 1);
      v186 = v198;
      v23 = BYTE1(v199);
      v24 = *(&v199 + 1);
      DWORD2(v111) = v199;
      v187 = v199;
      v188 = v200;
      LOBYTE(v189) = v201;
      if (sub_25F5A9D60(&v182) == 1)
      {
        LOBYTE(v173[0]) = 0;
        v22 = 1;
        LOBYTE(v144[0]) = 1;
        sub_25F5A9770(1);
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v23 = 0;
        v24 = 0;
        v20 = 0;
        v21 = 0;
        LOBYTE(v142) = 0;
        LOBYTE(v140) = 1;
        v36 = v173[0];
        v37 = v144[0];
        v19 = 0x403E000000000000;
        v38 = 2048;
        v39 = 7;
        v40 = 1;
        v41 = 1;
        v42 = 1;
      }

      else
      {
        v223[0] = v145;
        *(v223 + 3) = *(&v145 + 3);
        v221 = v174[0];
        v222 = v174[1];
        v220[0] = v128;
        *(v220 + 3) = *(&v128 + 3);
        *(v219 + 3) = *(v215 + 3);
        v219[0] = v215[0];
        v218 = v175[1];
        v217 = v175[0];
        v36 = v126;
        v40 = v121;
        v39 = v122;
        v26 = v120;
        v27 = v119;
        v28 = v118;
        v29 = v117;
        v37 = v116;
        v31 = v114;
        v30 = v115;
        v32 = v113;
        v33 = v112;
        v25 = BYTE8(v111);
        v34 = v110;
        v38 = v111;
        v41 = v108;
        v35 = v109;
        v42 = v107;
      }

      *&v203 = v39;
      *(&v203 + 1) = v40;
      LOBYTE(v204) = v36;
      *(&v204 + 1) = v223[0];
      DWORD1(v204) = *(v223 + 3);
      *(&v204 + 1) = v41;
      *&v205 = v38;
      BYTE8(v205) = v26;
      BYTE9(v205) = v27;
      BYTE10(v205) = v28;
      *(&v205 + 11) = v221;
      HIBYTE(v205) = v222;
      *&v206 = v29;
      BYTE8(v206) = v37;
      HIDWORD(v206) = *(v220 + 3);
      *(&v206 + 9) = v220[0];
      *&v207 = v42;
      *(&v207 + 1) = v30;
      *&v208 = v31;
      *(&v208 + 1) = v32;
      LOBYTE(v209) = v33;
      DWORD1(v209) = *(v219 + 3);
      *(&v209 + 1) = v219[0];
      *(&v209 + 1) = v34;
      *&v210 = v35;
      *(&v210 + 1) = v19;
      LOBYTE(v211) = v25;
      BYTE1(v211) = v23;
      WORD3(v211) = v218;
      *(&v211 + 2) = v217;
      *(&v211 + 1) = v24;
      *&v212 = v20;
      *(&v212 + 1) = v21;
      LOBYTE(v213) = v22;
      sub_25F5A9D84(&v203);
      v234 = v213;
      *v235 = v214[0];
      *&v235[9] = *(v214 + 9);
      v230 = v209;
      v231 = v210;
      v233 = v212;
      v232 = v211;
      v226 = v205;
      v227 = v206;
      v229 = v208;
      v228 = v207;
      v225 = v204;
      v224 = v203;
      v13 = v238;
      v15 = v127;
      v4 = v124;
      v14 = v125;
      v9 = v123;
      goto LABEL_37;
    }

    v158 = 1;
    sub_25F5AB2F8();
    sub_25F5E4A84();
    v126 = v182;
    LODWORD(v125) = LOBYTE(v183[0]);
    v215[0] = *(v183 + 1);
    *(v215 + 3) = DWORD1(v183[0]);
    v119 = *&v183[1];
    v120 = *(&v183[0] + 1);
    v122 = *(&v183[1] + 1);
    LODWORD(v124) = LOBYTE(v183[2]);
    *(v175 + 3) = DWORD1(v183[2]);
    v175[0] = *(&v183[2] + 1);
    v121 = *(&v183[2] + 1);
    LODWORD(v123) = LOBYTE(v183[3]);
    *(v174 + 3) = DWORD1(v183[3]);
    v174[0] = *(&v183[3] + 1);
    v112 = v184;
    *(v173 + 3) = DWORD1(v184);
    v173[0] = *(&v184 + 1);
    *(v144 + 3) = DWORD1(v186);
    v144[0] = *(&v186 + 1);
    v143 = WORD3(v187);
    v142 = *(&v187 + 2);
    v141 = HIWORD(v189);
    v140 = *(&v189 + 10);
    HIDWORD(v146) = DWORD1(v183[0]);
    *(&v146 + 1) = *(v183 + 1);
    v43 = *(&v188 + 1);
    *&v148[12] = DWORD1(v183[2]);
    *&v148[9] = *(&v183[2] + 1);
    *&v148[28] = DWORD1(v183[3]);
    *&v148[25] = *(&v183[3] + 1);
    DWORD1(v149) = DWORD1(v184);
    *(&v149 + 1) = *(&v184 + 1);
    DWORD1(v151) = DWORD1(v186);
    *(&v151 + 1) = *(&v186 + 1);
    v152 = v187;
    v154 = v189;
    v145 = v182;
    v106 = *(&v183[3] + 1);
    v107 = *(&v182 + 1);
    LOBYTE(v146) = v183[0];
    v147 = *(v183 + 8);
    *v148 = *(&v183[1] + 1);
    v148[8] = v183[2];
    *&v148[16] = *(&v183[2] + 1);
    v148[24] = v183[3];
    *&v148[32] = *(&v183[3] + 1);
    LOBYTE(v149) = v184;
    v102 = *(&v184 + 1);
    *(&v149 + 1) = *(&v184 + 1);
    v100 = v185;
    v101 = v186;
    v150 = v185;
    v97 = BYTE1(v185);
    v98 = v187;
    v103 = BYTE2(v185);
    v104 = BYTE3(v185);
    LODWORD(v110) = DWORD1(v185);
    v105 = *(&v185 + 1);
    LOBYTE(v151) = v186;
    v114 = v189;
    v115 = *(&v186 + 1);
    *(&v151 + 1) = *(&v186 + 1);
    v116 = BYTE1(v187);
    v117 = *(&v187 + 1);
    v118 = v188;
    v153 = v188;
    LODWORD(v113) = BYTE8(v189);
    v44 = BYTE9(v189);
    v111 = v190[0];
    v155 = v190[0];
    v99 = *&v190[1];
    v156 = *&v190[1];
    v45 = BYTE8(v190[1]);
    v157 = BYTE8(v190[1]);
    if (sub_25F5AB34C(&v145) == 1)
    {
      v46 = 0;
      v47 = 0;
      v48 = 0;
      v111 = 0uLL;
      LODWORD(v108) = 0;
      LODWORD(v113) = 0;
      v114 = 0;
      v115 = 0;
      v109 = 0;
      v117 = 0;
      v118 = 0;
      v116 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0;
      v45 = 1;
      v216 = 1;
      v177 = 0;
      v176 = 0;
      v169 = 1;
      v167 = 1;
      v166 = 1;
      v164 = 1;
      v159 = 1;
      v57 = 7;
      v58 = 150;
      v59 = 2048;
      v60 = 1;
      v61 = 1;
      v62 = 1;
      v63 = 1;
      v64 = 1;
      v65 = 1;
    }

    else
    {
      v172[0] = v215[0];
      *(v172 + 3) = *(v215 + 3);
      v171[0] = v175[0];
      *(v171 + 3) = *(v175 + 3);
      v170[0] = v174[0];
      *(v170 + 3) = *(v174 + 3);
      *(v168 + 3) = *(v173 + 3);
      v168[0] = v173[0];
      *(v165 + 3) = *(v144 + 3);
      v165[0] = v144[0];
      v163 = v143;
      v162 = v142;
      v161 = v141;
      v160 = v140;
      v53 = v106;
      v56 = v107;
      v57 = v126;
      v64 = v125;
      v109 = v43;
      v47 = v124;
      v46 = v123;
      v54 = v121;
      v55 = v122;
      v49 = v105;
      v51 = v103;
      v50 = v104;
      v52 = v102;
      v59 = v119;
      v58 = v120;
      LODWORD(v108) = v44;
      v63 = v112;
      v62 = v100;
      v61 = v101;
      v48 = v99;
      v65 = v97;
      v60 = v98;
    }

    *&v128 = v57;
    *(&v128 + 1) = v56;
    LOBYTE(v129) = v64;
    *(&v129 + 1) = v172[0];
    DWORD1(v129) = *(v172 + 3);
    *(&v129 + 1) = v58;
    *&v130 = v59;
    *(&v130 + 1) = v55;
    LOBYTE(v131) = v47;
    *(&v131 + 1) = v171[0];
    DWORD1(v131) = *(v171 + 3);
    *(&v131 + 1) = v54;
    LOBYTE(v132) = v46;
    DWORD1(v132) = *(v170 + 3);
    *(&v132 + 1) = v170[0];
    *(&v132 + 1) = v53;
    LOBYTE(v133) = v63;
    DWORD1(v133) = *(v168 + 3);
    *(&v133 + 1) = v168[0];
    *(&v133 + 1) = v52;
    LOBYTE(v134) = v62;
    BYTE1(v134) = v65;
    BYTE2(v134) = v51;
    BYTE3(v134) = v50;
    DWORD1(v134) = v110;
    *(&v134 + 1) = v49;
    LOBYTE(v135) = v61;
    DWORD1(v135) = *(v165 + 3);
    *(&v135 + 1) = v165[0];
    *(&v135 + 1) = v115;
    LOBYTE(v136) = v60;
    BYTE1(v136) = v116;
    WORD3(v136) = v163;
    *(&v136 + 2) = v162;
    *(&v136 + 1) = v117;
    *&v137 = v118;
    *(&v137 + 1) = v109;
    *&v138 = v114;
    BYTE8(v138) = v113;
    BYTE9(v138) = v108;
    HIWORD(v138) = v161;
    *(&v138 + 10) = v160;
    v139[0] = v111;
    *&v139[1] = v48;
    BYTE8(v139[1]) = v45;
    sub_25F5AB370(&v128);
    v234 = v138;
    *v235 = v139[0];
    *&v235[9] = *(v139 + 9);
    v230 = v134;
    v231 = v135;
    v233 = v137;
    v232 = v136;
    v226 = v130;
    v227 = v131;
    v229 = v133;
    v228 = v132;
    v85 = v128;
    v84 = v129;
    goto LABEL_35;
  }

  if (v237 == 2)
  {
    v176 = 1;
    sub_25F5A9EDC();
    sub_25F5E4A84();
    v215[0] = *(&v145 + 9);
    *(v215 + 3) = HIDWORD(v145);
    v175[0] = *(&v147 + 1);
    *(v175 + 3) = DWORD1(v147);
    *(v174 + 3) = *&v148[4];
    v174[0] = *&v148[1];
    *(v173 + 3) = *&v148[20];
    v173[0] = *&v148[17];
    v66 = *&v148[32];
    HIDWORD(v128) = HIDWORD(v145);
    *(&v128 + 9) = *(&v145 + 9);
    HIDWORD(v129) = DWORD1(v147);
    *(&v129 + 9) = *(&v147 + 1);
    v67 = v152;
    v126 = v145;
    *&v128 = v145;
    v68 = BYTE8(v145);
    BYTE8(v128) = BYTE8(v145);
    v117 = v146;
    *&v129 = v146;
    LODWORD(v124) = v147;
    BYTE8(v129) = v147;
    v113 = *(&v147 + 1);
    *&v130 = *(&v147 + 1);
    LODWORD(v122) = v148[0];
    BYTE8(v130) = v148[0];
    HIDWORD(v130) = *&v148[4];
    *(&v130 + 9) = *&v148[1];
    v123 = *&v148[8];
    *&v131 = *&v148[8];
    v116 = v148[16];
    BYTE8(v131) = v148[16];
    HIDWORD(v131) = *&v148[20];
    *(&v131 + 9) = *&v148[17];
    v120 = v149;
    v121 = *&v148[24];
    v132 = *&v148[24];
    v133 = v149;
    v118 = v150;
    v119 = *(&v149 + 1);
    v134 = v150;
    v125 = *(&v150 + 1);
    v114 = *(&v151 + 1);
    v115 = v151;
    v135 = v151;
    LOBYTE(v136) = v152;
    if (sub_25F5A9F30(&v128) == 1)
    {
      LOBYTE(v144[0]) = 0;
      LOBYTE(v142) = 0;
      LOBYTE(v140) = 0;
      v67 = 1;
      v216 = 1;
      sub_25F5A99B4(0, 1);
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v76 = 0;
      v77 = 0;
      v177 = 1;
      v68 = v144[0];
      v78 = v142;
      v79 = v140;
      v80 = v216;
      v81 = 1;
      v82 = 1;
      v66 = 1;
    }

    else
    {
      v181[0] = v215[0];
      *(v181 + 3) = *(v215 + 3);
      v180[0] = v175[0];
      *(v180 + 3) = *(v175 + 3);
      v179[0] = v174[0];
      *(v179 + 3) = *(v174 + 3);
      *(v178 + 3) = *(v173 + 3);
      v178[0] = v173[0];
      v75 = v125;
      v69 = v126;
      v78 = v124;
      v70 = v123;
      v79 = v122;
      v72 = v120;
      v71 = v121;
      v74 = v118;
      v73 = v119;
      v81 = v117;
      v80 = v116;
      v77 = v114;
      v76 = v115;
      v82 = v113;
    }

    *&v182 = v69;
    BYTE8(v182) = v68;
    *(&v182 + 9) = v181[0];
    HIDWORD(v182) = *(v181 + 3);
    *&v183[0] = v81;
    BYTE8(v183[0]) = v78;
    *(v183 + 9) = v180[0];
    HIDWORD(v183[0]) = *(v180 + 3);
    *&v183[1] = v82;
    BYTE8(v183[1]) = v79;
    *(&v183[1] + 9) = v179[0];
    HIDWORD(v183[1]) = *(v179 + 3);
    *&v183[2] = v70;
    BYTE8(v183[2]) = v80;
    HIDWORD(v183[2]) = *(v178 + 3);
    *(&v183[2] + 9) = v178[0];
    *&v183[3] = v71;
    *(&v183[3] + 1) = v66;
    *&v184 = v72;
    *(&v184 + 1) = v73;
    *&v185 = v74;
    *(&v185 + 1) = v75;
    *&v186 = v76;
    *(&v186 + 1) = v77;
    LOBYTE(v187) = v67;
    sub_25F5A9F54(&v182);
    if (v66 != 1)
    {
      v13 = v238;
      if (v75)
      {
        v86 = sub_25F5AAF68(v75);
        v15 = v127;
        if ((v86 & 1) == 0)
        {
          sub_25F5A31D0();
          swift_allocError();
          *v87 = 15;
          v194 = v183[2];
          v193 = v183[1];
          v191 = v182;
          v192 = v183[0];
          v198 = v186;
          v197 = v185;
          v195 = v183[3];
          v196 = v184;
          *(v202 + 9) = *(v190 + 9);
          v202[0] = v190[0];
          v201 = v189;
          v88 = v187;
          v89 = v188;
          v17 = 1;
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v234 = v189;
      *v235 = v190[0];
      *&v235[9] = *(v190 + 9);
      v230 = v185;
      v231 = v186;
      v233 = v188;
      v232 = v187;
      v226 = v183[1];
      v227 = v183[2];
      v229 = v184;
      v228 = v183[3];
      v225 = v183[0];
      v224 = v182;
LABEL_36:
      v15 = v127;
      goto LABEL_37;
    }

    v234 = v189;
    *v235 = v190[0];
    *&v235[9] = *(v190 + 9);
    v230 = v185;
    v231 = v186;
    v233 = v188;
    v232 = v187;
    v226 = v183[1];
    v227 = v183[2];
    v229 = v184;
    v228 = v183[3];
    v85 = v182;
    v84 = v183[0];
LABEL_35:
    v225 = v84;
    v224 = v85;
    v13 = v238;
    goto LABEL_36;
  }

  if (v237 != 3)
  {
    LOBYTE(v182) = 1;
    sub_25F5A9DAC();
    sub_25F5E4A84();
    v15 = v127;
    if (!*(&v145 + 1))
    {
      sub_25F5A31D0();
      swift_allocError();
      v17 = 0;
      v18 = 17;
      goto LABEL_39;
    }

    v182 = v145;
    *&v183[0] = v146;
    BYTE8(v183[0]) = v147 & 1;
    sub_25F5A9E30(&v182);
    v234 = v189;
    *v235 = v190[0];
    v83 = *(v190 + 9);
    goto LABEL_32;
  }

  LOBYTE(v128) = 1;
  sub_25F5A9E5C();
  sub_25F5E4A84();
  v15 = v127;
  if (v146 != 0xFF)
  {
    v182 = v145;
    *&v183[0] = v146;
    *(v183 + 8) = v147;
    *(&v183[1] + 8) = *v148;
    *(&v183[2] + 1) = *&v148[9];
    sub_25F5A9EB0(&v182);
LABEL_31:
    v234 = v189;
    *v235 = v190[0];
    v83 = *(v190 + 9);
LABEL_32:
    *&v235[9] = v83;
    v230 = v185;
    v231 = v186;
    v233 = v188;
    v232 = v187;
    v226 = v183[1];
    v227 = v183[2];
    v229 = v184;
    v228 = v183[3];
    v225 = v183[0];
    v224 = v182;
LABEL_37:
    (*(v15 + 8))(v9, v4);
    v90 = *v235;
    v13[10] = v234;
    v13[11] = v90;
    *(v13 + 185) = *&v235[9];
    v91 = v231;
    v13[6] = v230;
    v13[7] = v91;
    v92 = v233;
    v13[8] = v232;
    v13[9] = v92;
    v93 = v227;
    v13[2] = v226;
    v13[3] = v93;
    v94 = v229;
    v13[4] = v228;
    v13[5] = v94;
    v95 = v225;
    *v13 = v224;
    v13[1] = v95;
    v11 = v14;
    return __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  sub_25F5A31D0();
  swift_allocError();
  v17 = 0;
  v18 = 16;
LABEL_39:
  *v16 = v18;
  v194 = v206;
  v193 = v205;
  v191 = v203;
  v192 = v204;
  v198 = v210;
  v197 = v209;
  v195 = v207;
  v196 = v208;
  *(v202 + 9) = *(v214 + 9);
  v202[0] = v214[0];
  v201 = v213;
  v88 = v211;
  v89 = v212;
LABEL_40:
  v199 = v88;
  v200 = v89;
  swift_willThrow();
  (*(v15 + 8))(v9, v4);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  if (v17)
  {
    return sub_25F5A9E00(&v191);
  }

  return result;
}

Swift::Int __swiftcall DataSourceConfig.minSampleSize()()
{
  v1 = v0[11];
  v13[10] = v0[10];
  v14[0] = v1;
  *(v14 + 9) = *(v0 + 185);
  v2 = v0[7];
  v13[6] = v0[6];
  v13[7] = v2;
  v3 = v0[9];
  v13[8] = v0[8];
  v13[9] = v3;
  v4 = v0[3];
  v13[2] = v0[2];
  v13[3] = v4;
  v5 = v0[5];
  v13[4] = v0[4];
  v13[5] = v5;
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v7 = sub_25F5A9C48(v13);
  v8 = sub_25F5A9C54(v13);
  if (v7 <= 1)
  {
    v9 = 16;
    v10 = 8;
    if (v7)
    {
      v10 = 88;
      v9 = 96;
    }
  }

  else if (v7 == 2)
  {
    v9 = 40;
    v10 = 32;
  }

  else
  {
    if (v7 != 3)
    {
      return 1;
    }

    v9 = 48;
    v10 = 40;
  }

  v11 = *(v8 + v10);
  if (*(v8 + v9))
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

Swift::String __swiftcall DataSourceConfig.description()()
{
  v14 = v0[10];
  *v15 = v0[11];
  *&v15[9] = *(v0 + 185);
  v10 = v0[6];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[9];
  v6 = v0[2];
  v7 = v0[3];
  v8 = v0[4];
  v9 = v0[5];
  v4 = *v0;
  v5 = v0[1];
  sub_25F5E49B4();
  v1 = 0;
  v2 = 0xE000000000000000;
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall DataSourceConfig.configKey()()
{
  v1 = 0xEF6E6F6974636172;
  v2 = v0[11];
  v12[10] = v0[10];
  v13[0] = v2;
  *(v13 + 9) = *(v0 + 185);
  v3 = v0[7];
  v12[6] = v0[6];
  v12[7] = v3;
  v4 = v0[9];
  v12[8] = v0[8];
  v12[9] = v4;
  v5 = v0[3];
  v12[2] = v0[2];
  v12[3] = v5;
  v6 = v0[5];
  v12[4] = v0[4];
  v12[5] = v6;
  v7 = v0[1];
  v12[0] = *v0;
  v12[1] = v7;
  v8 = sub_25F5A9C48(v12);
  sub_25F5A9C54(v12);
  if (v8 <= 1)
  {
    if (v8)
    {
      v1 = 0xED00006E6F697463;
      v9 = 0x6172747845736D73;
    }

    else
    {
      v9 = 0x7478456C69616D65;
    }
  }

  else if (v8 == 2)
  {
    v1 = 0x800000025F5EC530;
    v9 = 0xD000000000000017;
  }

  else if (v8 == 3)
  {
    v9 = 0xD000000000000012;
    v1 = 0x800000025F5EC510;
  }

  else
  {
    v9 = 0x747845656D6F6962;
  }

  v10 = v1;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DataSourceConfig.isCompatible(_:)(__int128 *a1)
{
  v2 = a1[11];
  v48 = a1[10];
  v49[0] = v2;
  *(v49 + 9) = *(a1 + 185);
  v3 = a1[7];
  v44 = a1[6];
  v45 = v3;
  v4 = a1[9];
  v46 = a1[8];
  v47 = v4;
  v5 = a1[3];
  v40 = a1[2];
  v41 = v5;
  v6 = a1[5];
  v42 = a1[4];
  v43 = v6;
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v8 = v1[9];
  v9 = v1[11];
  v60 = v1[10];
  v61[0] = v9;
  *(v61 + 9) = *(v1 + 185);
  v10 = v1[5];
  v11 = v1[7];
  v56 = v1[6];
  v57 = v11;
  v12 = v1[7];
  v13 = v1[9];
  v58 = v1[8];
  v59 = v13;
  v14 = v1[1];
  v15 = v1[3];
  v52 = v1[2];
  v53 = v15;
  v16 = v1[3];
  v17 = v1[5];
  v54 = v1[4];
  v55 = v17;
  v18 = v1[1];
  v50 = *v1;
  v51 = v18;
  v19 = v1[11];
  v62[10] = v60;
  v63[0] = v19;
  *(v63 + 9) = *(v1 + 185);
  v62[6] = v56;
  v62[7] = v12;
  v62[8] = v58;
  v62[9] = v8;
  v62[2] = v52;
  v62[3] = v16;
  v62[4] = v54;
  v62[5] = v10;
  v62[0] = v50;
  v62[1] = v14;
  v20 = sub_25F5A9C48(v62);
  if (v20 <= 1)
  {
    if (v20)
    {
      sub_25F5A9C54(v62);
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 9) = *(v49 + 9);
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v25 = v38;
      v26 = v39;
      if (sub_25F5A9C48(&v25) == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_25F5A9C54(v62);
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 9) = *(v49 + 9);
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v25 = v38;
      v26 = v39;
      if (!sub_25F5A9C48(&v25))
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (v20 == 2)
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    if (sub_25F5A9C48(&v25) != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v20 == 3)
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    if (sub_25F5A9C48(&v25) != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    v21 = sub_25F5A9C48(&v25);
    if (v21 != 4 && v21 != 3)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  sub_25F5A9C54(&v25);
  v22 = 1;
LABEL_16:
  v35 = v60;
  v36[0] = v61[0];
  *(v36 + 9) = *(v61 + 9);
  v31 = v56;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v27 = v52;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v25 = v50;
  v26 = v51;
  *(v37 + 9) = *(v49 + 9);
  v36[12] = v48;
  v37[0] = v49[0];
  v36[8] = v44;
  v36[9] = v45;
  v36[10] = v46;
  v36[11] = v47;
  v36[4] = v40;
  v36[5] = v41;
  v36[6] = v42;
  v36[7] = v43;
  v36[2] = v38;
  v36[3] = v39;
  sub_25F5AB39C(&v38, v24);
  sub_25F5AB39C(&v50, v24);
  sub_25F5AB3D4(&v25);
  return v22;
}

id TextDataExtractorFactory.callAsFunction(_:_:useCaseForBiome:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[10];
  v11 = a1[11];
  v12 = a1[8];
  v114 = a1[9];
  v115 = v10;
  v116[0] = v11;
  *(v116 + 9) = *(a1 + 185);
  v13 = a1[7];
  v111 = a1[6];
  v112 = v13;
  v113 = v12;
  v14 = a1[3];
  v107 = a1[2];
  v108 = v14;
  v15 = a1[5];
  v109 = a1[4];
  v110 = v15;
  v16 = a1[1];
  v105 = *a1;
  v106 = v16;
  v17 = v5[1];
  v78 = *v5;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v18 = sub_25F5E3FB4();
  __swift_project_value_buffer(v18, qword_27FD9EA20);
  sub_25F5AB39C(&v105, &v93);
  v19 = sub_25F5E3F94();
  v20 = sub_25F5E4794();
  sub_25F5A9E00(&v105);
  if (os_log_type_enabled(v19, v20))
  {
    v76 = a2;
    v77 = a4;
    v21 = swift_slowAlloc();
    v75 = a3;
    v22 = swift_slowAlloc();
    v80[0] = v22;
    *v21 = 136315138;
    *&v81 = 0;
    *(&v81 + 1) = 0xE000000000000000;
    v102 = v114;
    v103 = v115;
    v104[0] = v116[0];
    *(v104 + 9) = *(v116 + 9);
    v99 = v111;
    v100 = v112;
    v101 = v113;
    v95 = v107;
    v96 = v108;
    v97 = v109;
    v98 = v110;
    v93 = v105;
    v94 = v106;
    sub_25F5E49B4();
    v23 = v17;
    v24 = sub_25F570AF8(0, 0xE000000000000000, v80);

    *(v21 + 4) = v24;
    v17 = v23;
    _os_log_impl(&dword_25F56A000, v19, v20, "Creating Data Extractor with %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v25 = v22;
    a3 = v75;
    MEMORY[0x25F8E3B70](v25, -1, -1);
    v26 = v21;
    a2 = v76;
    a4 = v77;
    MEMORY[0x25F8E3B70](v26, -1, -1);
  }

  v103 = v115;
  v104[0] = v116[0];
  *(v104 + 9) = *(v116 + 9);
  v99 = v111;
  v100 = v112;
  v101 = v113;
  v102 = v114;
  v95 = v107;
  v96 = v108;
  v97 = v109;
  v98 = v110;
  v93 = v105;
  v94 = v106;
  v27 = sub_25F5A9C48(&v93);
  if (v27 <= 1)
  {
    if (!v27)
    {
      v34 = sub_25F5A9C54(&v93);
      v35 = type metadata accessor for EmailExtractor();
      a5[3] = v35;
      a5[4] = &off_287196F68;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, boxed_opaque_existential_1Tm + *(v35 + 20));
      v38 = *(v34 + 16);
      v37 = *(v34 + 32);
      *boxed_opaque_existential_1Tm = *v34;
      *(boxed_opaque_existential_1Tm + 1) = v38;
      *(boxed_opaque_existential_1Tm + 2) = v37;
      v39 = *(v34 + 96);
      v41 = *(v34 + 48);
      v40 = *(v34 + 64);
      *(boxed_opaque_existential_1Tm + 5) = *(v34 + 80);
      *(boxed_opaque_existential_1Tm + 6) = v39;
      *(boxed_opaque_existential_1Tm + 3) = v41;
      *(boxed_opaque_existential_1Tm + 4) = v40;
      v43 = *(v34 + 128);
      v42 = *(v34 + 144);
      v44 = *(v34 + 112);
      *(boxed_opaque_existential_1Tm + 160) = *(v34 + 160);
      *(boxed_opaque_existential_1Tm + 8) = v43;
      *(boxed_opaque_existential_1Tm + 9) = v42;
      *(boxed_opaque_existential_1Tm + 7) = v44;
      v91 = v115;
      v92[0] = v116[0];
      *(v92 + 9) = *(v116 + 9);
      v87 = v111;
      v88 = v112;
      v89 = v113;
      v90 = v114;
      v83 = v107;
      v84 = v108;
      v85 = v109;
      v86 = v110;
      v81 = v105;
      v82 = v106;
      v45 = sub_25F5A9C54(&v81);
      return sub_25F5A98AC(v45, v80);
    }

    v62 = sub_25F5A9C54(&v93);
    v63 = type metadata accessor for SmsExtractor(0);
    a5[3] = v63;
    a5[4] = &off_287197650;
    v64 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
    sub_25F5AB47C(a2, v64 + *(v63 + 20));
    *v64 = *v62;
    v65 = v62[4];
    v67 = v62[1];
    v66 = v62[2];
    *(v64 + 3) = v62[3];
    *(v64 + 4) = v65;
    *(v64 + 1) = v67;
    *(v64 + 2) = v66;
    v68 = v62[8];
    v70 = v62[5];
    v69 = v62[6];
    *(v64 + 7) = v62[7];
    *(v64 + 8) = v68;
    *(v64 + 5) = v70;
    *(v64 + 6) = v69;
    v72 = v62[10];
    v71 = v62[11];
    v73 = v62[9];
    *(v64 + 185) = *(v62 + 185);
    *(v64 + 10) = v72;
    *(v64 + 11) = v71;
    *(v64 + 9) = v73;
    v74 = (v64 + *(v63 + 24));
    *v74 = a3;
    v74[1] = a4;
    sub_25F5AB39C(&v105, &v81);
  }

  else
  {
    if (v27 == 2)
    {
      v47 = sub_25F5A9C54(&v93);
      v48 = type metadata accessor for GenmojiPromptExtractor();
      a5[3] = v48;
      a5[4] = &off_287197058;
      v49 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, v49 + *(v48 + 24));
      *v49 = *v47;
      v50 = *(v47 + 16);
      v51 = *(v47 + 32);
      v52 = *(v47 + 64);
      *(v49 + 3) = *(v47 + 48);
      *(v49 + 4) = v52;
      *(v49 + 1) = v50;
      *(v49 + 2) = v51;
      v53 = *(v47 + 80);
      v54 = *(v47 + 96);
      v55 = *(v47 + 112);
      *(v49 + 128) = *(v47 + 128);
      *(v49 + 6) = v54;
      *(v49 + 7) = v55;
      *(v49 + 5) = v53;
      v49[17] = v78;
      v49[18] = v17;
    }

    else
    {
      if (v27 != 3)
      {
        v56 = sub_25F5A9C54(&v93);
        v79 = *v56;
        v57 = *(v56 + 16);
        v58 = *(v56 + 24);
        a5[3] = &type metadata for BiomeExtractor;
        a5[4] = &off_287196200;
        v59 = swift_allocObject();
        *a5 = v59;
        v60 = objc_allocWithZone(MEMORY[0x277CF1A88]);
        v91 = v115;
        v92[0] = v116[0];
        *(v92 + 9) = *(v116 + 9);
        v87 = v111;
        v88 = v112;
        v89 = v113;
        v90 = v114;
        v83 = v107;
        v84 = v108;
        v85 = v109;
        v86 = v110;
        v81 = v105;
        v82 = v106;
        v61 = *(sub_25F5A9C54(&v81) + 8);

        result = [v60 init];
        *(v59 + 16) = v79;
        *(v59 + 32) = v57;
        *(v59 + 40) = v58;
        *(v59 + 48) = result;
        return result;
      }

      v28 = sub_25F5A9C54(&v93);
      v29 = type metadata accessor for MorpheusExtractor();
      a5[3] = v29;
      a5[4] = &off_287197490;
      v30 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, v30 + *(v29 + 24));
      *v30 = *v28;
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      *(v30 + 64) = *(v28 + 64);
      *(v30 + 2) = v32;
      *(v30 + 3) = v33;
      *(v30 + 1) = v31;
      v30[9] = v78;
      v30[10] = v17;
    }

    sub_25F5AB39C(&v105, &v81);
  }
}

unint64_t sub_25F5A9644()
{
  result = qword_27FD9E140;
  if (!qword_27FD9E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E140);
  }

  return result;
}

unint64_t sub_25F5A9698()
{
  result = qword_27FD9E150;
  if (!qword_27FD9E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E148, &qword_25F5E8AB0);
    sub_25F5A971C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E150);
  }

  return result;
}

unint64_t sub_25F5A971C()
{
  result = qword_27FD9E158;
  if (!qword_27FD9E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E158);
  }

  return result;
}

uint64_t sub_25F5A9770(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25F5A9780()
{
  result = qword_27FD9E168;
  if (!qword_27FD9E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E168);
  }

  return result;
}

unint64_t sub_25F5A9804()
{
  result = qword_27FD9E170;
  if (!qword_27FD9E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E170);
  }

  return result;
}

unint64_t sub_25F5A9858()
{
  result = qword_27FD9E178;
  if (!qword_27FD9E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E178);
  }

  return result;
}

unint64_t sub_25F5A98E4()
{
  result = qword_27FD9E188;
  if (!qword_27FD9E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E188);
  }

  return result;
}

unint64_t sub_25F5A9938()
{
  result = qword_27FD9E198;
  if (!qword_27FD9E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E190, qword_25F5EA790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E198);
  }

  return result;
}

uint64_t sub_25F5A99B4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_25F5A9A28()
{
  result = qword_27FD9E1A8;
  if (!qword_27FD9E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1A8);
  }

  return result;
}

unint64_t sub_25F5A9AAC()
{
  result = qword_27FD9E1B0;
  if (!qword_27FD9E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1B0);
  }

  return result;
}

unint64_t sub_25F5A9B38()
{
  result = qword_27FD9E1C0;
  if (!qword_27FD9E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1C0);
  }

  return result;
}

unint64_t sub_25F5A9BF4()
{
  result = qword_27FD9E1D0;
  if (!qword_27FD9E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1D0);
  }

  return result;
}