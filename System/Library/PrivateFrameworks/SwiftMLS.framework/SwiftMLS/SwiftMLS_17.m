uint64_t sub_26BF3D074()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = v0[41];
  v2 = v0[39];
  v3 = v0[36];
  v4 = v0[33];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF3D120()
{
  v61 = v0;
  v1 = *(*(v0 + 352) + 48);
  swift_beginAccess();
  if (*(v1 + 312) == 1)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 352);
    v3 = sub_26C009A5C();
    __swift_project_value_buffer(v3, qword_280478EE8);
    swift_retain_n();
    v4 = sub_26C009A3C();
    v5 = sub_26C00AA1C();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 352);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v60[0] = v9;
      *v8 = 136315394;

      v10 = sub_26BE3D034();
      v12 = v11;

      v13 = sub_26BE29740(v10, v12, v60);

      *(v8 + 4) = v13;
      *(v8 + 12) = 2048;
      swift_beginAccess();
      v14 = *(*(v7 + 160) + 16);

      *(v8 + 14) = v14;

      _os_log_impl(&dword_26BDFE000, v4, v5, "%s: deleteGroupFromStorage for %ld epochs using storage v2", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x26D69A4E0](v9, -1, -1);
      MEMORY[0x26D69A4E0](v8, -1, -1);
    }

    else
    {
      v28 = *(v0 + 352);
    }

    sub_26BE2E1F0(v1 + 160, v0 + 192, &qword_28045FA20, &qword_26C029070);
    if (*(v0 + 216))
    {
      v29 = *(v0 + 352);
      sub_26BE03890((v0 + 192), v0 + 152);
      v30 = *(v0 + 176);
      v31 = *(v0 + 184);
      __swift_project_boxed_opaque_existential_1((v0 + 152), v30);
      v32 = v29[4];
      v33 = v29[5];
      swift_beginAccess();
      v34 = v29[20];
      sub_26BE00608(v32, v33);

      v36 = sub_26BF321B0(v35);

      *(v0 + 16) = v32;
      *(v0 + 24) = v33;
      *(v0 + 32) = xmmword_26C00DA60;
      v37 = MEMORY[0x277D84F90];
      *(v0 + 48) = MEMORY[0x277D84F90];
      *(v0 + 56) = v37;
      *(v0 + 64) = v36;
      v38 = *(v31 + 24);
      v58 = (v38 + *v38);
      v39 = v38[1];
      v40 = swift_task_alloc();
      *(v0 + 360) = v40;
      *v40 = v0;
      v40[1] = sub_26BF3D8BC;

      return v58(v0 + 16, v30, v31);
    }

    else
    {
      sub_26BE2E258(v0 + 192, &qword_28045FA20, &qword_26C029070);
      sub_26BE01654();
      swift_allocError();
      *v51 = 0xD000000000000029;
      *(v51 + 8) = 0x800000026C02CFB0;
      *(v51 + 112) = 2;
      swift_willThrow();
      v52 = *(v0 + 8);

      return v52();
    }
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 352);
    v16 = sub_26C009A5C();
    __swift_project_value_buffer(v16, qword_280478EE8);
    swift_retain_n();
    v17 = sub_26C009A3C();
    v18 = sub_26C00AA1C();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 352);
    if (v19)
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v60[0] = v22;
      *v21 = 136315394;

      v23 = sub_26BE3D034();
      v25 = v24;

      v26 = sub_26BE29740(v23, v25, v60);

      *(v21 + 4) = v26;
      *(v21 + 12) = 2048;
      swift_beginAccess();
      v27 = *(*(v20 + 160) + 16);

      *(v21 + 14) = v27;

      _os_log_impl(&dword_26BDFE000, v17, v18, "%s: deleteGroupFromStorage for %ld epochs using storage v1", v21, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D69A4E0](v22, -1, -1);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    else
    {
      v42 = *(v0 + 352);
    }

    v43 = *(v0 + 352);
    sub_26BE038A8(v1 + 120, v0 + 72);
    v44 = *(v0 + 96);
    v45 = *(v0 + 104);
    __swift_project_boxed_opaque_existential_1((v0 + 72), v44);
    v46 = v43[4];
    *(v0 + 376) = v46;
    v47 = v43[5];
    *(v0 + 384) = v47;
    swift_beginAccess();
    v48 = v43[20];
    sub_26BE00608(v46, v47);

    v50 = sub_26BF323DC(v49);

    v60[0] = v50;

    sub_26BF7469C(v60);

    *(v0 + 112) = xmmword_26C00BBD0;
    v53 = v60[0];
    v54 = MEMORY[0x277D84F90];
    *(v0 + 128) = MEMORY[0x277D84F90];
    *(v0 + 136) = v54;
    *(v0 + 144) = v53;
    v55 = *(v45 + 24);
    v59 = (v55 + *v55);
    v56 = v55[1];
    v57 = swift_task_alloc();
    *(v0 + 392) = v57;
    *v57 = v0;
    v57[1] = sub_26BF3DA7C;

    return v59(v46, v47, v0 + 112, v44, v45);
  }
}

uint64_t sub_26BF3D8BC()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v13 = *v1;
  v2[46] = v0;

  v4 = v2[2];
  v5 = v2[3];
  v2 += 2;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  sub_26BE00258(v4, v5);
  sub_26BE132D4(v6, v7);

  if (v0)
  {
    v11 = sub_26BF3DC3C;
  }

  else
  {
    v11 = sub_26BF3DA18;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26BF3DA18()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 152));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DA7C()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v13 = *v1;
  v2[50] = v0;

  v4 = v2[14];
  v2 += 14;
  v6 = v2[33];
  v5 = v2[34];
  v7 = v2[1];
  v8 = v2[2];
  v10 = v2[3];
  v9 = v2[4];
  sub_26BE00258(v4, v7);

  sub_26BE00258(v6, v5);
  if (v0)
  {
    v11 = sub_26BF3DCA0;
  }

  else
  {
    v11 = sub_26BF3DBD8;
  }

  return MEMORY[0x2822009F8](v11, 0, 0);
}

uint64_t sub_26BF3DBD8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 72));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF3DC3C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 19);
  v1 = v0[46];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF3DCA0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  v1 = v0[50];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF3DD04(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  *(v4 + 168) = a3;
  *(v4 + 176) = v3;
  *(v4 + 160) = a1;
  v6 = type metadata accessor for MLS.GroupState();
  *(v4 + 184) = v6;
  v7 = *(v6 - 8);
  *(v4 + 192) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 200) = swift_task_alloc();
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F090, &qword_26C01A358) - 8) + 64) + 15;
  *(v4 + 224) = swift_task_alloc();
  v10 = type metadata accessor for MLS.GroupInfo();
  *(v4 + 232) = v10;
  v11 = *(v10 - 8);
  *(v4 + 240) = v11;
  v12 = *(v11 + 64) + 15;
  *(v4 + 248) = swift_task_alloc();
  *(v4 + 256) = *a2;

  return MEMORY[0x2822009F8](sub_26BF3DE80, 0, 0);
}

uint64_t sub_26BF3DE80()
{
  v57 = v0;
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  *(v1 + 160) = MEMORY[0x277D84FA0];
  v3 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  v6 = type metadata accessor for FileInfoAndSender();
  v7 = *(*(v6 - 8) + 56);
  v7(v1 + v5, 1, 1, v6);
  v7(v1 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v6);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v9 = MEMORY[0x277D84F90];
  *(v1 + v8) = sub_26C0047C0(MEMORY[0x277D84F90]);
  v10 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  *(v1 + v10) = sub_26C0047C0(v9);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  *(v1 + v11) = sub_26C0048D4(v9);
  v12 = *v2;
  if ((v12 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
LABEL_16:
    swift_once();
    goto LABEL_9;
  }

  v14 = *(v2 + 1);
  v13 = *(v2 + 2);
  v16 = *(v0 + 256);
  v15 = *(v0 + 264);
  v17 = *(v0 + 176);
  v18 = *(v0 + 160);
  v52[0] = v12 != 1;
  sub_26BE00608(v14, v13);
  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v52, v48);
  v52[0] = v48[0];
  v53 = v49;
  v54 = v50;
  v55 = v51;
  v56[0] = v16;
  v56[1] = v15;

  v20 = sub_26BE3EFC0(v19, v14, v13, v52, v56);
  *(v0 + 272) = v20;
  v21 = v20;
  v22 = *(v0 + 184);
  v23 = *(v0 + 168);
  v24 = *(v23 + 24);
  *(v0 + 280) = v24;
  *(v20 + 24) = v24;
  v25 = *(v23 + *(v22 + 40));
  *(v0 + 288) = v25;

  v26 = sub_26BE81FE0(v25);
  if ((v26 & 0x100000000) != 0)
  {
    LODWORD(v26) = sub_26BE4126C();
  }

  *(v21 + 152) = v26;
  v27 = *(v2 + 1);
  v28 = *(v2 + 2);
  v29 = *(v21 + 32);
  v30 = *(v21 + 40);
  *(v21 + 32) = v27;
  *(v21 + 40) = v28;
  sub_26BE00608(v27, v28);
  sub_26BE00258(v29, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E570, &unk_26C0245A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C011280;
  v32 = sub_26BE81FE0(v25);
  if ((v32 & 0x100000000) != 0)
  {
    LODWORD(v32) = sub_26BE4126C();
  }

  v33 = *(v0 + 232);
  v34 = *(v0 + 240);
  v35 = *(v0 + 224);
  v36 = *(v0 + 184);
  v37 = *(v0 + 168);
  *(inited + 32) = v32;
  *(inited + 40) = v24;
  v38 = sub_26BEC7E78(inited);
  swift_setDeallocating();
  swift_beginAccess();
  v39 = *(v21 + 160);
  *(v21 + 160) = v38;

  sub_26BE038A8(v37 + *(v36 + 56), v0 + 64);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v21 + 112));
  sub_26BE03890((v0 + 64), v21 + 112);
  swift_endAccess();

  sub_26BE2E1F0(v37 + *(v36 + 80), v35, &qword_28045F090, &qword_26C01A358);
  if ((*(v34 + 48))(v35, 1, v33) == 1)
  {
    sub_26BE2E258(*(v0 + 224), &qword_28045F090, &qword_26C01A358);
    goto LABEL_12;
  }

  sub_26BF7F124(*(v0 + 224), *(v0 + 248), type metadata accessor for MLS.GroupInfo);
  if (qword_28045DF80 != -1)
  {
    goto LABEL_16;
  }

LABEL_9:
  v40 = sub_26C009A5C();
  __swift_project_value_buffer(v40, qword_280478EE8);
  v41 = sub_26C009A3C();
  v42 = sub_26C00AA1C();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_26BDFE000, v41, v42, "Using joiningGroupInfo", v43, 2u);
    MEMORY[0x26D69A4E0](v43, -1, -1);
  }

  v44 = *(v0 + 248);

  sub_26BF582A8(v44);
  sub_26BF7F05C(*(v0 + 248), type metadata accessor for MLS.GroupInfo);
LABEL_12:
  v45 = swift_task_alloc();
  *(v0 + 296) = v45;
  *v45 = v0;
  v45[1] = sub_26BF3E474;
  v46 = *(v0 + 168);

  return sub_26BF40784(v46);
}

uint64_t sub_26BF3E474()
{
  v2 = *(*v1 + 296);
  v5 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v3 = sub_26BF3EC40;
  }

  else
  {
    v3 = sub_26BF3E588;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF3E588()
{
  v42 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  v4 = *(v0 + 168);
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478EE8);
  sub_26BF7F0BC(v4, v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v4, v1, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v4, v3, type metadata accessor for MLS.GroupState);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (!os_log_type_enabled(v6, v7))
  {
    v13 = *(v0 + 216);
    v14 = *(v0 + 200);
    sub_26BF7F05C(*(v0 + 208), type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v13, type metadata accessor for MLS.GroupState);

    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    v15 = *(v0 + 304);
    goto LABEL_10;
  }

  v8 = *(v0 + 304);
  v9 = *(v0 + 216);
  v10 = *(v0 + 184);
  v11 = swift_slowAlloc();
  v40 = swift_slowAlloc();
  v41 = v40;
  *v11 = 67109634;
  v12 = sub_26BE81FE0(*(v9 + *(v10 + 40)));
  if (v8)
  {

LABEL_8:
    v16 = sub_26BE4126C();
    goto LABEL_9;
  }

  v16 = v12;
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = *(v0 + 208);
  v18 = *(v0 + 200);
  sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);
  *(v11 + 4) = v16;
  *(v11 + 8) = 2048;
  v19 = *(v17 + 24);
  sub_26BF7F05C(v17, type metadata accessor for MLS.GroupState);
  *(v11 + 10) = v19;
  *(v11 + 18) = 2080;
  v15 = 0;
  *(v0 + 152) = sub_26BF87240(*(v18 + 8), *(v18 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v20 = sub_26C00A3EC();
  v22 = v21;

  sub_26BF7F05C(v18, type metadata accessor for MLS.GroupState);
  v23 = sub_26BE29740(v20, v22, &v41);

  *(v11 + 20) = v23;
  _os_log_impl(&dword_26BDFE000, v6, v7, "Joining group with era %u, epoch %lld, groupID %s", v11, 0x1Cu);
  __swift_destroy_boxed_opaque_existential_1(v40);
  MEMORY[0x26D69A4E0](v40, -1, -1);
  MEMORY[0x26D69A4E0](v11, -1, -1);

LABEL_10:
  v24 = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 312) = v25;
  v26 = *(*(v25 - 8) + 72);
  v27 = *(*(v25 - 8) + 80);
  *(v0 + 344) = v27;
  v28 = (v27 + 32) & ~v27;
  v29 = swift_allocObject();
  *(v0 + 320) = v29;
  *(v29 + 16) = xmmword_26C011280;
  v30 = sub_26BE81FE0(v24);
  if (v15)
  {
  }

  else if ((v30 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v30) = sub_26BE4126C();
LABEL_14:
  v31 = v29 + v28;
  v32 = *(v0 + 280);
  v33 = *(v0 + 184);
  v34 = *(v0 + 192);
  v35 = *(v0 + 168);
  v36 = *(v25 + 48);
  *v31 = v30;
  *(v31 + 8) = v32;
  sub_26BF7F0BC(v35, v29 + v28 + v36, type metadata accessor for MLS.GroupState);
  (*(v34 + 56))(v29 + v28 + v36, 0, 1, v33);
  v37 = swift_task_alloc();
  *(v0 + 328) = v37;
  *v37 = v0;
  v37[1] = sub_26BF3E9F8;
  v38 = *(v0 + 272);

  return sub_26BF394D4(v29);
}

uint64_t sub_26BF3E9F8()
{
  v2 = *v1;
  v3 = *(*v1 + 328);
  v4 = *v1;
  *(v2 + 336) = v0;

  v5 = *(v2 + 320);
  v6 = *(v2 + 312);
  v7 = (*(v2 + 344) + 32) & ~*(v2 + 344);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF3ED0C;
  }

  else
  {
    v9 = sub_26BF3EB78;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF3EB78()
{
  v1 = v0[31];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[20];
  v7 = v0[21];

  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);

  v8 = v0[1];
  v9 = v0[34];

  return v8(v9);
}

uint64_t sub_26BF3EC40()
{
  v1 = v0[34];
  v2 = v0[20];
  v3 = v0[21];

  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);

  v4 = v0[38];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF3ED0C()
{
  v1 = v0[34];
  v2 = v0[20];
  v3 = v0[21];

  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);

  v4 = v0[42];
  v5 = v0[31];
  v7 = v0[27];
  v6 = v0[28];
  v9 = v0[25];
  v8 = v0[26];

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF3EDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  *(v7 + 2336) = v6;
  *(v7 + 2328) = a6;
  *(v7 + 2320) = a3;
  *(v7 + 2312) = a2;
  *(v7 + 2304) = a1;
  v10 = type metadata accessor for MLS.GroupState();
  *(v7 + 2344) = v10;
  v11 = *(v10 - 8);
  *(v7 + 2352) = v11;
  v12 = *(v11 + 64) + 15;
  *(v7 + 2360) = swift_task_alloc();
  *(v7 + 2368) = swift_task_alloc();
  *(v7 + 2376) = swift_task_alloc();
  *(v7 + 2384) = swift_task_alloc();
  *(v7 + 2392) = swift_task_alloc();
  *(v7 + 2400) = swift_task_alloc();
  *(v7 + 2292) = *a4;
  *(v7 + 2408) = *(a4 + 8);
  v13 = *(a4 + 32);
  *(v7 + 2424) = *(a4 + 24);
  *(v7 + 2432) = v13;
  *(v7 + 2440) = *a5;

  return MEMORY[0x2822009F8](sub_26BF3EF1C, 0, 0);
}

uint64_t sub_26BF3EF1C()
{
  v110 = v0;
  v1 = *(v0 + 2448);
  v2 = *(v0 + 2440);
  v3 = *(v0 + 2432);
  v97 = *(v0 + 2424);
  v95 = *(v0 + 2408);
  v103 = *(v0 + 2292);
  v4 = *(v0 + 2336);
  v101 = *(v0 + 2320);
  v99 = *(v0 + 2312);
  v5 = *(v0 + 2304);
  *(v4 + 160) = MEMORY[0x277D84FA0];
  v6 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  v9 = type metadata accessor for FileInfoAndSender();
  v10 = *(*(v9 - 8) + 56);
  v10(v4 + v8, 1, 1, v9);
  v10(v4 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject, 1, 1, v9);
  v11 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v12 = MEMORY[0x277D84F90];
  *(v4 + v11) = sub_26C0047C0(MEMORY[0x277D84F90]);
  v13 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  *(v4 + v13) = sub_26C0047C0(v12);
  v14 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_eraEpochDate;
  *(v4 + v14) = sub_26C0048D4(v12);
  LOBYTE(v106) = v103;
  v107 = v95;
  v108 = v97;
  v109 = v3;
  *&v105 = v2;
  *(&v105 + 1) = v1;

  sub_26BE00608(v99, v101);

  sub_26BE04890(v2, v1);
  v15 = sub_26BE3EFC0(v5, v99, v101, &v106, &v105);
  *(v0 + 2456) = v15;
  v16 = *(v0 + 2448);
  v102 = v15;
  v106 = *(v0 + 2440);
  *&v107 = v16;
  v17 = MLS.Identity.Credential.serializedRepresentation.getter();
  v19 = v18;
  sub_26BE0489C(*(v0 + 2440), *(v0 + 2448));
  MLS.Credential.init(rawValue:)(v17, v19, &v105);
  v20 = *(v0 + 2432);
  v21 = *(v0 + 2320);
  v22 = *(v0 + 2312);
  v23 = *(v0 + 2304);
  LODWORD(v97) = *(v0 + 2292);
  v24 = *(&v105 + 1);
  v100 = v105;
  *(v0 + 2464) = v105;
  *(v0 + 2472) = v24;
  v25 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v23 + v25, v0 + 2080);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v102 + 112));
  sub_26BE03890((v0 + 2080), v102 + 112);
  swift_endAccess();
  sub_26BE00608(v22, v21);

  if (v97)
  {
    v26 = 2;
  }

  else
  {
    v26 = 1;
  }

  sub_26BE038A8(v23 + v25, v0 + 1880);
  v27 = *(v102 + 48);
  LOBYTE(v105) = v103;
  sub_26BE04890(v100, v24);

  MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v105, &v106);
  swift_beginAccess();
  sub_26BE295A0((v27 + 5), v0 + 16);

  sub_26BE1118C((v0 + 1960));
  v83 = v26;
  sub_26BE29710(v0 + 16);

  sub_26BE03890((v0 + 1960), v0 + 1920);
  sub_26BE038A8(v0 + 1920, v0 + 2000);
  sub_26BE038A8(v0 + 1880, v0 + 2040);
  v94 = v27[42];
  v96 = v27[43];
  v98 = v27[44];
  v104 = v27[45];
  v93 = v27[46];
  v28 = *(v0 + 2024);
  v29 = *(v0 + 2032);
  __swift_project_boxed_opaque_existential_1((v0 + 2000), v28);
  v30 = *(v29 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v86 = v27;
  v87 = *(AssociatedTypeWitness - 8);
  v32 = *(v87 + 64) + 15;
  v33 = swift_task_alloc();
  v90 = *(v30 + 32);

  v90(v28, v30);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v91 = (*(AssociatedConformanceWitness + 16))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v92 = v35;
  (*(v87 + 8))(v33, AssociatedTypeWitness);
  v36 = *(v0 + 2064);
  v37 = *(v0 + 2072);
  __swift_project_boxed_opaque_existential_1((v0 + 2040), v36);
  v38 = swift_getAssociatedTypeWitness();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64) + 15;
  v41 = swift_task_alloc();
  (*(v37 + 40))(v36, v37);
  v42 = swift_getAssociatedConformanceWitness();
  v43 = (*(*(v42 + 8) + 16))(v38);
  v45 = v44;
  (*(v39 + 8))(v41, v38);

  *(v0 + 520) = v91;
  *(v0 + 528) = v92;
  v88 = v43;
  v89 = v45;
  *(v0 + 536) = v43;
  *(v0 + 544) = v45;
  *(v0 + 552) = v100;
  *(v0 + 560) = v24;
  *(v0 + 568) = v94;
  *(v0 + 576) = v96;
  *(v0 + 584) = v98;
  *(v0 + 592) = v104;
  *(v0 + 600) = v93;
  *(v0 + 608) = xmmword_26C015F70;
  *(v0 + 624) = 0;
  *(v0 + 628) = *(v0 + 374);
  *(v0 + 625) = *(v0 + 371);
  *(v0 + 632) = v12;
  *(v0 + 640) = xmmword_26C00BBD0;
  v46 = *(v0 + 568);
  *(v0 + 824) = *(v0 + 552);
  *(v0 + 840) = v46;
  v47 = *(v0 + 536);
  *(v0 + 792) = *(v0 + 520);
  *(v0 + 808) = v47;
  v48 = *(v0 + 584);
  v49 = *(v0 + 600);
  v50 = *(v0 + 616);
  v51 = *(v0 + 632);
  *(v0 + 920) = *(v0 + 648);
  *(v0 + 888) = v50;
  *(v0 + 904) = v51;
  *(v0 + 856) = v48;
  *(v0 + 872) = v49;
  *(v0 + 2272) = xmmword_26C00DA60;
  *(v0 + 2288) = 0;
  sub_26BE00758(v0 + 520, v0 + 928);
  v52 = sub_26BE5B600(v0 + 2272);
  v54 = v53;
  v55 = *(v0 + 904);
  *(v0 + 1432) = *(v0 + 888);
  *(v0 + 1448) = v55;
  *(v0 + 1464) = *(v0 + 920);
  v56 = *(v0 + 840);
  *(v0 + 1368) = *(v0 + 824);
  *(v0 + 1384) = v56;
  v57 = *(v0 + 872);
  *(v0 + 1400) = *(v0 + 856);
  *(v0 + 1416) = v57;
  v58 = *(v0 + 808);
  *(v0 + 1336) = *(v0 + 792);
  *(v0 + 1352) = v58;
  sub_26BE00854(v0 + 1336);
  v59 = *(v0 + 2064);
  v60 = *(v0 + 2072);
  __swift_project_boxed_opaque_existential_1((v0 + 2040), v59);
  v61 = MLS.Cryptography.SignaturePrivateKey.signWithLabel(label:message:)(0x65646F4E6661654CLL, 0xEB00000000534254, v52, v54, v59, v60);
  v81 = *(v0 + 2384);
  v82 = *(v0 + 2328);
  v79 = *(v0 + 2312);
  v80 = *(v0 + 2320);
  v85 = v61;
  v63 = v62;
  sub_26BE00258(v52, v54);
  sub_26BE00258(0, 0xC000000000000000);
  *(v0 + 378) = v83;
  sub_26BE038A8(v0 + 2000, v0 + 2120);
  sub_26BE038A8(v0 + 2040, v0 + 2160);
  *(v0 + 1472) = v91;
  *(v0 + 1480) = v92;
  *(v0 + 1488) = v88;
  *(v0 + 1496) = v89;
  *(v0 + 1504) = v100;
  *(v0 + 1512) = v24;
  *(v0 + 1520) = v94;
  *(v0 + 1528) = v96;
  *(v0 + 1536) = v98;
  *(v0 + 1544) = v104;
  *(v0 + 1552) = v93;
  *(v0 + 1560) = 0;
  *(v0 + 1568) = -1;
  *(v0 + 1576) = 0;
  *(v0 + 1577) = *(v0 + 371);
  *(v0 + 1580) = *(v0 + 374);
  *(v0 + 1584) = v12;
  *(v0 + 1592) = v85;
  v84 = v63;
  *(v0 + 1600) = v63;
  v64 = *(v0 + 1520);
  *(v0 + 1776) = *(v0 + 1504);
  *(v0 + 1792) = v64;
  v65 = *(v0 + 1488);
  *(v0 + 1744) = *(v0 + 1472);
  *(v0 + 1760) = v65;
  v66 = *(v0 + 1536);
  v67 = *(v0 + 1552);
  v68 = *(v0 + 1568);
  v69 = *(v0 + 1584);
  *(v0 + 1872) = *(v0 + 1600);
  *(v0 + 1840) = v68;
  *(v0 + 1856) = v69;
  *(v0 + 1808) = v66;
  *(v0 + 1824) = v67;
  sub_26BE00758(v0 + 1472, v0 + 384);
  sub_26BFEF948(v79, v80, (v0 + 378), (v0 + 2120), (v0 + 2160), (v0 + 1744), v82, v81);
  v70 = *(v0 + 2400);
  v71 = *(v0 + 2392);
  v72 = *(v0 + 2384);
  v73 = *(v0 + 2344);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1880));
  __swift_destroy_boxed_opaque_existential_1((v0 + 1920));
  *(v0 + 656) = v91;
  *(v0 + 664) = v92;
  *(v0 + 672) = v88;
  *(v0 + 680) = v89;
  *(v0 + 688) = v100;
  *(v0 + 696) = v24;
  *(v0 + 704) = v94;
  *(v0 + 712) = v96;
  *(v0 + 720) = v98;
  *(v0 + 728) = v104;
  *(v0 + 736) = v93;
  *(v0 + 744) = 0;
  *(v0 + 752) = -1;
  *(v0 + 760) = 0;
  *(v0 + 761) = *(v0 + 371);
  *(v0 + 764) = *(v0 + 374);
  *(v0 + 768) = v12;
  *(v0 + 776) = v85;
  *(v0 + 784) = v84;
  sub_26BE00854(v0 + 656);
  sub_26BF7F124(v72, v71, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1((v0 + 2040));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2000));
  sub_26BF7F124(v71, v70, type metadata accessor for MLS.GroupState);
  v74 = *(v73 + 76);
  v75 = *(v70 + v74);

  *(v70 + v74) = v86;
  v76 = swift_task_alloc();
  *(v0 + 2480) = v76;
  *v76 = v0;
  v76[1] = sub_26BF3FD48;
  v77 = *(v0 + 2400);

  return sub_26BF40784(v77);
}

uint64_t sub_26BF3FD48()
{
  v2 = *(*v1 + 2480);
  v5 = *v1;
  *(*v1 + 2488) = v0;

  if (v0)
  {
    v3 = sub_26BF40574;
  }

  else
  {
    v3 = sub_26BF3FE5C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF3FE5C()
{
  v43 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2400);
  v2 = *(v0 + 2376);
  v3 = *(v0 + 2368);
  v4 = *(v0 + 2360);
  v5 = sub_26C009A5C();
  __swift_project_value_buffer(v5, qword_280478EE8);
  sub_26BF7F0BC(v1, v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v1, v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F0BC(v1, v4, type metadata accessor for MLS.GroupState);
  v6 = sub_26C009A3C();
  v7 = sub_26C00AA1C();
  if (!os_log_type_enabled(v6, v7))
  {
    v13 = *(v0 + 2376);
    v14 = *(v0 + 2360);
    sub_26BF7F05C(*(v0 + 2368), type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v13, type metadata accessor for MLS.GroupState);

    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    v15 = *(v0 + 2488);
    goto LABEL_10;
  }

  v8 = *(v0 + 2488);
  v9 = *(v0 + 2376);
  v10 = *(v0 + 2344);
  v11 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v42 = v41;
  *v11 = 67109634;
  v12 = sub_26BE81FE0(*(v9 + *(v10 + 40)));
  if (v8)
  {

LABEL_8:
    v16 = sub_26BE4126C();
    goto LABEL_9;
  }

  v16 = v12;
  if ((v12 & 0x100000000) != 0)
  {
    goto LABEL_8;
  }

LABEL_9:
  v17 = *(v0 + 2368);
  v18 = *(v0 + 2360);
  sub_26BF7F05C(*(v0 + 2376), type metadata accessor for MLS.GroupState);
  *(v11 + 4) = v16;
  *(v11 + 8) = 2048;
  v19 = *(v17 + 24);
  sub_26BF7F05C(v17, type metadata accessor for MLS.GroupState);
  *(v11 + 10) = v19;
  *(v11 + 18) = 2080;
  v15 = 0;
  *(v0 + 2296) = sub_26BF87240(*(v18 + 8), *(v18 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  v20 = sub_26C00A3EC();
  v22 = v21;

  sub_26BF7F05C(v18, type metadata accessor for MLS.GroupState);
  v23 = sub_26BE29740(v20, v22, &v42);

  *(v11 + 20) = v23;
  _os_log_impl(&dword_26BDFE000, v6, v7, "Created group state with era %u, epoch %lld, groupID %s", v11, 0x1Cu);
  __swift_destroy_boxed_opaque_existential_1(v41);
  MEMORY[0x26D69A4E0](v41, -1, -1);
  MEMORY[0x26D69A4E0](v11, -1, -1);

LABEL_10:
  v24 = *(v0 + 2400);
  v25 = *(v0 + 2344);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 2496) = v26;
  v27 = *(*(v26 - 8) + 72);
  v28 = *(*(v26 - 8) + 80);
  *(v0 + 380) = v28;
  v29 = (v28 + 32) & ~v28;
  v30 = swift_allocObject();
  *(v0 + 2504) = v30;
  *(v30 + 16) = xmmword_26C011280;
  v31 = sub_26BE81FE0(*(v24 + *(v25 + 40)));
  if (v15)
  {
  }

  else if ((v31 & 0x100000000) == 0)
  {
    goto LABEL_14;
  }

  LODWORD(v31) = sub_26BE4126C();
LABEL_14:
  v32 = v30 + v29;
  v33 = *(v0 + 2400);
  v34 = *(v0 + 2352);
  v35 = *(v0 + 2344);
  v36 = *(v26 + 48);
  v37 = *(v33 + 24);
  *v32 = v31;
  *(v32 + 8) = v37;
  sub_26BF7F0BC(v33, v32 + v36, type metadata accessor for MLS.GroupState);
  (*(v34 + 56))(v32 + v36, 0, 1, v35);
  v38 = swift_task_alloc();
  *(v0 + 2512) = v38;
  *v38 = v0;
  v38[1] = sub_26BF402E4;
  v39 = *(v0 + 2456);

  return sub_26BF394D4(v30);
}

uint64_t sub_26BF402E4()
{
  v2 = *v1;
  v3 = *(*v1 + 2512);
  v4 = *v1;
  *(v2 + 2520) = v0;

  v5 = *(v2 + 2504);
  v6 = *(v2 + 2496);
  v7 = (*(v2 + 380) + 32) & ~*(v2 + 380);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF4067C;
  }

  else
  {
    v9 = sub_26BF40464;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF40464()
{
  v1 = v0[300];
  v2 = v0[299];
  v3 = v0[298];
  v4 = v0[297];
  v5 = v0[296];
  v6 = v0[295];
  v7 = v0[290];
  v8 = v0[289];
  v9 = v0[288];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v8, v7);

  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);

  v10 = v0[1];
  v11 = v0[307];

  return v10(v11);
}

uint64_t sub_26BF40574()
{
  v1 = v0[307];
  v2 = v0[300];
  v3 = v0[290];
  v4 = v0[289];
  v5 = v0[288];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v4, v3);

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);

  v6 = v0[311];
  v7 = v0[300];
  v8 = v0[299];
  v9 = v0[298];
  v10 = v0[297];
  v11 = v0[296];
  v12 = v0[295];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BF4067C()
{
  v1 = v0[307];
  v2 = v0[300];
  v3 = v0[290];
  v4 = v0[289];
  v5 = v0[288];
  sub_26BE0489C(v0[308], v0[309]);
  sub_26BE00258(v4, v3);

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);

  v6 = v0[315];
  v7 = v0[300];
  v8 = v0[299];
  v9 = v0[298];
  v10 = v0[297];
  v11 = v0[296];
  v12 = v0[295];

  v13 = v0[1];

  return v13();
}

uint64_t sub_26BF40784(uint64_t a1)
{
  v2[20] = a1;
  v2[21] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v2[22] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF40830, 0, 0);
}

void sub_26BF40830()
{
  v1 = v0[20];
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  v5 = *(v1 + 32);
  v6 = swift_task_alloc();
  *(v6 + 16) = v1;
  v7 = sub_26BFEB264(sub_26BF7F1F4, v6, v5, v2, v3, v4);

  v8 = *(v7 + 2);
  if (!v8)
  {
LABEL_33:

    v38 = v0[20];
    v39 = type metadata accessor for MLS.GroupState();
    v40 = sub_26BE81FE0(*(v38 + *(v39 + 40)));
    LODWORD(v7) = v40;
    if ((v40 & 0x100000000) != 0)
    {
      LODWORD(v7) = sub_26BE4126C();
    }

    v8 = *(v0[20] + 24);
    if (qword_28045DF48 == -1)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  v9 = 0;
  v54 = v0[20];
  v55 = v0[21];
  v10 = v7 + 32;
  v52 = v7;
  v53 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  while (1)
  {
    if (v9 >= *(v7 + 2))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      swift_once();
LABEL_36:
      v41 = v0[23];
      v42 = __swift_project_value_buffer(v0[22], qword_28045E4F0);
      swift_beginAccess();
      sub_26BE2E1F0(v42, v41, &qword_28045E4A8, &unk_26C00ECB0);
      v43 = sub_26C00921C();
      v44 = *(v43 - 8);
      v45 = *(v44 + 48);
      v46 = v45(v41, 1, v43);
      v47 = v0[23];
      if (v46 == 1)
      {
        v48 = v0[24];
        sub_26C00920C();
        if (v45(v47, 1, v43) != 1)
        {
          sub_26BE2E258(v0[23], &qword_28045E4A8, &unk_26C00ECB0);
        }
      }

      else
      {
        (*(v44 + 32))(v0[24], v0[23], v43);
      }

      v49 = v0[24];
      v50 = v0[21];
      (*(v44 + 56))(v49, 0, 1, v43);
      swift_beginAccess();
      sub_26BE4D1CC(v49, v7, v8);
      swift_endAccess();

      v51 = v0[1];

      v51();
      return;
    }

    sub_26BE2DB68(&v10[56 * v9], (v0 + 2));
    v12 = v0[2];
    v11 = v0[3];
    sub_26BE04890(v12, v11);
    sub_26BE2DBC4((v0 + 2));
    if ((v11 & 0x2000000000000000) != 0)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x26D6996F0](0, v12);
      }

      else
      {
        if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v13 = *(v12 + 32);
      }

      v14 = v13;
      v15 = SecCertificateCopyURIs();
      if (!v15)
      {
        goto LABEL_47;
      }

      v16 = v15;

      v0[18] = v16;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (swift_dynamicCast())
      {
        v17 = v0[19];
        if (v17)
        {
          break;
        }
      }
    }

    sub_26BE0489C(v12, v11);
LABEL_4:
    if (++v9 == v8)
    {
      goto LABEL_33;
    }
  }

  if (!v17[2])
  {
    sub_26BE0489C(v12, v11);

    goto LABEL_4;
  }

  v18 = v0[20];
  v19 = v17[5];
  v56 = v17[4];

  sub_26BE0489C(v12, v11);
  v20 = *(v18 + *(type metadata accessor for MLS.GroupState() + 40));
  v21 = (v20 + 32);
  v22 = *(v20 + 16) + 1;
  do
  {
    if (!--v22)
    {
      goto LABEL_25;
    }

    v23 = v21 + 12;
    v24 = *v21;
    v21 += 12;
  }

  while (v24 != -4095);
  v25 = *(v23 - 2);
  v26 = *(v23 - 1);
  v27 = v26 >> 62;
  if ((v26 >> 62) > 1)
  {
    if (v27 == 2)
    {
      v28 = *(v25 + 16);
      goto LABEL_23;
    }
  }

  else if (v27)
  {
LABEL_23:
    sub_26BE00608(*(v23 - 2), *(v23 - 1));
  }

  v58 = v26;
  v29 = sub_26BEE6028();
  sub_26BE00258(v25, v58);
  if ((v29 & 0x100000000) == 0)
  {
LABEL_31:
    v35 = *(v54 + 24);
    swift_beginAccess();
    v36 = *(v55 + v53);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v57 = *(v55 + v53);
    *(v55 + v53) = 0x8000000000000000;
    sub_26BE57234(v29, v35, v56, v19, isUniquelyReferenced_nonNull_native);
    v7 = v52;

    *(v55 + v53) = v57;
    swift_endAccess();
    goto LABEL_4;
  }

LABEL_25:
  if (!os_variant_allows_internal_security_policies())
  {
    goto LABEL_30;
  }

  v30 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v31 = sub_26C00A45C();
  v32 = [v30 initWithSuiteName_];

  if (!v32 || (v33 = v32, v34 = sub_26C00A45C(), v29 = [v33 integerForKey_], v33, v33, v34, v29 < 1))
  {
LABEL_30:
    LODWORD(v29) = 1;
    goto LABEL_31;
  }

  if (!HIDWORD(v29))
  {
    goto LABEL_31;
  }

  __break(1u);
LABEL_47:
  __break(1u);
}

uint64_t sub_26BF40E64(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 344) = a2;
  *(v7 + 352) = v6;
  *(v7 + 468) = a6;
  *(v7 + 336) = a1;
  v11 = type metadata accessor for MLS.GroupState();
  *(v7 + 360) = v11;
  v12 = *(v11 - 8);
  *(v7 + 368) = v12;
  v13 = *(v12 + 64) + 15;
  *(v7 + 376) = swift_task_alloc();
  *(v7 + 384) = *a3;
  *(v7 + 456) = *a4;
  *(v7 + 469) = *(a4 + 4);
  *(v7 + 460) = *a5;
  *(v7 + 470) = *(a5 + 4);

  return MEMORY[0x2822009F8](sub_26BF40F68, 0, 0);
}

uint64_t sub_26BF40F68()
{
  v65 = v0;
  v1 = *(v0 + 468);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v17 = sub_26C009A5C();
    *(v0 + 432) = __swift_project_value_buffer(v17, qword_280478EE8);
    v18 = sub_26C009A3C();
    v19 = sub_26C00AA1C();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_26BDFE000, v18, v19, "Received commit that removed us from the group. Deleting group from storage...", v20, 2u);
      MEMORY[0x26D69A4E0](v20, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 440) = v21;
    *v21 = v0;
    v21[1] = sub_26BF41A44;
    v22 = *(v0 + 352);

    return sub_26BF5DAA0();
  }

  else
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v2 = sub_26C009A5C();
    __swift_project_value_buffer(v2, qword_280478EE8);
    v3 = sub_26C009A3C();
    v4 = sub_26C00AA0C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_26BDFE000, v3, v4, "Received commit that removed and re-added group member", v5, 2u);
      MEMORY[0x26D69A4E0](v5, -1, -1);
    }

    v6 = *(v0 + 352);

    v7 = *(v6 + 48);
    v8 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client__state;
    swift_beginAccess();
    sub_26BE2E1F0(v7 + v8, v0 + 128, &qword_28045E460, &qword_26C0206D0);
    if (!*(v0 + 160))
    {
      sub_26BE2E258(v0 + 128, &qword_28045E460, &qword_26C0206D0);
      sub_26BE01654();
      swift_allocError();
      *v24 = 17;
      *(v24 + 8) = 0u;
      *(v24 + 24) = 0u;
      *(v24 + 40) = 0u;
      *(v24 + 56) = 0u;
      *(v24 + 72) = 0u;
      *(v24 + 88) = 0u;
      *(v24 + 104) = 0;
      *(v24 + 112) = 23;
      swift_willThrow();
LABEL_23:
      v36 = *(v0 + 376);

      v37 = *(v0 + 8);

      return v37();
    }

    v9 = *(v0 + 392);
    v10 = *(v0 + 208);
    *(v0 + 80) = *(v0 + 192);
    *(v0 + 96) = v10;
    *(v0 + 112) = *(v0 + 224);
    v11 = *(v0 + 144);
    *(v0 + 16) = *(v0 + 128);
    *(v0 + 32) = v11;
    v12 = *(v0 + 176);
    *(v0 + 48) = *(v0 + 160);
    *(v0 + 64) = v12;
    if (v9 >> 60 == 15)
    {
      v13 = sub_26C009A3C();
      v14 = sub_26C00AA0C();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&dword_26BDFE000, v13, v14, "Received commit that removed and re-added group member, but no accompanying welcome message", v15, 2u);
        MEMORY[0x26D69A4E0](v15, -1, -1);
      }

      sub_26BE01654();
      swift_allocError();
      *v16 = 41;
      *(v16 + 8) = 0u;
      *(v16 + 24) = 0u;
      *(v16 + 40) = 0u;
      *(v16 + 56) = 0u;
      *(v16 + 72) = 0u;
      *(v16 + 88) = 0u;
      *(v16 + 104) = 0;
      *(v16 + 112) = 23;
      swift_willThrow();
      sub_26BE2BA24(v0 + 16);
      goto LABEL_23;
    }

    v25 = *(v0 + 352);
    sub_26BE2BAE8(*(v0 + 384), v9);

    v26 = sub_26C009A3C();
    v27 = sub_26C00AA0C();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 352);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v63 = v30;
      *v29 = 136315138;

      v31 = sub_26BE3D034();
      v33 = v32;

      v34 = sub_26BE29740(v31, v33, &v63);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_26BDFE000, v26, v27, "%s: received commit that removed and re-added group member, presumably due to expired credential", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x26D69A4E0](v30, -1, -1);
      MEMORY[0x26D69A4E0](v29, -1, -1);
    }

    v35 = *(v0 + 376);
    v63 = *(v0 + 384);
    v64 = 0;
    MLS.ClientState.joinGroup(welcome:ratchetTree:)(&v63, &v64, v35);
    v38 = *(v0 + 360);
    v39 = *(v0 + 344);
    v62 = *(*(v0 + 376) + 24);
    *(*(v0 + 352) + 24) = v62;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 400) = v40;
    v41 = *(*(v40 - 8) + 72);
    v42 = *(*(v40 - 8) + 80);
    *(v0 + 464) = v42;
    v43 = (v42 + 32) & ~v42;
    v61 = v41;
    v44 = swift_allocObject();
    *(v0 + 408) = v44;
    *(v44 + 16) = xmmword_26C0125B0;
    v45 = v44 + v43;
    v46 = sub_26BE81FE0(*(v39 + *(v38 + 40)));
    if ((v46 & 0x100000000) != 0)
    {
      LODWORD(v46) = sub_26BE4126C();
    }

    v47 = *(v0 + 368);
    v48 = *(v0 + 376);
    v49 = *(v0 + 360);
    v50 = *(v0 + 344);
    v51 = *(v40 + 48);
    v52 = *(v50 + 24);
    *v45 = v46;
    *(v45 + 8) = v52;
    sub_26BF7F0BC(v50, v45 + v51, type metadata accessor for MLS.GroupState);
    v53 = *(v47 + 56);
    v53(v45 + v51, 0, 1, v49);
    v54 = sub_26BE81FE0(*(v48 + *(v38 + 40)));
    if ((v54 & 0x100000000) != 0)
    {
      LODWORD(v54) = sub_26BE4126C();
    }

    v55 = *(v0 + 376);
    v56 = *(v0 + 360);
    v57 = v45 + v61;
    v58 = *(v40 + 48);
    *v57 = v54;
    *(v57 + 8) = v62;
    sub_26BF7F0BC(v55, v57 + v58, type metadata accessor for MLS.GroupState);
    v53(v57 + v58, 0, 1, v56);
    v59 = swift_task_alloc();
    *(v0 + 416) = v59;
    *v59 = v0;
    v59[1] = sub_26BF41730;
    v60 = *(v0 + 352);

    return sub_26BF394D4(v44);
  }
}

uint64_t sub_26BF41730()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(v2 + 424) = v0;

  v5 = *(v2 + 408);
  v6 = *(v2 + 400);
  v7 = (*(v2 + 464) + 32) & ~*(v2 + 464);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF41DCC;
  }

  else
  {
    v9 = sub_26BF418B0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF418B0()
{
  v14 = v0;
  v1 = *(v0 + 424);
  v2 = *(v0 + 352);
  sub_26BE038A8(*(v0 + 376) + *(*(v0 + 360) + 56), v0 + 240);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v2 + 112));
  sub_26BE03890((v0 + 240), v2 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v13);
  v4 = *(v0 + 384);
  v3 = *(v0 + 392);
  v5 = *(v0 + 376);
  if (v1)
  {
    sub_26BE2BA24(v0 + 16);
    sub_26BE132D4(v4, v3);
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
    v6 = *(v0 + 376);
  }

  else
  {
    v8 = *(v0 + 352);
    v9 = *(v0 + 336);
    sub_26BE2BA24(v0 + 16);
    sub_26BE132D4(v4, v3);
    v10 = *(v8 + 56);
    v11 = *(v8 + 64);
    *(v8 + 56) = v13;
    sub_26BE0489C(v10, v11);
    sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
    *v9 = 1;
    *(v9 + 8) = 0u;
    *(v9 + 24) = 0u;
    *(v9 + 40) = 0u;
    *(v9 + 56) = 0u;
    *(v9 + 72) = 0u;
    *(v9 + 88) = 0u;
    *(v9 + 97) = 0u;
    *(v9 + 113) = 4;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_26BF41A44()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  *(*v1 + 448) = v0;

  if (v0)
  {
    v5 = *(v2 + 376);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF41B94, 0, 0);
  }
}

uint64_t sub_26BF41B94()
{
  v27 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 352);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 448);
    v6 = *(v0 + 352);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26[0] = v8;
    *v7 = 136315138;
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    sub_26BE00608(v9, v10);
    *(v0 + 328) = sub_26BF87240(v9, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v11 = sub_26C00A3EC();
    v13 = v12;
    sub_26BE00258(v9, v10);

    v14 = sub_26BE29740(v11, v13, v26);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_26BDFE000, v3, v4, "Group %s deleted from storage", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  v15 = *(v0 + 470);
  v16 = *(v0 + 460);
  v17 = *(v0 + 469);
  v18 = *(v0 + 344);
  v19 = *(v0 + 352);
  v24 = *(v0 + 456);
  v25 = v17;
  LODWORD(v26[0]) = v16;
  BYTE4(v26[0]) = v15;
  sub_26BE01654();
  swift_allocError();
  sub_26BF51C34(v18, &v24, v26, v20);
  swift_willThrow();
  v21 = *(v0 + 376);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_26BF41DCC()
{
  v1 = v0[47];
  sub_26BE132D4(v0[48], v0[49]);
  sub_26BE2BA24((v0 + 2));
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  v2 = v0[53];
  v3 = v0[47];

  v4 = v0[1];

  return v4();
}

void sub_26BF41E60(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB28, &qword_26C01FCA8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for MLS.MLSMessage(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v50 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - v13;
  v15 = 0;
  v16 = *a1;
  v17 = *(a1 + 8);
  v18 = v17 >> 62;
  if ((v17 >> 62) > 1)
  {
    if (v18 != 2)
    {
      goto LABEL_7;
    }

    v15 = *(v16 + 16);
  }

  else
  {
    if (!v18)
    {
      goto LABEL_7;
    }

    v15 = v16;
  }

  sub_26BE00608(*a1, *(a1 + 8));
  sub_26BE00608(v16, v17);
LABEL_7:
  v54 = v16;
  v55 = v17;
  v56 = v15;
  sub_26BEE3C08(v7);
  if (v2)
  {
    swift_willThrow();
    sub_26BE00258(v16, v17);
    sub_26BE00258(v54, v55);

    (*(v9 + 56))(v7, 1, 1, v8);
    sub_26BE2E258(v7, &qword_28045FB28, &qword_26C01FCA8);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v19 = sub_26C009A5C();
    v20 = __swift_project_value_buffer(v19, qword_280478EE8);

    v21 = sub_26C009A3C();
    v22 = sub_26C00AA0C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v49 = v20;
      v25 = v24;
      v54 = v24;
      *v23 = 136315138;

      v26 = sub_26BE3D034();
      v28 = v27;

      v29 = sub_26BE29740(v26, v28, &v54);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_26BDFE000, v21, v22, "%s: Failed to parse incoming message as MLSMessage, trying CommitList", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x26D69A4E0](v25, -1, -1);
      MEMORY[0x26D69A4E0](v23, -1, -1);
    }

    v52 = v16;
    v53 = v17;
    MLS.Group.Message.asSingleCommit()(&v54);
    v30 = v50;
    MLS.MLSMessage.init(rawValue:quiet:)(v54, v55, 0, v50);
    sub_26BF7F124(v30, v51, type metadata accessor for MLS.MLSMessage);

    v40 = sub_26C009A3C();
    v41 = sub_26C00AA1C();

    if (os_log_type_enabled(v40, v41))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v54 = v44;
      *v43 = 136315138;

      v45 = sub_26BE3D034();
      v47 = v46;

      v48 = sub_26BE29740(v45, v47, &v54);

      *(v43 + 4) = v48;
      _os_log_impl(&dword_26BDFE000, v40, v41, "%s: successfully parsed incoming message as CommitList", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x26D69A4E0](v44, -1, -1);
      MEMORY[0x26D69A4E0](v43, -1, -1);
    }
  }

  else
  {
    sub_26BE00258(v16, v17);
    sub_26BE00258(v54, v55);
    (*(v9 + 56))(v7, 0, 1, v8);
    sub_26BF7F124(v7, v14, type metadata accessor for MLS.MLSMessage);
    sub_26BF7F0BC(v14, v51, type metadata accessor for MLS.MLSMessage);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v31 = sub_26C009A5C();
    __swift_project_value_buffer(v31, qword_280478EE8);

    v32 = sub_26C009A3C();
    v33 = sub_26C00AA1C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v54 = v35;
      *v34 = 136315138;

      v36 = sub_26BE3D034();
      v38 = v37;

      v39 = sub_26BE29740(v36, v38, &v54);

      *(v34 + 4) = v39;
      _os_log_impl(&dword_26BDFE000, v32, v33, "%s: successfully parsed incoming message as MLSMessage", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v35);
      MEMORY[0x26D69A4E0](v35, -1, -1);
      MEMORY[0x26D69A4E0](v34, -1, -1);
    }

    sub_26BF7F05C(v14, type metadata accessor for MLS.MLSMessage);
  }
}

uint64_t sub_26BF425C8(uint64_t a1, _OWORD *a2, __int128 *a3)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = v3;
  v5 = *a3;
  *(v4 + 32) = *a2;
  *(v4 + 48) = v5;
  return MEMORY[0x2822009F8](sub_26BF425F4, 0, 0);
}

uint64_t sub_26BF425F4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];

  sub_26BE00608(v4, v3);
  sub_26BE2BAE8(v1, v2);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_26BF426DC;
  v7 = v0[6];
  v8 = v0[7];
  v9 = v0[4];
  v10 = v0[5];
  v11 = v0[2];
  v12 = v0[3];

  return (sub_26BE9DF04)(v11);
}

uint64_t sub_26BF426DC()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BF427D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[302] = a6;
  v6[301] = a5;
  v6[300] = a4;
  v6[299] = a3;
  v6[298] = a2;
  v6[297] = a1;
  v7 = type metadata accessor for MLS.GroupState.ReceivedMessageDetails(0);
  v6[303] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[304] = swift_task_alloc();
  v6[305] = swift_task_alloc();
  v6[306] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAB0, &qword_26C01F960) - 8) + 64) + 15;
  v6[307] = swift_task_alloc();
  v10 = type metadata accessor for MLS.GroupState();
  v6[308] = v10;
  v11 = *(v10 - 8);
  v6[309] = v11;
  v12 = *(v11 + 64) + 15;
  v6[310] = swift_task_alloc();
  v6[311] = swift_task_alloc();
  v6[312] = swift_task_alloc();
  v6[313] = swift_task_alloc();
  v6[314] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580) - 8) + 64) + 15;
  v6[315] = swift_task_alloc();
  v6[316] = swift_task_alloc();
  v6[317] = swift_task_alloc();
  v6[318] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v6[319] = v14;
  v15 = *(v14 - 8);
  v6[320] = v15;
  v16 = *(v15 + 64) + 15;
  v6[321] = swift_task_alloc();
  v6[322] = swift_task_alloc();
  v6[323] = swift_task_alloc();
  v17 = *(*(type metadata accessor for MLS.PublicMessage() - 8) + 64) + 15;
  v6[324] = swift_task_alloc();
  v18 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v6[325] = v18;
  v19 = *(*(v18 - 8) + 64) + 15;
  v6[326] = swift_task_alloc();
  v6[327] = swift_task_alloc();
  v6[328] = swift_task_alloc();
  v6[329] = swift_task_alloc();
  v6[330] = swift_task_alloc();
  v20 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v6[331] = swift_task_alloc();
  v6[332] = swift_task_alloc();
  v6[333] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF42B00, 0, 0);
}

uint64_t sub_26BF42B00()
{
  v246 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 2400);
  v2 = *(v0 + 2392);
  v3 = *(v0 + 2384);
  v4 = sub_26C009A5C();
  *(v0 + 2672) = __swift_project_value_buffer(v4, qword_280478EE8);

  sub_26BE00608(v2, v1);

  sub_26BE00608(v2, v1);
  v5 = sub_26C009A3C();
  v6 = sub_26C00AA1C();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 2400);
  if (!v7)
  {
    v22 = *(v0 + 2392);
    v23 = *(v0 + 2384);
    sub_26BE00258(v22, *(v0 + 2400));

    sub_26BE00258(v22, v8);
    goto LABEL_16;
  }

  v9 = *(v0 + 2384);
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  *&v243 = v11;
  *v10 = 136315394;

  v12 = sub_26BE3D034();
  v14 = v13;

  v15 = sub_26BE29740(v12, v14, &v243);

  *(v10 + 4) = v15;

  *(v10 + 12) = 2048;
  v16 = v8 >> 62;
  v17 = *(v0 + 2400);
  v18 = v0;
  v19 = *(v0 + 2392);
  if ((v8 >> 62) > 1)
  {
    if (v16 != 2)
    {
      sub_26BE00258(v19, v17);
      v21 = 0;
      goto LABEL_15;
    }

    v25 = *(v19 + 16);
    v24 = *(v19 + 24);
    v19 = sub_26BE00258(v19, v17);
    v21 = v24 - v25;
    if (!__OFSUB__(v24, v25))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_12:
    v26 = HIDWORD(v19);
    v27 = v19;
    result = sub_26BE00258(v19, v17);
    LODWORD(v21) = v26 - v27;
    if (__OFSUB__(v26, v27))
    {
      __break(1u);
      return result;
    }

    v21 = v21;
    goto LABEL_15;
  }

  if (v16)
  {
    goto LABEL_12;
  }

  v20 = *(v0 + 2400);
  sub_26BE00258(v19, v17);
  v21 = BYTE6(v20);
LABEL_15:
  v29 = *(v18 + 2400);
  v30 = *(v18 + 2392);
  *(v10 + 14) = v21;
  sub_26BE00258(v30, v29);
  _os_log_impl(&dword_26BDFE000, v5, v6, "%s: processIncomingMessage, message is %ld bytes", v10, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v11);
  v0 = v18;
  MEMORY[0x26D69A4E0](v11, -1, -1);
  MEMORY[0x26D69A4E0](v10, -1, -1);
LABEL_16:

  v31 = (v0 + 1660);
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v32 = (v0 + 2392);
  v33 = *(v0 + 2400);
  v34 = *(v0 + 2392);
  __swift_project_value_buffer(v4, qword_280478FB0);
  sub_26BE00608(v34, v33);
  sub_26BE00608(v34, v33);
  v35 = sub_26C009A3C();
  v36 = sub_26C00A9FC();
  v37 = os_log_type_enabled(v35, v36);
  v38 = *(v0 + 2400);
  v39 = *(v0 + 2392);
  if (v37)
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *&v243 = v41;
    *v40 = 136315138;
    v42 = sub_26C0090EC();
    v44 = sub_26BE29740(v42, v43, &v243);

    *(v40 + 4) = v44;
    sub_26BE00258(v39, v38);
    sub_26BE00258(v39, v38);
    _os_log_impl(&dword_26BDFE000, v35, v36, "Received message: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D69A4E0](v41, -1, -1);
    v45 = v40;
    v32 = (v0 + 2392);
    MEMORY[0x26D69A4E0](v45, -1, -1);
  }

  else
  {
    sub_26BE00258(*(v0 + 2392), *(v0 + 2400));
    sub_26BE00258(v39, v38);
  }

  v46 = *(v0 + 2664);
  v47 = *(v0 + 2384);
  v243 = *v32;
  sub_26BF41E60(&v243, v46);
  v48 = *(v0 + 2664);
  sub_26BF34B98(&v243);
  v49 = *(v0 + 2664);
  v50 = *(v0 + 2384);
  if (v244)
  {
    sub_26BF7F0BC(v49, *(v0 + 2648), type metadata accessor for MLS.MLSMessage);
    swift_retain_n();
    v51 = sub_26C009A3C();
    v52 = sub_26C00AA0C();
    v53 = os_log_type_enabled(v51, v52);
    v54 = *(v0 + 2648);
    if (!v53)
    {
      v85 = *(v0 + 2384);
      sub_26BF7F05C(*(v0 + 2648), type metadata accessor for MLS.MLSMessage);

LABEL_49:

      v87 = *(v0 + 2600);
      sub_26BF7F0BC(*(v0 + 2664), *(v0 + 2616), type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v89 = *(v0 + 2616);
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v89, type metadata accessor for MLS.MLSMessage.Inner);
          v90 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v89, type metadata accessor for MLS.MLSMessage.Inner);
          v90 = 2;
        }

        else
        {
          v90 = *v89;
          sub_26BE00258(*(v89 + 8), *(v89 + 16));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v89, type metadata accessor for MLS.MLSMessage.Inner);
          v90 = 4;
        }

        else
        {
          sub_26BF7F05C(v89, type metadata accessor for MLS.MLSMessage.Inner);
          v90 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v89, type metadata accessor for MLS.MLSMessage.Inner);
        v90 = 3;
      }

      v91 = *(v0 + 2664);
      v92 = *(v0 + 2608);
      v93 = *(v0 + 2600);
      *(v0 + 1656) = v90;
      *(v0 + 1658) = 0;
      *v31 = 1;
      *(v0 + 1768) = 17;
      sub_26BE7D22C(v0 + 1656);
      sub_26BE2DC9C(v0 + 1656);
      sub_26BE01654();
      swift_allocError();
      v95 = v94;
      sub_26BF7F0BC(v91, v92, type metadata accessor for MLS.MLSMessage.Inner);
      v96 = swift_getEnumCaseMultiPayload();
      v97 = *(v0 + 2608);
      if (v96 > 2)
      {
        if (v96 == 3)
        {
          sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage.Inner);
          v98 = 1;
        }

        else if (v96 == 4)
        {
          sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage.Inner);
          v98 = 2;
        }

        else
        {
          v98 = *v97;
          sub_26BE00258(*(v97 + 8), *(v97 + 16));
        }
      }

      else if (v96)
      {
        if (v96 == 1)
        {
          sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage.Inner);
          v98 = 4;
        }

        else
        {
          sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage.Inner);
          v98 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v97, type metadata accessor for MLS.MLSMessage.Inner);
        v98 = 3;
      }

      v99 = *(v0 + 2664);
      *v95 = v98;
      *(v95 + 2) = 0;
      *(v95 + 4) = 1;
      *(v95 + 112) = 17;
      swift_willThrow();
      sub_26BF7F05C(v99, type metadata accessor for MLS.MLSMessage);
      v125 = *(v0 + 2664);
      v126 = *(v0 + 2656);
      v127 = *(v0 + 2648);
      v128 = *(v0 + 2640);
      v129 = *(v0 + 2632);
      v130 = *(v0 + 2624);
      v131 = *(v0 + 2616);
      v132 = *(v0 + 2608);
      v133 = *(v0 + 2592);
      v134 = *(v0 + 2584);
      v224 = *(v0 + 2576);
      v225 = *(v0 + 2568);
      v226 = *(v0 + 2544);
      v227 = *(v0 + 2536);
      v228 = *(v0 + 2528);
      v229 = *(v0 + 2520);
      v230 = *(v0 + 2512);
      v231 = *(v0 + 2504);
      v232 = *(v0 + 2496);
      v233 = *(v0 + 2488);
      v234 = *(v0 + 2480);
      v235 = *(v0 + 2456);
      v236 = *(v0 + 2448);
      v237 = *(v0 + 2440);
      v240 = *(v0 + 2432);

      v135 = *(v0 + 8);

      return v135();
    }

    v55 = *(v0 + 2624);
    v56 = *(v0 + 2600);
    v57 = *(v0 + 2384);
    v58 = swift_slowAlloc();
    v238 = swift_slowAlloc();
    *&v243 = v238;
    *v58 = 136315394;

    v59 = sub_26BE3D034();
    v61 = v60;

    v62 = sub_26BE29740(v59, v61, &v243);

    *(v58 + 4) = v62;

    *(v58 + 12) = 512;
    sub_26BF7F0BC(v54, v55, type metadata accessor for MLS.MLSMessage.Inner);
    v63 = swift_getEnumCaseMultiPayload();
    v64 = *(v0 + 2624);
    if (v63 > 2)
    {
      if (v63 != 3)
      {
        v65 = v238;
        v31 = (v0 + 1660);
        if (v63 == 4)
        {
          sub_26BF7F05C(v64, type metadata accessor for MLS.MLSMessage.Inner);
          v66 = 2;
        }

        else
        {
          v66 = *v64;
          sub_26BE00258(*(v64 + 8), *(v64 + 16));
        }

        goto LABEL_48;
      }

      sub_26BF7F05C(v64, type metadata accessor for MLS.MLSMessage.Inner);
      v66 = 1;
    }

    else
    {
      if (v63)
      {
        v65 = v238;
        v31 = (v0 + 1660);
        if (v63 == 1)
        {
          sub_26BF7F05C(v64, type metadata accessor for MLS.MLSMessage.Inner);
          v66 = 4;
        }

        else
        {
          sub_26BF7F05C(v64, type metadata accessor for MLS.MLSMessage.Inner);
          v66 = 5;
        }

        goto LABEL_48;
      }

      sub_26BF7F05C(v64, type metadata accessor for MLS.MLSMessage.Inner);
      v66 = 3;
    }

    v65 = v238;
    v31 = (v0 + 1660);
LABEL_48:
    sub_26BF7F05C(*(v0 + 2648), type metadata accessor for MLS.MLSMessage);
    *(v58 + 14) = v66;
    _os_log_impl(&dword_26BDFE000, v51, v52, "%s: Received message with invalid wire format: %hu", v58, 0x10u);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x26D69A4E0](v65, -1, -1);
    MEMORY[0x26D69A4E0](v58, -1, -1);
    goto LABEL_49;
  }

  v67 = *(v0 + 2656);
  v68 = *(&v243 + 1);
  *(v0 + 2272) = v243;
  *(v0 + 2280) = v68;
  sub_26BF7F0BC(v49, v67, type metadata accessor for MLS.MLSMessage);
  swift_retain_n();
  v69 = sub_26C009A3C();
  v70 = sub_26C00AA1C();
  v71 = os_log_type_enabled(v69, v70);
  v72 = *(v0 + 2656);
  if (v71)
  {
    v73 = *(v0 + 2640);
    v74 = *(v0 + 2600);
    v75 = *(v0 + 2384);
    v76 = swift_slowAlloc();
    v239 = swift_slowAlloc();
    v245[0] = v239;
    *v76 = 136315650;

    v77 = sub_26BE3D034();
    v79 = v78;

    v80 = sub_26BE29740(v77, v79, v245);

    *(v76 + 4) = v80;

    *(v76 + 12) = 512;
    sub_26BF7F0BC(v72, v73, type metadata accessor for MLS.MLSMessage.Inner);
    v81 = swift_getEnumCaseMultiPayload();
    v82 = *(v0 + 2640);
    if (v81 > 2)
    {
      if (v81 == 3)
      {
        sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
        v84 = 1;
        v83 = v239;
      }

      else
      {
        v83 = v239;
        if (v81 == 4)
        {
          sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
          v84 = 2;
        }

        else
        {
          v84 = *v82;
          sub_26BE00258(*(v82 + 8), *(v82 + 16));
        }
      }
    }

    else if (v81)
    {
      v83 = v239;
      if (v81 == 1)
      {
        sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
        v84 = 4;
      }

      else
      {
        sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
        v84 = 5;
      }
    }

    else
    {
      sub_26BF7F05C(v82, type metadata accessor for MLS.MLSMessage.Inner);
      v84 = 3;
      v83 = v239;
    }

    sub_26BF7F05C(*(v0 + 2656), type metadata accessor for MLS.MLSMessage);
    *(v76 + 14) = v84;
    *(v76 + 16) = 2080;
    swift_beginAccess();
    v100 = *(v0 + 2280);
    LODWORD(v243) = *(v0 + 2272);
    *(&v243 + 1) = v100;
    v101 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v103 = sub_26BE29740(v101, v102, v245);

    *(v76 + 18) = v103;
    _os_log_impl(&dword_26BDFE000, v69, v70, "%s: message has wire format %hu and was for %s", v76, 0x1Au);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v83, -1, -1);
    MEMORY[0x26D69A4E0](v76, -1, -1);
  }

  else
  {
    v86 = *(v0 + 2384);
    sub_26BF7F05C(*(v0 + 2656), type metadata accessor for MLS.MLSMessage);
  }

  v104 = *(v0 + 2600);
  sub_26BF7F0BC(*(v0 + 2664), *(v0 + 2632), type metadata accessor for MLS.MLSMessage.Inner);
  v105 = swift_getEnumCaseMultiPayload();
  v106 = *(v0 + 2632);
  if (v105 != 3)
  {
    v120 = type metadata accessor for MLS.MLSMessage.Inner;
LABEL_80:
    sub_26BF7F05C(v106, v120);
    goto LABEL_81;
  }

  v107 = *(v0 + 2592);
  sub_26BF7F124(v106, v107, type metadata accessor for MLS.PublicMessage);
  v108 = *(v107 + 16);
  memmove((v0 + 392), (v107 + 48), 0xB9uLL);
  if (sub_26BE6917C(v0 + 392) != 1)
  {
    nullsub_1(v0 + 392);
    v106 = *(v0 + 2592);
    v120 = type metadata accessor for MLS.PublicMessage;
    goto LABEL_80;
  }

  v109 = *(v0 + 2384);
  nullsub_1(v0 + 392);
  swift_retain_n();
  v110 = sub_26C009A3C();
  v111 = sub_26C00AA1C();
  v112 = os_log_type_enabled(v110, v111);
  v113 = *(v0 + 2384);
  if (v112)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v243 = v115;
    *v114 = 136315138;

    v116 = sub_26BE3D034();
    v118 = v117;

    v119 = sub_26BE29740(v116, v118, &v243);

    *(v114 + 4) = v119;

    _os_log_impl(&dword_26BDFE000, v110, v111, "%s: assuming that public message proposal is for current era", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x26D69A4E0](v115, -1, -1);
    MEMORY[0x26D69A4E0](v114, -1, -1);
  }

  else
  {
    v184 = *(v0 + 2384);
  }

  v185 = *(*(v0 + 2384) + 152);
  sub_26BF7F05C(*(v0 + 2592), type metadata accessor for MLS.PublicMessage);
  swift_beginAccess();
  *(v0 + 2272) = v185;
  *(v0 + 2280) = v108;
LABEL_81:
  v121 = *(v0 + 2664);
  if (*(*(v0 + 2384) + 72))
  {
    v122 = 2;
  }

  else
  {
    v122 = 1;
  }

  LOWORD(v243) = v122;
  v123 = sub_26BF2F140(&v243);
  *(v0 + 2680) = v123;
  *(v0 + 2688) = v124;
  v136 = v123;
  v137 = v124;
  v138 = *(v0 + 2560);
  v139 = *(v0 + 2552);
  v140 = *(v0 + 2544);
  v141 = *(v0 + 2384);
  v142 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  *(v0 + 2696) = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE2E1F0(v141 + v142, v140, &qword_28045E8D8, &qword_26C012580);
  v143 = *(v138 + 48);
  *(v0 + 2704) = v143;
  *(v0 + 2712) = (v138 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v144 = v143(v140, 1, v139);
  if (v144 == 1)
  {
    v145 = *(v0 + 2544);
    v146 = &qword_28045E8D8;
    v147 = &qword_26C012580;
LABEL_96:
    sub_26BE2E258(v145, v146, v147);
    v164 = *(v0 + 2384);

    sub_26BE00608(v136, v137);

    sub_26BE00608(v136, v137);
    v165 = sub_26C009A3C();
    v166 = sub_26C00AA1C();
    v167 = os_log_type_enabled(v165, v166);
    v168 = *(v0 + 2384);
    if (v167)
    {
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      *&v243 = v170;
      *v169 = 136315394;

      v171 = sub_26BE3D034();
      v173 = v172;

      v174 = sub_26BE29740(v171, v173, &v243);

      *(v169 + 4) = v174;

      *(v169 + 12) = 2080;
      v175 = sub_26BE832D4(v136, v137);
      v177 = sub_26BE29740(v175, v176, &v243);

      *(v169 + 14) = v177;
      sub_26BE00258(v136, v137);
      sub_26BE00258(v136, v137);
      _os_log_impl(&dword_26BDFE000, v165, v166, "%s: message was not client's own commit, hash %s", v169, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v170, -1, -1);
      MEMORY[0x26D69A4E0](v169, -1, -1);
    }

    else
    {
      v178 = *(v0 + 2384);

      sub_26BE00258(v136, v137);
      sub_26BE00258(v136, v137);
    }

    swift_beginAccess();
    v179 = *(v0 + 2272);
    *(v0 + 1052) = v179;
    v180 = *(v0 + 2280);
    *(v0 + 2856) = v180;
    *(v0 + 2320) = v179;
    *(v0 + 2328) = v180;
    v181 = swift_task_alloc();
    *(v0 + 2864) = v181;
    *v181 = v0;
    v181[1] = sub_26BF45D64;
    v182 = *(v0 + 2488);
    v183 = *(v0 + 2384);

    return sub_26BF37CA4(v182, (v0 + 2320), 1);
  }

  v148 = *(v0 + 2584);
  v149 = *(v0 + 2576);
  v150 = *(v0 + 2552);
  v241 = v0;
  sub_26BE33F30(*(v0 + 2544), v148, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BE2E1F0(v148, v149, &qword_28045E8E0, &unk_26C0204E0);
  v151 = (v149 + *(v150 + 48));
  v152 = v151[7];
  v153 = v151[8];
  v154 = v151[10];
  *(v0 + 904) = v151[9];
  *(v0 + 920) = v154;
  *(v0 + 872) = v152;
  *(v0 + 888) = v153;
  v155 = v151[3];
  v156 = v151[4];
  v157 = v151[6];
  *(v0 + 840) = v151[5];
  *(v0 + 856) = v157;
  *(v0 + 808) = v155;
  *(v0 + 824) = v156;
  v159 = v151[1];
  v158 = v151[2];
  *(v0 + 760) = *v151;
  *(v0 + 776) = v159;
  *(v0 + 792) = v158;
  v160 = *(v0 + 920);
  v161 = *(v0 + 928);
  sub_26BE00608(v136, v137);
  sub_26BE2BAE8(v160, v161);
  sub_26BE6FF8C(v0 + 760);
  if (v137 >> 60 != 15)
  {
    if (v161 >> 60 != 15)
    {
      v186 = *(v0 + 2576);
      sub_26BE00608(v136, v137);
      sub_26BE2BAE8(v160, v161);
      v187 = sub_26BE02DEC(v136, v137, v160, v161);
      sub_26BE132D4(v160, v161);
      sub_26BE132D4(v160, v161);
      sub_26BE00258(v136, v137);
      sub_26BE132D4(v136, v137);
      sub_26BF7F05C(v186, type metadata accessor for MLS.GroupState);
      if (v187)
      {
        goto LABEL_105;
      }

LABEL_95:
      v145 = *(v0 + 2584);
      v146 = &qword_28045E8E0;
      v147 = &unk_26C0204E0;
      goto LABEL_96;
    }

LABEL_94:
    v163 = *(v0 + 2576);
    sub_26BE132D4(v136, v137);
    sub_26BE132D4(v160, v161);
    sub_26BF7F05C(v163, type metadata accessor for MLS.GroupState);
    goto LABEL_95;
  }

  if (v161 >> 60 != 15)
  {
    goto LABEL_94;
  }

  v162 = *(v0 + 2576);
  sub_26BE132D4(v136, v137);
  sub_26BF7F05C(v162, type metadata accessor for MLS.GroupState);
LABEL_105:
  v188 = (v0 + 584);
  v189 = *(v0 + 2384);

  sub_26BE00608(v136, v137);

  sub_26BE00608(v136, v137);
  v190 = sub_26C009A3C();
  v191 = sub_26C00AA1C();
  v192 = os_log_type_enabled(v190, v191);
  v193 = *(v0 + 2384);
  if (v192)
  {
    v194 = swift_slowAlloc();
    v242 = swift_slowAlloc();
    *&v243 = v242;
    *v194 = 136315394;

    v195 = sub_26BE3D034();
    v196 = v150;
    v198 = v197;

    v199 = sub_26BE29740(v195, v198, &v243);

    *(v194 + 4) = v199;

    *(v194 + 12) = 2080;
    v200 = sub_26BE832D4(v136, v137);
    v202 = sub_26BE29740(v200, v201, &v243);

    *(v194 + 14) = v202;
    v150 = v196;
    sub_26BE00258(v136, v137);
    sub_26BE00258(v136, v137);
    _os_log_impl(&dword_26BDFE000, v190, v191, "%s: message was client's own commit, hash %s, returning cached state", v194, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v242, -1, -1);
    MEMORY[0x26D69A4E0](v194, -1, -1);
  }

  else
  {
    v203 = *(v0 + 2384);

    sub_26BE00258(v136, v137);
    sub_26BE00258(v136, v137);
  }

  v204 = *(v241 + 2568);
  v205 = *(v241 + 2512);
  v206 = *(v241 + 2464);
  v207 = *(v241 + 2384);
  sub_26BE2E1F0(*(v241 + 2584), v204, &qword_28045E8E0, &unk_26C0204E0);
  v208 = (v204 + *(v150 + 48));
  v209 = v208[7];
  v210 = v208[8];
  v211 = v208[10];
  v188[9] = v208[9];
  v188[10] = v211;
  v188[7] = v209;
  v188[8] = v210;
  v212 = v208[3];
  v213 = v208[4];
  v214 = v208[6];
  v188[5] = v208[5];
  v188[6] = v214;
  v188[3] = v212;
  v188[4] = v213;
  v216 = v208[1];
  v215 = v208[2];
  *v188 = *v208;
  v188[1] = v216;
  v188[2] = v215;
  sub_26BF7F124(v204, v205, type metadata accessor for MLS.GroupState);
  sub_26BE038A8(v205 + *(v206 + 56), v241 + 1968);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v207 + 112));
  sub_26BE03890((v241 + 1968), v207 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v243);
  v217 = *(v241 + 2384);
  v218 = *(v217 + 56);
  v219 = *(v217 + 64);
  *(v217 + 56) = v243;
  sub_26BE0489C(v218, v219);
  swift_beginAccess();
  v220 = *(v241 + 2280);
  *(v241 + 2288) = *(v241 + 2272);
  *(v241 + 2296) = v220;
  v221 = swift_task_alloc();
  *(v241 + 2720) = v221;
  *v221 = v241;
  v221[1] = sub_26BF443EC;
  v222 = *(v241 + 2456);
  v223 = *(v241 + 2384);

  return sub_26BF378BC(v222, v241 + 2288);
}

uint64_t sub_26BF443EC()
{
  v2 = *(*v1 + 2720);
  v5 = *v1;
  *(*v1 + 2728) = v0;

  if (v0)
  {
    v3 = sub_26BF4B398;
  }

  else
  {
    v3 = sub_26BF44500;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF44500()
{
  v159 = v0;
  v1 = *(v0 + 2456);
  v2 = (*(*(v0 + 2472) + 48))(v1, 1, *(v0 + 2464));
  v3 = *(v0 + 2672);
  if (v2 == 1)
  {
    v4 = *(v0 + 2384);
    sub_26BE2E258(v1, &qword_28045FAB0, &qword_26C01F960);
    swift_retain_n();
    v5 = sub_26C009A3C();
    v6 = sub_26C00AA1C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 2384);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *&v154 = v10;
      *v9 = 136315394;

      v11 = sub_26BE3D034();
      v13 = v12;

      v14 = sub_26BE29740(v11, v13, &v154);

      *(v9 + 4) = v14;

      *(v9 + 12) = 2080;
      v15 = *(v0 + 2280);
      LODWORD(v143) = *(v0 + 2272);
      *(&v143 + 1) = v15;
      v16 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v18 = sub_26BE29740(v16, v17, &v154);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: did not find current state for epoch %s, likely processing a resync", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v10, -1, -1);
      MEMORY[0x26D69A4E0](v9, -1, -1);
    }

    else
    {
      v34 = *(v0 + 2384);
    }

    v35 = *(v0 + 2672);
    v36 = *(v0 + 2384);
    sub_26BF7F0BC(*(v0 + 2512), *(v0 + 2496), type metadata accessor for MLS.GroupState);
    swift_retain_n();
    v37 = sub_26C009A3C();
    v38 = sub_26C00AA1C();
    if (!os_log_type_enabled(v37, v38))
    {
      v62 = *(v0 + 2496);
      v63 = *(v0 + 2384);

      sub_26BF7F05C(v62, type metadata accessor for MLS.GroupState);
LABEL_21:

      v87 = *(v0 + 2696);
      v88 = *(v0 + 2536);
      v89 = *(v0 + 2384);
      (*(*(v0 + 2560) + 56))(v88, 1, 1, *(v0 + 2552));
      swift_beginAccess();
      sub_26BE7170C(v88, v89 + v87, &qword_28045E8D8, &qword_26C012580);
      swift_endAccess();
      v90 = swift_task_alloc();
      *(v0 + 2840) = v90;
      *v90 = v0;
      v90[1] = sub_26BF45868;
      v91 = *(v0 + 2512);
      v92 = *(v0 + 2384);

      return sub_26BF71884(v91);
    }

    v140 = *(v0 + 2728);
    v39 = *(v0 + 2496);
    v40 = *(v0 + 2464);
    v41 = *(v0 + 2384);
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v154 = v43;
    *v42 = 136315394;

    v44 = sub_26BE3D034();
    v46 = v45;

    v47 = sub_26BE29740(v44, v46, &v154);

    *(v42 + 4) = v47;

    *(v42 + 12) = 2080;
    v48 = sub_26BE81FE0(*(v39 + *(v40 + 40)));
    if (v140)
    {
    }

    else if ((v48 & 0x100000000) == 0)
    {
LABEL_20:
      v82 = *(v0 + 2496);
      v83 = *(v82 + 24);
      LODWORD(v143) = v48;
      *(&v143 + 1) = v83;
      v84 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v86 = sub_26BE29740(v84, v85, &v154);

      *(v42 + 14) = v86;
      sub_26BF7F05C(v82, type metadata accessor for MLS.GroupState);
      _os_log_impl(&dword_26BDFE000, v37, v38, "%s: advancing to new state %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v43, -1, -1);
      MEMORY[0x26D69A4E0](v42, -1, -1);
      goto LABEL_21;
    }

    LODWORD(v48) = sub_26BE4126C();
    goto LABEL_20;
  }

  v19 = *(v0 + 2384);
  sub_26BF7F124(v1, *(v0 + 2504), type metadata accessor for MLS.GroupState);
  swift_retain_n();
  v20 = sub_26C009A3C();
  v21 = sub_26C00AA1C();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 2384);
  if (v22)
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *&v154 = v25;
    *v24 = 136315394;

    v26 = sub_26BE3D034();
    v28 = v27;

    v29 = sub_26BE29740(v26, v28, &v154);

    *(v24 + 4) = v29;

    *(v24 + 12) = 2080;
    v30 = *(v0 + 2280);
    LODWORD(v143) = *(v0 + 2272);
    *(&v143 + 1) = v30;
    v31 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v33 = sub_26BE29740(v31, v32, &v154);

    *(v24 + 14) = v33;
    _os_log_impl(&dword_26BDFE000, v20, v21, "%s: found current state for epoch %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v25, -1, -1);
    MEMORY[0x26D69A4E0](v24, -1, -1);
  }

  else
  {
    v49 = *(v0 + 2384);
  }

  v50 = *(v0 + 2728);
  v51 = *(v0 + 2512);
  v52 = *(v0 + 2504);
  v53 = *(v0 + 728);
  v151 = *(v0 + 712);
  v152 = v53;
  v153 = *(v0 + 744);
  v54 = *(v0 + 664);
  v147 = *(v0 + 648);
  v148 = v54;
  v55 = *(v0 + 696);
  v149 = *(v0 + 680);
  v150 = v55;
  v56 = *(v0 + 600);
  v143 = *(v0 + 584);
  v144 = v56;
  v57 = *(v0 + 632);
  v145 = *(v0 + 616);
  v146 = v57;
  sub_26BF91664(&v143, v51, &v154);
  v58 = *(v0 + 2512);
  v59 = *(v0 + 2504);
  if (v50)
  {
    v60 = *(v0 + 2664);
    v61 = *(v0 + 2584);
    sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
    sub_26BF7F05C(v59, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v58, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v61, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BF7F05C(v60, type metadata accessor for MLS.MLSMessage);
    sub_26BE6FF8C(v0 + 584);
    v70 = *(v0 + 2664);
    v71 = *(v0 + 2656);
    v72 = *(v0 + 2648);
    v73 = *(v0 + 2640);
    v74 = *(v0 + 2632);
    v75 = *(v0 + 2624);
    v76 = *(v0 + 2616);
    v77 = *(v0 + 2608);
    v78 = *(v0 + 2592);
    v79 = *(v0 + 2584);
    v121 = *(v0 + 2576);
    v122 = *(v0 + 2568);
    v123 = *(v0 + 2544);
    v124 = *(v0 + 2536);
    v125 = *(v0 + 2528);
    v126 = *(v0 + 2520);
    v127 = *(v0 + 2512);
    v128 = *(v0 + 2504);
    v130 = *(v0 + 2496);
    v132 = *(v0 + 2488);
    v134 = *(v0 + 2480);
    v135 = *(v0 + 2456);
    v136 = *(v0 + 2448);
    v137 = *(v0 + 2440);
    v139 = *(v0 + 2432);

    v80 = *(v0 + 8);

    return v80();
  }

  else
  {
    v64 = *(v0 + 2696);
    v65 = *(v0 + 2560);
    v66 = *(v0 + 2552);
    v138 = *(v0 + 2536);
    v141 = *(v0 + 2512);
    v67 = *(v0 + 2384);
    v68 = v154;
    *(v0 + 2736) = v154;
    v69 = v155;
    *(v0 + 2752) = v155;
    v129 = v156;
    v131 = v157;
    v133 = v158;
    (*(v65 + 56))();
    swift_beginAccess();
    sub_26BE7170C(v138, v67 + v64, &qword_28045E8D8, &qword_26C012580);
    swift_endAccess();
    v143 = v68;
    v144 = v69;
    LOBYTE(v145) = v129;
    *(&v145 + 1) = v131;
    LOBYTE(v146) = v133;
    sub_26BF4D038(v59, v141, &v143);
    v143 = v68;
    v144 = v69;
    LOBYTE(v145) = v129;
    *(&v145 + 1) = v131;
    LOBYTE(v146) = v133;
    sub_26BF4E118(&v143, &v154);
    v93 = v155;
    *(v0 + 2768) = v154;
    v94 = *(v0 + 2512);
    v95 = *(v0 + 2464);
    *(v0 + 2784) = v93;
    *(v0 + 371) = v156;
    *(v0 + 2800) = v157;
    *(v0 + 377) = v158;
    v142 = *(v94 + *(v95 + 40));
    v96 = sub_26BE81FE0(v142);
    if ((v96 & 0x100000000) != 0)
    {
      LODWORD(v96) = sub_26BE4126C();
    }

    v97 = *(v0 + 2512);
    v98 = *(v0 + 2504);
    v99 = *(v0 + 2384);
    *(v99 + 152) = v96;
    v100 = *(v97 + 24);
    *(v99 + 24) = v100;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 2808) = v101;
    v102 = *(*(v101 - 8) + 72);
    v103 = *(*(v101 - 8) + 80);
    *(v0 + 580) = v103;
    v104 = (v103 + 32) & ~v103;
    v105 = swift_allocObject();
    *(v0 + 2816) = v105;
    *(v105 + 16) = xmmword_26C0125B0;
    v106 = v105 + v104;
    v107 = sub_26BE81FE0(*(v98 + *(v95 + 40)));
    if ((v107 & 0x100000000) != 0)
    {
      LODWORD(v107) = sub_26BE4126C();
    }

    v108 = *(v0 + 2504);
    v109 = *(v0 + 2472);
    v110 = *(v0 + 2464);
    v111 = *(v101 + 48);
    v112 = *(v108 + 24);
    *v106 = v107;
    *(v106 + 8) = v112;
    sub_26BF7F0BC(v108, v106 + v111, type metadata accessor for MLS.GroupState);
    v113 = *(v109 + 56);
    v113(v106 + v111, 0, 1, v110);
    v114 = sub_26BE81FE0(v142);
    if ((v114 & 0x100000000) != 0)
    {
      LODWORD(v114) = sub_26BE4126C();
    }

    v115 = *(v0 + 2512);
    v116 = *(v0 + 2464);
    v117 = v106 + v102;
    v118 = *(v101 + 48);
    *v117 = v114;
    *(v117 + 8) = v100;
    sub_26BF7F0BC(v115, v106 + v102 + v118, type metadata accessor for MLS.GroupState);
    v113(v106 + v102 + v118, 0, 1, v116);
    v119 = swift_task_alloc();
    *(v0 + 2824) = v119;
    *v119 = v0;
    v119[1] = sub_26BF451E4;
    v120 = *(v0 + 2384);

    return sub_26BF394D4(v105);
  }
}

uint64_t sub_26BF451E4()
{
  v2 = *v1;
  v3 = *(*v1 + 2824);
  v4 = *v1;
  *(v2 + 2832) = v0;

  v5 = *(v2 + 2816);
  v6 = *(v2 + 2808);
  if (v0)
  {
    v18 = *(v2 + 2784);
    v19 = *(v2 + 2792);
    v7 = *(v2 + 2776);
    v8 = *(v2 + 2768);
    v9 = *(v2 + 2760);
    v10 = *(v2 + 2752);
    v11 = *(v2 + 2744);
    v12 = *(v2 + 2736);
    swift_setDeallocating();
    v13 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v14 = sub_26BF4B5DC;
  }

  else
  {
    v15 = (*(v2 + 580) + 32) & ~*(v2 + 580);
    swift_setDeallocating();
    v16 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v14 = sub_26BF4540C;
  }

  return MEMORY[0x2822009F8](v14, 0, 0);
}

uint64_t sub_26BF4540C()
{
  v61 = v0;
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2384);
  swift_retain_n();
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  v5 = os_log_type_enabled(v3, v4);
  v52 = *(v0 + 2752);
  v54 = *(v0 + 2760);
  v6 = *(v0 + 2744);
  v7 = *(v0 + 2736);
  v56 = *(v0 + 2680);
  v58 = *(v0 + 2688);
  v8 = *(v0 + 2664);
  v9 = *(v0 + 2584);
  v10 = *(v0 + 2512);
  v11 = *(v0 + 2504);
  v12 = *(v0 + 2384);
  if (v5)
  {
    v50 = *(v0 + 2512);
    v13 = swift_slowAlloc();
    v46 = v11;
    v14 = swift_slowAlloc();
    v60 = v14;
    *v13 = 136315138;

    v48 = v8;
    v15 = sub_26BE3D034();
    v44 = v9;
    v17 = v16;

    v18 = sub_26BE29740(v15, v17, &v60);

    *(v13 + 4) = v18;

    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: processed cached commit, returning", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x26D69A4E0](v14, -1, -1);
    MEMORY[0x26D69A4E0](v13, -1, -1);
    sub_26BE6FF8C(v0 + 584);

    sub_26BE00258(v56, v58);
    sub_26BF7F05C(v46, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v50, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v44, &qword_28045E8E0, &unk_26C0204E0);
    v19 = v48;
  }

  else
  {
    sub_26BE6FF8C(v0 + 584);

    sub_26BE00258(v56, v58);
    sub_26BF7F05C(v11, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v10, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v9, &qword_28045E8E0, &unk_26C0204E0);
    v19 = v8;
  }

  sub_26BF7F05C(v19, type metadata accessor for MLS.MLSMessage);
  v20 = *(v0 + 377);
  v21 = *(v0 + 2800);
  v22 = *(v0 + 371);
  v23 = *(v0 + 2376);
  v24 = *(v0 + 2784);
  *v23 = *(v0 + 2768);
  *(v23 + 16) = v24;
  *(v23 + 32) = v22;
  *(v23 + 40) = v21;
  *(v23 + 48) = v20;
  *(v23 + 113) = 3;
  v25 = *(v0 + 2664);
  v26 = *(v0 + 2656);
  v27 = *(v0 + 2648);
  v28 = *(v0 + 2640);
  v29 = *(v0 + 2632);
  v30 = *(v0 + 2624);
  v31 = *(v0 + 2616);
  v32 = *(v0 + 2608);
  v33 = *(v0 + 2592);
  v34 = *(v0 + 2584);
  v37 = *(v0 + 2576);
  v38 = *(v0 + 2568);
  v39 = *(v0 + 2544);
  v40 = *(v0 + 2536);
  v41 = *(v0 + 2528);
  v42 = *(v0 + 2520);
  v43 = *(v0 + 2512);
  v45 = *(v0 + 2504);
  v47 = *(v0 + 2496);
  v49 = *(v0 + 2488);
  v51 = *(v0 + 2480);
  v53 = *(v0 + 2456);
  v55 = *(v0 + 2448);
  v57 = *(v0 + 2440);
  v59 = *(v0 + 2432);

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_26BF45868()
{
  v2 = *(*v1 + 2840);
  v5 = *v1;
  *(*v1 + 2848) = v0;

  if (v0)
  {
    v3 = sub_26BF4B834;
  }

  else
  {
    v3 = sub_26BF4597C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF4597C()
{
  v51 = v0;
  v1 = v0[334];
  v2 = v0[298];
  swift_retain_n();
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[336];
  v7 = v0[335];
  v8 = v0[333];
  v9 = v0[323];
  v10 = v0[314];
  v11 = v0[298];
  if (v5)
  {
    v12 = swift_slowAlloc();
    v48 = v8;
    v50 = swift_slowAlloc();
    v13 = v50;
    *v12 = 136315138;

    v46 = v9;
    v14 = sub_26BE3D034();
    v44 = v10;
    v16 = v15;

    v17 = sub_26BE29740(v14, v16, &v50);

    *(v12 + 4) = v17;

    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: advanced to new state", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D69A4E0](v13, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);
    sub_26BE6FF8C((v0 + 73));

    sub_26BE00258(v7, v6);
    sub_26BF7F05C(v44, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v46, &qword_28045E8E0, &unk_26C0204E0);
    v18 = v48;
  }

  else
  {
    sub_26BE6FF8C((v0 + 73));

    sub_26BE00258(v7, v6);
    sub_26BF7F05C(v10, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v9, &qword_28045E8E0, &unk_26C0204E0);
    v18 = v8;
  }

  sub_26BF7F05C(v18, type metadata accessor for MLS.MLSMessage);
  v19 = v0[297];
  *v19 = 1;
  *(v19 + 8) = 0u;
  *(v19 + 24) = 0u;
  *(v19 + 40) = 0u;
  *(v19 + 56) = 0u;
  *(v19 + 72) = 0u;
  *(v19 + 88) = 0u;
  *(v19 + 97) = 0u;
  *(v19 + 113) = 4;
  v20 = v0[333];
  v21 = v0[332];
  v22 = v0[331];
  v23 = v0[330];
  v24 = v0[329];
  v25 = v0[328];
  v26 = v0[327];
  v27 = v0[326];
  v28 = v0[324];
  v29 = v0[323];
  v32 = v0[322];
  v33 = v0[321];
  v34 = v0[318];
  v35 = v0[317];
  v36 = v0[316];
  v37 = v0[315];
  v38 = v0[314];
  v39 = v0[313];
  v40 = v0[312];
  v41 = v0[311];
  v42 = v0[310];
  v43 = v0[307];
  v45 = v0[306];
  v47 = v0[305];
  v49 = v0[304];

  v30 = v0[1];

  return v30();
}

uint64_t sub_26BF45D64()
{
  v2 = *(*v1 + 2864);
  v5 = *v1;
  *(*v1 + 2872) = v0;

  if (v0)
  {
    v3 = sub_26BF4BA78;
  }

  else
  {
    v3 = sub_26BF45E78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF45E78()
{
  v525 = v0;
  v1 = v0;
  v2 = v0 + 47;
  v3 = v0[359];
  v4 = v0[337];
  v5 = v0[333];
  v6 = v0[316];
  v7 = v1[311];
  v8 = v1[305];
  sub_26BE2E1F0(v1[298] + v4, v6, &qword_28045E8D8, &qword_26C012580);
  MLS.GroupState.processIncomingMessage(_:cachedStateAndCommitMetadata:)(v5, v6, v8);
  if (v3)
  {
    sub_26BE2E258(v1[316], &qword_28045E8D8, &qword_26C012580);
    v1[295] = v3;
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
    if (swift_dynamicCast())
    {
      if (*(v1 + 1288) == 20)
      {
        v10 = v1[302];
        v11 = v1[301];

        v12 = *(v1 + 294);
        v13 = *(v2 + 804);
        v14 = *(v1 + 296);
        v15 = *(v2 + 812);
        v1[288] = v11;
        v1[289] = v10;
        *(v1 + 95) = v12;
        *(v2 + 8) = v13;
        *(v1 + 93) = v14;
        *v2 = v15;
        v16 = *(v1 + 1189);
        v17 = swift_task_alloc();
        v1[406] = v17;
        *v17 = v1;
        v17[1] = sub_26BF4BC70;
        v18 = v1[311];
        v19 = v1[298];
        v20 = v1[297];

        return sub_26BF40E64(v20, v18, v1 + 144, v1 + 380, v1 + 372, v16);
      }

      v29 = v1[333];
      v30 = v1[311];
      sub_26BE00258(v1[335], v1[336]);
      sub_26BF7F05C(v30, type metadata accessor for MLS.GroupState);
      sub_26BF7F05C(v29, type metadata accessor for MLS.MLSMessage);
      sub_26BE2DC9C((v1 + 147));
    }

    else
    {
      v27 = v1[333];
      v28 = v1[311];
      sub_26BE00258(v1[335], v1[336]);
      sub_26BF7F05C(v28, type metadata accessor for MLS.GroupState);
      sub_26BF7F05C(v27, type metadata accessor for MLS.MLSMessage);
    }

    goto LABEL_11;
  }

  v22 = v1[311];
  v23 = v1[308];
  v24 = v1[306];
  v25 = v1[305];
  v26 = v1[298];
  sub_26BE2E258(v1[316], &qword_28045E8D8, &qword_26C012580);
  sub_26BF7F124(v25, v24, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BE038A8(v22 + *(v23 + 56), (v1 + 236));
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v26 + 112));
  sub_26BE03890(v1 + 118, v26 + 112);
  swift_endAccess();
  MLS.GroupState.credential.getter(&v517);
  v43 = v1[306];
  v44 = v1[304];
  v45 = v1[303];
  v46 = v1[298];
  v47 = *(v46 + 56);
  v48 = *(v46 + 64);
  *(v46 + 56) = v517;
  sub_26BE0489C(v47, v48);
  sub_26BF7F0BC(v43, v44, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v1[334];
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v70 = v1[310];
      v71 = v1[304];
      v72 = v1[298];
      v73 = v71 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E740, &unk_26C011540) + 48);
      v74 = *v73;
      v1[388] = *v73;
      v502 = *(v73 + 8);
      v1[389] = v502;
      osloga = *(v73 + 16);
      v1[390] = osloga;
      v75 = *(v73 + 24);
      v1[391] = v75;
      v504 = *(v73 + 32);
      v494 = *(v73 + 40);
      v490 = *(v73 + 48);
      sub_26BF7F124(v71, v70, type metadata accessor for MLS.GroupState);
      v76 = *(v1 + 568);
      v77 = v1;
      v78 = v1[285];
      v77[392] = v78;
      v79 = *(v72 + 152);
      v80 = *(v72 + 24);
      v471 = v72;
      swift_retain_n();
      v81 = sub_26C009A3C();
      v479 = sub_26C00AA1C();
      v82 = os_log_type_enabled(v81, v479);
      v499 = v77;
      v83 = v77[298];
      if (v82)
      {
        v475 = v75;
        v84 = swift_slowAlloc();
        v468 = swift_slowAlloc();
        *&v512 = v468;
        *v84 = 136315394;

        v85 = sub_26BE3D034();
        logc = v81;
        v86 = v80;
        v87 = v78;
        v88 = v76;
        v89 = v79;
        v90 = v74;
        v92 = v91;

        v93 = sub_26BE29740(v85, v92, &v512);
        v74 = v90;
        v79 = v89;
        v76 = v88;
        v78 = v87;
        v80 = v86;

        *(v84 + 4) = v93;

        *(v84 + 12) = 2080;
        LODWORD(v517) = v76;
        *(&v517 + 1) = v78;
        v94 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
        v96 = sub_26BE29740(v94, v95, &v512);

        *(v84 + 14) = v96;
        _os_log_impl(&dword_26BDFE000, logc, v479, "%s: received commit for %s", v84, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v468, -1, -1);
        v97 = v84;
        v75 = v475;
        MEMORY[0x26D69A4E0](v97, -1, -1);
      }

      else
      {
        v125 = v77[298];
      }

      v127 = v76 == v79 && v78 == v80;
      v128 = v79 >= v76;
      v129 = v502;
      v130 = v504;
      v131 = v494;
      if (!v128 || v127)
      {
        v140 = v499;
        v141 = v490;
        if (v490)
        {
          v480 = v74;
          v142 = v75;
          v143 = v499[339];
          v144 = v499[338];
          v145 = v499[319];
          v146 = v499[315];
          sub_26BE2E1F0(v499[298] + v499[337], v146, &qword_28045E8D8, &qword_26C012580);
          LODWORD(v145) = v144(v146, 1, v145);
          sub_26BE2E258(v146, &qword_28045E8D8, &qword_26C012580);
          if (v145 == 1)
          {
            v147 = v499[334];
            v148 = v499[298];
            swift_retain_n();
            v149 = sub_26C009A3C();
            v150 = sub_26C00AA0C();
            v151 = os_log_type_enabled(v149, v150);
            v152 = v499[298];
            if (v151)
            {
              v153 = swift_slowAlloc();
              v154 = swift_slowAlloc();
              *&v517 = v154;
              *v153 = 136315138;

              v155 = sub_26BE3D034();
              v157 = v156;

              v158 = sub_26BE29740(v155, v157, &v517);
              v129 = v502;

              *(v153 + 4) = v158;

              _os_log_impl(&dword_26BDFE000, v149, v150, "%s: Committer was self, but cachedStateAndCommitMetadata was already nil", v153, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v154);
              MEMORY[0x26D69A4E0](v154, -1, -1);
              MEMORY[0x26D69A4E0](v153, -1, -1);
            }

            else
            {
              v239 = v499[298];
            }
          }

          v240 = v499[337];
          v241 = v499[317];
          v242 = v499[298];
          (*(v499[320] + 56))(v241, 1, 1, v499[319]);
          swift_beginAccess();
          sub_26BE7170C(v241, v242 + v240, &qword_28045E8D8, &qword_26C012580);
          swift_endAccess();
          v75 = v142;
          v74 = v480;
          v130 = v504;
          v131 = v494;
          v141 = v490;
        }

        v243 = v499[311];
        v244 = v499[310];
        *&v245 = v74;
        *(&v245 + 1) = v129;
        *&v246 = osloga;
        *(&v246 + 1) = v75;
        v247 = v499[298];
        *v495 = v246;
        v517 = v245;
        v518 = v246;
        *v508 = v245;
        LOBYTE(v519) = v130;
        *(&v519 + 1) = v131;
        LOBYTE(v520) = v141;
        v248 = v141;
        sub_26BF4D038(v244, v243, &v517);
        v517 = *v508;
        v518 = *v495;
        LOBYTE(v519) = v130;
        *(&v519 + 1) = v131;
        LOBYTE(v520) = v248;
        sub_26BF4E118(&v517, &v512);
        v249 = v513;
        *(v2 + 173) = v512;
        v250 = v499[311];
        v251 = v499[308];
        *(v2 + 174) = v249;
        *(v2 + 2) = v514;
        v499[397] = v515;
        *(v2 + 3) = v516;
        v252 = *(v250 + *(v251 + 40));
        v253 = sub_26BE81FE0(v252);
        if ((v253 & 0x100000000) != 0)
        {
          LODWORD(v253) = sub_26BE4126C();
        }

        v254 = v499[334];
        v255 = v499[311];
        v256 = v499[298];
        *(v471 + 152) = v253;
        v509 = *(v255 + 24);
        *(v471 + 24) = v509;
        swift_retain_n();
        v257 = sub_26C009A3C();
        v258 = sub_26C00AA1C();
        v259 = os_log_type_enabled(v257, v258);
        v260 = v499[298];
        if (v259)
        {
          v261 = swift_slowAlloc();
          v262 = swift_slowAlloc();
          *&v517 = v262;
          *v261 = 136315138;

          v263 = sub_26BE3D034();
          v265 = v264;

          v266 = sub_26BE29740(v263, v265, &v517);

          *(v261 + 4) = v266;

          _os_log_impl(&dword_26BDFE000, v257, v258, "%s: received commit", v261, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v262);
          MEMORY[0x26D69A4E0](v262, -1, -1);
          v267 = v261;
          v140 = v499;
          MEMORY[0x26D69A4E0](v267, -1, -1);
        }

        else
        {
          v268 = v499[298];
        }

        v269 = v140[310];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
        v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
        v140[398] = v270;
        v271 = v140;
        v272 = *(*(v270 - 8) + 72);
        v273 = *(*(v270 - 8) + 80);
        v271[413] = v273;
        v274 = (v273 + 32) & ~v273;
        v138 = swift_allocObject();
        *(v271 + 399) = v138;
        *(v138 + 16) = xmmword_26C0125B0;
        v275 = v138 + v274;
        v276 = sub_26BE81FE0(*(v269 + *(v251 + 40)));
        if ((v276 & 0x100000000) != 0)
        {
          LODWORD(v276) = sub_26BE4126C();
        }

        v277 = v499[310];
        v278 = v499[309];
        v279 = v499[308];
        v280 = *(v270 + 48);
        v281 = *(v277 + 24);
        *v275 = v276;
        *(v275 + 8) = v281;
        sub_26BF7F0BC(v277, v275 + v280, type metadata accessor for MLS.GroupState);
        v282 = *(v278 + 56);
        v282(v275 + v280, 0, 1, v279);
        v283 = sub_26BE81FE0(v252);
        if ((v283 & 0x100000000) != 0)
        {
          LODWORD(v283) = sub_26BE4126C();
        }

        v284 = v499[311];
        v285 = v499[308];
        v286 = v275 + v272;
        v287 = *(v270 + 48);
        *v286 = v283;
        *(v286 + 8) = v509;
        sub_26BF7F0BC(v284, v286 + v287, type metadata accessor for MLS.GroupState);
        v282(v286 + v287, 0, 1, v285);
        v288 = swift_task_alloc();
        v499[400] = v288;
        *v288 = v499;
        v288[1] = sub_26BF4A878;
        v289 = v499[298];
      }

      else
      {
        v132 = v499[310];
        v133 = v499[308];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
        v499[402] = v134;
        v135 = *(*(v134 - 8) + 72);
        v136 = *(*(v134 - 8) + 80);
        *(v499 + 443) = v136;
        v137 = (v136 + 32) & ~v136;
        v138 = swift_allocObject();
        v499[403] = v138;
        *(v138 + 16) = xmmword_26C011280;
        v139 = sub_26BE81FE0(*(v132 + *(v133 + 40)));
        if ((v139 & 0x100000000) != 0)
        {
          LODWORD(v139) = sub_26BE4126C();
        }

        v205 = v138 + v137;
        v206 = v499[310];
        v207 = v499[309];
        v208 = v499[308];
        v209 = *(v134 + 48);
        v210 = *(v206 + 24);
        *v205 = v139;
        *(v205 + 8) = v210;
        sub_26BF7F0BC(v206, v205 + v209, type metadata accessor for MLS.GroupState);
        (*(v207 + 56))(v205 + v209, 0, 1, v208);
        v211 = swift_task_alloc();
        v499[404] = v211;
        *v211 = v499;
        v211[1] = sub_26BF4ACF8;
        v212 = v499[298];
      }

      goto LABEL_71;
    }

    v112 = v1[298];
    swift_retain_n();
    v113 = sub_26C009A3C();
    v114 = sub_26C00AA1C();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v1[298];
    if (v115)
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      *&v517 = v118;
      *v117 = 136315138;

      v119 = sub_26BE3D034();
      v121 = v120;

      v122 = sub_26BE29740(v119, v121, &v517);

      *(v117 + 4) = v122;

      _os_log_impl(&dword_26BDFE000, v113, v114, "%s: received proposal", v117, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v118);
      MEMORY[0x26D69A4E0](v118, -1, -1);
      MEMORY[0x26D69A4E0](v117, -1, -1);
    }

    else
    {
      v162 = v1[298];
    }

    v163 = v1[311];
    v164 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[384] = v165;
    v166 = *(*(v165 - 8) + 72);
    v167 = *(*(v165 - 8) + 80);
    *(v1 + 383) = v167;
    v168 = (v167 + 32) & ~v167;
    v138 = swift_allocObject();
    v1[385] = v138;
    *(v138 + 16) = xmmword_26C011280;
    v169 = sub_26BE81FE0(*(v163 + *(v164 + 40)));
    if ((v169 & 0x100000000) != 0)
    {
      LODWORD(v169) = sub_26BE4126C();
    }

    v191 = v138 + v168;
    v192 = v1[311];
    v193 = v1[309];
    v194 = v1[308];
    v195 = *(v165 + 48);
    v196 = *(v192 + 24);
    *v191 = v169;
    *(v191 + 8) = v196;
    sub_26BF7F0BC(v192, v191 + v195, type metadata accessor for MLS.GroupState);
    (*(v193 + 56))(v191 + v195, 0, 1, v194);
    v197 = swift_task_alloc();
    v1[386] = v197;
    *v197 = v1;
    v198 = sub_26BF4A0B4;
  }

  else if (EnumCaseMultiPayload)
  {
    v98 = v1[304];
    v99 = v1[298];
    v100 = *v98;
    v1[378] = *(v98 + 1);
    v1[379] = *(v98 + 2);
    swift_retain_n();
    v101 = sub_26C009A3C();
    v102 = sub_26C00AA1C();
    v103 = os_log_type_enabled(v101, v102);
    v104 = v1[298];
    if (v103)
    {
      v105 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v517 = v106;
      *v105 = 136315394;

      v505 = v100;
      v107 = sub_26BE3D034();
      v108 = v1;
      v110 = v109;

      v111 = sub_26BE29740(v107, v110, &v517);
      v1 = v108;

      *(v105 + 4) = v111;
      v100 = v505;

      *(v105 + 12) = 1024;
      *(v105 + 14) = v505;
      _os_log_impl(&dword_26BDFE000, v101, v102, "%s: received signed message from index %u", v105, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v106);
      MEMORY[0x26D69A4E0](v106, -1, -1);
      MEMORY[0x26D69A4E0](v105, -1, -1);
    }

    else
    {
      v159 = v1[298];
    }

    v160 = v1[311];
    v161 = v1[298];
    LODWORD(v517) = v100;
    sub_26BF35930(v160, &v517, v1 + 111);
    v184 = v1[311];
    v185 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[380] = v186;
    v187 = *(*(v186 - 8) + 72);
    v188 = *(*(v186 - 8) + 80);
    *(v1 + 353) = v188;
    v189 = (v188 + 32) & ~v188;
    v138 = swift_allocObject();
    v1[381] = v138;
    *(v138 + 16) = xmmword_26C011280;
    v190 = sub_26BE81FE0(*(v184 + *(v185 + 40)));
    if ((v190 & 0x100000000) != 0)
    {
      LODWORD(v190) = sub_26BE4126C();
    }

    v213 = v138 + v189;
    v214 = v1[311];
    v215 = v1[309];
    v216 = v1[308];
    v217 = *(v186 + 48);
    v218 = *(v214 + 24);
    *v213 = v190;
    *(v213 + 8) = v218;
    sub_26BF7F0BC(v214, v213 + v217, type metadata accessor for MLS.GroupState);
    (*(v215 + 56))(v213 + v217, 0, 1, v216);
    v197 = swift_task_alloc();
    v1[382] = v197;
    *v197 = v1;
    v198 = sub_26BF49CD0;
  }

  else
  {
    v51 = v1[304];
    v52 = v1[298];
    v503 = *v51;
    v53 = *(v51 + 1);
    v1[360] = v53;
    v54 = *(v51 + 2);
    v1[361] = v54;
    v55 = *(v51 + 3);
    v1[362] = v55;
    v56 = *(v51 + 4);
    v1[363] = v56;
    v498 = *(v51 + 5);
    v1[364] = v498;
    v501 = *(v51 + 6);
    v1[365] = v501;
    oslog = v51[14];
    v57 = *(v51 + 60);
    swift_retain_n();
    v58 = sub_26C009A3C();
    v59 = sub_26C00AA1C();
    v60 = os_log_type_enabled(v58, v59);
    v61 = v1[298];
    v489 = v53;
    v493 = v54;
    v478 = v57;
    if (v60)
    {
      v62 = swift_slowAlloc();
      v474 = swift_slowAlloc();
      *&v517 = v474;
      *v62 = 136315394;

      v63 = sub_26BE3D034();
      v64 = v55;
      v65 = v56;
      v66 = v1;
      v68 = v67;

      v69 = sub_26BE29740(v63, v68, &v517);
      v1 = v66;
      v56 = v65;
      v55 = v64;

      *(v62 + 4) = v69;

      *(v62 + 12) = 1024;
      *(v62 + 14) = v503;
      _os_log_impl(&dword_26BDFE000, v58, v59, "%s: received application message from index %u", v62, 0x12u);
      __swift_destroy_boxed_opaque_existential_1(v474);
      MEMORY[0x26D69A4E0](v474, -1, -1);
      MEMORY[0x26D69A4E0](v62, -1, -1);
    }

    else
    {
    }

    v123 = v1[311];
    v124 = v1[298];
    LODWORD(v517) = v503;
    sub_26BF35930(v123, &v517, v1 + 229);
    v472 = v55;
    v170 = v1[334];
    v171 = *(v1[298] + 48);
    swift_beginAccess();
    v172 = *(v171 + 50);
    swift_retain_n();
    v173 = sub_26C009A3C();
    v174 = sub_26C00AA1C();
    v175 = os_log_type_enabled(v173, v174);
    v176 = v1[298];
    if (v172 == 1)
    {
      if (v175)
      {
        v177 = swift_slowAlloc();
        v178 = swift_slowAlloc();
        *&v517 = v178;
        *v177 = 136315138;

        v179 = sub_26BE3D034();
        v506 = v56;
        v180 = v1;
        v182 = v181;

        v183 = sub_26BE29740(v179, v182, &v517);
        v1 = v180;
        v56 = v506;

        *(v177 + 4) = v183;

        _os_log_impl(&dword_26BDFE000, v173, v174, "%s: received application message and using SecretPayload", v177, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x26D69A4E0](v178, -1, -1);
        MEMORY[0x26D69A4E0](v177, -1, -1);
      }

      else
      {
        v219 = v1[298];
      }

      sub_26BE71DBC(v489, v493, &v517);
      v456 = v517;
      log = WORD1(v517);
      v507 = DWORD1(v517);
      v229 = *(&v517 + 1);
      v228 = v518;
      v1[366] = *(&v517 + 1);
      v476 = v228;
      v1[367] = v228;
      sub_26BE295A0(v171 + 40, (v1 + 2));
      v230 = *(v1 + 370);
      v469 = v229;
      if (v230 == 2)
      {
        v1[244] = &type metadata for SwiftMLSFeatureFlags;
        v1[245] = sub_26BE295D8();
        *(v1 + 1928) = 3;
        v231 = sub_26C00929C();
        __swift_destroy_boxed_opaque_existential_1(v1 + 241);
        if (v231)
        {
          sub_26BE29710((v1 + 2));
LABEL_90:
          v292 = v1[334];
          v293 = v1[298];
          swift_retain_n();
          v294 = sub_26C009A3C();
          v295 = sub_26C00AA1C();
          v296 = os_log_type_enabled(v294, v295);
          v297 = v1[298];
          if (v296)
          {
            v298 = swift_slowAlloc();
            v299 = swift_slowAlloc();
            *&v517 = v299;
            *v298 = 136315138;

            v300 = sub_26BE3D034();
            v301 = v56;
            v302 = v1;
            v304 = v303;

            v305 = sub_26BE29740(v300, v304, &v517);
            v1 = v302;
            v56 = v301;

            *(v298 + 4) = v305;

            _os_log_impl(&dword_26BDFE000, v294, v295, "%s: validating key generation", v298, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v299);
            MEMORY[0x26D69A4E0](v299, -1, -1);
            v306 = v298;
            v229 = v469;
            MEMORY[0x26D69A4E0](v306, -1, -1);
          }

          else
          {
            v307 = v1[298];
          }

          v308 = oslog;
          v309 = v1[334];
          v310 = v1[298];
          if (oslog == v507)
          {
            v311 = v478;
          }

          else
          {
            v311 = 1;
          }

          v312 = v1[298];

          sub_26BE00608(v229, v476);

          sub_26BE00608(v229, v476);
          oslogb = sub_26C009A3C();
          if (v311)
          {
            v313 = sub_26C00AA0C();
            v314 = os_log_type_enabled(oslogb, v313);
            v315 = v1[298];
            if (v314)
            {
              loga = v313;
              v316 = v229;
              v317 = swift_slowAlloc();
              v458 = swift_slowAlloc();
              *&v517 = v458;
              *v317 = 136315650;

              v318 = sub_26BE3D034();
              v320 = v319;

              v321 = sub_26BE29740(v318, v320, &v517);

              *(v317 + 4) = v321;

              *(v317 + 12) = 1024;
              v322 = v476;
              sub_26BE00258(v316, v476);
              *(v317 + 14) = v507;
              sub_26BE00258(v316, v476);
              *(v317 + 18) = 2080;
              if (v478)
              {
                v323 = 0xE300000000000000;
                v324 = 7104878;
              }

              else
              {
                *(v1 + 97) = v308;
                v324 = sub_26C00AEFC();
                v323 = v442;
              }

              v443 = sub_26BE29740(v324, v323, &v517);

              *(v317 + 20) = v443;
              _os_log_impl(&dword_26BDFE000, oslogb, loga, "%s: received application message with generation in the secret payload of %u, but generation used was %s", v317, 0x1Cu);
              swift_arrayDestroy();
              MEMORY[0x26D69A4E0](v458, -1, -1);
              MEMORY[0x26D69A4E0](v317, -1, -1);

              v334 = v469;
            }

            else
            {
              v322 = v476;
              sub_26BE00258(v229, v476);

              sub_26BE00258(v229, v476);

              v334 = v229;
            }

            v444 = v1[336];
            v445 = v1[335];
            osloge = v1[333];
            v446 = v1[311];
            v447 = v1[306];
            *(v1 + 1056) = 50;
            *(v1 + 1168) = 0;
            sub_26BE7D22C((v1 + 132));
            sub_26BE2DC9C((v1 + 132));
            sub_26BE01654();
            swift_allocError();
            *v448 = 50;
            v448[112] = 0;
            swift_willThrow();
            sub_26BE00258(v489, v493);
            sub_26BE00258(v334, v322);
            sub_26BE132D4(v498, v501);
            sub_26BE132D4(v472, v56);
            sub_26BE00258(v445, v444);
            sub_26BE2DBC4((v1 + 229));
            sub_26BF7F05C(v447, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
            sub_26BF7F05C(v446, type metadata accessor for MLS.GroupState);
            sub_26BF7F05C(osloge, type metadata accessor for MLS.MLSMessage);
LABEL_11:
            v31 = v1[333];
            v32 = v1[332];
            v33 = v1[331];
            v34 = v1;
            v35 = v1[330];
            v36 = v34[329];
            v37 = v34[328];
            v38 = v34[327];
            v39 = v34[326];
            v40 = v34[324];
            v41 = v34[323];
            v449 = v34[322];
            v450 = v34[321];
            v452 = v34[318];
            v455 = v34[317];
            v457 = v34[316];
            logb = v34[315];
            v467 = v34[314];
            v470 = v34[313];
            v473 = v34[312];
            v477 = v34[311];
            oslogd = v34[310];
            v488 = v34[307];
            v492 = v34[306];
            v497 = v34[305];
            v500 = v34[304];

            v42 = v34[1];

            return v42();
          }

          v325 = sub_26C00AA1C();
          v326 = os_log_type_enabled(oslogb, v325);
          v327 = v1[298];
          if (v326)
          {
            v328 = swift_slowAlloc();
            v329 = swift_slowAlloc();
            *&v517 = v329;
            *v328 = 136315394;

            v330 = sub_26BE3D034();
            v332 = v331;

            v333 = sub_26BE29740(v330, v332, &v517);

            *(v328 + 4) = v333;

            *(v328 + 12) = 1024;
            sub_26BE00258(v469, v476);
            *(v328 + 14) = v308;
            sub_26BE00258(v469, v476);
            _os_log_impl(&dword_26BDFE000, oslogb, v325, "%s: key generation validated, was %u", v328, 0x12u);
            __swift_destroy_boxed_opaque_existential_1(v329);
            MEMORY[0x26D69A4E0](v329, -1, -1);
            MEMORY[0x26D69A4E0](v328, -1, -1);
          }

          else
          {
            sub_26BE00258(v469, v476);

            sub_26BE00258(v469, v476);
          }

          v290 = v472;
          goto LABEL_105;
        }

        v291 = os_variant_allows_internal_security_policies();
        sub_26BE29710((v1 + 2));
        v290 = v472;
        if ((v291 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      else
      {
        sub_26BE29710((v1 + 2));
        v290 = v472;
        if (v230)
        {
          goto LABEL_90;
        }
      }

LABEL_105:
      v335 = v290;
      v336 = v56;
      if (v56 >> 60 == 15)
      {
        v337 = v1[334];
        v338 = v1[298];
        swift_retain_n();
        v339 = sub_26C009A3C();
        v340 = sub_26C00AA0C();
        v341 = os_log_type_enabled(v339, v340);
        v342 = v1[298];
        if (v341)
        {
          v343 = swift_slowAlloc();
          v344 = swift_slowAlloc();
          *&v517 = v344;
          *v343 = 136315138;

          v345 = sub_26BE3D034();
          v346 = v56;
          v347 = v1;
          v349 = v348;

          v350 = sub_26BE29740(v345, v349, &v517);
          v1 = v347;
          v56 = v346;
          v290 = v472;

          *(v343 + 4) = v350;

          _os_log_impl(&dword_26BDFE000, v339, v340, "%s: received an application message messageID (likely missing authenticated data), when expecting it; proceeding with empty messageID", v343, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v344);
          MEMORY[0x26D69A4E0](v344, -1, -1);
          MEMORY[0x26D69A4E0](v343, -1, -1);
        }

        else
        {
          v351 = v1[298];
        }

        v335 = 0;
        v336 = 0xC000000000000000;
      }

      v1[369] = v336;
      v1[368] = v335;
      v352 = v1[298];
      if (v501 >> 60 == 15)
      {
        v353 = 0;
      }

      else
      {
        v353 = v498;
      }

      v354 = 0xC000000000000000;
      if (v501 >> 60 != 15)
      {
        v354 = v501;
      }

      v481 = v353;
      oslogc = v354;

      v355 = v1[334];
      if (log == 2)
      {
        v453 = v336;
        v460 = v335;

        sub_26BE2BAE8(v290, v56);
        sub_26BE2BAE8(v498, v501);
        v393 = sub_26C009A3C();
        v394 = sub_26C00AA1C();
        v395 = os_log_type_enabled(v393, v394);
        v396 = v1[298];
        v451 = v1 + 117;
        if (v395)
        {
          v397 = swift_slowAlloc();
          v398 = swift_slowAlloc();
          *&v517 = v398;
          *v397 = 136315138;

          v399 = sub_26BE3D034();
          v400 = v1;
          v402 = v401;

          v403 = sub_26BE29740(v399, v402, &v517);
          v1 = v400;

          *(v397 + 4) = v403;

          _os_log_impl(&dword_26BDFE000, v393, v394, "%s: received a double-wrapped 1:1 encrypted message", v397, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v398);
          MEMORY[0x26D69A4E0](v398, -1, -1);
          v404 = v397;
          v405 = v469;
          MEMORY[0x26D69A4E0](v404, -1, -1);

          v407 = v476;
          v406 = v481;
        }

        else
        {

          v407 = v476;
          v406 = v481;
          v405 = v469;
        }

        v419 = v1[311];
        v420 = v1[298];
        LOWORD(v512) = v456;
        WORD1(v512) = 2;
        DWORD1(v512) = v507;
        *(&v512 + 1) = v405;
        *&v513 = v407;
        sub_26BF50BC8(v419, &v512, v460, v453, v406, oslogc, &v517);
        *(v451 + 56) = v524;
        v426 = v522;
        *(v451 + 4) = v521;
        *(v451 + 5) = v426;
        *(v451 + 6) = v523;
        v427 = v518;
        *v451 = v517;
        *(v451 + 1) = v427;
        v428 = v520;
        *(v451 + 2) = v519;
        *(v451 + 3) = v428;
      }

      else
      {
        if (log != 1)
        {
          v454 = v336;
          v461 = v335;
          sub_26BE00608(v469, v476);

          sub_26BE00608(v469, v476);
          sub_26BE2BAE8(v290, v56);
          sub_26BE2BAE8(v498, v501);
          v408 = sub_26C009A3C();
          v409 = sub_26C00AA0C();
          v410 = os_log_type_enabled(v408, v409);
          v411 = v1[298];
          if (v410)
          {
            v412 = swift_slowAlloc();
            v413 = swift_slowAlloc();
            *&v517 = v413;
            *v412 = 136315394;

            v511 = v408;
            v414 = sub_26BE3D034();
            v416 = v415;

            v417 = sub_26BE29740(v414, v416, &v517);

            *(v412 + 4) = v417;

            *(v412 + 12) = 512;
            sub_26BE00258(v469, v476);
            *(v412 + 14) = log;
            sub_26BE00258(v469, v476);
            _os_log_impl(&dword_26BDFE000, v511, v409, "%s: Unsupported secret payload type: %hu", v412, 0x10u);
            __swift_destroy_boxed_opaque_existential_1(v413);
            MEMORY[0x26D69A4E0](v413, -1, -1);
            MEMORY[0x26D69A4E0](v412, -1, -1);
          }

          else
          {
            sub_26BE00258(v469, v476);

            sub_26BE00258(v469, v476);
          }

          v421 = v1[336];
          v422 = v1[335];
          v423 = v1[333];
          logd = v1[311];
          v424 = v1[306];
          *(v1 + 1536) = 5;
          *(v1 + 1648) = 9;
          sub_26BE7D22C((v1 + 192));
          sub_26BE2DC9C((v1 + 192));
          sub_26BE01654();
          swift_allocError();
          *v425 = 5;
          v425[112] = 9;
          swift_willThrow();
          sub_26BE00258(v489, v493);
          sub_26BE00258(v469, v476);
          sub_26BE00258(v481, oslogc);
          sub_26BE00258(v461, v454);
          sub_26BE132D4(v498, v501);
          sub_26BE132D4(v472, v56);
          sub_26BE00258(v422, v421);
          sub_26BE2DBC4((v1 + 229));
          sub_26BF7F05C(v424, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
          sub_26BF7F05C(logd, type metadata accessor for MLS.GroupState);
          sub_26BF7F05C(v423, type metadata accessor for MLS.MLSMessage);
          goto LABEL_11;
        }

        sub_26BE00608(v335, v336);
        v356 = oslogc;
        sub_26BE00608(v481, oslogc);
        v357 = v481;

        sub_26BE00608(v335, v336);
        sub_26BE00608(v481, oslogc);
        sub_26BE2BAE8(v290, v56);
        sub_26BE2BAE8(v498, v501);
        v358 = sub_26C009A3C();
        v359 = sub_26C00AA1C();
        v360 = os_log_type_enabled(v358, v359);
        v361 = v1[298];
        if (v360)
        {
          v459 = v335;
          v362 = swift_slowAlloc();
          v510 = swift_slowAlloc();
          *&v517 = v510;
          *v362 = 136315650;

          v363 = sub_26BE3D034();
          v364 = v336;
          v366 = v365;

          v367 = sub_26BE29740(v363, v366, &v517);

          *(v362 + 4) = v367;

          *(v362 + 12) = 2080;
          v1[293] = sub_26BF87240(v459, v364);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
          sub_26BE3C0F4();
          v496 = v358;
          sub_26C00A3EC();

          v368 = sub_26BE411D0(16);
          v370 = v369;
          v491 = v359;
          v372 = v371;
          v374 = v373;

          v375 = MEMORY[0x26D698FE0](v368, v370, v372, v374);
          v377 = v376;

          v378 = sub_26BE29740(v375, v377, &v517);

          *(v362 + 14) = v378;
          sub_26BE00258(v459, v364);
          sub_26BE00258(v459, v364);
          *(v362 + 22) = 2080;
          v1[292] = sub_26BF87240(v481, oslogc);
          sub_26C00A3EC();

          v379 = sub_26BE411D0(16);
          v381 = v380;
          v383 = v382;
          v385 = v384;
          v356 = oslogc;

          v386 = v383;
          v387 = v469;
          v388 = MEMORY[0x26D698FE0](v379, v381, v386, v385);
          v390 = v389;

          v391 = sub_26BE29740(v388, v390, &v517);
          v357 = v481;

          *(v362 + 24) = v391;
          sub_26BE00258(v481, oslogc);
          sub_26BE00258(v481, oslogc);
          _os_log_impl(&dword_26BDFE000, v496, v491, "%s: returning application message with details: messageID %s, originalMessageID %s", v362, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x26D69A4E0](v510, -1, -1);
          v392 = v362;
          v335 = v459;
          MEMORY[0x26D69A4E0](v392, -1, -1);
        }

        else
        {
          v418 = v1[298];

          sub_26BE00258(v335, v336);
          sub_26BE00258(v335, v336);
          sub_26BE00258(v481, oslogc);
          sub_26BE00258(v481, oslogc);

          v364 = v336;
          v387 = v469;
        }

        sub_26BE2DB68((v1 + 229), (v1 + 117));
        v1[124] = v387;
        v1[125] = v476;
        v1[126] = v335;
        v1[127] = v364;
        v1[128] = v357;
        v1[129] = v356;
        *(v1 + 1040) = 1;
        *(v1 + 261) = 0;
        *(v2 + 672) = 1;
        *(v1 + 1049) = 1;
        sub_26BE00608(v387, v476);
        sub_26BE00608(v335, v364);
        sub_26BE00608(v357, v356);
      }

      v429 = v1[311];
      v430 = v1[308];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
      v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
      v1[370] = v431;
      v432 = *(*(v431 - 8) + 72);
      v433 = *(*(v431 - 8) + 80);
      *(v1 + 293) = v433;
      v434 = (v433 + 32) & ~v433;
      v138 = swift_allocObject();
      v1[371] = v138;
      *(v138 + 16) = xmmword_26C011280;
      v435 = sub_26BE81FE0(*(v429 + *(v430 + 40)));
      if ((v435 & 0x100000000) != 0)
      {
        LODWORD(v435) = sub_26BE4126C();
      }

      v436 = v138 + v434;
      v437 = v1[311];
      v438 = v1[309];
      v439 = v1[308];
      v440 = *(v431 + 48);
      v441 = *(v437 + 24);
      *v436 = v435;
      *(v436 + 8) = v441;
      sub_26BF7F0BC(v437, v436 + v440, type metadata accessor for MLS.GroupState);
      (*(v438 + 56))(v436 + v440, 0, 1, v439);
      v197 = swift_task_alloc();
      v1[372] = v197;
      *v197 = v1;
      v198 = sub_26BF48DE0;
      goto LABEL_70;
    }

    if (v175)
    {
      v199 = swift_slowAlloc();
      v200 = swift_slowAlloc();
      *&v517 = v200;
      *v199 = 136315138;

      v201 = sub_26BE3D034();
      v203 = v202;

      v204 = sub_26BE29740(v201, v203, &v517);

      *(v199 + 4) = v204;

      _os_log_impl(&dword_26BDFE000, v173, v174, "%s: received application message, not using SecretPayload", v199, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v200);
      MEMORY[0x26D69A4E0](v200, -1, -1);
      MEMORY[0x26D69A4E0](v199, -1, -1);
    }

    else
    {
      v220 = v1[298];
    }

    v221 = v1[311];
    v222 = v1[308];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    v1[374] = v223;
    v224 = *(*(v223 - 8) + 72);
    v225 = *(*(v223 - 8) + 80);
    *(v1 + 323) = v225;
    v226 = (v225 + 32) & ~v225;
    v138 = swift_allocObject();
    v1[375] = v138;
    *(v138 + 16) = xmmword_26C011280;
    v227 = sub_26BE81FE0(*(v221 + *(v222 + 40)));
    if ((v227 & 0x100000000) != 0)
    {
      LODWORD(v227) = sub_26BE4126C();
    }

    v232 = v138 + v226;
    v233 = v1[311];
    v234 = v1[309];
    v235 = v1[308];
    v236 = *(v223 + 48);
    v237 = *(v233 + 24);
    *v232 = v227;
    *(v232 + 8) = v237;
    sub_26BF7F0BC(v233, v232 + v236, type metadata accessor for MLS.GroupState);
    (*(v234 + 56))(v232 + v236, 0, 1, v235);
    v197 = swift_task_alloc();
    v1[376] = v197;
    *v197 = v1;
    v198 = sub_26BF49260;
  }

LABEL_70:
  v197[1] = v198;
  v238 = v1[298];
LABEL_71:

  return sub_26BF394D4(v138);
}

uint64_t sub_26BF48DE0()
{
  v2 = *v1;
  v3 = *(*v1 + 2976);
  v4 = *v1;
  *(v2 + 2984) = v0;

  v5 = *(v2 + 2968);
  v6 = *(v2 + 2960);
  v7 = (*(v2 + 1172) + 32) & ~*(v2 + 1172);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF4C1BC;
  }

  else
  {
    v9 = sub_26BF48F60;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF48F60()
{
  v1 = *(v0 + 2952);
  v2 = *(v0 + 2944);
  v3 = *(v0 + 2928);
  v4 = *(v0 + 2920);
  v5 = *(v0 + 2912);
  v34 = *(v0 + 2936);
  v36 = *(v0 + 2896);
  v40 = *(v0 + 2904);
  v42 = *(v0 + 2688);
  v38 = *(v0 + 2680);
  v46 = *(v0 + 2488);
  v48 = *(v0 + 2664);
  v44 = *(v0 + 2448);
  v6 = *(v0 + 2376);
  if (v4 >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 2912);
  }

  if (v4 >> 60 == 15)
  {
    v8 = 0xC000000000000000;
  }

  else
  {
    v8 = *(v0 + 2920);
  }

  sub_26BE00258(*(v0 + 2880), *(v0 + 2888));
  sub_26BE00258(v7, v8);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v3, v34);
  sub_26BE132D4(v5, v4);
  sub_26BE132D4(v36, v40);
  sub_26BE00258(v38, v42);
  sub_26BE2DBC4(v0 + 1832);
  sub_26BF7F05C(v44, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v46, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v48, type metadata accessor for MLS.MLSMessage);
  v9 = *(v0 + 984);
  v11 = *(v0 + 936);
  v10 = *(v0 + 952);
  *(v6 + 32) = *(v0 + 968);
  *(v6 + 48) = v9;
  *v6 = v11;
  *(v6 + 16) = v10;
  v13 = *(v0 + 1016);
  v12 = *(v0 + 1032);
  v14 = *(v0 + 1000);
  *(v6 + 112) = *(v0 + 1048);
  *(v6 + 80) = v13;
  *(v6 + 96) = v12;
  *(v6 + 64) = v14;
  v15 = *(v0 + 2664);
  v16 = *(v0 + 2656);
  v17 = *(v0 + 2648);
  v18 = *(v0 + 2640);
  v19 = *(v0 + 2632);
  v20 = *(v0 + 2624);
  v21 = *(v0 + 2616);
  v22 = *(v0 + 2608);
  v23 = *(v0 + 2592);
  v24 = *(v0 + 2584);
  v27 = *(v0 + 2576);
  v28 = *(v0 + 2568);
  v29 = *(v0 + 2544);
  v30 = *(v0 + 2536);
  v31 = *(v0 + 2528);
  v32 = *(v0 + 2520);
  v33 = *(v0 + 2512);
  v35 = *(v0 + 2504);
  v37 = *(v0 + 2496);
  v39 = *(v0 + 2488);
  v41 = *(v0 + 2480);
  v43 = *(v0 + 2456);
  v45 = *(v0 + 2448);
  v47 = *(v0 + 2440);
  v49 = *(v0 + 2432);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_26BF49260()
{
  v2 = *v1;
  v3 = *(*v1 + 3008);
  v4 = *v1;
  *(v2 + 3016) = v0;

  v5 = *(v2 + 3000);
  v6 = *(v2 + 2992);
  v7 = (*(v2 + 1292) + 32) & ~*(v2 + 1292);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF4C498;
  }

  else
  {
    v9 = sub_26BF493E0;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF493E0()
{
  v131 = v0;
  v1 = (v0 + 1832);
  v2 = *(v0 + 2920);
  v3 = *(v0 + 2904);
  v4 = *(v0 + 2384);

  if (v3 >> 60 == 15 || v2 >> 60 == 15)
  {
    v6 = *(v0 + 2672);

    v7 = sub_26C009A3C();
    v8 = sub_26C00AA1C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 2920);
    v11 = *(v0 + 2912);
    v117 = *(v0 + 2896);
    v120 = *(v0 + 2904);
    v12 = *(v0 + 2688);
    v13 = *(v0 + 2680);
    v14 = *(v0 + 2664);
    v123 = v13;
    loga = *(v0 + 2488);
    v15 = *(v0 + 2448);
    v16 = *(v0 + 2384);
    if (v9)
    {
      v17 = swift_slowAlloc();
      v114 = v14;
      v18 = swift_slowAlloc();
      v130[0] = v18;
      *v17 = 136315138;

      v108 = v12;
      v111 = v15;
      v19 = sub_26BE3D034();
      v21 = v20;

      v22 = sub_26BE29740(v19, v21, v130);

      *(v17 + 4) = v22;

      _os_log_impl(&dword_26BDFE000, v7, v8, "%s: returning application message", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x26D69A4E0](v18, -1, -1);
      v23 = v17;
      v1 = (v0 + 1832);
      MEMORY[0x26D69A4E0](v23, -1, -1);

      sub_26BE132D4(v11, v10);
      sub_26BE132D4(v117, v120);
      sub_26BE00258(v123, v108);
      sub_26BF7F05C(v111, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      sub_26BF7F05C(loga, type metadata accessor for MLS.GroupState);
      v24 = v114;
    }

    else
    {

      sub_26BE132D4(v11, v10);

      sub_26BE132D4(v117, v120);
      sub_26BE00258(v123, v12);
      sub_26BF7F05C(v15, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      sub_26BF7F05C(loga, type metadata accessor for MLS.GroupState);
      v24 = v14;
    }

    sub_26BF7F05C(v24, type metadata accessor for MLS.MLSMessage);
    v63 = 0;
    v64 = *(v0 + 2376);
    v65 = *(v0 + 2880);
    v66 = *v1;
    v67 = v1[1];
    v68 = v1[2];
    *(v64 + 48) = *(v1 + 6);
    *(v64 + 16) = v67;
    *(v64 + 32) = v68;
    *v64 = v66;
    *(v64 + 56) = v65;
  }

  else
  {
    v25 = *(v0 + 2912);
    v26 = *(v0 + 2896);
    v27 = *(v0 + 2672);
    sub_26BE2BAE8(v26, v3);
    sub_26BE2BAE8(v25, v2);

    sub_26BE2BAE8(v26, v3);
    sub_26BE2BAE8(v25, v2);
    v28 = sub_26C009A3C();
    v29 = sub_26C00AA1C();
    log = v28;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = *(v0 + 3016);
      v104 = *(v0 + 2912);
      v106 = *(v0 + 2920);
      v32 = *(v0 + 2904);
      v33 = *(v0 + 2896);
      v98 = v33;
      v100 = v32;
      v112 = *(v0 + 2680);
      v115 = *(v0 + 2688);
      v121 = *(v0 + 2488);
      v124 = *(v0 + 2664);
      v118 = *(v0 + 2448);
      v34 = *(v0 + 2384);
      v35 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v130[0] = v109;
      *v35 = 136315650;

      v36 = sub_26BE3D034();
      v38 = v37;

      v39 = sub_26BE29740(v36, v38, v130);

      *(v35 + 4) = v39;

      *(v35 + 12) = 2080;
      *(v0 + 2352) = sub_26BF87240(v33, v32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      sub_26C00A3EC();
      v102 = v29;

      v40 = sub_26BE411D0(16);
      v42 = v41;
      v44 = v43;
      v46 = v45;

      v47 = MEMORY[0x26D698FE0](v40, v42, v44, v46);
      v49 = v48;

      v50 = sub_26BE29740(v47, v49, v130);

      *(v35 + 14) = v50;
      sub_26BE132D4(v98, v100);
      sub_26BE132D4(v98, v100);
      *(v35 + 22) = 2080;
      *(v0 + 2368) = sub_26BF87240(v104, v106);
      sub_26C00A3EC();

      v51 = sub_26BE411D0(16);
      v53 = v52;
      v55 = v54;
      v57 = v56;

      v58 = MEMORY[0x26D698FE0](v51, v53, v55, v57);
      v60 = v59;

      v61 = sub_26BE29740(v58, v60, v130);

      *(v35 + 24) = v61;
      sub_26BE132D4(v104, v106);
      sub_26BE132D4(v104, v106);
      _os_log_impl(&dword_26BDFE000, log, v102, "%s: returning application message with details: messageID %s, originalMessageID %s", v35, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v109, -1, -1);
      MEMORY[0x26D69A4E0](v35, -1, -1);

      sub_26BE00258(v112, v115);
      sub_26BF7F05C(v118, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      v62 = v121;
    }

    else
    {
      v69 = *(v0 + 2920);
      v70 = *(v0 + 2912);
      v71 = *(v0 + 2904);
      v72 = *(v0 + 2896);
      v73 = *(v0 + 2688);
      v74 = *(v0 + 2680);
      v124 = *(v0 + 2664);
      v75 = *(v0 + 2488);
      v76 = *(v0 + 2448);
      v77 = *(v0 + 2384);

      sub_26BE132D4(v70, v69);
      sub_26BE132D4(v70, v69);
      sub_26BE132D4(v72, v71);
      sub_26BE132D4(v72, v71);

      sub_26BE00258(v74, v73);
      sub_26BF7F05C(v76, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
      v62 = v75;
    }

    sub_26BF7F05C(v62, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v124, type metadata accessor for MLS.MLSMessage);
    v64 = *(v0 + 2376);
    v78 = *(v0 + 2880);
    v79 = *(v0 + 2896);
    v80 = *(v0 + 2912);
    v81 = *(v0 + 1832);
    v82 = *(v0 + 1848);
    v83 = *(v0 + 1864);
    *(v64 + 48) = *(v0 + 1880);
    *(v64 + 16) = v82;
    *(v64 + 32) = v83;
    *v64 = v81;
    *(v64 + 56) = v78;
    *(v64 + 72) = v79;
    *(v64 + 88) = v80;
    *(v64 + 104) = 0;
    *(v64 + 108) = 0;
    v63 = 1;
    *(v64 + 112) = 1;
  }

  *(v64 + 113) = v63;
  v84 = *(v0 + 2664);
  v85 = *(v0 + 2656);
  v86 = *(v0 + 2648);
  v87 = *(v0 + 2640);
  v88 = *(v0 + 2632);
  v89 = *(v0 + 2624);
  v90 = *(v0 + 2616);
  v91 = *(v0 + 2608);
  v92 = *(v0 + 2592);
  v93 = *(v0 + 2584);
  v96 = *(v0 + 2576);
  v97 = *(v0 + 2568);
  v99 = *(v0 + 2544);
  v101 = *(v0 + 2536);
  v103 = *(v0 + 2528);
  v105 = *(v0 + 2520);
  v107 = *(v0 + 2512);
  v110 = *(v0 + 2504);
  v113 = *(v0 + 2496);
  v116 = *(v0 + 2488);
  v119 = *(v0 + 2480);
  v122 = *(v0 + 2456);
  v125 = *(v0 + 2448);
  logb = *(v0 + 2440);
  v129 = *(v0 + 2432);

  v94 = *(v0 + 8);

  return v94();
}

uint64_t sub_26BF49CD0()
{
  v2 = *v1;
  v3 = *(*v1 + 3056);
  v4 = *v1;
  *(v2 + 3064) = v0;

  v5 = *(v2 + 3048);
  v6 = *(v2 + 3040);
  v7 = (*(v2 + 1412) + 32) & ~*(v2 + 1412);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF4C714;
  }

  else
  {
    v9 = sub_26BF49E50;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF49E50()
{
  v1 = *(v0 + 3032);
  v2 = *(v0 + 3024);
  v3 = *(v0 + 2664);
  v4 = *(v0 + 2488);
  v5 = *(v0 + 2448);
  v6 = *(v0 + 2376);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v7 = *(v0 + 1808);
  v8 = *(v0 + 1824);
  v9 = *(v0 + 1776);
  *(v6 + 16) = *(v0 + 1792);
  *(v6 + 32) = v7;
  *v6 = v9;
  *(v6 + 48) = v8;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  *(v6 + 113) = 2;
  v10 = *(v0 + 2664);
  v11 = *(v0 + 2656);
  v12 = *(v0 + 2648);
  v13 = *(v0 + 2640);
  v14 = *(v0 + 2632);
  v15 = *(v0 + 2624);
  v16 = *(v0 + 2616);
  v17 = *(v0 + 2608);
  v18 = *(v0 + 2592);
  v19 = *(v0 + 2584);
  v22 = *(v0 + 2576);
  v23 = *(v0 + 2568);
  v24 = *(v0 + 2544);
  v25 = *(v0 + 2536);
  v26 = *(v0 + 2528);
  v27 = *(v0 + 2520);
  v28 = *(v0 + 2512);
  v29 = *(v0 + 2504);
  v30 = *(v0 + 2496);
  v31 = *(v0 + 2488);
  v32 = *(v0 + 2480);
  v33 = *(v0 + 2456);
  v34 = *(v0 + 2448);
  v35 = *(v0 + 2440);
  v36 = *(v0 + 2432);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_26BF4A0B4()
{
  v2 = *v1;
  v3 = *(*v1 + 3088);
  v4 = *v1;
  *(v2 + 3096) = v0;

  v5 = *(v2 + 3080);
  v6 = *(v2 + 3072);
  v7 = (*(v2 + 1532) + 32) & ~*(v2 + 1532);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF4C968;
  }

  else
  {
    v9 = sub_26BF4A234;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF4A234()
{
  v89 = v0;
  v1 = *(v0 + 2384);
  if (*(v0 + 1052) == *(v1 + 152) && *(v0 + 2856) == *(v1 + 24))
  {
    v22 = *(v0 + 2664);
    v23 = *(v0 + 2488);
    v24 = *(v0 + 2448);
    v25 = *(v0 + 2376);
    sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
    sub_26BF7F05C(v24, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
    sub_26BF7F05C(v23, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v22, type metadata accessor for MLS.MLSMessage);
    *v25 = 0u;
    *(v25 + 16) = 0u;
    *(v25 + 32) = 0u;
    *(v25 + 48) = 0u;
    *(v25 + 64) = 0u;
    *(v25 + 80) = 0u;
    *(v25 + 96) = 0u;
    *(v25 + 112) = 1024;
    v26 = *(v0 + 2664);
    v27 = *(v0 + 2656);
    v28 = *(v0 + 2648);
    v29 = *(v0 + 2640);
    v30 = *(v0 + 2632);
    v31 = *(v0 + 2624);
    v32 = *(v0 + 2616);
    v33 = *(v0 + 2608);
    v34 = *(v0 + 2592);
    v35 = *(v0 + 2584);
    v56 = *(v0 + 2576);
    v58 = *(v0 + 2568);
    v60 = *(v0 + 2544);
    v62 = *(v0 + 2536);
    v64 = *(v0 + 2528);
    v66 = *(v0 + 2520);
    v68 = *(v0 + 2512);
    v70 = *(v0 + 2504);
    v72 = *(v0 + 2496);
    v74 = *(v0 + 2488);
    v76 = *(v0 + 2480);
    v78 = *(v0 + 2456);
    v80 = *(v0 + 2448);
    v82 = *(v0 + 2440);
    v85 = *(v0 + 2432);

    v36 = *(v0 + 8);
  }

  else
  {
    v3 = *(v0 + 2672);
    v4 = *(v0 + 2384);
    swift_retain_n();
    v5 = sub_26C009A3C();
    v6 = sub_26C00AA0C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v0 + 2384);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v86 = v84;
      *v9 = 136315650;

      v10 = sub_26BE3D034();
      v12 = v11;

      v13 = sub_26BE29740(v10, v12, &v86);

      *(v9 + 4) = v13;

      *(v9 + 12) = 2080;
      v14 = *(v0 + 2280);
      v87 = *(v0 + 2272);
      v88 = v14;
      v15 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v17 = sub_26BE29740(v15, v16, &v86);

      *(v9 + 14) = v17;
      *(v9 + 22) = 2080;
      v18 = *(v1 + 24);
      v87 = *(v1 + 152);
      v88 = v18;
      v19 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v21 = sub_26BE29740(v19, v20, &v86);

      *(v9 + 24) = v21;

      _os_log_impl(&dword_26BDFE000, v5, v6, "%s: Received proposal for %s but currently at %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v84, -1, -1);
      MEMORY[0x26D69A4E0](v9, -1, -1);
    }

    else
    {
      v37 = *(v0 + 2384);

      v14 = *(v0 + 2856);
    }

    v38 = *(v0 + 2688);
    v39 = *(v0 + 2680);
    v40 = *(v0 + 2664);
    v41 = *(v0 + 2488);
    v42 = *(v0 + 2448);
    *(v0 + 1416) = *(v1 + 24);
    *(v0 + 1424) = v14;
    *(v0 + 1432) = 0;
    *(v0 + 1528) = 19;
    sub_26BE7D22C(v0 + 1416);
    sub_26BE2DC9C(v0 + 1416);
    sub_26BE01654();
    swift_allocError();
    *v43 = *(v1 + 24);
    *(v43 + 8) = v14;
    *(v43 + 16) = 0;
    *(v43 + 112) = 19;
    swift_willThrow();
    sub_26BE00258(v39, v38);
    sub_26BF7F05C(v42, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
    sub_26BF7F05C(v41, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v40, type metadata accessor for MLS.MLSMessage);
    v44 = *(v0 + 2664);
    v45 = *(v0 + 2656);
    v46 = *(v0 + 2648);
    v47 = *(v0 + 2640);
    v48 = *(v0 + 2632);
    v49 = *(v0 + 2624);
    v50 = *(v0 + 2616);
    v51 = *(v0 + 2608);
    v52 = *(v0 + 2592);
    v53 = *(v0 + 2584);
    v55 = *(v0 + 2576);
    v57 = *(v0 + 2568);
    v59 = *(v0 + 2544);
    v61 = *(v0 + 2536);
    v63 = *(v0 + 2528);
    v65 = *(v0 + 2520);
    v67 = *(v0 + 2512);
    v69 = *(v0 + 2504);
    v71 = *(v0 + 2496);
    v73 = *(v0 + 2488);
    v75 = *(v0 + 2480);
    v77 = *(v0 + 2456);
    v79 = *(v0 + 2448);
    v81 = *(v0 + 2440);
    v83 = *(v0 + 2432);

    v36 = *(v0 + 8);
  }

  return v36();
}

uint64_t sub_26BF4A878()
{
  v2 = *v1;
  v3 = *(*v1 + 3200);
  v4 = *v1;
  *(v2 + 3208) = v0;

  v5 = *(v2 + 3192);
  v6 = *(v2 + 3184);
  if (v0)
  {
    v7 = *(v2 + 3168);
    v8 = *(v2 + 3160);
    v9 = *(v2 + 3152);
    v10 = *(v2 + 3144);
    swift_setDeallocating();
    v11 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v12 = sub_26BF4CDEC;
  }

  else
  {
    v13 = (*(v2 + 1652) + 32) & ~*(v2 + 1652);
    swift_setDeallocating();
    v14 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v12 = sub_26BF4AA64;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26BF4AA64()
{
  v36 = *(v0 + 379);
  v34 = *(v0 + 3176);
  v1 = *(v0 + 378);
  v2 = *(v0 + 3168);
  v3 = *(v0 + 3160);
  v4 = *(v0 + 2664);
  v5 = *(v0 + 2488);
  v6 = *(v0 + 2480);
  v7 = *(v0 + 2448);
  v8 = *(v0 + 2376);
  v33 = *(v0 + 3144);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  *v8 = v33;
  *(v8 + 16) = v3;
  *(v8 + 24) = v2;
  *(v8 + 32) = v1;
  *(v8 + 40) = v34;
  *(v8 + 48) = v36;
  *(v8 + 113) = 3;
  v9 = *(v0 + 2664);
  v10 = *(v0 + 2656);
  v11 = *(v0 + 2648);
  v12 = *(v0 + 2640);
  v13 = *(v0 + 2632);
  v14 = *(v0 + 2624);
  v15 = *(v0 + 2616);
  v16 = *(v0 + 2608);
  v17 = *(v0 + 2592);
  v18 = *(v0 + 2584);
  v21 = *(v0 + 2576);
  v22 = *(v0 + 2568);
  v23 = *(v0 + 2544);
  v24 = *(v0 + 2536);
  v25 = *(v0 + 2528);
  v26 = *(v0 + 2520);
  v27 = *(v0 + 2512);
  v28 = *(v0 + 2504);
  v29 = *(v0 + 2496);
  v30 = *(v0 + 2488);
  v31 = *(v0 + 2480);
  v32 = *(v0 + 2456);
  *&v33 = *(v0 + 2448);
  v35 = *(v0 + 2440);
  v37 = *(v0 + 2432);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_26BF4ACF8()
{
  v2 = *v1;
  v3 = *(*v1 + 3232);
  v4 = *v1;
  *(v2 + 3240) = v0;

  v5 = *(v2 + 3224);
  v6 = *(v2 + 3216);
  if (v0)
  {
    v7 = *(v2 + 3128);
    v8 = *(v2 + 3120);
    v9 = *(v2 + 3112);
    v10 = *(v2 + 3104);
    swift_setDeallocating();
    v11 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();

    v12 = sub_26BF4CBA0;
  }

  else
  {
    v13 = (*(v2 + 1772) + 32) & ~*(v2 + 1772);
    swift_setDeallocating();
    v14 = *(v5 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v12 = sub_26BF4AEE4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_26BF4AEE4()
{
  v64 = v0;
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2384);
  swift_retain_n();
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA0C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 3128);
  v7 = *(v0 + 3112);
  v8 = *(v0 + 3104);
  v9 = *(v0 + 2384);
  if (v5)
  {
    v58 = *(v0 + 3120);
    v10 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v61 = v60;
    *v10 = 136315650;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, &v61);

    *(v10 + 4) = v14;

    *(v10 + 12) = 2080;
    v15 = *(v0 + 2280);
    v62 = *(v0 + 2272);
    v63 = v15;
    v16 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v18 = sub_26BE29740(v16, v17, &v61);

    *(v10 + 14) = v18;
    *(v10 + 22) = 2080;
    v19 = *(v9 + 24);
    v62 = *(v9 + 152);
    v63 = v19;
    v20 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v22 = sub_26BE29740(v20, v21, &v61);

    *(v10 + 24) = v22;

    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: Received commit for epoch %s but current epoch is %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v60, -1, -1);
    MEMORY[0x26D69A4E0](v10, -1, -1);
  }

  else
  {
    v23 = *(v0 + 3104);

    v15 = *(v0 + 3136);
  }

  v24 = *(v0 + 2688);
  v25 = *(v0 + 2680);
  v26 = *(v0 + 2664);
  v27 = *(v0 + 2488);
  v28 = *(v0 + 2480);
  v29 = *(v0 + 2448);
  v30 = *(v0 + 2384);
  *(v0 + 1296) = *(v30 + 24);
  *(v0 + 1304) = v15;
  *(v0 + 1312) = 0;
  *(v0 + 1408) = 19;
  sub_26BE7D22C(v0 + 1296);
  sub_26BE2DC9C(v0 + 1296);
  sub_26BE01654();
  swift_allocError();
  *v31 = *(v30 + 24);
  *(v31 + 8) = v15;
  *(v31 + 16) = 0;
  *(v31 + 112) = 19;
  swift_willThrow();
  sub_26BE00258(v25, v24);
  sub_26BF7F05C(v28, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v29, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v27, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v26, type metadata accessor for MLS.MLSMessage);
  v32 = *(v0 + 2664);
  v33 = *(v0 + 2656);
  v34 = *(v0 + 2648);
  v35 = *(v0 + 2640);
  v36 = *(v0 + 2632);
  v37 = *(v0 + 2624);
  v38 = *(v0 + 2616);
  v39 = *(v0 + 2608);
  v40 = *(v0 + 2592);
  v41 = *(v0 + 2584);
  v44 = *(v0 + 2576);
  v45 = *(v0 + 2568);
  v46 = *(v0 + 2544);
  v47 = *(v0 + 2536);
  v48 = *(v0 + 2528);
  v49 = *(v0 + 2520);
  v50 = *(v0 + 2512);
  v51 = *(v0 + 2504);
  v52 = *(v0 + 2496);
  v53 = *(v0 + 2488);
  v54 = *(v0 + 2480);
  v55 = *(v0 + 2456);
  v56 = *(v0 + 2448);
  v57 = *(v0 + 2440);
  v59 = *(v0 + 2432);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_26BF4B398()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v33 = v0[341];
  v6 = v0[333];
  v7 = v0[332];
  v8 = v0[331];
  v9 = v0[330];
  v10 = v0[329];
  v11 = v0[328];
  v12 = v0[327];
  v13 = v0[326];
  v14 = v0[324];
  v15 = v0[323];
  v18 = v0[322];
  v19 = v0[321];
  v20 = v0[318];
  v21 = v0[317];
  v22 = v0[316];
  v23 = v0[315];
  v24 = v0[314];
  v25 = v0[313];
  v26 = v0[312];
  v27 = v0[311];
  v28 = v0[310];
  v29 = v0[307];
  v30 = v0[306];
  v31 = v0[305];
  v32 = v0[304];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BF4B5DC()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  v6 = v0[313];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v34 = v0[354];
  v7 = v0[333];
  v8 = v0[332];
  v9 = v0[331];
  v10 = v0[330];
  v11 = v0[329];
  v12 = v0[328];
  v13 = v0[327];
  v14 = v0[326];
  v15 = v0[324];
  v16 = v0[323];
  v19 = v0[322];
  v20 = v0[321];
  v21 = v0[318];
  v22 = v0[317];
  v23 = v0[316];
  v24 = v0[315];
  v25 = v0[314];
  v26 = v0[313];
  v27 = v0[312];
  v28 = v0[311];
  v29 = v0[310];
  v30 = v0[307];
  v31 = v0[306];
  v32 = v0[305];
  v33 = v0[304];

  v17 = v0[1];

  return v17();
}

uint64_t sub_26BF4B834()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[323];
  v5 = v0[314];
  sub_26BE6FF8C((v0 + 73));
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v4, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v33 = v0[356];
  v6 = v0[333];
  v7 = v0[332];
  v8 = v0[331];
  v9 = v0[330];
  v10 = v0[329];
  v11 = v0[328];
  v12 = v0[327];
  v13 = v0[326];
  v14 = v0[324];
  v15 = v0[323];
  v18 = v0[322];
  v19 = v0[321];
  v20 = v0[318];
  v21 = v0[317];
  v22 = v0[316];
  v23 = v0[315];
  v24 = v0[314];
  v25 = v0[313];
  v26 = v0[312];
  v27 = v0[311];
  v28 = v0[310];
  v29 = v0[307];
  v30 = v0[306];
  v31 = v0[305];
  v32 = v0[304];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BF4BA78()
{
  v1 = v0[333];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);
  v29 = v0[359];
  v2 = v0[333];
  v3 = v0[332];
  v4 = v0[331];
  v5 = v0[330];
  v6 = v0[329];
  v7 = v0[328];
  v8 = v0[327];
  v9 = v0[326];
  v10 = v0[324];
  v11 = v0[323];
  v14 = v0[322];
  v15 = v0[321];
  v16 = v0[318];
  v17 = v0[317];
  v18 = v0[316];
  v19 = v0[315];
  v20 = v0[314];
  v21 = v0[313];
  v22 = v0[312];
  v23 = v0[311];
  v24 = v0[310];
  v25 = v0[307];
  v26 = v0[306];
  v27 = v0[305];
  v28 = v0[304];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF4BC70()
{
  v2 = *(*v1 + 3248);
  v5 = *v1;
  *(*v1 + 3256) = v0;

  if (v0)
  {
    v3 = sub_26BF4BF9C;
  }

  else
  {
    v3 = sub_26BF4BD84;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF4BD84()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2488);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v3 = *(v0 + 2664);
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2648);
  v6 = *(v0 + 2640);
  v7 = *(v0 + 2632);
  v8 = *(v0 + 2624);
  v9 = *(v0 + 2616);
  v10 = *(v0 + 2608);
  v11 = *(v0 + 2592);
  v12 = *(v0 + 2584);
  v15 = *(v0 + 2576);
  v16 = *(v0 + 2568);
  v17 = *(v0 + 2544);
  v18 = *(v0 + 2536);
  v19 = *(v0 + 2528);
  v20 = *(v0 + 2520);
  v21 = *(v0 + 2512);
  v22 = *(v0 + 2504);
  v23 = *(v0 + 2496);
  v24 = *(v0 + 2488);
  v25 = *(v0 + 2480);
  v26 = *(v0 + 2456);
  v27 = *(v0 + 2448);
  v28 = *(v0 + 2440);
  v29 = *(v0 + 2432);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26BF4BF9C()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2488);
  sub_26BE00258(*(v0 + 2680), *(v0 + 2688));
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);

  v30 = *(v0 + 3256);
  v3 = *(v0 + 2664);
  v4 = *(v0 + 2656);
  v5 = *(v0 + 2648);
  v6 = *(v0 + 2640);
  v7 = *(v0 + 2632);
  v8 = *(v0 + 2624);
  v9 = *(v0 + 2616);
  v10 = *(v0 + 2608);
  v11 = *(v0 + 2592);
  v12 = *(v0 + 2584);
  v15 = *(v0 + 2576);
  v16 = *(v0 + 2568);
  v17 = *(v0 + 2544);
  v18 = *(v0 + 2536);
  v19 = *(v0 + 2528);
  v20 = *(v0 + 2520);
  v21 = *(v0 + 2512);
  v22 = *(v0 + 2504);
  v23 = *(v0 + 2496);
  v24 = *(v0 + 2488);
  v25 = *(v0 + 2480);
  v26 = *(v0 + 2456);
  v27 = *(v0 + 2448);
  v28 = *(v0 + 2440);
  v29 = *(v0 + 2432);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_26BF4C1BC()
{
  v1 = v0[369];
  v2 = v0[368];
  v3 = v0[367];
  v4 = v0[366];
  v5 = v0[365];
  v6 = v0[364];
  v7 = v0[362];
  v34 = v0[363];
  v36 = v0[336];
  v32 = v0[335];
  v40 = v0[311];
  v42 = v0[333];
  v38 = v0[306];
  if (v5 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = v0[364];
  }

  if (v5 >> 60 == 15)
  {
    v9 = 0xC000000000000000;
  }

  else
  {
    v9 = v0[365];
  }

  sub_26BE00258(v0[360], v0[361]);
  sub_26BE00258(v8, v9);
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE132D4(v6, v5);
  sub_26BE132D4(v7, v34);
  sub_26BE00258(v32, v36);
  sub_26BF26D4C((v0 + 117));
  sub_26BE2DBC4((v0 + 229));
  sub_26BF7F05C(v38, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v40, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v42, type metadata accessor for MLS.MLSMessage);
  v43 = v0[373];
  v10 = v0[333];
  v11 = v0[332];
  v12 = v0[331];
  v13 = v0[330];
  v14 = v0[329];
  v15 = v0[328];
  v16 = v0[327];
  v17 = v0[326];
  v18 = v0[324];
  v19 = v0[323];
  v22 = v0[322];
  v23 = v0[321];
  v24 = v0[318];
  v25 = v0[317];
  v26 = v0[316];
  v27 = v0[315];
  v28 = v0[314];
  v29 = v0[313];
  v30 = v0[312];
  v31 = v0[311];
  v33 = v0[310];
  v35 = v0[307];
  v37 = v0[306];
  v39 = v0[305];
  v41 = v0[304];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26BF4C498()
{
  v1 = v0[365];
  v2 = v0[364];
  v3 = v0[363];
  v4 = v0[362];
  v5 = v0[336];
  v6 = v0[335];
  v7 = v0[333];
  v8 = v0[311];
  v9 = v0[306];
  sub_26BE00258(v0[360], v0[361]);
  sub_26BE132D4(v2, v1);
  sub_26BE132D4(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE2DBC4((v0 + 229));
  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  v37 = v0[377];
  v10 = v0[333];
  v11 = v0[332];
  v12 = v0[331];
  v13 = v0[330];
  v14 = v0[329];
  v15 = v0[328];
  v16 = v0[327];
  v17 = v0[326];
  v18 = v0[324];
  v19 = v0[323];
  v22 = v0[322];
  v23 = v0[321];
  v24 = v0[318];
  v25 = v0[317];
  v26 = v0[316];
  v27 = v0[315];
  v28 = v0[314];
  v29 = v0[313];
  v30 = v0[312];
  v31 = v0[311];
  v32 = v0[310];
  v33 = v0[307];
  v34 = v0[306];
  v35 = v0[305];
  v36 = v0[304];

  v20 = v0[1];

  return v20();
}

uint64_t sub_26BF4C714()
{
  v1 = v0[336];
  v2 = v0[335];
  v3 = v0[333];
  v4 = v0[311];
  v5 = v0[306];
  sub_26BE00258(v0[378], v0[379]);
  sub_26BE00258(v2, v1);
  sub_26BE2DBC4((v0 + 222));
  sub_26BF7F05C(v5, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v3, type metadata accessor for MLS.MLSMessage);
  v33 = v0[383];
  v6 = v0[333];
  v7 = v0[332];
  v8 = v0[331];
  v9 = v0[330];
  v10 = v0[329];
  v11 = v0[328];
  v12 = v0[327];
  v13 = v0[326];
  v14 = v0[324];
  v15 = v0[323];
  v18 = v0[322];
  v19 = v0[321];
  v20 = v0[318];
  v21 = v0[317];
  v22 = v0[316];
  v23 = v0[315];
  v24 = v0[314];
  v25 = v0[313];
  v26 = v0[312];
  v27 = v0[311];
  v28 = v0[310];
  v29 = v0[307];
  v30 = v0[306];
  v31 = v0[305];
  v32 = v0[304];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26BF4C968()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);
  v31 = v0[387];
  v4 = v0[333];
  v5 = v0[332];
  v6 = v0[331];
  v7 = v0[330];
  v8 = v0[329];
  v9 = v0[328];
  v10 = v0[327];
  v11 = v0[326];
  v12 = v0[324];
  v13 = v0[323];
  v16 = v0[322];
  v17 = v0[321];
  v18 = v0[318];
  v19 = v0[317];
  v20 = v0[316];
  v21 = v0[315];
  v22 = v0[314];
  v23 = v0[313];
  v24 = v0[312];
  v25 = v0[311];
  v26 = v0[310];
  v27 = v0[307];
  v28 = v0[306];
  v29 = v0[305];
  v30 = v0[304];

  v14 = v0[1];

  return v14();
}

uint64_t sub_26BF4CBA0()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[310];
  v4 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);
  v32 = v0[405];
  v5 = v0[333];
  v6 = v0[332];
  v7 = v0[331];
  v8 = v0[330];
  v9 = v0[329];
  v10 = v0[328];
  v11 = v0[327];
  v12 = v0[326];
  v13 = v0[324];
  v14 = v0[323];
  v17 = v0[322];
  v18 = v0[321];
  v19 = v0[318];
  v20 = v0[317];
  v21 = v0[316];
  v22 = v0[315];
  v23 = v0[314];
  v24 = v0[313];
  v25 = v0[312];
  v26 = v0[311];
  v27 = v0[310];
  v28 = v0[307];
  v29 = v0[306];
  v30 = v0[305];
  v31 = v0[304];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BF4CDEC()
{
  v1 = v0[333];
  v2 = v0[311];
  v3 = v0[310];
  v4 = v0[306];
  sub_26BE00258(v0[335], v0[336]);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState.ReceivedMessageDetails);
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v1, type metadata accessor for MLS.MLSMessage);
  v32 = v0[401];
  v5 = v0[333];
  v6 = v0[332];
  v7 = v0[331];
  v8 = v0[330];
  v9 = v0[329];
  v10 = v0[328];
  v11 = v0[327];
  v12 = v0[326];
  v13 = v0[324];
  v14 = v0[323];
  v17 = v0[322];
  v18 = v0[321];
  v19 = v0[318];
  v20 = v0[317];
  v21 = v0[316];
  v22 = v0[315];
  v23 = v0[314];
  v24 = v0[313];
  v25 = v0[312];
  v26 = v0[311];
  v27 = v0[310];
  v28 = v0[307];
  v29 = v0[306];
  v30 = v0[305];
  v31 = v0[304];

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BF4D038(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v5 = v4;
  v6 = v3;
  v88 = a2;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A8, &unk_26C00ECB0);
  v9 = *(*(v85 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v85);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v73 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v80 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v73 - v19;
  v21 = type metadata accessor for FileInfoAndSender();
  v86 = *(v21 - 8);
  v87 = v21;
  v22 = *(v86 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = *a3;
  v83 = a3[1];
  v84 = v24;
  v25 = *(a3 + 32);
  v82 = *(a3 + 5);
  v81 = *(a3 + 48);
  if (v81 == 1)
  {
    v75 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v76 = v25;
    v79 = v12;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v78 = v14;
    v26 = sub_26C009A5C();
    v27 = __swift_project_value_buffer(v26, qword_280478EE8);

    v28 = sub_26C009A3C();
    v29 = sub_26C00AA1C();

    v30 = os_log_type_enabled(v28, v29);
    v77 = a1;
    if (v30)
    {
      v31 = swift_slowAlloc();
      v95 = v4;
      v32 = v31;
      v33 = swift_slowAlloc();
      v74 = v27;
      v34 = v33;
      *&v90[0] = v33;
      *v32 = 136315138;

      v35 = sub_26BE3D034();
      v37 = v36;

      v38 = sub_26BE29740(v35, v37, v90);
      a1 = v77;

      *(v32 + 4) = v38;
      _os_log_impl(&dword_26BDFE000, v28, v29, "%s: Processed commit was generated by this client", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x26D69A4E0](v34, -1, -1);
      v39 = v32;
      v5 = v95;
      MEMORY[0x26D69A4E0](v39, -1, -1);
    }

    v40 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
    swift_beginAccess();
    sub_26BE2E1F0(v6 + v40, v20, &qword_28045FA38, &qword_26C01D890);
    v41 = (*(v86 + 48))(v20, 1, v87);
    v12 = v79;
    if (v41 == 1)
    {
      sub_26BE2E258(v20, &qword_28045FA38, &qword_26C01D890);
      v14 = v78;
    }

    else
    {
      v74 = v40;
      sub_26BF7F124(v20, v75, type metadata accessor for FileInfoAndSender);

      v42 = sub_26C009A3C();
      v43 = sub_26C00AA1C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v95 = v5;
        v45 = v44;
        v46 = swift_slowAlloc();
        *&v90[0] = v46;
        *v45 = 136315138;

        v47 = sub_26BE3D034();
        v49 = v48;

        v50 = sub_26BE29740(v47, v49, v90);
        v12 = v79;

        *(v45 + 4) = v50;
        _os_log_impl(&dword_26BDFE000, v42, v43, "%s: Received confirmation that commit was accepted; marking stored keys for group subject as valid", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x26D69A4E0](v46, -1, -1);
        v51 = v45;
        v5 = v95;
        MEMORY[0x26D69A4E0](v51, -1, -1);
      }

      v52 = v80;
      sub_26BF7F124(v75, v80, type metadata accessor for FileInfoAndSender);
      v53 = v87;
      v54 = *(v86 + 56);
      v54(v52, 0, 1, v87);
      v55 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
      swift_beginAccess();
      sub_26BE7170C(v52, v6 + v55, &qword_28045FA38, &qword_26C01D890);
      swift_endAccess();
      v54(v52, 1, 1, v53);
      v56 = v74;
      swift_beginAccess();
      sub_26BE7170C(v52, v6 + v56, &qword_28045FA38, &qword_26C01D890);
      swift_endAccess();
      a1 = v77;
      v14 = v78;
    }

    LOBYTE(v25) = v76;
  }

  v57 = *(v6 + 48);
  swift_beginAccess();
  sub_26BE295A0(v57 + 40, v90);
  v58 = v94;
  if (v94 == 2)
  {
    v89[3] = &type metadata for SwiftMLSFeatureFlags;
    v89[4] = sub_26BE295D8();
    LOBYTE(v89[0]) = 2;
    v59 = sub_26C00929C();
    sub_26BE29710(v90);
    __swift_destroy_boxed_opaque_existential_1(v89);
    v60 = v88;
    if ((v59 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    sub_26BE29710(v90);
    v60 = v88;
    if ((v58 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  result = sub_26BF4EE40(a1, v60);
  if (v5)
  {
    return result;
  }

  v62 = *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch);
  *(v6 + OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch) = result;

LABEL_18:
  v90[0] = v84;
  v90[1] = v83;
  v91 = v25;
  v92 = v82;
  v93 = v81;
  v63 = *(v60 + *(type metadata accessor for MLS.GroupState() + 40));
  v64 = sub_26BE81FE0(v63);
  if (v5)
  {

LABEL_21:
    LODWORD(v64) = sub_26BE4126C();
    goto LABEL_22;
  }

  if ((v64 & 0x100000000) != 0)
  {
    goto LABEL_21;
  }

LABEL_22:
  v65 = *(v60 + 24);
  LODWORD(v89[0]) = v64;
  v88 = v65;
  v89[1] = v65;
  sub_26BF4D900(v90, v89);
  v66 = sub_26BE81FE0(v63);
  v67 = v66;
  if ((v66 & 0x100000000) != 0)
  {
    v67 = sub_26BE4126C();
  }

  v95 = 0;
  if (qword_28045DF48 != -1)
  {
    swift_once();
  }

  v68 = __swift_project_value_buffer(v85, qword_28045E4F0);
  swift_beginAccess();
  sub_26BE2E1F0(v68, v12, &qword_28045E4A8, &unk_26C00ECB0);
  v69 = sub_26C00921C();
  v70 = *(v69 - 8);
  v71 = v12;
  v72 = *(v70 + 48);
  if (v72(v71, 1, v69) == 1)
  {
    sub_26C00920C();
    if (v72(v71, 1, v69) != 1)
    {
      sub_26BE2E258(v71, &qword_28045E4A8, &unk_26C00ECB0);
    }
  }

  else
  {
    (*(v70 + 32))(v14, v71, v69);
  }

  (*(v70 + 56))(v14, 0, 1, v69);
  swift_beginAccess();
  sub_26BE4D1CC(v14, v67, v88);
  return swift_endAccess();
}

void *sub_26BF4D900(void *result, int *a2)
{
  v3 = v2;
  v4 = *result;
  v5 = result[1];
  v6 = result[3];
  v98 = *a2;
  v97 = *(a2 + 1);
  v7 = *(*result + 16);
  v93 = v5;
  v95 = v6;
  if (!v7)
  {
LABEL_27:
    v35 = *(v5 + 16);
    if (v35)
    {
      v36 = 0;
      v37 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
      v38 = v5 + 32;
      do
      {
        if (v36 >= *(v5 + 16))
        {
          goto LABEL_81;
        }

        sub_26BE2DA9C(v38, &v102);
        if ((v103 & 0x20) != 0)
        {
          if ((v102 & 0xC000000000000001) != 0)
          {
            v39 = MEMORY[0x26D6996F0](0);
          }

          else
          {
            if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_84;
            }

            v39 = *(v102 + 32);
          }

          v40 = v39;
          v41 = SecCertificateCopyURIs();
          if (!v41)
          {
            goto LABEL_93;
          }

          v42 = v41;

          v100 = v42;
          type metadata accessor for CFArray(0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
          if (swift_dynamicCast())
          {
            if (v105)
            {
              if (v105[2])
              {
                v44 = v105[4];
                v43 = v105[5];

                swift_beginAccess();
                v45 = *(v3 + v37);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v105 = *(v3 + v37);
                v47 = v105;
                *(v3 + v37) = 0x8000000000000000;
                v48 = sub_26BEBB618(v44, v43);
                v50 = v47[2];
                v51 = (v49 & 1) == 0;
                v23 = __OFADD__(v50, v51);
                v52 = v50 + v51;
                if (v23)
                {
                  goto LABEL_87;
                }

                v53 = v49;
                if (v47[3] >= v52)
                {
                  if (isUniquelyReferenced_nonNull_native)
                  {
                    goto LABEL_45;
                  }

                  v58 = v48;
                  sub_26BE6E178();
                  v48 = v58;
                  if ((v53 & 1) == 0)
                  {
                    goto LABEL_49;
                  }

LABEL_46:
                  v55 = v48;

                  v56 = v105;
                  v57 = v105[7] + 16 * v55;
                  *v57 = v98;
                  *(v57 + 8) = v97;
                }

                else
                {
                  sub_26BE6A5B8(v52, isUniquelyReferenced_nonNull_native);
                  v48 = sub_26BEBB618(v44, v43);
                  if ((v53 & 1) != (v54 & 1))
                  {
                    goto LABEL_95;
                  }

LABEL_45:
                  if (v53)
                  {
                    goto LABEL_46;
                  }

LABEL_49:
                  v56 = v105;
                  v105[(v48 >> 6) + 8] |= 1 << v48;
                  v59 = (v56[6] + 16 * v48);
                  *v59 = v44;
                  v59[1] = v43;
                  v60 = v56[7] + 16 * v48;
                  *v60 = v98;
                  *(v60 + 8) = v97;
                  v61 = v56[2];
                  v23 = __OFADD__(v61, 1);
                  v62 = v61 + 1;
                  if (v23)
                  {
                    goto LABEL_90;
                  }

                  v56[2] = v62;
                }

                v3 = v96;
                *(v96 + v37) = v56;
                swift_endAccess();
                v5 = v93;
                v6 = v95;
                goto LABEL_30;
              }
            }
          }
        }

LABEL_30:
        ++v36;
        result = sub_26BE2DAF8(&v102);
        v38 += 56;
      }

      while (v35 != v36);
    }

    v63 = *(v6 + 16);
    if (!v63)
    {
      return result;
    }

    v64 = 0;
    v92 = *(v6 + 16);
    v94 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
    for (i = v6 + 32; ; i += 112)
    {
      if (v64 >= *(v6 + 16))
      {
        goto LABEL_82;
      }

      sub_26BF7ED2C(i, &v102);
      sub_26BE2DA9C(&v104, &v100);
      sub_26BF7ED88(&v102);
      if ((v101 & 0x20) != 0)
      {
        if ((v100 & 0xC000000000000001) != 0)
        {
          v66 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_85;
          }

          v66 = *(v100 + 32);
        }

        v67 = v66;
        v68 = SecCertificateCopyURIs();
        if (!v68)
        {
          goto LABEL_94;
        }

        v69 = v68;

        v105 = v69;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v99)
          {
            if (v99[2])
            {
              v71 = v99[4];
              v70 = v99[5];

              sub_26BE2DAF8(&v100);
              swift_beginAccess();
              v72 = *(v3 + v94);
              v73 = swift_isUniquelyReferenced_nonNull_native();
              v105 = *(v3 + v94);
              v74 = v105;
              *(v3 + v94) = 0x8000000000000000;
              v75 = sub_26BEBB618(v71, v70);
              v77 = v74[2];
              v78 = (v76 & 1) == 0;
              v23 = __OFADD__(v77, v78);
              v79 = v77 + v78;
              if (v23)
              {
                goto LABEL_88;
              }

              v80 = v76;
              if (v74[3] >= v79)
              {
                if (v73)
                {
                  v63 = v92;
                  if ((v76 & 1) == 0)
                  {
                    goto LABEL_76;
                  }
                }

                else
                {
                  v85 = v75;
                  sub_26BE6E178();
                  v75 = v85;
                  v63 = v92;
                  if ((v80 & 1) == 0)
                  {
                    goto LABEL_76;
                  }
                }
              }

              else
              {
                sub_26BE6A5B8(v79, v73);
                v75 = sub_26BEBB618(v71, v70);
                if ((v80 & 1) != (v81 & 1))
                {
                  goto LABEL_95;
                }

                v63 = v92;
                if ((v80 & 1) == 0)
                {
LABEL_76:
                  v83 = v105;
                  v105[(v75 >> 6) + 8] |= 1 << v75;
                  v86 = (v83[6] + 16 * v75);
                  *v86 = v71;
                  v86[1] = v70;
                  v87 = v83[7] + 16 * v75;
                  *v87 = v98;
                  *(v87 + 8) = v97;
                  v88 = v83[2];
                  v23 = __OFADD__(v88, 1);
                  v89 = v88 + 1;
                  if (v23)
                  {
                    goto LABEL_91;
                  }

                  v83[2] = v89;
                  goto LABEL_78;
                }
              }

              v82 = v75;

              v83 = v105;
              v84 = v105[7] + 16 * v82;
              *v84 = v98;
              *(v84 + 8) = v97;
LABEL_78:
              v3 = v96;
              *(v96 + v94) = v83;
              result = swift_endAccess();
              v6 = v95;
              goto LABEL_56;
            }
          }
        }
      }

      result = sub_26BE2DAF8(&v100);
LABEL_56:
      if (v63 == ++v64)
      {
        return result;
      }
    }
  }

  v8 = 0;
  v90 = *result;
  v91 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastUpdatedLeaf;
  v9 = v4 + 32;
  while (v8 < *(v4 + 16))
  {
    sub_26BE2DA9C(v9, &v102);
    if ((v103 & 0x20) != 0)
    {
      if ((v102 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v102 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_83;
        }

        v10 = *(v102 + 32);
      }

      v11 = v10;
      v12 = SecCertificateCopyURIs();
      if (!v12)
      {
        goto LABEL_92;
      }

      v13 = v12;

      v100 = v13;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (swift_dynamicCast())
      {
        if (v105)
        {
          if (v105[2])
          {
            v15 = v105[4];
            v14 = v105[5];

            swift_beginAccess();
            v16 = *(v3 + v91);
            v17 = swift_isUniquelyReferenced_nonNull_native();
            v105 = *(v3 + v91);
            v18 = v105;
            *(v3 + v91) = 0x8000000000000000;
            v19 = sub_26BEBB618(v15, v14);
            v21 = v18[2];
            v22 = (v20 & 1) == 0;
            v23 = __OFADD__(v21, v22);
            v24 = v21 + v22;
            if (v23)
            {
              goto LABEL_86;
            }

            v25 = v20;
            if (v18[3] >= v24)
            {
              if (v17)
              {
                v4 = v90;
                if ((v20 & 1) == 0)
                {
                  goto LABEL_24;
                }
              }

              else
              {
                v30 = v19;
                sub_26BE6E178();
                v19 = v30;
                v4 = v90;
                if ((v25 & 1) == 0)
                {
                  goto LABEL_24;
                }
              }
            }

            else
            {
              sub_26BE6A5B8(v24, v17);
              v19 = sub_26BEBB618(v15, v14);
              if ((v25 & 1) != (v26 & 1))
              {
                goto LABEL_95;
              }

              v4 = v90;
              if ((v25 & 1) == 0)
              {
LABEL_24:
                v28 = v105;
                v105[(v19 >> 6) + 8] |= 1 << v19;
                v31 = (v28[6] + 16 * v19);
                *v31 = v15;
                v31[1] = v14;
                v32 = v28[7] + 16 * v19;
                *v32 = v98;
                *(v32 + 8) = v97;
                v33 = v28[2];
                v23 = __OFADD__(v33, 1);
                v34 = v33 + 1;
                if (v23)
                {
                  goto LABEL_89;
                }

                v28[2] = v34;
                goto LABEL_26;
              }
            }

            v27 = v19;

            v28 = v105;
            v29 = v105[7] + 16 * v27;
            *v29 = v98;
            *(v29 + 8) = v97;
LABEL_26:
            v3 = v96;
            *(v96 + v91) = v28;
            swift_endAccess();
            v5 = v93;
            v6 = v95;
            goto LABEL_4;
          }
        }
      }
    }

LABEL_4:
    ++v8;
    result = sub_26BE2DAF8(&v102);
    v9 += 56;
    if (v7 == v8)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BF4E118@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v141 = a1[1];
  v136 = a1[2];
  v137 = a1[3];
  v133 = *(a1 + 32);
  v132 = a1[5];
  v131 = *(a1 + 48);
  v158 = *(*a1 + 16);
  if (v158)
  {
    v3 = 0;
    v4 = v2 + 32;
    v138 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v3 >= *(v2 + 16))
      {
        goto LABEL_139;
      }

      sub_26BE2DA9C(v4, &v151);
      if ((HIBYTE(v151) & 0x20) == 0)
      {
        goto LABEL_4;
      }

      if ((v151 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v5 = *(v151 + 32);
      }

      v6 = v5;
      v7 = SecCertificateCopyURIs();
      if (!v7)
      {
        goto LABEL_151;
      }

      v8 = v7;

      *&v144 = v8;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
      if (!swift_dynamicCast() || !v157[0])
      {
        goto LABEL_4;
      }

      if (*(v157[0] + 16))
      {
        break;
      }

LABEL_4:
      ++v3;
      sub_26BE2DAF8(&v151);
      v4 += 56;
      if (v158 == v3)
      {
        goto LABEL_26;
      }
    }

    v10 = *(v157[0] + 32);
    v9 = *(v157[0] + 40);

    sub_26BE2DA9C(&v151, &v144);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157[0] = v138;
    v12 = sub_26BEBB618(v10, v9);
    v14 = v138[2];
    v15 = (v13 & 1) == 0;
    v16 = __OFADD__(v14, v15);
    v17 = v14 + v15;
    if (v16)
    {
      goto LABEL_147;
    }

    v18 = v13;
    if (v138[3] >= v17)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = v12;
        sub_26BE6FBC8();
        v12 = v21;
        if ((v18 & 1) == 0)
        {
LABEL_23:
          v22 = v157[0];
          *(v157[0] + 8 * (v12 >> 6) + 64) |= 1 << v12;
          v23 = (v22[6] + 16 * v12);
          *v23 = v10;
          v23[1] = v9;
          v24 = v22[7] + 56 * v12;
          v25 = v147;
          v27 = v145;
          v26 = v146;
          *v24 = v144;
          *(v24 + 16) = v27;
          *(v24 + 32) = v26;
          *(v24 + 48) = v25;
          v28 = v22[2];
          v16 = __OFADD__(v28, 1);
          v29 = v28 + 1;
          if (v16)
          {
            goto LABEL_149;
          }

          v138 = v22;
          v22[2] = v29;
          goto LABEL_4;
        }

        goto LABEL_20;
      }
    }

    else
    {
      sub_26BE6D2E0(v17, isUniquelyReferenced_nonNull_native);
      v12 = sub_26BEBB618(v10, v9);
      if ((v18 & 1) != (v19 & 1))
      {
        goto LABEL_155;
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_20:
    v20 = v12;

    v138 = v157[0];
    sub_26BE41628(&v144, *(v157[0] + 56) + 56 * v20);
    goto LABEL_4;
  }

  v138 = MEMORY[0x277D84F98];
LABEL_26:
  v30 = v141;
  v143 = *(v141 + 16);
  if (v143)
  {
    v31 = 0;
    v32 = v141 + 32;
    v33 = MEMORY[0x277D84F98];
    v34 = &qword_28045E4A0;
    v135 = v2;
    while (1)
    {
      if (v31 >= *(v30 + 16))
      {
        goto LABEL_140;
      }

      sub_26BE2DA9C(v32, &v151);
      if ((HIBYTE(v151) & 0x20) == 0)
      {
        goto LABEL_29;
      }

      if ((v151 & 0xC000000000000001) != 0)
      {
        v35 = MEMORY[0x26D6996F0](0);
      }

      else
      {
        if (!*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_144;
        }

        v35 = *(v151 + 32);
      }

      v36 = v35;
      v37 = SecCertificateCopyURIs();
      if (!v37)
      {
        goto LABEL_152;
      }

      v38 = v37;

      *&v144 = v38;
      type metadata accessor for CFArray(0);
      __swift_instantiateConcreteTypeFromMangledNameV2(v34, &qword_26C00E210);
      if (!swift_dynamicCast() || !v157[0])
      {
        goto LABEL_29;
      }

      if (*(v157[0] + 16))
      {
        break;
      }

LABEL_29:
      ++v31;
      sub_26BE2DAF8(&v151);
      v32 += 56;
      if (v143 == v31)
      {
        goto LABEL_53;
      }
    }

    v39 = v34;
    v41 = *(v157[0] + 32);
    v40 = *(v157[0] + 40);

    sub_26BE2DA9C(&v151, &v144);
    v42 = v33;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    v157[0] = v42;
    v45 = sub_26BEBB618(v41, v40);
    v46 = v42[2];
    v47 = (v44 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      goto LABEL_148;
    }

    v49 = v44;
    if (v42[3] < v48)
    {
      sub_26BE6D2E0(v48, v43);
      v50 = sub_26BEBB618(v41, v40);
      if ((v49 & 1) != (v51 & 1))
      {
        goto LABEL_155;
      }

      v45 = v50;
      if ((v49 & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_47:

      v33 = v157[0];
      sub_26BE41628(&v144, *(v157[0] + 56) + 56 * v45);
LABEL_48:
      v30 = v141;
      v34 = v39;
      v2 = v135;
      goto LABEL_29;
    }

    if (v43)
    {
      if (v44)
      {
        goto LABEL_47;
      }
    }

    else
    {
      sub_26BE6FBC8();
      if (v49)
      {
        goto LABEL_47;
      }
    }

LABEL_43:
    v33 = v157[0];
    *(v157[0] + 8 * (v45 >> 6) + 64) |= 1 << v45;
    v52 = (v33[6] + 16 * v45);
    *v52 = v41;
    v52[1] = v40;
    v53 = v33[7] + 56 * v45;
    v54 = v147;
    v56 = v145;
    v55 = v146;
    *v53 = v144;
    *(v53 + 16) = v56;
    *(v53 + 32) = v55;
    *(v53 + 48) = v54;
    v57 = v33[2];
    v16 = __OFADD__(v57, 1);
    v58 = v57 + 1;
    if (v16)
    {
      goto LABEL_150;
    }

    v33[2] = v58;
    goto LABEL_48;
  }

  v33 = MEMORY[0x277D84F98];
LABEL_53:

  v60 = sub_26BEC1EFC(v59);

  v62 = sub_26BEBCD0C(v61, v60);
  v140 = v33;

  v142 = v62;
  if (v158)
  {
    v63 = 0;
    v139 = v62 + 56;
    v64 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v63 >= *(v2 + 16))
      {
        goto LABEL_141;
      }

      sub_26BE2DA9C(v2 + 32 + 56 * v63, &v144);
      if ((HIBYTE(v144) & 0x20) != 0)
      {
        if ((v144 & 0xC000000000000001) != 0)
        {
          v65 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_145;
          }

          v65 = *(v144 + 32);
        }

        v66 = v65;
        v67 = SecCertificateCopyURIs();
        if (!v67)
        {
          goto LABEL_153;
        }

        v68 = v67;

        *&v151 = v68;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v156[0])
          {
            if (*(v156[0] + 16) && (v69 = *(v156[0] + 32), v70 = *(v156[0] + 40), , , *(v62 + 16)))
            {
              v71 = *(v62 + 40);
              sub_26C00B05C();
              sub_26C00A58C();
              v72 = sub_26C00B0CC();
              v73 = -1 << *(v62 + 32);
              v74 = v72 & ~v73;
              if ((*(v139 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74))
              {
                v75 = ~v73;
                while (1)
                {
                  v76 = (*(v142 + 48) + 16 * v74);
                  v77 = *v76 == v69 && v76[1] == v70;
                  if (v77 || (sub_26C00AF2C() & 1) != 0)
                  {
                    break;
                  }

                  v74 = (v74 + 1) & v75;
                  if (((*(v139 + ((v74 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v74) & 1) == 0)
                  {
                    goto LABEL_73;
                  }
                }

                sub_26BE2DAF8(&v144);
                v62 = v142;
                goto LABEL_80;
              }

LABEL_73:

              v62 = v142;
            }

            else
            {
            }
          }
        }
      }

      v151 = v144;
      v152 = v145;
      v153 = v146;
      v154 = v147;
      v78 = swift_isUniquelyReferenced_nonNull_native();
      v157[0] = v64;
      if ((v78 & 1) == 0)
      {
        sub_26BECBA54(0, *(v64 + 16) + 1, 1);
        v64 = v157[0];
      }

      v80 = *(v64 + 16);
      v79 = *(v64 + 24);
      if (v80 >= v79 >> 1)
      {
        sub_26BECBA54((v79 > 1), v80 + 1, 1);
        v64 = v157[0];
      }

      *(v64 + 16) = v80 + 1;
      v81 = v64 + 56 * v80;
      v82 = v151;
      v83 = v152;
      v84 = v153;
      *(v81 + 80) = v154;
      *(v81 + 48) = v83;
      *(v81 + 64) = v84;
      *(v81 + 32) = v82;
LABEL_80:
      if (++v63 == v158)
      {
        goto LABEL_85;
      }
    }
  }

  v64 = MEMORY[0x277D84F90];
LABEL_85:

  if (v143)
  {
    v85 = 0;
    v158 = v142 + 56;
    v86 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v85 >= *(v141 + 16))
      {
        goto LABEL_142;
      }

      sub_26BE2DA9C(v141 + 32 + 56 * v85, &v144);
      if ((HIBYTE(v144) & 0x20) != 0)
      {
        if ((v144 & 0xC000000000000001) != 0)
        {
          v87 = MEMORY[0x26D6996F0](0);
        }

        else
        {
          if (!*((v144 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_146;
          }

          v87 = *(v144 + 32);
        }

        v88 = v87;
        v89 = SecCertificateCopyURIs();
        if (!v89)
        {
          goto LABEL_154;
        }

        v90 = v89;

        *&v151 = v90;
        type metadata accessor for CFArray(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
        if (swift_dynamicCast())
        {
          if (v156[0])
          {
            if (*(v156[0] + 16))
            {
              v91 = *(v156[0] + 32);
              v92 = *(v156[0] + 40);

              if (*(v142 + 16))
              {
                v93 = *(v142 + 40);
                sub_26C00B05C();
                sub_26C00A58C();
                v94 = sub_26C00B0CC();
                v95 = -1 << *(v142 + 32);
                v96 = v94 & ~v95;
                if ((*(v158 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96))
                {
                  v97 = ~v95;
                  while (1)
                  {
                    v98 = (*(v142 + 48) + 16 * v96);
                    v99 = *v98 == v91 && v98[1] == v92;
                    if (v99 || (sub_26C00AF2C() & 1) != 0)
                    {
                      break;
                    }

                    v96 = (v96 + 1) & v97;
                    if (((*(v158 + ((v96 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v96) & 1) == 0)
                    {
                      goto LABEL_105;
                    }
                  }

                  sub_26BE2DAF8(&v144);
                  goto LABEL_111;
                }
              }
            }

LABEL_105:
          }
        }
      }

      v151 = v144;
      v152 = v145;
      v153 = v146;
      v154 = v147;
      v100 = swift_isUniquelyReferenced_nonNull_native();
      v157[0] = v86;
      if ((v100 & 1) == 0)
      {
        sub_26BECBA54(0, *(v86 + 16) + 1, 1);
        v86 = v157[0];
      }

      v102 = *(v86 + 16);
      v101 = *(v86 + 24);
      if (v102 >= v101 >> 1)
      {
        sub_26BECBA54((v101 > 1), v102 + 1, 1);
        v86 = v157[0];
      }

      *(v86 + 16) = v102 + 1;
      v103 = v86 + 56 * v102;
      v104 = v151;
      v105 = v152;
      v106 = v153;
      *(v103 + 80) = v154;
      *(v103 + 48) = v105;
      *(v103 + 64) = v106;
      *(v103 + 32) = v104;
LABEL_111:
      if (++v85 == v143)
      {
        goto LABEL_116;
      }
    }
  }

  v86 = MEMORY[0x277D84F90];
LABEL_116:

  v107 = 0;
  v108 = 1 << *(v142 + 32);
  v109 = -1;
  if (v108 < 64)
  {
    v109 = ~(-1 << v108);
  }

  v110 = v109 & *(v142 + 56);
  v111 = (v108 + 63) >> 6;
  while (v110)
  {
    v112 = v110;
LABEL_127:
    v110 = (v112 - 1) & v112;
    if (v140[2])
    {
      v114 = (*(v142 + 48) + ((v107 << 10) | (16 * __clz(__rbit64(v112)))));
      v116 = *v114;
      v115 = v114[1];

      v117 = sub_26BEBB618(v116, v115);
      if (v118)
      {
        sub_26BE2DA9C(v140[7] + 56 * v117, v157);
        if (!v138[2])
        {
          sub_26BE2DAF8(v157);
          goto LABEL_120;
        }

        v119 = sub_26BEBB618(v116, v115);
        v121 = v120;

        if (v121)
        {
          sub_26BE2DA9C(v138[7] + 56 * v119, v156);
          sub_26BE2DA9C(v157, &v151);
          sub_26BE2DA9C(v156, &v155);
          sub_26BF7ED2C(&v151, &v144);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v137 = sub_26BEECFC4(0, *(v137 + 2) + 1, 1, v137);
          }

          v123 = *(v137 + 2);
          v122 = *(v137 + 3);
          if (v123 >= v122 >> 1)
          {
            v137 = sub_26BEECFC4((v122 > 1), v123 + 1, 1, v137);
          }

          sub_26BF7ED88(&v151);
          sub_26BE2DAF8(v156);
          sub_26BE2DAF8(v157);
          *(v137 + 2) = v123 + 1;
          v124 = &v137[112 * v123];
          v126 = v145;
          v125 = v146;
          *(v124 + 2) = v144;
          *(v124 + 3) = v126;
          *(v124 + 4) = v125;
          v127 = v150;
          v129 = v147;
          v128 = v148;
          *(v124 + 7) = v149;
          *(v124 + 8) = v127;
          *(v124 + 5) = v129;
          *(v124 + 6) = v128;
        }

        else
        {
          sub_26BE2DAF8(v157);
        }
      }

      else
      {
LABEL_120:
      }
    }
  }

  while (1)
  {
    v113 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v113 >= v111)
    {

      *(a2 + 32) = v133;
      *(a2 + 40) = v132;
      *(a2 + 48) = v131;
      *a2 = v64;
      *(a2 + 8) = v86;
      *(a2 + 16) = v136;
      *(a2 + 24) = v137;
    }

    v112 = *(v142 + 56 + 8 * v113);
    ++v107;
    if (v112)
    {
      v107 = v113;
      goto LABEL_127;
    }
  }

  __break(1u);
LABEL_139:
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
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

uint64_t sub_26BF4EE40(uint64_t a1, char *a2)
{
  v280 = a2;
  v272 = _s21RCSParticipantKeyRollVMa();
  v263 = *(v272 - 8);
  v3 = *(v263 + 64);
  MEMORY[0x28223BE20](v272);
  v271 = &v240 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = type metadata accessor for MLS.SubjectPublicKeyInfo();
  v274 = *(v269 - 8);
  v5 = *(v274 + 64);
  v6 = MEMORY[0x28223BE20](v269);
  v266 = &v240 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v278 = &v240 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v262 = &v240 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v270 = &v240 - v13;
  MEMORY[0x28223BE20](v12);
  v273 = &v240 - v14;
  v267 = _s18RCSParticipantInfoVMa();
  v15 = *(*(v267 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v267);
  v265 = &v240 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v264 = &v240 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v277 = &v240 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v240 - v23;
  v25 = MEMORY[0x28223BE20](v22);
  v27 = &v240 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v240 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EE68, &unk_26C016A90);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v30 - 8);
  v34 = &v240 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v240 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v240 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v240 - v41;
  v43 = sub_26C005704(MEMORY[0x277D84F90]);
  v44 = *(a1 + 40);
  v45 = *(a1 + 48);
  v46 = *(a1 + 56);
  v283 = a1;
  v47 = v281;
  v48 = sub_26BFEB264(sub_26BE2DB4C, v282, *(a1 + 32), v44, v45, v46);
  if (v47)
  {
    goto LABEL_2;
  }

  v258 = v37;
  v256 = v29;
  v261 = v27;
  v257 = v34;
  v255 = v24;
  v259 = v40;
  v260 = v42;
  v268 = 0;
  v281 = *(v48 + 2);
  if (v281)
  {
    v24 = 0;
    v49 = (v48 + 32);
    v50 = v277;
    v51 = v278;
    v52 = v43;
    v53 = v280;
    v54 = v48;
    v279 = v48;
    while (1)
    {
      if (v24 >= *(v54 + 16))
      {
        __break(1u);
LABEL_140:
        sub_26BF7F05C(v273, type metadata accessor for MLS.SubjectPublicKeyInfo);
LABEL_141:
        v37 = v245;

        sub_26BE2E258(v54, &qword_28045EE68, &unk_26C016A90);
        sub_26BE01654();
        swift_allocError();
        *v238 = 12;
        v238[112] = 9;
        swift_willThrow();
        sub_26BE0489C(v24, v37);
        sub_26BE2E258(v259, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2E258(v260, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2DBC4(&v286);

        return v37;
      }

      sub_26BE2DB68(v49, &v286);
      if ((v287 & 0x2000000000000000) != 0)
      {
        break;
      }

LABEL_7:
      ++v24;
      sub_26BE2DBC4(&v286);
      v49 += 56;
      if (v281 == v24)
      {
        goto LABEL_32;
      }
    }

    if ((v286 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x26D6996F0](0);
    }

    else
    {
      if (!*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_143:
        __break(1u);
LABEL_144:

        sub_26BE0489C(v24, v37);
LABEL_148:

        sub_26BE2DBC4(&v286);

        return v37;
      }

      v55 = *(v286 + 32);
    }

    v56 = v55;
    v57 = SecCertificateCopyURIs();
    if (!v57)
    {
      goto LABEL_157;
    }

    v58 = v57;

    v284 = v58;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
      v53 = v280;
LABEL_6:
      v54 = v279;
      goto LABEL_7;
    }

    v54 = v279;
    v53 = v280;
    if (!v288)
    {
      goto LABEL_7;
    }

    if (!v288[2])
    {

      goto LABEL_7;
    }

    v37 = v288[4];
    v59 = v288[5];

    v60 = v286;
    v275 = v287;
    sub_26BE04890(v286, v287);
    v61 = v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v284 = v52;
    v64 = sub_26BEBB618(v37, v59);
    v65 = v52[2];
    v66 = (v63 & 1) == 0;
    v67 = v65 + v66;
    if (__OFADD__(v65, v66))
    {
      goto LABEL_150;
    }

    v68 = v63;
    if (v61[3] < v67)
    {
      sub_26BE6D024(v67, isUniquelyReferenced_nonNull_native);
      v69 = sub_26BEBB618(v37, v59);
      if ((v68 & 1) != (v70 & 1))
      {
        goto LABEL_159;
      }

      v64 = v69;
      v51 = v278;
      v53 = v280;
      if ((v68 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_26:

      v52 = v284;
      v77 = (v284[7] + 16 * v64);
      v78 = *v77;
      v79 = v77[1];
      v80 = v275;
      *v77 = v60;
      v77[1] = v80;
      sub_26BE0489C(v78, v79);
LABEL_27:
      v50 = v277;
      goto LABEL_6;
    }

    v53 = v280;
    if (isUniquelyReferenced_nonNull_native)
    {
      v51 = v278;
      if (v63)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_26BE6FA44();
      v53 = v280;
      v51 = v278;
      if (v68)
      {
        goto LABEL_26;
      }
    }

LABEL_21:
    v52 = v284;
    v284[(v64 >> 6) + 8] |= 1 << v64;
    v71 = (v52[6] + 16 * v64);
    *v71 = v37;
    v71[1] = v59;
    v72 = (v52[7] + 16 * v64);
    v73 = v275;
    *v72 = v60;
    v72[1] = v73;
    v74 = v52[2];
    v75 = __OFADD__(v74, 1);
    v76 = v74 + 1;
    if (v75)
    {
      goto LABEL_151;
    }

    v52[2] = v76;
    goto LABEL_27;
  }

  v50 = v277;
  v51 = v278;
  v52 = v43;
  v53 = v280;
LABEL_32:
  v279 = v52;

  v37 = sub_26C0047C0(MEMORY[0x277D84F90]);
  v81 = *(v276 + 152);
  v82 = *(v276 + 24);
  v83 = *(v53 + 5);
  v84 = *(v53 + 12);
  v85 = *(v53 + 7);
  v86 = *(v53 + 16);
  MEMORY[0x28223BE20](v37);
  *(&v240 - 2) = v53;
  v87 = v268;
  v92 = sub_26BFEB264(sub_26BF7F1F4, (&v240 - 4), v88, v89, v90, v91);
  if (v87)
  {

    return v37;
  }

  v95 = v92;
  v254 = v82;
  v96 = *(v92 + 2);
  if (!v96)
  {
LABEL_138:

LABEL_2:

    return v37;
  }

  v252 = v81;
  v268 = 0;
  v97 = 0;
  v244 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_lastParticipantKeyRollEpoch;
  v98 = v92 + 32;
  v247 = (v274 + 56);
  v246 = (v274 + 48);
  *&v93 = 136315650;
  v242 = v93;
  v99 = v260;
  v280 = v92 + 32;
  v281 = v92;
  v253 = v96;
  while (1)
  {
    if (v97 >= *(v95 + 2))
    {
      goto LABEL_143;
    }

    sub_26BE2DB68(&v98[56 * v97], &v286);
    if ((v287 & 0x2000000000000000) != 0)
    {
      break;
    }

LABEL_41:
    ++v97;
    sub_26BE2DBC4(&v286);
    if (v97 == v96)
    {
      goto LABEL_138;
    }
  }

  if ((v286 & 0xC000000000000001) != 0)
  {
    v104 = MEMORY[0x26D6996F0](0);
LABEL_47:
    v105 = v104;
    v106 = SecCertificateCopyURIs();
    if (!v106)
    {
      goto LABEL_158;
    }

    v107 = v106;

    v284 = v107;
    type metadata accessor for CFArray(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4A0, &qword_26C00E210);
    if (!swift_dynamicCast())
    {
LABEL_40:
      v98 = v280;
      v95 = v281;
      goto LABEL_41;
    }

    v108 = v261;
    v95 = v281;
    if (!v288)
    {
      v98 = v280;
      goto LABEL_41;
    }

    if (!v288[2])
    {

      v98 = v280;
      goto LABEL_41;
    }

    v109 = v50;
    v275 = v37;
    v110 = v288[4];
    v111 = v288[5];

    v112 = v279;
    if (!*(v279 + 2) || (v113 = sub_26BEBB618(v110, v111), (v114 & 1) == 0))
    {
      v24 = v51;
      v117 = v275;
      v118 = swift_isUniquelyReferenced_nonNull_native();
      v284 = v117;
      v119 = v110;
      v120 = v110;
      v121 = v111;
      v122 = sub_26BEBB618(v120, v111);
      v124 = *(v117 + 16);
      v125 = (v123 & 1) == 0;
      v75 = __OFADD__(v124, v125);
      v126 = v124 + v125;
      if (v75)
      {
        goto LABEL_152;
      }

      v127 = v123;
      v50 = v109;
      if (*(v117 + 24) >= v126)
      {
        v95 = v281;
        if ((v118 & 1) == 0)
        {
          v236 = v122;
          sub_26BE6E178();
          v95 = v281;
          v122 = v236;
        }

        v99 = v260;
        if ((v127 & 1) == 0)
        {
          goto LABEL_60;
        }
      }

      else
      {
        sub_26BE6A5B8(v126, v118);
        v122 = sub_26BEBB618(v119, v121);
        if ((v127 & 1) != (v128 & 1))
        {
          goto LABEL_159;
        }

        v99 = v260;
        v95 = v281;
        if ((v127 & 1) == 0)
        {
LABEL_60:
          v129 = v284;
          v284[(v122 >> 6) + 8] |= 1 << v122;
          v130 = (v129[6] + 16 * v122);
          *v130 = v119;
          v130[1] = v121;
          v131 = v129[7] + 16 * v122;
          *v131 = v252;
          *(v131 + 8) = v254;
          v132 = v129[2];
          v75 = __OFADD__(v132, 1);
          v133 = v132 + 1;
          if (v75)
          {
            goto LABEL_153;
          }

          v37 = v129;
          v129[2] = v133;
LABEL_67:
          v98 = v280;
          v51 = v24;
LABEL_68:
          v96 = v253;
          goto LABEL_41;
        }
      }

      v134 = v122;

      v37 = v284;
      v135 = v284[7] + 16 * v134;
      *v135 = v252;
      *(v135 + 8) = v254;
      goto LABEL_67;
    }

    v250 = v110;
    v248 = v111;
    v115 = (*(v112 + 7) + 16 * v113);
    v24 = *v115;
    v37 = v115[1];
    v251 = v286;
    v249 = v287;
    if ((v37 & 0x2000000000000000) != 0)
    {
      v116 = v109;
      if ((v24 & 0xC000000000000001) != 0)
      {

        v137 = MEMORY[0x26D6996F0](0, v24);
      }

      else
      {
        if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_154;
        }

        v136 = *(v24 + 32);
        sub_26BE04890(v24, v37);
        v137 = v136;
      }

      v138 = v268;
      sub_26BECF754(v137);
      v268 = v138;
      v99 = v260;
      if (v138)
      {
        goto LABEL_144;
      }

      v139 = v108;
      v140 = v256;
      sub_26BF7F124(v139, v256, _s18RCSParticipantInfoVMa);
      sub_26BE2E1F0(v140 + *(v267 + 32), v99, &qword_28045EE68, &unk_26C016A90);
      sub_26BF7F05C(v140, _s18RCSParticipantInfoVMa);
    }

    else
    {
      (*v247)(v99, 1, 1, v269);
      sub_26BE00608(v24, v37);
      v116 = v109;
    }

    v54 = v258;
    v245 = v37;
    if ((v249 & 0x2000000000000000) != 0)
    {
      if ((v251 & 0xC000000000000001) != 0)
      {
        v142 = MEMORY[0x26D6996F0](0, v251);
      }

      else
      {
        if (!*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_155;
        }

        v142 = *(v251 + 32);
      }

      v143 = v268;
      sub_26BECF754(v142);
      v268 = v143;
      if (v143)
      {

        sub_26BE0489C(v24, v37);
        v239 = v99;
LABEL_147:
        sub_26BE2E258(v239, &qword_28045EE68, &unk_26C016A90);
        goto LABEL_148;
      }

      v144 = v255;
      sub_26BF7F124(v116, v255, _s18RCSParticipantInfoVMa);
      sub_26BE2E1F0(v144 + *(v267 + 32), v259, &qword_28045EE68, &unk_26C016A90);
      sub_26BF7F05C(v144, _s18RCSParticipantInfoVMa);
      v141 = v269;
    }

    else
    {
      v141 = v269;
      (*v247)(v259, 1, 1, v269);
    }

    sub_26BE2E1F0(v99, v54, &qword_28045EE68, &unk_26C016A90);
    v145 = *v246;
    if ((*v246)(v54, 1, v141) == 1)
    {
      goto LABEL_141;
    }

    sub_26BF7F124(v54, v273, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v54 = v257;
    sub_26BE2E1F0(v259, v257, &qword_28045EE68, &unk_26C016A90);
    if (v145(v54, 1, v141) == 1)
    {
      goto LABEL_140;
    }

    v146 = v270;
    sub_26BF7F124(v54, v270, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v243 = v24;
    if ((v249 & 0x2000000000000000) == 0)
    {
      v147 = _s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(v273, v146);
      v37 = v266;
      v51 = v278;
      if (v147)
      {
        v99 = v260;
LABEL_92:

        v155 = *(v276 + v244);
        v156 = v250;
        if (*(v155 + 16))
        {
          v157 = *(v276 + v244);

          v158 = sub_26BEBB618(v156, v248);
          if (v159)
          {
            v160 = (*(v155 + 56) + 16 * v158);
            v24 = *v160;
            v161 = *(v160 + 1);
          }

          else
          {
            v24 = 0;
            v161 = 0;
          }
        }

        else
        {
          v24 = 0;
          v161 = 0;
        }

        if (qword_28045DF80 != -1)
        {
          swift_once();
        }

        v170 = sub_26C009A5C();
        __swift_project_value_buffer(v170, qword_280478EE8);
        v171 = v248;

        v172 = sub_26C009A3C();
        v173 = sub_26C00A9FC();

        if (os_log_type_enabled(v172, v173))
        {
          v174 = swift_slowAlloc();
          LODWORD(v249) = v173;
          v175 = v174;
          v251 = swift_slowAlloc();
          v288 = v251;
          *v175 = v242;

          v241 = v172;
          v176 = sub_26BE3D034();
          v178 = v177;

          v179 = sub_26BE29740(v176, v178, &v288);

          *(v175 + 4) = v179;
          *(v175 + 12) = 2080;
          *(v175 + 14) = sub_26BE29740(v250, v171, &v288);
          *(v175 + 22) = 2080;
          LODWORD(v284) = v24;
          v285 = v161;
          v180 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
          v182 = sub_26BE29740(v180, v181, &v288);

          *(v175 + 24) = v182;
          v99 = v260;
          v183 = v241;
          _os_log_impl(&dword_26BDFE000, v241, v249, "%s: %s was not rolled, keeping at %s", v175, 0x20u);
          v184 = v251;
          swift_arrayDestroy();
          v185 = v184;
          v186 = v250;
          MEMORY[0x26D69A4E0](v185, -1, -1);
          MEMORY[0x26D69A4E0](v175, -1, -1);

          v187 = v277;
        }

        else
        {

          v187 = v277;
          v186 = v250;
        }

        v188 = v275;
        v189 = swift_isUniquelyReferenced_nonNull_native();
        v284 = v188;
        sub_26BE57234(v24, v161, v186, v171, v189);
        sub_26BE0489C(v243, v245);

        sub_26BF7F05C(v270, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF7F05C(v273, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BE2E258(v259, &qword_28045EE68, &unk_26C016A90);
        sub_26BE2E258(v99, &qword_28045EE68, &unk_26C016A90);
        v37 = v284;
        v98 = v280;
        v95 = v281;
        v50 = v187;
        goto LABEL_68;
      }

      v24 = &unk_26C016A90;
      v162 = MEMORY[0x277D84F90];
      goto LABEL_115;
    }

    v99 = v260;
    v37 = v266;
    v51 = v278;
    if ((v251 & 0xC000000000000001) != 0)
    {
      v237 = MEMORY[0x26D6996F0](0, v251);
    }

    else
    {
      if (!*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_156;
      }

      v237 = *(v251 + 32);
    }

    v148 = v273;
    v149 = v265;
    v150 = v268;
    sub_26BECF754(v237);
    v268 = v150;
    v151 = v267;
    if (v150)
    {

      sub_26BE0489C(v24, v245);

      sub_26BF7F05C(v270, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BF7F05C(v148, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v259, &qword_28045EE68, &unk_26C016A90);
      v239 = v99;
      goto LABEL_147;
    }

    v152 = v149;
    v153 = v264;
    sub_26BF7F124(v152, v264, _s18RCSParticipantInfoVMa);
    v154 = *(v153 + *(v151 + 36));

    sub_26BF7F05C(v153, _s18RCSParticipantInfoVMa);
    if (_s8SwiftMLS0B0O20SubjectPublicKeyInfoV2eeoiySbAE_AEtFZ_0(v148, v270))
    {
      goto LABEL_92;
    }

    if (v154)
    {
      v163 = *(v154 + 16);
      if (v163)
      {
        v284 = MEMORY[0x277D84F90];
        sub_26BECBAF4(0, v163, 0);
        v162 = v284;
        v164 = (*(v263 + 80) + 32) & ~*(v263 + 80);
        v249 = v154;
        v165 = v154 + v164;
        v251 = *(v263 + 72);
        v166 = v262;
        do
        {
          v167 = v271;
          sub_26BF7F0BC(v165, v271, _s21RCSParticipantKeyRollVMa);
          sub_26BF7F0BC(v167 + *(v272 + 24), v166, type metadata accessor for MLS.SubjectPublicKeyInfo);
          sub_26BF7F05C(v167, _s21RCSParticipantKeyRollVMa);
          v284 = v162;
          v169 = *(v162 + 16);
          v168 = *(v162 + 24);
          if (v169 >= v168 >> 1)
          {
            sub_26BECBAF4(v168 > 1, v169 + 1, 1);
            v162 = v284;
          }

          *(v162 + 16) = v169 + 1;
          sub_26BF7F124(v166, v162 + ((*(v274 + 80) + 32) & ~*(v274 + 80)) + *(v274 + 72) * v169, type metadata accessor for MLS.SubjectPublicKeyInfo);
          v165 += v251;
          --v163;
        }

        while (v163);

        v37 = v266;
        v51 = v278;
        goto LABEL_114;
      }
    }

    v162 = MEMORY[0x277D84F90];
LABEL_114:
    v24 = &unk_26C016A90;
LABEL_115:
    v190 = *(v162 + 16);
    v191 = sub_26BF7EFF4(&qword_28045FB18, type metadata accessor for MLS.SubjectPublicKeyInfo);
    v284 = MEMORY[0x26D699320](v190, v269, v191);
    v192 = *(v162 + 16);
    if (v192)
    {
      v193 = v162 + ((*(v274 + 80) + 32) & ~*(v274 + 80));
      v194 = *(v274 + 72);
      do
      {
        sub_26BF7F0BC(v193, v37, type metadata accessor for MLS.SubjectPublicKeyInfo);
        sub_26BF75C7C(v51, v37);
        sub_26BF7F05C(v51, type metadata accessor for MLS.SubjectPublicKeyInfo);
        v193 += v194;
        --v192;
      }

      while (v192);

      v24 = &unk_26C016A90;
    }

    else
    {
    }

    v195 = sub_26BF32C8C(v270, v284);

    v196 = v248;
    v197 = v250;
    if (v195)
    {
      v198 = *(v276 + v244);
      v199 = v252;
      v200 = v254;
      v201 = v254;
      if (*(v198 + 16))
      {
        v202 = *(v276 + v244);

        v203 = sub_26BEBB618(v197, v196);
        v199 = v252;
        v201 = v200;
        if (v204)
        {
          v205 = *(v198 + 56) + 16 * v203;
          v199 = *v205;
          v201 = *(v205 + 8);
        }
      }

      v251 = v201;
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v206 = sub_26C009A5C();
      __swift_project_value_buffer(v206, qword_280478EE8);

      v207 = sub_26C009A3C();
      v208 = sub_26C00A9FC();

      if (os_log_type_enabled(v207, v208))
      {
        v209 = swift_slowAlloc();
        LODWORD(v241) = v199;
        v210 = v209;
        v249 = swift_slowAlloc();
        v288 = v249;
        *v210 = v242;

        v211 = sub_26BE3D034();
        v213 = v212;

        v214 = sub_26BE29740(v211, v213, &v288);

        *(v210 + 4) = v214;
        *(v210 + 12) = 2080;
        v215 = v250;
        *(v210 + 14) = sub_26BE29740(v250, v248, &v288);
        *(v210 + 22) = 2080;
        LODWORD(v284) = v199;
        v24 = v251;
        v285 = v251;
        v216 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
        v218 = sub_26BE29740(v216, v217, &v288);

        *(v210 + 24) = v218;
        _os_log_impl(&dword_26BDFE000, v207, v208, "%s: %s was gracefully rolled, keeping last rolled at %s", v210, 0x20u);
        v219 = v249;
        swift_arrayDestroy();
        MEMORY[0x26D69A4E0](v219, -1, -1);
        MEMORY[0x26D69A4E0](v210, -1, -1);

        v99 = v260;
        v220 = v241;
        v96 = v253;
      }

      else
      {

        v99 = v260;
        v220 = v199;
        v96 = v253;
        v215 = v250;
        v24 = v251;
      }

      v234 = v275;
      v235 = swift_isUniquelyReferenced_nonNull_native();
      v284 = v234;
      sub_26BE57234(v220, v24, v215, v248, v235);
      sub_26BE0489C(v243, v245);

      sub_26BF7F05C(v270, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BF7F05C(v273, type metadata accessor for MLS.SubjectPublicKeyInfo);
      sub_26BE2E258(v259, &qword_28045EE68, &unk_26C016A90);
      sub_26BE2E258(v99, &qword_28045EE68, &unk_26C016A90);
      v37 = v284;
      v98 = v280;
      v95 = v281;
      v50 = v277;
      goto LABEL_41;
    }

    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v221 = sub_26C009A5C();
    __swift_project_value_buffer(v221, qword_280478EE8);

    v222 = sub_26C009A3C();
    v223 = sub_26C00A9FC();

    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v251 = swift_slowAlloc();
      v288 = v251;
      *v224 = v242;

      LODWORD(v249) = v223;
      v225 = sub_26BE3D034();
      v227 = v226;

      v228 = sub_26BE29740(v225, v227, &v288);

      *(v224 + 4) = v228;
      v241 = v222;
      *(v224 + 12) = 2080;
      v101 = v250;
      *(v224 + 14) = sub_26BE29740(v250, v196, &v288);
      *(v224 + 22) = 2080;
      LODWORD(v284) = v252;
      v100 = v254;
      v285 = v254;
      v229 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
      v231 = sub_26BE29740(v229, v230, &v288);

      *(v224 + 24) = v231;
      v24 = &unk_26C016A90;
      v232 = v241;
      _os_log_impl(&dword_26BDFE000, v241, v249, "%s: %s was non-gracefully rolled, resetting last rolled to %s", v224, 0x20u);
      v233 = v251;
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v233, -1, -1);
      MEMORY[0x26D69A4E0](v224, -1, -1);

      v50 = v277;
      v96 = v253;
    }

    else
    {

      v50 = v277;
      v100 = v254;
      v96 = v253;
      v101 = v250;
    }

    v102 = v275;
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v284 = v102;
    sub_26BE57234(v252, v100, v101, v196, v103);
    sub_26BE0489C(v243, v245);

    sub_26BF7F05C(v270, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BF7F05C(v273, type metadata accessor for MLS.SubjectPublicKeyInfo);
    sub_26BE2E258(v259, &qword_28045EE68, &unk_26C016A90);
    v99 = v260;
    sub_26BE2E258(v260, &qword_28045EE68, &unk_26C016A90);
    v37 = v284;
    goto LABEL_40;
  }

  if (*((v286 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v104 = *(v286 + 32);
    goto LABEL_47;
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
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
  result = sub_26C00AF8C();
  __break(1u);
  return result;
}

void sub_26BF50BC8(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v109 = *(a2 + 8);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v11 = sub_26C009A5C();
  __swift_project_value_buffer(v11, qword_280478EE8);

  sub_26BE00608(a3, a4);
  sub_26BE00608(a5, a6);
  v12 = sub_26C009A3C();
  v13 = sub_26C00AA1C();

  sub_26BE00258(a3, a4);
  sub_26BE00258(a5, a6);
  v106 = v13;
  v108 = a5;
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v127 = v104;
    *v14 = 136315650;

    v103 = v12;
    v15 = sub_26BE3D034();
    v17 = v16;

    v18 = sub_26BE29740(v15, v17, &v127);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = v132;
    sub_26BF87240(a3, a4);
    v132 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    sub_26C00A3EC();

    v20 = sub_26BE411D0(16);
    v22 = v21;
    v23 = a6;
    v25 = v24;
    v27 = v26;

    v28 = MEMORY[0x26D698FE0](v20, v22, v25, v27);
    v30 = v29;
    v31 = a7;

    v32 = sub_26BE29740(v28, v30, &v127);

    *(v14 + 14) = v32;
    *(v14 + 22) = 2080;
    v33 = v132;
    v34 = sub_26BF87240(v108, v23);
    v132 = v33;
    *&v119 = v34;
    sub_26C00A3EC();

    v35 = sub_26BE411D0(16);
    v37 = v36;
    v39 = v38;
    v41 = v40;

    v42 = MEMORY[0x26D698FE0](v35, v37, v39, v41);
    v44 = v43;

    v45 = sub_26BE29740(v42, v44, &v127);

    *(v14 + 24) = v45;
    _os_log_impl(&dword_26BDFE000, v103, v106, "%s: processing inner encryption of single-recipient application with messageID %s for originalMessageID %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v104, -1, -1);
    MEMORY[0x26D69A4E0](v14, -1, -1);
  }

  else
  {

    v31 = a7;
  }

  v46 = 0;
  v47 = *(&v109 + 1) >> 62;
  if ((*(&v109 + 1) >> 62) > 1)
  {
    if (v47 != 2)
    {
      goto LABEL_12;
    }

    v46 = *(v109 + 16);
  }

  else
  {
    if (!v47)
    {
      goto LABEL_12;
    }

    v46 = v109;
  }

  sub_26BE00608(v109, *(&v109 + 1));
LABEL_12:
  v127 = v109;
  v128 = v46;
  v48 = sub_26BEE6028();
  if ((v48 & 0x100000000) != 0)
  {
    sub_26BE01600();
    swift_allocError();
    *v53 = 1;
    swift_willThrow();
    goto LABEL_16;
  }

  v49 = v48;
  v50 = v132;
  v51 = sub_26BF2F7B0();
  if (v50)
  {
LABEL_16:
    *&v119 = &_s37HPKEInnerEncapsulatedKeyAndCiphertextVN;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB10, &qword_26C01FC98);
    v54 = sub_26C00A4FC();
    sub_26BE826C4(v54, v55, v109, *(&v109 + 1));

    swift_willThrow();
    v57 = *(&v127 + 1);
    v56 = v127;
    goto LABEL_17;
  }

  v107 = v51;
  v132 = v52;
  v110 = sub_26BF2F7B0();
  v111 = v58;
  sub_26BE00258(v127, *(&v127 + 1));
  v59 = type metadata accessor for MLS.GroupState();
  v60 = *(v59 + 52);
  if (*(a1 + v60) == v49)
  {
    v61 = a1 + *(v59 + 32);
    sub_26BE5305C(&v127);
    if (v129)
    {
      sub_26BE03890(&v127, v131);
      LODWORD(v119) = 0;
      BYTE4(v119) = 1;
      v70 = *(a1 + 40);
      v71 = *(a1 + 48);
      v72 = *(a1 + 56);
      LOWORD(v127) = *(a1 + 32);
      *(&v127 + 1) = v70;
      LODWORD(v128) = v71;
      v129 = v72;
      MEMORY[0x28223BE20](v70);

      MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BF7ED0C);

      v88 = sub_26C009A3C();
      v89 = sub_26C00AA0C();

      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v127 = v91;
        *v90 = 136315138;

        v92 = sub_26BE3D034();
        v94 = v93;

        v95 = sub_26BE29740(v92, v94, &v127);

        *(v90 + 4) = v95;
        _os_log_impl(&dword_26BDFE000, v88, v89, "%s: Missing own sender leaf node in tree when processing single-recipient application message", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x26D69A4E0](v91, -1, -1);
        MEMORY[0x26D69A4E0](v90, -1, -1);
      }

      LOBYTE(v127) = 15;
      v130 = 0;
      v96 = sub_26C00A45C();
      sub_26BE2DC18(&v127, &v119);
      v97 = swift_allocObject();
      v98 = v124;
      *(v97 + 88) = v123;
      *(v97 + 104) = v98;
      *(v97 + 120) = v125;
      v99 = v120;
      *(v97 + 24) = v119;
      *(v97 + 40) = v99;
      v100 = v122;
      *(v97 + 56) = v121;
      *(v97 + 16) = 3;
      *(v97 + 136) = v126;
      *(v97 + 72) = v100;
      v117 = sub_26BE2E3DC;
      v118 = v97;
      v113 = MEMORY[0x277D85DD0];
      v114 = 1107296256;
      v115 = sub_26BEB8234;
      v116 = &block_descriptor_167;
      v101 = _Block_copy(&v113);

      AnalyticsSendEventLazy();
      _Block_release(v101);

      sub_26BE2DC9C(&v127);
      sub_26BE01654();
      swift_allocError();
      *v102 = 15;
      v102[112] = 0;
      swift_willThrow();
      sub_26BE00258(v107, v132);
      sub_26BE00258(v110, v111);
      __swift_destroy_boxed_opaque_existential_1(v131);
      return;
    }

    sub_26BE2E258(&v127, &qword_28045E6A8, &qword_26C0112B0);

    v73 = sub_26C009A3C();
    v74 = sub_26C00AA0C();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v127 = v76;
      *v75 = 136315138;

      v77 = sub_26BE3D034();
      v79 = v78;

      v80 = sub_26BE29740(v77, v79, &v127);

      *(v75 + 4) = v80;
      _os_log_impl(&dword_26BDFE000, v73, v74, "%s: Missing own leaf node in tree when processing single-recipient application message", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x26D69A4E0](v76, -1, -1);
      MEMORY[0x26D69A4E0](v75, -1, -1);
    }

    LOBYTE(v127) = 34;
    v130 = 0;
    v81 = sub_26C00A45C();
    sub_26BE2DC18(&v127, &v119);
    v82 = swift_allocObject();
    v83 = v124;
    *(v82 + 88) = v123;
    *(v82 + 104) = v83;
    *(v82 + 120) = v125;
    v84 = v120;
    *(v82 + 24) = v119;
    *(v82 + 40) = v84;
    v85 = v122;
    *(v82 + 56) = v121;
    *(v82 + 16) = 3;
    *(v82 + 136) = v126;
    *(v82 + 72) = v85;
    v117 = sub_26BE2DC78;
    v118 = v82;
    v113 = MEMORY[0x277D85DD0];
    v114 = 1107296256;
    v115 = sub_26BEB8234;
    v116 = &block_descriptor_4;
    v86 = _Block_copy(&v113);

    AnalyticsSendEventLazy();
    _Block_release(v86);

    sub_26BE2DC9C(&v127);
    sub_26BE01654();
    swift_allocError();
    *v87 = 34;
    v87[112] = 0;
    swift_willThrow();
    sub_26BE00258(v107, v132);
    v56 = v110;
    v57 = v111;
LABEL_17:
    sub_26BE00258(v56, v57);
    return;
  }

  v62 = sub_26C009A3C();
  v63 = sub_26C00AA1C();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *&v127 = v65;
    *v64 = 136315138;

    v66 = sub_26BE3D034();
    v68 = v67;

    v69 = sub_26BE29740(v66, v68, &v127);

    *(v64 + 4) = v69;
    _os_log_impl(&dword_26BDFE000, v62, v63, "%s: the single-recipient message was for us, so we can safely ignore it", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v65);
    MEMORY[0x26D69A4E0](v65, -1, -1);
    MEMORY[0x26D69A4E0](v64, -1, -1);

    sub_26BE00258(v107, v132);
    sub_26BE00258(v110, v111);
  }

  else
  {
    sub_26BE00258(v107, v132);
    sub_26BE00258(v110, v111);
  }

  *v31 = 1;
  *(v31 + 8) = 0u;
  *(v31 + 24) = 0u;
  *(v31 + 40) = 0u;
  *(v31 + 56) = 0u;
  *(v31 + 72) = 0u;
  *(v31 + 88) = 0u;
  *(v31 + 97) = 0u;
  *(v31 + 113) = 4;
}

uint64_t sub_26BF51B80(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26BE28F58;

  return sub_26BE9EA04(a1, v1);
}

uint64_t sub_26BF51C34@<X0>(uint64_t a1@<X0>, int *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a2;
  v7 = *(a2 + 4);
  v8 = *a3;
  v9 = *(a3 + 4);
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v58 = 0;
  v57 = 0u;
  memset(v56, 0, sizeof(v56));
  if ((v7 & 1) == 0)
  {
    LODWORD(v45[0]) = v6;
    v10 = a1;
    sub_26BF35930(a1, v45, &v48);
    v52 = v48;
    v53 = v49;
    v54 = v50;
    v55 = AssociatedConformanceWitness;
    sub_26BE2E258(&v59, &qword_28045EAA8, &unk_26C014260);
    v59 = v52;
    v60 = v53;
    v61 = v54;
    v62 = v55;
    a1 = v10;
  }

  if ((v9 & 1) == 0)
  {
    LODWORD(v45[0]) = v8;
    sub_26BF35930(a1, v45, &v48);
    v52 = v48;
    v53 = v49;
    v54 = v50;
    v55 = AssociatedConformanceWitness;
    sub_26BE2E258(v56, &qword_28045EAA8, &unk_26C014260);
    sub_26BE2DB68(&v52, v56);
    v11 = *(v4 + 56);
    v12 = *(v4 + 64);
    swift_beginAccess();
    sub_26BE038A8(v4 + 112, v45);
    v13 = v46;
    v14 = v47;
    __swift_project_boxed_opaque_existential_1(v45, v46);
    v15 = *(v14 + 40);
    *(&v50 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v49);
    sub_26BE04890(v11, v12);
    v15(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v45);
    *&v48 = v11;
    *(&v48 + 1) = v12;
    v16 = _s8SwiftMLS0B0O5GroupO6MemberV2eeoiySbAG_AGtFZ_0(&v52, &v48);
    sub_26BE2DBC4(&v48);
    if (v16)
    {
      if (qword_28045DF80 != -1)
      {
        swift_once();
      }

      v17 = sub_26C009A5C();
      __swift_project_value_buffer(v17, qword_280478EE8);

      v18 = sub_26C009A3C();
      v19 = sub_26C00AA1C();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *&v48 = v21;
        *v20 = 136315138;

        v22 = sub_26BE3D034();
        v24 = v23;

        v25 = sub_26BE29740(v22, v24, &v48);

        *(v20 + 4) = v25;
        _os_log_impl(&dword_26BDFE000, v18, v19, "%s: left group", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        MEMORY[0x26D69A4E0](v21, -1, -1);
        MEMORY[0x26D69A4E0](v20, -1, -1);
      }

      sub_26BE2DBC4(&v52);
      sub_26BE2E1F0(&v59, a4, &qword_28045EAA8, &unk_26C014260);
      v26 = 22;
      goto LABEL_22;
    }

    sub_26BE2DBC4(&v52);
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v27 = sub_26C009A5C();
  __swift_project_value_buffer(v27, qword_280478EE8);

  v28 = sub_26C009A3C();
  v29 = sub_26C00AA1C();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = 7104878;
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *&v48 = v32;
    *v31 = 136315650;

    v33 = sub_26BE3D034();
    v35 = v34;

    v36 = sub_26BE29740(v33, v35, &v48);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    swift_beginAccess();
    if (*(&v61 + 1))
    {
      sub_26BE2DA9C(&v59, &v52);
      v37 = MLS.Identity.SigningIdentity.description.getter();
      v39 = v38;
      sub_26BE2DBC4(&v52);
    }

    else
    {
      v39 = 0xE300000000000000;
      v37 = 7104878;
    }

    v40 = sub_26BE29740(v37, v39, &v48);

    *(v31 + 14) = v40;
    *(v31 + 22) = 2080;
    swift_beginAccess();
    if (*(&v57 + 1))
    {
      sub_26BE2DA9C(v56, &v52);
      v30 = MLS.Identity.SigningIdentity.description.getter();
      v42 = v41;
      sub_26BE2DBC4(&v52);
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = sub_26BE29740(v30, v42, &v48);

    *(v31 + 24) = v43;
    _os_log_impl(&dword_26BDFE000, v28, v29, "%s: removed from group, committer: %s, proposer: %s", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v32, -1, -1);
    MEMORY[0x26D69A4E0](v31, -1, -1);
  }

  swift_beginAccess();
  sub_26BE2E1F0(&v59, a4, &qword_28045EAA8, &unk_26C014260);
  swift_beginAccess();
  sub_26BE2E1F0(v56, a4 + 56, &qword_28045EAA8, &unk_26C014260);
  v26 = 21;
LABEL_22:
  *(a4 + 112) = v26;
  sub_26BE2E258(v56, &qword_28045EAA8, &unk_26C014260);
  return sub_26BE2E258(&v59, &qword_28045EAA8, &unk_26C014260);
}

uint64_t sub_26BF522F8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 32) = *a2;
  return MEMORY[0x2822009F8](sub_26BF52320, 0, 0);
}

uint64_t sub_26BF52320()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];

  sub_26BE00608(v1, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BE3C268;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return (sub_26BE9DF04)(v7);
}

uint64_t sub_26BF523F4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 536) = v2;
  *(v3 + 528) = a1;
  v5 = *(type metadata accessor for MLS.MLSMessage(0) - 8);
  *(v3 + 544) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 552) = swift_task_alloc();
  *(v3 + 560) = *a2;

  return MEMORY[0x2822009F8](sub_26BF524C0, 0, 0);
}

uint64_t sub_26BF524C0()
{
  v1 = *(v0 + 528);
  v2 = *(v1 + 16);
  *(v0 + 576) = v2;
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = *(v0 + 544);
    v5 = *(v4 + 80);
    *(v0 + 132) = v5;
    *(v0 + 584) = *(v4 + 72);
    *(v0 + 600) = v3;
    *(v0 + 592) = 0;
    v6 = *(v0 + 552);
    sub_26BF7F0BC(v1 + ((v5 + 32) & ~v5), v6, type metadata accessor for MLS.MLSMessage);
    *(v0 + 496) = xmmword_26C00BBD0;
    *(v0 + 512) = 0;
    sub_26BEE3688(v6);
    v7 = *(v0 + 496);
    v8 = *(v0 + 504);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      v12 = *(v7 + 24);
    }

    else
    {
      if (!v9)
      {
        v10 = *(v0 + 496);
        v11 = *(v0 + 504);
LABEL_14:
        v16 = *(v0 + 568);
        v17 = *(v0 + 560);
        v18 = *(v0 + 536);
        v19 = sub_26C00909C();
        v21 = v20;
        *(v0 + 608) = v19;
        *(v0 + 616) = v20;
        sub_26BE00258(v10, v11);

        sub_26BE00608(v19, v21);
        sub_26BE2BAE8(v17, v16);
        v22 = swift_task_alloc();
        *(v0 + 624) = v22;
        *v22 = v0;
        v22[1] = sub_26BF52B1C;
        v23 = *(v0 + 568);
        v24 = *(v0 + 560);
        v25 = *(v0 + 536);

        return sub_26BE9DF04(v0 + 16, v25, v25, v19, v21, v24, v23);
      }

      v12 = v7 >> 32;
    }

    v11 = *(v0 + 504);
    v10 = *(v0 + 496);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v11 = v8;
    v10 = v7;
    goto LABEL_14;
  }

  v13 = *(v0 + 552);

  v14 = *(v0 + 8);

  return v14(v3);
}

uint64_t sub_26BF52B1C()
{
  v2 = *v1;
  v3 = *(*v1 + 624);
  v6 = *v1;
  *(*v1 + 632) = v0;

  if (v0)
  {
    v4 = sub_26BF53348;
  }

  else
  {
    sub_26BE00258(*(v2 + 608), *(v2 + 616));
    v4 = sub_26BF52C3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF52C3C()
{
  v65 = v0;
  v1 = *(v0 + 600);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 600);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26BEED9D4(0, *(v3 + 2) + 1, 1, *(v0 + 600));
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26BEED9D4((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 576);
  v7 = *(v0 + 592) + 1;
  sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  *(v3 + 2) = v5 + 1;
  v8 = &v3[120 * v5];
  v9 = *(v0 + 64);
  v11 = *(v0 + 16);
  v10 = *(v0 + 32);
  *(v8 + 4) = *(v0 + 48);
  *(v8 + 5) = v9;
  *(v8 + 2) = v11;
  *(v8 + 3) = v10;
  v13 = *(v0 + 96);
  v12 = *(v0 + 112);
  v14 = *(v0 + 80);
  *(v8 + 72) = *(v0 + 128);
  *(v8 + 7) = v13;
  *(v8 + 8) = v12;
  *(v8 + 6) = v14;
  if (v7 == v6)
  {
    goto LABEL_6;
  }

  v18 = *(v0 + 632);
  v19 = *(v0 + 592) + 1;
  *(v0 + 600) = v3;
  *(v0 + 592) = v19;
  v20 = *(v0 + 552);
  sub_26BF7F0BC(*(v0 + 528) + ((*(v0 + 132) + 32) & ~*(v0 + 132)) + *(v0 + 584) * v19, v20, type metadata accessor for MLS.MLSMessage);
  *(v0 + 496) = xmmword_26C00BBD0;
  *(v0 + 512) = 0;
  sub_26BEE3688(v20);
  v21 = *(v0 + 496);
  v22 = *(v0 + 504);
  if (!v18)
  {
    v41 = v22 >> 62;
    if ((v22 >> 62) > 1)
    {
      if (v41 != 2)
      {
        goto LABEL_33;
      }

      v45 = *(v21 + 24);
    }

    else
    {
      if (!v41)
      {
        v42 = *(v0 + 496);
        v43 = *(v0 + 504);
LABEL_34:
        v54 = *(v0 + 568);
        v55 = *(v0 + 560);
        v56 = *(v0 + 536);
        v57 = sub_26C00909C();
        v59 = v58;
        *(v0 + 608) = v57;
        *(v0 + 616) = v58;
        sub_26BE00258(v42, v43);

        sub_26BE00608(v57, v59);
        sub_26BE2BAE8(v55, v54);
        v60 = swift_task_alloc();
        *(v0 + 624) = v60;
        *v60 = v0;
        v60[1] = sub_26BF52B1C;
        v61 = *(v0 + 568);
        v62 = *(v0 + 560);
        v63 = *(v0 + 536);

        return sub_26BE9DF04(v0 + 16, v63, v63, v57, v59, v62, v61);
      }

      v45 = v21 >> 32;
    }

    v43 = *(v0 + 504);
    v42 = *(v0 + 496);
    if ((v45 & 0x8000000000000000) == 0)
    {
      goto LABEL_34;
    }

    __break(1u);
LABEL_33:
    v43 = v22;
    v42 = v21;
    goto LABEL_34;
  }

  sub_26BE00258(v21, v22);
  *(v0 + 520) = v18;
  v23 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {

    v24 = *(v0 + 216);
    *(v0 + 320) = *(v0 + 200);
    *(v0 + 336) = v24;
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = *(v0 + 248);
    v25 = *(v0 + 152);
    *(v0 + 256) = *(v0 + 136);
    *(v0 + 272) = v25;
    v26 = *(v0 + 184);
    *(v0 + 288) = *(v0 + 168);
    *(v0 + 304) = v26;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 536);
    v28 = sub_26C009A5C();
    __swift_project_value_buffer(v28, qword_280478EE8);
    sub_26BE2DC18(v0 + 256, v0 + 376);

    v29 = sub_26C009A3C();
    v30 = sub_26C00AA0C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 536);
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v64 = v34;
      *v32 = 136315394;

      v35 = sub_26BE3D034();
      v37 = v36;

      v38 = sub_26BE29740(v35, v37, &v64);

      *(v32 + 4) = v38;
      *(v32 + 12) = 2112;
      sub_26BE01654();
      swift_allocError();
      sub_26BE2DC18(v0 + 376, v39);
      v40 = _swift_stdlib_bridgeErrorToNSError();
      sub_26BE2DC9C(v0 + 376);
      *(v32 + 14) = v40;
      *v33 = v40;
      _os_log_impl(&dword_26BDFE000, v29, v30, "%s: Error while processing message: %@", v32, 0x16u);
      sub_26BE2E258(v33, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x26D69A4E0](v34, -1, -1);
      MEMORY[0x26D69A4E0](v32, -1, -1);
    }

    else
    {

      sub_26BE2DC9C(v0 + 376);
    }

    if (*(*(v0 + 600) + 16))
    {
      v46 = sub_26C009A3C();
      v47 = sub_26C00AA0C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_26BDFE000, v46, v47, "Returning partial results", v48, 2u);
        MEMORY[0x26D69A4E0](v48, -1, -1);
      }

      v49 = *(v0 + 552);

      sub_26BE2DC9C(v0 + 256);
      sub_26BF7F05C(v49, type metadata accessor for MLS.MLSMessage);

      v3 = *(v0 + 600);
LABEL_6:
      v15 = *(v0 + 552);

      v16 = *(v0 + 8);

      return v16(v3);
    }

    v50 = *(v0 + 552);

    sub_26BE01654();
    swift_allocError();
    sub_26BE2DC18(v0 + 256, v51);
    swift_willThrow();
    sub_26BE2DC9C(v0 + 256);
    sub_26BF7F05C(v50, type metadata accessor for MLS.MLSMessage);
  }

  else
  {
    v44 = *(v0 + 600);
    sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  }

  v52 = *(v0 + 552);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_26BF53348()
{
  v34 = v0;
  sub_26BE00258(*(v0 + 608), *(v0 + 616));
  v1 = *(v0 + 632);
  *(v0 + 520) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045ED00, &qword_26C016510);
  if (swift_dynamicCast())
  {

    v3 = *(v0 + 216);
    *(v0 + 320) = *(v0 + 200);
    *(v0 + 336) = v3;
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = *(v0 + 248);
    v4 = *(v0 + 152);
    *(v0 + 256) = *(v0 + 136);
    *(v0 + 272) = v4;
    v5 = *(v0 + 184);
    *(v0 + 288) = *(v0 + 168);
    *(v0 + 304) = v5;
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 536);
    v7 = sub_26C009A5C();
    __swift_project_value_buffer(v7, qword_280478EE8);
    sub_26BE2DC18(v0 + 256, v0 + 376);

    v8 = sub_26C009A3C();
    v9 = sub_26C00AA0C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 536);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v11 = 136315394;

      v14 = sub_26BE3D034();
      v16 = v15;

      v17 = sub_26BE29740(v14, v16, &v33);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2112;
      sub_26BE01654();
      swift_allocError();
      sub_26BE2DC18(v0 + 376, v18);
      v19 = _swift_stdlib_bridgeErrorToNSError();
      sub_26BE2DC9C(v0 + 376);
      *(v11 + 14) = v19;
      *v12 = v19;
      _os_log_impl(&dword_26BDFE000, v8, v9, "%s: Error while processing message: %@", v11, 0x16u);
      sub_26BE2E258(v12, &qword_28045FB40, &unk_26C021280);
      MEMORY[0x26D69A4E0](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x26D69A4E0](v13, -1, -1);
      MEMORY[0x26D69A4E0](v11, -1, -1);
    }

    else
    {

      sub_26BE2DC9C(v0 + 376);
    }

    if (*(*(v0 + 600) + 16))
    {
      v21 = sub_26C009A3C();
      v22 = sub_26C00AA0C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_26BDFE000, v21, v22, "Returning partial results", v23, 2u);
        MEMORY[0x26D69A4E0](v23, -1, -1);
      }

      v24 = *(v0 + 552);

      sub_26BE2DC9C(v0 + 256);
      sub_26BF7F05C(v24, type metadata accessor for MLS.MLSMessage);

      v25 = *(v0 + 600);
      v26 = *(v0 + 552);

      v27 = *(v0 + 8);

      return v27(v25);
    }

    v29 = *(v0 + 552);

    sub_26BE01654();
    swift_allocError();
    sub_26BE2DC18(v0 + 256, v30);
    swift_willThrow();
    sub_26BE2DC9C(v0 + 256);
    sub_26BF7F05C(v29, type metadata accessor for MLS.MLSMessage);
  }

  else
  {
    v20 = *(v0 + 600);
    sub_26BF7F05C(*(v0 + 552), type metadata accessor for MLS.MLSMessage);
  }

  v31 = *(v0 + 552);

  v32 = *(v0 + 8);

  return v32();
}