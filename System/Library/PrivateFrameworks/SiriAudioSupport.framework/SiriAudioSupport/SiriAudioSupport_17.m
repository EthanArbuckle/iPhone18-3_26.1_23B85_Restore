uint64_t sub_26643C0FC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_266446444();
  v7 = v6;
  v0[11] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[9];
    sub_2662A9238(v0[6], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_26644753C();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[15] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_26643C4A4;
    v16 = v0[9];
    v17 = v0[4];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[12] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[13] = v24;
    sub_26644753C();
    *v24 = v0;
    v24[1] = sub_26643C374;
    v16 = v0[10];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[4];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for OpenMusicItemAppIntent, v7);
}

uint64_t sub_26643C374()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_26643C6DC;
  }

  else
  {
    v4 = sub_26643C638;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643C4A4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_26643C800;
  }

  else
  {
    v7 = sub_26643C780;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643C638()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v6 = v0[9];
  v5 = v0[10];
  v7 = v0[6];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26643C6DC()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[7];
  v4 = v0[8];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[14];
  v7 = v0[9];
  v6 = v0[10];
  v8 = v0[6];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26643C780()
{
  v1 = v0[11];
  swift_unknownObjectRelease();
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[6];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26643C800()
{
  v1 = v0[11];
  swift_unknownObjectRelease();
  v2 = v0[17];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26643C888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a1;
  v4[5] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v4[6] = swift_task_alloc();
  v8 = sub_2664DF998();
  v4[7] = v8;
  v9 = *(v8 - 8);
  v4[8] = v9;
  v10 = *(v9 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v4[2] = a2;
  v4[3] = a3;

  return MEMORY[0x2822009F8](sub_26643C9A0, 0, 0);
}

uint64_t sub_26643C9A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = sub_266446444();
  v7 = v6;
  v0[11] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[9];
    sub_2662A9238(v0[6], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447494();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[15] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[16] = v15;
    *v15 = v0;
    v15[1] = sub_26643CD48;
    v16 = v0[9];
    v17 = v0[4];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[12] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[13] = v24;
    sub_266447494();
    *v24 = v0;
    v24[1] = sub_26643CC18;
    v16 = v0[10];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[4];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for ShowMusicNoticeAppIntent, v7);
}

uint64_t sub_26643CC18()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_266447590;
  }

  else
  {
    v4 = sub_26644759C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643CD48()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v6 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 136) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_2664475A4;
  }

  else
  {
    v7 = sub_2664475AC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643CEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a1;
  v5[6] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v5[7] = swift_task_alloc();
  v10 = sub_2664DF998();
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;

  return MEMORY[0x2822009F8](sub_26643CFFC, 0, 0);
}

uint64_t sub_26643CFFC()
{
  v1 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v5 = sub_266446444();
  v7 = v6;
  v0[12] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[10];
    sub_2662A9238(v0[7], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664474E8();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[16] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[17] = v15;
    *v15 = v0;
    v15[1] = sub_26643D3A4;
    v16 = v0[10];
    v17 = v0[5];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[9] + 32))(v0[11], v0[7], v0[8]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[13] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[14] = v24;
    sub_2664474E8();
    *v24 = v0;
    v24[1] = sub_26643D274;
    v16 = v0[11];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[5];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for SearchMusicAppIntent, v7);
}

uint64_t sub_26643D274()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v6 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = sub_26643D5DC;
  }

  else
  {
    v4 = sub_26643D538;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643D3A4()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v9 = *v1;
  *(*v1 + 144) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_26643D700;
  }

  else
  {
    v7 = sub_26643D680;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643D538()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[7];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26643D5DC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[15];
  v7 = v0[10];
  v6 = v0[11];
  v8 = v0[7];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26643D680()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26643D700()
{
  v1 = v0[12];
  swift_unknownObjectRelease();
  v2 = v0[18];
  v4 = v0[10];
  v3 = v0[11];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26643D788(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_2664DF998();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643D894, 0, 0);
}

uint64_t sub_26643D894()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[8];
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447440();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[14] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_26643DC3C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[11] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[12] = v24;
    sub_266447440();
    *v24 = v0;
    v24[1] = sub_26643DB0C;
    v16 = v0[9];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[3];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for OpenPodcastShowAppIntent, v7);
}

uint64_t sub_26643DB0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_266447594;
  }

  else
  {
    v4 = sub_2664475A0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643DC3C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_2664475A8;
  }

  else
  {
    v7 = sub_2664475B0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643DDD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_2664DF998();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643DEDC, 0, 0);
}

uint64_t sub_26643DEDC()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[8];
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664473EC();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[14] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_26643DC3C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[11] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[12] = v24;
    sub_2664473EC();
    *v24 = v0;
    v24[1] = sub_26643DB0C;
    v16 = v0[9];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[3];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for OpenPodcastEpisodeAppIntent, v7);
}

uint64_t sub_26643E154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_2664DF998();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643E260, 0, 0);
}

uint64_t sub_26643E260()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[8];
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447398();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[14] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_26643DC3C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[11] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[12] = v24;
    sub_266447398();
    *v24 = v0;
    v24[1] = sub_26643DB0C;
    v16 = v0[9];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[3];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for OpenPodcastChannelAppIntent, v7);
}

uint64_t sub_26643E4D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_2664DF998();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643E5E4, 0, 0);
}

uint64_t sub_26643E5E4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[8];
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447344();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[14] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_26643E98C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[11] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[12] = v24;
    sub_266447344();
    *v24 = v0;
    v24[1] = sub_26643E85C;
    v16 = v0[9];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[3];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for FollowShowAppIntent, v7);
}

uint64_t sub_26643E85C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v6 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_26643EBC4;
  }

  else
  {
    v4 = sub_26643EB20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643E98C()
{
  v2 = *(*v1 + 120);
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  v6 = *(*v1 + 48);
  v9 = *v1;
  *(*v1 + 128) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_26643ECE8;
  }

  else
  {
    v7 = sub_26643EC68;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643EB20()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[5];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26643EBC4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[13];
  v7 = v0[8];
  v6 = v0[9];
  v8 = v0[5];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26643EC68()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[5];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26643ECE8()
{
  v1 = v0[10];
  swift_unknownObjectRelease();
  v2 = v0[16];
  v4 = v0[8];
  v3 = v0[9];
  v5 = v0[5];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26643ED70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a1;
  v3[4] = a3;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v6 = sub_2664DF998();
  v3[6] = v6;
  v7 = *(v6 - 8);
  v3[7] = v7;
  v8 = *(v7 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[2] = a2;

  return MEMORY[0x2822009F8](sub_26643EE7C, 0, 0);
}

uint64_t sub_26643EE7C()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_266446444();
  v7 = v6;
  v0[10] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[8];
    sub_2662A9238(v0[5], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_2664472A4();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[14] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v15 = swift_task_alloc();
    v0[15] = v15;
    *v15 = v0;
    v15[1] = sub_26643DC3C;
    v16 = v0[8];
    v17 = v0[3];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
  }

  else
  {
    (*(v0[7] + 32))(v0[9], v0[5], v0[6]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[11] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[12] = v24;
    sub_2664472A4();
    *v24 = v0;
    v24[1] = sub_26643DB0C;
    v16 = v0[9];
    v18 = MEMORY[0x277CEAFA0];
    v19 = v0 + 2;
    v17 = v0[3];
  }

  return MEMORY[0x28213DAA0](v17, v19, v16, v13, v18, ObjectType, &type metadata for SearchPodcastsAppIntent, v7);
}

uint64_t sub_26643F0F4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = sub_2664DF998();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26643F1F8, 0, 0);
}

uint64_t sub_26643F1F8()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_266446444();
  v7 = v6;
  v0[9] = v5;
  sub_2664471E0(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v8 = v0[7];
    sub_2662A9238(v0[4], &qword_280073938, &qword_2664ED340);
    ObjectType = swift_getObjectType();
    sub_266447250();
    sub_26643F980();
    v10 = sub_2664DF838();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[13] = v13;
    v14 = *(MEMORY[0x277CEB000] + 4);
    v16 = swift_task_alloc();
    v0[14] = v16;
    *v16 = v0;
    v16[1] = sub_26643F59C;
    v17 = v0[7];
    v18 = v0[2];
    v19 = MEMORY[0x277CEAFA0];
  }

  else
  {
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    ObjectType = swift_getObjectType();
    v20 = sub_2664DF838();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v13 = sub_2664DF828();
    v0[10] = v13;
    v23 = *(MEMORY[0x277CEB000] + 4);
    v24 = swift_task_alloc();
    v0[11] = v24;
    sub_266447250();
    *v24 = v0;
    v24[1] = sub_26643F46C;
    v17 = v0[8];
    v19 = MEMORY[0x277CEAFA0];
    v18 = v0[2];
  }

  return MEMORY[0x28213DAA0](v18, v15, v17, v13, v19, ObjectType, &type metadata for OpenQueueAppIntent, v7);
}

uint64_t sub_26643F46C()
{
  v2 = *(*v1 + 88);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v4 = sub_26643F7D4;
  }

  else
  {
    v4 = sub_26643F730;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26643F59C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v9 = *v1;
  *(*v1 + 120) = v0;

  (*(v5 + 8))(v4, v6);

  if (v0)
  {
    v7 = sub_26643F8F8;
  }

  else
  {
    v7 = sub_26643F878;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26643F730()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v6 = v0[7];
  v5 = v0[8];
  v7 = v0[4];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26643F7D4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];
  v4 = v0[6];
  swift_unknownObjectRelease();
  (*(v4 + 8))(v2, v3);
  v5 = v0[12];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26643F878()
{
  v1 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26643F8F8()
{
  v1 = v0[9];
  swift_unknownObjectRelease();
  v2 = v0[15];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26643F980()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v11 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v11 - v6;
  v8 = sub_2664DFCE8();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = sub_2664DFA48();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  sub_2664DF988();
  return sub_2664DF978();
}

uint64_t sub_26643FB00(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = v3;
  *(v4 + 88) = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v4 + 112) = v6;
  v7 = *(v6 - 8);
  *(v4 + 120) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  *(v4 + 136) = swift_task_alloc();
  v9 = sub_2664DFE38();
  *(v4 + 144) = v9;
  v10 = *(v9 - 8);
  *(v4 + 152) = v10;
  v11 = *(v10 + 64) + 15;
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330) - 8) + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338) - 8) + 64) + 15;
  *(v4 + 184) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 275) = *a3;

  return MEMORY[0x2822009F8](sub_26643FCF8, 0, 0);
}

uint64_t sub_26643FCF8()
{
  v51 = v0;
  v1 = *(v0 + 275);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  type metadata accessor for GenericMusicItemEntity();
  sub_266446694(&qword_280073940, type metadata accessor for GenericMusicItemEntity);

  v4 = sub_2664DF818();
  *(v0 + 200) = v4;
  *(v0 + 272) = 9;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D0, &qword_2664E9FB8);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_2664DFA28();
  *(v0 + 80) = v4;
  *(v0 + 208) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732D8, &qword_2664E9FC0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();

  v48 = sub_2664DFA28();
  v49 = v8;
  *(v0 + 216) = v48;
  *(v0 + 273) = v1;
  sub_2664DFA38();

  v12 = 1;
  if (v1 != 9)
  {
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 176);
    v16 = sub_2664DFCE8();
    (*(*(v16 - 8) + 56))(v14, 1, 1, v16);
    v17 = sub_2664DFA48();
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
    sub_2664DF988();
    sub_2664DF978();
    v12 = 0;
  }

  v18 = *(v0 + 192);
  v19 = sub_2664DF998();
  (*(*(v19 - 8) + 56))(v18, v12, 1, v19);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = *(v0 + 168);
  v22 = *(v0 + 144);
  v21 = *(v0 + 152);
  v23 = __swift_project_value_buffer(v22, qword_280F914F0);
  *(v0 + 224) = v23;
  swift_beginAccess();
  v24 = *(v21 + 16);
  *(v0 + 232) = v24;
  *(v0 + 240) = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v24(v20, v23, v22);

  v25 = sub_2664DFE18();
  v26 = sub_2664E06E8();

  if (os_log_type_enabled(v25, v26))
  {
    v45 = *(v0 + 275);
    v27 = *(v0 + 152);
    v46 = *(v0 + 144);
    v47 = *(v0 + 168);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50 = v29;
    *v28 = 136315394;
    sub_2664DF858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073950, &qword_2664ED350);
    v30 = sub_2664E0318();
    v32 = sub_2662A320C(v30, v31, &v50);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    *(v0 + 274) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073958, &qword_2664ED358);
    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, &v50);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_26629C000, v25, v26, "AppIntentInvoker#invokeOpenMusicItemIntent OpenMusicItemAppIntent constructed with target: %s and noticeEntity: %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    v36 = *(v27 + 8);
    v36(v47, v46);
  }

  else
  {
    v37 = *(v0 + 168);
    v39 = *(v0 + 144);
    v38 = *(v0 + 152);

    v36 = *(v38 + 8);
    v36(v37, v39);
  }

  *(v0 + 248) = v36;
  v40 = swift_task_alloc();
  *(v0 + 256) = v40;
  *v40 = v0;
  v40[1] = sub_26644020C;
  v41 = *(v0 + 192);
  v42 = *(v0 + 136);
  v43 = *(v0 + 104);

  return sub_26643BFE4(v42, v48, v49, v41);
}

uint64_t sub_26644020C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_26644061C;
  }

  else
  {
    v3 = sub_266440320;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_266440320()
{
  v44 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 112);
  (*(v0 + 232))(*(v0 + 160), *(v0 + 224), *(v0 + 144));
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v10 = *(v0 + 192);
  v40 = *(v0 + 208);
  v41 = *(v0 + 200);
  v11 = *(v0 + 152);
  v12 = *(v0 + 160);
  v13 = *(v0 + 136);
  v42 = *(v0 + 144);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);
  if (v8)
  {
    v37 = *(v0 + 216);
    v39 = *(v0 + 192);
    v17 = swift_slowAlloc();
    v38 = v9;
    v18 = swift_slowAlloc();
    v43 = v18;
    *v17 = 136315138;
    sub_2664463E0();
    v35 = v12;
    v36 = v13;
    v19 = sub_2664E0D48();
    v21 = v20;
    v22 = *(v14 + 8);
    v22(v15, v16);
    v23 = sub_2662A320C(v19, v21, &v43);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_26629C000, v6, v7, "AppIntentInvoker#invokeOpenMusicItemIntent response: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);

    v38(v35, v42);
    v22(v36, v16);
    v24 = v39;
  }

  else
  {

    v25 = *(v14 + 8);
    v25(v15, v16);
    v9(v12, v42);
    v25(v13, v16);
    v24 = v10;
  }

  sub_2662A9238(v24, &qword_280073938, &qword_2664ED340);
  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v29 = *(v0 + 168);
  v28 = *(v0 + 176);
  v30 = *(v0 + 160);
  v32 = *(v0 + 128);
  v31 = *(v0 + 136);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_26644061C()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v6 = v0[22];
  v5 = v0[23];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[16];
  v9 = v0[17];

  sub_2662A9238(v4, &qword_280073938, &qword_2664ED340);

  v11 = v0[1];
  v12 = v0[33];

  return v11();
}

uint64_t sub_266440710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 291) = a6;
  *(v7 + 136) = a5;
  *(v7 + 144) = v6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 104) = a1;
  *(v7 + 112) = a2;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  *(v7 + 152) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v7 + 160) = v9;
  v10 = *(v9 - 8);
  *(v7 + 168) = v10;
  v11 = *(v10 + 64) + 15;
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();
  v12 = sub_2664DFE38();
  *(v7 + 192) = v12;
  v13 = *(v12 - 8);
  *(v7 + 200) = v13;
  v14 = *(v13 + 64) + 15;
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266440894, 0, 0);
}

uint64_t sub_266440894()
{
  v57 = v0;
  if (*(v0 + 291))
  {
    LOBYTE(v1) = 8;
  }

  else
  {
    v2 = *(v0 + 136);
    v3 = v2 - 1;
    if (v2 - 1) < 5 && ((0x17u >> v3))
    {
      v1 = 0x301020105uLL >> (8 * v3);
    }

    else if (qword_2877E2E98 == v2 || unk_2877E2E90 == v2 || qword_2877E2E88 == v2)
    {
      LOBYTE(v1) = 4;
    }

    else
    {
      LOBYTE(v1) = 8;
    }
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = *(v0 + 216);
  v7 = *(v0 + 192);
  v8 = *(v0 + 200);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = __swift_project_value_buffer(v7, qword_280F914F0);
  *(v0 + 224) = v11;
  swift_beginAccess();
  v12 = *(v8 + 16);
  *(v0 + 232) = v12;
  *(v0 + 240) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v6, v11, v7);

  v13 = sub_2664DFE18();
  v14 = sub_2664E06E8();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 216);
  v18 = *(v0 + 192);
  v17 = *(v0 + 200);
  if (v15)
  {
    v52 = *(v0 + 128);
    v55 = *(v0 + 216);
    v19 = v1;
    v20 = *(v0 + 112);
    v1 = *(v0 + 120);
    v21 = *(v0 + 104);
    v54 = *(v0 + 192);
    v22 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v56 = v53;
    *v22 = 136315650;
    *(v22 + 4) = sub_2662A320C(v21, v20, &v56);
    *(v22 + 12) = 2080;
    *(v0 + 88) = v1;
    LOBYTE(v1) = v19;
    *(v0 + 96) = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v23 = sub_2664E0318();
    v25 = sub_2662A320C(v23, v24, &v56);

    *(v22 + 14) = v25;
    *(v22 + 22) = 2080;
    *(v0 + 290) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073960, &qword_2664ED380);
    v26 = sub_2664E0318();
    v28 = sub_2662A320C(v26, v27, &v56);

    *(v22 + 24) = v28;
    _os_log_impl(&dword_26629C000, v13, v14, "AppIntentInvoker#invokeSearchMusicAppIntent with criteria: %s, searchSource: %s, and resultScope: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v53, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    (*(v17 + 8))(v55, v54);
  }

  else
  {

    (*(v17 + 8))(v16, v18);
  }

  v29 = *(v0 + 152);
  v31 = *(v0 + 120);
  v30 = *(v0 + 128);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);
  *(v0 + 48) = 0;
  *(v0 + 40) = 0;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A80, &qword_2664E57A8);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_2664DFA28();
  *(v0 + 248) = v37;
  *(v0 + 288) = 8;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A88, &unk_2664E57B0);
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_2664DFA28();
  *(v0 + 256) = v41;
  *(v0 + 56) = v33;
  *(v0 + 64) = v32;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  swift_allocObject();

  v45 = sub_2664DFA28();
  *(v0 + 264) = v45;
  *(v0 + 72) = v31;
  *(v0 + 80) = v30;

  sub_2664DFA38();
  *(v0 + 289) = v1;
  sub_2664DFA38();
  v46 = sub_2664DF998();
  (*(*(v46 - 8) + 56))(v29, 1, 1, v46);
  v47 = swift_task_alloc();
  *(v0 + 272) = v47;
  *v47 = v0;
  v47[1] = sub_266440D78;
  v48 = *(v0 + 184);
  v50 = *(v0 + 144);
  v49 = *(v0 + 152);

  return sub_26643CEDC(v48, v45, v37, v41, v49);
}

uint64_t sub_266440D78()
{
  v2 = *(*v1 + 272);
  v3 = *(*v1 + 152);
  v6 = *v1;
  *(*v1 + 280) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266441168;
  }

  else
  {
    v4 = sub_266440EB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266440EB8()
{
  v39 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 160);
  (*(v0 + 232))(*(v0 + 208), *(v0 + 224), *(v0 + 192));
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 248);
  v37 = *(v0 + 256);
  v10 = *(v0 + 200);
  v11 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = *(v0 + 192);
  v15 = *(v0 + 168);
  v14 = *(v0 + 176);
  v16 = *(v0 + 160);
  if (v8)
  {
    v35 = *(v0 + 264);
    v36 = *(v0 + 184);
    v17 = swift_slowAlloc();
    log = v6;
    v18 = swift_slowAlloc();
    v38 = v18;
    *v17 = 136315138;
    sub_2664463E0();
    v33 = v13;
    v34 = v11;
    v19 = sub_2664E0D48();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v14, v16);
    v23 = sub_2662A320C(v19, v21, &v38);

    *(v17 + 4) = v23;
    _os_log_impl(&dword_26629C000, log, v7, "AppIntentInvoker#invokeSearchMusicAppIntent response: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x266784AD0](v18, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);

    (*(v10 + 8))(v34, v33);
    v22(v36, v16);
  }

  else
  {

    v24 = *(v15 + 8);
    v24(v14, v16);
    (*(v10 + 8))(v11, v13);
    v24(v12, v16);
  }

  v26 = *(v0 + 208);
  v25 = *(v0 + 216);
  v28 = *(v0 + 176);
  v27 = *(v0 + 184);
  v29 = *(v0 + 152);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_266441168()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[31];
  v5 = v0[26];
  v4 = v0[27];
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[19];

  v9 = v0[1];
  v10 = v0[35];

  return v9();
}

uint64_t sub_26644122C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 104) = a3;
  *(v4 + 112) = v3;
  *(v4 + 96) = a2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  *(v4 + 120) = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  *(v4 + 128) = v7;
  v8 = *(v7 - 8);
  *(v4 + 136) = v8;
  v9 = *(v8 + 64) + 15;
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  v10 = sub_2664DFE38();
  *(v4 + 160) = v10;
  v11 = *(v10 - 8);
  *(v4 + 168) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330) - 8) + 64) + 15;
  *(v4 + 192) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338) - 8) + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  v15 = sub_2664DF998();
  *(v4 + 208) = v15;
  v16 = *(v15 - 8);
  *(v4 + 216) = v16;
  v17 = *(v16 + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 306) = *a1;

  return MEMORY[0x2822009F8](sub_266441480, 0, 0);
}

uint64_t sub_266441480()
{
  v50 = v0;
  if (*(v0 + 104))
  {
    v1 = *(v0 + 96);
    type metadata accessor for GenericMusicItemEntity();
    sub_266446694(&qword_280073940, type metadata accessor for GenericMusicItemEntity);

    v2 = sub_2664DF818();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 232) = v2;
  v3 = *(v0 + 306);
  v4 = *(v0 + 224);
  v6 = *(v0 + 192);
  v5 = *(v0 + 200);
  *(v0 + 80) = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073968, &qword_2664ED390);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_2664DFA28();
  *(v0 + 240) = v10;
  *(v0 + 304) = v3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073970, &qword_2664ED398);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_2664DFA28();
  *(v0 + 248) = v14;
  *(v0 + 88) = v2;

  sub_2664DFA38();

  v15 = sub_2664DFCE8();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  v16 = sub_2664DFA48();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  sub_2664DF988();
  sub_2664DF978();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = *(v0 + 184);
  v19 = *(v0 + 160);
  v18 = *(v0 + 168);
  v20 = __swift_project_value_buffer(v19, qword_280F914F0);
  *(v0 + 256) = v20;
  swift_beginAccess();
  v21 = *(v18 + 16);
  *(v0 + 264) = v21;
  *(v0 + 272) = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v21(v17, v20, v19);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06E8();
  if (os_log_type_enabled(v22, v23))
  {
    v48 = v14;
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v49 = v25;
    *v24 = 136315394;
    if (v2)
    {

      sub_2664DF858();
    }

    else
    {
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    v30 = *(v0 + 306);
    v31 = *(v0 + 168);
    v46 = *(v0 + 160);
    v47 = *(v0 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073978, &qword_2664ED3A8);
    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v49);

    *(v24 + 4) = v34;
    *(v24 + 12) = 2080;
    *(v0 + 305) = v30;
    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, &v49);

    *(v24 + 14) = v37;
    _os_log_impl(&dword_26629C000, v22, v23, "AppIntentInvoker#invokeShowMusicNoticeAppIntent ShowMusicNoticeAppIntent constructed with itemEntity: %s and noticeEntity: %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v25, -1, -1);
    MEMORY[0x266784AD0](v24, -1, -1);

    v29 = *(v31 + 8);
    v29(v47, v46);
    v14 = v48;
  }

  else
  {
    v26 = *(v0 + 184);
    v27 = *(v0 + 160);
    v28 = *(v0 + 168);

    v29 = *(v28 + 8);
    v29(v26, v27);
  }

  *(v0 + 280) = v29;
  v38 = *(v0 + 216);
  v39 = *(v0 + 208);
  v40 = *(v0 + 120);
  (*(v38 + 16))(v40, *(v0 + 224), v39);
  (*(v38 + 56))(v40, 0, 1, v39);
  v41 = swift_task_alloc();
  *(v0 + 288) = v41;
  *v41 = v0;
  v41[1] = sub_26644199C;
  v42 = *(v0 + 152);
  v44 = *(v0 + 112);
  v43 = *(v0 + 120);

  return sub_26643C888(v42, v14, v10, v43);
}

uint64_t sub_26644199C()
{
  v2 = *(*v1 + 288);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 296) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266441E00;
  }

  else
  {
    v4 = sub_266441ADC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266441ADC()
{
  v45 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 152);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  (*(v0 + 264))(*(v0 + 176), *(v0 + 256), *(v0 + 160));
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 224);
  v11 = *(v0 + 208);
  v10 = *(v0 + 216);
  v41 = *(v0 + 176);
  v38 = *(v0 + 240);
  v39 = *(v0 + 168);
  v40 = *(v0 + 160);
  v42 = *(v0 + 152);
  v43 = *(v0 + 280);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);
  v14 = *(v0 + 128);
  if (v8)
  {
    v35 = *(v0 + 248);
    v37 = *(v0 + 232);
    v15 = swift_slowAlloc();
    v36 = v9;
    v16 = swift_slowAlloc();
    v44 = v16;
    *v15 = 136315138;
    sub_2664463E0();
    log = v6;
    v34 = v11;
    v17 = sub_2664E0D48();
    v19 = v18;
    v20 = *(v13 + 8);
    v20(v12, v14);
    v21 = sub_2662A320C(v17, v19, &v44);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_26629C000, log, v7, "AppIntentInvoker#invokeShowMusicNoticeAppIntent response: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    v43(v41, v40);
    v20(v42, v14);
    (*(v10 + 8))(v36, v34);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v43(v41, v40);
    v22(v42, v14);
    (*(v10 + 8))(v9, v11);
  }

  v23 = *(v0 + 224);
  v24 = *(v0 + 192);
  v25 = *(v0 + 200);
  v27 = *(v0 + 176);
  v26 = *(v0 + 184);
  v29 = *(v0 + 144);
  v28 = *(v0 + 152);
  v30 = *(v0 + 120);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_266441E00()
{
  v2 = v0[30];
  v1 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[26];
  v6 = v0[27];
  v8 = v0[24];
  v7 = v0[25];
  v10 = v0[22];
  v9 = v0[23];
  v14 = v0[19];
  v15 = v0[18];
  v16 = v0[15];

  (*(v6 + 8))(v4, v5);

  v11 = v0[1];
  v12 = v0[37];

  return v11();
}

uint64_t sub_266441F0C(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26644207C, 0, 0);
}

uint64_t sub_26644207C()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  type metadata accessor for PodcastShowEntity();
  sub_266446694(&qword_280073980, type metadata accessor for PodcastShowEntity);

  v4 = sub_2664DF818();
  v0[17] = v4;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_2664DFA28();
  v0[18] = v8;
  v9 = sub_2664DF998();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_266442228;
  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[8];

  return sub_26643D788(v11, v8, v12);
}

uint64_t sub_266442228()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266442664;
  }

  else
  {
    v4 = sub_266442368;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266442368()
{
  v41 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v39 = v0[9];
  if (v11)
  {
    v36 = v0[18];
    v37 = v0[17];
    v18 = swift_slowAlloc();
    v38 = v13;
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v34 = v14;
    v35 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v40);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastShowAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v35, v39);
    v25(v38, v34);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v39);
    v27(v13, v14);
  }

  v29 = v0[15];
  v28 = v0[16];
  v31 = v0[11];
  v30 = v0[12];

  v32 = v0[1];

  return v32();
}

uint64_t sub_266442664()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[11];
  v5 = v0[12];

  v7 = v0[1];
  v8 = v0[20];

  return v7();
}

uint64_t sub_266442708(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266442878, 0, 0);
}

uint64_t sub_266442878()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  type metadata accessor for PodcastEpisodeEntity();
  sub_266446694(&qword_280073988, type metadata accessor for PodcastEpisodeEntity);

  v4 = sub_2664DF818();
  v0[17] = v4;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F10, &qword_2664E8ED0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_2664DFA28();
  v0[18] = v8;
  v9 = sub_2664DF998();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_266442A24;
  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[8];

  return sub_26643DDD0(v11, v8, v12);
}

uint64_t sub_266442A24()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266447598;
  }

  else
  {
    v4 = sub_266442B64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266442B64()
{
  v41 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v39 = v0[9];
  if (v11)
  {
    v36 = v0[18];
    v37 = v0[17];
    v18 = swift_slowAlloc();
    v38 = v13;
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v34 = v14;
    v35 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v40);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastEpisodeAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v35, v39);
    v25(v38, v34);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v39);
    v27(v13, v14);
  }

  v29 = v0[15];
  v28 = v0[16];
  v31 = v0[11];
  v30 = v0[12];

  v32 = v0[1];

  return v32();
}

uint64_t sub_266442E60(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = sub_2664DFE38();
  v3[9] = v4;
  v5 = *(v4 - 8);
  v3[10] = v5;
  v6 = *(v5 + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266442FD0, 0, 0);
}

uint64_t sub_266442FD0()
{
  v1 = v0[12];
  v3 = v0[6];
  v2 = v0[7];
  type metadata accessor for PodcastChannelEntity();
  sub_266446694(&qword_280073990, type metadata accessor for PodcastChannelEntity);

  v4 = sub_2664DF818();
  v0[17] = v4;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072CC8, &qword_2664E6860);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v8 = sub_2664DFA28();
  v0[18] = v8;
  v9 = sub_2664DF998();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = swift_task_alloc();
  v0[19] = v10;
  *v10 = v0;
  v10[1] = sub_26644317C;
  v11 = v0[16];
  v12 = v0[12];
  v13 = v0[8];

  return sub_26643E154(v11, v8, v12);
}

uint64_t sub_26644317C()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 96);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266447598;
  }

  else
  {
    v4 = sub_2664432BC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2664432BC()
{
  v41 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  v8 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  (*(v6 + 16))(v5, v8, v7);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[15];
  v13 = v0[16];
  v14 = v0[13];
  v15 = v0[14];
  v16 = v0[10];
  v17 = v0[11];
  v39 = v0[9];
  if (v11)
  {
    v36 = v0[18];
    v37 = v0[17];
    v18 = swift_slowAlloc();
    v38 = v13;
    v19 = swift_slowAlloc();
    v40 = v19;
    *v18 = 136315138;
    sub_2664463E0();
    v20 = sub_2664E0D48();
    v21 = v14;
    v34 = v14;
    v35 = v17;
    v22 = v20;
    v24 = v23;
    v25 = *(v15 + 8);
    v25(v12, v21);
    v26 = sub_2662A320C(v22, v24, &v40);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_26629C000, v9, v10, "AppIntentInvoker#invokeOpenPodcastChannelAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266784AD0](v19, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    (*(v16 + 8))(v35, v39);
    v25(v38, v34);
  }

  else
  {

    v27 = *(v15 + 8);
    v27(v12, v14);
    (*(v16 + 8))(v17, v39);
    v27(v13, v14);
  }

  v29 = v0[15];
  v28 = v0[16];
  v31 = v0[11];
  v30 = v0[12];

  v32 = v0[1];

  return v32();
}

uint64_t sub_2664435B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073928, &qword_2664ED330) - 8) + 64) + 15;
  v4[13] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073930, &qword_2664ED338) - 8) + 64) + 15;
  v4[14] = swift_task_alloc();
  v7 = sub_2664DF998();
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073998, &qword_2664ED400);
  v4[18] = v10;
  v11 = *(v10 - 8);
  v4[19] = v11;
  v12 = *(v11 + 64) + 15;
  v4[20] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739A0, &qword_2664ED408) - 8) + 64) + 15;
  v4[21] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739A8, &qword_2664ED410);
  v4[22] = v14;
  v15 = *(v14 - 8);
  v4[23] = v15;
  v16 = *(v15 + 64) + 15;
  v4[24] = swift_task_alloc();
  v17 = sub_2664DF948();
  v4[25] = v17;
  v18 = *(v17 - 8);
  v4[26] = v18;
  v19 = *(v18 + 64) + 15;
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v20 = sub_2664DFE38();
  v4[29] = v20;
  v21 = *(v20 - 8);
  v4[30] = v21;
  v22 = *(v21 + 64) + 15;
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v23 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v4[34] = swift_task_alloc();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v4[35] = v24;
  v25 = *(v24 - 8);
  v4[36] = v25;
  v26 = *(v25 + 64) + 15;
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26644397C, 0, 0);
}

uint64_t sub_26644397C()
{
  v1 = v0[34];
  v2 = v0[15];
  v3 = v0[16];
  v5 = v0[10];
  v4 = v0[11];
  type metadata accessor for PodcastShowEntity();
  sub_266446694(&qword_280073980, type metadata accessor for PodcastShowEntity);

  v6 = sub_2664DF818();
  v0[39] = v6;
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073748, &qword_2664EC460);
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  v10 = sub_2664DFA28();
  v0[40] = v10;
  (*(v3 + 56))(v1, 1, 1, v2);
  v11 = swift_task_alloc();
  v0[41] = v11;
  *v11 = v0;
  v11[1] = sub_266443B14;
  v12 = v0[38];
  v13 = v0[34];
  v14 = v0[12];

  return sub_26643E4D8(v12, v10, v13);
}

uint64_t sub_266443B14()
{
  v2 = *(*v1 + 328);
  v3 = *(*v1 + 272);
  v6 = *v1;
  *(*v1 + 336) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266444A14;
  }

  else
  {
    v4 = sub_266443C54;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266443C54()
{
  v104 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[29];
  v7 = v0[30];
  v8 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v99 = v8;
  v97 = *(v7 + 16);
  v97(v5, v8, v6);
  (*(v3 + 16))(v2, v1, v4);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[35];
  v15 = v0[33];
  v16 = v0[29];
  v17 = v0[30];
  if (v11)
  {
    v18 = swift_slowAlloc();
    v90 = swift_slowAlloc();
    v103 = v90;
    *v18 = 136315138;
    sub_2664463E0();
    v91 = v16;
    v94 = v15;
    v19 = sub_2664E0D48();
    v21 = v20;
    v89 = v10;
    v22 = *(v13 + 8);
    v22(v12, v14);
    v23 = sub_2662A320C(v19, v21, &v103);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_26629C000, v9, v89, "AppIntentInvoker#followShowAppIntent response: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v90);
    MEMORY[0x266784AD0](v90, -1, -1);
    MEMORY[0x266784AD0](v18, -1, -1);

    v24 = *(v17 + 8);
    v24(v94, v91);
  }

  else
  {

    v22 = *(v13 + 8);
    v22(v12, v14);
    v24 = *(v17 + 8);
    v24(v15, v16);
  }

  v0[43] = v22;
  v25 = v0[38];
  v26 = v0[35];
  v27 = v0[25];
  v28 = v0[26];
  v30 = v0[23];
  v29 = v0[24];
  v32 = v0[21];
  v31 = v0[22];
  sub_2664DF958();
  sub_2664DFA18();
  (*(v30 + 8))(v29, v31);
  if ((*(v28 + 48))(v32, 1, v27) == 1)
  {
    v33 = v0[39];
    v34 = v0[40];
    v35 = v0[21];

    sub_2662A9238(v35, &qword_2800739A0, &qword_2664ED408);
    (*(v0[36] + 32))(v0[9], v0[38], v0[35]);
    v37 = v0[37];
    v36 = v0[38];
    v39 = v0[33];
    v38 = v0[34];
    v41 = v0[31];
    v40 = v0[32];
    v42 = v0[27];
    v43 = v0[28];
    v44 = v0[24];
    v92 = v0[21];
    v95 = v0[20];
    v45 = v0[17];
    v100 = v0[14];
    v101 = v0[13];
    (*(v0[36] + 56))(v0[9], 0, 1, v0[35]);

    v46 = v0[1];

    return v46();
  }

  else
  {
    v48 = v0[32];
    v50 = v0[28];
    v49 = v0[29];
    v52 = v0[26];
    v51 = v0[27];
    v53 = v0[25];
    (*(v52 + 32))(v50, v0[21], v53);
    v97(v48, v99, v49);
    (*(v52 + 16))(v51, v50, v53);
    v54 = sub_2664DFE18();
    v55 = sub_2664E06E8();
    v56 = os_log_type_enabled(v54, v55);
    v57 = v0[32];
    v58 = v0[29];
    v59 = v0[30];
    v61 = v0[26];
    v60 = v0[27];
    v62 = v0[25];
    if (v56)
    {
      v102 = v0[29];
      v63 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v103 = v64;
      *v63 = 136315138;
      sub_266446694(&qword_2800739B0, MEMORY[0x277CEB010]);
      v96 = v57;
      v98 = v24;
      v65 = sub_2664E0D48();
      v67 = v66;
      v93 = v55;
      v68 = *(v61 + 8);
      v68(v60, v62);
      v69 = sub_2662A320C(v65, v67, &v103);

      *(v63 + 4) = v69;
      _os_log_impl(&dword_26629C000, v54, v93, "AppIntentInvoker#followShowAppIntent invoking showOutputAction intent: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v64);
      MEMORY[0x266784AD0](v64, -1, -1);
      MEMORY[0x266784AD0](v63, -1, -1);

      v98(v96, v102);
    }

    else
    {

      v68 = *(v61 + 8);
      v68(v60, v62);
      v24(v57, v58);
    }

    v0[44] = v68;
    v70 = v0[17];
    v72 = v0[13];
    v71 = v0[14];
    v73 = sub_2664DFCE8();
    (*(*(v73 - 8) + 56))(v71, 1, 1, v73);
    v74 = sub_2664DFA48();
    (*(*(v74 - 8) + 56))(v72, 1, 1, v74);
    sub_2664DF988();
    sub_2664DF978();
    v75 = sub_2664DF838();
    v76 = *(v75 + 48);
    v77 = *(v75 + 52);
    swift_allocObject();
    v78 = sub_2664DF828();
    v0[45] = v78;
    v79 = sub_266446444();
    v81 = v80;
    v0[46] = v79;
    ObjectType = swift_getObjectType();
    v83 = *(MEMORY[0x277CEAFE8] + 4);
    v84 = swift_task_alloc();
    v0[47] = v84;
    *v84 = v0;
    v84[1] = sub_2664443D4;
    v85 = v0[28];
    v86 = v0[20];
    v87 = v0[17];
    v88 = MEMORY[0x277CEAFA0];

    return MEMORY[0x28213DA80](v86, v85, v87, v78, v88, ObjectType, v81);
  }
}

uint64_t sub_2664443D4()
{
  v2 = *v1;
  v3 = *(*v1 + 376);
  v6 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v4 = sub_2664446C0;
  }

  else
  {
    (*(v2[19] + 8))(v2[20], v2[18]);
    v4 = sub_266444500;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266444500()
{
  v2 = v0[45];
  v1 = v0[46];
  v26 = v0[44];
  v4 = v0[39];
  v3 = v0[40];
  v5 = v0[28];
  v6 = v0[25];
  v7 = v0[26];
  v9 = v0[16];
  v8 = v0[17];
  v10 = v0[15];
  swift_unknownObjectRelease();

  (*(v9 + 8))(v8, v10);

  v26(v5, v6);
  (*(v0[36] + 32))(v0[9], v0[38], v0[35]);
  v12 = v0[37];
  v11 = v0[38];
  v14 = v0[33];
  v13 = v0[34];
  v16 = v0[31];
  v15 = v0[32];
  v17 = v0[27];
  v18 = v0[28];
  v19 = v0[24];
  v23 = v0[21];
  v24 = v0[20];
  v20 = v0[17];
  v25 = v0[14];
  v27 = v0[13];
  (*(v0[36] + 56))(v0[9], 0, 1, v0[35]);

  v21 = v0[1];

  return v21();
}

uint64_t sub_2664446C0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[44];
  v42 = v0[38];
  v44 = v0[43];
  v4 = v0[36];
  v41 = v0[35];
  v5 = v0[28];
  v7 = v0[25];
  v6 = v0[26];
  v8 = v0[16];
  v9 = v0[17];
  v10 = v0[15];
  swift_unknownObjectRelease();

  (*(v8 + 8))(v9, v10);
  v3(v5, v7);
  v44(v42, v41);
  v11 = v0[48];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = v0[30];
  v12 = v0[31];
  v14 = v0[29];
  v15 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v12, v15, v14);
  v16 = v11;
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();

  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[39];
  v21 = v0[40];
  if (v19)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v11;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_26629C000, v17, v18, "AppIntentInvoker#followShowAppIntent has returned an error: %@", v22, 0xCu);
    sub_2662A9238(v23, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);
  }

  else
  {
    v26 = v0[39];
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  v28 = v0[37];
  v27 = v0[38];
  v30 = v0[33];
  v29 = v0[34];
  v32 = v0[31];
  v31 = v0[32];
  v33 = v0[27];
  v34 = v0[28];
  v35 = v0[24];
  v39 = v0[21];
  v40 = v0[20];
  v36 = v0[17];
  v43 = v0[14];
  v45 = v0[13];
  (*(v0[36] + 56))(v0[9], 1, 1, v0[35]);

  v37 = v0[1];

  return v37();
}

uint64_t sub_266444A14()
{
  v1 = v0[42];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v3 = v0[30];
  v2 = v0[31];
  v4 = v0[29];
  v5 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[39];
  v11 = v0[40];
  if (v9)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_26629C000, v7, v8, "AppIntentInvoker#followShowAppIntent has returned an error: %@", v12, 0xCu);
    sub_2662A9238(v13, &qword_2800734B0, &unk_2664E3670);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);
  }

  else
  {
    v16 = v0[39];
  }

  (*(v0[30] + 8))(v0[31], v0[29]);
  v18 = v0[37];
  v17 = v0[38];
  v20 = v0[33];
  v19 = v0[34];
  v22 = v0[31];
  v21 = v0[32];
  v23 = v0[27];
  v24 = v0[28];
  v25 = v0[24];
  v29 = v0[21];
  v30 = v0[20];
  v26 = v0[17];
  v31 = v0[14];
  v32 = v0[13];
  (*(v0[36] + 56))(v0[9], 1, 1, v0[35]);

  v27 = v0[1];

  return v27();
}

uint64_t sub_266444CEC(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v3[11] = v5;
  v6 = *(v5 - 8);
  v3[12] = v6;
  v7 = *(v6 + 64) + 15;
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v8 = sub_2664DFE38();
  v3[15] = v8;
  v9 = *(v8 - 8);
  v3[16] = v9;
  v10 = *(v9 + 64) + 15;
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266444E68, 0, 0);
}

uint64_t sub_266444E68()
{
  v31 = v0;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[8];
  v5 = __swift_project_value_buffer(v2, qword_280F914F0);
  v0[19] = v5;
  swift_beginAccess();
  v6 = *(v3 + 16);
  v0[20] = v6;
  v0[21] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v5, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  v12 = v0[16];
  if (v9)
  {
    v14 = v0[7];
    v13 = v0[8];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2662A320C(v14, v13, &v30);
    _os_log_impl(&dword_26629C000, v7, v8, "AppIntentInvoker#invokeSearchPodcastsAppIntent with criteria: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x266784AD0](v16, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v17 = *(v12 + 8);
  v17(v10, v11);
  v0[22] = v17;
  v18 = v0[10];
  v19 = v0[8];
  v0[5] = v0[7];
  v0[6] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072680, &qword_2664E4578);
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();

  v23 = sub_2664DFA28();
  v0[23] = v23;
  v24 = sub_2664DF998();
  (*(*(v24 - 8) + 56))(v18, 1, 1, v24);
  v25 = swift_task_alloc();
  v0[24] = v25;
  *v25 = v0;
  v25[1] = sub_266445130;
  v26 = v0[14];
  v28 = v0[9];
  v27 = v0[10];

  return sub_26643ED70(v26, v23, v27);
}

uint64_t sub_266445130()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 200) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266445500;
  }

  else
  {
    v4 = sub_266445270;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266445270()
{
  v38 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 88);
  (*(v0 + 160))(*(v0 + 136), *(v0 + 152), *(v0 + 120));
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 176);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  v12 = *(v0 + 112);
  v36 = *(v0 + 120);
  v14 = *(v0 + 96);
  v13 = *(v0 + 104);
  v15 = *(v0 + 88);
  if (v8)
  {
    v34 = *(v0 + 184);
    v35 = *(v0 + 136);
    v16 = swift_slowAlloc();
    v31 = v7;
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    sub_2664463E0();
    v32 = v9;
    v33 = v12;
    v18 = sub_2664E0D48();
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_2662A320C(v18, v20, &v37);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_26629C000, v6, v31, "AppIntentInvoker#invokeSearchPodcastsAppIntent response: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    v32(v35, v36);
    v21(v33, v15);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v15);
    v9(v11, v36);
    v23(v12, v15);
  }

  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v27 = *(v0 + 104);
  v26 = *(v0 + 112);
  v28 = *(v0 + 80);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_266445500()
{
  v1 = v0[23];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[13];
  v4 = v0[14];
  v6 = v0[10];

  v7 = v0[1];
  v8 = v0[25];

  return v7();
}

uint64_t sub_2664455A8()
{
  v1[5] = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073920, &qword_2664ED328);
  v1[7] = v3;
  v4 = *(v3 - 8);
  v1[8] = v4;
  v5 = *(v4 + 64) + 15;
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v6 = sub_2664DFE38();
  v1[11] = v6;
  v7 = *(v6 - 8);
  v1[12] = v7;
  v8 = *(v7 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266445720, 0, 0);
}

uint64_t sub_266445720()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, qword_280F914F0);
  v0[15] = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  v0[16] = v5;
  v0[17] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_26629C000, v6, v7, "AppIntentInvoker#invokeOpenQueueAppIntent", v8, 2u);
    MEMORY[0x266784AD0](v8, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[6];

  v13 = *(v11 + 8);
  v0[18] = v13;
  v13(v9, v10);
  v14 = sub_2664DF998();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_task_alloc();
  v0[19] = v15;
  *v15 = v0;
  v15[1] = sub_266445924;
  v16 = v0[10];
  v18 = v0[5];
  v17 = v0[6];

  return sub_26643F0F4(v16, v17);
}

uint64_t sub_266445924()
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 160) = v0;

  sub_2662A9238(v3, &qword_280073938, &qword_2664ED340);
  if (v0)
  {
    v4 = sub_266445CE0;
  }

  else
  {
    v4 = sub_266445A64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_266445A64()
{
  v37 = v0;
  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);
  (*(v0 + 128))(*(v0 + 104), *(v0 + 120), *(v0 + 88));
  (*(v4 + 16))(v3, v2, v5);
  v6 = sub_2664DFE18();
  v7 = sub_2664E06E8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 144);
  v10 = *(v0 + 96);
  v11 = *(v0 + 104);
  v12 = *(v0 + 80);
  v35 = *(v0 + 88);
  v14 = *(v0 + 64);
  v13 = *(v0 + 72);
  v15 = *(v0 + 56);
  if (v8)
  {
    v34 = *(v0 + 80);
    v16 = swift_slowAlloc();
    v33 = v11;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    sub_2664463E0();
    v31 = v7;
    v18 = sub_2664E0D48();
    v32 = v9;
    v20 = v19;
    v21 = *(v14 + 8);
    v21(v13, v15);
    v22 = sub_2662A320C(v18, v20, &v36);

    *(v16 + 4) = v22;
    _os_log_impl(&dword_26629C000, v6, v31, "AppIntentInvoker#invokeOpenQueueAppIntent response: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v16, -1, -1);

    v32(v33, v35);
    v21(v34, v15);
  }

  else
  {

    v23 = *(v14 + 8);
    v23(v13, v15);
    v9(v11, v35);
    v23(v12, v15);
  }

  v25 = *(v0 + 104);
  v24 = *(v0 + 112);
  v27 = *(v0 + 72);
  v26 = *(v0 + 80);
  v28 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_266445CE0()
{
  v2 = v0[13];
  v1 = v0[14];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[6];

  v6 = v0[1];
  v7 = v0[20];

  return v6();
}

uint64_t sub_266445D8C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return sub_26643FB00(a1, a2, a3);
}

uint64_t sub_266445E3C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662C1890;

  return sub_26644122C(a1, a2, a3);
}

uint64_t sub_266445EEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v14 = *v6;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2662C1890;

  return sub_266440710(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t sub_266445FC4(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_266441F0C(a1, a2);
}

uint64_t sub_26644606C(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_266442708(a1, a2);
}

uint64_t sub_266446114(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_266442E60(a1, a2);
}

uint64_t sub_2664461BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2662BD660;

  return sub_2664435B8(a1, a2, a3);
}

uint64_t sub_266446270(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2662C1890;

  return sub_266444CEC(a1, a2);
}

uint64_t sub_266446318()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2662BD660;

  return sub_2664455A8();
}

uint64_t sub_2664463A8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

unint64_t sub_2664463E0()
{
  result = qword_280073948;
  if (!qword_280073948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073920, &qword_2664ED328);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073948);
  }

  return result;
}

uint64_t sub_266446444()
{
  v0 = sub_2664DF9C8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800739C8, &unk_2664ED530);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_2664DF9F8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v16[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_opt_self() defaultEnvironment];
  v16[3] = sub_2664472F8();
  v16[4] = MEMORY[0x277CEB188];
  v16[0] = v12;
  sub_2664DF9B8();
  (*(v1 + 104))(v4, *MEMORY[0x277CEB068], v0);
  sub_2664DF9E8();
  v13 = sub_2664DF9D8();
  (*(v8 + 8))(v11, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

uint64_t sub_266446694(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenMusicItemIntent(musicItemIdentifier:noticeEntity:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 112);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2662C1890;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeSearchMusicAppIntent(criteria:searchSource:mediaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v14 = *(*v6 + 120);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_2662C1890;

  return (v18)(a1, a2, a3, a4, a5, a6 & 1);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeShowMusicNoticeAppIntent(noticeEntity:musicItemIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 128);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2662C1890;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastShowAppIntent(showIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 136);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastEpisodeAppIntent(episodeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 144);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenPodcastChannelAppIntent(channelIdentifier:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 152);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.followShowAppIntent(id:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 160);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2662BD660;

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeSearchPodcastsAppIntent(criteria:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 168);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_2662C1890;

  return v10(a1, a2);
}

uint64_t dispatch thunk of AppIntentInvoker.invokeOpenQueueAppIntent()()
{
  v2 = *(*v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2662BD660;

  return v6();
}

uint64_t sub_2664471E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073938, &qword_2664ED340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_266447250()
{
  result = qword_2800739B8;
  if (!qword_2800739B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739B8);
  }

  return result;
}

unint64_t sub_2664472A4()
{
  result = qword_2800739C0;
  if (!qword_2800739C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739C0);
  }

  return result;
}

unint64_t sub_2664472F8()
{
  result = qword_2800739D0;
  if (!qword_2800739D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2800739D0);
  }

  return result;
}

unint64_t sub_266447344()
{
  result = qword_2800739D8;
  if (!qword_2800739D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739D8);
  }

  return result;
}

unint64_t sub_266447398()
{
  result = qword_2800739E0;
  if (!qword_2800739E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739E0);
  }

  return result;
}

unint64_t sub_2664473EC()
{
  result = qword_2800739E8;
  if (!qword_2800739E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739E8);
  }

  return result;
}

unint64_t sub_266447440()
{
  result = qword_2800739F0;
  if (!qword_2800739F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739F0);
  }

  return result;
}

unint64_t sub_266447494()
{
  result = qword_2800739F8;
  if (!qword_2800739F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800739F8);
  }

  return result;
}

unint64_t sub_2664474E8()
{
  result = qword_280073A00;
  if (!qword_280073A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073A00);
  }

  return result;
}

unint64_t sub_26644753C()
{
  result = qword_280073A08;
  if (!qword_280073A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073A08);
  }

  return result;
}

uint64_t sub_2664475B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v33 = MEMORY[0x277D84F90];
  v34 = v10;
  v35 = v6;
LABEL_4:
  v13 = v12;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
    v12 = v13;
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v15 = v14 | (v12 << 6);
    v16 = (*(v5 + 48) + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (*v16 == a2 && v17 == a3)
    {
      v18 = a2;
LABEL_18:

LABEL_20:
      result = swift_isUniquelyReferenced_nonNull_native();
      v25 = a2;
      if ((result & 1) == 0)
      {
        result = sub_2663846F4(0, *(v33 + 2) + 1, 1, v33);
        v33 = result;
      }

      v27 = *(v33 + 2);
      v26 = *(v33 + 3);
      if (v27 >= v26 >> 1)
      {
        result = sub_2663846F4((v26 > 1), v27 + 1, 1, v33);
        v33 = result;
      }

      v28 = v33;
      *(v33 + 2) = v27 + 1;
      v29 = &v28[16 * v27];
      *(v29 + 4) = v18;
      *(v29 + 5) = v17;
      a2 = v25;
      v10 = v34;
      v6 = v35;
      goto LABEL_4;
    }

    v20 = *(*(v5 + 56) + 8 * v15);
    v21 = sub_2664E0D88();
    if (v21)
    {
      goto LABEL_18;
    }

    v22 = v5;
    v36 = &v32;
    v23 = a2;
    v37[0] = a2;
    v37[1] = a3;
    MEMORY[0x28223BE20](v21);
    v31[2] = v37;

    v24 = sub_2662AA720(sub_2662AA7CC, v31, v20);

    if (v24)
    {
      a2 = v23;
      v5 = v22;
      goto LABEL_20;
    }

    v13 = v12;
    a2 = v23;
    v5 = v22;
    v10 = v34;
    v6 = v35;
  }

  while (v9);
  while (1)
  {
LABEL_6:
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
      return result;
    }

    if (v12 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      goto LABEL_9;
    }
  }

  if (*(v33 + 2))
  {
    a2 = *(v33 + 4);
    v30 = *(v33 + 5);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_266447850(void *a1, uint64_t a2, NSObject *a3, int a4, void *a5, uint64_t a6)
{
  v186 = a5;
  *&v187 = a6;
  v155 = a4;
  v163 = sub_2664E0038();
  v172 = *(v163 - 8);
  v9 = *(v172 + 64);
  MEMORY[0x28223BE20](v163);
  v162 = &v149 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00B8();
  v165 = *(v11 - 8);
  v12 = *(v165 + 64);
  MEMORY[0x28223BE20](v11);
  v167 = &v149 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_2664DFE08();
  v159 = *(v160 - 8);
  v14 = *(v159 + 64);
  v15 = MEMORY[0x28223BE20](v160);
  v183 = &v149 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = v16;
  MEMORY[0x28223BE20](v15);
  v158 = &v149 - v17;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v149 = &v149 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v177 = (&v149 - v24);
  MEMORY[0x28223BE20](v23);
  v26 = &v149 - v25;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v18, qword_280F914F0);
  swift_beginAccess();
  v28 = *(v19 + 16);
  v176 = v27;
  v175 = v19 + 16;
  v174 = v28;
  v28(v26, v27, v18);

  v29 = a1;

  v30 = a1;
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();

  v33 = os_log_type_enabled(v31, v32);
  v171 = v11;
  v173 = v30;
  v152 = v19;
  *&v185 = a2;
  v188 = a3;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v184 = swift_slowAlloc();
    aBlock = v184;
    *v34 = 67109634;
    *(v34 + 4) = v30 != 0;

    *(v34 + 8) = 1024;
    *(v34 + 10) = a3 != 0;

    *(v34 + 14) = 2080;
    v190 = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A78, &qword_2664ED620);
    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, &aBlock);

    *(v34 + 16) = v37;
    _os_log_impl(&dword_26629C000, v31, v32, "AppSelectionSignals#rawSignals... intent?:%{BOOL}d, preWarmed?:%{BOOL}d, permitted: %s", v34, 0x18u);
    v38 = v184;
    __swift_destroy_boxed_opaque_existential_1Tm(v184);
    MEMORY[0x266784AD0](v38, -1, -1);
    MEMORY[0x266784AD0](v34, -1, -1);

    (*(v152 + 8))(v26, v18);
  }

  else
  {

    (*(v19 + 8))(v26, v18);
  }

  v39 = v18;
  v40 = v29;
  v41 = swift_allocObject();
  v42 = MEMORY[0x277D84F90];
  v41[2] = MEMORY[0x277D84F90];
  v157 = swift_allocObject();
  *(v157 + 16) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_266385A94(v42);
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v182 = v40;
  v166 = v39;
  v44 = qword_280F91470;
  v194 = type metadata accessor for SiriKitTaskLoggingProvider();
  v195 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock = v44;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v170 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD00000000000001ELL, 0x80000002664F8EA0, 1, &aBlock);
  v180 = dispatch_group_create();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v164 = v43;
  v184 = v41;
  v45 = qword_280F91D48;
  v46 = v158;
  sub_2664DFDE8();
  v47 = v159;
  v48 = v183;
  v49 = v160;
  (*(v159 + 16))(v183, v46, v160);
  v50 = (*(v47 + 80) + 33) & ~*(v47 + 80);
  v51 = (v181 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = "appSelectionSignalsRawSignals";
  *(v52 + 24) = 29;
  *(v52 + 32) = 2;
  (*(v47 + 32))(v52 + v50, v48, v49);
  v53 = (v52 + v51);
  v54 = v187;
  *v53 = v186;
  v53[1] = v54;

  sub_2664E0848();
  v55 = MEMORY[0x277D84F90];
  sub_2664DFDC8();
  v56 = swift_allocObject();
  *(v56 + 16) = sub_266456C10;
  *(v56 + 24) = v52;
  v150 = v56;
  v151 = v52;

  v57 = v180;
  dispatch_group_enter(v180);
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v183 = qword_280F90760;
  v58 = swift_allocObject();
  v59 = v184;
  v58[2] = v173;
  v58[3] = v59;
  v60 = v164;
  v58[4] = v170;
  v58[5] = v60;
  v58[6] = v57;
  v195 = sub_266456CB8;
  v196 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v192 = 1107296256;
  v156 = &v193;
  v193 = sub_2662A3F90;
  v194 = &block_descriptor_43;
  v61 = _Block_copy(&aBlock);
  *&v187 = v182;

  v62 = v57;
  v63 = v167;
  sub_2664E0068();
  v190 = v55;
  v179 = sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198]);
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v180 = sub_2662A5AC8();
  v64 = v162;
  v65 = v163;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v63, v64, v61);
  _Block_release(v61);
  v66 = v172 + 8;
  v161 = *(v172 + 8);
  v161(v64, v65);
  v67 = v165 + 8;
  v181 = *(v165 + 8);
  v181(v63, v171);

  dispatch_group_enter(v62);
  v68 = swift_allocObject();
  v69 = v157;
  *(v68 + 16) = v188;
  *(v68 + 24) = v69;
  v70 = v184;
  *(v68 + 32) = v185;
  *(v68 + 40) = v70;
  *(v68 + 48) = v170;
  *(v68 + 56) = v62;
  *(v68 + 64) = v155 & 1;
  *(v68 + 72) = v173;
  v195 = sub_266456D18;
  v196 = v68;
  aBlock = MEMORY[0x277D85DD0];
  v192 = 1107296256;
  v193 = sub_2662A3F90;
  v194 = &block_descriptor_25;
  v186 = _Block_copy(&aBlock);
  v154 = v187;

  v71 = v62;
  v72 = v167;
  v188 = v71;

  sub_2664E0068();
  v190 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v73 = v186;
  MEMORY[0x266783800](0, v72, v64, v186);
  v74 = v67;
  v75 = v64;
  v76 = v73;
  v77 = v181;
  v78 = v161;
  _Block_release(v76);
  v78(v64, v65);
  v77(v72, v171);

  v172 = v66;
  if (v173)
  {
    v79 = qword_280F90748;
    v80 = v154;
    if (v79 != -1)
    {
      v148 = v80;
      swift_once();
      v80 = v148;
    }

    v178 = v80;
    v165 = v74;
    v82 = *(qword_280F91CD0 + 16);
    v83 = MEMORY[0x277D84F90];
    v84 = v185;
    v85 = v177;
    v86 = v188;
    if (v82)
    {
      v87 = 0;
      v88 = qword_280F91CD0 + 32;
      v186 = (v185 + 32);
      v168 = (v152 + 8);
      *&v81 = 136446210;
      v153 = v81;
      v89 = v166;
      v169 = qword_280F91CD0 + 32;
      do
      {
        v90 = *(v88 + 16 * v87);
        if (v84)
        {
          v91 = *(*(&v90 + 1) + 8);
          v92 = *(v88 + 16 * v87);
          v93 = *(v84 + 16) + 1;
          v94 = v186;
          while (--v93)
          {
            v95 = *v94;
            v94 += 2;
            if (v95 == v90)
            {
              goto LABEL_23;
            }
          }

          v174(v85, v176, v89);
          v100 = v85;
          v101 = sub_2664DFE18();
          v102 = sub_2664E06C8();
          if (os_log_type_enabled(v101, v102))
          {
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            v189 = v104;
            *v103 = v153;
            aBlock = v92;
            v192 = v91;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
            v105 = sub_2664E0318();
            v107 = sub_2662A320C(v105, v106, &v189);

            *(v103 + 4) = v107;
            _os_log_impl(&dword_26629C000, v101, v102, "AppSelectionSignals#permittedApproved skipping non-permitted signal: %{public}s", v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v104);
            v108 = v104;
            v89 = v166;
            MEMORY[0x266784AD0](v108, -1, -1);
            MEMORY[0x266784AD0](v103, -1, -1);
          }

          (*v168)(v100, v89);
          v84 = v185;
          v85 = v100;
          v86 = v188;
          v88 = v169;
        }

        else
        {
LABEL_23:
          v187 = *(v88 + 16 * v87);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v190 = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2662FCF84(0, *(v83 + 16) + 1, 1);
            v85 = v177;
            v83 = v190;
          }

          v98 = *(v83 + 16);
          v97 = *(v83 + 24);
          v99 = v187;
          if (v98 >= v97 >> 1)
          {
            sub_2662FCF84((v97 > 1), v98 + 1, 1);
            v99 = v187;
            v85 = v177;
            v83 = v190;
          }

          *(v83 + 16) = v98 + 1;
          *(v83 + 16 * v98 + 32) = v99;
          v86 = v188;
        }

        ++v87;
      }

      while (v87 != v82);
    }

    v169 = v83;
    v109 = *(v83 + 16);
    v110 = v163;
    v111 = v162;
    v112 = v167;
    v113 = v171;
    v114 = v184;
    v115 = v170;
    v116 = v161;
    if (v109)
    {
      v117 = (v169 + 32);
      v177 = &v193;
      do
      {
        v185 = *v117;
        v186 = v117 + 1;
        *&v187 = v109;
        dispatch_group_enter(v86);
        v118 = swift_allocObject();
        *(v118 + 16) = v185;
        v119 = v86;
        v120 = v178;
        *(v118 + 32) = v178;
        *(v118 + 40) = v114;
        *(v118 + 48) = v115;
        *(v118 + 56) = v119;
        v195 = sub_266456D48;
        v196 = v118;
        aBlock = MEMORY[0x277D85DD0];
        v192 = 1107296256;
        v193 = sub_2662A3F90;
        v194 = &block_descriptor_37_0;
        *&v185 = _Block_copy(&aBlock);
        v121 = v120;

        v122 = v188;
        sub_2664E0068();
        v190 = MEMORY[0x277D84F90];
        sub_2664E0A08();
        v123 = v185;
        MEMORY[0x266783800](0, v112, v111, v185);
        v114 = v184;
        v124 = v123;
        v86 = v188;
        _Block_release(v124);
        v116(v111, v110);
        v181(v112, v113);

        v117 = v186;
        v109 = v187 - 1;
      }

      while (v187 != 1);
    }

    if (v155)
    {
      v125 = v149;
      v174(v149, v176, v166);
      v126 = sub_2664DFE18();
      v127 = sub_2664E06C8();
      v128 = os_log_type_enabled(v126, v127);
      v129 = v163;
      v75 = v162;
      v130 = v167;
      v131 = v164;
      if (v128)
      {
        v132 = swift_slowAlloc();
        *v132 = 0;
        _os_log_impl(&dword_26629C000, v126, v127, "Megamodel: Queuing intent dependent megamodel signals", v132, 2u);
        v133 = v132;
        v86 = v188;
        MEMORY[0x266784AD0](v133, -1, -1);
      }

      (*(v152 + 8))(v125, v166);
      dispatch_group_enter(v86);
      v134 = swift_allocObject();
      v135 = v178;
      v134[2] = v131;
      v134[3] = v135;
      v136 = v170;
      v134[4] = v184;
      v134[5] = v136;
      v134[6] = v86;
      v195 = sub_266456D78;
      v196 = v134;
      aBlock = MEMORY[0x277D85DD0];
      v192 = 1107296256;
      v193 = sub_2662A3F90;
      v194 = &block_descriptor_43_0;
      v137 = _Block_copy(&aBlock);
      v138 = v135;

      v139 = v86;
      sub_2664E0068();
      v190 = MEMORY[0x277D84F90];
      v65 = v129;
      v72 = v130;
      sub_2664E0A08();
      MEMORY[0x266783800](0, v130, v75, v137);
      _Block_release(v137);

      v78 = v161;
      v161(v75, v129);
      v181(v72, v171);
    }

    else
    {

      v65 = v163;
      v75 = v162;
      v72 = v167;
      v78 = v161;
    }
  }

  v140 = swift_allocObject();
  v141 = v157;
  v140[2] = v184;
  v140[3] = v141;
  v142 = v173;
  v140[4] = v164;
  v140[5] = v142;
  v143 = v150;
  v140[6] = sub_2662D4304;
  v140[7] = v143;
  v195 = sub_266456D30;
  v196 = v140;
  aBlock = MEMORY[0x277D85DD0];
  v192 = 1107296256;
  v193 = sub_2662A3F90;
  v194 = &block_descriptor_31;
  v144 = _Block_copy(&aBlock);
  v145 = v154;

  sub_2664E0068();
  v190 = MEMORY[0x277D84F90];
  sub_2664E0A08();
  v146 = v188;
  sub_2664E0758();
  _Block_release(v144);

  v78(v75, v65);
  v181(v72, v171);
  (*(v159 + 8))(v158, v160);
}

uint64_t sub_266448E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v4;
    sub_26634F35C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v21;
  }

  else
  {
    v13 = *v4;
    v14 = sub_2662A3E98(a3, a4);
    LOBYTE(v13) = v15;

    if (v13)
    {
      v16 = *v5;
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v5;
      v22 = *v5;
      if (!v17)
      {
        sub_26645429C();
        v18 = v22;
      }

      v19 = *(*(v18 + 48) + 16 * v14 + 8);

      v20 = *(*(v18 + 56) + 16 * v14 + 8);

      result = sub_266452FEC(v14, v18);
      *v5 = v18;
    }
  }

  return result;
}

uint64_t sub_266448F8C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t *a5, uint64_t *a6)
{
  v7 = v6;
  if (a1)
  {
    v12 = *v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v6;
    a4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v6 = v24;
  }

  else
  {
    v17 = *v6;
    v18 = sub_2662A3E98(a2, a3);
    LOBYTE(v17) = v19;

    if (v17)
    {
      v20 = *v7;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *v7;
      v25 = *v7;
      if (!v21)
      {
        sub_26645443C(a5, a6);
        v22 = v25;
      }

      v23 = *(*(v22 + 48) + 16 * v18 + 8);

      result = sub_266452E3C(v18, v22);
      *v7 = v22;
    }
  }

  return result;
}

void sub_2664490A4(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    sub_266318804(a1, v7);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_26634F694(v7, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v6;
  }

  else
  {
    sub_2662A9238(a1, &unk_280074250, &unk_2664E3680);
    sub_266407BAC(a2, v7);

    sub_2662A9238(v7, &unk_280074250, &unk_2664E3680);
  }
}

uint64_t sub_266449158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_26634FAB8(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_2662A3E98(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_2664549F4();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);
      swift_unknownObjectRelease();
      result = sub_266452E3C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_266449250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A50, &unk_2664ED5F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - v9;
  v11 = sub_2664DF398();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_2662A9238(a1, &unk_280073A50, &unk_2664ED5F0);
    sub_266407C4C(a2, a3, v10);

    return sub_2662A9238(v10, &unk_280073A50, &unk_2664ED5F0);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_26634FC00(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_266449428(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  while (v7)
  {
LABEL_10:
    v14 = __clz(__rbit64(v7)) | (v10 << 6);
    v15 = (*(a2 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = *(*(a2 + 56) + 8 * v14);

    v19 = sub_2664475B4(a1, v17, v16);
    v21 = v19;
    v22 = v20;
    v23 = 0.0;
    if (*(v11 + 16))
    {
      v24 = sub_2662A3E98(v19, v20);
      if (v25)
      {
        v23 = *(*(v11 + 56) + 8 * v24);
      }
    }

    v7 &= v7 - 1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26634F084(v21, v22, isUniquelyReferenced_nonNull_native, v18 + v23);
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v13 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v13);
    ++v10;
    if (v7)
    {
      v10 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2664495A0(uint64_t a1, uint64_t a2)
{
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = MEMORY[0x277D84F98];
  while (v7)
  {
LABEL_13:
    v16 = __clz(__rbit64(v7)) | (v10 << 6);
    v17 = (*(a2 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    v13 = *(*(a2 + 56) + 8 * v16);

    v20 = sub_2664475B4(a1, v19, v18);
    v22 = v20;
    v23 = v21;
    if (*(v11 + 16) && (v24 = sub_2662A3E98(v20, v21), (v25 & 1) != 0))
    {
      v12 = *(*(v11 + 56) + 8 * v24);
    }

    else
    {
      v12 = 1.79769313e308;
    }

    v7 &= v7 - 1;
    if (v13 >= v12)
    {
      v13 = v12;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26634F084(v22, v23, isUniquelyReferenced_nonNull_native, v13);
  }

  while (1)
  {
    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      return v11;
    }

    v7 = *(v4 + 8 * v15);
    ++v10;
    if (v7)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_266449720@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 8);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = v4 + 32;
    while (v7 < *(v4 + 16))
    {
      sub_2662A5550(v8, &v9);
      __swift_project_boxed_opaque_existential_1(&v9, v10);
      if (swift_getDynamicType() == v6)
      {
        return sub_2662A8618(&v9, a2);
      }

      ++v7;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v9);
      v8 += 40;
      if (v5 == v7)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t AppSelectionSignals.RawSignalResult.recordableResult(start:test:)(uint64_t a1, int a2)
{
  LODWORD(v69) = a2;
  v3 = sub_2664DFE38();
  v70 = *(v3 - 8);
  v71 = v3;
  v4 = *(v70 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v2;
  v12 = v2[1];
  v14 = v2[2];
  v15 = v2[3];
  sub_2664DE428();
  sub_2664DE388();
  v17 = v16;
  (*(v8 + 8))(v11, v7);
  v18 = sub_2664568A0(v12, v13, v14, v15);
  v19 = sub_266386244(MEMORY[0x277D84F90]);
  v20 = *(v12 + 16);
  v68 = v18;
  if (v20)
  {
    v21 = v12 + 32;
    do
    {
      sub_2662A5550(v21, v74);
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v73[0] = swift_getDynamicType();
      v73[1] = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
      v24 = sub_2664E0318();
      v26 = v25;
      v27 = v75;
      v28 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      if (!v29)
      {
        v41 = sub_2662A3E98(v24, v26);
        v43 = v42;

        if (v43)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73[0] = v19;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_26645443C(&qword_280072FC0, &qword_2664ED6A0);
            v19 = v73[0];
          }

          v45 = *(v19[6] + 16 * v41 + 8);

          sub_266452E3C(v41, v19);
        }

        goto LABEL_5;
      }

      v30 = v29;
      v31 = v6;
      v32 = v19;
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v32;
      v35 = sub_2662A3E98(v24, v26);
      v36 = *(v32 + 16);
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v6 = v34;
      if (*(v32 + 24) >= v38)
      {
        if (v33)
        {
          v19 = v73[0];
          if ((v34 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_26645443C(&qword_280072FC0, &qword_2664ED6A0);
          v19 = v73[0];
          if ((v6 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_2664513C4(v38, v33, &qword_280072FC0, &qword_2664ED6A0);
        v39 = sub_2662A3E98(v24, v26);
        if ((v6 & 1) != (v40 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

        v35 = v39;
        v19 = v73[0];
        if ((v6 & 1) == 0)
        {
LABEL_18:
          v19[(v35 >> 6) + 8] |= 1 << v35;
          v46 = (v19[6] + 16 * v35);
          *v46 = v24;
          v46[1] = v26;
          *(v19[7] + 8 * v35) = v30;
          v47 = v19[2];
          v48 = __OFADD__(v47, 1);
          v49 = v47 + 1;
          if (v48)
          {
            goto LABEL_28;
          }

          v19[2] = v49;
          goto LABEL_4;
        }
      }

      v22 = v19[7];
      v23 = *(v22 + 8 * v35);
      *(v22 + 8 * v35) = v30;

LABEL_4:
      v6 = v31;
LABEL_5:
      __swift_destroy_boxed_opaque_existential_1Tm(v74);
      v21 += 40;
      --v20;
    }

    while (v20);
  }

  v50 = sub_2663854AC(MEMORY[0x277D84F90]);
  v51 = type metadata accessor for RecordableResult();
  v52 = objc_allocWithZone(v51);
  v53 = &v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_name];
  *v53 = 0x746C7561666564;
  v53[1] = 0xE700000000000000;
  *&v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_version] = 11;
  *&v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_timeElapsed] = v17;
  *&v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_rows] = v68;
  *&v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info] = v50;
  *&v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_signalTiming] = v19;
  v52[OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_test] = v69 & 1;
  v72.receiver = v52;
  v72.super_class = v51;

  v35 = objc_msgSendSuper2(&v72, sel_init);
  if (qword_280F914E8 != -1)
  {
LABEL_29:
    swift_once();
  }

  v54 = v71;
  v55 = __swift_project_value_buffer(v71, qword_280F914F0);
  swift_beginAccess();
  v56 = v70;
  (*(v70 + 16))(v6, v55, v54);
  v57 = sub_2664DFE18();
  v58 = sub_2664E06B8();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v73[0] = v60;
    *v59 = 134218242;
    *(v59 + 4) = v17;
    *(v59 + 12) = 2080;
    sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    v69 = v6;
    v61 = v56;

    v62 = sub_2664E01D8();
    v64 = v63;

    v65 = sub_2662A320C(v62, v64, v73);

    *(v59 + 14) = v65;
    _os_log_impl(&dword_26629C000, v57, v58, "AppSelectionSignals#RawSignalResult#recordableResult resolved in %fs. Timing: %s", v59, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    MEMORY[0x266784AD0](v60, -1, -1);
    MEMORY[0x266784AD0](v59, -1, -1);

    (*(v61 + 8))(v69, v54);
  }

  else
  {

    (*(v56 + 8))(v6, v54);
  }

  return v35;
}

uint64_t sub_266449F00()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2664E00B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v10 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000013, 0x80000002664ED560, v9, v4);
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_280F90760 = v10;
  return result;
}

id static AppSelectionSignals.queue.getter()
{
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90760;

  return v1;
}

uint64_t sub_26644A0F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AE0, &unk_2664EA260);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_2662ED984(0xD000000000000026, 0x80000002664F8F40, sub_26644A170, 0);
  qword_280F90778 = result;
  return result;
}

uint64_t sub_26644A1B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AA0, &unk_2664E4F40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664E34D0;
  *(v0 + 32) = &type metadata for IntentMediaSignal;
  *(v0 + 40) = &off_2877EF910;
  *(v0 + 48) = type metadata accessor for SelectedAppSignal();
  *(v0 + 56) = &off_2877E6348;
  *(v0 + 64) = type metadata accessor for PrivateIntentDataSignal();
  *(v0 + 72) = &off_2877F2D80;
  result = type metadata accessor for EntitySearchSignalLocal();
  *(v0 + 80) = result;
  *(v0 + 88) = &off_2877EA2E8;
  qword_280F91CD0 = v0;
  return result;
}

uint64_t sub_26644A254()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728F0, &qword_2664E4F60);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EB480;
  *(v0 + 32) = type metadata accessor for NowPlayingAppSignal();
  *(v0 + 40) = &off_2877EBA40;
  *(v0 + 48) = &type metadata for NowPlayingStateSignal;
  *(v0 + 56) = &off_2877EA5F8;
  *(v0 + 64) = type metadata accessor for ClientContextSignal();
  *(v0 + 72) = &off_2877EEE90;
  *(v0 + 80) = type metadata accessor for LastNowPlayingSignal();
  *(v0 + 88) = &off_2877F4B20;
  *(v0 + 96) = &type metadata for UserContextSignal;
  *(v0 + 104) = &off_2877F2E78;
  result = type metadata accessor for NowPlayingUsageSignal();
  *(v0 + 112) = result;
  *(v0 + 120) = &off_2877F01A8;
  qword_280F91CE0 = v0;
  return result;
}

uint64_t sub_26644A320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a4;
  v44 = a5;
  v41 = a2;
  v42 = a3;
  v6 = sub_2664DE438();
  v39 = *(v6 - 8);
  v7 = *(v39 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v40 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06B8();
  v19 = os_log_type_enabled(v17, v18);
  v45 = a1;
  if (v19)
  {
    v36 = v7;
    v37 = v10;
    v38 = v6;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v47 = v21;
    *v20 = 136446210;
    if (qword_280F90738 != -1)
    {
      swift_once();
    }

    v46 = &type metadata for SupportedMediaSignal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
    v22 = sub_2664E0318();
    v24 = sub_2662A320C(v22, v23, &v47);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_26629C000, v17, v18, "AppSelectionSignals#rawSignals(gathering) computing: %{public}s...", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x266784AD0](v21, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    (*(v12 + 8))(v15, v11);
    v10 = v37;
    v6 = v38;
    v7 = v36;
  }

  else
  {

    (*(v12 + 8))(v15, v11);
  }

  sub_2664DE428();
  if (qword_280F90738 != -1)
  {
    swift_once();
  }

  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v25 = v39;
  v26 = v40;
  (*(v39 + 16))(v40, v10, v6);
  v27 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v28 = (v7 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v10;
  v30 = swift_allocObject();
  v31 = v42;
  *(v30 + 2) = v41;
  *(v30 + 3) = v31;
  *(v30 + 4) = v43;
  (*(v25 + 32))(&v30[v27], v26, v6);
  v32 = v44;
  *&v30[v28] = v44;

  v33 = v32;
  sub_2663DB714(v45, sub_2664573B4, v30);

  return (*(v25 + 8))(v29, v6);
}

void sub_26644A7B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, NSObject *a6)
{
  v52 = a6;
  v48 = a5;
  v50 = sub_2664DE438();
  v54 = *(v50 - 8);
  v9 = *(v54 + 64);
  v10 = MEMORY[0x28223BE20](v50);
  v47 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v47 - v12;
  v13 = sub_2664DFE38();
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  MEMORY[0x28223BE20](v13);
  v49 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_beginAccess();
  v17 = *v16;
  v18 = v16[1];
  v20 = v16[2];
  v19 = v16[3];

  sub_2662A98AC();
  v21 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v21;
  v55 = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v21 = sub_266384800(0, v21[2] + 1, 1, v21);
    *(a2 + 16) = v21;
  }

  v24 = v21[2];
  v23 = v21[3];
  if (v24 >= v23 >> 1)
  {
    v21 = sub_266384800((v23 > 1), v24 + 1, 1, v21);
  }

  v59 = &type metadata for SupportedMediaSignal;
  v60 = &off_2877EEAE8;
  v25 = swift_allocObject();
  *&v58 = v25;
  v25[2] = v17;
  v25[3] = v18;
  v25[4] = v20;
  v25[5] = v19;
  v21[2] = v24 + 1;
  sub_2662A8618(&v58, &v21[5 * v24 + 4]);
  *(a2 + 16) = v21;

  sub_2662AA89C();
  swift_endAccess();

  v26 = __swift_project_boxed_opaque_existential_1(a1, a1[3])[2];
  swift_beginAccess();
  v27 = *(a4 + 16);
  *(a4 + 16) = v26;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = v55;
  v29 = __swift_project_value_buffer(v55, qword_280F914F0);
  swift_beginAccess();
  v30 = v51;
  v31 = v49;
  (*(v51 + 16))(v49, v29, v28);
  v33 = v53;
  v32 = v54;
  v34 = v50;
  (*(v54 + 16))(v53, v48, v50);
  v35 = sub_2664DFE18();
  v36 = sub_2664E06B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v57 = v48;
    *v37 = 136446466;
    if (qword_280F90738 != -1)
    {
      swift_once();
    }

    v56 = &type metadata for SupportedMediaSignal;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, &v57);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2048;
    v41 = v47;
    sub_2664DE428();
    v42 = v53;
    sub_2664DE388();
    v44 = v43;
    v45 = *(v54 + 8);
    v45(v41, v34);
    v45(v42, v34);
    *(v37 + 14) = v44;
    _os_log_impl(&dword_26629C000, v35, v36, "AppSelectionSignals#rawSignals(gathering) %{public}s complete in %fs.", v37, 0x16u);
    v46 = v48;
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v46, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    (*(v30 + 8))(v31, v55);
  }

  else
  {

    (*(v32 + 8))(v33, v34);
    (*(v30 + 8))(v31, v28);
  }

  dispatch_group_leave(v52);
}

void sub_26644AD20(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, int a7, void *a8)
{
  v34 = a6;
  v35 = a8;
  LODWORD(v8) = a7;
  v33 = a1;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v32 = v8;
    v8 = a2;
    v22 = a3;
    v23 = a4;
    v24 = a5;
    v25 = v21;
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "AppSelectionSignals#rawSignals computing noPrewarmedResults...", v21, 2u);
    v26 = v25;
    a5 = v24;
    a4 = v23;
    a3 = v22;
    a2 = v8;
    LOBYTE(v8) = v32;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v14 + 8))(v17, v13);
  if (v33)
  {
    v27 = v33;
  }

  else
  {
    if (qword_280F90770 != -1)
    {
      swift_once();
    }

    v27 = qword_280F90778;
  }

  v28 = v35;
  v29 = v35;

  v30 = v34;
  sub_26631339C(0x4024000000000000, 0, v27, a2, a3, a4, a5, v30, v8 & 1, v28);
}

void sub_26644B010(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, NSObject *a6, int a7, void *a8)
{
  v115 = a8;
  v120 = a7;
  v142 = a5;
  v141 = a4;
  v136 = sub_2664E0038();
  v119 = *(v136 - 8);
  v12 = *(v119 + 64);
  MEMORY[0x28223BE20](v136);
  v134 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_2664E00B8();
  v118 = *(v135 - 8);
  v14 = *(v118 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  v18 = v17[8];
  v19 = MEMORY[0x28223BE20](v16);
  v20 = MEMORY[0x28223BE20](v19);
  v131 = (&v114 - v21);
  MEMORY[0x28223BE20](v20);
  v23 = (&v114 - v22);
  v25 = *a1;
  v24 = a1[1];
  v26 = a1[3];
  v138 = a1[2];
  v137 = v26;
  v27 = MEMORY[0x277D84F90];
  v140 = v25;
  v139 = v24;
  v116 = v28;
  if (v25)
  {
  }

  else
  {
    v29 = MEMORY[0x277D84F90];
  }

  v30 = *(v29 + 16);
  v124 = v16;
  v123 = a3;
  v121 = a6;
  if (v30)
  {
    *&v143 = a2;
    v132 = v23;
    v31 = v17;
    *&v154 = v27;
    v32 = v29;
    sub_2662FD160(0, v30, 0);
    v27 = v154;
    v33 = v32 + 32;
    do
    {
      sub_2662A5550(v33, &aBlock);
      __swift_project_boxed_opaque_existential_1(&aBlock, v151);
      DynamicType = swift_getDynamicType();
      v35 = v152;
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
      *&v154 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2662FD160((v36 > 1), v37 + 1, 1);
        v27 = v154;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = DynamicType;
      *(v38 + 40) = v35;
      v33 += 40;
      --v30;
    }

    while (v30);

    v16 = v124;
    v17 = v31;
    a3 = v123;
    v23 = v132;
    a2 = v143;
  }

  else
  {
  }

  swift_beginAccess();
  v39 = *(a2 + 16);
  *(a2 + 16) = v27;

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  v41 = v17[2];
  v128 = v40;
  v127 = v17 + 2;
  v126 = v41;
  v41(v23, v40, v16);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    swift_beginAccess();
    v46 = *(a2 + 16);

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
    v48 = MEMORY[0x2667834D0](v46, v47);
    v50 = v49;

    v51 = v48;
    v16 = v124;
    v52 = sub_2662A320C(v51, v50, &aBlock);
    a3 = v123;

    *(v44 + 4) = v52;
    _os_log_impl(&dword_26629C000, v42, v43, "AppSelectionSignals#rawSignals prewarmed signals: %s", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v129 = v17[1];
  v129(v23, v16);
  v117 = v17;
  if (qword_280F90780 != -1)
  {
    swift_once();
  }

  v54 = *(qword_280F91CE0 + 16);
  v55 = MEMORY[0x277D84F90];
  if (v54)
  {
    v56 = 0;
    v57 = qword_280F91CE0 + 32;
    v132 = (a3 + 32);
    v125 = v117 + 1;
    *&v53 = 136446210;
    v122 = v53;
    v130 = v54;
    do
    {
      v58 = *(v57 + 16 * v56);
      if (a3)
      {
        v59 = *(*(&v58 + 1) + 8);
        v60 = *(v57 + 16 * v56);
        v61 = *(a3 + 16) + 1;
        v62 = v132;
        while (--v61)
        {
          v63 = *v62;
          v62 += 2;
          if (v63 == v58)
          {
            goto LABEL_25;
          }
        }

        v68 = v57;
        v69 = v131;
        v126(v131, v128, v16);
        v70 = sub_2664DFE18();
        v71 = sub_2664E06C8();
        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v144 = v73;
          *v72 = v122;
          aBlock = v60;
          v149 = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
          v74 = sub_2664E0318();
          v76 = sub_2662A320C(v74, v75, &v144);

          *(v72 + 4) = v76;
          _os_log_impl(&dword_26629C000, v70, v71, "AppSelectionSignals#permittedApproved skipping non-permitted signal: %{public}s", v72, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v73);
          v77 = v73;
          v16 = v124;
          MEMORY[0x266784AD0](v77, -1, -1);
          v78 = v72;
          a3 = v123;
          MEMORY[0x266784AD0](v78, -1, -1);
        }

        v129(v69, v16);
        v57 = v68;
        v54 = v130;
      }

      else
      {
LABEL_25:
        v143 = *(v57 + 16 * v56);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v154 = v55;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_2662FD1F0(0, v55[2] + 1, 1);
          v55 = v154;
        }

        v66 = v55[2];
        v65 = v55[3];
        v67 = v143;
        if (v66 >= v65 >> 1)
        {
          sub_2662FD1F0((v65 > 1), v66 + 1, 1);
          v67 = v143;
          v55 = v154;
        }

        v55[2] = v66 + 1;
        *&v55[2 * v66 + 4] = v67;
      }

      v56 = (v56 + 1);
    }

    while (v56 != v54);
  }

  v125 = v55;
  v79 = v55[2];
  v80 = v121;
  v81 = v140;
  if (v79)
  {
    v82 = (v125 + 4);
    v132 = &v150;
    v131 = (v119 + 8);
    v130 = (v118 + 8);
    while (1)
    {
      v143 = *v82;
      if (!v81)
      {
        break;
      }

      v144 = v81;
      v145 = v139;
      v146 = v138;
      v147 = v137;

      sub_266449720(v143, &v154);

      if (!*(&v155 + 1))
      {
        goto LABEL_40;
      }

      sub_2662A8618(&v154, &aBlock);
      v83 = v141;
      swift_beginAccess();
      v84 = v151;
      v85 = v152;
      v86 = __swift_project_boxed_opaque_existential_1(&aBlock, v151);
      sub_266455630(v86, (v83 + 16), v142, v84, v85);
      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
LABEL_35:
      ++v82;
      if (!--v79)
      {
        goto LABEL_43;
      }
    }

    v156 = 0;
    v154 = 0u;
    v155 = 0u;
LABEL_40:
    sub_2662A9238(&v154, &unk_280073AB0, &qword_2664EA238);
    dispatch_group_enter(v80);
    if (qword_280F90758 != -1)
    {
      swift_once();
    }

    v87 = swift_allocObject();
    *(v87 + 16) = v143;
    v88 = v142;
    *(v87 + 32) = v141;
    *(v87 + 40) = v88;
    *(v87 + 48) = v80;
    v152 = sub_266456EB8;
    v153 = v87;
    aBlock = MEMORY[0x277D85DD0];
    v149 = 1107296256;
    v150 = sub_2662A3F90;
    v151 = &block_descriptor_70;
    v89 = _Block_copy(&aBlock);

    v90 = v80;
    v91 = v133;
    sub_2664E0068();
    *&v154 = MEMORY[0x277D84F90];
    sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v92 = v134;
    v93 = v80;
    v94 = v136;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v91, v92, v89);
    _Block_release(v89);
    v95 = v94;
    v80 = v93;
    (*v131)(v92, v95);
    (*v130)(v91, v135);

    v81 = v140;
    goto LABEL_35;
  }

LABEL_43:

  if (v120)
  {
    if (v81)
    {
      v144 = v81;
      v145 = v139;
      v146 = v138;
      v147 = v137;

      sub_266449720(&type metadata for SiriSignalsIndependentSignalBridge, &v154);

      v96 = v124;
      v97 = v116;
      if (*(&v155 + 1))
      {
        sub_2662A8618(&v154, &aBlock);
        v98 = v141;
        swift_beginAccess();
        v99 = v151;
        v100 = v152;
        v101 = __swift_project_boxed_opaque_existential_1(&aBlock, v151);
        sub_266455630(v101, (v98 + 16), v142, v99, v100);
        swift_endAccess();
        __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
        goto LABEL_53;
      }
    }

    else
    {
      v156 = 0;
      v154 = 0u;
      v155 = 0u;
      v96 = v124;
      v97 = v116;
    }

    sub_2662A9238(&v154, &unk_280073AB0, &qword_2664EA238);
    v126(v97, v128, v96);
    v102 = sub_2664DFE18();
    v103 = sub_2664E06B8();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&dword_26629C000, v102, v103, "Megamodel: Queuing intent independent megamodel signals", v104, 2u);
      MEMORY[0x266784AD0](v104, -1, -1);
    }

    v129(v97, v96);
    dispatch_group_enter(v80);
    if (qword_280F90758 != -1)
    {
      swift_once();
    }

    v105 = swift_allocObject();
    v106 = v115;
    v107 = v141;
    v105[2] = v115;
    v105[3] = v107;
    v105[4] = v142;
    v105[5] = v80;
    v152 = sub_266456EE8;
    v153 = v105;
    aBlock = MEMORY[0x277D85DD0];
    v149 = 1107296256;
    v150 = sub_2662A3F90;
    v151 = &block_descriptor_76;
    v108 = _Block_copy(&aBlock);
    v109 = v106;

    v110 = v80;
    v111 = v133;
    sub_2664E0068();
    *&v154 = MEMORY[0x277D84F90];
    sub_266456CD0(&qword_280F8F6A0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662A5AC8();
    v112 = v134;
    v113 = v136;
    sub_2664E0A08();
    MEMORY[0x266783800](0, v111, v112, v108);
    _Block_release(v108);
    (*(v119 + 8))(v112, v113);
    (*(v118 + 8))(v111, v135);
  }

LABEL_53:
  dispatch_group_leave(v80);
}

uint64_t sub_26644C03C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v47 = a4;
  v48 = a5;
  v46 = a3;
  v7 = sub_2664DE438();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v44 = v11;
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v18, v19, v14);
  v20 = sub_2664DFE18();
  v21 = sub_2664E06B8();
  v22 = os_log_type_enabled(v20, v21);
  v49 = a1;
  v50 = a2;
  v51 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v43 = v7;
    v24 = v23;
    v25 = swift_slowAlloc();
    v53 = a2;
    v54 = v25;
    *v24 = 136446210;
    v52 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073AD0, &unk_2664ED660);
    v26 = sub_2664E0318();
    v28 = sub_2662A320C(v26, v27, &v54);

    *(v24 + 4) = v28;
    _os_log_impl(&dword_26629C000, v20, v21, "AppSelectionSignals#rawSignals(signalType) computing: %{public}s...", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x266784AD0](v25, -1, -1);
    v29 = v24;
    v13 = v51;
    v7 = v43;
    MEMORY[0x266784AD0](v29, -1, -1);
  }

  (*(v15 + 8))(v18, v14);
  sub_2664DE428();
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v43 = qword_280F90760;
  v30 = v45;
  v31 = v7;
  (*(v8 + 16))(v45, v13, v7);
  v32 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v33 = (v44 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  v35 = v47;
  *(v34 + 2) = v46;
  *(v34 + 3) = v35;
  v37 = v49;
  v36 = v50;
  *(v34 + 4) = v49;
  *(v34 + 5) = v36;
  (*(v8 + 32))(&v34[v32], v30, v31);
  v38 = v48;
  *&v34[v33] = v48;
  v39 = *(v36 + 16);

  v40 = v38;
  v39(v43, sub_2664572D4, v34, v37, v36);

  return (*(v8 + 8))(v51, v31);
}

uint64_t sub_26644C470(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  sub_2662B8E78(&qword_280F90278, v16);
  if (a1)
  {
    v8 = sub_26636E9A0(1u);
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v12[5] = a4;
  v13 = a1;

  v14 = a4;
  sub_2662BFF60(v11, v8, v10, 1, sub_266456F44, v12);

  return sub_2663DBE50(v16);
}

uint64_t sub_26644C5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v137 = a5;
  v136 = a4;
  v135 = a3;
  v147 = sub_2664DFE08();
  v144 = *(v147 - 8);
  v7 = *(v144 + 64);
  v8 = MEMORY[0x28223BE20](v147);
  v139 = &v127 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = v9;
  MEMORY[0x28223BE20](v8);
  v146 = &v127 - v10;
  v143 = sub_2664DE438();
  v142 = *(v143 - 8);
  v11 = *(v142 + 64);
  v12 = MEMORY[0x28223BE20](v143);
  v141 = &v127 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v127 - v14;
  v16 = sub_2664DFE38();
  v150 = *(v16 - 8);
  v151 = v16;
  v17 = v150[8];
  v18 = MEMORY[0x28223BE20](v16);
  v134 = &v127 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v127 - v20;
  v152 = sub_2664DEFE8();
  v145 = *(v152 - 8);
  v22 = *(v145 + 64);
  v23 = MEMORY[0x28223BE20](v152);
  v129 = &v127 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v127 - v26;
  MEMORY[0x28223BE20](v25);
  v148 = &v127 - v28;
  v29 = *(a1 + 16);
  v149 = v15;
  if (v29)
  {
    v133 = a2;
    v155 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v29, 0);
    v30 = v155;
    v31 = (a1 + 40);
    do
    {
      v33 = *(v31 - 1);
      v32 = *v31;
      v155 = v30;
      v35 = *(v30 + 16);
      v34 = *(v30 + 24);

      if (v35 >= v34 >> 1)
      {
        sub_2662FCF24((v34 > 1), v35 + 1, 1);
        v30 = v155;
      }

      *(v30 + 16) = v35 + 1;
      v36 = v30 + 16 * v35;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      v31 += 8;
      --v29;
    }

    while (v29);
    a2 = v133;
  }

  v37 = v145;
  v38 = v148;
  if (a2)
  {
    sub_26636E9A0(0);
  }

  v39 = v152;
  sub_2664DEFC8();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v40 = v151;
  v41 = __swift_project_value_buffer(v151, qword_280F914F0);
  swift_beginAccess();
  v42 = v150[2];
  v133 = v41;
  v132 = v150 + 2;
  v131 = v42;
  v42(v21, v41, v40);
  v43 = *(v37 + 16);
  v43(v27, v38, v39);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06B8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = v37;
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    v48 = *(sub_2664DEFD8() + 16);

    (*(v46 + 8))(v27, v39);
    *(v47 + 4) = v48;
    _os_log_impl(&dword_26629C000, v44, v45, "Megamodel: Collecting signals for %ld candidate bundles", v47, 0xCu);
    MEMORY[0x266784AD0](v47, -1, -1);
  }

  else
  {
    (*(v37 + 8))(v27, v39);
  }

  v49 = v150[1];
  ++v150;
  v130 = v49;
  v49(v21, v151);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073AC0, &qword_2664ED650);
  v50 = swift_allocObject();
  v127 = xmmword_2664E34E0;
  *(v50 + 16) = xmmword_2664E34E0;
  v51 = sub_2664DEDF8();
  v52 = MEMORY[0x277D60258];
  *(v50 + 32) = v51;
  *(v50 + 40) = v52;
  v53 = sub_2664DEF08();
  v54 = MEMORY[0x277D602F0];
  *(v50 + 48) = v53;
  *(v50 + 56) = v54;
  v55 = v148;
  v43(v129, v148, v39);
  v56 = sub_2664DEE58();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  sub_2664DEE48();
  sub_2664DEE28();

  __swift_project_boxed_opaque_existential_1(&v155, v156);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A80, &qword_2664ED628);
  v59 = swift_allocObject();
  *(v59 + 16) = v127;
  *(v59 + 56) = &type metadata for NowPlayingStateIndependentSignal;
  *(v59 + 64) = sub_266456F50();
  v60 = swift_allocObject();
  *(v59 + 32) = v60;
  v61 = MEMORY[0x277D60350];
  v60[7] = v152;
  v60[8] = v61;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60 + 4);
  v43(boxed_opaque_existential_1, v55, v152);
  v63 = off_280073C48;
  v60[2] = qword_280073C40;
  v60[3] = v63;
  *(v59 + 96) = &type metadata for ForegroundAppRecencyIndependentSignal;
  *(v59 + 104) = sub_2664334A8();
  v64 = swift_allocObject();
  *(v59 + 72) = v64;
  v64[8] = v152;
  v64[9] = v61;
  v65 = __swift_allocate_boxed_opaque_existential_1(v64 + 5);
  v43(v65, v55, v152);
  v66 = qword_280073880;
  v67 = off_280073888;
  v64[2] = 2592000;
  v64[3] = v66;
  v64[4] = v67;

  sub_2664DEEA8();

  __swift_project_boxed_opaque_existential_1(v154, v154[3]);
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_2664ED540;
  v69 = sub_2664DEC58();
  v70 = MEMORY[0x277D60248];
  *(v68 + 32) = v69;
  *(v68 + 40) = v70;
  v71 = sub_2664DEE68();
  v72 = MEMORY[0x277D60280];
  *(v68 + 48) = v71;
  *(v68 + 56) = v72;
  v73 = sub_2664DEE78();
  v74 = MEMORY[0x277D60290];
  *(v68 + 64) = v73;
  *(v68 + 72) = v74;
  v75 = sub_2664DEEC8();
  v76 = MEMORY[0x277D602C8];
  *(v68 + 80) = v75;
  *(v68 + 88) = v76;
  v77 = sub_2664DEF38();
  v78 = MEMORY[0x277D60308];
  *(v68 + 96) = v77;
  *(v68 + 104) = v78;
  v79 = sub_2664DEEF8();
  v80 = MEMORY[0x277D602D8];
  *(v68 + 112) = v79;
  *(v68 + 120) = v80;
  v81 = sub_2664DF078();
  v82 = MEMORY[0x277D603A8];
  *(v68 + 128) = v81;
  *(v68 + 136) = v82;
  v83 = sub_2664DEED8();
  v84 = MEMORY[0x277D602D0];
  *(v68 + 144) = v83;
  *(v68 + 152) = v84;
  v85 = sub_2664DEFB8();
  v86 = MEMORY[0x277D60348];
  *(v68 + 160) = v85;
  *(v68 + 168) = v86;
  v87 = sub_2664DEF88();
  v88 = MEMORY[0x277D60328];
  *(v68 + 176) = v87;
  *(v68 + 184) = v88;
  v89 = sub_2664DEE08();
  v90 = MEMORY[0x277D60268];
  *(v68 + 192) = v89;
  *(v68 + 200) = v90;
  v91 = sub_2664DEFA8();
  v92 = MEMORY[0x277D60340];
  *(v68 + 208) = v91;
  *(v68 + 216) = v92;
  v93 = sub_2664DEF18();
  v94 = MEMORY[0x277D602F8];
  *(v68 + 224) = v93;
  *(v68 + 232) = v94;
  v95 = sub_2664DF038();
  v96 = MEMORY[0x277D60398];
  *(v68 + 240) = v95;
  *(v68 + 248) = v96;
  v97 = sub_2664DF008();
  v98 = MEMORY[0x277D60390];
  *(v68 + 256) = v97;
  *(v68 + 264) = v98;
  v99 = sub_2664DEF98();
  v100 = MEMORY[0x277D60338];
  *(v68 + 272) = v99;
  *(v68 + 280) = v100;
  sub_2664DEE98();

  __swift_destroy_boxed_opaque_existential_1Tm(v153);
  __swift_destroy_boxed_opaque_existential_1Tm(v154);
  v101 = v134;
  v131(v134, v133, v151);
  v102 = sub_2664DFE18();
  v103 = sub_2664E06C8();
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    *v104 = 0;
    _os_log_impl(&dword_26629C000, v102, v103, "Megamodel: Collecting intent independent megamodel signals", v104, 2u);
    MEMORY[0x266784AD0](v104, -1, -1);
  }

  v130(v101, v151);
  __swift_project_boxed_opaque_existential_1(&v155, v156);
  v151 = sub_2664DEE88();
  v105 = swift_allocObject();
  v106 = v136;
  v105[2] = v135;
  v105[3] = v106;
  v107 = v137;
  v105[4] = v137;

  v108 = v107;
  sub_2664DE428();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v109 = qword_280F91D48;
  v110 = v146;
  sub_2664DFDE8();
  v111 = v144;
  v112 = v139;
  v113 = v147;
  (*(v144 + 16))(v139, v110, v147);
  v114 = (*(v111 + 80) + 33) & ~*(v111 + 80);
  v115 = (v138 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = swift_allocObject();
  *(v116 + 16) = "megamodelSignalCollectionIndependent";
  *(v116 + 24) = 36;
  *(v116 + 32) = 2;
  (*(v111 + 32))(v116 + v114, v112, v113);
  v117 = (v116 + v115);
  *v117 = sub_266456FA4;
  v117[1] = v105;

  sub_2664E0848();
  sub_2664DFDC8();
  v118 = swift_allocObject();
  *(v118 + 16) = sub_26645748C;
  *(v118 + 24) = v116;
  v119 = v142;
  v120 = v141;
  v121 = v143;
  (*(v142 + 16))(v141, v149, v143);
  v122 = (*(v119 + 80) + 16) & ~*(v119 + 80);
  v123 = (v140 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
  v124 = swift_allocObject();
  (*(v119 + 32))(v124 + v122, v120, v121);
  v125 = (v124 + v123);
  *v125 = sub_266457490;
  v125[1] = v118;

  sub_2664DECA8();

  (*(v111 + 8))(v146, v147);

  (*(v145 + 8))(v148, v152);
  (*(v119 + 8))(v149, v121);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v155);
}

uint64_t sub_26644D378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v47 = a5;
  v48 = a6;
  v46 = a4;
  v49 = a3;
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v44 = v12;
  v45 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v43 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v19, v20, v15);
  v21 = sub_2664DFE18();
  v22 = sub_2664E06B8();
  v23 = os_log_type_enabled(v21, v22);
  v50 = a1;
  v51 = a2;
  v52 = v14;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v43 = v8;
    v25 = v24;
    v26 = swift_slowAlloc();
    v54 = a2;
    v55 = v26;
    *v25 = 136446210;
    v53 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A98, &unk_2664ED640);
    v27 = sub_2664E0318();
    v29 = sub_2662A320C(v27, v28, &v55);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_26629C000, v21, v22, "AppSelectionSignals#rawSignals computing: %{public}s...", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x266784AD0](v26, -1, -1);
    v30 = v25;
    v14 = v52;
    v8 = v43;
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  (*(v16 + 8))(v19, v15);
  sub_2664DE428();
  if (qword_280F90758 != -1)
  {
    swift_once();
  }

  v43 = qword_280F90760;
  v31 = v45;
  v32 = v8;
  (*(v9 + 16))(v45, v14, v8);
  v33 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v34 = (v44 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v36 = v47;
  *(v35 + 2) = v46;
  *(v35 + 3) = v36;
  v38 = v50;
  v37 = v51;
  *(v35 + 4) = v50;
  *(v35 + 5) = v37;
  (*(v9 + 32))(&v35[v33], v31, v32);
  v39 = v48;
  *&v35[v34] = v48;
  v40 = *(v37 + 16);

  v41 = v39;
  v40(v49, v43, sub_266456E9C, v35, v38, v37);

  return (*(v9 + 8))(v52, v32);
}

void sub_26644D7B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, NSObject *a7, uint64_t *a8, uint64_t *a9, const char *a10)
{
  v47 = a5;
  v48 = a8;
  v52 = a7;
  v50 = a6;
  v46 = a4;
  v13 = sub_2664DE438();
  v51 = *(v13 - 8);
  v14 = *(v51 + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v43 - v17;
  v19 = sub_2664DFE38();
  v20 = *(v19 - 1);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v25 = a1[3];
  v24 = a1[4];
  v26 = __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_266455630(v26, (a2 + 16), a3, v25, v24);
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v19, qword_280F914F0);
  swift_beginAccess();
  (*(v20 + 16))(v23, v27, v19);
  v28 = v51;
  (*(v51 + 16))(v18, v50, v13);
  v29 = sub_2664DFE18();
  v30 = sub_2664E06B8();
  if (os_log_type_enabled(v29, v30))
  {
    v44 = a10;
    v31 = swift_slowAlloc();
    v45 = v20;
    v50 = v23;
    v32 = v28;
    v33 = v31;
    v34 = swift_slowAlloc();
    *v33 = 136446466;
    v53 = v46;
    v54 = v47;
    v55 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(v48, a9);
    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, &v55);
    v48 = v19;
    v38 = v37;

    *(v33 + 4) = v38;
    *(v33 + 12) = 2048;
    v39 = v49;
    sub_2664DE428();
    sub_2664DE388();
    v41 = v40;
    v42 = *(v32 + 8);
    v42(v39, v13);
    v42(v18, v13);
    *(v33 + 14) = v41;
    _os_log_impl(&dword_26629C000, v29, v30, v44, v33, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x266784AD0](v34, -1, -1);
    MEMORY[0x266784AD0](v33, -1, -1);

    (*(v45 + 8))(v50, v48);
  }

  else
  {

    (*(v28 + 8))(v18, v13);
    (*(v20 + 8))(v23, v19);
  }

  dispatch_group_leave(v52);
}

uint64_t sub_26644DBA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v70 = a2;
  v86 = sub_2664DFE08();
  v80 = *(v86 - 8);
  v6 = *(v80 + 64);
  v7 = MEMORY[0x28223BE20](v86);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v85 = &v67 - v8;
  v81 = sub_2664DE438();
  v79 = *(v81 - 8);
  v9 = *(v79 + 64);
  v10 = MEMORY[0x28223BE20](v81);
  v77 = v11;
  v78 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v87 = &v67 - v12;
  v13 = sub_2664DFE38();
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2664DEFE8();
  v83 = *(v16 - 8);
  v84 = v16;
  v17 = *(v83 + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v82 = &v67 - v21;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(v22 + 16);
  if (v23)
  {
    v68 = v13;
    v69 = v6;
    v24 = sub_26640C820(v23, 0);
    v25 = sub_266410DDC(&v88, v24 + 4, v23, v22);

    result = sub_2662B793C();
    if (v25 != v23)
    {
      __break(1u);
      return result;
    }

    v6 = v69;
    v13 = v68;
  }

  v27 = v82;
  sub_2664DEFC8();
  (*(v83 + 16))(v20, v27, v84);
  v28 = sub_2664DEE58();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  v31 = sub_2664DEE48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A80, &qword_2664ED628);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_2664E34E0;
  v33 = qword_280F91468;

  v34 = v71;
  if (v33 != -1)
  {
    swift_once();
  }

  v35 = qword_280F91470;
  *(v32 + 56) = &type metadata for PireneRequestSignal;
  *(v32 + 64) = sub_2662EA8CC();
  v36 = swift_allocObject();
  *(v32 + 32) = v36;
  v36[8] = type metadata accessor for SiriKitTaskLoggingProvider();
  v36[9] = &protocol witness table for SiriKitTaskLoggingProvider;
  v37 = off_280072690;
  v36[2] = qword_280072688;
  v36[3] = v37;
  v38 = v70;
  v36[4] = v70;
  v36[5] = v35;
  v40 = aIscontentfree[0];
  v39 = aIscontentfree[1];
  *(v32 + 96) = &type metadata for FreeMediItemSignal;
  *(v32 + 104) = sub_2663D953C();
  *(v32 + 72) = v40;
  *(v32 + 80) = v39;
  *(v32 + 88) = v38;
  v41 = v38;

  sub_2664DEE38();

  __swift_destroy_boxed_opaque_existential_1Tm(&v88);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v42 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  v43 = v72;
  (*(v72 + 16))(v34, v42, v13);
  v44 = sub_2664DFE18();
  v45 = sub_2664E06C8();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_26629C000, v44, v45, "Megamodel: Collecting intent dependent megamodel signals", v46, 2u);
    MEMORY[0x266784AD0](v46, -1, -1);
  }

  (*(v43 + 8))(v34, v13);
  v72 = sub_2664DEE18();

  v47 = swift_allocObject();
  v48 = v74;
  v47[2] = v73;
  v47[3] = v48;
  v49 = v75;
  v47[4] = v75;

  v50 = v49;
  sub_2664DE428();
  v75 = v31;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v51 = qword_280F91D48;
  v52 = v85;
  sub_2664DFDE8();
  v53 = v80;
  v54 = v76;
  v55 = v86;
  (*(v80 + 16))(v76, v52, v86);
  v56 = (*(v53 + 80) + 33) & ~*(v53 + 80);
  v57 = swift_allocObject();
  *(v57 + 16) = "megamodelSignalCollectionDependent";
  *(v57 + 24) = 34;
  *(v57 + 32) = 2;
  (*(v53 + 32))(v57 + v56, v54, v55);
  v58 = (v57 + ((v6 + v56 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v58 = sub_266456D90;
  v58[1] = v47;

  sub_2664E0848();
  sub_2664DFDC8();
  v59 = swift_allocObject();
  *(v59 + 16) = sub_266456DB8;
  *(v59 + 24) = v57;
  v60 = v78;
  v61 = v79;
  v62 = v81;
  (*(v79 + 16))(v78, v87, v81);
  v63 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v64 = (v77 + v63 + 7) & 0xFFFFFFFFFFFFFFF8;
  v65 = swift_allocObject();
  (*(v61 + 32))(v65 + v63, v60, v62);
  v66 = (v65 + v64);
  *v66 = sub_2662C148C;
  v66[1] = v59;

  sub_2664DECA8();

  (*(v53 + 8))(v85, v86);

  (*(v83 + 8))(v82, v84);
  return (*(v61 + 8))(v87, v62);
}

void sub_26644E4E0(void *a1, uint64_t a2, uint64_t a3, NSObject *a4, const char *a5)
{
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v16 = a1[4];
  v17 = __swift_project_boxed_opaque_existential_1(a1, v15);
  swift_beginAccess();
  sub_266455630(v17, (a2 + 16), a3, v15, *(v16 + 8));
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v14, v18, v10);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, a5, v21, 2u);
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  (*(v11 + 8))(v14, v10);
  dispatch_group_leave(a4);
}

uint64_t sub_26644E6F4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6)
{
  v92 = a5;
  v85 = a4;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = v11[8];
  v13 = MEMORY[0x28223BE20](v10);
  v93 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v79 - v15;
  swift_beginAccess();
  v17 = *(a1 + 16);

  v19 = sub_2664557EC(v18, a2 + 16);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v21 = v11[2];
  v87 = v11 + 2;
  v88 = v20;
  v86 = v21;
  v21(v16, v20, v10);

  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();

  v24 = os_log_type_enabled(v22, v23);
  v90 = a6;
  v91 = v11;
  v89 = a1;
  v94 = v10;
  if (v24)
  {
    v82 = v23;
    v83 = v22;
    v84 = v16;
    v25 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v95 = v81;
    *v25 = 136315394;
    swift_beginAccess();
    v26 = *(a3 + 16);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v27 = sub_2664E01D8();
    v29 = v28;

    v30 = sub_2662A320C(v27, v29, &v95);

    *(v25 + 4) = v30;
    *(v25 + 12) = 2082;
    isa = v19[2].isa;
    v32 = MEMORY[0x277D84F90];
    if (isa)
    {
      v80 = v25;
      v99 = MEMORY[0x277D84F90];
      sub_2662FD160(0, isa, 0);
      v32 = v99;
      v33 = v19;
      v34 = &v19[4];
      do
      {
        sub_2662A5550(v34, &v100);
        __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
        DynamicType = swift_getDynamicType();
        v36 = v102;
        __swift_destroy_boxed_opaque_existential_1Tm(&v100);
        v99 = v32;
        v38 = *(v32 + 16);
        v37 = *(v32 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_2662FD160((v37 > 1), v38 + 1, 1);
          v32 = v99;
        }

        *(v32 + 16) = v38 + 1;
        v39 = v32 + 16 * v38;
        *(v39 + 32) = DynamicType;
        *(v39 + 40) = v36;
        v34 += 40;
        --isa;
      }

      while (isa);
      v47 = v92;
      v10 = v94;
      v19 = v33;
      v25 = v80;
    }

    else
    {
      v47 = v92;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A10, &qword_2664ED550);
    v49 = MEMORY[0x2667834D0](v32, v48);
    v51 = v50;

    v52 = sub_2662A320C(v49, v51, &v95);

    *(v25 + 14) = v52;
    v53 = v83;
    _os_log_impl(&dword_26629C000, v83, v82, "AppSelectionSignals#rawSignals applying candidates %s to signals: %{public}s", v25, 0x16u);
    v54 = v81;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v54, -1, -1);
    MEMORY[0x266784AD0](v25, -1, -1);

    v55 = v84;
    v84 = v91[1];
    v84(v55, v10);
    v40 = v19[2].isa;
    if (!v40)
    {
      goto LABEL_16;
    }
  }

  else
  {

    v84 = v11[1];
    v84(v16, v10);
    v47 = v92;
    v40 = v19[2].isa;
    if (!v40)
    {
LABEL_16:

      goto LABEL_17;
    }
  }

  v83 = v19;
  v41 = &v19[4];
  swift_beginAccess();
  do
  {
    sub_2662A5550(v41, &v100);
    v42 = *(&v101 + 1);
    v43 = v102;
    __swift_project_boxed_opaque_existential_1(&v100, *(&v101 + 1));
    v44 = *(a3 + 16);
    v45 = *(v43 + 24);

    v45(v46, v42, v43);

    __swift_destroy_boxed_opaque_existential_1Tm(&v100);
    v41 += 40;
    v40 = (v40 - 1);
  }

  while (v40);

  v47 = v92;
LABEL_17:
  v56 = v89;
  if (v85)
  {
    v57 = qword_280F91468;
    v58 = v85;
    if (v57 != -1)
    {
      swift_once();
    }

    v59 = sub_26632958C(1010);
    swift_beginAccess();
    v60 = *(a3 + 16);

    v62 = sub_26639F100(v61);
    swift_beginAccess();
    v63 = *(v56 + 16);

    sub_2664BF708(v58, v62, v63, &v100);

    if (v59)
    {

      sub_26636B8D0();
    }

    swift_beginAccess();
    v64 = *(v56 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 16) = v64;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v64 = sub_266384800(0, v64[2] + 1, 1, v64);
      *(v56 + 16) = v64;
    }

    v67 = v64[2];
    v66 = v64[3];
    if (v67 >= v66 >> 1)
    {
      v64 = sub_266384800((v66 > 1), v67 + 1, 1, v64);
    }

    v97 = &type metadata for CompoundSignal;
    v98 = &off_2877F4AB0;
    v68 = swift_allocObject();
    *&v95 = v68;
    v69 = v101;
    *(v68 + 16) = v100;
    *(v68 + 32) = v69;
    *(v68 + 48) = v102;
    *(v68 + 64) = v103;
    v64[2] = v67 + 1;
    sub_2662A8618(&v95, &v64[5 * v67 + 4]);
    *(v56 + 16) = v64;
    swift_endAccess();
  }

  v70 = MEMORY[0x277D84F90];
  v86(v93, v88, v94);
  v71 = sub_2664DFE18();
  v72 = sub_2664E06B8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_26629C000, v71, v72, "AppSelectionSignals#rawSignals completed", v73, 2u);
    MEMORY[0x266784AD0](v73, -1, -1);
  }

  v84(v93, v94);
  swift_beginAccess();
  v74 = *(a3 + 16);

  v76 = sub_26639F100(v75);
  swift_beginAccess();
  v77 = *(v56 + 16);
  *&v95 = v76;
  *(&v95 + 1) = v77;
  v96 = v70;
  v97 = v70;

  v47(&v95);
  return sub_2663142F4(v95);
}

uint64_t sub_26644EF04(uint64_t *a1, void (*a2)(__int128 *))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1)
  {
    v11 = a1[2];
    v10 = a1[3];
    v12 = a1[1];
    *&v18 = v9;
    *(&v18 + 1) = v12;
    *&v19 = v11;
    *(&v19 + 1) = v10;

    a2(&v18);
    return sub_2663142F4(v18);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v14, v4);
    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_26629C000, v15, v16, "AppSelectionSignals#signals received nil raw signals", v17, 2u);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    v18 = 0u;
    v19 = 0u;
    return (a2)(&v18);
  }
}

uint64_t sub_26644F128(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  if (v6)
  {
    while (1)
    {
      v11 = v9;
LABEL_8:
      v12 = __clz(__rbit64(v6)) | (v11 << 6);
      v13 = (*(a2 + 48) + 16 * v12);
      v15 = *v13;
      v14 = v13[1];
      v16 = *(*(a2 + 56) + 8 * v12);

      result = sub_2664475B4(a1, v15, v14);
      v18 = result;
      v19 = v17;
      v20 = *(v10 + 16);
      if (v20)
      {
        result = sub_2662A3E98(result, v17);
        if (v21)
        {
          v20 = *(*(v10 + 56) + 8 * result);
        }

        else
        {
          v20 = 0;
        }
      }

      v22 = __OFADD__(v20, v16);
      v23 = v20 + v16;
      if (v22)
      {
        break;
      }

      v6 &= v6 - 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26634F1AC(v23, v18, v19, isUniquelyReferenced_nonNull_native);

      v9 = v11;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v7)
      {

        return v10;
      }

      v6 = *(v3 + 8 * v11);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26644F2AC(uint64_t a1, uint64_t a2, void (*a3)(char **), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, NSObject *a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v145 = a8;
  v144 = a7;
  v143 = a6;
  v151 = a5;
  v148 = a4;
  v149 = a3;
  v141 = a2;
  v130[1] = a11;
  v134 = a10;
  v133 = a9;
  v12 = sub_2664DEEB8();
  v150 = *(v12 - 8);
  v13 = *(v150 + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v131 = v130 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v132 = v130 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = v130 - v18;
  v20 = sub_2664DE438();
  v146 = *(v20 - 8);
  v147 = v20;
  v21 = *(v146 + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v135 = v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v136 = v130 - v25;
  MEMORY[0x28223BE20](v24);
  v140 = v130 - v26;
  v27 = sub_2664DFE38();
  v28 = *(v27 - 8);
  v152 = v27;
  v153 = v28;
  v29 = *(v28 + 64);
  v30 = MEMORY[0x28223BE20](v27);
  v138 = v130 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v142 = v130 - v32;
  v33 = sub_2664DEC98();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v137 = v130 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v139 = v130 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = v130 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A88, &qword_2664ED630);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x28223BE20](v42);
  v45 = v130 - v44;
  sub_2662A7224(a1, v130 - v44, &qword_280073A88, &qword_2664ED630);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = v150;
    (*(v150 + 32))(v19, v45, v12);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = v152;
    v48 = __swift_project_value_buffer(v152, qword_280F914F0);
    swift_beginAccess();
    v49 = v153;
    v50 = v138;
    (*(v153 + 16))(v138, v48, v47);
    v51 = *(v46 + 16);
    v52 = v132;
    v142 = v19;
    v53 = v50;
    v140 = v51;
    (v51)(v132, v19, v12);
    v55 = v146;
    v54 = v147;
    v56 = v136;
    (*(v146 + 16))(v136, v141, v147);
    v57 = sub_2664DFE18();
    LODWORD(v141) = sub_2664E06D8();
    if (os_log_type_enabled(v57, v141))
    {
      v58 = v12;
      v59 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      v156 = v139;
      *v59 = 136446722;
      v60 = v151;
      v155 = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
      v61 = sub_2664E0318();
      v62 = v54;
      v64 = sub_2662A320C(v61, v63, &v156);

      *(v59 + 4) = v64;
      *(v59 + 12) = 2082;
      (v140)(v131, v52, v58);
      v65 = sub_2664E0318();
      v67 = v66;
      v68 = *(v150 + 8);
      v68(v52, v58);
      v69 = sub_2662A320C(v65, v67, &v156);

      *(v59 + 14) = v69;
      *(v59 + 22) = 2050;
      v70 = v135;
      sub_2664DE428();
      v71 = v136;
      sub_2664DE388();
      v73 = v72;
      v74 = *(v55 + 8);
      v74(v70, v62);
      v74(v71, v62);
      *(v59 + 24) = v73;
      _os_log_impl(&dword_26629C000, v57, v141, "Megamodel signal collection failed for %{public}s with %{public}s in %{public}f", v59, 0x20u);
      v75 = v139;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v75, -1, -1);
      v76 = v59;
      v12 = v58;
      MEMORY[0x266784AD0](v76, -1, -1);

      (*(v153 + 8))(v138, v152);
    }

    else
    {

      (*(v55 + 8))(v56, v54);
      v68 = *(v150 + 8);
      v68(v52, v12);
      (*(v49 + 8))(v53, v47);
      v60 = v151;
    }

    v77 = v143;
    v122 = MEMORY[0x277D84F90];
    v123 = sub_2663858A8(MEMORY[0x277D84F90]);
    v124 = sub_266386244(v122);
    v159 = v60;
    v160 = v77;
    if (*v144 != -1)
    {
      swift_once();
    }

    v126 = sub_26639F100(v125);
    isa = v145->isa;
    v145->isa = v126;

    v156 = v123;
    v157 = v124;
    v158 = 0;
    v68(v142, v12);
  }

  else
  {
    (*(v34 + 32))(v41, v45, v33);
    v78 = sub_2664DEC78();
    v79 = sub_2664DEC88();
    sub_2664DEC68();
    v81 = v80;
    v159 = v151;
    v160 = v143;
    if (*v144 != -1)
    {
      swift_once();
    }

    v83 = sub_26639F100(v82);
    v84 = v145->isa;
    v145->isa = v83;

    v156 = v78;
    v157 = v79;
    v158 = v81;
    v86 = v152;
    v85 = v153;
    v87 = v142;
    v88 = v140;
    v89 = v139;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v90 = __swift_project_value_buffer(v86, qword_280F914F0);
    swift_beginAccess();
    (*(v85 + 16))(v87, v90, v86);
    v91 = v146;
    v92 = v88;
    v93 = v147;
    (*(v146 + 16))(v92, v141, v147);
    v94 = *(v34 + 16);
    v94(v89, v41, v33);
    v95 = v137;
    v94(v137, v41, v33);
    v96 = sub_2664DFE18();
    v97 = sub_2664E06C8();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v145 = v96;
      v99 = v91;
      v100 = v98;
      v101 = swift_slowAlloc();
      v150 = v101;
      *v100 = 136446978;
      v154 = v151;
      v155 = v101;
      __swift_instantiateConcreteTypeFromMangledNameV2(v133, v134);
      v102 = sub_2664E0318();
      LODWORD(v151) = v97;
      v104 = sub_2662A320C(v102, v103, &v155);

      *(v100 + 4) = v104;
      *(v100 + 12) = 2050;
      v105 = v135;
      sub_2664DE428();
      v106 = v140;
      sub_2664DE388();
      v108 = v107;
      v109 = *(v99 + 8);
      v109(v105, v93);
      v109(v106, v93);
      *(v100 + 14) = v108;
      *(v100 + 22) = 2082;
      v110 = v139;
      sub_2664DEC88();
      sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
      v111 = sub_2664E01D8();
      v112 = v153;
      v114 = v113;

      v115 = *(v34 + 8);
      v115(v110, v33);
      v116 = sub_2662A320C(v111, v114, &v155);

      *(v100 + 24) = v116;
      *(v100 + 32) = 2050;
      v117 = v137;
      sub_2664DEC68();
      v119 = v118;
      v115(v117, v33);
      *(v100 + 34) = v119;
      v120 = v145;
      _os_log_impl(&dword_26629C000, v145, v151, "Megamodel signal collection succeeded for %{public}s in %{public}f; breakdown is %{public}s, reported overall time from gatherer is %{public}f", v100, 0x2Au);
      v121 = v150;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v121, -1, -1);
      MEMORY[0x266784AD0](v100, -1, -1);

      (*(v112 + 8))(v142, v152);
      v115(v41, v33);
    }

    else
    {

      v128 = *(v34 + 8);
      v128(v95, v33);
      v128(v139, v33);
      (*(v91 + 8))(v140, v93);
      (*(v153 + 8))(v142, v86);
      v128(v41, v33);
    }
  }

  v149(&v156);
  return __swift_destroy_boxed_opaque_existential_1Tm(&v156);
}

uint64_t sub_26644FFAC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B60, &qword_2664E9118);
  v40 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + (v22 << 6);
      if (v40)
      {
        v41 = *(v26 + 8);
        v42 = *v26;
        v43 = *(v26 + 24);
        v45 = *(v26 + 32);
        v44 = *(v26 + 48);
        v46 = *(v26 + 56);
        v47 = *(v26 + 40);
      }

      else
      {
        v27 = *v26;
        v28 = *(v26 + 16);
        v29 = *(v26 + 48);
        v49 = *(v26 + 32);
        v50 = v29;
        *v48 = v27;
        *&v48[16] = v28;
        v46 = *(&v29 + 1);
        v47 = *(&v49 + 1);
        v44 = v29;
        v45 = v49;
        v42 = v27;
        v43 = *(&v28 + 1);
        v41 = *&v48[8];

        sub_2662C0AE0(v48, v51);
      }

      v30 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + (v16 << 6);
      *v18 = v42;
      *(v18 + 8) = v41;
      *(v18 + 24) = v43;
      *(v18 + 32) = v45;
      *(v18 + 40) = v47;
      *(v18 + 48) = v44;
      *(v18 + 56) = v46;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_266450328(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800729D8, &unk_2664E52F8);
  v36 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_266318804(v25, v37);
      }

      else
      {
        sub_2662A01E8(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_266318804(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2664505E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A30, &qword_2664E52F0);
  v39 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_2662A7224(v27, &v40, &unk_280074250, &unk_2664E3680);
      }

      v29 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_2664508BC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
  v37 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_266450B74(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2664E0C88();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_266450E14(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072FE8, &qword_2664F0860);
  v38 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2664510DC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F50, &qword_2664ED6B0);
  v40 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2664513C4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v41 = a2;
  result = sub_2664E0C88();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_266451660(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073A70, &unk_2664ED610);
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_266318804(v22, v34);
      }

      else
      {
        sub_2662A01E8(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_2664E0E68();
      type metadata accessor for CFString(0);
      sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString);
      sub_2664DF658();
      result = sub_2664E0EB8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_266318804(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_266451940(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072F58, &qword_2664E9078);
  v35 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = *(*(v5 + 48) + v21);
      v23 = (*(v5 + 56) + 16 * v21);
      v24 = v23[1];
      v36 = *v23;
      if ((v35 & 1) == 0)
      {
      }

      v25 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();

      result = sub_2664E0EB8();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v22;
      v17 = (*(v8 + 56) + 16 * v16);
      *v17 = v36;
      v17[1] = v24;
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_266451C5C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_2664E0C88();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_266451EFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B10, &qword_2664ED698);
  v38 = a2;
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];

        swift_unknownObjectRetain();
      }

      v27 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_2664521CC(uint64_t a1, int a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v54 = a3(0);
  v11 = *(v54 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v54);
  v53 = &v46 - v13;
  v14 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v15 = *(*v8 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = a2;
  result = sub_2664E0C88();
  v17 = result;
  if (*(v14 + 16))
  {
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v47 = v8;
    v48 = (v11 + 16);
    v49 = v14;
    v50 = v11;
    v52 = (v11 + 32);
    v24 = result + 64;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v18 << 6);
      v31 = *(v14 + 56);
      v32 = (*(v14 + 48) + 16 * v30);
      v34 = *v32;
      v33 = v32[1];
      v35 = *(v50 + 72);
      v36 = v31 + v35 * v30;
      if (v51)
      {
        (*v52)(v53, v36, v54);
      }

      else
      {
        (*v48)(v53, v36, v54);
      }

      v37 = *(v17 + 40);
      sub_2664E0E68();
      sub_2664E0368();
      result = sub_2664E0EB8();
      v38 = -1 << *(v17 + 32);
      v39 = result & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v24 + 8 * (v39 >> 6))) == 0)
      {
        v41 = 0;
        v42 = (63 - v38) >> 6;
        while (++v40 != v42 || (v41 & 1) == 0)
        {
          v43 = v40 == v42;
          if (v40 == v42)
          {
            v40 = 0;
          }

          v41 |= v43;
          v44 = *(v24 + 8 * v40);
          if (v44 != -1)
          {
            v25 = __clz(__rbit64(~v44)) + (v40 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v39) & ~*(v24 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v26 = (*(v17 + 48) + 16 * v25);
      *v26 = v34;
      v26[1] = v33;
      result = (*v52)(*(v17 + 56) + v35 * v25, v53, v54);
      ++*(v17 + 16);
      v14 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v47;
      goto LABEL_36;
    }

    v45 = 1 << *(v14 + 32);
    v8 = v47;
    if (v45 >= 64)
    {
      bzero(v19, ((v45 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v45;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v8 = v17;
  return result;
}

uint64_t sub_266452550(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073B00, &qword_2664ED680);
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_266318804(v22, v34);
      }

      else
      {
        sub_2662A01E8(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_2664E0E68();
      sub_2664E0E88();
      if (v21)
      {
        type metadata accessor for CFString(0);
        sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString);
        sub_2664DF658();
      }

      result = sub_2664E0EB8();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_266318804(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_38;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_26645284C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A60, &unk_2664ED600);
  result = sub_2664E0C88();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = *(v21 + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v24 = *(v21 + 8 * v20);
      }

      v25 = *(v8 + 40);
      result = sub_2664E0E58();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_35;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_266452ABC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v12 = *(a2 + 40);
      v13 = (*(a2 + 48) + 16 * v6);
      v14 = *v13;
      v15 = v13[1];
      sub_2664E0E68();

      sub_2664E0368();
      v16 = sub_2664E0EB8();

      v17 = v16 & v7;
      if (v3 >= v8)
      {
        if (v17 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v17)
      {
LABEL_10:
        v18 = *(a2 + 48);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
        }

        v21 = *(a2 + 56);
        v22 = (v21 + (v3 << 6));
        v23 = (v21 + (v6 << 6));
        if (v3 != v6 || v22 >= v23 + 4)
        {
          v9 = *v23;
          v10 = v23[1];
          v11 = v23[3];
          v22[2] = v23[2];
          v22[3] = v11;
          *v22 = v9;
          v22[1] = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_266452C74(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_2664E0E68();

      sub_2664E0368();
      v14 = sub_2664E0EB8();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_266452E3C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2664E0E68();

      sub_2664E0368();
      v13 = sub_2664E0EB8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_266452FEC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_2664E0E68();

      sub_2664E0368();
      v13 = sub_2664E0EB8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 16 * v3);
        v20 = (v18 + 16 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_26645319C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2664E0A28() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(*(a2 + 48) + 8 * v6);
      sub_2664E0E68();
      type metadata accessor for CFString(0);
      sub_266456CD0(&qword_2800729F8, type metadata accessor for CFString);
      v12 = v11;
      sub_2664DF658();
      v13 = sub_2664E0EB8();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 32 * v3);
        v20 = (v18 + 32 * v6);
        if (v3 != v6 || v19 >= v20 + 2)
        {
          v9 = v20[1];
          *v19 = *v20;
          v19[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}