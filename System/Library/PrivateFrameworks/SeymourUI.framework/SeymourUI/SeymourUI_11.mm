uint64_t sub_20B67596C()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_20B675A9C;
  }

  else
  {
    v2 = sub_20B683088;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B675A9C()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675B70()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_20B675D50;
  }

  else
  {
    v2 = sub_20B675C84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B675C84()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675D50()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_20B675E24(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 96) = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  *(v2 + 24) = v3;
  *(v2 + 32) = *(v3 - 8);
  *(v2 + 40) = swift_task_alloc();
  v4 = sub_20C13BB84();
  *(v2 + 48) = v4;
  *(v2 + 56) = *(v4 - 8);
  *(v2 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B675F50, 0, 0);
}

uint64_t sub_20B675F50()
{
  v19 = v0;
  sub_20C13B574();
  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  if (v3)
  {
    v17 = v0[8];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v9 = sub_20C135464();
    v11 = sub_20B51E694(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_20B517000, v1, v2, "Updating audio focus preference: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x20F2F6A40](v8, -1, -1);
    MEMORY[0x20F2F6A40](v7, -1, -1);

    (*(v4 + 8))(v17, v6);
  }

  else
  {

    (*(v4 + 8))(v5, v6);
  }

  v12 = v0[5];
  __swift_project_boxed_opaque_existential_1((v0[2] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(v0[2] + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
  sub_20C139D24();
  v13 = swift_task_alloc();
  v0[9] = v13;
  *(v13 + 16) = "SeymourUI/SessionMediaPlayerPresenter.swift";
  *(v13 + 24) = 43;
  *(v13 + 32) = 2;
  *(v13 + 40) = 421;
  *(v13 + 48) = v12;
  v14 = swift_task_alloc();
  v0[10] = v14;
  *v14 = v0;
  v14[1] = sub_20B6761CC;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B5269EC, v13, v15);
}

uint64_t sub_20B6761CC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_20B67638C;
  }

  else
  {
    (*(v2[4] + 8))(v2[5], v2[3]);
    v3 = sub_20B67631C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B67631C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B67638C()
{
  (*(v0[4] + 8))(v0[5], v0[3]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B676418(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_20C139474();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_20C1391E4();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_20C134C44();
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C70);
  v2[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7678F0);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C80);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767900);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766C90);
  v2[15] = swift_task_alloc();
  v5 = sub_20C135D24();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v6 = sub_20C134F74();
  v2[19] = v6;
  v2[20] = *(v6 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  v2[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  v2[24] = swift_task_alloc();
  v7 = sub_20C1333A4();
  v2[25] = v7;
  v2[26] = *(v7 - 8);
  v2[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC90);
  v2[28] = swift_task_alloc();
  v8 = sub_20C1352E4();
  v2[29] = v8;
  v2[30] = *(v8 - 8);
  v2[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  v2[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  v2[33] = swift_task_alloc();
  v9 = sub_20C134F24();
  v2[34] = v9;
  v2[35] = *(v9 - 8);
  v2[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  v2[37] = swift_task_alloc();
  v10 = sub_20C133654();
  v2[38] = v10;
  v2[39] = *(v10 - 8);
  v2[40] = swift_task_alloc();
  v11 = sub_20C13BB84();
  v2[41] = v11;
  v2[42] = *(v11 - 8);
  v2[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B676A58, 0, 0);
}

uint64_t sub_20B676A58()
{
  v2 = v0[42];
  v1 = v0[43];
  v3 = v0[41];
  v42 = v0[40];
  v61 = v0[39];
  v62 = v0[38];
  v4 = v0[36];
  v5 = v0[37];
  v7 = v0[34];
  v6 = v0[35];
  v8 = v0[33];
  v47 = v0[32];
  v55 = v0[31];
  v31 = v0[30];
  v32 = v0[29];
  v57 = v0[28];
  v43 = v0[27];
  v46 = v0[26];
  v48 = v0[25];
  v49 = v0[24];
  v51 = v0[23];
  v60 = v0[21];
  v58 = v0[22];
  v59 = v0[20];
  v36 = v0[19];
  v44 = v0[18];
  v33 = v0[17];
  v34 = v0[16];
  v45 = v0[15];
  v50 = v0[14];
  v52 = v0[13];
  v53 = v0[12];
  v54 = v0[11];
  v56 = v0[10];
  v37 = v0[7];
  v38 = v0[6];
  v40 = v0[5];
  v41 = v0[8];
  v39 = v0[4];
  v35 = v0[9];
  sub_20C13B574();
  sub_20C13BB64();
  (*(v2 + 8))(v1, v3);
  v9 = *MEMORY[0x277D52B38];
  v10 = sub_20C136664();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v5, v9, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  (*(v6 + 104))(v4, *MEMORY[0x277D51450], v7);
  v30 = sub_20C132C14();
  v29 = *(*(v30 - 8) + 56);
  v29(v8, 1, 1, v30);
  sub_20C136184();
  v12 = *MEMORY[0x277D523A8];
  v13 = sub_20C135ED4();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v47, v12, v13);
  v28 = *(v14 + 56);
  v28(v47, 0, 1, v13);
  (*(v31 + 104))(v55, *MEMORY[0x277D51768], v32);
  v15 = sub_20C136E94();
  (*(*(v15 - 8) + 56))(v57, 1, 1, v15);
  v16 = v8;
  sub_20C133644();
  v17 = *MEMORY[0x277D517C0];
  v18 = sub_20C1352F4();
  v19 = *(v18 - 8);
  (*(v19 + 104))(v49, v17, v18);
  (*(v19 + 56))(v49, 0, 1, v18);
  v29(v16, 1, 1, v30);
  v28(v47, 1, 1, v13);
  v20 = sub_20C136914();
  (*(*(v20 - 8) + 56))(v51, 1, 1, v20);
  sub_20C133384();
  (*(v61 + 16))(v44, v42, v62);
  (*(v33 + 104))(v44, *MEMORY[0x277D52120], v34);
  (*(v46 + 16))(v45, v43, v48);
  (*(v46 + 56))(v45, 0, 1, v48);
  v21 = sub_20C135664();
  (*(*(v21 - 8) + 56))(v50, 1, 1, v21);
  v22 = sub_20C135674();
  (*(*(v22 - 8) + 56))(v52, 1, 1, v22);
  sub_20C134F94();
  v23 = sub_20C134FB4();
  (*(*(v23 - 8) + 56))(v53, 0, 1, v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766CA0);
  (*(*(v24 - 8) + 56))(v54, 1, 1, v24);
  v25 = sub_20C135F14();
  (*(*(v25 - 8) + 56))(v56, 1, 1, v25);
  sub_20C134F54();
  (*(v59 + 16))(v60, v58, v36);
  sub_20C1391F4();
  swift_getObjectType();
  sub_20B682E60(&qword_281103B30, MEMORY[0x277D542C0]);
  sub_20C13A764();
  sub_20C136184();
  sub_20C139464();
  sub_20B682E60(&qword_27C763228, MEMORY[0x277D543C0]);
  sub_20C13A764();
  (*(v40 + 8))(v38, v39);
  (*(v41 + 8))(v35, v37);
  (*(v59 + 8))(v58, v36);
  (*(v46 + 8))(v43, v48);
  (*(v61 + 8))(v42, v62);

  v26 = v0[1];

  return v26();
}

uint64_t sub_20B67740C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24[-v4];
  v6 = sub_20C13B604();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_20C1380C4();
  (*(v7 + 104))(v9, *MEMORY[0x277D4F920], v6);
  v11 = sub_20B8D7248(v9, v10);

  (*(v7 + 8))(v9, v6);
  if (v11)
  {
    (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter__preventTimeJumpEnabled, v2);
    sub_20C13A344();
    (*(v3 + 8))(v5, v2);
    v12 = v24[15] ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter + 24);
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter), v14);
  v16 = (*(v15 + 8))(v14, v15);
  v17 = sub_20C1344B4();
  v19 = v18;
  v21 = v20;
  v22 = sub_20C133B84();
  sub_20B583F4C(v17, v19, v21 & 1);
  swift_getObjectType();
  if (v12 & 1) != 0 || v13 || (v16 & 1) == 0 || (v22)
  {
    return sub_20C138654();
  }

  else
  {
    return sub_20C138684();
  }
}

uint64_t sub_20B6776DC(char a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B554();
  sub_20C13BB64();
  (*(v5 + 8))(v7, v4);
  v8 = *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform);
  if (v8 >= 2)
  {
    if (v8 != 2)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v10 = *(v2 + 24);
      goto LABEL_13;
    }

LABEL_8:
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v11 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v11 + 264))(0, ObjectType, v11);
    return swift_unknownObjectRelease();
  }

  if (((1 << *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory)) & 0x16) == 0)
  {
    goto LABEL_8;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) == 2)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_20C13DFF4();
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v2 + 24);
    a1 &= v13;
LABEL_13:
    v14 = swift_getObjectType();
    (*(v10 + 264))(a1 & 1, v14, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B677958(void *a1)
{
  v2 = v1;
  v136 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v142 = &v128 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765070);
  MEMORY[0x28223BE20](v5 - 8);
  v141 = &v128 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765CB0);
  MEMORY[0x28223BE20](v7 - 8);
  v140 = &v128 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765080);
  MEMORY[0x28223BE20](v9 - 8);
  v139 = &v128 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AD0);
  MEMORY[0x28223BE20](v11 - 8);
  v138 = &v128 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765090);
  MEMORY[0x28223BE20](v13 - 8);
  v152 = &v128 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0);
  MEMORY[0x28223BE20](v15 - 8);
  v137 = &v128 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650A0);
  MEMORY[0x28223BE20](v17 - 8);
  v151 = &v128 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v128 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650B0);
  MEMORY[0x28223BE20](v22 - 8);
  v150 = &v128 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B00);
  MEMORY[0x28223BE20](v24 - 8);
  v149 = &v128 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650C0);
  MEMORY[0x28223BE20](v26 - 8);
  v148 = &v128 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v28 - 8);
  v166 = &v128 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650D0);
  MEMORY[0x28223BE20](v30 - 8);
  v165 = &v128 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B20);
  MEMORY[0x28223BE20](v32 - 8);
  v164 = &v128 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650E0);
  MEMORY[0x28223BE20](v34 - 8);
  v163 = &v128 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767260);
  MEMORY[0x28223BE20](v36 - 8);
  v162 = &v128 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v38 - 8);
  v161 = &v128 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B30);
  MEMORY[0x28223BE20](v40 - 8);
  v160 = &v128 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765050);
  MEMORY[0x28223BE20](v42 - 8);
  v159 = &v128 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765100);
  MEMORY[0x28223BE20](v44 - 8);
  v158 = &v128 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7687F0);
  MEMORY[0x28223BE20](v46 - 8);
  v157 = &v128 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v48 - 8);
  v156 = &v128 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v50 - 8);
  v155 = &v128 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v52 - 8);
  v154 = &v128 - v53;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763220);
  MEMORY[0x28223BE20](v135);
  v55 = &v128 - v54;
  v147 = sub_20C138184();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v145 = &v128 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_20C138144();
  v153 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v143 = &v128 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_20C13BB84();
  v59 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v61 = &v128 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v64 = &v128 - v63;
  sub_20C13B574();
  sub_20C13BB64();
  v134 = *(v59 + 8);
  v134(v64, v58);
  v65 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory;
  v66 = *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentSessionRouteCategory);
  v67 = v2;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v68 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v70 = *(v68 + 168);
    v71 = v68;
    v67 = v2;
    v70(v66 != 2, ObjectType, v71);
    swift_unknownObjectRelease();
  }

  if (sub_20B66F1B0())
  {
    v72 = *(v67 + v65);
    if (swift_unknownObjectWeakLoadStrong() && (v73 = *(v67 + 24), v74 = swift_getObjectType(), LOBYTE(v73) = (*(v73 + 48))(v74, v73), swift_unknownObjectRelease(), (v73 & 1) != 0))
    {
      v75 = v143;
      v76 = v144;
      (*(v153 + 104))(v143, *MEMORY[0x277D53C08], v144);
    }

    else
    {
      v76 = v144;
      if (v72)
      {
        v85 = MEMORY[0x277D53C18];
      }

      else
      {
        v85 = MEMORY[0x277D53C10];
      }

      v75 = v143;
      (*(v153 + 104))(v143, *v85, v144);
    }

    (*(v153 + 16))(v55, v75, v76);
    swift_storeEnumTagMultiPayload();
    sub_20C13CE94();
    v86 = v145;
    sub_20C138124();
    sub_20BA7CBC0(v86);
    v133 = v67;
    v132 = *(v67 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 24);
    v134 = *(v67 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 32);
    v136 = __swift_project_boxed_opaque_existential_1((v67 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient), v132);
    v135 = sub_20C13A464();
    v87 = sub_20C133D84();
    (*(*(v87 - 8) + 56))(v154, 1, 1, v87);
    v88 = sub_20C135854();
    (*(*(v88 - 8) + 56))(v155, 1, 1, v88);
    v89 = sub_20C136194();
    (*(*(v89 - 8) + 56))(v156, 1, 1, v89);
    v90 = sub_20C133DD4();
    (*(*(v90 - 8) + 56))(v157, 1, 1, v90);
    v91 = sub_20C135274();
    (*(*(v91 - 8) + 56))(v158, 1, 1, v91);
    v92 = sub_20C134514();
    (*(*(v92 - 8) + 56))(v159, 1, 1, v92);
    v93 = sub_20C133B04();
    (*(*(v93 - 8) + 56))(v160, 1, 1, v93);
    v94 = sub_20C134C04();
    (*(*(v94 - 8) + 56))(v161, 1, 1, v94);
    v95 = sub_20C1368F4();
    (*(*(v95 - 8) + 56))(v162, 1, 1, v95);
    v96 = sub_20C134914();
    (*(*(v96 - 8) + 56))(v163, 1, 1, v96);
    v97 = sub_20C133374();
    (*(*(v97 - 8) + 56))(v164, 1, 1, v97);
    v98 = sub_20C135B74();
    (*(*(v98 - 8) + 56))(v165, 1, 1, v98);
    v99 = sub_20C134CD4();
    (*(*(v99 - 8) + 56))(v166, 1, 1, v99);
    v100 = sub_20C136EB4();
    (*(*(v100 - 8) + 56))(v148, 1, 1, v100);
    v101 = sub_20C133494();
    (*(*(v101 - 8) + 56))(v149, 1, 1, v101);
    v102 = sub_20C134594();
    (*(*(v102 - 8) + 56))(v150, 1, 1, v102);
    v103 = v146;
    v104 = v86;
    v105 = v147;
    (*(v146 + 16))(v21, v104, v147);
    v106 = *(v103 + 56);
    v130 = v103 + 56;
    v131 = v106;
    v129 = v21;
    v106(v21, 0, 1, v105);
    v107 = sub_20C1363D4();
    (*(*(v107 - 8) + 56))(v151, 1, 1, v107);
    v108 = sub_20C1337A4();
    v109 = v137;
    (*(*(v108 - 8) + 56))(v137, 1, 1, v108);
    v110 = sub_20C1337D4();
    (*(*(v110 - 8) + 56))();
    v111 = sub_20C134A94();
    v112 = v138;
    (*(*(v111 - 8) + 56))(v138, 1, 1, v111);
    v113 = sub_20C135364();
    v114 = v139;
    (*(*(v113 - 8) + 56))(v139, 1, 1, v113);
    v115 = sub_20C136484();
    v116 = v140;
    (*(*(v115 - 8) + 56))(v140, 1, 1, v115);
    v117 = sub_20C136784();
    v118 = v141;
    (*(*(v117 - 8) + 56))(v141, 1, 1, v117);
    v119 = sub_20C137FE4();
    v120 = v142;
    (*(*(v119 - 8) + 56))(v142, 1, 1, v119);
    v121 = v151;
    v122 = v150;
    sub_20C13A174();

    sub_20B520158(v120, &unk_27C768AC0);
    sub_20B520158(v118, &unk_27C765070);
    sub_20B520158(v116, &unk_27C765CB0);
    sub_20B520158(v114, &unk_27C765080);
    sub_20B520158(v112, &unk_27C768AD0);
    sub_20B520158(v152, &unk_27C765090);
    sub_20B520158(v109, &unk_27C768AE0);
    sub_20B520158(v121, &unk_27C7650A0);
    v123 = v129;
    sub_20B520158(v129, &unk_27C768AF0);
    sub_20B520158(v122, &unk_27C7650B0);
    sub_20B520158(v149, &unk_27C768B00);
    sub_20B520158(v148, &unk_27C7650C0);
    sub_20B520158(v166, &unk_27C768B10);
    sub_20B520158(v165, &unk_27C7650D0);
    sub_20B520158(v164, &unk_27C768B20);
    sub_20B520158(v163, &unk_27C7650E0);
    sub_20B520158(v162, &unk_27C767260);
    sub_20B520158(v161, &unk_27C7650F0);
    sub_20B520158(v160, &qword_27C768B30);
    sub_20B520158(v159, &unk_27C765050);
    sub_20B520158(v158, &unk_27C765100);
    sub_20B520158(v157, &unk_27C7687F0);
    sub_20B520158(v156, &unk_27C765110);
    sub_20B520158(v155, &unk_27C76BBF0);
    sub_20B520158(v154, &unk_27C765120);
    (*(v153 + 8))(v143, v144);
    v124 = v147;
    (*(v146 + 32))(v123, v145, v147);
    v125 = v123;
    v131(v123, 0, 1, v124);
    v126 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
    v127 = v133;
    swift_beginAccess();
    sub_20B5DF2D4(v125, v127 + v126, &unk_27C768AF0);
    return swift_endAccess();
  }

  else
  {
    sub_20C13B574();

    v77 = sub_20C13BB74();
    v78 = sub_20C13D1F4();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v167 = v80;
      *v79 = 136446210;
      v168 = *(v67 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state);
      v81 = sub_20C13C9D4();
      v83 = sub_20B51E694(v81, v82, &v167);

      *(v79 + 4) = v83;
      _os_log_impl(&dword_20B517000, v77, v78, "Player state is not active, not updating session playback, state: %{public}s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x20F2F6A40](v80, -1, -1);
      MEMORY[0x20F2F6A40](v79, -1, -1);
    }

    return (v134)(v61, v58);
  }
}

uint64_t sub_20B67919C(uint64_t a1)
{
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v21 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - v10;
  sub_20C13B574();
  sub_20C13BB64();
  v12 = *(v3 + 8);
  v12(v11, v2);
  if ((sub_20B66F1B0() & 1) == 0)
  {
    sub_20C13B574();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "Playback intent for inactive media player presenter", v19, 2u);
      MEMORY[0x20F2F6A40](v19, -1, -1);
    }

    v16 = v5;
    return (v12)(v16, v2);
  }

  if ((a1 & 0x100000000) == 0)
  {
    sub_20C13B574();
    v13 = sub_20C13BB74();
    v14 = sub_20C13D1D4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_20B517000, v13, v14, "Encountered unknown playback intent state", v15, 2u);
      MEMORY[0x20F2F6A40](v15, -1, -1);
    }

    v16 = v8;
    return (v12)(v16, v2);
  }

  if (!a1)
  {
    return sub_20B679750();
  }

  if (a1 == 1)
  {
    return sub_20B679A9C();
  }

  return sub_20B679434();
}

uint64_t sub_20B679434()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v19[-v7];
  if (sub_20B66F1B0())
  {
    sub_20C13B574();
    sub_20C13BB64();
    (*(v3 + 8))(v8, v2);
    swift_getObjectType();
    sub_20C138624();
    v19[4] = 1;
    sub_20B677958(0x100000003);
    sub_20C138634();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v0 + 24);
      ObjectType = swift_getObjectType();
      (*(v9 + 128))(ObjectType, v9);
      swift_unknownObjectRelease();
    }

    *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
    return sub_20C138AB4();
  }

  else
  {
    sub_20C13B574();

    v12 = sub_20C13BB74();
    v13 = sub_20C13D1F4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v20 = v15;
      *v14 = 136446210;
      v19[7] = *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state);
      v16 = sub_20C13C9D4();
      v18 = sub_20B51E694(v16, v17, &v20);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_20B517000, v12, v13, "Cannot end playback when state is not active, state: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x20F2F6A40](v15, -1, -1);
      MEMORY[0x20F2F6A40](v14, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_20B679750()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v19 - v6;
  v8 = sub_20C134C04();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v12, v7, &unk_27C7650F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_20B520158(v7, &unk_27C7650F0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if ((sub_20C134BF4() & 0x100000000) != 0)
    {
      v13 = sub_20C134BE4();
      if (v13 == sub_20C134BE4() || (v14 = sub_20C134BE4(), v14 == sub_20C134BE4()))
      {
        sub_20C13B594();
        v15 = sub_20C13BB74();
        v16 = sub_20C13D1F4();
        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          *v17 = 0;
          _os_log_impl(&dword_20B517000, v15, v16, "GymKit: Resuming sync playback", v17, 2u);
          MEMORY[0x20F2F6A40](v17, -1, -1);
        }

        (*(v19 + 8))(v4, v2);
        swift_getObjectType();
        sub_20C1386A4();
      }
    }

    (*(v9 + 8))(v11, v8);
  }

  swift_getObjectType();
  return sub_20C138724();
}

uint64_t sub_20B679A9C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v39 = *(v2 - 8);
  v40 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = sub_20C134C04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B52F9E8(v1 + v15, v10, &unk_27C7650F0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &unk_27C7650F0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    if ((sub_20C134BF4() & 0x100000000) != 0)
    {
      v16 = sub_20C134BE4();
      if (v16 == sub_20C134BE4() || (v17 = sub_20C134BE4(), v17 == sub_20C134BE4()))
      {
        sub_20C13B594();
        v18 = sub_20C13BB74();
        v19 = sub_20C13D1F4();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          *v20 = 0;
          _os_log_impl(&dword_20B517000, v18, v19, "GymKit: Suspending sync playback for pause", v20, 2u);
          MEMORY[0x20F2F6A40](v20, -1, -1);
        }

        v21 = v40;
        v39 = *(v39 + 8);
        (v39)(v7, v40);
        swift_getObjectType();
        sub_20C1386D4();
        sub_20C13B534();
        v22 = sub_20C13BB74();
        v23 = sub_20C13D1F4();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v37 = v24;
          v38 = swift_slowAlloc();
          v41 = v38;
          *v24 = 136446210;
          v25 = sub_20C134BD4();
          v27 = sub_20B51E694(v25, v26, &v41);

          v28 = v37;
          *(v37 + 1) = v27;
          v29 = v23;
          v30 = v28;
          _os_log_impl(&dword_20B517000, v22, v29, "Pause intent with GymKit connection state: %{public}s", v28, 0xCu);
          v31 = v38;
          __swift_destroy_boxed_opaque_existential_1(v38);
          MEMORY[0x20F2F6A40](v31, -1, -1);
          MEMORY[0x20F2F6A40](v30, -1, -1);

          v32 = v4;
          v33 = v40;
        }

        else
        {

          v32 = v4;
          v33 = v21;
        }

        (v39)(v32, v33);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v34 = *(v1 + 24);
          ObjectType = swift_getObjectType();
          (*(v34 + 152))(1, ObjectType, v34);
          swift_unknownObjectRelease();
        }
      }
    }

    (*(v12 + 8))(v14, v11);
  }

  swift_getObjectType();
  return sub_20C138714();
}

uint64_t sub_20B679F54(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20C134C04();
  v37 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_20C138184();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AF0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v36 - v17;
  result = sub_20B66F1B0();
  if (result)
  {
    v20 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v20, v18, &unk_27C768AF0);
    if ((*(v13 + 48))(v18, 1, v12))
    {
      sub_20B520158(v18, &unk_27C768AF0);
      v21 = a1;
    }

    else
    {
      (*(v13 + 16))(v15, v18, v12);
      sub_20B520158(v18, &unk_27C768AF0);
      v22 = sub_20C138174();
      (*(v13 + 8))(v15, v12);
      v21 = a1;
      if ((v22 & 0x100000000) != 0)
      {
        v23 = sub_20C138164();
        if (v23 != sub_20C138164() && a1 == 2 && swift_unknownObjectWeakLoadStrong())
        {
          v24 = *(v2 + 24);
          ObjectType = swift_getObjectType();
          (*(v24 + 152))(0, ObjectType, v24);
          swift_unknownObjectRelease();
        }
      }
    }

    v26 = sub_20C13CDF4();
    (*(*(v26 - 8) + 56))(v11, 1, 1, v26);
    v27 = swift_allocObject();
    swift_weakInit();
    sub_20C13CDA4();

    v28 = sub_20C13CD94();
    v29 = swift_allocObject();
    v30 = MEMORY[0x277D85700];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v27;

    sub_20B6380FC(0, 0, v11, &unk_20C153BE8, v29);

    v31 = sub_20C138154();
    v38 = 1;
    sub_20B677958((v31 | 0x100000000));
    v32 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
    swift_beginAccess();
    sub_20B52F9E8(v2 + v32, v8, &unk_27C7650F0);
    v33 = v37;
    if ((*(v37 + 48))(v8, 1, v4))
    {
      return sub_20B520158(v8, &unk_27C7650F0);
    }

    else
    {
      v34 = v36;
      (*(v33 + 16))(v36, v8, v4);
      sub_20B520158(v8, &unk_27C7650F0);
      v35 = sub_20C134BF4();
      result = (*(v33 + 8))(v34, v4);
      if (v21 == 2 && (v35 & 0x1000000FFLL) == 0x100000004)
      {
        swift_getObjectType();
        return sub_20C138714();
      }
    }
  }

  return result;
}

uint64_t sub_20B67A4F4()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_20B66F1B0();
  if (result)
  {
    sub_20C13B574();
    v7 = sub_20C13BB74();
    v8 = sub_20C13D1F4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_20B517000, v7, v8, "Playback finished", v9, 2u);
      MEMORY[0x20F2F6A40](v9, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    v10[12] = 1;
    result = sub_20B677958(0x100000003);
    *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
  }

  return result;
}

uint64_t sub_20B67A67C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_20C13BB84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v8 + 8))(v10, v7);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v12 = Strong, v13 = sub_20C138AD4(), v12, v13))
  {
    if (a1)
    {
      [v13 hidePlaybackControlsImmediately];
    }
  }

  else
  {
    if (a1)
    {
      v14 = sub_20C138104();
      v15 = v14 == sub_20C138104();
    }

    else
    {
      v15 = 1;
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      (*(v16 + 160))(v15, ObjectType, v16);
      swift_unknownObjectRelease();
    }

    if (a1)
    {
      v18 = sub_20C138104();
      if (v18 != sub_20C138104())
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v2 + 24);
          v20 = swift_getObjectType();
          (*(v19 + 192))(v20, v19);
          swift_unknownObjectRelease();
        }
      }
    }
  }

  v21 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state;
  if (*(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) <= 1u && *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state))
  {

    if ((a1 & 1) == 0)
    {
      return sub_20B6776DC(1);
    }
  }

  else
  {
    v22 = sub_20C13DFF4();

    if ((v22 & 1) == 0 || (a1 & 1) == 0)
    {
      return sub_20B6776DC(1);
    }
  }

  *(v2 + v21) = 2;
  swift_getObjectType();
  v23 = sub_20C138644();
  if (v23)
  {
    v24 = v23;
    v25 = [v23 currentItem];

    if (v25)
    {
      v26 = sub_20C13CDF4();
      (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v2;
      v27[5] = v25;

      sub_20B614F94(0, 0, v6, &unk_20C153BD0, v27);
    }
  }

  return sub_20B6776DC(1);
}

uint64_t sub_20B67AA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_20B52A9D4;

  return sub_20B674394(a5);
}

uint64_t sub_20B67AB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_20C13CDA4();
  v4[7] = sub_20C13CD94();
  v6 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B67ABB4, v6, v5);
}

uint64_t sub_20B67ABB4()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v2 = Strong, v3 = swift_unknownObjectWeakLoadStrong(), v4 = *(v2 + 24), , v3))
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 112))(ObjectType, v4);
    swift_unknownObjectRelease();
    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  **(v0 + 40) = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_20B67AC98()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7650F0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_20C13BB84();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v9 + 8))(v11, v8);
  sub_20C137DE4();
  v12 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot;
  swift_beginAccess();
  sub_20B5DF2D4(v7, v1 + v12, &unk_27C7650F0);
  swift_endAccess();
  sub_20C137CE4();
  sub_20B67AEC4(v4);
  return sub_20B520158(v4, &unk_27C768B10);
}

uint64_t sub_20B67AEC4(uint64_t a1)
{
  v77 = sub_20C13BB84();
  v2 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v67 - v6;
  MEMORY[0x28223BE20](v7);
  v74 = &v67 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v67 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v67 - v13;
  v15 = sub_20C134CD4();
  MEMORY[0x28223BE20](v15);
  v73 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v72 = &v67 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v67 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v67 - v23;
  v26 = v25;
  sub_20B52F9E8(a1, v14, &unk_27C768B10);
  if ((*(v26 + 48))(v14, 1, v15) == 1)
  {
    sub_20B520158(v14, &unk_27C768B10);
    sub_20C13B594();
    v27 = sub_20C13BB74();
    v28 = sub_20C13D1F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_20B517000, v27, v28, "Client: No MultiUserSession on Session", v29, 2u);
      MEMORY[0x20F2F6A40](v29, -1, -1);
    }

    return (*(v2 + 8))(v4, v77);
  }

  (*(v26 + 32))(v24, v14, v15);
  sub_20C13B594();
  v68 = *(v26 + 16);
  v69 = v26 + 16;
  v68(v21, v24, v15);
  v31 = sub_20C13BB74();
  v32 = sub_20C13D1F4();
  v33 = v24;
  if (os_log_type_enabled(v31, v32))
  {
    v34 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v79[0] = v67;
    *v34 = 136315138;
    sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0]);
    v35 = sub_20C13DFA4();
    v36 = v2;
    v37 = v33;
    v70 = v36;
    v38 = v26;
    v40 = v39;
    v71 = *(v38 + 8);
    v71(v21, v15);
    v41 = sub_20B51E694(v35, v40, v79);
    v42 = v77;
    v33 = v37;
    v2 = v70;

    *(v34 + 4) = v41;
    _os_log_impl(&dword_20B517000, v31, v32, "Client: MultiUserSession on Session %s", v34, 0xCu);
    v43 = v67;
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x20F2F6A40](v43, -1, -1);
    MEMORY[0x20F2F6A40](v34, -1, -1);

    v44 = *(v2 + 8);
    v44(v11, v42);
  }

  else
  {

    v71 = *(v26 + 8);
    v71(v21, v15);
    v44 = *(v2 + 8);
    v44(v11, v77);
  }

  v45 = sub_20C134CB4();
  v47 = v76;
  if (v48)
  {
    if (v45 == 1)
    {
      v70 = v2;
      v49 = v68;
      v68(v72, v33, v15);
      v50 = v75;
      sub_20B51CC64(v75 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserClient, v79);
      sub_20B51CC64(v50 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient, v78);
      sub_20C1384B4();
      swift_allocObject();
      swift_unknownObjectRetain();
      v76 = sub_20C1384A4();
      v51 = v74;
      sub_20C13B594();
      v52 = v73;
      v49(v73, v33, v15);
      v53 = sub_20C13BB74();
      v54 = sub_20C13D1F4();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = v52;
        v56 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v79[0] = v72;
        *v56 = 136315138;
        sub_20B682E60(&qword_27C763200, MEMORY[0x277D50FB0]);
        v57 = v55;
        v58 = sub_20C13DFA4();
        v60 = v59;
        v71(v57, v15);
        v61 = sub_20B51E694(v58, v60, v79);

        *(v56 + 4) = v61;
        _os_log_impl(&dword_20B517000, v53, v54, "Client: SessionMediaPlayerPresenter will coordinate playback for %s", v56, 0xCu);
        v62 = v72;
        __swift_destroy_boxed_opaque_existential_1(v72);
        MEMORY[0x20F2F6A40](v62, -1, -1);
        MEMORY[0x20F2F6A40](v56, -1, -1);

        v63 = v74;
      }

      else
      {

        v71(v52, v15);
        v63 = v51;
      }

      v44(v63, v77);
      swift_getObjectType();
      sub_20C1386B4();

      return (v71)(v33, v15);
    }
  }

  else
  {
    sub_20B583F4C(v45, v46, 0);
  }

  sub_20C13B594();
  v64 = sub_20C13BB74();
  v65 = sub_20C13D1F4();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_20B517000, v64, v65, "Client: SessionMediaPlayerPresenter ignoring session update because state isn't joined", v66, 2u);
    MEMORY[0x20F2F6A40](v66, -1, -1);
  }

  v44(v47, v77);
  return (v71)(v33, v15);
}

uint64_t sub_20B67B77C()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 3;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 176))(0, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
  sub_20C138AB4();
  swift_getObjectType();
  sub_20C138634();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v1 + 24);
    v9 = swift_getObjectType();
    (*(v8 + 128))(v9, v8);
    swift_unknownObjectRelease();
  }

  result = sub_20C1386F4();
  if (result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v1 + 24);
      v12 = swift_getObjectType();
      (*(v11 + 232))(v12, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B67B9A4()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v19 - v5;
  swift_getObjectType();
  sub_20C138624();
  v8 = v7;
  sub_20C134464();
  v10 = v9;
  sub_20C13B574();
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    *(v13 + 4) = v8;
    *(v13 + 12) = 2048;
    *(v13 + 14) = v10;
    _os_log_impl(&dword_20B517000, v11, v12, "[SessionMediaPlayerPresenter] seekBy complete, currentTime: %f, %f", v13, 0x16u);
    MEMORY[0x20F2F6A40](v13, -1, -1);
  }

  v14 = *(v1 + 8);
  result = v14(v6, v0);
  if (v10 <= v8)
  {
    sub_20C13B574();
    v16 = sub_20C13BB74();
    v17 = sub_20C13D1F4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_20B517000, v16, v17, "[SessionMediaPlayerPresenter] seekBy has reached the end, ending playback", v18, 2u);
      MEMORY[0x20F2F6A40](v18, -1, -1);
    }

    v14(v3, v0);
    return sub_20B679434();
  }

  return result;
}

uint64_t sub_20B67BBFC@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v135 = a2;
  v4 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762350);
  v117 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v115 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v5;
  MEMORY[0x28223BE20](v6);
  v116 = &v105 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v120 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = v10;
  MEMORY[0x28223BE20](v11);
  v121 = &v105 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v13 - 8);
  v127 = &v105 - v14;
  v125 = sub_20C135334();
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v123 = &v105 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_20C135D54();
  v131 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v113 = &v105 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v16;
  MEMORY[0x28223BE20](v17);
  v128 = &v105 - v18;
  v126 = sub_20C13BB84();
  v130 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v111 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v122 = &v105 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v105 - v23;
  v25 = sub_20C135174();
  v133 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v132 = &v105 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = &v105 - v31;
  v33 = sub_20C136C64();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v134 = &v105 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B51CC64(v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteKeyDeliveryClient, &v143);
  sub_20B51CC64(v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_keyDeliveryClient, &v140);
  if (v4 != 3)
  {
    v40 = v141;
    v41 = v142;
    v42 = __swift_project_boxed_opaque_existential_1(&v140, v141);
    v138 = v40;
    v139 = *(v41 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(*(v40 - 8) + 16))(boxed_opaque_existential_1, v42, v40);
    sub_20B51CC64(&v137, &v136);
    v44 = swift_allocObject();
    sub_20B51C710(&v136, v44 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
LABEL_8:
    sub_20C137CA4();
    goto LABEL_9;
  }

  v108 = v9;
  v109 = v8;
  v36 = v25;
  v110 = v3;
  v37 = (v3 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteBrowsingSource);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_20C13B174();
  if ((*(v34 + 48))(v32, 1, v33) == 1)
  {
    v38 = &qword_27C768690;
    v39 = v32;
LABEL_7:
    sub_20B520158(v39, v38);
    v47 = v144;
    v48 = v145;
    v49 = __swift_project_boxed_opaque_existential_1(&v143, v144);
    v138 = v47;
    v139 = *(v48 + 8);
    v50 = __swift_allocate_boxed_opaque_existential_1(&v137);
    (*(*(v47 - 8) + 16))(v50, v49, v47);
    sub_20B51CC64(&v137, &v136);
    v51 = swift_allocObject();
    sub_20B51C710(&v136, v51 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
    goto LABEL_8;
  }

  v45 = v134;
  (*(v34 + 32))(v134, v32, v33);
  __swift_project_boxed_opaque_existential_1(v37, v37[3]);
  sub_20C13B184();
  v46 = v133;
  if ((*(v133 + 48))(v24, 1, v25) == 1)
  {
    (*(v34 + 8))(v45, v33);
    v38 = &unk_27C76BC00;
    v39 = v24;
    goto LABEL_7;
  }

  v106 = v34;
  v107 = v33;
  v53 = v132;
  (*(v46 + 32))(v132, v24, v25);
  v54 = v122;
  sub_20C13B574();
  (*(v46 + 16))(v27, v53, v25);
  v55 = sub_20C13BB74();
  v56 = sub_20C13D1F4();
  v57 = os_log_type_enabled(v55, v56);
  v105 = v25;
  if (v57)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    *&v137 = v59;
    *v58 = 136446210;
    sub_20B682E60(&unk_27C76B9B0, MEMORY[0x277D515D0]);
    v60 = sub_20C13DFA4();
    v62 = v61;
    v63 = *(v46 + 8);
    v63(v27, v36);
    v64 = sub_20B51E694(v60, v62, &v137);

    *(v58 + 4) = v64;
    _os_log_impl(&dword_20B517000, v55, v56, "We have an active participant: %{public}s. Checking if local account matches!", v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x20F2F6A40](v59, -1, -1);
    MEMORY[0x20F2F6A40](v58, -1, -1);
  }

  else
  {

    v63 = *(v46 + 8);
    v63(v27, v25);
  }

  v65 = *(v130 + 8);
  v66 = v126;
  v65(v54, v126);
  v67 = v134;
  v68 = v129;
  v69 = v131;
  v70 = v110;
  v71 = v123;
  sub_20C136C24();
  v72 = v127;
  sub_20C135314();
  (*(v124 + 8))(v71, v125);
  if ((*(v69 + 48))(v72, 1, v68) != 1)
  {
    v82 = *(v69 + 32);
    v83 = v128;
    v82(v128, v72, v68);
    __swift_project_boxed_opaque_existential_1((v70 + 200), *(v70 + 224));
    v84 = v116;
    sub_20C13B934();
    v85 = v113;
    (*(v69 + 16))(v113, v83, v68);
    sub_20B51CC64(&v140, &v137);
    v86 = (*(v69 + 80) + 16) & ~*(v69 + 80);
    v87 = (v112 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    v82((v88 + v86), v85, v68);
    sub_20B51C710(&v137, v88 + v87);
    v89 = v117;
    v90 = v115;
    v91 = v119;
    (*(v117 + 16))(v115, v84, v119);
    v92 = (*(v89 + 80) + 16) & ~*(v89 + 80);
    v93 = (v114 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
    v94 = swift_allocObject();
    (*(v89 + 32))(v94 + v92, v90, v91);
    v95 = (v94 + v93);
    *v95 = sub_20B682040;
    v95[1] = v88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
    v96 = v121;
    sub_20C137C94();
    (*(v89 + 8))(v84, v91);
    sub_20B51CC64(&v143, &v137);
    v97 = swift_allocObject();
    sub_20B51C710(&v137, v97 + 16);
    v98 = v108;
    v99 = v120;
    v100 = v109;
    (*(v108 + 16))(v120, v96, v109);
    v101 = (*(v98 + 80) + 16) & ~*(v98 + 80);
    v102 = (v118 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
    v103 = swift_allocObject();
    (*(v98 + 32))(v103 + v101, v99, v100);
    v104 = (v103 + v102);
    *v104 = sub_20B682114;
    v104[1] = v97;
    sub_20C137C94();
    (*(v98 + 8))(v96, v100);
    (*(v131 + 8))(v128, v68);
    (*(v133 + 8))(v132, v105);
    (*(v106 + 8))(v134, v107);
    goto LABEL_10;
  }

  sub_20B520158(v72, &unk_27C762370);
  v73 = v111;
  sub_20C13B574();
  v74 = sub_20C13BB74();
  v75 = sub_20C13D1F4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_20B517000, v74, v75, "No local subscriber account. Using remote key delivery client!", v76, 2u);
    MEMORY[0x20F2F6A40](v76, -1, -1);
  }

  v65(v73, v66);
  v77 = v144;
  v78 = v145;
  v79 = __swift_project_boxed_opaque_existential_1(&v143, v144);
  v138 = v77;
  v139 = *(v78 + 8);
  v80 = __swift_allocate_boxed_opaque_existential_1(&v137);
  (*(*(v77 - 8) + 16))(v80, v79, v77);
  sub_20B51CC64(&v137, &v136);
  v81 = swift_allocObject();
  sub_20B51C710(&v136, v81 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
  sub_20C137CA4();
  v63(v132, v105);
  (*(v106 + 8))(v67, v107);
LABEL_9:
  __swift_destroy_boxed_opaque_existential_1(&v137);
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(&v140);
  return __swift_destroy_boxed_opaque_existential_1(&v143);
}

uint64_t sub_20B67CC8C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v39 = a3;
  v7 = sub_20C135D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13BB84();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  sub_20C13B574();
  (*(v8 + 16))(v10, a2, v7);
  v15 = v14;
  v16 = sub_20C13BB74();
  v17 = sub_20C13D1F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v36 = a4;
    v19 = v18;
    v20 = swift_slowAlloc();
    v34 = v20;
    v35 = swift_slowAlloc();
    v41[0] = v35;
    *v19 = 141558786;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2112;
    *(v19 + 14) = v15;
    *v20 = v15;
    *(v19 + 22) = 2160;
    *(v19 + 24) = 1752392040;
    *(v19 + 32) = 2080;
    sub_20B682E60(&qword_27C763218, MEMORY[0x277D52180]);
    v21 = v15;
    v22 = sub_20C13DFA4();
    v24 = v23;
    (*(v8 + 8))(v10, v7);
    v25 = sub_20B51E694(v22, v24, v41);

    *(v19 + 34) = v25;
    _os_log_impl(&dword_20B517000, v16, v17, "Local account (%{mask.hash}@) matches remote participant account (%{mask.hash}s. Using local key delivery client!", v19, 0x2Au);
    v26 = v34;
    sub_20B520158(v34, &unk_27C762E30);
    MEMORY[0x20F2F6A40](v26, -1, -1);
    v27 = v35;
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x20F2F6A40](v27, -1, -1);
    MEMORY[0x20F2F6A40](v19, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v37 + 8))(v13, v38);
  v28 = v39[3];
  v29 = v39[4];
  v30 = __swift_project_boxed_opaque_existential_1(v39, v28);
  v41[3] = v28;
  v41[4] = *(v29 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
  (*(*(v28 - 8) + 16))(boxed_opaque_existential_1, v30, v28);
  sub_20B51CC64(v41, v40);
  v32 = swift_allocObject();
  sub_20B51C710(v40, v32 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
  sub_20C137CA4();
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_20B67D0B0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1F4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v25[1] = a3;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27[0] = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v25[3], v25[4]);
    v18 = sub_20B51E694(v16, v17, v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "Failed to match local and remote participant account. Using remote key delivery client! %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v20 = a2[3];
  v19 = a2[4];
  v21 = __swift_project_boxed_opaque_existential_1(a2, v20);
  v27[3] = v20;
  v27[4] = *(v19 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
  sub_20B51CC64(v27, v26);
  v23 = swift_allocObject();
  sub_20B51C710(v26, v23 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763210);
  sub_20C137CA4();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

uint64_t sub_20B67D354(uint64_t a1)
{
  v2 = sub_20C132614();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20C13BB84();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v49 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v45 = &v45 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - v10;
  v12 = sub_20C1344B4();
  v14 = v13;
  v16 = v15;
  v17 = sub_20C133B84();
  sub_20B583F4C(v12, v14, v16 & 1);
  if ((v17 & 1) == 0)
  {
    sub_20C13B574();
    (*(v48 + 16))(v4, a1, v2);

    v26 = sub_20C13BB74();
    v27 = sub_20C13D1F4();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v52[0] = v29;
      *v28 = 141558530;
      *(v28 + 4) = 1752392040;
      *(v28 + 12) = 2080;
      sub_20C1344C4();
      sub_20B682E60(&qword_27C769BF0, MEMORY[0x277D50820]);
      v30 = sub_20C13DFA4();
      v32 = sub_20B51E694(v30, v31, v52);

      *(v28 + 14) = v32;
      *(v28 + 22) = 2082;
      sub_20B682E60(&qword_27C763208, MEMORY[0x277CC8900]);
      v33 = sub_20C13DFA4();
      v35 = v34;
      (*(v48 + 8))(v4, v2);
      v36 = sub_20B51E694(v33, v35, v52);

      *(v28 + 24) = v36;
      _os_log_impl(&dword_20B517000, v26, v27, "Audio interruption not handled for non audio only workout %{mask.hash}s: %{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x20F2F6A40](v29, -1, -1);
      MEMORY[0x20F2F6A40](v28, -1, -1);
    }

    else
    {

      (*(v48 + 8))(v4, v2);
    }

    return (*(v46 + 8))(v49, v47);
  }

  result = sub_20C132604();
  if (!result)
  {
    return result;
  }

  v19 = result;
  v50 = sub_20C13C954();
  v51 = v20;
  sub_20C13DC04();
  if (!*(v19 + 16))
  {
    goto LABEL_20;
  }

  v21 = sub_20B65B190(v52);
  if ((v22 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_20B51F1D8(*(v19 + 56) + 32 * v21, v53);
  sub_20B51D9C4(v52);
  if ((swift_dynamicCast() & 1) == 0)
  {
  }

  v23 = v50;
  sub_20C13B574();
  sub_20C13BB64();
  v24 = v47;
  v25 = *(v46 + 8);
  v25(v11, v47);
  if (v23)
  {
    if (v23 == 1)
    {

      swift_getObjectType();
      return sub_20C138714();
    }

    v41 = v45;
    sub_20C13B574();
    v42 = sub_20C13BB74();
    v43 = sub_20C13D1F4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349056;
      *(v44 + 4) = v23;
      _os_log_impl(&dword_20B517000, v42, v43, "[SessionMediaPlayerPresenter] Ignoring unknown interruption of type: %{public}lu", v44, 0xCu);
      MEMORY[0x20F2F6A40](v44, -1, -1);
    }

    return (v25)(v41, v24);
  }

  v50 = sub_20C13C954();
  v51 = v37;
  sub_20C13DC04();
  if (!*(v19 + 16) || (v38 = sub_20B65B190(v52), (v39 & 1) == 0))
  {
LABEL_20:

    return sub_20B51D9C4(v52);
  }

  sub_20B51F1D8(*(v19 + 56) + 32 * v38, v53);
  sub_20B51D9C4(v52);

  result = swift_dynamicCast();
  if (result)
  {
    v40 = v50;
    swift_getObjectType();
    if ((v40 & 1) == 0)
    {
      return sub_20C138714();
    }

    return sub_20C138724();
  }

  return result;
}

uint64_t *sub_20B67DAE4()
{
  sub_20B583E6C((v0 + 2));
  MEMORY[0x20F2F6B80](v0 + 4);
  sub_20B583ECC(v0[5]);
  sub_20B583ECC(v0[7]);
  sub_20B583ECC(v0[9]);
  sub_20B583ECC(v0[11]);
  sub_20B583ECC(v0[13]);
  sub_20B583ECC(v0[15]);
  sub_20B583ECC(v0[17]);
  sub_20B583ECC(v0[19]);
  sub_20B583ECC(v0[21]);
  sub_20B583ECC(v0[23]);
  __swift_destroy_boxed_opaque_existential_1((v0 + 25));
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_catalogWorkout;
  v2 = sub_20C1344C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_externalOverlayPresenter);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_keyDeliveryClient);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_remoteKeyDeliveryClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient);
  sub_20B64B688(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionRouteMonitor);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_storefrontLocalizer);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserClient);
  swift_unknownObjectRelease();
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_playbackSnapshot, &unk_27C768AF0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_lastForegroundPlaybackSnapshot, &unk_27C768AF0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_gymKitConnectionSnapshot, &unk_27C7650F0);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_currentMusicTrack, &qword_27C763248);

  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDeviceChangedObserver, &unk_27C768A00);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_outputDevicesChangedObserver, &unk_27C768A00);
  sub_20B520158(v0 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_multiUserSessionRequiringResync, &unk_27C768B10);
  v3 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_activityTypeBehavior;
  v4 = sub_20C137254();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter__preventTimeJumpEnabled;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7713E0);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_20B67DE30()
{
  sub_20B67DAE4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SessionMediaPlayerPresenter()
{
  result = qword_27C7631C0;
  if (!qword_27C7631C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20B67DEDC()
{
  sub_20C1344C4();
  if (v0 <= 0x3F)
  {
    sub_20C13A484();
    if (v1 <= 0x3F)
    {
      sub_20B67E248(319, &qword_27C7631D0, MEMORY[0x277D53C58]);
      if (v2 <= 0x3F)
      {
        sub_20B67E248(319, &qword_27C7631D8, MEMORY[0x277D50E70]);
        if (v3 <= 0x3F)
        {
          sub_20B67E248(319, &qword_27C7631E0, MEMORY[0x277D4FEC8]);
          if (v4 <= 0x3F)
          {
            sub_20B67E248(319, &qword_27C7631E8, MEMORY[0x277D50FB0]);
            if (v5 <= 0x3F)
            {
              sub_20C137254();
              if (v6 <= 0x3F)
              {
                sub_20B52432C();
                if (v7 <= 0x3F)
                {
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_20B67E248(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_20C13D914();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for DownloadButtonAddStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DownloadButtonAddStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_20B67E3F0()
{
  result = qword_27C7631F0;
  if (!qword_27C7631F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7631F0);
  }

  return result;
}

uint64_t sub_20B67E444(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B4A4();
  sub_20C13BB64();
  (*(v7 + 8))(v9, v6);
  v10 = v3[5];
  v3[5] = a1;
  v3[6] = a2;

  result = sub_20B583ECC(v10);
  v12 = v3[13];
  if (v12)
  {

    v12(v13);
    return sub_20B583ECC(v12);
  }

  return result;
}

uint64_t sub_20B67E598()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764600);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v66 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v74 = v9;
  v75 = v10;
  MEMORY[0x28223BE20](v9);
  v69 = v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v70 = v66 - v13;
  MEMORY[0x28223BE20](v14);
  v71 = v66 - v15;
  MEMORY[0x28223BE20](v16);
  v72 = v66 - v17;
  v78 = v18;
  MEMORY[0x28223BE20](v19);
  v73 = v66 - v20;
  v21 = sub_20C13BB84();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v22 + 8))(v24, v21);
  v25 = [objc_allocWithZone(sub_20C138AF4()) init];
  sub_20B682E60(&qword_27C7631F8, type metadata accessor for SessionMediaPlayerPresenter);
  swift_unknownObjectRetain();
  v26 = v25;
  sub_20C138AE4();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v27 = *(v1 + 24);
    swift_getObjectType();
    v76 = v1;
    v67 = v3;
    v28 = v2;
    v29 = *(v27 + 72);
    v30 = v25;
    v31 = v5;
    v32 = v8;
    v33 = v30;
    v29();
    v2 = v28;
    v3 = v67;
    v1 = v76;

    v8 = v32;
    v5 = v31;
    swift_unknownObjectRelease();
  }

  v68 = v26;
  swift_unknownObjectWeakAssign();
  sub_20B67BBFC(*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_platform), v8);
  (*(v3 + 16))(v5, v8, v2);
  v34 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v35 = (v77 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  (*(v3 + 32))(v36 + v34, v5, v2);
  v37 = (v36 + v35);
  *v37 = sub_20B681E38;
  v37[1] = v1;

  v38 = v70;
  sub_20C137C94();
  (*(v3 + 8))(v8, v2);
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = sub_20B681E68;
  *(v40 + 24) = v39;
  v41 = v74;
  v42 = v75;
  v43 = *(v75 + 16);
  v67 = v75 + 16;
  v44 = v69;
  v43(v69, v38, v74);
  v45 = v43;
  v46 = (*(v42 + 80) + 16) & ~*(v42 + 80);
  v66[1] = *(v42 + 80);
  v77 = v46;
  v47 = (v78 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  v49 = *(v42 + 32);
  v76 = v42 + 32;
  v78 = v49;
  v49(v48 + v46, v44, v41);
  v50 = (v48 + v47);
  *v50 = sub_20B64B960;
  v50[1] = v40;
  v51 = v71;
  sub_20C137C94();
  v75 = *(v42 + 8);
  (v75)(v38, v41);
  v52 = swift_allocObject();
  swift_weakInit();
  v53 = swift_allocObject();
  *(v53 + 16) = sub_20B681E70;
  *(v53 + 24) = v52;
  v54 = swift_allocObject();
  *(v54 + 16) = sub_20B5DF3B8;
  *(v54 + 24) = v53;
  v45(v38, v51, v41);
  v55 = swift_allocObject();
  v78(v55 + v77, v38, v41);
  v56 = (v55 + v47);
  *v56 = sub_20B5DF3D4;
  v56[1] = v54;
  v57 = v72;
  sub_20C137C94();
  (v75)(v51, v41);
  v58 = swift_allocObject();
  *(v58 + 16) = sub_20B680A00;
  *(v58 + 24) = 0;
  v45(v51, v57, v41);
  v59 = swift_allocObject();
  v78(v59 + v77, v51, v41);
  v60 = (v59 + v47);
  *v60 = sub_20B5DF204;
  v60[1] = v58;
  v61 = v73;
  sub_20C137C94();
  v62 = v75;
  (v75)(v57, v41);
  v63 = sub_20C137CB4();
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  *(v64 + 24) = 0;
  v63(sub_20B52347C, v64);

  return v62(v61, v41);
}

uint64_t sub_20B67EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v129 = a1;
  v130 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BBF0);
  MEMORY[0x28223BE20](v4 - 8);
  v118 = v109 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765110);
  MEMORY[0x28223BE20](v6 - 8);
  v117 = v109 - v7;
  v131 = sub_20C136194();
  v116 = *(v131 - 1);
  MEMORY[0x28223BE20](v131);
  v126 = v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C137EA4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764610);
  v123 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v120 = v13;
  v121 = v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v122 = v109 - v15;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD40);
  v114 = *(v115 - 8);
  v16 = *(v114 + 64);
  MEMORY[0x28223BE20](v115);
  v17 = v109 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = v109 - v19;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v134 = *(v125 - 8);
  v21 = *(v134 + 64);
  MEMORY[0x28223BE20](v125);
  v124 = v109 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v128 = v109 - v23;
  MEMORY[0x28223BE20](v24);
  v133 = v109 - v25;
  MEMORY[0x28223BE20](v26);
  v132 = v109 - v27;
  v28 = sub_20C13A484();
  MEMORY[0x28223BE20](v28);
  v30 = v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B64B624(a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v30);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v127 = a2;
  if (EnumCaseMultiPayload != 1)
  {
    sub_20B64B688(v30);
    v41 = swift_allocBox();
    MEMORY[0x20F2ED8D0]();
    v116 = swift_allocObject();
    *(v116 + 16) = sub_20C135444() & 1;
    v112 = (a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient);
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(a2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
    sub_20C139C94();
    v42 = swift_allocObject();
    *(v42 + 16) = sub_20B681F28;
    *(v42 + 24) = v41;
    v113 = v41;
    v43 = v114;
    v44 = v115;
    (*(v114 + 16))(v17, v20, v115);
    v45 = (*(v43 + 80) + 16) & ~*(v43 + 80);
    v46 = swift_allocObject();
    (*(v43 + 32))(v46 + v45, v17, v44);
    v47 = (v46 + ((v16 + v45 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v47 = sub_20B681F44;
    v47[1] = v42;

    v48 = v133;
    sub_20C137C94();
    (*(v43 + 8))(v20, v44);
    v111 = 0x800000020C195F10;
    v49 = swift_allocObject();
    v49[2] = 0xD00000000000002BLL;
    v49[3] = 0x800000020C195F10;
    v49[4] = 779;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_20B5D9EA0;
    *(v50 + 24) = v49;
    v51 = v134;
    v52 = *(v134 + 16);
    v109[1] = v134 + 16;
    v110 = v52;
    v53 = v128;
    v54 = v125;
    v52(v128, v48, v125);
    v55 = *(v51 + 80);
    v115 = v55;
    v56 = (v55 + 16) & ~v55;
    v118 = v56;
    v57 = (v21 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v114 = v57;
    v58 = swift_allocObject();
    v59 = *(v51 + 32);
    v117 = (v51 + 32);
    v126 = v59;
    (v59)(v58 + v56, v53, v54);
    v60 = (v58 + v57);
    *v60 = sub_20B5D9EC0;
    v60[1] = v50;
    sub_20C137C94();
    v61 = *(v51 + 8);
    v134 = v51 + 8;
    v131 = v61;
    v61(v48, v54);
    __swift_project_boxed_opaque_existential_1(v112, v112[3]);
    v62 = v122;
    sub_20C139D14();
    v63 = swift_allocObject();
    v64 = v116;
    *(v63 + 16) = sub_20B681F9C;
    *(v63 + 24) = v64;
    v65 = v123;
    v66 = v121;
    v67 = v119;
    (*(v123 + 16))(v121, v62, v119);
    v68 = (*(v65 + 80) + 16) & ~*(v65 + 80);
    v69 = (v120 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
    v70 = swift_allocObject();
    (*(v65 + 32))(v70 + v68, v66, v67);
    v71 = (v70 + v69);
    *v71 = sub_20B681FE4;
    v71[1] = v63;

    v72 = v128;
    sub_20C137C94();
    (*(v65 + 8))(v62, v67);
    v73 = swift_allocObject();
    v73[2] = 0xD00000000000002BLL;
    v73[3] = v111;
    v73[4] = 783;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_20B5DF5EC;
    *(v74 + 24) = v73;
    v75 = v124;
    v76 = v72;
    v77 = v110;
    v110(v124, v72, v54);
    v78 = v114;
    v79 = v115;
    v80 = swift_allocObject();
    (v126)(&v118[v80], v75, v54);
    v81 = (v80 + v78);
    *v81 = sub_20B5DF4B0;
    v81[1] = v74;
    v82 = v133;
    sub_20C137C94();
    v83 = v134;
    v131(v76, v54);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
    v84 = *(v83 + 64);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_20C14F320;
    v86 = v85 + ((v79 + 32) & ~v79);
    v77(v86, v132, v54);
    v77(v86 + v84, v82, v54);
    sub_20B51C88C(0, &qword_281100530);
    v87 = sub_20C13D374();
    sub_20C13A7C4();
    v88 = v76;
    sub_20C137C74();

    sub_20B51CC64(v129, &v135);
    v89 = swift_allocObject();
    v89[2] = v127;
    sub_20B51C710(&v135, (v89 + 3));
    v90 = v116;
    v89[8] = v113;
    v89[9] = v90;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_20B682014;
    *(v91 + 24) = v89;
    v77(v75, v88, v54);
    v92 = v114;
    v93 = swift_allocObject();
    (v126)(&v118[v93], v75, v54);
    v94 = (v93 + v92);
    *v94 = sub_20B683080;
    v94[1] = v91;

    sub_20C137C94();
    v95 = v131;
    v131(v88, v54);
    v95(v133, v54);
    v95(v132, v54);
  }

  v32 = v9;
  (*(v10 + 32))(v12, v30, v9);
  v33 = v117;
  sub_20C137E34();
  v34 = v116;
  v35 = *(v116 + 48);
  v36 = v131;
  v37 = v35(v33, 1, v131);
  v38 = v36;
  v39 = v12;
  if (v37 == 1)
  {
    v40 = v38;
    MEMORY[0x20F2ED8D0]();
    if (v35(v33, 1, v40) != 1)
    {
      sub_20B520158(v33, &unk_27C765110);
    }
  }

  else
  {
    (*(v34 + 32))(v126, v33, v38);
  }

  v134 = v10;
  v97 = v118;
  v98 = v39;
  sub_20C137E14();
  v99 = sub_20C135854();
  v100 = *(v99 - 8);
  if ((*(v100 + 48))(v97, 1, v99) == 1)
  {
    sub_20B520158(v97, &unk_27C76BBF0);
LABEL_10:
    sub_20C135444();
    goto LABEL_11;
  }

  v101 = sub_20C135844();
  v102 = v97;
  v103 = v101;
  v105 = v104;
  v107 = v106;
  (*(v100 + 8))(v102, v99);
  *&v135 = v103;
  *(&v135 + 1) = v105;
  v136 = v107 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A40);
  sub_20C133BD4();
  sub_20B583F4C(v103, v105, v107 & 1);
  if (v137 == 2)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_getObjectType();
  v108 = v126;
  sub_20C138744();
  (*(v34 + 8))(v108, v131);
  return (*(v134 + 8))(v98, v32);
}

uint64_t sub_20B67FD54(uint64_t a1)
{
  v2 = sub_20C136194();
  v3 = swift_projectBox();
  swift_beginAccess();
  return (*(*(v2 - 8) + 24))(v3, a1, v2);
}

uint64_t sub_20B67FDEC()
{
  v0 = sub_20C136194();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = swift_projectBox();
  swift_getObjectType();
  swift_beginAccess();
  (*(v1 + 16))(v3, v4, v0);
  swift_beginAccess();
  sub_20C138744();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_20B67FF64()
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v0 = sub_20C138644();
    swift_unknownObjectRelease();
    if (v0)
    {
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v2 = Strong;
        v3 = swift_unknownObjectWeakLoadStrong();
        v4 = *(v2 + 24);

        if (v3)
        {
          ObjectType = swift_getObjectType();
          (*(v4 + 120))(v0, ObjectType, v4);
          swift_unknownObjectRelease();
        }
      }

      swift_beginAccess();
      v6 = swift_weakLoadStrong();

      if (v6)
      {
        *(v6 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 1;
      }
    }
  }

  return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
}

uint64_t sub_20B6800BC()
{
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v39);
  v42 = &v36 - v0;
  v1 = sub_20C13BB84();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20C137EA4();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  v10 = sub_20C13A484();
  MEMORY[0x28223BE20](v10);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v36 - v17;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B64B624(result + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v15);

    sub_20B681E78(v15, v18);
    sub_20B64B624(v18, v12);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = v43;
      (*(v43 + 32))(v9, v12, v4);
      sub_20C13B594();
      (*(v20 + 16))(v6, v9, v4);
      v21 = sub_20C13BB74();
      v22 = sub_20C13D1F4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v36 = v23;
        v38 = swift_slowAlloc();
        v44[0] = v38;
        *v23 = 136315138;
        v24 = v42;
        v37 = v21;
        sub_20C137CE4();
        v25 = sub_20C13D8F4();
        LODWORD(v39) = v22;
        v27 = v26;
        sub_20B520158(v24, &unk_27C768B10);
        v28 = *(v20 + 8);
        v28(v6, v4);
        v29 = sub_20B51E694(v25, v27, v44);

        v30 = v36;
        v31 = v37;
        *(v36 + 1) = v29;
        v32 = v30;
        _os_log_impl(&dword_20B517000, v31, v39, "Client: Using session origin to sync MultiUserSession %s", v30, 0xCu);
        v33 = v38;
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x20F2F6A40](v33, -1, -1);
        MEMORY[0x20F2F6A40](v32, -1, -1);
      }

      else
      {

        v28 = *(v20 + 8);
        v28(v6, v4);
      }

      (*(v40 + 8))(v3, v41);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        v35 = v42;
        sub_20C137CE4();
        sub_20B67AEC4(v35);

        sub_20B520158(v35, &unk_27C768B10);
      }

      v28(v9, v4);
    }

    else
    {
      v34 = *v12;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20B6805DC(v34);
      }
    }

    return sub_20B64B688(v18);
  }

  return result;
}

uint64_t sub_20B6805DC(uint64_t a1)
{
  v2 = v1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AA0);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v27);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v10 = *(v9 - 8);
  v29 = v9;
  v30 = v10;
  MEMORY[0x28223BE20](v9);
  v28 = &v27 - v11;
  v12 = sub_20C13BB84();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B594();
  sub_20C13BB64();
  (*(v13 + 8))(v15, v12);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient), *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionClient + 24));
  sub_20C13A0E4();
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_20B681EDC;
  *(v17 + 24) = v16;
  v18 = v27;
  (*(v4 + 16))(&v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v27);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v20 = swift_allocObject();
  (*(v4 + 32))(v20 + v19, &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
  v21 = (v20 + ((v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B681EF8;
  v21[1] = v17;

  v22 = v28;
  sub_20C137C94();
  (*(v4 + 8))(v8, v18);
  v23 = v29;
  v24 = sub_20C137CB4();
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v24(sub_20B5DF6DC, v25);

  return (*(v30 + 8))(v22, v23);
}

uint64_t sub_20B680A00(void *a1)
{
  v3 = sub_20C13BB84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v7 = a1;
  v8 = sub_20C13BB74();
  v9 = sub_20C13D1D4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v17[1] = v1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v18 = v12;
    *v11 = 136446210;
    swift_getErrorValue();
    v13 = MEMORY[0x20F2F5850](v17[3], v17[4]);
    v15 = sub_20B51E694(v13, v14, &v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_20B517000, v8, v9, "Unable to activate media player presenter: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x20F2F6A40](v12, -1, -1);
    MEMORY[0x20F2F6A40](v11, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_20B680BDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19[1] = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768B10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = sub_20C134CD4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13A324();
  v15 = v14;
  if (v13 == sub_20C137D24() && v15 == v16)
  {
  }

  else
  {
    v17 = sub_20C13DFF4();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  sub_20C137CE4();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_20B520158(v8, &unk_27C768B10);
  }

  (*(v10 + 32))(v12, v8, v9);
  (*(v10 + 16))(v5, v12, v9);
  (*(v10 + 56))(v5, 0, 1, v9);
  sub_20B67AEC4(v5);
  sub_20B520158(v5, &unk_27C768B10);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_20B680E78()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  sub_20C138614();
  *(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 128))(ObjectType, v7);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20B680FD8(char a1)
{
  v2 = v1;
  v4 = sub_20C13B104();
  v28 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20C13A484();
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20C13BB84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v28 - v14;
  sub_20C13B574();
  sub_20C13BB64();
  v16 = *(v11 + 8);
  v31 = v11 + 8;
  v32 = v10;
  v30 = v16;
  v16(v15, v10);
  sub_20B64B624(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionOrigin, v9);
  LODWORD(v15) = swift_getEnumCaseMultiPayload();
  sub_20B64B688(v9);
  if (v15 != 1)
  {
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater), *(v2 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_nowPlayingUpdater + 24));
    sub_20C138AC4();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v17 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v17 + 176))(a1 & 1, ObjectType, v17);
    swift_unknownObjectRelease();
  }

  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();

  sub_20C138674();

  swift_getObjectType();
  sub_20C1386C4();
  sub_20C13B0F4();
  sub_20C13A764();
  (*(v28 + 8))(v6, v4);
  v19 = sub_20C138664();
  if (v19)
  {
    sub_20C138674();
  }

  v20 = v29;
  sub_20C13B574();
  v21 = sub_20C13BB74();
  v22 = sub_20C13D1F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = v19 & 1;
    _os_log_impl(&dword_20B517000, v21, v22, "[SessionMediaPlayerPresenter] Media Player configure playback, readyToPlay: %{BOOL}d", v23, 8u);
    MEMORY[0x20F2F6A40](v23, -1, -1);
  }

  v30(v20, v32);
  sub_20B67A67C(v19 & 1);
  if ((v19 & 1) != 0 && (v24 = sub_20C138644()) != 0)
  {
    v25 = v24;
    [v24 timeControlStatus];

    v26 = sub_20C138154();
  }

  else
  {
    v26 = 2;
  }

  sub_20C13CEC4();
  v33 = 1;
  return sub_20B677958((v26 | 0x100000000));
}

uint64_t sub_20B6814B0()
{
  v0 = sub_20C13BB84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  v4 = sub_20C13BB74();
  v5 = sub_20C13D1F4();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_20B517000, v4, v5, "[SessionMediaPlayerPresenter] Media Player readyToPlay event observed, configure playback, readyToPlay: true", v6, 2u);
    MEMORY[0x20F2F6A40](v6, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B67A67C(1);
  }

  return result;
}

uint64_t sub_20B681628()
{
  v1 = v0;
  if ((*(*(v0 + 240) + OBJC_IVAR____TtC9SeymourUI27SessionAudioPlayerPresenter_state) & 1) == 0)
  {
    sub_20BF74170();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v2 + 88))(ObjectType, v2);
    swift_unknownObjectRelease();
  }

  v4 = sub_20C138104();
  result = sub_20C138104();
  if (v4 == result)
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v6 = *(v1 + 24);
      v7 = swift_getObjectType();
      (*(v6 + 144))(1, v7, v6);

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_20B681720()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763250);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v19 - v3;
  sub_20BF73830();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 80))(ObjectType, v5);
    swift_unknownObjectRelease();
  }

  if (_UISolariumEnabled() && swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v0 + 24);
    v8 = swift_getObjectType();
    (*(v7 + 224))(v8, v7);
    swift_unknownObjectRelease();
  }

  v9 = sub_20C138104();
  if (v9 == sub_20C138104())
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v11 = *(v1 + 24);
      v12 = swift_getObjectType();
      (*(v11 + 144))(0, v12, v11);

      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_20C134414();
    v13 = sub_20C135B04();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v4, 1, v13) == 1)
    {
      sub_20B520158(v4, &qword_27C763250);
      v15 = &unk_282288300;
    }

    else
    {
      sub_20C135AF4();
      (*(v14 + 8))(v4, v13);

      v15 = &unk_2822882D8;
    }

    v16 = sub_20BE8D564(v15);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = *(v1 + 24);
      v18 = swift_getObjectType();
      (*(v17 + 136))(v16, v18, v17);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_20B6819CC()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 280))(ObjectType, v6);
    swift_unknownObjectRelease();
  }

  v8 = *(v1 + 40);
  if (v8)
  {

    v8(v9);
    sub_20B583ECC(v8);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v1 + 24);
    v11 = swift_getObjectType();
    (*(v10 + 232))(v11, v10);
    swift_unknownObjectRelease();
  }

  return sub_20B680E78();
}

uint64_t sub_20B681B64()
{
  v1 = v0;
  v2 = sub_20C13BB84();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_state) == 2)
  {
  }

  else
  {
    v6 = sub_20C13DFF4();

    if ((v6 & 1) == 0)
    {
      return result;
    }
  }

  sub_20C13B574();
  sub_20C13BB64();
  (*(v3 + 8))(v5, v2);
  swift_getObjectType();
  return sub_20C138694();
}

uint64_t sub_20B681D48(char *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  *(v6 + 32) = v5;

  return sub_20C137C94();
}

uint64_t sub_20B681DE4()
{
  v0 = sub_20C13DEA4();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_20B681E78(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C13A484();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20B681F9C(char *a1)
{
  v2 = *a1;
  result = swift_beginAccess();
  *(v1 + 16) = v2;
  return result;
}

uint64_t sub_20B682040@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_20C135D54() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_20B67CC8C(a1, v2 + v6, v7, a2);
}

uint64_t sub_20B682144(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20B68220C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_20B52AC14;

  return sub_20B67AA80(a1, v4, v5, v7, v6);
}

uint64_t sub_20B6822CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52AC14;

  return sub_20B67AB1C(a1, v4, v5, v6);
}

uint64_t sub_20B6823A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_20C136194();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_20C13BB84();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B682528, 0, 0);
}

uint64_t sub_20B682528()
{
  v18 = v0;
  sub_20C13B574();

  v1 = sub_20C13BB74();
  v2 = sub_20C13D1F4();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  if (v3)
  {
    v8 = v0[2];
    v7 = v0[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_20B51E694(v8, v7, &v17);
    _os_log_impl(&dword_20B517000, v1, v2, "Updating audio language preference: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x20F2F6A40](v10, -1, -1);
    MEMORY[0x20F2F6A40](v9, -1, -1);
  }

  (*(v5 + 8))(v4, v6);
  v11 = v0[7];
  v12 = v0[4];

  sub_20C13CE94();
  sub_20C136174();
  __swift_project_boxed_opaque_existential_1((v12 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient), *(v12 + OBJC_IVAR____TtC9SeymourUI27SessionMediaPlayerPresenter_sessionPreferenceClient + 24));
  sub_20C139CC4();
  v13 = swift_task_alloc();
  v0[14] = v13;
  *(v13 + 16) = "SeymourUI/SessionMediaPlayerPresenter.swift";
  *(v13 + 24) = 43;
  *(v13 + 32) = 2;
  *(v13 + 40) = 414;
  *(v13 + 48) = v11;
  v14 = swift_task_alloc();
  v0[15] = v14;
  *v14 = v0;
  v14[1] = sub_20B6827A4;
  v15 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v14, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B6830A8, v13, v15);
}

uint64_t sub_20B6827A4()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = sub_20B682AA0;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v3 = sub_20B6828F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_20B6828F4()
{
  v1 = swift_task_alloc();
  *(v0 + 136) = v1;
  *v1 = v0;
  v1[1] = sub_20B68298C;
  v2 = *(v0 + 80);

  return sub_20B676418(v2);
}

uint64_t sub_20B68298C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_20B682BF0;
  }

  else
  {
    v2 = sub_20B682B54;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B682AA0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B682B54()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_20B682BF0()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

unint64_t sub_20B682CA4()
{
  result = qword_27C763240;
  if (!qword_27C763240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763240);
  }

  return result;
}

unint64_t sub_20B682CF8()
{
  result = qword_27C76BB30;
  if (!qword_27C76BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C76BB30);
  }

  return result;
}

uint64_t sub_20B682D4C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_20B52A9D4;

  return sub_20B673148(v7, v8, v9, v10, a1, v4, v5, v6);
}

uint64_t sub_20B682E60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_20B682EA8()
{
  result = qword_2811005A0;
  if (!qword_2811005A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27C766280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2811005A0);
  }

  return result;
}

uint64_t sub_20B682F0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_20B52A9D4;

  return sub_20B672474(a1, v4, v5, v6);
}

unint64_t sub_20B682FCC()
{
  result = qword_27C763258;
  if (!qword_27C763258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763258);
  }

  return result;
}

unint64_t sub_20B683020()
{
  result = qword_27C763260;
  if (!qword_27C763260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763260);
  }

  return result;
}

unint64_t sub_20B6830CC()
{
  result = qword_27C763268;
  if (!qword_27C763268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763268);
  }

  return result;
}

void sub_20B68316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 + 8);
  v47 = v7(a2, a3);
  v53 = v3;
  v8 = v7(a2, a3);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  sub_20C133AA4();

  v9 = objc_allocWithZone(type metadata accessor for UpNextQueueViewController());
  v10 = sub_20B6837D4(v47, v8, v51, v52, v51, 37, 0, 11, v9);
  v54 = v53;
  v11 = (*(a3 + 16))(a2, a3);
  if (v11 <= 1)
  {
    if (v11)
    {
      v39 = [objc_allocWithZone(type metadata accessor for UpNextPopoverNavigationController()) initWithRootViewController_];
      [v39 setModalPresentationStyle_];
      v40 = [v39 popoverPresentationController];
      if (v40)
      {
        v41 = v40;
        [v40 setPermittedArrowDirections_];
      }

      v42 = [v39 popoverPresentationController];
      if (v42)
      {
        v43 = v42;
        type metadata accessor for UpNextQueuePopOverBackgroundView();
        [v43 setPopoverBackgroundViewClass_];
      }

      v44 = [v39 popoverPresentationController];

      [v44 setSourceView_];
      [v4 presentViewController:v39 animated:1 completion:0];
    }

    else
    {
      v12 = [v10 sheetPresentationController];
      if (v12)
      {
        v13 = v12;
        [v12 setPrefersScrollingExpandsWhenScrolledToEdge_];
        [v13 setSmu:1 wantsFullScreen:?];
        [v13 setSmu:1 allowsInteractiveDismissWhenFullScreen:?];
        [v13 setWidthFollowsPreferredContentSizeWhenEdgeAttached_];
        [v13 setPrefersGrabberVisible_];
      }

      [v4 presentViewController:v10 animated:1 completion:0];
    }

    goto LABEL_20;
  }

  if (v11 == 3)
  {
    v53 = v4;
    v48 = v4;
    v14 = v7(a2, a3);
    v50 = v48;
    v15 = v7(a2, a3);

    sub_20C133AA4();
    v16 = v52;
    v46 = v51;
    sub_20C133AA4();

    v17 = v51;
    QueueViewController = type metadata accessor for TVUpNextQueueViewController();
    v19 = objc_allocWithZone(QueueViewController);
    v20 = &v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_layout];
    *v20 = xmmword_20C153DC0;
    *(v20 + 1) = xmmword_20C153DD0;
    type metadata accessor for TVUpNextQueuePresenter();
    swift_allocObject();

    v22 = sub_20B91BCA8(v21, 0, 0xB);
    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_presenter] = v22;
    v23 = *(v22 + 24);
    v24 = objc_allocWithZone(type metadata accessor for TVUpNextQueueListViewController());

    v25 = sub_20B683F5C(v14, v23, v15, v46, v16, v17, v24);

    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_listViewController] = v25;
    objc_allocWithZone(type metadata accessor for TVQueueFocusedWorkoutViewController());

    *&v19[OBJC_IVAR____TtC9SeymourUI27TVUpNextQueueViewController_focusedWorkoutController] = sub_20BC1C728(v26);
    v49.receiver = v19;
    v49.super_class = QueueViewController;
    v27 = objc_msgSendSuper2(&v49, sel_initWithNibName_bundle_, 0, 0);

    v28 = [v48 view];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 snapshotViewAfterScreenUpdates_];

      objc_allocWithZone(type metadata accessor for BlurViewController());
      v31 = v27;
      sub_20BADB764(v31, v30);
      v33 = v32;

      v34 = [v48 splitViewController];
      if (!v34 || (v35 = v34, v36 = [v34 navigationController], v35, !v36))
      {
        v37 = [v48 navigationController];
        if (!v37)
        {

          goto LABEL_19;
        }

        v36 = v37;
      }

      v38 = v36;
      [v38 pushViewController:v33 animated:1];

LABEL_19:
      v10 = v31;
LABEL_20:

      return;
    }

    __break(1u);
  }

  sub_20C13DE24();
  __break(1u);
}

char *sub_20B6837D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8, _BYTE *a9)
{
  ObjectType = swift_getObjectType();
  v44[3] = &type metadata for CatalogPageNavigator;
  v44[4] = &off_2822FB218;
  v17 = swift_allocObject();
  v44[0] = v17;
  *(v17 + 16) = a2;
  *(v17 + 24) = a3;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_visibility] = 1;
  v18 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_currentContentInsetBehavior];
  *v18 = 0;
  *(v18 + 1) = 0;
  v18[16] = -4;
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_isTransitioningContentInset] = 0;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_resignActiveObserver] = 0;
  v19 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_layout];
  sub_20BC3A3D8(v45);
  v20 = v45[1];
  *v19 = v45[0];
  *(v19 + 1) = v20;
  *(v19 + 2) = v45[2];
  *(v19 + 6) = v46;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentAvailabilityFilter]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  v21 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder;
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_mediaTagStringBuilder]);
  sub_20B51CC64(v44, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_pageNavigator]);
  sub_20C133AA4();
  a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_platform] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_eventHub] = v42;
  v22 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_contentInsetInitialBehavior];
  *v22 = *(v19 + 3);
  v22[8] = 0;
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_menuOptions] = &unk_282287FA8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_bookmarkClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  v23 = OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer;
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_storefrontLocalizer]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionCache]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_subscriptionToken] = sub_20C13A914();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A80);
  sub_20C133AA4();
  sub_20B51C710(&v42, &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_upNextQueueClient]);
  type metadata accessor for UpNextQueueGalleryDataProvider();
  swift_allocObject();

  v25 = sub_20BE76468(v24, a6, a7, a8);

  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_dataProvider] = v25;
  type metadata accessor for QueueActionsViewPresenter();
  v26 = swift_allocObject();

  v27 = sub_20BF91C50(a1, 0, 0, v25, v26);
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter] = v27;
  sub_20B51CC64(&a9[v21], &v42);
  v28 = objc_allocWithZone(type metadata accessor for QueueActionsView());

  v29 = sub_20BF91514(a1, v27, &v42, 1, v28);
  [v29 setTranslatesAutoresizingMaskIntoConstraints_];
  *&a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsView] = v29;
  sub_20B51CC64(&a9[v23], &v42);
  __swift_project_boxed_opaque_existential_1(&v42, v43);
  v30 = sub_20C138D34();
  v31 = &a9[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_galleryTitle];
  *v31 = v30;
  v31[1] = v32;
  __swift_destroy_boxed_opaque_existential_1(&v42);
  v41.receiver = a9;
  v41.super_class = ObjectType;
  v33 = objc_msgSendSuper2(&v41, sel_initWithNibName_bundle_, 0, 0);
  v34 = *&v33[OBJC_IVAR____TtC9SeymourUI25UpNextQueueViewController_queueActionsViewPresenter];
  v35 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v36 = (v34 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  v37 = *(v34 + OBJC_IVAR____TtC9SeymourUI25QueueActionsViewPresenter_onStartQueue);
  *v36 = sub_20B68426C;
  v36[1] = v35;
  v38 = v33;

  sub_20B583ECC(v37);

  swift_getObjectType();
  sub_20C13AF44();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v42);

  swift_getObjectType();
  sub_20C137384();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20C13A7A4();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v42);
  __swift_destroy_boxed_opaque_existential_1(v44);

  return v38;
}

id sub_20B683F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, _BYTE *a7)
{
  v25[3] = &type metadata for TVCatalogPageNavigator;
  v25[4] = &off_2822C80E8;
  v14 = swift_allocObject();
  v25[0] = v14;
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  v15 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dynamicOfferCoordinator;
  *&a7[v15] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v16 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseCoordinator;
  *&a7[v16] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v17 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_purchaseHandler;
  *&a7[v17] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  v18 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_webUserInterfaceCoordinator;
  *&a7[v18] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_visibility] = 1;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_resignActiveObserver] = 0;
  v19 = OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_lastFocusedIndexPath;
  v20 = sub_20C133244();
  (*(*(v20 - 8) + 56))(&a7[v19], 1, 1, v20);
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_settlingTimer] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_bag] = v24;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dependencies] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620A0);
  sub_20C133AA4();
  sub_20B51C710(&v24, &a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_timerProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_eventHub] = v24;
  *&a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_dataProvider] = a2;
  sub_20B51CC64(v25, &a7[OBJC_IVAR____TtC9SeymourUI31TVUpNextQueueListViewController_pageNavigator]);
  v23.receiver = a7;
  v23.super_class = type metadata accessor for TVUpNextQueueListViewController();
  v21 = objc_msgSendSuper2(&v23, sel_initWithNibName_bundle_, 0, 0);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return v21;
}

uint64_t objectdestroyTm_0()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_20B684288()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  if (v14 == result)
  {
    v16 = 62.0;
  }

  else
  {
    v16 = 25.0;
    if (Width / v13 > 375.0)
    {
      v16 = 38.0;
      if (Width / v13 < 834.0)
      {
        v16 = 28.0;
      }
    }
  }

  qword_27C763270 = *&v16;
  return result;
}

uint64_t sub_20B6843BC()
{
  sub_20C1380F4();
  v0 = objc_opt_self();
  v1 = [v0 mainScreen];
  [v1 nativeBounds];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v17.origin.x = v3;
  v17.origin.y = v5;
  v17.size.width = v7;
  v17.size.height = v9;
  Width = CGRectGetWidth(v17);
  v11 = [v0 mainScreen];
  [v11 nativeScale];
  v13 = v12;

  v14 = sub_20C138104();
  result = sub_20C138104();
  v16 = 17.0;
  if (v14 != result)
  {
    v16 = 6.0;
    if (Width / v13 > 375.0)
    {
      v16 = 10.0;
      if (Width / v13 < 834.0)
      {
        v16 = 8.0;
      }
    }
  }

  qword_27C763278 = *&v16;
  return result;
}

void sub_20B684590()
{
  v1 = v0;
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C14FE90;
  v4 = *&v1[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar];
  v5 = [v4 topAnchor];
  v6 = [v1 topAnchor];
  v7 = [v5 constraintEqualToAnchor_];

  *(v3 + 32) = v7;
  v8 = [v4 bottomAnchor];
  v9 = [v1 bottomAnchor];
  if (qword_27C760688 != -1)
  {
    swift_once();
  }

  v10 = [v8 constraintEqualToAnchor:v9 constant:-*&qword_27C763278];

  *(v3 + 40) = v10;
  v11 = [v4 leadingAnchor];
  v12 = [v1 leadingAnchor];
  v13 = [v11 constraintEqualToAnchor_];

  *(v3 + 48) = v13;
  v14 = [v4 trailingAnchor];
  v15 = [v1 trailingAnchor];
  v16 = [v14 constraintEqualToAnchor_];

  *(v3 + 56) = v16;
  sub_20B5E29D0();
  v17 = sub_20C13CC54();

  [v2 activateConstraints_];
}

id sub_20B6848EC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SessionBurnBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_20B6849BC(int a1, char a2, double a3)
{
  sub_20BAEC8CC(a1, a2, a3);
  v4 = sub_20C136FB4();

  return [v3 accessibilityUpdateBurnBar_];
}

void sub_20B684A4C()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar);

  sub_20BC1688C();

  v2 = *(*(v1 + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter) + OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView);
  sub_20B91909C();
}

char *sub_20B684B04(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar;
  type metadata accessor for BurnBar();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v2[v5] = v6;
  *&v2[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_presenter] = a1;
  v23.receiver = v2;
  v23.super_class = type metadata accessor for SessionBurnBarView();

  v7 = objc_msgSendSuper2(&v23, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  *(a1 + 24) = &off_28229C650;
  swift_unknownObjectWeakAssign();
  v8 = OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar;
  v9 = *&v7[OBJC_IVAR____TtC9SeymourUI18SessionBurnBarView_burnBar];
  v10 = v7;
  [v10 addSubview_];
  v11 = sub_20C1371C4();
  v12 = *(*&v7[v8] + OBJC_IVAR____TtC9SeymourUI7BurnBar_modalityIconPlatter);
  v13 = OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView;
  v14 = *&v12[OBJC_IVAR____TtC9SeymourUI26BurnBarModalityIconPlatter_modalityIconView];
  v15 = v12;
  [v14 removeFromSuperview];
  v16 = sub_20B9194AC(v11);
  v17 = objc_allocWithZone(MEMORY[0x277D75348]);
  v18 = v16;
  v19 = [v17 initWithRed:0.945098039 green:0.843137255 blue:0.894117647 alpha:1.0];
  [(objc_super *)v18 setTintColor:v19];

  v20 = *&v12[v13];
  *&v12[v13] = v18;

  [v15 addSubview_];
  [v15 setNeedsLayout];

  sub_20B684590();
  v21 = sub_20C137254();
  (*(*(v21 - 8) + 8))(a2, v21);
  return v10;
}

char *sub_20B684D34(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setNumberOfLines_];
  v12 = [objc_opt_self() secondaryLabelColor];
  [v11 setTextColor_];

  v13 = [objc_opt_self() smu:*MEMORY[0x277D76968] preferredFontForTextStyle:0 variant:?];
  [v11 setFont_];

  [v11 setTextAlignment_];
  *&v4[v10] = v11;
  v47.receiver = v4;
  v47.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v47, sel_initWithFrame_, a1, a2, a3, a4);
  v15 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v16 = *&v14[OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel];
  v17 = v14;
  [v17 addSubview_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v20 = *MEMORY[0x277D768C8];
  v19 = *(MEMORY[0x277D768C8] + 8);
  v21 = *(MEMORY[0x277D768C8] + 16);
  v22 = *(MEMORY[0x277D768C8] + 24);
  v23 = *&v14[v15];
  v24 = [v23 leadingAnchor];
  v25 = [v17 leadingAnchor];
  v26 = [v24 constraintEqualToAnchor:v25 constant:v19];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  v28 = v26;
  v29 = [v23 trailingAnchor];
  v30 = [v17 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:-v22];

  LODWORD(v32) = 1148846080;
  [v31 setPriority_];
  v33 = v31;
  v34 = [v23 topAnchor];
  v35 = [v17 topAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 constant:v20];

  LODWORD(v37) = 1148846080;
  [v36 setPriority_];
  v38 = [v23 bottomAnchor];
  v39 = [v17 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:-v21];

  LODWORD(v41) = 1148846080;
  [v40 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_20C14FE90;
  *(v42 + 32) = v28;
  *(v42 + 40) = v33;
  *(v42 + 48) = v36;
  *(v42 + 56) = v40;
  v43 = v36;

  *(inited + 32) = v42;
  v44 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  sub_20B68537C(inited + 32);
  sub_20B5E29D0();
  v45 = sub_20C13CC54();

  [v44 activateConstraints_];

  return v17;
}

void sub_20B685230()
{
  v1 = OBJC_IVAR____TtC9SeymourUI20ProductPlacementView_textLabel;
  v2 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  [v2 setNumberOfLines_];
  v3 = [objc_opt_self() secondaryLabelColor];
  [v2 setTextColor_];

  v4 = [objc_opt_self() smu:*MEMORY[0x277D76968] preferredFontForTextStyle:0 variant:?];
  [v2 setFont_];

  [v2 setTextAlignment_];
  *(v0 + v1) = v2;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20B68537C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B6853E4()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769A80);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  sub_20C13CDA4();
  v1[12] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[13] = v4;
  v1[14] = v3;

  return MEMORY[0x2822009F8](sub_20B6854E4, v4, v3);
}

uint64_t sub_20B6854E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 64) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient), *(*(v0 + 64) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient + 24));
  sub_20C139DF4();

  return MEMORY[0x2822009F8](sub_20B685580, 0, 0);
}

uint64_t sub_20B685580()
{
  v1 = v0[11];
  v2 = swift_task_alloc();
  v0[15] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 54;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763350);
  v0[17] = v4;
  *v3 = v0;
  v3[1] = sub_20B6856A8;

  return MEMORY[0x2822008A0](v0 + 7, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D6A4, v2, v4);
}

uint64_t sub_20B6856A8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {

    v3 = sub_20B685A40;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[10];
    v6 = v2[11];
    v8 = v2[9];
    v2[19] = v2[7];

    (*(v7 + 8))(v6, v8);
    v4 = v2[13];
    v5 = v2[14];
    v3 = sub_20B685814;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B685814()
{
  v1 = v0[19];
  v2 = v0[17];
  __swift_project_boxed_opaque_existential_1((v0[8] + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter), *(v0[8] + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter + 24));
  v0[5] = v2;
  v0[6] = sub_20B68D6D4(&qword_27C763358, &qword_27C763350);
  v0[2] = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_20B685914;

  return sub_20C0A57E4((v0 + 2));
}

uint64_t sub_20B685914(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 168) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_20B685BB4;
  }

  else
  {
    v4[22] = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 2));
    v5 = v4[13];
    v6 = v4[14];
    v7 = sub_20B685B20;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B685A40()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[13];
  v2 = v0[14];

  return MEMORY[0x2822009F8](sub_20B685AB4, v1, v2);
}

uint64_t sub_20B685AB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B685B20()
{
  v1 = v0[22];
  v2 = v0[8];

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B685BB4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B685C28()
{
  v1[24] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v1[25] = v2;
  v3 = *(v2 - 8);
  v1[26] = v3;
  v1[27] = *(v3 + 64);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763338);
  v1[30] = v4;
  v1[31] = *(v4 - 8);
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  sub_20C13CDA4();
  v1[34] = sub_20C13CD94();
  v6 = sub_20C13CD24();
  v1[35] = v6;
  v1[36] = v5;

  return MEMORY[0x2822009F8](sub_20B685DB0, v6, v5);
}

uint64_t sub_20B685DB0()
{
  v1 = sub_20B716148(&unk_282288350);
  sub_20C1380F4();
  v2 = sub_20C138104();
  if (v2 == sub_20C138104())
  {
    v3 = sub_20BE8BF14(&unk_282288328);
    sub_20B722BD4(v3, v1);
  }

  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 208);
  v24 = *(v0 + 216);
  v8 = *(v0 + 192);
  v7 = *(v0 + 200);
  v9 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient;
  *(v0 + 296) = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient;
  __swift_project_boxed_opaque_existential_1((v8 + v9), *(v8 + v9 + 24));
  sub_20C13A1B4();

  v10 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter;
  *(v0 + 304) = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter;
  v11 = *__swift_project_boxed_opaque_existential_1((v8 + v10), *(v8 + v10 + 24));
  v12 = type metadata accessor for ContentAvailabilityFilter();
  *(v0 + 312) = v12;
  *(v0 + 40) = v12;
  *(v0 + 48) = &off_2822C8E88;
  *(v0 + 16) = v11;
  sub_20B51CC64(v0 + 16, v0 + 56);
  v13 = swift_allocObject();
  sub_20B51C710((v0 + 56), v13 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = sub_20B68D360;
  *(v14 + 24) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_20B68D3B4;
  *(v15 + 24) = v14;
  v16 = *(v6 + 16);
  *(v0 + 320) = v16;
  *(v0 + 328) = (v6 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v16(v5, v4, v7);
  v17 = *(v6 + 80);
  *(v0 + 456) = v17;
  v18 = (v17 + 16) & ~v17;
  v19 = swift_allocObject();
  v20 = *(v6 + 32);
  *(v0 + 336) = v20;
  *(v0 + 344) = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v20(v19 + v18, v5, v7);
  v21 = (v19 + ((v24 + v18 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_20B6331FC;
  v21[1] = v15;
  *(v0 + 352) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340);
  sub_20C137C94();
  v22 = *(v6 + 8);
  *(v0 + 360) = v22;
  *(v0 + 368) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v4, v7);

  return MEMORY[0x2822009F8](sub_20B6860A4, 0, 0);
}

uint64_t sub_20B6860A4()
{
  v1 = v0[33];
  v2 = swift_task_alloc();
  v0[47] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 73;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[48] = v3;
  *v3 = v0;
  v3[1] = sub_20B6861B4;
  v4 = v0[44];

  return MEMORY[0x2822008A0](v0 + 22, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D3C0, v2, v4);
}

uint64_t sub_20B6861B4()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {

    v3 = sub_20B68632C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[33];
    v7 = v2[30];
    v8 = v2[31];
    v2[50] = v2[22];

    v9 = *(v8 + 8);
    v2[51] = v9;
    v2[52] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v6, v7);
    v4 = v2[35];
    v5 = v2[36];
    v3 = sub_20B68643C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B68632C()
{
  (*(v0[31] + 8))(v0[33], v0[30]);
  v1 = v0[35];
  v2 = v0[36];

  return MEMORY[0x2822009F8](sub_20B6863A0, v1, v2);
}

uint64_t sub_20B6863A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68643C()
{
  v18 = *(v0 + 360);
  v17 = *(v0 + 336);
  v1 = *(v0 + 312);
  v16 = *(v0 + 320);
  v2 = *(v0 + 232);
  v14 = *(v0 + 224);
  v3 = *(v0 + 192);
  v4 = *(v0 + 200);
  v15 = (*(v0 + 456) + 16) & ~*(v0 + 456);
  v13 = (v15 + *(v0 + 216) + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + *(v0 + 304));
  __swift_project_boxed_opaque_existential_1((v3 + *(v0 + 296)), *(v3 + *(v0 + 296) + 24));
  sub_20BE8BF14(&unk_282288378);
  sub_20C13A1B4();

  v6 = *__swift_project_boxed_opaque_existential_1(v5, v5[3]);
  *(v0 + 120) = v1;
  *(v0 + 128) = &off_2822C8E88;
  *(v0 + 96) = v6;
  sub_20B51CC64(v0 + 96, v0 + 136);
  v7 = swift_allocObject();
  sub_20B51C710((v0 + 136), v7 + 16);

  __swift_destroy_boxed_opaque_existential_1(v0 + 96);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_20B68D3D8;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_20B68D72C;
  *(v9 + 24) = v8;
  v16(v14, v2, v4);
  v10 = swift_allocObject();
  v17(v10 + v15, v14, v4);
  v11 = (v10 + v13);
  *v11 = sub_20B68D730;
  v11[1] = v9;
  sub_20C137C94();
  v18(v2, v4);

  return MEMORY[0x2822009F8](sub_20B6866A8, 0, 0);
}

uint64_t sub_20B6866A8()
{
  v1 = v0[32];
  v2 = swift_task_alloc();
  v0[53] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 76;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[54] = v3;
  *v3 = v0;
  v3[1] = sub_20B6867B0;
  v4 = v0[44];

  return MEMORY[0x2822008A0](v0 + 23, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D734, v2, v4);
}

uint64_t sub_20B6867B0()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  if (v0)
  {

    v3 = sub_20B686A0C;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = v2[51];
    v7 = v2[32];
    v8 = v2[30];
    v2[56] = v2[23];

    v6(v7, v8);
    v4 = v2[35];
    v5 = v2[36];
    v3 = sub_20B68692C;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B68692C()
{
  v1 = v0[56];
  v2 = v0[50];
  v3 = v0[24];

  v4 = *(v2 + 16);

  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount) = v4;
  v5 = *(v1 + 16);

  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount) = v5;

  v6 = v0[1];

  return v6();
}

uint64_t sub_20B686A0C()
{
  (*(v0 + 408))(*(v0 + 256), *(v0 + 240));
  v1 = *(v0 + 280);
  v2 = *(v0 + 288);

  return MEMORY[0x2822009F8](sub_20B686A78, v1, v2);
}

uint64_t sub_20B686A78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B686B14(uint64_t a1, void (*a2)(void *))
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D60);
  v5[4] = sub_20B68D6D4(&qword_27C763348, &unk_27C765D60);
  v5[0] = a1;

  a2(v5);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t sub_20B686BB4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_20B51CC64(a1, v11);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_20B51C710(v11, v8 + 24);
  v9 = swift_allocObject();
  *(v9 + 16) = "SeymourUI/ContentAvailabilityFilter.swift";
  *(v9 + 24) = 41;
  *(v9 + 32) = 2;
  *(v9 + 40) = 25;
  *(v9 + 48) = a5;
  *(v9 + 56) = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763340);
  return sub_20C137C94();
}

uint64_t sub_20B686CB4()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C764170);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  sub_20C13CDA4();
  v1[7] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v1[8] = v4;
  v1[9] = v3;

  return MEMORY[0x2822009F8](sub_20B686DB4, v4, v3);
}

uint64_t sub_20B686DB4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient), *(*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient + 24));
  sub_20C13A214();

  return MEMORY[0x2822009F8](sub_20B686E50, 0, 0);
}

uint64_t sub_20B686E50()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = "SeymourUI/MyLibraryShelf.swift";
  *(v2 + 24) = 30;
  *(v2 + 32) = 2;
  *(v2 + 40) = 84;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[11] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763310);
  *v3 = v0;
  v3[1] = sub_20B686F74;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B68D16C, v2, v4);
}

uint64_t sub_20B686F74()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {

    v3 = sub_20B687320;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v2[13] = v2[2];

    (*(v7 + 8))(v6, v8);
    v4 = v2[8];
    v5 = v2[9];
    v3 = sub_20B6870E0;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B6870E0()
{

  v1 = swift_task_alloc();
  v0[14] = v1;
  v2 = sub_20C138204();
  v3 = sub_20B68D318(&qword_27C763318, MEMORY[0x277D53C88]);
  *v1 = v0;
  v1[1] = sub_20B6871E4;
  v4 = v0[13];
  v5 = v0[3];

  return MEMORY[0x2821AFAF0](&unk_20C154060, v5, v4, v2, v3);
}

uint64_t sub_20B6871E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 120) = v1;

  if (v1)
  {
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_20B687494;
  }

  else
  {

    v4[16] = a1;
    v5 = v4[8];
    v6 = v4[9];
    v7 = sub_20B687400;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B687320()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[8];
  v2 = v0[9];

  return MEMORY[0x2822009F8](sub_20B687394, v1, v2);
}

uint64_t sub_20B687394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B687400()
{
  v1 = v0[16];
  v2 = v0[3];

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_20B687494()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B687514(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  sub_20C13CDA4();
  v2[9] = sub_20C13CD94();
  v4 = sub_20C13CD24();
  v2[10] = v4;
  v2[11] = v3;

  return MEMORY[0x2822009F8](sub_20B6875AC, v4, v3);
}

uint64_t sub_20B6875AC()
{
  v1 = v0[8];
  v2 = sub_20C1381E4();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter), *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter + 24));
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763320);
  v0[6] = sub_20B68D6D4(&qword_27C763328, &qword_27C763320);
  v0[2] = v2;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_20B6876C4;

  return (sub_20C0A6C2C)(v0 + 2);
}

uint64_t sub_20B6876C4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_20B68786C;
  }

  else
  {
    v4[14] = a1;
    __swift_destroy_boxed_opaque_existential_1((v4 + 2));
    v5 = v4[10];
    v6 = v4[11];
    v7 = sub_20B6877F0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B6877F0()
{
  v1 = *(v0 + 112);

  v2 = *(v1 + 16);

  v3 = *(v0 + 8);

  return v3(v2 != 0);
}

uint64_t sub_20B68786C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_20B6878DC()
{
  v1[14] = v0;
  v2 = sub_20C13BB84();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = sub_20C13CDA4();
  v1[21] = sub_20C13CD94();
  v3 = swift_task_alloc();
  v1[22] = v3;
  *v3 = v1;
  v3[1] = sub_20B687A00;

  return sub_20B6853E4();
}

uint64_t sub_20B687A00()
{
  v2 = *v1;
  *(v2 + 184) = v0;

  if (v0)
  {
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B688220, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 192) = v5;
    *v5 = v2;
    v5[1] = sub_20B687B84;

    return sub_20B685C28();
  }
}

uint64_t sub_20B687B84()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {
    v4 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B688428, v4, v3);
  }

  else
  {
    v5 = swift_task_alloc();
    *(v2 + 208) = v5;
    *v5 = v2;
    v5[1] = sub_20B687D08;

    return sub_20B686CB4();
  }
}

uint64_t sub_20B687D08()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_20C13CD24();
    v5 = v4;
    v6 = sub_20B688630;
    v7 = v3;
    v8 = v5;
  }

  else
  {
    v2[28] = sub_20C13CD94();
    v9 = sub_20C13CD24();
    v8 = v10;
    v2[29] = v9;
    v2[30] = v10;
    v6 = sub_20B687E7C;
    v7 = v9;
  }

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_20B687E7C()
{
  v1 = (*(v0 + 112) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 248) = v4;
  *v4 = v0;
  v4[1] = sub_20B687F3C;

  return MEMORY[0x2821ADF38](v2, v3);
}

uint64_t sub_20B687F3C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_20B688110;
  }

  else
  {
    v4[32] = a1;
    v5 = v4[29];
    v6 = v4[30];
    v7 = sub_20B688068;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B688068()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 112);

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = v3;
  v5 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B688190, v5, v4);
}

uint64_t sub_20B688110()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B688190, v1, v0);
}

uint64_t sub_20B688190()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B688220()
{
  v20 = v0;
  v1 = *(v0 + 184);
  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v18 = *(v0 + 152);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to update download count with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v13 = *(v0 + 152);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);

    (*(v15 + 8))(v13, v14);
  }

  v16 = swift_task_alloc();
  *(v0 + 192) = v16;
  *v16 = v0;
  v16[1] = sub_20B687B84;

  return sub_20B685C28();
}

uint64_t sub_20B688428()
{
  v20 = v0;
  v1 = *(v0 + 200);
  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 200);
    v18 = *(v0 + 144);
    v7 = *(v0 + 120);
    v6 = *(v0 + 128);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to update bookmark count with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v18, v7);
  }

  else
  {
    v13 = *(v0 + 144);
    v14 = *(v0 + 120);
    v15 = *(v0 + 128);

    (*(v15 + 8))(v13, v14);
  }

  v16 = swift_task_alloc();
  *(v0 + 208) = v16;
  *v16 = v0;
  v16[1] = sub_20B687D08;

  return sub_20B686CB4();
}

uint64_t sub_20B688630()
{
  v21 = v0;
  v1 = *(v0 + 216);
  sub_20C13B4A4();
  v2 = v1;
  v3 = sub_20C13BB74();
  v4 = sub_20C13D1F4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 216);
    v6 = *(v0 + 128);
    v19 = *(v0 + 136);
    v7 = *(v0 + 120);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_20C13E094();
    v12 = sub_20B51E694(v10, v11, &v20);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_20B517000, v3, v4, "Failed to update stack count with error %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x20F2F6A40](v9, -1, -1);
    MEMORY[0x20F2F6A40](v8, -1, -1);

    (*(v6 + 8))(v19, v7);
  }

  else
  {
    v14 = *(v0 + 128);
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);

    (*(v14 + 8))(v13, v15);
  }

  *(v0 + 224) = sub_20C13CD94();
  v17 = sub_20C13CD24();
  *(v0 + 232) = v17;
  *(v0 + 240) = v16;

  return MEMORY[0x2822009F8](sub_20B687E7C, v17, v16);
}

uint64_t sub_20B688834()
{
  v1 = v0;
  v2 = sub_20C13C554();
  v37 = *(v2 - 8);
  v38 = v2;
  MEMORY[0x28223BE20](v2);
  v36 = (&v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_20B688B6C();
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
  sub_20C135E04();
  v5 = sub_20C138544();

  v6 = [v5 string];

  v7 = sub_20C13C954();
  v9 = v8;

  v10 = sub_20C135D64();
  v39 = 0uLL;
  LOBYTE(v40) = 1;
  *(&v40 + 1) = 0;
  *&v41 = 0;
  WORD4(v41) = 128;
  v42 = 0uLL;
  *&v43 = v10;
  *(&v43 + 1) = v11;
  v44 = xmmword_20C153F00;
  LOBYTE(v45) = 1;
  *(&v45 + 1) = v4;
  v46 = MEMORY[0x277D84F90];
  *&v47 = 0;
  *(&v47 + 1) = v7;
  *v48 = v9;
  *&v48[8] = xmmword_20C150190;
  nullsub_1(&v39);
  v12 = v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row;
  v13 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v49[8] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v49[9] = v13;
  v50 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v49[4] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v49[5] = v14;
  v15 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v49[6] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v49[7] = v15;
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v49[0] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v49[1] = v16;
  v17 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v49[2] = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v49[3] = v17;
  v18 = *v48;
  *(v12 + 128) = v47;
  *(v12 + 144) = v18;
  *(v12 + 160) = *&v48[16];
  v19 = v44;
  *(v12 + 64) = v43;
  *(v12 + 80) = v19;
  v20 = v46;
  *(v12 + 96) = v45;
  *(v12 + 112) = v20;
  v21 = v40;
  *v12 = v39;
  *(v12 + 16) = v21;
  v22 = v42;
  *(v12 + 32) = v41;
  *(v12 + 48) = v22;
  sub_20B520158(v49, &qword_27C762340);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v25 = sub_20B61D888(v1, result);
      if (v26)
      {
        v28 = v25;
        v29 = v26;
        v30 = v27;
        sub_20B5E2E18();
        v31 = sub_20C13D374();
        v33 = v36;
        v32 = v37;
        *v36 = v31;
        v34 = v38;
        (*(v32 + 104))(v33, *MEMORY[0x277D85200], v38);
        v35 = sub_20C13C584();
        result = (*(v32 + 8))(v33, v34);
        if ((v35 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620C6C(v28, v29, v30, v1, 0, v24);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

char *sub_20B688B6C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v1 - 8);
  v75 = &v69 - v2;
  v3 = sub_20C136F94();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v71 = &v69 - v8;
  MEMORY[0x28223BE20](v9);
  v76 = &v69 - v10;
  v11 = (v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer + 24));
  v12 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount);
  v13 = sub_20C138CA4();
  if (!v14)
  {
    v88 = *(v0 + v12);
    v13 = sub_20C13DFA4();
  }

  v83 = v14;
  v84 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v15 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount);
  v16 = sub_20C138CA4();
  if (!v17)
  {
    v88 = *(v0 + v15);
    v16 = sub_20C13DFA4();
  }

  v81 = v16;
  v87 = v17;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v18 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount);
  v19 = sub_20C138CA4();
  v74 = v6;
  v86 = v20;
  v73 = v3;
  if (v20)
  {
    v82 = v19;
  }

  else
  {
    v88 = *(v0 + v18);
    v82 = sub_20C13DFA4();
    v86 = v21;
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v22 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount);
  v23 = sub_20C138CA4();
  v72 = v4;
  if (!v24)
  {
    v88 = *(v0 + v22);
    v23 = sub_20C13DFA4();
  }

  v79 = v23;
  v85 = v24;
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v25 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount;
  v88 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount);
  v26 = sub_20C138CA4();
  v70 = v18;
  v80 = v0;
  if (!v27)
  {
    v88 = *(v0 + v25);
    v26 = sub_20C13DFA4();
  }

  v28 = v26;
  v78 = v27;
  v29 = v27;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_20C14F320;
  v31 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  *(v31 + 16) = sub_20C138D34();
  *(v31 + 24) = v32;
  *(v31 + 32) = v28;
  *(v31 + 40) = v29;
  *(v31 + 48) = 4;
  *(v30 + 32) = v31 | 0x5000000000000002;
  v33 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v33 + 16) = sub_20C138D34();
  *(v33 + 24) = v34;
  v35 = v87;
  *(v33 + 32) = v81;
  *(v33 + 40) = v35;
  *(v33 + 48) = 1;
  *(v30 + 40) = v33 | 0x5000000000000002;
  v88 = v30;
  v36 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  v87 = v35;

  *(v36 + 16) = sub_20C138D34();
  *(v36 + 24) = v37;
  v38 = v85;
  *(v36 + 32) = v79;
  *(v36 + 40) = v38;
  v81 = v36 | 0x5000000000000002;
  *(v36 + 48) = 3;
  v39 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v39 + 16) = sub_20C138D34();
  *(v39 + 24) = v40;
  v41 = v86;
  *(v39 + 32) = v82;
  *(v39 + 40) = v41;
  v82 = v39 | 0x5000000000000002;
  *(v39 + 48) = 2;
  v42 = swift_allocObject();
  __swift_project_boxed_opaque_existential_1(v11, v11[3]);

  *(v42 + 16) = sub_20C138D34();
  *(v42 + 24) = v43;
  v44 = v83;
  *(v42 + 32) = v84;
  *(v42 + 40) = v44;
  *(v42 + 48) = 0;
  v45 = v80;
  v46 = *(v80 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_platform);
  if (v46 < 2)
  {

    inited = swift_initStackObject();
    *(inited + 16) = xmmword_20C1517D0;
    v48 = v82;
    *(inited + 32) = v81;
    *(inited + 40) = v48;
    *(inited + 48) = v42 | 0x5000000000000002;
    sub_20B8D921C(inited);
    return v88;
  }

  v84 = v30;
  if (v46 == 3)
  {

    __swift_project_boxed_opaque_existential_1((v45 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource), *(v45 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource + 24));
    v50 = v75;
    sub_20C13B174();
    v51 = sub_20C136C64();
    v52 = *(v51 - 8);
    v53 = (*(v52 + 48))(v50, 1, v51);
    v54 = v76;
    if (v53 == 1)
    {

      sub_20B520158(v50, &qword_27C768690);
      return v84;
    }

    v87 = v36;
    v55 = v71;
    sub_20C1369E4();
    (*(v52 + 8))(v50, v51);
    v56 = v72;
    v57 = v73;
    (*(v72 + 32))(v54, v55, v73);
    v58 = v74;
    sub_20C136F34();
    sub_20B68D318(&qword_27C767AF0, MEMORY[0x277D53030]);
    v59 = v54;
    v60 = sub_20C13DA74();
    v61 = *(v56 + 8);
    v61(v58, v57);
    if (v60)
    {

      v62 = sub_20BC05D3C(1, 3, 1, v84);
      *(v62 + 2) = 3;
      v84 = v62;
      *(v62 + 6) = v81;
    }

    v63 = v74;
    sub_20C136F54();
    v64 = sub_20C13DA74();
    v61(v63, v57);
    if ((v64 & 1) == 0 || (sub_20C136F44(), v65 = sub_20C13DA74(), v61(v63, v57), (v65 & 1) == 0))
    {
      if (!*(v45 + v70))
      {
        v61(v59, v57);

        return v84;
      }
    }

    v67 = *(v84 + 2);
    v66 = *(v84 + 3);
    if (v67 >= v66 >> 1)
    {
      v84 = sub_20BC05D3C((v66 > 1), v67 + 1, 1, v84);
    }

    v68 = v82;

    v61(v59, v57);
    result = v84;
    *(v84 + 2) = v67 + 1;
    *&result[8 * v67 + 32] = v68;
  }

  else
  {
    result = sub_20C13DE24();
    __break(1u);
  }

  return result;
}

uint64_t sub_20B6895E0(char a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - v3;
  v38 = &v36 - v3;
  v5 = sub_20C134F24();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v36 - v10;
  v12 = type metadata accessor for ShelfMetricAction();
  v13 = (v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20C136664();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  (*(v6 + 104))(v8, *MEMORY[0x277D51488], v5);
  v17 = sub_20C132C14();
  (*(*(v17 - 8) + 56))(v4, 1, 1, v17);
  v18 = *&aDownloadmedita[8 * a1];
  v36 = *&aWorkoutsed[8 * a1 + 8];
  v37 = v18;
  v19 = v13[10];
  v20 = *MEMORY[0x277D523F0];
  v21 = sub_20C135ED4();
  v22 = *(v21 - 8);
  (*(v22 + 104))(&v15[v19], v20, v21);
  (*(v22 + 56))(&v15[v19], 0, 1, v21);
  v23 = v13[12];
  v24 = *MEMORY[0x277D51768];
  v25 = sub_20C1352E4();
  (*(*(v25 - 8) + 104))(&v15[v23], v24, v25);
  v26 = v13[13];
  v27 = sub_20C136E94();
  v28 = &v15[v26];
  v29 = v39;
  (*(*(v27 - 8) + 56))(v28, 1, 1, v27);
  v30 = sub_20B6B29D4(MEMORY[0x277D84F90]);
  sub_20B5DF134(v11, v15, &unk_27C7622E0);
  (*(v6 + 32))(&v15[v13[7]], v8, v5);
  sub_20B5DF134(v38, &v15[v13[8]], &unk_27C7617F0);
  v31 = &v15[v13[9]];
  v32 = v36;
  *v31 = v37;
  *(v31 + 1) = v32;
  v33 = &v15[v13[11]];
  *v33 = 0;
  *(v33 + 1) = 0;
  *&v15[v13[14]] = v30;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_20BF9FEE0(v29, v15, Strong);
    swift_unknownObjectRelease();
  }

  return sub_20B68D110(v15);
}

uint64_t sub_20B689A28()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter);
  v3 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_descriptor;
  v4 = sub_20C135E14();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v11[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v11[9] = v5;
  v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v11[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v11[5] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v11[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v11[7] = v7;
  v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v11[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v11[1] = v8;
  v9 = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v11[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v11[3] = v9;
  sub_20B520158(v11, &qword_27C762340);
  return v0;
}

uint64_t sub_20B689BBC()
{
  sub_20B689A28();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MyLibraryShelf()
{
  result = qword_27C7632F0;
  if (!qword_27C7632F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20B689C68()
{
  result = sub_20C132EE4();
  if (v1 <= 0x3F)
  {
    result = sub_20C135E14();
    if (v2 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_20B689D94()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  v5 = sub_20C13CDF4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v1;

  sub_20B6383D0(0, 0, v4, &unk_20C153FF0, v6);

  swift_getObjectType();
  sub_20C13A994();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C137384();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13A714();
  swift_allocObject();
  swift_weakInit();

  sub_20C13A794();

  __swift_destroy_boxed_opaque_existential_1(v9);

  sub_20C13A7B4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C13AB84();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_20C13A4E4();
  swift_allocObject();
  swift_weakInit();
  sub_20C13A774();

  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t sub_20B68A1D4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B6878DC();
}

uint64_t sub_20B68A264(uint64_t a1, uint64_t a2)
{
  v2[12] = a1;
  v2[13] = a2;
  v3 = sub_20C133524();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_20B68A324, 0, 0);
}

uint64_t sub_20B68A324()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  sub_20C13A984();
  v4 = sub_20C1334E4();
  v6 = v5;
  v7 = *(v2 + 8);
  v7(v1, v3);
  *(v0 + 64) = v4;
  *(v0 + 72) = v6 & 1;
  *(v0 + 73) = 5;
  sub_20B68CCB0();
  sub_20B68CD04();
  if ((sub_20C133C04() & 1) == 0)
  {
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);
    sub_20C13A984();
    v10 = sub_20C1334E4();
    v12 = v11;
    v7(v8, v9);
    *(v0 + 80) = v10;
    *(v0 + 88) = v12 & 1;
    *(v0 + 74) = 8;
    if ((sub_20C133C04() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 136) = Strong;
  if (Strong)
  {
    v14 = swift_task_alloc();
    *(v0 + 144) = v14;
    *v14 = v0;
    v14[1] = sub_20B68A5E0;

    return sub_20B6853E4();
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  *(v0 + 160) = v16;
  if (v16)
  {
    sub_20C13CDA4();
    *(v0 + 168) = sub_20C13CD94();
    v18 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68A7F4, v18, v17);
  }

  else
  {
LABEL_11:

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_20B68A5E0()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_20B68A86C;
  }

  else
  {

    v2 = sub_20B68A6FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68A6FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[21] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68A7F4, v3, v2);
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68A7F4()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68A86C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68A8F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AA78;

    return sub_20B6878DC();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[11] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[12] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68AC80, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68AA78()
{

  return MEMORY[0x2822009F8](sub_20B68AB90, 0, 0);
}

uint64_t sub_20B68AB90()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[12] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68AC80, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68AC80()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68AD10()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AE90;

    return sub_20B685C28();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68D728, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68AE90()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20B68D740;
  }

  else
  {

    v2 = sub_20B68AFAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68AFAC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[13] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68D728, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68B0BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68AE90;

    return sub_20B686CB4();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68D728, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68B25C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[10] = sub_20C13CD94();
    v2 = sub_20C13CD24();
    v4 = v3;
    v0[11] = v2;
    v0[12] = v3;
    v5 = sub_20B68B3C4;
    v6 = v2;
LABEL_5:

    return MEMORY[0x2822009F8](v5, v6, v4);
  }

  swift_beginAccess();
  v7 = swift_weakLoadStrong();
  v0[15] = v7;
  if (v7)
  {
    sub_20C13CDA4();
    v0[16] = sub_20C13CD94();
    v8 = sub_20C13CD24();
    v10 = v9;
    v5 = sub_20B68B7A4;
    v6 = v8;
    v4 = v10;
    goto LABEL_5;
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_20B68B3C4()
{
  v1 = (*(v0 + 72) + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_20B68B484;

  return MEMORY[0x2821ADF38](v2, v3);
}

uint64_t sub_20B68B484(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_20B68B644;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[11];
    v6 = v4[12];
    v7 = sub_20B68B5B0;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_20B68B5B0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  v3 = *(v1 + 16);

  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = v3;

  return MEMORY[0x2822009F8](sub_20B68B6B4, 0, 0);
}

uint64_t sub_20B68B644()
{

  return MEMORY[0x2822009F8](sub_20B68B6B4, 0, 0);
}

uint64_t sub_20B68B6B4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[15] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[16] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68B7A4, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68B7A4()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68B834()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_20B68B9B4;

    return sub_20B685C28();
  }

  else
  {
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    v0[12] = v4;
    if (v4)
    {
      sub_20C13CDA4();
      v0[13] = sub_20C13CD94();
      v6 = sub_20C13CD24();

      return MEMORY[0x2822009F8](sub_20B68BBC0, v6, v5);
    }

    else
    {
      v7 = v0[1];

      return v7();
    }
  }
}

uint64_t sub_20B68B9B4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_20B68BC30;
  }

  else
  {

    v2 = sub_20B68BAD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_20B68BAD0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[12] = Strong;
  if (Strong)
  {
    sub_20C13CDA4();
    v0[13] = sub_20C13CD94();
    v3 = sub_20C13CD24();

    return MEMORY[0x2822009F8](sub_20B68BBC0, v3, v2);
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_20B68BBC0()
{

  sub_20B688834();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68BC30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B68BC94(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 8;
  result = 34;
  if (v1 <= 1)
  {
    if (!v1)
    {
      return result;
    }
  }

  else
  {
    if (v1 == 2)
    {
      return result;
    }

    if (v1 == 3)
    {
      v2 = 25;
    }

    else
    {
      v2 = 8;
    }
  }

  v4 = sub_20C138104();
  if (v4 == sub_20C138104())
  {
    return v2;
  }

  else
  {
    return 34;
  }
}

uint64_t sub_20B68BD10@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20B68BD88@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20B68BE6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_20B68BF24;

  return (sub_20C0A62B0)(a3);
}

uint64_t sub_20B68BF24(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_20B68C070, 0, 0);
  }
}

uint64_t sub_20B68C094(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v82 - v9;
  sub_20C13B534();
  sub_20C13BB64();
  v11 = *(v5 + 8);
  v11(v10, v4);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x2A)
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v13 = *(v12 + 24);
    v15 = *(v12 + 48);
    sub_20B6895E0(*(v12 + 48));
    v16 = sub_20B68BC94(v15);
    result = swift_unknownObjectWeakLoadStrong();
    v18 = result;
    if (v15 <= 1)
    {
      if (v15)
      {
        if (!result)
        {
          return result;
        }

        v83 = v13;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
        sub_20C135DD4();
        v71 = sub_20C138544();

        v72 = [v71 string];

        v73 = sub_20C13C954();
        v75 = v74;

        v76 = sub_20C135D64();
        v78 = v77;
        v79 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_25;
        }

        v80 = *(v79 + 8);
        ObjectType = swift_getObjectType();
        (*(v80 + 96))(v18, v14, v83, v73, v75, v76, v78, 5, v16, MEMORY[0x277D84F90], ObjectType, v80);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v83 = v13;
        __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
        sub_20C135DD4();
        v38 = sub_20C138544();

        v39 = [v38 string];

        v40 = sub_20C13C954();
        v42 = v41;

        v43 = sub_20C135D64();
        v45 = v44;
        v46 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
        if (!swift_unknownObjectWeakLoadStrong())
        {
          goto LABEL_25;
        }

        v47 = *(v46 + 8);
        v48 = swift_getObjectType();
        (*(v47 + 96))(v18, v14, v83, v40, v42, v43, v45, 1, v16, MEMORY[0x277D84F90], v48, v47);
      }
    }

    else if (v15 == 2)
    {
      if (!result)
      {
        return result;
      }

      v83 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v49 = sub_20C138544();

      v50 = [v49 string];

      v51 = sub_20C13C954();
      v53 = v52;

      v54 = sub_20C135D64();
      v56 = v55;
      v57 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v58 = *(v57 + 8);
      v59 = swift_getObjectType();
      (*(v58 + 96))(v18, v14, v83, v51, v53, v54, v56, 7, v16, MEMORY[0x277D84F90], v59, v58);
    }

    else if (v15 == 3)
    {
      if (!result)
      {
        return result;
      }

      v83 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v19 = sub_20C138544();

      v20 = [v19 string];

      v21 = sub_20C13C954();
      v23 = v22;

      v24 = sub_20C135D64();
      v26 = v25;
      v27 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v28 = *(v27 + 8);
      v29 = swift_getObjectType();
      (*(v28 + 96))(v18, v14, v83, v21, v23, v24, v26, 8, v16, MEMORY[0x277D84F90], v29, v28);
    }

    else
    {
      if (!result)
      {
        return result;
      }

      v83 = v13;
      __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder), *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder + 24));
      sub_20C135DD4();
      v60 = sub_20C138544();

      v61 = [v60 string];

      v62 = sub_20C13C954();
      v64 = v63;

      v65 = sub_20C135D64();
      v67 = v66;
      v68 = v18 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_25;
      }

      v69 = *(v68 + 8);
      v70 = swift_getObjectType();
      (*(v69 + 96))(v18, v14, v83, v62, v64, v65, v67, 0, v16, MEMORY[0x277D84F90], v70, v69);
    }

    swift_unknownObjectRelease();
LABEL_25:
    swift_unknownObjectRelease();
  }

  sub_20C13B534();

  v30 = sub_20C13BB74();
  v31 = sub_20C13D1D4();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v84 = a1;
    v85 = v33;
    *v32 = 136446210;
    v34 = sub_20B5F66D0();
    v35 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v34);
    v37 = sub_20B51E694(v35, v36, &v85);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_20B517000, v30, v31, "Attempted to handleSelectedItem with item: %{public}s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x20F2F6A40](v33, -1, -1);
    MEMORY[0x20F2F6A40](v32, -1, -1);
  }

  return (v11)(v7, v4);
}

uint64_t sub_20B68C87C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_20B52A9D4;

  return sub_20B68A1D4();
}

uint64_t sub_20B68C930(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68A264(a1, v1);
}

uint64_t sub_20B68C9C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B68A8D8(v0);
}

uint64_t sub_20B68CA58()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_20B52AC14;

  return sub_20B68ACF0(v0);
}

uint64_t sub_20B68CAE8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68B09C(a1, v1);
}

uint64_t sub_20B68CB80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52AC14;

  return sub_20B68B23C(a1, v1);
}

uint64_t sub_20B68CC18(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B52A9D4;

  return sub_20B68B814(a1, v1);
}

unint64_t sub_20B68CCB0()
{
  result = qword_27C763300;
  if (!qword_27C763300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763300);
  }

  return result;
}

unint64_t sub_20B68CD04()
{
  result = qword_27C763308;
  if (!qword_27C763308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C763308);
  }

  return result;
}

uint64_t sub_20B68CD58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v5 = v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_row;
  sub_20B5D8060(v17);
  v6 = v17[9];
  *(v5 + 128) = v17[8];
  *(v5 + 144) = v6;
  *(v5 + 160) = v18;
  v7 = v17[5];
  *(v5 + 64) = v17[4];
  *(v5 + 80) = v7;
  v8 = v17[7];
  *(v5 + 96) = v17[6];
  *(v5 + 112) = v8;
  v9 = v17[1];
  *v5 = v17[0];
  *(v5 + 16) = v9;
  v10 = v17[3];
  *(v5 + 32) = v17[2];
  *(v5 + 48) = v10;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_downloadCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_meditationCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_planCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_stackCount) = 0;
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutCount) = 0;
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_platform) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C769590);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_assetClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A50);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_bookmarkClient);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76A980);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_contentAvailabilityFilter);
  v11 = OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_descriptor;
  v12 = sub_20C135E14();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v2 + v11, a2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *(v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_eventHub) = v16[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621B0);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_mediaTagStringBuilder);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A70);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_remoteBrowsingSource);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_storefrontLocalizer);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621C0);
  sub_20C133AA4();
  sub_20B51C710(v16, v2 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_workoutPlanClient);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  v14 = sub_20C13A914();
  (*(v13 + 8))(a2, v12);
  *(v3 + OBJC_IVAR____TtC9SeymourUI14MyLibraryShelf_subscriptionToken) = v14;
  return v3;
}

uint64_t sub_20B68D110(uint64_t a1)
{
  v2 = type metadata accessor for ShelfMetricAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_20B68D184(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_20B68D21C;

  return sub_20B687514(a1, v1);
}

uint64_t sub_20B68D21C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_20B68D318(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_78Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_20B68D4D8(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763330) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_20B6E17D8(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_20B68D594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_20B52AC14;

  return sub_20B68BE6C(a1, v4, v1 + 24);
}

uint64_t objectdestroy_102Tm()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_20B68D6D4(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_20B68D76C(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_20B68D7B0(double a1)
{
  v2 = v1;
  v5 = sub_20C1327F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    sub_20B68D908(a1);
    v10 = sub_20C132764();
    v11 = [v2 stringForObjectValue_];

    if (v11)
    {
      v9 = sub_20C13C954();
    }

    else
    {
      v9 = 0;
    }

    (*(v6 + 8))(v8, v5);
  }

  return v9;
}

void sub_20B68D908(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763388);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763390);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = round(a1);
  if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v8 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v8 < 9.22337204e18)
  {
    v9 = sub_20C133154();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = sub_20C1331A4();
    (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
    sub_20C1327E4();
    sub_20C1327A4();
    sub_20C1327C4();
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_20B68DB6C()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_20B68DBB0(char a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_20B68DC60(uint64_t a1)
{
  v3 = sub_20C132FD4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763368);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v50 - v8;
  v10 = sub_20C1327F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20B68E264(a1, v52);
  if (v53)
  {
    v14 = swift_dynamicCast();
    (*(v11 + 56))(v9, v14 ^ 1u, 1, v10);
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      (*(v11 + 32))(v13, v9, v10);
      v15 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware;
      swift_beginAccess();
      v16 = v1;
      if (*(v1 + v15) == 1)
      {
        sub_20C132F94();
        v17 = sub_20C132F04();
        v19 = v18;
        (*(v4 + 8))(v6, v3);
        if (v17 == 0x53555F6E65 && v19 == 0xE500000000000000)
        {
        }

        else
        {
          v20 = sub_20C13DFF4();

          if ((v20 & 1) == 0)
          {
            v46 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter);
            v47 = sub_20C132764();
            v48 = [v46 stringFromDateComponents_];

            if (v48)
            {
              v49 = sub_20C13C954();

              (*(v11 + 8))(v13, v10);
              return v49;
            }

LABEL_17:
            (*(v11 + 8))(v13, v10);
            return 0;
          }
        }
      }

      v21 = sub_20C132794();
      if ((v22 & 1) == 0)
      {
        v23 = v21;
        v24 = sub_20C1327B4();
        if ((v25 & 1) == 0)
        {
          v26 = v24;
          v27 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter);
          v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
          v29 = [v27 stringFromNumber_];

          if (v29)
          {
            v30 = sub_20C13C954();
            v32 = v31;

            v33 = *(v16 + OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter);
            v34 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            v35 = [v33 stringFromNumber_];

            if (v35)
            {
              v51 = sub_20C13C954();
              v37 = v36;

              type metadata accessor for SeymourLocalizationBundle();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v39 = [objc_opt_self() bundleForClass_];
              sub_20C132964();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BD60);
              v40 = swift_allocObject();
              *(v40 + 16) = xmmword_20C14F320;
              v41 = MEMORY[0x277D837D0];
              *(v40 + 56) = MEMORY[0x277D837D0];
              v42 = sub_20B5D91B8();
              *(v40 + 32) = v30;
              *(v40 + 40) = v32;
              *(v40 + 96) = v41;
              *(v40 + 104) = v42;
              v43 = v51;
              *(v40 + 64) = v42;
              *(v40 + 72) = v43;
              *(v40 + 80) = v37;
              v44 = sub_20C13C924();

              (*(v11 + 8))(v13, v10);
              return v44;
            }

            (*(v11 + 8))(v13, v10);

            return 0;
          }
        }
      }

      goto LABEL_17;
    }
  }

  else
  {
    sub_20B520158(v52, &unk_27C768A00);
    (*(v11 + 56))(v9, 1, 1, v10);
  }

  sub_20B520158(v9, &qword_27C763368);
  return 0;
}

uint64_t sub_20B68E264(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id PaceFormatter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PaceFormatter.init()()
{
  v1 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter;
  v2 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v2 setUnitsStyle_];
  *&v0[v1] = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter;
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v4 setMinimumIntegerDigits_];
  [v4 setMaximumFractionDigits_];
  [v4 setRoundingMode_];
  *&v0[v3] = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v6 setMaximumFractionDigits_];
  [v6 setRoundingMode_];
  *&v0[v5] = v6;
  v0[OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware] = 1;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v8, sel_init);
}

id PaceFormatter.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id PaceFormatter.init(coder:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_componentsFormatter;
  v4 = [objc_allocWithZone(MEMORY[0x277CCA958]) init];
  [v4 setUnitsStyle_];
  *&v1[v3] = v4;
  v5 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_secondsFormatter;
  v6 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v6 setMinimumIntegerDigits_];
  [v6 setMaximumFractionDigits_];
  [v6 setRoundingMode_];
  *&v1[v5] = v6;
  v7 = OBJC_IVAR____TtC9SeymourUI13PaceFormatter_minutesFormatter;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v8 setMaximumFractionDigits_];
  [v8 setRoundingMode_];
  *&v1[v7] = v8;
  v1[OBJC_IVAR____TtC9SeymourUI13PaceFormatter_isLocaleAware] = 1;
  v11.receiver = v1;
  v11.super_class = type metadata accessor for PaceFormatter();
  v9 = objc_msgSendSuper2(&v11, sel_initWithCoder_, a1);

  if (v9)
  {
  }

  return v9;
}

id PaceFormatter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaceFormatter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_20B68E884()
{
  v0 = *MEMORY[0x277D769D0];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v143 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v128 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v143 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v142, 1);
  v145 = 0;
  v14 = v143;
  sub_20C13E164();
  v124 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v17;
    sub_20B706478(2, v19, v23);
    v17 = v142[0];
    v143 = v142[0];
  }

LABEL_18:
  v144 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v123 = v17;
    v31 = v128;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v17;
    sub_20B706478(4, v26, v30);
    v31 = v128;

    v123 = v142[0];
  }

  v121 = v145;
  v122 = v144;
  v32 = *MEMORY[0x277D76918];
  v139 = v3;
  sub_20C13E164();
  v119 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v37, v41);
    v139 = v142[0];
  }

LABEL_36:
  v42 = v34;
  sub_20B6FF83C(v142, 1);
  v141 = 0;
  v43 = v139;
  sub_20C13E164();
  v126 = v33;
  sub_20C13CA64();
  v44 = sub_20C13E1B4();
  v45 = -1 << *(v139 + 32);
  v46 = v44 & ~v45;
  if ((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v43 + 48) + v46);
      if (v48 > 1 && v48 != 3 && v48 != 4)
      {
        break;
      }

      v49 = sub_20C13DFF4();

      if (v49)
      {
        v43 = v139;
        goto LABEL_46;
      }

      v46 = (v46 + 1) & v47;
      v43 = v139;
      if (((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v43;
    sub_20B706478(2, v46, v50);
    v43 = v142[0];
    v139 = v142[0];
  }

LABEL_46:
  v140 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v51 = sub_20C13E1B4();
  v52 = v43 + 56;
  v53 = -1 << *(v43 + 32);
  v54 = v51 & ~v53;
  if ((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
  {
    v55 = ~v53;
    v129 = v43;
    while (1)
    {
      v56 = *(*(v43 + 48) + v54);
      if (v56 >= 4)
      {
        break;
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_53;
      }

      v54 = (v54 + 1) & v55;
      v43 = v129;
      if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:

    v59 = v119;
  }

  else
  {
LABEL_51:
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v43;
    sub_20B706478(4, v54, v58);

    v59 = v119;
    v129 = v142[0];
  }

  v118 = v141;
  v120 = v140;
  v136 = v3;
  sub_20C13E164();
  v116 = v59;
  v60 = v124;
  v61 = v42;
  sub_20C13CA64();
  v62 = sub_20C13E1B4();
  v63 = -1 << *(v3 + 32);
  v64 = v62 & ~v63;
  if ((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64))
  {
    v65 = ~v63;
    while (1)
    {
      v66 = *(*(v3 + 48) + v64);
      if (v66 <= 2 && v66 != 1 && v66 != 2)
      {
        break;
      }

      v67 = sub_20C13DFF4();

      if (v67)
      {
        goto LABEL_63;
      }

      v64 = (v64 + 1) & v65;
      if (((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v64, v68);
    v136 = v142[0];
  }

LABEL_63:
  v114 = v61;
  sub_20B6FF83C(v142, 1);
  v138 = 0;
  v69 = v136;
  sub_20C13E164();
  v125 = v60;
  sub_20C13CA64();
  v70 = sub_20C13E1B4();
  v71 = -1 << *(v136 + 32);
  v72 = v70 & ~v71;
  if ((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
  {
    v73 = ~v71;
    while (1)
    {
      v74 = *(*(v136 + 48) + v72);
      if (v74 > 1 && v74 != 3 && v74 != 4)
      {
        break;
      }

      v75 = sub_20C13DFF4();

      if (v75)
      {
        goto LABEL_71;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v136;
    sub_20B706478(2, v72, v76);
    v69 = v142[0];
    v136 = v142[0];
  }

LABEL_71:
  v137 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v77 = sub_20C13E1B4();
  v78 = -1 << *(v69 + 32);
  v79 = v77 & ~v78;
  if ((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
  {
    v80 = ~v78;
    while (1)
    {
      v81 = *(*(v69 + 48) + v79);
      if (v81 >= 4)
      {
        break;
      }

      v82 = sub_20C13DFF4();

      if (v82)
      {
        goto LABEL_79;
      }

      v79 = (v79 + 1) & v80;
      if (((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:

    v84 = v116;
    v85 = v114;
  }

  else
  {
LABEL_76:
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v69;
    sub_20B706478(4, v79, v83);

    v84 = v116;
    v85 = v114;

    v69 = v142[0];
  }

  v113 = v138;
  v117 = v137;
  v133 = v3;
  sub_20C13E164();
  v115 = v84;
  v86 = v126;
  v87 = v85;
  sub_20C13CA64();
  v88 = sub_20C13E1B4();
  v89 = -1 << *(v3 + 32);
  v90 = v88 & ~v89;
  if ((*(v3 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v90))
  {
    v91 = ~v89;
    while (1)
    {
      v92 = *(*(v3 + 48) + v90);
      if (v92 <= 2 && v92 != 1 && v92 != 2)
      {
        break;
      }

      v93 = sub_20C13DFF4();

      if (v93)
      {
        goto LABEL_89;
      }

      v90 = (v90 + 1) & v91;
      if (((*(v3 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v90) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v90, v94);
    v133 = v142[0];
  }

LABEL_89:
  v127 = *MEMORY[0x277D74410];
  v112 = v87;
  sub_20B6FF83C(v142, 1);
  v135 = 0;
  sub_20C13E164();
  v111 = v86;
  sub_20C13CA64();
  v95 = sub_20C13E1B4();
  v96 = -1 << *(v133 + 32);
  v97 = v95 & ~v96;
  if ((*(v133 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97))
  {
    v98 = ~v96;
    while (1)
    {
      v99 = *(*(v133 + 48) + v97);
      if (v99 > 1 && v99 != 3 && v99 != 4)
      {
        break;
      }

      v100 = sub_20C13DFF4();

      if (v100)
      {
        goto LABEL_97;
      }

      v97 = (v97 + 1) & v98;
      if (((*(v133 + 56 + ((v97 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v97) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v133;
    sub_20B706478(2, v97, v101);
    v133 = v142[0];
  }

LABEL_97:
  v134 = 0;
  sub_20B6FF83C(v142, 4);

  v110 = v133;
  v102 = v135;
  v103 = *MEMORY[0x277D76A28];
  v142[0] = v3;
  v104 = v115;
  v105 = v103;
  v106 = v112;
  sub_20B6FF83C(v132, 0);
  v107 = v106;
  sub_20B6FF83C(v132, 1);
  v132[0] = 0;
  v108 = v105;
  sub_20B6FF83C(v131, 2);
  v131[0] = 0;
  sub_20B6FF83C(&v130, 4);

  *&xmmword_27C763398 = v115;
  *(&xmmword_27C763398 + 1) = v112;
  qword_27C7633A8 = v125;
  dword_27C7633B0 = 0x8000;
  byte_27C7633B4 = v121;
  byte_27C7633B5 = 9;
  *&xmmword_27C7633B8 = v127;
  BYTE8(xmmword_27C7633B8) = v122;
  qword_27C7633C8 = v123;
  result = 0.0;
  unk_27C7633D0 = 0u;
  *(&xmmword_27C7633D8 + 8) = 0u;
  unk_27C7633F0 = 0u;
  qword_27C763400 = 0;
  unk_27C763408 = v115;
  qword_27C763410 = v112;
  unk_27C763418 = v111;
  dword_27C763420 = 0x8000;
  byte_27C763424 = v118;
  byte_27C763425 = 9;
  qword_27C763428 = v127;
  byte_27C763430 = v120;
  *&xmmword_27C763438 = v129;
  *(&xmmword_27C763438 + 1) = v115;
  qword_27C763448 = v112;
  unk_27C763450 = v125;
  *&xmmword_27C763458 = (v113 << 32) | 0x90000008000;
  *(&xmmword_27C763458 + 1) = v127;
  qword_27C763468 = v117;
  unk_27C763470 = v69;
  *&xmmword_27C763478 = v115;
  *(&xmmword_27C763478 + 1) = v112;
  qword_27C763488 = v111;
  dword_27C763490 = 0x8000;
  byte_27C763494 = v102;
  byte_27C763495 = 9;
  *&xmmword_27C763498 = v127;
  BYTE8(xmmword_27C763498) = 0;
  qword_27C7634A8 = v110;
  xmmword_27C7634C0 = 0u;
  unk_27C7634D0 = 0u;
  xmmword_27C7634B0 = 0u;
  qword_27C7634E0 = 0;
  unk_27C7634E8 = v115;
  qword_27C7634F0 = v112;
  unk_27C7634F8 = v108;
  dword_27C763500 = 0x8000;
  byte_27C763504 = v132[0];
  byte_27C763505 = 9;
  qword_27C763508 = v127;
  byte_27C763510 = v131[0];
  *&xmmword_27C763518 = v142[0];
  qword_27C763550 = 0;
  xmmword_27C763530 = 0u;
  unk_27C763540 = 0u;
  *(&xmmword_27C763518 + 8) = 0u;
  return result;
}

double sub_20B68FCA8()
{
  v0 = *MEMORY[0x277D76A28];
  v1 = *MEMORY[0x277D74368];
  v2 = *MEMORY[0x277D76838];
  v3 = MEMORY[0x277D84FA0];
  v143 = MEMORY[0x277D84FA0];
  sub_20C13E164();
  v128 = v1;
  v4 = v0;
  v5 = v2;
  sub_20C13CA64();
  v6 = sub_20C13E1B4();
  v7 = -1 << *(v3 + 32);
  v8 = v6 & ~v7;
  if ((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(v3 + 48) + v8);
      if (v10 <= 2 && v10 != 1 && v10 != 2)
      {
        break;
      }

      v11 = sub_20C13DFF4();

      if (v11)
      {
        goto LABEL_10;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v3 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v8) & 1) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v8, isUniquelyReferenced_nonNull_native);
    v143 = v3;
  }

LABEL_10:
  v13 = v5;
  sub_20B6FF83C(v142, 1);
  v145 = 0;
  v14 = v143;
  sub_20C13E164();
  v125 = v4;
  sub_20C13CA64();
  v15 = sub_20C13E1B4();
  v16 = v14 + 56;
  v17 = v14;
  v18 = -1 << *(v14 + 32);
  v19 = v15 & ~v18;
  if ((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
  {
    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v17 + 48) + v19);
      if (v21 > 1 && v21 != 3 && v21 != 4)
      {
        break;
      }

      v22 = sub_20C13DFF4();

      if (v22)
      {
        goto LABEL_18;
      }

      v19 = (v19 + 1) & v20;
      if (((*(v16 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v17;
    sub_20B706478(2, v19, v23);
    v17 = v142[0];
    v143 = v142[0];
  }

LABEL_18:
  v144 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v24 = sub_20C13E1B4();
  v25 = -1 << *(v17 + 32);
  v26 = v24 & ~v25;
  if ((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v27 = ~v25;
    while (1)
    {
      v28 = *(*(v17 + 48) + v26);
      if (v28 >= 4)
      {
        break;
      }

      v29 = sub_20C13DFF4();

      if (v29)
      {
        goto LABEL_26;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v17 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_26:
    v124 = v17;
    v31 = v128;
  }

  else
  {
LABEL_23:
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v17;
    sub_20B706478(4, v26, v30);
    v31 = v128;

    v124 = v142[0];
  }

  v122 = v145;
  v123 = v144;
  v32 = *MEMORY[0x277D76A08];
  v139 = v3;
  sub_20C13E164();
  v120 = v31;
  v33 = v32;
  v34 = v13;
  sub_20C13CA64();
  v35 = sub_20C13E1B4();
  v36 = -1 << *(v3 + 32);
  v37 = v35 & ~v36;
  if ((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37))
  {
    v38 = ~v36;
    while (1)
    {
      v39 = *(*(v3 + 48) + v37);
      if (v39 <= 2 && v39 != 1 && v39 != 2)
      {
        break;
      }

      v40 = sub_20C13DFF4();

      if (v40)
      {
        goto LABEL_36;
      }

      v37 = (v37 + 1) & v38;
      if (((*(v3 + ((v37 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v37) & 1) == 0)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
LABEL_35:
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v37, v41);
    v139 = v142[0];
  }

LABEL_36:
  v42 = v34;
  sub_20B6FF83C(v142, 1);
  v141 = 0;
  v43 = v139;
  sub_20C13E164();
  v127 = v33;
  sub_20C13CA64();
  v44 = sub_20C13E1B4();
  v45 = -1 << *(v139 + 32);
  v46 = v44 & ~v45;
  if ((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
  {
    v47 = ~v45;
    while (1)
    {
      v48 = *(*(v43 + 48) + v46);
      if (v48 > 1 && v48 != 3 && v48 != 4)
      {
        break;
      }

      v49 = sub_20C13DFF4();

      if (v49)
      {
        v43 = v139;
        goto LABEL_46;
      }

      v46 = (v46 + 1) & v47;
      v43 = v139;
      if (((*(v139 + 56 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
LABEL_43:
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v43;
    sub_20B706478(2, v46, v50);
    v43 = v142[0];
    v139 = v142[0];
  }

LABEL_46:
  v140 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v51 = sub_20C13E1B4();
  v52 = v43 + 56;
  v53 = -1 << *(v43 + 32);
  v54 = v51 & ~v53;
  if ((*(v43 + 56 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
  {
    v55 = ~v53;
    v129 = v43;
    while (1)
    {
      v56 = *(*(v43 + 48) + v54);
      if (v56 >= 4)
      {
        break;
      }

      v57 = sub_20C13DFF4();

      if (v57)
      {
        goto LABEL_53;
      }

      v54 = (v54 + 1) & v55;
      v43 = v129;
      if (((*(v52 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

LABEL_53:

    v59 = v120;
  }

  else
  {
LABEL_51:
    v58 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v43;
    sub_20B706478(4, v54, v58);

    v59 = v120;
    v129 = v142[0];
  }

  v119 = v141;
  v121 = v140;
  v136 = v3;
  sub_20C13E164();
  v117 = v59;
  v60 = v125;
  v61 = v42;
  sub_20C13CA64();
  v62 = sub_20C13E1B4();
  v63 = -1 << *(v3 + 32);
  v64 = v62 & ~v63;
  if ((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64))
  {
    v65 = ~v63;
    while (1)
    {
      v66 = *(*(v3 + 48) + v64);
      if (v66 <= 2 && v66 != 1 && v66 != 2)
      {
        break;
      }

      v67 = sub_20C13DFF4();

      if (v67)
      {
        goto LABEL_63;
      }

      v64 = (v64 + 1) & v65;
      if (((*(v3 + ((v64 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v64) & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  else
  {
LABEL_62:
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v64, v68);
    v136 = v142[0];
  }

LABEL_63:
  v115 = v61;
  sub_20B6FF83C(v142, 1);
  v138 = 0;
  v69 = v136;
  sub_20C13E164();
  v126 = v60;
  sub_20C13CA64();
  v70 = sub_20C13E1B4();
  v71 = -1 << *(v136 + 32);
  v72 = v70 & ~v71;
  if ((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72))
  {
    v73 = ~v71;
    while (1)
    {
      v74 = *(*(v136 + 48) + v72);
      if (v74 > 1 && v74 != 3 && v74 != 4)
      {
        break;
      }

      v75 = sub_20C13DFF4();

      if (v75)
      {
        goto LABEL_71;
      }

      v72 = (v72 + 1) & v73;
      if (((*(v136 + 56 + ((v72 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v72) & 1) == 0)
      {
        goto LABEL_70;
      }
    }
  }

  else
  {
LABEL_70:
    v76 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v136;
    sub_20B706478(2, v72, v76);
    v69 = v142[0];
    v136 = v142[0];
  }

LABEL_71:
  v137 = 0;
  sub_20C13E164();
  sub_20C13CA64();
  v77 = sub_20C13E1B4();
  v78 = -1 << *(v69 + 32);
  v79 = v77 & ~v78;
  if ((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79))
  {
    v80 = ~v78;
    while (1)
    {
      v81 = *(*(v69 + 48) + v79);
      if (v81 >= 4)
      {
        break;
      }

      v82 = sub_20C13DFF4();

      if (v82)
      {
        goto LABEL_79;
      }

      v79 = (v79 + 1) & v80;
      if (((*(v69 + 56 + ((v79 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v79) & 1) == 0)
      {
        goto LABEL_76;
      }
    }

LABEL_79:
    v84 = v117;

    v85 = v115;
  }

  else
  {
LABEL_76:
    v83 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v69;
    sub_20B706478(4, v79, v83);
    v84 = v117;

    v85 = v115;
    v69 = v142[0];
  }

  v114 = v138;
  v118 = v137;
  v86 = *MEMORY[0x277D76A20];
  v133 = v3;
  sub_20C13E164();
  v116 = v84;
  v87 = v86;
  v88 = v85;
  sub_20C13CA64();
  v89 = sub_20C13E1B4();
  v90 = -1 << *(v3 + 32);
  v91 = v89 & ~v90;
  if ((*(v3 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91))
  {
    v92 = ~v90;
    while (1)
    {
      v93 = *(*(v3 + 48) + v91);
      if (v93 <= 2 && v93 != 1 && v93 != 2)
      {
        break;
      }

      v94 = sub_20C13DFF4();

      if (v94)
      {
        goto LABEL_89;
      }

      v91 = (v91 + 1) & v92;
      if (((*(v3 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v91) & 1) == 0)
      {
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v95 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v3;
    sub_20B706478(0, v91, v95);
    v133 = v142[0];
  }

LABEL_89:
  v113 = *MEMORY[0x277D74410];
  v112 = v88;
  sub_20B6FF83C(v142, 1);
  v135 = 0;
  sub_20C13E164();
  v111 = v87;
  sub_20C13CA64();
  v96 = sub_20C13E1B4();
  v97 = -1 << *(v133 + 32);
  v98 = v96 & ~v97;
  if ((*(v133 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98))
  {
    v99 = ~v97;
    while (1)
    {
      v100 = *(*(v133 + 48) + v98);
      if (v100 > 1 && v100 != 3 && v100 != 4)
      {
        break;
      }

      v101 = sub_20C13DFF4();

      if (v101)
      {
        goto LABEL_97;
      }

      v98 = (v98 + 1) & v99;
      if (((*(v133 + 56 + ((v98 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v98) & 1) == 0)
      {
        goto LABEL_96;
      }
    }
  }

  else
  {
LABEL_96:
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v142[0] = v133;
    sub_20B706478(2, v98, v102);
    v133 = v142[0];
  }

LABEL_97:
  v134 = 0;
  sub_20B6FF83C(v142, 4);

  v110 = v133;
  v103 = v135;
  v142[0] = v3;
  v104 = v116;
  v105 = v127;
  v106 = v112;
  sub_20B6FF83C(v132, 0);
  v107 = v106;
  sub_20B6FF83C(v132, 1);
  v132[0] = 0;
  v108 = v105;
  sub_20B6FF83C(v131, 2);
  v131[0] = 0;
  sub_20B6FF83C(&v130, 4);

  *&xmmword_27C763558 = v116;
  *(&xmmword_27C763558 + 1) = v112;
  qword_27C763568 = v126;
  dword_27C763570 = 0x8000;
  byte_27C763574 = v122;
  byte_27C763575 = 9;
  *&xmmword_27C763578 = v113;
  BYTE8(xmmword_27C763578) = v123;
  qword_27C763588 = v124;
  result = 0.0;
  unk_27C763590 = 0u;
  *(&xmmword_27C763598 + 8) = 0u;
  unk_27C7635B0 = 0u;
  qword_27C7635C0 = 0;
  unk_27C7635C8 = v116;
  qword_27C7635D0 = v112;
  unk_27C7635D8 = v108;
  dword_27C7635E0 = 0x8000;
  byte_27C7635E4 = v119;
  byte_27C7635E5 = 9;
  qword_27C7635E8 = v113;
  byte_27C7635F0 = v121;
  *&xmmword_27C7635F8 = v129;
  *(&xmmword_27C7635F8 + 1) = v116;
  qword_27C763608 = v112;
  unk_27C763610 = v126;
  *&xmmword_27C763618 = (v114 << 32) | 0x90000008000;
  *(&xmmword_27C763618 + 1) = v113;
  qword_27C763628 = v118;
  unk_27C763630 = v69;
  *&xmmword_27C763638 = v116;
  *(&xmmword_27C763638 + 1) = v112;
  qword_27C763648 = v111;
  dword_27C763650 = 0x8000;
  byte_27C763654 = v103;
  byte_27C763655 = 9;
  *&xmmword_27C763658 = v113;
  BYTE8(xmmword_27C763658) = 0;
  qword_27C763668 = v110;
  xmmword_27C763680 = 0u;
  unk_27C763690 = 0u;
  xmmword_27C763670 = 0u;
  qword_27C7636A0 = 0;
  unk_27C7636A8 = v116;
  qword_27C7636B0 = v112;
  unk_27C7636B8 = v108;
  dword_27C7636C0 = 0x8000;
  byte_27C7636C4 = v132[0];
  byte_27C7636C5 = 9;
  qword_27C7636C8 = v113;
  byte_27C7636D0 = v131[0];
  *&xmmword_27C7636D8 = v142[0];
  qword_27C763710 = 0;
  xmmword_27C7636F0 = 0u;
  unk_27C763700 = 0u;
  *(&xmmword_27C7636D8 + 8) = 0u;
  return result;
}

void sub_20B6910D8()
{
  if (*(v0 + 8))
  {
    v1 = [objc_opt_self() mainScreen];
    [v1 bounds];
    v3 = v2;
    v5 = v4;
    v7 = v6;
    v9 = v8;

    v14.origin.x = v3;
    v14.origin.y = v5;
    v14.size.width = v7;
    v14.size.height = v9;
    Width = CGRectGetWidth(v14);
    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    Height = CGRectGetHeight(v15);
    if (Height >= Width)
    {
      v12 = Width;
    }

    else
    {
      v12 = Height;
    }

    if (qword_27C7606D0 != -1)
    {
      swift_once();
    }

    v13 = v12 - *&qword_27C799F40;
    if (qword_27C7606E0 != -1)
    {
      swift_once();
    }

    *v0 = v13 - *&qword_27C799F50;
    *(v0 + 8) = 0;
  }
}

double sub_20B691214()
{
  if ((*(v0 + 24) & 1) == 0)
  {
    return *(v0 + 16);
  }

  sub_20B6910D8();
  result = v1 * 0.668656716;
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  return result;
}

id sub_20B691254()
{
  result = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.168627451 green:0.164705882 blue:0.164705882 alpha:1.0];
  qword_27C763718 = result;
  return result;
}

id sub_20B6912A0()
{
  result = [objc_opt_self() blackColor];
  qword_27C763720 = result;
  return result;
}

void sub_20B691540()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI37ShelfGradientBackgroundDecorationItem_gradientLayer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768250);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_20C14F320;
  if (qword_27C7606B8 != -1)
  {
    swift_once();
  }

  v3 = [qword_27C763720 CGColor];
  type metadata accessor for CGColor(0);
  v5 = v4;
  *(v2 + 56) = v4;
  *(v2 + 32) = v3;
  if (qword_27C7606B0 != -1)
  {
    swift_once();
  }

  v6 = [qword_27C763718 CGColor];
  *(v2 + 88) = v5;
  *(v2 + 64) = v6;
  v7 = sub_20C13CC54();

  [v1 setColors_];

  [v1 setStartPoint_];
  [v1 setEndPoint_];
  v8 = [v0 layer];
  [v8 addSublayer_];
}

id sub_20B69170C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfGradientBackgroundDecorationItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20B691774(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_20B691794(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 25) = v3;
  return result;
}

uint64_t sub_20B6917D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  v24 = *(a1 + 16);
  sub_20BB5DBE0(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_20C13DAA4();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_20BB5DBE0((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + v14 + 32) = v11;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_20B526EA4(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_20B526EA4(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20B6919F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_20C132EE4();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf) && *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf))
  {

    sub_20C0BE348();
    sub_20C132ED4();
    swift_beginAccess();

    v5 = sub_20B6917D4(v4);

    sub_20B716770(v5);

    sub_20C137004();

    v6 = sub_20C137054();
    return (*(*(v6 - 8) + 56))(a1, 0, 1, v6);
  }

  else
  {
    v8 = sub_20C137054();
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, 1, 1, v8);
  }
}

uint64_t sub_20B691C18(__int128 *a1)
{
  v2 = v1;
  v4 = sub_20C1367D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B6983F8(v2, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  v12 = (*(*(v11 - 8) + 48))(v10, 3, v11);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v15 = 2;
    }

    else
    {
      v15 = 3;
    }
  }

  else
  {
    if (!v12)
    {
      v13 = *v10;
      (*(v5 + 32))(v7, v10 + *(v11 + 48), v4);
      MEMORY[0x20F2F58E0](0);
      sub_20BBA7DBC(a1, v13);

      sub_20B6983B0(&qword_27C7637C8, MEMORY[0x277D52CA8]);
      sub_20C13C7C4();
      return (*(v5 + 8))(v7, v4);
    }

    v15 = 1;
  }

  return MEMORY[0x20F2F58E0](v15);
}

uint64_t sub_20B691E40()
{
  sub_20C13E164();
  sub_20B691C18(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B691E84()
{
  sub_20C13E164();
  sub_20B691C18(v1);
  return sub_20C13E1B4();
}

uint64_t sub_20B691EC4()
{
  v1 = v0;
  v2 = sub_20C1333A4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activeShelves);
  if (*(v7 + 16))
  {
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_dependencies);
    v9 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage;
    v10 = *(v3 + 16);
    v10(v6, v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_metricPage, v2, v4);
    type metadata accessor for WorkoutPlanSurveyModalityPickerShelf();
    swift_allocObject();

    v12 = sub_20C0C0424(v11, v6);
    v13 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf;
    *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf) = v12;

    (v10)(v6, v0 + v9, v2);
    type metadata accessor for WorkoutPlanSurveySchedulePickerShelf();
    swift_allocObject();
    v14 = sub_20B5EA1D0(v8, v6);

    v15 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf;
    *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf) = v14;

    v16 = *(v1 + v13);
    if (v16 && (v17 = *(v1 + v15)) != 0)
    {
      v18 = swift_allocObject();
      swift_weakInit();
      v19 = (v16 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveyModalityPickerShelf_onRowUpdated);
      v20 = *(v16 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveyModalityPickerShelf_onRowUpdated);
      *v19 = sub_20B6988B0;
      v19[1] = v18;

      sub_20B583ECC(v20);

      v21 = swift_allocObject();
      swift_weakInit();
      v22 = (v17 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
      v23 = *(v17 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_onRowUpdated);
      *v22 = sub_20B698684;
      v22[1] = v21;

      sub_20B583ECC(v23);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_20C1517D0;
      type metadata accessor for WorkoutPlanSurveyHeaderShelf();
      v24 = swift_allocObject();
      *(v24 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v25 = v24 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_row;
      sub_20B5D8060(v33);
      v26 = v33[9];
      *(v25 + 128) = v33[8];
      *(v25 + 144) = v26;
      *(v25 + 160) = v34;
      v27 = v33[5];
      *(v25 + 64) = v33[4];
      *(v25 + 80) = v27;
      v28 = v33[7];
      *(v25 + 96) = v33[6];
      *(v25 + 112) = v28;
      v29 = v33[1];
      *v25 = v33[0];
      *(v25 + 16) = v29;
      v30 = v33[3];
      *(v25 + 32) = v33[2];
      *(v25 + 48) = v30;
      type metadata accessor for WorkoutPlanStringBuilder();
      sub_20C133AA4();
      *(v24 + OBJC_IVAR____TtC9SeymourUI28WorkoutPlanSurveyHeaderShelf_workoutPlanStringBuilder) = v32;
      *(v7 + 32) = v24;
      *(v7 + 40) = &off_2822C9CD8;
      *(v7 + 48) = v17;
      *(v7 + 56) = &off_2822965A8;
      *(v7 + 64) = v16;
      *(v7 + 72) = &off_282306BA0;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return v7;
}

uint64_t sub_20B69228C()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20B693BD4();
  }

  return result;
}

uint64_t sub_20B6922E4(uint64_t a1, int a2)
{
  v3 = v2;
  v59 = a2;
  v5 = *(v2 + 32);
  v6 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier + 8);
  v63 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_identifier);
  v7 = *(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);
  sub_20B51CC64(v5 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_impressionsTracker, v75);
  v62 = v6;

  v61 = v7;
  v60 = sub_20C1380F4();
  v8 = type metadata accessor for MetricLocationStore();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D84F90];
  v11 = MEMORY[0x277D84F98];
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = v11;
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v75, v76);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v18 = type metadata accessor for CatalogPageImpressionTracker();
  v74[3] = v18;
  v19 = sub_20B6983B0(&qword_27C761A90, type metadata accessor for CatalogPageImpressionTracker);
  v74[4] = v19;
  v74[0] = v17;
  v73[3] = v8;
  v73[4] = &off_2822B6968;
  v73[0] = v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v57 = v18;
    v58 = v8;
    v72[0] = v10;
    sub_20BB5D394(0, v20, 0);
    v10 = v72[0];
    v21 = (a1 + 32);
    do
    {
      v22 = *v21;
      v72[0] = v10;
      v24 = *(v10 + 16);
      v23 = *(v10 + 24);
      v64 = v22;
      swift_unknownObjectRetain();
      if (v24 >= v23 >> 1)
      {
        sub_20BB5D394((v23 > 1), v24 + 1, 1);
        v10 = v72[0];
      }

      *(v10 + 16) = v24 + 1;
      v25 = v10 + 24 * v24;
      *(v25 + 32) = v64;
      *(v25 + 48) = 0;
      ++v21;
      --v20;
    }

    while (v20);
    v18 = v57;
    v8 = v58;
  }

  sub_20B51CC64(v74, v72);
  sub_20B51CC64(v73, v71);
  v26 = __swift_mutable_project_boxed_opaque_existential_1(v72, v72[3]);
  *&v64 = &v57;
  v27 = MEMORY[0x28223BE20](v26);
  v29 = (&v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v30 + 16))(v29, v27);
  v31 = __swift_mutable_project_boxed_opaque_existential_1(v71, v71[3]);
  v32 = MEMORY[0x28223BE20](v31);
  v34 = (&v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v35 + 16))(v34, v32);
  v36 = *v29;
  v37 = *v34;
  v69 = v18;
  v70 = v19;
  v68[0] = v36;
  v66 = v8;
  v67 = &off_2822B6968;
  v65[0] = v37;
  v38 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v39 = __swift_mutable_project_boxed_opaque_existential_1(v68, v69);
  v40 = MEMORY[0x28223BE20](v39);
  v42 = (&v57 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v43 + 16))(v42, v40);
  v44 = __swift_mutable_project_boxed_opaque_existential_1(v65, v66);
  v45 = MEMORY[0x28223BE20](v44);
  v47 = (&v57 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v48 + 16))(v47, v45);
  v49 = sub_20BE3AA74(v63, v62, v10, v60, v61, *v42, *v47, 2, v38);
  __swift_destroy_boxed_opaque_existential_1(v73);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v65);
  __swift_destroy_boxed_opaque_existential_1(v68);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v72);
  __swift_destroy_boxed_opaque_existential_1(v75);
  v50 = *(v3 + 32);
  *(v3 + 32) = v49;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v52 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    v76 = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    v77 = &off_28229CA48;
    v75[0] = v3;
    v54 = *(v3 + 32);
    v55 = *(v52 + 24);

    v56 = v54;
    v55(v75, v56, v59 & 1, ObjectType, v52);

    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v75);
  }

  return result;
}

uint64_t sub_20B692928()
{
  v1[3] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764630);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_20C1367D4();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C761A30);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = sub_20C134104();
  v1[13] = v5;
  v1[14] = *(v5 - 8);
  v1[15] = swift_task_alloc();
  sub_20C13CDA4();
  v1[16] = sub_20C13CD94();
  v7 = sub_20C13CD24();
  v1[17] = v7;
  v1[18] = v6;

  return MEMORY[0x2822009F8](sub_20B692B48, v7, v6);
}

uint64_t sub_20B692B48()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient), *(*(v0 + 24) + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_configurationClient + 24));
  sub_20C1398E4();

  return MEMORY[0x2822009F8](sub_20B692BE4, 0, 0);
}

uint64_t sub_20B692BE4()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[19] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSurveyPageDataProvider.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 155;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_20B692CF4;
  v4 = v0[15];
  v5 = v0[13];

  return MEMORY[0x2822008A0](v4, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B698634, v2, v5);
}

uint64_t sub_20B692CF4()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {

    v3 = sub_20B693188;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[11];
    v6 = v2[12];
    v8 = v2[10];

    (*(v7 + 8))(v6, v8);
    v4 = v2[17];
    v5 = v2[18];
    v3 = sub_20B692E58;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B692E58()
{
  v1 = *(v0 + 24);
  sub_20C134064();
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient), *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_catalogClient + 24));
  sub_20C139FD4();

  return MEMORY[0x2822009F8](sub_20B692F00, 0, 0);
}

uint64_t sub_20B692F00()
{
  v1 = v0[6];
  v2 = swift_task_alloc();
  v0[22] = v2;
  *(v2 + 16) = "SeymourUI/WorkoutPlanSurveyPageDataProvider.swift";
  *(v2 + 24) = 49;
  *(v2 + 32) = 2;
  *(v2 + 40) = 159;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  v0[23] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
  *v3 = v0;
  v3[1] = sub_20B69301C;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000020C192D10, sub_20B69864C, v2, v4);
}

uint64_t sub_20B69301C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {

    v3 = sub_20B6933EC;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v2[5];
    v6 = v2[6];
    v8 = v2[4];
    v2[25] = v2[2];

    (*(v7 + 8))(v6, v8);
    v4 = v2[17];
    v5 = v2[18];
    v3 = sub_20B6932A8;
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_20B693188()
{
  (*(v0[11] + 8))(v0[12], v0[10]);
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_20B6931FC, v1, v2);
}

uint64_t sub_20B6931FC()
{

  v1 = *(v0 + 168);
  sub_20B693954(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_20B6932A8()
{
  v1 = v0[25];
  v2 = v0[15];
  v3 = v0[13];
  v4 = v0[14];
  v6 = v0[8];
  v5 = v0[9];
  v11 = v0[7];

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  v8 = sub_20BEE0CD8(sub_20B698664, v7, v1);

  sub_20B6935D4(v8, v5);

  (*(v4 + 8))(v2, v3);
  (*(v6 + 8))(v5, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_20B6933EC()
{
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = v0[17];
  v2 = v0[18];

  return MEMORY[0x2822009F8](sub_20B693460, v1, v2);
}

uint64_t sub_20B693460()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];

  (*(v3 + 8))(v1, v2);
  (*(v5 + 8))(v4, v6);
  v7 = v0[24];
  sub_20B693954(v7);

  v8 = v0[1];

  return v8();
}

uint64_t sub_20B693550()
{
  v0 = sub_20C136794();
  v1 = sub_20C1365D4();
  v3 = v2;
  v5 = v4;
  v6 = sub_20B8D79A0(v1, v2, v4 & 1, v0);

  sub_20B583F4C(v1, v3, v5 & 1);
  return v6 & 1;
}

uint64_t sub_20B6935D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  *(v3 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_canReplaceActivePage) = 1;
  v16 = *(a1 + 16);
  if (v16)
  {
    sub_20C13B454();
    v17 = sub_20C13BB74();
    v18 = sub_20C13D1D4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v30 = v16;
      v20 = v19;
      *v19 = 0;
      _os_log_impl(&dword_20B517000, v17, v18, "[WorkoutPlanSurveyPageDataProvider] Activating data provider with fetched data", v19, 2u);
      v16 = v30;
      MEMORY[0x20F2F6A40](v20, -1, -1);
    }

    (*(v10 + 8))(v15, v9);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
    v22 = *(v21 + 48);
    *v8 = a1;
    v23 = sub_20C1367D4();
    (*(*(v23 - 8) + 16))(&v8[v22], a2, v23);
    (*(*(v21 - 8) + 56))(v8, 0, 3, v21);
  }

  else
  {
    sub_20C13B454();
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_20B517000, v24, v25, "[WorkoutPlanSurveyPageDataProvider] No modality references. Transitioning to loading", v26, 2u);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
    (*(*(v27 - 8) + 56))(v8, 3, 3, v27);
  }

  sub_20B6943B0(v8, v16 != 0);
  return sub_20B69845C(v8);
}

uint64_t sub_20B693954(void *a1)
{
  v3 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_20C13BB84();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  v10 = a1;
  v11 = sub_20C13BB74();
  v12 = sub_20C13D1D4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21[0] = v1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = MEMORY[0x20F2F5850](v21[2], v21[3]);
    v18 = sub_20B51E694(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_20B517000, v11, v12, "[WorkoutPlanSurveyPageDataProvider] Failed to fetch data with error: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x20F2F6A40](v15, -1, -1);
    MEMORY[0x20F2F6A40](v14, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  (*(*(v19 - 8) + 56))(v5, 1, 3, v19);
  sub_20B6943B0(v5, 0);
  return sub_20B69845C(v5);
}

uint64_t sub_20B693BD4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25[-1] - v2;
  v4 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_state;
  swift_beginAccess();
  sub_20B6983F8(v0 + v7, v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  if ((*(*(v8 - 8) + 48))(v6, 3, v8))
  {
    return sub_20B69845C(v6);
  }

  v10 = *(v8 + 48);
  v11 = sub_20C1367D4();
  result = (*(*(v11 - 8) + 8))(&v6[v10], v11);
  if (*(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf))
  {
    v12 = *(v0 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_selectedWeekdays;
      swift_beginAccess();
      v14 = *(*(v12 + v13) + 16);

      if (v14 && (v15 = *(sub_20C0BE348() + 16), , v15))
      {
        sub_20C13CDC4();
        v16 = sub_20C13CDF4();
        (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
        sub_20C13CDA4();

        v17 = v0;
        v18 = sub_20C13CD94();
        v19 = swift_allocObject();
        v20 = MEMORY[0x277D85700];
        v19[2] = v18;
        v19[3] = v20;
        v19[4] = v17;
        sub_20B6383D0(0, 0, v3, &unk_20C154430, v19);
      }

      else
      {
        if (swift_unknownObjectWeakLoadStrong())
        {
          v21 = *(v0 + 24);
          ObjectType = swift_getObjectType();
          v25[3] = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
          v25[4] = &off_28229CA48;
          v25[0] = v0;

          v23 = sub_20B6B3CAC(MEMORY[0x277D84F90]);
          (*(v21 + 16))(v25, 0, v23, ObjectType, v21);

          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v25);
        }
      }
    }
  }

  return result;
}

uint64_t sub_20B693F68()
{
  v0[2] = sub_20C13CDA4();
  v0[3] = sub_20C13CD94();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_20B694014;

  return sub_20B694968();
}

uint64_t sub_20B694014()
{

  v1 = sub_20C13CD24();

  return MEMORY[0x2822009F8](sub_20B694150, v1, v0);
}

uint64_t sub_20B694150()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20B6941B0(char *a1)
{
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_modalityShelf))
  {
    v11 = a1;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
    sub_20B69851C();
    v2 = sub_20C13CBF4();

    v3 = sub_20C1367B4();
    sub_20C0BF148(v2, v3);
  }

  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_scheduleShelf);
  if (v4)
  {

    v5 = sub_20C1367A4();
    v6 = v5;
    v7 = *(v5 + 16);
    if (v7)
    {
      v8 = sub_20BEDEB1C(*(v5 + 16), 0);
      v10 = sub_20BEE2330(&v11, v8 + 4, v7, v6);

      sub_20B583EDC();
      if (v10 == v7)
      {
LABEL_8:
        v11 = v8;
        sub_20B696C50(&v11);

        *(v4 + OBJC_IVAR____TtC9SeymourUI36WorkoutPlanSurveySchedulePickerShelf_durations) = v11;

        sub_20B5E88D0(0);

        return sub_20B693BD4();
      }

      __break(1u);
    }

    v8 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  return sub_20B693BD4();
}

uint64_t sub_20B6943B0(uint64_t a1, int a2)
{
  v43 = a2;
  v4 = sub_20C1367D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for WorkoutPlanSurveyPageDataProvider.State(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v42[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v42[-v12];
  v14 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_state;
  swift_beginAccess();
  sub_20B6983F8(v2 + v14, v13);
  v15 = sub_20B6974C4(a1, v13);
  result = sub_20B69845C(v13);
  if (v15)
  {
    return result;
  }

  swift_beginAccess();
  sub_20B6984B8(a1, v2 + v14);
  swift_endAccess();
  sub_20B6983F8(a1, v10);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7637A0);
  v18 = (*(*(v17 - 8) + 48))(v10, 3, v17);
  if (v18 > 1)
  {
    if (v18 != 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_20C14F980;
      type metadata accessor for LoadingShelf();
      v32 = swift_allocObject();
      *(v32 + 24) = 0;
      swift_unknownObjectWeakInit();
      sub_20C132ED4();
      v33 = v32 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_row;
      sub_20B5D8060(&v45);
      v34 = v54;
      *(v33 + 128) = v53;
      *(v33 + 144) = v34;
      *(v33 + 160) = v55;
      v35 = v50;
      *(v33 + 64) = v49;
      *(v33 + 80) = v35;
      v36 = v52;
      *(v33 + 96) = v51;
      *(v33 + 112) = v36;
      v37 = v46;
      *v33 = v45;
      *(v33 + 16) = v37;
      v38 = v48;
      *(v33 + 32) = v47;
      *(v33 + 48) = v38;
      sub_20C133AA4();
      *(v32 + OBJC_IVAR____TtC9SeymourUI12LoadingShelf_platform) = v44[0];
      *(inited + 32) = v32;
      *(inited + 40) = &off_2822D32B0;
      sub_20B6922E4(inited, v43 & 1);
      swift_setDeallocating();
      swift_unknownObjectRelease();
      result = swift_unknownObjectWeakLoadStrong();
      if (!result)
      {
        return result;
      }

      v39 = *(v2 + 24);
      ObjectType = swift_getObjectType();
      v44[3] = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
      v44[4] = &off_28229CA48;
      v44[0] = v2;
      v41 = *(v39 + 16);

      v41(v44, 0, 1, ObjectType, v39);
      swift_unknownObjectRelease();
      v30 = v44;
      return __swift_destroy_boxed_opaque_existential_1(v30);
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v22 = *(v2 + 24);
    v23 = swift_getObjectType();
    *(&v46 + 1) = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    *&v47 = &off_28229CA48;
    *&v45 = v2;
    v24 = *(v22 + 16);

    v25 = 1;
LABEL_12:
    v24(&v45, 0, v25, v23, v22);
    swift_unknownObjectRelease();
    v30 = &v45;
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
    v26 = swift_initStackObject();
    *(v26 + 16) = xmmword_20C14F980;
    type metadata accessor for LoadingErrorShelf();
    swift_allocObject();

    v28 = v2;
    v29 = sub_20BEFE8F4(v27, 0, 0);

    *(v26 + 32) = v29;
    *(v26 + 40) = &off_2822F4EF0;
    sub_20B6922E4(v26, v43 & 1);
    swift_setDeallocating();
    swift_unknownObjectRelease();
    result = swift_unknownObjectWeakLoadStrong();
    if (!result)
    {
      return result;
    }

    v22 = *(v28 + 24);
    v23 = swift_getObjectType();
    *(&v46 + 1) = type metadata accessor for WorkoutPlanSurveyPageDataProvider(0);
    *&v47 = &off_28229CA48;
    *&v45 = v28;
    v24 = *(v22 + 16);

    v25 = 0;
    goto LABEL_12;
  }

  v19 = *v10;
  (*(v5 + 32))(v7, v10 + *(v17 + 48), v4);
  v20 = OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activeShelves;
  if (!*(*(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_activeShelves) + 16))
  {
    *(v2 + v20) = sub_20B691EC4();

    sub_20B6922E4(v21, v43 & 1);
  }

  sub_20B6941B0(v19);

  result = (*(v5 + 8))(v7, v4);
  *(v2 + OBJC_IVAR____TtC9SeymourUI33WorkoutPlanSurveyPageDataProvider_canReplaceActivePage) = 0;
  return result;
}