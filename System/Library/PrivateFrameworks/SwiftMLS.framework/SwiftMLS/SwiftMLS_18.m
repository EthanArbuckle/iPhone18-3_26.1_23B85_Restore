uint64_t sub_26BF537C8(uint64_t a1, _OWORD *a2)
{
  *(v3 + 32) = a1;
  *(v3 + 40) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x2822009F8](sub_26BF537F0, 0, 0);
}

uint64_t sub_26BF537F0()
{
  v8 = *(v0 + 48);
  MLS.Group.Message.asSingleCommit()((v0 + 16));
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 64) = v3;
  *(v0 + 72) = v2;

  sub_26BE00608(v3, v2);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_26BF53924;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);

  return sub_26BE9DF04(v5, v6, v6, v3, v2, 0, 0xF000000000000000);
}

uint64_t sub_26BF53924()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_26BF53A60, 0, 0);
  }

  else
  {
    sub_26BE00258(v3[8], v3[9]);
    v4 = v3[1];

    return v4();
  }
}

uint64_t sub_26BF53A60()
{
  sub_26BE00258(v0[8], v0[9]);
  v1 = v0[11];
  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF53AC4(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BF53AEC, 0, 0);
}

uint64_t sub_26BF53AEC()
{
  v31 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v30);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: processing incoming commit list", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_26BE00608(v12, v13);
  v14 = sub_26BEEDF2C(v12, v13);
  *(v0 + 56) = v14;
  v15 = v14;
  v16 = *(v0 + 32);
  swift_bridgeObjectRetain_n();

  v17 = sub_26C009A3C();
  v18 = sub_26C00AA1C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 32);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315394;

    v22 = sub_26BE3D034();
    v24 = v23;

    v25 = sub_26BE29740(v22, v24, v30);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2048;
    v26 = *(v15 + 16);

    *(v20 + 14) = v26;

    _os_log_impl(&dword_26BDFE000, v17, v18, "%s: commit list: %ld commits", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D69A4E0](v21, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = xmmword_26C00DA60;
  v27 = swift_task_alloc();
  *(v0 + 64) = v27;
  *v27 = v0;
  v27[1] = sub_26BF53E94;
  v28 = *(v0 + 32);

  return sub_26BF523F4(v15, (v0 + 16));
}

uint64_t sub_26BF53E94(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);

    return MEMORY[0x2822009F8](sub_26BF53FF4, 0, 0);
  }

  else
  {
    v8 = *(v4 + 56);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_26BF5400C(_OWORD *a1, _OWORD *a2)
{
  *(v3 + 32) = v2;
  *(v3 + 40) = *a1;
  *(v3 + 56) = *a2;
  return MEMORY[0x2822009F8](sub_26BF5403C, 0, 0);
}

uint64_t sub_26BF5403C()
{
  v31 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v30);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: processing incoming commit list", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_26BE00608(v12, v13);
  v14 = sub_26BEEDF2C(v12, v13);
  *(v0 + 72) = v14;
  v15 = v14;
  v16 = *(v0 + 32);
  swift_bridgeObjectRetain_n();

  v17 = sub_26C009A3C();
  v18 = sub_26C00AA1C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 32);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315394;

    v22 = sub_26BE3D034();
    v24 = v23;

    v25 = sub_26BE29740(v22, v24, v30);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2048;
    v26 = *(v15 + 16);

    *(v20 + 14) = v26;

    _os_log_impl(&dword_26BDFE000, v17, v18, "%s: commit list: %ld commits", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D69A4E0](v21, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = *(v0 + 56);
  v27 = swift_task_alloc();
  *(v0 + 80) = v27;
  *v27 = v0;
  v27[1] = sub_26BF543E0;
  v28 = *(v0 + 32);

  return sub_26BF523F4(v15, (v0 + 16));
}

uint64_t sub_26BF543E0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v7 = *(v4 + 72);

    return MEMORY[0x2822009F8](sub_26BF54540, 0, 0);
  }

  else
  {
    v8 = *(v4 + 72);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_26BF54558(_OWORD *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 40) = *a1;
  return MEMORY[0x2822009F8](sub_26BF54580, 0, 0);
}

uint64_t sub_26BF54580()
{
  v31 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v30[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v30);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: processing incoming proposal list, taking only the first proposal", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  sub_26BE00608(v12, v13);
  v14 = sub_26BEEDF5C(v12, v13);
  *(v0 + 56) = v14;
  v15 = v14;
  v16 = *(v0 + 32);
  swift_bridgeObjectRetain_n();

  v17 = sub_26C009A3C();
  v18 = sub_26C00AA1C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 32);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v30[0] = v21;
    *v20 = 136315394;

    v22 = sub_26BE3D034();
    v24 = v23;

    v25 = sub_26BE29740(v22, v24, v30);

    *(v20 + 4) = v25;
    *(v20 + 12) = 2048;
    v26 = *(v15 + 16);

    *(v20 + 14) = v26;

    _os_log_impl(&dword_26BDFE000, v17, v18, "%s: proposal list: %ld proposals", v20, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D69A4E0](v21, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  *(v0 + 16) = xmmword_26C00DA60;
  v27 = swift_task_alloc();
  *(v0 + 64) = v27;
  *v27 = v0;
  v27[1] = sub_26BF54928;
  v28 = *(v0 + 32);

  return sub_26BF523F4(v15, (v0 + 16));
}

uint64_t sub_26BF54928(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = *(v4 + 56);

    return MEMORY[0x2822009F8](sub_26BF7F1C4, 0, 0);
  }

  else
  {
    v8 = *(v4 + 56);

    v9 = *(v6 + 8);

    return v9(a1);
  }
}

uint64_t sub_26BF54A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[164] = v5;
  v6[163] = a5;
  v6[162] = a4;
  v6[161] = a3;
  v6[160] = a2;
  v6[159] = a1;
  v6[165] = *v5;
  v7 = type metadata accessor for MLS.MLSMessage(0);
  v6[166] = v7;
  v8 = *(v7 - 8);
  v6[167] = v8;
  v9 = *(v8 + 64) + 15;
  v6[168] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580) - 8) + 64) + 15;
  v6[169] = swift_task_alloc();
  v11 = sub_26C009C8C();
  v6[170] = v11;
  v12 = *(v11 - 8);
  v6[171] = v12;
  v13 = *(v12 + 64) + 15;
  v6[172] = swift_task_alloc();
  v14 = type metadata accessor for MLS.GroupState.CommitOutput(0);
  v6[173] = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  v6[174] = swift_task_alloc();
  v6[175] = swift_task_alloc();
  v16 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v6[176] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[177] = swift_task_alloc();
  v18 = type metadata accessor for MLS.GroupState();
  v6[178] = v18;
  v19 = *(v18 - 8);
  v6[179] = v19;
  v20 = *(v19 + 64) + 15;
  v6[180] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF54CE0, 0, 0);
}

uint64_t sub_26BF54CE0()
{
  v148 = v0;
  sub_26BF7F0BC(*(v0 + 1280), *(v0 + 1440), type metadata accessor for MLS.GroupState);
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1312);
  v2 = *(v0 + 1288);
  v3 = sub_26C009A5C();
  *(v0 + 1448) = v3;
  *(v0 + 1456) = __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1312);
    v7 = *(v0 + 1288);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v145 = v9;
    *v8 = 136315394;

    v10 = sub_26BE3D034();
    v12 = v11;

    v13 = sub_26BE29740(v10, v12, &v145);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2048;
    v14 = *(v7 + 16);

    *(v8 + 14) = v14;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: performing commit with %ld new proposals", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x26D69A4E0](v9, -1, -1);
    MEMORY[0x26D69A4E0](v8, -1, -1);
  }

  else
  {
    v15 = *(v0 + 1288);
    swift_bridgeObjectRelease_n();
  }

  v16 = *(v0 + 1312);
  v17 = *(v0 + 1288);

  v18 = sub_26C009A3C();
  v19 = sub_26C00A9FC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 1312);
    v21 = *(v0 + 1288);
    v22 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v144[0] = v140;
    *v22 = 136315394;

    v23 = sub_26BE3D034();
    v25 = v24;

    v26 = sub_26BE29740(v23, v25, v144);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    v27 = *(v21 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v29 = *(v0 + 1288);
      v145 = MEMORY[0x277D84F90];
      sub_26BECBB14(0, v27, 0);
      v28 = v145;
      v30 = (v29 + 32);
      do
      {
        v31 = *v30;
        v32 = v30[1];
        v33 = v30[3];
        *(v0 + 48) = v30[2];
        *(v0 + 64) = v33;
        *(v0 + 16) = v31;
        *(v0 + 32) = v32;
        v34 = v30[4];
        v35 = v30[5];
        v36 = v30[7];
        *(v0 + 112) = v30[6];
        *(v0 + 128) = v36;
        *(v0 + 80) = v34;
        *(v0 + 96) = v35;
        v37 = v30[8];
        v38 = v30[9];
        v39 = v30[10];
        *(v0 + 192) = *(v30 + 22);
        *(v0 + 160) = v38;
        *(v0 + 176) = v39;
        *(v0 + 144) = v37;
        v40 = sub_26BE5CD48(v0 + 16);
        if (v40 <= 4)
        {
          if (v40 <= 1)
          {
            if (v40)
            {
              v41 = 2;
            }

            else
            {
              v41 = 1;
            }
          }

          else if (v40 == 2)
          {
            v41 = 3;
          }

          else if (v40 == 3)
          {
            v41 = 4;
          }

          else
          {
            v41 = 5;
          }
        }

        else if (v40 > 7)
        {
          if (v40 == 8)
          {
            v41 = -4092;
          }

          else
          {
            if (v40 != 9)
            {
              v41 = -1;
              goto LABEL_30;
            }

            v41 = -4093;
          }
        }

        else if (v40 == 5)
        {
          v41 = 6;
        }

        else if (v40 == 6)
        {
          v41 = 7;
        }

        else
        {
          v41 = -4094;
        }

        sub_26BE5CDC8(v0 + 16);
LABEL_30:
        v145 = v28;
        v43 = *(v28 + 16);
        v42 = *(v28 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_26BECBB14((v42 > 1), v43 + 1, 1);
          v28 = v145;
        }

        *(v28 + 16) = v43 + 1;
        *(v28 + 2 * v43 + 32) = v41;
        v30 = (v30 + 184);
        --v27;
      }

      while (v27);
    }

    v44 = MEMORY[0x26D6991B0](v28, MEMORY[0x277D84C58]);
    v46 = v45;

    v47 = sub_26BE29740(v44, v46, v144);

    *(v22 + 14) = v47;
    _os_log_impl(&dword_26BDFE000, v18, v19, "%s: new proposal types in commit: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v140, -1, -1);
    MEMORY[0x26D69A4E0](v22, -1, -1);
  }

  v48 = *(v0 + 1312);
  sub_26BF7F0BC(*(v0 + 1304), *(v0 + 1416), type metadata accessor for MLS.GroupState.CommitOptions);
  v49 = sub_26BF57DC8();
  v50 = *(v0 + 1440);
  v51 = *(v0 + 1312);
  v52 = *(v0 + 1416) + *(*(v0 + 1408) + 36);
  sub_26BF9E81C(v49);
  v53 = *(v51 + 48);
  swift_beginAccess();
  v54 = *(v53 + 48);
  result = sub_26BF36A34(v50);
  v56 = result;
  v58 = v57;
  v59 = **(v0 + 1440);
  if ((v59 - 3) < 0xFFFFFFFE)
  {
    __break(1u);
  }

  else
  {
    v60 = v59 != 1;
    LOBYTE(v145) = v59 != 1;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(&v145, v144);
    v147[0] = v60;
    MLS.Cryptography.Ciphersuite.init(ciphersuiteID:)(v147, &v145);
    v61 = v146;

    v62 = sub_26BE1264C(v61);
    v64 = v63;
    v137 = *(v0 + 1416);
    v138 = *(v0 + 1440);
    v65 = *(v0 + 1376);
    v141 = *(v0 + 1368);
    v135 = *(v0 + 1392);
    v136 = *(v0 + 1296);
    v66 = *(v0 + 1288);

    *(v0 + 1208) = v62;
    *(v0 + 1216) = v64;
    sub_26BE00608(v62, v64);
    sub_26C009C5C();
    *(v0 + 1080) = v54;
    *(v0 + 1088) = v56;
    *(v0 + 1096) = v58;
    *(v0 + 1104) = 0;
    sub_26BE638EC(v66, v65, v137, (v0 + 1080), v136, v135);
    v67 = (v141 + 8);
    v68 = *(v0 + 1400);
    v69 = *(v0 + 1392);
    v70 = *(v0 + 1384);
    v71 = *(v0 + 1352);
    v139 = v71;
    v142 = *(v0 + 1312);
    (*v67)(*(v0 + 1376), *(v0 + 1360));
    sub_26BE00258(v62, v64);
    sub_26BE00258(v56, v58);
    sub_26BF7F124(v69, v68, type metadata accessor for MLS.GroupState.CommitOutput);
    v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
    v73 = *(v72 + 48);
    v74 = v68 + *(v70 + 24);
    sub_26BF7F0BC(v74, v139, type metadata accessor for MLS.GroupState);
    v75 = (v68 + *(v70 + 32));
    v76 = v75[7];
    v77 = v75[8];
    v78 = v75[10];
    *(v0 + 344) = v75[9];
    *(v0 + 360) = v78;
    *(v0 + 312) = v76;
    *(v0 + 328) = v77;
    v79 = v75[3];
    v80 = v75[4];
    v81 = v75[6];
    *(v0 + 280) = v75[5];
    *(v0 + 296) = v81;
    *(v0 + 248) = v79;
    *(v0 + 264) = v80;
    v83 = v75[1];
    v82 = v75[2];
    *(v0 + 200) = *v75;
    *(v0 + 216) = v83;
    *(v0 + 232) = v82;
    memmove((v139 + v73), v75, 0xB0uLL);
    (*(*(v72 - 8) + 56))(v139, 0, 1, v72);
    v84 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
    swift_beginAccess();
    sub_26BE6FF30(v0 + 200, v0 + 376);
    sub_26BE7170C(v139, v142 + v84, &qword_28045E8D8, &qword_26C012580);
    swift_endAccess();
    sub_26BF56BD4(&v145);
    v85 = *(v0 + 1424);
    v86 = v146;
    *(v0 + 1464) = v145;
    *(v0 + 1472) = v86;
    v87 = *(v85 + 44);
    v88 = v74 + v87 + *(type metadata accessor for MLS.KeySchedule() + 40);
    sub_26C009C3C();
    *(v0 + 1480) = *(v0 + 1224);
    *(v0 + 1488) = *(v0 + 1232);
    v145 = *(v74 + 56);

    *(v0 + 1496) = MLS.RatchetTree.rawRepresentation.getter();
    *(v0 + 1504) = v89;
    v90 = *(v0 + 1400);
    v91 = *(v0 + 1336);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
    v92 = *(v91 + 72);
    v93 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_26C011280;
    sub_26BF7F0BC(v90, v94 + v93, type metadata accessor for MLS.MLSMessage);
    *(v0 + 1512) = sub_26BEE6FC0(v94);
    *(v0 + 1520) = v95;
    v96 = *(v0 + 1400);
    v97 = *(v0 + 1384);
    v98 = *(v0 + 1328);
    swift_setDeallocating();
    v99 = *(v94 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v0 + 1240) = xmmword_26C00DA60;
    v100 = *(v96 + *(v97 + 20));
    if (*(v100 + 16))
    {
      v101 = *(v0 + 1344);
      v103 = *(v100 + 40);
      v102 = *(v100 + 48);
      v104 = *(v100 + 56);
      *v101 = *(v100 + 32);
      *(v101 + 8) = v103;
      *(v101 + 16) = v102;
      *(v101 + 24) = v104;
      type metadata accessor for MLS.MLSMessage.Inner(0);
      swift_storeEnumTagMultiPayload();

      sub_26BE00608(v102, v104);

      sub_26BE00608(v102, v104);
      v105 = MLS.MLSMessage.rawValue.getter();
      v143 = v102;
      v106 = *(v0 + 1312);
      v107 = v105;
      v109 = v108;
      sub_26BF7F05C(*(v0 + 1344), type metadata accessor for MLS.MLSMessage);
      sub_26BE132D4(*(v0 + 1240), *(v0 + 1248));
      *(v0 + 1240) = v107;
      *(v0 + 1248) = v109;

      v110 = sub_26C009A3C();
      v111 = sub_26C00AA1C();

      if (os_log_type_enabled(v110, v111))
      {
        v112 = *(v0 + 1312);
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v145 = v114;
        *v113 = 136315138;

        v115 = sub_26BE3D034();
        v117 = v116;

        v118 = sub_26BE29740(v115, v117, &v145);

        *(v113 + 4) = v118;
        _os_log_impl(&dword_26BDFE000, v110, v111, "%s: generated welcome message", v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x26D69A4E0](v114, -1, -1);
        MEMORY[0x26D69A4E0](v113, -1, -1);

        sub_26BE00258(v143, v104);
      }

      else
      {

        sub_26BE00258(v143, v104);
      }
    }

    v119 = *(v0 + 1440);
    v120 = *(v0 + 1424);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 1528) = v121;
    v122 = *(*(v121 - 8) + 72);
    v123 = *(*(v121 - 8) + 80);
    *(v0 + 668) = v123;
    v124 = (v123 + 32) & ~v123;
    v125 = swift_allocObject();
    *(v0 + 1536) = v125;
    *(v125 + 16) = xmmword_26C011280;
    v126 = sub_26BE81FE0(*(v119 + *(v120 + 40)));
    if ((v126 & 0x100000000) != 0)
    {
      LODWORD(v126) = sub_26BE4126C();
    }

    v127 = v125 + v124;
    v128 = *(v0 + 1440);
    v129 = *(v0 + 1432);
    v130 = *(v0 + 1424);
    v131 = *(v121 + 48);
    v132 = *(v128 + 24);
    *v127 = v126;
    *(v127 + 8) = v132;
    sub_26BF7F0BC(v128, v127 + v131, type metadata accessor for MLS.GroupState);
    (*(v129 + 56))(v127 + v131, 0, 1, v130);
    v133 = swift_task_alloc();
    *(v0 + 1544) = v133;
    *v133 = v0;
    v133[1] = sub_26BF56088;
    v134 = *(v0 + 1312);

    return sub_26BF394D4(v125);
  }

  return result;
}

uint64_t sub_26BF56088()
{
  v2 = *v1;
  v3 = *(*v1 + 1544);
  v4 = *v1;
  *(v2 + 1552) = v0;

  v5 = *(v2 + 1536);
  v6 = *(v2 + 1528);
  v7 = (*(v2 + 668) + 32) & ~*(v2 + 668);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF56A54;
  }

  else
  {
    v9 = sub_26BF56208;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF56208()
{
  v89 = v0;
  v1 = v0[182];
  v2 = v0[164];

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[164];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v88[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v88);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: returning commit output", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  v12 = v0[190];
  v13 = v0[189];
  __swift_project_value_buffer(v0[181], qword_280478FB0);
  sub_26BE00608(v13, v12);
  v14 = sub_26C009A3C();
  v15 = sub_26C00A9FC();
  sub_26BE00258(v13, v12);
  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[190];
    v17 = v0[189];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v88[0] = v19;
    *v18 = 136315138;
    v20 = sub_26C0090EC();
    v22 = sub_26BE29740(v20, v21, v88);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_26BDFE000, v14, v15, "Produced Commit message: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D69A4E0](v19, -1, -1);
    MEMORY[0x26D69A4E0](v18, -1, -1);
  }

  v87 = v0 + 155;
  v23 = sub_26C009A3C();
  v24 = sub_26C00A9FC();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v88[0] = v26;
    *v25 = 136315138;
    swift_beginAccess();
    v27 = v0[156];
    if (v27 >> 60 == 15)
    {
      v28 = 0xE500000000000000;
      v29 = 0x3E6C696E3CLL;
    }

    else
    {
      v30 = *v87;
      sub_26BE00608(*v87, v0[156]);
      v31 = sub_26C0090EC();
      v28 = v32;
      sub_26BE00258(v30, v27);
      v29 = v31;
    }

    v33 = sub_26BE29740(v29, v28, v88);

    *(v25 + 4) = v33;
    _os_log_impl(&dword_26BDFE000, v23, v24, "Produced Welcome message: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x26D69A4E0](v26, -1, -1);
    MEMORY[0x26D69A4E0](v25, -1, -1);
  }

  else
  {
  }

  v34 = v0[184];
  v35 = v0[183];
  sub_26BE00608(v35, v34);
  v36 = sub_26C009A3C();
  v37 = sub_26C00A9FC();
  sub_26BE00258(v35, v34);
  if (os_log_type_enabled(v36, v37))
  {
    v38 = v0[184];
    v39 = v0[183];
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v88[0] = v41;
    *v40 = 136315138;
    v42 = sub_26C0090EC();
    v44 = sub_26BE29740(v42, v43, v88);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_26BDFE000, v36, v37, "Produced next groupInfo: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x26D69A4E0](v41, -1, -1);
    MEMORY[0x26D69A4E0](v40, -1, -1);
  }

  v45 = v0[186];
  v46 = v0[185];
  sub_26BE00608(v46, v45);
  v47 = sub_26C009A3C();
  v48 = sub_26C00A9FC();
  sub_26BE00258(v46, v45);
  if (os_log_type_enabled(v47, v48))
  {
    v49 = v0[194];
    v50 = v0[186];
    v51 = v0[185];
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v88[0] = v53;
    *v52 = 136315138;
    v0[158] = sub_26BF87240(v51, v50);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v54 = sub_26C00A3EC();
    v56 = v55;

    v57 = sub_26BE29740(v54, v56, v88);

    *(v52 + 4) = v57;
    _os_log_impl(&dword_26BDFE000, v47, v48, "Produced next epoch authenticator: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x26D69A4E0](v53, -1, -1);
    MEMORY[0x26D69A4E0](v52, -1, -1);
  }

  v58 = v0[188];
  v59 = v0[187];
  sub_26BE00608(v59, v58);
  v60 = sub_26C009A3C();
  v61 = sub_26C00A9FC();
  sub_26BE00258(v59, v58);
  if (os_log_type_enabled(v60, v61))
  {
    v62 = v0[188];
    v63 = v0[187];
    v64 = v0[180];
    v65 = v0[177];
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v88[0] = v67;
    *v66 = 136315138;
    v68 = sub_26C0090EC();
    v70 = sub_26BE29740(v68, v69, v88);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_26BDFE000, v60, v61, "Produced next ratchet tree: %s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    MEMORY[0x26D69A4E0](v67, -1, -1);
    MEMORY[0x26D69A4E0](v66, -1, -1);
  }

  else
  {
    v64 = v0[180];
    v65 = v0[177];
  }

  sub_26BF7F05C(v65, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7F05C(v64, type metadata accessor for MLS.GroupState);
  v71 = v0[188];
  v72 = v0[187];
  v73 = v0[180];
  v74 = v0[177];
  v75 = v0[175];
  v76 = v0[174];
  v77 = v0[172];
  v85 = v0[169];
  v86 = v0[168];
  v78 = v0[159];
  v83 = *(v0 + 183);
  v84 = *(v0 + 189);
  v82 = *(v0 + 185);
  swift_beginAccess();
  v79 = *v87;
  *v78 = v84;
  *(v78 + 16) = v79;
  *(v78 + 32) = v83;
  *(v78 + 48) = v82;
  *(v78 + 64) = v72;
  *(v78 + 72) = v71;
  sub_26BE2BAE8(v79, *(&v79 + 1));
  sub_26BF7F05C(v75, type metadata accessor for MLS.GroupState.CommitOutput);
  sub_26BE132D4(v0[155], v0[156]);

  v80 = v0[1];

  return v80();
}

uint64_t sub_26BF56A54()
{
  v1 = v0[190];
  v2 = v0[189];
  v3 = v0[186];
  v4 = v0[185];
  v5 = v0[184];
  v6 = v0[183];
  v7 = v0[180];
  v8 = v0[177];
  v9 = v0[175];
  sub_26BE00258(v0[187], v0[188]);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v8, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7F05C(v7, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState.CommitOutput);
  sub_26BE132D4(v0[155], v0[156]);
  v10 = v0[194];
  v11 = v0[180];
  v12 = v0[177];
  v13 = v0[175];
  v14 = v0[174];
  v15 = v0[172];
  v16 = v0[169];
  v17 = v0[168];

  v18 = v0[1];

  return v18();
}

uint64_t sub_26BF56BD4@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MLS.MLSMessage(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v8 = (v7 - 8);
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = (v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for MLS.GroupInfo();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v8[7];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v17 - 8) + 56))(v11 + v16, 1, 3, v17);
  *v11 = 0;
  *(v11 + v8[8]) = 0;
  *(v11 + v8[9]) = 1;
  *(v11 + v8[10]) = 0;
  *(v11 + v8[11]) = MEMORY[0x277D84F90];
  MLS.GroupState.generateGroupInfo(commitOptions:)(v11, v15);
  result = sub_26BF7F05C(v11, type metadata accessor for MLS.GroupState.CommitOptions);
  if (!v1)
  {
    sub_26BF7F0BC(v15, v6, type metadata accessor for MLS.GroupInfo);
    type metadata accessor for MLS.MLSMessage.Inner(0);
    swift_storeEnumTagMultiPayload();
    v19 = MLS.MLSMessage.rawValue.getter();
    v21 = v20;
    sub_26BF7F05C(v6, type metadata accessor for MLS.MLSMessage);
    result = sub_26BF7F05C(v15, type metadata accessor for MLS.GroupInfo);
    *a1 = v19;
    a1[1] = v21;
  }

  return result;
}

uint64_t MLS.Welcome.asMessage()@<X0>(uint64_t *a1@<X8>)
{
  v4 = type metadata accessor for MLS.MLSMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOWORD(v6) = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  *v7 = v6;
  *(v7 + 1) = v8;
  *(v7 + 2) = v9;
  *(v7 + 3) = v10;
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();

  sub_26BE00608(v9, v10);
  v11 = MLS.MLSMessage.rawValue.getter();
  if (v2)
  {
    return sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  }

  v14 = v11;
  v15 = v12;
  result = sub_26BF7F05C(v7, type metadata accessor for MLS.MLSMessage);
  *a1 = v14;
  a1[1] = v15;
  return result;
}

uint64_t sub_26BF56FC0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF56FE4, 0, 0);
}

uint64_t sub_26BF56FE4()
{
  v2 = v0[3];
  v1 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F19C;
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return (sub_26BE927E4)(v6);
}

uint64_t sub_26BF570AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[25] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v6 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF57170, 0, 0);
}

uint64_t sub_26BF57170()
{
  v26 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25[0] = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, v25);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    v15 = *(v7 + 16);

    *(v9 + 14) = v15;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: adding %ld members to group", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  else
  {
    v16 = v0[24];
    swift_bridgeObjectRelease_n();
  }

  v17 = v0[23];
  sub_26BE2FFCC();
  *v25 = *(v0[23] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v18 = 45;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0;
    *(v18 + 112) = 23;
    swift_willThrow();
    v20 = v0[26];
    v19 = v0[27];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = swift_task_alloc();
    v0[28] = v23;
    *v23 = v0;
    v23[1] = sub_26BF5747C;
    v24 = v0[23];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5747C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 224);
  v6 = *v2;

  if (v1)
  {
    v8 = *(v4 + 208);
    v7 = *(v4 + 216);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 272) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF575DC, 0, 0);
  }
}

uint64_t sub_26BF575DC()
{
  if (*(v0 + 272) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v3 = *(v0 + 208);
    v2 = *(v0 + 216);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 184);
    v7 = *(v6 + 152);
    v8 = *(v6 + 24);
    *(v0 + 160) = v7;
    *(v0 + 168) = v8;
    v9 = swift_task_alloc();
    *(v0 + 232) = v9;
    *v9 = v0;
    v9[1] = sub_26BF57744;
    v10 = *(v0 + 216);
    v11 = *(v0 + 184);

    return sub_26BF37CA4(v10, (v0 + 160), 0);
  }
}

uint64_t sub_26BF57744()
{
  v2 = *(*v1 + 232);
  v5 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_26BF57AD4;
  }

  else
  {
    v3 = sub_26BF57858;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF57858()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 216);
  v3 = *(v0 + 192);
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  v5 = sub_26BE5D1F0(sub_26BF7F03C, v4, v3);
  *(v0 + 248) = v5;
  if (v1)
  {
    v6 = *(v0 + 216);

    sub_26BF7F05C(v6, type metadata accessor for MLS.GroupState);
    v8 = *(v0 + 208);
    v7 = *(v0 + 216);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v11 = v5;
    v13 = *(v0 + 200);
    v12 = *(v0 + 208);

    *(v0 + 152) = 0;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 32) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 16) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
    v14 = *(v0 + 80);
    v15 = *(v0 + 88);
    v16 = *(v0 + 96);
    v17 = *(v0 + 104);
    sub_26BE701EC(*(v0 + 72));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    v18 = v13[5];
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v19 - 8) + 56))(&v12[v18], 1, 3, v19);
    *v12 = 0;
    v12[v13[6]] = 0;
    v12[v13[7]] = 0;
    v12[v13[8]] = 0;
    *&v12[v13[9]] = MEMORY[0x277D84F90];
    v20 = swift_task_alloc();
    *(v0 + 256) = v20;
    *v20 = v0;
    v20[1] = sub_26BF57B40;
    v22 = *(v0 + 208);
    v21 = *(v0 + 216);
    v23 = *(v0 + 176);
    v24 = *(v0 + 184);

    return sub_26BF54A88(v23, v21, v11, v0 + 16, v22);
  }
}

uint64_t sub_26BF57AD4()
{
  v1 = v0[30];
  v3 = v0[26];
  v2 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF57B40()
{
  v2 = *v1;
  v3 = (*v1)[32];
  v4 = *v1;
  v2[33] = v0;

  v5 = v2[31];
  sub_26BF7F05C(v2[26], type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8((v2 + 2));
  if (v0)
  {
    v6 = sub_26BF57D40;
  }

  else
  {
    v6 = sub_26BF57CB4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF57CB4()
{
  v1 = v0[26];
  sub_26BF7F05C(v0[27], type metadata accessor for MLS.GroupState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF57D40()
{
  sub_26BF7F05C(v0[27], type metadata accessor for MLS.GroupState);
  v1 = v0[33];
  v3 = v0[26];
  v2 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF57DC8()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - v5;
  v7 = type metadata accessor for FileInfoAndSender();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE2E1F0(v2 + v12, v6, &qword_28045FA38, &qword_26C01D890);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26BE2E258(v6, &qword_28045FA38, &qword_26C01D890);
    return MEMORY[0x277D84F90];
  }

  else
  {
    sub_26BF7F124(v6, v11, type metadata accessor for FileInfoAndSender);
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v14 = sub_26C009A5C();
    v15 = __swift_project_value_buffer(v14, qword_280478EE8);

    v40[7] = v15;
    v16 = sub_26C009A3C();
    v17 = sub_26C00AA1C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v40[0] = v19;
      *v18 = 136315138;

      v20 = sub_26BE3D034();
      v22 = v21;

      v23 = sub_26BE29740(v20, v22, v40);

      *(v18 + 4) = v23;
      _os_log_impl(&dword_26BDFE000, v16, v17, "%s: Generating group info extensions with fileInfoForGroupSubject extension", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D69A4E0](v19, -1, -1);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    type metadata accessor for FileInfo(0);
    sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo);
    v24 = sub_26C00998C();
    if (v1)
    {
      return sub_26BF7F05C(v11, type metadata accessor for FileInfoAndSender);
    }

    else
    {
      v26 = v24;
      v27 = v25;
      sub_26BE00608(v24, v25);
      sub_26BFFB11C(v26, v27, v40);
      sub_26BE00258(v26, v27);
      v28 = v40[0];
      v29 = v40[1];
      v30 = v40[2];
      v31 = sub_26BEEBD8C(0, 1, 1, MEMORY[0x277D84F90]);
      v33 = *(v31 + 2);
      v32 = *(v31 + 3);
      if (v33 >= v32 >> 1)
      {
        v31 = sub_26BEEBD8C((v32 > 1), v33 + 1, 1, v31);
      }

      *(v31 + 2) = v33 + 1;
      v39 = v31;
      v34 = &v31[24 * v33];
      *(v34 + 16) = v28;
      *(v34 + 5) = v29;
      *(v34 + 6) = v30;
      v35 = sub_26C009A3C();
      v36 = sub_26C00AA1C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_26BDFE000, v35, v36, "Added subject key extension to group info extensions", v37, 2u);
        MEMORY[0x26D69A4E0](v37, -1, -1);
      }

      sub_26BE00258(v26, v27);

      sub_26BF7F05C(v11, type metadata accessor for FileInfoAndSender);
      return v39;
    }
  }
}

void sub_26BF582A8(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v35 - v6;
  v8 = sub_26C0098EC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = type metadata accessor for FileInfo(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BE820D4(*(a1 + 72), v37);
  if (v2)
  {
    return;
  }

  v14 = *(&v37[0] + 1);
  if (*(&v37[0] + 1) >> 60 == 15)
  {
    return;
  }

  v41 = 0;
  v36 = v1;
  v15 = *&v37[0];
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v16 = sub_26C009A5C();
  v17 = __swift_project_value_buffer(v16, qword_280478EE8);
  sub_26BE00608(v15, v14);
  v18 = sub_26C009A3C();
  v19 = sub_26C00AA1C();
  if (!os_log_type_enabled(v18, v19))
  {
    sub_26BE132D4(v15, v14);
    goto LABEL_18;
  }

  v35 = v17;
  v20 = swift_slowAlloc();
  v21 = v20;
  *v20 = 134217984;
  v22 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v22 != 2)
    {
      v23 = 0;
      goto LABEL_17;
    }

    v25 = *(v15 + 16);
    v24 = *(v15 + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (!v26)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_14:
    LODWORD(v23) = HIDWORD(v15) - v15;
    if (__OFSUB__(HIDWORD(v15), v15))
    {
      __break(1u);
      return;
    }

    v23 = v23;
    goto LABEL_17;
  }

  if (v22)
  {
    goto LABEL_14;
  }

  v23 = BYTE6(v14);
LABEL_17:
  *(v20 + 4) = v23;
  sub_26BE132D4(v15, v14);
  _os_log_impl(&dword_26BDFE000, v18, v19, "Found subject key extension in GroupInfo containing %ld bytes", v21, 0xCu);
  MEMORY[0x26D69A4E0](v21, -1, -1);
LABEL_18:

  v39 = v15;
  v40 = v14;
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  sub_26BE00608(v15, v14);
  sub_26C0098DC();
  sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo);
  v27 = v41;
  sub_26C00999C();
  if (v27)
  {
    sub_26BE132D4(v15, v14);
  }

  else
  {
    v28 = sub_26C009A3C();
    v29 = sub_26C00AA1C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26BDFE000, v28, v29, "Found FileInfo in subject key extension", v30, 2u);
      MEMORY[0x26D69A4E0](v30, -1, -1);

      sub_26BE132D4(v15, v14);
    }

    else
    {
      sub_26BE132D4(v15, v14);
    }

    v31 = v36;
    sub_26BF7F124(v13, v7, type metadata accessor for FileInfo);
    v32 = type metadata accessor for FileInfoAndSender();
    v33 = &v7[*(v32 + 20)];
    *(v33 + 6) = 0;
    *(v33 + 1) = 0u;
    *(v33 + 2) = 0u;
    *v33 = 0u;
    (*(*(v32 - 8) + 56))(v7, 0, 1, v32);
    v34 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_fileInfoForGroupSubject;
    swift_beginAccess();
    sub_26BE7170C(v7, v31 + v34, &qword_28045FA38, &qword_26C01D890);
    swift_endAccess();
  }
}

char *sub_26BF58738(uint64_t a1, uint64_t a2)
{
  v4 = v3;

  v7 = sub_26BEC8E48(a2);

  v41 = MEMORY[0x277D84F90];
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  LOWORD(v37) = v8;
  v38 = v9;
  v39 = v10;
  v40 = v11;

  v12 = v4;
  sub_26BE5A75C(&v37, v2, v7, &v41);

  v13 = v38;

  if (v12)
  {
LABEL_13:

    return v13;
  }

  v13 = v41;
  v14 = *(a2 + 16);
  if (*(v41 + 2) != v14)
  {
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v15 = sub_26C009A5C();
    __swift_project_value_buffer(v15, qword_280478EE8);

    v16 = sub_26C009A3C();
    v17 = sub_26C00AA0C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134218240;
      *(v18 + 4) = v14;

      *(v18 + 12) = 2048;
      *(v18 + 14) = *(v13 + 2);
      _os_log_impl(&dword_26BDFE000, v16, v17, "Attempted to remove %ld members, but %ld were found", v18, 0x16u);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    else
    {
    }

    v19 = sub_26C009A3C();
    v20 = sub_26C00AA0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v37 = v22;
      *v21 = 136315138;

      v24 = MEMORY[0x26D6991B0](v23, &type metadata for MLS.LeafIndex);
      v26 = v25;

      v27 = sub_26BE29740(v24, v26, &v37);

      *(v21 + 4) = v27;
      _os_log_impl(&dword_26BDFE000, v19, v20, "Indices to remove: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x26D69A4E0](v22, -1, -1);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    v28 = sub_26C009A3C();
    v29 = sub_26C00AA0C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v37 = v31;
      *v30 = 136315138;
      v32 = MEMORY[0x26D6991B0](a2, &type metadata for MLS.Identity.SigningIdentity);
      v34 = sub_26BE29740(v32, v33, &v37);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_26BDFE000, v28, v29, "Members to remove: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v31);
      MEMORY[0x26D69A4E0](v31, -1, -1);
      MEMORY[0x26D69A4E0](v30, -1, -1);
    }

    sub_26BE01654();
    swift_allocError();
    *v35 = 15;
    v35[112] = 0;
    swift_willThrow();
    goto LABEL_13;
  }

  return v13;
}

uint64_t sub_26BF58B48(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = v3;
  *(v4 + 48) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_26BF58B70, 0, 0);
}

uint64_t sub_26BF58B70()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);

  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F19C;
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 48);
  v7 = *(v0 + 16);

  return (sub_26BE9326C)(v7);
}

uint64_t sub_26BF58C3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 296) = a4;
  *(v4 + 184) = a2;
  *(v4 + 192) = a3;
  *(v4 + 176) = a1;
  v5 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  *(v4 + 200) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v4 + 208) = swift_task_alloc();
  v7 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  *(v4 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF58D04, 0, 0);
}

uint64_t sub_26BF58D04()
{
  v1 = *(v0 + 184);
  v2 = *(v1 + 152);
  v3 = *(v1 + 24);
  *(v0 + 160) = v2;
  *(v0 + 168) = v3;
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_26BF58DBC;
  v5 = *(v0 + 216);
  v6 = *(v0 + 184);

  return sub_26BF37CA4(v5, (v0 + 160), 0);
}

uint64_t sub_26BF58DBC()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_26BF591D8;
  }

  else
  {
    v3 = sub_26BF58ED0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF58ED0()
{
  v25 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = v0[23];
  v1 = v0[24];
  v3 = sub_26C009A5C();
  v0[30] = __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[24];
  if (v6)
  {
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24[0] = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    v15 = *(v7 + 16);

    *(v9 + 14) = v15;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: removing %ld members from group", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  else
  {
    v16 = v0[24];
    swift_bridgeObjectRelease_n();
  }

  v17 = v0[29];
  v18 = v0[23];
  sub_26BE2FFCC();
  if (v17)
  {
    goto LABEL_9;
  }

  *v24 = *(v0[23] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    v19 = swift_allocError();
    *v20 = 45;
    *(v20 + 8) = 0u;
    *(v20 + 24) = 0u;
    *(v20 + 40) = 0u;
    *(v20 + 56) = 0u;
    *(v20 + 72) = 0u;
    *(v20 + 88) = 0u;
    *(v20 + 104) = 0;
    *(v20 + 112) = 23;
    swift_willThrow();
    v17 = v19;
LABEL_9:
    v0[33] = v17;

    return MEMORY[0x2822009F8](sub_26BF57D40, 0, 0);
  }

  v21 = swift_task_alloc();
  v0[31] = v21;
  *v21 = v0;
  v21[1] = sub_26BF59244;
  v22 = v0[23];

  return sub_26BE304A0();
}

uint64_t sub_26BF591D8()
{
  v1 = v0[29];
  v3 = v0[26];
  v2 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF59244(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 248);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    *(v4 + 264) = v1;
    v7 = sub_26BF57D40;
  }

  else
  {
    *(v4 + 297) = a1 & 1;
    v7 = sub_26BF59374;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF59374()
{
  v37 = v0;
  if (*(v0 + 297) == 1)
  {
    sub_26BE01654();
    v1 = swift_allocError();
    *v2 = 46;
    *(v2 + 8) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 40) = 0u;
    *(v2 + 56) = 0u;
    *(v2 + 72) = 0u;
    *(v2 + 88) = 0u;
    *(v2 + 104) = 0;
    *(v2 + 112) = 23;
    swift_willThrow();
    *(v0 + 264) = v1;

    return MEMORY[0x2822009F8](sub_26BF57D40, 0, 0);
  }

  else
  {
    v3 = *(v0 + 256);
    v4 = *(v0 + 184);
    v5 = sub_26BF58738(*(v0 + 216), *(v0 + 192));
    if (v3)
    {
      sub_26BF7F05C(*(v0 + 216), type metadata accessor for MLS.GroupState);
      v19 = *(v0 + 208);
      v18 = *(v0 + 216);

      v20 = *(v0 + 8);

      return v20();
    }

    else
    {
      v6 = v5;
      v7 = *(v0 + 240);

      v8 = sub_26C009A3C();
      v9 = sub_26C00A9FC();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v36 = v11;
        *v10 = 136315138;
        v12 = MEMORY[0x26D6991B0](v6, &type metadata for MLS.LeafIndex);
        v14 = sub_26BE29740(v12, v13, &v36);

        *(v10 + 4) = v14;
        _os_log_impl(&dword_26BDFE000, v8, v9, "Indices to remove from group: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v11);
        MEMORY[0x26D69A4E0](v11, -1, -1);
        MEMORY[0x26D69A4E0](v10, -1, -1);
      }

      v15 = *(v0 + 216);
      v16 = MEMORY[0x277D84F90];
      v17 = MLS.GroupState.generateAddAndRemoveProposals(adds:removes:serverRemove:)(MEMORY[0x277D84F90], v6, *(v0 + 296));
      *(v0 + 272) = v17;
      v21 = v17;
      v23 = *(v0 + 200);
      v22 = *(v0 + 208);

      *(v0 + 152) = 0;
      *(v0 + 136) = 0u;
      *(v0 + 120) = 0u;
      *(v0 + 48) = 0u;
      *(v0 + 64) = 0u;
      *(v0 + 80) = 0u;
      *(v0 + 96) = 0u;
      *(v0 + 32) = 0u;
      sub_26BE2962C(0, 0x3000000000000000uLL);
      *(v0 + 16) = xmmword_26C00DA50;
      sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
      v24 = *(v0 + 80);
      v25 = *(v0 + 88);
      v26 = *(v0 + 96);
      v27 = *(v0 + 104);
      sub_26BE701EC(*(v0 + 72));
      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
      *(v0 + 72) = 0u;
      v28 = v23[5];
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
      (*(*(v29 - 8) + 56))(&v22[v28], 1, 3, v29);
      *v22 = 0;
      v22[v23[6]] = 0;
      v22[v23[7]] = 0;
      v22[v23[8]] = 0;
      *&v22[v23[9]] = v16;
      v30 = swift_task_alloc();
      *(v0 + 280) = v30;
      *v30 = v0;
      v30[1] = sub_26BF59788;
      v32 = *(v0 + 208);
      v31 = *(v0 + 216);
      v33 = *(v0 + 176);
      v34 = *(v0 + 184);

      return sub_26BF54A88(v33, v31, v21, v0 + 16, v32);
    }
  }
}

uint64_t sub_26BF59788()
{
  v2 = *v1;
  v3 = (*v1)[35];
  v4 = *v1;
  v2[36] = v0;

  v5 = v2[34];
  sub_26BF7F05C(v2[26], type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8((v2 + 2));
  if (v0)
  {
    v6 = sub_26BF598FC;
  }

  else
  {
    v6 = sub_26BF7F1C0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF598FC()
{
  sub_26BF7F05C(v0[27], type metadata accessor for MLS.GroupState);
  v1 = v0[36];
  v3 = v0[26];
  v2 = v0[27];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF59984(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF599A4, 0, 0);
}

uint64_t sub_26BF599A4()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F1A0;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BEA0904(v3, v4, v4);
}

uint64_t sub_26BF59A5C(uint64_t a1, uint64_t a2)
{
  v2[51] = a1;
  v2[52] = a2;
  v3 = type metadata accessor for MLS.MLSMessage(0);
  v2[53] = v3;
  v4 = *(v3 - 8);
  v2[54] = v4;
  v5 = *(v4 + 64) + 15;
  v2[55] = swift_task_alloc();
  v6 = type metadata accessor for MLS.GroupState();
  v2[56] = v6;
  v7 = *(v6 - 8);
  v2[57] = v7;
  v8 = *(v7 + 64) + 15;
  v2[58] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF59B78, 0, 0);
}

uint64_t sub_26BF59B78()
{
  v21 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[52];
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[52];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: proposing removal of self from group", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[52];
  sub_26BE2FFCC();
  *v20 = *(v0[52] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 45;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    swift_willThrow();
    v14 = v0[58];
    v15 = v0[55];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[59] = v18;
    *v18 = v0;
    v18[1] = sub_26BF59E38;
    v19 = v0[52];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF59E38(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 472);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 464);
    v8 = *(v4 + 440);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 201) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF59F9C, 0, 0);
  }
}

uint64_t sub_26BF59F9C()
{
  if (*(v0 + 201) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 464);
    v3 = *(v0 + 440);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 416);
    v7 = *(v6 + 152);
    v8 = *(v6 + 24);
    *(v0 + 392) = v7;
    *(v0 + 400) = v8;
    v9 = swift_task_alloc();
    *(v0 + 480) = v9;
    *v9 = v0;
    v9[1] = sub_26BF5A104;
    v10 = *(v0 + 464);
    v11 = *(v0 + 416);

    return sub_26BF37CA4(v10, (v0 + 392), 0);
  }
}

uint64_t sub_26BF5A104()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_26BF5A54C;
  }

  else
  {
    v3 = sub_26BF5A218;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5A218()
{
  v40 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 464);
  v3 = *(v0 + 440);
  sub_26BE800C4((v0 + 208));
  v4 = *(v0 + 352);
  *(v0 + 144) = *(v0 + 336);
  *(v0 + 160) = v4;
  *(v0 + 176) = *(v0 + 368);
  *(v0 + 192) = *(v0 + 384);
  v5 = *(v0 + 288);
  *(v0 + 80) = *(v0 + 272);
  *(v0 + 96) = v5;
  v6 = *(v0 + 320);
  *(v0 + 112) = *(v0 + 304);
  *(v0 + 128) = v6;
  v7 = *(v0 + 224);
  *(v0 + 16) = *(v0 + 208);
  *(v0 + 32) = v7;
  v8 = *(v0 + 256);
  *(v0 + 48) = *(v0 + 240);
  *(v0 + 64) = v8;
  sub_26BE82200(v0 + 16);
  v9 = *(v0 + 160);
  v35[8] = *(v0 + 144);
  v35[9] = v9;
  v36[0] = *(v0 + 176);
  *(v36 + 9) = *(v0 + 185);
  v10 = *(v0 + 96);
  v35[4] = *(v0 + 80);
  v35[5] = v10;
  v11 = *(v0 + 128);
  v35[6] = *(v0 + 112);
  v35[7] = v11;
  v12 = *(v0 + 32);
  v35[0] = *(v0 + 16);
  v35[1] = v12;
  v13 = *(v0 + 64);
  v35[2] = *(v0 + 48);
  v35[3] = v13;
  v37[0] = 0;
  v38 = xmmword_26C00BBD0;
  v39 = 0;
  sub_26BE68838(v35, v37, v3);
  if (v1)
  {
    v14 = *(v0 + 464);
    sub_26BE00258(0, 0xC000000000000000);
    sub_26BF7F05C(v14, type metadata accessor for MLS.GroupState);
    v15 = *(v0 + 464);
    v16 = *(v0 + 440);

    v17 = *(v0 + 8);

    return v17();
  }

  else
  {
    v19 = *(v0 + 464);
    v20 = *(v0 + 448);
    sub_26BE00258(0, 0xC000000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 496) = v21;
    v22 = *(*(v21 - 8) + 72);
    v23 = *(*(v21 - 8) + 80);
    *(v0 + 204) = v23;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v0 + 504) = v25;
    *(v25 + 16) = xmmword_26C011280;
    v26 = sub_26BE81FE0(*(v19 + *(v20 + 40)));
    if ((v26 & 0x100000000) != 0)
    {
      LODWORD(v26) = sub_26BE4126C();
    }

    v27 = v25 + v24;
    v29 = *(v0 + 456);
    v28 = *(v0 + 464);
    v30 = *(v0 + 448);
    v31 = *(v21 + 48);
    v32 = *(v28 + 24);
    *v27 = v26;
    *(v27 + 8) = v32;
    sub_26BF7F0BC(v28, v27 + v31, type metadata accessor for MLS.GroupState);
    (*(v29 + 56))(v27 + v31, 0, 1, v30);
    v33 = swift_task_alloc();
    *(v0 + 512) = v33;
    *v33 = v0;
    v33[1] = sub_26BF5A5BC;
    v34 = *(v0 + 416);

    return sub_26BF394D4(v25);
  }
}

uint64_t sub_26BF5A54C()
{
  v1 = v0[61];
  v2 = v0[58];
  v3 = v0[55];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5A5BC()
{
  v2 = *v1;
  v3 = *(*v1 + 512);
  v4 = *v1;
  *(v2 + 520) = v0;

  v5 = *(v2 + 504);
  v6 = *(v2 + 496);
  v7 = (*(v2 + 204) + 32) & ~*(v2 + 204);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF5A938;
  }

  else
  {
    v9 = sub_26BF5A73C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF5A73C()
{
  v1 = v0[65];
  v3 = v0[54];
  v2 = v0[55];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_26C011280;
  sub_26BF7F0BC(v2, v6 + v5, type metadata accessor for MLS.MLSMessage);
  v8 = sub_26BEE6FC0(v6);
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[53];
  if (v1)
  {
    sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage);
    swift_setDeallocating();
    v12 = *(v6 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
    v13 = v0[58];
    v14 = v0[55];
  }

  else
  {
    v16 = v7;
    v17 = v0[51];
    v18 = v0[55];
    sub_26BF7F05C(v10, type metadata accessor for MLS.MLSMessage);
    swift_setDeallocating();
    v19 = *(v6 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *v17 = v8;
    v17[1] = v16;
    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_26BF5A938()
{
  v1 = v0[58];
  sub_26BF7F05C(v0[55], type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  v2 = v0[65];
  v3 = v0[58];
  v4 = v0[55];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF5AA10@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F248, &qword_26C01A888);
  v6 = *(type metadata accessor for MLS.MLSMessage(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C011280;
  sub_26BF7F0BC(v2, v9 + v8, type metadata accessor for MLS.MLSMessage);
  v10 = a1(v9);
  if (v3)
  {
    swift_setDeallocating();
    v12 = *(v9 + 16);
    swift_arrayDestroy();
    return swift_deallocClassInstance();
  }

  else
  {
    v14 = v10;
    v15 = v11;
    swift_setDeallocating();
    v16 = *(v9 + 16);
    swift_arrayDestroy();
    result = swift_deallocClassInstance();
    *a2 = v14;
    a2[1] = v15;
  }

  return result;
}

uint64_t sub_26BF5AB84(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF5ABA4, 0, 0);
}

uint64_t sub_26BF5ABA4()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BE1C3F0;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE9443C(v3, v4, v4);
}

uint64_t sub_26BF5AC5C(uint64_t a1, uint64_t a2)
{
  v2[38] = a1;
  v2[39] = a2;
  v3 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[40] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[41] = swift_task_alloc();
  v5 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v2[42] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5AD1C, 0, 0);
}

uint64_t sub_26BF5AD1C()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 312);
  v2 = sub_26C009A5C();
  *(v0 + 344) = __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: performing self update", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 312);
  v13 = *(v12 + 152);
  v14 = *(v12 + 24);
  *(v0 + 288) = v13;
  *(v0 + 296) = v14;
  v15 = swift_task_alloc();
  *(v0 + 352) = v15;
  *v15 = v0;
  v15[1] = sub_26BF5AF28;
  v16 = *(v0 + 336);
  v17 = *(v0 + 312);

  return sub_26BF37CA4(v16, (v0 + 288), 0);
}

uint64_t sub_26BF5AF28()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_26BF5B52C;
  }

  else
  {
    v3 = sub_26BF5B03C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5B03C()
{
  v52 = v0;
  v1 = *(v0 + 344);
  v2 = *(*(v0 + 312) + 48);
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = OBJC_IVAR____TtCOO8SwiftMLS3MLS6Client6Client_signaturePrivateKey;
  swift_beginAccess();
  sub_26BE038A8(v2 + v5, v0 + 120);
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 32) = 0u;
  sub_26BE2958C(v3, v4);
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 16) = v3;
  *(v0 + 24) = v4;
  sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 104);
  sub_26BE701EC(*(v0 + 72));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;

  v10 = sub_26C009A3C();
  v11 = sub_26C00A9FC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v50 = v13;
    *v12 = 136315138;
    v14 = *(v2 + 32);
    if ((~v14 & 0x3000000000000000) != 0)
    {
      v51[0] = *(v2 + 24);
      v51[1] = v14;
      v16 = MLS.Identity.Credential.description.getter();
      v15 = v17;
    }

    else
    {
      v15 = 0xE500000000000000;
      v16 = 0x3E6C696E3CLL;
    }

    v18 = sub_26BE29740(v16, v15, &v50);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_26BDFE000, v10, v11, "Updating with new credential: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x26D69A4E0](v13, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);
  }

  v19 = *(v0 + 344);
  v20 = *(v0 + 312);

  v21 = sub_26C009A3C();
  v22 = sub_26C00A9FC();

  if (os_log_type_enabled(v21, v22))
  {
    buf = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v51[0] = v49;
    *buf = 136315138;
    sub_26BE038A8(v2 + v5, v0 + 200);
    v23 = *(v0 + 224);
    v24 = *(v0 + 232);
    __swift_project_boxed_opaque_existential_1((v0 + 200), v23);
    v47 = v22;
    v46 = *(v24 + 40);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *(v0 + 184) = AssociatedTypeWitness;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    *(v0 + 192) = AssociatedConformanceWitness;
    __swift_allocate_boxed_opaque_existential_1((v0 + 160));
    v46(v23, v24);
    v27 = (*(*(AssociatedConformanceWitness + 8) + 16))(AssociatedTypeWitness);
    v29 = v28;
    v30 = sub_26BE83594(v27, v28);
    v32 = v31;
    sub_26BE00258(v27, v29);
    __swift_destroy_boxed_opaque_existential_1((v0 + 160));
    __swift_destroy_boxed_opaque_existential_1((v0 + 200));
    v33 = sub_26BE29740(v30, v32, v51);

    *(buf + 4) = v33;
    _os_log_impl(&dword_26BDFE000, v21, v47, "Updating with new signature public key: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x26D69A4E0](v49, -1, -1);
    MEMORY[0x26D69A4E0](buf, -1, -1);
  }

  v35 = *(v0 + 320);
  v34 = *(v0 + 328);
  v36 = v35[5];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v37 - 8) + 56))(&v34[v36], 1, 3, v37);
  *v34 = 0;
  v34[v35[6]] = 1;
  v34[v35[7]] = 0;
  v34[v35[8]] = 0;
  v38 = v35[9];
  v39 = MEMORY[0x277D84F90];
  *&v34[v38] = MEMORY[0x277D84F90];
  v40 = swift_task_alloc();
  *(v0 + 368) = v40;
  *v40 = v0;
  v40[1] = sub_26BF5B598;
  v42 = *(v0 + 328);
  v41 = *(v0 + 336);
  v43 = *(v0 + 304);
  v44 = *(v0 + 312);

  return sub_26BF54A88(v43, v41, v39, v0 + 16, v42);
}

uint64_t sub_26BF5B52C()
{
  v1 = v0[45];
  v3 = v0[41];
  v2 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5B598()
{
  v2 = *(*v1 + 368);
  v3 = *(*v1 + 328);
  v6 = *v1;
  *(*v1 + 376) = v0;

  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState.CommitOptions);
  if (v0)
  {
    v4 = sub_26BF5B770;
  }

  else
  {
    v4 = sub_26BF5B6DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF5B6DC()
{
  v1 = v0[41];
  sub_26BF7F05C(v0[42], type metadata accessor for MLS.GroupState);
  sub_26BF7E1E8((v0 + 2));

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF5B770()
{
  sub_26BF7F05C(v0[42], type metadata accessor for MLS.GroupState);
  sub_26BF7E1E8((v0 + 2));
  v1 = v0[47];
  v3 = v0[41];
  v2 = v0[42];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5B800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_26BF5B824, 0, 0);
}

uint64_t sub_26BF5B824()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];

  sub_26BE00608(v3, v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_26BE3C268;
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return (sub_26BE9FE6C)(v7);
}

uint64_t sub_26BF5B8F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for MLS.GroupState();
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v8 = *(v7 + 64) + 15;
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5B9E0, 0, 0);
}

uint64_t sub_26BF5B9E0()
{
  v21 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[8];
  v2 = sub_26C009A5C();
  v0[15] = v2;
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: encrypting application message", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[8];
  sub_26BE2FFCC();
  *v20 = *(v0[8] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 45;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    swift_willThrow();
    v14 = v0[14];
    v15 = v0[11];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[16] = v18;
    *v18 = v0;
    v18[1] = sub_26BF5BCA4;
    v19 = v0[8];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5BCA4(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 112);
    v8 = *(v4 + 88);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 220) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5BE08, 0, 0);
  }
}

uint64_t sub_26BF5BE08()
{
  if (*(v0 + 220) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 112);
    v3 = *(v0 + 88);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 64);
    v7 = *(v6 + 152);
    v8 = *(v6 + 24);
    *(v0 + 40) = v7;
    *(v0 + 48) = v8;
    v9 = swift_task_alloc();
    *(v0 + 136) = v9;
    *v9 = v0;
    v9[1] = sub_26BF5BF74;
    v10 = *(v0 + 112);
    v11 = *(v0 + 64);

    return sub_26BF37CA4(v10, (v0 + 40), 0);
  }
}

uint64_t sub_26BF5BF74()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_26BF5C504;
  }

  else
  {
    v3 = sub_26BF5C088;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5C088()
{
  v45 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);
  v3 = sub_26BF36A34(*(v0 + 112));
  if (v1)
  {

    v5 = 0;
    v6 = 0xC000000000000000;
  }

  else
  {
    v5 = v3;
    v6 = v4;
  }

  *(v0 + 152) = v5;
  *(v0 + 160) = v6;
  v7 = *(v0 + 112);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  v10 = *(v0 + 72);
  v11 = *(*(v0 + 64) + 48);
  swift_beginAccess();
  v12 = *(v11 + 50);
  v42[0] = v5;
  v42[1] = v6;
  v42[2] = 0;
  v43 = v12;
  v44 = v12 ^ 1;
  MLS.GroupState.generateApplicationMessage(message:options:)(v10, v9, v42, v8);
  v13 = *(v0 + 88);
  v14 = MLS.MLSMessage.rawValue.getter();
  *(v0 + 168) = v14;
  *(v0 + 176) = v15;
  v16 = v14;
  v17 = v15;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 120), qword_280478FB0);
  sub_26BE00608(v16, v17);
  v18 = sub_26C009A3C();
  v19 = sub_26C00A9FC();
  sub_26BE00258(v16, v17);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42[0] = v21;
    *v20 = 136315138;
    v22 = sub_26C0090EC();
    v24 = sub_26BE29740(v22, v23, v42);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_26BDFE000, v18, v19, "Produced application message: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x26D69A4E0](v21, -1, -1);
    MEMORY[0x26D69A4E0](v20, -1, -1);
  }

  v25 = *(v0 + 112);
  v26 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 184) = v27;
  v28 = *(*(v27 - 8) + 72);
  v29 = *(*(v27 - 8) + 80);
  *(v0 + 216) = v29;
  v30 = (v29 + 32) & ~v29;
  v31 = swift_allocObject();
  *(v0 + 192) = v31;
  *(v31 + 16) = xmmword_26C011280;
  v32 = sub_26BE81FE0(*(v25 + *(v26 + 40)));
  if ((v32 & 0x100000000) != 0)
  {
    LODWORD(v32) = sub_26BE4126C();
  }

  v33 = v31 + v30;
  v35 = *(v0 + 104);
  v34 = *(v0 + 112);
  v36 = *(v0 + 96);
  v37 = *(v27 + 48);
  v38 = *(v34 + 24);
  *v33 = v32;
  *(v33 + 8) = v38;
  sub_26BF7F0BC(v34, v33 + v37, type metadata accessor for MLS.GroupState);
  (*(v35 + 56))(v33 + v37, 0, 1, v36);
  v39 = swift_task_alloc();
  *(v0 + 200) = v39;
  *v39 = v0;
  v39[1] = sub_26BF5C574;
  v40 = *(v0 + 64);

  return sub_26BF394D4(v31);
}

uint64_t sub_26BF5C504()
{
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[11];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5C574()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  v4 = *v1;
  *(v2 + 208) = v0;

  v5 = *(v2 + 192);
  v6 = *(v2 + 184);
  v7 = (*(v2 + 216) + 32) & ~*(v2 + 216);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF5C7C4;
  }

  else
  {
    v9 = sub_26BF5C6F4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF5C6F4()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[14];
  v4 = v0[11];
  v5 = v0[7];
  sub_26BE00258(v0[19], v0[20]);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  *v5 = v2;
  v5[1] = v1;

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF5C7C4()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[11];
  sub_26BE00258(v0[19], v0[20]);
  sub_26BE00258(v1, v2);
  sub_26BF7F05C(v4, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  v5 = v0[26];
  v6 = v0[14];
  v7 = v0[11];

  v8 = v0[1];

  return v8();
}

uint64_t sub_26BF5C894(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF5C8B4, 0, 0);
}

uint64_t sub_26BF5C8B4()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F1A0;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BE939CC(v3, v4, v4);
}

uint64_t sub_26BF5C96C(uint64_t a1, uint64_t a2)
{
  v2[22] = a1;
  v2[23] = a2;
  v3 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[24] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[25] = swift_task_alloc();
  v5 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v2[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5CA2C, 0, 0);
}

uint64_t sub_26BF5CA2C()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: performing explicit commit", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 184);
  v13 = *(v12 + 152);
  v14 = *(v12 + 24);
  *(v0 + 160) = v13;
  *(v0 + 168) = v14;
  v15 = swift_task_alloc();
  *(v0 + 216) = v15;
  *v15 = v0;
  v15[1] = sub_26BF5CC38;
  v16 = *(v0 + 208);
  v17 = *(v0 + 184);

  return sub_26BF37CA4(v16, (v0 + 160), 0);
}

uint64_t sub_26BF5CC38()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_26BF5CD4C;
  }

  else
  {
    v3 = sub_26BF5CDB8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5CD4C()
{
  v1 = v0[28];
  v3 = v0[25];
  v2 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5CDB8()
{
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  *(v0 + 136) = 0u;
  *(v0 + 152) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 32) = 0u;
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 16) = xmmword_26C00DA50;
  sub_26BE7170C(v0 + 120, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_26BE701EC(*(v0 + 72));
  *(v0 + 104) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 72) = 0u;
  v7 = v2[5];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 3, v8);
  *v1 = 0;
  v1[v2[6]] = 0;
  v1[v2[7]] = 0;
  v1[v2[8]] = 0;
  v9 = MEMORY[0x277D84F90];
  *&v1[v2[9]] = MEMORY[0x277D84F90];
  v10 = swift_task_alloc();
  *(v0 + 232) = v10;
  *v10 = v0;
  v10[1] = sub_26BF5CF64;
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 176);
  v14 = *(v0 + 184);

  return sub_26BF54A88(v13, v11, v9, v0 + 16, v12);
}

uint64_t sub_26BF5CF64()
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 200);
  v7 = *v1;
  *(v2 + 240) = v0;

  sub_26BF7F05C(v4, type metadata accessor for MLS.GroupState.CommitOptions);
  sub_26BF7E1E8(v2 + 16);
  if (v0)
  {
    v5 = sub_26BF5D144;
  }

  else
  {
    v5 = sub_26BF5D0B8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26BF5D0B8()
{
  v1 = v0[25];
  sub_26BF7F05C(v0[26], type metadata accessor for MLS.GroupState);

  v2 = v0[1];

  return v2();
}

uint64_t sub_26BF5D144()
{
  sub_26BF7F05C(v0[26], type metadata accessor for MLS.GroupState);
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t MLS.GroupInfo.asMessage()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = type metadata accessor for MLS.MLSMessage(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26BF7F0BC(v3, v8, type metadata accessor for MLS.GroupInfo);
  type metadata accessor for MLS.MLSMessage.Inner(0);
  swift_storeEnumTagMultiPayload();
  v9 = MLS.MLSMessage.rawValue.getter();
  if (v2)
  {
    return sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage);
  }

  v12 = v9;
  v13 = v10;
  result = sub_26BF7F05C(v8, type metadata accessor for MLS.MLSMessage);
  *a1 = v12;
  a1[1] = v13;
  return result;
}

uint64_t sub_26BF5D2E0(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_26BF5D328, 0, 0);
}

uint64_t sub_26BF5D328()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F19C;
  v4 = v0[2];
  v5 = v0[3];

  return (sub_26BEA1630)(v4);
}

uint64_t sub_26BF5D3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5D47C, 0, 0);
}

uint64_t sub_26BF5D47C()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: generating group info", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 40);
  v13 = *(v12 + 152);
  v14 = *(v12 + 24);
  *(v0 + 16) = v13;
  *(v0 + 24) = v14;
  v15 = swift_task_alloc();
  *(v0 + 64) = v15;
  *v15 = v0;
  v15[1] = sub_26BF5D688;
  v16 = *(v0 + 56);
  v17 = *(v0 + 40);

  return sub_26BF37CA4(v16, (v0 + 16), 0);
}

uint64_t sub_26BF5D688()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_26BF5D854;
  }

  else
  {
    v3 = sub_26BF5D79C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5D79C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 56);
  sub_26BF56BD4(*(v0 + 32));
  sub_26BF7F05C(*(v0 + 56), type metadata accessor for MLS.GroupState);
  if (v1)
  {
    v3 = *(v0 + 56);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_26BF5D854()
{
  v1 = v0[9];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF5D8D8()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_26BF5D98C;
  v3 = *(v0 + 16);

  return sub_26BE8F6DC(sub_26BE8F6DC, v3, v3);
}

uint64_t sub_26BF5D98C()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_26BE24610;
  }

  else
  {
    v3 = sub_26BE26740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5DAC0()
{
  v21 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);
  swift_retain_n();
  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v7 = 136315394;
    v8 = v6[4];
    v9 = v6[5];
    sub_26BE00608(v8, v9);
    v0[5] = sub_26BF87240(v8, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v10 = sub_26C00A3EC();
    v12 = v11;
    sub_26BE00258(v8, v9);

    v13 = sub_26BE29740(v10, v12, &v20);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2048;
    swift_beginAccess();
    v14 = *(v6[20] + 16);

    *(v7 + 14) = v14;

    _os_log_impl(&dword_26BDFE000, v3, v4, "Deleting group with ID %s and %ld associated epochs", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x26D69A4E0](v19, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  else
  {
    v15 = v0[6];
  }

  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_26BF5DD50;
  v17 = v0[6];

  return sub_26BF3D100();
}

uint64_t sub_26BF5DD50()
{
  v2 = *(*v1 + 56);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_26BF5DE80, 0, 0);
  }
}

uint64_t sub_26BF5DE80()
{
  v1 = v0[6];
  v2 = v1[6];
  v3 = v1[4];
  v0[8] = v3;
  v4 = v1[5];
  v0[9] = v4;
  sub_26BE00608(v3, v4);
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_26BF53924;

  return sub_26BE24038(v3, v4);
}

uint64_t sub_26BF5DF40(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF5DF64, 0, 0);
}

uint64_t sub_26BF5DF64()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26BF5E048;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_26BE1AC80(v4, &unk_26C01FA50, v1);
}

uint64_t sub_26BF5E048()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26BF5E158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for MLS.GroupState();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v7 = *(v6 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5E248, 0, 0);
}

uint64_t sub_26BF5E248()
{
  v21 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_26C009A5C();
  v0[11] = v2;
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: signing public application message", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[5];
  sub_26BE2FFCC();
  *v20 = *(v0[5] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 45;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    swift_willThrow();
    v14 = v0[10];
    v15 = v0[7];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v18 = swift_task_alloc();
    v0[12] = v18;
    *v18 = v0;
    v18[1] = sub_26BF5E50C;
    v19 = v0[5];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5E50C(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 80);
    v8 = *(v4 + 56);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {
    *(v4 + 172) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5E670, 0, 0);
  }
}

uint64_t sub_26BF5E670()
{
  if (*(v0 + 172) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v6 + 152);
    v8 = *(v6 + 24);
    *(v0 + 16) = v7;
    *(v0 + 24) = v8;
    v9 = swift_task_alloc();
    *(v0 + 104) = v9;
    *v9 = v0;
    v9[1] = sub_26BF5E7DC;
    v10 = *(v0 + 80);
    v11 = *(v0 + 40);

    return sub_26BF37CA4(v10, (v0 + 16), 1);
  }
}

uint64_t sub_26BF5E7DC()
{
  v2 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_26BF5EF10;
  }

  else
  {
    v3 = sub_26BF5E8F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF5E8F0()
{
  v36 = v0;
  v1 = *(v0 + 112);
  v2 = *(v0 + 80);
  MLS.GroupState.generateSignedMessage(messageID:verifiableDerivedContent:)(*(*(v0 + 48) + 40), *(*(v0 + 48) + 48), *(v0 + 48), *(v0 + 56));
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 80), type metadata accessor for MLS.GroupState);
    v6 = *(v0 + 80);
    v7 = *(v0 + 56);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v3 = *(v0 + 56);
    v4 = MLS.MLSMessage.rawValue.getter();
    *(v0 + 120) = v4;
    *(v0 + 128) = v5;
    v10 = v4;
    v11 = v5;
    if (qword_28045DFD0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 88), qword_280478FB0);
    sub_26BE00608(v10, v11);
    v12 = sub_26C009A3C();
    v13 = sub_26C00A9FC();
    sub_26BE00258(v10, v11);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v15;
      *v14 = 136315138;
      v16 = sub_26C0090EC();
      v18 = sub_26BE29740(v16, v17, &v35);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_26BDFE000, v12, v13, "Produced signed message: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x26D69A4E0](v15, -1, -1);
      MEMORY[0x26D69A4E0](v14, -1, -1);
    }

    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 136) = v21;
    v22 = *(*(v21 - 8) + 72);
    v23 = *(*(v21 - 8) + 80);
    *(v0 + 168) = v23;
    v24 = (v23 + 32) & ~v23;
    v25 = swift_allocObject();
    *(v0 + 144) = v25;
    *(v25 + 16) = xmmword_26C011280;
    v26 = sub_26BE81FE0(*(v19 + *(v20 + 40)));
    if ((v26 & 0x100000000) != 0)
    {
      LODWORD(v26) = sub_26BE4126C();
    }

    v27 = v25 + v24;
    v29 = *(v0 + 72);
    v28 = *(v0 + 80);
    v30 = *(v0 + 64);
    v31 = *(v21 + 48);
    v32 = *(v28 + 24);
    *v27 = v26;
    *(v27 + 8) = v32;
    sub_26BF7F0BC(v28, v27 + v31, type metadata accessor for MLS.GroupState);
    (*(v29 + 56))(v27 + v31, 0, 1, v30);
    v33 = swift_task_alloc();
    *(v0 + 152) = v33;
    *v33 = v0;
    v33[1] = sub_26BF5ECC8;
    v34 = *(v0 + 40);

    return sub_26BF394D4(v25);
  }
}

uint64_t sub_26BF5ECC8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(v2 + 160) = v0;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);
  v7 = (*(v2 + 168) + 32) & ~*(v2 + 168);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF5EF80;
  }

  else
  {
    v9 = sub_26BF5EE48;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF5EE48()
{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[10];
  v4 = v0[4];
  sub_26BF7F05C(v0[7], type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v3, type metadata accessor for MLS.GroupState);
  *v4 = v2;
  v4[1] = v1;

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF5EF10()
{
  v1 = v0[14];
  v2 = v0[10];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF5EF80()
{
  v1 = v0[10];
  v2 = v0[7];
  sub_26BE00258(v0[15], v0[16]);
  sub_26BF7F05C(v2, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  v3 = v0[20];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF5F038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unsigned __int16 *a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = v9;
  v100 = a6;
  v108 = a4;
  v93 = a2;
  v18 = type metadata accessor for MLS.MLSMessage(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v99 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = *a8;
  v90 = *(a8 + 2);
  v21 = *(type metadata accessor for MLS.GroupState() + 40);
  v98 = a1;
  v97 = *(a1 + v21);
  v22 = sub_26BE81FE0(v97);
  v23 = a3;
  if (v10)
  {
  }

  else if ((v22 & 0x100000000) == 0)
  {
    goto LABEL_5;
  }

  v22 = sub_26BE4126C();
LABEL_5:
  v96 = 0;
  v95 = v22;
  v24 = a9;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v25 = sub_26C009A5C();
  __swift_project_value_buffer(v25, qword_280478EE8);

  v26 = v108;
  sub_26BE00608(v108, a5);
  v27 = v100;
  sub_26BE2BAE8(v100, a7);
  v28 = sub_26C009A3C();
  v29 = sub_26C00AA1C();

  sub_26BE00258(v26, a5);
  sub_26BE132D4(v27, a7);
  v94 = v29;
  v30 = os_log_type_enabled(v28, v29);
  v92 = v11;
  if (v30)
  {
    v86 = v28;
    v88 = v23;
    v89 = v24;
    v31 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    v104[0] = v85;
    *v31 = 136315906;

    v32 = sub_26BE3D034();
    v33 = a5;
    v35 = v34;

    v36 = sub_26BE29740(v32, v35, v104);

    *(v31 + 4) = v36;
    *(v31 + 12) = 2080;
    v87 = v33;
    v37 = v96;
    *&v101 = sub_26BF87240(v26, v33);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    v96 = v38;
    sub_26C00A3EC();

    v39 = sub_26BE411D0(16);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = MEMORY[0x26D698FE0](v39, v41, v43, v45);
    v48 = v47;

    v49 = sub_26BE29740(v46, v48, v104);

    *(v31 + 14) = v49;
    *(v31 + 22) = 2080;
    if (a7 >> 60 == 15)
    {
      v50 = sub_26C00AACC();
      v54 = v53;
    }

    else
    {
      *&v101 = sub_26BF87240(v100, a7);
      sub_26C00A3EC();

      v58 = sub_26BE411D0(16);
      v60 = v59;
      v62 = v61;
      v54 = v63;

      v52 = v62;
      v51 = v60;
      v50 = v58;
    }

    v64 = MEMORY[0x26D698FE0](v50, v51, v52, v54);
    v66 = v65;

    v67 = sub_26BE29740(v64, v66, v104);

    *(v31 + 24) = v67;
    *(v31 + 32) = 1024;
    *(v31 + 34) = v95;
    v68 = v86;
    _os_log_impl(&dword_26BDFE000, v86, v94, "%s: encrypting application message with AAD for messageID %s and originalMessageID %s, era %u", v31, 0x26u);
    v69 = v85;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v69, -1, -1);
    MEMORY[0x26D69A4E0](v31, -1, -1);

    v55 = v89;
    v57 = v99;
    v56 = v88;
    a5 = v87;
  }

  else
  {

    v55 = v24;
    v56 = v23;
    v57 = v99;
    v37 = v96;
  }

  v103 = 0;
  v101 = 0u;
  v102 = 0u;
  v70 = sub_26BE81FE0(v97);
  v71 = v108;
  if (v37)
  {
  }

  else if ((v70 & 0x100000000) == 0)
  {
    goto LABEL_17;
  }

  LODWORD(v70) = sub_26BE4126C();
LABEL_17:
  v107 = 0;
  memset(v106, 0, sizeof(v106));
  LOWORD(v104[0]) = 1;
  v104[1] = v71;
  v104[2] = a5;
  v105 = v70;
  sub_26BE00608(v71, a5);
  sub_26BE7170C(&v101, v106, &qword_28045E2A8, &qword_26C028DD0);
  v101 = xmmword_26C00BBD0;
  *&v102 = 0;
  sub_26BFF933C(v104);
  v72 = v101;
  v73 = *(&v101 + 1) >> 62;
  if ((*(&v101 + 1) >> 62) > 1)
  {
    if (v73 != 2)
    {
      goto LABEL_25;
    }

    v74 = *(v101 + 24);
  }

  else
  {
    if (!v73)
    {
      goto LABEL_25;
    }

    v74 = v101 >> 32;
  }

  if (v74 < 0)
  {
    __break(1u);
  }

LABEL_25:
  v75 = sub_26C00909C();
  v77 = v76;
  sub_26BE00258(v72, *(&v72 + 1));
  v78 = *(v92 + 48);
  swift_beginAccess();
  v79 = *(v78 + 50);
  sub_26BE00258(0, 0xC000000000000000);
  v80 = v91;
  if (v90)
  {
    v80 = v79 & 1;
  }

  *&v101 = v75;
  *(&v101 + 1) = v77;
  *&v102 = 0;
  WORD4(v102) = v80;
  BYTE10(v102) = v90 & ~v79;
  sub_26BE00608(v75, v77);
  MLS.GroupState.generateApplicationMessage(message:options:)(v93, v56, &v101, v57);
  sub_26BE00258(v101, *(&v101 + 1));
  v82 = MLS.MLSMessage.rawValue.getter();
  v84 = v83;
  sub_26BF7F05C(v57, type metadata accessor for MLS.MLSMessage);
  sub_26BE6FDD8(v104);
  *v55 = v82;
  v55[1] = v84;
  return sub_26BE00258(v75, v77);
}

uint64_t sub_26BF5F78C(uint64_t a1, _OWORD *a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  v4 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v4;
  *(v3 + 48) = a2[2];
  return MEMORY[0x2822009F8](sub_26BF5F7BC, 0, 0);
}

uint64_t sub_26BF5F7BC()
{
  v1 = v0[15];

  sub_26BF7E0E0((v0 + 2), (v0 + 8));
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_26BF5F880;
  v3 = v0[14];
  v4 = v0[15];

  return sub_26BEA0BB8(v3, v4, v4, (v0 + 2));
}

uint64_t sub_26BF5F880()
{
  v1 = *(*v0 + 128);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BF5F974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  v4 = type metadata accessor for MLS.GroupState();
  v3[7] = v4;
  v5 = *(v4 - 8);
  v3[8] = v5;
  v6 = *(v5 + 64) + 15;
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF5FA38, 0, 0);
}

uint64_t sub_26BF5FA38()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_26C009A5C();
  v0[10] = v2;
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[5];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19[0] = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: encrypting application message with AAD", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[5];
  sub_26BE2FFCC();
  *v19 = *(v0[5] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v13 = 45;
    *(v13 + 8) = 0u;
    *(v13 + 24) = 0u;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 88) = 0u;
    *(v13 + 104) = 0;
    *(v13 + 112) = 23;
    swift_willThrow();
    v14 = v0[9];

    v15 = v0[1];

    return v15();
  }

  else
  {
    v17 = swift_task_alloc();
    v0[11] = v17;
    *v17 = v0;
    v17[1] = sub_26BF5FCF0;
    v18 = v0[5];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF5FCF0(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 72);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 164) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF5FE48, 0, 0);
  }
}

uint64_t sub_26BF5FE48()
{
  if (*(v0 + 164) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 72);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 40);
    v6 = *(v5 + 152);
    v7 = *(v5 + 24);
    *(v0 + 16) = v6;
    *(v0 + 24) = v7;
    v8 = swift_task_alloc();
    *(v0 + 96) = v8;
    *v8 = v0;
    v8[1] = sub_26BF5FFA8;
    v9 = *(v0 + 72);
    v10 = *(v0 + 40);

    return sub_26BF37CA4(v9, (v0 + 16), 0);
  }
}

uint64_t sub_26BF5FFA8()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_26BF6046C;
  }

  else
  {
    v3 = sub_26BF600BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF600BC()
{
  v42 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *v3;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v40 = 0;
  v41 = 1;
  sub_26BF5F038(v2, v5, v6, v7, v8, v9, v10, &v40, v39);
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 72), type metadata accessor for MLS.GroupState);
    v11 = *(v0 + 72);

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {
    v14 = v39[0];
    v15 = v39[1];
    *(v0 + 112) = v39[0];
    *(v0 + 120) = v15;
    if (qword_28045DFD0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 80), qword_280478FB0);
    sub_26BE00608(v14, v15);
    v16 = sub_26C009A3C();
    v17 = sub_26C00A9FC();
    sub_26BE00258(v14, v15);
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v39[0] = v19;
      *v18 = 136315138;
      v20 = sub_26C0090EC();
      v22 = sub_26BE29740(v20, v21, v39);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_26BDFE000, v16, v17, "Produced application message with AAD: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x26D69A4E0](v19, -1, -1);
      MEMORY[0x26D69A4E0](v18, -1, -1);
    }

    v23 = *(v0 + 72);
    v24 = *(v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
    *(v0 + 128) = v25;
    v26 = *(*(v25 - 8) + 72);
    v27 = *(*(v25 - 8) + 80);
    *(v0 + 160) = v27;
    v28 = (v27 + 32) & ~v27;
    v29 = swift_allocObject();
    *(v0 + 136) = v29;
    *(v29 + 16) = xmmword_26C011280;
    v30 = sub_26BE81FE0(*(v23 + *(v24 + 40)));
    if ((v30 & 0x100000000) != 0)
    {
      LODWORD(v30) = sub_26BE4126C();
    }

    v31 = v29 + v28;
    v33 = *(v0 + 64);
    v32 = *(v0 + 72);
    v34 = *(v0 + 56);
    v35 = *(v25 + 48);
    v36 = *(v32 + 24);
    *v31 = v30;
    *(v31 + 8) = v36;
    sub_26BF7F0BC(v32, v31 + v35, type metadata accessor for MLS.GroupState);
    (*(v33 + 56))(v31 + v35, 0, 1, v34);
    v37 = swift_task_alloc();
    *(v0 + 144) = v37;
    *v37 = v0;
    v37[1] = sub_26BF604D0;
    v38 = *(v0 + 40);

    return sub_26BF394D4(v29);
  }
}

uint64_t sub_26BF6046C()
{
  v1 = v0[13];
  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF604D0()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *v1;
  *(v2 + 152) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  v7 = (*(v2 + 160) + 32) & ~*(v2 + 160);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF606E8;
  }

  else
  {
    v9 = sub_26BF60650;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF60650()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[4];
  sub_26BF7F05C(v0[9], type metadata accessor for MLS.GroupState);
  *v3 = v2;
  v3[1] = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF606E8()
{
  v1 = v0[9];
  sub_26BE00258(v0[14], v0[15]);
  sub_26BF7F05C(v1, type metadata accessor for MLS.GroupState);
  v2 = v0[19];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF60774(uint64_t a1, int *a2, unsigned int *a3)
{
  v5 = v4;
  v6 = v3;
  v7 = *a2;
  v8 = *a3;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v9 = sub_26C009A5C();
  __swift_project_value_buffer(v9, qword_280478EE8);
  swift_retain_n();
  v10 = sub_26C009A3C();
  v11 = sub_26C00AA1C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *&v61 = v54;
    *v12 = 136316418;

    log = v10;
    v13 = sub_26BE3D034();
    v15 = v14;

    v16 = sub_26BE29740(v13, v15, &v61);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v7;
    *(v12 + 18) = 1024;
    *(v12 + 20) = v8;
    *(v12 + 24) = 2080;
    v65 = v8;
    v18 = *(v6 + 32);
    v17 = *(v6 + 40);
    sub_26BE00608(v18, v17);
    v19 = sub_26BF87240(v18, v17);
    v64 = v11;
    *&v56 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    v20 = v7;
    sub_26BE3C0F4();
    v21 = sub_26C00A3EC();
    v23 = v22;
    v24 = v17;
    v8 = v65;
    sub_26BE00258(v18, v24);
    v5 = v4;

    v25 = sub_26BE29740(v21, v23, &v61);
    v7 = v20;

    *(v12 + 26) = v25;
    *(v12 + 34) = 2048;
    v26 = *(v6 + 24);

    *(v12 + 36) = v26;

    *(v12 + 44) = 1024;
    LODWORD(v26) = *(v6 + 152);

    *(v12 + 46) = v26;

    _os_log_impl(&dword_26BDFE000, log, v64, "%s: generating outer info and AAD for FTD replay: sender %u, receiver %u, groupID %s, epoch %lld, era %u", v12, 0x32u);
    v11 = v54;
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v54, -1, -1);
    MEMORY[0x26D69A4E0](v12, -1, -1);
  }

  else
  {
  }

  v27 = sub_26BE099A8(0xD00000000000001ALL, 0x800000026C02D0D0);
  v29 = *(v6 + 32);
  v28 = *(v6 + 40);
  v30 = *(v6 + 24);
  v31 = *(v6 + 152);
  *&v61 = v27;
  *(&v61 + 1) = v32;
  *&v62 = v29;
  *(&v62 + 1) = v28;
  *v63 = v30;
  *&v63[8] = v31;
  *&v63[12] = v8;
  *&v63[16] = v7;
  v63[20] = 1;
  v59 = xmmword_26C00BBD0;
  v60 = 0;
  v56 = v61;
  v57 = v62;
  v58[0] = *v63;
  *(v58 + 13) = *&v63[13];
  sub_26BE00608(v29, v28);
  sub_26BE7ACD8(&v56);
  if (!v5)
  {
    v33 = v59;
    v34 = *(&v59 + 1) >> 62;
    if ((*(&v59 + 1) >> 62) > 1)
    {
      if (v34 != 2)
      {
        goto LABEL_16;
      }

      v35 = *(v59 + 24);
    }

    else
    {
      if (!v34)
      {
        goto LABEL_16;
      }

      v35 = v59 >> 32;
    }

    if (v35 < 0)
    {
      __break(1u);
    }

LABEL_16:
    v65 = v8;
    v11 = sub_26C00909C();
    sub_26BE00258(v33, *(&v33 + 1));

    v36 = sub_26C009A3C();
    v37 = sub_26C00AA1C();

    if (os_log_type_enabled(v36, v37))
    {
      v55 = v7;
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      *&v56 = v39;
      *v38 = 136315138;

      v40 = sub_26BE3D034();
      v41 = v11;
      v43 = v42;

      v44 = sub_26BE29740(v40, v43, &v56);
      v11 = v41;

      *(v38 + 4) = v44;
      _os_log_impl(&dword_26BDFE000, v36, v37, "%s: generating HPKE AAD for FTD replay", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x26D69A4E0](v39, -1, -1);
      v45 = v38;
      v7 = v55;
      MEMORY[0x26D69A4E0](v45, -1, -1);
    }

    v47 = *(v6 + 32);
    v46 = *(v6 + 40);
    v48 = *(v6 + 24);
    v49 = *(v6 + 152);
    v59 = xmmword_26C00BBD0;
    v60 = 0;
    *&v56 = v47;
    *(&v56 + 1) = v46;
    *&v57 = v48;
    *(&v57 + 1) = __PAIR64__(v65, v49);
    LODWORD(v58[0]) = v7;
    sub_26BE00608(v47, v46);
    sub_26BE7AFEC(&v56);
    v51 = v59;
    v52 = *(&v59 + 1) >> 62;
    if ((*(&v59 + 1) >> 62) > 1)
    {
      if (v52 != 2 || (*(v59 + 24) & 0x8000000000000000) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (!v52 || ((v59 >> 32) & 0x8000000000000000) == 0)
    {
      goto LABEL_28;
    }

    __break(1u);
LABEL_28:
    sub_26C00909C();
    sub_26BF7EC9C(&v61);
    sub_26BE00258(v47, v46);
    sub_26BE00258(v51, *(&v51 + 1));
    return v11;
  }

  sub_26BF7EC9C(&v61);
  sub_26BE00258(v59, *(&v59 + 1));
  return v11;
}

uint64_t sub_26BF60D64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_26BF60D88, 0, 0);
}

uint64_t sub_26BF60D88()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  v1[1] = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F1C8;
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);

  return sub_26BE1AC80(v4, &unk_26C01FA70, v1);
}

uint64_t sub_26BF60E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[153] = a3;
  v3[152] = a2;
  v3[151] = a1;
  v4 = type metadata accessor for MLS.GroupState();
  v3[154] = v4;
  v5 = *(v4 - 8);
  v3[155] = v5;
  v6 = *(v5 + 64) + 15;
  v3[156] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF60F34, 0, 0);
}

uint64_t sub_26BF60F34()
{
  v25 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[153];
  v2 = v0[152];
  v3 = sub_26C009A5C();
  v0[157] = v3;
  v0[158] = __swift_project_value_buffer(v3, qword_280478EE8);
  sub_26BF7EF44(v1, (v0 + 114));

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[152];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24[0] = v8;
    *v7 = 136315394;

    v9 = sub_26BE3D034();
    v11 = v10;

    v12 = sub_26BE29740(v9, v11, v24);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2080;
    v13 = MLS.Identity.SigningIdentity.description.getter();
    v15 = v14;
    sub_26BF7EFA0((v0 + 114));
    v16 = sub_26BE29740(v13, v15, v24);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: encrypting wrapped application message for recipient %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v8, -1, -1);
    MEMORY[0x26D69A4E0](v7, -1, -1);
  }

  else
  {

    sub_26BF7EFA0((v0 + 114));
  }

  v17 = v0[152];
  sub_26BE2FFCC();
  *v24 = *(v0[152] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v18 = 45;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    *(v18 + 40) = 0u;
    *(v18 + 56) = 0u;
    *(v18 + 72) = 0u;
    *(v18 + 88) = 0u;
    *(v18 + 104) = 0;
    *(v18 + 112) = 23;
    swift_willThrow();
    v19 = v0[156];

    v20 = v0[1];

    return v20();
  }

  else
  {
    v22 = swift_task_alloc();
    v0[159] = v22;
    *v22 = v0;
    v22[1] = sub_26BF61264;
    v23 = v0[152];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF61264(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 1272);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 1248);

    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 537) = a1 & 1;

    return MEMORY[0x2822009F8](sub_26BF613BC, 0, 0);
  }
}

uint64_t sub_26BF613BC()
{
  if (*(v0 + 537) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 1248);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 1216);
    v6 = *(v5 + 152);
    v7 = *(v5 + 24);
    *(v0 + 1192) = v6;
    *(v0 + 1200) = v7;
    v8 = swift_task_alloc();
    *(v0 + 1280) = v8;
    *v8 = v0;
    v8[1] = sub_26BF61518;
    v9 = *(v0 + 1248);
    v10 = *(v0 + 1216);

    return sub_26BF37CA4(v9, (v0 + 1192), 0);
  }
}

uint64_t sub_26BF61518()
{
  v2 = *(*v1 + 1280);
  v5 = *v1;
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v3 = sub_26BF62704;
  }

  else
  {
    v3 = sub_26BF6162C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6162C()
{
  v161 = v0;
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1248);
  v3 = *(v0 + 1216);
  v4 = *(v0 + 1224) + 16;
  *(v0 + 540) = 0;
  *(v0 + 544) = 1;
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v7 = *(v2 + 56);
  LOWORD(v156) = *(v2 + 32);
  v157 = v5;
  LODWORD(v158) = v6;
  v159 = v7;
  v8 = swift_task_alloc();
  v8[2] = v3;
  v8[3] = v4;
  v8[4] = v0 + 540;

  MLS.TreeKEMPublicKey.eachLeaf(_:)(sub_26BF7F1CC);
  if (v1)
  {
    v9 = *(v0 + 1248);

LABEL_11:
    sub_26BF7F05C(v9, type metadata accessor for MLS.GroupState);
LABEL_12:
    v73 = *(v0 + 1248);

    v74 = *(v0 + 8);

    return v74();
  }

  if (*(v0 + 544))
  {
    v11 = *(v0 + 1264);
    v12 = *(v0 + 1216);

    v13 = sub_26C009A3C();
    v14 = sub_26C00AA0C();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = *(v0 + 1216);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v156 = v17;
      *v16 = 136315138;

      v18 = sub_26BE3D034();
      v20 = v19;

      v21 = sub_26BE29740(v18, v20, &v156);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_26BDFE000, v13, v14, "%s: when generating wrapped application message, recipient not found in group", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x26D69A4E0](v17, -1, -1);
      MEMORY[0x26D69A4E0](v16, -1, -1);
    }

    v9 = *(v0 + 1248);
    *(v0 + 424) = 3;
    *(v0 + 536) = 9;
    v22 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 424, v0 + 552);
    v23 = swift_allocObject();
    v24 = *(v0 + 632);
    *(v23 + 88) = *(v0 + 616);
    *(v23 + 104) = v24;
    *(v23 + 120) = *(v0 + 648);
    v25 = *(v0 + 568);
    *(v23 + 24) = *(v0 + 552);
    *(v23 + 40) = v25;
    v26 = *(v0 + 600);
    *(v23 + 56) = *(v0 + 584);
    *(v23 + 16) = 2;
    *(v23 + 136) = *(v0 + 664);
    *(v23 + 72) = v26;
    *(v0 + 1032) = sub_26BE2E3DC;
    *(v0 + 1040) = v23;
    *(v0 + 1000) = MEMORY[0x277D85DD0];
    *(v0 + 1008) = 1107296256;
    *(v0 + 1016) = sub_26BEB8234;
    *(v0 + 1024) = &block_descriptor_223;
    v27 = _Block_copy((v0 + 1000));
    v28 = *(v0 + 1040);

    AnalyticsSendEventLazy();
    _Block_release(v27);

    sub_26BE2DC9C(v0 + 424);
    sub_26BE01654();
    swift_allocError();
    *v29 = 3;
    v29[112] = 9;
    swift_willThrow();
    goto LABEL_11;
  }

  v30 = *(v0 + 540);
  v31 = *(v0 + 1216);
  LODWORD(v154) = *(*(v0 + 1248) + *(*(v0 + 1232) + 52));
  LODWORD(v156) = v30;
  v32 = sub_26BF60774(v10, &v154, &v156);
  *(v0 + 1296) = v32;
  *(v0 + 1304) = v33;
  *(v0 + 1312) = v34;
  *(v0 + 1320) = v35;
  v36 = v34;
  v37 = v35;
  v152 = v32;
  v153 = v33;
  v38 = *(v2 + 40);
  v39 = *(v2 + 48);
  v40 = *(v2 + 56);
  *(v0 + 1136) = *(v2 + 32);
  *(v0 + 1144) = v38;
  *(v0 + 1152) = v39;
  *(v0 + 1160) = v40;
  *(v0 + 548) = v30;

  MLS.TreeKEMPublicKey.find(leafIndex:)((v0 + 548), v0 + 16);
  v41 = *(v0 + 1144);
  v42 = *(v0 + 1160);

  v43 = *(v0 + 96);
  v45 = *(v0 + 112);
  v44 = *(v0 + 128);
  *(v0 + 384) = v45;
  *(v0 + 400) = v44;
  v46 = *(v0 + 32);
  v48 = *(v0 + 48);
  v47 = *(v0 + 64);
  *(v0 + 320) = v48;
  *(v0 + 336) = v47;
  v49 = *(v0 + 64);
  v51 = *(v0 + 80);
  v50 = *(v0 + 96);
  *(v0 + 352) = v51;
  *(v0 + 368) = v50;
  v52 = *(v0 + 32);
  v53 = *(v0 + 16);
  *(v0 + 288) = v53;
  *(v0 + 304) = v52;
  v54 = *(v0 + 128);
  *(v0 + 248) = v45;
  *(v0 + 264) = v54;
  *(v0 + 184) = v48;
  *(v0 + 200) = v49;
  *(v0 + 216) = v51;
  *(v0 + 232) = v43;
  *(v0 + 416) = *(v0 + 144);
  *(v0 + 280) = *(v0 + 144);
  *(v0 + 152) = v53;
  *(v0 + 168) = v46;
  if (sub_26BE59C80(v0 + 152) == 1)
  {
    v55 = *(v0 + 1264);
    v56 = *(v0 + 1216);

    v57 = sub_26C009A3C();
    v58 = sub_26C00AA0C();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = *(v0 + 1216);
      v60 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v156 = v149;
      *v60 = 136315138;

      v61 = sub_26BE3D034();
      v63 = v62;

      v64 = sub_26BE29740(v61, v63, &v156);

      *(v60 + 4) = v64;
      _os_log_impl(&dword_26BDFE000, v57, v58, "%s: when generating wrapped application message, encryption key not found for recipient", v60, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v149);
      MEMORY[0x26D69A4E0](v149, -1, -1);
      MEMORY[0x26D69A4E0](v60, -1, -1);
    }

    v9 = *(v0 + 1248);
    *(v0 + 672) = 3;
    *(v0 + 784) = 9;
    v65 = sub_26C00A45C();
    sub_26BE2DC18(v0 + 672, v0 + 792);
    v66 = swift_allocObject();
    v67 = *(v0 + 872);
    *(v66 + 88) = *(v0 + 856);
    *(v66 + 104) = v67;
    *(v66 + 120) = *(v0 + 888);
    v68 = *(v0 + 808);
    *(v66 + 24) = *(v0 + 792);
    *(v66 + 40) = v68;
    v69 = *(v0 + 840);
    *(v66 + 56) = *(v0 + 824);
    *(v66 + 16) = 2;
    *(v66 + 136) = *(v0 + 904);
    *(v66 + 72) = v69;
    *(v0 + 1080) = sub_26BE2E3DC;
    *(v0 + 1088) = v66;
    *(v0 + 1048) = MEMORY[0x277D85DD0];
    *(v0 + 1056) = 1107296256;
    *(v0 + 1064) = sub_26BEB8234;
    *(v0 + 1072) = &block_descriptor_230;
    v70 = _Block_copy((v0 + 1048));
    v71 = *(v0 + 1088);

    AnalyticsSendEventLazy();
    _Block_release(v70);

    sub_26BE2DC9C(v0 + 672);
    sub_26BE01654();
    swift_allocError();
    *v72 = 3;
    v72[112] = 9;
    swift_willThrow();
    sub_26BE00258(v36, v37);
    sub_26BE00258(v152, v153);
    goto LABEL_11;
  }

  v76 = *(v0 + 1216);
  v78 = *(v0 + 152);
  v77 = *(v0 + 160);
  *(v0 + 1328) = v78;
  *(v0 + 1336) = v77;
  sub_26BE00608(v78, v77);
  sub_26BE2E258(v0 + 288, &qword_28045E6A0, &unk_26C016520);
  v79 = *(v76 + 72);
  v81 = *(v76 + 80);
  v80 = *(v76 + 88);
  v82 = *(v76 + 96);
  v83 = *(v76 + 104);
  if (v79)
  {
    LOBYTE(v156) = 1;
    v157 = v81;
    v158 = v80;
    v159 = v82;
    v160 = v83;
    *(v0 + 1120) = type metadata accessor for P256EncryptionPublicKey(0);
    *(v0 + 1128) = sub_26BF7EFF4(&qword_28045E3C0, type metadata accessor for P256EncryptionPublicKey);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1096));

    sub_26BE00608(v78, v77);

    P256EncryptionPublicKey.init(data:ciphersuite:)(v78, v77, &v156, boxed_opaque_existential_1);
  }

  else
  {
    LOBYTE(v156) = 0;
    v157 = v81;
    v158 = v80;
    v159 = v82;
    v160 = v83;
    *(v0 + 1120) = type metadata accessor for Curve25519EncryptionPublicKey(0);
    *(v0 + 1128) = sub_26BF7EFF4(&qword_28045E2D8, type metadata accessor for Curve25519EncryptionPublicKey);
    v85 = __swift_allocate_boxed_opaque_existential_1((v0 + 1096));

    sub_26BE00608(v78, v77);

    Curve25519EncryptionPublicKey.init(data:ciphersuite:)(v78, v77, &v156, v85);
  }

  v86 = *(v0 + 1224);
  v87 = *(v0 + 1120);
  v88 = *(v0 + 1128);
  __swift_project_boxed_opaque_existential_1((v0 + 1096), v87);
  v89 = (*(v88 + 24))(v152, v153, v36, v37, *v86, v86[1], v87, v88);
  *(v0 + 1344) = v89;
  *(v0 + 1352) = v90;
  *(v0 + 1360) = v91;
  *(v0 + 1368) = v92;
  v93 = v90;
  v154 = xmmword_26C00BBD0;
  v155 = 0;
  LODWORD(v156) = v30;
  v157 = v91;
  v158 = v92;
  v159 = v89;
  v160 = v90;
  v94 = v89;
  aBlock = v92;
  v95 = v91;
  sub_26BE00608(v91, v92);
  sub_26BE00608(v94, v93);
  sub_26BE7B1F4(&v156);
  v147 = v95;
  v148 = v94;
  v150 = v93;
  v96 = v154;
  v97 = *(&v154 + 1) >> 62;
  if ((*(&v154 + 1) >> 62) > 1)
  {
    if (v97 != 2)
    {
      goto LABEL_26;
    }

    v98 = *(v154 + 24);
  }

  else
  {
    if (!v97)
    {
      goto LABEL_26;
    }

    v98 = v154 >> 32;
  }

  if (v98 < 0)
  {
    __break(1u);
  }

LABEL_26:
  v99 = *(v0 + 1216);
  v145 = sub_26C00909C();
  v146 = v100;
  *(v0 + 1376) = v145;
  *(v0 + 1384) = v100;
  sub_26BE00258(v96, *(&v96 + 1));
  v101 = *(v99 + 48);
  swift_beginAccess();
  v102 = *(v0 + 1216);
  if (*(v101 + 50) != 1)
  {
    v107 = *(v0 + 1264);
    v108 = *(v0 + 1216);

    v109 = sub_26C009A3C();
    LOBYTE(v107) = sub_26C00AA0C();

    v143 = v107;
    if (os_log_type_enabled(v109, v107))
    {
      v110 = *(v0 + 1216);
      v111 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      v156 = v142;
      *v111 = 136315138;

      v112 = sub_26BE3D034();
      v114 = v113;

      v115 = sub_26BE29740(v112, v114, &v156);

      *(v111 + 4) = v115;
      _os_log_impl(&dword_26BDFE000, v109, v143, "%s: must use 'configuration.mlsOptions.encryptionOptions.useSecretPayload' with encryptWrappedApplicationMessage", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v142);
      MEMORY[0x26D69A4E0](v142, -1, -1);
      MEMORY[0x26D69A4E0](v111, -1, -1);
    }

    v144 = *(v0 + 1248);
    sub_26BE01654();
    swift_allocError();
    *v116 = 0xD00000000000006CLL;
    *(v116 + 8) = 0x800000026C02D0F0;
    *(v116 + 112) = 2;
    swift_willThrow();
    sub_26BE00258(v147, aBlock);
    sub_26BE00258(v148, v150);
    sub_26BE00258(v78, v77);
    sub_26BE00258(v36, v37);
    sub_26BE00258(v152, v153);
    sub_26BE00258(v145, v146);
    sub_26BE00258(v148, v150);
    sub_26BE00258(v147, aBlock);
    sub_26BF7F05C(v144, type metadata accessor for MLS.GroupState);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1096));
    goto LABEL_12;
  }

  v103 = *(v0 + 1248);
  v104 = *(v0 + 1224);
  v105 = *(v104 + 72);
  v106 = *(v104 + 80);
  LOWORD(v154) = 2;
  BYTE2(v154) = 0;
  sub_26BF5F038(v103, v145, v146, v105, v106, 0, 0xF000000000000000, &v154, &v156);
  v117 = v156;
  v118 = v157;
  *(v0 + 1392) = v156;
  *(v0 + 1400) = v118;
  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1256), qword_280478FB0);
  sub_26BE00608(v117, v118);
  v119 = sub_26C009A3C();
  v120 = sub_26C00A9FC();
  sub_26BE00258(v117, v118);
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v156 = v122;
    *v121 = 136315138;
    v123 = sub_26C0090EC();
    v125 = sub_26BE29740(v123, v124, &v156);

    *(v121 + 4) = v125;
    _os_log_impl(&dword_26BDFE000, v119, v120, "Produced wrapped application message: %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v122);
    MEMORY[0x26D69A4E0](v122, -1, -1);
    MEMORY[0x26D69A4E0](v121, -1, -1);
  }

  v126 = *(v0 + 1248);
  v127 = *(v0 + 1232);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAF8, &unk_26C024660);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FAC0, &qword_26C01F998);
  *(v0 + 1408) = v128;
  v129 = *(*(v128 - 8) + 72);
  v130 = *(*(v128 - 8) + 80);
  *(v0 + 668) = v130;
  v131 = (v130 + 32) & ~v130;
  v132 = swift_allocObject();
  *(v0 + 1416) = v132;
  *(v132 + 16) = xmmword_26C011280;
  v133 = sub_26BE81FE0(*(v126 + *(v127 + 40)));
  if ((v133 & 0x100000000) != 0)
  {
    LODWORD(v133) = sub_26BE4126C();
  }

  v134 = v132 + v131;
  v135 = *(v0 + 1248);
  v136 = *(v0 + 1240);
  v137 = *(v0 + 1232);
  v138 = *(v128 + 48);
  v139 = *(v135 + 24);
  *v134 = v133;
  *(v134 + 8) = v139;
  sub_26BF7F0BC(v135, v134 + v138, type metadata accessor for MLS.GroupState);
  (*(v136 + 56))(v134 + v138, 0, 1, v137);
  v140 = swift_task_alloc();
  *(v0 + 1424) = v140;
  *v140 = v0;
  v140[1] = sub_26BF62768;
  v141 = *(v0 + 1216);

  return sub_26BF394D4(v132);
}

uint64_t sub_26BF62704()
{
  v1 = v0[161];
  v2 = v0[156];

  v3 = v0[1];

  return v3();
}

uint64_t sub_26BF62768()
{
  v2 = *v1;
  v3 = *(*v1 + 1424);
  v4 = *v1;
  *(v2 + 1432) = v0;

  v5 = *(v2 + 1416);
  v6 = *(v2 + 1408);
  v7 = (*(v2 + 668) + 32) & ~*(v2 + 668);
  swift_setDeallocating();
  v8 = *(v5 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (v0)
  {
    v9 = sub_26BF62A4C;
  }

  else
  {
    v9 = sub_26BF628E8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26BF628E8()
{
  v17 = v0[174];
  v18 = v0[175];
  v13 = v0[172];
  v14 = v0[173];
  v1 = v0[171];
  v2 = v0[170];
  v3 = v0[169];
  v4 = v0[168];
  v5 = v0[167];
  v6 = v0[166];
  v7 = v0[165];
  v8 = v0[164];
  v12 = v0[163];
  v9 = v0[162];
  v15 = v0[156];
  v16 = v0[151];
  sub_26BE00258(v2, v1);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v6, v5);
  sub_26BE00258(v8, v7);
  sub_26BE00258(v9, v12);
  sub_26BE00258(v13, v14);
  sub_26BE00258(v4, v3);
  sub_26BE00258(v2, v1);
  sub_26BF7F05C(v15, type metadata accessor for MLS.GroupState);
  *v16 = v17;
  v16[1] = v18;
  __swift_destroy_boxed_opaque_existential_1(v0 + 137);

  v10 = v0[1];

  return v10();
}

uint64_t sub_26BF62A4C()
{
  v17 = v0[174];
  v18 = v0[175];
  v14 = v0[172];
  v15 = v0[171];
  v16 = v0[173];
  v1 = v0[170];
  v2 = v0[169];
  v3 = v0[168];
  v4 = v0[167];
  v5 = v0[166];
  v6 = v0[165];
  v7 = v0[164];
  v8 = v0[163];
  v9 = v0[162];
  v19 = v0[156];
  sub_26BE00258(v1, v15);
  sub_26BE00258(v3, v2);
  sub_26BE00258(v5, v4);
  sub_26BE00258(v7, v6);
  sub_26BE00258(v9, v8);
  sub_26BE00258(v14, v16);
  sub_26BE00258(v17, v18);
  sub_26BE00258(v3, v2);
  sub_26BE00258(v1, v15);
  sub_26BF7F05C(v19, type metadata accessor for MLS.GroupState);
  __swift_destroy_boxed_opaque_existential_1(v0 + 137);
  v10 = v0[179];
  v11 = v0[156];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26BF62BA4()
{
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_26BF62C50;

  return sub_26BEA6AC0(v1 + 16, v0);
}

uint64_t sub_26BF62C50()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_26BE3E180;
  }

  else
  {
    v3 = sub_26BF7F1BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

char *sub_26BF62D64(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v139 = type metadata accessor for MLS.MLSMessage.Inner(0);
  v7 = *(*(v139 - 1) + 64);
  v8 = MEMORY[0x28223BE20](v139);
  v10 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v130 - v11;
  v13 = type metadata accessor for MLS.MLSMessage(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = MEMORY[0x28223BE20](v15);
  v19 = *a2;
  v20 = *(*a2 + 16);
  if (!v20)
  {
    if (qword_28045DF80 == -1)
    {
LABEL_18:
      v49 = sub_26C009A5C();
      __swift_project_value_buffer(v49, qword_280478EE8);

      v50 = sub_26C009A3C();
      v51 = sub_26C00AA1C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *&v167 = v53;
        *v52 = 136315138;

        v54 = sub_26BE3D034();
        v56 = v55;

        v57 = sub_26BE29740(v54, v56, &v167);

        *(v52 + 4) = v57;
        _os_log_impl(&dword_26BDFE000, v50, v51, "%s: no replacements to make, returning empty proposals", v52, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        MEMORY[0x26D69A4E0](v53, -1, -1);
        MEMORY[0x26D69A4E0](v52, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

LABEL_66:
    swift_once();
    goto LABEL_18;
  }

  v137 = &v130 - v17;
  v138 = v18;
  v132 = v10;
  v133 = v16;
  v130 = a1;
  v131 = v4;
  v140 = v3;
  v182 = MEMORY[0x277D84F90];
  v134 = v20;
  sub_26BECBB74(0, v20, 0);
  if (!*(v19 + 16))
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v21 = 0;
  v22 = v182;
  v23 = v19 + 32;
  v135 = v19;
  v136 = v134 - 1;
  v24 = v19 + 32;
  v25 = v138;
  while (1)
  {
    v141 = v22;
    sub_26BF7EE94(v24, v179);
    v26 = 0;
    v27 = v180;
    v28 = v181;
    v29 = v181 >> 62;
    if ((v181 >> 62) > 1)
    {
      if (v29 != 2)
      {
        goto LABEL_10;
      }

      v26 = *(v180 + 16);
    }

    else
    {
      if (!v29)
      {
        goto LABEL_10;
      }

      v26 = v180;
    }

    sub_26BE00608(v180, v181);
    sub_26BE00608(v27, v28);
LABEL_10:
    *&v167 = v27;
    *(&v167 + 1) = v28;
    *&v168 = v26;
    v30 = v140;
    sub_26BEE3C08(v25);
    v140 = v30;
    if (v30)
    {
      *&v154 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F100, &qword_26C01A558);
      v59 = sub_26C00A4FC();
      v58 = v60;
      sub_26BE826C4(v59, v60, v27, v28);

      swift_willThrow();
      sub_26BE00258(v27, v28);
      sub_26BE00258(v167, *(&v167 + 1));
LABEL_63:
      sub_26BF7EEF0(v179);

      return v58;
    }

    sub_26BE00258(v27, v28);
    sub_26BE00258(v167, *(&v167 + 1));
    v31 = v137;
    sub_26BF7F124(v25, v137, type metadata accessor for MLS.MLSMessage);
    sub_26BF7F0BC(v31, v12, type metadata accessor for MLS.MLSMessage.Inner);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_26BF7F05C(v12, type metadata accessor for MLS.MLSMessage.Inner);
      sub_26BE01654();
      swift_allocError();
      v58 = v61;
      v62 = v132;
      sub_26BF7F0BC(v31, v132, type metadata accessor for MLS.MLSMessage.Inner);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_26BF7F05C(v62, type metadata accessor for MLS.MLSMessage.Inner);
          v64 = 1;
        }

        else if (EnumCaseMultiPayload == 4)
        {
          sub_26BF7F05C(v62, type metadata accessor for MLS.MLSMessage.Inner);
          v64 = 2;
        }

        else
        {
          v64 = *v62;
          sub_26BE00258(*(v62 + 8), *(v62 + 16));
        }
      }

      else if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_26BF7F05C(v62, type metadata accessor for MLS.MLSMessage.Inner);
          v64 = 4;
        }

        else
        {
          sub_26BF7F05C(v62, type metadata accessor for MLS.MLSMessage.Inner);
          v64 = 5;
        }
      }

      else
      {
        sub_26BF7F05C(v62, type metadata accessor for MLS.MLSMessage.Inner);
        v64 = 3;
      }

      *v58 = v64;
      *(v58 + 1) = 5;
      v58[4] = 0;
      v58[112] = 17;
      swift_willThrow();
      sub_26BF7F05C(v31, type metadata accessor for MLS.MLSMessage);
      goto LABEL_63;
    }

    sub_26BF7F05C(v31, type metadata accessor for MLS.MLSMessage);
    sub_26BF7EEF0(v179);
    v32 = *(v12 + 3);
    v169 = *(v12 + 2);
    v170 = v32;
    v33 = *v12;
    v168 = *(v12 + 1);
    v34 = *(v12 + 7);
    v173 = *(v12 + 6);
    v174 = v34;
    v35 = *(v12 + 5);
    v171 = *(v12 + 4);
    v172 = v35;
    v36 = *(v12 + 10);
    v176 = *(v12 + 9);
    v177 = v36;
    v175 = *(v12 + 8);
    v178 = *(v12 + 22);
    v22 = v141;
    v38 = *(v141 + 16);
    v37 = *(v141 + 24);
    v167 = v33;
    v182 = v141;
    if (v38 >= v37 >> 1)
    {
      sub_26BECBB74((v37 > 1), v38 + 1, 1);
      v22 = v182;
    }

    *(v22 + 16) = v38 + 1;
    v39 = v22 + 184 * v38;
    v40 = v167;
    v41 = v168;
    v42 = v170;
    *(v39 + 64) = v169;
    *(v39 + 80) = v42;
    *(v39 + 32) = v40;
    *(v39 + 48) = v41;
    v43 = v171;
    v44 = v172;
    v45 = v174;
    *(v39 + 128) = v173;
    *(v39 + 144) = v45;
    *(v39 + 96) = v43;
    *(v39 + 112) = v44;
    v46 = v175;
    v47 = v176;
    v48 = v177;
    *(v39 + 208) = v178;
    *(v39 + 176) = v47;
    *(v39 + 192) = v48;
    *(v39 + 160) = v46;
    if (v136 == v21)
    {
      break;
    }

    v24 += 72;
    if (++v21 >= *(v135 + 16))
    {
      goto LABEL_65;
    }
  }

  v141 = v22;
  v166 = MEMORY[0x277D84F90];
  v65 = v134;
  sub_26BECBB54(0, v134, 0);
  v66 = v166;
  do
  {
    sub_26BF7EE94(v23, &v154);
    sub_26BE2DB68(&v154, &v142);
    sub_26BF7EEF0(&v154);
    v166 = v66;
    v68 = *(v66 + 16);
    v67 = *(v66 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_26BECBB54((v67 > 1), v68 + 1, 1);
      v66 = v166;
    }

    *(v66 + 16) = v68 + 1;
    v69 = v66 + 56 * v68;
    v70 = v142;
    v71 = v143;
    v72 = v144;
    *(v69 + 80) = v145;
    *(v69 + 48) = v71;
    *(v69 + 64) = v72;
    *(v69 + 32) = v70;
    v23 += 72;
    --v65;
  }

  while (v65);
  v58 = v131;
  v73 = v140;
  v74 = sub_26BF58738(v130, v66);
  v140 = v73;
  if (v73)
  {

    return v58;
  }

  v75 = v74;

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v76 = sub_26C009A5C();
  __swift_project_value_buffer(v76, qword_280478EE8);
  v77 = v141;
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  v78 = sub_26C009A3C();
  v79 = sub_26C00AA1C();

  if (!os_log_type_enabled(v78, v79))
  {

    swift_bridgeObjectRelease_n();
    v88 = *(v75 + 2);
    if (v88)
    {
      goto LABEL_39;
    }

    goto LABEL_48;
  }

  v80 = swift_slowAlloc();
  v139 = swift_slowAlloc();
  *&v154 = v139;
  *v80 = 136315650;

  v81 = sub_26BE3D034();
  v83 = v82;

  v84 = sub_26BE29740(v81, v83, &v154);

  *(v80 + 4) = v84;
  *(v80 + 12) = 2048;
  v85 = *(v77 + 16);

  *(v80 + 14) = v85;

  *(v80 + 22) = 2048;
  v86 = *(v75 + 2);

  *(v80 + 24) = v86;

  _os_log_impl(&dword_26BDFE000, v78, v79, "%s: generating proposals for %ld adds and %ld removes", v80, 0x20u);
  v87 = v139;
  __swift_destroy_boxed_opaque_existential_1(v139);
  MEMORY[0x26D69A4E0](v87, -1, -1);
  MEMORY[0x26D69A4E0](v80, -1, -1);

  v88 = *(v75 + 2);
  if (!v88)
  {
LABEL_48:

    v58 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

LABEL_39:
  v89 = v88 - 1;
  v58 = MEMORY[0x277D84F90];
  for (i = 32; ; i += 4)
  {
    v91 = *&v75[i];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v58 = sub_26BEED780(0, *(v58 + 2) + 1, 1, v58);
    }

    v93 = *(v58 + 2);
    v92 = *(v58 + 3);
    if (v93 >= v92 >> 1)
    {
      v58 = sub_26BEED780((v92 > 1), v93 + 1, 1, v58);
    }

    LODWORD(v154) = v91;
    sub_26BE71934(&v154);
    *(v58 + 2) = v93 + 1;
    v94 = &v58[184 * v93];
    v95 = v154;
    v96 = v155;
    v97 = v157;
    *(v94 + 4) = v156;
    *(v94 + 5) = v97;
    *(v94 + 2) = v95;
    *(v94 + 3) = v96;
    v98 = v158;
    v99 = v159;
    v100 = v161;
    *(v94 + 8) = v160;
    *(v94 + 9) = v100;
    *(v94 + 6) = v98;
    *(v94 + 7) = v99;
    v101 = v162;
    v102 = v163;
    v103 = v164;
    *(v94 + 26) = v165;
    *(v94 + 11) = v102;
    *(v94 + 12) = v103;
    *(v94 + 10) = v101;
    if (!v89)
    {
      break;
    }

    --v89;
  }

LABEL_49:
  v104 = v141;
  v105 = *(v141 + 16);
  if (v105)
  {
    v106 = v105 - 1;
    for (j = 32; ; j += 184)
    {
      v108 = *(v104 + j);
      v109 = *(v104 + j + 16);
      v110 = *(v104 + j + 48);
      v156 = *(v104 + j + 32);
      v157 = v110;
      v154 = v108;
      v155 = v109;
      v111 = *(v104 + j + 64);
      v112 = *(v104 + j + 80);
      v113 = *(v104 + j + 112);
      v160 = *(v104 + j + 96);
      v161 = v113;
      v158 = v111;
      v159 = v112;
      v114 = *(v104 + j + 128);
      v115 = *(v104 + j + 144);
      v116 = *(v104 + j + 160);
      v165 = *(v104 + j + 176);
      v163 = v115;
      v164 = v116;
      v162 = v114;
      sub_26BE2DFC0(&v154, &v142);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v58 = sub_26BEED780(0, *(v58 + 2) + 1, 1, v58);
      }

      v118 = *(v58 + 2);
      v117 = *(v58 + 3);
      if (v118 >= v117 >> 1)
      {
        v58 = sub_26BEED780((v117 > 1), v118 + 1, 1, v58);
      }

      v150 = v162;
      v151 = v163;
      v152 = v164;
      v153 = v165;
      v146 = v158;
      v147 = v159;
      v148 = v160;
      v149 = v161;
      v142 = v154;
      v143 = v155;
      v144 = v156;
      v145 = v157;
      sub_26BE7FED4(&v142);
      *(v58 + 2) = v118 + 1;
      v119 = &v58[184 * v118];
      v120 = v142;
      v121 = v143;
      v122 = v145;
      *(v119 + 4) = v144;
      *(v119 + 5) = v122;
      *(v119 + 2) = v120;
      *(v119 + 3) = v121;
      v123 = v146;
      v124 = v147;
      v125 = v149;
      *(v119 + 8) = v148;
      *(v119 + 9) = v125;
      *(v119 + 6) = v123;
      *(v119 + 7) = v124;
      v126 = v150;
      v127 = v151;
      v128 = v152;
      *(v119 + 26) = v153;
      *(v119 + 11) = v127;
      *(v119 + 12) = v128;
      *(v119 + 10) = v126;
      if (!v106)
      {
        break;
      }

      --v106;
      v104 = v141;
    }
  }

  return v58;
}

uint64_t sub_26BF63934(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v3[4] = *a2;
  return MEMORY[0x2822009F8](sub_26BF6395C, 0, 0);
}

uint64_t sub_26BF6395C()
{
  v1 = v0[3];
  v2 = v0[4];

  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_26BF7F19C;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return (sub_26BEA4D20)(v6);
}

uint64_t sub_26BF63A24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[33] = a2;
  v3[34] = a3;
  v3[32] = a1;
  v4 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[35] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[36] = swift_task_alloc();
  v6 = *(*(type metadata accessor for MLS.GroupState() - 8) + 64) + 15;
  v3[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF63AE8, 0, 0);
}

uint64_t sub_26BF63AE8()
{
  v25 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = sub_26C009A5C();
  __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 272);
  if (v6)
  {
    v8 = *(v0 + 264);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, &v24);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    v15 = *(v7 + 16);

    *(v9 + 14) = v15;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: replacing %ld members of the group due to expired credentials", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 272);
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v0 + 264);
  v18 = *(v17 + 152);
  v19 = *(v17 + 24);
  *(v0 + 240) = v18;
  *(v0 + 248) = v19;
  v20 = swift_task_alloc();
  *(v0 + 304) = v20;
  *v20 = v0;
  v20[1] = sub_26BF63D40;
  v21 = *(v0 + 296);
  v22 = *(v0 + 264);

  return sub_26BF37CA4(v21, (v0 + 240), 0);
}

uint64_t sub_26BF63D40()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_26BF6409C;
  }

  else
  {
    v3 = sub_26BF63E54;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF63E54()
{
  v23 = v0;
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v22 = *(v0 + 272);
  v4 = sub_26BF62D64(v2, &v22);
  *(v0 + 320) = v4;
  if (v1)
  {
    sub_26BF7F05C(*(v0 + 296), type metadata accessor for MLS.GroupState);
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v4;
    v11 = *(v0 + 280);
    v10 = *(v0 + 288);
    *(v0 + 232) = 0;
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 48) = 0u;
    *(v0 + 64) = 0u;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
    *(v0 + 32) = 0u;
    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 16) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 200, v0 + 32, &qword_28045E468, &qword_26C00ECA0);
    v12 = *(v0 + 80);
    v13 = *(v0 + 88);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    sub_26BE701EC(*(v0 + 72));
    *(v0 + 104) = 0u;
    *(v0 + 88) = 0u;
    *(v0 + 72) = 0u;
    v16 = v11[5];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v17 - 8) + 56))(&v10[v16], 1, 3, v17);
    *v10 = 0;
    v10[v11[6]] = 0;
    v10[v11[7]] = 0;
    v10[v11[8]] = 0;
    *&v10[v11[9]] = MEMORY[0x277D84F90];
    v18 = swift_task_alloc();
    *(v0 + 328) = v18;
    *v18 = v0;
    v18[1] = sub_26BF64108;
    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v21 = *(v0 + 264);

    return sub_26BF54A88(v0 + 120, v19, v9, v0 + 16, v20);
  }
}

uint64_t sub_26BF6409C()
{
  v1 = v0[39];
  v3 = v0[36];
  v2 = v0[37];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF64108()
{
  v2 = *v1;
  v3 = (*v1)[41];
  v4 = *v1;
  v2[42] = v0;

  v5 = v2[40];
  sub_26BF7F05C(v2[36], type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8((v2 + 2));
  if (v0)
  {
    v6 = sub_26BF64334;
  }

  else
  {
    v6 = sub_26BF6427C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF6427C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  sub_26BF7F05C(*(v0 + 296), type metadata accessor for MLS.GroupState);
  *v2 = *(v0 + 120);
  v3 = *(v0 + 152);
  v4 = *(v0 + 184);
  v5 = *(v0 + 136);
  v2[3] = *(v0 + 168);
  v2[4] = v4;
  v2[1] = v5;
  v2[2] = v3;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_26BF64334()
{
  sub_26BF7F05C(v0[37], type metadata accessor for MLS.GroupState);
  v1 = v0[42];
  v3 = v0[36];
  v2 = v0[37];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF643BC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_26BF643DC, 0, 0);
}

uint64_t sub_26BF643DC()
{
  v1 = v0[3];

  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_26BF7F1A0;
  v3 = v0[2];
  v4 = v0[3];

  return sub_26BEA7040(v3, v4, v4);
}

uint64_t sub_26BF64494(uint64_t a1, uint64_t a2)
{
  v2[90] = a2;
  v2[89] = a1;
  v3 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v2[91] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[92] = swift_task_alloc();
  v5 = sub_26C00A4EC();
  v2[93] = v5;
  v6 = *(v5 - 8);
  v2[94] = v6;
  v7 = *(v6 + 64) + 15;
  v2[95] = swift_task_alloc();
  v8 = type metadata accessor for MLS.GroupState();
  v2[96] = v8;
  v9 = *(*(v8 - 8) + 64) + 15;
  v2[97] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF645B8, 0, 0);
}

uint64_t sub_26BF645B8()
{
  v20 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 720);
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 720);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: downgrading to unencrypted", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = *(v0 + 720);
  v13 = *(v12 + 152);
  v14 = *(v12 + 24);
  *(v0 + 696) = v13;
  *(v0 + 704) = v14;
  v15 = swift_task_alloc();
  *(v0 + 784) = v15;
  *v15 = v0;
  v15[1] = sub_26BF647C0;
  v16 = *(v0 + 776);
  v17 = *(v0 + 720);

  return sub_26BF37CA4(v16, (v0 + 696), 0);
}

uint64_t sub_26BF647C0()
{
  v2 = *(*v1 + 784);
  v5 = *v1;
  *(*v1 + 792) = v0;

  if (v0)
  {
    v3 = sub_26BF648D4;
  }

  else
  {
    v3 = sub_26BF64958;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF648D4()
{
  v1 = v0[99];
  v2 = v0[97];
  v3 = v0[95];
  v4 = v0[92];

  v5 = v0[1];

  return v5();
}

uint64_t sub_26BF64958()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 744);
  v4 = *(*(v0 + 776) + *(*(v0 + 768) + 40));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F258, &qword_26C01A898);
  inited = swift_initStackObject();
  *(v0 + 800) = inited;
  *(inited + 16) = xmmword_26C011280;
  sub_26C00A4CC();
  v6 = sub_26C00A49C();
  v8 = v7;
  result = (*(v2 + 8))(v1, v3);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    v10 = *(v0 + 736);
    v11 = *(v0 + 728);
    *(inited + 32) = -4094;
    *(inited + 40) = v6;
    *(inited + 48) = v8;

    sub_26BF9E81C(inited);
    *(v0 + 808) = v4;
    *(v0 + 232) = v4;
    sub_26BE80190((v0 + 232));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
    v12 = swift_initStackObject();
    *(v0 + 816) = v12;
    *(v12 + 16) = xmmword_26C011280;
    v13 = *(v0 + 360);
    v14 = *(v0 + 376);
    v15 = *(v0 + 392);
    *(v12 + 208) = *(v0 + 408);
    *(v12 + 176) = v14;
    *(v12 + 192) = v15;
    *(v12 + 160) = v13;
    v16 = *(v0 + 296);
    v17 = *(v0 + 312);
    v18 = *(v0 + 344);
    *(v12 + 128) = *(v0 + 328);
    *(v12 + 144) = v18;
    *(v12 + 96) = v16;
    *(v12 + 112) = v17;
    v19 = *(v0 + 232);
    v20 = *(v0 + 280);
    v21 = *(v0 + 248);
    *(v12 + 64) = *(v0 + 264);
    *(v12 + 80) = v20;
    *(v12 + 32) = v19;
    *(v12 + 48) = v21;
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0;
    *(v0 + 480) = 0u;
    *(v0 + 496) = 0u;
    *(v0 + 448) = 0u;
    *(v0 + 464) = 0u;
    *(v0 + 432) = 0u;

    sub_26BE2962C(0, 0x3000000000000000uLL);
    *(v0 + 416) = xmmword_26C00DA50;
    sub_26BE7170C(v0 + 656, v0 + 432, &qword_28045E468, &qword_26C00ECA0);
    v22 = *(v0 + 480);
    v23 = *(v0 + 488);
    v24 = *(v0 + 496);
    v25 = *(v0 + 504);
    sub_26BE701EC(*(v0 + 472));
    *(v0 + 488) = 0u;
    *(v0 + 504) = 0u;
    *(v0 + 472) = 0u;
    v26 = v11[5];
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
    (*(*(v27 - 8) + 56))(&v10[v26], 1, 3, v27);
    *v10 = 0;
    v10[v11[6]] = 0;
    v10[v11[7]] = 0;
    v10[v11[8]] = 0;
    *&v10[v11[9]] = MEMORY[0x277D84F90];
    v28 = swift_task_alloc();
    *(v0 + 824) = v28;
    *v28 = v0;
    v28[1] = sub_26BF64C5C;
    v29 = *(v0 + 776);
    v30 = *(v0 + 736);
    v31 = *(v0 + 720);

    return sub_26BF54A88(v0 + 520, v29, v12, v0 + 416, v30);
  }

  return result;
}

uint64_t sub_26BF64C5C()
{
  v2 = *v1;
  v3 = (*v1)[103];
  v4 = *v1;
  v2[104] = v0;

  v5 = v2[102];
  sub_26BF7F05C(v2[92], type metadata accessor for MLS.GroupState.CommitOptions);
  swift_setDeallocating();
  v6 = *(v5 + 16);
  swift_arrayDestroy();
  sub_26BF7E1E8((v2 + 52));
  if (v0)
  {
    v7 = sub_26BF64EB8;
  }

  else
  {
    v7 = sub_26BF64DE4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_26BF64DE4()
{
  v1 = *(v0 + 808);
  v2 = *(v0 + 776);
  v3 = *(v0 + 760);
  v4 = *(v0 + 736);
  v5 = *(v0 + 712);

  *v5 = *(v0 + 520);
  v6 = *(v0 + 536);
  v7 = *(v0 + 552);
  v8 = *(v0 + 584);
  v5[3] = *(v0 + 568);
  v5[4] = v8;
  v5[1] = v6;
  v5[2] = v7;
  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26BF64EB8()
{
  v1 = v0[101];
  v2 = v0[97];

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  v3 = v0[104];
  v4 = v0[97];
  v5 = v0[95];
  v6 = v0[92];

  v7 = v0[1];

  return v7();
}

uint64_t sub_26BF64F64(uint64_t a1, uint64_t *a2)
{
  v3[56] = a1;
  v3[57] = v2;
  v5 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v3[58] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v7 = type metadata accessor for MLS.GroupState();
  v3[60] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v3[61] = v9;
  v3[62] = v10;

  return MEMORY[0x2822009F8](sub_26BF65030, 0, 0);
}

uint64_t sub_26BF65030()
{
  v40 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 496);
  v2 = *(v0 + 456);
  v3 = sub_26C009A5C();
  *(v0 + 504) = __swift_project_value_buffer(v3, qword_280478EE8);
  swift_bridgeObjectRetain_n();

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 496);
  if (v6)
  {
    v8 = *(v0 + 456);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v39[0] = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, v39);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2048;
    v15 = *(v7 + 16);

    *(v9 + 14) = v15;

    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: performing a resurrection, and replacing %ld members of the group due to expired credentials", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  else
  {
    v16 = *(v0 + 496);
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v0 + 456);

  v18 = sub_26C009A3C();
  v19 = sub_26C00AA1C();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 456);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v38 = v22;
    *v21 = 136315394;

    v23 = sub_26BE3D034();
    v25 = v24;

    v26 = sub_26BE29740(v23, v25, &v38);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = *(v20 + 24);
    LODWORD(v39[0]) = *(v20 + 152);
    v39[1] = v27;
    v28 = MLS.Group.PureSwiftGroup.EraEpoch.description.getter();
    v30 = sub_26BE29740(v28, v29, &v38);

    *(v21 + 14) = v30;
    _os_log_impl(&dword_26BDFE000, v18, v19, "%s: getting state for epoch %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v22, -1, -1);
    MEMORY[0x26D69A4E0](v21, -1, -1);
  }

  v31 = *(v0 + 456);
  v32 = *(v31 + 152);
  v33 = *(v31 + 24);
  *(v0 + 424) = v32;
  *(v0 + 432) = v33;
  v34 = swift_task_alloc();
  *(v0 + 512) = v34;
  *v34 = v0;
  v34[1] = sub_26BF653D0;
  v35 = *(v0 + 488);
  v36 = *(v0 + 456);

  return sub_26BF37CA4(v35, (v0 + 424), 1);
}

uint64_t sub_26BF653D0()
{
  v2 = *(*v1 + 512);
  v5 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = sub_26BF65F90;
  }

  else
  {
    v3 = sub_26BF654E4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF654E4()
{
  v103 = v0;
  v1 = *(*(v0 + 488) + *(*(v0 + 480) + 40));
  v2 = (v1 + 32);
  v3 = *(v1 + 16) + 1;
  do
  {
    if (!--v3)
    {
      v22 = *(v0 + 504);
      v23 = *(v0 + 456);

      v24 = sub_26C009A3C();
      v25 = sub_26C00AA0C();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 456);
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v102[0] = v28;
        *v27 = 136315138;

        v29 = sub_26BE3D034();
        v31 = v30;

        v32 = sub_26BE29740(v29, v31, v102);

        *(v27 + 4) = v32;
        _os_log_impl(&dword_26BDFE000, v24, v25, "%s: attempted resurrection on non-ended group", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x26D69A4E0](v28, -1, -1);
        MEMORY[0x26D69A4E0](v27, -1, -1);
      }

      v21 = *(v0 + 488);
      sub_26BE01654();
      swift_allocError();
      *v33 = 42;
      *(v33 + 8) = 0u;
      *(v33 + 24) = 0u;
      *(v33 + 40) = 0u;
      *(v33 + 56) = 0u;
      *(v33 + 72) = 0u;
      *(v33 + 88) = 0u;
      *(v33 + 104) = 0;
      *(v33 + 112) = 23;
      swift_willThrow();
      goto LABEL_11;
    }

    v4 = *v2;
    v2 += 12;
  }

  while (v4 != -4094);
  v5 = *(v0 + 504);
  v6 = *(v0 + 456);

  v7 = sub_26C009A3C();
  v8 = sub_26C00AA1C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 456);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v102[0] = v11;
    *v10 = 136315138;

    v12 = sub_26BE3D034();
    v14 = v13;

    v15 = sub_26BE29740(v12, v14, v102);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_26BDFE000, v7, v8, "%s: generating proposals for replacing expired credentials", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x26D69A4E0](v11, -1, -1);
    MEMORY[0x26D69A4E0](v10, -1, -1);
  }

  v16 = *(v0 + 520);
  v17 = *(v0 + 488);
  v18 = *(v0 + 456);
  v102[0] = *(v0 + 496);

  v19 = sub_26BF62D64(v17, v102);
  if (v16)
  {
    v21 = *(v0 + 488);
    v20 = *(v0 + 496);

LABEL_11:
    sub_26BF7F05C(v21, type metadata accessor for MLS.GroupState);
    v34 = *(v0 + 488);
    v35 = *(v0 + 472);

    v36 = *(v0 + 8);

    return v36();
  }

  v38 = v19;
  v39 = *(v0 + 496);
  v40 = *(v0 + 504);
  v41 = *(v0 + 456);

  v42 = sub_26C009A3C();
  v43 = sub_26C00AA1C();

  v101 = v38;
  if (os_log_type_enabled(v42, v43))
  {
    v44 = *(v0 + 456);
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v102[0] = v46;
    *v45 = 136315138;

    v47 = sub_26BE3D034();
    v49 = v48;

    v50 = sub_26BE29740(v47, v49, v102);

    *(v45 + 4) = v50;
    _os_log_impl(&dword_26BDFE000, v42, v43, "%s: adding proposal to remove end_mls from GCE", v45, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v46);
    MEMORY[0x26D69A4E0](v46, -1, -1);
    MEMORY[0x26D69A4E0](v45, -1, -1);
  }

  v51 = 0;
  v52 = *(v1 + 16);
  v53 = v1 + 32;
  v54 = MEMORY[0x277D84F90];
LABEL_17:
  *(v0 + 528) = v54;
  v55 = (v53 + 24 * v51);
  while (v52 != v51)
  {
    if (v51 >= *(v1 + 16))
    {
      __break(1u);
      goto LABEL_35;
    }

    v56 = v55 + 12;
    ++v51;
    v57 = *v55;
    v55 += 12;
    if (v57 != 61442)
    {
      v58 = *(v56 - 2);
      v99 = *(v56 - 1);
      sub_26BE00608(v58, v99);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 440) = v54;
      v100 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26BECBAB4(0, *(v54 + 16) + 1, 1);
        v54 = *(v0 + 440);
      }

      v61 = *(v54 + 16);
      v60 = *(v54 + 24);
      if (v61 >= v60 >> 1)
      {
        sub_26BECBAB4((v60 > 1), v61 + 1, 1);
        v54 = *(v0 + 440);
      }

      *(v54 + 16) = v61 + 1;
      v62 = v54 + 24 * v61;
      *(v62 + 32) = v57;
      *(v62 + 40) = v58;
      *(v62 + 48) = v99;
      v53 = v100;
      goto LABEL_17;
    }
  }

  *(v0 + 16) = v54;
  sub_26BE80190((v0 + 16));

  v52 = v101;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_27;
  }

LABEL_35:
  v52 = sub_26BEED780(0, *(v52 + 2) + 1, 1, v52);
LABEL_27:
  v64 = *(v52 + 2);
  v63 = *(v52 + 3);
  if (v64 >= v63 >> 1)
  {
    v52 = sub_26BEED780((v63 > 1), v64 + 1, 1, v52);
  }

  *(v0 + 536) = v52;
  v65 = *(v0 + 504);
  v66 = *(v0 + 456);
  *(v52 + 2) = v64 + 1;
  v67 = &v52[184 * v64];
  v68 = *(v0 + 16);
  v69 = *(v0 + 32);
  v70 = *(v0 + 64);
  *(v67 + 4) = *(v0 + 48);
  *(v67 + 5) = v70;
  *(v67 + 2) = v68;
  *(v67 + 3) = v69;
  v71 = *(v0 + 80);
  v72 = *(v0 + 96);
  v73 = *(v0 + 128);
  *(v67 + 8) = *(v0 + 112);
  *(v67 + 9) = v73;
  *(v67 + 6) = v71;
  *(v67 + 7) = v72;
  v74 = *(v0 + 144);
  v75 = *(v0 + 160);
  v76 = *(v0 + 176);
  *(v67 + 26) = *(v0 + 192);
  *(v67 + 11) = v75;
  *(v67 + 12) = v76;
  *(v67 + 10) = v74;

  v77 = sub_26C009A3C();
  v78 = sub_26C00AA1C();

  if (os_log_type_enabled(v77, v78))
  {
    v79 = *(v0 + 456);
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v102[0] = v81;
    *v80 = 136315138;

    v82 = sub_26BE3D034();
    v84 = v83;

    v85 = sub_26BE29740(v82, v84, v102);

    *(v80 + 4) = v85;
    _os_log_impl(&dword_26BDFE000, v77, v78, "%s: committing", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v81);
    MEMORY[0x26D69A4E0](v81, -1, -1);
    MEMORY[0x26D69A4E0](v80, -1, -1);
  }

  v86 = MEMORY[0x277D84F90];
  v87 = *(v0 + 464);
  v88 = *(v0 + 472);
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0;
  *(v0 + 232) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 216) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v0 + 200) = xmmword_26C00DA50;
  sub_26BE7170C(v0 + 384, v0 + 216, &qword_28045E468, &qword_26C00ECA0);
  v89 = *(v0 + 264);
  v90 = *(v0 + 272);
  v91 = *(v0 + 280);
  v92 = *(v0 + 288);
  sub_26BE701EC(*(v0 + 256));
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 256) = 0u;
  v93 = v87[5];
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v94 - 8) + 56))(&v88[v93], 1, 3, v94);
  *v88 = 0;
  v88[v87[6]] = 0;
  v88[v87[7]] = 0;
  v88[v87[8]] = 0;
  *&v88[v87[9]] = v86;
  v95 = swift_task_alloc();
  *(v0 + 544) = v95;
  *v95 = v0;
  v95[1] = sub_26BF65D60;
  v96 = *(v0 + 488);
  v97 = *(v0 + 472);
  v98 = *(v0 + 456);

  return sub_26BF54A88(v0 + 304, v96, v52, v0 + 200, v97);
}

uint64_t sub_26BF65D60()
{
  v2 = *v1;
  v3 = (*v1)[68];
  v4 = *v1;
  v2[69] = v0;

  v5 = v2[67];
  sub_26BF7F05C(v2[59], type metadata accessor for MLS.GroupState.CommitOptions);

  sub_26BF7E1E8((v2 + 25));
  if (v0)
  {
    v6 = sub_26BF66000;
  }

  else
  {
    v6 = sub_26BF65ED4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF65ED4()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 488);
  v3 = *(v0 + 472);
  v4 = *(v0 + 448);

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  *v4 = *(v0 + 304);
  v5 = *(v0 + 368);
  v7 = *(v0 + 320);
  v6 = *(v0 + 336);
  v4[3] = *(v0 + 352);
  v4[4] = v5;
  v4[1] = v7;
  v4[2] = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_26BF65F90()
{
  v1 = v0[65];
  v2 = v0[61];
  v3 = v0[59];

  v4 = v0[1];

  return v4();
}

uint64_t sub_26BF66000()
{
  v1 = v0[66];
  v2 = v0[61];

  sub_26BF7F05C(v2, type metadata accessor for MLS.GroupState);
  v3 = v0[69];
  v4 = v0[61];
  v5 = v0[59];

  v6 = v0[1];

  return v6();
}

uint64_t sub_26BF66098(uint64_t a1, uint64_t *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = *a2;
  v5 = a2[1];
  v3[4] = *v2;
  v3[5] = v4;
  v3[6] = v5;
  return MEMORY[0x2822009F8](sub_26BF660E8, 0, 0);
}

uint64_t sub_26BF660E8()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_26BF661BC;
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[2];
  v8 = v0[3];

  return sub_26BEA2A98(v7, v8, v8, v5, v6, v3);
}

uint64_t sub_26BF661BC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_26BF662B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v5[146] = a5;
  v5[145] = a4;
  v5[144] = a3;
  v5[143] = a2;
  v5[142] = a1;
  v6 = *(*(type metadata accessor for MLS.MLSMessage(0) - 8) + 64) + 15;
  v5[147] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8D8, &qword_26C012580) - 8) + 64) + 15;
  v5[148] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E8E0, &unk_26C0204E0);
  v5[149] = v8;
  v9 = *(v8 - 8);
  v5[150] = v9;
  v10 = *(v9 + 64) + 15;
  v5[151] = swift_task_alloc();
  v5[152] = swift_task_alloc();
  v11 = type metadata accessor for MLS.GroupState.CommitOptions(0);
  v5[153] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v5[154] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  v5[155] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0) - 8) + 64) + 15;
  v5[156] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8) - 8) + 64) + 15;
  v5[157] = swift_task_alloc();
  v5[158] = swift_task_alloc();
  v16 = type metadata accessor for FileMetadata(0);
  v5[159] = v16;
  v17 = *(v16 - 8);
  v5[160] = v17;
  v18 = *(v17 + 64) + 15;
  v5[161] = swift_task_alloc();
  v5[162] = swift_task_alloc();
  v5[163] = swift_task_alloc();
  v19 = type metadata accessor for FileEncryptionInfo(0);
  v5[164] = v19;
  v20 = *(v19 - 8);
  v5[165] = v20;
  v21 = *(v20 + 64) + 15;
  v5[166] = swift_task_alloc();
  v5[167] = swift_task_alloc();
  v5[168] = swift_task_alloc();
  v22 = type metadata accessor for FileInfo(0);
  v5[169] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v24 = sub_26C009DAC();
  v5[172] = v24;
  v25 = *(v24 - 8);
  v5[173] = v25;
  v26 = *(v25 + 64) + 15;
  v5[174] = swift_task_alloc();
  v27 = sub_26C009E0C();
  v5[175] = v27;
  v28 = *(v27 - 8);
  v5[176] = v28;
  v29 = *(v28 + 64) + 15;
  v5[177] = swift_task_alloc();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FB50, &unk_26C020ED0);
  v5[178] = v30;
  v31 = *(*(v30 - 8) + 64) + 15;
  v5[179] = swift_task_alloc();
  v32 = type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption(0);
  v5[180] = v32;
  v33 = *(*(v32 - 8) + 64) + 15;
  v5[181] = swift_task_alloc();
  v5[182] = swift_task_alloc();
  v34 = sub_26C00A4EC();
  v5[183] = v34;
  v35 = *(v34 - 8);
  v5[184] = v35;
  v36 = *(v35 + 64) + 15;
  v5[185] = swift_task_alloc();
  v37 = *(*(sub_26C009D7C() - 8) + 64) + 15;
  v5[186] = swift_task_alloc();
  v38 = sub_26C009C8C();
  v5[187] = v38;
  v39 = *(v38 - 8);
  v5[188] = v39;
  v40 = *(v39 + 64) + 15;
  v5[189] = swift_task_alloc();
  v5[190] = swift_task_alloc();
  v5[191] = swift_task_alloc();
  v5[192] = swift_task_alloc();
  v5[193] = swift_task_alloc();
  v5[194] = swift_task_alloc();
  v41 = type metadata accessor for MLS.GroupState();
  v5[195] = v41;
  v42 = *(*(v41 - 8) + 64) + 15;
  v5[196] = swift_task_alloc();
  v5[197] = swift_task_alloc();
  v43 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_26BF668BC, 0, 0);
}

uint64_t sub_26BF668BC()
{
  v57 = v0;
  v56 = *MEMORY[0x277D85DE8];
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[145];
  v2 = v0[143];
  v3 = sub_26C009A5C();
  v0[198] = v3;
  v0[199] = __swift_project_value_buffer(v3, qword_280478EE8);

  v4 = sub_26C009A3C();
  v5 = sub_26C00AA1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[145];
    v7 = v0[144];
    v8 = v0[143];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *&v55 = v10;
    *v9 = 136315394;

    v11 = sub_26BE3D034();
    v13 = v12;

    v14 = sub_26BE29740(v11, v13, &v55);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_26BE29740(v7, v6, &v55);
    _os_log_impl(&dword_26BDFE000, v4, v5, "%s: changing RCS group name to %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v10, -1, -1);
    MEMORY[0x26D69A4E0](v9, -1, -1);
  }

  v15 = v0[143];
  sub_26BE2FFCC();
  v55 = *(v0[143] + 56);
  if (sub_26BE30198())
  {
    sub_26BE01654();
    swift_allocError();
    *v16 = 45;
    *(v16 + 8) = 0u;
    *(v16 + 24) = 0u;
    *(v16 + 40) = 0u;
    *(v16 + 56) = 0u;
    *(v16 + 72) = 0u;
    *(v16 + 88) = 0u;
    *(v16 + 104) = 0;
    *(v16 + 112) = 23;
    swift_willThrow();
    v17 = v0[197];
    v18 = v0[196];
    v19 = v0[194];
    v20 = v0[193];
    v21 = v0[192];
    v22 = v0[191];
    v23 = v0[190];
    v24 = v0[189];
    v25 = v0[186];
    v26 = v0[185];
    v33 = v0[182];
    v34 = v0[181];
    v35 = v0[179];
    v36 = v0[177];
    v37 = v0[174];
    v38 = v0[171];
    v39 = v0[170];
    v40 = v0[168];
    v41 = v0[167];
    v42 = v0[166];
    v43 = v0[163];
    v44 = v0[162];
    v45 = v0[161];
    v46 = v0[158];
    v47 = v0[157];
    v48 = v0[156];
    v49 = v0[155];
    v50 = v0[154];
    v51 = v0[152];
    v52 = v0[151];
    v53 = v0[148];
    v54 = v0[147];

    v27 = v0[1];
    v28 = *MEMORY[0x277D85DE8];

    return v27();
  }

  else
  {
    v30 = swift_task_alloc();
    v0[200] = v30;
    *v30 = v0;
    v30[1] = sub_26BF66DB8;
    v31 = v0[143];
    v32 = *MEMORY[0x277D85DE8];

    return sub_26BE304A0();
  }
}

uint64_t sub_26BF66DB8(char a1)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = *v2;
  v5 = *(*v2 + 1600);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v4 + 1576);
    v8 = *(v4 + 1568);
    v9 = *(v4 + 1552);
    v10 = *(v4 + 1544);
    v11 = *(v4 + 1536);
    v12 = *(v4 + 1528);
    v13 = *(v4 + 1520);
    v14 = *(v4 + 1512);
    v15 = *(v4 + 1488);
    v21 = *(v4 + 1480);
    v22 = *(v4 + 1456);
    v23 = *(v4 + 1448);
    v24 = *(v4 + 1432);
    v25 = *(v4 + 1416);
    v26 = *(v4 + 1392);
    v27 = *(v4 + 1368);
    v28 = *(v4 + 1360);
    v29 = *(v4 + 1344);
    v30 = *(v4 + 1336);
    v31 = *(v4 + 1328);
    v32 = *(v4 + 1304);
    v33 = *(v4 + 1296);
    v34 = *(v4 + 1288);
    v35 = *(v4 + 1264);
    v36 = *(v4 + 1256);
    v37 = *(v4 + 1248);
    v38 = *(v4 + 1240);
    v39 = *(v4 + 1232);
    v40 = *(v4 + 1216);
    v41 = *(v4 + 1208);
    v42 = *(v4 + 1184);
    v16 = *(v4 + 1176);

    v17 = *(v6 + 8);
    v18 = *MEMORY[0x277D85DE8];

    return v17();
  }

  else
  {
    *(v4 + 1808) = a1 & 1;
    v20 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_26BF6711C, 0, 0);
  }
}

uint64_t sub_26BF6711C()
{
  v44 = *MEMORY[0x277D85DE8];
  if (*(v0 + 1808) == 1)
  {
    sub_26BE01654();
    swift_allocError();
    *v1 = 46;
    *(v1 + 8) = 0u;
    *(v1 + 24) = 0u;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 88) = 0u;
    *(v1 + 104) = 0;
    *(v1 + 112) = 23;
    swift_willThrow();
    v2 = *(v0 + 1576);
    v3 = *(v0 + 1568);
    v4 = *(v0 + 1552);
    v5 = *(v0 + 1544);
    v6 = *(v0 + 1536);
    v7 = *(v0 + 1528);
    v8 = *(v0 + 1520);
    v9 = *(v0 + 1512);
    v10 = *(v0 + 1488);
    v11 = *(v0 + 1480);
    v22 = *(v0 + 1456);
    v23 = *(v0 + 1448);
    v24 = *(v0 + 1432);
    v25 = *(v0 + 1416);
    v26 = *(v0 + 1392);
    v27 = *(v0 + 1368);
    v28 = *(v0 + 1360);
    v29 = *(v0 + 1344);
    v30 = *(v0 + 1336);
    v31 = *(v0 + 1328);
    v32 = *(v0 + 1304);
    v33 = *(v0 + 1296);
    v34 = *(v0 + 1288);
    v35 = *(v0 + 1264);
    v36 = *(v0 + 1256);
    v37 = *(v0 + 1248);
    v38 = *(v0 + 1240);
    v39 = *(v0 + 1232);
    v40 = *(v0 + 1216);
    v41 = *(v0 + 1208);
    v42 = *(v0 + 1184);
    v43 = *(v0 + 1176);

    v12 = *(v0 + 8);
    v13 = *MEMORY[0x277D85DE8];

    return v12();
  }

  else
  {
    v15 = *(v0 + 1144);
    v16 = *(v15 + 152);
    v17 = *(v15 + 24);
    *(v0 + 968) = v16;
    *(v0 + 976) = v17;
    v18 = swift_task_alloc();
    *(v0 + 1608) = v18;
    *v18 = v0;
    v18[1] = sub_26BF67488;
    v19 = *(v0 + 1576);
    v20 = *(v0 + 1144);
    v21 = *MEMORY[0x277D85DE8];

    return sub_26BF37CA4(v19, (v0 + 968), 0);
  }
}

uint64_t sub_26BF67488()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 1608);
  v7 = *v1;
  *(*v1 + 1616) = v0;

  if (v0)
  {
    v3 = sub_26BF69D5C;
  }

  else
  {
    v3 = sub_26BF675C8;
  }

  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF675C8()
{
  v400 = v0;
  v1 = v0;
  v399 = *MEMORY[0x277D85DE8];
  v2 = *(v0 + 1552);
  v3 = *(v0 + 1488);
  v4 = *(v1 + 1480);
  v5 = *(v1 + 1472);
  v6 = *(v1 + 1464);
  sub_26C009D5C();
  sub_26C009C6C();
  sub_26C00A4CC();
  v7 = sub_26C00A49C();
  v9 = v8;
  *(v1 + 1624) = v7;
  *(v1 + 1632) = v8;
  v10 = *(v5 + 8);
  v10(v4, v6);
  if (v9 >> 60 == 15)
  {
    __break(1u);
  }

  v11 = *(v1 + 1480);
  v12 = *(v1 + 1464);
  v13 = *(v1 + 1160);
  v14 = *(v1 + 1152);
  sub_26C00A4CC();
  v15 = sub_26C00A49C();
  v17 = v16;
  *(v1 + 1640) = v15;
  *(v1 + 1648) = v16;
  v10(v11, v12);
  v396 = v1;
  if (v17 >> 60 == 15)
  {
    v18 = *(v1 + 1592);
    v19 = sub_26C009A3C();
    v20 = sub_26C00AA0C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_26BDFE000, v19, v20, "UTF-8 encoding of the input new group name failed", v21, 2u);
      MEMORY[0x26D69A4E0](v21, -1, -1);
    }

    v22 = *(v1 + 1576);
    v23 = *(v1 + 1552);
    v24 = *(v1 + 1504);
    v25 = *(v1 + 1496);

    sub_26BE01654();
    swift_allocError();
    *v26 = 37;
    v26[112] = 0;
    swift_willThrow();
    sub_26BE132D4(v7, v9);
    (*(v24 + 8))(v23, v25);
    v27 = v22;
    goto LABEL_32;
  }

  v28 = v17 >> 62;
  v389 = v9;
  v392 = v7;
  v373 = v10;
  if ((v17 >> 62) > 1)
  {
    if (v28 != 2)
    {
      v29 = 0;
      goto LABEL_16;
    }

    v31 = *(v15 + 16);
    v30 = *(v15 + 24);
    v29 = v30 - v31;
    if (__OFSUB__(v30, v31))
    {
LABEL_109:
      __break(1u);
      goto LABEL_110;
    }

    v32 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
    *v34 = v15;
    v34[1] = v17;
    v35 = *(v15 + 16);
LABEL_14:
    sub_26BE2BAE8(v15, v17);
    sub_26BE00608(v15, v17);
    goto LABEL_17;
  }

  if (v28)
  {
    if (__OFSUB__(HIDWORD(v15), v15))
    {
LABEL_110:
      __break(1u);
      goto LABEL_111;
    }

    v29 = HIDWORD(v15) - v15;
    v32 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
    v33 = objc_allocWithZone(v32);
    v36 = &v33[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
    *v36 = v15;
    v36[1] = v17;
    v35 = v15;
    goto LABEL_14;
  }

  v29 = BYTE6(v17);
LABEL_16:
  v32 = type metadata accessor for RCSFileAttachmentCrypto.SeekableDataInputStream();
  v33 = objc_allocWithZone(v32);
  v35 = 0;
  v37 = &v33[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_data];
  *v37 = v15;
  v37[1] = v17;
LABEL_17:
  v38 = *(v1 + 1592);
  v39 = *(v1 + 1144);
  *&v33[OBJC_IVAR____TtCO8SwiftMLS23RCSFileAttachmentCrypto23SeekableDataInputStream_pos] = v35;
  v40 = sub_26C0090DC();
  *(v1 + 1096) = v33;
  *(v1 + 1104) = v32;
  v41 = objc_msgSendSuper2((v1 + 1096), sel_initWithData_, v40);
  *(v1 + 1656) = v41;
  v384 = v17;
  sub_26BE132D4(v15, v17);

  [v41 open];
  v42 = [objc_allocWithZone(MEMORY[0x277CBEB78]) initToMemory];
  *(v1 + 1664) = v42;
  [v42 open];

  v43 = sub_26C009A3C();
  v44 = sub_26C00AA1C();

  v386 = v15;
  if (os_log_type_enabled(v43, v44))
  {
    v45 = *(v1 + 1144);
    v46 = swift_slowAlloc();
    v382 = swift_slowAlloc();
    *&v397[0] = v382;
    *v46 = 136315138;

    v47 = v42;
    v48 = v41;
    v49 = v29;
    v50 = sub_26BE3D034();
    v52 = v51;

    v53 = v50;
    v29 = v49;
    v41 = v48;
    v42 = v47;
    v54 = sub_26BE29740(v53, v52, v397);

    *(v46 + 4) = v54;
    _os_log_impl(&dword_26BDFE000, v43, v44, "%s: encrypting group name to file encryption", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v382);
    MEMORY[0x26D69A4E0](v382, -1, -1);
    MEMORY[0x26D69A4E0](v46, -1, -1);
  }

  v55 = *(v1 + 1448);
  v56 = *(*(v1 + 1504) + 16);
  v56(*(v1 + 1544), *(v1 + 1552), *(v1 + 1496));
  *(v55 + 24) = 0;
  if (v29 > 0x7FFFFFFF)
  {
    v86 = *(v1 + 1576);
    v87 = *(v1 + 1552);
    v88 = *(v1 + 1544);
    v89 = *(v1 + 1504);
    v90 = *(v1 + 1496);
    sub_26BF7EDDC();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();

    sub_26BE132D4(v392, v389);
    sub_26BE132D4(v386, v384);
    v92 = *(v89 + 8);
    v92(v88, v90);
    v92(v87, v90);
    goto LABEL_31;
  }

  if (v29 < 0)
  {
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

  *&v370 = v56;
  v57 = *(v1 + 1448);
  v58 = *(v1 + 1440);
  v59 = *(v58 + 44);
  *v57 = v29;
  v60 = 10240;
  *(v57 + v59) = 10240;
  v61 = v41;
  v62 = v42;
  LOWORD(v42) = v389;
  sub_26BE2BAE8(v392, v389);
  v63 = sub_26C00A74C();
  *(v63 + 16) = 10240;
  bzero((v63 + 32), 0x2800uLL);
  *(v57 + *(v58 + 48)) = v63;
  v64 = sub_26C0092DC();
  if (v65)
  {
    goto LABEL_117;
  }

  if (HIDWORD(v64))
  {
    goto LABEL_106;
  }

  v66 = v64 - v29;
  if (v64 < v29)
  {
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  *(*(v1 + 1448) + 4) = v66;
  if (__CFADD__(v29 + 8, v66))
  {
LABEL_108:
    __break(1u);
    goto LABEL_109;
  }

  *(&v370 + 1) = v63;
  v376 = v62;
  v378 = v61;
  v67 = *(v1 + 1616);
  v68 = *(v1 + 1544);
  v69 = *(v1 + 1536);
  v70 = *(v1 + 1504);
  v71 = *(v1 + 1496);
  v72 = *(v1 + 1488);
  v73 = *(v1 + 1448);
  *(v73 + 28) = v64 + 8;
  sub_26C009D6C();
  sub_26C009C6C();
  v74 = MEMORY[0x277CC9318];
  sub_26C009C3C();
  v75 = *(v70 + 8);
  *(v1 + 1672) = v75;
  *(v1 + 1680) = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v380 = v75;
  v75(v69, v71);
  v76 = *(v1 + 1080);
  v77 = *(v1 + 1088);
  *(v73 + 8) = v76;
  *(v73 + 16) = v77;
  *&v397[0] = v76;
  *(&v397[0] + 1) = v77;
  *(v1 + 664) = v74;
  *(v1 + 672) = MEMORY[0x277CC9300];
  *(v1 + 640) = xmmword_26C01F8F0;
  v78 = __swift_project_boxed_opaque_existential_1((v1 + 640), v74);
  v79 = *v78;
  v80 = v78[1];
  sub_26BE00608(v76, v77);
  sub_26BE121A0(v79, v80);
  __swift_destroy_boxed_opaque_existential_1((v1 + 640));
  v82 = *(&v397[0] + 1);
  v81 = *&v397[0];
  if (sub_26C009C7C() != 256)
  {

    sub_26BE132D4(v392, v389);
    sub_26BF7EDDC();
    swift_allocError();
    *v93 = 3;
    swift_willThrow();

    sub_26BE132D4(v392, v389);
    sub_26BE00258(v81, v82);
    v94 = v386;
    goto LABEL_34;
  }

  v83 = v389 >> 62;
  v84 = v386;
  if ((v389 >> 62) > 1)
  {
    if (v83 != 2)
    {
      goto LABEL_38;
    }

    v97 = *(v392 + 16);
    v96 = *(v392 + 24);
    v98 = __OFSUB__(v96, v97);
    v85 = v96 - v97;
    if (!v98)
    {
LABEL_37:
      if (v85 < 0xFFFF)
      {
LABEL_38:
        v349 = v73;
        v363 = v67;
        *&v367 = v81;
        *(&v367 + 1) = v82;
        if (qword_28045DFD8 == -1)
        {
LABEL_39:
          v99 = *(v1 + 1536);
          v334 = *(v1 + 1544);
          v336 = *(v1 + 1528);
          v342 = *(v1 + 1520);
          v346 = *(v1 + 1512);
          v100 = *(v1 + 1504);
          v101 = *(v1 + 1496);
          v102 = *(v1 + 1432);
          v103 = *(v1 + 1424);
          v353 = *(v1 + 1392);
          v104 = *(v1 + 1384);
          v355 = *(v1 + 1376);
          v360 = *(v1 + 1416);
          v105 = xmmword_280478FF8;
          *(v1 + 1064) = xmmword_280478FF8;
          *(v1 + 1032) = v392;
          *(v1 + 1040) = v389;
          sub_26BE00608(v105, *(&v105 + 1));
          sub_26C00A30C();
          sub_26BF7EFF4(&qword_28045E370, MEMORY[0x277CC5540]);
          v329 = sub_26BE016A8();
          sub_26C009E1C();
          sub_26BE00258(*(v1 + 1064), *(v1 + 1072));
          sub_26C009C3C();
          v380(v99, v101);
          v106 = *(v103 + 48);
          v107 = *(v100 + 32);
          v107(v336, v102, v101);
          v107(v342, v102 + v106, v101);
          (v370)(v346, v336, v101);
          (*(v104 + 104))(v353, *MEMORY[0x277CC53F0], v355);
          sub_26BE00608(v367, *(&v367 + 1));
          sub_26C009DDC();
          if (v363)
          {
            v108 = *(v1 + 1528);
            v109 = *(v1 + 1520);
            v110 = *(v1 + 1496);

            sub_26BE132D4(v392, v389);
            sub_26BE132D4(v392, v389);
            sub_26BE00258(v367, *(&v367 + 1));
            sub_26BE132D4(v386, v384);
            v95 = v380;
            v380(v109, v110);
            v380(v108, v110);
            v73 = v349;
            goto LABEL_41;
          }

          v127 = *(v1 + 1536);
          v362 = *(v1 + 1528);
          v365 = *(v1 + 1544);
          v128 = *(v1 + 1520);
          v129 = *(v1 + 1496);
          *(&v370 + 1) = *(v1 + 1456);
          v130 = *(v1 + 1448);
          v131 = *(v1 + 1440);
          (*(*(v1 + 1408) + 32))(v130 + v131[9], *(v1 + 1416), *(v1 + 1400));
          (v370)(v127, v128, v129);
          v132 = v131[10];
          sub_26C009E2C();
          v133 = *(v349 + 8);
          v134 = *(v349 + 16);
          *(v1 + 1016) = v133;
          *(v1 + 1024) = v134;
          sub_26BE00608(v133, v134);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E3A0, &qword_26C00CDE0);
          sub_26C009E3C();
          sub_26BE132D4(v392, v389);
          sub_26BE00258(v367, *(&v367 + 1));
          sub_26BE00258(*(v1 + 1016), *(v1 + 1024));
          v380(v128, v129);
          v380(v362, v129);
          v380(v365, v129);
          *(v130 + v131[13]) = v378;
          *(v130 + v131[14]) = v376;
          sub_26BF7F124(v130, *(&v370 + 1), type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
          RCSFileAttachmentCrypto.RCSFileEncryption.encryptFile()(v397);
          v367 = v397[0];
          *(v1 + 1688) = v397[0];
          v370 = v397[1];
          *(v1 + 1704) = v397[1];
          if ([v376 propertyForKey:*MEMORY[0x277CBE740], v329, v329])
          {
            sub_26C00AB0C();
            swift_unknownObjectRelease();
          }

          else
          {
            memset(v397, 0, sizeof(v397));
          }

          v136 = v397[1];
          *(v1 + 792) = v397[0];
          *(v1 + 808) = v136;
          if (*(v1 + 816))
          {
            sub_26BE1335C();
            if (swift_dynamicCast())
            {
              v137 = *(v1 + 1552);
              v138 = *(v1 + 1368);
              v139 = *(v1 + 1352);
              v82 = v1;
              v140 = *(v1 + 1344);
              v335 = v82[167];
              v338 = v138;
              v357 = v82[165];
              v141 = v82[164];
              v341 = v141;
              v345 = v139;
              v142 = v82[163];
              v349 = v82[159];
              v143 = v82[139];
              v82[215] = v143;
              v332 = v143;
              v359 = sub_26BE09EB8(v332);
              v82[216] = v359;
              v352 = v144;
              v82[217] = v144;
              *v140 = xmmword_26C00BBD0;
              *(v140 + 16) = xmmword_26C00BBD0;
              v331 = xmmword_26C00BBD0;
              *(v140 + 32) = xmmword_26C00BBD0;
              v145 = *(v141 + 32);
              sub_26BE00608(v367, *(&v367 + 1));
              sub_26BE00608(v370, *(&v370 + 1));
              sub_26C0098BC();
              v67 = 0;
              sub_26C009C3C();
              v146 = v82[125];
              v147 = v82[126];
              sub_26BE00258(*v140, *(v140 + 8));
              *v140 = v146;
              *(v140 + 8) = v147;
              sub_26BE00258(*(v140 + 16), *(v140 + 24));
              *(v140 + 16) = v370;
              sub_26BE00258(*(v140 + 32), *(v140 + 40));
              *(v140 + 32) = v367;
              *(v140 + 48) = 1;
              *(v140 + 56) = 1;
              *(v142 + 16) = 0;
              *(v142 + 24) = 0xE000000000000000;
              v148 = v142 + *(v349 + 24);
              sub_26C0098BC();
              v149 = *(v349 + 28);
              v150 = *(v357 + 56);
              v150(v142 + v149, 1, 1, v341);
              strcpy(v142, "group_subject");
              *(v142 + 14) = -4864;
              sub_26BF7F0BC(v140, v335, type metadata accessor for FileEncryptionInfo);
              sub_26BE2E258(v142 + v149, &qword_28045EF78, &unk_26C017EE0);
              sub_26BF7F124(v335, v142 + v149, type metadata accessor for FileEncryptionInfo);
              v333 = v150;
              v150(v142 + v149, 0, 1, v341);
              v68 = v338;
              sub_26C0098BC();
              v84 = *(v345 + 20);
              if (qword_28045DFC0 == -1)
              {
                goto LABEL_53;
              }

              goto LABEL_114;
            }
          }

          else
          {
            sub_26BE2E258(v1 + 792, &qword_28045FB48, &qword_26C01FCF8);
          }

          v191 = *(v1 + 1592);
          v192 = sub_26C009A3C();
          v193 = sub_26C00AA0C();
          if (os_log_type_enabled(v192, v193))
          {
            v194 = swift_slowAlloc();
            *v194 = 0;
            _os_log_impl(&dword_26BDFE000, v192, v193, "Failed to retrieve the ciphertext from an output stream for file attachment encryption", v194, 2u);
            MEMORY[0x26D69A4E0](v194, -1, -1);
          }

          v86 = *(v1 + 1576);
          v195 = *(v1 + 1552);
          v196 = *(v1 + 1496);
          v197 = *(v1 + 1456);

          sub_26BE01654();
          swift_allocError();
          *v198 = 39;
          v198[112] = 0;
          swift_willThrow();
          sub_26BE00258(v367, *(&v367 + 1));
          sub_26BE00258(v370, *(&v370 + 1));
          sub_26BE132D4(v392, v389);

          sub_26BE132D4(v386, v384);
          sub_26BF7F05C(v197, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
          v380(v195, v196);
LABEL_31:
          v27 = v86;
LABEL_32:
          sub_26BF7F05C(v27, type metadata accessor for MLS.GroupState);
LABEL_42:
          v114 = *(v1 + 1576);
          v115 = *(v1 + 1568);
          v116 = *(v1 + 1552);
          v117 = *(v1 + 1544);
          v118 = *(v1 + 1536);
          v119 = v396[191];
          v120 = v396[190];
          v121 = v396[189];
          v122 = v396[186];
          v123 = v396[185];
          v337 = v396[182];
          v343 = v396[181];
          v347 = v396[179];
          v350 = v396[177];
          v354 = v396[174];
          v356 = v396[171];
          v361 = v396[170];
          v364 = v396[168];
          v368 = v396[167];
          v369 = v396[166];
          v371 = v396[163];
          v372 = v396[162];
          v374 = v396[161];
          v375 = v396[158];
          v377 = v396[157];
          v379 = v396[156];
          v381 = v396[155];
          v383 = v396[154];
          v385 = v396[152];
          v387 = v396[151];
          v390 = v396[148];
          v393 = v396[147];

          v124 = v396[1];
          v125 = *MEMORY[0x277D85DE8];

          return v124();
        }

LABEL_111:
        swift_once();
        goto LABEL_39;
      }

      sub_26BE132D4(v392, v389);
      sub_26BF7EDDC();
      swift_allocError();
      *v135 = 0;
      swift_willThrow();

      sub_26BE132D4(v392, v389);
      sub_26BE00258(v81, v82);
      v94 = v386;
LABEL_34:
      sub_26BE132D4(v94, v384);
      v95 = v380;
LABEL_41:
      v111 = *(v1 + 1576);
      v112 = *(v1 + 1552);
      v113 = *(v1 + 1496);
      v95(*(v1 + 1544), v113);
      v95(v112, v113);
      sub_26BF7F05C(v111, type metadata accessor for MLS.GroupState);
      sub_26BE00258(*(v73 + 8), *(v73 + 16));

      goto LABEL_42;
    }
  }

  else
  {
    if (!v83)
    {
      goto LABEL_38;
    }

    LODWORD(v85) = HIDWORD(v392) - v392;
    if (!__OFSUB__(HIDWORD(v392), v392))
    {
      v85 = v85;
      goto LABEL_37;
    }

    __break(1u);
  }

  __break(1u);
LABEL_114:
  swift_once();
LABEL_53:
  v151 = v82[163];
  v152 = v82[162];
  *(v68 + v84) = qword_28045EF38;
  sub_26BF7F0BC(v151, v152, type metadata accessor for FileMetadata);

  v153 = *(v68 + v84);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v155 = *(v68 + v84);
  v156 = v82;
  v366 = v67;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v157 = type metadata accessor for FileInfo._StorageClass(0);
    v158 = *(v157 + 48);
    v159 = *(v157 + 52);
    swift_allocObject();
    v155 = sub_26BED91E0(v155);
    *(v68 + v84) = v155;
  }

  v339 = v82[199];
  v160 = v82[171];
  v161 = v82[170];
  v162 = v82[168];
  v163 = v82[163];
  v164 = v82[162];
  v165 = v82[160];
  v166 = v82[159];
  v167 = v156[158];
  v168 = v156[143];
  sub_26BF7F124(v164, v167, type metadata accessor for FileMetadata);
  (*(v165 + 56))(v167, 0, 1, v166);
  v169 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
  swift_beginAccess();
  sub_26BE7170C(v167, v155 + v169, &qword_28045F080, &qword_26C0184C8);
  swift_endAccess();
  sub_26BF7F05C(v163, type metadata accessor for FileMetadata);
  sub_26BF7F05C(v162, type metadata accessor for FileEncryptionInfo);
  sub_26BF7F0BC(v160, v161, type metadata accessor for FileInfo);

  v170 = sub_26C009A3C();
  v171 = sub_26C00AA1C();

  v172 = os_log_type_enabled(v170, v171);
  v173 = v156[170];
  if (v172)
  {
    v340 = v171;
    v174 = v156[160];
    v175 = v156[159];
    v176 = v156[157];
    v177 = v156[143];
    v178 = swift_slowAlloc();
    v330 = swift_slowAlloc();
    *&v397[0] = v330;
    *v178 = 136315394;

    v179 = sub_26BE3D034();
    v181 = v180;

    v182 = sub_26BE29740(v179, v181, v397);

    *(v178 + 4) = v182;
    *(v178 + 12) = 2080;
    v183 = *(v173 + *(v345 + 20));
    v184 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
    swift_beginAccess();
    sub_26BE2E1F0(v183 + v184, v176, &qword_28045F080, &qword_26C0184C8);
    v185 = *(v174 + 48);
    if (v185(v176, 1, v175) == 1)
    {
      v186 = v156[164];
      v187 = v156[161];
      v188 = v156[159];
      v189 = v156[157];
      *v187 = 0;
      *(v187 + 1) = 0xE000000000000000;
      *(v187 + 2) = 0;
      *(v187 + 3) = 0xE000000000000000;
      v190 = &v187[*(v349 + 24)];
      sub_26C0098BC();
      v333(&v187[*(v349 + 28)], 1, 1, v186);
      if (v185(v189, 1, v188) != 1)
      {
        sub_26BE2E258(v156[157], &qword_28045F080, &qword_26C0184C8);
      }
    }

    else
    {
      sub_26BF7F124(v156[157], v156[161], type metadata accessor for FileMetadata);
    }

    v200 = v156[165];
    v201 = v156[164];
    v202 = v156[156];
    sub_26BE2E1F0(v156[161] + *(v349 + 28), v202, &qword_28045EF78, &unk_26C017EE0);
    v203 = *(v200 + 48);
    v204 = v203(v202, 1, v201);
    v205 = v156[166];
    if (v204 == 1)
    {
      v206 = v156[164];
      v207 = v156[161];
      v208 = v156[156];
      *v205 = v331;
      *(v205 + 16) = v331;
      *(v205 + 32) = v331;
      *(v205 + 48) = 0;
      *(v205 + 56) = 1;
      v209 = v205 + *(v341 + 32);
      sub_26C0098BC();
      sub_26BF7F05C(v207, type metadata accessor for FileMetadata);
      v210 = v203(v208, 1, v206);
      v199 = v352;
      v211 = v366;
      if (v210 != 1)
      {
        sub_26BE2E258(v156[156], &qword_28045EF78, &unk_26C017EE0);
      }
    }

    else
    {
      v212 = v156[156];
      sub_26BF7F05C(v156[161], type metadata accessor for FileMetadata);
      sub_26BF7F124(v212, v205, type metadata accessor for FileEncryptionInfo);
      v199 = v352;
      v211 = v366;
    }

    v213 = v156[170];
    v214 = v156[166];
    v215 = *(v214 + 32);
    v216 = *(v214 + 40);
    sub_26BE00608(v215, v216);
    sub_26BF7F05C(v214, type metadata accessor for FileEncryptionInfo);
    v366 = v211;
    v156[141] = sub_26BF87240(v215, v216);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
    sub_26BE3C0F4();
    sub_26C00A3EC();
    sub_26BE00258(v215, v216);

    v217 = sub_26BE411D0(16);
    v219 = v218;
    v221 = v220;
    v223 = v222;

    v224 = MEMORY[0x26D698FE0](v217, v219, v221, v223);
    v226 = v225;

    sub_26BF7F05C(v213, type metadata accessor for FileInfo);
    v227 = sub_26BE29740(v224, v226, v397);

    *(v178 + 14) = v227;
    _os_log_impl(&dword_26BDFE000, v170, v340, "%s: generated fileInfo for group name change, with tag %s", v178, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D69A4E0](v330, -1, -1);
    MEMORY[0x26D69A4E0](v178, -1, -1);
  }

  else
  {

    sub_26BF7F05C(v173, type metadata accessor for FileInfo);
    v199 = v352;
  }

  v228 = v156[199];
  v229 = v156[143];
  sub_26BE00608(v359, v199);

  sub_26BE00608(v359, v199);
  v62 = sub_26C009A3C();
  v230 = sub_26C00AA1C();

  v231 = v156;
  if (!os_log_type_enabled(v62, v230))
  {
    sub_26BE00258(v359, v199);
    sub_26BE00258(v359, v199);

    goto LABEL_83;
  }

  v232 = v156[143];
  v42 = swift_slowAlloc();
  v1 = swift_slowAlloc();
  *&v397[0] = v1;
  *v42 = 136315650;

  v233 = sub_26BE3D034();
  v235 = v234;

  v236 = sub_26BE29740(v233, v235, v397);

  *(v42 + 1) = v236;
  *(v42 + 6) = 2080;
  v231[140] = sub_26BF87240(v359, v199);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
  sub_26BE3C0F4();
  sub_26C00A3EC();

  v237 = sub_26BE411D0(16);
  v239 = v238;
  v61 = v240;
  v242 = v241;

  v243 = MEMORY[0x26D698FE0](v237, v239, v61, v242);
  v245 = v244;

  v246 = sub_26BE29740(v243, v245, v397);

  *(v42 + 14) = v246;
  *(v42 + 11) = 2048;
  v247 = v199 >> 62;
  if ((v199 >> 62) > 1)
  {
    if (v247 != 2)
    {
      v60 = v359;
      sub_26BE00258(v359, v199);
      v248 = 0;
      goto LABEL_82;
    }

    v60 = v359;
    v250 = *(v359 + 16);
    v249 = *(v359 + 24);
    sub_26BE00258(v359, v199);
    v248 = v249 - v250;
    if (!__OFSUB__(v249, v250))
    {
      goto LABEL_82;
    }

    __break(1u);
    goto LABEL_79;
  }

  if (v247)
  {
LABEL_79:
    v60 = v359;
    sub_26BE00258(v359, v199);
    LODWORD(v248) = HIDWORD(v359) - v359;
    if (!__OFSUB__(HIDWORD(v359), v359))
    {
      v248 = v248;
      goto LABEL_82;
    }

    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v60 = sub_26BEEBD8C(0, *(v60 + 16) + 1, 1, v60);
LABEL_93:
    v293 = *(v60 + 16);
    v292 = *(v60 + 24);
    if (v293 >= v292 >> 1)
    {
      v60 = sub_26BEEBD8C((v292 > 1), v293 + 1, 1, v60);
    }

    *(v60 + 16) = v293 + 1;
    v294 = v60 + 24 * v293;
    *(v294 + 32) = v42;
    *(v294 + 40) = v61;
    *(v294 + 48) = v62;
    goto LABEL_102;
  }

  v60 = v359;
  sub_26BE00258(v359, v199);
  v248 = BYTE6(v199);
LABEL_82:
  *(v42 + 3) = v248;
  sub_26BE00258(v60, v199);
  _os_log_impl(&dword_26BDFE000, v62, v230, "%s: encrypted group name to %s, of length %ld bytes", v42, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x26D69A4E0](v1, -1, -1);
  MEMORY[0x26D69A4E0](v42, -1, -1);

  v231 = v396;
LABEL_83:
  v358 = v231[183];
  v251 = v231[155];
  v252 = v231[143];
  v348 = v251;
  v351 = v231[185];
  sub_26BF7F0BC(v231[171], v251, type metadata accessor for FileInfo);
  v253 = type metadata accessor for FileInfoAndSender();
  v254 = (v251 + *(v253 + 20));
  v255 = *(v252 + 56);
  v256 = *(v252 + 64);
  swift_beginAccess();
  sub_26BE038A8(v252 + 112, (v396 + 90));
  v257 = v396[93];
  v258 = v396[94];
  __swift_project_boxed_opaque_existential_1(v396 + 90, v257);
  v344 = *(v258 + 40);
  v254[5] = swift_getAssociatedTypeWitness();
  v254[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v254 + 2);
  sub_26BE04890(v255, v256);
  v344(v257, v258);
  __swift_destroy_boxed_opaque_existential_1(v396 + 90);
  *v254 = v255;
  v254[1] = v256;
  (*(*(v253 - 8) + 56))(v251, 0, 1, v253);
  v259 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedNextFileInfoForGroupSubject;
  swift_beginAccess();
  sub_26BE7170C(v348, v252 + v259, &qword_28045FA38, &qword_26C01D890);
  swift_endAccess();
  v261 = *(v252 + 96);
  v260 = *(v252 + 104);
  LOBYTE(v397[0]) = *(v252 + 72);
  *(v397 + 8) = *(v252 + 80);
  *(&v397[1] + 1) = v261;
  v398 = v260;

  sub_26C00A4CC();
  v262 = sub_26C00A49C();
  v264 = v263;
  result = v373(v351, v358);
  if (v264 >> 60 == 15)
  {
LABEL_120:
    __break(1u);
    return result;
  }

  v265 = v396[194];
  sub_26C009C3C();
  v266 = v396[123];
  v267 = v396[124];
  v268 = sub_26BFA61F0(v397, v262, v264, v266, v267);
  v396[218] = v268;
  v396[219] = v269;
  if (v366)
  {
    v270 = v396[197];
    v271 = v396[194];
    v272 = v396[187];
    v273 = v396[182];
    v274 = v396[171];
    sub_26BE00258(v266, v267);
    sub_26BE132D4(v262, v264);
    sub_26BE00258(v367, *(&v367 + 1));
    sub_26BE00258(v370, *(&v370 + 1));
    sub_26BE00258(v359, v352);

    sub_26BE132D4(v392, v389);
    sub_26BE132D4(v386, v384);

    sub_26BF7F05C(v273, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v380(v271, v272);
    sub_26BF7F05C(v270, type metadata accessor for MLS.GroupState);
    sub_26BF7F05C(v274, type metadata accessor for FileInfo);
    v1 = v396;
    goto LABEL_42;
  }

  v42 = v268;
  v275 = v269;

  sub_26BE00258(v266, v267);
  sub_26BE132D4(v262, v264);
  sub_26BE00608(v42, v275);
  sub_26BFDB780(v42, v275, v397);
  v276 = v396[197];
  v1 = v396;
  v277 = v396[195];
  sub_26BE00258(v42, v275);
  LOWORD(v42) = v397[0];
  v61 = *(&v397[0] + 1);
  v62 = *&v397[1];
  v396[220] = *(&v397[0] + 1);
  v396[221] = v62;
  v60 = *(v276 + *(v277 + 40));
  v278 = *(v60 + 16);
  if (!v278)
  {
LABEL_90:
    v281 = v396[199];
    v282 = v396[143];

    v283 = sub_26C009A3C();
    v284 = sub_26C00AA1C();

    if (os_log_type_enabled(v283, v284))
    {
      v285 = v396[143];
      v394 = v42;
      v42 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      *&v397[0] = v286;
      *v42 = 136315138;

      v287 = sub_26BE3D034();
      v289 = v288;

      v290 = sub_26BE29740(v287, v289, v397);
      v1 = v396;

      *(v42 + 1) = v290;
      _os_log_impl(&dword_26BDFE000, v283, v284, "%s: adding new subject_commitment extension", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v286);
      MEMORY[0x26D69A4E0](v286, -1, -1);
      v291 = v42;
      LOWORD(v42) = v394;
      MEMORY[0x26D69A4E0](v291, -1, -1);
    }

    sub_26BE00608(v61, v62);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_93;
    }

    goto LABEL_118;
  }

  v279 = 0;
  v280 = 0;
  while (*(v60 + v279 + 32) != -4090)
  {
    ++v280;
    v279 += 24;
    if (v278 == v280)
    {
      goto LABEL_90;
    }
  }

  v295 = v396[199];
  v296 = v396[143];

  v297 = sub_26C009A3C();
  v298 = sub_26C00AA1C();

  v391 = v298;
  if (os_log_type_enabled(v297, v298))
  {
    v388 = v297;
    v299 = v396[143];
    v395 = v42;
    v42 = swift_slowAlloc();
    v300 = swift_slowAlloc();
    *&v397[0] = v300;
    *v42 = 136315394;

    v301 = sub_26BE3D034();
    v303 = v302;

    v304 = sub_26BE29740(v301, v303, v397);
    v1 = v396;

    *(v42 + 1) = v304;
    *(v42 + 6) = 2048;
    *(v42 + 14) = v280;
    v297 = v388;
    _os_log_impl(&dword_26BDFE000, v388, v391, "%s: replacing existing subject_commitment extension at index %ld", v42, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v300);
    MEMORY[0x26D69A4E0](v300, -1, -1);
    v305 = v42;
    LOWORD(v42) = v395;
    MEMORY[0x26D69A4E0](v305, -1, -1);
  }

  sub_26BE00608(v61, v62);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26BE588E8(v60);
    v60 = result;
  }

  if (v280 >= *(v60 + 16))
  {
    __break(1u);
    goto LABEL_120;
  }

  v306 = v60 + v279;
  v307 = *(v60 + v279 + 40);
  v308 = *(v60 + v279 + 48);
  *(v306 + 32) = v42;
  *(v306 + 40) = v61;
  *(v306 + 48) = v62;
  sub_26BE00258(v307, v308);
LABEL_102:
  *(v1 + 1776) = v60;
  v309 = *(v1 + 1232);
  v310 = *(v1 + 1224);
  *(v1 + 16) = v60;
  sub_26BE80190((v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F260, &qword_26C01A8A0);
  v311 = swift_allocObject();
  *(v1 + 1784) = v311;
  v312 = *(v1 + 176);
  *(v311 + 176) = *(v1 + 160);
  *(v311 + 192) = v312;
  *(v311 + 208) = *(v1 + 192);
  v313 = *(v1 + 112);
  *(v311 + 112) = *(v1 + 96);
  *(v311 + 128) = v313;
  v314 = *(v1 + 144);
  *(v311 + 144) = *(v1 + 128);
  *(v311 + 160) = v314;
  v315 = *(v1 + 16);
  *(v311 + 16) = xmmword_26C011280;
  *(v311 + 32) = v315;
  v316 = *(v1 + 48);
  *(v311 + 48) = *(v1 + 32);
  *(v311 + 64) = v316;
  v317 = *(v1 + 80);
  *(v311 + 80) = *(v1 + 64);
  *(v311 + 96) = v317;
  *(v1 + 712) = 0;
  *(v1 + 680) = 0u;
  *(v1 + 696) = 0u;
  *(v1 + 376) = 0;
  *(v1 + 384) = 0x3000000000000000;
  *(v1 + 392) = 0u;
  *(v1 + 408) = 0u;
  *(v1 + 424) = 0u;
  *(v1 + 440) = 0u;
  *(v1 + 456) = 0u;

  sub_26BE2962C(0, 0x3000000000000000uLL);
  *(v1 + 376) = xmmword_26C00DA50;
  sub_26BE7170C(v1 + 680, v1 + 392, &qword_28045E468, &qword_26C00ECA0);
  v318 = *(v1 + 440);
  v319 = *(v1 + 448);
  v320 = *(v1 + 456);
  v321 = *(v1 + 464);
  sub_26BE701EC(*(v1 + 432));
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 432) = 0u;
  v322 = v310[5];
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E798, &qword_26C012178);
  (*(*(v323 - 8) + 56))(&v309[v322], 1, 3, v323);
  *v309 = 0;
  v309[v310[6]] = 0;
  v309[v310[7]] = 0;
  v309[v310[8]] = 0;
  *&v309[v310[9]] = MEMORY[0x277D84F90];
  v324 = swift_task_alloc();
  *(v1 + 1792) = v324;
  *v324 = v1;
  v324[1] = sub_26BF69FB4;
  v325 = *(v1 + 1576);
  v326 = *(v1 + 1232);
  v327 = *(v1 + 1144);
  v328 = *MEMORY[0x277D85DE8];

  return sub_26BF54A88(v1 + 480, v325, v311, v1 + 376, v326);
}

uint64_t sub_26BF69D5C()
{
  v37 = *MEMORY[0x277D85DE8];
  v1 = v0[197];
  v2 = v0[196];
  v3 = v0[194];
  v4 = v0[193];
  v5 = v0[192];
  v6 = v0[191];
  v7 = v0[190];
  v8 = v0[189];
  v9 = v0[186];
  v10 = v0[185];
  v14 = v0[202];
  v15 = v0[182];
  v16 = v0[181];
  v17 = v0[179];
  v18 = v0[177];
  v19 = v0[174];
  v20 = v0[171];
  v21 = v0[170];
  v22 = v0[168];
  v23 = v0[167];
  v24 = v0[166];
  v25 = v0[163];
  v26 = v0[162];
  v27 = v0[161];
  v28 = v0[158];
  v29 = v0[157];
  v30 = v0[156];
  v31 = v0[155];
  v32 = v0[154];
  v33 = v0[152];
  v34 = v0[151];
  v35 = v0[148];
  v36 = v0[147];

  v11 = v0[1];
  v12 = *MEMORY[0x277D85DE8];

  return v11();
}

uint64_t sub_26BF69FB4()
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 1792);
  v12 = *v1;
  *(*v1 + 1800) = v0;

  if (v0)
  {
    v4 = *(v2 + 1784);
    sub_26BF7F05C(*(v2 + 1232), type metadata accessor for MLS.GroupState.CommitOptions);
    swift_setDeallocating();
    v5 = *(v4 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BF7E1E8(v2 + 376);
    v6 = sub_26BF6B834;
  }

  else
  {
    v7 = *(v2 + 1784);
    sub_26BF7F05C(*(v2 + 1232), type metadata accessor for MLS.GroupState.CommitOptions);
    swift_setDeallocating();
    v8 = *(v7 + 16);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26BF7E1E8(v2 + 376);
    v6 = sub_26BF6A1A4;
  }

  v9 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26BF6A1A4()
{
  v276 = v0;
  v275 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 1200);
  v2 = *(v0 + 1192);
  v3 = *(v0 + 1184);
  v4 = *(v0 + 1144);
  v5 = *(v0 + 528);
  *(v0 + 592) = *(v0 + 512);
  *(v0 + 608) = v5;
  *(v0 + 624) = *(v0 + 544);
  v6 = *(v0 + 496);
  *(v0 + 560) = *(v0 + 480);
  *(v0 + 576) = v6;
  v7 = OBJC_IVAR____TtCOO8SwiftMLS3MLS5Group14PureSwiftGroup_cachedStateAndCommitMetadata;
  swift_beginAccess();
  sub_26BE2E1F0(v4 + v7, v3, &qword_28045E8D8, &qword_26C012580);
  v8 = *(v1 + 48);
  if (v8(v3, 1, v2) == 1)
  {
    v9 = *(v0 + 1592);
    sub_26BE2E258(*(v0 + 1184), &qword_28045E8D8, &qword_26C012580);
    v10 = sub_26C009A3C();
    v11 = sub_26C00AA0C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26BDFE000, v10, v11, "Missing cachedStateAndCommitMetadata even after performing commit", v12, 2u);
      MEMORY[0x26D69A4E0](v12, -1, -1);
    }

    v13 = *(v0 + 1776);
    v14 = *(v0 + 1768);
    v15 = *(v0 + 1760);
    v187 = *(v0 + 1744);
    v197 = *(v0 + 1752);
    v202 = *(v0 + 1728);
    v208 = *(v0 + 1736);
    v212 = *(v0 + 1720);
    v16 = *(v0 + 1712);
    v17 = *(v0 + 1704);
    v18 = *(v0 + 1696);
    v19 = *(v0 + 1688);
    v254 = *(v0 + 1672);
    v258 = *(v0 + 1680);
    v217 = *(v0 + 1664);
    v222 = *(v0 + 1656);
    v235 = *(v0 + 1648);
    v227 = *(v0 + 1640);
    v192 = *(v0 + 1632);
    v20 = *(v0 + 1624);
    v245 = *(v0 + 1552);
    v250 = *(v0 + 1576);
    v240 = *(v0 + 1496);
    v231 = *(v0 + 1456);
    v263 = *(v0 + 1368);

    sub_26BE01654();
    swift_allocError();
    *v21 = 38;
    v21[112] = 0;
    swift_willThrow();
    sub_26BF26EB4(v0 + 560);
    sub_26BE00258(v19, v18);
    sub_26BE00258(v17, v16);

    sub_26BE00258(v15, v14);
    sub_26BE00258(v187, v197);
    sub_26BE00258(v202, v208);

    sub_26BE132D4(v20, v192);
    sub_26BE132D4(v227, v235);
    sub_26BF7F05C(v231, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v254(v245, v240);
    sub_26BF7F05C(v250, type metadata accessor for MLS.GroupState);
    v22 = v263;
    goto LABEL_8;
  }

  v264 = v8;
  v23 = *(v0 + 1800);
  v24 = *(v0 + 1568);
  v25 = *(v0 + 1216);
  v26 = *(v0 + 1208);
  v27 = *(v0 + 1192);
  sub_26BE33F30(*(v0 + 1184), v25, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BE2E1F0(v25, v26, &qword_28045E8E0, &unk_26C0204E0);
  v28 = (v26 + *(v27 + 48));
  v29 = v28[7];
  v30 = v28[8];
  v31 = v28[10];
  *(v0 + 344) = v28[9];
  *(v0 + 360) = v31;
  *(v0 + 312) = v29;
  *(v0 + 328) = v30;
  v32 = v28[3];
  v33 = v28[4];
  v34 = v28[6];
  *(v0 + 280) = v28[5];
  *(v0 + 296) = v34;
  *(v0 + 248) = v32;
  *(v0 + 264) = v33;
  v36 = v28[1];
  v35 = v28[2];
  *(v0 + 200) = *v28;
  *(v0 + 216) = v36;
  *(v0 + 232) = v35;
  sub_26BE6FF8C(v0 + 200);
  sub_26BF7F124(v26, v24, type metadata accessor for MLS.GroupState);
  sub_26BF56BD4(&v270);
  if (v23)
  {
    v37 = *(v0 + 1776);
    v38 = *(v0 + 1768);
    v39 = *(v0 + 1760);
    v40 = *(v0 + 1744);
    v188 = *(v0 + 1752);
    v193 = *(v0 + 1728);
    v198 = *(v0 + 1736);
    v203 = *(v0 + 1720);
    v41 = *(v0 + 1712);
    v42 = *(v0 + 1704);
    v43 = *(v0 + 1696);
    v44 = *(v0 + 1688);
    v259 = *(v0 + 1672);
    v265 = *(v0 + 1680);
    v209 = *(v0 + 1664);
    v213 = *(v0 + 1656);
    v218 = *(v0 + 1640);
    v223 = *(v0 + 1648);
    v183 = *(v0 + 1632);
    v45 = *(v0 + 1624);
    v251 = *(v0 + 1576);
    v228 = *(v0 + 1568);
    v241 = *(v0 + 1496);
    v246 = *(v0 + 1552);
    v236 = *(v0 + 1456);
    v255 = *(v0 + 1368);
    v232 = *(v0 + 1216);
    sub_26BF26EB4(v0 + 560);
    sub_26BE00258(v44, v43);
    sub_26BE00258(v42, v41);

    sub_26BE00258(v39, v38);
    sub_26BE00258(v40, v188);
    sub_26BE00258(v193, v198);

    sub_26BE132D4(v45, v183);
    sub_26BE132D4(v218, v223);
    sub_26BF7F05C(v228, type metadata accessor for MLS.GroupState);
    sub_26BE2E258(v232, &qword_28045E8E0, &unk_26C0204E0);
    sub_26BF7F05C(v236, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
    v259(v246, v241);
    sub_26BF7F05C(v251, type metadata accessor for MLS.GroupState);
    v22 = v255;
LABEL_8:
    sub_26BF7F05C(v22, type metadata accessor for FileInfo);
    v55 = *(v0 + 1576);
    v56 = *(v0 + 1568);
    v57 = *(v0 + 1552);
    v58 = *(v0 + 1544);
    v59 = *(v0 + 1536);
    v60 = *(v0 + 1528);
    v61 = *(v0 + 1520);
    v62 = *(v0 + 1512);
    v63 = *(v0 + 1488);
    v64 = *(v0 + 1480);
    v171 = *(v0 + 1456);
    v174 = *(v0 + 1448);
    v177 = *(v0 + 1432);
    v180 = *(v0 + 1416);
    v184 = *(v0 + 1392);
    v189 = *(v0 + 1368);
    v194 = *(v0 + 1360);
    v199 = *(v0 + 1344);
    v204 = *(v0 + 1336);
    v210 = *(v0 + 1328);
    v214 = *(v0 + 1304);
    v219 = *(v0 + 1296);
    v224 = *(v0 + 1288);
    v229 = *(v0 + 1264);
    v233 = *(v0 + 1256);
    v237 = *(v0 + 1248);
    v242 = *(v0 + 1240);
    v247 = *(v0 + 1232);
    v252 = *(v0 + 1216);
    v256 = *(v0 + 1208);
    v260 = *(v0 + 1184);
    v266 = *(v0 + 1176);

    v65 = *(v0 + 8);
    v66 = *MEMORY[0x277D85DE8];
    goto LABEL_9;
  }

  v46 = *(v0 + 1568);
  v47 = *(v0 + 1368);
  v48 = *(v0 + 1352);
  v49 = v270;
  v50 = v271;
  v51 = *(*(v0 + 1560) + 44);
  v52 = v46 + *(type metadata accessor for MLS.KeySchedule() + 40) + v51;
  sub_26C009C3C();
  v53 = *(v0 + 1048);
  v54 = *(v0 + 1056);
  sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo);
  v68 = sub_26C00998C();
  v253 = v49;
  v257 = v53;
  v261 = v69;
  v70 = *(v0 + 1144);
  v71 = sub_26BF36A34(*(v0 + 1568));
  v73 = v72;
  v74 = v54;
  v75 = v71;
  v76 = *(v0 + 1568);
  v77 = *(v0 + 1176);
  v78 = *(*(v0 + 1144) + 48);
  swift_beginAccess();
  v79 = *(v78 + 50);
  v248 = v75;
  v270 = v75;
  v271 = v73;
  v272 = 0;
  v273 = v79;
  v274 = v79 ^ 1;
  MLS.GroupState.generateApplicationMessage(message:options:)(v68, v261, &v270, v77);
  v238 = v68;
  v243 = v73;
  v80 = *(v0 + 1176);
  v81 = MLS.MLSMessage.rawValue.getter();
  v230 = v82;
  v234 = v81;
  v83 = *(v0 + 1192);
  v84 = *(v0 + 1144);
  v85 = sub_26BF3530C();
  v87 = v86;
  v88 = v74;
  v89 = v257;
  if (!v264(v86, 1, v83))
  {
    sub_26BF7EE30(*(v0 + 1568), v87);
  }

  (v85)(v0 + 760, 0);
  v90 = *(v0 + 1592);
  v91 = *(v0 + 1144);

  v92 = sub_26C009A3C();
  v93 = sub_26C00AA1C();

  v267 = v74;
  v156 = v50;
  if (os_log_type_enabled(v92, v93))
  {
    v94 = *(v0 + 1144);
    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v270 = v96;
    *v95 = 136315138;

    v97 = sub_26BE3D034();
    v99 = v98;

    v100 = v97;
    v88 = v267;
    v101 = sub_26BE29740(v100, v99, &v270);
    v89 = v257;

    *(v95 + 4) = v101;
    _os_log_impl(&dword_26BDFE000, v92, v93, "%s: generated private message for group name change, with:", v95, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x26D69A4E0](v96, -1, -1);
    MEMORY[0x26D69A4E0](v95, -1, -1);
  }

  if (qword_28045DFD0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 1584), qword_280478FB0);
  sub_26BE00608(v89, v88);
  v102 = sub_26C009A3C();
  v103 = sub_26C00A9FC();
  sub_26BE00258(v89, v88);
  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    v270 = v105;
    *v104 = 136315138;
    v106 = sub_26C0090EC();
    v108 = sub_26BE29740(v106, v107, &v270);

    *(v104 + 4) = v108;
    _os_log_impl(&dword_26BDFE000, v102, v103, "nextEpochAuthenticator: %s", v104, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v105);
    MEMORY[0x26D69A4E0](v105, -1, -1);
    MEMORY[0x26D69A4E0](v104, -1, -1);
  }

  v109 = *(v0 + 1736);
  v110 = *(v0 + 1728);
  sub_26BE00608(v110, v109);
  v111 = sub_26C009A3C();
  v112 = sub_26C00A9FC();
  sub_26BE00258(v110, v109);
  v113 = v112;
  v114 = os_log_type_enabled(v111, v112);
  v115 = *(v0 + 1776);
  v215 = *(v0 + 1760);
  v220 = *(v0 + 1768);
  v225 = *(v0 + 1752);
  v268 = *(v0 + 1744);
  if (v114)
  {
    v116 = *(v0 + 1736);
    v117 = *(v0 + 1728);
    v118 = *(v0 + 1720);
    v152 = *(v0 + 1704);
    v154 = *(v0 + 1712);
    v148 = *(v0 + 1688);
    v150 = *(v0 + 1696);
    v200 = *(v0 + 1672);
    v205 = *(v0 + 1680);
    v119 = *(v0 + 1664);
    v120 = *(v0 + 1656);
    v165 = *(v0 + 1640);
    v168 = *(v0 + 1648);
    v157 = *(v0 + 1624);
    v159 = *(v0 + 1632);
    v185 = *(v0 + 1552);
    v190 = *(v0 + 1576);
    v178 = *(v0 + 1456);
    v181 = *(v0 + 1496);
    v195 = *(v0 + 1368);
    v172 = *(v0 + 1568);
    v175 = *(v0 + 1216);
    v162 = *(v0 + 1176);
    v121 = swift_slowAlloc();
    v122 = swift_slowAlloc();
    v270 = v122;
    *v121 = 136315138;
    v123 = sub_26C0090EC();
    v125 = sub_26BE29740(v123, v124, &v270);

    *(v121 + 4) = v125;
    _os_log_impl(&dword_26BDFE000, v111, v113, "encryptedGroupName: %s", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v122);
    MEMORY[0x26D69A4E0](v122, -1, -1);
    MEMORY[0x26D69A4E0](v121, -1, -1);
    sub_26BE00258(v248, v243);
    sub_26BE00258(v238, v261);

    sub_26BE00258(v148, v150);
    sub_26BE00258(v152, v154);

    sub_26BE00258(v215, v220);
    sub_26BE00258(v268, v225);

    sub_26BE132D4(v157, v159);
    sub_26BE132D4(v165, v168);
    v126 = v162;
  }

  else
  {
    v127 = *(v0 + 1720);
    v128 = *(v0 + 1712);
    v129 = *(v0 + 1704);
    v130 = *(v0 + 1696);
    v131 = *(v0 + 1688);
    v200 = *(v0 + 1672);
    v206 = *(v0 + 1680);
    v132 = *(v0 + 1664);
    v163 = *(v0 + 1656);
    v166 = *(v0 + 1640);
    v133 = *(v0 + 1632);
    v134 = *(v0 + 1624);
    v169 = *(v0 + 1648);
    v172 = *(v0 + 1568);
    v185 = *(v0 + 1552);
    v190 = *(v0 + 1576);
    v178 = *(v0 + 1456);
    v181 = *(v0 + 1496);
    v195 = *(v0 + 1368);
    v175 = *(v0 + 1216);
    v160 = *(v0 + 1176);
    sub_26BE00258(v248, v243);
    sub_26BE00258(v238, v261);

    sub_26BE00258(v131, v130);
    sub_26BE00258(v129, v128);

    sub_26BE00258(v215, v220);
    sub_26BE00258(v268, v225);

    sub_26BE132D4(v134, v133);
    sub_26BE132D4(v166, v169);
    v126 = v160;
  }

  sub_26BF7F05C(v126, type metadata accessor for MLS.MLSMessage);
  sub_26BF7F05C(v172, type metadata accessor for MLS.GroupState);
  sub_26BE2E258(v175, &qword_28045E8E0, &unk_26C0204E0);
  sub_26BF7F05C(v178, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
  v200(v185, v181);
  sub_26BF7F05C(v190, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v195, type metadata accessor for FileInfo);
  v135 = *(v0 + 1736);
  v136 = *(v0 + 1728);
  v137 = *(v0 + 1576);
  v138 = *(v0 + 1568);
  v139 = *(v0 + 1552);
  v140 = *(v0 + 1544);
  v147 = *(v0 + 1536);
  v149 = *(v0 + 1528);
  v151 = *(v0 + 1520);
  v153 = *(v0 + 1512);
  v155 = *(v0 + 1488);
  v158 = *(v0 + 1480);
  v161 = *(v0 + 1456);
  v164 = *(v0 + 1448);
  v167 = *(v0 + 1432);
  v170 = *(v0 + 1416);
  v173 = *(v0 + 1392);
  v176 = *(v0 + 1368);
  v179 = *(v0 + 1360);
  v182 = *(v0 + 1344);
  v186 = *(v0 + 1336);
  v191 = *(v0 + 1328);
  v196 = *(v0 + 1304);
  v201 = *(v0 + 1296);
  v207 = *(v0 + 1288);
  v211 = *(v0 + 1264);
  v216 = *(v0 + 1256);
  v221 = *(v0 + 1248);
  v226 = *(v0 + 1240);
  v239 = *(v0 + 1232);
  v244 = *(v0 + 1216);
  v249 = *(v0 + 1208);
  v262 = *(v0 + 1184);
  v269 = *(v0 + 1176);
  v141 = *(v0 + 1136);
  v142 = *(v0 + 560);
  v143 = *(v0 + 568);
  sub_26BE00608(v142, v143);
  sub_26BF26EB4(v0 + 560);
  *v141 = v142;
  *(v141 + 8) = v143;
  *&v144 = v253;
  *&v145 = v257;
  *(&v144 + 1) = v156;
  *(&v145 + 1) = v267;
  *(v141 + 16) = v144;
  *(v141 + 32) = v145;
  *(v141 + 48) = v234;
  *(v141 + 56) = v230;
  *(v141 + 64) = v136;
  *(v141 + 72) = v135;

  v65 = *(v0 + 8);
  v146 = *MEMORY[0x277D85DE8];
LABEL_9:

  return v65();
}

uint64_t sub_26BF6B834()
{
  v60 = *MEMORY[0x277D85DE8];
  v1 = v0[222];
  v2 = v0[221];
  v3 = v0[220];
  v4 = v0[219];
  v5 = v0[218];
  v32 = v0[216];
  v34 = v0[217];
  v36 = v0[215];
  v6 = v0[214];
  v7 = v0[213];
  v54 = v0[209];
  v56 = v0[210];
  v38 = v0[208];
  v40 = v0[207];
  v46 = v0[206];
  v42 = v0[205];
  v8 = v0[204];
  v9 = v0[203];
  v50 = v0[194];
  v52 = v0[197];
  v48 = v0[187];
  v44 = v0[182];
  v58 = v0[171];
  sub_26BE00258(v0[211], v0[212]);
  sub_26BE00258(v7, v6);

  sub_26BE00258(v3, v2);
  sub_26BE00258(v5, v4);
  sub_26BE00258(v32, v34);

  sub_26BE132D4(v9, v8);
  sub_26BE132D4(v42, v46);
  sub_26BF7F05C(v44, type metadata accessor for RCSFileAttachmentCrypto.RCSFileEncryption);
  v54(v50, v48);
  sub_26BF7F05C(v52, type metadata accessor for MLS.GroupState);
  sub_26BF7F05C(v58, type metadata accessor for FileInfo);
  v10 = v0[197];
  v11 = v0[196];
  v12 = v0[194];
  v13 = v0[193];
  v14 = v0[192];
  v15 = v0[191];
  v16 = v0[190];
  v17 = v0[189];
  v18 = v0[186];
  v19 = v0[185];
  v23 = v0[225];
  v24 = v0[182];
  v25 = v0[181];
  v26 = v0[179];
  v27 = v0[177];
  v28 = v0[174];
  v29 = v0[171];
  v30 = v0[170];
  v31 = v0[168];
  v33 = v0[167];
  v35 = v0[166];
  v37 = v0[163];
  v39 = v0[162];
  v41 = v0[161];
  v43 = v0[158];
  v45 = v0[157];
  v47 = v0[156];
  v49 = v0[155];
  v51 = v0[154];
  v53 = v0[152];
  v55 = v0[151];
  v57 = v0[148];
  v59 = v0[147];

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_26BF6BBE4(uint64_t a1, _OWORD *a2)
{
  *(v3 + 136) = a1;
  *(v3 + 144) = v2;
  *(v3 + 152) = *a2;
  return MEMORY[0x2822009F8](sub_26BF6BC0C, 0, 0);
}

uint64_t sub_26BF6BC0C()
{
  v21 = v0;
  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_26C009A5C();
  __swift_project_value_buffer(v2, qword_280478EE8);

  v3 = sub_26C009A3C();
  v4 = sub_26C00AA1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[18];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315138;

    v8 = sub_26BE3D034();
    v10 = v9;

    v11 = sub_26BE29740(v8, v10, &v20);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26BDFE000, v3, v4, "%s: decrypting name keys for group name change", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x26D69A4E0](v7, -1, -1);
    MEMORY[0x26D69A4E0](v6, -1, -1);
  }

  v12 = v0[19];
  v13 = v0[20];
  v14 = v0[18];

  sub_26BE00608(v12, v13);
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_26BF6BE34;
  v16 = v0[19];
  v17 = v0[20];
  v18 = v0[18];

  return sub_26BE9DF04((v0 + 2), v18, v18, v16, v17, 0, 0xF000000000000000);
}

uint64_t sub_26BF6BE34()
{
  v2 = *(*v1 + 168);
  v5 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = sub_26BF6C15C;
  }

  else
  {
    v3 = sub_26BF6BF48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26BF6BF48()
{
  v1 = v0[18];
  v2 = swift_task_alloc();
  v0[23] = v2;
  *(v2 + 16) = v0 + 2;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_26BF6C02C;
  v4 = v0[17];
  v5 = v0[18];

  return sub_26BE1B6D0(v4, &unk_26C01FAB8, v2);
}

uint64_t sub_26BF6C02C()
{
  v2 = *(*v1 + 192);
  v3 = *(*v1 + 184);
  v6 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v4 = sub_26BF6C1D8;
  }

  else
  {
    v4 = sub_26BF6C174;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26BF6C174()
{
  sub_26BF26D4C(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26BF6C1D8()
{
  sub_26BF26D4C(v0 + 16);
  v1 = *(v0 + 200);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26BF6C23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[57] = a2;
  v3[58] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045FA38, &qword_26C01D890) - 8) + 64) + 15;
  v3[59] = swift_task_alloc();
  v5 = sub_26C009C8C();
  v3[60] = v5;
  v6 = *(v5 - 8);
  v3[61] = v6;
  v7 = *(v6 + 64) + 15;
  v3[62] = swift_task_alloc();
  v3[63] = swift_task_alloc();
  v8 = sub_26C00A4EC();
  v3[64] = v8;
  v9 = *(v8 - 8);
  v3[65] = v9;
  v10 = *(v9 + 64) + 15;
  v3[66] = swift_task_alloc();
  v11 = type metadata accessor for MLS.GroupState();
  v3[67] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[68] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045EF78, &unk_26C017EE0) - 8) + 64) + 15;
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v14 = type metadata accessor for FileEncryptionInfo(0);
  v3[71] = v14;
  v15 = *(v14 - 8);
  v3[72] = v15;
  v16 = *(v15 + 64) + 15;
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045F080, &qword_26C0184C8) - 8) + 64) + 15;
  v3[75] = swift_task_alloc();
  v3[76] = swift_task_alloc();
  v18 = type metadata accessor for FileMetadata(0);
  v3[77] = v18;
  v19 = *(v18 - 8);
  v3[78] = v19;
  v20 = *(v19 + 64) + 15;
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v21 = *(*(sub_26C0098EC() - 8) + 64) + 15;
  v3[81] = swift_task_alloc();
  v22 = type metadata accessor for FileInfo(0);
  v3[82] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v3[83] = swift_task_alloc();
  v3[84] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26BF6C58C, 0, 0);
}

uint64_t sub_26BF6C58C()
{
  v99 = v0;
  v1 = *(v0 + 456);
  *(v0 + 256) = 0u;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0;
  sub_26BF26CF0(v1, v0 + 16);
  if (*(v0 + 129) == 1)
  {
    sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v5 = *(v0 + 96);
    *(v0 + 200) = *(v0 + 80);
    *(v0 + 216) = v5;
    *(v0 + 232) = *(v0 + 112);
    v6 = *(v0 + 32);
    *(v0 + 136) = *(v0 + 16);
    *(v0 + 152) = v6;
    v7 = *(v0 + 64);
    *(v0 + 168) = *(v0 + 48);
    *(v0 + 248) = *(v0 + 128);
    *(v0 + 184) = v7;
    sub_26BE2E1F0(v0 + 136, v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    sub_26BE00608(v3, v2);
    sub_26BF26FBC(v0 + 136);
LABEL_5:
    *(v0 + 688) = v2;
    *(v0 + 680) = v3;
    v8 = *(v0 + 672);
    v9 = *(v0 + 656);
    v10 = *(v0 + 648);
    *(v0 + 384) = v3;
    *(v0 + 392) = v2;
    v98 = 0;
    memset(v97, 0, sizeof(v97));
    sub_26BE00608(v3, v2);
    sub_26C0098DC();
    sub_26BF7EFF4(&qword_28045EFE8, type metadata accessor for FileInfo);
    sub_26C00999C();
    if (qword_28045DF80 != -1)
    {
      swift_once();
    }

    v28 = *(v0 + 672);
    v29 = *(v0 + 664);
    v30 = *(v0 + 464);
    v31 = sub_26C009A5C();
    *(v0 + 696) = __swift_project_value_buffer(v31, qword_280478EE8);
    sub_26BF7F0BC(v28, v29, type metadata accessor for FileInfo);

    v32 = sub_26C009A3C();
    v33 = sub_26C00AA1C();

    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 664);
    if (v34)
    {
      v95 = v33;
      log = v32;
      v36 = *(v0 + 656);
      v37 = *(v0 + 624);
      v38 = *(v0 + 616);
      v39 = *(v0 + 608);
      v40 = *(v0 + 464);
      v41 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      *&v97[0] = v93;
      *v41 = 136315394;

      v42 = sub_26BE3D034();
      v44 = v43;

      v45 = sub_26BE29740(v42, v44, v97);

      *(v41 + 4) = v45;
      *(v41 + 12) = 2080;
      v46 = *(v35 + *(v36 + 20));
      v47 = OBJC_IVAR____TtCV8SwiftMLS8FileInfoP33_24FBA1C3EEFAE8549AE6F0A4F1B8BE6C13_StorageClass__subject;
      swift_beginAccess();
      sub_26BE2E1F0(v46 + v47, v39, &qword_28045F080, &qword_26C0184C8);
      v48 = *(v37 + 48);
      v49 = v48(v39, 1, v38);
      v50 = *(v0 + 640);
      if (v49 == 1)
      {
        v51 = *(v0 + 616);
        v52 = *(v0 + 608);
        v53 = *(v0 + 576);
        v54 = *(v0 + 568);
        *v50 = 0;
        *(v50 + 1) = 0xE000000000000000;
        *(v50 + 2) = 0;
        *(v50 + 3) = 0xE000000000000000;
        v55 = &v50[*(v51 + 24)];
        sub_26C0098BC();
        (*(v53 + 56))(&v50[*(v51 + 28)], 1, 1, v54);
        if (v48(v52, 1, v51) != 1)
        {
          sub_26BE2E258(*(v0 + 608), &qword_28045F080, &qword_26C0184C8);
        }
      }

      else
      {
        sub_26BF7F124(*(v0 + 608), *(v0 + 640), type metadata accessor for FileMetadata);
      }

      v56 = *(v0 + 576);
      v57 = *(v0 + 568);
      v58 = *(v0 + 560);
      sub_26BE2E1F0(*(v0 + 640) + *(*(v0 + 616) + 28), v58, &qword_28045EF78, &unk_26C017EE0);
      v59 = *(v56 + 48);
      v60 = v59(v58, 1, v57);
      v61 = *(v0 + 640);
      v62 = *(v0 + 592);
      if (v60 == 1)
      {
        v63 = *(v0 + 568);
        v64 = *(v0 + 560);
        *v62 = xmmword_26C00BBD0;
        *(v62 + 16) = xmmword_26C00BBD0;
        *(v62 + 32) = xmmword_26C00BBD0;
        *(v62 + 48) = 0;
        *(v62 + 56) = 1;
        v65 = v62 + *(v63 + 32);
        sub_26C0098BC();
        sub_26BF7F05C(v61, type metadata accessor for FileMetadata);
        if (v59(v64, 1, v63) != 1)
        {
          sub_26BE2E258(*(v0 + 560), &qword_28045EF78, &unk_26C017EE0);
        }
      }

      else
      {
        v66 = *(v0 + 560);
        sub_26BF7F05C(*(v0 + 640), type metadata accessor for FileMetadata);
        sub_26BF7F124(v66, v62, type metadata accessor for FileEncryptionInfo);
      }

      v67 = *(v0 + 664);
      v68 = *(v0 + 592);
      v69 = *(v68 + 32);
      v70 = *(v68 + 40);
      sub_26BE00608(v69, v70);
      sub_26BF7F05C(v68, type metadata accessor for FileEncryptionInfo);
      *(v0 + 448) = sub_26BF87240(v69, v70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28045E4B0, &qword_26C00ECE0);
      sub_26BE3C0F4();
      sub_26C00A3EC();
      sub_26BE00258(v69, v70);

      v71 = sub_26BE411D0(16);
      v73 = v72;
      v75 = v74;
      v77 = v76;

      v78 = MEMORY[0x26D698FE0](v71, v73, v75, v77);
      v80 = v79;

      sub_26BF7F05C(v67, type metadata accessor for FileInfo);
      v81 = sub_26BE29740(v78, v80, v97);

      *(v41 + 14) = v81;
      _os_log_impl(&dword_26BDFE000, log, v95, "%s: decrypted fileInfo for group name change, with tag %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D69A4E0](v93, -1, -1);
      MEMORY[0x26D69A4E0](v41, -1, -1);
    }

    else
    {

      sub_26BF7F05C(v35, type metadata accessor for FileInfo);
    }

    v82 = *(v0 + 464);
    v83 = *(v82 + 152);
    v84 = *(v82 + 24);
    *(v0 + 400) = v83;
    *(v0 + 408) = v84;
    v85 = swift_task_alloc();
    *(v0 + 704) = v85;
    *v85 = v0;
    v85[1] = sub_26BF6CF54;
    v86 = *(v0 + 544);
    v87 = *(v0 + 464);

    return sub_26BF37CA4(v86, (v0 + 400), 0);
  }

  if (!*(v0 + 129))
  {
    sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
    v3 = *(v0 + 72);
    v2 = *(v0 + 80);
    v4 = *(v0 + 32);
    *(v0 + 256) = *(v0 + 16);
    *(v0 + 272) = v4;
    *(v0 + 288) = *(v0 + 48);
    *(v0 + 304) = *(v0 + 64);
    goto LABEL_5;
  }

  if (qword_28045DF80 != -1)
  {
    swift_once();
  }

  v11 = sub_26C009A5C();
  __swift_project_value_buffer(v11, qword_280478EE8);
  v12 = sub_26C009A3C();
  v13 = sub_26C00AA0C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_26BDFE000, v12, v13, "received non-application message", v14, 2u);
    MEMORY[0x26D69A4E0](v14, -1, -1);
  }

  sub_26BE01654();
  swift_allocError();
  *v15 = 9;
  v15[112] = 9;
  swift_willThrow();
  sub_26BE2E258(v0 + 256, &qword_28045E698, &unk_26C0204F0);
  sub_26BF26D4C(v0 + 16);
  v16 = *(v0 + 672);
  v17 = *(v0 + 664);
  v18 = *(v0 + 648);
  v19 = *(v0 + 640);
  v20 = *(v0 + 632);
  v21 = *(v0 + 608);
  v22 = *(v0 + 600);
  v23 = *(v0 + 592);
  v24 = *(v0 + 584);
  v25 = *(v0 + 560);
  v88 = *(v0 + 552);
  v89 = *(v0 + 544);
  v90 = *(v0 + 528);
  v91 = *(v0 + 504);
  v92 = *(v0 + 496);
  v94 = *(v0 + 472);

  v26 = *(v0 + 8);

  return v26();
}