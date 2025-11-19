uint64_t sub_222A5B150()
{
  v2 = *v1;
  v3 = (*v1)[17];
  v4 = *v1;
  v2[18] = v0;

  v5 = v2[16];
  if (v0)
  {
    sub_222A34F20(v2[3], &qword_27D01D458, &unk_222B07E00);

    v6 = sub_222A5F268;
  }

  else
  {
    v7 = v2[5];
    v8 = v2[3];

    sub_222A34F20(v8, &qword_27D01D458, &unk_222B07E00);
    sub_222A34F20(v7, &qword_27D01D700, &qword_222B07320);
    v6 = sub_222A5B2D8;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_222A5B2D8()
{
  v1 = v0[15];
  v3 = v0[12];
  v2 = v0[13];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[8];
  v7 = v0[9];
  v8 = v0[6];
  v9 = v0[7];
  v14 = v0[5];
  v15 = v0[4];
  v16 = v0[3];
  v12 = v0[14];
  v13 = v0[2];
  swift_getOpaqueTypeConformance2();
  sub_222B01F78();
  (*(v9 + 8))(v6, v8);
  sub_222A352E8(&qword_27D01D528, &qword_27D01D518, &qword_222B07E18);
  sub_222B01998();
  (*(v4 + 8))(v5, v7);
  (*(v2 + 16))(v12, v1, v3);
  sub_222A352E8(&qword_27D01D530, &qword_27D01D520, &qword_222B07E20);
  sub_222B02DA8();
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10();
}

uint64_t sub_222A5B4F4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_222A5B518, 0, 0);
}

uint64_t sub_222A5B518()
{
  v1 = *(v0 + 24);
  sub_222A5B578(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_222A5B578@<X0>(void *a1@<X8>)
{
  v2 = sub_222B01FF8();
  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v15 = MEMORY[0x277D84F90];
    result = sub_222B02D38();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC6F00](v6, v3);
        goto LABEL_6;
      }

      if ((v6 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v3 + 8 * v6 + 32);
LABEL_6:
      v8 = v7;
      ++v6;
      sub_222A5A040(v7);

      sub_222B02D18();
      v9 = *(v15 + 16);
      sub_222B02D48();
      sub_222B02D58();
      sub_222B02D28();
      if (i == v6)
      {

        v10 = v15;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D538, &unk_222B07E30);
  v11 = swift_allocObject();
  v11[6] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DCE0, &qword_222B0D8D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  if (v10 >> 62)
  {
    v13 = sub_222B02DC8();
  }

  else
  {
    v13 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = sub_222A352E8(&qword_280CB4AB0, &unk_27D01DCE0, &qword_222B0D8D0);
  result = swift_allocObject();
  *(result + 16) = v13;
  v11[2] = v12;
  v11[3] = v14;
  v11[4] = result;
  v11[5] = v14;
  *a1 = v11;
  return result;
}

uint64_t sub_222A5B7A0()
{
  sub_222B01FE8();
  sub_222A250BC(0, &qword_280CB4B80, 0x277D5A800);
  v0 = sub_222B01FD8();
  sub_222A250BC(0, &qword_27D01D540, 0x277D5A9D0);
  v1 = sub_222B01FD8();
  v2 = MEMORY[0x223DC6210](v0, v1);

  sub_222A250BC(0, &unk_280CB4B18, 0x277D57500);
  v3 = sub_222B01FD8();
  v4 = MEMORY[0x223DC6210](v2, v3);

  sub_222A250BC(0, &unk_280CB4B30, 0x277D590F0);
  v5 = sub_222B01FD8();
  v6 = MEMORY[0x223DC6210](v4, v5);

  sub_222A250BC(0, &qword_280CB4B00, 0x277D59610);
  v7 = sub_222B01FD8();
  v8 = MEMORY[0x223DC6210](v6, v7);

  sub_222A250BC(0, &unk_280CB4B48, 0x277D56858);
  v9 = sub_222B01FD8();
  v10 = MEMORY[0x223DC6210](v8, v9);

  sub_222A250BC(0, &qword_27D01D548, 0x277D58180);
  v11 = sub_222B01FD8();
  v12 = MEMORY[0x223DC6210](v10, v11);

  sub_222A250BC(0, &qword_280CB4AF8, 0x277D59C50);
  v13 = sub_222B01FD8();
  v14 = MEMORY[0x223DC6210](v12, v13);

  sub_222A250BC(0, &qword_27D01D550, 0x277D57038);
  v15 = sub_222B01FD8();
  v16 = MEMORY[0x223DC6210](v14, v15);

  return v16;
}

uint64_t sub_222A5B9E8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = sub_222B02768();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v11 = sub_222A5A3CC(0, 0, v7, &unk_222B07E48, v10, &qword_27D01D568, &qword_222B07E88);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A5EA60;
  *(v12 + 24) = v11;
  result = swift_allocObject();
  *(result + 16) = sub_222A5EA68;
  *(result + 24) = v12;
  *a1 = sub_222A5EA88;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BB70@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = sub_222B02768();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v11 = sub_222A5A3CC(0, 0, v7, &unk_222B07DB8, v10, &qword_27D01D500, &unk_222B07DE8);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A5C24C;
  *(v12 + 24) = v11;
  result = swift_allocObject();
  *(result + 16) = sub_222A5E728;
  *(result + 24) = v12;
  *a1 = sub_222A5E748;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BCF8@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = sub_222B02768();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v11 = sub_222A5A3CC(0, 0, v7, &unk_222B07EC0, v10, &qword_27D01D568, &qword_222B07E88);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A5F260;
  *(v12 + 24) = v11;
  result = swift_allocObject();
  *(result + 16) = sub_222A5F270;
  *(result + 24) = v12;
  *a1 = sub_222A5F258;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5BEA4@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D720, &qword_222B07760);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v7 = &v14 - v6;
  v8 = *v1;
  v9 = sub_222B02768();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;

  v11 = sub_222A5A3CC(0, 0, v7, &unk_222B07EB8, v10, &qword_27D01D500, &unk_222B07DE8);
  v12 = swift_allocObject();
  *(v12 + 16) = sub_222A5F25C;
  *(v12 + 24) = v11;
  result = swift_allocObject();
  *(result + 16) = sub_222A5F26C;
  *(result + 24) = v12;
  *a1 = sub_222A5F254;
  a1[1] = result;
  return result;
}

uint64_t sub_222A5C050(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A5ACDC(a1);
}

void *sub_222A5C104(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  return &unk_222B07E68;
}

void *sub_222A5C1A8(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  v4[2] = v3;
  v4[3] = a1;
  v4[4] = v2;

  return &unk_222B07DD0;
}

uint64_t sub_222A5C254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D558, &qword_222B07E78);
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D560, &qword_222B07E80);
  v3[22] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D568, &qword_222B07E88);
  v3[24] = v9;
  v10 = *(v9 - 8);
  v3[25] = v10;
  v11 = *(v10 + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5C3EC, 0, 0);
}

uint64_t sub_222A5C3EC()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[18];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0[18] + 24);
      v23 = (v3 + *v3);
      v5 = v3[1];
      v6 = swift_task_alloc();
      v0[32] = v6;
      *v6 = v0;
      v6[1] = sub_222A5CB5C;

      return v23(v0 + 15);
    }

    else
    {
      v16 = v0[28];
      v17 = v0[29];
      v19 = v0[26];
      v18 = v0[27];
      v20 = v0[23];
      v21 = v0[21];
      swift_endAccess();

      v22 = v0[1];

      return v22(0);
    }
  }

  else
  {
    v8 = v0[16];
    swift_beginAccess();
    *(v8 + 16) = 1;
    v9 = *(MEMORY[0x277D857D0] + 4);
    v10 = swift_task_alloc();
    v0[30] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v0[31] = v11;
    *v10 = v0;
    v10[1] = sub_222A5C684;
    v12 = v0[23];
    v13 = v0[24];
    v14 = v0[17];
    v15 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v12, v14, v13, v11, v15);
  }
}

uint64_t sub_222A5C684()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A5C780, 0, 0);
}

uint64_t sub_222A5C780()
{
  v1 = v0[22];
  v2 = v0[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[31];
    v0[14] = *v2;
    swift_willThrowTypedImpl();
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[23];
    v9 = v0[21];

    v10 = v0[1];

    return v10();
  }

  else
  {
    v12 = v0[28];
    v13 = v0[29];
    v14 = v0[27];
    v16 = v0[24];
    v15 = v0[25];
    v37 = v0[26];
    v38 = v0[21];
    v17 = v0[19];
    v39 = v17;
    v40 = v0[20];
    v41 = v0[18];
    v18 = v15[4];
    v18(v13, v2, v16);
    v19 = v15[2];
    v19(v12, v13, v16);
    v18(v14, v12, v16);
    v19(v37, v14, v16);
    sub_222A352E8(&qword_27D01D570, &qword_27D01D568, &qword_222B07E88);
    sub_222B02798();
    v20 = swift_allocBox();
    (*(v40 + 32))(v21, v38, v39);
    v22 = v15[1];
    v22(v14, v16);
    v22(v13, v16);
    swift_beginAccess();
    v23 = *(v41 + 16);
    v24 = *(v41 + 24);
    *(v41 + 16) = &unk_222B07E98;
    *(v41 + 24) = v20;
    sub_222A1F4CC(v23);
    v25 = v0[18];
    swift_beginAccess();
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = *(v0[18] + 24);
      v42 = (v26 + *v26);
      v28 = v26[1];
      v29 = swift_task_alloc();
      v0[32] = v29;
      *v29 = v0;
      v29[1] = sub_222A5CB5C;

      return v42(v0 + 15);
    }

    else
    {
      v30 = v0[28];
      v31 = v0[29];
      v33 = v0[26];
      v32 = v0[27];
      v34 = v0[23];
      v35 = v0[21];
      swift_endAccess();

      v36 = v0[1];

      return v36(0);
    }
  }
}

uint64_t sub_222A5CB5C()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_222A5CD34;
  }

  else
  {
    v3 = sub_222A5CC70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222A5CC70()
{
  v1 = v0[15];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[21];
  swift_endAccess();

  v8 = v0[1];

  return v8(v1);
}

uint64_t sub_222A5CD34()
{
  swift_endAccess();
  v1 = v0[33];
  v3 = v0[28];
  v2 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[23];
  v7 = v0[21];

  v8 = v0[1];

  return v8();
}

uint64_t sub_222A5CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a3;
  v4[18] = a4;
  v4[15] = a1;
  v4[16] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CDE8, &qword_222B050B0);
  v4[19] = v5;
  v6 = *(v5 - 8);
  v4[20] = v6;
  v7 = *(v6 + 64) + 15;
  v4[21] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D4F8, &qword_222B07DE0);
  v4[22] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v4[23] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D500, &unk_222B07DE8);
  v4[24] = v10;
  v11 = *(v10 - 8);
  v4[25] = v11;
  v12 = *(v11 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5CF7C, 0, 0);
}

uint64_t sub_222A5CF7C()
{
  v1 = v0[16];
  swift_beginAccess();
  if (*(v1 + 16))
  {
    v2 = v0[18];
    swift_beginAccess();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = *(v0[18] + 24);
      v25 = (v3 + *v3);
      v5 = v3[1];
      v6 = swift_task_alloc();
      v0[32] = v6;
      *v6 = v0;
      v6[1] = sub_222A5D6AC;
      v7 = v0[15];

      return v25(v7);
    }

    else
    {
      v17 = v0[15];
      swift_endAccess();
      *v17 = 0;
      v19 = v0[28];
      v18 = v0[29];
      v21 = v0[26];
      v20 = v0[27];
      v22 = v0[23];
      v23 = v0[21];

      v24 = v0[1];

      return v24();
    }
  }

  else
  {
    v9 = v0[16];
    swift_beginAccess();
    *(v9 + 16) = 1;
    v10 = *(MEMORY[0x277D857D0] + 4);
    v11 = swift_task_alloc();
    v0[30] = v11;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
    v0[31] = v12;
    *v11 = v0;
    v11[1] = sub_222A5D208;
    v13 = v0[23];
    v14 = v0[24];
    v15 = v0[17];
    v16 = MEMORY[0x277D84950];

    return MEMORY[0x282200440](v13, v15, v14, v12, v16);
  }
}

uint64_t sub_222A5D208()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_222A5D304, 0, 0);
}

uint64_t sub_222A5D304()
{
  v1 = v0[22];
  v2 = v0[23];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = v0[31];
    v0[14] = *v2;
    swift_willThrowTypedImpl();
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = v0[23];
    v9 = v0[21];

    v10 = v0[1];
LABEL_8:

    return v10();
  }

  v11 = v0[28];
  v12 = v0[29];
  v13 = v0[27];
  v15 = v0[24];
  v14 = v0[25];
  v38 = v0[26];
  v39 = v0[21];
  v16 = v0[19];
  v40 = v16;
  v41 = v0[20];
  v42 = v0[18];
  v17 = v14[4];
  v17(v12, v2, v15);
  v18 = v14[2];
  v18(v11, v12, v15);
  v17(v13, v11, v15);
  v18(v38, v13, v15);
  sub_222A352E8(&qword_27D01D508, &qword_27D01D500, &unk_222B07DE8);
  sub_222B02798();
  v19 = swift_allocBox();
  (*(v41 + 32))(v20, v39, v40);
  v21 = v14[1];
  v21(v13, v15);
  v21(v12, v15);
  swift_beginAccess();
  v22 = *(v42 + 16);
  v23 = *(v42 + 24);
  *(v42 + 16) = &unk_222B07DF8;
  *(v42 + 24) = v19;
  sub_222A1F4CC(v22);
  v24 = v0[18];
  swift_beginAccess();
  v25 = *(v24 + 16);
  if (!v25)
  {
    v31 = v0[15];
    swift_endAccess();
    *v31 = 0;
    v33 = v0[28];
    v32 = v0[29];
    v35 = v0[26];
    v34 = v0[27];
    v36 = v0[23];
    v37 = v0[21];

    v10 = v0[1];
    goto LABEL_8;
  }

  v26 = *(v0[18] + 24);
  v43 = (v25 + *v25);
  v27 = v25[1];
  v28 = swift_task_alloc();
  v0[32] = v28;
  *v28 = v0;
  v28[1] = sub_222A5D6AC;
  v29 = v0[15];

  return v43(v29);
}

uint64_t sub_222A5D6AC()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_222A5CD34;
  }

  else
  {
    v3 = sub_222A5D7C0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222A5D7C0()
{
  swift_endAccess();
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[23];
  v6 = v0[21];

  v7 = v0[1];

  return v7();
}

uint64_t sub_222A5D870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE10, &qword_222B05118);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A0, &qword_222B07EF8);
  v14 = swift_allocBox();
  (*(v9 + 16))(v13, a1, v8);
  sub_222A352E8(&qword_280CB4AC8, &qword_27D01CE10, &qword_222B05118);
  sub_222B02798();
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *a4 = &unk_222B07F08;
  *(a4 + 8) = v14;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
}

uint64_t sub_222A5D9EC(uint64_t a1)
{
  v1[5] = a1;
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A0, &qword_222B07EF8);
  v1[7] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5DA78, 0, 0);
}

uint64_t sub_222A5DA78()
{
  v1 = v0[7];
  swift_beginAccess();
  v2 = sub_222A352E8(&qword_280CB4AE0, &qword_27D01D5A0, &qword_222B07EF8);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_222A3229C;
  v5 = v0[6];
  v6 = v0[7];
  v7 = v0[5];

  return MEMORY[0x282200308](v7, v5, v2);
}

__n128 sub_222A5DB60@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  (*a1)(v10);
  LOBYTE(v3) = v11;
  v4 = v12;
  v5 = v13;
  v8 = v10[1];
  v9 = v10[0];
  v6 = swift_allocObject();
  result = v8;
  *(v6 + 16) = v9;
  *(v6 + 32) = v8;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  *a2 = &unk_222B07F40;
  a2[1] = v6;
  return result;
}

uint64_t sub_222A5DBE8(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_222A5DC08, 0, 0);
}

uint64_t sub_222A5DC08()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  *v2 = v0;
  v2[1] = sub_222A5DCC4;

  return sub_222A32870();
}

uint64_t sub_222A5DCC4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 56);
  v8 = *v3;
  *(*v3 + 64) = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](sub_222A320C4, 0, 0);
  }

  else
  {
    v9 = *(v6 + 40);
    swift_endAccess();
    *v9 = a1;
    v9[1] = a2;
    v10 = *(v8 + 8);

    return v10();
  }
}

uint64_t sub_222A5DE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01CE58, &qword_222B05190);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v16 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A8, &qword_222B07F48);
  v14 = swift_allocBox();
  (*(v9 + 16))(v13, a1, v8);
  sub_222A352E8(&qword_280CB4AC0, &qword_27D01CE58, &qword_222B05190);
  sub_222B02798();
  *a4 = &unk_222B07F58;
  *(a4 + 8) = v14;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = 1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
}

uint64_t sub_222A5DFB0(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5A8, &qword_222B07F48);
  v1[9] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5E03C, 0, 0);
}

uint64_t sub_222A5E03C()
{
  v1 = v0[9];
  swift_beginAccess();
  v2 = sub_222A352E8(&qword_280CB4AD8, &qword_27D01D5A8, &qword_222B07F48);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = sub_222A5E124;
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x282200308](v0 + 5, v5, v2);
}

uint64_t sub_222A5E124()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E270, 0, 0);
  }

  else
  {
    v4 = *(v3 + 56);
    swift_endAccess();
    *v4 = *(v3 + 40);
    v5 = *(v3 + 8);

    return v5();
  }
}

uint64_t sub_222A5E270()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1();
}

double sub_222A5E2D4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  (*a1)(v9);
  LOBYTE(v3) = v10;
  v4 = v11;
  v5 = v12;
  v6 = swift_allocObject();
  result = *v9;
  v8 = v9[1];
  *(v6 + 16) = v9[0];
  *(v6 + 32) = v8;
  *(v6 + 48) = v3;
  *(v6 + 56) = v4;
  *(v6 + 64) = v5;
  *a2 = &unk_222B07EF0;
  a2[1] = v6;
  return result;
}

uint64_t sub_222A5E354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_222A33E10;

  return sub_222A5C254(a2, a3, a4);
}

uint64_t sub_222A5E404(uint64_t a1)
{
  v1[6] = a1;
  v1[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D558, &qword_222B07E78);
  v1[8] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_222A5E490, 0, 0);
}

uint64_t sub_222A5E490()
{
  v1 = v0[8];
  swift_beginAccess();
  v2 = sub_222A352E8(&qword_27D01D578, &qword_27D01D558, &qword_222B07E78);
  v3 = *(MEMORY[0x277D856D0] + 4);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_222A5E578;
  v5 = v0[7];
  v6 = v0[8];

  return MEMORY[0x282200308](v0 + 5, v5, v2);
}

uint64_t sub_222A5E578()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_222A5E6C4, 0, 0);
  }

  else
  {
    v4 = v3[6];
    swift_endAccess();
    *v4 = v3[5];
    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_222A5E6C4()
{
  swift_endAccess();
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t sub_222A5E750(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A31E24(a1, v1);
}

uint64_t sub_222A5E7EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A5CDE4(a1, v4, v5, v6);
}

uint64_t sub_222A5E8A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A35344;

  return sub_222A32128(a1);
}

uint64_t sub_222A5E93C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D700, &qword_222B07320);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A5E9AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A596C0(a1);
}

uint64_t sub_222A5EA90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A34238(a1, v1);
}

uint64_t objectdestroy_20Tm()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A5EBC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222A35344;

  return sub_222A5E354(a1, v4, v5, v6);
}

uint64_t sub_222A5EC90(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A35344;

  return sub_222A5E404(a1);
}

id sub_222A5ED40(void *a1, uint64_t *a2, uint64_t a3)
{
  v7 = *(sub_222B01848() - 8);
  v8 = *(v3 + 16);
  v9 = v3 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return sub_222A5AB3C(a1, a2, a3, v8, v9);
}

uint64_t sub_222A5EDCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(a2, a1, *(a1 + 8));
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_222A5EE08(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A31C04(a1, v1);
}

uint64_t sub_222A5EEA4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A34620;

  return sub_222A5D9EC(a1);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_222A5EF80@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = v5();
  v9 = v8;
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = v9;
  *a2 = a1;
  a2[1] = result;
  return result;
}

uint64_t sub_222A5EFE4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_222B01848() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_222A59534(a1, a2, v6, v7);
}

uint64_t sub_222A5F068@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1, a1[1]);
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t objectdestroy_121Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  if (*(v0 + 56))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_222A5F0F4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_222A35344;

  return sub_222A5DBE8(a1, v1);
}

uint64_t sub_222A5F1A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_222A35344;

  return sub_222A5DFB0(a1);
}

uint64_t sub_222A5F274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WindowedAsyncSequence.WindowedAsyncSequenceIterator();
  v11 = *(v10 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a3 + v11, 1, 1, AssociatedTypeWitness);
  *(a3 + *(v10 + 40)) = 0;
  (*(v6 + 16))(v9, a1, a2);
  sub_222B02798();
  return (*(v6 + 8))(a1, a2);
}

uint64_t WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *(a2 + 24);
  v3[6] = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[7] = AssociatedTypeWitness;
  v5 = sub_222B02B28();
  v3[8] = v5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[9] = TupleTypeMetadata2;
  v7 = *(TupleTypeMetadata2 - 8);
  v3[10] = v7;
  v8 = *(v7 + 64) + 15;
  v3[11] = swift_task_alloc();
  v9 = *(AssociatedTypeWitness - 8);
  v3[12] = v9;
  v10 = *(v9 + 64) + 15;
  v3[13] = swift_task_alloc();
  v11 = *(v5 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A5F5AC, 0, 0);
}

uint64_t sub_222A5F5AC()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 40);
  *(v0 + 184) = v2;
  if (*(v1 + v2))
  {
    (*(*(v0 + 80) + 56))(*(v0 + 16), 1, 1, *(v0 + 72));
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);

    v7 = *(v0 + 8);
LABEL_5:

    return v7();
  }

  if (sub_222B02788())
  {
    *(v1 + v2) = 1;
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 104);
    v11 = *(v0 + 88);

    v7 = *(v0 + 8);
    goto LABEL_5;
  }

  v13 = *(v0 + 40);
  v14 = *(v0 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = *(MEMORY[0x277D856D0] + 4);
  v18 = swift_task_alloc();
  *(v0 + 136) = v18;
  *v18 = v0;
  v18[1] = sub_222A5F7C0;
  v19 = *(v0 + 128);
  v20 = *(v0 + 32);

  return MEMORY[0x282200308](v19, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_222A5F7C0()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_222A5FD70;
  }

  else
  {
    v3 = sub_222A5F8D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222A5F8D4()
{
  v1 = *(v0 + 56);
  v2 = *(*(v0 + 96) + 48);
  if (v2(*(v0 + 128), 1, v1) == 1)
  {
    *(*(v0 + 32) + *(v0 + 184)) = 1;
    v1 = *(v0 + 56);
  }

  v3 = *(v0 + 120);
  v4 = *(v0 + 32);
  v5 = *(*(v0 + 24) + 36);
  v6 = *(*(v0 + 112) + 16);
  v6(v3, v4 + v5, *(v0 + 64));
  v7 = v2(v3, 1, v1);
  v8 = *(v0 + 120);
  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  if (v7 == 1)
  {
    v11 = *(v0 + 64);
    v12 = *(v10 + 8);
    *(v0 + 152) = v12;
    *(v0 + 160) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v8, v11);
    (*(v10 + 24))(v4 + v5, v9, v11);
    v13 = swift_task_alloc();
    *(v0 + 168) = v13;
    *v13 = v0;
    v13[1] = sub_222A5FBC0;
    v14 = *(v0 + 24);
    v15 = *(v0 + 32);
    v16 = *(v0 + 16);

    return WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(v16, v14);
  }

  else
  {
    v18 = *(v0 + 104);
    v31 = *(v0 + 128);
    v32 = v5;
    v20 = *(v0 + 72);
    v19 = *(v0 + 80);
    v21 = *(v0 + 56);
    v29 = *(v0 + 88);
    v30 = *(v0 + 64);
    v33 = *(v0 + 16);
    v22 = *(*(v0 + 96) + 32);
    v22(v18, v8, v21);
    v28 = *(v20 + 48);
    v22(v29, v18, v21);
    v6(v29 + v28, v31, v30);
    (*(v10 + 40))(v4 + v32, v31, v30);
    (*(v19 + 32))(v33, v29, v20);
    (*(v19 + 56))(v33, 0, 1, v20);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);
    v25 = *(v0 + 104);
    v26 = *(v0 + 88);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_222A5FBC0()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_222A5FDFC;
  }

  else
  {
    v3 = sub_222A5FCD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222A5FCD4()
{
  v1 = *(v0 + 160);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 64));
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v5 = *(v0 + 88);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_222A5FD70()
{
  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[11];

  v6 = v0[1];

  return v6();
}

uint64_t sub_222A5FDFC()
{
  v1 = *(v0 + 160);
  (*(v0 + 152))(*(v0 + 128), *(v0 + 64));
  v2 = *(v0 + 176);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v5 = *(v0 + 104);
  v6 = *(v0 + 88);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_222A5FE98(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return WindowedAsyncSequence.WindowedAsyncSequenceIterator.next()(a1, a2);
}

uint64_t sub_222A5FF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_222A60014;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222A60014()
{
  v2 = *v1;
  v3 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v5 = *(v4 + 8);

  return v5();
}

uint64_t WindowedAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 16);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](a1, v3);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = *(a1 + 24);
  return sub_222A5F274(v9, v6, a2);
}

uint64_t sub_222A60244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WindowedNAsyncSequence.WindowedNAsyncSequenceIterator();
  *(a4 + v12[11]) = 0;
  *(a4 + v12[9]) = a1;
  swift_getAssociatedTypeWitness();
  *(a4 + v12[10]) = sub_222B02658();
  (*(v8 + 16))(v11, a2, a3);
  sub_222B02798();
  return (*(v8 + 8))(a2, a3);
}

uint64_t WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v2[6] = *(a1 + 24);
  v2[7] = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[8] = AssociatedTypeWitness;
  v4 = *(AssociatedTypeWitness - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v6 = sub_222B02B28();
  v2[13] = v6;
  v7 = *(v6 - 8);
  v2[14] = v7;
  v8 = *(v7 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_222A60518, 0, 0);
}

uint64_t sub_222A60518()
{
  v1 = *(v0 + 40);
  v2 = *(*(v0 + 32) + 44);
  *(v0 + 184) = v2;
  if (*(v1 + v2))
  {
    v4 = *(v0 + 128);
    v3 = *(v0 + 136);
    v5 = *(v0 + 120);
    v7 = *(v0 + 88);
    v6 = *(v0 + 96);
    v8 = *(v0 + 80);

    v9 = *(v0 + 8);

    return v9(0);
  }

  else if (sub_222B02788())
  {
    *(v1 + v2) = 1;
    sub_222B02728();
    sub_222A34DE0();
    swift_allocError();
    sub_222B02298();
    swift_willThrow();
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v13 = *(v0 + 120);
    v15 = *(v0 + 88);
    v14 = *(v0 + 96);
    v16 = *(v0 + 80);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v22 = *(MEMORY[0x277D856D0] + 4);
    v23 = swift_task_alloc();
    *(v0 + 144) = v23;
    *v23 = v0;
    v23[1] = sub_222A60774;
    v24 = *(v0 + 136);
    v25 = *(v0 + 40);

    return MEMORY[0x282200308](v24, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_222A60774()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_222A60EEC;
  }

  else
  {
    v3 = sub_222A60888;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_222A60888()
{
  v1 = (v0 + 104);
  v2 = v0 + 72;
  v3 = *(v0 + 72);
  v4 = *(v0 + 128);
  v6 = (v0 + 64);
  v5 = *(v0 + 64);
  v45 = *(*(v0 + 112) + 16);
  v45(v4, *(v0 + 136), *(v0 + 104));
  v44 = *(v3 + 48);
  v7 = v44(v4, 1, v5);
  v8 = *(v0 + 128);
  if (v7 == 1)
  {
    v2 = v0 + 112;
    v6 = (v0 + 104);
LABEL_8:
    (*(*v2 + 8))(v8, *v6);
    v17 = *(v0 + 64);
    v18 = *(*(v0 + 40) + *(*(v0 + 32) + 40));
    *(v0 + 16) = v18;
    sub_222B026C8();

    swift_getWitnessTable();
    if ((sub_222B02868() & 1) == 0)
    {
      v19 = *(v0 + 88);
      v43 = v1;
      v20 = *(v0 + 72);
      v42 = *(v0 + 64);
      swift_getWitnessTable();
      sub_222B02878();
      (*(v20 + 8))(v19, v42);
      v1 = v43;
    }

    v21 = *(v0 + 120);
    v22 = *(v0 + 64);
    v45(v21, *(v0 + 136), *(v0 + 104));
    v23 = v44(v21, 1, v22);
    v24 = *(v0 + 120);
    if (v23 == 1)
    {
      (*(*(v0 + 112) + 8))(*(v0 + 120), *v1);
    }

    else
    {
      v26 = *(v0 + 80);
      v25 = *(v0 + 88);
      v28 = *(v0 + 64);
      v27 = *(v0 + 72);
      (*(v27 + 32))(v26, *(v0 + 120), v28);
      (*(v27 + 16))(v25, v26, v28);
      sub_222B026A8();
      (*(v27 + 8))(v26, v28);
    }

    v29 = *(v0 + 136);
    v31 = *(v0 + 104);
    v30 = *(v0 + 112);
    *(v0 + 24) = v18;
    v32 = sub_222B02868();
    (*(v30 + 8))(v29, v31);
    if (v32)
    {
      v33 = *(v0 + 184);
      v34 = *(v0 + 40);

      v18 = 0;
      *(v34 + v33) = 1;
    }

    v36 = *(v0 + 128);
    v35 = *(v0 + 136);
    v37 = *(v0 + 120);
    v39 = *(v0 + 88);
    v38 = *(v0 + 96);
    v40 = *(v0 + 80);

    v41 = *(v0 + 8);

    return v41(v18);
  }

  v10 = *(v0 + 32);
  v9 = *(v0 + 40);
  (*(*(v0 + 72) + 32))(*(v0 + 96), v8, *(v0 + 64));
  v11 = *(v9 + *(v10 + 40));
  v12 = sub_222B02698();
  v8 = *(v0 + 96);
  if (v12 >= *(v9 + *(v10 + 36)))
  {
    v1 = (v0 + 104);
    goto LABEL_8;
  }

  (*(*(v0 + 72) + 16))(*(v0 + 88), *(v0 + 96), *(v0 + 64));
  sub_222B026C8();
  sub_222B026A8();
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_222A60CDC;
  v14 = *(v0 + 32);
  v15 = *(v0 + 40);

  return WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(v14);
}

uint64_t sub_222A60CDC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 160);
  v6 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v7 = sub_222A60F94;
  }

  else
  {
    *(v4 + 176) = a1;
    v7 = sub_222A60E04;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_222A60E04()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[12], v0[8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[22];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];

  v11 = v0[1];

  return v11(v4);
}

uint64_t sub_222A60EEC()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[15];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  v8 = v0[1];

  return v8();
}

uint64_t sub_222A60F94()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  (*(v0[9] + 8))(v0[12], v0[8]);
  (*(v3 + 8))(v1, v2);
  v4 = v0[21];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v0[15];
  v9 = v0[11];
  v8 = v0[12];
  v10 = v0[10];

  v11 = v0[1];

  return v11();
}

uint64_t sub_222A61074(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_222A33E10;

  return WindowedNAsyncSequence.WindowedNAsyncSequenceIterator.next()(a2);
}

uint64_t sub_222A6110C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = *(MEMORY[0x277D856F8] + 4);
  v13 = swift_task_alloc();
  *(v6 + 32) = v13;
  *v13 = v6;
  v13[1] = sub_222A629D8;

  return MEMORY[0x282200320](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_222A611E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for WindowedNAsyncSequence();
  v8 = *(*(a3 - 8) + 32);
  v9 = a4 + *(v7 + 36);

  return v8(v9, a2, a3);
}

uint64_t WindowedNAsyncSequence.makeAsyncIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](a1, a2);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  (*(v12 + 16))(v10, v3 + *(v8 + 36), v6);
  v13 = *(a1 + 24);
  return sub_222A60244(v11, v10, v6, a3);
}

uint64_t sub_222A61364(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3();
  v5 = *(*(a1 - 8) + 8);

  return v5(v3, a1);
}

uint64_t AsyncSequence.window2()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1, v3);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9);
  return (*(v6 + 32))(a2, v9, a1);
}

uint64_t AsyncSequence.windowN(length:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v3, a2);
  *a3 = a1;
  v11 = type metadata accessor for WindowedNAsyncSequence();
  return (*(v7 + 32))(&a3[*(v11 + 36)], v10, a2);
}

uint64_t sub_222A615EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A6165C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_222A6179C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_222A619BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_222B02B28();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A61A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 84);
  v10 = swift_getAssociatedTypeWitness();
  v11 = *(v10 - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = v14;
  }

  if (v15 <= 0xFE)
  {
    v15 = 254;
  }

  v16 = *(v11 + 80);
  v17 = *(*(v10 - 8) + 64);
  if (!v13)
  {
    ++v17;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(v8 + 64) + v16;
  if (a2 > v15)
  {
    v19 = v17 + (v18 & ~v16) + 1;
    v20 = 8 * v19;
    if (v19 > 3)
    {
      goto LABEL_14;
    }

    v22 = ((a2 - v15 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v22 >= 2)
    {
LABEL_14:
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_34;
      }

LABEL_21:
      v23 = (v21 - 1) << v20;
      if (v19 > 3)
      {
        v23 = 0;
      }

      if (v19)
      {
        if (v19 <= 3)
        {
          v24 = v19;
        }

        else
        {
          v24 = 4;
        }

        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v25 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v25 = *a1;
          }
        }

        else if (v24 == 1)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }
      }

      else
      {
        v25 = 0;
      }

      v31 = v15 + (v25 | v23);
      return (v31 + 1);
    }
  }

LABEL_34:
  if (v9 != v15)
  {
    v28 = (a1 + v18) & ~v16;
    if (v14 == v15)
    {
      if (v13 >= 2)
      {
        v29 = (*(v12 + 48))(v28);
        if (v29 >= 2)
        {
          return v29 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    v30 = *(v28 + v17);
    if (v30 < 2)
    {
      return 0;
    }

    v31 = (v30 + 2147483646) & 0x7FFFFFFF;
    return (v31 + 1);
  }

  v26 = *(v8 + 48);

  return v26(a1, v9, AssociatedTypeWitness);
}

void sub_222A61D7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 84);
  v12 = 0;
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = v13;
  v15 = *(v13 + 84);
  v16 = v15 - 1;
  if (!v15)
  {
    v16 = 0;
  }

  if (v16 <= v11)
  {
    v17 = v11;
  }

  else
  {
    v17 = v16;
  }

  v18 = *(v13 + 80);
  v19 = *(v13 + 64);
  if (v17 <= 0xFE)
  {
    v17 = 254;
  }

  v20 = *(v10 + 64) + v18;
  if (!v15)
  {
    ++v19;
  }

  v21 = v19 + (v20 & ~v18) + 1;
  if (a3 > v17)
  {
    v12 = 1;
    if (v21 <= 3)
    {
      v22 = ((a3 - v17 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      v23 = HIWORD(v22);
      if (v22 < 0x100)
      {
        v24 = 1;
      }

      else
      {
        v24 = 2;
      }

      if (v22 >= 2)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      if (v23)
      {
        v12 = 4;
      }

      else
      {
        v12 = v25;
      }
    }
  }

  if (v17 < a2)
  {
    v26 = ~v17 + a2;
    if (v21 < 4)
    {
      v27 = (v26 >> (8 * v21)) + 1;
      if (v19 + (v20 & ~v18) != -1)
      {
        v28 = v26 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v28;
            if (v12 > 1)
            {
LABEL_53:
              if (v12 == 2)
              {
                *&a1[v21] = v27;
              }

              else
              {
                *&a1[v21] = v27;
              }

              return;
            }
          }

          else
          {
            *a1 = v26;
            if (v12 > 1)
            {
              goto LABEL_53;
            }
          }

          goto LABEL_50;
        }

        *a1 = v28;
        a1[2] = BYTE2(v28);
      }

      if (v12 > 1)
      {
        goto LABEL_53;
      }
    }

    else
    {
      bzero(a1, v19 + (v20 & ~v18) + 1);
      *a1 = v26;
      v27 = 1;
      if (v12 > 1)
      {
        goto LABEL_53;
      }
    }

LABEL_50:
    if (v12)
    {
      a1[v21] = v27;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v21] = 0;
  }

  else if (v12)
  {
    a1[v21] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if (v11 == v17)
  {
    v29 = *(v10 + 56);

    v29(a1, a2, v11, AssociatedTypeWitness);
  }

  else
  {
    v30 = &a1[v20] & ~v18;
    if (v16 == v17)
    {
      v31 = *(v14 + 56);

      v31(v30, (a2 + 1));
    }

    else
    {
      *(v30 + v19) = a2 + 1;
    }
  }
}

uint64_t sub_222A620FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A6217C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
  }

  v8 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v9 = 8 * v8;
  if (v8 <= 3)
  {
    v11 = ((v7 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v11 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      return 0;
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_22;
  }

LABEL_11:
  v12 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v12 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return v5 + (v8 | v12) + 1;
}

void sub_222A622DC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 80);
  v9 = ((v8 + 8) & ~v8) + *(v6 + 64);
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v9 <= 3)
    {
      v15 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a2)
  {
    v13 = ~v7 + a2;
    if (v9 < 4)
    {
      v14 = (v13 >> (8 * v9)) + 1;
      if (v9)
      {
        v17 = v13 & ~(-1 << (8 * v9));
        bzero(a1, v9);
        if (v9 != 3)
        {
          if (v9 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v9] = v14;
              }

              else
              {
                *&a1[v9] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v9);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v9] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v9] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v9] = 0;
  }

  else if (v12)
  {
    a1[v9] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v6 + 56);
  v19 = &a1[v8 + 8] & ~v8;

  v18(v19);
}

uint64_t sub_222A62518(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = sub_222B026C8();
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A625F4(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v13 <= 3)
  {
    v14 = ((a2 - v11 + 255) >> 8) + 1;
  }

  else
  {
    v14 = 2;
  }

  if (v14 >= 0x10000)
  {
    v15 = 4;
  }

  else
  {
    v15 = 2;
  }

  if (v14 < 0x100)
  {
    v15 = 1;
  }

  if (v14 >= 2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v17 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v17 = *&a1[v13];
      if (!v17)
      {
        goto LABEL_28;
      }
    }

LABEL_24:
    v19 = (v17 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v20 = *a1;
    }

    else
    {
      v19 = 0;
      v20 = *a1;
    }

    return v11 + (v20 | v19) + 1;
  }

  if (v16)
  {
    v17 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_24;
    }
  }

LABEL_28:
  if (v10 < 0x7FFFFFFF)
  {
    v22 = *(((&a1[v12 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v22 >= 0xFFFFFFFF)
    {
      LODWORD(v22) = -1;
    }

    return (v22 + 1);
  }

  else
  {
    v21 = *(v9 + 48);

    return v21(a1);
  }
}

void sub_222A627AC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v12 >= a3)
  {
    v16 = 0;
    if (v12 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v13 <= 3)
    {
      v14 = ((a3 - v12 + 255) >> 8) + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v12 >= a2)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *&a1[v13] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v13] = 0;
      }

      else if (v16)
      {
        a1[v13] = 0;
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
      if (v10 < 0x7FFFFFFF)
      {
        v20 = (((&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = (a2 - 1);
        }

        *v20 = v21;
      }

      else
      {
        v19 = *(v9 + 56);

        v19(a1, a2);
      }

      return;
    }
  }

  v17 = ~v12 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v16 > 1)
    {
LABEL_27:
      if (v16 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v16 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v16)
  {
    a1[v13] = v18;
  }
}

void *sub_222A629E4(void *(*a1)(uint64_t *__return_ptr, unint64_t), uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = *(a3 + 16);
  if (v6)
  {
    v8 = 0;
    do
    {
      v14 = result;
      for (i = v8; ; ++i)
      {
        if (i >= v6)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }

        v10 = type metadata accessor for UniversalSuggestionCandidate(0);
        v12 = *(v10 - 8);
        result = (v10 - 8);
        v11 = v12;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_17;
        }

        result = a1(&v15, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
        if (v3)
        {

          return v14;
        }

        if (v15)
        {
          break;
        }

        if (v8 == v6)
        {
          return v14;
        }
      }

      MEMORY[0x223DC6810](result);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v13 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      result = v16;
    }

    while (v8 != v6);
  }

  return result;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__allocating_init(logTarget:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_222A1E5A8(a1, v2 + 16);
  return v2;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__allocating_init()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v2 = [v0 BOOLForKey_];

  v3 = &type metadata for SiriAnalyticsSharedPLUSEventLogTarget;
  if (v2)
  {
    v3 = &type metadata for DisabledPLUSEventLogTarget;
  }

  v4 = &protocol witness table for DisabledPLUSEventLogTarget;
  if (!v2)
  {
    v4 = &protocol witness table for SiriAnalyticsSharedPLUSEventLogTarget;
  }

  v8 = v3;
  v9 = v4;
  type metadata accessor for PLUSUniversalSuggestionsRuntimeLogger();
  v5 = swift_allocObject();
  sub_222A1E5A8(&v7, v5 + 16);
  return v5;
}

uint64_t sub_222A62CD0(uint64_t a1)
{
  v3 = sub_222B018D8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A42E40(v1 + 16, v17);
  (*(v4 + 16))(v8, a1, v3);
  v9 = type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  v12 = swift_allocObject();
  v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v14 - 8) + 56))(v12 + v13, 1, 1, v14);
  sub_222A1E5A8(v17, v12 + 16);
  (*(v4 + 32))(v12 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v8, v3);
  (*(v4 + 56))(v12 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v3);
  return v12;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__allocating_init(logTarget:requestId:)(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v10 - 8) + 56))(v8 + v9, 1, 1, v10);
  sub_222A1E5A8(a1, v8 + 16);
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v12 = sub_222B018D8();
  v13 = *(v12 - 8);
  (*(v13 + 32))(v8 + v11, a2, v12);
  (*(v13 + 56))(v8 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v12);
  return v8;
}

uint64_t type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger()
{
  result = qword_27D01D5D0;
  if (!qword_27D01D5D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A62FF8(uint64_t a1, uint64_t a2)
{
  v5 = sub_222B018D8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  sub_222A42E40(v2 + 16, v26);
  v15 = *(v6 + 16);
  v15(v14, a1, v5);
  v15(v11, a2, v5);
  v16 = type metadata accessor for PLUSUniversalSuggestionsRuntimeRequestLogger();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  sub_222A1E5A8(v26, v19 + 16);
  v22 = *(v6 + 32);
  v22(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v14, v5);
  v23 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v22(v19 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, v11, v5);
  (*(v6 + 56))(v19 + v23, 0, 1, v5);
  return v19;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__allocating_init(logTarget:requestId:plusId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  v11 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  sub_222A1E5A8(a1, v10 + 16);
  v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v14 = sub_222B018D8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 32);
  v16(v10 + v13, a2, v14);
  v17 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v16(v10 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, a3, v14);
  (*(v15 + 56))(v10 + v17, 0, 1, v14);
  return v10;
}

uint64_t PLUSUniversalSuggestionsRuntimeLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_222A633AC@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v29 = sub_222B018D8();
  v2 = *(v29 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v29, v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5C8, &qword_222B0F0B0);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v27 - v19;
  v21 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  swift_beginAccess();
  sub_222A34E48(v1 + v21, v20, &qword_27D01D5C8, &qword_222B0F0B0);
  v30 = v7;
  v31 = v6;
  if ((*(v7 + 48))(v20, 1, v6) != 1)
  {
    return sub_222A65A04(v20, v32);
  }

  v22 = v32;
  sub_222A34F20(v20, &qword_27D01D5C8, &qword_222B0F0B0);
  sub_222A34E48(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, v11, &unk_27D01DA50, &unk_222B04E20);
  v23 = *(v2 + 48);
  v24 = v29;
  if (v23(v11, 1, v29) == 1)
  {
    v25 = v28;
    (*(v2 + 16))(v28, v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v24);
    sub_222A584E8(v25, v22);
    if (v23(v11, 1, v24) != 1)
    {
      sub_222A34F20(v11, &unk_27D01DA50, &unk_222B04E20);
    }
  }

  else
  {
    (*(v2 + 32))(v22, v11, v24);
    (*(v2 + 56))(v22, 0, 1, v24);
  }

  sub_222A34E48(v22, v17, &unk_27D01DA50, &unk_222B04E20);
  (*(v30 + 56))(v17, 0, 1, v31);
  swift_beginAccess();
  sub_222A65994(v17, v1 + v21);
  return swift_endAccess();
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.init(logTarget:requestId:)(__int128 *a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  sub_222A1E5A8(a1, v2 + 16);
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v8 = sub_222B018D8();
  v9 = *(v8 - 8);
  (*(v9 + 32))(v2 + v7, a2, v8);
  (*(v9 + 56))(v2 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, 1, 1, v8);
  return v2;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.init(logTarget:requestId:plusId:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  sub_222A1E5A8(a1, v3 + 16);
  v9 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 32);
  v12(v3 + v9, a2, v10);
  v13 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId;
  v12(v3 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, a3, v10);
  (*(v11 + 56))(v3 + v13, 0, 1, v10);
  return v3;
}

void sub_222A639C4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = v44 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = v44 - v17;
  sub_222A633AC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = sub_222B02128();
    v21 = sub_222B028E8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_222A1C000, v20, v21, "Could not generate a plus logging identifier for a SELF event donation", v22, 2u);
      MEMORY[0x223DC7E30](v22, -1, -1);
    }
  }

  else
  {
    v23 = *(v10 + 32);
    v23(v18, v8, v9);
    (*(v10 + 16))(v15, v18, v9);
    v24 = type metadata accessor for PLUSSchemaEventConstructor();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v28 = (v23)(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v15, v9);
    *(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    MEMORY[0x28223BE20](v28, v29);
    v44[-2] = v18;
    v30 = sub_222A629E4(sub_222A65644, &v44[-4], a1);
    v31 = v30;
    if (v30 >> 62)
    {
      v32 = sub_222B02DC8();
    }

    else
    {
      v32 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = sub_222A452A0(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v31, v32 != 0);

    if (v33)
    {
      v34 = v1[5];
      v35 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      PLUSEventLogTarget.emitMessage(_:)(v33, v34, v35);

      swift_setDeallocating();
      v36 = *(v10 + 8);
      v36(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v9);
      v37 = *(*v27 + 48);
      v38 = *(*v27 + 52);
      swift_deallocClassInstance();
      v36(v18, v9);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v39 = sub_222B02148();
      __swift_project_value_buffer(v39, qword_280CBC458);
      v40 = sub_222B02128();
      v41 = sub_222B028E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v44[0] = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_222A230FC(0xD000000000000028, 0x8000000222B11DC0, v44);
        _os_log_impl(&dword_222A1C000, v40, v41, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x223DC7E30](v43, -1, -1);
        MEMORY[0x223DC7E30](v42, -1, -1);
      }

      (*(v10 + 8))(v18, v9);
    }
  }
}

void sub_222A63EE8(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v43 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v43 - v17;
  sub_222A633AC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v19 = sub_222B02148();
    __swift_project_value_buffer(v19, qword_280CBC458);
    v20 = sub_222B02128();
    v21 = sub_222B028E8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_222A1C000, v20, v21, "Could not generate a plus logging identifier for a SELF event donation", v22, 2u);
      MEMORY[0x223DC7E30](v22, -1, -1);
    }
  }

  else
  {
    v23 = *(v10 + 32);
    v23(v18, v8, v9);
    (*(v10 + 16))(v15, v18, v9);
    v24 = type metadata accessor for PLUSSchemaEventConstructor();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v23((v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v15, v9);
    *(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v28 = sub_222A45510(v1 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, a1 & 1, 0);
    if (v28)
    {
      v29 = v28;
      v30 = v1[5];
      v31 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v2[5]);
      PLUSEventLogTarget.emitMessage(_:)(v29, v30, v31);
    }

    else
    {
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v32 = sub_222B02148();
      __swift_project_value_buffer(v32, qword_280CBC458);
      v33 = sub_222B02128();
      v34 = sub_222B028E8();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v44 = v36;
        *v35 = 136315138;
        *(v35 + 4) = sub_222A230FC(0xD000000000000029, 0x8000000222B11DF0, &v44);
        _os_log_impl(&dword_222A1C000, v33, v34, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x223DC7E30](v36, -1, -1);
        MEMORY[0x223DC7E30](v35, -1, -1);
        swift_setDeallocating();
        v37 = *(v10 + 8);
        v37(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v9);
        v38 = *(*v27 + 48);
        v39 = *(*v27 + 52);
        swift_deallocClassInstance();

        v37(v18, v9);
        return;
      }
    }

    swift_setDeallocating();
    v40 = *(v10 + 8);
    v40(v27 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v9);
    v41 = *(*v27 + 48);
    v42 = *(*v27 + 52);
    swift_deallocClassInstance();
    v40(v18, v9);
  }
}

void sub_222A643E0(uint64_t a1, char *a2)
{
  v85 = a2;
  v86 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v79 - v10;
  v12 = sub_222B018D8();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v79 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v79 - v24;
  v83 = v2;
  sub_222A633AC(v11);
  v26 = v13[6];
  if (v26(v11, 1, v12) == 1)
  {
    sub_222A34F20(v11, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v27 = sub_222B02148();
    __swift_project_value_buffer(v27, qword_280CBC458);
    v28 = sub_222B02128();
    v29 = sub_222B028E8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_222A1C000, v28, v29, "Could not generate a plus logging identifier for a SELF event donation", v30, 2u);
      MEMORY[0x223DC7E30](v30, -1, -1);
    }
  }

  else
  {
    v82 = v18;
    v31 = v13;
    v32 = v13[4];
    v32(v25, v11, v12);
    v84 = v31;
    (v31[2])(v22, v25, v12);
    v33 = type metadata accessor for PLUSSchemaEventConstructor();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    v32((v36 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v22, v12);
    *(v36 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    v81 = v85[16];
    v37 = v85[17];
    type metadata accessor for PLUSLoggingIdGenerator();
    v85 = v25;
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v25, v86, v8);
    v38 = v12;
    if (v26(v8, 1, v12) == 1)
    {
      sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v39 = sub_222B02148();
      __swift_project_value_buffer(v39, qword_280CBC458);
      v40 = sub_222B02128();
      v41 = sub_222B028E8();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v87 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_222A230FC(0xD000000000000037, 0x8000000222B11E20, &v87);
        _os_log_impl(&dword_222A1C000, v40, v41, "PLUSUniversalSuggestionsRuntimeLogger.%s:  cannot generate a suggestion link id", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x223DC7E30](v43, -1, -1);
        MEMORY[0x223DC7E30](v42, -1, -1);
      }

      swift_setDeallocating();
      v44 = v84[1];
      v44(v36 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v12);
      v45 = *(*v36 + 48);
      v46 = *(*v36 + 52);
      swift_deallocClassInstance();
      v44(v85, v12);
    }

    else
    {
      v32(v82, v8, v12);
      v47 = sub_222A45CBC();
      v48 = v84;
      if (v47)
      {
        v49 = v47;
        v50 = _s28SiriPrivateLearningAnalytics28PLUSSchemaMessageConstructorO24suggestionDomainMetadata0h10GenerationI0So0e14PLUSSuggestioniJ0CSgSo0elkI0V_tFZ_0(2);
        if (v50)
        {
          v51 = v50;
          v52 = [objc_allocWithZone(MEMORY[0x277D59DA8]) init];
          if (v52)
          {
            v86 = v38;
            v53 = v52;
            [v52 setSuggestionDomainMetadata_];
            v54 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v80 = v37;
            v55 = v54;
            v56 = v83;
            v57 = sub_222B01878();
            v58 = [v55 initWithNSUUID_];

            [v53 setOriginalRequestId_];
            v59 = objc_allocWithZone(MEMORY[0x277D5AC78]);
            v60 = v82;
            v61 = sub_222B01878();
            v62 = [v59 initWithNSUUID_];

            [v53 setSuggestionLinkId_];
            [v53 setSuggestionSurfaced_];
            [v53 setSuggestionNoveltyState_];
            [v53 setDomainSuggestionMetadata_];
            [v49 setPlusSuggesterSuggestionMetadataReported_];

            v63 = v56[5];
            v64 = v56[6];
            __swift_project_boxed_opaque_existential_1(v56 + 2, v63);
            PLUSEventLogTarget.emitMessage(_:)(v49, v63, v64);

            swift_setDeallocating();
            v65 = v48[1];
            v66 = v86;
            v65(v36 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v86);
            v67 = *(*v36 + 48);
            v68 = *(*v36 + 52);
            swift_deallocClassInstance();
            v65(v60, v66);
            v65(v85, v66);
            return;
          }

          v49 = v51;
        }
      }

      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v69 = sub_222B02148();
      __swift_project_value_buffer(v69, qword_280CBC458);
      v70 = sub_222B02128();
      v71 = sub_222B028E8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v87 = v73;
        *v72 = 136315138;
        *(v72 + 4) = sub_222A230FC(0xD00000000000008BLL, 0x8000000222B112A0, &v87);
        _os_log_impl(&dword_222A1C000, v70, v71, "PLUSSchemaEventConstructor.%s:  failed to create PLUS SELF event templates", v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x223DC7E30](v73, -1, -1);
        MEMORY[0x223DC7E30](v72, -1, -1);
      }

      v74 = sub_222B02128();
      v75 = sub_222B028E8();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v87 = v77;
        *v76 = 136315138;
        *(v76 + 4) = sub_222A230FC(0xD000000000000037, 0x8000000222B11E20, &v87);
        _os_log_impl(&dword_222A1C000, v74, v75, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v76, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v77);
        MEMORY[0x223DC7E30](v77, -1, -1);
        MEMORY[0x223DC7E30](v76, -1, -1);
      }

      v78 = v84[1];
      v78(v82, v38);
      v78(v85, v38);
    }
  }
}

void sub_222A64D0C(uint64_t a1, unsigned __int8 *a2)
{
  v76 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v70 - v11;
  v13 = sub_222B018D8();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v17, v20);
  v23 = &v70 - v22;
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v70 - v25;
  v74 = *a2;
  v75 = v2;
  sub_222A633AC(v12);
  v27 = v14[6];
  if (v27(v12, 1, v13) == 1)
  {
    sub_222A34F20(v12, &unk_27D01DA50, &unk_222B04E20);
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v28 = sub_222B02148();
    __swift_project_value_buffer(v28, qword_280CBC458);
    v29 = sub_222B02128();
    v30 = sub_222B028E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_222A1C000, v29, v30, "Could not generate a plus logging identifier for a SELF event donation", v31, 2u);
      MEMORY[0x223DC7E30](v31, -1, -1);
    }
  }

  else
  {
    v71 = v19;
    v32 = v14;
    v33 = v14[4];
    v33(v26, v12, v13);
    v73 = v32;
    (v32[2])(v23, v26, v13);
    v34 = type metadata accessor for PLUSSchemaEventConstructor();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    v37 = swift_allocObject();
    v33((v37 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId), v23, v13);
    *(v37 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_suggestionGenerationDomain) = 2;
    type metadata accessor for PLUSLoggingIdGenerator();
    v72 = v26;
    static PLUSLoggingIdGenerator.derivePlusSuggestionLinkId(plusId:for:)(v26, v76, v9);
    if (v27(v9, 1, v13) == 1)
    {
      sub_222A34F20(v9, &unk_27D01DA50, &unk_222B04E20);
      if (qword_280CBA628 != -1)
      {
        swift_once();
      }

      v38 = sub_222B02148();
      __swift_project_value_buffer(v38, qword_280CBC458);
      v39 = sub_222B02128();
      v40 = sub_222B028E8();
      v41 = os_log_type_enabled(v39, v40);
      v42 = v73;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v77 = v44;
        *v43 = 136315138;
        *(v43 + 4) = sub_222A230FC(0xD000000000000036, 0x8000000222B11E60, &v77);
        _os_log_impl(&dword_222A1C000, v39, v40, "PLUSUniversalSuggestionsRuntimeLogger.%s:  cannot generate a suggestion link id", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x223DC7E30](v44, -1, -1);
        MEMORY[0x223DC7E30](v43, -1, -1);
        swift_setDeallocating();
        v45 = v42[1];
        v45(v37 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v13);
        v46 = *(*v37 + 48);
        v47 = *(*v37 + 52);
        swift_deallocClassInstance();

        v45(v72, v13);
      }

      else
      {

        swift_setDeallocating();
        v59 = v42[1];
        v59(v37 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v13);
        v60 = *(*v37 + 48);
        v61 = *(*v37 + 52);
        swift_deallocClassInstance();
        v59(v72, v13);
      }
    }

    else
    {
      if (v74)
      {
        v48 = 2;
      }

      else
      {
        v48 = 1;
      }

      v49 = v71;
      v33(v71, v9, v13);
      v50 = v49;
      v51 = v75;
      v52 = sub_222A45A2C(v75 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId, v49, v48);
      if (v52)
      {
        v53 = v52;
        v54 = v51[5];
        v55 = v51[6];
        __swift_project_boxed_opaque_existential_1(v51 + 2, v54);
        PLUSEventLogTarget.emitMessage(_:)(v53, v54, v55);
        swift_setDeallocating();
        v56 = v73[1];
        v56(v37 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics26PLUSSchemaEventConstructor_plusId, v13);
        v57 = *(*v37 + 48);
        v58 = *(*v37 + 52);
        swift_deallocClassInstance();

        v56(v49, v13);
        v56(v72, v13);
      }

      else
      {
        v63 = v72;
        v62 = v73;
        if (qword_280CBA628 != -1)
        {
          swift_once();
        }

        v64 = sub_222B02148();
        __swift_project_value_buffer(v64, qword_280CBC458);
        v65 = sub_222B02128();
        v66 = sub_222B028E8();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v77 = v68;
          *v67 = 136315138;
          *(v67 + 4) = sub_222A230FC(0xD000000000000036, 0x8000000222B11E60, &v77);
          _os_log_impl(&dword_222A1C000, v65, v66, "PLUSUniversalSuggestionsRuntimeLogger.%s:  failed to create PLUS SELF event templates", v67, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v68);
          MEMORY[0x223DC7E30](v68, -1, -1);
          MEMORY[0x223DC7E30](v67, -1, -1);
        }

        v69 = v62[1];
        v69(v50, v13);
        v69(v63, v13);
      }
    }
  }
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
  return v0;
}

uint64_t PLUSUniversalSuggestionsRuntimeRequestLogger.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_plusId, &unk_27D01DA50, &unk_222B04E20);
  v1 = OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger_requestId;
  v2 = sub_222B018D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_222A34F20(v0 + OBJC_IVAR____TtC28SiriPrivateLearningAnalytics44PLUSUniversalSuggestionsRuntimeRequestLogger____lazy_storage___plusLoggingId, &qword_27D01D5C8, &qword_222B0F0B0);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

NSObject *sub_222A65644@<X0>(uint64_t a1@<X0>, NSObject **a2@<X8>)
{
  result = sub_222AFF9F8(*(v2 + 16), a1);
  *a2 = result;
  return result;
}

void sub_222A656F8()
{
  sub_222A658D8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = sub_222B018D8();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_222A65930();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_222A658D8()
{
  if (!qword_280CBA1E8)
  {
    sub_222B018D8();
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_280CBA1E8);
    }
  }
}

void sub_222A65930()
{
  if (!qword_27D01D5E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D01DA50, &unk_222B04E20);
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_27D01D5E0);
    }
  }
}

uint64_t sub_222A65994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5C8, &qword_222B0F0B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A65A04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A65A74(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return BPSDemandMax();
  }

  v3 = 0;
  v4 = (a2 + 32);
  v5 = 1 - v2;
  do
  {
    v7 = *v4++;
    v6 = v7;
    v3 |= v7 == *MEMORY[0x277CF1788];
    if (v3)
    {
      if (!v5)
      {
        return *MEMORY[0x277CF1788];
      }

      result = 0;
    }

    else
    {
      if (v6 != *MEMORY[0x277CF1780])
      {
        v8 = __OFADD__(v6, result);
        result += v6;
        if (v8)
        {
          result = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      if (!v5)
      {
        return BPSDemandMax();
      }
    }

    ++v5;
  }

  while (v5 != 1);
  __break(1u);
  return result;
}

uint64_t sub_222A65B04()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_222A65B24()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_222A65BBC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v4 = sub_222B02B28();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = &v32 - v8;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7, v12);
  v14 = &v32 - v13;
  v15 = *(v1 + qword_27D01D5F0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D600, &unk_222B083C0);
  inited = swift_initStackObject();
  v36 = xmmword_222B05260;
  *(inited + 16) = xmmword_222B05260;
  *(inited + 32) = a1;
  *(inited + 40) = *(v15 + 32);
  v17 = sub_222A65A74(0, inited);
  swift_setDeallocating();
  *(v15 + 32) = v17;
  v18 = *MEMORY[0x277CF1788];
  v19 = (v10 + 48);
  v38 = *MEMORY[0x277CF1780];
  v35 = (v10 + 32);
  v20 = (v10 + 8);
  while (v17 == v18 || v17 >= 1 && v17 != v38)
  {
    v21 = *(v15 + 48);

    sub_222AE0924(v9);

    if ((*v19)(v9, 1, v3) == 1)
    {
      (*(v33 + 8))(v9, v34);
      v17 = *(v15 + 32);
      break;
    }

    (*v35)(v14, v9, v3);
    v22 = *(v15 + 16);
    swift_unknownObjectRetain();
    v23 = [v22 receiveInput_];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v24 = swift_initStackObject();
    *(v24 + 16) = v36;
    *(v24 + 32) = v23;
    v25 = *(v15 + 32);
    *(v24 + 40) = v25;
    if (v23 == v18 || v25 == v18)
    {

      v17 = v18;
    }

    else
    {

      v17 = BPSDemandMax();
    }

    (*v20)(v14, v3);
    *(v15 + 32) = v17;
  }

  if (v17 == v18 || v17 >= 1 && v17 != v38)
  {
    v26 = *(v15 + 24);
    if (v26)
    {
      if (v26 == 1)
      {
        v27 = *(v15 + 40);
        if (v27)
        {
          v28 = *(v15 + 40);
        }

        else
        {
          v28 = [objc_opt_self() success];
          v27 = 0;
        }

        v30 = *(v15 + 16);
        v31 = v27;
        [v30 receiveCompletion_];
      }

      else
      {
        sub_222A42840(*(v15 + 24));
        v29 = v26;
        [v29 requestDemand_];
        v28 = v29;
        sub_222A34E38(v26);
      }
    }
  }
}

void sub_222A65FD4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  sub_222A65BBC(a3);
}

id sub_222A66028(void *a1)
{
  v1 = a1;
  v2 = sub_222A660A4();

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5F8, &qword_222B083B8);
    v3 = sub_222B025D8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_222A660A4()
{
  v1 = *(*(v0 + qword_27D01D5F0) + 24);
  if (v1 >= 2)
  {
    v2 = [v1 upstreamSubscriptions];
    if (v2)
    {
      v3 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D5F8, &qword_222B083B8);
      v4 = sub_222B025F8();
      sub_222A34E38(v1);

      return v4;
    }

    sub_222A34E38(v1);
  }

  return 0;
}

void sub_222A66144()
{
  v1 = *(v0 + qword_27D01D5F0);
  v2 = *(v1 + 24);
  if (v2 >= 2)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *(v1 + 24) = 1;
  sub_222A34E38(v2);
  [v3 cancel];
}

void sub_222A661C4(void *a1)
{
  v1 = a1;
  sub_222A66144();
}

id sub_222A66234()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3.receiver = v0;
  v3.super_class = _s28DownstreamBufferSubscriptionCMa();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_222A6632C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_222A34E38(*(v0 + 24));

  v2 = *(v0 + 48);

  return v0;
}

uint64_t sub_222A66364()
{
  sub_222A6632C();

  return swift_deallocClassInstance();
}

uint64_t sub_222A663E4(uint64_t a1, void *a2, void *a3)
{
  v25 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D610, qword_222B08440);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v25 - v8;
  v10 = sub_222B018D8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_222B01848();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [a2 timestampInNanoseconds];
  [a3 timeIntervalSince1970];
  sub_222B01808();
  (*(v11 + 16))(v15, v25, v10);
  v23 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  (*(v17 + 16))(&v9[*(v23 + 20)], v21, v16);
  *v9 = v22;
  (*(*(v23 - 8) + 56))(v9, 0, 1, v23);
  swift_beginAccess();
  sub_222AC57A8(v9, v15);
  swift_endAccess();
  return (*(v17 + 8))(v21, v16);
}

id sub_222A66668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  v7 = *(v6 - 8);
  v53 = v6;
  v54 = v7;
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = (&v49 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v20 = &v49 - v19;
  v21 = sub_222B018D8();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v27 = *(v2 + 24);
  if (!*(v27 + 16))
  {
    goto LABEL_11;
  }

  v52 = v3;

  v28 = sub_222A26F40(a1);
  if ((v29 & 1) == 0)
  {

LABEL_11:
    v39 = 1;
LABEL_12:
    v40 = sub_222B01848();
    return (*(*(v40 - 8) + 56))(a2, v39, 1, v40);
  }

  v30 = *(*(v27 + 56) + 8 * v28);

  v31 = [v30 clockIdentifier];
  if (!v31)
  {
    goto LABEL_9;
  }

  v32 = v31;
  v33 = [v31 value];
  if (!v33)
  {

LABEL_9:
    (*(v22 + 56))(v20, 1, 1, v21);
    goto LABEL_10;
  }

  v50 = v30;
  v51 = a2;
  v34 = v33;
  v35 = sub_222B01798();
  v37 = v36;

  sub_222A67044(v35, v37, v20);
  sub_222A26530(v35, v37);
  v38 = v22;
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {

    a2 = v51;
LABEL_10:
    sub_222A264C8(v20);
    goto LABEL_11;
  }

  (*(v22 + 32))(v26, v20, v21);
  v42 = v52;
  swift_beginAccess();
  v43 = *(v42 + 16);
  v44 = v50;
  a2 = v51;
  if (!*(v43 + 16))
  {
LABEL_18:

    (*(v38 + 8))(v26, v21);
    goto LABEL_11;
  }

  v45 = sub_222A26F40(v26);
  if ((v46 & 1) == 0)
  {

    goto LABEL_18;
  }

  sub_222A2E22C(*(v43 + 56) + *(v54 + 72) * v45, v12);

  sub_222A2E290(v12, v15);
  result = [v44 timestampInNanoseconds];
  if (!__OFSUB__(result, *v15))
  {
    v47 = (result - *v15) / 1000000000.0;
    v48 = v15 + *(v53 + 20);
    sub_222B017E8();

    sub_222A66C04(v15);
    (*(v38 + 8))(v26, v21);
    v39 = 0;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A66AB0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogicalClockTable.DeviceFixedContextTime()
{
  result = qword_280CB6EE8;
  if (!qword_280CB6EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_222A66B88()
{
  result = sub_222B01848();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_222A66C04(uint64_t a1)
{
  v2 = type metadata accessor for LogicalClockTable.DeviceFixedContextTime();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A66C70(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A66D74()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_222A66E84(uint64_t (*a1)(void))
{
  if ([v1 anyEventType] != 6)
  {
    v9 = v1;
LABEL_7:
    v11 = a1();

    return v11;
  }

  v3 = [v1 payload];
  if (v3)
  {
    v4 = v3;
    v5 = sub_222B01798();
    v7 = v6;

    v8 = sub_222B01788();
    sub_222A26530(v5, v7);
  }

  else
  {
    v8 = 0;
  }

  v10 = [objc_allocWithZone(MEMORY[0x277D5A978]) initWithData_];

  v9 = [v10 event];
  if (v9)
  {
    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_222A66FC0()
{
  v0 = sub_222A3A040(&unk_2835F1418);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D618, &qword_222B08558);
  result = swift_arrayDestroy();
  qword_27D0245F0 = v0;
  return result;
}

uint64_t sub_222A67044@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_222B018D8();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6, v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v12 != 2)
    {
LABEL_17:
      v21 = *(v9 + 56);

      return v21(a3, 1, 1, v6);
    }

    v14 = *(a1 + 16);
    v13 = *(a1 + 24);
    v15 = __OFSUB__(v13, v14);
    v16 = v13 - v14;
    if (!v15)
    {
      if (v16 == 16)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    if (v12)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (1)
    {
      v28 = v9;
      if (v12 == 2)
      {
        break;
      }

      if (v12 != 1)
      {
        v29 = a1;
        v30 = a2;
        v31 = BYTE2(a2);
        v32 = BYTE3(a2);
        v33 = BYTE4(a2);
        v34 = BYTE5(a2);
        (*(v9 + 16))(v11, &v29, v6);
        goto LABEL_25;
      }

      if (a1 > a1 >> 32)
      {
        goto LABEL_28;
      }

      v17 = sub_222B015B8();
      if (!v17)
      {
        goto LABEL_33;
      }

      v18 = v17;
      v19 = sub_222B015D8();
      if (__OFSUB__(a1, v19))
      {
        goto LABEL_30;
      }

      v20 = a1 - v19 + v18;
      a1 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      sub_222B015C8();
      if (v20)
      {
        goto LABEL_23;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_27;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v23 = *(a1 + 16);
    v24 = sub_222B015B8();
    if (!v24)
    {
      goto LABEL_31;
    }

    v25 = v24;
    v26 = sub_222B015D8();
    if (!__OFSUB__(v23, v26))
    {
      v20 = v23 - v26 + v25;
      sub_222B015C8();
      if (!v20)
      {
        goto LABEL_32;
      }

LABEL_23:
      (*(v28 + 16))(v11, v20, v6);
LABEL_25:
      (*(v28 + 32))(a3, v11, v6);
      return (*(v28 + 56))(a3, 0, 1, v6);
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  sub_222B015C8();
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_222B015C8();
  __break(1u);
  return result;
}

uint64_t sub_222A67368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = sub_222A66E84(sub_222AA5ED4);
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = a2();

  return v5;
}

void *static UEIEvents.dismissalReason(_:)()
{
  result = sub_222A66E84(sub_222AA5ED4);
  if (result)
  {
    v1 = result;
    v2 = [result uiStateTransition];
    if (v2 && (v3 = v2, v4 = [v2 dismissed], v3, v4))
    {
      v5 = [v4 dismissalReason];

      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id static UEIEvents.dismissalReason(_:)(void *a1)
{
  result = [a1 uiStateTransition];
  if (result)
  {
    v2 = result;
    v3 = [result dismissed];

    if (v3)
    {
      v4 = [v3 dismissalReason];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_222A6754C(SEL *a1@<X1>, const char **a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_222A66E84(sub_222AA5ED4);
  if (v6)
  {
    v17 = v6;
    v7 = [v6 *a1];
    if (v7 && (v8 = *a2, v9 = v7, v10 = [v7 v8], v9, v10))
    {
      v11 = sub_222B01798();
      v13 = v12;

      sub_222A67044(v11, v13, a3);
      sub_222A26530(v11, v13);
    }

    else
    {
      v14 = sub_222B018D8();
      (*(*(v14 - 8) + 56))(a3, 1, 1, v14);
    }
  }

  else
  {
    v15 = sub_222B018D8();
    v16 = *(*(v15 - 8) + 56);

    v16(a3, 1, 1, v15);
  }
}

uint64_t sub_222A676D4@<X0>(void *a1@<X0>, SEL *a2@<X1>, SEL *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = [a1 *a2];
  if (v6 && (v7 = v6, v8 = [v6 *a3], v7, v8))
  {
    v9 = sub_222B01798();
    v11 = v10;

    sub_222A67044(v9, v11, a4);

    return sub_222A26530(v9, v11);
  }

  else
  {
    v13 = sub_222B018D8();
    v14 = *(*(v13 - 8) + 56);

    return v14(a4, 1, 1, v13);
  }
}

uint64_t _s28SiriPrivateLearningAnalytics9UEIEventsO8dialogIDySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  v2 = [a1 uufrShown];
  if (!v2 || (v3 = v2, v4 = [v2 dialogIdentifier], v3, !v4))
  {
    v5 = [a1 uufrSaid];
    if (!v5)
    {
      return 0;
    }

    v6 = v5;
    v4 = [v5 dialogIdentifier];

    if (!v4)
    {
      return 0;
    }
  }

  v7 = sub_222B02388();

  return v7;
}

id _s28SiriPrivateLearningAnalytics9UEIEventsO11dialogPhaseySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  result = [a1 uufrSaid];
  if (result)
  {
    v2 = result;
    v3 = [result siriResponseContext];

    if (v3 && (v4 = [v3 dialogPhase], v3, v4))
    {
      v5 = sub_222B02388();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _s28SiriPrivateLearningAnalytics9UEIEventsO23dismissalReasonAsStringySSSgSo19SISchemaClientEventCFZ_0(void *a1)
{
  v1 = [a1 uiStateTransition];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 dismissed];

  if (!v3)
  {
    return 0;
  }

  v4 = [v3 dismissalReason];

  if (qword_27D01C4C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = qword_27D0245F0;
  if (*(qword_27D0245F0 + 16) && (v6 = sub_222A2E3A4(v4), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  return v9;
}

Swift::String_optional __swiftcall UniversalEntity.getName()()
{
  v4 = *v0;
  v1 = sub_222A67AA8();
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

unint64_t sub_222A67AA8()
{
  v1 = *v0;
  result = sub_222B01C08();
  if (!result)
  {
    return result;
  }

  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    v10 = result;
    v11 = sub_222B02DC8();
    result = v10;
    if (v11)
    {
      goto LABEL_4;
    }

LABEL_11:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_4:
  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x223DC6F00](0, result);
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = *(v3 + 16);

    if (!v4)
    {
      __break(1u);
      return result;
    }
  }

  result = sub_222A67BDC();
  if (v5)
  {
    v6 = v5;
    v7 = result;
    v8 = sub_222A67F6C();
    if (v9)
    {
      v12 = v8;

      MEMORY[0x223DC66E0](v7, v6);

      return v12;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

char *sub_222A67BDC()
{
  v1 = 0;
  v2 = sub_222B01C08();
  if (!v2)
  {
    return v1;
  }

  v3 = v2;
  v4 = v2 & 0xFFFFFFFFFFFFFF8;
  if (v2 >> 62)
  {
LABEL_24:
    v5 = sub_222B02DC8();
    v28 = v1;
    if (v5)
    {
LABEL_4:
      v0 = 0;
      v1 = MEMORY[0x277D84F90];
      do
      {
        v6 = v0;
        while (1)
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            MEMORY[0x223DC6F00](v6, v3);
            v0 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              goto LABEL_22;
            }
          }

          else
          {
            if (v6 >= *(v4 + 16))
            {
              goto LABEL_23;
            }

            v7 = *(v3 + 8 * v6 + 32);

            v0 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
LABEL_22:
              __break(1u);
LABEL_23:
              __break(1u);
              goto LABEL_24;
            }
          }

          sub_222B01C58();
          if (v30)
          {
            break;
          }

          ++v6;
          if (v0 == v5)
          {
            goto LABEL_26;
          }
        }

        v8 = sub_222B023E8();
        v10 = v9;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_222AA8C78(0, *(v1 + 2) + 1, 1, v1);
        }

        v12 = *(v1 + 2);
        v11 = *(v1 + 3);
        if (v12 >= v11 >> 1)
        {
          v1 = sub_222AA8C78((v11 > 1), v12 + 1, 1, v1);
        }

        *(v1 + 2) = v12 + 1;
        v13 = &v1[16 * v12];
        *(v13 + 4) = v8;
        *(v13 + 5) = v10;
      }

      while (v0 != v5);
      goto LABEL_26;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v28 = 0;
    if (v5)
    {
      goto LABEL_4;
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_26:

  v14 = 0;
  v15 = *(v1 + 2);
  v16 = MEMORY[0x277D84F90];
LABEL_27:
  v17 = &v1[16 * v14 + 40];
  while (v15 != v14)
  {
    if (v14 >= *(v1 + 2))
    {
      __break(1u);
      goto LABEL_46;
    }

    ++v14;
    v0 = *(v17 - 1);
    v18 = *v17;
    v17 += 16;
    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v0 & 0xFFFFFFFFFFFFLL;
    }

    if (v19)
    {

      v29 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_222A23AE4(0, *(v16 + 2) + 1, 1);
        v16 = v29;
      }

      v21 = *(v16 + 2);
      v20 = *(v16 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_222A23AE4((v20 > 1), v21 + 1, 1);
        v16 = v29;
      }

      *(v16 + 2) = v21 + 1;
      v22 = &v16[16 * v21];
      *(v22 + 4) = v0;
      *(v22 + 5) = v18;
      goto LABEL_27;
    }
  }

  v29 = v16;

  v0 = v28;
  sub_222A68A44(&v29);
  if (v28)
  {
LABEL_46:

    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v23 = sub_222B02328();
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v23 & 0xFFFFFFFFFFFFLL;
  }

  if (v26)
  {
    v29 = 34;
    v30 = 0xE100000000000000;
    MEMORY[0x223DC66E0](v23, v25);

    MEMORY[0x223DC66E0](34, 0xE100000000000000);

    return v29;
  }

  else
  {

    return 0;
  }
}

unint64_t sub_222A67F6C()
{
  v23 = *v0;
  result = sub_222B01BF8();
  if (!result)
  {
    return result;
  }

  v2 = result;
  v3 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
LABEL_26:
    v4 = sub_222B02DC8();
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      goto LABEL_27;
    }
  }

  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v22 = v6;
    v7 = v5;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x223DC6F00](v7, v2);
        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v7 >= *(v3 + 16))
        {
          goto LABEL_25;
        }

        v8 = *(v2 + 8 * v7 + 32);

        v5 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }
      }

      sub_222B01C58();
      if (v24)
      {
        break;
      }

LABEL_7:
      ++v7;
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }

    v24 = v23;
    v9 = sub_222A67BDC();
    v11 = v10;

    if (!v11)
    {
      goto LABEL_7;
    }

    v12 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_222AA8C78(0, *(v22 + 2) + 1, 1, v22);
    }

    v15 = *(v12 + 2);
    v14 = *(v12 + 3);
    v16 = v12;
    if (v15 >= v14 >> 1)
    {
      v16 = sub_222AA8C78((v14 > 1), v15 + 1, 1, v12);
    }

    *(v16 + 2) = v15 + 1;
    v6 = v16;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v9;
    *(v17 + 5) = v11;
  }

  while (v5 != v4);
LABEL_27:

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D290, &qword_222B06EE0);
  sub_222A69918();
  v18 = sub_222B02328();
  v20 = v19;

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {
    MEMORY[0x223DC66E0](v18, v20);

    MEMORY[0x223DC66E0](93, 0xE100000000000000);

    return 91;
  }

  else
  {

    return 0;
  }
}

uint64_t sub_222A6820C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64616F6C796170;
  }

  else
  {
    v4 = 1702060386;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  if (*a2)
  {
    v6 = 0x64616F6C796170;
  }

  else
  {
    v6 = 1702060386;
  }

  if (*a2)
  {
    v7 = 0xE700000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_222B02F78();
  }

  return v9 & 1;
}

uint64_t sub_222A682AC()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A68328()
{
  *v0;
  sub_222B02448();
}

uint64_t sub_222A68390()
{
  v1 = *v0;
  sub_222B03128();
  sub_222B02448();

  return sub_222B03168();
}

uint64_t sub_222A68408@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222B02E48();

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

void sub_222A68468(uint64_t *a1@<X8>)
{
  v2 = 1702060386;
  if (*v1)
  {
    v2 = 0x64616F6C796170;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_222A684A0()
{
  if (*v0)
  {
    result = 0x64616F6C796170;
  }

  else
  {
    result = 1702060386;
  }

  *v0;
  return result;
}

uint64_t sub_222A684D4@<X0>(char *a1@<X8>)
{
  v2 = sub_222B02E48();

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

uint64_t sub_222A68538(uint64_t a1)
{
  v2 = sub_222A6954C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222A68574(uint64_t a1)
{
  v2 = sub_222A6954C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UniversalEntity.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D620, &qword_222B08560);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A6954C();
  sub_222B03198();
  if (!v2)
  {
    v15 = 0;
    sub_222A695A0();
    sub_222B02E98();
    sub_222B01C18();
    v14 = 1;
    sub_222A69648(&qword_27D01D638);
    sub_222B02E98();
    (*(v6 + 8))(v10, v5);
    *a2 = v13[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UniversalEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D640, &qword_222B08568);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v13 - v8;
  v10 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_222A6954C();
  sub_222B031B8();
  v15 = 0;
  sub_222A695F4();
  sub_222B02EF8();
  if (!v2)
  {
    v13[1] = v10;
    v14 = 1;
    sub_222B01C18();
    sub_222A69648(&qword_27D01D650);
    sub_222B02EF8();
  }

  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_222A68A44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_222AB3A9C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_222A68AB0(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_222A68AB0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_222B02F18();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_222B02668();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_222A68C78(v7, v8, a1, v4);
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
    return sub_222A68BA8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_222A68BA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_222B02F78(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_222A68C78(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_222AB3838(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_222A69254((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_222B02F78();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_222B02F78();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_222AA8B74(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_222AA8B74((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_127:
          __break(1u);
LABEL_128:
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_222A69254((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_222AB3838(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_222AB37AC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_222B02F78(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_222A69254(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_222B02F78() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_222B02F78() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t _s28SiriPrivateLearningAnalytics15UniversalEntityO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v11 = *a1;
  v3 = sub_222A67AA8();
  v5 = v4;
  v6 = sub_222A67AA8();
  if (v5)
  {
    if (v7)
    {
      if (v3 == v6 && v5 == v7)
      {

        v9 = 1;
      }

      else
      {
        v9 = sub_222B02F78();
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (!v7)
    {
      v9 = 1;
      return v9 & 1;
    }

    v9 = 0;
  }

  return v9 & 1;
}

unint64_t sub_222A6954C()
{
  result = qword_27D01D628;
  if (!qword_27D01D628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D628);
  }

  return result;
}

unint64_t sub_222A695A0()
{
  result = qword_27D01D630;
  if (!qword_27D01D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D630);
  }

  return result;
}

unint64_t sub_222A695F4()
{
  result = qword_27D01D648;
  if (!qword_27D01D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D648);
  }

  return result;
}

uint64_t sub_222A69648(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_222B01C18();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

unint64_t sub_222A69768()
{
  result = qword_27D01D658;
  if (!qword_27D01D658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D658);
  }

  return result;
}

unint64_t sub_222A697C0()
{
  result = qword_27D01D660;
  if (!qword_27D01D660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D660);
  }

  return result;
}

unint64_t sub_222A69818()
{
  result = qword_27D01D668;
  if (!qword_27D01D668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D668);
  }

  return result;
}

unint64_t sub_222A69870()
{
  result = qword_27D01D670;
  if (!qword_27D01D670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D670);
  }

  return result;
}

unint64_t sub_222A698C4()
{
  result = qword_27D01D678;
  if (!qword_27D01D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D01D678);
  }

  return result;
}

unint64_t sub_222A69918()
{
  result = qword_280CB4BC0;
  if (!qword_280CB4BC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D01D290, &qword_222B06EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB4BC0);
  }

  return result;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.init(bundleIdentifier:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin() + 20);
  v7 = sub_222B01748();
  v10 = *(v7 - 8);
  (*(v10 + 32))(&a4[v6], a3, v7);
  v8 = *(v10 + 56);

  return v8(&a4[v6], 0, 1, v7);
}

uint64_t type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin()
{
  result = qword_280CB7B70;
  if (!qword_280CB7B70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.bundleIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin() + 20);

  return sub_222A69B04(v3, a1);
}

uint64_t sub_222A69B04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D458, &unk_222B07E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.init(bundleIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  *(a3 + 1) = a2;
  v4 = *(type metadata accessor for SiriUserFeedbackLearningMLRuntimePlugin() + 20);
  v5 = sub_222B01748();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a3[v4], 1, 1, v5);
}

uint64_t SiriUserFeedbackLearningMLRuntimePlugin.perform(_:)(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_222A69C14, 0, 0);
}

uint64_t sub_222A69C14()
{
  v17 = v0;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_222B02148();
  __swift_project_value_buffer(v2, qword_280CBC458);
  sub_222A4DE5C(v1, (v0 + 2));
  v3 = sub_222B02128();
  v4 = sub_222B028D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_222A230FC(0x286D726F66726570, 0xEB00000000293A5FLL, &v16);
    *(v5 + 12) = 2080;
    v7 = SiriUserFeedbackLearningTask.description.getter();
    v9 = v8;
    sub_222A4DEB8((v0 + 2));
    v10 = sub_222A230FC(v7, v9, &v16);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_222A1C000, v3, v4, "SiriUserFeedbackLearningMLRuntimePlugin.%s task: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v6, -1, -1);
    MEMORY[0x223DC7E30](v5, -1, -1);
  }

  else
  {

    sub_222A4DEB8((v0 + 2));
  }

  v11 = swift_task_alloc();
  v0[12] = v11;
  *(v11 + 16) = *(v0 + 5);
  v12 = *(MEMORY[0x277D859E0] + 4);
  v13 = swift_task_alloc();
  v0[13] = v13;
  *v13 = v0;
  v13[1] = sub_222A69EA0;
  v14 = v0[9];

  return MEMORY[0x2822007B8](v14, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_222A6A644, v11, &type metadata for SiriUserFeedbackLearningTaskResult);
}

uint64_t sub_222A69EA0()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

void sub_222A69FB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - v10;
  v12 = objc_opt_self();
  v13 = *(a2 + 8);
  v14 = *a3;
  v15 = a3[1];
  v16 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  (*(v7 + 16))(v11, a1, v6);
  v17 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v17, v11, v6);
  aBlock[4] = sub_222A6A8D8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_10;
  v19 = _Block_copy(aBlock);

  [v12 performTask:v13 forPluginID:v16 completionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_222A6A198(void *a1, void *a2)
{
  v4 = a1;
  v5 = a2;
  SiriUserFeedbackLearningTaskResult.init(mlrTaskResult:error:)(a1, a2, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938);
  return sub_222B02708();
}

void SiriUserFeedbackLearningMLRuntimePlugin.perform(_:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v8 = sub_222B02148();
  __swift_project_value_buffer(v8, qword_280CBC458);
  sub_222A4DE5C(a1, aBlock);
  v9 = sub_222B02128();
  v10 = sub_222B028D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_222A230FC(0xD000000000000016, 0x8000000222B11980, &v24);
    *(v11 + 12) = 2080;
    v13 = SiriUserFeedbackLearningTask.description.getter();
    v15 = v14;
    sub_222A4DEB8(aBlock);
    v16 = sub_222A230FC(v13, v15, &v24);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_222A1C000, v9, v10, "SiriUserFeedbackLearningMLRuntimePlugin.%s task: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DC7E30](v12, -1, -1);
    MEMORY[0x223DC7E30](v11, -1, -1);
  }

  else
  {

    sub_222A4DEB8(aBlock);
  }

  v17 = objc_opt_self();
  v18 = *(a1 + 8);
  v19 = *v4;
  v20 = v4[1];
  v21 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  aBlock[4] = sub_222A6A64C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_222A4E970;
  aBlock[3] = &block_descriptor_4;
  v23 = _Block_copy(aBlock);

  [v17 performTask:v18 forPluginID:v21 completionHandler:v23];
  _Block_release(v23);
}

void sub_222A6A4C0(void *a1, void *a2, void (*a3)(__int128 *))
{
  v6 = a1;
  v7 = a2;
  SiriUserFeedbackLearningTaskResult.init(mlrTaskResult:error:)(a1, a2, &v13);
  v10 = v13;
  v11 = v14;
  v12 = v15;
  a3(&v10);
  v9 = v11;
  v8 = v12;
  sub_222A39248(v10, *(&v10 + 1));
}

uint64_t sub_222A6A558()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_222A6A598(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_222A34620;

  return SiriUserFeedbackLearningMLRuntimePlugin.perform(_:)(a1, a2);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t dispatch thunk of SiriUserFeedbackLearningPlugin.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_222A34620;

  return v13(a1, a2, a3, a4);
}

void sub_222A6A804()
{
  sub_222A6A880();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_222A6A880()
{
  if (!qword_280CB8308)
  {
    sub_222B01748();
    v0 = sub_222B02B28();
    if (!v1)
    {
      atomic_store(v0, &qword_280CB8308);
    }
  }
}

uint64_t sub_222A6A8D8(void *a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D680, &qword_222B08938) - 8) + 80);

  return sub_222A6A198(a1, a2);
}

void *UniversalSuggestionsStoreRuntimeQueryWrapper.__allocating_init()()
{
  v0 = static Config.universalSuggestionsStoreFilePath.getter();
  v2 = v1;
  v3 = type metadata accessor for UniversalSuggestionsStoreCoreData();
  swift_allocObject();
  v4 = sub_222AB99B4(v0, v2, 0);
  if (v4)
  {
    v5 = v4;
    type metadata accessor for UniversalSuggestionsStoreRuntimeQueryWrapper();
    result = swift_allocObject();
    result[5] = v3;
    result[6] = &protocol witness table for UniversalSuggestionsStoreCoreData;
    result[2] = v5;
  }

  else
  {
    if (qword_280CBA628 != -1)
    {
      swift_once();
    }

    v7 = sub_222B02148();
    __swift_project_value_buffer(v7, qword_280CBC458);
    v8 = sub_222B02128();
    v9 = sub_222B028E8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_222A1C000, v8, v9, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Failed to initialise Universal Suggestions store", v10, 2u);
      MEMORY[0x223DC7E30](v10, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t *UniversalSuggestionsStoreRuntimeQueryWrapper.__allocating_init(store:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_222A6B518(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v6;
}

uint64_t *UniversalSuggestionsStoreRuntimeQueryWrapper.init(store:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = sub_222A6B4A8(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t sub_222A6ABF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v59 = a2;
  v57 = type metadata accessor for UniversalCandidate(0);
  v5 = *(*(v57 - 8) + 64);
  MEMORY[0x28223BE20](v57, v6);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v55 - v16;
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v55 - v20;
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v55 - v23;
  v25 = sub_222B02098();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25, v28);
  v30 = &v55 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *a1;
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v32 = sub_222B020C8();
  __swift_project_value_buffer(v32, qword_27D024610);
  sub_222B020B8();
  sub_222B02068();
  v58 = sub_222A6EF34("runUniversalSuggestionsQuery", 28, 2, v30);
  (*(v26 + 8))(v30, v25);
  v33 = v3[5];
  v34 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v33);
  v60[0] = v31;
  (*(v34 + 24))(v60, v33, v34);
  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v35 = sub_222B02148();
  __swift_project_value_buffer(v35, qword_280CBC458);
  sub_222A6B61C(v24, v21);
  v36 = sub_222B02128();
  v37 = sub_222B028D8();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61 = v39;
    *v38 = 136315138;
    sub_222A6B61C(v21, v17);
    v40 = type metadata accessor for UniversalSuggestionCandidate(0);
    if ((*(*(v40 - 8) + 48))(v17, 1, v40) == 1)
    {
      sub_222A6B68C(v17);
      v41 = 0;
      v42 = 0;
    }

    else
    {
      v43 = &v17[*(v40 + 24)];
      v44 = v56;
      sub_222A43DEC(v43, v56);
      sub_222A6B764(v17, type metadata accessor for UniversalSuggestionCandidate);
      v45 = *(v44 + *(v57 + 20));

      sub_222A6B764(v44, type metadata accessor for UniversalCandidate);
      v60[0] = v45;
      v41 = sub_222A67AA8();
      v42 = v46;
    }

    v60[0] = v41;
    v60[1] = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D690, &qword_222B0F0C0);
    v47 = sub_222B023D8();
    v49 = v48;
    sub_222A6B68C(v21);
    v50 = sub_222A230FC(v47, v49, &v61);

    *(v38 + 4) = v50;
    _os_log_impl(&dword_222A1C000, v36, v37, "[UniversalSuggestionsStoreRuntimeQueryWrapper]: Found %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v39);
    MEMORY[0x223DC7E30](v39, -1, -1);
    MEMORY[0x223DC7E30](v38, -1, -1);
  }

  else
  {

    sub_222A6B68C(v21);
  }

  sub_222A6B6F4(v24, v13);
  v51 = type metadata accessor for UniversalSuggestionCandidate(0);
  if ((*(*(v51 - 8) + 48))(v13, 1, v51) == 1)
  {
    sub_222A6B68C(v13);
    v52 = 0;
  }

  else
  {
    v53 = v56;
    sub_222A43DEC(&v13[*(v51 + 24)], v56);
    sub_222A6B764(v13, type metadata accessor for UniversalSuggestionCandidate);
    v52 = *(v53 + *(v57 + 20));

    sub_222A6B764(v53, type metadata accessor for UniversalCandidate);
  }

  *v59 = v52;
  sub_222A6B1A0();
}

uint64_t sub_222A6B1A0()
{
  v0 = sub_222B020D8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_222B02098();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D01C4D0 != -1)
  {
    swift_once();
  }

  v12 = sub_222B020C8();
  __swift_project_value_buffer(v12, qword_27D024610);
  v13 = sub_222B020B8();
  sub_222B020E8();
  v14 = sub_222B029F8();
  if (sub_222B02B08())
  {

    sub_222B02118();

    if ((*(v1 + 88))(v5, v0) == *MEMORY[0x277D85B00])
    {
      v15 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v5, v0);
      v15 = "";
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    v17 = sub_222B02078();
    _os_signpost_emit_with_name_impl(&dword_222A1C000, v13, v14, v17, "runUniversalSuggestionsQuery", v15, v16, 2u);
    MEMORY[0x223DC7E30](v16, -1, -1);
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t UniversalSuggestionsStoreRuntimeQueryWrapper.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t *sub_222A6B4A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_222A6B518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for UniversalSuggestionsStoreRuntimeQueryWrapper();
  v11 = swift_allocObject();
  (*(v7 + 16))(v10, a1, a3);
  v11[5] = a3;
  v11[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v10, a3);
  return v11;
}

uint64_t sub_222A6B61C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A6B68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_222A6B6F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D688, &unk_222B08940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_222A6B764(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_222A6B814(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v23 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = MEMORY[0x223DC6F00](v8, v4);
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_222B02D18();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = *(v23 + 16);
        sub_222B02D48();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        sub_222B02D58();
        sub_222B02D28();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

size_t static NlxSELFUtils.getTopNlxUsoGraph(from:)(unint64_t a1)
{
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v127 - 8) + 64);
  MEMORY[0x28223BE20](v127, v6);
  v131 = MEMORY[0x277D84F90];
  v126 = &v123 - v7;
  if (a1 >> 62)
  {
    goto LABEL_183;
  }

  v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  v130 = a1;
  if (v8)
  {
    v10 = 0;
    v1 = a1 & 0xC000000000000001;
    v11 = a1 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v1)
      {
        v12 = MEMORY[0x223DC6F00](v10, a1);
      }

      else
      {
        if (v10 >= *(v11 + 16))
        {
          goto LABEL_123;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_122;
      }

      if ([v12 anyEventType] == 18)
      {
        sub_222B02D18();
        v14 = *(v131 + 16);
        sub_222B02D48();
        sub_222B02D58();
        sub_222B02D28();
        a1 = v130;
      }

      else
      {
      }

      ++v10;
    }

    while (v2 != v8);
    v11 = v131;
    v131 = v9;
    if ((v11 & 0x8000000000000000) != 0)
    {
      goto LABEL_184;
    }
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
    v131 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_184;
    }
  }

  if ((v11 & 0x4000000000000000) == 0)
  {
    v2 = *(v11 + 16);
    goto LABEL_19;
  }

LABEL_184:
  v2 = sub_222B02DC8();
LABEL_19:
  a1 = 0;
  v128 = 0;
  v129 = MEMORY[0x277D84F90];
  if (!v2)
  {
LABEL_20:

    v2 = MEMORY[0x277D84F90];
    v131 = MEMORY[0x277D84F90];
    if (v8)
    {
      v11 = 0;
      a1 = v130;
      v15 = v130 & 0xC000000000000001;
      v16 = v130 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v15)
        {
          v26 = MEMORY[0x223DC6F00](v11, a1);
        }

        else
        {
          if (v11 >= *(v16 + 16))
          {
            goto LABEL_125;
          }

          v26 = *(a1 + 8 * v11 + 32);
        }

        v27 = v26;
        v1 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_124;
        }

        if ([v26 anyEventType] == 19)
        {
          sub_222B02D18();
          v28 = *(v131 + 16);
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
          a1 = v130;
        }

        else
        {
        }

        ++v11;
      }

      while (v1 != v8);
      v1 = v131;
      v131 = v2;
      if (v1 < 0)
      {
        goto LABEL_185;
      }
    }

    else
    {
      v1 = MEMORY[0x277D84F90];
      v131 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
      {
        goto LABEL_185;
      }
    }

    if ((v1 & 0x4000000000000000) == 0)
    {
      v8 = *(v1 + 16);
LABEL_50:
      a1 = 0;
      v3 = 0x277D59000uLL;
      v130 = MEMORY[0x277D84F90];
      if (!v8)
      {
LABEL_51:

        a1 = sub_222A6CB10(v129, v130);

        if (!a1)
        {
          goto LABEL_198;
        }

        if (a1 >> 62)
        {
          v1 = sub_222B02DC8();
          if (!v1)
          {
            goto LABEL_197;
          }
        }

        else
        {
          v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v1)
          {
            goto LABEL_197;
          }
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x223DC6F00](0, a1);
        }

        else
        {
          if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_190:
            swift_once();
LABEL_60:
            v30 = sub_222B02148();
            v31 = __swift_project_value_buffer(v30, qword_280CBC458);
            v32 = v11;
            v125 = v31;
            v33 = sub_222B02128();
            v34 = sub_222B028D8();

            if (os_log_type_enabled(v33, v34))
            {
              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v133 = v36;
              *v35 = 136315138;
              v37 = [v32 userDialogActs];
              if (v37)
              {
                sub_222A250BC(0, &qword_280CB4B10, 0x277D58FD0);
                v38 = sub_222B025F8();

                if (v38 >> 62)
                {
                  v39 = sub_222B02DC8();
                }

                else
                {
                  v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }
              }

              else
              {
                v39 = 0;
              }

              v131 = v39;
              v132 = v37 == 0;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D698, qword_222B089C0);
              v54 = sub_222B023D8();
              v56 = sub_222A230FC(v54, v55, &v133);

              *(v35 + 4) = v56;
              _os_log_impl(&dword_222A1C000, v33, v34, "[NlxSELFUtils] Found %s dialog acts in the top NLX parse", v35, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v36);
              MEMORY[0x223DC7E30](v36, -1, -1);
              MEMORY[0x223DC7E30](v35, -1, -1);
            }

            v8 = v129;
            v57 = [v32 userDialogActs];
            if (!v57)
            {

LABEL_198:

              return 0;
            }

            v58 = v57;
            sub_222A250BC(0, &qword_280CB4B10, 0x277D58FD0);
            a1 = sub_222B025F8();

            v130 = v32;
            if (a1 >> 62)
            {
              goto LABEL_195;
            }

            v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v2)
            {
              goto LABEL_97;
            }

LABEL_196:

LABEL_197:

            goto LABEL_198;
          }

          v29 = *(a1 + 32);
        }

        v8 = v29;
        if (v1 != 1)
        {
          v2 = 1;
          while (1)
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v49 = MEMORY[0x223DC6F00](v2, a1);
            }

            else
            {
              if ((v2 & 0x8000000000000000) != 0)
              {
LABEL_181:
                __break(1u);
LABEL_182:
                __break(1u);
LABEL_183:
                v8 = sub_222B02DC8();
                goto LABEL_3;
              }

              if (v2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_182;
              }

              v49 = *(a1 + 8 * v2 + 32);
            }

            v11 = v49;
            v50 = v2 + 1;
            if (__OFADD__(v2, 1))
            {
              goto LABEL_126;
            }

            [v8 probability];
            v52 = v51;
            [v11 probability];
            if (v52 < v53)
            {

              v8 = v11;
              ++v2;
              if (v50 == v1)
              {
                goto LABEL_59;
              }
            }

            else
            {

              ++v2;
              if (v50 == v1)
              {
                break;
              }
            }
          }
        }

        v11 = v8;
LABEL_59:

        if (qword_280CBA628 == -1)
        {
          goto LABEL_60;
        }

        goto LABEL_190;
      }

      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v42 = MEMORY[0x223DC6F00](a1, v1);
        }

        else
        {
          if (a1 >= *(v1 + 16))
          {
            goto LABEL_121;
          }

          v42 = *(v1 + 8 * a1 + 32);
        }

        v2 = v42;
        v11 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_120;
        }

        v43 = [v42 payload];
        if (v43)
        {
          v44 = v43;
          v45 = sub_222B01798();
          v47 = v46;

          v40 = sub_222B01788();
          sub_222A26530(v45, v47);
        }

        else
        {
          v40 = 0;
        }

        v41 = [objc_allocWithZone(MEMORY[0x277D59610]) initWithData_];

        ++a1;
        if (v41)
        {
          MEMORY[0x223DC6810]();
          if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v48 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_222B02648();
          }

          sub_222B02688();
          v130 = v131;
          a1 = v11;
          if (v8 == v11)
          {
            goto LABEL_51;
          }
        }

        else if (v8 == a1)
        {
          goto LABEL_51;
        }
      }
    }

LABEL_185:
    v8 = sub_222B02DC8();
    goto LABEL_50;
  }

  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v23 = MEMORY[0x223DC6F00](a1, v11);
    }

    else
    {
      if (a1 >= *(v11 + 16))
      {
        goto LABEL_119;
      }

      v23 = *(v11 + 8 * a1 + 32);
    }

    v3 = v23;
    v1 = a1 + 1;
    if (__OFADD__(a1, 1))
    {
      break;
    }

    v24 = [v23 payload];
    if (v24)
    {
      v17 = v24;
      v18 = sub_222B01798();
      v20 = v19;

      v21 = sub_222B01788();
      sub_222A26530(v18, v20);
    }

    else
    {
      v21 = 0;
    }

    v22 = [objc_allocWithZone(MEMORY[0x277D590F0]) initWithData_];

    ++a1;
    if (v22)
    {
      MEMORY[0x223DC6810]();
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      v129 = v131;
      a1 = v1;
      if (v2 == v1)
      {
        goto LABEL_20;
      }
    }

    else if (v2 == a1)
    {
      goto LABEL_20;
    }
  }

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
LABEL_127:
  v82 = sub_222B018D8();
  (*(*(v82 - 8) + 56))(v126, 1, 1, v82);
LABEL_128:
  v83 = sub_222B023D8();
  v85 = sub_222A230FC(v83, v84, &v131);

  *(v3 + 4) = v85;
  _os_log_impl(&dword_222A1C000, a1, v2, "[NlxSELFUtils] Fetching NLX events for link id=%s to reconstruct the graph", v3, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v1);
  MEMORY[0x223DC7E30](v1, -1, -1);
  MEMORY[0x223DC7E30](v3, -1, -1);
  while (2)
  {

    v131 = MEMORY[0x277D84F90];
    v86 = v8 & 0xFFFFFFFFFFFFFF8;
    if (v8 >> 62)
    {
      v87 = sub_222B02DC8();
    }

    else
    {
      v87 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v88 = MEMORY[0x277D84F90];
    if (!v87)
    {
      a1 = MEMORY[0x277D84F90];
      goto LABEL_150;
    }

    v89 = 0;
    v90 = v8 & 0xC000000000000001;
    a1 = MEMORY[0x277D84F90];
    do
    {
      v1 = a1;
      a1 = v89;
      while (1)
      {
        if (v90)
        {
          v91 = MEMORY[0x223DC6F00](a1, v8);
        }

        else
        {
          if (a1 >= *(v86 + 16))
          {
            goto LABEL_192;
          }

          v91 = *(v8 + 8 * a1 + 32);
        }

        v8 = v91;
        v89 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          __break(1u);
LABEL_192:
          __break(1u);
          goto LABEL_193;
        }

        v92 = [v91 cdmUsoGraphTier1];
        if (v92)
        {
          break;
        }

LABEL_135:
        ++a1;
        v8 = v129;
        if (v89 == v87)
        {
          a1 = v1;
          v88 = MEMORY[0x277D84F90];
          goto LABEL_150;
        }
      }

      v93 = v92;
      v94 = [v92 usoGraphTier1];

      if (!v94)
      {
        goto LABEL_135;
      }

      MEMORY[0x223DC6810]();
      v8 = v129;
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_222B02648();
      }

      sub_222B02688();
      a1 = v131;
      v88 = MEMORY[0x277D84F90];
    }

    while (v89 != v87);
LABEL_150:

    v131 = v88;
    if (a1 >> 62)
    {
      v95 = sub_222B02DC8();
    }

    else
    {
      v95 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v66 = v130;
    v64 = v123;
    if (v95)
    {
      v96 = 0;
      v129 = a1 & 0xC000000000000001;
      v97 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v129)
        {
          v98 = MEMORY[0x223DC6F00](v96, a1);
        }

        else
        {
          if (v96 >= *(v97 + 16))
          {
            goto LABEL_194;
          }

          v98 = *(a1 + 8 * v96 + 32);
        }

        v99 = v98;
        v1 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          break;
        }

        v100 = [v98 linkId];
        if (v100)
        {
          v101 = v100;
          v102 = a1;
          sub_222A250BC(0, &qword_27D01D050, 0x277D5AC78);
          v8 = v124;
          v103 = sub_222B02AE8();

          if (v103)
          {
            sub_222B02D18();
            v104 = *(v131 + 16);
            sub_222B02D48();
            sub_222B02D58();
            sub_222B02D28();
          }

          else
          {
          }

          a1 = v102;
        }

        else
        {
        }

        ++v96;
        if (v1 == v95)
        {
          v66 = v130;
          v76 = v131;
          v64 = v123;
          goto LABEL_168;
        }
      }

LABEL_193:
      __break(1u);
LABEL_194:
      __break(1u);
LABEL_195:
      v2 = sub_222B02DC8();
      if (!v2)
      {
        goto LABEL_196;
      }

LABEL_97:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v59 = MEMORY[0x223DC6F00](v3, a1);
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_180;
          }

          v59 = *(a1 + 8 * v3 + 32);
        }

        v11 = v59;
        v1 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_180:
          __break(1u);
          goto LABEL_181;
        }

        v60 = [v59 reference];
        if (v60)
        {

          v61 = [v11 userStatedTask];
          if (v61)
          {
            break;
          }
        }

        ++v3;
        if (v1 == v2)
        {
          goto LABEL_196;
        }
      }

      v62 = v61;

      v63 = [v11 reference];
      if (v63)
      {
        v64 = v63;
        v65 = [v11 reference];
        v66 = v130;
        if (!v65 || (v67 = v65, v68 = [v65 linkId], v67, !v68))
        {

          v76 = MEMORY[0x277D84F90];
          goto LABEL_169;
        }

        v69 = v68;
        a1 = sub_222B02128();
        LOBYTE(v2) = sub_222B028D8();

        v70 = os_log_type_enabled(a1, v2);
        v123 = v64;
        v124 = v69;
        if (!v70)
        {
          continue;
        }

        v3 = swift_slowAlloc();
        v1 = swift_slowAlloc();
        v131 = v1;
        *v3 = 136315138;
        v71 = [v69 value];
        if (v71)
        {
          v72 = v71;
          v73 = sub_222B01798();
          v75 = v74;

          sub_222A67044(v73, v75, v126);
          sub_222A26530(v73, v75);
          goto LABEL_128;
        }

        goto LABEL_127;
      }

      v77 = sub_222B02128();
      v78 = sub_222B028E8();
      v79 = os_log_type_enabled(v77, v78);
      v80 = v130;
      if (v79)
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_222A1C000, v77, v78, "[NlxSELFUtils] No USO graph in top dialog act", v81, 2u);
        MEMORY[0x223DC7E30](v81, -1, -1);
      }

      return 0;
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
LABEL_168:

LABEL_169:

      v105 = sub_222B02128();
      v106 = sub_222B028D8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 134217984;
        if (v76 >> 62)
        {
          v108 = sub_222B02DC8();
        }

        else
        {
          v108 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v107 + 4) = v108;

        _os_log_impl(&dword_222A1C000, v105, v106, "[NlxSELFUtils] Found %ld NLX redaction events", v107, 0xCu);
        MEMORY[0x223DC7E30](v107, -1, -1);

        v66 = v130;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v109 = v128;
      v110 = sub_222ACC144(v64, v76);
      if (v109)
      {

        v111 = v109;
        v112 = sub_222B02128();
        v113 = sub_222B028E8();

        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          v115 = v66;
          v116 = swift_slowAlloc();
          v131 = v116;
          *v114 = 136315138;
          v133 = v109;
          v117 = v109;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01D120, qword_222B06760);
          v118 = sub_222B023D8();
          v120 = sub_222A230FC(v118, v119, &v131);

          *(v114 + 4) = v120;
          _os_log_impl(&dword_222A1C000, v112, v113, "Failed to un-redact the NLX USO graph: %s", v114, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v116);
          MEMORY[0x223DC7E30](v116, -1, -1);
          MEMORY[0x223DC7E30](v114, -1, -1);
        }

        else
        {
        }

        return 0;
      }

      v121 = v110;

      return v121;
    }
  }
}

unint64_t sub_222A6CB10(unint64_t a1, unint64_t a2)
{
  result = sub_222A6CD30(a1, a2);
  if (result)
  {
    v4 = result;
    v20 = result;
    v5 = result & 0xFFFFFFFFFFFFFF8;
    if (result >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((result & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = result)
    {
      while (!__OFSUB__(i--, 1))
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DC6F00](i, v4);
        }

        else
        {
          if ((i & 0x8000000000000000) != 0)
          {
            goto LABEL_25;
          }

          if (i >= *(v5 + 16))
          {
            goto LABEL_26;
          }

          v8 = *(v4 + 32 + 8 * i);
        }

        v9 = v8;
        v10 = [v8 cdmRequestContext];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 ended];

          if (v12)
          {

            goto LABEL_17;
          }
        }

        else
        {
        }

        if (!i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      result = sub_222B02DC8();
    }

LABEL_17:
    MEMORY[0x28223BE20](result, v3);
    v19[2] = &v20;
    v14 = sub_222A9DCE0(sub_222A6E52C, v19, i, v13);

    if (v14 && (v15 = [v14 cdmRequestContext], v14, v15) && (v16 = objc_msgSend(v15, sel_ended), v15, v16) && (v17 = objc_msgSend(v16, sel_parses), v16, v17))
    {
      sub_222A250BC(0, &qword_280CB4B68, 0x277D58FD8);
      v18 = sub_222B025F8();

      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_222A6CD30(unint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v99 - v7;
  v9 = sub_222B018D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_222A6D88C(a2, v15, v8);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    v35 = (*(v10 + 32))(v14, v8, v9);
    MEMORY[0x28223BE20](v35, v36);
    *(&v99 - 2) = v14;

    v37 = sub_222A6B814(sub_222A6E43C, (&v99 - 4), a1);
    (*(v10 + 8))(v14, v9);
    return v37;
  }

  sub_222A34F20(v8, &unk_27D01DA50, &unk_222B04E20);
  v16 = sub_222A6E290(a2);
  v101 = a1;
  if (v17)
  {
    v18 = v17;
    v100 = v16;
    v103 = MEMORY[0x277D84F90];
    if (a1 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_222B02DC8())
    {
      v20 = 0;
      v21 = a1 & 0xC000000000000001;
      v22 = a1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v21)
        {
          v23 = MEMORY[0x223DC6F00](v20, a1);
        }

        else
        {
          if (v20 >= *(v22 + 16))
          {
            goto LABEL_41;
          }

          v23 = *(a1 + 8 * v20 + 32);
        }

        v24 = v23;
        v25 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          break;
        }

        v26 = [v23 eventMetadata];
        if (v26)
        {
          v27 = v26;
          v28 = [v26 resultCandidateId];

          if (v28)
          {
            v29 = sub_222B02388();
            v31 = v30;

            v32 = v29 == v100 && v18 == v31;
            if (v32)
            {

              a1 = v101;
LABEL_21:
              sub_222B02D18();
              v34 = *(v103 + 16);
              sub_222B02D48();
              sub_222B02D58();
              sub_222B02D28();
              goto LABEL_7;
            }

            v33 = sub_222B02F78();

            a1 = v101;
            if (v33)
            {
              goto LABEL_21;
            }
          }
        }

LABEL_7:
        ++v20;
        if (v25 == i)
        {
          v37 = v103;
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

    v37 = MEMORY[0x277D84F90];
LABEL_46:

    return v37;
  }

  v103 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v38 = sub_222B02DC8();
    if (v38)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
LABEL_27:
      v39 = v38;
      v40 = 0;
      v41 = a1 & 0xC000000000000001;
      v18 = a1 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v41)
        {
          v42 = MEMORY[0x223DC6F00](v40, a1);
        }

        else
        {
          if (v40 >= *(v18 + 16))
          {
            goto LABEL_43;
          }

          v42 = *(a1 + 8 * v40 + 32);
        }

        v43 = v42;
        a1 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_42;
        }

        v44 = [v42 cdmRequestContext];
        if (v44 && (v45 = v44, v46 = [v44 ended], v45, v46))
        {

          sub_222B02D18();
          v47 = *(v103 + 16);
          sub_222B02D48();
          sub_222B02D58();
          sub_222B02D28();
        }

        else
        {
        }

        ++v40;
        v32 = a1 == v39;
        a1 = v101;
      }

      while (!v32);
      v48 = v103;
      v38 = v39;
      if (v103 < 0)
      {
        goto LABEL_116;
      }

      goto LABEL_50;
    }
  }

  v48 = MEMORY[0x277D84F90];
  if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
  {
LABEL_116:
    v50 = sub_222B02DC8();
    goto LABEL_52;
  }

LABEL_50:
  if ((v48 & 0x4000000000000000) != 0)
  {
    goto LABEL_116;
  }

  v50 = *(v48 + 16);
LABEL_52:
  v99 = v38;
  v37 = MEMORY[0x277D84F90];
  if (!v50)
  {
    v100 = MEMORY[0x277D84F90];
    goto LABEL_74;
  }

  v38 = 0;
  v100 = MEMORY[0x277D84F90];
  while (2)
  {
    v51 = v38;
    while (1)
    {
      if ((v48 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x223DC6F00](v51, v48);
      }

      else
      {
        if (v51 >= *(v48 + 16))
        {
          goto LABEL_113;
        }

        v52 = *(v48 + 8 * v51 + 32);
      }

      v53 = v52;
      v38 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
        goto LABEL_116;
      }

      v54 = [v52 eventMetadata];
      if (v54)
      {
        v55 = v54;
        v56 = [v54 resultCandidateId];

        if (v56)
        {
          break;
        }
      }

LABEL_56:
      ++v51;
      a1 = v101;
      if (v38 == v50)
      {
        v37 = MEMORY[0x277D84F90];
        goto LABEL_74;
      }
    }

    v57 = sub_222B02388();
    v59 = v58;

    v60 = sub_222A9DDF4(v57, v59);
    LOBYTE(v57) = v61;

    if (v57)
    {
      goto LABEL_56;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v100 = sub_222AA8ECC(0, *(v100 + 2) + 1, 1, v100);
    }

    v64 = *(v100 + 2);
    v63 = *(v100 + 3);
    if (v64 >= v63 >> 1)
    {
      v100 = sub_222AA8ECC((v63 > 1), v64 + 1, 1, v100);
    }

    v65 = v100;
    *(v100 + 2) = v64 + 1;
    *&v65[8 * v64 + 32] = v60;
    a1 = v101;
    v37 = MEMORY[0x277D84F90];
    if (v38 != v50)
    {
      continue;
    }

    break;
  }

LABEL_74:

  v66 = v99;
  v67 = *(v100 + 2);
  if (!v67)
  {

    return 0;
  }

  v68 = *(v100 + 4);
  v69 = v67 - 1;
  if (v67 != 1)
  {
    if (v67 >= 5)
    {
      v70 = v69 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v71 = vdupq_n_s64(v68);
      v72 = (v100 + 56);
      v73 = v69 & 0xFFFFFFFFFFFFFFFCLL;
      v74 = v71;
      do
      {
        v71 = vbslq_s8(vcgtq_s64(v71, v72[-1]), v71, v72[-1]);
        v74 = vbslq_s8(vcgtq_s64(v74, *v72), v74, *v72);
        v72 += 2;
        v73 -= 4;
      }

      while (v73);
      v75 = vbslq_s8(vcgtq_s64(v71, v74), v71, v74);
      v76 = vextq_s8(v75, v75, 8uLL).u64[0];
      v68 = vbsl_s8(vcgtd_s64(v75.i64[0], v76), *v75.i8, v76);
      if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
      {
        goto LABEL_82;
      }
    }

    else
    {
      v70 = 1;
LABEL_82:
      v77 = v67 - v70;
      v78 = &v100[8 * v70 + 32];
      do
      {
        v80 = *v78;
        v78 += 8;
        v79 = v80;
        if (v68 <= v80)
        {
          v68 = v79;
        }

        --v77;
      }

      while (v77);
    }
  }

  if (qword_280CBA628 != -1)
  {
    swift_once();
  }

  v81 = sub_222B02148();
  __swift_project_value_buffer(v81, qword_280CBC458);
  v82 = sub_222B02128();
  v83 = sub_222B028E8();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134217984;
    *(v84 + 4) = v68;
    _os_log_impl(&dword_222A1C000, v82, v83, "Using highest integer rcId of %ld to identify primary NLX candidate", v84, 0xCu);
    MEMORY[0x223DC7E30](v84, -1, -1);
  }

  v103 = v37;
  if (v66)
  {
    v85 = 0;
    v48 = a1 & 0xC000000000000001;
    v86 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v48)
      {
        v87 = MEMORY[0x223DC6F00](v85, a1);
      }

      else
      {
        if (v85 >= *(v86 + 16))
        {
          goto LABEL_115;
        }

        v87 = *(a1 + 8 * v85 + 32);
      }

      v88 = v87;
      v38 = v85 + 1;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_114;
      }

      v89 = [v87 eventMetadata];
      if (v89 && (v90 = v89, v91 = [v89 resultCandidateId], v90, v91))
      {
        v92 = sub_222B02388();
        v94 = v93;

        v102 = v68;
        v95 = sub_222B02F38();
        if (v94)
        {
          if (v92 == v95 && v94 == v96)
          {

            goto LABEL_107;
          }

          v97 = sub_222B02F78();

          if (v97)
          {
LABEL_107:
            sub_222B02D18();
            v98 = *(v103 + 16);
            sub_222B02D48();
            sub_222B02D58();
            sub_222B02D28();
          }

          else
          {
          }

          a1 = v101;
          goto LABEL_94;
        }

        a1 = v101;
      }

      else
      {
        v102 = v68;
        sub_222B02F38();
      }

LABEL_94:
      ++v85;
      if (v38 == v66)
      {
        return v103;
      }
    }
  }

  return v37;
}

unint64_t sub_222A6D6B4(unint64_t a1, unint64_t a2)
{
  result = sub_222A6CD30(a1, a2);
  if (!result)
  {
    return result;
  }

  v4 = result;
  v17 = result;
  v5 = result & 0xFFFFFFFFFFFFFF8;
  if (result >> 62)
  {
    goto LABEL_22;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DC6F00](v7 - 1, v4);
      goto LABEL_10;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_20;
    }

    if (v6 >= *(v5 + 16))
    {
LABEL_21:
      __break(1u);
LABEL_22:
      result = sub_222B02DC8();
      v6 = result;
    }

    else
    {
      v8 = *(v4 + 32 + 8 * v6);
LABEL_10:
      v9 = v8;
      v10 = [v8 cdmMatchingSpanEnded];

      if (v10)
      {

        break;
      }
    }
  }

  MEMORY[0x28223BE20](result, v3);
  v16[2] = &v17;
  v12 = sub_222A9DCE0(sub_222A6E41C, v16, v6, v11);

  if (!v12)
  {
    return 0;
  }

  v13 = [v12 cdmMatchingSpanEnded];

  if (!v13)
  {
    return 0;
  }

  v14 = [v13 matchingSpans];

  if (!v14)
  {
    return 0;
  }

  sub_222A250BC(0, &qword_27D01D6A0, 0x277D58E20);
  v15 = sub_222B025F8();

  return v15;
}

uint64_t sub_222A6D88C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  v25 = a1;
  v5 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v7 = v6;
    if (!v6)
    {
      break;
    }

    --v6;
    if (__OFSUB__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x223DC6F00](v7 - 1, v3);
      goto LABEL_9;
    }

    if ((v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (v6 >= *(v5 + 16))
    {
LABEL_23:
      __break(1u);
LABEL_24:
      a1 = sub_222B02DC8();
      v6 = a1;
    }

    else
    {
      v8 = *(v3 + 32 + 8 * v6);
LABEL_9:
      v9 = v8;
      v10 = [v8 trpFinalized];

      if (v10)
      {

        break;
      }
    }
  }

  MEMORY[0x28223BE20](a1, a2);
  v24[2] = &v25;
  v12 = sub_222A9DCE0(sub_222A6E52C, v24, v6, v11);
  if (v12)
  {
    v13 = v12;
    v14 = [v12 trpFinalized];
    if (v14 && (v15 = v14, v16 = [v14 trpId], v15, v16))
    {
      v17 = [v16 value];
      if (v17)
      {
        v18 = v17;
        v19 = sub_222B01798();
        v21 = v20;

        sub_222A67044(v19, v21, a3);
        return sub_222A26530(v19, v21);
      }
    }

    else
    {
    }
  }

  v23 = sub_222B018D8();
  return (*(*(v23 - 8) + 56))(a3, 1, 1, v23);
}

uint64_t sub_222A6DABC(id *a1, uint64_t a2)
{
  v4 = sub_222B018D8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v48 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6A8, &unk_222B08A00);
  v9 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50, v10);
  v12 = &v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v47 - v21;
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v47 - v24;
  v26 = [*a1 eventMetadata];
  v49 = v18;
  if (v26)
  {
    v27 = v26;
    v28 = [v26 trpId];

    if (v28)
    {
      v29 = [v28 value];
      if (v29)
      {
        v30 = v29;
        v31 = sub_222B01798();
        v47 = a2;
        v33 = v32;

        sub_222A67044(v31, v33, v25);
        v34 = v33;
        a2 = v47;
        sub_222A26530(v31, v34);
        goto LABEL_7;
      }
    }
  }

  (*(v5 + 56))(v25, 1, 1, v4);
LABEL_7:
  (*(v5 + 16))(v22, a2, v4);
  (*(v5 + 56))(v22, 0, 1, v4);
  v35 = *(v50 + 48);
  sub_222A6E45C(v25, v12);
  sub_222A6E45C(v22, &v12[v35]);
  v36 = v5;
  v37 = v5;
  v38 = v25;
  v39 = *(v37 + 48);
  if (v39(v12, 1, v4) != 1)
  {
    v50 = v38;
    v41 = v49;
    sub_222A6E45C(v12, v49);
    if (v39(&v12[v35], 1, v4) != 1)
    {
      v42 = v36;
      v43 = &v12[v35];
      v44 = v48;
      (*(v36 + 32))(v48, v43, v4);
      sub_222A6E4CC();
      v40 = sub_222B02338();
      v45 = *(v42 + 8);
      v45(v44, v4);
      sub_222A34F20(v22, &unk_27D01DA50, &unk_222B04E20);
      sub_222A34F20(v50, &unk_27D01DA50, &unk_222B04E20);
      v45(v41, v4);
      sub_222A34F20(v12, &unk_27D01DA50, &unk_222B04E20);
      return v40 & 1;
    }

    sub_222A34F20(v22, &unk_27D01DA50, &unk_222B04E20);
    sub_222A34F20(v50, &unk_27D01DA50, &unk_222B04E20);
    (*(v36 + 8))(v41, v4);
    goto LABEL_12;
  }

  sub_222A34F20(v22, &unk_27D01DA50, &unk_222B04E20);
  sub_222A34F20(v38, &unk_27D01DA50, &unk_222B04E20);
  if (v39(&v12[v35], 1, v4) != 1)
  {
LABEL_12:
    sub_222A34F20(v12, &qword_27D01D6A8, &unk_222B08A00);
    v40 = 0;
    return v40 & 1;
  }

  sub_222A34F20(v12, &unk_27D01DA50, &unk_222B04E20);
  v40 = 1;
  return v40 & 1;
}

uint64_t (*sub_222A6DF8C(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_222A6E524;
  }

  __break(1u);
  return result;
}

void (*sub_222A6E00C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222A6E08C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_222A6E094(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_222A6E114;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_222A6E11C(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
    v5 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v5;
    return sub_222A6E19C;
  }

  __break(1u);
  return result;
}

void (*sub_222A6E1A4(void (*result)(id *), unint64_t a2, uint64_t a3))(id *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DC6F00](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_222A6E528;
  }

  __break(1u);
  return result;
}

unint64_t sub_222A6E224@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x223DC6F00](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_222A6E290(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_20:
    v2 = sub_222B02DC8();
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return 0;
    }
  }

  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x223DC6F00](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(a1 + 8 * i + 32);
    }

    v5 = v4;
    v6 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v7 = [v4 resultSelected];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 exists];

      if (v9)
      {
        break;
      }
    }

    if (v6 == v2)
    {
      return 0;
    }
  }

  v10 = [v5 eventMetadata];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 resultCandidateId];

    if (v12)
    {
      v13 = sub_222B02388();

      return v13;
    }
  }

  return 0;
}

uint64_t sub_222A6E45C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D01DA50, &unk_222B04E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_222A6E4CC()
{
  result = qword_280CB8300;
  if (!qword_280CB8300)
  {
    sub_222B018D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB8300);
  }

  return result;
}

uint64_t CoreAnalyticsMeasurable.payload()(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D01D6B0, qword_222B08A10);
  result = sub_222B02DD8();
  v4 = result;
  v5 = 0;
  v6 = v2 + 64;
  v26 = result;
  v27 = v2;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v25 = result + 64;
  if (v9)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v9));
      v28 = (v9 - 1) & v9;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = (*(v27 + 48) + 16 * v14);
      v16 = v15[1];
      v29 = *v15;
      sub_222A42E40(*(v27 + 56) + 40 * v14, v30);
      v17 = v31;
      v18 = v32;
      __swift_project_boxed_opaque_existential_1(v30, v31);
      v19 = *(v18 + 8);

      v20 = v19(v17, v18);
      result = __swift_destroy_boxed_opaque_existential_0(v30);
      v4 = v26;
      *(v25 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v21 = (v26[6] + 16 * v14);
      *v21 = v29;
      v21[1] = v16;
      *(v26[7] + 8 * v14) = v20;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v26[2] = v24;
      v9 = v28;
      if (!v28)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v10)
      {

        return v4;
      }

      v13 = *(v6 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v28 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CoreAnalyticsLogger.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 1;
  *(result + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t CoreAnalyticsLogger.init()()
{
  result = v0;
  *(v0 + 16) = 1;
  *(v0 + 24) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_222A6E784()
{
  *(v0 + 16) = 0;
  swift_beginAccess();
  v1 = *(v0 + 24);
  *(v0 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_222A6E7CC()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
}

void sub_222A6E804(void *a1)
{
  if (*(v1 + 16))
  {
    aBlock = 0xD000000000000027;
    v10 = 0x8000000222B12160;
    v2 = a1[3];
    v3 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v2);
    v5 = (*(v3 + 8))(v2, v3);
    MEMORY[0x223DC66E0](v5);

    v6 = _sSS28SiriPrivateLearningAnalyticsE10toNSObjectSo0F0CyF_0();

    sub_222A42E40(a1, v15);
    v7 = swift_allocObject();
    sub_222A1E5A8(v15, v7 + 16);
    v13 = sub_222A6E988;
    v14 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = sub_222A6E9CC;
    v12 = &block_descriptor_5;
    v8 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v8);
  }

  else
  {

    sub_222A6EA70(a1);
  }
}

uint64_t sub_222A6E988()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return CoreAnalyticsMeasurable.payload()(v1, v2);
}

id sub_222A6E9CC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_222A6EEE8();
    v5 = sub_222B022A8();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_222A6EA70(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = CoreAnalyticsMeasurable.payload()(v2, v3);
  v5 = 0;
  v29 = v4;
  v6 = 1 << *(v4 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v4 + 64;
  v9 = v7 & *(v4 + 64);
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_10:
    while (1)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v13 = (*(v29 + 48) + ((v5 << 10) | (16 * v12)));
      v15 = *v13;
      v14 = v13[1];
      v16 = a1[3];
      v17 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v16);

      v18 = CoreAnalyticsMeasurable.payload()(v16, v17);
      if (*(v18 + 16))
      {
        v19 = sub_222A26EC8(v15, v14);
        if (v20)
        {
          break;
        }
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    v21 = *(*(v18 + 56) + 8 * v19);

    swift_beginAccess();
    v22 = *(v28 + 24);
    v27 = v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 24) = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v22 = sub_222AA94B4(0, v22[2] + 1, 1, v22);
      *(v28 + 24) = v22;
    }

    v25 = v22[2];
    v24 = v22[3];
    if (v25 >= v24 >> 1)
    {
      v22 = sub_222AA94B4((v24 > 1), v25 + 1, 1, v22);
    }

    v22[2] = v25 + 1;
    v26 = &v22[3 * v25];
    v26[4] = v15;
    v26[5] = v14;
    v26[6] = v27;
    *(v28 + 24) = v22;
    swift_endAccess();
  }

LABEL_6:
  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {

      return;
    }

    v9 = *(v8 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}