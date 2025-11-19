uint64_t sub_21D7DD3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_21D0D3954(a3, v24 - v11, &unk_27CE5F150);
  v13 = sub_21DBFA89C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21D0CF7E0(v12, &unk_27CE5F150);
  }

  else
  {
    sub_21DBFA88C();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21DBFA7CC();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21DBFA1EC() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(a6);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21D7DD624()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61B48);
  v1 = __swift_project_value_buffer(v0, qword_27CE61B48);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRHashtagAssociationInteractor.__allocating_init(store:backgroundTaskPerformer:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = a1;
  sub_21D0D0FD0(a2, v4 + 32);
  return v4;
}

uint64_t TTRHashtagAssociationInteractor.confirmationMessage(forRemovingHashtagLabels:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v3[5] = swift_task_alloc();
  sub_21DBFA84C();
  v3[6] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x2822009F8](sub_21D7DD8AC, v5, v4);
}

uint64_t sub_21D7DD8AC()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_21DBFA85C();
  v4 = sub_21DBFA89C();
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v1;
  v5[5] = v3;

  sub_21DBF8E0C();
  v6 = sub_21D7DCEA0(0, 0, v2, &unk_21DC297A8, v5);
  v0[9] = v6;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v7 = swift_task_alloc();
  v0[10] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  *v7 = v0;
  v7[1] = sub_21D7DDA48;
  v9 = v0[2];
  v10 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v9, v6, &type metadata for TTRHashtagAssociationDeleteTagConfirmationMessage, v8, v10);
}

uint64_t sub_21D7DDA48()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);
  if (v0)
  {
    v5 = sub_21D7DDBFC;
  }

  else
  {
    v5 = sub_21D7DDB84;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7DDB84()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DDBFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DDC74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_21DBF78CC();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = sub_21DBF74BC();
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7DDDFC, 0, 0);
}

uint64_t sub_21D7DDDFC()
{
  v30 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = MEMORY[0x277D84FA0];
  *v1 = v0[4];
  v1[1] = v4;
  (*(v2 + 104))(v1, *MEMORY[0x277D45538], v3);
  sub_21DBF8E0C();
  v5 = sub_21D7DE21C(v1);
  (*(v2 + 8))(v1, v3);
  if (v5 >> 62)
  {
    v28 = sub_21DBFBD7C();
  }

  else
  {
    v28 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = v0[4];

  v7 = *(v6 + 16);
  if (v7 && (v8 = v0[4], v9 = sub_21D9D6344(*(v6 + 16), 0), v26 = sub_21D9D4F98(&v29, v9 + 4, v7, v8), sub_21DBF8E0C(), result = sub_21D0CFAF8(), v26 != v7))
  {
    __break(1u);
  }

  else
  {
    v11 = v0[10];
    sub_21DBF784C();
    v12 = sub_21D7DE800(v11, 1);
    v13 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v14 = v12[2];
    v27 = v12;
    if (v14)
    {
      v15 = v0[6];
      v16 = v0[7];
      v17 = *(v0[5] + 36);
      v18 = v12 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
      v19 = *(v15 + 72);
      do
      {
        sub_21D0D3954(v18, v0[7], &qword_27CE59B40);
        v20 = v0[7];
        if (*(v16 + v17) == 1)
        {
          v21 = *v20;
          v22 = sub_21D0CF7E0(v20, &qword_27CE59B40);
          MEMORY[0x223D42D80](v22);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v13 = v29;
        }

        else
        {
          sub_21D0CF7E0(v0[7], &qword_27CE59B40);
        }

        v18 += v19;
        --v14;
      }

      while (v14);
    }

    v23 = v0[2];
    (*(v0[9] + 8))(v0[10], v0[8]);
    v24 = v27[2];

    *v23 = v28;
    v23[1] = v24;
    v23[2] = v13;

    v25 = v0[1];

    return v25();
  }

  return result;
}

uint64_t sub_21D7DE15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D0F00D0;

  return sub_21D7DDC74(a1, v4, v5, v7, v6);
}

uint64_t sub_21D7DE21C(uint64_t a1)
{
  v53 = a1;
  v1 = sub_21DBF773C();
  v44 = *(v1 - 8);
  v45 = v1;
  MEMORY[0x28223BE20](v1);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_21DBF700C();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21DBF6A9C();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_21DBF734C();
  v55 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v46 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF71BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21DBF70DC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B80);
  v38 = *(v17 - 8);
  v39 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  v21 = *MEMORY[0x277D45420];
  v47 = v14;
  v22 = *(v14 + 104);
  v50 = v13;
  v23 = v13;
  v24 = v46;
  v22(v16, v21, v23, v18);
  v25 = *MEMORY[0x277D45468];
  v51 = v10;
  v52 = v9;
  (*(v10 + 104))(v12, v25, v9);
  (*(v55 + 104))(v24, *MEMORY[0x277D45500], v56);
  v26 = v48;
  v27 = v49;
  (*(v48 + 104))(v7, *MEMORY[0x277D45310]);
  v37 = v20;
  v28 = v54;
  sub_21DBF702C();
  if (v28)
  {
    v30 = *(v26 + 8);
    v29 = v26 + 8;
    v30(v7, v27);
    (*(v55 + 8))(v24, v56);
    (*(v51 + 8))(v12, v52);
    (*(v47 + 8))(v16, v50);
  }

  else
  {
    (*(v26 + 8))(v7, v27);
    (*(v55 + 8))(v24, v56);
    (*(v51 + 8))(v12, v52);
    (*(v47 + 8))(v16, v50);
    v32 = v39;
    v31 = v40;
    v33 = v37;
    sub_21DBF76DC();
    v34 = v43;
    sub_21DBF6FBC();
    (*(v41 + 8))(v31, v42);
    v29 = sub_21D7E4A80();
    (*(v44 + 8))(v34, v45);
    (*(v38 + 8))(v33, v32);
  }

  return v29;
}

void *sub_21D7DE800(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v6 = *(v2 + 24);
  v16[0] = 0;
  v7 = [v6 fetchCustomSmartListsWithError_];
  v8 = v16[0];
  if (v7)
  {
    v9 = v7;
    sub_21D0D8CF0(0, &qword_280D0C320);
    v10 = sub_21DBFA5EC();
    v11 = v8;

    sub_21D7E6590();
    if (v3)
    {
    }

    else
    {
      MEMORY[0x28223BE20](v12);
      v14[2] = a1;
      v15 = a2 & 1;
      a2 = sub_21D4E7614(sub_21D7E6688, v14, v10);
    }
  }

  else
  {
    a2 = v16[0];
    sub_21DBF52DC();

    swift_willThrow();
  }

  return a2;
}

uint64_t TTRHashtagAssociationInteractor.confirmationMessage(forRenamingHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v4[6] = swift_task_alloc();
  sub_21DBFA84C();
  v4[7] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[8] = v6;
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_21D7DEA50, v6, v5);
}

uint64_t sub_21D7DEA50()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_21DBFA85C();
  v5 = sub_21DBFA89C();
  (*(*(v5 - 8) + 56))(v2, 0, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;
  v6[5] = v4;
  v6[6] = v3;

  sub_21DBF8E0C();
  v7 = sub_21D7DCEA0(0, 0, v2, &unk_21DC297C8, v6);
  v0[10] = v7;
  sub_21D0CF7E0(v2, &unk_27CE5F150);
  v8 = swift_task_alloc();
  v0[11] = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  *v8 = v0;
  v8[1] = sub_21D7DEBF8;
  v10 = v0[2];
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v10, v7, &type metadata for TTRHashtagAssociationRenameTagConfirmationMessage, v9, v11);
}

uint64_t sub_21D7DEBF8()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_21D7DEDAC;
  }

  else
  {
    v5 = sub_21D7DED34;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7DED34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DEDAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DEE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  v7 = sub_21DBF78CC();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_21DBF74BC();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7DEF44, 0, 0);
}

uint64_t sub_21D7DEF44()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v5 = v0[10];
  v4 = v0[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = v5;
  *(inited + 40) = v4;
  sub_21DBF8E0C();
  v7 = sub_21D1CDB50(inited);
  swift_setDeallocating();
  sub_21D6C9C70(inited + 32);
  v8 = MEMORY[0x277D84FA0];
  *v1 = v7;
  v1[1] = v8;
  (*(v2 + 104))(v1, *MEMORY[0x277D45540], v3);
  v9 = sub_21D7DE21C(v1);
  (*(v0[16] + 8))(v0[17], v0[15]);
  if (v9 >> 62)
  {
    v10 = sub_21DBFBD7C();
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = v0[14];
  v13 = v0[10];
  v12 = v0[11];

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21DC08D00;
  *(v14 + 32) = v13;
  *(v14 + 40) = v12;
  sub_21DBF8E0C();
  sub_21DBF784C();
  v15 = sub_21D7DE800(v11, 0);
  v17 = v0[8];
  v18 = v15;
  (*(v0[13] + 8))(v0[14], v0[12]);
  v19 = v18[2];

  *v17 = v10;
  v17[1] = v19;

  v20 = v0[1];

  return v20();
}

uint64_t sub_21D7DF194(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21D0F00D0;

  return sub_21D7DEE24(a1, v4, v5, v6, v7, v8);
}

uint64_t TTRHashtagAssociationInteractor.removeReminderAssociationWithHashtagLabels(_:preferences:)(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D7DF2FC, v5, v4);
}

uint64_t sub_21D7DF2FC()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21D7DF3FC;

  return sub_21D7DFC38(v5, sub_21D7DF588, v4);
}

uint64_t sub_21D7DF3FC()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7DF518;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D659954;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7DF518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7DF5A0(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v5 = v2;
  v62 = sub_21DBF78CC();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v59 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF74BC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *a2;
  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v13 = sub_21DBF84BC();
  v14 = __swift_project_value_buffer(v13, qword_27CE61B48);
  sub_21DBF8E0C();
  v57 = v14;
  v15 = sub_21DBF84AC();
  v16 = sub_21DBFAEDC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v55 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v56 = v5;
    v54 = v19;
    v61 = v19;
    *v18 = 136315394;
    v20 = sub_21DBFAABC();
    v22 = v10;
    v23 = v9;
    v24 = a1;
    v25 = sub_21D0CDFB4(v20, v21, &v61);

    *(v18 + 4) = v25;
    a1 = v24;
    v9 = v23;
    v10 = v22;
    *(v18 + 12) = 2048;
    *(v18 + 14) = 500;
    _os_log_impl(&dword_21D0C9000, v15, v16, "TTRHashtagAssociationInteractor: remove association with hashtag label {labels: %s, chunkSize: %ld}", v18, 0x16u);
    v26 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x223D46520](v26, -1, -1);
    v27 = v18;
    v4 = v55;
    MEMORY[0x223D46520](v27, -1, -1);
  }

  v28 = MEMORY[0x277D84FA0];
  *v12 = a1;
  v12[1] = v28;
  v29 = (*(v10 + 104))(v12, *MEMORY[0x277D45538], v9);
  MEMORY[0x28223BE20](v29);
  *(&v54 - 2) = a1;
  sub_21DBF8E0C();
  sub_21D7E1B54(v12, sub_21D7E67EC);
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v10 + 8))(v12, v9);
  v31 = sub_21DBFB6DC();
  v32 = v31;
  v33 = v31 >> 62;
  if (!(v31 >> 62))
  {
    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

LABEL_18:

    v39 = *(a1 + 16);
    if (!v39)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (!sub_21DBFBD7C())
  {
    goto LABEL_18;
  }

LABEL_9:
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v34 = sub_21DBF84AC();
  v35 = sub_21DBFAEDC();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = a1;
    v37 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v61 = v57;
    *v37 = 134218498;
    if (v33)
    {
      v38 = sub_21DBFBD7C();
    }

    else
    {
      v38 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v37 + 4) = v38;

    *(v37 + 12) = 2080;
    v40 = sub_21DBFAABC();
    v42 = sub_21D0CDFB4(v40, v41, &v61);

    *(v37 + 14) = v42;
    *(v37 + 22) = 2082;
    v43 = sub_21D0D8CF0(0, &qword_280D17880);
    v44 = MEMORY[0x223D42DB0](v32, v43);
    v46 = v45;

    v47 = sub_21D0CDFB4(v44, v46, &v61);

    *(v37 + 24) = v47;
    _os_log_impl(&dword_21D0C9000, v34, v35, "TTRHashtagAssociationInteractor: found and repaired %ld phantom hashtags {labels: %s, phantomHashtagIDs: %{public}s}", v37, 0x20u);
    v48 = v57;
    swift_arrayDestroy();
    MEMORY[0x223D46520](v48, -1, -1);
    v49 = v37;
    a1 = v36;
    MEMORY[0x223D46520](v49, -1, -1);

    v39 = *(v36 + 16);
    if (!v39)
    {
      goto LABEL_20;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    v39 = *(a1 + 16);
    if (!v39)
    {
      goto LABEL_20;
    }
  }

LABEL_19:
  v50 = sub_21D9D6344(v39, 0);
  v51 = sub_21D9D4F98(&v61, v50 + 4, v39, a1);
  sub_21DBF8E0C();
  result = sub_21D0CFAF8();
  if (v51 == v39)
  {
LABEL_20:
    v52 = v59;
    v53 = sub_21DBF784C();
    MEMORY[0x28223BE20](v53);
    *(&v54 - 2) = v58;
    *(&v54 - 1) = v52;
    sub_21D7E2D58(v52, 1, sub_21D7E67F4, (&v54 - 4));
    return (*(v60 + 8))(v52, v62);
  }

  __break(1u);
  return result;
}

uint64_t sub_21D7DFC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v4[21] = swift_task_alloc();
  sub_21DBFA84C();
  v4[22] = sub_21DBFA83C();
  v6 = sub_21DBFA7CC();
  v4[23] = v6;
  v4[24] = v5;

  return MEMORY[0x2822009F8](sub_21D7DFD0C, v6, v5);
}

uint64_t sub_21D7DFD0C()
{
  v1 = v0[20];
  swift_beginAccess();
  if (*(v1 + 16) == 1)
  {

    v2 = objc_opt_self();
    v3 = sub_21DBFA12C();
    [v2 internalErrorWithDebugDescription_];

    swift_willThrow();

    v4 = v0[1];

    return v4();
  }

  else
  {
    v7 = v0[20];
    v6 = v0[21];
    v20 = v0[18];
    v21 = v0[19];
    *(v1 + 16) = 1;
    v8 = swift_allocObject();
    v0[25] = v8;
    *(v8 + 16) = 0;
    v9 = v7[7];
    v10 = v7[8];
    __swift_project_boxed_opaque_existential_1(v7 + 4, v9);
    v11 = *(v10 + 8);

    v11(0xD00000000000001ALL, 0x800000021DC6B7E0, sub_21D7E6724, v8, v9, v10);

    sub_21DBFA85C();
    v12 = sub_21DBFA89C();
    (*(*(v12 - 8) + 56))(v6, 0, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v20;
    v13[5] = v21;

    v14 = MEMORY[0x277D84F78];
    v15 = sub_21D7DCEA0(0, 0, v6, &unk_21DC299F8, v13);
    v0[26] = v15;
    sub_21D0CF7E0(v6, &unk_27CE5F150);
    swift_beginAccess();
    *(v8 + 16) = v15;

    v16 = swift_task_alloc();
    v0[27] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    *v16 = v0;
    v16[1] = sub_21D7E0064;
    v18 = v0[17];
    v19 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v18, v15, v14 + 8, v17, v19);
  }
}

uint64_t sub_21D7E0064()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);
  if (v0)
  {
    v5 = sub_21D7E0284;
  }

  else
  {
    v5 = sub_21D7E01A0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7E01A0()
{
  v1 = v0[25];
  v2 = v0[20];

  *(v1 + 16) = 0;

  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  (*(v4 + 8))(v3, v4);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  *(v2 + 16) = 0;

  v5 = v0[1];

  return v5();
}

uint64_t sub_21D7E0284()
{
  v18 = v0;

  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v1 = v0[28];
  v2 = sub_21DBF84BC();
  __swift_project_value_buffer(v2, qword_27CE61B48);
  v3 = v1;
  v4 = sub_21DBF84AC();
  v5 = sub_21DBFAEDC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_21DBFC75C();
    v10 = sub_21D0CDFB4(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_21D0C9000, v4, v5, "TTRHashtagAssociationInteractor: performTask failed {error: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223D46520](v7, -1, -1);
    MEMORY[0x223D46520](v6, -1, -1);
  }

  v11 = v0[25];
  v12 = v0[20];
  swift_willThrow();
  *(v11 + 16) = 0;

  v13 = v0[5];
  v14 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v13);
  (*(v14 + 8))(v13, v14);

  __swift_destroy_boxed_opaque_existential_0((v0 + 2));

  *(v12 + 16) = 0;

  v15 = v0[1];

  return v15();
}

uint64_t TTRHashtagAssociationInteractor.replaceReminderAssociationWithHashtagLabel(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21DBFA84C();
  v5[7] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21D7E0548, v7, v6);
}

uint64_t sub_21D7E0548()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21D7E0650;

  return sub_21D7DFC38(v7, sub_21D7E0840, v6);
}

uint64_t sub_21D7E0650()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E07D0;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E076C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E076C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E07D0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_21D7E0858(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_21DBF78CC();
  v63 = *(v8 - 8);
  v64 = v8;
  MEMORY[0x28223BE20](v8);
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v59 - v11;
  v13 = sub_21DBF74BC();
  v68 = *(v13 - 8);
  v69 = v13;
  MEMORY[0x28223BE20](v13);
  v67 = (v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  MEMORY[0x28223BE20](v15 - 8);
  v66 = v59 - v16;
  if (qword_27CE56CD8 != -1)
  {
    swift_once();
  }

  v17 = sub_21DBF84BC();
  v18 = __swift_project_value_buffer(v17, qword_27CE61B48);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = sub_21DBF84AC();
  v20 = sub_21DBFAEDC();

  v21 = os_log_type_enabled(v19, v20);
  v62 = v12;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = a1;
    v24 = a3;
    v25 = swift_slowAlloc();
    v70[0] = v25;
    *v22 = 136315394;
    *(v22 + 4) = sub_21D0CDFB4(v23, a2, v70);
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_21D0CDFB4(v24, a4, v70);
    _os_log_impl(&dword_21D0C9000, v19, v20, "TTRHashtagAssociationInteractor: replace association with hashtag label {from: %s, to: %s}", v22, 0x16u);
    swift_arrayDestroy();
    v26 = v25;
    a3 = v24;
    a1 = v23;
    MEMORY[0x223D46520](v26, -1, -1);
    MEMORY[0x223D46520](v22, -1, -1);
  }

  if (a1 == a3 && a2 == a4 || (sub_21DBFC64C() & 1) != 0)
  {
    v27 = sub_21DBF84AC();
    v28 = sub_21DBFAEDC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_21D0C9000, v27, v28, "TTRHashtagAssociationInteractor: srcLabel == destLabel; nothing to do", v29, 2u);
      MEMORY[0x223D46520](v29, -1, -1);
    }
  }

  else
  {
    v59[1] = v18;
    v70[0] = a1;
    v70[1] = a2;
    v30 = v66;
    sub_21DBF57AC();
    v31 = sub_21DBF582C();
    (*(*(v31 - 8) + 56))(v30, 0, 1, v31);
    sub_21D176F0C();
    v32 = sub_21DBFBBEC();
    v34 = v33;
    sub_21D0CF7E0(v30, &unk_27CE65010);
    v59[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
    inited = swift_initStackObject();
    v61 = xmmword_21DC08D00;
    *(inited + 16) = xmmword_21DC08D00;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    sub_21DBF8E0C();
    v36 = sub_21D1CDB50(inited);
    v66 = a3;
    v37 = v36;
    swift_setDeallocating();
    sub_21D6C9C70(inited + 32);
    v38 = MEMORY[0x277D84FA0];
    v39 = v67;
    v40 = v68;
    *v67 = v37;
    *(v39 + 8) = v38;
    v60 = a1;
    v41 = v66;
    v42 = v69;
    v43 = (*(v40 + 104))(v39, *MEMORY[0x277D45540], v69);
    MEMORY[0x28223BE20](v43);
    v59[-4] = v41;
    v59[-3] = a4;
    v59[-2] = v32;
    v59[-1] = v34;
    v44 = v71;
    sub_21D7E1B54(v39, sub_21D7E657C);
    v71 = v44;
    if (v44)
    {
      (*(v40 + 8))(v39, v42);
    }

    else
    {
      (*(v40 + 8))(v39, v42);

      v45 = swift_allocObject();
      *(v45 + 16) = v61;
      v46 = v60;
      *(v45 + 32) = v60;
      *(v45 + 40) = a2;
      sub_21DBF8E0C();
      v47 = v62;
      sub_21DBF784C();
      v48 = swift_allocObject();
      *(v48 + 16) = v61;
      *(v48 + 32) = v41;
      *(v48 + 40) = a4;
      sub_21DBF8E0C();
      v49 = v65;
      v50 = sub_21DBF784C();
      MEMORY[0x28223BE20](v50);
      v59[-2] = v47;
      v59[-1] = v49;
      v51 = v71;
      sub_21D7E2D58(v47, 0, sub_21D7E6588, &v59[-4]);
      if (!v51)
      {
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v52 = sub_21DBF84AC();
        v53 = sub_21DBFAEDC();

        if (os_log_type_enabled(v52, v53))
        {
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v70[0] = v55;
          *v54 = 136315394;
          *(v54 + 4) = sub_21D0CDFB4(v46, a2, v70);
          *(v54 + 12) = 2080;
          *(v54 + 14) = sub_21D0CDFB4(v66, a4, v70);
          _os_log_impl(&dword_21D0C9000, v52, v53, "TTRHashtagAssociationInteractor: finished replacing association with hashtag label {from: %s, to: %s}", v54, 0x16u);
          swift_arrayDestroy();
          v56 = v55;
          v49 = v65;
          MEMORY[0x223D46520](v56, -1, -1);
          MEMORY[0x223D46520](v54, -1, -1);
        }
      }

      v57 = v64;
      v58 = *(v63 + 8);
      v58(v49, v64);
      v58(v47, v57);
    }
  }
}

uint64_t TTRHashtagAssociationInteractor.fetchAllHashtagLabels()(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5F150);
  v2[4] = swift_task_alloc();
  sub_21DBFA84C();
  v2[5] = sub_21DBFA83C();
  v4 = sub_21DBFA7CC();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_21D7E10DC, v4, v3);
}

uint64_t sub_21D7E10DC()
{
  v1 = v0[4];
  v2 = *(v0[3] + 24);
  sub_21DBFA85C();
  v3 = sub_21DBFA89C();
  (*(*(v3 - 8) + 56))(v1, 0, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;
  v5 = v2;
  v6 = sub_21D7DD108(0, 0, v1, &unk_21DC297F8, v4);
  v0[8] = v6;
  sub_21D0CF7E0(v1, &unk_27CE5F150);
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = sub_21DBF78CC();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
  *v7 = v0;
  v7[1] = sub_21D7E126C;
  v10 = v0[2];
  v11 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v10, v6, v8, v9, v11);
}

uint64_t sub_21D7E126C()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_21D7E1420;
  }

  else
  {
    v5 = sub_21D7E13A8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_21D7E13A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E1420()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E1498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = sub_21DBF78CC();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();
  v6 = sub_21DBF684C();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v7 = sub_21DBF6A2C();
  v4[11] = v7;
  v4[12] = *(v7 - 8);
  v4[13] = swift_task_alloc();
  v8 = sub_21DBF69DC();
  v4[14] = v8;
  v4[15] = *(v8 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21D7E1678, 0, 0);
}

char *sub_21D7E1678()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_21DBF6A3C();
  sub_21DBF683C();
  sub_21DBF681C();
  (*(v2 + 8))(v1, v3);
  v4 = v0[13];
  v5 = v0[11];
  v6 = v0[12];
  sub_21DBF6A1C();
  (*(v6 + 8))(v4, v5);
  v7 = sub_21DBF68EC();
  v8 = v7;
  if (v7 >> 62)
  {
    v9 = sub_21DBFBD7C();
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      goto LABEL_13;
    }
  }

  v30 = MEMORY[0x277D84F90];
  result = sub_21D18E678(0, v9 & ~(v9 >> 63), 0);
  if (v9 < 0)
  {
    __break(1u);
    return result;
  }

  v11 = 0;
  do
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x223D44740](v11, v8);
    }

    else
    {
      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = [v12 name];
    v15 = sub_21DBFA16C();
    v17 = v16;

    v19 = *(v30 + 16);
    v18 = *(v30 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_21D18E678((v18 > 1), v19 + 1, 1);
    }

    ++v11;
    *(v30 + 16) = v19 + 1;
    v20 = v30 + 16 * v19;
    *(v20 + 32) = v15;
    *(v20 + 40) = v17;
  }

  while (v9 != v11);
LABEL_13:

  v22 = v0[15];
  v21 = v0[16];
  v23 = v0[14];
  v24 = v0[6];
  v25 = v0[7];
  v27 = v0[4];
  v26 = v0[5];
  sub_21DBF784C();
  sub_21DBF689C();
  sub_21DBF784C();
  sub_21DBF782C();
  v28 = *(v26 + 8);
  v28(v24, v27);
  v28(v25, v27);
  (*(v22 + 8))(v21, v23);

  v29 = v0[1];

  return v29();
}

uint64_t sub_21D7E1998(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21D0F00D0;

  return sub_21D7E1498(a1, v4, v5, v6);
}

uint64_t sub_21D7E1A4C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  result = sub_21DBF8E0C();
  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_9:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = (*(a2 + 48) + ((v10 << 10) | (16 * v11)));
      v13 = *v12;
      v14 = v12[1];
      sub_21DBF8E0C();
      v15._countAndFlagsBits = v13;
      v15._object = v14;
      TTRReminderEditor.edit(tagged:withHashtagNamed:)(0, v15);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }
}

void sub_21D7E1B54(uint64_t a1, char *a2)
{
  v4 = v2;
  v82 = *MEMORY[0x277D85DE8];
  v6 = sub_21D7DE21C(a1);
  if (!v3)
  {
    v7 = v6;
    if (v6 >> 62)
    {
      goto LABEL_79;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v69 = a2;
    if (v8 < 1)
    {
      v11 = 0;
    }

    else
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          goto LABEL_76;
        }

        v12 = __OFADD__(v10, 500);
        v10 += 500;
        if (v12)
        {
          v10 = 0x7FFFFFFFFFFFFFFFLL;
        }

        ++v9;
      }

      while (v10 < v8);
    }

    *&v80[0] = MEMORY[0x277D84F90];
    sub_21D18F4AC(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
    }

    v13 = *&v80[0];
    v64 = v4;
    if (v11)
    {
      v14 = 0;
      do
      {
        if (v14 >= v8)
        {
          goto LABEL_77;
        }

        if (__OFADD__(v14, 500))
        {
          v4 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v4 = v14 + 500;
        }

        v15 = sub_21D7DC9C0(v14, 500, v7);
        *&v80[0] = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        a2 = (v17 + 1);
        if (v17 >= v16 >> 1)
        {
          v75 = v15;
          sub_21D18F4AC((v16 > 1), v17 + 1, 1);
          v15 = v75;
          v13 = *&v80[0];
        }

        *(v13 + 16) = a2;
        *(v13 + 8 * v17 + 32) = v15;
        v14 = v4;
        --v11;
      }

      while (v11);
    }

    else
    {
      v4 = 0;
    }

    if (v4 < v8)
    {
      do
      {
        v18 = __OFADD__(v4, 500);
        v19 = sub_21D7DC9C0(v4, 500, v7);
        *&v80[0] = v13;
        v21 = *(v13 + 16);
        v20 = *(v13 + 24);
        a2 = (v21 + 1);
        if (v21 >= v20 >> 1)
        {
          v76 = v19;
          sub_21D18F4AC((v20 > 1), v21 + 1, 1);
          v19 = v76;
          v13 = *&v80[0];
        }

        *(v13 + 16) = a2;
        *(v13 + 8 * v21 + 32) = v19;
        v22 = v4 + 500 >= v8 || v18;
        v4 += 500;
      }

      while ((v22 & 1) == 0);
    }

    v67 = *(v13 + 16);
    if (v67)
    {
      v7 = 0;
      v66 = v13 + 32;
      v23 = v64;
      v65 = v13;
      while (1)
      {
        if (v7 >= *(v13 + 16))
        {
          goto LABEL_78;
        }

        v24 = *(v66 + 8 * v7);
        sub_21DBF8E0C();
        sub_21D7E6590();
        v68 = v7;
        if (qword_27CE56CD8 != -1)
        {
          swift_once();
        }

        v25 = sub_21DBF84BC();
        __swift_project_value_buffer(v25, qword_27CE61B48);
        v26 = sub_21DBF84AC();
        v27 = sub_21DBFAEDC();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 134218240;
          *(v28 + 4) = v68;
          *(v28 + 12) = 2048;
          *(v28 + 14) = v67;
          _os_log_impl(&dword_21D0C9000, v26, v27, "TTRHashtagAssociationInteractor: processing reminders {chunk: %ld of %ld}", v28, 0x16u);
          MEMORY[0x223D46520](v28, -1, -1);
        }

        v29 = *(v23 + 24);
        v72 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
        [v72 setSaveIsNoopIfNoChangedKeys_];
        v7 = sub_21D0D8CF0(0, &qword_280D17880);
        v30 = sub_21DBFA5DC();
        *&v80[0] = 0;
        a2 = [v29 fetchRemindersWithObjectIDs:v30 error:v80];

        v31 = *&v80[0];
        if (!a2)
        {
          v51 = *&v80[0];

          v52 = sub_21DBF52DC();

          swift_willThrow();
          v53 = v52;
          v54 = sub_21DBF84AC();
          v4 = sub_21DBFAEBC();

          if (os_log_type_enabled(v54, v4))
          {
            a2 = swift_slowAlloc();
            v55 = swift_slowAlloc();
            *&v80[0] = v55;
            *a2 = 136315138;
            swift_getErrorValue();
            v56 = sub_21DBFC75C();
            v58 = sub_21D0CDFB4(v56, v57, v80);

            *(a2 + 4) = v58;
            _os_log_impl(&dword_21D0C9000, v54, v4, "TTRHashtagAssociationInteractor: failed to fetch reminders for chunk; skipping {error: %s}", a2, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v55);
            MEMORY[0x223D46520](v55, -1, -1);
            MEMORY[0x223D46520](a2, -1, -1);
          }

          else
          {
          }

          goto LABEL_37;
        }

        sub_21D0D8CF0(0, &qword_280D17860);
        sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
        v74 = sub_21DBF9E6C();
        v32 = v31;

        if (!(v24 >> 62))
        {
          v4 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v4)
          {
            break;
          }

          goto LABEL_67;
        }

        v4 = sub_21DBFBD7C();
        if (v4)
        {
          break;
        }

LABEL_67:

        v59 = sub_21DBF84AC();
        v60 = sub_21DBFAEDC();
        if (os_log_type_enabled(v59, v60))
        {
          v61 = swift_slowAlloc();
          *v61 = 134218240;
          *(v61 + 4) = v68;
          *(v61 + 12) = 2048;
          *(v61 + 14) = v67;
          _os_log_impl(&dword_21D0C9000, v59, v60, "TTRHashtagAssociationInteractor: saving reminders {chunk: %ld of %ld}", v61, 0x16u);
          MEMORY[0x223D46520](v61, -1, -1);
        }

        *&v80[0] = 0;
        v23 = v64;
        if (![v72 saveSynchronouslyWithError_])
        {
          v63 = *&v80[0];

          sub_21DBF52DC();

          swift_willThrow();
          return;
        }

        v62 = *&v80[0];

LABEL_37:
        v13 = v65;
        v7 = v68 + 1;
        if (v68 + 1 == v67)
        {
          goto LABEL_71;
        }
      }

      v33 = 0;
      v77 = v24 & 0xC000000000000001;
      v70 = v24;
      v71 = v24 & 0xFFFFFFFFFFFFFF8;
      v73 = v4;
      while (1)
      {
        if (v77)
        {
          v37 = MEMORY[0x223D44740](v33, v24);
        }

        else
        {
          if (v33 >= *(v71 + 16))
          {
            goto LABEL_75;
          }

          v37 = *(v24 + 8 * v33 + 32);
        }

        v38 = v37;
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          __break(1u);
LABEL_78:
          __break(1u);
LABEL_79:
          v8 = sub_21DBFBD7C();
          goto LABEL_4;
        }

        sub_21DBFA99C();
        if ((v74 & 0xC000000000000001) != 0)
        {
          v40 = v38;
          v41 = sub_21DBFC2CC();

          if (!v41)
          {
            goto LABEL_62;
          }

          v79[0] = v41;
          swift_dynamicCast();
          v42 = *&v80[0];
          if (!*&v80[0])
          {
            goto LABEL_62;
          }
        }

        else if (!*(v74 + 16) || (v43 = sub_21D17E07C(v38), (v44 & 1) == 0) || (v42 = *(*(v74 + 56) + 8 * v43)) == 0)
        {
LABEL_62:
          a2 = v38;
          v7 = sub_21DBF84AC();
          v50 = sub_21DBFAEBC();
          if (os_log_type_enabled(v7, v50))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            *v34 = 138412290;
            *(v34 + 4) = a2;
            *v35 = a2;
            _os_log_impl(&dword_21D0C9000, v7, v50, "TTRHashtagAssociationInteractor: REMReminder not fetched; skipping {objectID: %@}", v34, 0xCu);
            sub_21D0CF7E0(v35, &unk_27CE60070);
            MEMORY[0x223D46520](v35, -1, -1);
            v36 = v34;
            v4 = v73;
            MEMORY[0x223D46520](v36, -1, -1);
          }

          else
          {
          }

          goto LABEL_48;
        }

        v81 = 0;
        memset(v80, 0, sizeof(v80));
        sub_21D0D3954(v80, v79, &unk_27CE60D80);
        a2 = v42;
        v45 = v72;
        v46 = [v45 updateReminder_];
        sub_21D0D3954(v79, v78, &unk_27CE60D80);
        type metadata accessor for TTRReminderEditor();
        v7 = swift_allocObject();
        *(v7 + 72) = 0;
        *(v7 + 16) = v46;
        sub_21D0D3954(v78, v7 + 24, &unk_27CE60D80);
        *(v7 + 64) = 0;
        v47 = v46;
        v48 = [v47 fetchedCurrentDueDateDeltaAlert];

        v4 = v73;
        sub_21D0CF7E0(v78, &unk_27CE60D80);
        sub_21D0CF7E0(v79, &unk_27CE60D80);
        v24 = v70;
        sub_21D0CF7E0(v80, &unk_27CE60D80);
        v49 = *(v7 + 72);
        *(v7 + 72) = v48;

        (v69)(v7);

LABEL_48:

        ++v33;
        if (v39 == v4)
        {
          goto LABEL_67;
        }
      }
    }

LABEL_71:
  }
}

uint64_t sub_21D7E2644(void *a1, uint64_t a2, uint64_t a3)
{
  v63 = a3;
  v65 = sub_21DBF78CC();
  v61 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v60 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v53 - v10;
  v12 = sub_21DBF7FEC();
  v62 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v64 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v14);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v53 - v18;
  *&v21 = MEMORY[0x28223BE20](v20).n128_u64[0];
  v23 = (&v53 - v22);
  v66 = *a1;
  v24 = [*(v66 + 16) objectID];
  if (*(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B68) + 36)) != 1)
  {
    v58 = a1[1];
    v59 = v24;
    sub_21DBF7FCC();
    v29 = sub_21DBF7E5C();
    v30 = *(v29 - 8);
    v31 = 1;
    if ((*(v30 + 48))(v19, 1, v29) != 1)
    {
      v32 = (*(v30 + 88))(v19, v29);
      if (v32 == *MEMORY[0x277D458A0])
      {
        v56 = v32;
        (*(v30 + 96))(v19, v29);
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78);
        v33 = *(v62 + 32);
        v34 = &v19[*(v53 + 64)];
        v57 = v12;
        v54 = v33;
        v55 = v62 + 32;
        v33(v64, v34, v12);
        sub_21DBF784C();
        sub_21DBF77CC();
        v61 = *(v61 + 8);
        v35 = v65;
        (v61)(v8, v65);
        sub_21DBF784C();
        v36 = v60;
        sub_21DBF77CC();
        v37 = v35;
        v38 = v61;
        (v61)(v8, v37);
        if (sub_21DBF786C() & 1) != 0 && (sub_21DBF786C())
        {
          v39 = v65;
          v38(v36, v65);
          v38(v11, v39);
          (*(v62 + 8))(v64, v57);
          v31 = 1;
          goto LABEL_23;
        }

        v47 = *(v53 + 64);
        *v23 = sub_21DBF785C();
        v48 = sub_21DBF785C();
        v49 = v36;
        v50 = v65;
        v38(v49, v65);
        v38(v11, v50);
        v23[1] = v48;
        v54(v23 + v47, v64, v57);
        (*(v30 + 104))(v23, v56, v29);
      }

      else
      {
        if (v32 != *MEMORY[0x277D458A8] && v32 != *MEMORY[0x277D45898])
        {
          result = sub_21DBFC63C();
          __break(1u);
          return result;
        }

        (*(v30 + 104))(v23, v32, v29);
      }

      v31 = 0;
    }

LABEL_23:
    (*(v30 + 56))(v23, v31, 1, v29);
    sub_21DBF801C();
    sub_21D0D3954(v23, v16, &qword_27CE61B70);
    v51 = v58;
    v52 = sub_21DBF7F8C();
    TTRSmartListEditor.edit(filter:)(v52);

    sub_21D0CF7E0(v23, &qword_27CE61B70);
    return 0;
  }

  if (*(a2 + 16) && (v25 = sub_21D17E07C(v24), (v26 & 1) != 0))
  {
    v27 = *(*(a2 + 56) + v25);

    if (v27)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    if (qword_27CE56CD8 != -1)
    {
      swift_once();
    }

    v40 = sub_21DBF84BC();
    __swift_project_value_buffer(v40, qword_27CE61B48);
    v41 = v24;
    v42 = sub_21DBF84AC();
    v43 = sub_21DBFAEBC();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v41;
      v46 = v41;
      _os_log_impl(&dword_21D0C9000, v42, v43, "TTRHashtagAssociationInteractor: no preferences specified for handling deletable custom smart list {smartListID: %@}", v44, 0xCu);
      sub_21D0CF7E0(v45, &unk_27CE60070);
      MEMORY[0x223D46520](v45, -1, -1);
      MEMORY[0x223D46520](v44, -1, -1);
    }

    else
    {
    }

    return 2;
  }
}

void sub_21D7E2D58(uint64_t a1, void *a2, unsigned __int8 (*a3)(uint64_t *), uint64_t a4)
{
  v6 = v5;
  v7 = v4;
  v71 = a3;
  v72 = a4;
  v80 = *MEMORY[0x277D85DE8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B68);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v59 - v15;
  v17 = sub_21D7DE800(a1, a2);
  if (!v5)
  {
    v60 = v7;
    v73 = v12;
    v74 = v13;
    v69 = *(v17 + 2);
    v70 = v14;
    if (v69)
    {
      v18 = v17;
      if (qword_27CE56CD8 != -1)
      {
LABEL_37:
        swift_once();
      }

      v19 = sub_21DBF84BC();
      v20 = __swift_project_value_buffer(v19, qword_27CE61B48);
      sub_21DBF8E0C();
      v64 = v20;
      v21 = sub_21DBF84AC();
      v22 = sub_21DBFAEDC();
      v23 = os_log_type_enabled(v21, v22);
      v68 = v10;
      if (v23)
      {
        v24 = swift_slowAlloc();
        *v24 = 134217984;
        *(v24 + 4) = *(v18 + 2);

        _os_log_impl(&dword_21D0C9000, v21, v22, "TTRHashtagAssociationInteractor: processing smart lists w/ hashtag filter {count: %ld}", v24, 0xCu);
        MEMORY[0x223D46520](v24, -1, -1);
      }

      else
      {
      }

      v25 = v70;
      v26 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
      [v26 setSaveIsNoopIfNoChangedKeys_];
      v63 = 0;
      v61 = 0;
      v62 = 0;
      v10 = 0;
      v27 = *(v25 + 80);
      v75 = MEMORY[0x277D84F98];
      v67 = v18 + ((v27 + 32) & ~v27);
      *&v28 = 138412290;
      v59 = v28;
      v29 = v18;
      v66 = v18;
      v65 = v26;
      do
      {
        if (v10 >= *(v29 + 2))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          goto LABEL_37;
        }

        sub_21D0D3954(&v67[*(v25 + 72) * v10], v16, &qword_27CE59B40);
        sub_21DBFA99C();
        v18 = v6;
        if (v6)
        {
          v30 = sub_21DBF84AC();
          v31 = sub_21DBFAEDC();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_21D0C9000, v30, v31, "TTRHashtagAssociationInteractor: receive task cancellation signal", v32, 2u);
            MEMORY[0x223D46520](v32, -1, -1);
          }

          v18 = 0;
        }

        v33 = *v16;
        v79 = 0;
        memset(v78, 0, sizeof(v78));
        sub_21D0D3954(v78, v76, &unk_27CE60D80);
        v34 = [v26 updateSmartList_];
        sub_21D0CF7E0(v78, &unk_27CE60D80);
        type metadata accessor for TTRSmartListEditor();
        v35 = swift_allocObject();
        *(v35 + 16) = v34;
        v36 = v76[1];
        *(v35 + 24) = v76[0];
        *(v35 + 40) = v36;
        *(v35 + 56) = v77;
        *(v35 + 64) = 0;
        v37 = *(v16 + 1);
        v38 = *(v74 + 32);
        v6 = v68;
        v39 = v68[8];
        v40 = sub_21DBF78CC();
        v41 = v73 + v39;
        v42 = v73;
        (*(*(v40 - 8) + 16))(v41, &v16[v38], v40);
        v43 = v16[*(v74 + 36)];
        *v42 = v35;
        v42[1] = v37;
        *(v42 + v6[9]) = v43;
        v44 = v37;
        v45 = v71(v42);
        if (v45)
        {
          if (v45 == 1)
          {
            v46 = v33;
            v47 = sub_21DBF84AC();
            v48 = sub_21DBFAEDC();

            if (os_log_type_enabled(v47, v48))
            {
              v49 = swift_slowAlloc();
              v50 = swift_slowAlloc();
              *v49 = v59;
              v51 = [v46 objectID];
              *(v49 + 4) = v51;
              *v50 = v51;
              _os_log_impl(&dword_21D0C9000, v47, v48, "TTRHashtagAssociationInteractor: delete custom smart list {objectID: %@}", v49, 0xCu);
              sub_21D0CF7E0(v50, &unk_27CE60070);
              v52 = v50;
              v42 = v73;
              MEMORY[0x223D46520](v52, -1, -1);
              MEMORY[0x223D46520](v49, -1, -1);
            }

            v53 = [v46 accountID];
            v26 = v65;
            sub_21D7E5394(v53, &v75, v60, v65);
            v6 = v18;
            if (v18)
            {

              sub_21D0CF7E0(v42, &qword_27CE61B68);

              sub_21D0CF7E0(v16, &qword_27CE59B40);
              return;
            }

            TTRAccountEditor.removeCustomSmartList(_:)(v46);

            sub_21D0CF7E0(v42, &qword_27CE61B68);
            if (__OFADD__(v61, 1))
            {
              goto LABEL_36;
            }

            ++v61;
            v29 = v66;
          }

          else
          {
            sub_21D0CF7E0(v42, &qword_27CE61B68);
            v29 = v66;
            v26 = v65;
            if (__OFADD__(v63, 1))
            {
              goto LABEL_35;
            }

            v6 = v18;
            ++v63;
          }
        }

        else
        {
          sub_21D0CF7E0(v42, &qword_27CE61B68);
          v29 = v66;
          if (__OFADD__(v62, 1))
          {
            goto LABEL_34;
          }

          ++v62;
          v6 = v18;
          v26 = v65;
        }

        ++v10;
        sub_21D0CF7E0(v16, &qword_27CE59B40);
        v25 = v70;
      }

      while (v69 != v10);

      v54 = sub_21DBF84AC();
      v55 = sub_21DBFAEDC();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134218496;
        *(v56 + 4) = v62;
        *(v56 + 12) = 2048;
        *(v56 + 14) = v61;
        *(v56 + 22) = 2048;
        *(v56 + 24) = v63;
        _os_log_impl(&dword_21D0C9000, v54, v55, "TTRHashtagAssociationInteractor: saving smart lists {updatedCount: %ld, deletedCount: %ld, skippedCount: %ld}", v56, 0x20u);
        MEMORY[0x223D46520](v56, -1, -1);
      }

      *&v78[0] = 0;
      if ([v26 saveSynchronouslyWithError_])
      {
        v57 = *&v78[0];
      }

      else
      {
        v58 = *&v78[0];
        sub_21DBF52DC();

        swift_willThrow();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_21D7E3630(uint64_t a1, void *a2, char **a3, void *a4, void *a5)
{
  v102 = a5;
  v104 = a4;
  v97 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE65010);
  *&v8 = MEMORY[0x28223BE20](v7 - 8).n128_u64[0];
  v10 = &v94 - v9;
  isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
  v108 = MEMORY[0x277D84F90];
  v95 = a1;
  v103 = *(a1 + 16);
  v12 = [v103 hashtagContext];
  if (!v12)
  {
    if (isUniquelyReferenced_nonNull_native >> 62)
    {
      goto LABEL_75;
    }

    goto LABEL_4;
  }

  v13 = v12;
  v14 = [v12 hashtags];

  isUniquelyReferenced_nonNull_native = &qword_280D0C348;
  sub_21D0D8CF0(0, &qword_280D0C348);
  sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
  v15 = sub_21DBFAAAC();

LABEL_5:
  v96 = a3;
  if ((v15 & 0xC000000000000001) != 0)
  {
    isUniquelyReferenced_nonNull_native = sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C348);
    sub_21D19F2B8(&qword_280D0C340, &qword_280D0C348);
    sub_21DBFAB5C();
    v15 = v109;
    v16 = v110;
    v17 = v111;
    v18 = v112;
    v19 = v113;
  }

  else
  {
    v18 = 0;
    v20 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v17 = ~v20;
    v21 = -v20;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v19 = v22 & *(v15 + 56);
  }

  v99 = v17;
  v100 = MEMORY[0x277D84F90];
  v23 = (v17 + 64) >> 6;
  v24 = MEMORY[0x277D84F98];
  while (2)
  {
    v101 = v24;
    while (1)
    {
      if (v15 < 0)
      {
        v27 = sub_21DBFBDBC();
        if (v27)
        {
          *&v105 = v27;
          sub_21D0D8CF0(0, &qword_280D0C348);
          swift_dynamicCast();
          isUniquelyReferenced_nonNull_native = v107[0];
          if (v107[0])
          {
            goto LABEL_22;
          }
        }

LABEL_46:
        sub_21D0CFAF8();
        isUniquelyReferenced_nonNull_native = v100;
        if (!(v100 >> 62))
        {
          v58 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_48;
        }

LABEL_73:
        v58 = sub_21DBFBD7C();
LABEL_48:
        v59 = v96;
        a3 = &selRef__setContentViewMarginType_;
        v60 = &selRef__setContentViewMarginType_;
        v61 = v101;
        if (!v58)
        {
LABEL_71:
        }

        if (v58 >= 1)
        {
          v62 = 0;
          v98 = (isUniquelyReferenced_nonNull_native & 0xC000000000000001);
          v94 = xmmword_21DC08D00;
          v99 = v58;
          while (1)
          {
            if (v98)
            {
              v65 = MEMORY[0x223D44740](v62, isUniquelyReferenced_nonNull_native);
            }

            else
            {
              v65 = *(isUniquelyReferenced_nonNull_native + 8 * v62 + 32);
            }

            v66 = v65;
            v67 = [v65 v60[241]];
            if (v61[2] && (v68 = sub_21D181E04(v67), (v69 & 1) != 0))
            {
              v70 = *(v61[7] + 8 * v68);
              v71 = v70;
              v72 = 0;
              v104 = 0;
              v73 = 1;
            }

            else
            {
              sub_21DBF8E0C();
              v104 = [v66 v60[241]];
              v73 = 0;
              v71 = 0;
              v70 = v97;
              v72 = v59;
            }

            v74 = [v103 a3[436]];
            if (v74)
            {
              v63 = v74;
              v102 = v71;
              sub_21D9CB53C(v66, 0, 0, 1);
              if (v75)
              {
                v76 = v75;
                [v63 removeHashtag_];
                v77 = [v76 objectID];
                [v63 cancelUndeleteHashtagWithID_];

                sub_21D9CB53C(v70, v72, v104, v73);
                v79 = v78;
                if (v78)
                {
                  v80 = v78;
                }

                else
                {
                  if (v73)
                  {
                    v81 = v70;
                    [v63 addHashtag_];
                    v82 = v81;
                  }

                  else
                  {
                    v83 = sub_21DBFA12C();
                    v84 = [v63 addHashtagWithType:v104 name:v83];

                    v82 = v84;
                  }

                  v80 = v82;
                }

                v85 = v79;
                v86 = v80;
                v87 = sub_21D9CBAD8(v76, v80);

                v88 = swift_allocObject();
                v88[2] = v87;
                v88[3] = v86;
                v88[4] = v76;
                __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CE61B88);
                v89 = swift_allocObject();
                *(v89 + 16) = sub_21D7E6718;
                *(v89 + 24) = v88;
                v107[3] = sub_21D0D8CF0(0, &qword_280D17880);
                swift_retain_n();
                v107[0] = [v103 objectID];
                v90 = sub_21D0D8CF0(0, &qword_280D17860);
                v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE584E8);
                *&v105 = v90;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60DC0);
                v91 = swift_allocObject();
                *(v91 + 16) = v94;
                sub_21D0CEB98(v107, v91 + 32);
                sub_21D0CF2E8(&v105, (v91 + 64));
                __swift_destroy_boxed_opaque_existential_0(v107);
                sub_21D1C442C(v91, sub_21D23298C, v89);

                sub_21D24B434(v70, v72, v104, v73);

                v59 = v96;
                a3 = &selRef__setContentViewMarginType_;
                v60 = &selRef__setContentViewMarginType_;
                v64 = v99;
                isUniquelyReferenced_nonNull_native = v100;
                v71 = v102;
                goto LABEL_53;
              }

              v60 = &selRef__setContentViewMarginType_;
              v71 = v102;
            }

            else
            {
              v63 = v66;
            }

            sub_21D24B434(v70, v72, v104, v73);
            v64 = v99;
            isUniquelyReferenced_nonNull_native = v100;
LABEL_53:
            ++v62;

            v61 = v101;
            if (v64 == v62)
            {
              goto LABEL_71;
            }
          }
        }

        __break(1u);
LABEL_75:
        if (sub_21DBFBD7C())
        {
          sub_21D1D1C64(MEMORY[0x277D84F90]);
          v15 = v93;
        }

        else
        {
LABEL_4:
          v15 = MEMORY[0x277D84FA0];
        }

        goto LABEL_5;
      }

      v25 = v18;
      v26 = v19;
      if (!v19)
      {
        while (1)
        {
          v18 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v18 >= v23)
          {
            goto LABEL_46;
          }

          v26 = *(v16 + 8 * v18);
          ++v25;
          if (v26)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_73;
      }

LABEL_18:
      v19 = (v26 - 1) & v26;
      isUniquelyReferenced_nonNull_native = *(*(v15 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v26)))));
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_46;
      }

LABEL_22:
      v28 = [isUniquelyReferenced_nonNull_native name];
      v29 = sub_21DBFA16C();
      v31 = v30;

      if (v29 == v97 && v31 == v96)
      {
        break;
      }

      v33 = sub_21DBFC64C();

      if (v33)
      {
        goto LABEL_36;
      }

      v34 = [isUniquelyReferenced_nonNull_native name];
      v35 = sub_21DBFA16C();
      v37 = v36;

      v107[0] = v35;
      v107[1] = v37;
      sub_21DBF57AC();
      v38 = sub_21DBF582C();
      (*(*(v38 - 8) + 56))(v10, 0, 1, v38);
      sub_21D176F0C();
      v39 = sub_21DBFBBEC();
      v41 = v40;
      sub_21D0CF7E0(v10, &unk_27CE65010);

      if (v39 == v104 && v41 == v102)
      {

LABEL_32:
        isUniquelyReferenced_nonNull_native = isUniquelyReferenced_nonNull_native;
        MEMORY[0x223D42D80]();
        if (*((v108 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v108 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();

        v100 = v108;
      }

      else
      {
        v42 = sub_21DBFC64C();

        if (v42)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_36:
    v43 = [isUniquelyReferenced_nonNull_native type];
    v98 = isUniquelyReferenced_nonNull_native;
    v44 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107[0] = v44;
    v45 = sub_21D181E04(v43);
    v47 = v44[2];
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v51 = v46;
    if (v44[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_41:
        v24 = v107[0];
        if (v51)
        {
          goto LABEL_42;
        }

LABEL_44:
        v24[(v45 >> 6) + 8] |= 1 << v45;
        *(v24[6] + 8 * v45) = v43;
        v55 = v98;
        *(v24[7] + 8 * v45) = v98;

        v56 = v24[2];
        v49 = __OFADD__(v56, 1);
        v57 = v56 + 1;
        if (v49)
        {
          goto LABEL_78;
        }

        v24[2] = v57;
      }

      else
      {
        isUniquelyReferenced_nonNull_native = v45;
        sub_21D22512C();
        v45 = isUniquelyReferenced_nonNull_native;
        v24 = v107[0];
        if ((v51 & 1) == 0)
        {
          goto LABEL_44;
        }

LABEL_42:
        v53 = v24[7];
        isUniquelyReferenced_nonNull_native = *(v53 + 8 * v45);
        v54 = v98;
        *(v53 + 8 * v45) = v98;
      }

      continue;
    }

    break;
  }

  sub_21D21D960(v50, isUniquelyReferenced_nonNull_native);
  v45 = sub_21D181E04(v43);
  if ((v51 & 1) == (v52 & 1))
  {
    goto LABEL_41;
  }

LABEL_79:
  type metadata accessor for REMHashtagType(0);
  result = sub_21DBFC70C();
  __break(1u);
  return result;
}

uint64_t sub_21D7E40A4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v74 = a2;
  v4 = sub_21DBF78CC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v69 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v60 - v8;
  MEMORY[0x28223BE20](v9);
  v80 = &v60 - v10;
  MEMORY[0x28223BE20](v11);
  v82 = &v60 - v12;
  MEMORY[0x28223BE20](v13);
  v72 = &v60 - v14;
  MEMORY[0x28223BE20](v15);
  v73 = &v60 - v16;
  MEMORY[0x28223BE20](v17);
  v78 = &v60 - v18;
  MEMORY[0x28223BE20](v19);
  v76 = &v60 - v20;
  MEMORY[0x28223BE20](v21);
  v79 = &v60 - v22;
  MEMORY[0x28223BE20](v23);
  v81 = &v60 - v24;
  v77 = sub_21DBF7FEC();
  v70 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v75 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v60 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = (&v60 - v33);
  v35 = *a1;
  v83 = a1[1];
  v84 = v35;
  sub_21DBF7FCC();
  v36 = sub_21DBF7E5C();
  v37 = *(v36 - 8);
  v38 = 1;
  if ((*(v37 + 48))(v31, 1, v36) == 1)
  {
    goto LABEL_17;
  }

  v39 = (*(v37 + 88))(v31, v36);
  if (v39 == *MEMORY[0x277D458A0])
  {
    v64 = v39;
    v40 = *(v37 + 96);
    v66 = v36;
    v40(v31, v36);
    v65 = *(v31 + 1);
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78);
    v41 = *(v70 + 32);
    v42 = &v31[*(v61 + 64)];
    v63 = v70 + 32;
    v62 = v41;
    v41(v75, v42, v77);
    sub_21DBF784C();
    sub_21DBF77DC();
    v43 = sub_21DBF786C();
    v67 = v28;
    if (v43)
    {
      sub_21DBF78BC();
    }

    else
    {
      (*(v5 + 16))(v76, v68, v4);
    }

    v44 = v4;
    v45 = v72;
    sub_21DBF77CC();
    v46 = v73;
    sub_21DBF77CC();
    v47 = *(v5 + 8);
    v47(v45, v44);
    sub_21DBF782C();
    v47(v46, v44);
    sub_21DBF784C();
    sub_21DBF77DC();
    if (sub_21DBF786C())
    {
      v48 = v71;
      sub_21DBF78BC();
    }

    else
    {
      v48 = v71;
      (*(v5 + 16))(v71, v68, v44);
    }

    v28 = v67;
    v49 = v72;
    sub_21DBF77CC();
    v50 = v73;
    sub_21DBF77CC();
    v47(v49, v44);
    v51 = v69;
    sub_21DBF782C();
    v52 = v50;
    v53 = v44;
    v47(v52, v44);
    if (sub_21DBF786C() & 1) != 0 && (sub_21DBF786C())
    {
      v47(v51, v44);
      v47(v48, v44);
      v47(v80, v44);
      v47(v82, v44);
      v47(v78, v44);
      v47(v76, v44);
      v47(v79, v44);
      v47(v81, v44);
      (*(v70 + 8))(v75, v77);
      v38 = 1;
      v36 = v66;
LABEL_17:
      (*(v37 + 56))(v34, v38, 1, v36);
      sub_21DBF801C();
      sub_21D0D3954(v34, v28, &qword_27CE61B70);
      v57 = v83;
      v58 = sub_21DBF7F8C();
      TTRSmartListEditor.edit(filter:)(v58);

      sub_21D0CF7E0(v34, &qword_27CE61B70);
      return 0;
    }

    v54 = *(v61 + 64);
    v55 = v78;
    *v34 = sub_21DBF785C();
    v56 = sub_21DBF785C();
    v47(v51, v53);
    v47(v71, v53);
    v47(v80, v53);
    v47(v82, v53);
    v47(v55, v53);
    v47(v76, v53);
    v47(v79, v53);
    v47(v81, v53);
    v34[1] = v56;
    v62(v34 + v54, v75, v77);
    v36 = v66;
    (*(v37 + 104))(v34, v64, v66);
LABEL_16:
    v38 = 0;
    goto LABEL_17;
  }

  if (v39 == *MEMORY[0x277D458A8] || v39 == *MEMORY[0x277D45898])
  {
    (*(v37 + 104))(v34, v39, v36);
    goto LABEL_16;
  }

  result = sub_21DBFC63C();
  __break(1u);
  return result;
}

uint64_t sub_21D7E4950(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B280);
    sub_21DBFA96C();
  }

  return result;
}

uint64_t sub_21D7E49D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_21D7E49FC, 0, 0);
}

uint64_t sub_21D7E49FC()
{
  (*(v0 + 24))();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21D7E4A80()
{
  v0 = sub_21DBF6D7C();
  v24 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - v4;
  sub_21DBF718C();

  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v6 = sub_21DBFBF9C();
    v29 = v6;
    v7 = sub_21DBF718C();
    v23 = *(v7 + 16);
    if (!v23)
    {
      break;
    }

    v8 = 0;
    v19 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v20 = v5;
    v21 = v7 + v19;
    v22 = v7;
    v27 = (v24 + 8);
    v28 = v24 + 16;
    while (v8 < *(v7 + 16))
    {
      v9 = *(v24 + 72);
      v26 = v8;
      v10 = *(v24 + 16);
      v10(v5, v21 + v9 * v8, v0);
      sub_21DBF6D5C();
      MEMORY[0x223D42D80]();
      if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v6 = v29;
      v11 = sub_21DBF6D6C();
      v12 = *v27;
      (*v27)(v5, v0);
      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = MEMORY[0x277D84F90];
      }

      v14 = *(v13 + 16);
      if (v14)
      {
        v25 = v13;
        v15 = v13 + v19;
        do
        {
          v10(v2, v15, v0);
          sub_21DBF6D5C();
          v16 = (v12)(v2, v0);
          MEMORY[0x223D42D80](v16);
          if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_21DBFA63C();
          }

          sub_21DBFA6CC();
          v15 += v9;
          --v14;
        }

        while (v14);
        v6 = v29;

        v5 = v20;
      }

      else
      {
      }

      v8 = v26 + 1;
      v7 = v22;
      if (v26 + 1 == v23)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    sub_21DBFBD7C();
  }

LABEL_18:

  return v6;
}

uint64_t sub_21D7E4DA0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v56 = a3;
  v58 = a2;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40);
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v50 - v6;
  v7 = sub_21DBF78CC();
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v50 - v12;
  MEMORY[0x28223BE20](v14);
  v61 = &v50 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v16);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v20 = MEMORY[0x28223BE20](v19).n128_u64[0];
  v22 = &v50 - v21;
  v23 = *a1;
  v24 = [*a1 customContext];
  if (!v24)
  {
    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v25 = v24;
  v26 = sub_21DBFB4FC();

  if (!v26)
  {
    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v55 = v18;
  sub_21DBF7FCC();
  v27 = sub_21DBF7E5C();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v22, 1, v27) == 1)
  {
LABEL_4:

    return (*(v5 + 56))(v62, 1, 1, v63);
  }

  v30 = (*(v28 + 88))(v22, v27);
  if (v30 == *MEMORY[0x277D458A0])
  {
    v51 = v28;
    v52 = v27;
    (*(v28 + 96))(v22, v27);
    v54 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B78) + 64);
    sub_21DBF784C();
    sub_21DBF784C();
    sub_21DBF782C();
    v32 = v60 + 8;
    v31 = *(v60 + 8);
    v33 = v10;
    v10 = v59;
    v31(v33, v59);
    v34 = v13;
    v13 = v31;
    v53 = v32;
    v31(v34, v10);
    if (sub_21DBF77BC())
    {
      v31(v61, v10);

      (*(v5 + 56))(v62, 1, 1, v63);
      v35 = sub_21DBF7FEC();
      return (*(*(v35 - 8) + 8))(&v22[v54], v35);
    }
  }

  else
  {
    if (v30 == *MEMORY[0x277D458A8] || v30 == *MEMORY[0x277D45898])
    {
      goto LABEL_4;
    }

    sub_21DBFC63C();
    __break(1u);
  }

  v50 = v13;
  v36 = v10;
  v37 = v63;
  v38 = v57;
  (*(v60 + 16))(&v57[*(v63 + 32)], v61, v36);
  *v38 = v23;
  v38[1] = v26;
  v39 = *(v37 + 36);
  *(v38 + v39) = 0;
  v40 = v23;
  if (v56)
  {
    v41 = v26;
    v42 = v61;
    v43 = sub_21DBF78AC();
    v44 = v42;
    v45 = v54;
    if (v43)
    {
      sub_21DBF801C();
      (*(v51 + 56))(v55, 1, 1, v52);
      v46 = sub_21DBF7F8C();
      v47 = sub_21DBF7FBC();

      v50(v44, v59);
      v38 = v57;
      if (v47)
      {
        v57[v39] = 1;
      }
    }

    else
    {

      v50(v42, v59);
      v38 = v57;
    }
  }

  else
  {
    v50(v61, v36);
    v45 = v54;
  }

  v48 = v62;
  sub_21D7E66A8(v38, v62);
  (*(v5 + 56))(v48, 0, 1, v63);
  v49 = sub_21DBF7FEC();
  return (*(*(v49 - 8) + 8))(&v22[v45], v49);
}

uint64_t sub_21D7E5394(void *a1, uint64_t *a2, uint64_t a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  swift_beginAccess();
  v8 = sub_21D1AA2E0(a1, *a2);
  if (v8)
  {
    v9 = v8;
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = *(a3 + 24);
    *&v24[0] = 0;
    v11 = [v10 fetchAccountWithObjectID:a1 error:v24];
    v9 = *&v24[0];
    if (v11)
    {
      v12 = v11;
      v25 = 0;
      memset(v24, 0, sizeof(v24));
      sub_21D0D3954(v24, v22, &unk_27CE60D80);
      v13 = v9;
      v14 = [a4 updateAccount_];
      sub_21D0CF7E0(v24, &unk_27CE60D80);
      type metadata accessor for TTRAccountEditor();
      v9 = swift_allocObject();
      *(v9 + 16) = v14;
      v15 = v22[1];
      *(v9 + 24) = v22[0];
      *(v9 + 40) = v15;
      *(v9 + 56) = v23;
      *(v9 + 64) = 0;
      swift_beginAccess();
      v16 = *a2;
      if ((*a2 & 0xC000000000000001) != 0)
      {
        if (v16 < 0)
        {
          v17 = *a2;
        }

        else
        {
          v17 = v16 & 0xFFFFFFFFFFFFFF8;
        }

        v18 = sub_21DBFBD7C();
        if (__OFADD__(v18, 1))
        {
          __break(1u);
        }

        *a2 = sub_21D984B60(v17, v18 + 1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v22[0] = *a2;
      sub_21D478DD0(v9, a1, isUniquelyReferenced_nonNull_native);
      *a2 = *&v22[0];
      swift_endAccess();
    }

    else
    {
      v19 = *&v24[0];
      sub_21DBF52DC();

      swift_willThrow();
    }
  }

  return v9;
}

uint64_t TTRHashtagAssociationInteractor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_21D7E567C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21D0F00D0;

  return TTRHashtagAssociationInteractor.confirmationMessage(forRemovingHashtagLabels:)(a1, a2);
}

uint64_t sub_21D7E5724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D1B795C;

  return TTRHashtagAssociationInteractor.confirmationMessage(forRenamingHashtagLabel:)(a1, a2, a3);
}

uint64_t sub_21D7E57D4(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  sub_21DBFA84C();
  v3[5] = sub_21DBFA83C();
  v5 = sub_21DBFA7CC();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x2822009F8](sub_21D7E5874, v5, v4);
}

uint64_t sub_21D7E5874()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = swift_allocObject();
  v0[8] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_21D7E5974;

  return sub_21D7DFC38(v5, sub_21D7E7500, v4);
}

uint64_t sub_21D7E5974()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7E7518;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_21D7E7520;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E5A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  sub_21DBFA84C();
  v5[7] = sub_21DBFA83C();
  v7 = sub_21DBFA7CC();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x2822009F8](sub_21D7E5B30, v7, v6);
}

uint64_t sub_21D7E5B30()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[2];
  v6 = swift_allocObject();
  v0[10] = v6;
  v6[2] = v2;
  v6[3] = v5;
  v6[4] = v3;
  v6[5] = v4;
  v6[6] = v1;

  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v7 = swift_task_alloc();
  v0[11] = v7;
  *v7 = v0;
  v7[1] = sub_21D7E5C38;

  return sub_21D7DFC38(v7, sub_21D7E74E8, v6);
}

uint64_t sub_21D7E5C38()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E751C;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_21D7E7524;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_21D7E5D54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21D0F00D0;

  return TTRHashtagAssociationInteractor.fetchAllHashtagLabels()(a1);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRemovingHashtagLabels:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.confirmationMessage(forRenamingHashtagLabel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21D0F00D0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.removeReminderAssociationWithHashtagLabels(_:preferences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21D0F00D0;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.replaceReminderAssociationWithHashtagLabel(from:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 40) + **(a6 + 40));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21D0F00D0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of TTRHashtagAssociationInteractorType.fetchAllHashtagLabels()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21D0F00D0;

  return v9(a1, a2, a3);
}

uint64_t objectdestroy_11Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_21D7E6548()
{
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  return sub_21D7DF5A0(v1, &v3);
}

void sub_21D7E6590()
{
  sub_21DBFA99C();
  if (v0)
  {
    if (qword_27CE56CD8 != -1)
    {
      swift_once();
    }

    v1 = sub_21DBF84BC();
    __swift_project_value_buffer(v1, qword_27CE61B48);
    v2 = sub_21DBF84AC();
    v3 = sub_21DBFAEDC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_21D0C9000, v2, v3, "TTRHashtagAssociationInteractor: receive task cancellation signal", v4, 2u);
      MEMORY[0x223D46520](v4, -1, -1);
    }
  }
}

uint64_t sub_21D7E66A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21D7E672C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_21D1B795C;

  return sub_21D7E49D8(a1, v4, v5, v7, v6);
}

uint64_t sub_21D7E67FC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_21DBF78CC();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_21D7E68DC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = sub_21DBF78CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = v10 | *(v6 + 80) & 0xF8;
  if (v12 > 7 || ((*(v6 + 80) | *(v9 + 80)) & 0x100000) != 0 || v11 - ((-9 - (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + v10)) | v10) > 0x18)
  {
    v15 = *a2;
    *a1 = *a2;
    a1 = (v15 + (((v12 | 7) + 16) & ~(v12 | 7)));
  }

  else
  {
    v16 = v8;
    (*(v6 + 16))(a1, a2, v5);
    v17 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v18 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v20 = *v18++;
    v19 = v20;
    *v17++ = v20;
    v21 = *(v9 + 16);
    v22 = v19;
    v21(v17, v18, v16);
    *(v17 + v11) = *(v18 + v11);
  }

  return a1;
}

uint64_t sub_21D7E6A88(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)();
  v4 = ((a1 + *(v3 + 56) + 7) & 0xFFFFFFFFFFFFFFF8);

  v5 = sub_21DBF78CC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  v8 = (v4 + *(v6 + 80) + 8) & ~*(v6 + 80);

  return v7(v8, v5);
}

uint64_t sub_21D7E6B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  *v7 = *v8;
  v10 = sub_21DBF78CC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 16);
  v13 = v11 + 16;
  v14 = *(v11 + 80);
  v15 = (v7 + v14 + 8) & ~v14;
  v16 = (v8 + v14 + 8) & ~v14;
  v17 = v9;
  v12(v15, v16, v10);
  *(*(v13 + 48) + v15) = *(*(v13 + 48) + v16);
  return a1;
}

uint64_t sub_21D7E6C30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *v7;
  *v7 = *v8;
  v11 = v9;

  v12 = sub_21DBF78CC();
  v13 = *(v12 - 8);
  v14 = v13 + 24;
  v15 = *(v13 + 80);
  v16 = (v7 + v15 + 8) & ~v15;
  v17 = (v8 + v15 + 8) & ~v15;
  (*(v13 + 24))(v16, v17, v12);
  *(*(v14 + 40) + v16) = *(*(v14 + 40) + v17);
  return a1;
}

uint64_t sub_21D7E6D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = sub_21DBF78CC();
  v10 = *(v9 - 8);
  v11 = v10 + 32;
  v12 = *(v10 + 80);
  v13 = (v7 + v12 + 8) & ~v12;
  v14 = (v8 + v12 + 8) & ~v12;
  (*(v10 + 32))(v13, v14, v9);
  *(*(v11 + 32) + v13) = *(*(v11 + 32) + v14);
  return a1;
}

uint64_t sub_21D7E6E04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v7;
  *v7 = *v8;

  v10 = sub_21DBF78CC();
  v11 = *(v10 - 8);
  v12 = v11 + 40;
  v13 = *(v11 + 80);
  v14 = (v7 + v13 + 8) & ~v13;
  v15 = (v8 + v13 + 8) & ~v13;
  (*(v11 + 40))(v14, v15, v10);
  *(*(v12 + 24) + v14) = *(*(v12 + 24) + v15);
  return a1;
}

uint64_t sub_21D7E6EF0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_21DBF78CC();
  v9 = *(v8 - 8);
  v10 = *(v6 + 64);
  v11 = *(v9 + 80);
  if (v7 <= *(v9 + 84))
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v7;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = v12;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v13)
  {
    goto LABEL_31;
  }

  v14 = *(*(v8 - 8) + 64) + ((v11 + ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v11) + 1;
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v18 = ((a2 - v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v18))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v18 < 2)
    {
LABEL_31:
      if (v7 == v13)
      {
        v22 = *(v6 + 48);

        return v22(a1, v7, v5);
      }

      else
      {
        v23 = ((a1 + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((v12 & 0x80000000) != 0)
        {
          v25 = *(v9 + 48);

          return v25((v23 + v11 + 8) & ~v11);
        }

        else
        {
          v24 = *v23;
          if (v24 >= 0xFFFFFFFF)
          {
            LODWORD(v24) = -1;
          }

          return (v24 + 1);
        }
      }
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_31;
  }

LABEL_18:
  v19 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v19 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v20 = v14;
    }

    else
    {
      v20 = 4;
    }

    if (v20 > 2)
    {
      if (v20 == 3)
      {
        v21 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v21 = *a1;
      }
    }

    else if (v20 == 1)
    {
      v21 = *a1;
    }

    else
    {
      v21 = *a1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v13 + (v21 | v19) + 1;
}

void sub_21D7E7198(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v26 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_21DBF78CC() - 8);
  v11 = *(v8 + 64);
  v12 = *(v10 + 80);
  if (v9 <= *(v10 + 84))
  {
    v13 = *(v10 + 84);
  }

  else
  {
    v13 = v9;
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v14 = 0x7FFFFFFF;
  }

  else
  {
    v14 = v13;
  }

  v15 = *(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v12) + 1;
  if (a3 <= v14)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v14 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v14 < a2)
  {
    v17 = ~v14 + a2;
    if (v15 >= 4)
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_14;
      }

      goto LABEL_51;
    }

    v18 = (v17 >> (8 * v15)) + 1;
    if (*(v10 + 64) + ((v12 + ((v11 + 7) & 0xFFFFFFF8) + 8) & ~v12) != -1)
    {
      v21 = v17 & ~(-1 << (8 * v15));
      bzero(a1, v15);
      if (v15 != 3)
      {
        if (v15 == 2)
        {
          *a1 = v21;
          if (v16 > 1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          *a1 = v17;
          if (v16 > 1)
          {
LABEL_14:
            if (v16 == 2)
            {
              *&a1[v15] = v18;
            }

            else
            {
              *&a1[v15] = v18;
            }

            return;
          }
        }

LABEL_51:
        if (v16)
        {
          a1[v15] = v18;
        }

        return;
      }

      *a1 = v21;
      a1[2] = BYTE2(v21);
    }

    if (v16 > 1)
    {
      goto LABEL_14;
    }

    goto LABEL_51;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 == v14)
  {
    v22 = *(v26 + 56);

    v22(a1, a2, v9, v7);
  }

  else
  {
    v23 = (&a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8);
    if ((v13 & 0x80000000) != 0)
    {
      v25 = *(v10 + 56);

      v25((v23 + v12 + 8) & ~v12, a2);
    }

    else
    {
      if ((a2 & 0x80000000) != 0)
      {
        v24 = a2 & 0x7FFFFFFF;
      }

      else
      {
        v24 = (a2 - 1);
      }

      *v23 = v24;
    }
  }
}

uint64_t sub_21D7E7528(uint64_t a1, uint64_t a2)
{
  v49 = a2;
  v48 = sub_21DBF5B9C();
  v3 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v46 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58848);
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50);
  MEMORY[0x28223BE20](v43);
  v42 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v41 = (&v35 - v13);
  MEMORY[0x28223BE20](v14);
  v40 = &v35 - v15;
  v51 = MEMORY[0x277D84F90];
  sub_21D18F4EC(0, 0, 0);
  v16 = v51;
  v39 = *(a1 + 16);
  if (v39)
  {
    v17 = 0;
    v37 = (v3 + 8);
    v38 = (v3 + 16);
    v18 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v36 = *(v6 + 72);
    do
    {
      v50 = v16;
      v19 = v43;
      v20 = *(v43 + 48);
      v21 = v41;
      *v41 = v17;
      sub_21D0FE6CC(v18, v21 + v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      v22 = v40;
      sub_21D0D523C(v21, v40, &qword_27CE61D50);
      v23 = v42;
      sub_21D0D3954(v22, v42, &qword_27CE61D50);
      v24 = v23 + *(v19 + 48);
      v25 = v46;
      sub_21D7F4090(v24, v46, type metadata accessor for TTRAccountsListsViewModel.Item);
      v26 = *(v45 + 48);
      sub_21D0FE6CC(v25, v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      v27 = v47;
      v28 = v10;
      v29 = v48;
      (*v38)(v47, v49, v48);
      LOBYTE(v21) = sub_21DBF5B2C();
      v30 = v27;
      v16 = v50;
      v31 = v29;
      v10 = v28;
      (*v37)(v30, v31);
      sub_21D101390(v25, type metadata accessor for TTRAccountsListsViewModel.Item);
      *(v28 + v26) = v21 & 1;
      sub_21D0CF7E0(v22, &qword_27CE61D50);
      v51 = v16;
      v33 = *(v16 + 16);
      v32 = *(v16 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_21D18F4EC(v32 > 1, v33 + 1, 1);
        v16 = v51;
      }

      ++v17;
      *(v16 + 16) = v33 + 1;
      sub_21D0D523C(v28, v16 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v33, &qword_27CE58848);
      v18 += v36;
    }

    while (v39 != v17);
  }

  return v16;
}

uint64_t sub_21D7E79C0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_21D830500(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_21D7EF748(v6);
  return sub_21DBFBFFC();
}

void sub_21D7E7A3C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v16 - v6);
  v9 = *v1;
  v8 = v1[1];
  v10 = *(*v1 + 16);
  if (v8 == v10)
  {
    v11 = *(v4 + 56);

    v11(a1, 1, 1, v3, v5);
  }

  else
  {
    if (v8 >= v10)
    {
      __break(1u);
    }

    else
    {
      v17 = v4;
      v12 = *(type metadata accessor for TTRAccountsListsViewModel.Item(0) - 8);
      v13 = v9 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v7 = v15;
      sub_21D0FE6CC(v13, v7 + v14, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_21D0D523C(v7, a1, &qword_27CE61D50);
        (*(v17 + 56))(a1, 0, 1, v3);
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_21D7E7C2C()
{
  v0 = sub_21DBF84BC();
  __swift_allocate_value_buffer(v0, qword_27CE61C10);
  v1 = __swift_project_value_buffer(v0, qword_27CE61C10);
  if (qword_280D1B930 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D21CC8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams.anchor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[11];
  v3 = v1[9];
  v30 = v1[10];
  v31 = v2;
  v4 = v1[11];
  v32[0] = v1[12];
  *(v32 + 10) = *(v1 + 202);
  v5 = v1[7];
  v7 = v1[5];
  v26 = v1[6];
  v6 = v26;
  v27 = v5;
  v8 = v1[7];
  v9 = v1[9];
  v28 = v1[8];
  v10 = v28;
  v29 = v9;
  v11 = v1[3];
  v13 = v1[1];
  v22 = v1[2];
  v12 = v22;
  v23 = v11;
  v14 = v1[3];
  v15 = v1[5];
  v24 = v1[4];
  v16 = v24;
  v25 = v15;
  v17 = v1[1];
  v21[0] = *v1;
  v18 = v21[0];
  v21[1] = v17;
  a1[10] = v30;
  a1[11] = v4;
  a1[12] = v1[12];
  *(a1 + 202) = *(v1 + 202);
  a1[6] = v6;
  a1[7] = v8;
  a1[8] = v10;
  a1[9] = v3;
  a1[2] = v12;
  a1[3] = v14;
  a1[4] = v16;
  a1[5] = v7;
  *a1 = v18;
  a1[1] = v13;
  return sub_21D567868(v21, &v20);
}

__n128 TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams.init(anchor:members:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 176);
  *(a3 + 160) = *(a1 + 160);
  *(a3 + 176) = v3;
  *(a3 + 192) = *(a1 + 192);
  *(a3 + 202) = *(a1 + 202);
  v4 = *(a1 + 112);
  *(a3 + 96) = *(a1 + 96);
  *(a3 + 112) = v4;
  v5 = *(a1 + 144);
  *(a3 + 128) = *(a1 + 128);
  *(a3 + 144) = v5;
  v6 = *(a1 + 48);
  *(a3 + 32) = *(a1 + 32);
  *(a3 + 48) = v6;
  v7 = *(a1 + 80);
  *(a3 + 64) = *(a1 + 64);
  *(a3 + 80) = v7;
  result = *a1;
  v9 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v9;
  *(a3 + 224) = a2;
  return result;
}

unint64_t TTRAccountsListsPresenterCapability.GroupCreationValidationError.description.getter()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000026;
  if (v2 != 2)
  {
    v5 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t TTRAccountsListsPresenterCapability.GroupCreationValidationError.hashValue.getter()
{
  v1 = *v0;
  sub_21DBFC7DC();
  MEMORY[0x223D44FA0](v1);
  return sub_21DBFC82C();
}

unint64_t sub_21D7E7F60()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  v3 = 0xD000000000000028;
  if (v2 != 6)
  {
    v3 = 0xD000000000000031;
  }

  v4 = 0xD00000000000001DLL;
  if (v2 != 4)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000026;
  if (v2 != 2)
  {
    v5 = 0xD000000000000020;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 > 1u)
  {
    v1 = v5;
  }

  if (*v0 <= 3u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

id TTRAccountsListsPresenterCapability.GroupCreationParams.anchor.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  return v2;
}

uint64_t TTRAccountsListsPresenterCapability.CustomSmartListCreationParams.name.getter()
{
  v1 = *(v0 + 8);
  sub_21DBF8E0C();
  return v1;
}

unint64_t TTRAccountsListsPresenterCapability.ListPinningParams.action.getter@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return sub_21D7E80B8(v2);
}

unint64_t sub_21D7E80B8(unint64_t result)
{
  if (result >= 2)
  {
    return sub_21DBF8E0C();
  }

  return result;
}

void (*TTRAccountsListsPresenterCapability.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_21D24989C;
}

uint64_t TTRAccountsListsPresenterCapability.__allocating_init(contactsProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = MEMORY[0x277D84F98];
  sub_21D0D0FD0(a1, v2 + 40);
  return v2;
}

uint64_t TTRAccountsListsPresenterCapability.canMove(_:into:atUnadjustedIndex:containerIsInEditMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v27[-v12];
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v14 = *(v5 + 24), ObjectType = swift_getObjectType(), v16 = (*(v14 + 8))(v5, ObjectType, v14), swift_unknownObjectRelease(), v16))
  {
    sub_21D0D3954(a2, v13, &qword_27CE5A490);
    if (a4)
    {
      v17 = 0;
    }

    else
    {
      v17 = a3;
    }

    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionRequest(0);
    v18 = swift_allocObject();
    v19 = (v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
    *v19 = 0;
    v19[1] = 0;
    v20 = v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
    *v20 = 0;
    *(v20 + 8) = -1;
    sub_21D0D523C(v13, v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490);
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex) = v17;
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel) = v16;
    *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) = a5 & 1;
    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan(0);
    v21 = swift_allocObject();
    *(v21 + 16) = MEMORY[0x277D84F90];
    *(v21 + 24) = 1;
    *(v21 + 40) = 0;
    v22 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
    (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
    *(v21 + 32) = v18;

    sub_21D7ECA9C(a1);

    swift_beginAccess();
    v24 = *(v21 + 24);

    v25 = v24 ^ 1;
  }

  else
  {
    v25 = 0;
  }

  return v25 & 1;
}

uint64_t TTRAccountsListsPresenterCapability.paramsForMoving(_:into:atUnadjustedIndex:containerIsInEditMode:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v25 - v12;
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    return 0;
  }

  v14 = *(v5 + 24);
  ObjectType = swift_getObjectType();
  v16 = (*(v14 + 8))(v5, ObjectType, v14);
  swift_unknownObjectRelease();
  if (!v16)
  {
    return 0;
  }

  sub_21D0D3954(a2, v13, &qword_27CE5A490);
  if (a4)
  {
    v17 = 0;
  }

  else
  {
    v17 = a3;
  }

  type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionRequest(0);
  v18 = swift_allocObject();
  v19 = (v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
  *v19 = 0;
  v19[1] = 0;
  v20 = v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
  *v20 = 0;
  *(v20 + 8) = -1;
  sub_21D0D523C(v13, v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490);
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex) = v17;
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel) = v16;
  *(v18 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) = a5 & 1;
  type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan(0);
  v21 = swift_allocObject();
  *(v21 + 16) = MEMORY[0x277D84F90];
  *(v21 + 24) = 1;
  *(v21 + 40) = 0;
  v22 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
  (*(*(v23 - 8) + 56))(v21 + v22, 1, 1, v23);
  *(v21 + 32) = v18;

  sub_21D7ECA9C(a1);

  return v21;
}

void TTRAccountsListsPresenterCapability.paramsForCreatingGroup(byDropping:into:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v10 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v12 = (*(v10 + 8))(v3, ObjectType, v10);
  swift_unknownObjectRelease();
  if (!v12)
  {
    goto LABEL_7;
  }

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a2, &v82);
  v13 = BYTE8(v82);
  if (BYTE8(v82) == 255)
  {
    goto LABEL_6;
  }

  v14 = v82;
  v15 = [v82 parentListID];
  if (v15)
  {

    sub_21D157864(v14, v13);
LABEL_6:

    goto LABEL_7;
  }

  sub_21D0FE6CC(a2, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 3u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:

      sub_21D157864(v14, v13);
      sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
      break;
    case 5u:
    case 6u:
      v25 = v9[217];
      v26 = v9[216];
      v27 = v9[148];
      v28 = v9[147];
      v29 = v9[146];
      v30 = v9[145];
      v31 = v9[144];
      v32 = v9[120];
      v34 = *(v9 + 5);
      v33 = *(v9 + 6);
      v35 = *(v9 + 2);
      v77 = *v9;
      *(v78 + 8) = *(v9 + 24);
      *&v78[0] = v35;
      *(&v78[1] + 1) = v34;
      *&v79[0] = v33;
      *(v79 + 8) = *(v9 + 56);
      *(&v79[1] + 8) = *(v9 + 72);
      *(&v79[2] + 8) = *(v9 + 88);
      *(&v79[3] + 8) = *(v9 + 104);
      BYTE8(v79[4]) = v32;
      v80 = *(v9 + 8);
      LOBYTE(v81[0]) = v31;
      BYTE1(v81[0]) = v30;
      BYTE2(v81[0]) = v29;
      BYTE3(v81[0]) = v28;
      BYTE4(v81[0]) = v27;
      *(v81 + 8) = *(v9 + 152);
      *(&v81[1] + 8) = *(v9 + 168);
      *(&v81[2] + 8) = *(v9 + 184);
      *(&v81[3] + 8) = *(v9 + 200);
      BYTE8(v81[4]) = v26;
      BYTE9(v81[4]) = v25;
      if (v29 != 2 && (v29 & 1) != 0)
      {

        sub_21D157864(v14, v13);
        sub_21D1077D8(&v77);
        break;
      }

      v58 = &v58;
      v59 = v14;
      *&v82 = a1;
      MEMORY[0x28223BE20](v35);
      *(&v58 - 2) = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60);
      sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60);
      v36 = sub_21DBFA43C();
      if (v36)
      {
        v37 = v36;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A38);
        v38 = swift_allocObject();
        v39 = v81[1];
        v40 = v81[3];
        v38[13] = v81[2];
        v38[14] = v40;
        *(v38 + 234) = *(&v81[3] + 10);
        v41 = v79[3];
        v42 = v80;
        v43 = v81[0];
        v38[9] = v79[4];
        v38[10] = v42;
        v38[11] = v43;
        v38[12] = v39;
        v44 = v78[1];
        v45 = v79[1];
        v46 = v79[2];
        v38[5] = v79[0];
        v38[6] = v45;
        v38[7] = v46;
        v38[8] = v41;
        v47 = v77;
        v48 = v78[0];
        v38[1] = xmmword_21DC08D00;
        v38[2] = v47;
        v38[3] = v48;
        v38[4] = v44;
        v75[0] = v38;
        sub_21D567868(&v77, &v60);
        sub_21D567868(&v77, &v60);
        sub_21D563244(v37);
        v92 = v81[1];
        v93 = v81[2];
        v94[0] = v81[3];
        *(v94 + 10) = *(&v81[3] + 10);
        v88 = v79[3];
        v89 = v79[4];
        v90 = v80;
        v91 = v81[0];
        v84 = v78[1];
        v85 = v79[0];
        v86 = v79[1];
        v87 = v79[2];
        v82 = v77;
        v83 = v78[0];
        v95 = v75[0];
        v72 = v94[0];
        v73 = v94[1];
        v74 = v75[0];
        v68 = v80;
        v69 = v81[0];
        v70 = v81[1];
        v71 = v81[2];
        v64 = v79[1];
        v65 = v79[2];
        v66 = v79[3];
        v67 = v79[4];
        v60 = v77;
        v61 = v78[0];
        v62 = v78[1];
        v63 = v79[0];
        TTRAccountsListsPresenterCapability.groupCreationParams(for:)(&v60, v75);

        sub_21D1077D8(&v77);
        sub_21D157864(v59, v13);
        if (v76)
        {
          sub_21D7ED24C(&v82);
          sub_21D7ED208(&v60);
        }

        else
        {
          sub_21D7ED27C(v75[0], v75[1], v75[2], v75[3], v75[4], 0);
          v72 = v94[0];
          v73 = v94[1];
          v74 = v95;
          v68 = v90;
          v69 = v91;
          v70 = v92;
          v71 = v93;
          v64 = v86;
          v65 = v87;
          v66 = v88;
          v67 = v89;
          v60 = v82;
          v61 = v83;
          v62 = v84;
          v63 = v85;
          nullsub_1(&v60, v50, v51);
        }

        v52 = v73;
        *(a3 + 192) = v72;
        *(a3 + 208) = v52;
        *(a3 + 224) = v74;
        v53 = v69;
        *(a3 + 128) = v68;
        *(a3 + 144) = v53;
        v54 = v71;
        *(a3 + 160) = v70;
        *(a3 + 176) = v54;
        v55 = v65;
        *(a3 + 64) = v64;
        *(a3 + 80) = v55;
        v56 = v67;
        *(a3 + 96) = v66;
        *(a3 + 112) = v56;
        v57 = v61;
        *a3 = v60;
        *(a3 + 16) = v57;
        v23 = v62;
        v22 = v63;
        goto LABEL_8;
      }

      sub_21D1077D8(&v77);
      v24 = v59;
LABEL_20:
      sub_21D157864(v24, v13);
      break;
    case 0xFu:
    case 0x10u:

      v24 = v14;
      goto LABEL_20;
    default:

      sub_21D157864(v14, v13);
      v49 = sub_21DBF56BC();
      (*(*(v49 - 8) + 8))(v9, v49);
      break;
  }

LABEL_7:
  sub_21D7ED208(&v82);
  v16 = v94[1];
  *(a3 + 192) = v94[0];
  *(a3 + 208) = v16;
  *(a3 + 224) = v95;
  v17 = v91;
  *(a3 + 128) = v90;
  *(a3 + 144) = v17;
  v18 = v93;
  *(a3 + 160) = v92;
  *(a3 + 176) = v18;
  v19 = v87;
  *(a3 + 64) = v86;
  *(a3 + 80) = v19;
  v20 = v89;
  *(a3 + 96) = v88;
  *(a3 + 112) = v20;
  v21 = v83;
  *a3 = v82;
  *(a3 + 16) = v21;
  v23 = v84;
  v22 = v85;
LABEL_8:
  *(a3 + 32) = v23;
  *(a3 + 48) = v22;
}

double sub_21D7E8D7C@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v39[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v39[-v11];
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v39[-v11]);
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v9);
  v13 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v12, v9);
  sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D101390(v12, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  if (v13)
  {
    sub_21D7F4008(&v41);
    v14 = *&v45[32];
    a2[10] = *&v45[16];
    a2[11] = v14;
    a2[12] = *&v45[48];
    v15 = *&v45[58];
  }

  else
  {
    sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
        goto LABEL_5;
      case 5u:
      case 6u:
        v25 = v6[217];
        v26 = v6[216];
        v27 = v6[148];
        v28 = v6[147];
        v29 = v6[146];
        v30 = v6[145];
        v31 = v6[144];
        v33 = *(v6 + 5);
        v32 = *(v6 + 6);
        v34 = *(v6 + 2);
        v35 = *v6;
        v40 = v6[120];
        v39[8] = v31;
        v41 = v35;
        *&v42[0] = v34;
        *(v42 + 8) = *(v6 + 24);
        *(&v42[1] + 1) = v33;
        *v43 = v32;
        v36 = *(v6 + 72);
        *&v43[8] = *(v6 + 56);
        *&v43[24] = v36;
        v37 = *(v6 + 104);
        *&v43[40] = *(v6 + 88);
        *&v43[56] = v37;
        v43[72] = v40;
        v44 = *(v6 + 8);
        v45[0] = v31;
        v45[1] = v30;
        v45[2] = v29;
        v45[3] = v28;
        v45[4] = v27;
        *&v45[8] = *(v6 + 152);
        *&v45[24] = *(v6 + 168);
        *&v45[40] = *(v6 + 184);
        *&v45[56] = *(v6 + 200);
        v45[72] = v26;
        v45[73] = v25;
        nullsub_1(&v41, v16, v17);
        goto LABEL_6;
      case 0xFu:
      case 0x10u:
        goto LABEL_5;
      default:
        v38 = sub_21DBF56BC();
        (*(*(v38 - 8) + 8))(v6, v38);
LABEL_5:
        sub_21D7F4008(&v41);
LABEL_6:
        v18 = *&v45[32];
        a2[10] = *&v45[16];
        a2[11] = v18;
        a2[12] = *&v45[48];
        v15 = *&v45[58];
        break;
    }
  }

  *(a2 + 202) = v15;
  v19 = *&v43[64];
  a2[6] = *&v43[48];
  a2[7] = v19;
  v20 = *v45;
  a2[8] = v44;
  a2[9] = v20;
  v21 = *v43;
  a2[2] = v42[1];
  a2[3] = v21;
  v22 = *&v43[32];
  a2[4] = *&v43[16];
  a2[5] = v22;
  result = *&v41;
  v24 = v42[0];
  *a2 = v41;
  a2[1] = v24;
  return result;
}

void TTRAccountsListsPresenterCapability.groupCreationParams(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 224);
  swift_beginAccess();
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_10;
  }

  v5 = *(v2 + 24);
  ObjectType = swift_getObjectType();
  v7 = (*(v5 + 8))(v2, ObjectType, v5);
  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_10;
  }

  if (!*(v4 + 16))
  {

LABEL_10:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
LABEL_11:
    *(a2 + 40) = 1;
    return;
  }

  *&v54 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C70);
  sub_21D0D0F1C(&qword_27CE61C78, &qword_27CE61C70);
  v8 = sub_21DBFA43C();
  if (!v8)
  {
LABEL_51:

LABEL_52:
    v22 = 4;
LABEL_53:
    *a2 = v22;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    goto LABEL_11;
  }

  v9 = v8;
  v10 = *(v8 + 16);
  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    *&v54 = MEMORY[0x277D84F90];
    sub_21DBFC01C();
    v12 = (v9 + 32);
    v13 = v10;
    do
    {
      v14 = *v12;
      v12 += 2;
      v15 = [v14 objectID];
      sub_21DBFBFEC();
      sub_21DBFC03C();
      sub_21DBFC04C();
      sub_21DBFBFFC();
      --v13;
    }

    while (v13);
    v16 = v54;
    v11 = MEMORY[0x277D84F90];
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  *&v54 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58858);
  sub_21D0D0F1C(&qword_27CE59838, &qword_27CE58858);
  sub_21D19F2B8(&qword_280D17870, &qword_280D17880);
  v17 = sub_21DBFA4AC();

  if (v17 >> 62)
  {
    goto LABEL_68;
  }

  for (i = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_21DBFBD7C())
  {

    if (i != v10)
    {

      *a2 = 1;
      *(a2 + 8) = 0u;
      *(a2 + 24) = 0u;
      *(a2 + 40) = 1;
      return;
    }

    v19 = *(v9 + 16);
    if (!v19)
    {
      break;
    }

    v20 = 0;
    v21 = (v9 + 40);
    do
    {
      if (v20 >= *(v9 + 16))
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      if (*v21 != 1 && ([*(v21 - 1) isGroup] & 1) != 0)
      {

        v22 = 5;
        goto LABEL_53;
      }

      ++v20;
      v21 += 2;
    }

    while (v19 != v20);
    v23 = 0;
    v24 = (v9 + 40);
    while (v23 < *(v9 + 16))
    {
      if (*v24 != 1 && ([*(v24 - 1) canBeIncludedInGroup] & 1) == 0)
      {

        v22 = 7;
        goto LABEL_53;
      }

      ++v23;
      v24 += 2;
      if (v19 == v23)
      {
        goto LABEL_30;
      }
    }

LABEL_67:
    __break(1u);
LABEL_68:
    ;
  }

LABEL_30:
  v25 = 0;
  v26 = v9 + 40;
  v10 = v11;
  *&v54 = v11;
  v11 = -v19;
LABEL_31:
  v27 = v25 + 1;
  v28 = (v26 + 16 * v25);
  while (v27 - v19 != 1)
  {
    v25 = v27;
    if ((v27 - 1) >= *(v9 + 16))
    {
      __break(1u);
      goto LABEL_66;
    }

    v29 = *(v28 - 1);
    if ((*v28 & 1) == 0)
    {
      v30 = v29;
      v31 = [v30 account];
      v32 = [v31 objectID];

LABEL_38:
      MEMORY[0x223D42D80]();
      if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_21DBFA63C();
      }

      sub_21DBFA6CC();
      v10 = v54;
      v26 = v9 + 40;
      goto LABEL_31;
    }

    ++v27;
    v28 += 16;
    if ([v29 parentAccountID])
    {
      goto LABEL_38;
    }
  }

  *&v54 = v10;
  v33 = sub_21DBFA4AC();

  if (!(v33 >> 62))
  {
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
      goto LABEL_43;
    }

LABEL_71:

    v22 = 2;
    goto LABEL_53;
  }

  if (sub_21DBFBD7C() != 1 || !sub_21DBFBD7C())
  {
    goto LABEL_71;
  }

LABEL_43:
  if ((v33 & 0xC000000000000001) != 0)
  {
    goto LABEL_73;
  }

  if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (j = *(v33 + 32); ; j = MEMORY[0x223D44740](0, v33))
    {
      v35 = j;

      TTRAccountsListsViewModel.account(with:)(v35, &v54);
      v36 = *(&v54 + 1);
      if (!*(&v54 + 1))
      {

        goto LABEL_51;
      }

      v37 = v54;
      v38 = v55;
      sub_21DA1CE20(v55, &v54);
      v39 = BYTE8(v54);
      if (BYTE8(v54))
      {
        break;
      }

      v33 = v54;
      v40 = [v54 groupContext];
      if (!v40)
      {

        sub_21D1576C8(v37, v36, v38);
        sub_21D103A34(v33, 0);

        v22 = 3;
        goto LABEL_53;
      }

      v47 = v40;
      v48 = v33;
      v49 = v37;
      v50 = v38;
      v51 = v36;
      v52 = v35;
      if (!v19)
      {
LABEL_60:

        sub_21D103A34(v48, 0);

        sub_21D1576C8(v49, v51, v50);

        v22 = 6;
        goto LABEL_53;
      }

      v41 = 0;
      v42 = (v9 + 40);
      while (v41 < *(v9 + 16))
      {
        v43 = *(v42 - 1);
        v53 = *v42;
        v44 = v43;
        v45 = [v44 objectID];
        sub_21D0D8CF0(0, &qword_280D17680);
        v33 = sub_21DBFB63C();

        if (v33)
        {

          sub_21D1576C8(v49, v51, v50);

          *a2 = v48;
          *(a2 + 8) = v47;
          *(a2 + 16) = v43;
          *(a2 + 24) = v53;
          *(a2 + 32) = v9;
          *(a2 + 40) = 0;
          return;
        }

        ++v41;

        v42 += 16;
        if (v19 == v41)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_73:
      ;
    }

    if (BYTE8(v54) == 255)
    {
    }

    else
    {
      v46 = v54;

      sub_21D103A34(v46, v39);
    }

    sub_21D1576C8(v37, v36, v38);
    goto LABEL_52;
  }

  __break(1u);
}

id sub_21D7E98E0@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[11];
  v28 = a1[10];
  v29 = v4;
  v30[0] = a1[12];
  *(v30 + 10) = *(a1 + 202);
  v5 = a1[7];
  v24 = a1[6];
  v25 = v5;
  v6 = a1[9];
  v26 = a1[8];
  v27 = v6;
  v7 = a1[3];
  v20 = a1[2];
  v21 = v7;
  v8 = a1[5];
  v22 = a1[4];
  v23 = v8;
  v9 = a1[1];
  v18 = *a1;
  v19 = v9;
  result = TTRAccountsListsViewModel.remList(for:)(&v18);
  if (result)
  {
    *a2 = result;
    *(a2 + 8) = 0;
  }

  else
  {
    v11 = a1[11];
    v28 = a1[10];
    v29 = v11;
    v30[0] = a1[12];
    *(v30 + 10) = *(a1 + 202);
    v12 = a1[7];
    v24 = a1[6];
    v25 = v12;
    v13 = a1[9];
    v26 = a1[8];
    v27 = v13;
    v14 = a1[3];
    v20 = a1[2];
    v21 = v14;
    v15 = a1[5];
    v22 = a1[4];
    v23 = v15;
    v16 = a1[1];
    v18 = *a1;
    v19 = v16;
    result = TTRAccountsListsViewModel.remSmartList(for:)(&v18);
    if (result)
    {
      *a2 = result;
      v17 = 1;
    }

    else
    {
      *a2 = 0;
      v17 = -1;
    }

    *(a2 + 8) = v17;
  }

  return result;
}

uint64_t TTRAccountsListsPresenterCapability.customSmartListCreationParams(forHashtagLabels:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61B70);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v38 - v5;
  v7 = sub_21DBF6C1C();
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x28223BE20](v7);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21DBF7E5C();
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v19 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v21 = (*(v19 + 8))(v2, ObjectType, v19);
    result = swift_unknownObjectRelease();
    if (v21)
    {
      v22 = *(v21 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_tree);
      v23 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
      (*(*(v23 - 8) + 56))(v17, 1, 1, v23);
      result = sub_21D0E8DA0(v17);
      if (result < 0)
      {
        __break(1u);
        return result;
      }

      v24 = result;
      v40 = v9;
      v41 = v6;
      sub_21D0D523C(v17, v14, &qword_27CE5A490);
      v25 = (*(v12 + 80) + 24) & ~*(v12 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v22;
      sub_21D0D523C(v14, v26 + v25, &qword_27CE5A490);
      v48 = 0;
      v49 = v24;
      v50 = sub_21D10791C;
      v51 = v26;
      v52 = sub_21D108104;
      v53 = v21;
      v54 = sub_21D1083B8;
      v55 = 0;
      v56 = sub_21D11DAE4;
      v57 = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C80);
      sub_21D0D8CF0(0, &qword_27CE5DDD0);
      sub_21D0D0F1C(&qword_27CE61C88, &qword_27CE61C80);
      sub_21DBFA48C();

      v27 = v58;
      if (v58)
      {
        v28 = v47;
        sub_21D7EA018(v47);
        v39 = v29;
        v31 = v30;
        (*(v43 + 16))(v42, v28, v44);
        v32 = v45;
        sub_21DBF7E4C();
        sub_21DBF801C();
        sub_21DBF800C();
        v33 = v46;
        v34 = v41;
        v35 = v40;
        (*(v46 + 16))(v41, v32, v40);
        (*(v33 + 56))(v34, 0, 1, v35);
        v36 = sub_21DBF7F8C();

        result = (*(v33 + 8))(v32, v35);
        v37 = v39;
        *a2 = v27;
        a2[1] = v37;
        a2[2] = v31;
        a2[3] = v36;
        return result;
      }
    }
  }

  *a2 = 0u;
  *(a2 + 1) = 0u;
  return result;
}

void sub_21D7E9F5C(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_21DA1CE20(*(a1 + 16), &v8);
  v3 = v9;
  if (v9 == 255)
  {
    goto LABEL_7;
  }

  v4 = v8;
  if (v9)
  {
    v7 = v8;
    goto LABEL_6;
  }

  v5 = [v8 capabilities];
  v6 = [v5 supportsCustomSmartLists];

  if ((v6 & 1) == 0)
  {
    v7 = v4;
    v3 = 0;
LABEL_6:
    sub_21D103A34(v7, v3);
LABEL_7:
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21D7EA018(uint64_t a1)
{
  v2 = sub_21DBF78CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21DBF6C1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v10, a1, v6, v8);
  v11 = (*(v7 + 88))(v10, v6);
  if (v11 == *MEMORY[0x277D45378])
  {
    (*(v7 + 96))(v10, v6);
    v12 = *v10;
    v13 = v10[1];
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5AE50) + 64);
    v18[1] = sub_21D996B68(v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5B3E0);
    sub_21D0D0F1C(&qword_27CE5B3E8, &qword_27CE5B3E0);
    sub_21DBF77EC();

    sub_21DBF784C();
    REMHashtagLabelCollection.localizedDescription.getter();
    (*(v3 + 8))(v5, v2);
    v15 = sub_21DBF6C0C();
    (*(*(v15 - 8) + 8))(v10 + v14, v15);
    return;
  }

  if (v11 == *MEMORY[0x277D45398])
  {
    if (qword_280D1BAA8 == -1)
    {
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  if (v11 == *MEMORY[0x277D45380])
  {
    if (qword_280D1BAA8 == -1)
    {
LABEL_8:
      sub_21DBF516C();
      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_8;
  }

  if (qword_27CE56CE0 != -1)
  {
    swift_once();
  }

  v16 = sub_21DBF84BC();
  __swift_project_value_buffer(v16, qword_27CE61C10);
  v17 = MEMORY[0x277D84F90];
  sub_21D17716C(MEMORY[0x277D84F90]);
  sub_21D17716C(v17);
  sub_21DAEAB00("Unknown hashtag label type", 26, 2);
  __break(1u);
}

uint64_t TTRAccountsListsPresenterCapability.listPinningParams(for:wantsPinned:)@<X0>(uint64_t a1@<X0>, _BOOL4 a2@<W1>, char **a3@<X8>)
{
  v7 = *(a1 + 16);
  result = swift_beginAccess();
  if (v7)
  {
    v9 = 0;
    v65 = 0;
    v10 = a1 + 32;
    v11 = MEMORY[0x277D84F90];
    v68 = MEMORY[0x277D84F90];
    v69 = v7;
    v66 = a3;
    v67 = a2;
    v70 = v3;
    v64 = v10;
    while (1)
    {
      v12 = (v10 + 224 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          __break(1u);
LABEL_75:
          __break(1u);
          return result;
        }

        v14 = v12[11];
        v78 = v12[10];
        v79 = v14;
        v80[0] = v12[12];
        *(v80 + 10) = *(v12 + 202);
        v15 = v12[7];
        v76[6] = v12[6];
        v76[7] = v15;
        v16 = v12[9];
        v76[8] = v12[8];
        v77 = v16;
        v17 = v12[3];
        v76[2] = v12[2];
        v76[3] = v17;
        v18 = v12[5];
        v76[4] = v12[4];
        v76[5] = v18;
        v19 = v12[1];
        v76[0] = *v12;
        v76[1] = v19;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_75;
        }

        v20 = BYTE2(v77);
        if (BYTE2(v77) == 2 || !swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_53;
        }

        v71 = v13 + 1;
        v72 = v11;
        v21 = *(v3 + 24);
        ObjectType = swift_getObjectType();
        v23 = *(v21 + 8);
        sub_21D567868(v76, &v74);
        v24 = v23(v3, ObjectType, v21);
        v25 = swift_unknownObjectRelease();
        if (!v24)
        {
          sub_21D1077D8(v76);
          v11 = v72;
          goto LABEL_53;
        }

        v26 = *&v76[0];
        if (v20)
        {
          break;
        }

        sub_21DA1CE20(*&v76[0], &v74);
        v27 = v74;
        v11 = v72;
        if (v75 == 1 || v75 == 4)
        {

          v28 = 0;
        }

        else
        {
          if (v75 != 255)
          {
            sub_21D103A34(v74, v75);
          }

          sub_21DA1CE20(v26, &v74);

          v27 = v74;
          if (v75 != 2)
          {
            if (v75 != 255)
            {
              sub_21D103A34(v74, v75);
            }

LABEL_52:
            sub_21D1077D8(v76);
LABEL_53:
            v54 = v67;
            if (v67 == 2)
            {
              v55 = *(v11 + 2);
              v56 = *(v68 + 2);

              v54 = v55 >= v56;
            }

            else
            {
            }

            v57 = v66;
            *v66 = 0;
            *(v57 + 8) = v54;
            return result;
          }

          v28 = 1;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_21D2146A4(0, *(v11 + 2) + 1, 1, v11);
        }

        v30 = *(v11 + 2);
        v29 = *(v11 + 3);
        if (v30 >= v29 >> 1)
        {
          v11 = sub_21D2146A4((v29 > 1), v30 + 1, 1, v11);
        }

        result = sub_21D1077D8(v76);
        *(v11 + 2) = v30 + 1;
        v31 = &v11[16 * v30];
        *(v31 + 4) = v27;
        v31[40] = v28;
        ++v13;
        v12 += 14;
        v7 = v69;
        v3 = v70;
        if (v71 == v69)
        {
          a3 = v66;
          LOBYTE(a2) = v67;
          goto LABEL_38;
        }
      }

      v32 = OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes;
      v73 = *(v24 + OBJC_IVAR____TtC15RemindersUICore25TTRAccountsListsViewModel_pinnedListsNodes);
      MEMORY[0x28223BE20](v25);
      *(&v63 - 2) = v26;
      sub_21DBF8E0C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C90);
      sub_21D0D0F1C(&qword_280D0C3F0, &qword_27CE61C90);
      v33 = v65;
      sub_21DBFA48C();

      v11 = v72;
      if (v75 == 255)
      {
        goto LABEL_26;
      }

      v35 = v74;
      if (v75)
      {
        break;
      }

      v65 = v33;

      v36 = 0;
LABEL_30:
      v37 = v68;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10 = v64;
      v9 = v71;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v37 = sub_21D2146A4(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = v37;
      v40 = *(v37 + 2);
      v68 = v39;
      v41 = *(v39 + 3);
      if (v40 >= v41 >> 1)
      {
        v68 = sub_21D2146A4((v41 > 1), v40 + 1, 1, v68);
      }

      result = sub_21D1077D8(v76);
      v42 = v68;
      *(v68 + 2) = v40 + 1;
      v43 = &v42[16 * v40];
      *(v43 + 4) = v35;
      v43[40] = v36;
      v7 = v69;
      v3 = v70;
      a3 = v66;
      LOBYTE(a2) = v67;
      if (v9 == v69)
      {
        goto LABEL_38;
      }
    }

    sub_21D157864(v74, v75);
LABEL_26:
    v65 = &v63;
    v73 = *(v24 + v32);
    MEMORY[0x28223BE20](v34);
    *(&v63 - 2) = v26;
    sub_21DBF8E0C();
    sub_21DBFA48C();

    if (v75 == 255)
    {
      goto LABEL_52;
    }

    v35 = v74;
    if ((v75 & 1) == 0)
    {
      sub_21D157864(v74, v75);
      goto LABEL_52;
    }

    v65 = v33;
    v36 = 1;
    goto LABEL_30;
  }

  v11 = MEMORY[0x277D84F90];
  v68 = MEMORY[0x277D84F90];
LABEL_38:
  if (a2 != 2)
  {
    if (a2)
    {
      v46 = *(v11 + 2);
      sub_21DBF8E0C();
      if (v46)
      {
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v47 = a2;
          v48 = *(v3 + 24);
          v49 = swift_getObjectType();
          v50 = (*(v48 + 8))(v3, v49, v48);
          swift_unknownObjectRelease();
          if (v50)
          {
            v51 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(*(v11 + 2));

            if (v51)
            {
LABEL_62:

              *a3 = 1;
              *(a3 + 8) = 1;
              return result;
            }
          }

          else
          {
          }

          LOBYTE(a2) = v47;
        }

        else
        {
        }

        goto LABEL_70;
      }
    }

    else
    {
      v52 = v68;
      v53 = *(v68 + 2);
      sub_21DBF8E0C();
      if (v53)
      {

        v11 = v52;
LABEL_70:
        *a3 = v11;
        goto LABEL_71;
      }
    }

    *a3 = 0;
LABEL_71:
    v62 = a2;
    goto LABEL_72;
  }

  v44 = *(v11 + 2);
  v45 = *(v68 + 2);
  if (!v44)
  {

    if (v45)
    {
      *a3 = v68;
      *(a3 + 8) = 0;
      return result;
    }

    goto LABEL_66;
  }

  if (v45)
  {

LABEL_66:

    v62 = v44 >= v45;
    *a3 = 0;
    goto LABEL_72;
  }

  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong() && (v58 = *(v3 + 24), v59 = swift_getObjectType(), v60 = (*(v58 + 8))(v3, v59, v58), swift_unknownObjectRelease(), v60))
  {
    v61 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(*(v11 + 2));

    if (v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  *a3 = v11;
  v62 = 1;
LABEL_72:
  *(a3 + 8) = v62;
  return result;
}

uint64_t sub_21D7EAC70(uint64_t a1, char *a2, void *a3)
{
  swift_beginAccess();
  v6 = a3[4];
  if (!*(v6 + 16) || (v7 = sub_21D17E07C(a1), (v8 & 1) == 0))
  {
    swift_endAccess();
    sub_21DBF8E0C();
    goto LABEL_42;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_endAccess();
  sub_21DBF8E0C();
  v10 = sub_21DBF8E0C();
  v11 = sub_21D19F818(v10);

  v40[0] = v11;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v12)
  {
LABEL_40:

    goto LABEL_41;
  }

LABEL_5:
  v29 = a1;
  v30 = a3;
  v13 = 0;
  v35 = sub_21D0D8CF0(0, &unk_27CE626A0);
  v36 = v9 & 0xC000000000000001;
  v31 = v9 + 32;
  v32 = v9 & 0xFFFFFFFFFFFFFF8;
  v33 = v12;
  v34 = v9;
  while (1)
  {
LABEL_7:
    if (v36)
    {
      v14 = MEMORY[0x223D44740](v13, v9);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v13 >= *(v32 + 16))
      {
        goto LABEL_38;
      }

      v14 = *(v31 + 8 * v13);
      v15 = __OFADD__(v13++, 1);
      if (v15)
      {
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        v12 = sub_21DBFBD7C();
        if (!v12)
        {
          goto LABEL_40;
        }

        goto LABEL_5;
      }
    }

    a3 = v14;
    v11 = v35;
    v38 = sub_21DBFB4AC();
    if (v38)
    {
      break;
    }

    if (v13 == v12)
    {
      goto LABEL_34;
    }
  }

  v37 = a3;
  v16 = v40[0];
  if ((v40[0] & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_21DBFBD1C();
    sub_21D0D8CF0(0, &qword_280D0C1A0);
    sub_21D19F2B8(&qword_27CE58AB8, &qword_280D0C1A0);
    sub_21DBFAB5C();
    v16 = v40[3];
    v9 = v40[4];
    v11 = v40[5];
    a1 = v40[6];
    v17 = v40[7];
  }

  else
  {
    v18 = -1 << *(v40[0] + 32);
    v9 = v40[0] + 56;
    v11 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v40[0] + 56);
    sub_21DBF8E0C();
    a1 = 0;
  }

  v21 = (v11 + 64) >> 6;
  while (1)
  {
    a3 = a1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_21DBFBDBC())
    {
      goto LABEL_32;
    }

    sub_21D0D8CF0(0, &qword_280D0C1A0);
    swift_dynamicCast();
    v24 = v39;
    if (!v39)
    {
      goto LABEL_32;
    }

LABEL_30:
    v11 = sub_21DBFB4BC();

    if (v11)
    {

      sub_21D199874();
      goto LABEL_33;
    }
  }

  v22 = a1;
  v23 = v17;
  if (!v17)
  {
    while (1)
    {
      a1 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (a1 >= v21)
      {
        goto LABEL_32;
      }

      v23 = *(v9 + 8 * a1);
      ++v22;
      if (v23)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

LABEL_26:
  v17 = (v23 - 1) & v23;
  v24 = *(*(v16 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v23)))));
  if (v24)
  {
    goto LABEL_30;
  }

LABEL_32:
  sub_21D199874();
  v25 = v37;
  v11 = v40;
  sub_21D29E7EC(&v39, v25);

LABEL_33:
  v12 = v33;
  v9 = v34;
  if (v13 != v33)
  {
    goto LABEL_7;
  }

LABEL_34:

  v11 = v40[0];
  a1 = v29;
  a3 = v30;
LABEL_41:
  v39 = sub_21D198B4C(v11);
  sub_21D7E79C0(&v39);

  a2 = v39;
LABEL_42:
  swift_beginAccess();
  v26 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v39 = a3[4];
  a3[4] = 0x8000000000000000;
  sub_21D478F18(a2, v26, isUniquelyReferenced_nonNull_native);

  a3[4] = v39;
  return swift_endAccess();
}

void sub_21D7EB0E8(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5CD50);
  MEMORY[0x28223BE20](v4);
  v8 = (&v40 - v7);
  v9 = *a1;
  v10 = MEMORY[0x277D84F90];
  v62 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v48 = v5;
    v12 = 0;
    v49 = v9;
    v13 = (v9 + 32);
    v47 = (v6 + 88);
    v46 = *MEMORY[0x277D450E0];
    v42 = *MEMORY[0x277D450E8];
    v41 = *MEMORY[0x277D450D8];
    v40 = (v6 + 8);
    v44 = (v6 + 96);
    v50 = v11 - 1;
    v45 = xmmword_21DC09CF0;
    v51 = xmmword_21DC08D00;
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      v14 = v13[1];
      v15 = v13[2];
      v16 = v13[3];
      v61 = v13[4];
      v17 = *v13;
      v59 = v15;
      v60 = v16;
      v57 = v17;
      v58 = v14;
      v18 = *(&v61 + 1);
      if (*(&v61 + 1))
      {
        v19 = v61;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
        v20 = swift_allocObject();
        *(v20 + 16) = v51;
        *(v20 + 32) = v19;
        *(v20 + 40) = v18;
        v21 = *(&v60 + 1);
        if (!*(&v60 + 1))
        {
          goto LABEL_8;
        }
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        v21 = *(&v60 + 1);
        if (!*(&v60 + 1))
        {
LABEL_8:
          v23 = MEMORY[0x277D84F90];
          if (*(v20 + 16))
          {
            goto LABEL_10;
          }

          goto LABEL_9;
        }
      }

      v22 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE63980);
      v23 = swift_allocObject();
      *(v23 + 16) = v51;
      *(v23 + 32) = v22;
      *(v23 + 40) = v21;
      if (*(v20 + 16))
      {
        goto LABEL_10;
      }

LABEL_9:
      if (!*(v23 + 16))
      {
        sub_21D1D9B34(&v57, &v52);
        sub_21DBF8E0C();
        sub_21DBF8E0C();

LABEL_20:
        sub_21D1D9B90(&v57);
        goto LABEL_27;
      }

LABEL_10:
      v24 = objc_allocWithZone(MEMORY[0x277D445D8]);
      sub_21D1D9B34(&v57, &v52);
      sub_21DBF8E0C();
      sub_21DBF8E0C();
      v25 = sub_21DBFA5DC();

      v26 = sub_21DBFA5DC();

      v27 = [v24 initWithPhones:v25 emails:v26];

      if (!v27)
      {
        goto LABEL_20;
      }

      __swift_project_boxed_opaque_existential_1((v2 + 40), *(v2 + 64));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CE5E450);
      v28 = swift_allocObject();
      *(v28 + 16) = v45;
      *(v28 + 32) = [objc_opt_self() descriptorForRequiredKeysWithThreeDTouchEnabled_];
      sub_21DBF6A7C();

      v29 = v48;
      v30 = (*v47)(v8, v48);
      if (v30 == v46)
      {
        (*v44)(v8, v29);

        MEMORY[0x223D42D80](v31);
        if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
        v43 = v63;
        v54 = v59;
        v55 = v60;
        v56 = v61;
        v53 = v58;
        v52 = v57;
        v32 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v52);
        sub_21D1D9B90(&v57);
        v33 = v32;
        MEMORY[0x223D42D80]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

      else
      {
        if (v30 == v42)
        {
          sub_21D1D9B90(&v57);
          (*v44)(v8, v29);
          v34 = *v8;
        }

        else
        {
          if (v30 != v41)
          {
            goto LABEL_36;
          }

          (*v40)(v8, v29);
          v54 = v59;
          v55 = v60;
          v56 = v61;
          v53 = v58;
          v52 = v57;
          v35 = _sSo9CNContactC15RemindersUICoreE14unknownContact11participantAbC19TTRParticipantModelV_tFZ_0(&v52);
          sub_21D1D9B90(&v57);
          v34 = v35;
        }

        v36 = v34;
        MEMORY[0x223D42D80]();
        if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21DBFA63C();
        }

        sub_21DBFA6CC();
      }

LABEL_27:
      if (v50 == v12)
      {
        v10 = MEMORY[0x277D84F90];
        v37 = v43;
        if (v43 >> 62)
        {
          goto LABEL_34;
        }

LABEL_31:
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

LABEL_35:

        *&v57 = v10;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C98);
        swift_allocObject();
        sub_21DBF824C();
        return;
      }

      ++v12;
      v13 += 5;
      if (v12 >= *(v49 + 16))
      {
        __break(1u);
LABEL_36:
        if (qword_27CE56CE0 != -1)
        {
          swift_once();
        }

        v38 = sub_21DBF84BC();
        __swift_project_value_buffer(v38, qword_27CE61C10);
        v39 = MEMORY[0x277D84F90];
        sub_21D17716C(MEMORY[0x277D84F90]);
        sub_21D17716C(v39);
        sub_21DAEAB00("Unknown contact status type", 27, 2);
        __break(1u);
        return;
      }
    }
  }

  v37 = MEMORY[0x277D84F90];
  if (!(MEMORY[0x277D84F90] >> 62))
  {
    goto LABEL_31;
  }

LABEL_34:
  if (!sub_21DBFBD7C())
  {
    goto LABEL_35;
  }

LABEL_32:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE60918);
  *&v57 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D38);
  sub_21D0D0F1C(&qword_27CE61D40, &qword_27CE61D38);
  sub_21DBF819C();
}

uint64_t sub_21D7EB8A8(char **a1, void *a2, uint64_t *a3)
{
  v4 = *a1;
  if (*a1 >> 62)
  {
    v6 = *a1;
    v7 = a3;
    result = sub_21DBFBD7C();
    a3 = v7;
    v4 = v6;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  return sub_21D7EAC70(*a3, v4, a2);
}

uint64_t TTRAccountsListsPresenterCapability.deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);
  return v0;
}

uint64_t TTRAccountsListsPresenterCapability.__deallocating_deinit()
{
  sub_21D157444(v0 + 16);

  __swift_destroy_boxed_opaque_existential_0(v0 + 40);

  return swift_deallocClassInstance();
}

void *sub_21D7EB9A4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget;
  v3 = *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget);
  v4 = *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget + 8);
  v5 = v3;
  if (v4 == 255)
  {
    v5 = sub_21D7EBA40(v1);
    v6 = *v2;
    *v2 = v5;
    v7 = *(v2 + 8);
    *(v2 + 8) = v8;
    sub_21D157850(v5, v8);
    sub_21D195308(v6, v7);
  }

  sub_21D1952F4(v3, v4);
  return v5;
}

uint64_t sub_21D7EBA40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  sub_21D0D3954(a1 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &v13 - v3, &qword_27CE5A490);
  v5 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    result = 0;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        sub_21D101390(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        return 1;
      case 2:
      case 3:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
        sub_21D101390(v4, type metadata accessor for TTRAccountsListsViewModel.Item);
        return 0;
      case 4:
        v10 = *(v4 + 2);
        sub_21DA1CE20(v10, &v13);
        if (v14 == 255)
        {
          goto LABEL_18;
        }

        if (!v14)
        {
          v11 = v13;

          return v11;
        }

        sub_21D103A34(v13, v14);
LABEL_18:

        goto LABEL_19;
      case 7:
        v8 = *(v4 + 6);
        sub_21DA1CE20(v8, &v13);
        if (v14 == 1 || v14 == 4)
        {
          v12 = v13;

          return v12;
        }

        if (v14 != 255)
        {
          sub_21D103A34(v13, v14);
        }

LABEL_19:

        break;
      case 15:
      case 16:
        return result;
      default:
        v9 = sub_21DBF56BC();
        (*(*(v9 - 8) + 8))(v4, v9);
        return 0;
    }
  }

  return 0;
}

uint64_t sub_21D7EBCDC(uint64_t a1)
{
  v86 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v2 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v81 = &v79 - v5;
  MEMORY[0x28223BE20](v6);
  v79 = &v79 - v7;
  v8 = type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v82 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A498);
  MEMORY[0x28223BE20](v85);
  v12 = &v79 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v79 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4A0);
  MEMORY[0x28223BE20](v16 - 8);
  v83 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v79 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v79 - v22;
  v84 = a1;
  TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(&v79 - v22);
  v24 = *(v9 + 56);
  v24(v23, 0, 1, v8);
  sub_21D0D3954(v87 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v15, &qword_27CE5A490);
  if ((*(v2 + 48))(v15, 1, v86) == 1)
  {
    sub_21D0CF7E0(v15, &qword_27CE5A490);
    v25 = 1;
  }

  else
  {
    TTRAccountsListsViewModel.Item.treeItemIdentifier.getter(v20);
    sub_21D101390(v15, type metadata accessor for TTRAccountsListsViewModel.Item);
    v25 = 0;
  }

  v24(v20, v25, 1, v8);
  v26 = *(v85 + 48);
  sub_21D0D3954(v23, v12, &qword_27CE5A4A0);
  sub_21D0D3954(v20, &v12[v26], &qword_27CE5A4A0);
  v27 = *(v9 + 48);
  if (v27(v12, 1, v8) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5A4A0);
    sub_21D0CF7E0(v23, &qword_27CE5A4A0);
    if (v27(&v12[v26], 1, v8) == 1)
    {
      sub_21D0CF7E0(v12, &qword_27CE5A4A0);
      return 0;
    }

    goto LABEL_9;
  }

  v29 = v83;
  sub_21D0D3954(v12, v83, &qword_27CE5A4A0);
  if (v27(&v12[v26], 1, v8) == 1)
  {
    sub_21D0CF7E0(v20, &qword_27CE5A4A0);
    sub_21D0CF7E0(v23, &qword_27CE5A4A0);
    sub_21D101390(v29, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
LABEL_9:
    sub_21D0CF7E0(v12, &qword_27CE5A498);
    goto LABEL_10;
  }

  v37 = v82;
  sub_21D7F4090(&v12[v26], v82, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  v38 = _s15RemindersUICore25TTRAccountsListsViewModelC14ItemIdentifierO2eeoiySbAE_AEtFZ_0(v29, v37);
  sub_21D101390(v37, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v20, &qword_27CE5A4A0);
  sub_21D0CF7E0(v23, &qword_27CE5A4A0);
  sub_21D101390(v29, type metadata accessor for TTRAccountsListsViewModel.ItemIdentifier);
  sub_21D0CF7E0(v12, &qword_27CE5A4A0);
  if (v38)
  {
    return 0;
  }

LABEL_10:
  v30 = v87;
  v31 = sub_21D7EB9A4();
  v33 = v31;
  if (!v32)
  {
    v39 = v84;
    v40 = v80;
    sub_21D0FE6CC(v84, v80, type metadata accessor for TTRAccountsListsViewModel.Item);
    if (swift_getEnumCaseMultiPayload() == 7)
    {

      goto LABEL_26;
    }

    sub_21D101390(v40, type metadata accessor for TTRAccountsListsViewModel.Item);
    TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v39, &v88);
    v43 = BYTE8(v88);
    if (BYTE8(v88) == 255)
    {
LABEL_26:
      v48 = v33;
      v49 = 0;
LABEL_32:
      sub_21D157478(v48, v49);
      return 0;
    }

    v44 = v88;
    v45 = [v88 accountID];
    sub_21D0D8CF0(0, &qword_280D17680);
    v46 = [v33 accountID];
    v47 = sub_21DBFB63C();

    if (v47)
    {
      if (v43)
      {
        sub_21D157478(v33, 0);
        sub_21D157864(v44, v43);
        return 2;
      }

      v56 = [v44 canBeIncludedInGroup];
      sub_21D157478(v33, 0);
      sub_21D157864(v44, v43);
      if (v56)
      {
        return 2;
      }
    }

    else
    {
      sub_21D157478(v33, 0);
      sub_21D157864(v44, v43);
    }

    return 0;
  }

  v34 = v84;
  if (v32 == 1)
  {
    v35 = v81;
    sub_21D0FE6CC(v84, v81, type metadata accessor for TTRAccountsListsViewModel.Item);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
      case 2u:
      case 3u:
      case 4u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xBu:
      case 0xCu:
      case 0xDu:
      case 0xEu:
        sub_21D157478(v33, 1u);
        v36 = v35;
        goto LABEL_21;
      case 5u:
      case 6u:
      case 7u:
        sub_21D101390(v35, type metadata accessor for TTRAccountsListsViewModel.Item);
        TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v34, &v88);
        v50 = BYTE8(v88);
        if (BYTE8(v88) == 255)
        {
          goto LABEL_31;
        }

        v51 = v88;
        v52 = [v33 objectID];
        v53 = TTRAccountsListsViewModel.allowedInsertionIndicesInAccount(_:)(v52);
        v55 = *(v30 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
        if (v55 >= v53 && v54 >= v55)
        {
          sub_21D0D8CF0(0, &qword_280D17680);
          if (v50)
          {
            v72 = [v51 accountID];
            v73 = [v33 objectID];
            v74 = sub_21DBFB63C();
            sub_21D157478(v33, 1u);

            sub_21D157864(v51, v50);
          }

          else
          {
            v75 = [v51 account];
            v76 = [v75 objectID];

            v77 = [v33 objectID];
            v74 = sub_21DBFB63C();
            sub_21D157478(v33, 1u);

            sub_21D157864(v51, v50);
          }

          if (v74)
          {
            return 2;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          sub_21D157478(v33, 1u);

          sub_21D157864(v51, v50);
          return 0;
        }

      case 0xFu:
      case 0x10u:
LABEL_31:
        v48 = v33;
        v49 = 1;
        goto LABEL_32;
      default:
        sub_21D157478(v33, 1u);
        v70 = sub_21DBF56BC();
        (*(*(v70 - 8) + 8))(v35, v70);
        return 0;
    }
  }

  if (!v31)
  {
    return 0;
  }

  v41 = v79;
  sub_21D0FE6CC(v84, v79, type metadata accessor for TTRAccountsListsViewModel.Item);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
    case 2:
    case 4:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
      v36 = v41;
LABEL_21:
      sub_21D101390(v36, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 0;
    case 3:
      sub_21D101390(v41, type metadata accessor for TTRAccountsListsViewModel.Item);
      return 2;
    case 5:
    case 6:
      v57 = *(v41 + 217);
      v58 = *(v41 + 216);
      v59 = *(v41 + 148);
      v60 = *(v41 + 147);
      v61 = *(v41 + 146);
      v62 = *(v41 + 145);
      v63 = *(v41 + 144);
      v64 = *(v41 + 120);
      v66 = *(v41 + 40);
      v65 = *(v41 + 48);
      v67 = *(v41 + 16);
      v88 = *v41;
      v89 = v67;
      v90 = *(v41 + 24);
      v91 = v66;
      v92 = v65;
      v68 = *(v41 + 72);
      v93 = *(v41 + 56);
      v94 = v68;
      v69 = *(v41 + 104);
      v95 = *(v41 + 88);
      v96 = v69;
      v97 = v64;
      v98 = *(v41 + 128);
      v99 = v63;
      v100 = v62;
      v101 = v61;
      v102 = v60;
      v103 = v59;
      v104 = *(v41 + 152);
      v105 = *(v41 + 168);
      v106 = *(v41 + 184);
      v107 = *(v41 + 200);
      v108 = v58;
      v109 = v57;
      if (*(v30 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_containerIsInEditMode) != 1 || v61 == 2)
      {
        sub_21D1077D8(&v88);
        return 0;
      }

      if (v61)
      {
        sub_21D1077D8(&v88);
        return 2;
      }

      v78 = TTRAccountsListsViewModel.exceedsMaximumNumberOfPinnedListsAdding(count:)(1);
      sub_21D1077D8(&v88);
      if (v78)
      {
        result = 1;
      }

      else
      {
        result = 2;
      }

      break;
    case 15:
    case 16:
      return result;
    default:
      v71 = sub_21DBF56BC();
      (*(*(v71 - 8) + 8))(v41, v71);
      return 0;
  }

  return result;
}

uint64_t sub_21D7EC94C()
{
  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, &qword_27CE5A490);

  sub_21D0D0E88(*(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter));
  sub_21D195308(*(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget), *(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest____lazy_storage___creationTarget + 8));

  return swift_deallocClassInstance();
}

uint64_t sub_21D7ECA9C(uint64_t a1)
{
  v2 = v1;
  v58 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v44 - v5;
  v55 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v48 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v47 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v44 - v9;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE58848);
  v10 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = v44 - v13;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59B20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21DC08D00;
  *(inited + 32) = sub_21D7F4030;
  *(inited + 40) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = (v17 + 16);
  v19 = swift_allocObject();
  swift_weakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;
  *(v20 + 24) = v17;
  v50 = a1;
  sub_21DBF8E0C();

  v46 = v17;

  v21 = sub_21D21455C(1, 2, 1, inited);
  v22 = v21;
  v21[2] = 2;
  v21[6] = sub_21D7F4088;
  v21[7] = v20;
  v23 = (*(v2 + 32) + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_additionalSubjectFilter);
  v24 = *v23;
  if (*v23)
  {
    v49 = v10;
    v25 = v23[1];
    v26 = v21[3];

    if (v26 <= 5)
    {
      v22 = sub_21D21455C((v26 > 1), 3, 1, v22);
    }

    v22[2] = 3;
    v22[8] = v24;
    v22[9] = v25;
    v10 = v49;
  }

  sub_21D7EF34C(v50, *(v50 + 16) == 0, v22, v56);
  v27 = v56[0];
  v28 = v57;
  swift_beginAccess();
  *(v2 + 24) = v27;
  swift_beginAccess();
  v29 = *v18;
  swift_beginAccess();
  *(v2 + 25) = v29;
  swift_beginAccess();
  *(v2 + 16) = v28;

  v30 = *(v2 + 16);
  v31 = *(v30 + 16);
  if (v31)
  {
    v44[2] = v22;
    v44[3] = v20;
    v44[4] = v15;
    v45 = v2;
    v32 = v30 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v50 = v10[9];
    v49 = (v48 + 56);
    v33 = (v48 + 48);
    v44[1] = v30;
    sub_21DBF8E0C();
    v34 = MEMORY[0x277D84F90];
    v35 = v47;
    do
    {
      v36 = v6;
      v37 = v52;
      sub_21D0D3954(v32, v52, &qword_27CE58848);
      v38 = v51;
      sub_21D0D523C(v37, v51, &qword_27CE58848);
      LODWORD(v37) = *(v38 + *(v53 + 48));
      sub_21D7F4090(v38, v35, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (v37 == 1)
      {
        v6 = v36;
        sub_21D7F4090(v35, v36, type metadata accessor for TTRAccountsListsViewModel.Item);
        v39 = 0;
      }

      else
      {
        sub_21D101390(v35, type metadata accessor for TTRAccountsListsViewModel.Item);
        v39 = 1;
        v6 = v36;
      }

      v40 = v55;
      (*v49)(v6, v39, 1, v55);
      if ((*v33)(v6, 1, v40) == 1)
      {
        sub_21D0CF7E0(v6, &qword_27CE5A490);
      }

      else
      {
        sub_21D7F4090(v6, v54, type metadata accessor for TTRAccountsListsViewModel.Item);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_21D103C5C(0, v34[2] + 1, 1, v34);
        }

        v42 = v34[2];
        v41 = v34[3];
        if (v42 >= v41 >> 1)
        {
          v34 = sub_21D103C5C(v41 > 1, v42 + 1, 1, v34);
        }

        v34[2] = v42 + 1;
        sub_21D7F4090(v54, v34 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v42, type metadata accessor for TTRAccountsListsViewModel.Item);
        v35 = v47;
      }

      v32 += v50;
      --v31;
    }

    while (v31);

    v2 = v45;
  }

  else
  {

    v34 = MEMORY[0x277D84F90];
  }

  *(v2 + 40) = v34;
}

double sub_21D7ED208(uint64_t a1)
{
  *(a1 + 224) = 0;
  result = 0.0;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void sub_21D7ED27C(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
  }
}

void *TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateParamsForSaving()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB0);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = (&v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v73 = (&v65 - v7);
  v8 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v69 = &v65 - v11;
  v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v12 - 8);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v71 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
  v78 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CB8);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v65 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v77 = &v65 - v30;
  result = sub_21D7EB9A4();
  v33 = result;
  if (v32)
  {
    if (v32 == 1)
    {
      sub_21D7EDCD8(v2, v79);
      v34 = v79[0];
      if (v79[0])
      {
        goto LABEL_6;
      }

      v44 = v33;
      v45 = 1;
      goto LABEL_14;
    }

    if (!result)
    {
LABEL_15:
      v46 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
      v38 = *(*(v46 - 8) + 56);
      v41 = v46;
      v39 = a1;
      v40 = 1;
      goto LABEL_16;
    }

    v65 = v29;
    v66 = v28;
    v67 = v27;
    v68 = a1;
    if (!*(v2 + 40))
    {
      __break(1u);
      return result;
    }

    v79[0] = *(v2 + 40);
    sub_21DBF8E0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60);
    type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
    sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60);
    v42 = sub_21DBFA43C();

    if (!v42)
    {
LABEL_31:
      v60 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
      return (*(*(v60 - 8) + 56))(v68, 1, 1, v60);
    }

    sub_21D7EE19C(v24);
    if ((*(v78 + 48))(v24, 1, v16))
    {

      sub_21D0CF7E0(v24, &qword_27CE5A4E8);
      v43 = v67;
      (*(v65 + 56))(v67, 1, 1, v66);
LABEL_30:
      sub_21D0CF7E0(v43, &qword_27CE61CB8);
      goto LABEL_31;
    }

    sub_21D0D3954(v24, v21, &qword_27CE5A500);
    sub_21D0CF7E0(v24, &qword_27CE5A4E8);
    sub_21D0D3954(v21, v18, &qword_27CE5A500);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v65;
    v48 = v66;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v55 = v71;
        sub_21D7F4090(v18, v71, type metadata accessor for TTRAccountsListsViewModel.Item);
        v51 = v73;
        sub_21D7EE550(v55, v73);
        sub_21D101390(v55, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0CF7E0(v21, &qword_27CE5A500);
        v56 = (*(v75 + 48))(v51, 1, v76);
        v43 = v67;
        if (v56 != 1)
        {
          v58 = v51;
          v59 = v69;
          sub_21D7F4090(v58, v69, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          sub_21D7F4090(v59, v43, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          goto LABEL_27;
        }
      }

      else
      {
        v50 = v72;
        sub_21D7F4090(v18, v72, type metadata accessor for TTRAccountsListsViewModel.Item);
        v51 = v74;
        sub_21D7EE550(v50, v74);
        sub_21D101390(v50, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D0CF7E0(v21, &qword_27CE5A500);
        v52 = (*(v75 + 48))(v51, 1, v76);
        v43 = v67;
        if (v52 != 1)
        {
          v53 = v51;
          v54 = v70;
          sub_21D7F4090(v53, v70, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
          sub_21D7F4090(v54, v43, type metadata accessor for TTRAccountsListsViewModel.PinnedList);
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v57 = 0;
          goto LABEL_28;
        }
      }

      sub_21D0CF7E0(v51, &qword_27CE61CB0);
      v57 = 1;
LABEL_28:
      (*(v49 + 56))(v43, v57, 1, v48);
      if ((*(v49 + 48))(v43, 1, v48) != 1)
      {
        v61 = v77;
        sub_21D0D523C(v43, v77, &qword_27CE61CC0);
        v62 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
        v63 = v68;
        *v68 = v42;
        sub_21D0D523C(v61, v63 + v62, &qword_27CE61CC0);
        v64 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
        swift_storeEnumTagMultiPayload();
        return (*(*(v64 - 8) + 56))(v63, 0, 1, v64);
      }

      goto LABEL_30;
    }

    sub_21D0CF7E0(v21, &qword_27CE5A500);
    v43 = v67;
    goto LABEL_27;
  }

  sub_21D7EDCD8(v2, v79);
  v34 = v79[0];
  if (!v79[0])
  {
    v44 = v33;
    v45 = 0;
LABEL_14:
    sub_21D157478(v44, v45);
    goto LABEL_15;
  }

LABEL_6:
  v35 = v80;
  v36 = v79[1];
  *a1 = v34;
  *(a1 + 8) = v33;
  *(a1 + 16) = v36;
  *(a1 + 24) = v35;
  v37 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(0);
  swift_storeEnumTagMultiPayload();
  v38 = *(*(v37 - 8) + 56);
  v39 = a1;
  v40 = 0;
  v41 = v37;
LABEL_16:

  return v38(v39, v40, 1, v41);
}

void sub_21D7EDCD8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v3 - 8);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A500);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26 - v15;
  if (!*(a1 + 40))
  {
    __break(1u);
    return;
  }

  v30 = *(a1 + 40);
  sub_21DBF8E0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61C60);
  sub_21D0D0F1C(&qword_27CE61C68, &qword_27CE61C60);
  v17 = sub_21DBFA43C();

  if (v17)
  {
    sub_21D7EE19C(v16);
    if ((*(v8 + 48))(v16, 1, v7))
    {

      sub_21D0CF7E0(v16, &qword_27CE5A4E8);
      goto LABEL_5;
    }

    sub_21D0D3954(v16, v13, &qword_27CE5A500);
    sub_21D0CF7E0(v16, &qword_27CE5A4E8);
    sub_21D0D3954(v13, v10, &qword_27CE5A500);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_21D0CF7E0(v13, &qword_27CE5A500);
        v21 = 0;
        v32 = 0;
        v22 = 2;
      }

      else
      {
        sub_21D0CF7E0(v13, &qword_27CE5A500);
        v32 = 0;
        v22 = 2;
        v21 = 1;
      }

      goto LABEL_16;
    }

    if (EnumCaseMultiPayload)
    {
      v23 = v27;
      sub_21D7F4090(v10, v27, type metadata accessor for TTRAccountsListsViewModel.Item);

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v23, &v30);

      sub_21D101390(v23, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v13, &qword_27CE5A500);
      v21 = v30;
      if (v31 != 255)
      {
        v32 = v31 & 1;
        v22 = 1;
        goto LABEL_16;
      }
    }

    else
    {
      v20 = v28;
      sub_21D7F4090(v10, v28, type metadata accessor for TTRAccountsListsViewModel.Item);

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(v20, &v30);

      sub_21D101390(v20, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0CF7E0(v13, &qword_27CE5A500);
      v21 = v30;
      if (v31 != 255)
      {
        v22 = 0;
        v32 = v31 & 1;
LABEL_16:
        v24 = v32 | (v22 << 8);
        v25 = v29;
        *v29 = v17;
        v25[1] = v21;
        *(v25 + 8) = v24;
        return;
      }
    }

    sub_21D157864(v21, 255);
  }

LABEL_5:
  v18 = v29;
  *v29 = 0;
  v18[1] = 0;
  *(v18 + 8) = 0;
}

uint64_t sub_21D7EE19C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition;
  swift_beginAccess();
  sub_21D0D3954(v1 + v14, v13, &qword_27CE61CD0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A4E8);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v13, 1, v15) != 1)
  {
    return sub_21D0D523C(v13, v26, &qword_27CE5A4E8);
  }

  sub_21D0CF7E0(v13, &qword_27CE61CD0);
  v17 = *(v1 + 32);
  sub_21D0D3954(v17 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v4, &qword_27CE5A490);
  v18 = *(v17 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
  v19 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
  sub_21D0F02F4(v4, v7, &qword_27CE5A490);
  *&v7[*(v5 + 36)] = v18;
  v20 = *(v1 + 40);
  sub_21DBF8E0C();

  v21 = v10;
  v22 = v26;
  v25 = v1;
  sub_21D26A678(v7, v20, v26);

  sub_21D0CF7E0(v7, &qword_27CE59A08);
  sub_21D0D3954(v22, v21, &qword_27CE5A4E8);
  (*(v16 + 56))(v21, 0, 1, v15);
  v23 = v25;
  swift_beginAccess();
  sub_21D0F02F4(v21, v23 + v14, &qword_27CE61CD0);
  return swift_endAccess();
}

uint64_t sub_21D7EE550@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v29[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
  sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 3u:
      sub_21D7F4090(v6, a2, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      v26 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      goto LABEL_11;
    case 5u:
    case 6u:
      v9 = v6[217];
      v10 = v6[216];
      v11 = v6[148];
      v12 = v6[147];
      v13 = v6[146];
      v14 = v6[145];
      v15 = v6[144];
      v16 = v6[120];
      v18 = *(v6 + 5);
      v17 = *(v6 + 6);
      v19 = *(v6 + 2);
      v28 = *v6;
      *v29 = v19;
      *&v29[8] = *(v6 + 24);
      *&v29[24] = v18;
      *v30 = v17;
      *&v30[8] = *(v6 + 56);
      *&v30[24] = *(v6 + 72);
      *&v30[40] = *(v6 + 88);
      *&v30[56] = *(v6 + 104);
      v30[72] = v16;
      v31 = *(v6 + 8);
      v32[0] = v15;
      v32[1] = v14;
      v32[2] = v13;
      v32[3] = v12;
      v32[4] = v11;
      *&v32[8] = *(v6 + 152);
      *&v32[24] = *(v6 + 168);
      *&v32[40] = *(v6 + 184);
      *&v32[56] = *(v6 + 200);
      v32[72] = v10;
      v32[73] = v9;
      if (v13 == 2 || (v13 & 1) == 0)
      {
        sub_21D1077D8(&v28);
LABEL_3:
        v7 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
        return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
      }

      else
      {
        v20 = *&v32[32];
        a2[10] = *&v32[16];
        a2[11] = v20;
        a2[12] = *&v32[48];
        *(a2 + 202) = *&v32[58];
        v21 = *&v30[64];
        a2[6] = *&v30[48];
        a2[7] = v21;
        v22 = *v32;
        a2[8] = v31;
        a2[9] = v22;
        v23 = *v30;
        a2[2] = *&v29[16];
        a2[3] = v23;
        v24 = *&v30[32];
        a2[4] = *&v30[16];
        a2[5] = v24;
        v25 = *v29;
        *a2 = v28;
        a2[1] = v25;
        v26 = type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        return (*(*(v26 - 8) + 56))(a2, 0, 1, v26);
      }

    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v27 = sub_21DBF56BC();
      (*(*(v27 - 8) + 8))(v6, v27);
      goto LABEL_3;
  }
}

Swift::OpaquePointer_optional __swiftcall TTRAccountsListsPresenterCapability.RemindersInsertionPlan.generateOptimisticMoves()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE5A490);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE59A08);
  MEMORY[0x28223BE20](v4);
  v8 = &v14 - v7;
  v9 = *(v0 + 40);
  if (v9)
  {
    v10 = *(v0 + 32);
    sub_21D0D3954(v10 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_parent, v3, &qword_27CE5A490);
    v11 = *(v10 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_childIndex);
    v12 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);

    sub_21DBF8E0C();
    sub_21D0F02F4(v3, v8, &qword_27CE5A490);
    *&v8[*(v4 + 36)] = v11;
    v13 = sub_21D26EEBC(v9, v8);

    sub_21D0CF7E0(v8, &qword_27CE59A08);
    v5 = v13;
  }

  else
  {
    __break(1u);
  }

  result.value._rawValue = v5;
  result.is_nil = v6;
  return result;
}

uint64_t sub_21D7EEA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, a2);
}

uint64_t sub_21D7EEA9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v4);
  v6 = (v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_21D0FE6CC(a1, v6, type metadata accessor for TTRAccountsListsViewModel.Item);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
    case 2u:
    case 4u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xBu:
    case 0xCu:
    case 0xDu:
    case 0xEu:
      sub_21D101390(v6, type metadata accessor for TTRAccountsListsViewModel.Item);
      goto LABEL_3;
    case 3u:
      sub_21D7F4090(v6, a2, type metadata accessor for TTRAccountsListsViewModel.SmartList);
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      swift_storeEnumTagMultiPayload();
      v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
      swift_storeEnumTagMultiPayload();
      return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
    case 5u:
      v23 = v6[5];
      v45 = v6[4];
      v46 = v23;
      v24 = v6[3];
      v43 = v6[2];
      v44 = v24;
      v25 = v6[9];
      v49 = v6[8];
      v50 = v25;
      v26 = v6[7];
      v47 = v6[6];
      v48 = v26;
      *(v53 + 10) = *(v6 + 202);
      v27 = v6[12];
      v52 = v6[11];
      v53[0] = v27;
      v51 = v6[10];
      v28 = v6[1];
      v41 = *v6;
      v42 = v28;

      TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, v39);

      v29 = BYTE8(v39[0]);
      if (BYTE8(v39[0]) == 255)
      {
        goto LABEL_12;
      }

      v30 = *&v39[0];
      if (BYTE8(v39[0]))
      {
        sub_21D157864(*&v39[0], SBYTE8(v39[0]));
LABEL_12:
        sub_21D1077D8(&v41);
LABEL_3:
        v7 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        return (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
      }

      if ([*&v39[0] isPinned])
      {
        sub_21D157864(v30, v29);
        goto LABEL_18;
      }

      sub_21D1077D8(&v41);
      *a2 = v30;
      *(a2 + 8) = 0;
      goto LABEL_20;
    case 6u:
      v9 = v6[3];
      v10 = v6[5];
      v45 = v6[4];
      v46 = v10;
      v11 = v6[3];
      v12 = v6[1];
      v43 = v6[2];
      v44 = v11;
      v13 = v6[7];
      v14 = v6[9];
      v49 = v6[8];
      v50 = v14;
      v15 = v6[7];
      v16 = v6[5];
      v47 = v6[6];
      v48 = v15;
      *(v53 + 10) = *(v6 + 202);
      v17 = v6[11];
      v53[0] = v6[12];
      v18 = v6[11];
      v19 = v6[9];
      v51 = v6[10];
      v52 = v18;
      v20 = v6[1];
      v41 = *v6;
      v42 = v20;
      v39[10] = v51;
      v39[11] = v17;
      v40[0] = v6[12];
      *(v40 + 10) = *(v6 + 202);
      v39[6] = v47;
      v39[7] = v13;
      v39[8] = v49;
      v39[9] = v19;
      v39[2] = v43;
      v39[3] = v9;
      v39[4] = v45;
      v39[5] = v16;
      v39[0] = v41;
      v39[1] = v12;

      v21 = TTRAccountsListsViewModel.remSmartList(for:)(v39);

      if (v21)
      {
        if ([v21 isPinned])
        {

LABEL_18:
          v33 = v52;
          *(a2 + 160) = v51;
          *(a2 + 176) = v33;
          *(a2 + 192) = v53[0];
          *(a2 + 202) = *(v53 + 10);
          v34 = v48;
          *(a2 + 96) = v47;
          *(a2 + 112) = v34;
          v35 = v50;
          *(a2 + 128) = v49;
          *(a2 + 144) = v35;
          v36 = v44;
          *(a2 + 32) = v43;
          *(a2 + 48) = v36;
          v37 = v46;
          *(a2 + 64) = v45;
          *(a2 + 80) = v37;
          v38 = v42;
          *a2 = v41;
          *(a2 + 16) = v38;
          type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
          swift_storeEnumTagMultiPayload();
          v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        }

        else
        {
          sub_21D1077D8(&v41);
          *a2 = v21;
          *(a2 + 8) = 1;
LABEL_20:
          v22 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        }

        swift_storeEnumTagMultiPayload();
        type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        return (*(*(v22 - 8) + 56))(a2, 0, 1, v22);
      }

      else
      {
        v32 = type metadata accessor for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.PinnableListMoveSubject(0);
        (*(*(v32 - 8) + 56))(a2, 1, 1, v32);
        return sub_21D1077D8(&v41);
      }

    case 0xFu:
    case 0x10u:
      goto LABEL_3;
    default:
      v31 = sub_21DBF56BC();
      (*(*(v31 - 8) + 8))(v6, v31);
      goto LABEL_3;
  }
}

uint64_t sub_21D7EEF4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v6 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_15;
  }

  v14 = *(*(result + 32) + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapabilityP33_8A89D2A718AD2C10AB9E066540BACB2625RemindersInsertionRequest_viewModel);

  TTRAccountsListsViewModel.listOrCustomSmartList(for:)(a1, &v27);
  v15 = v28;
  if (v28 == 255)
  {
LABEL_14:

LABEL_15:
    v24 = 0;
    goto LABEL_16;
  }

  v25[1] = v14;
  v16 = v27;
  if (v28)
  {
    sub_21D157864(v27, v28);
    goto LABEL_14;
  }

  v17 = [v27 parentListID];
  sub_21D157864(v16, v15);
  v26 = v17;
  if (!v17)
  {
    goto LABEL_14;
  }

  v25[0] = a3;
  v18 = *(a2 + 16);
  if (v18)
  {
    v19 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v20 = *(v7 + 72);
    do
    {
      sub_21D0FE6CC(v19, v12, type metadata accessor for TTRAccountsListsViewModel.Item);
      sub_21D0FE6CC(v12, v9, type metadata accessor for TTRAccountsListsViewModel.Item);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v21 = *(v9 + 6);

        sub_21D0D8CF0(0, &qword_280D17880);
        v22 = v26;
        v23 = sub_21DBFB63C();
        sub_21D101390(v12, type metadata accessor for TTRAccountsListsViewModel.Item);

        if (v23)
        {

          v24 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        sub_21D101390(v9, type metadata accessor for TTRAccountsListsViewModel.Item);
        sub_21D101390(v12, type metadata accessor for TTRAccountsListsViewModel.Item);
      }

      v19 += v20;
      --v18;
    }

    while (v18);
  }

  v24 = 0;
LABEL_18:
  a3 = v25[0];
LABEL_16:
  *a3 = v24;
  return result;
}

uint64_t sub_21D7EF264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result && (, v7 = sub_21D7EBCDC(a1), , result = , v7 != 2))
  {
    swift_beginAccess();
    v9 = *(a2 + 16) | v7;
    result = swift_beginAccess();
    *(a2 + 16) = v9 & 1;
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_21D7EF34C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for TTRAccountsListsViewModel.Item(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D48);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - v15;
  v17 = sub_21DBF5B9C();
  v31 = *(v17 - 8);
  v32 = v17;
  MEMORY[0x28223BE20](v17);
  v34 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21DBF5B8C();
  v33 = a1;
  if (a2)
  {
    v19 = 1;
  }

  else
  {
    v30 = a4;
    *&v36[17] = 0;
    *&v36[25] = 0;
    *&v36[9] = a1;
    sub_21DBF8E0C();
    v19 = 0;
    v35 = a3;
    v20 = a3 + 40;
    while (1)
    {
      sub_21D7E7A3C(v13);
      sub_21D0D523C(v13, v16, &qword_27CE61D48);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61D50);
      if ((*(*(v21 - 8) + 48))(v16, 1, v21) == 1)
      {
        break;
      }

      sub_21D7F4090(&v16[*(v21 + 48)], v10, type metadata accessor for TTRAccountsListsViewModel.Item);
      v22 = *(v35 + 16) + 1;
      v23 = v20;
      do
      {
        if (!--v22)
        {
          sub_21DBF5AFC();
          goto LABEL_5;
        }

        v24 = v23 + 16;
        v25 = *(v23 - 8);

        v25(v36, v10);

        v23 = v24;
      }

      while (!v36[0]);
      if (v36[0] != 1)
      {
        v19 = 1;
      }

LABEL_5:
      sub_21D101390(v10, type metadata accessor for TTRAccountsListsViewModel.Item);
    }

    a4 = v30;
  }

  v26 = v34;
  v27 = sub_21D7E7528(v33, v34);
  *a4 = v19 & 1;
  *(a4 + 8) = v27;
  return (*(v31 + 8))(v26, v32);
}

uint64_t TTRAccountsListsPresenterCapability.RemindersInsertionPlan.deinit()
{

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition, &qword_27CE61CD0);
  return v0;
}

uint64_t TTRAccountsListsPresenterCapability.RemindersInsertionPlan.__deallocating_deinit()
{

  sub_21D0CF7E0(v0 + OBJC_IVAR____TtCC15RemindersUICore35TTRAccountsListsPresenterCapability22RemindersInsertionPlan____lazy_storage___relativeInsertionPosition, &qword_27CE61CD0);

  return swift_deallocClassInstance();
}

uint64_t sub_21D7EF748(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_21DBFC59C();
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
        sub_21D0D8CF0(0, &qword_280D0C1A0);
        v6 = sub_21DBFA69C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21D7EF9D8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
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
    return sub_21D7EF85C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_21D7EF85C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 identifier];
      v11 = sub_21DBFA16C();
      v13 = v12;

      v14 = [v9 identifier];
      v15 = sub_21DBFA16C();
      v17 = v16;

      if (v15 == v11 && v17 == v13)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = sub_21DBFC64C();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_21D7EF9D8(void ***a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_106:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_109:
      v4 = *(v107 + 2);
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_143;
          }

          v6 = (v4 - 1);
          v109 = *&v107[16 * v4];
          v110 = v107;
          v111 = *&v107[16 * v4 + 24];
          sub_21D7F01D0((v108 + 8 * v109), (v108 + 8 * *&v107[16 * v4 + 16]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_132;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_21D82E300(v110);
          }

          if (v4 - 2 >= *(v110 + 2))
          {
            goto LABEL_133;
          }

          v112 = &v110[16 * v4];
          *v112 = v109;
          *(v112 + 1) = v111;
          sub_21D82E274(v4 - 1);
          v107 = v110;
          v4 = *(v110 + 2);
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_117:

      return;
    }

LABEL_139:
    v107 = sub_21D82E300(v4);
    goto LABEL_109;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 identifier];
      v5 = sub_21DBFA16C();
      v17 = v16;

      v18 = [v14 identifier];
      v19 = sub_21DBFA16C();
      v21 = v20;

      if (v19 == v5 && v21 == v17)
      {
        v127 = 0;
      }

      else
      {
        v127 = sub_21DBFC64C();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 < v122)
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 identifier];
          v5 = sub_21DBFA16C();
          v29 = v28;

          v30 = [v26 identifier];
          v31 = sub_21DBFA16C();
          v33 = v32;

          if (v31 == v5 && v33 == v29)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_25;
            }
          }

          else
          {
            v23 = sub_21DBFC64C();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_23:
        v10 = v116;
      }

      v6 = a3;
      v9 = v114;
      if (v127)
      {
LABEL_25:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_54:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_21D210B90(0, *(v60 + 2) + 1, 1, v60);
    }

    v4 = *(v9 + 2);
    v61 = *(v9 + 3);
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_21D210B90((v61 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v62;
    v63 = &v9[16 * v4];
    *(v63 + 4) = v10;
    *(v63 + 5) = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_144;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_74:
          if (v69)
          {
            goto LABEL_123;
          }

          v82 = &v9[16 * v62];
          v84 = *v82;
          v83 = *(v82 + 1);
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_126;
          }

          v88 = &v9[16 * v65 + 32];
          v90 = *v88;
          v89 = *(v88 + 1);
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_129;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_130;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v92 = &v9[16 * v62];
        v94 = *v92;
        v93 = *(v92 + 1);
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_88:
        if (v87)
        {
          goto LABEL_125;
        }

        v95 = &v9[16 * v65];
        v97 = *(v95 + 4);
        v96 = *(v95 + 5);
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_128;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_95:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
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
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v5 = v8;
        v103 = v9;
        v104 = *&v9[16 * v4 + 32];
        v105 = *&v9[16 * v65 + 40];
        sub_21D7F01D0((*v6 + 8 * v104), (*v6 + 8 * *&v9[16 * v65 + 32]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_117;
        }

        if (v105 < v104)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_21D82E300(v103);
        }

        if (v4 >= *(v103 + 2))
        {
          goto LABEL_120;
        }

        v106 = &v103[16 * v4];
        *(v106 + 4) = v104;
        *(v106 + 5) = v105;
        sub_21D82E274(v65);
        v9 = v103;
        v62 = *(v103 + 2);
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[16 * v62 + 32];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_121;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_122;
      }

      v77 = &v9[16 * v62];
      v79 = *v77;
      v78 = *(v77 + 1);
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_124;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_127;
      }

      if (v81 >= v73)
      {
        v99 = &v9[16 * v65 + 32];
        v101 = *v99;
        v100 = *(v99 + 1);
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_131;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_106;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v42)
  {
    goto LABEL_54;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_43:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 identifier];
    v5 = sub_21DBFA16C();
    v51 = v50;

    v52 = [v48 identifier];
    v53 = sub_21DBFA16C();
    v55 = v54;

    if (v53 == v5 && v55 == v51)
    {

LABEL_42:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_54;
      }

      goto LABEL_43;
    }

    v57 = sub_21DBFC64C();

    if ((v57 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
}

uint64_t sub_21D7F01D0(void **__dst, void **__src, char *a3, void **a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src - __dst;
  v7 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v7 = __src - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - __src;
  v10 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v10 = a3 - __src;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v5 = __src;
    if (a4 != __src || &__src[v11] <= a4)
    {
      v30 = a4;
      memmove(a4, __src, 8 * v11);
      a4 = v30;
    }

    v55 = &a4[v11];
    v13 = a4;
    if (v9 >= 8 && v5 > __dst)
    {
      v50 = a4;
LABEL_31:
      v54 = v5;
      v31 = v5 - 1;
      v32 = v4;
      v33 = v55;
      v52 = v31;
      do
      {
        v34 = *(v33 - 1);
        v33 -= 8;
        v35 = *v31;
        v36 = v34;
        v37 = v35;
        v38 = [v36 identifier];
        v39 = sub_21DBFA16C();
        v41 = v40;

        v42 = [v37 identifier];
        v43 = sub_21DBFA16C();
        v45 = v44;

        if (v43 == v39 && v45 == v41)
        {

          v4 = v32 - 8;
        }

        else
        {
          v47 = sub_21DBFC64C();

          v4 = v32 - 8;
          if (v47)
          {
            v13 = v50;
            if (v32 != v54)
            {
              *v4 = *v52;
            }

            if (v55 <= v50 || (v5 = v52, v52 <= __dst))
            {
              v5 = v52;
              goto LABEL_48;
            }

            goto LABEL_31;
          }
        }

        v13 = v50;
        v31 = v52;
        if (v55 != v32)
        {
          *v4 = *v33;
        }

        v55 = v33;
        v32 = v4;
      }

      while (v33 > v50);
      v55 = v33;
      v5 = v54;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v8] <= a4)
    {
      memmove(a4, __dst, 8 * v8);
    }

    v55 = &v13[v8];
    if (v6 >= 8 && __src < v4)
    {
      v14 = __src;
      v51 = v4;
      while (1)
      {
        v53 = v14;
        v15 = *v13;
        v16 = *v14;
        v17 = v15;
        v18 = [v16 identifier];
        v19 = sub_21DBFA16C();
        v21 = v20;

        v22 = [v17 identifier];
        v23 = sub_21DBFA16C();
        v25 = v24;

        v26 = v23 == v19 && v25 == v21;
        if (v26)
        {
          break;
        }

        v27 = sub_21DBFC64C();

        if ((v27 & 1) == 0)
        {
          goto LABEL_20;
        }

        v28 = v53;
        v14 = v53 + 1;
        v29 = v51;
        if (v5 != v53)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v5;
        if (v13 >= v55 || v14 >= v29)
        {
          goto LABEL_48;
        }
      }

LABEL_20:
      v28 = v13;
      v26 = v5 == v13++;
      v14 = v53;
      v29 = v51;
      if (v26)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v5 = *v28;
      goto LABEL_22;
    }
  }

LABEL_48:
  if (v5 != v13 || v5 >= (v13 + ((v55 - v13 + (v55 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v55 - v13) / 8));
  }

  return 1;
}

unint64_t sub_21D7F06A4()
{
  result = qword_27CE61CD8;
  if (!qword_27CE61CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE61CD8);
  }

  return result;
}

uint64_t destroy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1)
{

  sub_21D1078C0(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120));
  sub_21D0FB9F4(*(a1 + 128), *(a1 + 136), *(a1 + 144));
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;
  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;
  v8 = *(a2 + 72);
  v9 = *(a2 + 80);
  v10 = *(a2 + 88);
  v11 = *(a2 + 96);
  v12 = *(a2 + 104);
  v22 = *(a2 + 112);
  v21 = *(a2 + 120);
  v13 = v4;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21D0FB960(v8, v9, v10, v11, v12, v22, v21);
  *(a1 + 72) = v8;
  *(a1 + 80) = v9;
  *(a1 + 88) = v10;
  *(a1 + 96) = v11;
  *(a1 + 104) = v12;
  *(a1 + 112) = v22;
  *(a1 + 120) = v21;
  v14 = *(a2 + 128);
  v15 = *(a2 + 136);
  LOBYTE(v7) = *(a2 + 144);
  sub_21D0FB9BC(v14, v15, v7);
  *(a1 + 128) = v14;
  *(a1 + 136) = v15;
  *(a1 + 144) = v7;
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 152) = *(a2 + 152);
  v16 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v16;
  v17 = *(a2 + 192);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = v17;
  v18 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v18;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 224) = *(a2 + 224);
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  v19 = v17;
  sub_21DBF8E0C();
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  sub_21DBF8E0C();

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = *(a2 + 64);
  sub_21DBF8E0C();

  v7 = *(a2 + 72);
  v8 = *(a2 + 80);
  v9 = *(a2 + 88);
  v10 = *(a2 + 96);
  v11 = *(a2 + 104);
  v12 = *(a2 + 112);
  v13 = *(a2 + 120);
  sub_21D0FB960(v7, v8, v9, v10, v11, v12, v13);
  v14 = *(a1 + 72);
  v15 = *(a1 + 80);
  v16 = *(a1 + 88);
  v17 = *(a1 + 96);
  v18 = *(a1 + 104);
  v19 = *(a1 + 112);
  v20 = *(a1 + 120);
  *(a1 + 72) = v7;
  *(a1 + 80) = v8;
  *(a1 + 88) = v9;
  *(a1 + 96) = v10;
  *(a1 + 104) = v11;
  *(a1 + 112) = v12;
  *(a1 + 120) = v13;
  sub_21D1078C0(v14, v15, v16, v17, v18, v19, v20);
  v21 = *(a2 + 128);
  v22 = *(a2 + 136);
  LOBYTE(v9) = *(a2 + 144);
  sub_21D0FB9BC(v21, v22, v9);
  v23 = *(a1 + 128);
  v24 = *(a1 + 136);
  v25 = *(a1 + 144);
  *(a1 + 128) = v21;
  *(a1 + 136) = v22;
  *(a1 + 144) = v9;
  sub_21D0FB9F4(v23, v24, v25);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);
  sub_21DBF8E0C();

  *(a1 + 176) = *(a2 + 176);
  sub_21DBF8E0C();

  *(a1 + 184) = *(a2 + 184);
  sub_21DBF8E0C();

  v26 = *(a1 + 192);
  v27 = *(a2 + 192);
  *(a1 + 192) = v27;
  v28 = v27;

  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  sub_21DBF8E0C();

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 224) = *(a2 + 224);
  sub_21DBF8E0C();

  return a1;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  v5 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v5;

  *(a1 + 24) = *(a2 + 24);
  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  v7 = *(a2 + 64);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = v7;

  v8 = *(a2 + 120);
  v9 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 88);
  v12 = *(a1 + 96);
  v13 = *(a1 + 104);
  v14 = *(a1 + 112);
  v15 = *(a1 + 120);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = v8;
  sub_21D1078C0(v9, v10, v11, v12, v13, v14, v15);
  v16 = *(a2 + 144);
  v17 = *(a1 + 128);
  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v16;
  sub_21D0FB9F4(v17, v18, v19);
  *(a1 + 145) = *(a2 + 145);
  *(a1 + 146) = *(a2 + 146);
  *(a1 + 147) = *(a2 + 147);
  *(a1 + 148) = *(a2 + 148);
  *(a1 + 152) = *(a2 + 152);

  *(a1 + 168) = *(a2 + 168);

  v20 = *(a1 + 192);
  *(a1 + 184) = *(a2 + 184);

  v21 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v21;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 217) = *(a2 + 217);
  *(a1 + 224) = *(a2 + 224);

  return a1;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 232))
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

uint64_t storeEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ViewModelGroupCreationParams(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 232) = 1;
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

    *(result + 232) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destroy for TTRAccountsListsPresenterCapability.GroupCreationParams(id *a1)
{
}

uint64_t initializeWithCopy for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = *(a2 + 32);
  v7 = v3;
  v8 = v4;
  v9 = v5;
  sub_21DBF8E0C();
  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a2 + 8);
  v8 = *(a1 + 8);
  *(a1 + 8) = v7;
  v9 = v7;

  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a1 + 16);
  *(a1 + 16) = v10;
  *(a1 + 24) = v11;
  v13 = v10;

  *(a1 + 32) = *(a2 + 32);
  sub_21DBF8E0C();

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.GroupCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a2 + 24);
  v6 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v5;

  *(a1 + 32) = *(a2 + 32);

  return a1;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  sub_21DBF8E0C();

  v7 = *(a2 + 24);
  v8 = *(a1 + 24);
  *(a1 + 24) = v7;
  v9 = v7;

  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.CustomSmartListCreationParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v5 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

unint64_t destroy for TTRAccountsListsPresenterCapability.ListPinningParams(unint64_t *a1)
{
  result = *a1;
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_21D7F1070(uint64_t result, unint64_t *a2)
{
  v3 = *a2;
  if (*a2 >= 2)
  {
    v4 = result;
    sub_21DBF8E0C();
    result = v4;
  }

  *result = v3;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t assignWithCopy for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (v4 >= 2)
  {
    if (v5 >= 2)
    {
      *a1 = v5;
      sub_21DBF8E0C();
    }

    else
    {
      sub_21D0CF7E0(a1, &qword_27CE61CE0);
      *a1 = *a2;
    }
  }

  else
  {
    *a1 = v5;
    if (v5 >= 2)
    {
      sub_21DBF8E0C();
    }
  }

  *(a1 + 8) = *(a2 + 8);
  return a1;
}

uint64_t assignWithTake for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t result, uint64_t a2)
{
  v3 = *a2;
  if (*result >= 2uLL)
  {
    if (v3 >= 2)
    {
      *result = v3;
      v5 = result;

      result = v5;
    }

    else
    {
      v4 = result;
      sub_21D0CF7E0(result, &qword_27CE61CE0);
      result = v4;
      *v4 = v3;
    }
  }

  else
  {
    *result = v3;
  }

  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t getEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 9))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TTRAccountsListsPresenterCapability.ListPinningParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t destroy for TTRAccountsListsPresenterCapability.ListPinningParams.Action(unint64_t *a1)
{
  result = *a1;
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

unint64_t *assignWithCopy for TTRAccountsListsPresenterCapability.ListPinningParams.Action(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 < 0xFFFFFFFF)
  {
    *a1 = v4;
    if (v4 >= 0xFFFFFFFF)
    {
      sub_21DBF8E0C();
    }
  }

  else if (v4 < 0xFFFFFFFF)
  {

    *a1 = *a2;
  }

  else
  {
    *a1 = v4;
    sub_21DBF8E0C();
  }

  return a1;
}

unint64_t *assignWithTake for TTRAccountsListsPresenterCapability.ListPinningParams.Action(unint64_t *result, unint64_t *a2)
{
  v2 = *a2;
  if (*result < 0xFFFFFFFF)
  {
    *result = v2;
  }

  else if (v2 < 0xFFFFFFFF)
  {
    v4 = result;

    result = v4;
    *v4 = v2;
  }

  else
  {
    *result = v2;
    v3 = result;

    return v3;
  }

  return result;
}

void sub_21D7F13D0()
{
  sub_21D0DA63C(319, &qword_280D19B10, type metadata accessor for TTRAccountsListsViewModel.Item, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D7F14D0()
{
  sub_21D7F15AC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21D7F15AC()
{
  if (!qword_27CE61D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE5A4E8);
    v0 = sub_21DBFBA8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE61D08);
    }
  }
}

void *initializeBufferWithCopyOfBuffer for TTRAccountsListsPresenterCapability.RemindersInsertionPlan.MovingParam(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v27 = *a2;
    *a1 = *a2;
    a1 = (v27 + ((v5 + 16) & ~v5));

    return a1;
  }

  v6 = *(a3 - 8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v28 = *(a2 + 1);
    *a1 = *a2;
    a1[1] = v28;
    v29 = *(a2 + 2);
    v30 = a2[25];
    v31 = a2[24];
    sub_21DBF8E0C();
    v32 = v28;
    sub_21D749C9C(v29, v31, v30);
    a1[2] = v29;
    *(a1 + 24) = v31;
    *(a1 + 25) = v30;
    goto LABEL_20;
  }

  if (!EnumCaseMultiPayload)
  {
    *a1 = *a2;
    sub_21DBF8E0C();
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC8) + 48);
    v9 = a1 + v8;
    v10 = &a2[v8];
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE61CC0);
    v12 = swift_getEnumCaseMultiPayload();
    if (v12 == 1)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v35 = *v10;
        v36 = *(v10 + 1);
        *v9 = *v10;
        *(v9 + 1) = v36;
        *(v9 + 2) = *(v10 + 2);
        *(v9 + 24) = *(v10 + 24);
        v37 = *(v10 + 6);
        *(v9 + 5) = *(v10 + 5);
        *(v9 + 6) = v37;
        v38 = *(v10 + 8);
        *(v9 + 7) = *(v10 + 7);
        *(v9 + 8) = v38;
        v39 = *(v10 + 9);
        v40 = *(v10 + 11);
        v66 = *(v10 + 12);
        v64 = *(v10 + 13);
        v60 = *(v10 + 10);
        v62 = *(v10 + 14);
        v68 = v10[120];
        v41 = v35;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v39, v60, v40, v66, v64, v62, v68);
        *(v9 + 9) = v39;
        *(v9 + 10) = v60;
        *(v9 + 11) = v40;
        *(v9 + 12) = v66;
        *(v9 + 13) = v64;
        *(v9 + 14) = v62;
        v9[120] = v68;
        v42 = *(v10 + 16);
        v43 = *(v10 + 17);
        LOBYTE(v37) = v10[144];
        sub_21D0FB9BC(v42, v43, v37);
        *(v9 + 16) = v42;
        *(v9 + 17) = v43;
        v9[144] = v37;
        *(v9 + 145) = *(v10 + 145);
        *(v9 + 152) = *(v10 + 152);
        v44 = *(v10 + 22);
        *(v9 + 21) = *(v10 + 21);
        *(v9 + 22) = v44;
        v45 = *(v10 + 24);
        *(v9 + 23) = *(v10 + 23);
        *(v9 + 24) = v45;
        v46 = *(v10 + 26);
        *(v9 + 25) = *(v10 + 25);
        *(v9 + 26) = v46;
        *(v9 + 108) = *(v10 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v47 = v45;
        goto LABEL_19;
      }

LABEL_18:
      v48 = sub_21DBF56BC();
      (*(*(v48 - 8) + 16))(v9, v10, v48);
      v49 = type metadata accessor for TTRAccountsListsViewModel.SmartList(0);
      v9[v49[5]] = v10[v49[5]];
      *&v9[v49[6]] = *&v10[v49[6]];
      v50 = v49[7];
      v51 = &v9[v50];
      v52 = &v10[v50];
      v54 = *v52;
      v53 = *(v52 + 1);
      *v51 = v54;
      *(v51 + 1) = v53;
      *&v9[v49[8]] = *&v10[v49[8]];
      v9[v49[9]] = v10[v49[9]];
      v55 = v49[10];
      v56 = &v9[v55];
      v57 = &v10[v55];
      v58 = *(v57 + 1);
      *v56 = *v57;
      *(v56 + 1) = v58;
      sub_21DBF8E0C();
      goto LABEL_19;
    }

    if (!v12)
    {
      type metadata accessor for TTRAccountsListsViewModel.PinnedList(0);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v13 = *v10;
        v14 = *(v10 + 1);
        *v9 = *v10;
        *(v9 + 1) = v14;
        *(v9 + 2) = *(v10 + 2);
        *(v9 + 24) = *(v10 + 24);
        v15 = *(v10 + 6);
        *(v9 + 5) = *(v10 + 5);
        *(v9 + 6) = v15;
        v16 = *(v10 + 8);
        *(v9 + 7) = *(v10 + 7);
        *(v9 + 8) = v16;
        v17 = *(v10 + 10);
        v18 = *(v10 + 11);
        v63 = *(v10 + 13);
        v65 = *(v10 + 12);
        v59 = *(v10 + 9);
        v61 = *(v10 + 14);
        v67 = v10[120];
        v19 = v13;
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21D0FB960(v59, v17, v18, v65, v63, v61, v67);
        *(v9 + 9) = v59;
        *(v9 + 10) = v17;
        *(v9 + 11) = v18;
        *(v9 + 12) = v65;
        *(v9 + 13) = v63;
        *(v9 + 14) = v61;
        v9[120] = v67;
        v20 = *(v10 + 16);
        v21 = *(v10 + 17);
        v22 = v10[144];
        sub_21D0FB9BC(v20, v21, v22);
        *(v9 + 16) = v20;
        *(v9 + 17) = v21;
        v9[144] = v22;
        *(v9 + 145) = *(v10 + 145);
        *(v9 + 152) = *(v10 + 152);
        v23 = *(v10 + 22);
        *(v9 + 21) = *(v10 + 21);
        *(v9 + 22) = v23;
        v24 = *(v10 + 24);
        *(v9 + 23) = *(v10 + 23);
        *(v9 + 24) = v24;
        v25 = *(v10 + 26);
        *(v9 + 25) = *(v10 + 25);
        *(v9 + 26) = v25;
        *(v9 + 108) = *(v10 + 108);
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        sub_21DBF8E0C();
        v26 = v24;
LABEL_19:
        sub_21DBF8E0C();
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
        goto LABEL_20;
      }

      goto LABEL_18;
    }

    memcpy(v9, v10, *(*(v11 - 8) + 64));
LABEL_20:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v33 = *(v6 + 64);

  return memcpy(a1, a2, v33);
}