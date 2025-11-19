uint64_t sub_25F0D24FC()
{
  v1 = v0[34];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_25F0D1CE0;
  v4 = v0[31];
  v5 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v5);
}

uint64_t sub_25F0D25AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[14] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  v6[17] = v7;
  v8 = *(v7 - 8);
  v6[18] = v8;
  v6[19] = *(v8 + 64);
  v6[20] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v10 = sub_25F177E8C();
  v6[23] = v10;
  v11 = *(v10 - 8);
  v6[24] = v11;
  v6[25] = *(v11 + 64);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v6[29] = v12;
  v13 = *(v12 - 8);
  v6[30] = v13;
  v14 = *(v13 + 64) + 15;
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D27AC, 0, 0);
}

uint64_t sub_25F0D27AC()
{
  v1 = v0[31];
  v2 = v0[14];
  v3 = v0[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v0[32] = *(*v3 + 120);
  swift_beginAccess();
  v4 = *(MEMORY[0x277D85798] + 4);
  v5 = swift_task_alloc();
  v0[33] = v5;
  *v5 = v0;
  v5[1] = sub_25F0D28AC;
  v6 = v0[31];
  v7 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v7);
}

uint64_t sub_25F0D28AC()
{
  v1 = *(*v0 + 264);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0D29A8, 0, 0);
}

uint64_t sub_25F0D29A8()
{
  v1 = *(v0 + 96);
  *(v0 + 272) = v1;
  if (v1)
  {
    v2 = *(v0 + 120);
    *(v0 + 280) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) + 48);

    return MEMORY[0x2822009F8](sub_25F0D2AE8, v2, 0);
  }

  else
  {
    v3 = *(v0 + 224);
    v5 = *(v0 + 208);
    v4 = *(v0 + 216);
    v7 = *(v0 + 168);
    v6 = *(v0 + 176);
    v8 = *(v0 + 160);
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_25F0D2AE8()
{
  v1 = *(v0 + 120);
  if (!*(*(v1 + 120) + 16))
  {
    v2 = *(v0 + 256);
    *(v0 + 284) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47510, &qword_25F17BFE8);
    sub_25F1783AC();
    v1 = *(v0 + 120);
  }

  v3 = *(v0 + 272);
  v5 = *(v0 + 216);
  v4 = *(v0 + 224);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  sub_25F177E7C();
  v8 = *(v7 + 16);
  v8(v5, v4, v6);
  swift_beginAccess();

  v9 = *(v1 + 120);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + 120);
  *(v0 + 104) = v11;
  *(v1 + 120) = 0x8000000000000000;
  v12 = sub_25F0C8B7C(v5);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
LABEL_26:
    v58 = v12;
    sub_25F16FEA0();
    v12 = v58;
LABEL_10:
    v23 = *(v0 + 104);
    v24 = *(v0 + 272);
    v73 = v8;
    if (v4)
    {
      v25 = v23[7];
      v26 = *(v25 + 8 * v12);
      *(v25 + 8 * v12) = v24;
    }

    else
    {
      v27 = *(v0 + 216);
      v28 = *(v0 + 184);
      v29 = *(v0 + 192);
      v23[(v12 >> 6) + 8] |= 1 << v12;
      v30 = v12;
      v31 = (v8)(v23[6] + *(v29 + 72) * v12, v27, v28);
      *(v23[7] + 8 * v30) = v24;
      v34 = v23[2];
      v16 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v16)
      {
        __break(1u);
        return MEMORY[0x2822009F8](v31, v32, v33);
      }

      v23[2] = v35;
    }

    v36 = *(v0 + 208);
    v64 = v36;
    v65 = *(v0 + 224);
    v37 = *(v0 + 192);
    v69 = *(v0 + 200);
    v70 = *(v0 + 272);
    v39 = *(v0 + 176);
    v38 = *(v0 + 184);
    v40 = *(v0 + 160);
    v71 = *(v0 + 168);
    v61 = v40;
    v62 = *(v0 + 280);
    v41 = *(v0 + 144);
    v67 = *(v0 + 152);
    v42 = *(v0 + 136);
    v59 = *(v0 + 128);
    v60 = v42;
    v43 = *(v0 + 120);
    v63 = v38;
    v72 = *(v37 + 8);
    v72(*(v0 + 216), v38);
    *(v43 + 120) = v23;
    swift_endAccess();
    v66 = sub_25F17932C();
    v68 = *(v66 - 8);
    (*(v68 + 56))(v39, 1, 1, v66);
    (*(v41 + 16))(v40, v59 + v62, v42);
    v73(v36, v65, v38);
    v44 = sub_25F0B7D00(&qword_27FD47508, &qword_27FD472F8, &qword_25F17BC00);
    v45 = (*(v41 + 80) + 40) & ~*(v41 + 80);
    v46 = (v67 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
    v47 = (*(v37 + 80) + v46 + 8) & ~*(v37 + 80);
    v48 = swift_allocObject();
    *(v48 + 2) = v43;
    *(v48 + 3) = v44;
    *(v48 + 4) = v70;
    (*(v41 + 32))(&v48[v45], v61, v60);
    *&v48[v46] = v43;
    (*(v37 + 32))(&v48[v47], v64, v63);
    sub_25F0B7E2C(v39, v71, &qword_27FD46BB0, &qword_25F17AF30);
    LODWORD(v44) = (*(v68 + 48))(v71, 1, v66);
    swift_retain_n();

    v49 = *(v0 + 168);
    if (v44 == 1)
    {
      sub_25F0B7E94(*(v0 + 168), &qword_27FD46BB0, &qword_25F17AF30);
    }

    else
    {
      sub_25F17931C();
      (*(v68 + 8))(v49, v66);
    }

    v51 = *(v48 + 2);
    v50 = *(v48 + 3);
    swift_unknownObjectRetain();

    if (v51)
    {
      swift_getObjectType();
      v52 = sub_25F1792CC();
      v54 = v53;
      swift_unknownObjectRelease();
    }

    else
    {
      v52 = 0;
      v54 = 0;
    }

    sub_25F0B7E94(*(v0 + 176), &qword_27FD46BB0, &qword_25F17AF30);
    v55 = swift_allocObject();
    *(v55 + 16) = &unk_25F17BFD8;
    *(v55 + 24) = v48;
    if (v54 | v52)
    {
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v52;
      *(v0 + 40) = v54;
    }

    v56 = *(v0 + 224);
    v57 = *(v0 + 184);
    swift_task_create();

    v72(v56, v57);
    v31 = sub_25F0D30C8;
    v32 = 0;
    v33 = 0;

    return MEMORY[0x2822009F8](v31, v32, v33);
  }

  LOBYTE(v4) = v13;
  if (*(v11 + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    goto LABEL_26;
  }

  v18 = *(v0 + 216);
  sub_25F16B7F4(v17, isUniquelyReferenced_nonNull_native);
  v19 = *(v0 + 104);
  v12 = sub_25F0C8B7C(v18);
  if ((v4 & 1) == (v20 & 1))
  {
    goto LABEL_10;
  }

  v21 = *(v0 + 184);

  return sub_25F17985C();
}

uint64_t sub_25F0D30C8()
{
  v1 = v0[34];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[33] = v3;
  *v3 = v0;
  v3[1] = sub_25F0D28AC;
  v4 = v0[31];
  v5 = v0[29];

  return MEMORY[0x2822003E8](v0 + 12, 0, 0, v5);
}

uint64_t sub_25F0D3178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47390, &qword_25F17BD68);
  v7[9] = v9;
  v10 = *(v9 - 8);
  v7[10] = v10;
  v11 = *(v10 + 64) + 15;
  v7[11] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D0, &qword_25F17BF98);
  v7[12] = v12;
  v13 = *(v12 - 8);
  v7[13] = v13;
  v14 = *(v13 + 64) + 15;
  v7[14] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474D8, "Bk") - 8) + 64) + 15;
  v7[15] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  v7[16] = v16;
  v17 = *(v16 - 8);
  v7[17] = v17;
  v18 = *(v17 + 64) + 15;
  v7[18] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474E0, &qword_25F17BFA0);
  v7[19] = v19;
  v20 = *(v19 - 8);
  v7[20] = v20;
  v21 = *(v20 + 64) + 15;
  v7[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D33BC, a6, 0);
}

uint64_t sub_25F0D33BC()
{
  v1 = v0[21];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  v5 = v0[5];
  sub_25F176F8C();
  sub_25F0E266C(&qword_27FD474E8, MEMORY[0x277D40DC8]);
  sub_25F176F0C();
  sub_25F17935C();
  (*(v3 + 8))(v2, v4);
  v6 = sub_25F0B7D00(&qword_27FD474C0, &qword_27FD47300, &qword_25F17BC08);
  v0[22] = v6;
  v7 = v0[7];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[23] = v9;
  *v9 = v0;
  v9[1] = sub_25F0D353C;
  v10 = v0[21];
  v11 = v0[19];
  v12 = v0[15];

  return MEMORY[0x2822003E8](v12, v7, v6, v11);
}

uint64_t sub_25F0D353C()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0D364C, v2, 0);
}

uint64_t sub_25F0D364C()
{
  v1 = *(v0 + 120);
  if ((*(*(v0 + 80) + 48))(v1, 1, *(v0 + 72)) == 1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    (*(*(v0 + 160) + 8))(*(v0 + 168), *(v0 + 152));
    swift_beginAccess();
    sub_25F16ABB8(v2);
    swift_endAccess();

    if (!*(*(v3 + 120) + 16))
    {
      v4 = *(**(v0 + 56) + 120);
      *(v0 + 192) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474C8, &qword_25F17BF90);
      sub_25F1783AC();
    }

    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v8 = *(v0 + 112);
    v7 = *(v0 + 120);
    v9 = *(v0 + 88);

    v10 = *(v0 + 8);

    return v10();
  }

  else
  {
    v13 = *(v0 + 104);
    v12 = *(v0 + 112);
    v14 = *(v0 + 96);
    v15 = *(v0 + 48);
    sub_25F0B7D50(v1, *(v0 + 88), &qword_27FD47390, &qword_25F17BD68);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
    sub_25F17934C();
    (*(v13 + 8))(v12, v14);
    v16 = *(v0 + 176);
    v17 = *(v0 + 56);
    v18 = *(MEMORY[0x277D85798] + 4);
    v19 = swift_task_alloc();
    *(v0 + 184) = v19;
    *v19 = v0;
    v19[1] = sub_25F0D353C;
    v20 = *(v0 + 168);
    v21 = *(v0 + 152);
    v22 = *(v0 + 120);

    return MEMORY[0x2822003E8](v22, v17, v16, v21);
  }
}

uint64_t sub_25F0D38A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47380, &unk_25F1830C0);
  v7[6] = v9;
  v10 = *(v9 - 8);
  v7[7] = v10;
  v11 = *(v10 + 64) + 15;
  v7[8] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47518, &qword_25F17BFF0);
  v7[9] = v12;
  v13 = *(v12 - 8);
  v7[10] = v13;
  v14 = *(v13 + 64) + 15;
  v7[11] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47520, &qword_25F17BFF8) - 8) + 64) + 15;
  v7[12] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v7[13] = v16;
  v17 = *(v16 - 8);
  v7[14] = v17;
  v18 = *(v17 + 64) + 15;
  v7[15] = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47528, &qword_25F1830D0);
  v7[16] = v19;
  v20 = *(v19 - 8);
  v7[17] = v20;
  v21 = *(v20 + 64) + 15;
  v7[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D3AE8, a6, 0);
}

uint64_t sub_25F0D3AE8()
{
  v1 = v0[18];
  v3 = v0[14];
  v2 = v0[15];
  v4 = v0[13];
  v5 = v0[2];
  sub_25F176EAC();
  sub_25F0E266C(&unk_27FD47640, MEMORY[0x277D40D48]);
  sub_25F176F0C();
  sub_25F17935C();
  (*(v3 + 8))(v2, v4);
  v6 = sub_25F0B7D00(&qword_27FD47508, &qword_27FD472F8, &qword_25F17BC00);
  v0[19] = v6;
  v7 = v0[4];
  v8 = *(MEMORY[0x277D85798] + 4);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_25F0D3C68;
  v10 = v0[18];
  v11 = v0[16];
  v12 = v0[12];

  return MEMORY[0x2822003E8](v12, v7, v6, v11);
}

uint64_t sub_25F0D3C68()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 32);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0D3D78, v2, 0);
}

uint64_t sub_25F0D3D78()
{
  v1 = v0[12];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[15];
    v3 = v0[11];
    v4 = v0[8];
    v5 = v0[4];
    v6 = v0[5];
    (*(v0[17] + 8))(v0[18], v0[16]);
    sub_25F0D3F60(v6);

    v7 = v0[1];

    return v7();
  }

  else
  {
    v10 = v0[10];
    v9 = v0[11];
    v11 = v0[9];
    v12 = v0[3];
    sub_25F0B7D50(v1, v0[8], &qword_27FD47380, &unk_25F1830C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
    sub_25F17934C();
    (*(v10 + 8))(v9, v11);
    v13 = v0[19];
    v14 = v0[4];
    v15 = *(MEMORY[0x277D85798] + 4);
    v16 = swift_task_alloc();
    v0[20] = v16;
    *v16 = v0;
    v16[1] = sub_25F0D3C68;
    v17 = v0[18];
    v18 = v0[16];
    v19 = v0[12];

    return MEMORY[0x2822003E8](v19, v14, v13, v18);
  }
}

uint64_t sub_25F0D3F60(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25F177E8C();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v11[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v7, a1);
  swift_beginAccess();
  sub_25F169AEC(0, v7);
  result = swift_endAccess();
  if (!*(v2[15] + 16))
  {
    v10 = *(*v2 + 120);
    v11[8] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47510, &qword_25F17BFE8);
    return sub_25F1783AC();
  }

  return result;
}

uint64_t sub_25F0D409C()
{
  v1 = v0;
  v35 = sub_25F176E8C();
  v33 = *(v35 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  v11 = v10 - 8;
  v34 = *(v10 - 8);
  v12 = *(v34 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v32 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F0, &qword_25F17BE00);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD473D8, &qword_25F17BDD8);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v36, "listener for ");
  v36[7] = -4864;
  v23 = *MEMORY[0x277D40D28];
  v24 = sub_25F176E7C();
  (*(*(v24 - 8) + 104))(v4, v23, v24);
  v25 = v33;
  v26 = v35;
  (*(v33 + 104))(v4, *MEMORY[0x277D40CE8], v35);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v27 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v27);

  (*(v25 + 8))(v4, v26);
  sub_25F0B7E2C(v16, v14, &qword_27FD473D8, &qword_25F17BDD8);
  v28 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v29 = swift_allocObject();
  sub_25F0B7D50(v14, v29 + v28, &qword_27FD473D8, &qword_25F17BDD8);
  v30 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD473D8, &qword_25F17BDD8);
  *(v1 + *(*v1 + 104)) = v30;
  return v1;
}

uint64_t sub_25F0D4574()
{
  v1 = v0;
  v33 = sub_25F176E8C();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  v11 = v10 - 8;
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B0, &qword_25F17BD98);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD47398, &qword_25F17BD70);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v34, "listener for ");
  v34[7] = -4864;
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277D40CF0], v33);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v25 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v25);

  (*(v23 + 8))(v4, v24);
  sub_25F0B7E2C(v16, v14, &qword_27FD47398, &qword_25F17BD70);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25F0B7D50(v14, v27 + v26, &qword_27FD47398, &qword_25F17BD70);
  v28 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD47398, &qword_25F17BD70);
  *(v1 + *(*v1 + 104)) = v28;
  return v1;
}

uint64_t sub_25F0D4A04()
{
  v1 = v0;
  v33 = sub_25F176E8C();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  v11 = v10 - 8;
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47410, &qword_25F17BE48);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD473F8, &qword_25F17BE20);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  strcpy(v34, "listener for ");
  v34[7] = -4864;
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277D40D08], v33);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v25 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v25);

  (*(v23 + 8))(v4, v24);
  sub_25F0B7E2C(v16, v14, &qword_27FD473F8, &qword_25F17BE20);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25F0B7D50(v14, v27 + v26, &qword_27FD473F8, &qword_25F17BE20);
  v28 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD473F8, &qword_25F17BE20);
  *(v1 + *(*v1 + 104)) = v28;
  return v1;
}

uint64_t sub_25F0D4E94()
{
  v1 = v0;
  v33 = sub_25F176E8C();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  v11 = v10 - 8;
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD47430, &qword_25F17BE70);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v34, "listener for ");
  v34[7] = -4864;
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277D40D00], v33);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v25 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v25);

  (*(v23 + 8))(v4, v24);
  sub_25F0B7E2C(v16, v14, &qword_27FD47430, &qword_25F17BE70);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25F0B7D50(v14, v27 + v26, &qword_27FD47430, &qword_25F17BE70);
  v28 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD47430, &qword_25F17BE70);
  *(v1 + *(*v1 + 104)) = v28;
  return v1;
}

uint64_t sub_25F0D5324()
{
  v1 = v0;
  v33 = sub_25F176E8C();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  v11 = v10 - 8;
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47468, &qword_25F17BED8);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD47450, &qword_25F17BEB0);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  strcpy(v34, "listener for ");
  v34[7] = -4864;
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277D40CD0], v33);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v25 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v25);

  (*(v23 + 8))(v4, v24);
  sub_25F0B7E2C(v16, v14, &qword_27FD47450, &qword_25F17BEB0);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25F0B7D50(v14, v27 + v26, &qword_27FD47450, &qword_25F17BEB0);
  v28 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD47450, &qword_25F17BEB0);
  *(v1 + *(*v1 + 104)) = v28;
  return v1;
}

uint64_t sub_25F0D57B4()
{
  v1 = v0;
  v33 = sub_25F176E8C();
  v31 = *(v33 - 8);
  v2 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F1787BC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  v11 = v10 - 8;
  v32 = *(v10 - 8);
  v12 = *(v32 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = (&v30 - v15);
  v17 = *(v11 + 56);
  sub_25F1787CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47488, &qword_25F17BF20);
  v18 = sub_25F17941C();
  (*(v6 + 8))(v9, v5);
  *v16 = v18;
  sub_25F0B7E2C(v16, v14, &qword_27FD47470, &qword_25F17BEF8);
  v19 = *(v11 + 56);
  v20 = (v1 + *(*v1 + 96));
  *v20 = *v14;
  v21 = *(v11 + 56);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
  (*(*(v22 - 8) + 32))(&v20[v21], &v14[v19], v22);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  strcpy(v34, "listener for ");
  v34[7] = -4864;
  v23 = v31;
  v24 = v33;
  (*(v31 + 104))(v4, *MEMORY[0x277D40CF8], v33);
  sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
  v25 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v25);

  (*(v23 + 8))(v4, v24);
  sub_25F0B7E2C(v16, v14, &qword_27FD47470, &qword_25F17BEF8);
  v26 = (*(v32 + 80) + 16) & ~*(v32 + 80);
  v27 = swift_allocObject();
  sub_25F0B7D50(v14, v27 + v26, &qword_27FD47470, &qword_25F17BEF8);
  v28 = sub_25F177F0C();
  sub_25F0B7E94(v16, &qword_27FD47470, &qword_25F17BEF8);
  *(v1 + *(*v1 + 104)) = v28;
  return v1;
}

uint64_t sub_25F0D5C44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[103] = a4;
  v4[102] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8);
  v4[104] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[105] = swift_task_alloc();
  v4[100] = a1;
  v4[101] = a2;

  return MEMORY[0x2822009F8](sub_25F0D5CF8, 0, 0);
}

uint64_t sub_25F0D5CF8()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  sub_25F0B7E2C(*(v0 + 824), v1, &qword_27FD47470, &qword_25F17BEF8);
  v3 = *v1;
  *(v0 + 848) = v3;
  *(v0 + 888) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 856) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47488, &qword_25F17BF20);
  *v5 = v0;
  v5[1] = sub_25F0D5DE0;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0D5DE0()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0D5EF8, 0, 0);
}

uint64_t sub_25F0D5EF8()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47478, &qword_25F17BF18);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  *(v0 + 864) = [*(v0 + 16) endpoint];
  v9 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v9;
  v10 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v10;
  v11 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v11;
  v12 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v12;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v13 = swift_task_alloc();
  *(v0 + 872) = v13;
  *v13 = v0;
  v13[1] = sub_25F0D608C;
  v14 = *(v0 + 816);

  return (sub_25F0F26F8)(v0 + 800, v14, v0 + 288);
}

uint64_t sub_25F0D608C()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(v2 + 880) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 304);
  v7 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v7;
    *(v2 + 544) = v5;
    *(v2 + 560) = v6;
    v8 = *(v2 + 352);
    v9 = *(v2 + 368);
    v10 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v10;
    *(v2 + 608) = v8;
    *(v2 + 624) = v9;
    sub_25F0E263C(v2 + 544);
    v11 = sub_25F0D6294;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v7;
    *(v2 + 672) = v5;
    *(v2 + 688) = v6;
    v12 = *(v2 + 352);
    v13 = *(v2 + 368);
    v14 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v14;
    *(v2 + 736) = v12;
    *(v2 + 752) = v13;
    sub_25F0E263C(v2 + 672);
    v11 = sub_25F0D6214;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25F0D6214()
{
  v1 = *(v0 + 840);
  sub_25F0B7E94(v0 + 16, &qword_27FD47488, &qword_25F17BF20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0D6294()
{
  v1 = v0[105];
  sub_25F0B7E94((v0 + 2), &qword_27FD47488, &qword_25F17BF20);

  v2 = v0[1];
  v3 = v0[110];

  return v2();
}

uint64_t sub_25F0D6314(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_25F176E8C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_25F17888C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D64DC, 0, 0);
}

uint64_t sub_25F0D64DC()
{
  v30 = v0;
  v1 = *(v0 + 136);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v4)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v28 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v11 = 136446210;
    v12 = *MEMORY[0x277D40D28];
    v13 = sub_25F176E7C();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v14 = sub_25F17980C();
    v26 = v5;
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_25F0BECF0(v14, v16, &v29);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v18 = *(v6 + 8);
    v18(v26, v28);
  }

  else
  {

    v18 = *(v6 + 8);
    v18(v5, v7);
  }

  *(v0 + 144) = v18;
  v19 = *(v0 + 32);
  v20 = *(v0 + 40);
  v21 = sub_25F176F4C();
  v22 = [v21 pid];
  *(v0 + 172) = v22;

  *(v0 + 168) = v22;
  *(v0 + 152) = *(v20 + *(*v20 + 104));
  *(v0 + 16) = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v24 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D67EC, v24, v23);
}

uint64_t sub_25F0D67EC()
{
  v1 = *(v0 + 152);
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D6880, 0, 0);
}

uint64_t sub_25F0D6880()
{
  v38 = v0;
  v1 = *(v0 + 128);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  if (v4)
  {
    v35 = *(v0 + 104);
    v36 = *(v0 + 144);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v34 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v37 = v12;
    *v11 = 136446210;
    v13 = *MEMORY[0x277D40D28];
    v14 = sub_25F176E7C();
    (*(*(v14 - 8) + 104))(v8, v13, v14);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v15 = sub_25F17980C();
    v33 = v6;
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v18 = sub_25F0BECF0(v15, v17, &v37);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v36(v33, v35);
  }

  else
  {

    v5(v6, v7);
  }

  v19 = *(v0 + 172);
  v20 = *(v0 + 72);
  v22 = *(v0 + 32);
  v21 = *(v0 + 40);
  v23 = sub_25F17932C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v22;
  *(v24 + 40) = v21;
  *(v24 + 48) = v19;

  sub_25F0CD9E8(0, 0, v20, &unk_25F17BE10, v24);

  v26 = *(v0 + 128);
  v25 = *(v0 + 136);
  v27 = *(v0 + 120);
  v28 = *(v0 + 96);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_25F0D6BD4()
{
  v42 = v0;
  v1 = v0[20];
  v2 = v0[15];
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v35 = v0[20];
    v39 = v0[15];
    v40 = v0[18];
    v6 = v0[12];
    v37 = v0[14];
    v38 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v41 = v36;
    *v9 = 136446466;
    v11 = *MEMORY[0x277D40D28];
    v12 = sub_25F176E7C();
    (*(*(v12 - 8) + 104))(v6, v11, v12);
    (*(v8 + 104))(v6, *MEMORY[0x277D40CE8], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v15 = v14;
    (*(v8 + 8))(v6, v7);
    v16 = sub_25F0BECF0(v13, v15, &v41);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2114;
    v17 = v35;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x25F8D6230](v36, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v40(v39, v38);
  }

  else
  {
    v19 = v0[18];
    v21 = v0[14];
    v20 = v0[15];
    v22 = v0[13];

    v19(v20, v22);
  }

  v23 = v0[20];
  v25 = v0[7];
  v24 = v0[8];
  v26 = v0[6];
  v0[3] = v0[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v25 + 8))(v24, v26);
  v28 = v0[16];
  v27 = v0[17];
  v29 = v0[15];
  v30 = v0[12];
  v32 = v0[8];
  v31 = v0[9];

  v33 = v0[1];

  return v33();
}

uint64_t sub_25F0D6FB8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_25F176E8C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_25F17888C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D7180, 0, 0);
}

uint64_t sub_25F0D7180()
{
  v28 = v0;
  v1 = *(v0 + 136);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v4)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v26 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 144) = v16;
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v0 + 172) = v20;

  *(v0 + 168) = v20;
  *(v0 + 152) = *(v18 + *(*v18 + 104));
  *(v0 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D7448, v22, v21);
}

uint64_t sub_25F0D7448()
{
  v1 = *(v0 + 152);
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D74DC, 0, 0);
}

uint64_t sub_25F0D74DC()
{
  v36 = v0;
  v1 = *(v0 + 128);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  if (v4)
  {
    v33 = *(v0 + 104);
    v34 = *(v0 + 144);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v32 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v31 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v35);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v34(v31, v33);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v0 + 172);
  v18 = *(v0 + 72);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BDB0, v22);

  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_25F0D77E8()
{
  v40 = v0;
  v1 = v0[20];
  v2 = v0[15];
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v33 = v0[20];
    v37 = v0[15];
    v38 = v0[18];
    v6 = v0[12];
    v35 = v0[14];
    v36 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40CF0], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v33;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x25F8D6230](v34, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v17 = v0[18];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];

    v17(v18, v20);
  }

  v21 = v0[20];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  v0[3] = v0[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v23 + 8))(v22, v24);
  v26 = v0[16];
  v25 = v0[17];
  v27 = v0[15];
  v28 = v0[12];
  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_25F0D7B84(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v3 = sub_25F17813C();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v7 = *(*(sub_25F177F8C() - 8) + 64) + 15;
  v2[13] = swift_task_alloc();
  v8 = sub_25F177E5C();
  v2[14] = v8;
  v9 = *(v8 - 8);
  v2[15] = v9;
  v10 = *(v9 + 64) + 15;
  v2[16] = swift_task_alloc();
  v11 = sub_25F176E8C();
  v2[17] = v11;
  v12 = *(v11 - 8);
  v2[18] = v12;
  v13 = *(v12 + 64) + 15;
  v2[19] = swift_task_alloc();
  v14 = sub_25F17888C();
  v2[20] = v14;
  v15 = *(v14 - 8);
  v2[21] = v15;
  v16 = *(v15 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D7DD4, 0, 0);
}

uint64_t sub_25F0D7DD4()
{
  v38 = v0;
  v1 = *(v0 + 192);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 192);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  if (v4)
  {
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);
    v36 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v37 = v35;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v34 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v37);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x25F8D6230](v35, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v34, v36);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 200) = v16;
  v17 = *(v0 + 128);
  v19 = *(v0 + 104);
  v18 = *(v0 + 112);
  v20 = *(v0 + 56);
  v21 = sub_25F176F4C();
  v22 = [v21 pid];

  sub_25F176F3C();
  sub_25F0E266C(&qword_27FD47418, MEMORY[0x277D40F20]);
  sub_25F17850C();
  *(v0 + 208) = 0;
  v24 = *(v0 + 120);
  v23 = *(v0 + 128);
  v25 = *(v0 + 112);
  v27 = *(v0 + 56);
  v26 = *(v0 + 64);
  v28 = sub_25F177E4C();
  v30 = v29;
  (*(v24 + 8))(v23, v25);
  *(v0 + 16) = v22;
  *(v0 + 24) = v28;
  *(v0 + 32) = v30;
  *(v0 + 216) = *(v26 + *(*v26 + 104));
  *(v0 + 48) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  sub_25F0B7D00(&qword_27FD47428, &qword_27FD47420, &qword_25F17BE50);
  v32 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D849C, v32, v31);
}

uint64_t sub_25F0D849C()
{
  v2 = v0[26];
  v1 = v0[27];
  sub_25F177EEC();
  v0[28] = v2;
  if (v2)
  {
    v3 = sub_25F0D8868;
  }

  else
  {
    v3 = sub_25F0D852C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0D852C()
{
  v41 = v0;
  v1 = *(v0 + 184);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = *(v0 + 160);
  if (v4)
  {
    v38 = *(v0 + 160);
    v39 = *(v0 + 200);
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 136);
    v37 = *(v0 + 168);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v40 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v36 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v40);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v39(v36, v38);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v0 + 96);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v20 = sub_25F17932C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = *(v0 + 16);
  v23 = *(v0 + 24);
  v22 = *(v0 + 32);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  *(v24 + 32) = v19;
  *(v24 + 40) = v18;
  *(v24 + 48) = v21;
  *(v24 + 56) = v23;
  *(v24 + 64) = v22;

  sub_25F0CD9E8(0, 0, v17, &unk_25F17BE60, v24);

  v25 = *(v0 + 32);

  v27 = *(v0 + 184);
  v26 = *(v0 + 192);
  v28 = *(v0 + 176);
  v29 = *(v0 + 152);
  v30 = *(v0 + 128);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v33 = *(v0 + 88);

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_25F0D8868()
{
  v41 = v0;
  v1 = v0[4];

  v2 = v0[28];
  v3 = v0[22];
  sub_25F17884C();
  v4 = v2;
  v5 = sub_25F17887C();
  v6 = sub_25F17953C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[25];
  v9 = v0[22];
  v10 = v0[20];
  if (v7)
  {
    v38 = v0[22];
    v39 = v0[25];
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v37 = v0[21];
    v14 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v40 = v36;
    *v14 = 136446466;
    (*(v12 + 104))(v11, *MEMORY[0x277D40D08], v13);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v35 = v10;
    v15 = sub_25F17980C();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_25F0BECF0(v15, v17, &v40);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v34 = v20;
    _os_log_impl(&dword_25F0B3000, v5, v6, "listener for %{public}s rejecting connection: %{public}@", v14, 0x16u);
    sub_25F0B7E94(v34, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v34, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x25F8D6230](v36, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    v39(v38, v35);
  }

  else
  {

    v8(v9, v10);
  }

  v22 = v0[10];
  v21 = v0[11];
  v23 = v0[9];
  v0[5] = v0[7];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v22 + 8))(v21, v23);
  v25 = v0[23];
  v24 = v0[24];
  v26 = v0[22];
  v27 = v0[19];
  v28 = v0[16];
  v30 = v0[12];
  v29 = v0[13];
  v31 = v0[11];

  v32 = v0[1];

  return v32();
}

uint64_t sub_25F0D8C18(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_25F176E8C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_25F17888C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D8DE0, 0, 0);
}

uint64_t sub_25F0D8DE0()
{
  v28 = v0;
  v1 = *(v0 + 136);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v4)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v26 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 144) = v16;
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v0 + 172) = v20;

  *(v0 + 168) = v20;
  *(v0 + 152) = *(v18 + *(*v18 + 104));
  *(v0 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D90A8, v22, v21);
}

uint64_t sub_25F0D90A8()
{
  v1 = *(v0 + 152);
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D913C, 0, 0);
}

uint64_t sub_25F0D913C()
{
  v36 = v0;
  v1 = *(v0 + 128);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  if (v4)
  {
    v33 = *(v0 + 104);
    v34 = *(v0 + 144);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v32 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v31 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v35);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v34(v31, v33);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v0 + 172);
  v18 = *(v0 + 72);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BEA0, v22);

  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_25F0D9448()
{
  v40 = v0;
  v1 = v0[20];
  v2 = v0[15];
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v33 = v0[20];
    v37 = v0[15];
    v38 = v0[18];
    v6 = v0[12];
    v35 = v0[14];
    v36 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40D00], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v33;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x25F8D6230](v34, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v17 = v0[18];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];

    v17(v18, v20);
  }

  v21 = v0[20];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  v0[3] = v0[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v23 + 8))(v22, v24);
  v26 = v0[16];
  v25 = v0[17];
  v27 = v0[15];
  v28 = v0[12];
  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_25F0D97E4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_25F17813C();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_25F176E8C();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_25F17888C();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0D99AC, 0, 0);
}

uint64_t sub_25F0D99AC()
{
  v28 = v0;
  v1 = *(v0 + 136);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 136);
  v7 = *(v0 + 104);
  v6 = *(v0 + 112);
  if (v4)
  {
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v26 = *(v0 + 104);
    v11 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v24 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v27);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x25F8D6230](v25, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v24, v26);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  *(v0 + 144) = v16;
  v17 = *(v0 + 32);
  v18 = *(v0 + 40);
  v19 = sub_25F176F4C();
  v20 = [v19 pid];
  *(v0 + 172) = v20;

  *(v0 + 168) = v20;
  *(v0 + 152) = *(v18 + *(*v18 + 104));
  *(v0 + 16) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v22 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0D9C74, v22, v21);
}

uint64_t sub_25F0D9C74()
{
  v1 = *(v0 + 152);
  sub_25F177EEC();
  *(v0 + 160) = 0;

  return MEMORY[0x2822009F8](sub_25F0D9D08, 0, 0);
}

uint64_t sub_25F0D9D08()
{
  v36 = v0;
  v1 = *(v0 + 128);
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 144);
  v6 = *(v0 + 128);
  v7 = *(v0 + 104);
  if (v4)
  {
    v33 = *(v0 + 104);
    v34 = *(v0 + 144);
    v9 = *(v0 + 88);
    v8 = *(v0 + 96);
    v10 = *(v0 + 80);
    v32 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v35 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v31 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v35);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v34(v31, v33);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = *(v0 + 172);
  v18 = *(v0 + 72);
  v20 = *(v0 + 32);
  v19 = *(v0 + 40);
  v21 = sub_25F17932C();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v20;
  *(v22 + 40) = v19;
  *(v22 + 48) = v17;

  sub_25F0CD9E8(0, 0, v18, &unk_25F17BEE8, v22);

  v24 = *(v0 + 128);
  v23 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_25F0DA014()
{
  v40 = v0;
  v1 = v0[20];
  v2 = v0[15];
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v33 = v0[20];
    v37 = v0[15];
    v38 = v0[18];
    v6 = v0[12];
    v35 = v0[14];
    v36 = v0[13];
    v7 = v0[10];
    v8 = v0[11];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v9 = 136446466;
    (*(v8 + 104))(v6, *MEMORY[0x277D40CD0], v7);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v11 = sub_25F17980C();
    v13 = v12;
    (*(v8 + 8))(v6, v7);
    v14 = sub_25F0BECF0(v11, v13, &v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2114;
    v15 = v33;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v16;
    *v10 = v16;
    _os_log_impl(&dword_25F0B3000, v4, v5, "listener for %{public}s rejecting connection: %{public}@", v9, 0x16u);
    sub_25F0B7E94(v10, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x25F8D6230](v34, -1, -1);
    MEMORY[0x25F8D6230](v9, -1, -1);

    v38(v37, v36);
  }

  else
  {
    v17 = v0[18];
    v19 = v0[14];
    v18 = v0[15];
    v20 = v0[13];

    v17(v18, v20);
  }

  v21 = v0[20];
  v23 = v0[7];
  v22 = v0[8];
  v24 = v0[6];
  v0[3] = v0[4];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v23 + 8))(v22, v24);
  v26 = v0[16];
  v25 = v0[17];
  v27 = v0[15];
  v28 = v0[12];
  v30 = v0[8];
  v29 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_25F0DA3B0(uint64_t a1, uint64_t a2)
{
  v2[13] = a1;
  v2[14] = a2;
  v3 = sub_25F17813C();
  v2[15] = v3;
  v4 = *(v3 - 8);
  v2[16] = v4;
  v5 = *(v4 + 64) + 15;
  v2[17] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v7 = sub_25F177F8C();
  v2[19] = v7;
  v8 = *(v7 - 8);
  v2[20] = v8;
  v9 = *(v8 + 64) + 15;
  v2[21] = swift_task_alloc();
  v10 = sub_25F176E8C();
  v2[22] = v10;
  v11 = *(v10 - 8);
  v2[23] = v11;
  v12 = *(v11 + 64) + 15;
  v2[24] = swift_task_alloc();
  v13 = sub_25F17888C();
  v2[25] = v13;
  v14 = *(v13 - 8);
  v2[26] = v14;
  v15 = *(v14 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0DA5D4, 0, 0);
}

uint64_t sub_25F0DA5D4()
{
  v30 = v0;
  v1 = v0[29];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[29];
  v7 = v0[25];
  v6 = v0[26];
  if (v4)
  {
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v28 = v0[25];
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v26 = v5;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v29);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s accepting new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x25F8D6230](v27, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v16 = *(v6 + 8);
    v16(v26, v28);
  }

  else
  {

    v16 = *(v6 + 8);
    v16(v5, v7);
  }

  v0[30] = v16;
  v17 = v0[21];
  v18 = v0[13];
  sub_25F176F3C();
  v19 = MEMORY[0x277D405A0];
  v0[5] = MEMORY[0x277D837D0];
  v0[6] = v19;
  v0[2] = 0xD00000000000001DLL;
  v0[3] = 0x800000025F184C70;
  sub_25F177F6C();
  v0[31] = 0;
  v20 = v0[13];
  v21 = v0[14];
  (*(v0[20] + 8))(v0[21], v0[19]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v22 = v0[10];
  v0[7] = v0[9];
  v0[8] = v22;
  v0[32] = *(v21 + *(*v21 + 104));
  v0[12] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  sub_25F0B7D00(&qword_27FD47498, &qword_27FD47490, &qword_25F17BF28);
  v24 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DAC80, v24, v23);
}

uint64_t sub_25F0DAC80()
{
  v2 = v0[31];
  v1 = v0[32];
  sub_25F177EEC();
  v0[33] = v2;
  if (v2)
  {
    v3 = sub_25F0DB038;
  }

  else
  {
    v3 = sub_25F0DAD10;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F0DAD10()
{
  v39 = v0;
  v1 = v0[28];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[30];
  v6 = v0[28];
  v7 = v0[25];
  if (v4)
  {
    v36 = v0[25];
    v37 = v0[30];
    v9 = v0[23];
    v8 = v0[24];
    v10 = v0[22];
    v35 = v0[26];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v13 = sub_25F17980C();
    v34 = v6;
    v15 = v14;
    (*(v9 + 8))(v8, v10);
    v16 = sub_25F0BECF0(v13, v15, &v38);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s delivered new connection", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x25F8D6230](v12, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    v37(v34, v36);
  }

  else
  {

    v5(v6, v7);
  }

  v17 = v0[18];
  v19 = v0[13];
  v18 = v0[14];
  v20 = sub_25F17932C();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v22 = v0[7];
  v21 = v0[8];
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = v19;
  v23[5] = v18;
  v23[6] = v22;
  v23[7] = v21;

  sub_25F0CD9E8(0, 0, v17, &unk_25F17BF38, v23);

  v24 = v0[8];

  v26 = v0[28];
  v25 = v0[29];
  v27 = v0[27];
  v28 = v0[24];
  v29 = v0[21];
  v31 = v0[17];
  v30 = v0[18];

  v32 = v0[1];

  return v32();
}

uint64_t sub_25F0DB038()
{
  v40 = v0;
  v1 = v0[8];

  v2 = v0[33];
  v3 = v0[27];
  sub_25F17884C();
  v4 = v2;
  v5 = sub_25F17887C();
  v6 = sub_25F17953C();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[30];
  v9 = v0[27];
  v10 = v0[25];
  if (v7)
  {
    v37 = v0[27];
    v38 = v0[30];
    v12 = v0[23];
    v11 = v0[24];
    v13 = v0[22];
    v36 = v0[26];
    v14 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v39 = v35;
    *v14 = 136446466;
    (*(v12 + 104))(v11, *MEMORY[0x277D40CF8], v13);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v34 = v10;
    v15 = sub_25F17980C();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_25F0BECF0(v15, v17, &v39);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2114;
    v19 = v2;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v20;
    *v33 = v20;
    _os_log_impl(&dword_25F0B3000, v5, v6, "listener for %{public}s rejecting connection: %{public}@", v14, 0x16u);
    sub_25F0B7E94(v33, &qword_27FD473D0, &unk_25F17C540);
    MEMORY[0x25F8D6230](v33, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x25F8D6230](v35, -1, -1);
    MEMORY[0x25F8D6230](v14, -1, -1);

    v38(v37, v34);
  }

  else
  {

    v8(v9, v10);
  }

  v22 = v0[16];
  v21 = v0[17];
  v23 = v0[15];
  v0[11] = v0[13];
  sub_25F17812C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  sub_25F0B7D00(&qword_27FD46D30, &qword_27FD46D28, &qword_25F17B180);
  sub_25F1780BC();

  (*(v22 + 8))(v21, v23);
  v25 = v0[28];
  v24 = v0[29];
  v26 = v0[27];
  v27 = v0[24];
  v28 = v0[21];
  v30 = v0[17];
  v29 = v0[18];

  v31 = v0[1];

  return v31();
}

uint64_t sub_25F0DB3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  v10 = *(v9 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v12 = sub_25F17888C();
  *(v6 + 56) = v12;
  v13 = *(v12 - 8);
  *(v6 + 64) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v15 = *(MEMORY[0x277D404C8] + 4);
  v16 = swift_task_alloc();
  *(v6 + 80) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v18 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v16 = v6;
  v16[1] = sub_25F0DB5A0;

  return MEMORY[0x2821A09D8](v17, v18);
}

uint64_t sub_25F0DB5A0()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DB69C, 0, 0);
}

uint64_t sub_25F0DB69C()
{
  v25 = v0;
  v1 = v0[9];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v23 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v11 = 136446210;
    v12 = *MEMORY[0x277D40D28];
    v13 = sub_25F176E7C();
    (*(*(v13 - 8) + 104))(v8, v12, v13);
    (*(v9 + 104))(v8, *MEMORY[0x277D40CE8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v14 = sub_25F17980C();
    v21 = v7;
    v16 = v15;
    (*(v9 + 8))(v8, v10);
    v17 = sub_25F0BECF0(v14, v16, &v24);

    *(v11 + 4) = v17;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x25F8D6230](v22, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v23, v21);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[11] = *(v0[3] + *(*v0[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v19 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v19, v18);
}

uint64_t sub_25F0DB97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  v10 = *(v9 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v12 = sub_25F17888C();
  *(v6 + 56) = v12;
  v13 = *(v12 - 8);
  *(v6 + 64) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v15 = *(MEMORY[0x277D404C8] + 4);
  v16 = swift_task_alloc();
  *(v6 + 80) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v18 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v16 = v6;
  v16[1] = sub_25F0DBB40;

  return MEMORY[0x2821A09D8](v17, v18);
}

uint64_t sub_25F0DBB40()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DBC3C, 0, 0);
}

uint64_t sub_25F0DBC3C()
{
  v23 = v0;
  v1 = v0[9];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v21 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[11] = *(v0[3] + *(*v0[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v17, v16);
}

uint64_t sub_25F0DBED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 48) = a5;
  v13 = sub_25F176E8C();
  *(v8 + 56) = v13;
  v14 = *(v13 - 8);
  *(v8 + 64) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 72) = swift_task_alloc();
  v16 = sub_25F17888C();
  *(v8 + 80) = v16;
  v17 = *(v16 - 8);
  *(v8 + 88) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 40) = a4;
  v19 = *(MEMORY[0x277D404C8] + 4);
  v20 = swift_task_alloc();
  *(v8 + 104) = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v22 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v20 = v8;
  v20[1] = sub_25F0DC0A4;

  return MEMORY[0x2821A09D8](v21, v22);
}

uint64_t sub_25F0DC0A4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DC1A0, 0, 0);
}

uint64_t sub_25F0DC1A0()
{
  v23 = v0;
  v1 = v0[12];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];
  if (v4)
  {
    v21 = v0[12];
    v9 = v0[8];
    v8 = v0[9];
    v10 = v0[7];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D08], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[14] = *(v0[6] + *(*v0[6] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47420, &qword_25F17BE50);
  sub_25F0B7D00(&qword_27FD47428, &qword_27FD47420, &qword_25F17BE50);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DC438, v17, v16);
}

uint64_t sub_25F0DC438()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];
  sub_25F177EDC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F0DC4BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  v10 = *(v9 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v12 = sub_25F17888C();
  *(v6 + 56) = v12;
  v13 = *(v12 - 8);
  *(v6 + 64) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v15 = *(MEMORY[0x277D404C8] + 4);
  v16 = swift_task_alloc();
  *(v6 + 80) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v18 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v16 = v6;
  v16[1] = sub_25F0DC680;

  return MEMORY[0x2821A09D8](v17, v18);
}

uint64_t sub_25F0DC680()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DC77C, 0, 0);
}

uint64_t sub_25F0DC77C()
{
  v23 = v0;
  v1 = v0[9];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v21 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40D00], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[11] = *(v0[3] + *(*v0[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0E4214, v17, v16);
}

uint64_t sub_25F0DCA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  *(v6 + 24) = a5;
  v9 = sub_25F176E8C();
  *(v6 + 32) = v9;
  v10 = *(v9 - 8);
  *(v6 + 40) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 48) = swift_task_alloc();
  v12 = sub_25F17888C();
  *(v6 + 56) = v12;
  v13 = *(v12 - 8);
  *(v6 + 64) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 96) = a6;
  *(v6 + 16) = a4;
  v15 = *(MEMORY[0x277D404C8] + 4);
  v16 = swift_task_alloc();
  *(v6 + 80) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v18 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v16 = v6;
  v16[1] = sub_25F0DCBD8;

  return MEMORY[0x2821A09D8](v17, v18);
}

uint64_t sub_25F0DCBD8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DCCD4, 0, 0);
}

uint64_t sub_25F0DCCD4()
{
  v23 = v0;
  v1 = v0[9];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[8];
  v5 = v0[9];
  v7 = v0[7];
  if (v4)
  {
    v21 = v0[9];
    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CD0], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[11] = *(v0[3] + *(*v0[3] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B8, &qword_25F17BDA0);
  sub_25F0B7D00(&qword_27FD473C0, &qword_27FD473B8, &qword_25F17BDA0);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DCF6C, v17, v16);
}

uint64_t sub_25F0DCF6C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[6];
  sub_25F177EDC();

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F0DCFF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a5;
  v11 = sub_25F176E8C();
  v7[6] = v11;
  v12 = *(v11 - 8);
  v7[7] = v12;
  v13 = *(v12 + 64) + 15;
  v7[8] = swift_task_alloc();
  v14 = sub_25F17888C();
  v7[9] = v14;
  v15 = *(v14 - 8);
  v7[10] = v15;
  v16 = *(v15 + 64) + 15;
  v7[11] = swift_task_alloc();
  v7[2] = a6;
  v7[3] = a7;
  v7[4] = a4;
  v17 = *(MEMORY[0x277D404C8] + 4);
  v18 = swift_task_alloc();
  v7[12] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v20 = sub_25F0B7D00(&qword_27FD46D38, &qword_27FD46D28, &qword_25F17B180);
  *v18 = v7;
  v18[1] = sub_25F0DD1B8;

  return MEMORY[0x2821A09D8](v19, v20);
}

uint64_t sub_25F0DD1B8()
{
  v1 = *(*v0 + 96);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0DD2B4, 0, 0);
}

uint64_t sub_25F0DD2B4()
{
  v23 = v0;
  v1 = v0[11];
  sub_25F17884C();
  v2 = sub_25F17887C();
  v3 = sub_25F17951C();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  if (v4)
  {
    v21 = v0[11];
    v9 = v0[7];
    v8 = v0[8];
    v10 = v0[6];
    v11 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v11 = 136446210;
    (*(v9 + 104))(v8, *MEMORY[0x277D40CF8], v10);
    sub_25F0E266C(&qword_27FD473C8, MEMORY[0x277D40D30]);
    v12 = sub_25F17980C();
    v19 = v7;
    v14 = v13;
    (*(v9 + 8))(v8, v10);
    v15 = sub_25F0BECF0(v12, v14, &v22);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_25F0B3000, v2, v3, "listener for %{public}s purging connection after invalidation", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x25F8D6230](v20, -1, -1);
    MEMORY[0x25F8D6230](v11, -1, -1);

    (*(v6 + 8))(v21, v19);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  v0[13] = *(v0[5] + *(*v0[5] + 104));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47490, &qword_25F17BF28);
  sub_25F0B7D00(&qword_27FD47498, &qword_27FD47490, &qword_25F17BF28);
  v17 = sub_25F1792CC();

  return MEMORY[0x2822009F8](sub_25F0DD54C, v17, v16);
}

uint64_t sub_25F0DD54C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[8];
  sub_25F177EDC();

  v4 = v0[1];

  return v4();
}

id sub_25F0DD5D0(void *a1, uint64_t a2)
{
  v33 = a2;
  v31 = a1;
  v2 = sub_25F176E8C();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v32 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = *MEMORY[0x277D40D28];
  v10 = sub_25F176E7C();
  v11 = *(v10 - 8);
  v30 = *(v11 + 104);
  v35 = v11 + 104;
  v28 = v10;
  v30(v8, v9, v10);
  v12 = *MEMORY[0x277D40CE8];
  v29 = v3[13];
  v27 = v12;
  v29(v8, v12, v2);
  sub_25F176E2C();
  v13 = v3[1];
  v26 = v3 + 1;
  v34 = v13;
  v13(v8, v2);
  v14 = sub_25F17905C();

  v15 = v31;
  [v31 setDomain_];

  v16 = v10;
  v17 = v30;
  v30(v8, v9, v16);
  v18 = v29;
  v29(v8, v12, v2);
  sub_25F176E3C();
  v34(v8, v2);
  v19 = sub_25F17905C();

  [v15 setService_];

  v20 = v32;
  v17(v32, v9, v28);
  v18(v20, v27, v2);
  v21 = v20;
  sub_25F176E4C();
  v23 = v22;
  v34(v21, v2);
  if (v23)
  {
    v24 = sub_25F17905C();

    [v15 setInstance_];
  }

  return [v15 setDelegate_];
}

id sub_25F0DD8E4(void *a1, uint64_t a2, unsigned int *a3)
{
  v24 = a1;
  v25 = a2;
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *a3;
  v13 = v5[13];
  v23 = v12;
  v13(&v22 - v10, v12, v4);
  sub_25F176E2C();
  v22 = v5[1];
  v22(v11, v4);
  v14 = sub_25F17905C();

  v15 = v24;
  [v24 setDomain_];

  v13(v11, v12, v4);
  sub_25F176E3C();
  v16 = v22;
  v22(v11, v4);
  v17 = sub_25F17905C();

  [v15 setService_];

  v13(v9, v23, v4);
  sub_25F176E4C();
  v19 = v18;
  v16(v9, v4);
  if (v19)
  {
    v20 = sub_25F17905C();

    [v15 setInstance_];
  }

  return [v15 setDelegate_];
}

uint64_t sub_25F0DDB3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v11 = *(a3 + 32);
  v10 = *(a3 + 40);
  v3[7] = v9;
  v3[8] = v11;
  v3[9] = v10;

  v12 = swift_task_alloc();
  v3[10] = v12;
  *v12 = v3;
  v12[1] = sub_25F0DDC84;

  return (sub_25F0EFE30)(a1, v11, v10);
}

uint64_t sub_25F0DDC84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_25F0E4230;
  }

  else
  {
    v5 = sub_25F0DDD98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F0DDD98()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0E266C(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25F0DDEB0;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F0DDEB0()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25F0E428C;
  }

  else
  {
    v5 = *(v2 + 88);
    v8 = v2 + 64;
    v6 = *(v2 + 64);
    v7 = *(v8 + 8);

    v4 = sub_25F0DDFE0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DDFE0()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 16) = xmmword_25F17BBE0;
  sub_25F0E26B4();
  v4 = sub_25F17700C();
  *(v0 + 120) = v4;
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v0;
  v6[1] = sub_25F0DE0E4;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, v4, v9, v7, v8);
}

uint64_t sub_25F0DE0E4()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_25F0E4274;
  }

  else
  {
    v4 = sub_25F0E422C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DE214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47530, &unk_25F17F570);
  v3[5] = v6;
  v7 = *(v6 - 8);
  v3[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v11 = *(a3 + 32);
  v10 = *(a3 + 40);
  v3[7] = v9;
  v3[8] = v11;
  v3[9] = v10;

  v12 = swift_task_alloc();
  v3[10] = v12;
  *v12 = v3;
  v12[1] = sub_25F0DE35C;

  return (sub_25F0EFE30)(a1, v11, v10);
}

uint64_t sub_25F0DE35C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_25F0DE6B8;
  }

  else
  {
    v5 = sub_25F0DE470;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F0DE470()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0E266C(&qword_27FD47538, MEMORY[0x277D40DF8]);
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_25F0DE588;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F0DE588()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_25F0DE960;
  }

  else
  {
    v5 = *(v2 + 88);
    v8 = v2 + 64;
    v6 = *(v2 + 64);
    v7 = *(v8 + 8);

    v4 = sub_25F0DE72C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DE6B8()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[12];
  v4 = v0[7];

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F0DE72C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  *(v0 + 16) = xmmword_25F17BBF0;
  sub_25F0E26B4();
  v4 = sub_25F17700C();
  *(v0 + 120) = v4;
  v5 = *(MEMORY[0x277D857C8] + 4);
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v6 = v0;
  v6[1] = sub_25F0DE830;
  v8 = MEMORY[0x277D84950];
  v9 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v7, v4, v9, v7, v8);
}

uint64_t sub_25F0DE830()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v6 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v4 = sub_25F0DEA60;
  }

  else
  {
    v4 = sub_25F0DE9E0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0DE960()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];

  v4 = v0[14];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_25F0DE9E0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25F0DEA60()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = v0[17];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0DEADC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0DEBD4;

  return v7(a1);
}

uint64_t sub_25F0DEBD4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F0DECCC(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E194C(v5, a3);
}

uint64_t sub_25F0DED68(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E1FC4(v5, a3);
}

uint64_t sub_25F0DEE04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0E2950(v5, v6, v7, a3);
}

uint64_t sub_25F0DEEB4(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E3154(v5, a3);
}

uint64_t sub_25F0DEF50(int *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0C10CC;

  return sub_25F0E393C(v5, a3);
}

uint64_t sub_25F0DEFEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0BF3E4;

  return sub_25F0D5C44(v6, v7, a2, a3);
}

uint64_t sub_25F0DF09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DB3DC(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DB97C(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *a6;
  v13 = *(a6 + 8);
  v14 = *(a6 + 16);
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_25F0C10CC;

  return sub_25F0DBED4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_25F0DF320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DC4BC(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v12 = *a6;
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_25F0C10CC;

  return sub_25F0DCA14(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_25F0DF4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v12 = *a6;
  v13 = a6[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_25F0BF3E4;

  return sub_25F0DCFF0(a1, a2, a3, a4, a5, v12, v13);
}

uint64_t sub_25F0DF59C(uint64_t a1, unsigned int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;

  return sub_25F1119A4(a1, a2);
}

uint64_t type metadata accessor for ServerFarm.HostMessages()
{
  result = qword_27FD47368;
  if (!qword_27FD47368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0DF694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  v9 = *(v0 + v5 + 16);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_25F0DF78C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = v9[2];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0E7390(a1, v7, v8, v1 + v6, v10, v11, v12);
}

uint64_t sub_25F0DF8D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5);

  v8 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F0DF9C4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_25F0BF3E4;

  return sub_25F102E68(a1, v7, v8, v1 + v6, v10, v11);
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_25F0DFB28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_25F0DFB70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0DFBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25F0DFD10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_25F0DFE24()
{
  sub_25F0DFED8(319, &qword_27FD47378, &qword_27FD47380, &unk_25F1830C0);
  if (v0 <= 0x3F)
  {
    sub_25F0DFED8(319, &qword_27FD47388, &qword_27FD47390, &qword_25F17BD68);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25F0DFED8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_25F1793FC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25F0DFF2C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D6FB8(a1, v1);
}

uint64_t sub_25F0DFFC4(uint64_t a1, uint64_t a2)
{
  v6 = *(sub_25F176E8C() - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_25F0C10CC;

  return sub_25F0EABFC(a1, a2, v2 + v7, v9, v10);
}

uint64_t sub_25F0E0108()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0E0180(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF16C(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0258(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0C10CC;

  return sub_25F0DEADC(a1, v5);
}

uint64_t sub_25F0E0310(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D6314(a1, v1);
}

uint64_t sub_25F0E03B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF09C(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0488(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D7B84(a1, v1);
}

uint64_t sub_25F0E0544()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_25F0E0594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF23C(a1, v4, v5, v6, v7, (v1 + 6));
}

uint64_t sub_25F0E066C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D8C18(a1, v1);
}

uint64_t sub_25F0E0728(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF320(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E0800(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0D97E4(a1, v1);
}

uint64_t objectdestroy_22Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 52, 7);
}

uint64_t sub_25F0E0918(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF3F0(a1, v4, v5, v6, v7, (v1 + 48));
}

uint64_t sub_25F0E09F0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25F0C10CC;

  return sub_25F0DA3B0(a1, v1);
}

uint64_t objectdestroy_15Tm()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_25F0E0B50()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_25F0E0BA0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DF4C0(a1, v4, v5, v6, v7, v1 + 6);
}

uint64_t sub_25F0E0C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47360, &qword_25F17BC68);
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = v6[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60);
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F0E0E68(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474A8, &qword_25F17BF50) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0D19E0(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t sub_25F0E1000(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B0, &qword_25F17BF60) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_25F177E8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F0C10CC;

  return sub_25F0D3178(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_25F0E1180()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25F0E11B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  v10 = v3 | v7;
  v11 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);
  v12 = *(v0 + v5);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47358, &unk_25F182BB0);
  (*(*(v13 - 8) + 8))(v0 + v8, v13);
  v14 = v6[14];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0);
  (*(*(v15 - 8) + 8))(v0 + v8 + v14, v15);

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v10 | 7);
}

uint64_t sub_25F0E13A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474F8, &qword_25F17BFB0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + v7);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_25F0C10CC;

  return sub_25F0D25AC(a1, v10, v11, v1 + v6, v12, v1 + v9);
}

uint64_t objectdestroy_138Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = (*(v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = sub_25F177E8C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = (v7 + v10 + 8) & ~v10;
  v12 = *(v9 + 64);
  v13 = v5 | v10;
  v14 = *(v2 + 16);
  swift_unknownObjectRelease();
  v15 = *(v2 + 32);

  (*(v4 + 8))(v2 + v6, v3);
  v16 = *(v2 + v7);

  (*(v9 + 8))(v2 + v11, v8);

  return MEMORY[0x2821FE8E8](v2, v11 + v12, v13 | 7);
}

uint64_t sub_25F0E16A8(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47500, &qword_25F17BFC0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_25F177E8C() - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_25F0C10CC;

  return sub_25F0D38A4(a1, v10, v11, v12, v1 + v6, v13, v1 + v9);
}

uint64_t sub_25F0E184C(int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DED68(a1, a2, v2 + v7);
}

uint64_t sub_25F0E194C(int a1, uint64_t a2)
{
  *(v2 + 544) = a2;
  *(v2 + 608) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8);
  *(v2 + 552) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E19F0, 0, 0);
}

uint64_t sub_25F0E19F0()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_25F0B7E2C(*(v0 + 544), v1, &qword_27FD473D8, &qword_25F17BDD8);
  v3 = *v1;
  *(v0 + 568) = v3;
  *(v0 + 612) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 576) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F0, &qword_25F17BE00);
  *v5 = v0;
  v5[1] = sub_25F0E1AD8;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0E1AD8()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E1BF0, 0, 0);
}

uint64_t sub_25F0E1BF0()
{
  v1 = *(v0 + 612);
  v2 = *(v0 + 560);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473E0, &qword_25F17BDF8);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 584) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 592) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E1D88;
  v15 = *(v0 + 608);

  return sub_25F0DDB3C(v15, v9, v0 + 288);
}

uint64_t sub_25F0E1D88()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  v7 = *v1;
  *(v2 + 600) = v0;

  sub_25F0E263C(v2 + 24);
  if (v0)
  {
    v5 = sub_25F0E1F44;
  }

  else
  {
    v5 = sub_25F0E1EC4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F0E1EC4()
{
  v1 = *(v0 + 560);
  sub_25F0B7E94(v0 + 16, &qword_27FD473F0, &qword_25F17BE00);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0E1F44()
{
  v1 = v0[70];
  sub_25F0B7E94((v0 + 2), &qword_27FD473F0, &qword_25F17BE00);

  v2 = v0[1];
  v3 = v0[75];

  return v2();
}

uint64_t sub_25F0E1FC4(int a1, uint64_t a2)
{
  *(v2 + 544) = a2;
  *(v2 + 608) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47398, &qword_25F17BD70);
  *(v2 + 552) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 560) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E2068, 0, 0);
}

uint64_t sub_25F0E2068()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 552);
  sub_25F0B7E2C(*(v0 + 544), v1, &qword_27FD47398, &qword_25F17BD70);
  v3 = *v1;
  *(v0 + 568) = v3;
  *(v0 + 612) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 576) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473B0, &qword_25F17BD98);
  *v5 = v0;
  v5[1] = sub_25F0E2150;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0E2150()
{
  v1 = *(*v0 + 576);
  v2 = *(*v0 + 568);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E2268, 0, 0);
}

uint64_t sub_25F0E2268()
{
  v1 = *(v0 + 612);
  v2 = *(v0 + 560);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473A0, &qword_25F17BD90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 584) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 592) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E2400;
  v15 = *(v0 + 608);

  return sub_25F0DE214(v15, v9, v0 + 288);
}

uint64_t sub_25F0E2400()
{
  v2 = *v1;
  v3 = *(*v1 + 592);
  v4 = *(*v1 + 584);
  v7 = *v1;
  *(v2 + 600) = v0;

  sub_25F0E263C(v2 + 24);
  if (v0)
  {
    v5 = sub_25F0E25BC;
  }

  else
  {
    v5 = sub_25F0E253C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F0E253C()
{
  v1 = *(v0 + 560);
  sub_25F0B7E94(v0 + 16, &qword_27FD473B0, &qword_25F17BD98);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0E25BC()
{
  v1 = v0[70];
  sub_25F0B7E94((v0 + 2), &qword_27FD473B0, &qword_25F17BD98);

  v2 = v0[1];
  v3 = v0[75];

  return v2();
}

uint64_t sub_25F0E266C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_25F0E26B4()
{
  result = qword_27FD47540;
  if (!qword_27FD47540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47540);
  }

  return result;
}

uint64_t sub_25F0E272C(int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D8, &qword_25F17BDD8) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DECCC(a1, a2, v2 + v7);
}

uint64_t sub_25F0E2850(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEE04(a1, a2, v2 + v7);
}

uint64_t sub_25F0E2950(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 824) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473F8, &qword_25F17BE20);
  *(v4 + 832) = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  *(v4 + 840) = swift_task_alloc();
  *(v4 + 800) = a1;
  *(v4 + 808) = a2;
  *(v4 + 816) = a3;

  return MEMORY[0x2822009F8](sub_25F0E2A10, 0, 0);
}

uint64_t sub_25F0E2A10()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  sub_25F0B7E2C(*(v0 + 824), v1, &qword_27FD473F8, &qword_25F17BE20);
  v3 = *v1;
  *(v0 + 848) = v3;
  *(v0 + 888) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 856) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47410, &qword_25F17BE48);
  *v5 = v0;
  v5[1] = sub_25F0E2AF8;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0E2AF8()
{
  v1 = *(*v0 + 856);
  v2 = *(*v0 + 848);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E2C10, 0, 0);
}

uint64_t sub_25F0E2C10()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 840);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47400, &qword_25F17BE40);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 864) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 872) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E2DA8;

  return (sub_25F110508)(v0 + 800, v9, v0 + 288);
}

uint64_t sub_25F0E2DA8()
{
  v2 = *v1;
  v3 = *(*v1 + 872);
  v4 = *v1;
  *(v2 + 880) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 304);
  v7 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v7;
    *(v2 + 544) = v5;
    *(v2 + 560) = v6;
    v8 = *(v2 + 352);
    v9 = *(v2 + 368);
    v10 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v10;
    *(v2 + 608) = v8;
    *(v2 + 624) = v9;
    sub_25F0E263C(v2 + 544);
    v11 = sub_25F0E2FB0;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v7;
    *(v2 + 672) = v5;
    *(v2 + 688) = v6;
    v12 = *(v2 + 352);
    v13 = *(v2 + 368);
    v14 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v14;
    *(v2 + 736) = v12;
    *(v2 + 752) = v13;
    sub_25F0E263C(v2 + 672);
    v11 = sub_25F0E2F30;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25F0E2F30()
{
  v1 = *(v0 + 840);
  sub_25F0B7E94(v0 + 16, &qword_27FD47410, &qword_25F17BE48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0E2FB0()
{
  v1 = v0[105];
  sub_25F0B7E94((v0 + 2), &qword_27FD47410, &qword_25F17BE48);

  v2 = v0[1];
  v3 = v0[110];

  return v2();
}

uint64_t sub_25F0E3054(int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEEB4(a1, a2, v2 + v7);
}

uint64_t sub_25F0E3154(int a1, uint64_t a2)
{
  *(v2 + 800) = a2;
  *(v2 + 864) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47430, &qword_25F17BE70);
  *(v2 + 808) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E31F8, 0, 0);
}

uint64_t sub_25F0E31F8()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  sub_25F0B7E2C(*(v0 + 800), v1, &qword_27FD47430, &qword_25F17BE70);
  v3 = *v1;
  *(v0 + 824) = v3;
  *(v0 + 868) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 832) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47448, &unk_25F17F3E0);
  *v5 = v0;
  v5[1] = sub_25F0E32E0;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0E32E0()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E33F8, 0, 0);
}

uint64_t sub_25F0E33F8()
{
  v1 = *(v0 + 868);
  v2 = *(v0 + 816);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47438, &qword_25F17BE90);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  v9 = [*(v0 + 16) endpoint];
  *(v0 + 840) = v9;
  v10 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v10;
  v11 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v11;
  v12 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v12;
  v13 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v13;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v14 = swift_task_alloc();
  *(v0 + 848) = v14;
  *v14 = v0;
  v14[1] = sub_25F0E3590;
  v15 = *(v0 + 864);

  return (sub_25F110DB4)(v15, v9, v0 + 288);
}

uint64_t sub_25F0E3590()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(v2 + 856) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 304);
  v7 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v7;
    *(v2 + 544) = v5;
    *(v2 + 560) = v6;
    v8 = *(v2 + 352);
    v9 = *(v2 + 368);
    v10 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v10;
    *(v2 + 608) = v8;
    *(v2 + 624) = v9;
    sub_25F0E263C(v2 + 544);
    v11 = sub_25F0E3798;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v7;
    *(v2 + 672) = v5;
    *(v2 + 688) = v6;
    v12 = *(v2 + 352);
    v13 = *(v2 + 368);
    v14 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v14;
    *(v2 + 736) = v12;
    *(v2 + 752) = v13;
    sub_25F0E263C(v2 + 672);
    v11 = sub_25F0E3718;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25F0E3718()
{
  v1 = *(v0 + 816);
  sub_25F0B7E94(v0 + 16, &qword_27FD47448, &unk_25F17F3E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0E3798()
{
  v1 = v0[102];
  sub_25F0B7E94((v0 + 2), &qword_27FD47448, &unk_25F17F3E0);

  v2 = v0[1];
  v3 = v0[107];

  return v2();
}

uint64_t sub_25F0E383C(int *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEF50(a1, a2, v2 + v7);
}

uint64_t sub_25F0E393C(int a1, uint64_t a2)
{
  *(v2 + 800) = a2;
  *(v2 + 864) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47450, &qword_25F17BEB0);
  *(v2 + 808) = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 816) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E39E0, 0, 0);
}

uint64_t sub_25F0E39E0()
{
  v1 = *(v0 + 816);
  v2 = *(v0 + 808);
  sub_25F0B7E2C(*(v0 + 800), v1, &qword_27FD47450, &qword_25F17BEB0);
  v3 = *v1;
  *(v0 + 824) = v3;
  *(v0 + 868) = *(v2 + 48);
  v4 = *(MEMORY[0x277D857E0] + 4);
  v5 = swift_task_alloc();
  *(v0 + 832) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47468, &qword_25F17BED8);
  *v5 = v0;
  v5[1] = sub_25F0E3AC8;

  return MEMORY[0x282200460](v0 + 152, v3, v6);
}

uint64_t sub_25F0E3AC8()
{
  v1 = *(*v0 + 832);
  v2 = *(*v0 + 824);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E3BE0, 0, 0);
}

uint64_t sub_25F0E3BE0()
{
  v1 = *(v0 + 868);
  v2 = *(v0 + 816);
  v3 = *(v0 + 232);
  v4 = *(v0 + 248);
  *(v0 + 144) = *(v0 + 280);
  v5 = *(v0 + 168);
  v6 = *(v0 + 200);
  *(v0 + 48) = *(v0 + 184);
  *(v0 + 64) = v6;
  *(v0 + 80) = *(v0 + 216);
  *(v0 + 96) = v3;
  *(v0 + 16) = *(v0 + 152);
  *(v0 + 32) = v5;
  v7 = *(v0 + 264);
  *(v0 + 112) = v4;
  *(v0 + 128) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47458, &qword_25F17BED0);
  (*(*(v8 - 8) + 8))(v2 + v1, v8);
  *(v0 + 840) = [*(v0 + 16) endpoint];
  v9 = *(v0 + 104);
  *(v0 + 352) = *(v0 + 88);
  *(v0 + 368) = v9;
  v10 = *(v0 + 136);
  *(v0 + 384) = *(v0 + 120);
  *(v0 + 400) = v10;
  v11 = *(v0 + 40);
  *(v0 + 288) = *(v0 + 24);
  *(v0 + 304) = v11;
  v12 = *(v0 + 72);
  *(v0 + 320) = *(v0 + 56);
  *(v0 + 336) = v12;
  sub_25F0E0148(v0 + 24, v0 + 416);
  v13 = swift_task_alloc();
  *(v0 + 848) = v13;
  *v13 = v0;
  v13[1] = sub_25F0E3D70;
  v14 = *(v0 + 864);

  return (sub_25F0F05A4)(v14, v0 + 288);
}

uint64_t sub_25F0E3D70()
{
  v2 = *v1;
  v3 = *(*v1 + 848);
  v4 = *v1;
  *(v2 + 856) = v0;

  v5 = *(v2 + 288);
  v6 = *(v2 + 304);
  v7 = *(v2 + 336);
  if (v0)
  {
    *(v2 + 576) = *(v2 + 320);
    *(v2 + 592) = v7;
    *(v2 + 544) = v5;
    *(v2 + 560) = v6;
    v8 = *(v2 + 352);
    v9 = *(v2 + 368);
    v10 = *(v2 + 400);
    *(v2 + 640) = *(v2 + 384);
    *(v2 + 656) = v10;
    *(v2 + 608) = v8;
    *(v2 + 624) = v9;
    sub_25F0E263C(v2 + 544);
    v11 = sub_25F0E3F78;
  }

  else
  {
    *(v2 + 704) = *(v2 + 320);
    *(v2 + 720) = v7;
    *(v2 + 672) = v5;
    *(v2 + 688) = v6;
    v12 = *(v2 + 352);
    v13 = *(v2 + 368);
    v14 = *(v2 + 400);
    *(v2 + 768) = *(v2 + 384);
    *(v2 + 784) = v14;
    *(v2 + 736) = v12;
    *(v2 + 752) = v13;
    sub_25F0E263C(v2 + 672);
    v11 = sub_25F0E3EF8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_25F0E3EF8()
{
  v1 = *(v0 + 816);
  sub_25F0B7E94(v0 + 16, &qword_27FD47468, &qword_25F17BED8);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F0E3F78()
{
  v1 = v0[102];
  sub_25F0B7E94((v0 + 2), &qword_27FD47468, &qword_25F17BED8);

  v2 = v0[1];
  v3 = v0[107];

  return v2();
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = (__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8);
  v8 = *(*v7 + 80);
  v9 = (v8 + 16) & ~v8;
  v10 = *(*v7 + 64);
  v11 = *(v4 + v9);

  v12 = v7[14];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v13 - 8) + 8))(v4 + v9 + v12, v13);

  return MEMORY[0x2821FE8E8](v4, v9 + v10, v8 | 7);
}

uint64_t sub_25F0E4114(uint64_t *a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47470, &qword_25F17BEF8) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_25F0C10CC;

  return sub_25F0DEFEC(a1, a2, v2 + v7);
}

uint64_t Task<>.enhancingPreviewAgentConnectionError(for:_:)(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25F177D5C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  v15 = sub_25F17932C();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v8);
  v16 = (*(v9 + 80) + 52) & ~*(v9 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = a4;
  *(v17 + 40) = a3;
  *(v17 + 48) = a1;
  (*(v9 + 32))(v17 + v16, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);

  return sub_25F0E4488(0, 0, v14, &unk_25F17C0D0, v17);
}

uint64_t sub_25F0E4488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26[-1] - v11;
  v27[0] = a4;
  v27[1] = a5;
  sub_25F0E5080(a3, &v26[-1] - v11);
  v13 = sub_25F17932C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_25F0E50F0(v12);
  }

  else
  {
    sub_25F17931C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_25F1792CC();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_25F1790DC();
      v22 = *(v21 + 16);
      sub_25F0E5368(v21 + 32, v27, v26);

      v23 = v26[0];
      sub_25F0E50F0(a3);

      return v23;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_25F0E50F0(a3);
  if (v20 | v18)
  {
    v26[1] = 0;
    v26[2] = 0;
    v26[3] = v18;
    v26[4] = v20;
  }

  return swift_task_create();
}

uint64_t sub_25F0E46CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  *(v10 + 88) = a6;
  *(v10 + 68) = a5;
  v12 = type metadata accessor for AgentConnectionError();
  *(v10 + 96) = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  *(v10 + 104) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D58, &unk_25F17B1B0);
  *(v10 + 112) = v14;
  v15 = *(v14 - 8);
  *(v10 + 120) = v15;
  v16 = *(v15 + 64) + 15;
  *(v10 + 128) = swift_task_alloc();
  v17 = *(MEMORY[0x277D857C8] + 4);
  v18 = swift_task_alloc();
  *(v10 + 136) = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD46C38, qword_25F17C0E0);
  *v18 = v10;
  v18[1] = sub_25F0E4844;
  v20 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](a1, a4, a7, v19, v20);
}

uint64_t sub_25F0E4844()
{
  v2 = *(*v1 + 136);
  v3 = *v1;
  v3[18] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0E4D74, 0, 0);
  }

  else
  {
    v4 = v3[16];
    v5 = v3[13];

    v6 = v3[1];

    return v6();
  }
}

uint64_t sub_25F0E4990()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 152);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E4AA8, 0, 0);
}

uint64_t sub_25F0E4AA8()
{
  v1 = *(v0 + 144);
  v3 = *(v0 + 120);
  v2 = *(v0 + 128);
  v5 = *(v0 + 104);
  v4 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  sub_25F17810C();
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 56);
  v9 = *(v0 + 64);
  v10 = sub_25F177D5C();
  (*(*(v10 - 8) + 16))(v5, v6, v10);
  *(v0 + 72) = v8;
  *(v0 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D68, &qword_25F17B1C0);
  *(v5 + *(v7 + 20)) = sub_25F17991C() & 1;
  v11 = v1;
  sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError);
  sub_25F1781BC();

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  v14 = __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  v15 = *(v12 - 8);
  v16 = *(v15 + 64) + 15;
  v17 = swift_task_alloc();
  (*(v15 + 16))(v17, v14, v12);
  v18 = *(*(v13 + 8) + 8);
  if (sub_25F17981C())
  {
    (*(v15 + 8))(v17, v12);
  }

  else
  {
    swift_allocError();
    (*(v15 + 32))(v19, v17, v12);
  }

  v20 = *(v0 + 144);
  v21 = *(v0 + 104);
  swift_willThrow();
  sub_25F0C0FA8(v8, v9);

  sub_25F0E5470(v21);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v22 = *(v0 + 128);
  v23 = *(v0 + 104);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_25F0E4D74()
{
  v1 = *(v0 + 144);
  v2 = sub_25F176D2C();
  v3 = [v2 isBSServiceConnectionError];

  if (v3)
  {
    *(v0 + 152) = sub_25F0E69F4(*(v0 + 68), 0x3FF8000000000000, 0);
    v4 = *(MEMORY[0x277D40548] + 4);
    v5 = swift_task_alloc();
    *(v0 + 160) = v5;
    *v5 = v0;
    v5[1] = sub_25F0E4990;
    v6 = *(v0 + 128);

    return MEMORY[0x2821A0B98](v6);
  }

  else
  {
    v7 = *(v0 + 144);
    swift_willThrow();
    v8 = *(v0 + 144);
    v9 = *(v0 + 128);
    v10 = *(v0 + 104);

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_25F0E4EA4()
{
  v1 = sub_25F177D5C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 52) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25F0E4F70(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(sub_25F177D5C() - 8);
  v6 = (*(v5 + 80) + 52) & ~*(v5 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_25F0BF3E4;

  return sub_25F0E46CC(a1, v7, v8, v9, v10, v1 + v6, v4);
}

uint64_t sub_25F0E5080(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0E50F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46BB0, &qword_25F17AF30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25F0E5174(uint64_t a1)
{
  if (*(v1 + *(a1 + 20)))
  {
    return 0xD00000000000002CLL;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F0E51A4()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000034, 0x800000025F184C90);
  sub_25F177D5C();
  sub_25F0E57C4(&qword_27FD46BA8, MEMORY[0x277D40E58]);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  MEMORY[0x25F8D50D0](11815, 0xE200000000000000);
  return 0;
}

uint64_t sub_25F0E5290(uint64_t a1)
{
  v2 = sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0E52FC(uint64_t a1)
{
  v2 = sub_25F0E57C4(&qword_27FD46D70, type metadata accessor for AgentConnectionError);

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0E5368@<X0>(uint64_t result@<X0>, uint64_t *a2@<X5>, uint64_t *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];

    result = swift_task_create();
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for AgentConnectionError()
{
  result = qword_27FD47568;
  if (!qword_27FD47568)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0E5470(uint64_t a1)
{
  v2 = type metadata accessor for AgentConnectionError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E54E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F177D5C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_25F0E55C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25F177D5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_25F0E5678()
{
  result = sub_25F177D5C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0E57C4(unint64_t *a1, void (*a2)(uint64_t))
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

id static ProcessUtilities.processHandle(for:)(uint64_t a1)
{
  result = [objc_opt_self() identifierWithPid_];
  if (result)
  {
    v2 = result;
    sub_25F0E6C24();
    v3 = v2;
    v4 = sub_25F0E6930(v3);

    return v4;
  }

  return result;
}

void sub_25F0E58DC(uint64_t a1, void *a2)
{
  v4[4] = sub_25F0E6F24;
  v4[5] = a1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = sub_25F0E59A4;
  v4[3] = &block_descriptor_1;
  v3 = _Block_copy(v4);

  [a2 monitorForDeath_];
  _Block_release(v3);
}

void sub_25F0E59A4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, v7);
}

void static ProcessUtilities.kill(processHandle:)(uint64_t a1)
{
  v46[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F17888C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(MEMORY[0x277D47010]);
  v8 = sub_25F17905C();
  v9 = [v7 initWithExplanation_];

  [v9 setMaximumTerminationResistance_];
  v10 = [objc_opt_self() predicateMatchingHandle_];
  v11 = [objc_allocWithZone(MEMORY[0x277D47018]) initWithPredicate:v10 context:v9];
  v46[0] = 0;
  if ([v11 execute_])
  {
    v12 = v46[0];

    goto LABEL_12;
  }

  v44 = v6;
  v45 = v10;
  v42 = v3;
  v43 = v2;
  v13 = v46[0];
  v14 = sub_25F176D3C();

  swift_willThrow();
  v15 = sub_25F176D2C();
  v16 = [v15 domain];
  v17 = sub_25F17908C();
  v19 = v18;

  v20 = *MEMORY[0x277D47088];
  sub_25F17908C();
  v21 = sub_25F17910C();
  v23 = v22;

  if (v17 == v21 && v19 == v23)
  {
  }

  else
  {
    v24 = sub_25F17983C();

    if ((v24 & 1) == 0)
    {
LABEL_10:
      swift_willThrow();

      goto LABEL_12;
    }
  }

  if ([v15 code] != 3)
  {
    goto LABEL_10;
  }

  v25 = v44;
  sub_25F17886C();
  v26 = v15;
  v27 = sub_25F17887C();
  v28 = sub_25F17955C();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v29 = 136315138;
    v30 = v26;
    v31 = [v30 description];
    v32 = sub_25F17908C();
    v40 = v27;
    v33 = v32;
    v35 = v34;

    v36 = sub_25F0BECF0(v33, v35, v46);

    *(v29 + 4) = v36;
    v37 = v40;
    _os_log_impl(&dword_25F0B3000, v40, v28, "Ignoring failed RBS kill request %s", v29, 0xCu);
    v38 = v41;
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x25F8D6230](v38, -1, -1);
    MEMORY[0x25F8D6230](v29, -1, -1);

    (*(v42 + 8))(v44, v43);
  }

  else
  {

    (*(v42 + 8))(v25, v43);
  }

LABEL_12:
  v39 = *MEMORY[0x277D85DE8];
}

unint64_t ProcessError.lowValueTitle.getter()
{
  v1 = v0;
  v2 = sub_25F17767C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ProcessError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25F0E6CBC(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v6, v10, v2);
      v21 = 0;
      v22 = 0xE000000000000000;
      sub_25F1796DC();
      MEMORY[0x25F8D50D0](0xD00000000000001CLL, 0x800000025F184E20);
      sub_25F0E6F40(&qword_27FD47EC0, MEMORY[0x277D408A0]);
      v15 = sub_25F17980C();
      MEMORY[0x25F8D50D0](v15);

      MEMORY[0x25F8D50D0](0xD000000000000029, 0x800000025F184E40);
LABEL_12:
      v17 = v21;
      (*(v3 + 8))(v6, v2);
      return v17;
    }

    (*(v3 + 32))(v6, v10, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_25F1796DC();

    v21 = 0xD000000000000030;
    v22 = 0x800000025F184DE0;
LABEL_11:
    sub_25F0E6F40(&qword_27FD47EC0, MEMORY[0x277D408A0]);
    v18 = sub_25F17980C();
    MEMORY[0x25F8D50D0](v18);

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v3 + 32))(v6, v10, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_25F1796DC();
    MEMORY[0x25F8D50D0](0xD00000000000003DLL, 0x800000025F184DA0);
    goto LABEL_11;
  }

  v12 = *v10;
  v21 = 0;
  v22 = 0xE000000000000000;
  if (EnumCaseMultiPayload == 3)
  {
    sub_25F1796DC();

    v13 = 0x800000025F184D70;
    v14 = 0xD000000000000022;
  }

  else
  {
    sub_25F1796DC();

    v13 = 0x800000025F184D40;
    v14 = 0xD000000000000026;
  }

  v21 = v14;
  v22 = v13;
  v20[3] = v12;
  v16 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v16);

  return v21;
}

unint64_t ProcessError.additionalInfo.getter()
{
  v1 = type metadata accessor for ProcessError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_25F0E6D20(v4);
  result = 0;
  if (!EnumCaseMultiPayload)
  {
    if (os_variant_has_internal_diagnostics())
    {
      return 0xD000000000000086;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ProcessError.isPotentialCrash.getter()
{
  v1 = type metadata accessor for ProcessError();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v6 = 0;
LABEL_5:
    sub_25F0E6D20(v4);
    return v6;
  }

  v6 = 1;
  if (EnumCaseMultiPayload - 3 >= 2)
  {
    goto LABEL_5;
  }

  return v6;
}

uint64_t sub_25F0E6420(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F0E6CBC(v3, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload < 2)
  {
    v7 = 0;
LABEL_5:
    sub_25F0E6D20(v5);
    return v7;
  }

  v7 = 1;
  if (EnumCaseMultiPayload - 3 >= 2)
  {
    goto LABEL_5;
  }

  return v7;
}

uint64_t sub_25F0E64D0(uint64_t a1)
{
  v2 = sub_25F0E6F40(&qword_27FD475B8, type metadata accessor for ProcessError);

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0E653C(uint64_t a1)
{
  v2 = sub_25F0E6F40(&qword_27FD475B8, type metadata accessor for ProcessError);

  return MEMORY[0x2821A07F0](a1, v2);
}

id RBSProcessHandle.applicationProcess.getter()
{
  v1 = [objc_opt_self() sharedInstance];
  [v0 auditToken];
  v2 = [v1 uv:&v4 registerProcessForAuditToken:?];

  return v2;
}

uint64_t sub_25F0E6630()
{
  v0 = sub_25F177FAC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F177F9C();
  sub_25F0E6F40(&qword_27FD475C0, MEMORY[0x277D40460]);
  v5 = swift_allocError();
  (*(v1 + 32))(v6, v4, v0);
  return v5;
}

void sub_25F0E6754(void *a1)
{
  v2 = sub_25F1787BC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1787CC();
  sub_25F1780CC();
  (*(v3 + 8))(v6, v2);
  v7 = [objc_opt_self() sharedInstance];
  v8 = [a1 identifier];
  v9 = v8;
  v10 = v8;
  if (!v8)
  {
    sub_25F17908C();
    v10 = sub_25F17905C();

    sub_25F17908C();
    v9 = sub_25F17905C();
  }

  v11 = v8;
  v12 = [v7 sceneWithIdentifier_];

  if (v12)
  {

    [v7 destroyScene:v9 withTransitionContext:0];
    v13 = v9;
  }

  else
  {
    v13 = v7;
    v7 = v9;
  }
}

id sub_25F0E6930(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:v6];
  if (v1)
  {
    v2 = v6[0];
  }

  else
  {
    v3 = v6[0];
    sub_25F176D3C();

    swift_willThrow();
  }

  v4 = *MEMORY[0x277D85DE8];
  return v1;
}

uint64_t sub_25F0E69F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() identifierWithPid_];
  if (v4 && (v5 = v4, sub_25F0E6C24(), v6 = v5, v7 = sub_25F0E6930(v6), v6, v6, v7))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    MEMORY[0x28223BE20](v9);
    v10 = sub_25F1786BC();
    if (a3)
    {
    }

    else
    {
      sub_25F17869C();
      v11 = sub_25F1786CC();

      return v11;
    }

    return v10;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D60, &qword_25F180310);
    return sub_25F17872C();
  }
}

unint64_t sub_25F0E6C24()
{
  result = qword_27FD46D78;
  if (!qword_27FD46D78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD46D78);
  }

  return result;
}

uint64_t type metadata accessor for ProcessError()
{
  result = qword_27FD475A8;
  if (!qword_27FD475A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0E6CBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0E6D20(uint64_t a1)
{
  v2 = type metadata accessor for ProcessError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E6EB4()
{
  result = sub_25F17767C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F0E6F40(unint64_t *a1, void (*a2)(uint64_t))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F0E7028(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F0E7070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F0E70C0@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25F1776CC();
  *a1 = result;
  return result;
}

uint64_t sub_25F0E70EC(uint64_t a1, unsigned int *a2)
{
  *(v2 + 16) = a1;
  v3 = *a2;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_25F0E71A0;

  return (sub_25F10B684)(v3);
}

uint64_t sub_25F0E71A0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_25F0E72EC, 0, 0);
  }
}

uint64_t sub_25F0E72EC()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  v2[4] = sub_25F0E7C78(&qword_27FD475C8);
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0E7390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a4;
  v7[10] = a7;
  v8 = sub_25F17813C();
  v7[11] = v8;
  v9 = *(v8 - 8);
  v7[12] = v9;
  v10 = *(v9 + 64) + 15;
  v7[13] = swift_task_alloc();
  v11 = sub_25F17888C();
  v7[14] = v11;
  v12 = *(v11 - 8);
  v7[15] = v12;
  v13 = *(v12 + 64) + 15;
  v7[16] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD474B8, &qword_25F17BF70);
  v7[17] = v14;
  v15 = *(v14 - 8);
  v7[18] = v15;
  v16 = *(v15 + 64) + 15;
  v7[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E7514, 0, 0);
}

uint64_t sub_25F0E7514()
{
  v1 = v0[19];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  sub_25F17935C();
  v3 = *(MEMORY[0x277D85798] + 4);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_25F0E75E0;
  v5 = v0[19];
  v6 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v6);
}

uint64_t sub_25F0E75E0()
{
  v1 = *(*v0 + 160);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0E76DC, 0, 0);
}

uint64_t sub_25F0E76DC()
{
  v1 = v0[7];
  v0[21] = v1;
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
    v0[22] = v2;
    v0[5] = v2;
    v0[6] = sub_25F0E7C78(&qword_27FD475C8);
    v0[2] = v1;
    v3 = *(MEMORY[0x277D406C8] + 4);

    v4 = swift_task_alloc();
    v0[23] = v4;
    *v4 = v0;
    v4[1] = sub_25F0E7848;
    v5 = v0[10];

    return MEMORY[0x2821A0EA0](v0 + 2);
  }

  else
  {
    v6 = v0[16];
    v7 = v0[13];
    (*(v0[18] + 8))(v0[19], v0[17]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_25F0E7848()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_25F0E7A14;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v2 + 16));
    v4 = sub_25F0E7964;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0E7964()
{
  v1 = v0[21];

  v2 = *(MEMORY[0x277D85798] + 4);
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_25F0E75E0;
  v4 = v0[19];
  v5 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v5);
}

uint64_t sub_25F0E7A14()
{
  v1 = v0[24];
  v2 = v0[16];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  sub_25F17884C();
  v3 = v1;
  v4 = sub_25F17887C();
  v5 = sub_25F17953C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[24];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_25F0B3000, v4, v5, "Failed to attach host connection to message pipe: %@", v7, 0xCu);
    sub_25F0E7CC8(v8);
    MEMORY[0x25F8D6230](v8, -1, -1);
    MEMORY[0x25F8D6230](v7, -1, -1);
  }

  v24 = v0[24];
  v11 = v0[21];
  v12 = v0[22];
  v13 = v0[15];
  v14 = v0[16];
  v15 = v0[13];
  v16 = v0[14];
  v17 = v0[11];
  v18 = v0[12];

  (*(v13 + 8))(v14, v16);
  v0[8] = v11;
  sub_25F17812C();
  sub_25F0E7C78(&qword_27FD46D30);
  sub_25F1780BC();

  (*(v18 + 8))(v15, v17);

  v19 = *(MEMORY[0x277D85798] + 4);
  v20 = swift_task_alloc();
  v0[20] = v20;
  *v20 = v0;
  v20[1] = sub_25F0E75E0;
  v21 = v0[19];
  v22 = v0[17];

  return MEMORY[0x2822003E8](v0 + 7, 0, 0, v22);
}

uint64_t sub_25F0E7C78(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD46D28, &qword_25F17B180);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F0E7CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD473D0, &unk_25F17C540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F0E7D30()
{
  v0 = sub_25F176E8C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *MEMORY[0x277D40D20];
  v6 = sub_25F176E7C();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  (*(v1 + 104))(v4, *MEMORY[0x277D40CE8], v0);
  v7 = type metadata accessor for HostServer();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  v10 = swift_allocObject();
  (*(v1 + 16))(v10 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v4, v0);
  v16[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47338, &qword_25F17BC40);
  v11 = sub_25F17883C();
  (*(v1 + 8))(v4, v0);
  *(v10 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD475D0, &qword_25F17C550);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_25F0D409C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD475D8, &qword_25F17C558);

  sub_25F1771FC();
  return v10;
}

uint64_t sub_25F0E7F78(uint64_t a1, unsigned int *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25F0BF3E4;

  return sub_25F0E70EC(a1, a2);
}

uint64_t StoppedViewController.__allocating_init(style:snapshotImage:)(_BYTE *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  LOBYTE(a1) = *a1;
  v6 = a2;
  sub_25F178EFC();
  sub_25F0B5D40(a1, a2, v10, v11);
  v8 = v7;

  return v8;
}

uint64_t StoppedViewController.init(style:snapshotImage:)(char *a1, void *a2)
{
  v3 = *a1;
  v4 = a2;
  sub_25F178EFC();
  sub_25F0B5D40(v3, a2, v8, v9);
  v6 = v5;

  return v6;
}

id StoppedViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id StoppedView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F178F4C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = *v1;
  v6 = *(v1 + 1);
  v7 = v1[16];
  v8 = *(v1 + 3);
  v13 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  sub_25F178F0C();
  v9 = [objc_opt_self() rootSettings];
  sub_25F178F3C();
  v10 = sub_25F178B9C();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = v6;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  *a1 = v9;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v14;
  *(a1 + 32) = v10;
  *(a1 + 40) = sub_25F0E8380;
  *(a1 + 48) = v11;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;

  return v13;
}

uint64_t sub_25F0E8340()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25F0E8380()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46DF0, &qword_25F17B1E0);
  return sub_25F178F1C();
}

uint64_t type metadata accessor for StoppedViewController()
{
  result = qword_27FD475E0;
  if (!qword_27FD475E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25F0E848C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_25F0E84E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_25F0E8550()
{
  result = qword_27FD475F0;
  if (!qword_27FD475F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD475F8, &qword_25F17C640);
    sub_25F0E85DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD475F0);
  }

  return result;
}

unint64_t sub_25F0E85DC()
{
  result = qword_27FD47600;
  if (!qword_27FD47600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47600);
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

uint64_t sub_25F0E8644(uint64_t *a1, int a2)
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

uint64_t sub_25F0E868C(uint64_t result, int a2, int a3)
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

uint64_t sub_25F0E8700@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E20, &qword_25F17B3A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v40 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E28, &qword_25F17B3B0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v41 = &v40 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E30, &qword_25F17B3B8);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47608, &unk_25F17C6F0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v43 = *v1;
  v19 = v43;
  v20 = *(v1 + 8);
  v21 = *(v1 + 16);
  v22 = *(v1 + 24);
  v23 = *(v1 + 32);
  v44 = sub_25F178E7C();
  v42 = sub_25F178D6C();
  v46 = v19;
  v47 = v20;
  v48 = v21;
  v49 = v22;
  v50 = v23;
  v24 = v40;
  sub_25F0E8A84(v40);
  sub_25F178F5C();
  sub_25F178BBC();
  v25 = v24;
  v26 = v41;
  sub_25F0B7D50(v25, v41, &qword_27FD46E20, &qword_25F17B3A8);
  v27 = (v26 + *(v6 + 44));
  v28 = v56;
  v27[4] = v55;
  v27[5] = v28;
  v27[6] = v57;
  v29 = v52;
  *v27 = v51;
  v27[1] = v29;
  v30 = v54;
  v27[2] = v53;
  v27[3] = v30;
  LOBYTE(v23) = sub_25F178D5C();
  sub_25F0B7D50(v26, v13, &qword_27FD46E28, &qword_25F17B3B0);
  v13[*(v10 + 44)] = v23;
  v31 = sub_25F178F5C();
  v33 = v32;
  v34 = &v18[*(v15 + 44)];
  sub_25F0B7D50(v13, v34, &qword_27FD46E30, &qword_25F17B3B8);
  v35 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E50, &qword_25F17B3D8) + 36));
  *v35 = v31;
  v35[1] = v33;
  *v18 = v44;
  v18[8] = v42;
  [v43 crashAnimationDuration];
  v36 = sub_25F178F6C();
  v37 = v45;
  sub_25F0B7D50(v18, v45, &qword_27FD47608, &unk_25F17C6F0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47610, &unk_25F17C700);
  v39 = v37 + *(result + 36);
  *v39 = v36;
  *(v39 + 8) = v22;
  return result;
}

uint64_t sub_25F0E8A84@<X0>(uint64_t a1@<X8>)
{
  v91 = a1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E60, &qword_25F17B3E8);
  v2 = *(*(v90 - 8) + 64);
  MEMORY[0x28223BE20](v90);
  v4 = (&v73 - v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E68, &qword_25F17B3F0);
  v79 = *(v5 - 8);
  v80 = v5;
  v6 = *(v79 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v73 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E70, &qword_25F17B3F8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v78 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = (&v73 - v13);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E78, &qword_25F17B400);
  v15 = *(*(v83 - 8) + 64);
  MEMORY[0x28223BE20](v83);
  v82 = (&v73 - v16);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E80, &qword_25F17B408);
  v17 = *(*(v85 - 8) + 64);
  MEMORY[0x28223BE20](v85);
  v87 = (&v73 - v18);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E88, &qword_25F17B410);
  v19 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v21 = &v73 - v20;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E90, &qword_25F17B418);
  v22 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v84 = &v73 - v23;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46E98, &qword_25F17B420);
  v24 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v88 = &v73 - v25;
  v26 = sub_25F178EDC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v73 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(v1 + 16);
  if (!v31 || (v32 = *(v1 + 8), v32 == 3))
  {
    *v4 = sub_25F178E6C();
    swift_storeEnumTagMultiPayload();
    sub_25F0C38FC();
    return sub_25F178CFC();
  }

  v34 = *v1;
  v75 = *(v1 + 24);
  v35 = *(v1 + 32);
  v73 = v34;
  v74 = v35;
  v76 = v31;
  sub_25F178EBC();
  (*(v27 + 104))(v30, *MEMORY[0x277CE0FE0], v26);
  v77 = sub_25F178EEC();

  (*(v27 + 8))(v30, v26);
  if (v32)
  {
    if (v32 != 1)
    {
      v59 = 1.0;
      v60 = v76;
      if (v75)
      {
        [v73 crashFadeOutOpacity];
        v59 = v61;
      }

      v62 = v77;

      v63 = sub_25F178D5C();
      v64 = v87;
      *v87 = v62;
      v64[1] = 0;
      *(v64 + 8) = 1;
      *(v64 + 3) = v59;
      *(v64 + 32) = v63;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
      sub_25F0C3988();
      sub_25F0C3AC4();
      v55 = v88;
      sub_25F178CFC();
      goto LABEL_15;
    }

    v36 = sub_25F178F5C();
    v37 = v82;
    *v82 = v36;
    v37[1] = v38;
    v39 = sub_25F178E7C();
    v40 = sub_25F178F5C();
    v42 = v41;
    v43 = v14 + *(v9 + 36);
    if (v75)
    {
      v44 = *(sub_25F178BAC() + 20);
      v45 = v42;
      v46 = *MEMORY[0x277CE0118];
      v47 = sub_25F178CCC();
      (*(*(v47 - 8) + 104))(&v8[v44], v46, v47);
      __asm { FMOV            V0.2D, #15.0 }

      *v8 = _Q0;
      v53 = v80;
      *&v8[*(v80 + 52)] = v74;
      *&v8[*(v53 + 56)] = 256;
      sub_25F0B7D50(v8, v43, &qword_27FD46E68, &qword_25F17B3F0);
      (*(v79 + 56))(v43, 0, 1, v53);
      v42 = v45;
    }

    else
    {
      (*(v79 + 56))(v43, 1, 1, v80);
    }

    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EF8, &qword_25F17B448);
    v66 = v82;
    v67 = v82 + *(v65 + 44);
    v68 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F00, &qword_25F17B450) + 36));
    *v68 = v40;
    v68[1] = v42;
    *v14 = v39;
    v69 = v78;
    sub_25F0B7E2C(v14, v78, &qword_27FD46E70, &qword_25F17B3F8);
    *v67 = v77;
    *(v67 + 1) = 0;
    *(v67 + 8) = 1;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46F08, &qword_25F17B458);
    sub_25F0B7E2C(v69, &v67[*(v70 + 48)], &qword_27FD46E70, &qword_25F17B3F8);
    swift_retain_n();
    sub_25F0B7E94(v14, &qword_27FD46E70, &qword_25F17B3F8);
    sub_25F0B7E94(v69, &qword_27FD46E70, &qword_25F17B3F8);

    v71 = v66;
    sub_25F0B7E2C(v66, v21, &qword_27FD46E78, &qword_25F17B400);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400);
    v72 = v84;
    sub_25F178CFC();
    sub_25F0B7E2C(v72, v87, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v55 = v88;
    sub_25F178CFC();
    sub_25F0B7E94(v72, &qword_27FD46E90, &qword_25F17B418);
    v56 = v71;
    v57 = &qword_27FD46E78;
    v58 = &qword_25F17B400;
  }

  else
  {
    *v21 = v77;
    *(v21 + 1) = 0;
    *(v21 + 8) = 1;
    swift_storeEnumTagMultiPayload();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46EB8, &qword_25F17B428);
    sub_25F0C3A40();
    sub_25F0B7D00(&qword_27FD46EC0, &qword_27FD46E78, &qword_25F17B400);
    v54 = v84;
    sub_25F178CFC();
    sub_25F0B7E2C(v54, v87, &qword_27FD46E90, &qword_25F17B418);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46ED0, &qword_25F17B430);
    sub_25F0C3988();
    sub_25F0C3AC4();
    v55 = v88;
    sub_25F178CFC();
    v56 = v54;
    v57 = &qword_27FD46E90;
    v58 = &qword_25F17B418;
  }

  sub_25F0B7E94(v56, v57, v58);
  v60 = v76;
LABEL_15:
  sub_25F0B7E2C(v55, v4, &qword_27FD46E98, &qword_25F17B420);
  swift_storeEnumTagMultiPayload();
  sub_25F0C38FC();
  sub_25F178CFC();

  return sub_25F0B7E94(v55, &qword_27FD46E98, &qword_25F17B420);
}

unint64_t sub_25F0E94E0()
{
  result = qword_27FD47618;
  if (!qword_27FD47618)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47610, &unk_25F17C700);
    sub_25F0E9598();
    sub_25F0B7D00(&qword_27FD46FE8, &qword_27FD46FF0, &qword_25F17B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47618);
  }

  return result;
}

unint64_t sub_25F0E9598()
{
  result = qword_27FD47620;
  if (!qword_27FD47620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD47608, &unk_25F17C6F0);
    sub_25F0E9650();
    sub_25F0B7D00(&qword_27FD46FE0, &qword_27FD46E50, &qword_25F17B3D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47620);
  }

  return result;
}

unint64_t sub_25F0E9650()
{
  result = qword_27FD47628;
  if (!qword_27FD47628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FD47630, &unk_25F17C710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47628);
  }

  return result;
}

uint64_t sub_25F0E96D4@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v50 = sub_25F176E8C();
  v1 = *(v50 - 8);
  v53 = *(v1 + 64);
  v2 = MEMORY[0x28223BE20](v50);
  v52 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v54 = &v45 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47860, &qword_25F17C940);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  v49 = *(v10 - 8);
  v11 = *(v49 + 8);
  v12 = MEMORY[0x28223BE20](v10);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v45 - v14;
  v47 = v13;
  v16 = *(v13 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  (*(v6 + 104))(v9, *MEMORY[0x277D85778], v5);
  sub_25F17933C();
  v17 = v15;
  v18 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 8))(v9, v5);
  v19 = *(v1 + 16);
  v20 = v50;
  v21 = v51;
  v22 = v54;
  v19(v54, v51 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_service, v50);
  v46 = v17;
  sub_25F0EB460(v17, v18);
  v23 = (v49[80] + 16) & ~v49[80];
  v24 = swift_allocObject();
  v49 = v18;
  sub_25F0EB60C(v18, v24 + v23);
  v25 = type metadata accessor for AsyncListenerDelegate();
  v26 = objc_allocWithZone(v25);
  v27 = v52;
  v19(v52, v22, v20);
  v28 = v1;
  v29 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v30 = (v53 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  (*(v28 + 32))(v31 + v29, v27, v20);
  v32 = (v31 + v30);
  *v32 = &unk_25F17C968;
  v32[1] = v24;
  v33 = &v26[OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler];
  *v33 = &unk_25F17C970;
  *(v33 + 1) = v31;
  v61.receiver = v26;
  v61.super_class = v25;
  v34 = objc_msgSendSuper2(&v61, sel_init);
  (*(v28 + 8))(v54, v20);
  v56 = v21;
  v57 = v34;
  v35 = swift_allocObject();
  v35[2] = sub_25F0EB800;
  v35[3] = &v55;
  aBlock[4] = sub_25F0EB818;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F0D0B0C;
  aBlock[3] = &block_descriptor_2;
  v36 = _Block_copy(aBlock);
  v37 = objc_opt_self();

  v38 = [v37 listenerWithConfigurator_];
  _Block_release(v36);

  LOBYTE(v36) = swift_isEscapingClosureAtFileLocation();

  if (v36)
  {
    __break(1u);
  }

  else
  {
    [v38 activate];
    v59 = *(v21 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener);
    swift_getKeyPath();
    v58 = v38;

    v40 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD478E0, &qword_25F17C9A0);
    sub_25F0EB838();
    sub_25F17853C();

    v41 = v49;
    sub_25F0EB60C(v46, v49);
    v42 = *(v47 + 48);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
    (*(*(v43 - 8) + 32))(v48, v41, v43);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
    return (*(*(v44 - 8) + 8))(v41 + v42, v44);
  }

  return result;
}

uint64_t sub_25F0E9D38(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD478F0, &qword_25F17C9A8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0E9E04, 0, 0);
}

uint64_t sub_25F0E9E04()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948) + 48);
  v0[2] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
  sub_25F17934C();
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

id sub_25F0E9EF0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_25F176E2C();
  v5 = sub_25F17905C();

  [a1 setDomain_];

  sub_25F176E3C();
  v6 = sub_25F17905C();

  [a1 setService_];

  sub_25F176E4C();
  if (v7)
  {
    v8 = sub_25F17905C();

    [a1 setInstance_];
  }

  return [a1 setDelegate_];
}

uint64_t sub_25F0E9FF0()
{
  v1 = OBJC_IVAR____TtC15PreviewShellKit10HostServer_service;
  v2 = sub_25F176E8C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC15PreviewShellKit10HostServer_activeListener);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_25F0EA0C0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25F176E8C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t sub_25F0EA138@<X0>(unsigned int *a1@<X2>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = sub_25F176E8C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

uint64_t AggregatingHostServer.ConnectionMonitor.Status.hashValue.getter(char a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1 & 1);
  return sub_25F17990C();
}

uint64_t sub_25F0EA240()
{
  sub_25F1798CC();
  AggregatingHostServer.ConnectionMonitor.Status.hash(into:)(v2, *v0);
  return sub_25F17990C();
}

uint64_t AggregatingHostServer.ConnectionMonitor.status.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  sub_25F1783CC();
  sub_25F17839C();
  return v4;
}

uint64_t sub_25F0EA2D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v2 = *(a2 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  sub_25F1783CC();
  return sub_25F1783AC();
}

uint64_t AggregatingHostServer.ConnectionMonitor.$status.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  v3 = sub_25F1783CC();

  return MEMORY[0x2821A0970](v3);
}

uint64_t AggregatingHostServer.connectionMonitor.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  v6 = type metadata accessor for AggregatingHostServer.ConnectionMonitor();
  v7 = *(*(v6 - 8) + 16);

  return v7(a1, v1 + v3, v6);
}

char *AggregatingHostServer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 14);

  v3 = *(v0 + 15);

  v4 = *(*v0 + 120);
  v5 = *(v1 + 80);
  v6 = *(v1 + 88);
  v7 = type metadata accessor for AggregatingHostServer.ConnectionMonitor();
  (*(*(v7 - 8) + 8))(&v0[v4], v7);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t AggregatingHostServer.__deallocating_deinit()
{
  AggregatingHostServer.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25F0EA5B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F0EA638@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for AggregatingHostServer.ConnectionMonitor();
  result = AggregatingHostServer.ConnectionMonitor.status.getter(v7);
  *a3 = result;
  return result;
}

uint64_t sub_25F0EA674(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = type metadata accessor for AggregatingHostServer.ConnectionMonitor();
  return sub_25F0EA2D8(v6, v7);
}

__n128 sub_25F0EA6C0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t type metadata accessor for HostServer()
{
  result = qword_27FD47660;
  if (!qword_27FD47660)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F0EA720()
{
  result = sub_25F176E8C();
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

uint64_t sub_25F0EA7FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 88);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  result = sub_25F1783CC();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F0EA8F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  result = sub_25F1783CC();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F0EA984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(a3 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  v7 = sub_25F1783CC();
  v8 = *(*(v7 - 8) + 48);

  return v8(a1, a2, v7);
}

uint64_t sub_25F0EAA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(a4 + 24);
  type metadata accessor for AggregatingHostServer.ConnectionMonitor.Status();
  v8 = sub_25F1783CC();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a2, v8);
}

uint64_t getEnumTagSinglePayload for PreviewShellPluginRegistry.PluginLocation(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PreviewShellPluginRegistry.PluginLocation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F0EABFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_25F176E8C();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F0EACC4, 0, 0);
}

uint64_t sub_25F0EACC4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD46D28, &qword_25F17B180);
  (*(v2 + 16))(v1, v5, v3);
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = sub_25F176F2C();
  v0[10] = v9;
  v14 = (v4 + *v4);
  v10 = v4[1];
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_25F0EAE3C;
  v12 = v0[6];

  return v14(v9);
}

uint64_t sub_25F0EAE3C()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_25F0EAF38, 0, 0);
}

uint64_t sub_25F0EAF38()
{
  v2 = v0[9];
  v1 = v0[10];

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F0EAFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_25F0EAFC4, 0, 0);
}

uint64_t sub_25F0EAFC4()
{
  v1 = (v0[2] + OBJC_IVAR____TtC15PreviewShellKit21AsyncListenerDelegate_serviceConnectionHandler);
  v2 = v1[1];
  v8 = (*v1 + **v1);
  v3 = (*v1)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F0EB0C4;
  v6 = v0[3];
  v5 = v0[4];

  return v8(v6, v5);
}

uint64_t sub_25F0EB0C4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F0EB348()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F0EB398(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25F0C10CC;

  return sub_25F0EAFA0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_25F0EB460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0EB4D0()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47870, &unk_25F17C530);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[14];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47878, &qword_25F17C960);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25F0EB60C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F0EB67C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47868, &qword_25F17C948) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_25F0BF3E4;

  return sub_25F0E9D38(a1, v1 + v5);
}

uint64_t sub_25F0EB760()
{
  v1 = sub_25F176E8C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5 + 8);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F0EB838()
{
  result = qword_27FD478E8;
  if (!qword_27FD478E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD478E0, &qword_25F17C9A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD478E8);
  }

  return result;
}

uint64_t PreviewShellPluginRegistry.PluginLocation.hashValue.getter(char a1)
{
  sub_25F1798CC();
  MEMORY[0x25F8D5860](a1 & 1);
  return sub_25F17990C();
}

uint64_t sub_25F0EB93C()
{
  v1 = *v0;
  sub_25F1798CC();
  MEMORY[0x25F8D5860](v1);
  return sub_25F17990C();
}

uint64_t sub_25F0EB9B0()
{
  v1 = *v0;
  sub_25F1798CC();
  MEMORY[0x25F8D5860](v1);
  return sub_25F17990C();
}

uint64_t PreviewShellPluginRegistry.providers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t PreviewShellPluginRegistry.launchers.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t sub_25F0EBB7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

double static PreviewShellPluginRegistry.load<A>(using:location:)@<D0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v93) = a2;
  v82 = a5;
  v8 = sub_25F17888C();
  v80 = *(v8 - 8);
  v9 = *(v80 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v86 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v84 = v78 - v13;
  MEMORY[0x28223BE20](v12);
  v91 = v78 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47910, &qword_25F17C9D0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v87 = v78 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v78 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47918, &qword_25F17C9D8);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = v78 - v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47920, &qword_25F17C9E0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25F17C9B0;
  *&v100 = a3;
  swift_getMetatypeMetadata();
  v27 = sub_25F1790CC();
  *(v26 + 32) = a1;
  *(v26 + 40) = a4;
  *(v26 + 48) = v27;
  *(v26 + 56) = v28;
  *(v26 + 64) = a3;
  v29 = sub_25F0EE944(v93 & 1);
  *&v100 = v26;
  sub_25F0EC828(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47928, &qword_25F17C9E8);
  sub_25F0EEF8C();
  sub_25F0B7D00(&qword_27FD47938, &qword_27FD47928, &qword_25F17C9E8);
  sub_25F1782FC();
  v30 = MEMORY[0x277D84F90];
  v104 = sub_25F0ECA48(MEMORY[0x277D84F90]);
  v103 = sub_25F0ECE14(v30);
  v81 = v22;
  v31 = *(v22 + 16);
  v78[1] = v22 + 16;
  v78[0] = v31;
  v31(v20, v25, v21);
  v79 = v15;
  v32 = *(v15 + 36);
  v33 = sub_25F0B7D00(&qword_27FD47940, &qword_27FD47918, &qword_25F17C9D8);
  v83 = v25;
  sub_25F1794BC();
  sub_25F1794EC();
  v35 = *&v20[v32] == v100;
  v88 = v8;
  v92 = v21;
  v93 = v33;
  if (!v35)
  {
    v89 = (v80 + 8);
    *&v34 = 136446210;
    v85 = v34;
    v90 = v32;
    do
    {
      v45 = sub_25F17950C();
      v48 = *v46;
      v47 = v46[1];
      v50 = v46[2];
      v49 = v46[3];

      v45(&v100, 0);
      sub_25F1794FC();
      v51 = v91;
      sub_25F17884C();

      v52 = sub_25F17887C();
      v53 = sub_25F17955C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        *&v100 = v55;
        *v54 = v85;

        v56 = sub_25F0BECF0(v50, v49, &v100);

        *(v54 + 4) = v56;
        _os_log_impl(&dword_25F0B3000, v52, v53, "Registering plugin '%{public}s'", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v55);
        v57 = v55;
        v8 = v88;
        MEMORY[0x25F8D6230](v57, -1, -1);
        v58 = v54;
        v21 = v92;
        MEMORY[0x25F8D6230](v58, -1, -1);
      }

      (*v89)(v51, v8);
      (*(v47 + 8))(&v104, v48, v47);

      (*(v47 + 16))(&v103, v48, v47);
      sub_25F1794EC();
    }

    while (*&v20[v90] != v100);
  }

  sub_25F0B7E94(v20, &qword_27FD47910, &qword_25F17C9D0);
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  v36 = v87;
  (v78[0])(v87, v83, v21);
  v37 = *(v79 + 36);
  sub_25F1794BC();
  sub_25F1794EC();
  v39 = v84;
  if (*(v36 + v37) != *&v96[0])
  {
    v89 = (v80 + 8);
    *&v38 = 136446210;
    v85 = v38;
    v90 = v37;
    do
    {
      v60 = sub_25F17950C();
      v63 = *v61;
      v62 = v61[1];
      v64 = v61[3];
      v91 = v61[2];

      v60(v96, 0);
      sub_25F1794FC();
      (*(v62 + 24))(&v94, v63, v62);
      if (v95)
      {
        sub_25F0C0C84(&v94, v96);
        sub_25F0B7E2C(&v100, &v94, &qword_27FD47900, &qword_25F17C9C0);
        if (v95)
        {
          sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F17884C();

          v65 = sub_25F17887C();
          v66 = sub_25F17954C();

          if (os_log_type_enabled(v65, v66))
          {
            v67 = swift_slowAlloc();
            v68 = swift_slowAlloc();
            *&v94 = v68;
            *v67 = v85;
            *(v67 + 4) = sub_25F0BECF0(v91, v64, &v94);
            _os_log_impl(&dword_25F0B3000, v65, v66, "Ignoring scene configurator provided by plugin '%{public}s'\nas more than one configurator is registered.", v67, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v68);
            v69 = v68;
            v39 = v84;
            MEMORY[0x25F8D6230](v69, -1, -1);
            v70 = v67;
            v8 = v88;
            MEMORY[0x25F8D6230](v70, -1, -1);
          }

          (*v89)(v39, v8);
          __swift_destroy_boxed_opaque_existential_1Tm(v96);
          v36 = v87;
        }

        else
        {
          sub_25F0B7E94(&v100, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
          sub_25F0C0C84(v96, &v100);
        }
      }

      else
      {
        sub_25F0B7E94(&v94, &qword_27FD47900, &qword_25F17C9C0);
      }

      (*(v62 + 32))(&v94, v63, v62);
      if (v95)
      {
        sub_25F0C0C84(&v94, v96);
        sub_25F0B7E2C(&v97, &v94, &qword_27FD47908, &qword_25F17C9C8);
        v71 = v86;
        if (v95)
        {
          sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
          sub_25F17884C();

          v72 = sub_25F17887C();
          v73 = sub_25F17954C();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            *&v94 = v75;
            *v74 = v85;
            *(v74 + 4) = sub_25F0BECF0(v91, v64, &v94);
            _os_log_impl(&dword_25F0B3000, v72, v73, "Ignoring scene binder provided by plugin '%{public}s'\nas more than one binder is registered.", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v75);
            v76 = v75;
            v8 = v88;
            MEMORY[0x25F8D6230](v76, -1, -1);
            v77 = v74;
            v36 = v87;
            MEMORY[0x25F8D6230](v77, -1, -1);
          }

          (*v89)(v71, v8);

          __swift_destroy_boxed_opaque_existential_1Tm(v96);
        }

        else
        {
          sub_25F0B7E94(&v97, &qword_27FD47908, &qword_25F17C9C8);

          sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
          sub_25F0C0C84(v96, &v97);
        }
      }

      else
      {

        sub_25F0B7E94(&v94, &qword_27FD47908, &qword_25F17C9C8);
      }

      v59 = v90;
      v21 = v92;
      sub_25F1794EC();
    }

    while (*(v36 + v59) != *&v96[0]);
  }

  sub_25F0B7E94(v36, &qword_27FD47910, &qword_25F17C9D0);
  (*(v81 + 8))(v83, v21);
  v40 = v101;
  v41 = v82;
  *(v82 + 16) = v100;
  *(v41 + 32) = v40;
  result = *&v97;
  v43 = v98;
  *(v41 + 56) = v97;
  v44 = v103;
  *v41 = v104;
  *(v41 + 8) = v44;
  *(v41 + 48) = v102;
  *(v41 + 72) = v43;
  *(v41 + 88) = v99;
  return result;
}

uint64_t sub_25F0EC7F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_25F0EC828(uint64_t result)
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

  result = sub_25F115DA8(result, v11, 1, v3);
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

unint64_t sub_25F0EC920(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47A00, &qword_25F17CC70);
    v3 = sub_25F1797BC();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F0B7E2C(v4, &v11, &qword_27FD47A08, &qword_25F17CC78);
      v5 = v11;
      result = sub_25F0C87B4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_25F0EF164(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ECA48(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B8, &unk_25F17CC20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C0, &unk_25F183CA0);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD479B8, &unk_25F17CC20);
      result = sub_25F0C8848(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ContentKey();
      result = sub_25F0EF08C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ContentKey);
      *(v8[7] + 16 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ECC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F0, &unk_25F17CC60);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479F8, &unk_25F183C90);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD479F0, &unk_25F17CC60);
      result = sub_25F0C8B7C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25F177E8C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ECE14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A8, &unk_25F17CC10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479B0, &unk_25F183C70);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD479A8, &unk_25F17CC10);
      result = sub_25F0C8C50(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25F17722C();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_25F0C0C84(&v6[v9], v8[7] + 40 * v14);
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47998, &unk_25F17CC00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v22 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479A0, &unk_25F183C80);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD47998, &unk_25F17CC00);
      result = sub_25F0C8D24(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v8[6] + 16 * result);
      v16 = v6[1];
      *v15 = *v6;
      v15[1] = v16;
      v17 = v8[7];
      v18 = type metadata accessor for JITManager.Storage.Record();
      result = sub_25F0EF08C(v6 + v9, v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for JITManager.Storage.Record);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED1EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47988, &qword_25F17CBF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47990, &qword_25F17CBF8);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD47988, &qword_25F17CBF0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_25F0C8D24(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_25F178B1C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47978, &qword_25F17CBE0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47980, &qword_25F17CBE8);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD47978, &qword_25F17CBE0);
      v12 = *v6;
      result = sub_25F0C8DC0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_25F17892C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED5B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47970, &qword_25F17CBD8);
    v3 = sub_25F1797BC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_25F0C8D24(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED6C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47950, &qword_25F17CBB8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47958, &qword_25F17CBC0);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD47950, &qword_25F17CBB8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_25F0C8D24(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_25F1779DC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0ED8B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47960, &qword_25F17CBC8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD47968, &qword_25F17CBD0);
    v8 = sub_25F1797BC();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_25F0B7E2C(v10, v6, &qword_27FD47960, &qword_25F17CBC8);
      result = sub_25F0C8E04(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_25F17776C();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_25F0EDA9C(char a1)
{
  v142[1] = *MEMORY[0x277D85DE8];
  v136 = sub_25F17888C();
  i = *(v136 - 8);
  v2 = *(i + 64);
  v3 = MEMORY[0x28223BE20](v136);
  v122 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v115 = v111 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v125 = v111 - v8;
  MEMORY[0x28223BE20](v7);
  v124 = v111 - v9;
  v123 = sub_25F176DBC();
  v139 = *(v123 - 8);
  v10 = *(v139 + 64);
  v11 = MEMORY[0x28223BE20](v123);
  v116 = v111 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v121 = v111 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v133 = v111 - v16;
  MEMORY[0x28223BE20](v15);
  v137 = v111 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D8, &qword_25F17CC48);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v132 = v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v131 = v111 - v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479E0, &qword_25F17CC50);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479E8, &qword_25F17CC58);
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v112 = swift_allocObject();
  v27 = v112 + v26;
  v140 = 0;
  v141 = 0xE000000000000000;
  sub_25F1796DC();

  v140 = 0xD000000000000019;
  v141 = 0x800000025F185170;
  if (a1)
  {
    v28 = 0xEF63614D736E6967;
  }

  else
  {
    v28 = 0xEC000000736E6967;
  }

  v29 = *(v23 + 48);
  MEMORY[0x25F8D50D0](0x756C506C6C656853, v28);

  sub_25F176D4C();

  *(v27 + v29) = 0;
  v140 = 0;
  v141 = 0xE000000000000000;
  sub_25F1796DC();

  v30 = v123;
  v140 = 0xD000000000000027;
  v141 = 0x800000025F185190;
  v117 = v25;
  v118 = v27;
  v31 = *(v23 + 48);
  v32 = v124;
  MEMORY[0x25F8D50D0](0x756C506C6C656853, v28);
  v33 = v132;

  sub_25F176D4C();
  v34 = v133;

  v35 = 0;
  v126 = 0;
  *(v27 + v25 + v31) = 1;
  v36 = v137;
  v37 = v131;
  v38 = v125;
  v129 = (v24 + 48);
  v130 = (v24 + 56);
  v114 = MEMORY[0x277D84F90];
  v140 = MEMORY[0x277D84F90];
  v127 = (v139 + 16);
  v128 = (v139 + 32);
  v139 += 8;
  v134 = (i + 8);
  *&v39 = 136446466;
  v113 = v39;
  *&v39 = 136446210;
  v119 = v39;
  v135 = v23;
LABEL_5:
  v40 = v35;
  sub_25F0B7E2C(v118 + v35 * v117, v33, &qword_27FD479E8, &qword_25F17CC58);
  v41 = 0;
  for (i = v40 + 1; ; i = 2)
  {
    (*v130)(v33, v41, 1, v23);
    sub_25F0EF0F4(v33, v37);
    if ((*v129)(v37, 1, v23) == 1)
    {
      break;
    }

    v42 = v37;
    v43 = *(v37 + *(v23 + 48));
    (*v128)(v36, v42, v30);
    if ((v43 & 1) == 0)
    {
      sub_25F17884C();
      (*v127)(v34, v36, v30);
      v44 = v34;
      v45 = sub_25F17887C();
      v46 = v30;
      v47 = v32;
      v48 = sub_25F17955C();
      if (os_log_type_enabled(v45, v48))
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v142[0] = v50;
        *v49 = v119;
        v51 = sub_25F176D9C();
        v53 = v52;
        (*v139)(v44, v46);
        v54 = sub_25F0BECF0(v51, v53, v142);
        v38 = v125;

        *(v49 + 4) = v54;
        _os_log_impl(&dword_25F0B3000, v45, v48, "Looking for bundles in %{public}s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x25F8D6230](v50, -1, -1);
        MEMORY[0x25F8D6230](v49, -1, -1);
      }

      else
      {

        (*v139)(v44, v46);
      }

      (*v134)(v47, v136);
      v32 = v47;
      v30 = v46;
      v36 = v137;
      v23 = v135;
    }

    v55 = [objc_opt_self() defaultManager];
    sub_25F176D9C();
    v56 = sub_25F17905C();

    v142[0] = 0;
    v57 = [v55 contentsOfDirectoryAtPath:v56 error:v142];

    v58 = v142[0];
    if (v57)
    {
      v80 = sub_25F17922C();
      v81 = v58;

      v82 = *(v80 + 16);
      v83 = v139;
      if (v82)
      {
        v111[2] = v139 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v111[1] = v80;
        v84 = (v80 + 40);
        do
        {
          v85 = *(v84 - 1);
          v86 = *v84;

          v87 = v121;
          sub_25F176D6C();

          v88 = sub_25F176D9C();
          v90 = v89;
          v120 = *v139;
          v120(v87, v30);
          v91 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v92 = sub_25F17905C();
          v93 = [v91 initWithPath_];

          if (v93)
          {
            sub_25F17884C();

            v94 = sub_25F17887C();
            v95 = sub_25F17955C();

            if (os_log_type_enabled(v94, v95))
            {
              v96 = swift_slowAlloc();
              v97 = swift_slowAlloc();
              v142[0] = v97;
              *v96 = v119;
              v98 = sub_25F0BECF0(v88, v90, v142);

              *(v96 + 4) = v98;
              _os_log_impl(&dword_25F0B3000, v94, v95, "Found plugin bundle at path %{public}s", v96, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v97);
              MEMORY[0x25F8D6230](v97, -1, -1);
              v99 = v96;
              v38 = v125;
              MEMORY[0x25F8D6230](v99, -1, -1);
            }

            else
            {
            }

            (*v134)(v38, v136);
            v23 = v135;
            v107 = v93;
            MEMORY[0x25F8D5190]();
            v32 = v124;
            if (*((v140 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v140 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              v108 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
              sub_25F17924C();
            }

            sub_25F17928C();

            v114 = v140;
          }

          else
          {
            sub_25F17884C();

            v100 = sub_25F17887C();
            v101 = sub_25F17953C();

            if (os_log_type_enabled(v100, v101))
            {
              v102 = swift_slowAlloc();
              v103 = swift_slowAlloc();
              v142[0] = v103;
              *v102 = v119;
              v104 = sub_25F0BECF0(v88, v90, v142);

              *(v102 + 4) = v104;
              _os_log_impl(&dword_25F0B3000, v100, v101, "Could not instantiate bundle for path %{public}s", v102, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v103);
              v105 = v103;
              v38 = v125;
              MEMORY[0x25F8D6230](v105, -1, -1);
              v106 = v102;
              v32 = v124;
              MEMORY[0x25F8D6230](v106, -1, -1);
            }

            else
            {
            }

            (*v134)(v115, v136);
            v23 = v135;
          }

          v84 += 2;
          --v82;
        }

        while (v82);

        v36 = v137;
        v120(v137, v30);
      }

      else
      {

        (*v83)(v36, v30);
      }

      goto LABEL_15;
    }

    v59 = v142[0];
    v60 = sub_25F176D3C();

    swift_willThrow();
    if (v43)
    {
      (*v139)(v36, v30);

      v126 = 0;
LABEL_15:
      v33 = v132;
      v34 = v133;
      v37 = v131;
      goto LABEL_20;
    }

    v61 = v122;
    sub_25F17884C();
    v62 = v116;
    (*v127)(v116, v36, v30);
    v63 = v60;
    v64 = sub_25F17887C();
    v65 = sub_25F17953C();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v142[0] = v68;
      *v66 = v113;
      v69 = sub_25F176D9C();
      v70 = v62;
      v72 = v71;
      v73 = *v139;
      (*v139)(v70, v123);
      v74 = sub_25F0BECF0(v69, v72, v142);

      *(v66 + 4) = v74;
      *(v66 + 12) = 2114;
      v75 = v60;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v76;
      *v67 = v76;
      _os_log_impl(&dword_25F0B3000, v64, v65, "Error iterating contents of %{public}s: %{public}@", v66, 0x16u);
      sub_25F0B7E94(v67, &qword_27FD473D0, &unk_25F17C540);
      v77 = v67;
      v32 = v124;
      MEMORY[0x25F8D6230](v77, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v68);
      v78 = v68;
      v38 = v125;
      MEMORY[0x25F8D6230](v78, -1, -1);
      MEMORY[0x25F8D6230](v66, -1, -1);

      (*v134)(v122, v136);
      v73(v137, v123);
      v30 = v123;
      v36 = v137;
    }

    else
    {

      v79 = *v139;
      (*v139)(v62, v30);
      (*v134)(v61, v136);
      v79(v36, v30);
    }

    v126 = 0;
    v33 = v132;
    v34 = v133;
    v37 = v131;
    v23 = v135;
LABEL_20:
    v35 = i;
    if (i != 2)
    {
      goto LABEL_5;
    }

    v41 = 1;
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v109 = *MEMORY[0x277D85DE8];
  return v114;
}

char *sub_25F0EE944(char a1)
{
  v75[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25F17888C();
  v65 = *(v2 - 8);
  v3 = *(v65 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v64 - v7;
  v9 = sub_25F0EDA9C(a1 & 1);
  v11 = v9;
  if (v9 >> 62)
  {
    v12 = sub_25F17978C();
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_17:

    goto LABEL_18;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v12 < 1)
  {
    __break(1u);
  }

  v64 = v8;
  v13 = 0;
  v14 = v11 & 0xC000000000000001;
  v71 = 0;
  v72 = (v65 + 8);
  v15 = &off_279A7F000;
  *&v10 = 136446466;
  v66 = v10;
  v67 = v11;
  v68 = v2;
  v73 = v11 & 0xC000000000000001;
  v74 = v12;
  do
  {
    if (v14)
    {
      v17 = MEMORY[0x25F8D5690](v13, v11);
    }

    else
    {
      v17 = *(v11 + 8 * v13 + 32);
    }

    v18 = v17;
    v75[0] = 0;
    if ([v17 v15[291]])
    {
      v16 = v75[0];
    }

    else
    {
      v19 = v75[0];
      v20 = sub_25F176D3C();

      swift_willThrow();
      v71 = 0;
      sub_25F17884C();
      v21 = v18;
      v22 = v20;
      v23 = sub_25F17887C();
      v24 = sub_25F17953C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v75[0] = v69;
        *v25 = v66;
        v27 = v6;
        v28 = [v21 bundlePath];
        v29 = sub_25F17908C();
        v70 = v21;
        v31 = v30;

        v6 = v27;
        v32 = sub_25F0BECF0(v29, v31, v75);

        *(v25 + 4) = v32;
        *(v25 + 12) = 2114;
        v33 = v20;
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v25 + 14) = v34;
        *v26 = v34;
        _os_log_impl(&dword_25F0B3000, v23, v24, "Unable to load bundle at %{public}s: %{public}@", v25, 0x16u);
        sub_25F0B7E94(v26, &qword_27FD473D0, &unk_25F17C540);
        v35 = v26;
        v11 = v67;
        MEMORY[0x25F8D6230](v35, -1, -1);
        v36 = v69;
        __swift_destroy_boxed_opaque_existential_1Tm(v69);
        MEMORY[0x25F8D6230](v36, -1, -1);
        v37 = v25;
        v2 = v68;
        MEMORY[0x25F8D6230](v37, -1, -1);

        (*v72)(v27, v2);
      }

      else
      {

        (*v72)(v6, v2);
      }

      v14 = v73;
      v12 = v74;
      v15 = &off_279A7F000;
    }

    ++v13;
  }

  while (v12 != v13);

  v8 = v64;
LABEL_18:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479C8, &qword_25F17CC30);
  v38 = sub_25F17716C();
  if (v38)
  {
    v39 = v38;
  }

  else
  {
    v39 = MEMORY[0x277D84F90];
  }

  sub_25F17884C();

  v40 = sub_25F17887C();
  v41 = sub_25F17952C();
  v74 = v39;

  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v75[0] = v43;
    *v42 = 136315138;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D0, &unk_25F17CC38);
    v45 = MEMORY[0x25F8D51C0](v74, v44);
    v47 = v8;
    v48 = sub_25F0BECF0(v45, v46, v75);

    *(v42 + 4) = v48;
    _os_log_impl(&dword_25F0B3000, v40, v41, "Found types conforming to PreviewShellPlugin: %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v43);
    MEMORY[0x25F8D6230](v43, -1, -1);
    MEMORY[0x25F8D6230](v42, -1, -1);

    (*(v65 + 8))(v47, v2);
  }

  else
  {

    (*(v65 + 8))(v8, v2);
  }

  v49 = *(v74 + 16);
  if (v49)
  {
    v50 = (v74 + 32);
    v51 = MEMORY[0x277D84F90];
    do
    {
      v53 = *v50;
      v54 = swift_conformsToProtocol2();
      if (v54)
      {
        v55 = v53 == 0;
      }

      else
      {
        v55 = 1;
      }

      if (!v55)
      {
        v56 = v54;
        v75[0] = v53;
        swift_getMetatypeMetadata();
        v57 = sub_25F1790CC();
        v59 = v58;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_25F115DA8(0, *(v51 + 2) + 1, 1, v51);
        }

        v61 = *(v51 + 2);
        v60 = *(v51 + 3);
        if (v61 >= v60 >> 1)
        {
          v51 = sub_25F115DA8((v60 > 1), v61 + 1, 1, v51);
        }

        *(v51 + 2) = v61 + 1;
        v52 = &v51[40 * v61];
        *(v52 + 4) = v53;
        *(v52 + 5) = v56;
        *(v52 + 6) = v57;
        *(v52 + 7) = v59;
        *(v52 + 8) = v53;
      }

      ++v50;
      --v49;
    }

    while (v49);
  }

  else
  {
    v51 = MEMORY[0x277D84F90];
  }

  v62 = *MEMORY[0x277D85DE8];
  return v51;
}

unint64_t sub_25F0EEF8C()
{
  result = qword_27FD47930;
  if (!qword_27FD47930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47930);
  }

  return result;
}

unint64_t sub_25F0EEFE4()
{
  result = qword_27FD47948;
  if (!qword_27FD47948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47948);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15PreviewShellKit0aB17SceneConfigurator_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25F0EF08C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F0EF0F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD479D8, &qword_25F17CC48);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_OWORD *sub_25F0EF164(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SharedAgentServer<>.requestControlAgent(for:)(uint64_t a1, int a2)
{
  *(v3 + 16) = a1;
  v6 = *v2;
  v5 = v2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_25F0EF240;

  return sub_25F0EFE30(a2, v6, v5);
}

uint64_t sub_25F0EF240(uint64_t a1)
{
  v3 = *(*v2 + 24);
  v4 = *v2;
  *(v4 + 32) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F0EF374, 0, 0);
  }
}

uint64_t sub_25F0EF374()
{
  sub_25F176E1C();
  v1 = sub_25F176FEC();
  v2 = sub_25F0F00E0();
  sub_25F176EFC();
  v3 = *(MEMORY[0x277D40D70] + 4);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_25F0EF45C;
  v5 = v0[4];
  v6 = v0[2];

  return MEMORY[0x2821A1908](v6, v1, v1, v2);
}

uint64_t sub_25F0EF45C()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  v3[6] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F0EF598, 0, 0);
  }

  else
  {
    v4 = v3[4];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_25F0EF598()
{
  v1 = v0[4];

  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t static ControlAgentService.shellService.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CD0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t static ControlAgentService.bootstrap(client:context:endpoint:using:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F0BF3E4;

  return (sub_25F0F05A4)(a1, a3);
}

void sub_25F0EF724(void *a1, uint64_t a2)
{
  v4 = sub_25F176E8C();
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() targetWithPid_];
  [a1 setTarget_];

  v10 = *MEMORY[0x277D40CD0];
  v11 = v5[13];
  v11(v8, v10, v4);
  sub_25F176E2C();
  v12 = v5[1];
  v12(v8, v4);
  v13 = sub_25F17905C();

  [a1 setDomain_];

  v11(v8, v10, v4);
  sub_25F176E3C();
  v12(v8, v4);
  v14 = sub_25F17905C();

  [a1 setService_];
}

id static ControlAgentService.identity(of:)()
{
  v0 = sub_25F176F4C();
  v1 = [v0 pid];

  return v1;
}

uint64_t sub_25F0EF964()
{
  sub_25F1796DC();
  MEMORY[0x25F8D50D0](0xD000000000000033, 0x800000025F185200);
  v0 = sub_25F17980C();
  MEMORY[0x25F8D50D0](v0);

  return 0;
}

uint64_t sub_25F0EFA04(uint64_t a1)
{
  v2 = sub_25F0F0D00();

  return MEMORY[0x2821A0810](a1, v2);
}

uint64_t sub_25F0EFA40(uint64_t a1)
{
  v2 = sub_25F0F0D00();

  return MEMORY[0x2821A07F0](a1, v2);
}

uint64_t sub_25F0EFA7C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D40CD0];
  v3 = sub_25F176E8C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_25F0EFAF0(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_25F0C10CC;

  return (sub_25F0F05A4)(v6, a4);
}

void sub_25F0EFBAC(unsigned int *a1@<X8>)
{
  v2 = sub_25F176F4C();
  v3 = [v2 pid];

  *a1 = v3;
}

uint64_t sub_25F0EFC00(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_25F0EFC24, 0, 0);
}

uint64_t sub_25F0EFC24()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 64;
  v2 = *(MEMORY[0x277D40510] + 4);
  v6 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_25F0EFD14;
  v4 = *(v0 + 32);

  return v6(v0 + 16, v0 + 64, &unk_25F17CCF8, v1);
}

uint64_t sub_25F0EFD14()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25F0F0D54;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25F0F0D58;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0EFE30(int a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 64) = a1;
  return MEMORY[0x2822009F8](sub_25F0EFE54, 0, 0);
}

uint64_t sub_25F0EFE54()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 64;
  v2 = *(MEMORY[0x277D40510] + 4);
  v6 = (*MEMORY[0x277D40510] + MEMORY[0x277D40510]);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_25F0EFF44;
  v4 = *(v0 + 32);

  return v6(v0 + 16, v0 + 64, &unk_25F17CD18, v1);
}

uint64_t sub_25F0EFF44()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_25F0F007C;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_25F0F0060;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F0F007C()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

unint64_t sub_25F0F00E0()
{
  result = qword_27FD47538;
  if (!qword_27FD47538)
  {
    sub_25F176FEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD47538);
  }

  return result;
}

uint64_t sub_25F0F0138(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_25F0F01EC;

  return (sub_25F10AF1C)(v5);
}

uint64_t sub_25F0F01EC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_25F0F0D5C, 0, 0);
  }
}

uint64_t sub_25F0F0338(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  *(v4 + 16) = a1;
  v5 = *a4;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_25F0F03EC;

  return (sub_25F10BE34)(v5);
}