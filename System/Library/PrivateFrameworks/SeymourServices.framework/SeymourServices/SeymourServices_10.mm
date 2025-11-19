uint64_t sub_226F9C4F0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226F9C20C(v1);
  }

  return result;
}

uint64_t sub_226F9C5A0(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_226F9C614(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766A550();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_22766B390();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v16 = &v25[-v15];
  sub_22766A730();
  sub_22766B370();
  v17 = *(v10 + 8);
  v17(v16, v9);
  if (*(a1 + 16))
  {
    v18 = sub_226F9B700(a1, MEMORY[0x277D533B8], MEMORY[0x277D533A0]);
    sub_226F3E6A8(v18);

    v19 = *(v2 + 136);
    v20 = *(v2 + 144);
    swift_getObjectType();
    sub_22766A540();
    sub_2276699D0();
    return (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_22766A730();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "Empty sample content archived sessions set, not publishing SampleContentArchivedSessionsUpdated", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    return (v17)(v14, v9);
  }
}

uint64_t sub_226F9C918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5, uint64_t (*a6)(uint64_t))
{
  v8 = sub_227669910();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  v13 = (*(v9 + 104))(v12, *a5, v8);
  v15[1] = a6(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  sub_226FA712C();
  sub_226FA71B0();
  sub_227669650();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_226F9CAA8(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a3(v4);
  }

  return result;
}

uint64_t sub_226F9CB1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v19 - v10;
  sub_22766A730();
  sub_22766B370();
  v12 = *(v5 + 8);
  v12(v11, v4);
  if (*(a1 + 16))
  {
    v14 = *(v2 + 136);
    v13 = *(v2 + 144);
    swift_getObjectType();
    v19[1] = a1;
    sub_226FA70D8();

    sub_2276699D0();
  }

  else
  {
    sub_22766A730();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "SyncablesUpdated has no inserted program completion, not publishing ProgramCompletionsAdded", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    return (v12)(v9, v4);
  }
}

uint64_t sub_226F9CD30()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v1 = v0[17];
  swift_unknownObjectRelease();
  v2 = v0[19];

  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0(v0 + 25);

  return swift_deallocClassInstance();
}

uint64_t sub_226F9CDBC()
{
  v1[3] = v0;
  v2 = *(sub_227667AA0() - 8);
  v1[4] = v2;
  v1[5] = *(v2 + 64);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_227665FB0();
  v1[8] = v3;
  v4 = *(v3 - 8);
  v1[9] = v4;
  v5 = *(v4 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v6 = sub_22766B390();
  v1[12] = v6;
  v7 = *(v6 - 8);
  v1[13] = v7;
  v8 = *(v7 + 64) + 15;
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9CF50, 0, 0);
}

uint64_t sub_226F9CF50()
{
  v1 = v0[14];
  sub_22766A720();
  v2 = sub_22766B380();
  v3 = sub_22766C8B0();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_226E8E000, v2, v3, "Querying All Archived Sessions.", v4, 2u);
    MEMORY[0x22AA9A450](v4, -1, -1);
  }

  v6 = v0[13];
  v5 = v0[14];
  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[7];
  v22 = v0[8];
  v23 = v0[6];
  v12 = v0[3];
  v24 = v0[4];
  v26 = v0[5];

  (*(v6 + 8))(v5, v7);
  sub_227665F80();
  (*(v10 + 16))(v9, v8, v22);
  sub_227667A90();
  v13 = v12[5];
  v14 = v12[6];
  __swift_project_boxed_opaque_existential_0(v12 + 2, v13);
  sub_226F9D558(v11, v23);
  v15 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v16 = swift_allocObject();
  v0[15] = v16;
  *(v16 + 16) = v12;
  sub_226F9D5BC(v23, v16 + v15);
  v17 = *(v14 + 24);

  v25 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  v0[16] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  *v19 = v0;
  v19[1] = sub_226F9D21C;

  return (v25)(v0 + 2, sub_226F9D620, v16, v20, v13, v14);
}

uint64_t sub_226F9D21C()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_226F9D40C;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_226F9D338;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F9D338()
{
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[8];
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[2];
  sub_226F9D638(v0[7]);
  (*(v5 + 8))(v2, v4);

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_226F9D40C()
{
  v2 = v0[14];
  v1 = v0[15];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v8 = v0[6];
  v7 = v0[7];

  sub_226F9D638(v7);
  (*(v6 + 8))(v3, v5);

  v9 = v0[1];
  v10 = v0[17];

  return v9();
}

uint64_t sub_226F9D4DC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, char **a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22742F870(a2, *v6, v6[1], *(v6 + 16), v6[3]);
  v7 = sub_227232EB8(100);

  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_226F9D558(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667AA0();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F9D5BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667AA0();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226F9D638(uint64_t a1)
{
  v2 = sub_227667AA0();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226F9D694()
{
  v1[3] = v0;
  v2 = sub_22766B390();
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v4 = *(v3 + 64) + 15;
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9D754, 0, 0);
}

uint64_t sub_226F9D754()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v5 = v4[5];
  v6 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v5);
  v7 = *(v6 + 24);

  v13 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[7] = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9198, &qword_227673450);
  *v9 = v0;
  v9[1] = sub_226F9D924;
  v11 = v0[3];

  return (v13)(v0 + 2, sub_226FA6FC4, v11, v10, v5, v6);
}

uint64_t sub_226F9D924()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_226F9DA40;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_226EA3CC8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F9DA40()
{
  v1 = v0[6];
  v2 = v0[3];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

uint64_t sub_226F9DAB0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a3;
  v6 = sub_2276676D0();
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *__swift_project_boxed_opaque_existential_0(a2 + 20, a2[23]);
  result = sub_226EAF48C(a1, v14);
  if (!v3)
  {
    v23 = v6;
    v24 = v10;
    v17 = v27;
    v25 = v11;
    v18 = __swift_project_boxed_opaque_existential_0(a2 + 7, a2[10]);
    sub_227663EC0();
    v19 = *v18;
    v20 = sub_22701C560(v9, a1);
    (*(v17 + 8))(v9, v23);
    v21 = sub_226F9BA10(v20);

    v22 = sub_226F42FB8(v21);

    result = (*(v25 + 8))(v14, v24);
    *v26 = v22;
  }

  return result;
}

uint64_t sub_226F9DD0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22766B390();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9DDD0, 0, 0);
}

uint64_t sub_226F9DDD0()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v7);
  v9 = swift_allocObject();
  v0[9] = v9;
  v9[2] = v4;
  v9[3] = v6;
  v9[4] = v5;
  v10 = *(v8 + 24);

  v16 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[10] = v12;
  v13 = sub_227664530();
  *v12 = v0;
  v12[1] = sub_226F9DFCC;
  v14 = v0[2];

  return (v16)(v14, sub_226FA7070, v9, v13, v7, v8);
}

uint64_t sub_226F9DFCC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226F9E114, 0, 0);
  }

  else
  {
    v5 = v3[8];
    v4 = v3[9];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_226F9E114()
{
  v2 = v0[8];
  v1 = v0[9];

  v3 = v0[1];
  v4 = v0[11];

  return v3();
}

uint64_t sub_226F9E180(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(sub_227667AA0() - 8);
  v2[5] = v3;
  v2[6] = *(v3 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v4 = sub_227665FB0();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v7 = sub_227662930();
  v2[15] = v7;
  v8 = *(v7 - 8);
  v2[16] = v8;
  v9 = *(v8 + 64) + 15;
  v2[17] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v11 = sub_227662750();
  v2[19] = v11;
  v12 = *(v11 - 8);
  v2[20] = v12;
  v13 = *(v12 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v14 = sub_22766B390();
  v2[23] = v14;
  v15 = *(v14 - 8);
  v2[24] = v15;
  v16 = *(v15 + 64) + 15;
  v2[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9E428, 0, 0);
}

uint64_t sub_226F9E428()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v5 = v0[20];
  v4 = v0[21];
  v53 = v0[18];
  v57 = v0[19];
  v6 = v0[16];
  v7 = v0[17];
  v8 = v0[15];
  v9 = v0[3];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  sub_227662740();
  (*(v6 + 104))(v7, *MEMORY[0x277CC9968], v8);
  sub_227666EA0();
  sub_227662610();
  (*(v6 + 8))(v7, v8);
  v10 = *(v5 + 8);
  v0[26] = v10;
  v0[27] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v4, v57);
  if ((*(v5 + 48))(v53, 1, v57) == 1)
  {
    sub_226E97D1C(v0[18], &qword_27D7B9690, qword_227670B50);
    v11 = sub_227665CB0();
    sub_226FA6CA8(&qword_28139B740, MEMORY[0x277D51D30]);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, *MEMORY[0x277D51D28], v11);
    swift_willThrow();
    v13 = v0[25];
    v15 = v0[21];
    v14 = v0[22];
    v17 = v0[17];
    v16 = v0[18];
    v19 = v0[13];
    v18 = v0[14];
    v21 = v0[11];
    v20 = v0[12];
    v22 = v0[8];
    v54 = v0[7];

    v23 = v0[1];

    return v23();
  }

  else
  {
    v25 = v0[3];
    (*(v0[20] + 32))(v0[22], v0[18], v0[19]);
    v26 = sub_227666EB0();
    if (v27)
    {
      v28 = MEMORY[0x277D84F90];
    }

    else
    {
      v29 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9B0, &qword_227673180);
      v30 = *(sub_2276682D0() - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_227670CD0;
      *(v28 + v32) = v29;
      swift_storeEnumTagMultiPayload();
    }

    v33 = v0[22];
    v34 = v0[13];
    v35 = v0[11];
    v36 = v0[12];
    v38 = v0[9];
    v37 = v0[10];
    v50 = v0[14];
    v51 = v0[8];
    v58 = v0[6];
    v52 = v0[7];
    v55 = v0[5];
    v39 = v0[4];
    v49 = v0[3];
    sub_226F432F0(v28);

    sub_227665F80();
    sub_227665F70();
    sub_227665F50();
    v40 = *(v37 + 8);
    v0[28] = v40;
    v0[29] = (v37 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v40(v35, v38);
    v40(v36, v38);
    sub_227666EC0();
    sub_227665F60();
    sub_227665F50();
    v40(v36, v38);
    v40(v34, v38);
    (*(v37 + 16))(v34, v50, v38);
    sub_227667A90();
    v41 = v39[5];
    v42 = v39[6];
    __swift_project_boxed_opaque_existential_0(v39 + 2, v41);
    sub_226F9D558(v51, v52);
    v43 = (*(v55 + 80) + 24) & ~*(v55 + 80);
    v44 = swift_allocObject();
    v0[30] = v44;
    *(v44 + 16) = v39;
    sub_226F9D5BC(v52, v44 + v43);
    v45 = *(v42 + 24);

    v56 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    v0[31] = v47;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
    *v47 = v0;
    v47[1] = sub_226F9EAA4;

    return (v56)(v0 + 2, sub_226FA7234, v44, v48, v41, v42);
  }
}

uint64_t sub_226F9EAA4()
{
  v2 = *v1;
  v3 = *(*v1 + 248);
  v7 = *v1;
  *(*v1 + 256) = v0;

  if (v0)
  {
    v4 = sub_226F9ECF8;
  }

  else
  {
    v5 = *(v2 + 240);

    v4 = sub_226F9EBC0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F9EBC0()
{
  v1 = v0[28];
  v2 = v0[29];
  v3 = v0[26];
  v4 = v0[27];
  v5 = v0[22];
  v11 = v0[25];
  v12 = v0[21];
  v6 = v0[19];
  v13 = v0[18];
  v14 = v0[17];
  v7 = v0[14];
  v15 = v0[13];
  v16 = v0[12];
  v8 = v0[9];
  v17 = v0[11];
  v18 = v0[7];
  v19 = v0[2];
  sub_226F9D638(v0[8]);
  v1(v7, v8);
  v3(v5, v6);

  v9 = v0[1];

  return v9(v19);
}

uint64_t sub_226F9ECF8()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[22];
  v7 = v0[19];
  v8 = v0[14];
  v10 = v0[8];
  v9 = v0[9];

  sub_226F9D638(v10);
  v3(v8, v9);
  v5(v6, v7);
  v11 = v0[25];
  v13 = v0[21];
  v12 = v0[22];
  v15 = v0[17];
  v14 = v0[18];
  v17 = v0[13];
  v16 = v0[14];
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[8];
  v23 = v0[7];
  v24 = v0[32];

  v21 = v0[1];

  return v21();
}

uint64_t sub_226F9EE28(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *(*(sub_227665FB0() - 8) + 64) + 15;
  v2[5] = swift_task_alloc();
  v4 = *(sub_227667AA0() - 8);
  v2[6] = v4;
  v2[7] = *(v4 + 64);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[10] = v5;
  v6 = *(v5 - 8);
  v2[11] = v6;
  v7 = *(v6 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9EF80, 0, 0);
}

uint64_t sub_226F9EF80()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v20 = v0[7];
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  sub_227665F40();
  sub_227667A90();
  v10 = v8[5];
  v11 = v8[6];
  __swift_project_boxed_opaque_existential_0(v8 + 2, v10);
  sub_226F9D558(v4, v5);
  v12 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v0[13] = v13;
  *(v13 + 16) = v8;
  sub_226F9D5BC(v5, v13 + v12);
  v14 = *(v11 + 24);

  v19 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  v0[14] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  *v16 = v0;
  v16[1] = sub_226F9F1E0;

  return (v19)(v0 + 2, sub_226FA7234, v13, v17, v10, v11);
}

uint64_t sub_226F9F1E0()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v7 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_226F9F3A4;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_226F9F2FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F9F2FC()
{
  v1 = v0[12];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[2];
  sub_226F9D638(v0[9]);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_226F9F3A4()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  sub_226F9D638(v3);

  v6 = v0[1];
  v7 = v0[15];

  return v6();
}

uint64_t sub_226F9F440@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  result = sub_22701D448(a2, a1);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_226F9F474(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_227664E40();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = sub_227664530();
  v2[9] = v6;
  v7 = *(v6 - 8);
  v2[10] = v7;
  v8 = *(v7 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226F9F59C, 0, 0);
}

uint64_t sub_226F9F59C()
{
  v1 = *(v0 + 32);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  *v6 = v0;
  v6[1] = sub_226F9F714;
  v8 = *(v0 + 32);

  return (v10)(v0 + 16, sub_226FA6FA8, v8, v7, v2, v3);
}

uint64_t sub_226F9F714()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_226F9FC00;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_226F9F830;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226F9F830()
{
  v1 = v0[3];
  v2 = v0[2];
  v5 = *(v2 + 56);
  v4 = v2 + 56;
  v3 = v5;
  v6 = -1 << *(v0[2] + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v3;
  v9 = (63 - v6) >> 6;
  v45 = v0[10];
  v47 = v0[2];
  v48 = v1 + 56;
  v39 = v0[6];
  v43 = (v39 + 32);
  v44 = (v45 + 8);

  v11 = 0;
  for (i = MEMORY[0x277D84F90]; v8; result = v29(i + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v31, v32, v33))
  {
LABEL_11:
    while (1)
    {
      v15 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      (*(v45 + 16))(v0[11], *(v47 + 48) + *(v45 + 72) * (v15 | (v11 << 6)), v0[9]);
      v16 = sub_2276644F0();
      v18 = v17;
      if (*(v1 + 16))
      {
        v19 = v16;
        v20 = *(v1 + 40);
        sub_22766D370();
        sub_22766C100();
        v21 = sub_22766D3F0();
        v22 = -1 << *(v1 + 32);
        v23 = v21 & ~v22;
        if ((*(v48 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
        {
          break;
        }
      }

LABEL_6:
      v12 = v0[11];
      v13 = v0[9];

      result = (*v44)(v12, v13);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v24 = ~v22;
    while (1)
    {
      v25 = (*(v1 + 48) + 16 * v23);
      v26 = *v25 == v19 && v25[1] == v18;
      if (v26 || (sub_22766D190() & 1) != 0)
      {
        break;
      }

      v23 = (v23 + 1) & v24;
      if (((*(v48 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    v27 = v0[11];
    v42 = v0[8];
    v28 = v0[7];
    v40 = v0[9];
    v41 = v0[5];

    sub_227664510();
    sub_2276644F0();
    sub_227664490();
    sub_227664E30();
    (*v44)(v27, v40);
    v29 = *v43;
    (*v43)(v42, v28, v41);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      i = sub_2273A52E8(0, i[2] + 1, 1, i);
    }

    v31 = i[2];
    v30 = i[3];
    if (v31 >= v30 >> 1)
    {
      i = sub_2273A52E8(v30 > 1, v31 + 1, 1, i);
    }

    v32 = v0[8];
    v33 = v0[5];
    i[2] = v31 + 1;
  }

  while (1)
  {
LABEL_7:
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v14 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v14);
    ++v11;
    if (v8)
    {
      v11 = v14;
      goto LABEL_11;
    }
  }

  v34 = v0[11];
  v36 = v0[7];
  v35 = v0[8];

  v37 = sub_226F42FB8(i);

  v38 = v0[1];

  return v38(v37);
}

uint64_t sub_226F9FC00()
{
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  v5 = v0[1];
  v6 = v0[13];

  return v5();
}

uint64_t sub_226F9FC8C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a3;
  v6 = sub_2276676D0();
  v22 = *(v6 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_227663FA0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *__swift_project_boxed_opaque_existential_0(a2 + 20, a2[23]);
  result = sub_226EAF48C(a1, v14);
  if (!v3)
  {
    v17 = __swift_project_boxed_opaque_existential_0(a2 + 7, a2[10]);
    sub_227663EC0();
    v18 = *v17;
    v19 = sub_22701C560(v9, a1);
    (*(v22 + 8))(v9, v6);
    result = (*(v11 + 8))(v14, v10);
    *v21 = v19;
  }

  return result;
}

uint64_t sub_226F9FEF0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_227664530();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v2[6] = *(v4 + 64);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v5 = sub_22766B390();
  v2[9] = v5;
  v6 = *(v5 - 8);
  v2[10] = v6;
  v7 = *(v6 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FA0020, 0, 0);
}

uint64_t sub_226FA0020()
{
  v40 = v0;
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[2];
  sub_22766A730();
  v37 = *(v4 + 16);
  v37(v2, v5, v3);
  v6 = sub_22766B380();
  v7 = sub_22766C8B0();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[10];
  v9 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v14 = v0[4];
  v13 = v0[5];
  if (v8)
  {
    v36 = v0[9];
    v15 = swift_slowAlloc();
    v34 = v7;
    v16 = swift_slowAlloc();
    v39 = v16;
    *v15 = 136315138;
    sub_226FA6CA8(&qword_27D7B8C68, MEMORY[0x277D50978]);
    v17 = sub_22766D140();
    v35 = v9;
    v19 = v18;
    (*(v13 + 8))(v11, v14);
    v20 = sub_226E97AE8(v17, v19, &v39);

    *(v15 + 4) = v20;
    _os_log_impl(&dword_226E8E000, v6, v34, "Inserting %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);

    (*(v10 + 8))(v35, v36);
  }

  else
  {

    (*(v13 + 8))(v11, v14);
    (*(v10 + 8))(v9, v12);
  }

  v22 = v0[6];
  v21 = v0[7];
  v23 = v0[4];
  v24 = v0[5];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v26[6];
  __swift_project_boxed_opaque_existential_0(v26 + 2, v26[5]);
  v37(v21, v25, v23);
  v28 = (*(v24 + 80) + 24) & ~*(v24 + 80);
  v29 = swift_allocObject();
  v0[12] = v29;
  *(v29 + 16) = v26;
  (*(v24 + 32))(v29 + v28, v21, v23);
  v30 = *(v27 + 24);

  v38 = (v30 + *v30);
  v31 = v30[1];
  v32 = swift_task_alloc();
  v0[13] = v32;
  *v32 = v0;
  v32[1] = sub_226FA03B4;

  return v38();
}

uint64_t sub_226FA03B4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226FA0548;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226FA04D0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FA04D0()
{
  v1 = v0[11];
  v2 = v0[7];
  v3 = v0[8];

  v4 = v0[1];

  return v4();
}

uint64_t sub_226FA0548()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_226FA05D0(void *a1, void *a2, uint64_t a3)
{
  v7 = sub_2276644D0();
  sub_226FA080C(v7, v8, a1);
  if (v3)
  {
  }

  v10 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
  v11 = sub_227664530();
  v12 = *(v11 - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_227670CD0;
  (*(v12 + 16))(v15 + v14, a3, v11);
  sub_22755DF08(v15, v10[1], *(v10 + 16), v10[3]);

  v16 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_226FA5570(a3, *v16, v16[1], *(v16 + 16), v16[3], a2);
  v17 = *__swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_227670CD0;
  *(v18 + 32) = sub_2276644D0();
  *(v18 + 40) = v19;
  sub_2272D7B1C(0, v18, a1);

  sub_226FA0BC0(a3, a1);
  v20 = *__swift_project_boxed_opaque_existential_0(a2 + 12, a2[15]);
  return sub_2271D7EE8();
}

uint64_t sub_226FA080C(uint64_t a1, unint64_t a2, void *a3)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E60, &unk_2276724B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v28 - v15;
  v17 = *__swift_project_boxed_opaque_existential_0((v3 + 56), *(v3 + 80));
  sub_22701CD84(a1, a2, a3, v16);
  if (v4)
  {

    v18 = sub_227664530();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    return sub_226E97D1C(v16, &qword_27D7B8E60, &unk_2276724B0);
  }

  else
  {
    v20 = sub_227664530();
    (*(*(v20 - 8) + 56))(v16, 0, 1, v20);
    sub_22766A730();

    v21 = sub_22766B380();
    v22 = sub_22766C8B0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v29 = v9;
      v25 = v24;
      v30 = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_226E97AE8(a1, a2, &v30);
      _os_log_impl(&dword_226E8E000, v21, v22, "Found existing ArchivedSession %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AA9A450](v25, -1, -1);
      MEMORY[0x22AA9A450](v23, -1, -1);

      (*(v29 + 8))(v12, v8);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v26 = sub_227665CB0();
    sub_226FA6CA8(&qword_28139B740, MEMORY[0x277D51D30]);
    swift_allocError();
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51D20], v26);
    swift_willThrow();
    return sub_226E97D1C(v16, &qword_27D7B8E60, &unk_2276724B0);
  }
}

uint64_t sub_226FA0BC0(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_227663FA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *__swift_project_boxed_opaque_existential_0((v2 + 160), *(v2 + 184));
  result = sub_226EAF48C(a2, v11);
  if (!v3)
  {
    v46 = a1;
    v49 = v8;
    v50 = v7;
    v48 = 0;
    sub_227663F60();
    v15 = v14;
    v16 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
    v18 = *v16;
    v17 = v16[1];
    v47 = *(v16 + 16);
    v19 = v16[3];
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9008, &unk_227672BC0);
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    v23 = swift_allocObject();
    v24 = v18;
    v25 = v17;

    sub_22766A070();
    *(v23 + 16) = v24;
    *(v23 + 24) = v25;
    *(v23 + 32) = v47;
    *(v23 + 40) = v19;
    v26 = v48;
    v27 = sub_226EE12F0(100);
    if (v26)
    {
      (*(v49 + 8))(v11, v50);
      swift_setDeallocating();

      v28 = *(v23 + 40);

      v29 = qword_2813B2078;
      v30 = sub_22766A100();
      (*(*(v30 - 8) + 8))(v23 + v29, v30);
      v31 = *(*v23 + 48);
      v32 = *(*v23 + 52);
      return swift_deallocClassInstance();
    }

    else
    {
      v33 = v27;
      swift_setDeallocating();

      v34 = *(v23 + 40);

      v35 = qword_2813B2078;
      v36 = sub_22766A100();
      (*(*(v36 - 8) + 8))(v23 + v35, v36);
      v37 = *(*v23 + 48);
      v38 = *(*v23 + 52);
      v39 = swift_deallocClassInstance();
      MEMORY[0x28223BE20](v39);
      v40 = v46;
      *(&v45 - 4) = v4;
      *(&v45 - 3) = v40;
      *(&v45 - 2) = v15;
      *(&v45 - 1) = a2;
      v41 = sub_22735A0C0(sub_226FA6CF0, (&v45 - 6), v33);
      MEMORY[0x28223BE20](v41);
      *(&v45 - 4) = v4;
      *(&v45 - 3) = v40;
      *(&v45 - 2) = a2;
      v42 = sub_2275F1D14(sub_226FA6D60, (&v45 - 6), v41);

      v43 = v50;
      if (*(v42 + 16))
      {
        v44 = *__swift_project_boxed_opaque_existential_0((v4 + 96), *(v4 + 120));
        sub_2271DCA08(v42, a2);

        return (*(v49 + 8))(v11, v43);
      }

      else
      {
        (*(v49 + 8))(v11, v50);
      }
    }
  }

  return result;
}

uint64_t sub_226FA1058()
{
  v1 = *(v0 + 32);
  v2 = v1[5];
  v3 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v2);
  v4 = *(v3 + 24);

  v10 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  *v6 = v0;
  v6[1] = sub_226FA11D0;
  v8 = *(v0 + 32);

  return (v10)(v0 + 16, sub_226FA7054, v8, v7, v2, v3);
}

uint64_t sub_226FA11D0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = sub_226FA13B4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_226FA12EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FA12EC()
{
  v1 = v0[4];
  v2 = v0[2];
  v3 = *__swift_project_boxed_opaque_existential_0(v1 + 12, v1[15]);
  sub_2271D7EE8();
  v4 = v1[17];
  v5 = v1[18];
  swift_getObjectType();
  v0[3] = v2;
  sub_226FA7000();
  sub_2276699D0();

  v6 = v0[1];

  return v6();
}

uint64_t sub_226FA13B4()
{
  v1 = v0[4];

  v2 = v0[1];
  v3 = v0[6];

  return v2();
}

uint64_t sub_226FA1418@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  v17 = sub_2272F8EE0(0x64);
  if (v3)
  {
    swift_setDeallocating();

    v18 = *(v14 + 40);

    v19 = qword_2813B2078;
    v20 = sub_22766A100();
    (*(*(v20 - 8) + 8))(v14 + v19, v20);
    v21 = *(*v14 + 48);
    v22 = *(*v14 + 52);
    return swift_deallocClassInstance();
  }

  v24 = v17;
  v53 = a3;
  swift_setDeallocating();

  v25 = *(v14 + 40);

  v26 = qword_2813B2078;
  v27 = sub_22766A100();
  v28 = *(*(v27 - 8) + 8);
  v28(v14 + v26, v27);
  v29 = *(*v14 + 48);
  v30 = *(*v14 + 52);
  swift_deallocClassInstance();
  v31 = *__swift_project_boxed_opaque_existential_0((a2 + 96), *(a2 + 120));
  v32 = sub_226F9BDF8(v24);
  sub_2272D7B1C(1, v32, a1);
  v52 = v24;

  v33 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[3];
  v37 = *(v33 + 16);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91A0, &qword_2276732C0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  v41 = swift_allocObject();
  v42 = v34;
  v43 = v35;

  sub_22766A070();
  *(v41 + 16) = v42;
  *(v41 + 24) = v43;
  v51 = v43;
  *(v41 + 32) = v37;
  *(v41 + 40) = v36;
  v44 = qword_2813B2078;
  swift_beginAccess();
  v45 = sub_227542EE8(v41 + v44, v37, v36);
  if (v45)
  {
    if (v45 != 1)
    {
      swift_willThrow();

      swift_setDeallocating();
      v28(v41 + qword_2813B2078, v27);
      v48 = *(*v41 + 48);
      v49 = *(*v41 + 52);
      return swift_deallocClassInstance();
    }

    *v53 = v24;
  }

  else
  {
    v46 = sub_2272847CC(0);
    [v46 setResultType_];
    sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
    v47 = sub_22766C9E0();
    v50 = sub_226EDAB24(v47);

    sub_226EDAB78(v50, v51);

    *v53 = v52;
  }

  return result;
}

uint64_t sub_226FA18E4(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = sub_22766B390();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FA19A8, 0, 0);
}

uint64_t sub_226FA19A8()
{
  v2 = v0[8];
  v1 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  sub_22766A730();
  sub_22766B370();
  (*(v2 + 8))(v1, v3);
  v7 = v4[5];
  v8 = v4[6];
  __swift_project_boxed_opaque_existential_0(v4 + 2, v7);
  v9 = swift_allocObject();
  v0[10] = v9;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v4;
  v10 = *(v8 + 24);

  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[11] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  *v12 = v0;
  v12[1] = sub_226FA1BB0;

  return (v15)(v0 + 2, sub_226FA6FE0, v9, v13, v7, v8);
}

uint64_t sub_226FA1BB0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v7 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_226FA1DA0;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_226FA1CCC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FA1CCC()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[2];
  v4 = *__swift_project_boxed_opaque_existential_0(v2 + 12, v2[15]);
  sub_2271D7EE8();
  v5 = v2[17];
  v6 = v2[18];
  swift_getObjectType();
  v0[3] = v3;
  sub_226FA7000();
  sub_2276699D0();

  v7 = v0[1];

  return v7();
}

uint64_t sub_226FA1DA0()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_226FA1E0C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v51 = a5;
  v52 = a4;
  v7 = a1[3];
  v53 = a1;
  v8 = __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v9;
  v18 = v10;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  swift_getKeyPath();
  v56[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v56[0] = a2;
  v56[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v19 = sub_22766C820();
  sub_226E93170(v56, v54, &unk_27D7BC990, &qword_227670A30);
  v20 = v55;
  if (v55)
  {
    v21 = __swift_project_boxed_opaque_existential_0(v54, v55);
    v22 = *(v20 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v22 + 16))(v25);
    v26 = sub_22766D170();
    (*(v22 + 8))(v25, v20);
    __swift_destroy_boxed_opaque_existential_0(v54);
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v28 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB950 &unk_227670BB0))];

  sub_226E97D1C(v56, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v29 = v28;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v49 = *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(v56, 0);
  swift_endAccess();

  v33 = v56[5];
  v34 = sub_2272F8EE0(0x64);
  if (v33)
  {
    swift_setDeallocating();

    v35 = *(v16 + 40);

    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v16 + v36, v37);
    v38 = *(*v16 + 48);
    v39 = *(*v16 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v41 = v34;
    swift_setDeallocating();

    v42 = *(v16 + 40);

    v43 = qword_2813B2078;
    v44 = sub_22766A100();
    (*(*(v44 - 8) + 8))(v16 + v43, v44);
    v45 = *(*v16 + 48);
    v46 = *(*v16 + 52);
    swift_deallocClassInstance();
    v47 = *__swift_project_boxed_opaque_existential_0((v52 + 96), *(v52 + 120));
    v48 = sub_226F9BDF8(v41);
    sub_2272D7B1C(1, v48, v53);

    *v51 = v41;
  }

  return result;
}

uint64_t sub_226FA232C(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9190, qword_227673CB0);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  v11 = v3;
  v12 = v4;

  sub_22766A070();
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  *(v10 + 32) = v5;
  *(v10 + 40) = v6;
  v13 = sub_226EC6320(0);
  if (v1)
  {

    swift_setDeallocating();
    v15 = qword_2813B2078;
    v16 = sub_22766A100();
    (*(*(v16 - 8) + 8))(v10 + v15, v16);
    v17 = *(*v10 + 48);
    v18 = *(*v10 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v14 = v13;
    [v13 setResultType_];
    [v14 setFetchLimit_];
    [v14 setFetchOffset_];
    [v14 setIncludesSubentities_];
    [v14 setFetchLimit_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v20 = sub_22766C9D0();

    swift_setDeallocating();
    v21 = qword_2813B2078;
    v22 = sub_22766A100();
    (*(*(v22 - 8) + 8))(v10 + v21, v22);
    v23 = *(*v10 + 48);
    v24 = *(*v10 + 52);
    result = swift_deallocClassInstance();
    if (v20 <= 0)
    {
      v25 = sub_227665CB0();
      sub_226FA6CA8(&qword_28139B740, MEMORY[0x277D51D30]);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51D10], v25);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226FA2680(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_227667E50();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v2[8] = *(v4 + 64);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FA2748, 0, 0);
}

uint64_t sub_226FA2748()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = v6[6];
  __swift_project_boxed_opaque_existential_0(v6 + 2, v6[5]);
  v8 = *(v4 + 16);
  *(v0 + 80) = v8;
  *(v0 + 88) = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v5, v3);
  v9 = *(v4 + 80);
  *(v0 + 28) = v9;
  v10 = (v9 + 16) & ~v9;
  v11 = swift_allocObject();
  *(v0 + 96) = v11;
  (*(v4 + 32))(v11 + v10, v1, v3);
  *(v11 + ((v2 + v10 + 7) & 0xFFFFFFFFFFFFFFF8)) = v6;
  v12 = *(v7 + 24);

  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v0 + 104) = v14;
  *v14 = v0;
  v14[1] = sub_226FA294C;

  return v16();
}

uint64_t sub_226FA294C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_226FA2BD0;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_226FA2A68;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FA2A68()
{
  v1 = *(v0 + 28);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = *(v6 + 136);
  v15 = *(v6 + 144);
  v16 = *(v0 + 72);
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9188, &unk_227673230);
  v9 = *(v5 + 72);
  v10 = (v1 + 32) & ~v1;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_227670CD0;
  v2(v11 + v10, v7, v4);
  v12 = sub_226F4C314(v11);
  swift_setDeallocating();
  (*(v5 + 8))(v11 + v10, v4);
  swift_deallocClassInstance();
  *(v0 + 16) = v12;
  *(v0 + 24) = 0;
  sub_226FA6F54();
  sub_2276699D0();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_226FA2BD0()
{
  v1 = v0[12];
  v2 = v0[9];

  v3 = v0[1];
  v4 = v0[14];

  return v3();
}

uint64_t sub_226FA2C40(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9188, &unk_227673230);
  v8 = sub_227667E50();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_227670CD0;
  (*(v9 + 16))(v12 + v11, a2, v8);
  sub_22755E4A4(v12, v7[1], *(v7 + 16), v7[3]);

  if (!v3)
  {
    v14 = *__swift_project_boxed_opaque_existential_0((a3 + 96), *(a3 + 120));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_227670CD0;
    *(v15 + 32) = sub_227667E40();
    *(v15 + 40) = v16;
    sub_2272D7B48(0, v15, a1);

    v17 = *__swift_project_boxed_opaque_existential_0((a3 + 96), *(a3 + 120));
    return sub_2271D7EE8();
  }

  return result;
}

void sub_226FA2E00(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v42 = a4;
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB960, &qword_227675B20);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = v7;
  v16 = v8;

  sub_22766A070();
  v43 = v15;
  *(v14 + 16) = v15;
  *(v14 + 24) = v16;
  v41[0] = v16;
  v41[1] = v10;
  *(v14 + 32) = v9;
  *(v14 + 40) = v10;
  swift_getKeyPath();
  v46[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v46[0] = a2;
  v46[1] = a3;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226E93170(v46, v44, &unk_27D7BC990, &qword_227670A30);
  v18 = v45;
  if (v45)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v44, v45);
    v20 = *(v18 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v44);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9180 &qword_227673220))];

  sub_226E97D1C(v46, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v40 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v46, 0);
  swift_endAccess();

  v31 = v46[5];
  v32 = sub_2272847B4(0);
  if (v31)
  {
  }

  else
  {
    v33 = v32;
    [v32 setResultType_];
    [v33 setFetchLimit_];
    [v33 setFetchOffset_];
    [v33 setIncludesSubentities_];
    sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
    v34 = v43;
    v35 = sub_22766C9D0();

    swift_setDeallocating();
    v36 = qword_2813B2078;
    v37 = sub_22766A100();
    (*(*(v37 - 8) + 8))(v14 + v36, v37);
    v38 = *(*v14 + 48);
    v39 = *(*v14 + 52);
    swift_deallocClassInstance();
    *v42 = v35;
  }
}

uint64_t sub_226FA331C@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X4>, uint64_t *a5@<X8>)
{
  v8 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v10 = *v8;
  v9 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  v17 = v10;
  v18 = v9;

  sub_22766A070();
  *(v16 + 16) = v17;
  *(v16 + 24) = v18;
  *(v16 + 32) = v11;
  *(v16 + 40) = v12;
  swift_getKeyPath();
  v19 = a4();
  if (v5)
  {

    swift_setDeallocating();

    v20 = *(v16 + 40);

    v21 = qword_2813B2078;
    v22 = sub_22766A100();
    (*(*(v22 - 8) + 8))(v16 + v21, v22);
    v23 = *(*v16 + 48);
    v24 = *(*v16 + 52);
    return swift_deallocClassInstance();
  }

  else
  {
    v26 = sub_226F3E6A8(v19);

    swift_setDeallocating();

    v27 = *(v16 + 40);

    v28 = qword_2813B2078;
    v29 = sub_22766A100();
    (*(*(v29 - 8) + 8))(v16 + v28, v29);
    v30 = *(*v16 + 48);
    v31 = *(*v16 + 52);
    result = swift_deallocClassInstance();
    *a5 = v26;
  }

  return result;
}

uint64_t sub_226FA3580@<X0>(uint64_t a1@<X0>, void *a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v27[0] = a3;
  v31 = a4;
  v32 = a2;
  v30 = a1;
  v29 = sub_2276627D0();
  v4 = *(v29 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v29);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227662750();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v27 - v14;
  sub_227664520();
  sub_227664510();
  sub_227662690();
  v28 = *(v9 + 8);
  v28(v13, v8);
  sub_2276627C0();
  v16 = sub_227662770();
  v27[1] = v17;
  v27[2] = v16;
  (*(v4 + 8))(v7, v29);
  sub_227666990();
  sub_2276644D0();
  (*(v9 + 16))(v13, v15, v8);
  v18 = v31;
  sub_227665280();
  v28(v15, v8);
  v19 = __swift_project_boxed_opaque_existential_0(v32, v32[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9178, qword_227673198);
  v20 = sub_2276652D0();
  v21 = *(v20 - 8);
  v22 = *(v21 + 72);
  v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_227670CD0;
  (*(v21 + 16))(v24 + v23, v18, v20);
  v25 = v33;
  sub_22755EB68(v24, v19[1], *(v19 + 16), v19[3]);
  if (!v25)
  {
  }

  result = (*(v21 + 8))(v18, v20);
  *v27[0] = v25;
  return result;
}

BOOL sub_226FA38E4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v18 - v5;
  v7 = sub_227662750();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  sub_226E93170(a2, v6, &qword_27D7B9690, qword_227670B50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_226E97D1C(v6, &qword_27D7B9690, qword_227670B50);
    return 1;
  }

  else
  {
    (*(v8 + 32))(v14, v6, v7);
    sub_227664520();
    v16 = sub_227662730();
    v17 = *(v8 + 8);
    v17(v12, v7);
    v17(v14, v7);
    return v16 == 1;
  }
}

uint64_t sub_226FA3AE8@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2272EC2EC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_227664530();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_226FA3BF0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2272EC300(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_226FA3C7C(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    v10 = sub_2272C54FC(result, a2, a3, a4, a5);

    return v10;
  }

  return result;
}

uint64_t sub_226FA3D0C(void **a1)
{
  v2 = *(sub_227664530() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117694(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_226FA3DB4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_226FA3DB4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_22766D130();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227664530();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_227664530() - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_226FA4284(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_226FA3EE0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_226FA3EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v62 = sub_227662750();
  v8 = *(v62 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v62);
  v61 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v43 - v12;
  v13 = sub_227664530();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v53 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v59 = &v43 - v18;
  result = MEMORY[0x28223BE20](v17);
  v58 = &v43 - v21;
  v45 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v24 = *(v20 + 16);
    v23 = v20 + 16;
    v25 = *(v23 + 56);
    v55 = (v8 + 8);
    v56 = v24;
    v54 = (v23 - 8);
    v57 = v23;
    v26 = (v22 + v25 * (a3 - 1));
    v50 = -v25;
    v51 = (v23 + 16);
    v27 = a1 - a3;
    v52 = v22;
    v44 = v25;
    v28 = v22 + v25 * a3;
    v29 = v60;
LABEL_5:
    v48 = v26;
    v49 = a3;
    v46 = v28;
    v47 = v27;
    v63 = v27;
    while (1)
    {
      v30 = v58;
      v31 = v56;
      v56(v58, v28, v13);
      v32 = v13;
      v33 = v59;
      v31(v59, v26, v32);
      sub_227664520();
      v34 = v61;
      sub_227664520();
      v64 = sub_227662730();
      v35 = *v55;
      v36 = v34;
      v37 = v62;
      (*v55)(v36, v62);
      v35(v29, v37);
      v38 = *v54;
      v39 = v33;
      v13 = v32;
      (*v54)(v39, v32);
      result = v38(v30, v32);
      if (v64 != -1)
      {
LABEL_4:
        a3 = v49 + 1;
        v26 = &v48[v44];
        v27 = v47 - 1;
        v28 = v46 + v44;
        if (v49 + 1 == v45)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v52)
      {
        break;
      }

      v40 = *v51;
      v41 = v53;
      (*v51)(v53, v28, v32);
      swift_arrayInitWithTakeFrontToBack();
      result = v40(v26, v41, v32);
      v26 += v50;
      v28 += v50;
      if (__CFADD__(v63++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_226FA4284(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v138 = a1;
  v161 = sub_227662750();
  v8 = *(v161 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v161);
  v160 = &v135 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v159 = &v135 - v12;
  v13 = sub_227664530();
  v147 = *(v13 - 8);
  v14 = v147[8];
  v15 = MEMORY[0x28223BE20](v13);
  v141 = &v135 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v151 = &v135 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v158 = &v135 - v20;
  result = MEMORY[0x28223BE20](v19);
  v162 = &v135 - v22;
  v23 = a3[1];
  if (v23 >= 1)
  {
    v135 = a4;
    v24 = 0;
    v155 = (v8 + 8);
    v156 = v147 + 2;
    v153 = (v147 + 4);
    v154 = (v147 + 1);
    v25 = MEMORY[0x277D84F90];
    v140 = a3;
    v157 = v13;
    while (1)
    {
      if (v24 + 1 >= v23)
      {
        v42 = v24 + 1;
      }

      else
      {
        v148 = v23;
        v136 = v25;
        v137 = v5;
        v26 = v24;
        v139 = v24;
        v163 = *a3;
        v27 = v163;
        v28 = v147;
        v29 = v147[9];
        v150 = v29;
        v30 = v163 + v29 * (v24 + 1);
        v31 = v147[2];
        (v31)(v162, v30, v13);
        v32 = v27 + v29 * v26;
        v33 = v158;
        v146 = v31;
        (v31)(v158, v32, v13);
        v34 = v159;
        sub_227664520();
        v35 = v160;
        sub_227664520();
        v149 = sub_227662730();
        v36 = *v155;
        v37 = v35;
        v38 = v161;
        (*v155)(v37, v161);
        v145 = v36;
        (v36)(v34, v38);
        v39 = v28[1];
        v39(v33, v13);
        v144 = v39;
        result = (v39)(v162, v13);
        v40 = v139 + 2;
        v41 = v163 + v150 * (v139 + 2);
        while (1)
        {
          v42 = v148;
          if (v148 == v40)
          {
            break;
          }

          LODWORD(v163) = v149 == -1;
          v43 = v157;
          v44 = v146;
          v146();
          v45 = v158;
          (v44)(v158, v30, v43);
          v46 = v159;
          sub_227664520();
          v47 = v160;
          sub_227664520();
          v152 = sub_227662730();
          v48 = v47;
          v49 = v161;
          v50 = v30;
          v51 = v145;
          (v145)(v48, v161);
          v51(v46, v49);
          v52 = v144;
          (v144)(v45, v43);
          result = v52(v162, v43);
          ++v40;
          v41 += v150;
          v30 = v50 + v150;
          if (((v163 ^ (v152 != -1)) & 1) == 0)
          {
            v42 = v40 - 1;
            break;
          }
        }

        v5 = v137;
        a3 = v140;
        v13 = v157;
        v24 = v139;
        if (v149 != -1)
        {
          goto LABEL_23;
        }

        if (v42 < v139)
        {
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          return result;
        }

        if (v139 < v42)
        {
          v53 = v42;
          v54 = v150 * (v42 - 1);
          v55 = v42 * v150;
          v148 = v42;
          v56 = v139;
          v57 = v139 * v150;
          do
          {
            if (v56 != --v53)
            {
              v58 = *a3;
              if (!v58)
              {
                goto LABEL_132;
              }

              v59 = *v153;
              (*v153)(v141, v58 + v57, v13);
              if (v57 < v54 || v58 + v57 >= (v58 + v55))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v57 != v54)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = (v59)(v58 + v54, v141, v13);
              a3 = v140;
            }

            ++v56;
            v54 -= v150;
            v55 -= v150;
            v57 += v150;
          }

          while (v56 < v53);
          v5 = v137;
          v25 = v136;
          v24 = v139;
          v42 = v148;
        }

        else
        {
LABEL_23:
          v25 = v136;
        }
      }

      v60 = a3[1];
      if (v42 >= v60)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v42, v24))
      {
        goto LABEL_124;
      }

      if (v42 - v24 >= v135)
      {
        goto LABEL_33;
      }

      if (__OFADD__(v24, v135))
      {
        goto LABEL_125;
      }

      if (v24 + v135 >= v60)
      {
        v61 = a3[1];
      }

      else
      {
        v61 = v24 + v135;
      }

      if (v61 < v24)
      {
LABEL_126:
        __break(1u);
        goto LABEL_127;
      }

      if (v42 == v61)
      {
LABEL_33:
        v62 = v42;
        if (v42 < v24)
        {
          goto LABEL_123;
        }
      }

      else
      {
        v136 = v25;
        v137 = v5;
        v111 = *a3;
        v112 = v147[9];
        v152 = v147[2];
        v113 = (v111 + v112 * (v42 - 1));
        v149 = -v112;
        v139 = v24;
        v114 = (v24 - v42);
        v150 = v111;
        v142 = v112;
        v115 = (v111 + v42 * v112);
        v143 = v61;
        do
        {
          v148 = v42;
          v144 = v115;
          v145 = v114;
          v116 = v115;
          v146 = v113;
          v117 = v113;
          do
          {
            v118 = v162;
            v119 = v152;
            v152(v162, v116, v13);
            v120 = v158;
            v119(v158, v117, v13);
            v121 = v159;
            sub_227664520();
            v122 = v160;
            sub_227664520();
            v163 = sub_227662730();
            v123 = *v155;
            v124 = v122;
            v125 = v161;
            (*v155)(v124, v161);
            v126 = v121;
            v13 = v157;
            v123(v126, v125);
            v127 = *v154;
            (*v154)(v120, v13);
            result = v127(v118, v13);
            if (v163 != -1)
            {
              break;
            }

            if (!v150)
            {
              goto LABEL_129;
            }

            v128 = *v153;
            v129 = v151;
            (*v153)(v151, v116, v13);
            swift_arrayInitWithTakeFrontToBack();
            v128(v117, v129, v13);
            v117 = (v117 + v149);
            v116 += v149;
          }

          while (!__CFADD__(v114++, 1));
          v42 = v148 + 1;
          v113 = (v146 + v142);
          v114 = v145 - 1;
          v62 = v143;
          v115 = &v144[v142];
        }

        while (v148 + 1 != v143);
        v5 = v137;
        a3 = v140;
        v25 = v136;
        v24 = v139;
        if (v143 < v139)
        {
          goto LABEL_123;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_2273A4F9C(0, *(v25 + 2) + 1, 1, v25);
        v25 = result;
      }

      v64 = *(v25 + 2);
      v63 = *(v25 + 3);
      v65 = v64 + 1;
      if (v64 >= v63 >> 1)
      {
        result = sub_2273A4F9C((v63 > 1), v64 + 1, 1, v25);
        v25 = result;
      }

      *(v25 + 2) = v65;
      v66 = &v25[16 * v64];
      *(v66 + 4) = v24;
      *(v66 + 5) = v62;
      v67 = *v138;
      if (!*v138)
      {
        goto LABEL_133;
      }

      v143 = v62;
      if (v64)
      {
        v68 = v67;
        while (1)
        {
          v69 = v65 - 1;
          if (v65 >= 4)
          {
            break;
          }

          if (v65 == 3)
          {
            v70 = *(v25 + 4);
            v71 = *(v25 + 5);
            v80 = __OFSUB__(v71, v70);
            v72 = v71 - v70;
            v73 = v80;
LABEL_54:
            if (v73)
            {
              goto LABEL_112;
            }

            v86 = &v25[16 * v65];
            v88 = *v86;
            v87 = *(v86 + 1);
            v89 = __OFSUB__(v87, v88);
            v90 = v87 - v88;
            v91 = v89;
            if (v89)
            {
              goto LABEL_115;
            }

            v92 = &v25[16 * v69 + 32];
            v94 = *v92;
            v93 = *(v92 + 1);
            v80 = __OFSUB__(v93, v94);
            v95 = v93 - v94;
            if (v80)
            {
              goto LABEL_118;
            }

            if (__OFADD__(v90, v95))
            {
              goto LABEL_119;
            }

            if (v90 + v95 >= v72)
            {
              if (v72 < v95)
              {
                v69 = v65 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v96 = &v25[16 * v65];
          v98 = *v96;
          v97 = *(v96 + 1);
          v80 = __OFSUB__(v97, v98);
          v90 = v97 - v98;
          v91 = v80;
LABEL_68:
          if (v91)
          {
            goto LABEL_114;
          }

          v99 = &v25[16 * v69];
          v101 = *(v99 + 4);
          v100 = *(v99 + 5);
          v80 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v80)
          {
            goto LABEL_117;
          }

          if (v102 < v90)
          {
            goto LABEL_3;
          }

LABEL_75:
          v107 = v69 - 1;
          if (v69 - 1 >= v65)
          {
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
            goto LABEL_126;
          }

          if (!*a3)
          {
            goto LABEL_130;
          }

          v108 = *&v25[16 * v107 + 32];
          v109 = *&v25[16 * v69 + 40];
          sub_226FA4E88(*a3 + v147[9] * v108, *a3 + v147[9] * *&v25[16 * v69 + 32], *a3 + v147[9] * v109, v68);
          if (v5)
          {
          }

          if (v109 < v108)
          {
            goto LABEL_108;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_2271171D0(v25);
          }

          if (v107 >= *(v25 + 2))
          {
            goto LABEL_109;
          }

          v110 = &v25[16 * v107];
          *(v110 + 4) = v108;
          *(v110 + 5) = v109;
          v164 = v25;
          result = sub_227117144(v69);
          v25 = v164;
          v65 = *(v164 + 16);
          if (v65 <= 1)
          {
            goto LABEL_3;
          }
        }

        v74 = &v25[16 * v65 + 32];
        v75 = *(v74 - 64);
        v76 = *(v74 - 56);
        v80 = __OFSUB__(v76, v75);
        v77 = v76 - v75;
        if (v80)
        {
          goto LABEL_110;
        }

        v79 = *(v74 - 48);
        v78 = *(v74 - 40);
        v80 = __OFSUB__(v78, v79);
        v72 = v78 - v79;
        v73 = v80;
        if (v80)
        {
          goto LABEL_111;
        }

        v81 = &v25[16 * v65];
        v83 = *v81;
        v82 = *(v81 + 1);
        v80 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v80)
        {
          goto LABEL_113;
        }

        v80 = __OFADD__(v72, v84);
        v85 = v72 + v84;
        if (v80)
        {
          goto LABEL_116;
        }

        if (v85 >= v77)
        {
          v103 = &v25[16 * v69 + 32];
          v105 = *v103;
          v104 = *(v103 + 1);
          v80 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v80)
          {
            goto LABEL_120;
          }

          if (v72 < v106)
          {
            v69 = v65 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      v23 = a3[1];
      v24 = v143;
      if (v143 >= v23)
      {
        goto LABEL_96;
      }
    }
  }

  v25 = MEMORY[0x277D84F90];
LABEL_96:
  v13 = v25;
  v25 = *v138;
  if (!*v138)
  {
    goto LABEL_134;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_127:
    result = sub_2271171D0(v13);
    v13 = result;
  }

  v164 = v13;
  v131 = *(v13 + 16);
  if (v131 >= 2)
  {
    while (*a3)
    {
      v132 = *(v13 + 16 * v131);
      v133 = *(v13 + 16 * (v131 - 1) + 40);
      sub_226FA4E88(*a3 + v147[9] * v132, *a3 + v147[9] * *(v13 + 16 * (v131 - 1) + 32), *a3 + v147[9] * v133, v25);
      if (v5)
      {
      }

      if (v133 < v132)
      {
        goto LABEL_121;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2271171D0(v13);
      }

      if (v131 - 2 >= *(v13 + 16))
      {
        goto LABEL_122;
      }

      v134 = (v13 + 16 * v131);
      *v134 = v132;
      v134[1] = v133;
      v164 = v13;
      result = sub_227117144(v131 - 1);
      v13 = v164;
      v131 = *(v164 + 16);
      if (v131 <= 1)
      {
      }
    }

    goto LABEL_131;
  }
}

uint64_t sub_226FA4E88(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v75 = a3;
  v70 = sub_227662750();
  v7 = *(v70 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v70);
  v69 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v68 = &v58 - v11;
  v74 = sub_227664530();
  v12 = *(v74 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v74);
  v67 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v14);
  v72 = &v58 - v17;
  v19 = *(v18 + 72);
  if (!v19)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_60;
  }

  v20 = v75 - a2;
  if (v75 - a2 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_61;
  }

  v21 = (a2 - a1) / v19;
  v78 = a1;
  v77 = a4;
  if (v21 >= v20 / v19)
  {
    v23 = v20 / v19 * v19;
    if (a4 < a2 || a2 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a4 + v23;
    if (v23 >= 1)
    {
      v42 = -v19;
      v62 = (v7 + 8);
      v63 = (v12 + 16);
      v60 = a4;
      v61 = (v12 + 8);
      v43 = v41;
      v73 = a1;
      v64 = -v19;
      do
      {
        v58 = v41;
        v44 = a2;
        v45 = a2 + v42;
        v65 = v44;
        v66 = v45;
        while (1)
        {
          v46 = v75;
          if (v44 <= a1)
          {
            v78 = v44;
            v76 = v58;
            goto LABEL_58;
          }

          v59 = v41;
          v75 += v42;
          v47 = v43 + v42;
          v48 = v43;
          v49 = *v63;
          v50 = v74;
          (*v63)();
          v51 = v67;
          (v49)(v67, v45, v50);
          v52 = v68;
          sub_227664520();
          v53 = v69;
          sub_227664520();
          v71 = sub_227662730();
          v54 = *v62;
          v55 = v53;
          v56 = v70;
          (*v62)(v55, v70);
          v54(v52, v56);
          v57 = *v61;
          (*v61)(v51, v50);
          v57(v72, v50);
          if (v71 == -1)
          {
            break;
          }

          v41 = v47;
          if (v46 < v48 || v75 >= v48)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v66;
            a1 = v73;
          }

          else
          {
            v45 = v66;
            a1 = v73;
            if (v46 != v48)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v43 = v47;
          v42 = v64;
          v44 = v65;
          if (v47 <= v60)
          {
            a2 = v65;
            goto LABEL_57;
          }
        }

        v43 = v48;
        if (v46 < v65 || v75 >= v65)
        {
          a2 = v66;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v73;
          v41 = v59;
          v42 = v64;
        }

        else
        {
          a2 = v66;
          a1 = v73;
          v41 = v59;
          v42 = v64;
          if (v46 != v65)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v43 > v60);
    }

LABEL_57:
    v78 = a2;
    v76 = v41;
  }

  else
  {
    v22 = v21 * v19;
    if (a4 < a1 || a1 + v22 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v66 = a4 + v22;
    v76 = a4 + v22;
    if (v22 >= 1 && a2 < v75)
    {
      v25 = *(v12 + 16);
      v62 = (v7 + 8);
      v63 = v25;
      v64 = v19;
      v65 = v12 + 16;
      v61 = (v12 + 8);
      v26 = v67;
      do
      {
        v73 = a1;
        v27 = v72;
        v28 = v74;
        v29 = v63;
        (v63)(v72, a2, v74);
        (v29)(v26, a4, v28);
        v30 = v68;
        sub_227664520();
        v31 = v69;
        sub_227664520();
        v71 = sub_227662730();
        v32 = a4;
        v33 = a2;
        v34 = *v62;
        v35 = v31;
        v36 = v70;
        (*v62)(v35, v70);
        v34(v30, v36);
        v37 = *v61;
        (*v61)(v26, v28);
        v37(v27, v28);
        if (v71 == -1)
        {
          v38 = v64;
          a2 = v33 + v64;
          v39 = v73;
          v40 = v33;
          if (v73 < v33 || v73 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v32;
          }

          else
          {
            a4 = v32;
            if (v73 != v40)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          goto LABEL_33;
        }

        a2 = v33;
        v38 = v64;
        a4 = v32 + v64;
        v39 = v73;
        if (v73 < v32 || v73 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v73 != v32)
        {
          swift_arrayInitWithTakeBackToFront();
          v77 = a4;
          goto LABEL_33;
        }

        v77 = a4;
LABEL_33:
        a1 = v39 + v38;
        v78 = a1;
      }

      while (a4 < v66 && a2 < v75);
    }
  }

LABEL_58:
  sub_2271171FC(&v78, &v77, &v76);
  return 1;
}

uint64_t sub_226FA5570(uint64_t a1, void *a2, void *a3, char a4, uint64_t a5, void *a6)
{
  v12 = sub_22766B390();
  v34[0] = *(v12 - 8);
  v34[1] = v12;
  v13 = *(v34[0] + 64);
  MEMORY[0x28223BE20](v12);
  v14 = sub_227664530();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36[3] = &type metadata for PersistenceHandle;
  v36[4] = &off_283A9AF78;
  v19 = swift_allocObject();
  v36[0] = v19;
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  v20 = __swift_project_boxed_opaque_existential_0(a6 + 7, a6[10]);
  v21 = a2;
  v22 = a3;

  v23 = sub_2276644D0();
  v24 = *v20;
  sub_22701CD84(v23, v25, v36, v18);
  v26 = *(v15 + 8);
  v26(v18, v14);

  v27 = a6[17];
  v28 = a6[18];
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9170, &qword_227673190);
  v29 = *(v15 + 72);
  v30 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_227670CD0;
  (*(v15 + 16))(v31 + v30, a1, v14);
  v32 = sub_226F4BFF4(v31);
  swift_setDeallocating();
  v26((v31 + v30), v14);
  swift_deallocClassInstance();
  v34[2] = v32;
  v35 = 0;
  sub_226FA6E58();
  sub_2276699D0();

  return __swift_destroy_boxed_opaque_existential_0(v36);
}

uint64_t sub_226FA5964(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5, uint64_t a6, uint64_t a7, double a8)
{
  v117 = a7;
  v129 = a2;
  v136[5] = *MEMORY[0x277D85DE8];
  v127 = sub_227664530();
  v122 = *(v127 - 8);
  v14 = *(v122 + 64);
  v15 = MEMORY[0x28223BE20](v127);
  v123 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v119 = &v110 - v17;
  v126 = sub_227662190();
  v125 = *(v126 - 8);
  v18 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v118 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v110 - v25;
  v128 = sub_227662750();
  v124 = *(v128 - 8);
  v27 = *(v124 + 64);
  v28 = MEMORY[0x28223BE20](v128);
  v120 = &v110 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v121 = &v110 - v30;
  v31 = sub_227662940();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  MEMORY[0x28223BE20](v31);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136[3] = &type metadata for PersistenceHandle;
  v136[4] = &off_283A9AF78;
  v36 = swift_allocObject();
  v136[0] = v36;
  *(v36 + 16) = a3;
  *(v36 + 24) = a4;
  *(v36 + 32) = a5;
  *(v36 + 40) = a6;
  v37 = a3;
  v38 = a4;

  sub_227662920();
  v39 = a1;
  v40 = sub_2276669F0();
  v130 = v40;

  v133 = sub_2276644F0();
  v134 = v41;
  v132 = &v133;
  LOBYTE(a1) = sub_226F7E160(sub_226FA6D84, v131, v40);

  if (a1)
  {
    v116 = v32;
    v115 = v31;
    v42 = v39;
    sub_2276669A0();
    sub_2276628D0();
    (*(v125 + 8))(v20, v126);
    v43 = v124;
    v44 = v128;
    if ((*(v124 + 48))(v26, 1, v128) == 1)
    {
      (*(v116 + 8))(v35, v115);
      sub_226E97D1C(v26, &qword_27D7B9690, qword_227670B50);
    }

    else
    {
      v125 = v42;
      v126 = v35;
      v45 = v121;
      (*(v43 + 32))(v121, v26, v44);
      v46 = v120;
      sub_227664520();
      v47 = sub_227662730();
      v50 = *(v43 + 8);
      v49 = v43 + 8;
      v48 = v50;
      (v50)(v46, v44);
      if (v47 == -1)
      {
        v114 = v49;
        sub_227664500();
        v51 = v116;
        if (v52 >= a8)
        {
          v120 = v48;
          v56 = *__swift_project_boxed_opaque_existential_0(v117 + 25, v117[28]);
          sub_22701B100(v136, v118);
          v57 = sub_2276669F0();
          v58 = sub_226F3E6A8(v57);

          v59 = sub_22701D560(v58, v136);
          v125 = 0;
          v60 = v59;

          v112 = &v110;
          v62 = MEMORY[0x28223BE20](v61);
          v63 = (&v110 - 4);
          *(&v110 - 2) = a8;
          v64 = v60[32];
          v111 = ((1 << v64) + 63) >> 6;
          if ((v64 & 0x3Fu) <= 0xD)
          {
            goto LABEL_12;
          }

          while (1)
          {
            v90 = v125;
            v88 = v60;

            if (swift_stdlib_isStackAllocationSafe())
            {

LABEL_12:
              v110 = &v110;
              MEMORY[0x28223BE20](v62);
              v113 = &v110 - ((v65 + 15) & 0x3FFFFFFFFFFFFFF0);
              bzero(v113, v65);
              v117 = 0;
              v66 = 0;
              v67 = v60;
              v69 = *(v60 + 7);
              v60 += 56;
              v68 = v69;
              v70 = 1 << *(v60 - 24);
              v71 = -1;
              if (v70 < 64)
              {
                v71 = ~(-1 << v70);
              }

              v72 = v71 & v68;
              v73 = (v70 + 63) >> 6;
              v124 = v122 + 16;
              while (v72)
              {
                v74 = __clz(__rbit64(v72));
                v72 &= v72 - 1;
LABEL_22:
                v77 = v74 | (v66 << 6);
                v78 = v122;
                v63 = v119;
                v79 = v127;
                (*(v122 + 16))(v119, *(v67 + 48) + *(v122 + 72) * v77, v127);
                sub_227664500();
                v81 = v80;
                (*(v78 + 8))(v63, v79);
                if (v81 >= a8)
                {
                  *&v113[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
                  v82 = __OFADD__(v117, 1);
                  v117 = (v117 + 1);
                  if (v82)
                  {
                    __break(1u);
LABEL_26:
                    v83 = sub_22726A210(v113, v111, v117, v67);
                    v84 = v83;
                    goto LABEL_27;
                  }
                }
              }

              v75 = v66;
              while (1)
              {
                v66 = v75 + 1;
                if (__OFADD__(v75, 1))
                {
                  break;
                }

                if (v66 >= v73)
                {
                  goto LABEL_26;
                }

                v76 = *&v60[8 * v66];
                ++v75;
                if (v76)
                {
                  v74 = __clz(__rbit64(v76));
                  v72 = (v76 - 1) & v76;
                  goto LABEL_22;
                }
              }

              __break(1u);
            }

            else
            {
              while (1)
              {
                v109 = swift_slowAlloc();
                v84 = sub_226FA3C7C(v109, v111, v88, sub_226FA6DF8, v63);
                v125 = v90;

                v83 = MEMORY[0x22AA9A450](v109, -1, -1);
LABEL_27:
                MEMORY[0x28223BE20](v83);
                v85 = v118;
                *(&v110 - 2) = v118;
                v86 = v125;
                v87 = sub_22735A148(sub_226FA6E38, (&v110 - 4), v84);
                v88 = *(v87 + 16);
                v89 = v129;
                if (!v88)
                {
                  break;
                }

                v117 = v86;
                v63 = sub_2274CD7B8(v88, 0);
                v125 = sub_2274CE0E4(&v133, &v63[(*(v122 + 80) + 32) & ~*(v122 + 80)], v88, v87);
                v90 = v134;
                v124 = v135;

                sub_226EBB21C();
                if (v125 == v88)
                {
                  v91 = v115;
                  v86 = v117;
                  goto LABEL_31;
                }

                __break(1u);
              }

              v63 = MEMORY[0x277D84F90];
              v91 = v115;
LABEL_31:
              v133 = v63;
              sub_226FA3D0C(&v133);
              if (v86)
              {

                __break(1u);
                return result;
              }

              v60 = v133;
              v92 = sub_22745491C(v89, v133);
              if ((v93 & 1) == 0)
              {
                v63 = &v133;
                v94 = v119;
                sub_226FA3AE8(v92, v119);
                (*(v122 + 8))(v94, v127);
                v60 = v133;
              }

              if (!v60 || !*(v60 + 2))
              {
LABEL_51:
                v106 = v130;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_227670CD0;
                *(inited + 32) = sub_2276644F0();
                *(inited + 40) = v108;
                v53 = sub_2273371D4(v106, inited);
                swift_setDeallocating();
                sub_226FA6DA4(inited + 32);
                (v120)(v121, v128);
                (*(v116 + 8))(v126, v91);
                sub_226E97D1C(v85, &qword_27D7B9690, qword_227670B50);

                goto LABEL_10;
              }

              v95 = *(v60 + 2);
              v96 = 0;
              v125 = &v60[(*(v122 + 80) + 32) & ~*(v122 + 80)];
              v97 = (v122 + 8);
              while (v96 < *(v60 + 2))
              {
                (*(v122 + 16))(v123, v125 + *(v122 + 72) * v96, v127);
                v98 = v130;
                v99 = sub_2276644F0();
                v63 = v100;
                v101 = *(v98 + 16);
                if (v101)
                {
                  v102 = v99;
                  v103 = 0;
                  v104 = (v98 + 40);
                  while (1)
                  {
                    v105 = *(v104 - 1) == v102 && *v104 == v63;
                    if (v105 || (sub_22766D190() & 1) != 0)
                    {
                      break;
                    }

                    ++v103;
                    v104 += 2;
                    if (v101 == v103)
                    {
                      goto LABEL_37;
                    }
                  }

                  v63 = &v130;
                  sub_226FA3BF0(v103);

                  (*v97)(v123, v127);
                }

                else
                {
LABEL_37:
                  (*v97)(v123, v127);
                }

                if (++v96 == v95)
                {
                  v85 = v118;
                  v91 = v115;
                  goto LABEL_51;
                }
              }
            }

            __break(1u);
          }
        }

        (v48)(v45, v44);
        (*(v51 + 8))(v126, v115);
      }

      else
      {
        (v48)(v45, v44);
        (*(v116 + 8))(v126, v115);
      }
    }
  }

  else
  {
    (*(v32 + 8))(v35, v31);
  }

  v53 = 0;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v136);
  v54 = *MEMORY[0x277D85DE8];
  return v53 & 1;
}

uint64_t sub_226FA6770(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_22766A730();
  sub_22766B370();
  v12 = *(v5 + 8);
  v12(v11, v4);
  if (*(a1 + 16))
  {
    v14 = *(v2 + 136);
    v13 = *(v2 + 144);
    swift_getObjectType();
    v19 = a1;
    v20 = 1;
    sub_226FA6E58();

    sub_2276699D0();
  }

  else
  {
    sub_22766A730();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "SyncablesUpdated has no inserted sessions, not publishing ArchivedSessionsAdded", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    return (v12)(v9, v4);
  }
}

uint64_t sub_226FA698C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  sub_22766A730();
  sub_22766B370();
  v12 = *(v5 + 8);
  v12(v11, v4);
  if (*(a1 + 16))
  {
    v14 = *(v2 + 136);
    v13 = *(v2 + 144);
    swift_getObjectType();
    v19 = a1;
    v20 = 1;
    sub_226FA6F54();

    sub_2276699D0();
  }

  else
  {
    sub_22766A730();
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226E8E000, v16, v17, "SyncablesUpdated has no inserted sessions, not publishing SampleContentArchivedSessionsAdded", v18, 2u);
      MEMORY[0x22AA9A450](v18, -1, -1);
    }

    return (v12)(v9, v4);
  }
}

uint64_t sub_226FA6BA8@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v5 = *(sub_227667AA0() - 8);
  v6 = *(v2 + 16);
  return sub_226F9D4DC(a1, v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80)), a2);
}

uint64_t sub_226FA6CA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226FA6CF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = __swift_project_boxed_opaque_existential_0(*(v1 + 40), *(*(v1 + 40) + 24));
  return sub_226FA5964(a1, v4, *v6, v6[1], *(v6 + 16), v6[3], v3, v5) & 1;
}

uint64_t sub_226FA6D60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  return sub_226FA3580(a1, *(v3 + 32), a2, a3);
}

BOOL sub_226FA6DF8()
{
  v1 = *(v0 + 16);
  sub_227664500();
  return v2 >= v1;
}

unint64_t sub_226FA6E58()
{
  result = qword_2813A04E8[0];
  if (!qword_2813A04E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2813A04E8);
  }

  return result;
}

uint64_t sub_226FA6EAC(void *a1)
{
  v3 = *(sub_227667E50() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_226FA2C40(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_226FA6F54()
{
  result = qword_28139D7A0;
  if (!qword_28139D7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D7A0);
  }

  return result;
}

unint64_t sub_226FA7000()
{
  result = qword_28139FAE0;
  if (!qword_28139FAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139FAE0);
  }

  return result;
}

uint64_t sub_226FA7070@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = *__swift_project_boxed_opaque_existential_0((v2[2] + 56), *(v2[2] + 80));
  return sub_22701CD84(v5, v6, a1, a2);
}

unint64_t sub_226FA70D8()
{
  result = qword_28139A350;
  if (!qword_28139A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139A350);
  }

  return result;
}

unint64_t sub_226FA712C()
{
  result = qword_281398BC8;
  if (!qword_281398BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B94F0, &unk_227670BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398BC8);
  }

  return result;
}

unint64_t sub_226FA71B0()
{
  result = qword_281398BC0;
  if (!qword_281398BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B94F0, &unk_227670BA0);
    sub_226F62704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398BC0);
  }

  return result;
}

unint64_t sub_226FA7258(uint64_t a1)
{
  result = sub_226FA7280();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FA7280()
{
  result = qword_27D7B91A8;
  if (!qword_27D7B91A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91A8);
  }

  return result;
}

unint64_t sub_226FA72E0(uint64_t a1)
{
  result = sub_226FA7308();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FA7308()
{
  result = qword_27D7B91B0;
  if (!qword_27D7B91B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91B0);
  }

  return result;
}

uint64_t sub_226FA735C(uint64_t a1, uint64_t a2)
{
  v4 = sub_226FA73A8();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

unint64_t sub_226FA73A8()
{
  result = qword_27D7BE800;
  if (!qword_27D7BE800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BE800);
  }

  return result;
}

uint64_t sub_226FA7408@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D40];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_226FA747C()
{
  v0 = sub_2276693F0();
  v1 = sub_226F3E4E8(v0);

  return v1;
}

uint64_t sub_226FA74B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_227667760();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_226FA74DC(uint64_t a1)
{
  *(a1 + 24) = sub_226FA7544(&qword_2813A55E0);
  result = sub_226FA7544(&unk_2813A55D0);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_226FA7544(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_227667780();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226FA7588(uint64_t a1)
{
  v46 = sub_227664530();
  v3 = *(v46 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v46);
  v45 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_227666F60();
  v6 = *(v44 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v44);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v10)
  {
    v42 = v9;
    v34 = v1;
    v50 = MEMORY[0x277D84F90];
    v36 = a1;
    sub_226F1FA28(0, v10, 0);
    v12 = v6;
    v13 = v36;
    v14 = -1 << *(v36 + 32);
    v48 = v36 + 56;
    v49 = v50;
    result = sub_22766CC90();
    v15 = result;
    v16 = 0;
    v40 = v3 + 8;
    v41 = v3 + 16;
    v43 = v12;
    v38 = v3;
    v39 = v12 + 32;
    v35 = v13 + 64;
    v37 = v10;
    while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(v13 + 32))
    {
      v19 = v15 >> 6;
      if ((*(v48 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
      {
        goto LABEL_23;
      }

      v47 = *(v13 + 36);
      v21 = v45;
      v20 = v46;
      (*(v3 + 16))(v45, *(v13 + 48) + *(v3 + 72) * v15, v46);
      sub_2276644F0();
      v22 = v42;
      sub_227666F30();
      (*(v3 + 8))(v21, v20);
      v23 = v49;
      v50 = v49;
      v25 = *(v49 + 16);
      v24 = *(v49 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1FA28(v24 > 1, v25 + 1, 1);
        v23 = v50;
      }

      *(v23 + 16) = v25 + 1;
      v26 = (*(v43 + 80) + 32) & ~*(v43 + 80);
      v49 = v23;
      result = (*(v43 + 32))(v23 + v26 + *(v43 + 72) * v25, v22, v44);
      v17 = 1 << *(v13 + 32);
      if (v15 >= v17)
      {
        goto LABEL_24;
      }

      v27 = *(v48 + 8 * v19);
      if ((v27 & (1 << v15)) == 0)
      {
        goto LABEL_25;
      }

      if (v47 != *(v13 + 36))
      {
        goto LABEL_26;
      }

      v28 = v27 & (-2 << (v15 & 0x3F));
      if (v28)
      {
        v17 = __clz(__rbit64(v28)) | v15 & 0x7FFFFFFFFFFFFFC0;
        v18 = v37;
        v3 = v38;
      }

      else
      {
        v29 = v19 << 6;
        v30 = v19 + 1;
        v31 = (v35 + 8 * v19);
        v18 = v37;
        v3 = v38;
        while (v30 < (v17 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_226EB526C(v15, v47, 0);
            v17 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_226EB526C(v15, v47, 0);
LABEL_19:
        v13 = v36;
      }

      ++v16;
      v15 = v17;
      if (v16 == v18)
      {
        return v49;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_226FA7964(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_227664E40();
  v4[12] = v5;
  v6 = *(v5 - 8);
  v4[13] = v6;
  v7 = *(v6 + 64) + 15;
  v4[14] = swift_task_alloc();
  v8 = sub_22766B390();
  v4[15] = v8;
  v9 = *(v8 - 8);
  v4[16] = v9;
  v10 = *(v9 + 64) + 15;
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91B8, &qword_227673528) - 8) + 64) + 15;
  v4[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FA7AC8, 0, 0);
}

uint64_t sub_226FA7AC8()
{
  v2 = v0[9];
  v1 = v0[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227670CD0;
  *(inited + 32) = v2;
  *(inited + 40) = v1;

  v4 = sub_226F4BE8C(inited);
  v0[20] = v4;
  swift_setDeallocating();
  sub_226FA6DA4(inited + 32);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_226FA7BC8;
  v6 = v0[11];

  return sub_226F9F474(v4);
}

uint64_t sub_226FA7BC8(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 168);
  v7 = *v2;

  v8 = v4[20];

  if (v1)
  {
    v10 = v5[18];
    v9 = v5[19];
    v11 = v5[17];
    v12 = v5[14];

    v13 = *(v7 + 8);

    return v13();
  }

  else
  {
    v5[22] = a1;

    return MEMORY[0x2822009F8](sub_226FA7D5C, 0, 0);
  }
}

uint64_t sub_226FA7D5C()
{
  v52 = v0;
  v1 = v0[19];
  v2 = v0[12];
  v3 = v0[13];
  sub_22722AED8(v0[22], v1);

  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[17];
    v5 = v0[10];
    sub_226FAD57C(v0[19]);
    sub_22766A720();

    v6 = sub_22766B380();
    v7 = sub_22766C8B0();

    v8 = os_log_type_enabled(v6, v7);
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    if (v8)
    {
      v13 = v0[9];
      v12 = v0[10];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v51[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_226E97AE8(v13, v12, v51);
      _os_log_impl(&dword_226E8E000, v6, v7, "No Resumable Session for identifier: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v14, -1, -1);
    }

    (*(v10 + 8))(v9, v11);
    v16 = sub_227665CB0();
    sub_226FAD5E4(&qword_28139B740, MEMORY[0x277D51D30]);
    swift_allocError();
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D51D10], v16);
    swift_willThrow();
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];
    v21 = v0[14];

    v22 = v0[1];
  }

  else
  {
    v23 = v0[18];
    v25 = v0[13];
    v24 = v0[14];
    v26 = v0[12];
    v27 = v0[8];
    (*(v25 + 32))(v27, v0[19], v26);
    sub_22766A720();
    (*(v25 + 16))(v24, v27, v26);
    v28 = sub_22766B380();
    v29 = sub_22766C8B0();
    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[18];
    v33 = v0[15];
    v32 = v0[16];
    v35 = v0[13];
    v34 = v0[14];
    v36 = v0[12];
    if (v30)
    {
      v50 = v0[15];
      v37 = swift_slowAlloc();
      v48 = v29;
      v38 = swift_slowAlloc();
      v51[0] = v38;
      *v37 = 136315138;
      sub_226FAD5E4(&qword_27D7B91C0, MEMORY[0x277D51098]);
      v39 = sub_22766D140();
      v49 = v31;
      v41 = v40;
      (*(v35 + 8))(v34, v36);
      v42 = sub_226E97AE8(v39, v41, v51);

      *(v37 + 4) = v42;
      _os_log_impl(&dword_226E8E000, v28, v48, "Found Resumable Session: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AA9A450](v38, -1, -1);
      MEMORY[0x22AA9A450](v37, -1, -1);

      (*(v32 + 8))(v49, v50);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
      (*(v32 + 8))(v31, v33);
    }

    v44 = v0[18];
    v43 = v0[19];
    v45 = v0[17];
    v46 = v0[14];

    v22 = v0[1];
  }

  return v22();
}

uint64_t sub_226FA81EC()
{
  v1 = v0;
  v2 = sub_227669A70();
  v64 = *(v2 - 8);
  v3 = v64;
  v4 = *(v64 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = v1[2];
  v13 = v1[4];
  v66 = v1;
  ObjectType = swift_getObjectType();
  v67 = v12;
  v14 = *MEMORY[0x277D4E740];
  v15 = *(v3 + 104);
  v63 = v3 + 104;
  v15(v6, v14, v2);
  v62 = v15;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
  v56 = sub_226FAC760();
  v54 = sub_226FAC7E4();
  v60 = v13;
  sub_227669ED0();

  v16 = *(v64 + 8);
  v64 += 8;
  v59 = v16;
  v16(v6, v2);
  swift_unknownObjectRelease();
  v67 = v12;
  v15(v6, *MEMORY[0x277D4E5B0], v2);
  swift_allocObject();
  swift_weakInit();
  v58 = sub_227664530();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v65 = v2;
  v17 = v59;
  v59(v6, v2);
  swift_unknownObjectRelease();
  v67 = v12;
  v62(v6, *MEMORY[0x277D4E620], v2);
  swift_allocObject();
  swift_weakInit();
  v55 = sub_227667AA0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v18 = v65;
  v17(v6, v65);
  v19 = v17;
  swift_unknownObjectRelease();
  v67 = v12;
  v20 = v62;
  v62(v6, *MEMORY[0x277D4E700], v18);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v19(v6, v65);

  swift_unknownObjectRelease();
  v67 = v12;
  LODWORD(v56) = *MEMORY[0x277D4E5F0];
  v20(v6);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v21 = v65;
  v19(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v22 = v62;
  v62(v6, *MEMORY[0x277D4E760], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v23 = v65;
  v19(v6, v65);

  swift_unknownObjectRelease();
  v67 = v12;
  v22(v6, *MEMORY[0x277D4E5D8], v23);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v24 = v65;
  v19(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v22(v6, *MEMORY[0x277D4E7C8], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v53[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9198, &qword_227673450);
  v53[1] = sub_226FACCDC();
  v53[0] = sub_226FACD60();
  sub_227669ED0();

  v19(v6, v24);
  swift_unknownObjectRelease();
  v67 = v12;
  v62(v6, *MEMORY[0x277D4E630], v24);
  swift_allocObject();
  swift_weakInit();
  sub_227664E40();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v25 = v59;
  v59(v6, v24);
  swift_unknownObjectRelease();
  v67 = v12;
  v62(v6, *MEMORY[0x277D4E6A8], v24);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
  v27 = sub_226FA712C();
  v57 = sub_226FA71B0();
  v53[3] = v27;
  v54 = v26;
  sub_227669EC0();

  v28 = v65;
  v25(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v29 = v62;
  v62(v6, *MEMORY[0x277D4EBC0], v28);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v30 = v65;
  v31 = v59;
  v59(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v29(v6, *MEMORY[0x277D4E5D0], v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v31(v6, v30);
  swift_unknownObjectRelease();
  v67 = v12;
  v29(v6, *MEMORY[0x277D4EB68], v30);
  swift_allocObject();
  swift_weakInit();
  sub_227667E50();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v32 = v65;
  v31(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v33 = v62;
  v62(v6, *MEMORY[0x277D4EB50], v32);
  swift_allocObject();
  swift_weakInit();
  sub_227669EC0();

  v34 = v65;
  v35 = v59;
  v59(v6, v65);
  swift_unknownObjectRelease();
  v67 = v12;
  v33(v6, *MEMORY[0x277D4EDD0], v34);
  swift_allocObject();
  v36 = v66;
  swift_weakInit();
  sub_227669ED0();

  v37 = v65;
  v35(v6, v65);
  swift_unknownObjectRelease();
  v38 = v36[15];
  v39 = v36[17];
  swift_getObjectType();
  v67 = v38;
  v33(v6, v56, v37);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v35(v6, v37);
  swift_unknownObjectRelease();
  v40 = __swift_project_boxed_opaque_existential_0(v36 + 5, v36[8]);
  v41 = swift_allocObject();
  swift_weakInit();
  v42 = *v40;
  sub_2274881B4(41, &unk_2276734E8, v41);

  v43 = __swift_project_boxed_opaque_existential_0(v36 + 5, v36[8]);
  v44 = swift_allocObject();
  swift_weakInit();
  v45 = *v43;
  sub_227487E7C(42, &unk_2276734F8, v44);

  v46 = __swift_project_boxed_opaque_existential_0(v36 + 5, v36[8]);
  v47 = swift_allocObject();
  swift_weakInit();
  v48 = *v46;
  sub_227487B44(43, &unk_227673508, v47);

  v49 = __swift_project_boxed_opaque_existential_0(v36 + 5, v36[8]);
  v50 = swift_allocObject();
  swift_weakInit();
  v51 = *v49;
  sub_227481194(30, &unk_227673518, v50);
}

uint64_t sub_226FA92A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226FA92C8, 0, 0);
}

uint64_t sub_226FA92C8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226F60ED8;

    return sub_226F9CDBC();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_226FA93DC(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_226FA9404, 0, 0);
}

uint64_t sub_226FA9404()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_226FA955C;
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];

    return sub_226F9DD0C(v7, v5, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227664530();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_226FA955C()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226FAD634;
  }

  else
  {
    v3 = sub_226FA9670;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FA9670()
{
  v1 = v0[10];
  v2 = sub_227664530();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226FA9718(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = *(sub_227667AA0() - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FA97E0, 0, 0);
}

uint64_t sub_226FA97E0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    v6 = *(v0 + 96);
    sub_226E91B50(Strong + 80, v0 + 16);

    v7 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v8 = *v7;
    v9 = *(*v7 + 40);
    v10 = *(*v7 + 48);
    __swift_project_boxed_opaque_existential_0((*v7 + 16), v9);
    sub_226F9D558(v6, v3);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    *(v0 + 136) = v12;
    *(v12 + 16) = v8;
    sub_226F9D5BC(v3, v12 + v11);
    v13 = *(v10 + 24);

    v20 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 144) = v15;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9168, &qword_227673160);
    *v15 = v0;
    v15[1] = sub_226FA9A50;

    return (v20)(v0 + 80, sub_226FA6BA8, v12, v16, v9, v10);
  }

  else
  {
    **(v0 + 88) = 0;
    v18 = *(v0 + 128);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_226FA9A50()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_226FA9BE0;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_226FA9B6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FA9B6C()
{
  **(v0 + 88) = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_226FA9BE0()
{
  v2 = v0[16];
  v1 = v0[17];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[19];

  return v3();
}

uint64_t sub_226FA9C74()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = *(*v3 + 48);
    __swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
    v5 = *(v4 + 24);
    v10 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[11] = v7;
    *v7 = v0;
    v7[1] = sub_226F60430;

    return v10();
  }

  else
  {
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_226FA9E40(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226FA9E60, 0, 0);
}

uint64_t sub_226FA9E60()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_226F9FEF0(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_226FA9F94()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_226FAA0A0;

    return sub_226FA1038();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_226FAA0A0()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_226FAD630;
  }

  else
  {
    v3 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FAA1B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[10] = a2;
  v2[11] = v3;
  v2[12] = v4;
  return MEMORY[0x2822009F8](sub_226FAA1DC, 0, 0);
}

uint64_t sub_226FAA1DC()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_226FAA2F0;
    v6 = v0[11];
    v5 = v0[12];

    return sub_226FA18E4(v6, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_226FAA2F0()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_226F69390;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FAA404(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226FAA424, 0, 0);
}

uint64_t sub_226FAA424()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 96) = v4;
    *v4 = v0;
    v4[1] = sub_226FAA538;

    return sub_226F9D694();
  }

  else
  {
    **(v0 + 80) = 0;
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_226FAA538(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v7 = sub_226F618C8;
  }

  else
  {
    *(v4 + 112) = a1;
    v7 = sub_226F61B88;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226FAA660(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_226FAA688, 0, 0);
}

uint64_t sub_226FAA688()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_226FAA7F4;
    v5 = v0[12];
    v6 = v0[13];
    v7 = v0[10];

    return sub_226FA7964(v7, v5, v6);
  }

  else
  {
    v9 = v0[10];
    v10 = sub_227664E40();
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_226FAA7F4()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_226FAA9B0;
  }

  else
  {
    v3 = sub_226FAA908;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FAA908()
{
  v1 = v0[10];
  v2 = sub_227664E40();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_226FAA9B0()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[15];

  return v1();
}

uint64_t sub_226FAAA14(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_226FAAA3C, 0, 0);
}

uint64_t sub_226FAAA3C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FAAB58;
    v5 = *(v0 + 96);

    return sub_226F9F474(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_226FAAB58(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_226F60D40;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_226FAAC80;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226FAAC80()
{
  **(v0 + 80) = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FAACF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_226FAAD10, 0, 0);
}

uint64_t sub_226FAAD10()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *(*v3 + 40);
    v5 = *(*v3 + 48);
    __swift_project_boxed_opaque_existential_0((*v3 + 16), v4);
    v6 = *(v5 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *v8 = v0;
    v8[1] = sub_226FAAF04;

    return (v12)(v0 + 80, sub_226F9FEAC, 0, v9, v4, v5);
  }

  else
  {
    **(v0 + 88) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_226FAAF04()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F69340;
  }

  else
  {
    v3 = sub_226FAD63C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FAB018(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  v4 = *(sub_227667AA0() - 8);
  v3[14] = v4;
  v3[15] = *(v4 + 64);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FAB0E0, 0, 0);
}

uint64_t sub_226FAB0E0()
{
  v1 = v0[13];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[15];
    v3 = v0[16];
    v5 = v0[14];
    v6 = v0[12];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v7 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v8 = *v7;
    v9 = *(*v7 + 40);
    v10 = *(*v7 + 48);
    __swift_project_boxed_opaque_existential_0((*v7 + 16), v9);
    sub_226F9D558(v6, v3);
    v11 = (*(v5 + 80) + 24) & ~*(v5 + 80);
    v12 = swift_allocObject();
    v0[17] = v12;
    *(v12 + 16) = v8;
    sub_226F9D5BC(v3, v12 + v11);
    v13 = *(v10 + 24);

    v21 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    v0[18] = v15;
    *v15 = v0;
    v15[1] = sub_226FAB348;
    v16 = MEMORY[0x277D83B88];

    return (v21)(v0 + 10, sub_226FAD53C, v12, v16, v9, v10);
  }

  else
  {
    v18 = v0[11];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = v0[16];

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_226FAB348()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v7 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v4 = sub_226FAD62C;
  }

  else
  {
    v5 = *(v2 + 136);

    v4 = sub_226FAB464;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FAB464()
{
  v1 = v0[11];
  *v1 = v0[10];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[16];

  v3 = v0[1];

  return v3();
}

uint64_t sub_226FAB4DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_226FAB4FC, 0, 0);
}

uint64_t sub_226FAB4FC()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_226FA2680(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_226FAB610(uint64_t a1, void *a2, uint64_t a3)
{
  v3[11] = a1;
  v3[12] = a3;
  v4 = a2[1];
  v3[13] = *a2;
  v3[14] = v4;
  return MEMORY[0x2822009F8](sub_226FAB638, 0, 0);
}

uint64_t sub_226FAB638()
{
  v1 = v0[12];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = v0[13];
    v3 = v0[14];
    sub_226E91B50(Strong + 80, (v0 + 2));

    v5 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v6 = *(*v5 + 40);
    v7 = *(*v5 + 48);
    __swift_project_boxed_opaque_existential_0((*v5 + 16), v6);
    v8 = swift_allocObject();
    v0[15] = v8;
    *(v8 + 16) = v4;
    *(v8 + 24) = v3;
    v9 = *(v7 + 24);

    v16 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[16] = v11;
    *v11 = v0;
    v11[1] = sub_226FAB860;
    v12 = MEMORY[0x277D83B88];

    return (v16)(v0 + 10, sub_226FAD520, v8, v12, v6, v7);
  }

  else
  {
    v14 = v0[11];
    *v14 = 0;
    *(v14 + 8) = 1;
    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_226FAB860()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v7 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_226FAB9EC;
  }

  else
  {
    v5 = *(v2 + 120);

    v4 = sub_226FAB97C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_226FAB97C()
{
  v1 = v0[11];
  *v1 = v0[10];
  *(v1 + 8) = 0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_226FAB9EC()
{
  v1 = v0[15];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_226FABA58(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_226FABA78, 0, 0);
}

uint64_t sub_226FABA78()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = *(*v3 + 40);
    v5 = *(*v3 + 48);
    __swift_project_boxed_opaque_existential_0((*v3 + 16), v4);
    v6 = *(v5 + 24);
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 104) = v8;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B94F0, &unk_227670BA0);
    *v8 = v0;
    v8[1] = sub_226FABC6C;

    return (v12)(v0 + 80, sub_226FA32D8, 0, v9, v4, v5);
  }

  else
  {
    **(v0 + 88) = 0;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_226FABC6C()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_226F60D40;
  }

  else
  {
    v3 = sub_226FABD80;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226FABD80()
{
  **(v0 + 88) = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226FABDEC()
{
  v2 = v0[17];
  v1 = v0[18];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t sub_226FABE60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_226FABE84, 0, 0);
}

uint64_t sub_226FABE84()
{
  v1 = *(v0 + 96);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 88);

    return sub_226F9E180(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_226FABFA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v7 = sub_226F69340;
  }

  else
  {
    *(v4 + 120) = a1;
    v7 = sub_226FAD638;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226FAC0C8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_226FAC0F0, 0, 0);
}

uint64_t sub_226FAC0F0()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 80, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FABFA0;
    v5 = *(v0 + 96);

    return sub_226F9EE28(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_226FAC20C(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = sub_22766B390();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FAC2CC, 0, 0);
}

uint64_t sub_226FAC2CC()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 96);
    sub_226E91B50(Strong + 80, v0 + 16);

    v6 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    sub_22766A730();
    sub_22766B370();
    (*(v4 + 8))(v3, v5);
    v7 = swift_task_alloc();
    *(v0 + 120) = v7;
    *v7 = v0;
    v7[1] = sub_226FAC458;

    return sub_226F9CDBC();
  }

  else
  {
    **(v0 + 80) = 0;
    v9 = *(v0 + 112);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_226FAC458(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 120);
  v6 = *v2;
  *(*v2 + 128) = v1;

  if (v1)
  {
    v7 = sub_226FAC630;
  }

  else
  {
    *(v4 + 136) = a1;
    v7 = sub_226FAC580;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_226FAC580()
{
  v1 = v0[16];
  v2 = v0[10];
  v3 = sub_226FA7588(v0[17]);

  v4 = sub_226F43154(v3);

  *v2 = v4;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_226FAC630()
{
  v1 = v0[14];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[16];

  return v2();
}

uint64_t sub_226FAC6C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA92A8(a1, v1);
}

unint64_t sub_226FAC760()
{
  result = qword_281398E20;
  if (!qword_281398E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9168, &qword_227673160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E20);
  }

  return result;
}

unint64_t sub_226FAC7E4()
{
  result = qword_281398E18;
  if (!qword_281398E18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9168, &qword_227673160);
    sub_226FAD5E4(&qword_28139B980, MEMORY[0x277D50978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398E18);
  }

  return result;
}

uint64_t sub_226FAC898(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FA93DC(a1, a2, v2);
}

uint64_t sub_226FAC944(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FA9718(a1, a2, v2);
}

uint64_t sub_226FAC9F0()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226FA9C54(v0);
}

uint64_t sub_226FACA80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA9E40(a1, v1);
}

uint64_t sub_226FACB18()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_226FA9F74(v0);
}

uint64_t sub_226FACBA8(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAA1B4(a1, v1);
}

uint64_t sub_226FACC40(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAA404(a1, v1);
}

unint64_t sub_226FACCDC()
{
  result = qword_281398DC0;
  if (!qword_281398DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9198, &qword_227673450);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DC0);
  }

  return result;
}

unint64_t sub_226FACD60()
{
  result = qword_281398DB8;
  if (!qword_281398DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B9198, &qword_227673450);
    sub_226FAD5E4(&qword_28139B8C0, MEMORY[0x277D51098]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398DB8);
  }

  return result;
}

uint64_t sub_226FACE14(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_226FAA660(a1, a2, v2);
}

uint64_t sub_226FACEC0(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAAA14(a1, a2, v2);
}

uint64_t sub_226FACF6C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAACF0(a1, v1);
}

uint64_t sub_226FAD008(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAB018(a1, a2, v2);
}

uint64_t sub_226FAD0B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAB4DC(a1, v1);
}

uint64_t sub_226FAD14C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAB610(a1, a2, v2);
}

uint64_t sub_226FAD1F8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FABA58(a1, v1);
}

uint64_t sub_226FAD294(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FA9E40(a1, v1);
}

uint64_t sub_226FAD32C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FABE60(a1, a2, v2);
}

uint64_t sub_226FAD3D8(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_226FAC0C8(a1, a2, v2);
}

uint64_t sub_226FAD484(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_226FAC20C(a1, v1);
}

uint64_t sub_226FAD57C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91B8, &qword_227673528);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FAD5E4(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_226FAD640(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v36 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = v36 - v14;
  v16 = [a1 identifier];
  if (!v16)
  {
    goto LABEL_9;
  }

  v39 = a2;
  v17 = v16;
  v38 = sub_22766C000();
  v19 = v18;

  v20 = [a1 name];
  if (!v20)
  {
LABEL_8:

LABEL_9:
    v31 = sub_227664DD0();
    sub_226FAE288(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
    swift_willThrow();

    return;
  }

  v37 = v2;
  v21 = v20;
  v36[2] = sub_22766C000();
  v23 = v22;

  v24 = [a1 dateCreated];
  if (!v24)
  {

    goto LABEL_8;
  }

  v36[3] = v23;
  v25 = v24;
  sub_227662710();

  (*(v6 + 32))(v15, v13, v5);
  v26 = [a1 items];
  if (!v26)
  {
    v33 = sub_227664DD0();
    sub_226FAE288(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
    swift_willThrow();
    goto LABEL_11;
  }

  v27 = v26;
  v36[1] = v19;
  v28 = MEMORY[0x22AA99A00]();
  v29 = v37;
  v30 = sub_22715629C(v27);
  if (v29)
  {
    objc_autoreleasePoolPop(v28);

LABEL_11:
    (*(v6 + 8))(v15, v5);

    return;
  }

  v35 = v30;
  objc_autoreleasePoolPop(v28);
  sub_226F3F110(v35);

  (*(v6 + 16))(v10, v15, v5);
  sub_227669420();

  (*(v6 + 8))(v15, v5);
}

void sub_226FADA50(void *a1, uint64_t a2)
{
  v5 = sub_227662750();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227669430();
  v10 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227669450();
  v11 = sub_22766BFD0();

  [a1 setName_];

  v12 = sub_227669460();
  v13 = sub_22764A174(a2, v12);

  if (!v2)
  {
    [a1 setItems_];

    sub_227669440();
    v14 = sub_2276626A0();
    (*(v6 + 8))(v9, v5);
    [a1 setDateCreated_];
  }
}

size_t static Playlist.representativeSamples()()
{
  v38 = sub_227662750();
  v29 = *(v38 - 8);
  v0 = *(v29 + 64);
  MEMORY[0x28223BE20](v38);
  v37 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  v2 = *(v36 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = v28 - v4;
  v35 = sub_227669480();
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v35);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v11 = sub_22766C090();
  v12 = static PlaylistItem.representativeSamples()();
  v13 = sub_226F3F110(v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91D0, &qword_227673538);
  v14 = sub_22766C380();
  v14[2] = 3;
  v14[4] = v13;
  v14[5] = v13;
  v14[6] = v13;
  swift_bridgeObjectRetain_n();
  v15 = sub_227662630();
  v50 = v11;
  v51[0] = v10;
  v51[1] = v51;
  v51[2] = &v50;
  v48 = v15;
  v49 = v14;
  v51[3] = &v49;
  v51[4] = &v48;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91D8, &qword_227673540);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v40 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v41 = v40;
  v42 = sub_226F5BF60(&qword_27D7B91E0, &qword_27D7B91D8, &qword_227673540);
  v43 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v39 = MEMORY[0x277D84F90];
    result = sub_226F1FA88(0, v17, 0);
    v19 = 0;
    v20 = v39;
    v30 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v29 += 16;
    v28[1] = v6 + 32;
    v34 = v2;
    v33 = v6;
    v32 = v16;
    v31 = v17;
    while (v19 < *(v16 + 16))
    {
      sub_226FAE158(v30 + *(v2 + 72) * v19, v5);
      v22 = *v5;
      v21 = *(v5 + 1);
      v24 = *(v5 + 2);
      v23 = *(v5 + 3);
      v25 = *(v5 + 4);
      (*v29)(v37, &v5[*(v36 + 80)], v38);

      sub_227669420();
      sub_226FAE1C8(v5);
      v39 = v20;
      v27 = *(v20 + 16);
      v26 = *(v20 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_226F1FA88(v26 > 1, v27 + 1, 1);
        v20 = v39;
      }

      ++v19;
      *(v20 + 16) = v27 + 1;
      result = (*(v33 + 32))(v20 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v27, v9, v35);
      v2 = v34;
      v16 = v32;
      if (v31 == v19)
      {

        return v20;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_226FAE158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226FAE1C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B91C8, &qword_227673530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FAE230(uint64_t a1)
{
  result = sub_226FAE288(&qword_2813A54D8, MEMORY[0x277D53C88]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FAE288(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_226FAE2D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 48);
  v7 = v0[7];
  v10 = v0[10];
  v11 = v0[9];
  v12 = v0[11];
  v8 = v0[13] & 1;
  if (*(v0 + 105) < 0)
  {
    MEMORY[0x22AA996B0](1);
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v5);
    sub_22766D3A0();
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v12);
    sub_22766D3A0();
  }

  else
  {
    MEMORY[0x22AA996B0](0);
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v5);
    sub_22766D3A0();
    sub_22766C100();
    sub_22766C100();
    MEMORY[0x22AA996B0](v12);
  }

  return sub_22766D3A0();
}

uint64_t sub_226FAE420()
{
  sub_22766D370();
  sub_226FAE2D0();
  return sub_22766D3F0();
}

uint64_t sub_226FAE464()
{
  sub_22766D370();
  sub_226FAE2D0();
  return sub_22766D3F0();
}

uint64_t sub_226FAE4A0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[5];
  v10[4] = a1[4];
  v11[0] = v2;
  *(v11 + 10) = *(a1 + 90);
  v3 = a1[1];
  v10[0] = *a1;
  v10[1] = v3;
  v4 = a1[3];
  v10[2] = a1[2];
  v10[3] = v4;
  v5 = a2[1];
  v12[0] = *a2;
  v12[1] = v5;
  v6 = a2[2];
  v7 = a2[3];
  *&v13[10] = *(a2 + 90);
  v8 = a2[5];
  v12[4] = a2[4];
  *v13 = v8;
  v12[2] = v6;
  v12[3] = v7;
  return sub_226FAE8A4(v10, v12) & 1;
}

uint64_t sub_226FAE50C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 48);
  sub_22766D370();
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v5);
  sub_22766D3A0();
  return sub_22766D3F0();
}

uint64_t sub_226FAE5A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 48);
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v5);
  return sub_22766D3A0();
}

uint64_t sub_226FAE60C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 48);
  sub_22766D370();
  sub_22766C100();
  sub_22766C100();
  MEMORY[0x22AA996B0](v5);
  sub_22766D3A0();
  return sub_22766D3F0();
}

BOOL sub_226FAE6A0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 2);
  v15[0] = *(a1 + 1);
  v15[1] = v6;
  v16 = *(a1 + 48);
  v7 = *a2;
  v8 = a2[1];
  v9 = *(a2 + 2);
  v13[0] = *(a2 + 1);
  v13[1] = v9;
  v14 = *(a2 + 48);
  if (v4 == v7 && v5 == v8)
  {
    return sub_226FAE7D4(v13, v15);
  }

  v10 = sub_22766D190();
  v11 = 0;
  if (v10)
  {
    return sub_226FAE7D4(v13, v15);
  }

  return v11;
}

unint64_t sub_226FAE728()
{
  result = qword_27D7B91E8;
  if (!qword_27D7B91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91E8);
  }

  return result;
}

unint64_t sub_226FAE780()
{
  result = qword_27D7B91F0;
  if (!qword_27D7B91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91F0);
  }

  return result;
}

BOOL sub_226FAE7D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 32);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *(a2 + 32);
  sub_22766D400();
  sub_22766C100();
  MEMORY[0x22AA996B0](v8);
  sub_22766D3A0();
  sub_22766D400();
  sub_22766C100();
  MEMORY[0x22AA996B0](v4);
  sub_22766D3A0();
  v10 = sub_22766D3E0();
  return v10 == sub_22766D3E0();
}

uint64_t sub_226FAE8A4(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = a1[5];
  v10 = *(a1 + 48);
  v11 = a1[7];
  v12 = a1[8];
  v14 = a1[9];
  v13 = a1[10];
  v16 = a1[11];
  v15 = a1[12];
  v17 = *(a1 + 104);
  v18 = *(a1 + 105);
  v19 = *a2;
  v20 = a2[1];
  v21 = a2[2];
  v22 = *(a2 + 48);
  v24 = a2[7];
  v23 = a2[8];
  v25 = a2[9];
  v26 = *(a2 + 105);
  if (v18 < 0)
  {
    if (v26 < 0)
    {
      v59 = a2[8];
      v61 = v12;
      v45 = v11;
      v47 = a2[9];
      v49 = v14;
      v51 = v13;
      v53 = v16;
      v55 = v15;
      v57 = v17;
      v43 = *(a2 + 104);
      v41 = a2[12];
      v39 = *(a2 + 5);
      v33 = a2[5];
      v34 = *(a2 + 3);
      if (v4 == v19 && v5 == v20)
      {
        goto LABEL_18;
      }

      v37 = a2[5];
      v36 = *(a2 + 3);
      v35 = sub_22766D190();
      v34 = v36;
      v33 = v37;
      if (v35)
      {
LABEL_18:
        v75 = v6;
        v76 = v8;
        v77 = v7;
        v78 = v9;
        v79 = v10 & 1;
        v71 = v21;
        v72 = v34;
        v73 = v33;
        v74 = v22 & 1;
        if (sub_226FAE7D4(&v71, &v75) && (v45 == v24 && v61 == v59 || (sub_22766D190() & 1) != 0))
        {
          v66 = v49;
          v67 = v51;
          v68 = v53;
          v69 = v55;
          v70 = v57 & 1;
          v62 = v47;
          v63 = v39;
          v64 = v41;
          v65 = v43 & 1;
          if (sub_226FAE7D4(&v62, &v66))
          {
            v31 = v18 ^ v26 ^ 1;
            return v31 & 1;
          }
        }
      }
    }

    goto LABEL_13;
  }

  if (v26 < 0)
  {
    goto LABEL_13;
  }

  v58 = a2[8];
  v60 = v12;
  v27 = v11;
  v46 = a2[9];
  v48 = v14;
  v50 = v13;
  v52 = v16;
  v54 = v15;
  v56 = v17;
  v44 = *(a2 + 104);
  v42 = a2[12];
  v40 = *(a2 + 5);
  v28 = a2[5];
  v29 = *(a2 + 3);
  if (v4 != v19 || v5 != v20)
  {
    v38 = *(a2 + 3);
    v30 = sub_22766D190();
    v29 = v38;
    if ((v30 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v75 = v6;
  v76 = v8;
  v77 = v7;
  v78 = v9;
  v79 = v10 & 1;
  v71 = v21;
  v72 = v29;
  v73 = v28;
  v74 = v22 & 1;
  if (!sub_226FAE7D4(&v71, &v75) || (v27 != v24 || v60 != v58) && (sub_22766D190() & 1) == 0)
  {
    goto LABEL_13;
  }

  v66 = v48;
  v67 = v50;
  v68 = v52;
  v69 = v54;
  v70 = v56 & 1;
  v62 = v46;
  v63 = v40;
  v64 = v42;
  v65 = v44 & 1;
  if (!sub_226FAE7D4(&v62, &v66))
  {
LABEL_13:
    v31 = 0;
    return v31 & 1;
  }

  v31 = 1;
  return v31 & 1;
}

__n128 __swift_memcpy106_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 90) = *(a2 + 90);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_226FAEBA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 106))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 57) & 0x78 | *(a1 + 32) & 7 | (*(a1 + 40) >> 50) & 0x3C00 | ((*(a1 + 40) & 7) << 7) & 0x3FFF | (*(a1 + 48) >> 1 << 14);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_226FAEC18(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      v4 = -a2;
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (v4 | (v4 << 57)) & 0xF000000000000007;
      *(a1 + 40) = ((v4 >> 7) | (v4 << 50)) & 0xF000000000000007;
      *(a1 + 48) = (v4 >> 13) & 0x7FFFE;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

int8x16_t sub_226FAECBC(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 48) & 1;
  v3 = *(a1 + 104) & 0x101 | (a2 << 15);
  v4 = vdupq_n_s64(0xFFFFFFFFFFFFFF8uLL);
  *(a1 + 32) = vandq_s8(*(a1 + 32), v4);
  *(a1 + 48) = v2;
  result = vandq_s8(*(a1 + 88), v4);
  *(a1 + 88) = result;
  *(a1 + 104) = v3;
  return result;
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

uint64_t sub_226FAED28(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_226FAED70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226FAEDD0(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22766D190() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = a2[2];
  sub_22766CEE0();
  sub_226FAF14C();
  if ((sub_22766BF20() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if ((sub_22766C680() & 1) == 0)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  sub_22766C730();
  swift_getWitnessTable();

  return sub_22766BF20();
}

uint64_t sub_226FAEF10(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  sub_22766C100();
  v6 = v2[2];
  v7 = *(a2 + 16);
  sub_22766CEE0();
  sub_226FAF0F8();
  sub_22766BF10();
  v8 = v2[3];
  sub_22766C690();
  v9 = v2[4];
  sub_22766C730();
  swift_getWitnessTable();

  return sub_22766BF10();
}

uint64_t sub_226FAF004(uint64_t a1)
{
  sub_22766D370();
  sub_226FAEF10(v3, a1);
  return sub_22766D3F0();
}

uint64_t sub_226FAF054(uint64_t a1, uint64_t a2)
{
  sub_22766D370();
  sub_226FAEF10(v4, a2);
  return sub_22766D3F0();
}

uint64_t sub_226FAF0BC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_226FAF0F8()
{
  result = qword_27D7B91F8;
  if (!qword_27D7B91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B91F8);
  }

  return result;
}

unint64_t sub_226FAF14C()
{
  result = qword_27D7B9200[0];
  if (!qword_27D7B9200[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B9200);
  }

  return result;
}

uint64_t sub_226FAF1A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_226FAF1E8(uint64_t a1, int a2)
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

uint64_t sub_226FAF230(uint64_t result, int a2, int a3)
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

uint64_t sub_226FAF290@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_227662CA0();
  v39 = *(v2 - 8);
  v3 = *(v39 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v36 = &v33 - v7;
  MEMORY[0x28223BE20](v6);
  v38 = &v33 - v8;
  v9 = sub_227663540();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_227662CE0();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_2276627D0();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = sub_227662750();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v41 = sub_227663850();
  v42 = v20 & 1;
  v40 = 0;
  sub_226FAF720();
  sub_226FAF774();
  if (sub_227663B30())
  {
    v34 = v2;
    v35 = a1;
    sub_2276637E0();
    sub_2276637C0();
    v21 = sub_227663840();
    v33 = sub_2274EDB84(v21);

    sub_2276638B0();
    sub_227663510();
    sub_227663520();
    sub_2276634D0();
    sub_227662CD0();
    (*(v10 + 8))(v13, v9);
    v41 = sub_2276638C0();
    v42 = v22 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9298, &unk_227676680);
    sub_227663B00();
    if (v40 > 1u)
    {
      v24 = v34;
      v25 = v38;
      if (v40 != 2)
      {
        (*(v39 + 104))(v38, *MEMORY[0x277D494E0], v34);
        a1 = v35;
        goto LABEL_12;
      }

      v23 = MEMORY[0x277D494E8];
      a1 = v35;
    }

    else
    {
      if (v40)
      {
        v23 = MEMORY[0x277D494D8];
      }

      else
      {
        v23 = MEMORY[0x277D494E0];
      }

      v24 = v34;
      a1 = v35;
      v25 = v38;
    }

    v27 = v39;
    v28 = v37;
    (*(v39 + 104))(v37, *v23, v24);
    v29 = *(v27 + 32);
    v30 = v36;
    v29(v36, v28, v24);
    v29(v25, v30, v24);
LABEL_12:
    sub_227662B20();
    v26 = 0;
    goto LABEL_13;
  }

  v26 = 1;
LABEL_13:
  v31 = sub_227662B30();
  return (*(*(v31 - 8) + 56))(a1, v26, 1, v31);
}

unint64_t sub_226FAF720()
{
  result = qword_27D7B9288;
  if (!qword_27D7B9288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9288);
  }

  return result;
}

unint64_t sub_226FAF774()
{
  result = qword_27D7B9290;
  if (!qword_27D7B9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9290);
  }

  return result;
}

size_t static AudioLanguagePreference.representativeSamples()()
{
  v20 = sub_2276668F0();
  v0 = *(v20 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v20);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v4 = swift_allocObject();
  v19 = xmmword_227670CD0;
  *(v4 + 16) = xmmword_227670CD0;
  *(v4 + 32) = sub_22766C0A0();
  *(v4 + 40) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
  v6 = swift_allocObject();
  *(v6 + 16) = v19;
  sub_22766C530();
  *(v6 + 32) = v7;
  v26 = v6;
  v27[0] = v4;
  v27[1] = v27;
  v27[2] = &v26;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v22 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v23 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v8 = sub_2276638E0();

  v9 = *(v8 + 16);
  if (v9)
  {
    v21 = MEMORY[0x277D84F90];
    result = sub_226F1FAA8(0, v9, 0);
    v11 = 0;
    v12 = v21;
    v13 = (v8 + 48);
    while (v11 < *(v8 + 16))
    {
      v14 = *(v13 - 2);
      v15 = *(v13 - 1);
      v16 = *v13;

      sub_2276668D0();
      v21 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1FAA8(v17 > 1, v18 + 1, 1);
        v12 = v21;
      }

      ++v11;
      *(v12 + 16) = v18 + 1;
      result = (*(v0 + 32))(v12 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + *(v0 + 72) * v18, v3, v20);
      v13 += 3;
      if (v9 == v11)
      {

        return v12;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_226FAFAB8(void *a1)
{
  v2 = [a1 languageIdentifier];
  if (v2)
  {
    v3 = v2;
    sub_22766C000();

    [a1 machTimestamp];
    sub_2276668D0();
  }

  else
  {
    v4 = sub_227664DD0();
    sub_226FAFCB8(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277D51028], v4);
    swift_willThrow();
  }
}

id sub_226FAFBE8(void *a1)
{
  sub_2276668E0();
  v2 = sub_22766BFD0();

  [a1 setLanguageIdentifier_];

  sub_2276668C0();
  return [a1 setMachTimestamp_];
}

uint64_t sub_226FAFC60(uint64_t a1)
{
  result = sub_226FAFCB8(&qword_2813A5670, MEMORY[0x277D52700]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226FAFCB8(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_226FAFD00(void *a1)
{
  v57 = a1;
  v1 = sub_22766BE10();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  MEMORY[0x28223BE20](v1);
  v58 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22766B390();
  v60 = *(v4 - 8);
  v61 = v4;
  v5 = *(v60 + 64);
  MEMORY[0x28223BE20](v4);
  v62 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v47 - v9;
  v11 = sub_2276624A0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v47 - v17;
  v55 = v19;
  MEMORY[0x28223BE20](v16);
  v21 = &v47 - v20;
  v22 = sub_22766CAB0();
  sub_22766CAA0();

  v23 = v12;
  sub_227662310();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226FB1188(v10);
    v24 = sub_22766CAB0();
    sub_22766BD00();
    sub_226FB11F0();
    swift_allocError();
    sub_22766BCF0();
    swift_willThrow();
  }

  else
  {
    v49 = *(v12 + 32);
    v50 = v12 + 32;
    v49(v21, v10, v11);
    sub_22766A730();
    v26 = v12 + 16;
    v25 = *(v23 + 16);
    v52 = v21;
    v48 = v25;
    v25(v18, v21, v11);
    v27 = sub_22766B380();
    v28 = sub_22766C8B0();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v63 = v30;
      *v29 = 141558274;
      *(v29 + 4) = 1752392040;
      *(v29 + 12) = 2080;
      v31 = sub_227662390();
      v47 = v26;
      v32 = v23;
      v34 = v33;
      v51 = *(v32 + 8);
      v51(v18, v11);
      v35 = sub_226E97AE8(v31, v34, &v63);
      v23 = v32;

      *(v29 + 14) = v35;
      _os_log_impl(&dword_226E8E000, v27, v28, "Simulator network request: %{mask.hash}s", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x22AA9A450](v30, -1, -1);
      MEMORY[0x22AA9A450](v29, -1, -1);
    }

    else
    {

      v51 = *(v23 + 8);
      v51(v18, v11);
    }

    (*(v60 + 8))(v62, v61);
    v24 = sub_22766B9F0();
    v36 = MEMORY[0x22AA97CF0]();
    v37 = v52;
    if (v36)
    {
      v38 = v36;
      v39 = v56;
      v48(v56, v52, v11);
      v24 = (*(v23 + 80) + 16) & ~*(v23 + 80);
      v40 = (v55 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      v49((v41 + v24), v39, v11);
      *(v41 + v40) = v38;
      v42 = v57;

      v43 = v58;
      v44 = v59;
      sub_22766BDF0();
      if (v44)
      {
        v51(v37, v11);
      }

      else
      {
        v24 = sub_22766BE00();

        (*(v53 + 8))(v43, v54);
        v51(v37, v11);
      }
    }

    else
    {
      sub_226F6649C();
      swift_allocError();
      *v45 = 8;
      swift_willThrow();
      v51(v37, v11);
    }
  }

  return v24;
}

void sub_226FB0368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v28 = a3;
  v30 = a2;
  v37 = a1;
  v34 = sub_2276624A0();
  v6 = *(v34 - 8);
  v29 = *(v6 + 64);
  MEMORY[0x28223BE20](v34);
  v33 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B780();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v32 = [objc_opt_self() sharedSession];
  v31 = sub_2276623E0();
  v14 = *(v9 + 16);
  v14(v13, v28, v8);
  (*(v6 + 16))(v33, a4, v34);
  v14(&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v8);
  v15 = *(v9 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = (v10 + *(v6 + 80) + v16) & ~*(v6 + 80);
  v18 = (v29 + v15 + v17) & ~v15;
  v19 = swift_allocObject();
  v20 = v37;
  *(v19 + 16) = v35;
  *(v19 + 24) = v20;
  v21 = *(v9 + 32);
  v21(v19 + v16, v13, v8);
  (*(v6 + 32))(v19 + v17, v33, v34);
  v21(v19 + v18, v27, v8);
  aBlock[4] = sub_226FB12F8;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226FB0F70;
  aBlock[3] = &block_descriptor_0;
  v22 = _Block_copy(aBlock);

  v23 = v37;

  v25 = v31;
  v24 = v32;
  v26 = [v32 dataTaskWithURL:v31 completionHandler:v22];
  _Block_release(v22);

  [v26 resume];
}

uint64_t sub_226FB06D0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v39 = a8;
  v40 = a3;
  v45 = a6;
  v42 = a2;
  v43 = a5;
  v41 = a1;
  v37 = a7;
  v38 = a9;
  v44 = sub_2276624A0();
  v9 = *(v44 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v44);
  v35 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B780();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v36 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = *(v12 + 16);
  v17(&v34 - v15, v37, v11);
  v34 = v9;
  (*(v9 + 16))(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v44);
  v18 = v11;
  v17(&v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v11);
  v19 = *(v12 + 80);
  v20 = (v19 + 24) & ~v19;
  v21 = (v13 + *(v9 + 80) + v20) & ~*(v9 + 80);
  v22 = (v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v19 + v23 + 16) & ~v19;
  v25 = swift_allocObject();
  *(v25 + 16) = v45;
  v26 = *(v12 + 32);
  v26(v25 + v20, v16, v18);
  (*(v34 + 32))(v25 + v21, v35, v44);
  v28 = v40;
  v27 = v41;
  *(v25 + v22) = v40;
  v29 = (v25 + v23);
  v30 = v42;
  *v29 = v27;
  v29[1] = v30;
  v26(v25 + v24, v36, v18);
  v31 = v28;
  v32 = v45;
  sub_226FB1554(v27, v30);
  sub_22766B9E0();
}

void sub_226FB09A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v34 = a5;
  v35 = a7;
  v10 = sub_22766C050();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_22766B390();
  v36 = *(v12 - 8);
  v37 = v12;
  v13 = *(v36 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - v15;
  v17 = objc_opt_self();
  v18 = [v17 valueWithNewObjectInContext_];
  if (v18)
  {
    v19 = v18;
    v38 = sub_227662390();
    v39 = v20;
    v21 = [v17 valueWithObject:sub_22766D200() inContext:a1];
    swift_unknownObjectRelease();
    if (v21)
    {
      sub_22766CAC0();
      if (!a4)
      {
        goto LABEL_10;
      }

      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (!v22)
      {
        goto LABEL_10;
      }

      v23 = [v22 statusCode];
      if (![v17 valueWithBool:(v23 - 200) < 0x64 inContext:a1])
      {
        goto LABEL_23;
      }

      sub_22766CAC0();
      if (v23 < 0xFFFFFFFF80000000)
      {
        __break(1u);
      }

      else if (v23 <= 0x7FFFFFFF)
      {
        if ([v17 valueWithInt32:v23 inContext:a1])
        {
          sub_22766CAC0();
LABEL_10:
          if (a6 >> 60 == 15)
          {
LABEL_15:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_227670CD0;
            *(v27 + 56) = sub_226E99364(0, &qword_27D7B92B0, 0x277CD4658);
            *(v27 + 32) = v19;
            v28 = v19;
            v32 = sub_22766B770();

            return;
          }

          sub_226F5E0B4(v34, a6);
          sub_22766C040();
          v24 = sub_22766C020();
          if (!v25)
          {
LABEL_14:
            sub_226FB1424(v34, a6);
            goto LABEL_15;
          }

          v38 = v24;
          v39 = v25;

          v26 = [v17 valueWithObject:sub_22766D200() inContext:a1];
          swift_unknownObjectRelease();
          if (v26)
          {

            sub_22766CAC0();
            goto LABEL_14;
          }

          goto LABEL_25;
        }

LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_22766A730();
  v29 = sub_22766B380();
  v30 = sub_22766C890();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_226E8E000, v29, v30, "Unable to create JS response", v31, 2u);
    MEMORY[0x22AA9A450](v31, -1, -1);
  }

  (*(v36 + 8))(v16, v37);
}

uint64_t sub_226FB0F70(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a2)
  {

    v9 = v6;
    v6 = sub_227662590();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v12 = a3;
  v13 = a4;
  v8(v6, v11, a3, a4);

  sub_226FB1424(v6, v11);
}

id sub_226FB1114()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SimulatorNetwork();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226FB1188(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_226FB11F0()
{
  result = qword_2813991B0;
  if (!qword_2813991B0)
  {
    sub_22766BD00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813991B0);
  }

  return result;
}

void sub_226FB1248(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_2276624A0() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  sub_226FB0368(a1, a2, a3, v3 + v8, *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_226FB12F8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(sub_22766B780() - 8);
  v10 = *(v9 + 80);
  v11 = (v10 + 32) & ~v10;
  v12 = *(v9 + 64);
  v13 = *(sub_2276624A0() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  return sub_226FB06D0(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v11, v4 + v14, v4 + ((*(v13 + 64) + v10 + v14) & ~v10));
}

uint64_t sub_226FB1424(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226EDC420(a1, a2);
  }

  return a1;
}

void sub_226FB1438()
{
  v1 = *(sub_22766B780() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(sub_2276624A0() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + 16);
  v10 = *(v0 + v7);
  v11 = *(v0 + v8);
  v12 = *(v0 + v8 + 8);

  sub_226FB09A8(v9, v0 + v3, v0 + v6, v10, v11, v12, v0 + ((v2 + v8 + 16) & ~v2));
}

uint64_t sub_226FB1554(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_226F5E0B4(a1, a2);
  }

  return a1;
}

uint64_t sub_226FB1580()
{
  sub_22766D370();
  MEMORY[0x22AA996B0](0);
  return sub_22766D3F0();
}

uint64_t sub_226FB15C4()
{
  sub_22766D370();
  MEMORY[0x22AA996B0](0);
  return sub_22766D3F0();
}

unint64_t sub_226FB1608()
{
  result = qword_27D7B9318;
  if (!qword_27D7B9318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9318);
  }

  return result;
}

id sub_226FB165C()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_2276623E0();
  v6[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2276622C0();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_226FB1748()
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2276624A0();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_2276623E0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_227670CD0;
  v9 = *MEMORY[0x277CBE7C0];
  *(v8 + 32) = *MEMORY[0x277CBE7C0];
  type metadata accessor for URLResourceKey(0);
  v10 = v9;
  v11 = sub_22766C2B0();

  v33[0] = 0;
  v12 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v11 options:0 error:v33];

  v13 = v33[0];
  if (!v12)
  {
    v29 = v33[0];
    sub_2276622C0();

    result = swift_willThrow();
LABEL_14:
    v30 = *MEMORY[0x277D85DE8];
    return result;
  }

  v14 = sub_22766C2C0();
  v15 = v13;

  v33[0] = v14;

  sub_226FB259C(v33);
  if (!v1)
  {

    v16 = v33[0];
    v17 = v33[0][2] + 1;
    v18 = *(v0 + *(type metadata accessor for TransportSerializableJournalRecorder() + 32));
    v19 = v17 - v18;
    if (__OFSUB__(v17, v18))
    {
      goto LABEL_16;
    }

    if (v19 <= 0)
    {
    }

    else
    {
      v31 = sub_2273FC3FC(v19, v16);
      v23 = v22 >> 1;
      if (v21 != v22 >> 1)
      {
        v24 = v20;
        v25 = v21;
        v26 = (v32 + 8);
        if (v21 <= v23)
        {
          v27 = v22 >> 1;
        }

        else
        {
          v27 = v21;
        }

        while (v27 != v25)
        {
          (*(v32 + 16))(v5, v24 + *(v32 + 72) * v25, v2);
          sub_226FB2114(v5);
          ++v25;
          (*v26)(v5, v2);
          if (v23 == v25)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_16:
        __break(1u);
      }

LABEL_11:
      result = swift_unknownObjectRelease();
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_226FB1A8C(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v44 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v38 - v13;
  v15 = sub_227662750();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v43 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v45 = &v38 - v20;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  inited = swift_initStackObject();
  v40 = xmmword_227670CD0;
  *(inited + 16) = xmmword_227670CD0;
  v22 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v39 = v22;
  sub_226F4C634(inited);
  swift_setDeallocating();
  sub_226FB46B8(inited + 32);
  v23 = v38;
  sub_2276623A0();
  if (v23)
  {

    v24 = sub_2276621F0();
    (*(*(v24 - 8) + 56))(v8, 1, 1, v24);
    sub_226E97D1C(v8, &qword_27D7B9328, &qword_227673988);
    (*(v16 + 56))(v14, 1, 1, v15);
  }

  else
  {

    v25 = sub_2276621F0();
    v26 = *(v25 - 8);
    (*(v26 + 56))(v8, 0, 1, v25);
    sub_2276621C0();
    (*(v26 + 8))(v8, v25);
    v27 = *(v16 + 48);
    if (v27(v14, 1, v15) != 1)
    {
      (*(v16 + 32))(v45, v14, v15);
      goto LABEL_7;
    }
  }

  sub_227662660();
  v27 = *(v16 + 48);
  if (v27(v14, 1, v15) != 1)
  {
    sub_226E97D1C(v14, &qword_27D7B9690, qword_227670B50);
  }

LABEL_7:
  v28 = swift_initStackObject();
  *(v28 + 16) = v40;
  *(v28 + 32) = v39;
  v29 = v28 + 32;
  sub_226F4C634(v28);
  swift_setDeallocating();
  sub_226FB46B8(v29);
  sub_2276623A0();
  v30 = v44;

  v31 = sub_2276621F0();
  v32 = *(v31 - 8);
  (*(v32 + 56))(v5, 0, 1, v31);
  sub_2276621C0();
  (*(v32 + 8))(v5, v31);
  if (v27(v30, 1, v15) == 1)
  {
    v33 = v43;
    sub_227662660();
    if (v27(v30, 1, v15) != 1)
    {
      sub_226E97D1C(v30, &qword_27D7B9690, qword_227670B50);
    }
  }

  else
  {
    v33 = v43;
    (*(v16 + 32))(v43, v30, v15);
  }

  v34 = v45;
  v35 = sub_2276626C0();
  v36 = *(v16 + 8);
  v36(v33, v15);
  v36(v34, v15);
  return v35 & 1;
}

id sub_226FB2114(uint64_t a1)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v2 = sub_2276624A0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v31[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22766B390();
  v34 = *(v7 - 8);
  v35 = v7;
  v8 = *(v34 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v31[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_2276623E0();
  v36[0] = 0;
  v13 = [v11 removeItemAtURL:v12 error:v36];

  if (v13)
  {
    result = v36[0];
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v16 = v36[0];
    v17 = sub_2276622C0();

    swift_willThrow();
    sub_22766A730();
    (*(v3 + 16))(v6, a1, v2);
    v18 = v17;
    v19 = sub_22766B380();
    v20 = sub_22766C8B0();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v36[0] = v33;
      *v21 = 136315394;
      sub_226FB24F0();
      v22 = sub_22766D140();
      v32 = v20;
      v24 = v23;
      (*(v3 + 8))(v6, v2);
      v25 = sub_226E97AE8(v22, v24, v36);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2080;
      swift_getErrorValue();
      v26 = sub_22766D250();
      v28 = sub_226E97AE8(v26, v27, v36);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_226E8E000, v19, v32, "[TransportSerializableJournalWriter] failed to delete journal at %s with error: %s", v21, 0x16u);
      v29 = v33;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v29, -1, -1);
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    result = (*(v34 + 8))(v10, v35);
    v30 = *MEMORY[0x277D85DE8];
  }

  return result;
}

unint64_t sub_226FB24F0()
{
  result = qword_28139BDD0;
  if (!qword_28139BDD0)
  {
    sub_2276624A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BDD0);
  }

  return result;
}

unint64_t sub_226FB2548()
{
  result = qword_28139D310;
  if (!qword_28139D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D310);
  }

  return result;
}

void sub_226FB259C(void **a1)
{
  v2 = *(sub_2276624A0() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_2271176E0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_226FB2644(v5);
  *a1 = v3;
}

void sub_226FB2644(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2276624A0();
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_2276624A0() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_226FB2A50(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_226FB2770(0, v2, 1, a1);
  }
}

void sub_226FB2770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = sub_2276624A0();
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v43);
  v48 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v17.n128_f64[0] = MEMORY[0x28223BE20](v15);
  v38 = a2;
  if (a3 != a2)
  {
    v51 = &v36 - v16;
    v18 = *a4;
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v21 = *(v19 + 56);
    v49 = v20;
    v50 = (v19 - 8);
    v22 = (v18 + v21 * (a3 - 1));
    v44 = -v21;
    v45 = (v19 + 16);
    v23 = a1 - a3;
    v46 = v18;
    v47 = v19;
    v37 = v21;
    v24 = v18 + v21 * a3;
    v25 = v4;
    while (2)
    {
      v41 = v22;
      v42 = a3;
      v39 = v24;
      v40 = v23;
      v26 = v43;
      while (1)
      {
        v27 = v51;
        v28 = v49;
        (v49)(v51, v24, v26, v17);
        v28(v14, v22, v26);
        v29 = sub_226FB1A8C(v27, v14);
        v52 = v25;
        if (v25)
        {
          v35 = *v50;
          (*v50)(v14, v26);
          v35(v27, v26);
          return;
        }

        v30 = v29;
        v31 = *v50;
        (*v50)(v14, v26);
        v31(v27, v26);
        if ((v30 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return;
        }

        v32 = *v45;
        v33 = v48;
        (*v45)(v48, v24, v26);
        swift_arrayInitWithTakeFrontToBack();
        v32(v22, v33, v26);
        v22 += v44;
        v24 += v44;
        v34 = __CFADD__(v23++, 1);
        v25 = v52;
        if (v34)
        {
          goto LABEL_11;
        }
      }

      v25 = v52;
LABEL_11:
      a3 = v42 + 1;
      v22 = &v41[v37];
      v23 = v40 - 1;
      v24 = v39 + v37;
      if (v42 + 1 != v38)
      {
        continue;
      }

      break;
    }
  }
}

void sub_226FB2A50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v206 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v224 = &v202 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v225 = &v202 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v223 = &v202 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v222 = &v202 - v15;
  v16 = sub_227662750();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v202 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v240 = &v202 - v22;
  v23 = sub_2276624A0();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v23);
  v209 = &v202 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v215 = &v202 - v28;
  MEMORY[0x28223BE20](v29);
  MEMORY[0x28223BE20](v30);
  v243 = &v202 - v31;
  MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v34);
  v36 = &v202 - v35;
  v42.n128_f64[0] = MEMORY[0x28223BE20](v37);
  v213 = a3;
  if (*(a3 + 8) < 1)
  {
    v45 = MEMORY[0x277D84F90];
LABEL_137:
    a3 = *v206;
    if (*v206)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_139;
    }

    goto LABEL_180;
  }

  v43 = *(a3 + 8);
  v205 = a4;
  v203 = &v202 - v38;
  v204 = v36;
  v210 = v41;
  v211 = v40;
  v221 = v39;
  v219 = v20;
  v44 = 0;
  v229 = v24 + 16;
  v228 = (v24 + 8);
  v226 = (v24 + 32);
  v220 = *MEMORY[0x277CBE7C0];
  v231 = (v17 + 56);
  v241 = (v17 + 48);
  v214 = (v17 + 32);
  v218 = (v17 + 8);
  v45 = MEMORY[0x277D84F90];
  v202 = v24;
  v232 = v16;
  v230 = v23;
LABEL_4:
  v46 = v44;
  v207 = v45;
  v227 = v44;
  if (v44 + 1 >= v43)
  {
    v68 = v44 + 1;
LABEL_17:
    v73 = v205;
    goto LABEL_18;
  }

  v212 = v43;
  v47 = *v213;
  v48 = *(v24 + 72);
  v49 = v44;
  v50 = &(*v213)[v48 * (v44 + 1)];
  v51 = *(v24 + 16);
  v52 = v203;
  (v51)(v203, v50, v23, v42);
  v53 = &v47[v48 * v49];
  a3 = v204;
  v237 = v51;
  v51(v204, v53, v23);
  v54 = v242;
  LODWORD(v238) = sub_226FB1A8C(v52, a3);
  v242 = v54;
  if (v54)
  {
    v201 = *v228;
    (*v228)(a3, v23);
    v201(v52, v23);
    goto LABEL_149;
  }

  v55 = *v228;
  (*v228)(a3, v23);
  v236 = v55;
  v55(v52, v23);
  v56 = (v227 + 2);
  v57 = &v47[v48 * (v227 + 2)];
  v58 = v48;
  v239 = v48;
  while (v212 != v56)
  {
    v59 = v210;
    v60 = v230;
    v61 = v237;
    v237(v210, v57, v230);
    v62 = v211;
    v61(v211, v50, v60);
    v63 = v242;
    v64 = sub_226FB1A8C(v59, v62);
    v242 = v63;
    if (v63)
    {
      v200 = v236;
      (v236)(v62, v60);
      v200(v59, v60);
      goto LABEL_149;
    }

    v65 = v64;
    v66 = v62;
    a3 = v228;
    v67 = v236;
    (v236)(v66, v60);
    v67(v59, v60);
    ++v56;
    v58 = v239;
    v57 += v239;
    v50 += v239;
    if ((v238 ^ v65))
    {
      v68 = (v56 - 1);
      goto LABEL_13;
    }
  }

  v68 = v212;
LABEL_13:
  v24 = v202;
  v16 = v232;
  v23 = v230;
  v46 = v227;
  if ((v238 & 1) == 0)
  {
    goto LABEL_17;
  }

  if (v68 < v227)
  {
    goto LABEL_174;
  }

  if (v227 >= v68)
  {
    goto LABEL_17;
  }

  v69 = v58 * (v68 - 1);
  v70 = v68 * v58;
  v212 = v68;
  v71 = v227;
  v72 = v227 * v58;
  do
  {
    if (v71 != --v68)
    {
      v123 = *v213;
      if (!*v213)
      {
        goto LABEL_178;
      }

      v124 = *v226;
      (*v226)(v209, &v123[v72], v230);
      if (v72 < v69 || &v123[v72] >= &v123[v70])
      {
        a3 = v230;
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a3 = v230;
        if (v72 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v124(&v123[v69], v209, a3);
      v45 = v207;
      v23 = a3;
      v58 = v239;
    }

    ++v71;
    v69 -= v58;
    v70 -= v58;
    v72 += v58;
  }

  while (v71 < v68);
  v24 = v202;
  v73 = v205;
  v16 = v232;
  v68 = v212;
  v46 = v227;
LABEL_18:
  v74 = v213[1];
  if (v68 >= v74)
  {
    goto LABEL_27;
  }

  if (__OFSUB__(v68, v46))
  {
    goto LABEL_170;
  }

  if (v68 - v46 >= v73)
  {
LABEL_27:
    v44 = v68;
    if (v68 < v46)
    {
      goto LABEL_169;
    }

    goto LABEL_28;
  }

  if (__OFADD__(v46, v73))
  {
    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
LABEL_178:
    __break(1u);
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    return;
  }

  if (&v46[v73] >= v74)
  {
    v75 = v213[1];
  }

  else
  {
    v75 = &v46[v73];
  }

  if (v75 < v46)
  {
    goto LABEL_173;
  }

  if (v68 == v75)
  {
    goto LABEL_27;
  }

  v236 = *v213;
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8A80, &qword_227671700);
  v217 = *(v24 + 72);
  v216 = *(v24 + 16);
  v125 = v221;
  v208 = v75;
LABEL_89:
  v212 = v68;
  v127 = v68;
LABEL_90:
  v128 = v127 - 1;
  v129 = v236;
  v130 = v217;
  v234 = &v236[v217 * v127];
  v131 = v216;
  v216(v243);
  v235 = v128;
  v233 = &v129[v128 * v130];
  v131(v125);
  v132 = v220;
  v245 = v220;
  v24 = sub_22766CDE0();
  v133 = v24 + 56;
  v134 = v245;
  v135 = *(v24 + 40);
  v238 = v132;
  sub_22766C000();
  a3 = v136;
  sub_22766D370();
  v137 = v134;
  sub_22766C100();
  v138 = sub_22766D3F0();

  v139 = -1 << *(v24 + 32);
  v45 = v138 & ~v139;
  v140 = v45 >> 6;
  v141 = *(v24 + 56 + 8 * (v45 >> 6));
  v142 = 1 << v45;
  if (((1 << v45) & v141) == 0)
  {
    goto LABEL_99;
  }

  v143 = ~v139;
  do
  {
    v144 = *(*(v24 + 48) + 8 * v45);
    v145 = sub_22766C000();
    v147 = v146;
    if (v145 == sub_22766C000() && v147 == v148)
    {

LABEL_103:
      v152 = v225;
      v16 = v232;
LABEL_104:
      sub_226FB46B8(&v245);
      v153 = v242;
      sub_2276623A0();
      if (v153)
      {

        v154 = sub_2276621F0();
        (*(*(v154 - 8) + 56))(v152, 1, 1, v154);
        sub_226E97D1C(v152, &qword_27D7B9328, &qword_227673988);
        v155 = v222;
        (*v231)(v222, 1, 1, v16);
      }

      else
      {

        v156 = sub_2276621F0();
        v157 = *(v156 - 8);
        (*(v157 + 56))(v152, 0, 1, v156);
        v155 = v222;
        sub_2276621C0();
        (*(v157 + 8))(v152, v156);
        v158 = *v241;
        if ((*v241)(v155, 1, v16) != 1)
        {
          v242 = 0;
          v237 = v158;
          (*v214)(v240, v155, v16);
          goto LABEL_110;
        }
      }

      sub_227662660();
      v159 = *v241;
      v160 = (*v241)(v155, 1, v16);
      v237 = v159;
      v242 = 0;
      if (v160 != 1)
      {
        sub_226E97D1C(v155, &qword_27D7B9690, qword_227670B50);
      }

LABEL_110:
      v244 = v238;
      v161 = sub_22766CDE0();
      v45 = v161 + 56;
      v162 = v244;
      v163 = *(v161 + 40);
      a3 = sub_22766C000();
      v24 = v164;
      sub_22766D370();
      v165 = v162;
      sub_22766C100();
      v166 = sub_22766D3F0();

      v167 = -1 << *(v161 + 32);
      v168 = v166 & ~v167;
      v169 = v168 >> 6;
      v170 = *(v161 + 56 + 8 * (v168 >> 6));
      v171 = 1 << v168;
      if (((1 << v168) & v170) != 0)
      {
        v172 = ~v167;
        while (1)
        {
          v173 = *(*(v161 + 48) + 8 * v168);
          v174 = sub_22766C000();
          v24 = v175;
          if (v174 == sub_22766C000() && v24 == v176)
          {

            goto LABEL_122;
          }

          a3 = sub_22766D190();

          if (a3)
          {
            break;
          }

          v168 = (v168 + 1) & v172;
          v169 = v168 >> 6;
          v170 = *(v45 + 8 * (v168 >> 6));
          v171 = 1 << v168;
          if (((1 << v168) & v170) == 0)
          {
            goto LABEL_118;
          }
        }

LABEL_122:
        v180 = v224;
        v181 = v223;
      }

      else
      {
LABEL_118:
        *(v45 + 8 * v169) = v171 | v170;
        *(*(v161 + 48) + 8 * v168) = v165;
        v178 = *(v161 + 16);
        v92 = __OFADD__(v178, 1);
        v179 = v178 + 1;
        v180 = v224;
        v181 = v223;
        if (v92)
        {
          goto LABEL_152;
        }

        *(v161 + 16) = v179;
      }

      sub_226FB46B8(&v244);
      v125 = v221;
      v182 = v242;
      sub_2276623A0();
      v23 = v230;
      v183 = v219;
      if (v182)
      {

        v184 = sub_2276621F0();
        (*(*(v184 - 8) + 56))(v180, 1, 1, v184);
        sub_226E97D1C(v180, &qword_27D7B9328, &qword_227673988);
        v16 = v232;
        (*v231)(v181, 1, 1, v232);
        v242 = 0;
        v185 = v237;
      }

      else
      {
        v242 = 0;

        v186 = sub_2276621F0();
        v187 = *(v186 - 8);
        (*(v187 + 56))(v180, 0, 1, v186);
        sub_2276621C0();
        (*(v187 + 8))(v180, v186);
        v16 = v232;
        v185 = v237;
        if (v237(v181, 1, v232) != 1)
        {
          (*v214)(v183, v181, v16);
LABEL_129:
          v188 = v240;
          v189 = sub_2276626C0();
          v190 = *v218;
          (*v218)(v183, v16);
          v190(v188, v16);
          a3 = v228;
          v191 = *v228;
          (*v228)(v125, v23);
          v191(v243, v23);
          if (v189)
          {
            if (!v236)
            {
              goto LABEL_175;
            }

            a3 = v226;
            v192 = *v226;
            v193 = v215;
            (*v226)(v215, v234, v23);
            v194 = v233;
            swift_arrayInitWithTakeFrontToBack();
            v192(v194, v193, v23);
            v127 = v235;
            v126 = v227;
            if (v235 == v227)
            {
              goto LABEL_88;
            }

            goto LABEL_90;
          }

          v126 = v227;
LABEL_88:
          v68 = (v212 + 1);
          v44 = v208;
          if (v212 + 1 != v208)
          {
            goto LABEL_89;
          }

          v24 = v202;
          v45 = v207;
          if (v208 < v126)
          {
            goto LABEL_169;
          }

LABEL_28:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_2273A4F9C(0, *(v45 + 16) + 1, 1, v45);
          }

          v77 = *(v45 + 16);
          v76 = *(v45 + 24);
          v78 = v77 + 1;
          if (v77 >= v76 >> 1)
          {
            v45 = sub_2273A4F9C((v76 > 1), v77 + 1, 1, v45);
          }

          *(v45 + 16) = v78;
          v79 = v45 + 16 * v77;
          *(v79 + 32) = v227;
          *(v79 + 40) = v44;
          v80 = *v206;
          if (!*v206)
          {
            goto LABEL_179;
          }

          if (v77)
          {
            while (1)
            {
              v81 = v78 - 1;
              if (v78 >= 4)
              {
                break;
              }

              if (v78 == 3)
              {
                v82 = *(v45 + 32);
                v83 = *(v45 + 40);
                v92 = __OFSUB__(v83, v82);
                v84 = v83 - v82;
                v85 = v92;
LABEL_47:
                if (v85)
                {
                  goto LABEL_158;
                }

                v98 = (v45 + 16 * v78);
                v100 = *v98;
                v99 = v98[1];
                v101 = __OFSUB__(v99, v100);
                v102 = v99 - v100;
                v103 = v101;
                if (v101)
                {
                  goto LABEL_161;
                }

                v104 = (v45 + 32 + 16 * v81);
                v106 = *v104;
                v105 = v104[1];
                v92 = __OFSUB__(v105, v106);
                v107 = v105 - v106;
                if (v92)
                {
                  goto LABEL_164;
                }

                if (__OFADD__(v102, v107))
                {
                  goto LABEL_165;
                }

                if (v102 + v107 >= v84)
                {
                  if (v84 < v107)
                  {
                    v81 = v78 - 2;
                  }

                  goto LABEL_68;
                }

                goto LABEL_61;
              }

              v108 = (v45 + 16 * v78);
              v110 = *v108;
              v109 = v108[1];
              v92 = __OFSUB__(v109, v110);
              v102 = v109 - v110;
              v103 = v92;
LABEL_61:
              if (v103)
              {
                goto LABEL_160;
              }

              v111 = v45 + 16 * v81;
              v113 = *(v111 + 32);
              v112 = *(v111 + 40);
              v92 = __OFSUB__(v112, v113);
              v114 = v112 - v113;
              if (v92)
              {
                goto LABEL_163;
              }

              if (v114 < v102)
              {
                goto LABEL_3;
              }

LABEL_68:
              v119 = v81 - 1;
              if (v81 - 1 >= v78)
              {
                goto LABEL_153;
              }

              if (!*v213)
              {
                goto LABEL_176;
              }

              v120 = *(v45 + 32 + 16 * v119);
              a3 = *(v45 + 32 + 16 * v81 + 8);
              v121 = v242;
              sub_226FB401C(&(*v213)[*(v24 + 72) * v120], &(*v213)[*(v24 + 72) * *(v45 + 32 + 16 * v81)], &(*v213)[*(v24 + 72) * a3], v80);
              v242 = v121;
              if (v121)
              {
                goto LABEL_149;
              }

              if (a3 < v120)
              {
                goto LABEL_154;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v45 = sub_2271171D0(v45);
              }

              if (v119 >= *(v45 + 16))
              {
                goto LABEL_155;
              }

              v122 = v45 + 16 * v119;
              *(v122 + 32) = v120;
              *(v122 + 40) = a3;
              v246 = v45;
              sub_227117144(v81);
              v45 = v246;
              v78 = *(v246 + 16);
              if (v78 <= 1)
              {
                goto LABEL_3;
              }
            }

            v86 = v45 + 32 + 16 * v78;
            v87 = *(v86 - 64);
            v88 = *(v86 - 56);
            v92 = __OFSUB__(v88, v87);
            v89 = v88 - v87;
            if (v92)
            {
              goto LABEL_156;
            }

            v91 = *(v86 - 48);
            v90 = *(v86 - 40);
            v92 = __OFSUB__(v90, v91);
            v84 = v90 - v91;
            v85 = v92;
            if (v92)
            {
              goto LABEL_157;
            }

            v93 = (v45 + 16 * v78);
            v95 = *v93;
            v94 = v93[1];
            v92 = __OFSUB__(v94, v95);
            v96 = v94 - v95;
            if (v92)
            {
              goto LABEL_159;
            }

            v92 = __OFADD__(v84, v96);
            v97 = v84 + v96;
            if (v92)
            {
              goto LABEL_162;
            }

            if (v97 >= v89)
            {
              v115 = (v45 + 32 + 16 * v81);
              v117 = *v115;
              v116 = v115[1];
              v92 = __OFSUB__(v116, v117);
              v118 = v116 - v117;
              if (v92)
              {
                goto LABEL_168;
              }

              if (v84 < v118)
              {
                v81 = v78 - 2;
              }

              goto LABEL_68;
            }

            goto LABEL_47;
          }

LABEL_3:
          v43 = v213[1];
          v16 = v232;
          if (v44 >= v43)
          {
            goto LABEL_137;
          }

          goto LABEL_4;
        }
      }

      sub_227662660();
      if (v185(v181, 1, v16) != 1)
      {
        sub_226E97D1C(v181, &qword_27D7B9690, qword_227670B50);
      }

      goto LABEL_129;
    }

    a3 = sub_22766D190();

    if (a3)
    {

      goto LABEL_103;
    }

    v45 = (v45 + 1) & v143;
    v140 = v45 >> 6;
    v141 = *(v133 + 8 * (v45 >> 6));
    v142 = 1 << v45;
  }

  while (((1 << v45) & v141) != 0);
  v16 = v232;
LABEL_99:
  *(v133 + 8 * v140) = v142 | v141;
  *(*(v24 + 48) + 8 * v45) = v137;
  v150 = *(v24 + 16);
  v92 = __OFADD__(v150, 1);
  v151 = v150 + 1;
  v152 = v225;
  if (!v92)
  {
    *(v24 + 16) = v151;
    goto LABEL_104;
  }

  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  v45 = sub_2271171D0(v45);
LABEL_139:
  v246 = v45;
  v195 = *(v45 + 16);
  if (v195 >= 2)
  {
    while (*v213)
    {
      v196 = *(v45 + 16 * v195);
      v197 = *(v45 + 16 * (v195 - 1) + 40);
      v198 = v242;
      sub_226FB401C(&(*v213)[*(v24 + 72) * v196], &(*v213)[*(v24 + 72) * *(v45 + 16 * (v195 - 1) + 32)], &(*v213)[*(v24 + 72) * v197], a3);
      v242 = v198;
      if (v198)
      {
        goto LABEL_149;
      }

      if (v197 < v196)
      {
        goto LABEL_166;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v45 = sub_2271171D0(v45);
      }

      if (v195 - 2 >= *(v45 + 16))
      {
        goto LABEL_167;
      }

      v199 = (v45 + 16 * v195);
      *v199 = v196;
      v199[1] = v197;
      v246 = v45;
      sub_227117144(v195 - 1);
      v45 = v246;
      v195 = *(v246 + 16);
      if (v195 <= 1)
      {
        goto LABEL_149;
      }
    }

    goto LABEL_177;
  }

LABEL_149:
}

void sub_226FB401C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77 = a3;
  v9 = sub_2276624A0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v12);
  v14 = &v62 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](&v62 - v16);
  v20 = &v62 - v19;
  v73 = *(v21 + 72);
  if (!v73)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_66;
  }

  v22 = v77 - a2;
  if (v77 - a2 == 0x8000000000000000 && v73 == -1)
  {
    goto LABEL_67;
  }

  v23 = (a2 - a1) / v73;
  v80 = a1;
  v79 = a4;
  v75 = v9;
  if (v23 >= v22 / v73)
  {
    v71 = v18;
    v72 = v14;
    v25 = v22 / v73 * v73;
    if (a4 < a2 || a2 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = a4 + v25;
    if (v25 >= 1)
    {
      v38 = v72;
      v39 = -v73;
      v68 = (v10 + 16);
      v69 = (v10 + 8);
      v40 = v37;
      v74 = a4;
      v65 = a1;
      v66 = -v73;
      do
      {
        v76 = v5;
        v63 = v37;
        v41 = a2;
        v42 = a2 + v39;
        v67 = v42;
        v70 = v41;
        while (1)
        {
          v45 = v77;
          if (v41 <= a1)
          {
            v80 = v41;
            v60 = v63;
LABEL_62:
            v78 = v60;
            goto LABEL_64;
          }

          v64 = v37;
          v73 = v40;
          v46 = v40 + v39;
          v47 = *v68;
          v48 = v75;
          (*v68)(v38, v40 + v39, v75);
          v49 = v42;
          v50 = v39;
          v51 = v71;
          v47(v71, v49, v48);
          v52 = v76;
          v53 = sub_226FB1A8C(v38, v51);
          v76 = v52;
          if (v52)
          {
            v61 = *v69;
            (*v69)(v51, v48);
            v61(v38, v48);
            v80 = v70;
            v60 = v64;
            goto LABEL_62;
          }

          v54 = v53;
          v77 = v45 + v50;
          v55 = *v69;
          (*v69)(v51, v48);
          v55(v38, v48);
          if (v54)
          {
            break;
          }

          v37 = v46;
          v56 = v65;
          if (v45 < v73 || v77 >= v73)
          {
            swift_arrayInitWithTakeFrontToBack();
            v39 = v66;
            v42 = v67;
            v43 = v74;
          }

          else
          {
            v39 = v66;
            v42 = v67;
            v43 = v74;
            if (v45 != v73)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v40 = v46;
          v44 = v46 > v43;
          v38 = v72;
          a1 = v56;
          v41 = v70;
          if (!v44)
          {
            a2 = v70;
            goto LABEL_63;
          }
        }

        a1 = v65;
        if (v45 < v70 || v77 >= v70)
        {
          a2 = v67;
          swift_arrayInitWithTakeFrontToBack();
          v58 = v74;
          v5 = v76;
          v37 = v64;
          v39 = v66;
        }

        else
        {
          v57 = v45 == v70;
          v39 = v66;
          a2 = v67;
          v58 = v74;
          v5 = v76;
          v37 = v64;
          if (!v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v38 = v72;
        v40 = v73;
      }

      while (v73 > v58);
    }

LABEL_63:
    v80 = a2;
    v78 = v37;
  }

  else
  {
    v24 = v23 * v73;
    v72 = v17;
    if (a4 < a1 || a1 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v71 = a4 + v24;
    v78 = a4 + v24;
    if (v24 >= 1 && a2 < v77)
    {
      v27 = *(v10 + 16);
      v70 = v10 + 16;
      v68 = v27;
      v69 = (v10 + 8);
      while (1)
      {
        v28 = a2;
        v29 = a4;
        v30 = v68;
        (v68)(v20, a2, v9);
        v31 = v20;
        v32 = v72;
        v74 = v29;
        (v30)(v72, v29, v9);
        v33 = sub_226FB1A8C(v31, v32);
        if (v5)
        {
          break;
        }

        v34 = v33;
        v76 = 0;
        v35 = *v69;
        (*v69)(v32, v9);
        v35(v31, v9);
        v20 = v31;
        if (v34)
        {
          v36 = v73;
          a2 = v28 + v73;
          if (a1 < v28 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a4 = v74;
        }

        else
        {
          v36 = v73;
          a4 = v74 + v73;
          a2 = v28;
          if (a1 < v74 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v74)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v79 = a4;
        }

        a1 += v36;
        v80 = a1;
        v5 = v76;
        if (a4 < v71)
        {
          v9 = v75;
          if (a2 < v77)
          {
            continue;
          }
        }

        goto LABEL_64;
      }

      v59 = *v69;
      (*v69)(v32, v9);
      v59(v31, v9);
    }
  }

LABEL_64:
  sub_227117214(&v80, &v79, &v78);
}

uint64_t sub_226FB46B8(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226FB473C()
{
  result = sub_2276624A0();
  if (v1 <= 0x3F)
  {
    result = sub_226E99364(319, &qword_281398B00, 0x277CCA968);
    if (v2 <= 0x3F)
    {
      result = sub_226E99364(319, &unk_28139D250, 0x277D85C90);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15SeymourServices25SQLiteDatabaseHandleErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_226FB4840(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_226FB4888(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_226FB48CC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_226FB48F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_227664530();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_22766B390();
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_227670CD0;
  *(v16 + 32) = sub_2276644F0();
  *(v16 + 40) = v17;
  v18 = sub_226F86AB0(v16, a2);
  if (v3)
  {

    v19 = 0;
  }

  else
  {
    v19 = v18;

    if (*(v19 + 16))
    {
      v34 = sub_227666B60();
      (*(*(v34 - 8) + 16))(a3, v19 + ((*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80)), v34);
    }
  }

  sub_22766A610();
  (*(v8 + 16))(v11, a1, v7);

  v20 = sub_22766B380();
  v21 = sub_22766C890();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v41 = v37;
    *v22 = 136315394;
    v23 = sub_2276644F0();
    v36 = v21;
    v25 = v24;
    (*(v8 + 8))(v11, v7);
    v26 = sub_226E97AE8(v23, v25, &v41);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v40 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9350, &qword_227673B38);
    v27 = sub_22766CB80();
    v29 = v28;

    v30 = sub_226E97AE8(v27, v29, &v41);

    *(v22 + 14) = v30;
    _os_log_impl(&dword_226E8E000, v20, v36, "CatalogWorkoutReferences for workout identifier %s: %s", v22, 0x16u);
    v31 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AA9A450](v31, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v11, v7);
  }

  (*(v38 + 8))(v15, v39);
  sub_226F73CD0();
  swift_allocError();
  *v32 = 7;
  return swift_willThrow();
}

uint64_t sub_226FB4D0C()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 7);
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 14);
  __swift_destroy_boxed_opaque_existential_0(v0 + 22);
  __swift_destroy_boxed_opaque_existential_0(v0 + 27);

  return swift_deallocClassInstance();
}

uint64_t sub_226FB4D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[9] = a4;
  v5[10] = v4;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = sub_22766B390();
  v5[11] = v6;
  v7 = *(v6 - 8);
  v5[12] = v7;
  v8 = *(v7 + 64) + 15;
  v5[13] = swift_task_alloc();
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8E38, &qword_22767C730) - 8);
  v5[14] = v9;
  v5[15] = *(v9 + 64);
  v5[16] = swift_task_alloc();
  v10 = sub_227667A70();
  v5[17] = v10;
  v11 = *(v10 - 8);
  v5[18] = v11;
  v5[19] = *(v11 + 64);
  v5[20] = swift_task_alloc();
  v12 = sub_227664530();
  v5[21] = v12;
  v13 = *(v12 - 8);
  v5[22] = v13;
  v5[23] = *(v13 + 64);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9348, &qword_227673B30);
  v5[26] = v14;
  v15 = *(v14 - 8);
  v5[27] = v15;
  v16 = *(v15 + 64) + 15;
  v5[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226FB5000, 0, 0);
}