uint64_t sub_22710B900()
{
  v1 = v0;
  v2 = sub_227669A70();
  v48 = *(v2 - 8);
  v3 = v48;
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766B390();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v8 + 8))(v11, v7);
  v12 = *(v1 + 16);
  v47 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v49 = v12;
  v13 = v3 + 104;
  v14 = *(v3 + 104);
  v15 = v2;
  v14(v6, *MEMORY[0x277D4EB80], v2);
  v46 = v14;
  v44 = v13;
  swift_allocObject();
  v45 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();

  sub_227669EF0();

  v16 = *(v48 + 8);
  v48 += 8;
  v42 = v16;
  v16(v6, v2);

  swift_unknownObjectRelease();
  v49 = v12;
  v14(v6, *MEMORY[0x277D4E3F8], v2);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v18 = sub_22710E298();
  v19 = sub_226F62680();
  v39[1] = v18;
  v40 = v19;
  v39[0] = v17;
  sub_227669ED0();

  v41 = v15;
  v20 = v42;
  v42(v6, v15);
  swift_unknownObjectRelease();
  v49 = v12;
  v46(v6, *MEMORY[0x277D4EDA0], v15);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v21 = v41;
  v20(v6, v41);
  swift_unknownObjectRelease();
  v49 = v12;
  v22 = v46;
  v46(v6, *MEMORY[0x277D4E370], v21);
  swift_allocObject();
  swift_weakInit();
  sub_2276630B0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v42(v6, v21);
  swift_unknownObjectRelease();
  v49 = v12;
  v22(v6, *MEMORY[0x277D4E378], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB40, &qword_227679440);
  sub_22710E504();
  sub_22710E588(&qword_281398F10, &qword_27D7BAB40, &qword_227679440, sub_22710E604);
  sub_227669EC0();

  v23 = v42;
  v42(v6, v21);
  swift_unknownObjectRelease();
  v49 = v12;
  v24 = v46;
  v46(v6, *MEMORY[0x277D4EA98], v21);
  swift_allocObject();
  swift_weakInit();
  sub_227667A70();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v25 = v41;
  v23(v6, v41);
  swift_unknownObjectRelease();
  v49 = v12;
  v24(v6, *MEMORY[0x277D4E588], v25);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB48, &qword_227679468);
  sub_22710E7A0();
  sub_22710E588(&qword_281398F00, &qword_27D7BAB48, &qword_227679468, sub_22710E824);
  sub_227669EC0();

  v26 = v41;
  v27 = v42;
  v42(v6, v41);
  swift_unknownObjectRelease();
  v49 = v12;
  v46(v6, *MEMORY[0x277D4EAC8], v26);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v27(v6, v26);
  swift_unknownObjectRelease();
  v49 = v12;
  v28 = v26;
  v29 = v46;
  v46(v6, *MEMORY[0x277D4E9D0], v28);
  swift_allocObject();
  v30 = v45;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v31 = v41;
  v32 = v42;
  v42(v6, v41);
  swift_unknownObjectRelease();
  v49 = v12;
  v29(v6, *MEMORY[0x277D4EC00], v31);
  swift_allocObject();
  v33 = v30;
  swift_weakInit();
  v40 = sub_2276682A0();
  sub_227669EE0();

  v34 = v41;
  v32(v6, v41);
  swift_unknownObjectRelease();
  v49 = v12;
  v35 = v46;
  v46(v6, *MEMORY[0x277D4EB88], v34);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v32(v6, v34);
  swift_unknownObjectRelease();
  v36 = *(v33 + 40);
  v37 = *(v33 + 56);
  swift_getObjectType();
  v49 = v36;
  v35(v6, *MEMORY[0x277D4EBA0], v34);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v32(v6, v34);
  return swift_unknownObjectRelease();
}

uint64_t sub_22710C554()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_22710C660;

    return sub_2271C60BC();
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_22710C660()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226F69390, 0, 0);
}

uint64_t sub_22710C75C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710C77C, 0, 0);
}

uint64_t sub_22710C77C()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 104, v0 + 16);

    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_22710C890;

    return sub_226EB91E0();
  }

  else
  {
    **(v0 + 80) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22710C890(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_22710C990, 0, 0);
}

uint64_t sub_22710C990()
{
  sub_22710B060(*(v0 + 104));
  v2 = v1;

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710CA20(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22710CA44, 0, 0);
}

uint64_t sub_22710CA44()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22710CB58;
    v5 = v0[11];

    return sub_226EADED0(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22710CB58()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_226F69390, 0, 0);
}

uint64_t sub_22710CC54(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_22710CC7C, 0, 0);
}

uint64_t sub_22710CC7C()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[14] = v4;
    *v4 = v0;
    v4[1] = sub_22710CDD0;
    v6 = v0[12];
    v5 = v0[13];

    return sub_2271CE090(v6, v5);
  }

  else
  {
    v8 = v0[10];
    v9 = sub_2276630B0();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_22710CDD0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_22710CFE8;
  }

  else
  {
    v5 = sub_22710CEE4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

id sub_22710CEE4()
{
  result = [*(v0 + 120) data];
  if (result)
  {
    v2 = result;
    v3 = *(v0 + 120);
    v4 = *(v0 + 80);
    sub_227662590();

    sub_2276630A0();
    v5 = sub_2276630B0();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v6 = *(v0 + 8);

    return v6();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22710CFE8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[16];

  return v1();
}

uint64_t sub_22710D04C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_22710D074, 0, 0);
}

uint64_t sub_22710D074()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_226FAAB58;
    v5 = *(v0 + 96);

    return sub_2271CEBC4(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22710D190(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710D1B0, 0, 0);
}

uint64_t sub_22710D1B0()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22710D304;
    v5 = v0[10];

    return sub_2271CF294(v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227667A70();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_22710D304()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_226F618C8;
  }

  else
  {
    v3 = sub_22710D418;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_22710D418()
{
  v1 = v0[10];
  v2 = sub_227667A70();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_22710D4C0(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_22710D4E8, 0, 0);
}

uint64_t sub_22710D4E8()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 104) = v4;
    *v4 = v0;
    v4[1] = sub_22710D604;
    v5 = *(v0 + 96);

    return sub_226EB6FEC(v5);
  }

  else
  {
    **(v0 + 80) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_22710D604(uint64_t a1)
{
  v2 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_22710D704, 0, 0);
}

uint64_t sub_22710D704()
{
  v1 = sub_22710B3D4(*(v0 + 112));

  v2 = sub_226F446E4(v1);

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v2;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710D7A8(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v4 = a2[1];
  v3[12] = *a2;
  v3[13] = v4;
  return MEMORY[0x2822009F8](sub_22710D7D0, 0, 0);
}

uint64_t sub_22710D7D0()
{
  v1 = *(v0 + 88);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v3 = *__swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 112) = v4;
    *v4 = v0;
    v4[1] = sub_22710D8F0;
    v6 = *(v0 + 96);
    v5 = *(v0 + 104);

    return sub_2271CFC7C(v6, v5);
  }

  else
  {
    **(v0 + 80) = 2;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_22710D8F0(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_22710D9F0, 0, 0);
}

uint64_t sub_22710D9F0()
{
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  **(v0 + 80) = v1;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22710DA60(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DA80, 0, 0);
}

uint64_t sub_22710DA80()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_22710DB9C;

    return sub_2271D0690();
  }

  else
  {
    v6 = v0[10];
    *v6 = 0;
    *(v6 + 8) = 256;
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22710DB9C(uint64_t a1, char a2)
{
  v6 = *v3;
  v7 = *(*v3 + 96);
  v8 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {
    v9 = sub_226F69344;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 112) = a1;
    v9 = sub_22710DCD4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_22710DCD4()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 120) & 1;
  *v1 = *(v0 + 112);
  *(v1 + 8) = v2;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22710DD54(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DD74, 0, 0);
}

uint64_t sub_22710DD74()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F623A8;
    v5 = v0[10];

    return sub_2271D0F70(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22710DE88(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v2[10] = a2;
  v2[11] = v3;
  v2[12] = v4;
  return MEMORY[0x2822009F8](sub_22710DEB0, 0, 0);
}

uint64_t sub_22710DEB0()
{
  v1 = v0[10];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[13] = v4;
    *v4 = v0;
    v4[1] = sub_226FAA2F0;
    v6 = v0[11];
    v5 = v0[12];

    return sub_2271D164C(v6, v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_22710DFC4(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22710DFE4, 0, 0);
}

uint64_t sub_22710DFE4()
{
  v1 = v0[11];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    v3 = *__swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v4 = swift_task_alloc();
    v0[12] = v4;
    *v4 = v0;
    v4[1] = sub_226F620FC;
    v5 = v0[10];

    return sub_2271D0F70(v5);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_22710E0F8()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[5];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v0 + 8);
  __swift_destroy_boxed_opaque_existential_0(v0 + 13);

  return swift_deallocClassInstance();
}

uint64_t sub_22710E16C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_22710C534(v0);
}

uint64_t sub_22710E1FC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710C75C(a1, v1);
}

unint64_t sub_22710E298()
{
  result = qword_281398F70;
  if (!qword_281398F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B84E0, &qword_22767C6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F70);
  }

  return result;
}

uint64_t sub_22710E314(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710CA20(a1, v1);
}

uint64_t sub_22710E3AC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710CC54(a1, a2, v2);
}

uint64_t sub_22710E458(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D04C(a1, a2, v2);
}

unint64_t sub_22710E504()
{
  result = qword_281398F18;
  if (!qword_281398F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAB40, &qword_227679440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F18);
  }

  return result;
}

uint64_t sub_22710E588(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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

unint64_t sub_22710E604()
{
  result = qword_28139BD70;
  if (!qword_28139BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BD70);
  }

  return result;
}

uint64_t sub_22710E658(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E92F34;

  return sub_22710D190(a1, v1);
}

uint64_t sub_22710E6F4(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D4C0(a1, a2, v2);
}

unint64_t sub_22710E7A0()
{
  result = qword_281398F08;
  if (!qword_281398F08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BAB48, &qword_227679468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398F08);
  }

  return result;
}

unint64_t sub_22710E824()
{
  result = qword_28139BD68;
  if (!qword_28139BD68)
  {
    sub_227663110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BD68);
  }

  return result;
}

uint64_t sub_22710E87C(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_22710D7A8(a1, a2, v2);
}

uint64_t sub_22710E928(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DA60(a1, v1);
}

uint64_t sub_22710E9C4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DD54(a1, v1);
}

uint64_t sub_22710EA5C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DE88(a1, v1);
}

uint64_t sub_22710EAF4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22710DFC4(a1, v1);
}

id sub_22710EB8C()
{
  v24[1] = *MEMORY[0x277D85DE8];
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() defaultManager];
  v6 = sub_2276623E0();
  v24[0] = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:v24];

  if (v7)
  {
    result = v24[0];
  }

  else
  {
    v9 = v24[0];
    v10 = sub_2276622C0();

    swift_willThrow();
    sub_22766A770();

    v11 = sub_22766B380();
    v12 = sub_22766C890();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v0;
      v24[0] = v14;
      v15 = v14;
      *v13 = 136315138;
      v16 = sub_227662390();
      v18 = sub_226E97AE8(v16, v17, v24);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_226E8E000, v11, v12, "Failed to create library directory at path: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x22AA9A450](v15, -1, -1);
      MEMORY[0x22AA9A450](v13, -1, -1);

      (*(v1 + 8))(v4, v23);
    }

    else
    {

      (*(v1 + 8))(v4, v0);
    }

    v19 = sub_227664DD0();
    sub_227117ADC(&qword_28139B8D0, MEMORY[0x277D51040]);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51008], v19);
    result = swift_willThrow();
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22710EEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_227662750();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_2276691E0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 8);
  v17 = sub_227667700();
  if (v4)
  {
    return a1;
  }

  v19 = v18;
  v35 = v12;
  v31 = 0;
  v20 = v17;
  (*(*(a3 + 16) + 24))(v33, a2);
  PersistenceEntityName.rawValue.getter();
  sub_227662740();
  sub_226F5E0B4(v20, v19);
  v32 = v20;
  sub_2276691B0();
  v21 = *(v5 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents);
  v22 = sub_2276691C0();
  if (!*(v21 + 16))
  {

    v27 = v35;
    goto LABEL_8;
  }

  v24 = sub_226E92000(v22, v23);
  v26 = v25;

  v27 = v35;
  if ((v26 & 1) == 0)
  {
LABEL_8:
    v34 = 0;
    memset(v33, 0, sizeof(v33));
    sub_226E97D1C(v33, &qword_27D7BAB80, &qword_227679570);
    sub_227111620();
    a1 = swift_allocError();
    swift_willThrow();
    sub_226EDC420(v32, v19);
    (*(v27 + 8))(v15, v11);
    return a1;
  }

  sub_226E91B50(*(v21 + 56) + 40 * v24, v33);
  sub_226E97D1C(v33, &qword_27D7BAB80, &qword_227679570);
  sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0]);
  a1 = v15;
  v28 = v31;
  v29 = sub_2276683C0();
  if (!v28)
  {
    a1 = v29;
  }

  (*(v27 + 8))(v15, v11);
  sub_226EDC420(v32, v19);
  return a1;
}

uint64_t sub_22710F210(uint64_t a1, uint64_t a2)
{
  v6 = sub_2276691E0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_22766B390();
  v41 = *(v44 - 8);
  v11 = *(v41 + 64);
  MEMORY[0x28223BE20](v44);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents);
  v15 = sub_2276691C0();
  if (!*(v14 + 16))
  {

    goto LABEL_6;
  }

  v39 = a2;
  v40 = v3;
  v17 = sub_226E92000(v15, v16);
  v19 = v18;

  if ((v19 & 1) == 0)
  {
LABEL_6:
    sub_227111620();
    swift_allocError();
    return swift_willThrow();
  }

  sub_226E91B50(*(v14 + 56) + 40 * v17, v42);
  sub_226E92AB8(v42, v43);
  sub_22766A770();
  (*(v7 + 16))(v10, a1, v6);
  v20 = sub_22766B380();
  v21 = sub_22766C880();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v37 = v22;
    v38 = swift_slowAlloc();
    *&v42[0] = v38;
    *v22 = 136315138;
    sub_227117ADC(&qword_27D7BAB98, MEMORY[0x277D53AB0]);
    v23 = sub_22766D140();
    v25 = v24;
    (*(v7 + 8))(v10, v6);
    v26 = sub_226E97AE8(v23, v25, v42);

    v27 = v37;
    *(v37 + 1) = v26;
    _os_log_impl(&dword_226E8E000, v20, v21, "JournalingSystem::readJournal processing journal: %s", v27, 0xCu);
    v28 = v38;
    __swift_destroy_boxed_opaque_existential_0(v38);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v27, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }

  (*(v41 + 8))(v13, v44);
  v30 = sub_2276691D0();
  v31 = v43[4];
  __swift_project_boxed_opaque_existential_0(v43, v43[3]);
  v32 = sub_227669190();
  v34 = v32;
  if (v30)
  {
    v35 = v33;
    (*(v31 + 8))(v32);
  }

  else
  {
    v35 = v33;
    (*(v31 + 16))(v32);
  }

  sub_226EDC420(v34, v35);
  return __swift_destroy_boxed_opaque_existential_0(v43);
}

uint64_t sub_22710F620(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_2276691E0();
  v3[6] = v4;
  v5 = *(v4 - 8);
  v3[7] = v5;
  v3[8] = *(v5 + 64);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v6 = sub_2276624A0();
  v3[11] = v6;
  v7 = *(v6 - 8);
  v3[12] = v7;
  v3[13] = *(v7 + 64);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v3[16] = v8;
  v9 = *(v8 - 8);
  v3[17] = v9;
  v10 = *(v9 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v11 = sub_22766B390();
  v3[20] = v11;
  v12 = *(v11 - 8);
  v3[21] = v12;
  v13 = *(v12 + 64) + 15;
  v3[22] = swift_task_alloc();
  v14 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22710F864, 0, 0);
}

uint64_t sub_22710F864()
{
  v87 = v0;
  v86[2] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() defaultManager];
  v3 = sub_2276623E0();
  *(v0 + 16) = 0;
  v4 = [v2 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:0 error:v0 + 16];

  v5 = *(v0 + 16);
  if (!v4)
  {
    v13 = v5;
    sub_2276622C0();

    swift_willThrow();
    v33 = *(v0 + 176);
    v34 = *(v0 + 152);
    v35 = *(v0 + 144);
    v36 = *(v0 + 120);
    v37 = *(v0 + 112);
    v38 = *(v0 + 80);
    v39 = *(v0 + 72);

    v40 = *(v0 + 8);
    v41 = *MEMORY[0x277D85DE8];
LABEL_14:

    return v40();
  }

  v6 = *(v0 + 176);
  v7 = *(v0 + 88);
  v8 = sub_22766C2C0();
  v9 = v5;

  sub_22766A770();

  v10 = sub_22766B380();
  v11 = sub_22766C8B0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 134217984;
    *(v12 + 4) = *(v8 + 16);

    _os_log_impl(&dword_226E8E000, v10, v11, "Found %ld journal files.", v12, 0xCu);
    MEMORY[0x22AA9A450](v12, -1, -1);
  }

  else
  {
  }

  (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
  v14 = *(v8 + 16);
  if (v14)
  {
    v75 = *(v0 + 128);
    v76 = *(v0 + 136);
    v15 = *(v0 + 96);
    v16 = *(v0 + 56);
    v86[0] = MEMORY[0x277D84F90];
    sub_226F1F6E8(0, v14, 0);
    v17 = 0;
    v18 = v86[0];
    v80 = v8 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v81 = v15;
    v77 = v8;
    v73 = (v16 + 32);
    v74 = (v15 + 32);
    while (v17 < *(v8 + 16))
    {
      v83 = v18;
      (*(v81 + 16))(*(v0 + 120), v80 + *(v81 + 72) * v17, *(v0 + 88));
      v19 = sub_2276624C0();
      v21 = v20;
      v22 = *(v0 + 80);
      v23 = *(v0 + 48);
      sub_226F5E0B4(v19, v20);
      sub_227117ADC(&qword_27D7BAB60, MEMORY[0x277D53AB0]);
      sub_2276683D0();
      v24 = *(v0 + 88);
      v25 = *(v0 + 152);
      v26 = *(v0 + 120);
      v27 = *(v0 + 80);
      v28 = *(v0 + 48);
      sub_226EDC420(v19, v21);
      v29 = *(v75 + 48);
      (*v74)(v25, v26, v24);
      (*v73)(v25 + v29, v27, v28);
      v18 = v83;
      v86[0] = v83;
      v31 = v83[2];
      v30 = v83[3];
      if (v31 >= v30 >> 1)
      {
        sub_226F1F6E8(v30 > 1, v31 + 1, 1);
        v18 = v86[0];
      }

      ++v17;
      v32 = *(v0 + 152);
      v18[2] = v31 + 1;
      sub_227111674(v32, v18 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v31);
      v8 = v77;
      if (v14 == v17)
      {

        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_17:
  v86[0] = v18;

  sub_2271153A0(v86);

  v43 = v86[0];
  *(v0 + 184) = v86[0];
  v44 = v43[2];
  *(v0 + 192) = v44;
  if (!v44)
  {
    v65 = *(v0 + 176);
    v66 = *(v0 + 152);
    v67 = *(v0 + 144);
    v68 = *(v0 + 120);
    v69 = *(v0 + 112);
    v70 = *(v0 + 80);
    v71 = *(v0 + 72);

    v40 = *(v0 + 8);
    v72 = *MEMORY[0x277D85DE8];
    goto LABEL_14;
  }

  v46 = *(v0 + 128);
  v45 = *(v0 + 136);
  v47 = *(v0 + 96);
  v48 = *(v0 + 56);
  v85 = *(v0 + 24);
  *(v0 + 200) = 0;
  if (!v43[2])
  {
    goto LABEL_24;
  }

  v49 = *(v0 + 144);
  v50 = *(v0 + 112);
  v51 = *(v0 + 88);
  v78 = v51;
  v79 = v50;
  v52 = *(v0 + 72);
  v82 = *(v0 + 64);
  v53 = *(v0 + 40);
  v54 = *(v0 + 48);
  sub_227115454(v43 + ((*(v45 + 80) + 32) & ~*(v45 + 80)), v49);
  v55 = *(v46 + 48);
  v56 = *(v48 + 32);
  v56(v52, v49 + v55, v54);
  v57 = *(v47 + 32);
  v57(v50, v49, v51);
  v58 = (*(v48 + 80) + 24) & ~*(v48 + 80);
  v59 = (v82 + *(v47 + 80) + v58) & ~*(v47 + 80);
  v60 = swift_allocObject();
  *(v0 + 208) = v60;
  *(v60 + 16) = v53;
  v56(v60 + v58, v52, v54);
  v57(v60 + v59, v79, v78);

  v84 = (v85 + *v85);
  v61 = v85[1];
  v62 = swift_task_alloc();
  *(v0 + 216) = v62;
  *v62 = v0;
  v62[1] = sub_2271100B0;
  v63 = *(v0 + 32);
  v64 = *MEMORY[0x277D85DE8];

  return v84(sub_2271154C4, v60);
}

uint64_t sub_2271100B0()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  v2[28] = v0;

  v5 = v2[26];
  if (v0)
  {
    v6 = v2[23];

    v7 = sub_227110554;
  }

  else
  {

    v7 = sub_22711022C;
  }

  v8 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_22711022C()
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = v0[25] + 1;
  if (v1 == v0[24])
  {
    v3 = v0[22];
    v2 = v0[23];
    v5 = v0[18];
    v4 = v0[19];
    v7 = v0[14];
    v6 = v0[15];
    v9 = v0[9];
    v8 = v0[10];

    v10 = v0[1];
    v11 = *MEMORY[0x277D85DE8];

    return v10();
  }

  else
  {
    v0[25] = v1;
    v13 = v0[23];
    if (v1 >= *(v13 + 16))
    {
      __break(1u);
    }

    v14 = v0[18];
    v15 = v0[16];
    v16 = v0[14];
    v17 = v0[11];
    v18 = v0[12];
    v33 = v17;
    v34 = v16;
    v19 = v0[9];
    v35 = v0[8];
    v20 = v0[6];
    v21 = v0[7];
    v22 = v0[5];
    v37 = v0[3];
    sub_227115454(v13 + ((*(v0[17] + 80) + 32) & ~*(v0[17] + 80)) + *(v0[17] + 72) * v1, v14);
    v23 = *(v15 + 48);
    v24 = *(v21 + 32);
    v24(v19, v14 + v23, v20);
    v25 = *(v18 + 32);
    v25(v16, v14, v17);
    v26 = (*(v21 + 80) + 24) & ~*(v21 + 80);
    v27 = (v35 + *(v18 + 80) + v26) & ~*(v18 + 80);
    v28 = swift_allocObject();
    v0[26] = v28;
    *(v28 + 16) = v22;
    v24(v28 + v26, v19, v20);
    v25(v28 + v27, v34, v33);

    v36 = (v37 + *v37);
    v29 = v37[1];
    v30 = swift_task_alloc();
    v0[27] = v30;
    *v30 = v0;
    v30[1] = sub_2271100B0;
    v31 = v0[4];
    v32 = *MEMORY[0x277D85DE8];

    return v36(sub_2271154C4, v28);
  }
}

uint64_t sub_227110554()
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = v0[28];
  v2 = v0[22];
  v4 = v0[18];
  v3 = v0[19];
  v6 = v0[14];
  v5 = v0[15];
  v8 = v0[9];
  v7 = v0[10];

  v9 = v0[1];
  v10 = *MEMORY[0x277D85DE8];

  return v9();
}

void sub_227110638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v49[1] = *MEMORY[0x277D85DE8];
  v7 = sub_2276691E0();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v42[-v13];
  v15 = sub_22766B390();
  v45 = *(v15 - 8);
  v46 = v15;
  v16 = *(v45 + 64);
  MEMORY[0x28223BE20](v15);
  v47 = &v42[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22710F210(a3, a1);
  if (!v3)
  {
    v18 = [objc_opt_self() defaultManager];
    v19 = sub_2276623E0();
    v48 = 0;
    v20 = [v18 removeItemAtURL:v19 error:&v48];

    if (v20)
    {
      v21 = v48;
      goto LABEL_11;
    }

    v22 = v48;
    v4 = sub_2276622C0();

    swift_willThrow();
  }

  v48 = v4;
  v23 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
  if (swift_dynamicCast())
  {

    v24 = v47;
    sub_22766A770();
    v25 = v8[2];
    v25(v14, a3, v7);
    v25(v12, a3, v7);
    v26 = sub_22766B380();
    v27 = sub_22766C8B0();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v28 = 136315394;
      v29 = sub_2276691C0();
      v43 = v27;
      v30 = v29;
      v32 = v31;
      v33 = v8[1];
      v33(v14, v7);
      v34 = sub_226E97AE8(v30, v32, v49);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2080;
      sub_227117ADC(&qword_27D7BAB98, MEMORY[0x277D53AB0]);
      v35 = sub_22766D140();
      v37 = v36;
      v33(v12, v7);
      v38 = sub_226E97AE8(v35, v37, v49);

      *(v28 + 14) = v38;
      _os_log_impl(&dword_226E8E000, v26, v43, "Journal %s is not a supported type. Skipping. %s", v28, 0x16u);
      v39 = v44;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v39, -1, -1);
      MEMORY[0x22AA9A450](v28, -1, -1);

      (*(v45 + 8))(v47, v46);
    }

    else
    {

      v40 = v8[1];
      v40(v12, v7);
      v40(v14, v7);
      (*(v45 + 8))(v24, v46);
    }
  }

LABEL_11:
  v41 = *MEMORY[0x277D85DE8];
}

uint64_t sub_227110AFC()
{
  v1 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
  v2 = sub_2276624A0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_eventHub);
  swift_unknownObjectRelease();
  v4 = *(v0 + OBJC_IVAR____TtC15SeymourServices16JournalingSystem_journalingAgents);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JournalingSystem()
{
  result = qword_2813A31E8;
  if (!qword_2813A31E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227110C0C()
{
  result = sub_2276624A0();
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

uint64_t sub_227110CB4(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_22766B390();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227110D78, 0, 0);
}

uint64_t sub_227110D78()
{
  v1 = *(v0[8] + 16);
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_227110E14;
  v4 = v0[6];
  v3 = v0[7];

  return sub_22710F620(v4, v3);
}

uint64_t sub_227110E14()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227110F50, 0, 0);
  }

  else
  {
    v4 = v3[11];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_227110F50()
{
  v23 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  sub_22766A770();
  v3 = v1;
  v4 = sub_22766B380();
  v5 = sub_22766C8B0();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 104);
    v7 = *(v0 + 80);
    v21 = *(v0 + 88);
    v8 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = *(v0 + 16);
    v12 = MEMORY[0x22AA995D0](*(v0 + 24), *(v0 + 32));
    v14 = sub_226E97AE8(v12, v13, &v22);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_226E8E000, v4, v5, "Error reading Journal: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);

    (*(v7 + 8))(v21, v8);
  }

  else
  {
    v16 = *(v0 + 80);
    v15 = *(v0 + 88);
    v17 = *(v0 + 72);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v0 + 88);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_227111128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = sub_2276627D0();
  v22 = *(v23 - 8);
  v7 = *(v22 + 64);
  MEMORY[0x28223BE20](v23);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2276624A0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22710EEC8(v3, a2, a3);
  if (!v4)
  {
    v17 = result;
    v18 = v16;
    v20 = v11;
    v21 = v10;
    v19 = OBJC_IVAR____TtC15SeymourServices16JournalingSystem_directory;
    sub_2276627C0();
    sub_227662770();
    (*(v22 + 8))(v9, v23);
    sub_227662400();

    sub_2276625B0();
    sub_226EDC420(v17, v18);
    return (*(v20 + 8))(v14, v21);
  }

  return result;
}

uint64_t sub_227111340()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_22711139C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E92F34;

  return sub_227110CB4(a1, a2);
}

uint64_t sub_227111444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21 = a5;
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](a1);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5E0B4(v14, v17);
  v18 = *(a7 + 8);
  result = sub_2276676F0();
  if (!v7)
  {
    (*(a7 + 24))(a3, a4, v21, a6, a7);
    return (*(v12 + 8))(v16, a6);
  }

  return result;
}

unint64_t sub_2271115CC()
{
  result = qword_27D7BAB78;
  if (!qword_27D7BAB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BAB78);
  }

  return result;
}

unint64_t sub_227111620()
{
  result = qword_27D7BAB88;
  if (!qword_27D7BAB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BAB88);
  }

  return result;
}

uint64_t sub_227111674(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_2271116E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8FE8, &qword_227672B80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227111928(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACF8, &qword_227679760);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_227111A80(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_227111C28(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB9A0, &unk_2276795E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227111E2C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEE8, &qword_227679978);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEF0, &qword_227679980);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227112334(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC60, &qword_2276796A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_227112574(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF60, &qword_227679A08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_2271126B8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAC88, &qword_2276796C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 8 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_227112D9C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAF20, &qword_2276799C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227112FCC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_2271131EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEB0, &qword_227679930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2271132F8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B92A0, &qword_2276767A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_227113420(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9E38, &qword_227686050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227113560(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE78, &qword_2276798E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE80, &unk_2276798F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227113694(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE58, &qword_2276798C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE60, &qword_2276798D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2271137F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE48, &qword_2276798B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_2271138F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE30, &qword_227679898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *sub_227113A50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_227113B84(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAE50, &qword_2276798B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_227113C9C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_22711400C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC980, &unk_227671070);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227114318(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB038, &unk_227679B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227114474(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB078, &qword_227679B98);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB080, &qword_227679BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2271146F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9558, &qword_227674778);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9560, &qword_227674780);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227114948(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB008, &qword_227679B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227114CA4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAEA0, &qword_227679918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_227114EC8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB0, &qword_2276795A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB8, &qword_2276795B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227115068(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[24 * v10])
    {
      memmove(v14, v15, 24 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

void *sub_2271151CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_2271153A0(void **a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117600(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_227115598(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_227115454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2271154C4(uint64_t a1)
{
  v3 = *(sub_2276691E0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(*(sub_2276624A0() - 8) + 80);
  sub_227110638(a1, *(v1 + 16), v1 + v4);
}

uint64_t sub_227115598(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227115B44(v8, v9, a1, v4);
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
    return sub_2271156DC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2271156DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v68 = sub_227662750();
  v8 = *(v68 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v68);
  v67 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v66 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v62 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v65 = &v53 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v74 = &v53 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v73 = &v53 - v22;
  result = MEMORY[0x28223BE20](v21);
  v72 = &v53 - v25;
  v55 = a2;
  if (a3 != a2)
  {
    v26 = *a4;
    v27 = *(v24 + 72);
    v63 = (v8 + 8);
    v64 = v13;
    v28 = v26 + v27 * (a3 - 1);
    v60 = -v27;
    v61 = v26;
    v29 = a1 - a3;
    v54 = v27;
    v30 = v26 + v27 * a3;
LABEL_5:
    v58 = v28;
    v59 = a3;
    v56 = v30;
    v57 = v29;
    v69 = v29;
    while (1)
    {
      v70 = v28;
      v71 = v30;
      v31 = v72;
      sub_227115454(v30, v72);
      v32 = v73;
      sub_227115454(v28, v73);
      v33 = v31;
      v34 = v74;
      sub_227115454(v33, v74);
      v35 = *(v13 + 48);
      v36 = v66;
      sub_2276691A0();
      v37 = sub_2276691E0();
      v38 = *(*(v37 - 8) + 8);
      v38(v34 + v35, v37);
      v39 = v32;
      v40 = v65;
      sub_227115454(v39, v65);
      v41 = *(v13 + 48);
      v42 = v67;
      sub_2276691A0();
      v38(v40 + v41, v37);
      v43 = sub_2276626C0();
      v44 = *v63;
      v45 = v42;
      v13 = v64;
      v46 = v68;
      (*v63)(v45, v68);
      v44(v36, v46);
      v47 = sub_2276624A0();
      v48 = *(*(v47 - 8) + 8);
      v48(v40, v47);
      v48(v74, v47);
      v49 = v70;
      sub_226E97D1C(v73, &qword_27D7BAB90, &unk_227679588);
      v50 = v71;
      result = sub_226E97D1C(v72, &qword_27D7BAB90, &unk_227679588);
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v59 + 1;
        v28 = v58 + v54;
        v29 = v57 - 1;
        v30 = v56 + v54;
        if (v59 + 1 == v55)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v61)
      {
        break;
      }

      v51 = v62;
      sub_227111674(v50, v62);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_227111674(v51, v49);
      v28 = v49 + v60;
      v30 = v50 + v60;
      if (__CFADD__(v69++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227115B44(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v163 = a1;
  v183 = sub_227662750();
  v8 = *(v183 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v183);
  v182 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v181 = &v160 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v174 = *(v13 - 8);
  v14 = *(v174 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v160 = (&v160 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v160 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v180 = &v160 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v188 = &v160 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v190 = &v160 - v24;
  result = MEMORY[0x28223BE20](v23);
  v189 = &v160 - v26;
  v27 = a3[1];
  v164 = a3;
  if (v27 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_96:
    v29 = *v163;
    if (!*v163)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_98:
      v191 = v30;
      v155 = *(v30 + 2);
      if (v155 >= 2)
      {
        while (1)
        {
          v156 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = (v155 - 1);
          v157 = *&v30[16 * v155];
          v158 = *&v30[16 * v155 + 24];
          sub_2271168E8(v156 + *(v174 + 72) * v157, v156 + *(v174 + 72) * *&v30[16 * v155 + 16], v156 + *(v174 + 72) * v158, v29);
          if (v5)
          {
          }

          if (v158 < v157)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v30 = sub_2271171D0(v30);
          }

          if (v155 - 2 >= *(v30 + 2))
          {
            goto LABEL_122;
          }

          v159 = &v30[16 * v155];
          *v159 = v157;
          *(v159 + 1) = v158;
          v191 = v30;
          result = sub_227117144(a3);
          v30 = v191;
          v155 = *(v191 + 2);
          a3 = v164;
          if (v155 <= 1)
          {
          }
        }
      }
    }

LABEL_128:
    result = sub_2271171D0(v30);
    v30 = result;
    goto LABEL_98;
  }

  v28 = v27;
  v161 = a4;
  v29 = 0;
  v179 = (v8 + 8);
  v30 = MEMORY[0x277D84F90];
  v184 = v13;
  while (1)
  {
    v31 = v29 + 1;
    v165 = v30;
    v173 = v29;
    if (v29 + 1 >= v28)
    {
      v53 = v29;
      v56 = v29 + 1;
    }

    else
    {
      v175 = v28;
      v162 = v5;
      v187 = *a3;
      v32 = v187;
      v33 = *(v174 + 72);
      v177 = v33;
      v34 = v187 + v33 * v31;
      v35 = v189;
      sub_227115454(v34, v189);
      sub_227115454(v32 + v33 * v173, v190);
      v36 = v188;
      sub_227115454(v35, v188);
      v37 = *(v13 + 48);
      v38 = v36;
      v39 = v181;
      sub_2276691A0();
      v40 = sub_2276691E0();
      v41 = *(v40 - 8);
      v42 = *(v41 + 8);
      v43 = v41 + 8;
      v42(v38 + v37, v40);
      v44 = v180;
      sub_227115454(v190, v180);
      v45 = *(v13 + 48);
      v46 = v182;
      sub_2276691A0();
      v171 = v42;
      v172 = v40;
      v170 = v43;
      v42(v44 + v45, v40);
      LODWORD(v176) = sub_2276626C0();
      v47 = *v179;
      v48 = v183;
      (*v179)(v46, v183);
      v169 = v47;
      (v47)(v39, v48);
      v49 = sub_2276624A0();
      v50 = *(v49 - 8);
      v51 = *(v50 + 8);
      v52 = v50 + 8;
      v51(v44, v49);
      v168 = v49;
      v167 = v51;
      v166 = v52;
      v51(v188, v49);
      v29 = &qword_27D7BAB90;
      sub_226E97D1C(v190, &qword_27D7BAB90, &unk_227679588);
      v53 = v173;
      result = sub_226E97D1C(v189, &qword_27D7BAB90, &unk_227679588);
      v54 = v53 + 2;
      v55 = v187 + v177 * (v53 + 2);
      while (1)
      {
        v56 = v175;
        if (v175 == v54)
        {
          break;
        }

        v186 = v54;
        v187 = v55;
        v57 = v189;
        sub_227115454(v55, v189);
        v185 = v34;
        v58 = v190;
        sub_227115454(v34, v190);
        v59 = v188;
        sub_227115454(v57, v188);
        v60 = v184;
        v61 = *(v184 + 48);
        v62 = v181;
        sub_2276691A0();
        v64 = v171;
        v63 = v172;
        (v171)(v59 + v61, v172);
        v65 = v58;
        v66 = v180;
        sub_227115454(v65, v180);
        v67 = *(v60 + 48);
        v68 = v182;
        sub_2276691A0();
        v64(v66 + v67, v63);
        v69 = sub_2276626C0() & 1;
        v70 = v183;
        v71 = v169;
        (v169)(v68, v183);
        (v71)(v62, v70);
        v72 = v168;
        v73 = v167;
        v167(v66, v168);
        v73(v59, v72);
        v53 = v173;
        v29 = &qword_27D7BAB90;
        sub_226E97D1C(v190, &qword_27D7BAB90, &unk_227679588);
        result = sub_226E97D1C(v189, &qword_27D7BAB90, &unk_227679588);
        v54 = v186 + 1;
        v55 = v187 + v177;
        v34 = v185 + v177;
        if ((v176 & 1) != v69)
        {
          v56 = v186;
          break;
        }
      }

      v13 = v184;
      v5 = v162;
      v30 = v165;
      a3 = v164;
      if (v176)
      {
        v29 = v160;
        if (v56 < v53)
        {
          goto LABEL_125;
        }

        if (v53 < v56)
        {
          v74 = v56;
          v75 = v177 * (v56 - 1);
          v76 = v56 * v177;
          v175 = v56;
          v77 = v53 * v177;
          do
          {
            if (v53 != --v74)
            {
              v78 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              sub_227111674(v78 + v77, v29);
              if (v77 < v75 || v78 + v77 >= (v78 + v76))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v77 != v75)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_227111674(v29, v78 + v75);
              v30 = v165;
            }

            ++v53;
            v75 -= v177;
            v76 -= v177;
            v77 += v177;
          }

          while (v53 < v74);
          v5 = v162;
          v13 = v184;
          v53 = v173;
          v56 = v175;
        }
      }
    }

    v79 = a3[1];
    if (v56 >= v79)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v56, v53))
    {
      goto LABEL_124;
    }

    if (v56 - v53 >= v161)
    {
LABEL_32:
      v29 = v56;
      if (v56 < v53)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v53, v161))
    {
      goto LABEL_126;
    }

    if (v53 + v161 >= v79)
    {
      v29 = a3[1];
    }

    else
    {
      v29 = (v53 + v161);
    }

    if (v29 < v53)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v56 == v29)
    {
      goto LABEL_32;
    }

    v162 = v5;
    v127 = *a3;
    v128 = *(v174 + 72);
    v129 = *a3 + v128 * (v56 - 1);
    v176 = -v128;
    v177 = v127;
    v130 = (v53 - v56);
    v168 = v128;
    v131 = v127 + v56 * v128;
    v169 = v29;
LABEL_87:
    v175 = v56;
    v170 = v131;
    v171 = v130;
    v132 = v130;
    v172 = v129;
LABEL_88:
    v186 = v131;
    v187 = v132;
    v133 = v189;
    sub_227115454(v131, v189);
    v185 = v129;
    v134 = v190;
    sub_227115454(v129, v190);
    v135 = v133;
    v136 = v188;
    sub_227115454(v135, v188);
    v137 = *(v13 + 48);
    v138 = v181;
    sub_2276691A0();
    v139 = sub_2276691E0();
    v140 = *(*(v139 - 8) + 8);
    v140(v136 + v137, v139);
    v141 = v134;
    v142 = v180;
    sub_227115454(v141, v180);
    v143 = *(v13 + 48);
    v144 = v182;
    sub_2276691A0();
    v140(v142 + v143, v139);
    v145 = sub_2276626C0();
    v146 = *v179;
    v147 = v183;
    (*v179)(v144, v183);
    (v146)(v138, v147);
    v148 = sub_2276624A0();
    v149 = *(*(v148 - 8) + 8);
    v149(v142, v148);
    v149(v188, v148);
    sub_226E97D1C(v190, &qword_27D7BAB90, &unk_227679588);
    result = sub_226E97D1C(v189, &qword_27D7BAB90, &unk_227679588);
    if (v145)
    {
      break;
    }

    v13 = v184;
LABEL_86:
    v56 = v175 + 1;
    v129 = v172 + v168;
    v130 = v171 - 1;
    v131 = v170 + v168;
    v29 = v169;
    if ((v175 + 1) != v169)
    {
      goto LABEL_87;
    }

    v5 = v162;
    a3 = v164;
    v30 = v165;
    v53 = v173;
    if (v169 < v173)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_2273A4F9C(0, *(v30 + 2) + 1, 1, v30);
      v30 = result;
    }

    v81 = *(v30 + 2);
    v80 = *(v30 + 3);
    v82 = v81 + 1;
    if (v81 >= v80 >> 1)
    {
      result = sub_2273A4F9C((v80 > 1), v81 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 2) = v82;
    v83 = &v30[16 * v81];
    *(v83 + 4) = v53;
    *(v83 + 5) = v29;
    if (!*v163)
    {
      goto LABEL_133;
    }

    if (v81)
    {
      v84 = *v163;
      while (1)
      {
        v85 = v82 - 1;
        if (v82 >= 4)
        {
          break;
        }

        if (v82 == 3)
        {
          v86 = *(v30 + 4);
          v87 = *(v30 + 5);
          v96 = __OFSUB__(v87, v86);
          v88 = v87 - v86;
          v89 = v96;
LABEL_53:
          if (v89)
          {
            goto LABEL_112;
          }

          v102 = &v30[16 * v82];
          v104 = *v102;
          v103 = *(v102 + 1);
          v105 = __OFSUB__(v103, v104);
          v106 = v103 - v104;
          v107 = v105;
          if (v105)
          {
            goto LABEL_115;
          }

          v108 = &v30[16 * v85 + 32];
          v110 = *v108;
          v109 = *(v108 + 1);
          v96 = __OFSUB__(v109, v110);
          v111 = v109 - v110;
          if (v96)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v106, v111))
          {
            goto LABEL_119;
          }

          if (v106 + v111 >= v88)
          {
            if (v88 < v111)
            {
              v85 = v82 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v112 = &v30[16 * v82];
        v114 = *v112;
        v113 = *(v112 + 1);
        v96 = __OFSUB__(v113, v114);
        v106 = v113 - v114;
        v107 = v96;
LABEL_67:
        if (v107)
        {
          goto LABEL_114;
        }

        v115 = &v30[16 * v85];
        v117 = *(v115 + 4);
        v116 = *(v115 + 5);
        v96 = __OFSUB__(v116, v117);
        v118 = v116 - v117;
        if (v96)
        {
          goto LABEL_117;
        }

        if (v118 < v106)
        {
          goto LABEL_3;
        }

LABEL_74:
        v123 = v85 - 1;
        if (v85 - 1 >= v82)
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
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v124 = *&v30[16 * v123 + 32];
        v125 = *&v30[16 * v85 + 40];
        sub_2271168E8(*a3 + *(v174 + 72) * v124, *a3 + *(v174 + 72) * *&v30[16 * v85 + 32], *a3 + *(v174 + 72) * v125, v84);
        if (v5)
        {
        }

        if (v125 < v124)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_2271171D0(v30);
        }

        if (v123 >= *(v30 + 2))
        {
          goto LABEL_109;
        }

        v126 = &v30[16 * v123];
        *(v126 + 4) = v124;
        *(v126 + 5) = v125;
        v191 = v30;
        result = sub_227117144(v85);
        v30 = v191;
        v82 = *(v191 + 2);
        v13 = v184;
        if (v82 <= 1)
        {
          goto LABEL_3;
        }
      }

      v90 = &v30[16 * v82 + 32];
      v91 = *(v90 - 64);
      v92 = *(v90 - 56);
      v96 = __OFSUB__(v92, v91);
      v93 = v92 - v91;
      if (v96)
      {
        goto LABEL_110;
      }

      v95 = *(v90 - 48);
      v94 = *(v90 - 40);
      v96 = __OFSUB__(v94, v95);
      v88 = v94 - v95;
      v89 = v96;
      if (v96)
      {
        goto LABEL_111;
      }

      v97 = &v30[16 * v82];
      v99 = *v97;
      v98 = *(v97 + 1);
      v96 = __OFSUB__(v98, v99);
      v100 = v98 - v99;
      if (v96)
      {
        goto LABEL_113;
      }

      v96 = __OFADD__(v88, v100);
      v101 = v88 + v100;
      if (v96)
      {
        goto LABEL_116;
      }

      if (v101 >= v93)
      {
        v119 = &v30[16 * v85 + 32];
        v121 = *v119;
        v120 = *(v119 + 1);
        v96 = __OFSUB__(v120, v121);
        v122 = v120 - v121;
        if (v96)
        {
          goto LABEL_120;
        }

        if (v88 < v122)
        {
          v85 = v82 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v28 = a3[1];
    if (v29 >= v28)
    {
      goto LABEL_96;
    }
  }

  v150 = v187;
  if (v177)
  {
    v151 = v186;
    v152 = v178;
    sub_227111674(v186, v178);
    v13 = v184;
    v153 = v185;
    swift_arrayInitWithTakeFrontToBack();
    sub_227111674(v152, v153);
    v129 = v153 + v176;
    v131 = v151 + v176;
    v154 = __CFADD__(v150, 1);
    v132 = (v150 + 1);
    if (v154)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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

uint64_t sub_2271168E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = sub_227662750();
  v8 = *(v86 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v86);
  v85 = v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v84 = v75 - v12;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v13 = *(*(v93 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v93);
  v83 = v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v88 = v75 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v92 = v75 - v19;
  result = MEMORY[0x28223BE20](v18);
  v94 = v75 - v21;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_60;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_61;
  }

  v25 = (a2 - a1) / v23;
  v97 = a1;
  v96 = a4;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v49 = a4 + v27;
    if (v27 >= 1)
    {
      v50 = -v23;
      v77 = (v8 + 8);
      v78 = -v23;
      v51 = v49;
      v89 = a4;
      v90 = a1;
      v52 = v92;
      while (2)
      {
        while (1)
        {
          v75[0] = v49;
          v53 = a2 + v50;
          v91 = a2 + v50;
          v79 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v97 = a2;
              v95 = v75[0];
              goto LABEL_58;
            }

            v76 = v49;
            v87 = a3 + v50;
            v55 = v51 + v50;
            v80 = (v51 + v50);
            v56 = v94;
            v82 = a3;
            sub_227115454(v55, v94);
            sub_227115454(v53, v52);
            v57 = v56;
            v58 = v88;
            sub_227115454(v57, v88);
            v59 = v93;
            v60 = *(v93 + 48);
            v61 = v84;
            sub_2276691A0();
            v62 = sub_2276691E0();
            v63 = *(v62 - 8);
            v81 = v51;
            v64 = *(v63 + 8);
            v64(v58 + v60, v62);
            v65 = v83;
            sub_227115454(v52, v83);
            v66 = *(v59 + 48);
            v67 = v85;
            sub_2276691A0();
            v64(v65 + v66, v62);
            v68 = sub_2276626C0();
            v69 = *v77;
            v70 = v86;
            (*v77)(v67, v86);
            v69(v61, v70);
            v71 = sub_2276624A0();
            v72 = *(*(v71 - 8) + 8);
            v72(v65, v71);
            v72(v88, v71);
            sub_226E97D1C(v52, &qword_27D7BAB90, &unk_227679588);
            sub_226E97D1C(v94, &qword_27D7BAB90, &unk_227679588);
            if (v68)
            {
              break;
            }

            v73 = v80;
            v49 = v80;
            a3 = v87;
            if (v82 < v81 || v87 >= v81)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v90;
              v53 = v91;
              v50 = v78;
            }

            else
            {
              a1 = v90;
              v53 = v91;
              v50 = v78;
              if (v82 != v81)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v51 = v49;
            v54 = v73 > v89;
            a2 = v79;
            if (!v54)
            {
              goto LABEL_56;
            }
          }

          v51 = v81;
          a3 = v87;
          v74 = v89;
          if (v82 < v79 || v87 >= v79)
          {
            break;
          }

          a1 = v90;
          a2 = v91;
          v49 = v76;
          v50 = v78;
          if (v82 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v51 <= v74)
          {
            goto LABEL_56;
          }
        }

        a2 = v91;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v90;
        v49 = v76;
        v50 = v78;
        if (v51 > v74)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v97 = a2;
    v95 = v49;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || a1 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v82 = a4 + v26;
    v95 = a4 + v26;
    if (v26 >= 1 && a2 < a3)
    {
      v80 = (v8 + 8);
      v81 = v23;
      v87 = a3;
      do
      {
        v89 = a4;
        v90 = a1;
        v91 = a2;
        v29 = v94;
        sub_227115454(a2, v94);
        v30 = v92;
        sub_227115454(a4, v92);
        v31 = v88;
        sub_227115454(v29, v88);
        v32 = v93;
        v33 = *(v93 + 48);
        v34 = v84;
        sub_2276691A0();
        v35 = sub_2276691E0();
        v36 = *(*(v35 - 8) + 8);
        v36(v31 + v33, v35);
        v37 = v30;
        v38 = v83;
        sub_227115454(v37, v83);
        v39 = *(v32 + 48);
        v40 = v85;
        sub_2276691A0();
        v36(v38 + v39, v35);
        v41 = sub_2276626C0();
        v42 = *v80;
        v43 = v86;
        (*v80)(v40, v86);
        v42(v34, v43);
        v44 = sub_2276624A0();
        v45 = *(*(v44 - 8) + 8);
        v45(v38, v44);
        v45(v31, v44);
        sub_226E97D1C(v92, &qword_27D7BAB90, &unk_227679588);
        sub_226E97D1C(v94, &qword_27D7BAB90, &unk_227679588);
        if (v41)
        {
          v46 = v81;
          v47 = v90;
          a2 = v91 + v81;
          a4 = v89;
          if (v90 < v91 || v90 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v87;
          }

          else
          {
            v48 = v87;
            if (v90 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v47 = v90;
          a2 = v91;
          v46 = v81;
          a4 = v89 + v81;
          if (v90 < v89 || v90 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v48 = v87;
          }

          else
          {
            v48 = v87;
            if (v90 != v89)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v96 = a4;
        }

        a1 = v47 + v46;
        v97 = a1;
      }

      while (a4 < v82 && a2 < v48);
    }
  }

LABEL_58:
  sub_227117284(&v97, &v96, &v95, &qword_27D7BAB90, &unk_227679588);
  return 1;
}

uint64_t sub_227117144(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2271171D0(v3);
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

uint64_t sub_227117284(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227117414(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2271174FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABA0, &qword_227679598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_227117ADC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_227117B24()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_227117B8C()
{
  result = qword_27D7BB290;
  if (!qword_27D7BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB290);
  }

  return result;
}

uint64_t sub_227117BE0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[5] = a6;
  v12 = sub_22766A100();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5E0B4(a1, a2);
  sub_227117ADC(&qword_27D7BAB58, MEMORY[0x277D4F440]);
  result = sub_2276683D0();
  if (!v6)
  {
    v18 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v19 = *(a5 + 16);
    v20 = sub_226FC5B44(a4, *v18, v18[1], *(v18 + 16), v18[3]);
    v21 = qword_2813B2078;
    swift_beginAccess();
    (*(v13 + 24))(v20 + v21, v16, v12);
    swift_endAccess();
    sub_226FDDB10();
    (*(v13 + 8))(v16, v12);
  }

  return result;
}

uint64_t sub_227117DCC()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = *v7;

  sub_226F777E0(sub_227118E30, v8);

  v10 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = *v10;

  sub_226F77804(sub_227118E38, v11);

  v13 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = *v13;

  sub_226F778B8(sub_227118E40, v14);

  v16 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = *v16;

  sub_226F7784C(sub_227118E48, v17);

  v19 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = *v19;

  sub_226F77870(sub_227118E50, v20);

  v22 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = *v22;

  sub_226F77894(sub_227118E58, v23);

  v25 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = *v25;

  sub_226F77828(sub_227118E60, v26);

  v28 = __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v29 = swift_allocObject();
  swift_weakInit();
  v30 = *v28;

  sub_226F778DC(sub_227118E68, v29);
}

uint64_t sub_2271181EC()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227119068();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118368()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227119014();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_2271184E4()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227118FC0();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118660()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227118F6C();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_2271187DC()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227118F18();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118958()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227118EC4();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118AD4()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_227118E70();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118C50()
{
  v0 = sub_22766B390();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v9);

    v6 = *__swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v1 + 8))(v4, v0);
    v8 = *(v6 + 16);
    v7 = *(v6 + 24);
    swift_getObjectType();
    sub_226FFDCDC();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

uint64_t sub_227118DCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_227118E70()
{
  result = qword_28139DEB0;
  if (!qword_28139DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DEB0);
  }

  return result;
}

unint64_t sub_227118EC4()
{
  result = qword_28139D3B0;
  if (!qword_28139D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3B0);
  }

  return result;
}

unint64_t sub_227118F18()
{
  result = qword_28139D798;
  if (!qword_28139D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D798);
  }

  return result;
}

unint64_t sub_227118F6C()
{
  result = qword_28139D690;
  if (!qword_28139D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D690);
  }

  return result;
}

unint64_t sub_227118FC0()
{
  result = qword_28139DB40;
  if (!qword_28139DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DB40);
  }

  return result;
}

unint64_t sub_227119014()
{
  result = qword_28139D3A8;
  if (!qword_28139D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3A8);
  }

  return result;
}

unint64_t sub_227119068()
{
  result = qword_28139D3A0;
  if (!qword_28139D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3A0);
  }

  return result;
}

void *XPCClientZoneMonitor.__allocating_init(reporter:eventHub:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  ObjectType = swift_getObjectType();
  v11 = sub_227119584(v9, a2, v3, v7, ObjectType, v8, a3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

void *XPCClientZoneMonitor.init(reporter:eventHub:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  ObjectType = swift_getObjectType();
  v15 = sub_227119424(v12, a2, v3, v7, ObjectType, v8, a3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

uint64_t sub_227119264()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_227669670();
    if (v7)
    {
      v8 = v6;
      v9 = v7;
      v10 = sub_22766C4B0();
      (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v5;
      v11[5] = v8;
      v11[6] = v9;
      sub_2272CA940(0, 0, v3, &unk_227679FD8, v11);
    }
  }

  return result;
}

uint64_t *XPCClientZoneMonitor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];

  return v0;
}

uint64_t XPCClientZoneMonitor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];

  return swift_deallocClassInstance();
}

void *sub_227119424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18[3] = a4;
  v18[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v18);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  sub_226E91B50(v18, (a3 + 2));
  a3[7] = a2;
  a3[8] = a7;
  v13 = sub_227669B50();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  swift_unknownObjectRetain_n();
  a3[9] = sub_227669B40();
  sub_227669680();
  swift_allocObject();
  swift_weakInit();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v17);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return a3;
}

void *sub_227119584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a4 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](a1);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  (*(v13 + 16))(v16, a1, a4);
  return sub_227119424(v16, a2, v17, a4, a5, a6, a7);
}

void sub_227119714(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = v24 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v24 - v13;
  v15 = [a1 tipIdentifier];
  if (v15)
  {
    v24[3] = a2;
    v16 = v15;
    v24[2] = sub_22766C000();

    v17 = [a1 date];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v5 + 32))(v14, v12, v4);
      v19 = [a1 journalIdentifier];
      if (v19)
      {
        v20 = v19;
        sub_22766C000();
        v24[1] = v21;

        (*(v5 + 16))(v9, v14, v4);
        [a1 elapsedTime];
        [a1 totalTime];
        sub_227665080();

        (*(v5 + 8))(v14, v4);
        return;
      }

      (*(v5 + 8))(v14, v4);
    }

    else
    {
    }
  }

  v22 = sub_227664DD0();
  sub_22711A10C(&qword_28139B8D0, MEMORY[0x277D51040]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
  swift_willThrow();
}

size_t static CatalogTipJournal.representativeSamples()()
{
  v42 = sub_227662750();
  v34 = *(v42 - 8);
  v0 = *(v34 + 64);
  MEMORY[0x28223BE20](v42);
  v41 = &v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  v2 = *(v40 - 1);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v40);
  v5 = &v33 - v4;
  v39 = sub_2276650A0();
  v6 = *(v39 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v39);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766C090();
  v37 = sub_227662630();
  v11 = sub_22766C090();
  sub_226F5D274();
  v12 = sub_22766BE70();
  v13 = sub_22766BE70();
  v57 = v12;
  v58[0] = v37;
  v58[1] = v58;
  v58[2] = &v57;
  v55 = v10;
  v56 = v11;
  v58[3] = &v56;
  v58[4] = &v55;
  v54 = v13;
  v58[5] = &v54;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v50 = v14;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v52 = v51;
  v53 = v14;
  v44 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v15 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v45 = v15;
  v46 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v47 = v46;
  v48 = v15;
  v16 = sub_2276638E0();

  v17 = *(v16 + 16);
  if (v17)
  {
    v43 = MEMORY[0x277D84F90];
    result = sub_226F1F848(0, v17, 0);
    v19 = 0;
    v20 = v43;
    v35 = v16 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v34 += 16;
    v33 = v6 + 32;
    v38 = v2;
    v37 = v16;
    v36 = v17;
    v21 = v41;
    while (v19 < *(v16 + 16))
    {
      v22 = v6;
      sub_227119FDC(v35 + *(v2 + 72) * v19, v5);
      v23 = *&v5[v40[12]];
      v24 = &v5[v40[16]];
      v25 = *v24;
      v26 = *(v24 + 1);
      v27 = &v5[v40[20]];
      v28 = *v27;
      v29 = *(v27 + 1);
      v30 = *&v5[v40[24]];
      (*v34)(v21, v5, v42);

      sub_227665080();
      sub_22711A04C(v5);
      v43 = v20;
      v32 = *(v20 + 16);
      v31 = *(v20 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F848(v31 > 1, v32 + 1, 1);
        v20 = v43;
      }

      ++v19;
      *(v20 + 16) = v32 + 1;
      v6 = v22;
      result = (*(v22 + 32))(v20 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v32, v9, v39);
      v2 = v38;
      v16 = v37;
      if (v36 == v19)
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

uint64_t sub_227119FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22711A04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22711A0B4(uint64_t a1)
{
  result = sub_22711A10C(&qword_2813A5730, MEMORY[0x277D51330]);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22711A10C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_22711A154(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665050();
  v7 = sub_22766BFD0();

  [a1 setTipIdentifier_];

  sub_227665070();
  v8 = sub_2276626A0();
  (*(v3 + 8))(v6, v2);
  [a1 setDate_];

  sub_227665060();
  v9 = sub_22766BFD0();

  [a1 setJournalIdentifier_];

  sub_227665040();
  [a1 setElapsedTime_];
  sub_227665090();
  return [a1 setTotalTime_];
}

uint64_t sub_22711A2EC()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 32);
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v1 + 32);

    v10 = 32;
    do
    {
      notify_cancel(*(v7 + v10));
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  v11 = *(v1 + 16);
  swift_unknownObjectRelease();
  v12 = *(v1 + 32);

  return v1;
}

uint64_t sub_22711A424()
{
  sub_22711A2EC();

  return swift_deallocClassInstance();
}

uint64_t sub_22711A47C(unsigned __int8 *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v5 = sub_22766B390();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v13 = &v39 - v12;
  v14 = *a1;
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_24;
    }

    v40 = v11;
    v41 = result;
    v42 = v2;
    v16 = "AssetPreferencesObserver.swift";
    v15 = 0xD00000000000002ELL;
  }

  else
  {
    v40 = v11;
    v41 = result;
    v42 = v2;
    if (v14)
    {
      v15 = 0xD00000000000002BLL;
    }

    else
    {
      v15 = 0xD000000000000027;
    }

    if (v14)
    {
      v16 = "ncesChangedNotification";
    }

    else
    {
      v16 = "PreferencesChangedNotification";
    }
  }

  v17 = v16 | 0x8000000000000000;
  out_token = -1;
  sub_226EA1CF4();

  v18 = sub_22766C950();
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v15;
  *(v20 + 24) = v17;
  *(v20 + 32) = v19;
  *(v20 + 40) = v14;
  aBlock[4] = sub_22711AD1C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2275D18A0;
  aBlock[3] = &block_descriptor_15;
  v21 = _Block_copy(aBlock);

  v22 = sub_22766C0B0();

  v23 = notify_register_dispatch((v22 + 32), &out_token, v18, v21);

  _Block_release(v21);

  if (v23 || out_token == -1)
  {
    sub_22766A6C0();

    v29 = sub_22766B380();
    v30 = sub_22766C890();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      aBlock[0] = v32;
      *v31 = 136446466;
      v33 = sub_226E97AE8(v15, v17, aBlock);

      *(v31 + 4) = v33;
      *(v31 + 12) = 1026;
      *(v31 + 14) = v23;
      _os_log_impl(&dword_226E8E000, v29, v30, "[AssetPreferencesObserver] Error registering for %{public}s, with status: %{public}u", v31, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AA9A450](v32, -1, -1);
      MEMORY[0x22AA9A450](v31, -1, -1);
    }

    else
    {
    }

    result = (*(v40 + 8))(v9, v41);
  }

  else
  {
    sub_22766A6C0();

    v24 = sub_22766B380();
    v25 = sub_22766C8B0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      v28 = sub_226E97AE8(v15, v17, aBlock);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_226E8E000, v24, v25, "[AssetPreferencesObserver] Started observing %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AA9A450](v27, -1, -1);
      MEMORY[0x22AA9A450](v26, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v13, v41);
    v34 = out_token;
    v35 = *(a2 + 32);
    result = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 32) = v35;
    if ((result & 1) == 0)
    {
      result = sub_2273A6784(0, *(v35 + 16) + 1, 1, v35);
      v35 = result;
      *(a2 + 32) = result;
    }

    v37 = *(v35 + 16);
    v36 = *(v35 + 24);
    if (v37 >= v36 >> 1)
    {
      result = sub_2273A6784((v36 > 1), v37 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 16) = v37 + 1;
    *(v35 + 4 * v37 + 32) = v34;
    *(a2 + 32) = v35;
  }

LABEL_24:
  v38 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_22711A9C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v13 = sub_22766B380();
  v14 = sub_22766C8B0();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v21 = v5;
    v5 = v15;
    v16 = swift_slowAlloc();
    v23 = v16;
    *v5 = 136315138;
    *(v5 + 4) = sub_226E97AE8(a2, a3, &v23);
    _os_log_impl(&dword_226E8E000, v13, v14, "[AssetPreferencesObserver] Received %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AA9A450](v16, -1, -1);
    v17 = v5;
    LOBYTE(v5) = v21;
    MEMORY[0x22AA9A450](v17, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = *(result + 16);
    v20 = *(result + 24);
    swift_unknownObjectRetain();

    swift_getObjectType();
    v22 = v5;
    sub_22711AD2C();
    sub_2276699D0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22711ABE8()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_22766BFD0();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226F04970(&v8, v9);
    sub_226EBC888(v9);
    v4 = [v0 standardUserDefaults];
    v5 = sub_22766BFD0();
    v6 = [v4 BOOLForKey_];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    sub_226EBC888(v9);
    return 1;
  }

  return v6;
}

unint64_t sub_22711AD2C()
{
  result = qword_28139FA00;
  if (!qword_28139FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139FA00);
  }

  return result;
}

void sub_22711AD90(unint64_t a1, unint64_t *a2)
{
  v4 = sub_227665100();
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  isUniquelyReferenced_nonNull_native = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v38 = v32 - v9;
  if (a1 >> 62)
  {
LABEL_26:
    v10 = sub_22766CD20();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      v37 = a1 & 0xC000000000000001;
      v40 = (v39 + 32);
      v32[2] = v39 + 40;
      v33 = v10;
      v34 = a2;
      v35 = a1;
      do
      {
        if (v37)
        {
          v13 = MEMORY[0x22AA991A0](v11, a1);
        }

        else
        {
          if (v11 >= *(v36 + 16))
          {
            goto LABEL_22;
          }

          v13 = *(a1 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v15 = [v13 objectID];
        if (([v14 activityType] & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v41 = v11 + 1;
        [v14 activeCalorieRate];
        v42 = v14;
        [v14 basalCalorieRate];
        v16 = v38;
        sub_2276650B0();
        v17 = *v40;
        v18 = isUniquelyReferenced_nonNull_native;
        v19 = v16;
        v20 = v4;
        (*v40)(isUniquelyReferenced_nonNull_native, v19, v4);
        v21 = *a2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v43 = *a2;
        a1 = v43;
        v4 = sub_226F3A030(v15);
        v23 = *(a1 + 16);
        v24 = (v22 & 1) == 0;
        v25 = v23 + v24;
        if (__OFADD__(v23, v24))
        {
          goto LABEL_24;
        }

        a2 = v22;
        if (*(a1 + 24) >= v25)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226FF3DC0();
          }
        }

        else
        {
          sub_226FEAECC(v25, isUniquelyReferenced_nonNull_native);
          v26 = sub_226F3A030(v15);
          if ((a2 & 1) != (v27 & 1))
          {
            sub_226ED9864();
            sub_22766D220();
            __break(1u);
            return;
          }

          v4 = v26;
        }

        isUniquelyReferenced_nonNull_native = v18;
        a1 = v43;
        if (a2)
        {
          v12 = v43[7] + *(v39 + 72) * v4;
          v4 = v20;
          (*(v39 + 40))(v12, v18, v20);
        }

        else
        {
          v43[(v4 >> 6) + 8] |= 1 << v4;
          *(*(a1 + 48) + 8 * v4) = v15;
          v28 = *(a1 + 56) + *(v39 + 72) * v4;
          v4 = v20;
          v17(v28, v18, v20);
          v29 = *(a1 + 16);
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_25;
          }

          *(a1 + 16) = v31;
        }

        a2 = v34;
        *v34 = a1;

        ++v11;
        a1 = v35;
      }

      while (v41 != v33);
    }
  }
}

void sub_22711B134(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v4 = *(*(v3 - 8) + 64);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16 - v6;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v9 = 0;
    v18 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v18)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1, v5);
      }

      else
      {
        if (v9 >= *(v17 + 16))
        {
          goto LABEL_15;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 objectID];
      v14 = v11;
      sub_2275ED4C0(v14, v7);
      if (v1)
      {

        return;
      }

      v15 = sub_2276638D0();
      (*(*(v15 - 8) + 56))(v7, 0, 1, v15);
      sub_227363F34(v7, v13);

      ++v9;
      if (v12 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_22711B300(unint64_t a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, id, uint64_t))
{
  v30 = a5;
  v32 = a4;
  v8 = v5;
  v27 = a2;
  v29 = a3(0);
  v10 = *(v29 - 8);
  v11 = v10[8];
  v12 = MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v31 = &v24 - v14;
  if (a1 >> 62)
  {
LABEL_15:
    v15 = sub_22766CD20();
    v33 = v8;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v5;
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v25 = a1 & 0xFFFFFFFFFFFFFF8;
      v26 = a1 & 0xC000000000000001;
      v24 = (v10 + 4);
      do
      {
        if (v26)
        {
          v17 = MEMORY[0x22AA991A0](v16, a1);
          v8 = v33;
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return;
          }
        }

        else
        {
          v8 = v33;
          if (v16 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v17 = *(a1 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = [v17 objectID];
        v6 = v17;
        v19 = v31;
        v32();
        if (v8)
        {
          goto LABEL_13;
        }

        v33 = 0;
        v20 = v28;
        (*v24)(v28, v19, v29);
        v21 = v27;
        v22 = *v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v34 = *v21;
        v10 = &v34;
        v30(v20, v7, isUniquelyReferenced_nonNull_native);

        *v21 = v34;
        ++v16;
      }

      while (v18 != v15);
    }
  }
}

uint64_t sub_22711B568(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v27 = a4;
  v28 = a5;
  v7 = a2(0);
  v26 = *(v7 - 8);
  v8 = *(v26 + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v25 - v13;
  result = MEMORY[0x28223BE20](v12);
  v17 = &v25 - v16;
  v18 = 0;
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 56);
  for (i = (v19 + 63) >> 6; v21; result = sub_227125F0C(v14, a3))
  {
    v23 = v18;
LABEL_9:
    v24 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    sub_227125EA4(*(a1 + 48) + *(v26 + 72) * (v24 | (v23 << 6)), v17, a3);
    sub_227125E3C(v17, v11, v27);
    v28(v14, v11);
  }

  while (1)
  {
    v23 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v23 >= i)
    {
    }

    v21 = *(a1 + 56 + 8 * v23);
    ++v18;
    if (v21)
    {
      v18 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22711B740(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2270BBDB4(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22711B820@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v26 = a4;
  v27 = a8;
  v28 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = type metadata accessor for EfficientQuery();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v25 - v20;
  v22 = a2;
  v23 = a5;
  sub_2275E5F10();
  sub_2275E6000(v16, v22, v23, v21);
  v30 = a6;
  v31 = a7;
  v32 = a3;
  v33 = v26;
  sub_2275E60A4(v28, sub_227125BD8, v29, v17, a6, v27);
  return (*(v18 + 8))(v21, v17);
}

uint64_t sub_22711B9D8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_22711BA3C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = v16 - v12;
  v14 = MEMORY[0x22AA99A00](v11);
  a1();
  objc_autoreleasePoolPop(v14);
  (*(v6 + 16))(v10, v13, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766C460();
  sub_22766C450();
  return (*(v6 + 8))(v13, a4);
}

uint64_t sub_22711BBFC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
  v2 = *(sub_22766C460() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_22711BA3C(v3, v4, v5, v1);
}

void sub_22711BC94(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_22711E874(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E35C(v7);

    sub_22711B568(v8, type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow, sub_2270ADDEC);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711BD70(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_22711ED58(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E51C(v7);

    sub_22711B568(v8, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone, sub_2270AE4A0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711BE4C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D506C0], sub_226F1F0F0, sub_2274CCC00);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E770(v7);

    sub_226EB707C(v8, MEMORY[0x277D506C0], sub_2270AEA04);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C01C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D526D0], sub_226F1F4A8, sub_22739A564);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F402C4(v7);

    sub_226EB707C(v8, MEMORY[0x277D526D0], sub_2270B1DD4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C11C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52038], sub_226F1F4C8, sub_2273F8B54);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40460(v7);

    sub_226EB707C(v8, MEMORY[0x277D52038], sub_2270B20B4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C21C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D4FCA8], sub_226F1F528, sub_227339040);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F405FC(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FCA8], sub_2270B2394);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C31C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D4FF88], sub_226F1F568, sub_226FC2510);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40934(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FF88], sub_2270B2954);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C4C4(uint64_t *a1, unint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, id, uint64_t))
{
  v10 = MEMORY[0x22AA99A00]();
  sub_22711B300(a2, a1, a3, a4, a5);
  objc_autoreleasePoolPop(v10);
}

void sub_22711C544(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50180], sub_226F1F5A8, sub_2275ED4C0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40B78(v7);

    sub_226EB707C(v8, MEMORY[0x277D50180], sub_2270B34E8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C6AC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50978], sub_226F1F628, sub_227218254);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40EB0(v7);

    sub_226EB707C(v8, MEMORY[0x277D50978], sub_2270B3AA8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C87C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50B18], sub_226F1F688, sub_22736CCC4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41520(v7);

    sub_226EB707C(v8, MEMORY[0x277D50B18], sub_2270B4908);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C97C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D4FE80], sub_226F1F6A8, MEMORY[0x277D4FE48]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F416BC(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FE80], sub_2270B4BE8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CBB4(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50CD0], sub_226F1F7E8, sub_227444FA0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41BF4(v7);

    sub_226EB707C(v8, MEMORY[0x277D50CD0], sub_2270B54D8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CD1C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53E88], sub_226F1F868, MEMORY[0x277D53E50]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41F2C(v7);

    sub_226EB707C(v8, MEMORY[0x277D53E88], sub_2270B5A98);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CE84(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52758], sub_226F1F8A8, sub_2272C3710);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42264(v7);

    sub_226EB707C(v8, MEMORY[0x277D52758], sub_2270B6058);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CF84(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50C78], sub_226F1F8C8, sub_227509C4C);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42400(v7);

    sub_226EB707C(v8, MEMORY[0x277D50C78], sub_2270B6338);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D084(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52300], sub_226F1F8E8, sub_22714FBA0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42738(v7);

    sub_226EB707C(v8, MEMORY[0x277D52300], sub_2270B68F8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D184(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51E30], sub_226F1F9A8, sub_2273387F0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F428D4(v7);

    sub_226EB707C(v8, MEMORY[0x277D51E30], sub_2270B6BD8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D284(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53128], sub_226F1F9C8, MEMORY[0x277D53100]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42A70(v7);

    sub_226EB707C(v8, MEMORY[0x277D53128], sub_2270B6EB8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D4A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D538B8], sub_226F1FE88, sub_22764C90C);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44030(v7);

    sub_226EB707C(v8, MEMORY[0x277D538B8], sub_2270B9998);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D5A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D53480], sub_226F1F728, sub_226F5C2F4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F443FC(v7);

    sub_226EB707C(v8, MEMORY[0x277D53480], sub_2270BA074);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D6A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50E98], sub_226F1F828, sub_226F78EC4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F43E94(v7);

    sub_226EB707C(v8, MEMORY[0x277D50E98], sub_2270B96B8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D7A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D528B8], sub_226F1F328, sub_2275D6CF8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3EF74(v7);

    sub_226EB707C(v8, MEMORY[0x277D528B8], sub_2270AFB54);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D9B8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D508B0], sub_226F20108, sub_2274F82A0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44BB8(v7);

    sub_226EB707C(v8, MEMORY[0x277D508B0], sub_2270BB22C);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DAB8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D512F0], sub_226F20168, sub_2275E0D14);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44F08(v7);

    sub_226EB707C(v8, MEMORY[0x277D512F0], sub_2270BB7F4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DBE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = MEMORY[0x22AA99A00]();
  a3(a2, a1);
  objc_autoreleasePoolPop(v6);
}

void sub_22711DC4C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_227122904(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F453DC(v7);

    sub_22711B740(v8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DDE4(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51CF0], sub_226F1F210, sub_226F1C6B4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F45820(v7);

    sub_226EB707C(v8, MEMORY[0x277D51CF0], sub_2270BC5D0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E01C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51680], sub_226F20228, sub_2271E06F4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F467AC(v7);

    sub_226EB707C(v8, MEMORY[0x277D51680], sub_2270B2C34);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E184(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D53C88], sub_226F1FA88, sub_226FAD640);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F46B8C(v7);

    sub_226EB707C(v8, MEMORY[0x277D53C88], sub_2270BE850);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E2EC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52828], sub_226F1F928, sub_226ED4D78);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    sub_227461E28(v7);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E480(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50D88], sub_226F20388, sub_2272CC988);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F47C78(v7);

    sub_226EB707C(v8, MEMORY[0x277D50D88], sub_2270C0C58);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E690(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = MEMORY[0x22AA99A00]();
  a3(a1, a2);
  objc_autoreleasePoolPop(v6);
}

void sub_22711E6FC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v5 = [a1 mergePolicy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  [v4 setMergePolicy_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v11);
  [v4 setParentContext_];
  v6 = [a1 description];
  v7 = sub_22766C000();
  v9 = v8;

  MEMORY[0x22AA98450](v7, v9);

  v10 = sub_22766BFD0();

  [v4 setName_];

  *a2 = v4;
}

size_t sub_22711E874(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v43 - v6;
  v8 = sub_2276694E0();
  v44 = *(v8 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SyncZoneChangeWindow();
  v54 = *(v12 - 8);
  v55 = v12;
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v17 = MEMORY[0x277D84F90];
    if (!v16)
    {
      return v17;
    }

    v49 = v15;
    v59 = MEMORY[0x277D84F90];
    result = sub_226F1EFD0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      break;
    }

    v50 = v11;
    v51 = v8;
    v43 = v2;
    v19 = 0;
    v56 = a1 & 0xC000000000000001;
    v17 = v59;
    v15 = (v44 + 48);
    v52 = (v44 + 48);
    v53 = v7;
    v2 = (v44 + 32);
    v47 = v16;
    v48 = a1;
    v45 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = (v44 + 32);
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v56)
      {
        v21 = MEMORY[0x22AA991A0](v19, a1);
      }

      else
      {
        if (v19 >= *(v45 + 16))
        {
          goto LABEL_23;
        }

        v21 = *(a1 + 8 * v19 + 32);
      }

      v22 = v21;
      v23 = [v21 zoneName];
      if (!v23)
      {
        goto LABEL_20;
      }

      v24 = v23;
      sub_22766C000();

      v25 = v53;
      v26 = v51;
      sub_2276694B0();
      if ((*v52)(v25, 1, v26) == 1)
      {
        sub_226E97D1C(v25, &qword_27D7B8460, qword_2276709E0);
LABEL_20:
        v40 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
        swift_willThrow();

        return v17;
      }

      v58 = v19;
      v27 = *v2;
      v28 = v50;
      (*v2)(v50, v25, v26);
      v29 = [v22 changeWindow];
      if (!v29)
      {
        (*(v44 + 8))(v28, v26);
        goto LABEL_20;
      }

      v30 = v29;
      v57 = v20;
      v31 = v26;
      v8 = v2;
      v32 = v17;
      v33 = sub_227662590();
      v35 = v34;

      v36 = v49;
      v27(v49, v28, v31);
      v37 = v36;
      v38 = (v36 + *(v55 + 20));
      *v38 = v33;
      v38[1] = v35;
      v17 = v32;
      v59 = v32;
      v7 = *(v32 + 16);
      v39 = *(v32 + 24);
      v11 = (v7 + 1);
      if (v7 >= v39 >> 1)
      {
        sub_226F1EFD0(v39 > 1, v7 + 1, 1);
        v37 = v49;
        v17 = v59;
      }

      *(v17 + 16) = v11;
      sub_227125E3C(v37, v17 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v7, type metadata accessor for SyncZoneChangeWindow);
      v19 = v58 + 1;
      a1 = v48;
      v2 = v46;
      if (v57 == v47)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v42 = v15;
    v16 = sub_22766CD20();
    v15 = v42;
  }

  __break(1u);
  return result;
}

size_t sub_22711ED58(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v55 = v41 - v6;
  v7 = sub_2276694E0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v52 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_227662750();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v41 - v16;
  v18 = type metadata accessor for DirtySyncZone();
  v50 = *(v18 - 8);
  v51 = v18;
  v19 = *(v50 + 64);
  MEMORY[0x28223BE20](v18);
  v49 = v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v22 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v22;
    }

    v56 = a1;
    v60 = MEMORY[0x277D84F90];
    result = sub_226F1F010(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v47 = v7;
    v48 = v17;
    v41[1] = v2;
    v42 = v12;
    v17 = 0;
    v22 = v60;
    v24 = v56;
    v53 = v56 & 0xC000000000000001;
    v2 = (v12 + 32);
    v45 = i;
    v46 = (v8 + 48);
    v43 = v56 & 0xFFFFFFFFFFFFFF8;
    v44 = (v8 + 32);
    a1 = v11;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v59 = v22;
      if (v53)
      {
        v25 = MEMORY[0x22AA991A0](v17);
      }

      else
      {
        if (v17 >= *(v43 + 16))
        {
          goto LABEL_23;
        }

        v25 = *(v24 + 8 * v17 + 32);
      }

      v26 = v25;
      v27 = [v25 zoneName];
      if (!v27)
      {
        goto LABEL_19;
      }

      v22 = v27;
      sub_22766C000();

      v28 = [v26 timestamp];
      if (!v28)
      {

LABEL_19:
        v37 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
        swift_willThrow();

        return v22;
      }

      v29 = v28;
      v58 = v17 + 1;
      v30 = v54;
      sub_227662710();

      v22 = *v2;
      v31 = v48;
      (*v2)(v48, v30, a1);
      v32 = v55;
      sub_2276694B0();
      v33 = v47;
      if ((*v46)(v32, 1, v47) == 1)
      {
        sub_226E97D1C(v32, &qword_27D7B8460, qword_2276709E0);
        v39 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D51028], v39);
        swift_willThrow();

        (*(v42 + 8))(v31, a1);

        return v22;
      }

      v57 = v17;

      v34 = *v44;
      (*v44)(v52, v32, v33);
      v35 = v49;
      v34();
      v11 = v2;
      v22(v35 + *(v51 + 20), v31, a1);
      v22 = v59;
      v60 = v59;
      v8 = *(v59 + 2);
      v36 = *(v59 + 3);
      v12 = v8 + 1;
      if (v8 >= v36 >> 1)
      {
        sub_226F1F010(v36 > 1, v8 + 1, 1);
        v22 = v60;
      }

      *(v22 + 2) = v12;
      sub_227125E3C(v35, v22 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v8, type metadata accessor for DirtySyncZone);
      v17 = v57 + 1;
      v24 = v56;
      if (v58 == v45)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22711F3C0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v42 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v44 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v41 = sub_227664E20();
  v45 = *(v41 - 8);
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v41);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v17 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v17;
    }

    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F448(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v32 = v2;
    v2 = 0;
    v43 = a1 & 0xC000000000000001;
    v17 = v48;
    v38 = (v5 + 32);
    v39 = v4;
    v35 = (v5 + 16);
    v36 = i;
    v40 = (v5 + 8);
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = v45 + 32;
    v37 = a1;
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v43)
      {
        v19 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v33 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 8 * v2 + 32);
      }

      v20 = v19;
      v21 = [v19 term];
      if (!v21)
      {
        goto LABEL_20;
      }

      v22 = v21;
      v47 = v2;
      sub_22766C000();

      v23 = [v20 dateCreated];
      if (!v23)
      {
        goto LABEL_19;
      }

      v24 = v23;
      v46 = v2 + 1;
      v25 = v15;
      v26 = v17;
      v27 = v44;
      sub_227662710();

      v28 = v39;
      (*v38)(v12, v27, v39);
      if (MEMORY[0x22AA95720]([v20 platform]) == 4)
      {
        (*v40)(v12, v28);
        v17 = v26;
LABEL_19:

LABEL_20:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v17;
      }

      (*v35)(v42, v12, v28);
      sub_227664DF0();

      (*v40)(v12, v28);
      v17 = v26;
      v48 = v26;
      v4 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v4 >= v29 >> 1)
      {
        sub_226F1F448(v29 > 1, v4 + 1, 1);
        v17 = v48;
      }

      *(v17 + 16) = v4 + 1;
      (*(v45 + 32))(v17 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v4, v25, v41);
      v2 = v47 + 1;
      a1 = v37;
      v15 = v25;
      if (v46 == v36)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22711F8B0(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v39 = &v34 - v8;
  v40 = sub_2276687D0();
  v44 = *(v40 - 8);
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F488(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v42 = a1 & 0xC000000000000001;
    v13 = v48;
    v34 = v2;
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = a1;
    v37 = v44 + 32;
    v38 = i;
    while (!__OFADD__(v15, 1))
    {
      if (v42)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v35 + 16))
        {
          goto LABEL_26;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      if (!v18)
      {
        goto LABEL_23;
      }

      v19 = v18;
      v47 = v15 + 1;
      v20 = v11;
      sub_22766C000();

      v21 = [v17 title];
      if (!v21)
      {

LABEL_23:
        v32 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v32 - 8) + 104))(v33, *MEMORY[0x277D51028], v32);
        swift_willThrow();

        return v13;
      }

      v22 = v21;
      v23 = sub_22766C000();
      v45 = v24;
      v46 = v23;

      v25 = [v17 thumbnailURL];
      if (v25)
      {
        v43 = v13;

        v26 = [v17 thumbnailURL];
        if (v26)
        {
          v27 = v26;
          sub_22766C000();
        }

        v29 = v39;
        sub_227662310();
        a1 = v36;
        v13 = v43;
      }

      else
      {
        v28 = sub_2276624A0();
        v29 = v39;
        (*(*(v28 - 8) + 56))(v39, 1, 1, v28);
      }

      v11 = v20;
      sub_227125BF8(v29, v41);
      sub_227668790();

      sub_226E97D1C(v29, &unk_27D7BB570, &unk_227670FC0);
      v48 = v13;
      v31 = *(v13 + 16);
      v30 = *(v13 + 24);
      v2 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        sub_226F1F488(v30 > 1, v31 + 1, 1);
        v13 = v48;
      }

      *(v13 + 16) = v2;
      (*(v44 + 32))(v13 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v31, v20, v40);
      ++v15;
      if (v47 == v38)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22711FD60(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227665F20();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2276627D0();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v50 = &v39 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v39 - v16;
  v48 = sub_227667780();
  v52 = *(v48 - 8);
  v18 = *(v52 + 64);
  MEMORY[0x28223BE20](v48);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v22 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v22;
    }

    v39 = v17;
    v57 = MEMORY[0x277D84F90];
    v51 = i;
    result = sub_226F1F5C8(0, i & ~(i >> 63), 0);
    if (v51 < 0)
    {
      break;
    }

    v44 = v13;
    v45 = v7;
    v56 = v2;
    v2 = 0;
    v49 = a1 & 0xC000000000000001;
    v22 = v57;
    v42 = a1;
    v43 = (v9 + 2);
    v46 = (v9 + 4);
    v47 = (v9 + 1);
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = v52 + 32;
    v17 = v39;
    while (1)
    {
      v13 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v49)
      {
        v24 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v40 + 16))
        {
          goto LABEL_25;
        }

        v24 = *(a1 + 8 * v2 + 32);
      }

      v9 = v24;
      v25 = [v24 sessionIdentifier];
      if (!v25)
      {
        goto LABEL_21;
      }

      v26 = v25;
      v55 = v2 + 1;
      sub_22766C000();

      v27 = [v9 planIdentifier];
      if (!v27)
      {
        goto LABEL_20;
      }

      v28 = v27;
      v54 = v2;
      v29 = v50;
      sub_2276627B0();

      (*v46)(v17, v29, v8);
      v30 = [v9 reference];
      if (!v30)
      {
        (*v47)(v17, v8);
LABEL_20:

LABEL_21:
        v36 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
        swift_willThrow();

        return v22;
      }

      v31 = v30;
      v53 = v22;
      v22 = v44;
      (*v43)(v44, v17, v8);
      v32 = v31;
      v33 = v56;
      sub_226F5B7DC(v32);
      v56 = v33;
      if (v33)
      {

        v38 = *v47;
        (*v47)(v22, v8);
        v38(v17, v8);

        return v22;
      }

      sub_227667750();

      (*v47)(v17, v8);
      v22 = v53;
      v57 = v53;
      v35 = *(v53 + 2);
      v34 = *(v53 + 3);
      v7 = (v35 + 1);
      if (v35 >= v34 >> 1)
      {
        sub_226F1F5C8(v34 > 1, v35 + 1, 1);
        v17 = v39;
        v22 = v57;
      }

      *(v22 + 2) = v7;
      (*(v52 + 32))(&v22[((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v35], v20, v48);
      v2 = v54 + 1;
      a1 = v42;
      if (v55 == v51)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_2271202F4(unint64_t a1)
{
  v2 = v1;
  v39 = sub_227662750();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v29 - v8;
  v36 = sub_227666170();
  v41 = *(v36 - 8);
  v9 = *(v41 + 64);
  MEMORY[0x28223BE20](v36);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v43 = MEMORY[0x277D84F90];
    result = sub_226F1F648(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v15 = 0;
    v13 = v43;
    v40 = a1 & 0xC000000000000001;
    v29 = v2;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = (v4 + 8);
    v33 = (v4 + 16);
    v31 = v41 + 32;
    v34 = i;
    v35 = a1;
    while (!__OFADD__(v15, 1))
    {
      if (v40)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 identifier];
      if (!v18)
      {
        goto LABEL_18;
      }

      v19 = v18;
      v2 = sub_22766C000();

      v20 = [v17 dateWatched];
      if (!v20)
      {

LABEL_18:
        v27 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D51028], v27);
        swift_willThrow();

        return v13;
      }

      v21 = v20;
      v42 = v15 + 1;
      v22 = v13;
      v23 = v37;
      sub_227662710();

      v24 = v39;
      (*v33)(v38, v23, v39);
      sub_227666140();

      v25 = v23;
      v13 = v22;
      (*v32)(v25, v24);
      v43 = v22;
      v4 = *(v22 + 16);
      v26 = *(v22 + 24);
      if (v4 >= v26 >> 1)
      {
        sub_226F1F648(v26 > 1, v4 + 1, 1);
        v13 = v43;
      }

      *(v13 + 16) = v4 + 1;
      (*(v41 + 32))(v13 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v4, v11, v36);
      ++v15;
      a1 = v35;
      if (v42 == v34)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227120730(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227669040();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v26 = MEMORY[0x277D84F90];
    result = sub_226F1F668(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = v26;
    v11 = 0;
    v22 = sub_227125F6C(&qword_2813A5520, MEMORY[0x277D539C0]);
    v20 = *(v22 + 48);
    v21 = v22 + 48;
    v23 = a1 & 0xC000000000000001;
    v17 = a1 & 0xFFFFFFFFFFFFFF8;
    v18 = v24 + 32;
    v19 = a1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v23)
      {
        v13 = MEMORY[0x22AA991A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v20(v13, v4, v22);
      if (v2)
      {

        return v9;
      }

      v25 = 0;
      v26 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_226F1F668(v14 > 1, v15 + 1, 1);
        v9 = v26;
      }

      *(v9 + 16) = v15 + 1;
      (*(v24 + 32))(v9 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v15, v7, v4);
      ++v11;
      a1 = v19;
      v2 = v25;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_2271209C8(unint64_t a1)
{
  v2 = v1;
  v34 = sub_227664EB0();
  v36 = *(v34 - 8);
  v4 = *(v36 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v43 = MEMORY[0x277D84F90];
    result = sub_226F1F6C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v8 = v43;
    v35 = a1 & 0xC000000000000001;
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = v36 + 32;
    v32 = v6;
    v33 = a1;
    v31 = i;
    while (!__OFADD__(v10, 1))
    {
      if (v35)
      {
        v11 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v29 + 16))
        {
          goto LABEL_27;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      if (!v13)
      {
        goto LABEL_24;
      }

      v14 = v13;
      v40 = v10 + 1;
      sub_22766C000();
      v41 = v15;

      v16 = [v12 name];
      if (!v16)
      {

LABEL_24:
        v26 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D51028], v26);
        swift_willThrow();

        return v8;
      }

      v17 = v16;
      v39 = v8;
      v18 = sub_22766C000();
      v37 = v19;
      v38 = v18;

      v42 = v12;
      v20 = [v12 artwork];
      if (v20)
      {
        v21 = v20;
        sub_227662590();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
      sub_227125C68();
      sub_2276683D0();
      if (v2)
      {
      }

      v2 = 0;
      v22 = [v42 informalName];
      if (v22)
      {
        v23 = v22;
        sub_22766C000();
      }

      v6 = v32;
      sub_227664E90();

      v8 = v39;
      v43 = v39;
      v25 = *(v39 + 16);
      v24 = *(v39 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_226F1F6C8(v24 > 1, v25 + 1, 1);
        v8 = v43;
      }

      *(v8 + 16) = v25 + 1;
      (*(v36 + 32))(v8 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v25, v6, v34);
      ++v10;
      a1 = v33;
      if (v40 == v31)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227120E00(unint64_t a1)
{
  v2 = v1;
  v26 = sub_227663A30();
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v30 = MEMORY[0x277D84F90];
    result = sub_226F1F308(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v27 = a1 & 0xC000000000000001;
    v8 = v30;
    v20 = v2;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = v28 + 32;
    v24 = i;
    v25 = a1;
    v22 = v6;
    while (!__OFADD__(v10, 1))
    {
      if (v27)
      {
        v11 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v21 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = [v11 identifier];
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = v13;
      v29 = v10 + 1;
      sub_22766C000();

      v15 = [v12 name];
      if (!v15)
      {

LABEL_18:
        v18 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51028], v18);
        swift_willThrow();

        return v8;
      }

      v16 = v15;
      sub_22766C000();

      [v12 sortOrder];
      sub_2276639F0();

      v30 = v8;
      v2 = *(v8 + 16);
      v17 = *(v8 + 24);
      if (v2 >= v17 >> 1)
      {
        sub_226F1F308(v17 > 1, v2 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v2 + 1;
      v6 = v22;
      (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v2, v22, v26);
      ++v10;
      a1 = v25;
      if (v29 == v24)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227121164(unint64_t a1)
{
  v2 = v1;
  v31 = sub_2276640A0();
  v33 = *(v31 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v37 = MEMORY[0x277D84F90];
    result = sub_226F1F7C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v32 = a1 & 0xC000000000000001;
    v7 = v37;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = v33 + 32;
    v28 = i;
    v29 = a1;
    while (!__OFADD__(v9, 1))
    {
      if (v32)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 sessionIdentifier];
      if (!v12)
      {
        goto LABEL_21;
      }

      v13 = v12;
      v36 = v9 + 1;
      sub_22766C000();

      v14 = [v11 workoutIdentifier];
      if (!v14)
      {

LABEL_21:
        v24 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
        swift_willThrow();

        return v7;
      }

      v15 = v14;
      v35 = v7;
      v16 = v2;
      sub_22766C000();
      v34 = v17;

      v18 = [v11 scores];
      if (v18)
      {
        v19 = v18;
        sub_227662590();
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA928, &qword_22767A150);
      sub_2271058F4();
      v7 = v20;
      sub_2276683D0();
      v2 = v16;
      if (v16)
      {

        return v7;
      }

      [v11 workoutDuration];
      [v11 activityType];
      v21 = v30;
      sub_227664060();

      v7 = v35;
      v37 = v35;
      v23 = *(v35 + 16);
      v22 = *(v35 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_226F1F7C8(v22 > 1, v23 + 1, 1);
        v7 = v37;
      }

      *(v7 + 16) = v23 + 1;
      (*(v33 + 32))(v7 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v23, v21, v31);
      ++v9;
      a1 = v29;
      if (v36 == v28)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_22712158C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v41 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v43 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = v32 - v11;
  v40 = sub_2276650A0();
  v44 = *(v40 - 8);
  v13 = *(v44 + 64);
  MEMORY[0x28223BE20](v40);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v17 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v17;
    }

    v47 = v12;
    v48 = MEMORY[0x277D84F90];
    result = sub_226F1F848(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v36 = i;
    v37 = a1;
    v19 = 0;
    v42 = a1 & 0xC000000000000001;
    v20 = v47;
    v17 = v48;
    v32[1] = v2;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = (v5 + 4);
    v39 = (v5 + 1);
    v34 = v44 + 32;
    v35 = (v5 + 2);
    while (1)
    {
      v2 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v42)
      {
        v21 = MEMORY[0x22AA991A0](v19, a1);
      }

      else
      {
        if (v19 >= *(v33 + 16))
        {
          goto LABEL_24;
        }

        v21 = *(a1 + 8 * v19 + 32);
      }

      v5 = v21;
      v22 = [v21 tipIdentifier];
      if (!v22)
      {
        goto LABEL_21;
      }

      v23 = v22;
      v46 = v17;
      sub_22766C000();

      v24 = [v5 date];
      if (!v24)
      {

LABEL_20:
        v17 = v46;
LABEL_21:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v17;
      }

      v25 = v24;
      v45 = v19 + 1;
      v26 = v43;
      sub_227662710();

      (*v38)(v20, v26, v4);
      v27 = [v5 journalIdentifier];
      if (!v27)
      {

        (*v39)(v20, v4);
        goto LABEL_20;
      }

      v28 = v27;
      sub_22766C000();

      (*v35)(v41, v47, v4);
      [v5 elapsedTime];
      [v5 totalTime];
      v20 = v47;
      sub_227665080();

      (*v39)(v20, v4);
      v17 = v46;
      v48 = v46;
      v12 = *(v46 + 16);
      v29 = *(v46 + 24);
      if (v12 >= v29 >> 1)
      {
        sub_226F1F848(v29 > 1, v12 + 1, 1);
        v20 = v47;
        v17 = v48;
      }

      *(v17 + 16) = v12 + 1;
      (*(v44 + 32))(v17 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v12, v15, v40);
      ++v19;
      a1 = v37;
      if (v45 == v36)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227121AA8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227666330();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v31 = MEMORY[0x277D84F90];
    result = sub_226F1F888(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v27 = v8;
    v28 = a1 & 0xC000000000000001;
    v10 = v31;
    v23 = v2;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = v30 + 32;
    v26 = a1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v28)
      {
        v14 = MEMORY[0x22AA991A0](v12, a1);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      if (!v16)
      {
        v21 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
        swift_willThrow();

        return v10;
      }

      v17 = v16;
      sub_22766C000();
      v2 = v18;

      [v15 timestamp];
      v19 = v27;
      sub_227666300();

      v31 = v10;
      v8 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v8 >= v20 >> 1)
      {
        sub_226F1F888(v20 > 1, v8 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v8 + 1;
      (*(v30 + 32))(v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v8, v19, v29);
      ++v12;
      a1 = v26;
      if (v13 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227121DB0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2276668F0();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v10 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v10;
    }

    v31 = MEMORY[0x277D84F90];
    result = sub_226F1FAA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v27 = v8;
    v28 = a1 & 0xC000000000000001;
    v10 = v31;
    v23 = v2;
    v24 = a1 & 0xFFFFFFFFFFFFFF8;
    v25 = v30 + 32;
    v26 = a1;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v28)
      {
        v14 = MEMORY[0x22AA991A0](v12, a1);
      }

      else
      {
        if (v12 >= *(v24 + 16))
        {
          goto LABEL_19;
        }

        v14 = *(a1 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = [v14 languageIdentifier];
      if (!v16)
      {
        v21 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
        swift_willThrow();

        return v10;
      }

      v17 = v16;
      sub_22766C000();
      v2 = v18;

      [v15 machTimestamp];
      v19 = v27;
      sub_2276668D0();

      v31 = v10;
      v8 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v8 >= v20 >> 1)
      {
        sub_226F1FAA8(v20 > 1, v8 + 1, 1);
        v10 = v31;
      }

      *(v10 + 16) = v8 + 1;
      (*(v30 + 32))(v10 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v8, v19, v29);
      ++v12;
      a1 = v26;
      if (v13 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_2271220B8(unint64_t a1)
{
  v2 = v1;
  v26 = sub_227667E50();
  v28 = *(v26 - 8);
  v4 = *(v28 + 64);
  MEMORY[0x28223BE20](v26);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v30 = MEMORY[0x277D84F90];
    result = sub_226F1FBC8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v27 = a1 & 0xC000000000000001;
    v8 = v30;
    v21[1] = v2;
    v22 = a1 & 0xFFFFFFFFFFFFFF8;
    v23 = v28 + 32;
    v24 = i;
    v25 = a1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v27)
      {
        v12 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v22 + 16))
        {
          goto LABEL_21;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 workoutIdentifier];
      if (!v14)
      {
        goto LABEL_18;
      }

      v15 = v14;
      v29 = v10;
      sub_22766C000();

      v16 = [v13 sessionIdentifier];
      if (!v16)
      {

LABEL_18:
        v19 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
        swift_willThrow();

        return v8;
      }

      v17 = v16;
      sub_22766C000();

      sub_227667E30();
      v30 = v8;
      v2 = *(v8 + 16);
      v18 = *(v8 + 24);
      if (v2 >= v18 >> 1)
      {
        sub_226F1FBC8(v18 > 1, v2 + 1, 1);
        v8 = v30;
      }

      *(v8 + 16) = v2 + 1;
      (*(v28 + 32))(v8 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v2, v6, v26);
      v10 = v29 + 1;
      a1 = v25;
      if (v11 == v24)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

size_t sub_227122404(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v44 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v46 = &v35 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v43 = sub_227666650();
  v47 = *(v43 - 8);
  v13 = *(v47 + 64);
  MEMORY[0x28223BE20](v43);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v17 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v17;
    }

    v50 = v12;
    v51 = MEMORY[0x277D84F90];
    result = sub_226F200E8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v49 = v2;
    v41 = v4;
    v4 = 0;
    v45 = a1 & 0xC000000000000001;
    v17 = v51;
    v39 = a1;
    v40 = (v5 + 32);
    v37 = (v5 + 16);
    v38 = i;
    v42 = (v5 + 8);
    v35 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = v47 + 32;
    v12 = v50;
    while (1)
    {
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v45)
      {
        v19 = MEMORY[0x22AA991A0](v4, a1);
      }

      else
      {
        if (v4 >= *(v35 + 16))
        {
          goto LABEL_23;
        }

        v19 = *(a1 + 8 * v4 + 32);
      }

      v20 = v19;
      v21 = [v19 identifier];
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = v21;
      v23 = v17;
      v17 = sub_22766C000();

      v24 = [v20 completedDate];
      if (!v24)
      {

        v17 = v23;
LABEL_19:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v17;
      }

      v25 = v24;
      v48 = v4 + 1;
      v26 = v46;
      sub_227662710();

      v27 = v26;
      v28 = v41;
      (*v40)(v12, v27, v41);
      v29 = [v20 selectedModalityIdentifiers];
      v30 = v49;
      sub_2274B47BC(v29);
      v49 = v30;
      if (v30)
      {
        (*v42)(v12, v28);

        return v17;
      }

      (*v37)(v44, v50, v28);
      v12 = v50;
      sub_227666610();

      (*v42)(v12, v28);
      v17 = v23;
      v51 = v23;
      v32 = *(v23 + 16);
      v31 = *(v23 + 24);
      v5 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        sub_226F200E8(v31 > 1, v32 + 1, 1);
        v12 = v50;
        v17 = v51;
      }

      *(v17 + 16) = v5;
      (*(v47 + 32))(v17 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v32, v15, v43);
      ++v4;
      a1 = v39;
      if (v48 == v38)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}