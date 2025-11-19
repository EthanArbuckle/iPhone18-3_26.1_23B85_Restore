uint64_t sub_25F5BBB90()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DEE8, &unk_25F5E7910);
  sub_25F5E4C64();
  v3 = sub_25F5E47F4();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 104);
  sub_25F5E46A4();
  v5 = sub_25F5E47F4();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_25F5BBCC8()
{
  v0 = sub_25F5BBB90();

  return MEMORY[0x282200960](v0);
}

void sub_25F5BBD00(void *a1)
{
  [a1 setRequestedRepresentation_];
  [a1 setNetworkUsage_];
  [a1 setRequestAllHeaders_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6D0, &unk_25F5EA7C0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25F5E5EE0;
  v3 = *MEMORY[0x277D06F40];
  *(v2 + 32) = *MEMORY[0x277D06F40];
  type metadata accessor for ECMessageHeaderKey(0);
  v4 = v3;
  v5 = sub_25F5E4614();

  [a1 setRequestedHeaderKeys_];
}

uint64_t sub_25F5BBE00(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t sub_25F5BBE5C()
{
  v1[4] = v0;
  v2 = sub_25F5E3D24();
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v4 = *(v3 + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for MessageExtractor();
  v1[8] = v5;
  v6 = *(v5 - 8);
  v1[9] = v6;
  v1[10] = *(v6 + 64);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v7 = sub_25F5E37E4();
  v1[14] = v7;
  v8 = *(v7 - 8);
  v1[15] = v8;
  v9 = *(v8 + 64) + 15;
  v1[16] = swift_task_alloc();
  v10 = sub_25F5E3804();
  v1[17] = v10;
  v11 = *(v10 - 8);
  v1[18] = v11;
  v12 = *(v11 + 64) + 15;
  v1[19] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v14 = sub_25F5E3694();
  v1[22] = v14;
  v15 = *(v14 - 8);
  v1[23] = v15;
  v16 = *(v15 + 64) + 15;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();
  v1[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5BC120, 0, 0);
}

uint64_t sub_25F5BC120()
{
  v1 = v0[19];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  v5 = v0[4];
  v6 = [objc_opt_self() currentCalendar];
  sub_25F5E37A4();

  (*(v3 + 104))(v2, *MEMORY[0x277CC9968], v4);
  v7 = *(v5 + 32);
  v8 = -v7;
  if (__OFSUB__(0, v7))
  {
    __break(1u);
LABEL_23:
    swift_once();
    goto LABEL_16;
  }

  v9 = v0[27];
  v10 = v0[22];
  v11 = v0[23];
  v12 = v0[21];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[16];
  v16 = v0[15];
  v93 = v0[14];
  v95 = v0[17];
  sub_25F5E3684();
  sub_25F5E37B4();
  v17 = *(v11 + 8);
  v0[29] = v17;
  v0[30] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91 = v17;
  v17(v9, v10);
  (*(v16 + 8))(v15, v93);
  (*(v14 + 8))(v13, v95);
  v18 = *(v11 + 48);
  if (v18(v12, 1, v10) == 1)
  {
    sub_25F57C148(v0[21], &unk_27FD9E500, &unk_25F5EA410);
    v20 = v0[27];
    v19 = v0[28];
    v22 = v0[25];
    v21 = v0[26];
    v23 = v0[24];
    v25 = v0[20];
    v24 = v0[21];
    v26 = v0[19];
    v27 = v0[16];
    v28 = v0[13];
    v92 = v0[12];
    v94 = v0[11];
    v96 = v0[7];

    v29 = v0[1];

    return v29(0);
  }

  v31 = v0[28];
  v32 = v0[26];
  v33 = v0[22];
  v34 = v0[23];
  v35 = v0[20];
  v36 = v0[8];
  v97 = v0[4];
  v90 = *(v34 + 32);
  v90(v31, v0[21], v33);
  v89 = *(v34 + 16);
  v89(v32, v31, v33);
  sub_25F5AB47C(v97 + *(v36 + 36), v35);
  if (v18(v35, 1, v33) == 1)
  {
    sub_25F57C148(v0[20], &unk_27FD9E500, &unk_25F5EA410);
  }

  else
  {
    v37 = v0[28];
    v38 = v0[26];
    v39 = v0[22];
    v90(v0[25], v0[20], v39);
    sub_25F5C320C(&qword_27FD9E490, MEMORY[0x277CC9578]);
    LOBYTE(v37) = sub_25F5E4384();
    v91(v38, v39);
    if (v37)
    {
      v90(v0[24], v0[25], v0[22]);
    }

    else
    {
      v40 = v0[28];
      v41 = v0[24];
      v42 = v0[22];
      v91(v0[25], v42);
      v89(v41, v40, v42);
    }

    v90(v0[26], v0[24], v0[22]);
  }

  v43 = v0[26];
  v44 = v0[8];
  v45 = v0[4];
  v46 = objc_opt_self();
  v47 = sub_25F5E3624();
  v48 = [v46 predicateForMessagesNewerThanDate_];
  v0[31] = v48;

  v49 = (v45 + *(v44 + 44));
  if (v49[1])
  {
    v50 = *v49;
    sub_25F5C3254(0, &unk_27FD9E680, 0x277CCAC30);
    v51 = sub_25F5E4764();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E658, &qword_25F5EA758);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_25F5EA480;
    *(v52 + 32) = v48;
    *(v52 + 40) = v51;
    v53 = v48;
    v54 = v51;
    v55 = sub_25F5E4614();

    v56 = [objc_opt_self() andPredicateWithSubpredicates_];
  }

  else
  {
    v56 = v48;
  }

  v0[32] = v56;
  v57 = v56;
  v58 = [v46 sortDescriptorForDateAscending_];
  v0[33] = v58;
  sub_25F5C3254(0, &qword_27FD9E650, 0x277D06ED0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E658, &qword_25F5EA758);
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_25F5EA490;
  *(v59 + 32) = v58;
  v60 = objc_allocWithZone(MEMORY[0x277D06E80]);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_25F5C3254(0, &qword_27FD9E660, 0x277CCAC98);
  v8 = v57;
  v62 = v58;
  v63 = sub_25F5E4614();

  v2 = [v60 initWithTargetClass:ObjCClassFromMetadata predicate:v8 sortDescriptors:v63];
  v0[34] = v2;

  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_23;
  }

LABEL_16:
  v64 = v0[13];
  v65 = v0[4];
  v66 = sub_25F5E3FB4();
  v0[35] = __swift_project_value_buffer(v66, qword_27FD9EA20);
  sub_25F5B6EB8(v65, v64, type metadata accessor for MessageExtractor);
  v67 = v8;
  v68 = sub_25F5E3F94();
  v69 = sub_25F5E47A4();

  v70 = os_log_type_enabled(v68, v69);
  v71 = v0[13];
  if (v70)
  {
    v72 = v0[8];
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    *v73 = 134218242;
    v75 = *(v71 + *(v72 + 64));
    sub_25F5C2F24(v71, type metadata accessor for MessageExtractor);
    *(v73 + 4) = v75;
    *(v73 + 12) = 2112;
    *(v73 + 14) = v67;
    *v74 = v67;
    _os_log_impl(&dword_25F56A000, v68, v69, "Try to query maild for messages with timeout=%f and predicate=%@", v73, 0x16u);
    sub_25F57C148(v74, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v74, -1, -1);
    MEMORY[0x25F8E3B70](v73, -1, -1);
  }

  else
  {

    sub_25F5C2F24(v71, type metadata accessor for MessageExtractor);
  }

  v76 = v0[12];
  v78 = v0[9];
  v77 = v0[10];
  v79 = v0[4];
  v80 = *(v79 + *(v0[8] + 64));
  sub_25F5B6EB8(v79, v76, type metadata accessor for MessageExtractor);
  v81 = (*(v78 + 80) + 16) & ~*(v78 + 80);
  v82 = (v77 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = swift_allocObject();
  v0[36] = v83;
  sub_25F5C2E68(v76, v83 + v81, type metadata accessor for MessageExtractor);
  *(v83 + v82) = v2;
  v84 = *(MEMORY[0x277D41418] + 4);
  v85 = v2;
  v86 = swift_task_alloc();
  v0[37] = v86;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E668, &unk_25F5EA770);
  *v86 = v0;
  v86[1] = sub_25F5BCA48;
  v88.n128_u64[0] = v80;

  return MEMORY[0x2821A2078](v0 + 2, &unk_25F5EA768, v83, v87, v88);
}

uint64_t sub_25F5BCA48()
{
  v2 = *v1;
  v3 = *(*v1 + 296);
  v7 = *v1;
  *(*v1 + 304) = v0;

  if (v0)
  {
    v4 = sub_25F5BCCB8;
  }

  else
  {
    v5 = *(v2 + 288);

    v4 = sub_25F5BCB64;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_25F5BCB64()
{
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 248);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);
  v6 = *(v0 + 224);
  v7 = *(v0 + 208);
  v8 = *(v0 + 176);

  v5(v7, v8);
  v5(v6, v8);
  v10 = *(v0 + 216);
  v9 = *(v0 + 224);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  v13 = *(v0 + 192);
  v15 = *(v0 + 160);
  v14 = *(v0 + 168);
  v16 = *(v0 + 152);
  v17 = *(v0 + 128);
  v18 = *(v0 + 104);
  v21 = *(v0 + 96);
  v22 = *(v0 + 88);
  v23 = *(v0 + 56);
  v24 = *(v0 + 16);

  v19 = *(v0 + 8);

  return v19(v24);
}

uint64_t sub_25F5BCCB8()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 288);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);

  *(v0 + 24) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    if ((*(*(v0 + 48) + 88))(*(v0 + 56), *(v0 + 40)) == *MEMORY[0x277D413F0])
    {
      v6 = *(v0 + 280);
      v7 = *(v0 + 88);
      v8 = *(v0 + 32);

      sub_25F5B6EB8(v8, v7, type metadata accessor for MessageExtractor);
      v9 = sub_25F5E3F94();
      v10 = sub_25F5E47B4();
      v11 = os_log_type_enabled(v9, v10);
      v12 = *(v0 + 88);
      if (v11)
      {
        v13 = *(v0 + 64);
        v14 = swift_slowAlloc();
        *v14 = 134217984;
        v15 = *(v12 + *(v13 + 64));
        sub_25F5C2F24(v12, type metadata accessor for MessageExtractor);
        *(v14 + 4) = v15;
        _os_log_impl(&dword_25F56A000, v9, v10, "Query maild timed out after %f", v14, 0xCu);
        MEMORY[0x25F8E3B70](v14, -1, -1);
      }

      else
      {

        sub_25F5C2F24(v12, type metadata accessor for MessageExtractor);
      }

      v35 = *(v0 + 264);
      v34 = *(v0 + 272);
      v37 = *(v0 + 248);
      v36 = *(v0 + 256);
      v38 = *(v0 + 232);
      v39 = *(v0 + 240);
      v60 = *(v0 + 224);
      v40 = *(v0 + 208);
      v41 = *(v0 + 176);
      sub_25F5A31D0();
      swift_allocError();
      *v42 = 9;
      swift_willThrow();

      v38(v40, v41);
      v38(v60, v41);

      goto LABEL_11;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
  }

  v16 = *(v0 + 304);
  v17 = *(v0 + 280);

  v18 = v16;
  v19 = sub_25F5E3F94();
  v20 = sub_25F5E47B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 304);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 138412290;
    v24 = v21;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v22 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_25F56A000, v19, v20, "Failed to extract data from maild: %@", v22, 0xCu);
    sub_25F57C148(v23, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v23, -1, -1);
    MEMORY[0x25F8E3B70](v22, -1, -1);
  }

  v26 = *(v0 + 304);
  v27 = *(v0 + 264);
  v28 = *(v0 + 272);
  v29 = *(v0 + 256);
  v31 = *(v0 + 232);
  v30 = *(v0 + 240);
  v57 = *(v0 + 248);
  v59 = *(v0 + 224);
  v55 = *(v0 + 208);
  v32 = *(v0 + 176);

  sub_25F5A31D0();
  swift_allocError();
  *v33 = 5;
  swift_willThrow();

  v31(v55, v32);
  v31(v59, v32);
LABEL_11:
  v44 = *(v0 + 216);
  v43 = *(v0 + 224);
  v46 = *(v0 + 200);
  v45 = *(v0 + 208);
  v47 = *(v0 + 192);
  v49 = *(v0 + 160);
  v48 = *(v0 + 168);
  v50 = *(v0 + 152);
  v51 = *(v0 + 128);
  v52 = *(v0 + 104);
  v56 = *(v0 + 96);
  v58 = *(v0 + 88);
  v61 = *(v0 + 56);

  v53 = *(v0 + 8);

  return v53();
}

uint64_t sub_25F5BD150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x2822009F8](sub_25F5BD174, 0, 0);
}

uint64_t sub_25F5BD174()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = [*v2 messageRepository];
  v0[22] = v3;
  v4 = *(v2 + 24);
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_25F5BD2C4;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E690, &unk_25F5EA780);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_25F5BD4B0;
  v0[13] = &block_descriptor_27;
  v0[14] = v5;
  [v3 performQuery:v1 limit:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_25F5BD2C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_25F5BD440;
  }

  else
  {
    v3 = sub_25F5BD3D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25F5BD3D4()
{
  v1 = *(v0 + 176);
  **(v0 + 152) = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25F5BD440()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[23];

  return v3();
}

uint64_t sub_25F5BD4B0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_25F5C3254(0, &qword_27FD9E630, 0x277D06DB8);
    **(*(v4 + 64) + 40) = sub_25F5E4624();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t sub_25F5BD5A0(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25F5E5EF0;
  *(v2 + 32) = 0x65786F426C69616DLL;
  v141 = v2;
  *(v2 + 40) = 0xE900000000000073;
  v3 = [a1 mailboxes];
  sub_25F5C3254(0, &unk_27FD9E6A0, 0x277D06DB0);
  v4 = sub_25F5E4624();

  if (v4 >> 62)
  {
    v5 = sub_25F5E49C4();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = MEMORY[0x277D83B88];
  v142 = a1;
  if (v5)
  {
    v7 = [a1 mailboxes];
    v8 = sub_25F5E4624();

    if (v8 >> 62)
    {
      v9 = sub_25F5E49C4();
      v10 = v141;
      if (v9)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v141;
      if (v9)
      {
LABEL_6:
        *&v144 = MEMORY[0x277D84F90];
        result = sub_25F571270(0, v9 & ~(v9 >> 63), 0);
        if (v9 < 0)
        {
          goto LABEL_47;
        }

        v12 = 0;
        v13 = v144;
        do
        {
          if ((v8 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x25F8E3030](v12, v8);
          }

          else
          {
            v14 = *(v8 + 8 * v12 + 32);
          }

          v15 = v14;
          v16 = [v14 type];

          *&v144 = v13;
          v18 = *(v13 + 16);
          v17 = *(v13 + 24);
          if (v18 >= v17 >> 1)
          {
            sub_25F571270((v17 > 1), v18 + 1, 1);
            v13 = v144;
          }

          ++v12;
          *(v13 + 16) = v18 + 1;
          *(v13 + 8 * v18 + 32) = v16;
        }

        while (v9 != v12);

        v10 = v141;
        a1 = v142;
        goto LABEL_19;
      }
    }

    v13 = MEMORY[0x277D84F90];
LABEL_19:
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E190, qword_25F5EA790);
    goto LABEL_20;
  }

  v13 = -1;
  v10 = v141;
LABEL_20:
  *(v10 + 48) = v13;
  *(v10 + 72) = v6;
  *(v10 + 80) = 0x616D6D7553736168;
  *(v10 + 88) = 0xEA00000000007972;
  v19 = [a1 summary];
  v20 = v19;
  if (v19)
  {
  }

  v21 = MEMORY[0x277D839B0];
  *(v10 + 96) = v20 != 0;
  *(v10 + 120) = v21;
  *(v10 + 128) = 0xD000000000000013;
  *(v10 + 136) = 0x800000025F5EC8B0;
  v22 = [a1 generatedSummary];
  v23 = v22;
  if (v22)
  {
  }

  *(v10 + 168) = v21;
  *(v10 + 144) = v23 != 0;
  v24 = sub_25F571A78(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v25 = [v142 category];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 type];
    v28 = MEMORY[0x277D83E88];
    v145 = MEMORY[0x277D83E88];
    *&v144 = v27;
    sub_25F571D88(&v144, v143);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v146 = v24;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEC00000065707954, isUniquelyReferenced_nonNull_native);
    v30 = v146;
    v31 = [v26 subtype];
    v145 = v28;
    *&v144 = v31;
    sub_25F571D88(&v144, v143);
    v32 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v30;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEF65707974627553, v32);
    v33 = v146;
    v34 = [v26 isHighImpact];
    v145 = v21;
    LOBYTE(v144) = v34;
    sub_25F571D88(&v144, v143);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v33;
    sub_25F5710A0(v143, 0x6D49686769487369, 0xEC00000074636170, v35);

    v36 = v146;
    v37 = MEMORY[0x277D83B88];
  }

  else
  {
    v37 = MEMORY[0x277D83B88];
    v145 = MEMORY[0x277D83B88];
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v24;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEC00000065707954, v38);
    v39 = v146;
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v40 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v39;
    sub_25F5710A0(v143, 0x79726F6765746163, 0xEF65707974627553, v40);
    v41 = v146;
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v42 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v41;
    sub_25F5710A0(v143, 0x6D49686769487369, 0xEC00000074636170, v42);
    v36 = v146;
  }

  v145 = v21;
  LOBYTE(v144) = 0;
  sub_25F571D88(&v144, v143);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v36;
  sub_25F5710A0(v143, 0xD000000000000011, 0x800000025F5EC890, v43);
  v44 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v44;
  sub_25F5710A0(v143, 0xD000000000000014, 0x800000025F5EC870, v45);
  v46 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v46;
  sub_25F5710A0(v143, 0xD000000000000019, 0x800000025F5EC850, v47);
  v48 = v146;
  v145 = v21;
  LOBYTE(v144) = 0;
  sub_25F571D88(&v144, v143);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v48;
  sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC830, v49);
  v50 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v50;
  sub_25F5710A0(v143, 0xD000000000000015, 0x800000025F5EC810, v51);
  v52 = v146;
  v145 = v37;
  *&v144 = 0;
  sub_25F571D88(&v144, v143);
  v53 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v52;
  sub_25F5710A0(v143, 0xD00000000000001ALL, 0x800000025F5EC7F0, v53);
  v54 = v146;
  v55 = v142;
  v56 = [v142 generatedSummary];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 topLine];
    if (v58)
    {
      v59 = v58;
      v145 = MEMORY[0x277D839B0];
      LOBYTE(v144) = 1;
      sub_25F571D88(&v144, v143);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v54;
      sub_25F5710A0(v143, 0xD000000000000011, 0x800000025F5EC890, v60);
      v61 = v146;
      v62 = [v59 string];
      v63 = sub_25F5E43F4();
      v65 = v64;

      v66 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, v63, v65);

      v145 = MEMORY[0x277D83B88];
      *&v144 = v66;
      sub_25F571D88(&v144, v143);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v61;
      sub_25F5710A0(v143, 0xD000000000000014, 0x800000025F5EC870, v67);
      v68 = v146;
      v69 = [v59 &selRef_rangeAtIndex_];
      sub_25F5E43F4();

      v70 = sub_25F5E44C4();

      v145 = MEMORY[0x277D83B88];
      *&v144 = v70;
      sub_25F571D88(&v144, v143);
      v71 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v68;
      sub_25F5710A0(v143, 0xD000000000000019, 0x800000025F5EC850, v71);

      v54 = v146;
    }

    v72 = [v57 synopsis];
    if (v72)
    {
      v73 = v72;
      v145 = MEMORY[0x277D839B0];
      LOBYTE(v144) = 1;
      sub_25F571D88(&v144, v143);
      v74 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v54;
      sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC830, v74);
      v75 = v146;
      v76 = [v73 string];
      v77 = sub_25F5E43F4();
      v79 = v78;

      v80 = sub_25F5D1470(0, 0, 0x7FFFFFFFFFFFFFFFLL, v77, v79);

      v37 = MEMORY[0x277D83B88];
      v145 = MEMORY[0x277D83B88];
      *&v144 = v80;
      sub_25F571D88(&v144, v143);
      v81 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v75;
      sub_25F5710A0(v143, 0xD000000000000015, 0x800000025F5EC810, v81);
      v82 = v146;
      v83 = [v73 &selRef_rangeAtIndex_];
      sub_25F5E43F4();

      v84 = sub_25F5E44C4();

      v145 = v37;
      *&v144 = v84;
      sub_25F571D88(&v144, v143);
      v85 = swift_isUniquelyReferenced_nonNull_native();
      v146 = v82;
      sub_25F5710A0(v143, 0xD00000000000001ALL, 0x800000025F5EC7F0, v85);

      v54 = v146;
      v55 = v142;
    }

    else
    {
      v55 = v142;
      v37 = MEMORY[0x277D83B88];
    }

    v87 = [v57 urgent];
    v145 = v37;
    *&v144 = v87;
    sub_25F571D88(&v144, v143);
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v54;
    sub_25F5710A0(v143, 0x746E656772557369, 0xE800000000000000, v88);
  }

  else
  {
    v145 = v37;
    *&v144 = -1;
    sub_25F571D88(&v144, v143);
    v86 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v54;
    sub_25F5710A0(v143, 0x746E656772557369, 0xE800000000000000, v86);
  }

  v89 = v146;
  v90 = [v55 senderList];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B8, &qword_25F5EA7A8);
  v91 = sub_25F5E4624();

  if (v91 >> 62)
  {
    v92 = sub_25F5E49C4();
  }

  else
  {
    v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v145 = v37;
  *&v144 = v92;
  sub_25F571D88(&v144, v143);
  v93 = swift_isUniquelyReferenced_nonNull_native();
  v146 = v89;
  sub_25F5710A0(v143, 0x664F7265626D756ELL, 0xEF737265646E6553, v93);
  v94 = v146;
  v95 = [v55 toList];
  v96 = sub_25F5E4624();

  if (v96 >> 62)
  {
    v97 = sub_25F5E49C4();
  }

  else
  {
    v97 = *((v96 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = [v55 ccList];
  v99 = sub_25F5E4624();

  if (v99 >> 62)
  {
    v100 = sub_25F5E49C4();
  }

  else
  {
    v100 = *((v99 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v101 = MEMORY[0x277D839B0];

  if (!__OFADD__(v97, v100))
  {
    v145 = v37;
    *&v144 = v97 + v100;
    sub_25F571D88(&v144, v143);
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v94;
    sub_25F5710A0(v143, 0xD000000000000012, 0x800000025F5EC7D0, v102);
    v103 = v146;
    v104 = [v55 isToMe];
    v145 = v101;
    LOBYTE(v144) = v104;
    sub_25F571D88(&v144, v143);
    v105 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v103;
    sub_25F5710A0(v143, 0x654D6F547369, 0xE600000000000000, v105);
    v106 = v146;
    v107 = [v55 isCCMe];
    v145 = v101;
    LOBYTE(v144) = v107;
    sub_25F571D88(&v144, v143);
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v106;
    sub_25F5710A0(v143, 0x654D43437369, 0xE600000000000000, v108);
    v109 = v146;
    v110 = [v55 isVIP];
    v145 = v101;
    LOBYTE(v144) = v110;
    sub_25F571D88(&v144, v143);
    v111 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v109;
    sub_25F5710A0(v143, 0x5049567369, 0xE500000000000000, v111);
    v112 = v146;
    v113 = [v55 isBlocked];
    v145 = v101;
    LOBYTE(v144) = v113;
    sub_25F571D88(&v144, v143);
    v114 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v112;
    sub_25F5710A0(v143, 0x656B636F6C427369, 0xE900000000000064, v114);
    v115 = v146;
    v116 = [v55 isGroupedSender];
    v145 = v101;
    LOBYTE(v144) = v116;
    sub_25F571D88(&v144, v143);
    v117 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v115;
    sub_25F5710A0(v143, 0x6570756F72477369, 0xEF7265646E655364, v117);
    v118 = v146;
    v119 = [v55 flags];
    v120 = [v119 read];
    v145 = v101;
    LOBYTE(v144) = v120;
    sub_25F571D88(&v144, v143);
    v121 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v118;
    sub_25F5710A0(v143, 0x646165527369, 0xE600000000000000, v121);
    v122 = v146;
    v123 = [v119 flagged];
    v145 = v101;
    LOBYTE(v144) = v123;
    sub_25F571D88(&v144, v143);
    v124 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v122;
    sub_25F5710A0(v143, 0x656767616C467369, 0xE900000000000064, v124);
    v125 = v146;
    v126 = [v119 deleted];
    v145 = v101;
    LOBYTE(v144) = v126;
    sub_25F571D88(&v144, v143);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v125;
    sub_25F5710A0(v143, 0x6574656C65447369, 0xE900000000000064, v127);
    v128 = v146;
    v129 = [v119 replied];
    v145 = v101;
    LOBYTE(v144) = v129;
    sub_25F571D88(&v144, v143);
    v130 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v128;
    sub_25F5710A0(v143, 0x65696C7065527369, 0xE900000000000064, v130);
    v131 = v146;
    v132 = [v119 forwarded];
    v145 = v101;
    LOBYTE(v144) = v132;
    sub_25F571D88(&v144, v143);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v131;
    sub_25F5710A0(v143, 0x726177726F467369, 0xEB00000000646564, v133);
    v134 = v146;
    v135 = [v119 redirected];
    v145 = v101;
    LOBYTE(v144) = v135;
    sub_25F571D88(&v144, v143);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v134;
    sub_25F5710A0(v143, 0x6572696465527369, 0xEC00000064657463, v136);
    v137 = v146;
    v138 = [v119 isJunk];
    v145 = v101;
    LOBYTE(v144) = v138;
    sub_25F571D88(&v144, v143);
    v139 = swift_isUniquelyReferenced_nonNull_native();
    v146 = v137;
    sub_25F5710A0(v143, 0x6B6E754A7369, 0xE600000000000000, v139);
    v140 = sub_25F5701E8(v146);

    return v140;
  }

  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t MessageExtractor.next()(uint64_t a1)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x2822009F8](sub_25F5BE778, 0, 0);
}

uint64_t sub_25F5BE778()
{
  sub_25F5E46D4();
  v0[8] = 0;
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_25F5BE858;
  v2 = v0[7];

  return MessageExtractor.isDataAccessible()();
}

uint64_t sub_25F5BE858(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 156) = a1;

  return MEMORY[0x2822009F8](sub_25F5BE958, 0, 0);
}

uint64_t sub_25F5BE958()
{
  if (*(v0 + 156) != 1)
  {
LABEL_16:
    v23 = *(v0 + 48);
    v24 = type metadata accessor for ExtractedMessage(0);
    (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
    v25 = *(v0 + 8);

    return v25();
  }

  v1 = *(v0 + 56);
  v9 = type metadata accessor for MessageExtractor();
  *(v0 + 80) = v9;
  v10 = *(v9 + 52);
  *(v0 + 152) = v10;
  v11 = *(v1 + v10);
  *(v0 + 88) = v11;
  if (v11)
  {
    *(v0 + 120) = *(v0 + 64);
    v12 = *(v1 + *(v9 + 56));
    if (v12 >> 62)
    {
      v22 = sub_25F5E49C4();
      v11 = *(v0 + 88);
      if (v11 < v22)
      {
LABEL_5:
        if ((v12 & 0xC000000000000001) == 0)
        {
          if (v11 < 0)
          {
            __break(1u);
          }

          else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v13 = *(v12 + 8 * v11 + 32);
            goto LABEL_9;
          }

          __break(1u);
          return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
        }

        v13 = MEMORY[0x25F8E3030]();
LABEL_9:
        v14 = v13;
        *(v0 + 128) = v13;
        v15 = *(v0 + 56);
        v16 = swift_task_alloc();
        *(v0 + 136) = v16;
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = *(MEMORY[0x277D859E0] + 4);
        v18 = swift_task_alloc();
        *(v0 + 144) = v18;
        v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E538, &unk_25F5EA4D0);
        *v18 = v0;
        v18[1] = sub_25F5BF08C;
        v6 = sub_25F5C10C4;
        v4 = 0x29287478656ELL;
        v11 = v0 + 16;
        v2 = 0;
        v3 = 0;
        v5 = 0xE600000000000000;
        v7 = v16;

        return MEMORY[0x2822007B8](v11, v2, v3, v4, v5, v6, v7, v8);
      }
    }

    else if (v11 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v19 = swift_task_alloc();
  *(v0 + 96) = v19;
  *v19 = v0;
  v19[1] = sub_25F5BEC00;
  v20 = *(v0 + 56);

  return sub_25F5BBE5C();
}

uint64_t sub_25F5BEC00(uint64_t a1)
{
  v3 = *(*v2 + 96);
  v4 = *v2;
  v4[13] = a1;
  v4[14] = v1;

  if (v1)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_25F5BED34, 0, 0);
  }
}

uint64_t sub_25F5BED34()
{
  v1 = v0[13];
  if (v1)
  {
    v2 = v0[7];
    v3 = *(v0[10] + 56);
    v4 = *(v2 + v3);
    v5 = v0[13];

    *(v2 + v3) = v1;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = sub_25F5E3FB4();
    __swift_project_value_buffer(v6, qword_27FD9EA20);

    v7 = sub_25F5E3F94();
    v8 = sub_25F5E4794();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = v0[13];
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      if (v9 >> 62)
      {
        v0[13];
        v11 = sub_25F5E49C4();
      }

      else
      {
        v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v11;

      _os_log_impl(&dword_25F56A000, v7, v8, "Queried %ld messages.", v10, 0xCu);
      MEMORY[0x25F8E3B70](v10, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v0[15] = v0[14];
    v19 = v0[7];
    v20 = *(v19 + *(v0[10] + 56));
    if (v20 >> 62)
    {
      if (v20 < 0)
      {
        v33 = *(v19 + *(v0[10] + 56));
      }

      v21 = sub_25F5E49C4();
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 = v0[11];
    if (v22 < v21)
    {
      if ((v20 & 0xC000000000000001) == 0)
      {
        if (v22 < 0)
        {
          __break(1u);
        }

        else if (v22 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v23 = *(v20 + 8 * v22 + 32);
          goto LABEL_16;
        }

        __break(1u);
        return MEMORY[0x2822007B8](v22, v12, v13, v14, v15, v16, v17, v18);
      }

      v23 = MEMORY[0x25F8E3030]();
LABEL_16:
      v24 = v23;
      v0[16] = v23;
      v25 = v0[7];
      v26 = swift_task_alloc();
      v0[17] = v26;
      *(v26 + 16) = v24;
      *(v26 + 24) = v25;
      v27 = *(MEMORY[0x277D859E0] + 4);
      v28 = swift_task_alloc();
      v0[18] = v28;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E538, &unk_25F5EA4D0);
      *v28 = v0;
      v28[1] = sub_25F5BF08C;
      v16 = sub_25F5C10C4;
      v14 = 0x29287478656ELL;
      v22 = (v0 + 2);
      v12 = 0;
      v13 = 0;
      v15 = 0xE600000000000000;
      v17 = v26;

      return MEMORY[0x2822007B8](v22, v12, v13, v14, v15, v16, v17, v18);
    }
  }

  v29 = v0[6];
  v30 = type metadata accessor for ExtractedMessage(0);
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  v31 = v0[1];

  return v31();
}

uint64_t sub_25F5BF08C()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 136);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_25F5BF1A4, 0, 0);
}

void sub_25F5BF1A4()
{
  v82 = v0;
  if (!*(v0 + 24))
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v5 = sub_25F5E3FB4();
    __swift_project_value_buffer(v5, qword_27FD9EA20);
    v6 = sub_25F5E3F94();
    v7 = sub_25F5E47B4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25F56A000, v6, v7, "Failed to extract message content. Terminated extraction loop.", v8, 2u);
      MEMORY[0x25F8E3B70](v8, -1, -1);
    }

    v9 = *(v0 + 48);

    v10 = type metadata accessor for ExtractedMessage(0);
    (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
LABEL_34:
    v36 = *(v0 + 8);
    goto LABEL_35;
  }

  v1 = *(v0 + 16);
  v77 = *(v0 + 32);
  v80 = *(v0 + 40);
  v2 = [*(v0 + 128) senderAddress];
  if (v2)
  {
    v3 = [v2 stringValue];
    swift_unknownObjectRelease();
    v75 = sub_25F5E43F4();
    v78 = v4;
  }

  else
  {
    v75 = 0x6E776F6E6B6E753CLL;
    v78 = 0xE90000000000003ELL;
  }

  v11 = [*(v0 + 128) subject];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 subjectString];

    v76 = sub_25F5E43F4();
    v79 = v14;
  }

  else
  {
    v76 = 0x6E776F6E6B6E753CLL;
    v79 = 0xE90000000000003ELL;
  }

  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  v17 = *(v0 + 152);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  v20 = objc_opt_self();
  v21 = sub_25F5E43C4();

  v22 = [v20 snippetFromHTMLBody:v21 options:*(v19 + 16) maxLength:*(v19 + *(v18 + 40)) preservingQuotedForwardedContent:0];

  v23 = sub_25F5E43F4();
  v25 = v24;

  v26 = (v19 + *(v18 + 48));
  v27 = *v26;
  v28 = v26[1];
  v29 = *(v26 + 1);
  LOBYTE(v81[0]) = *v26;
  BYTE1(v81[0]) = v28;
  v81[1] = v29;

  v30 = sub_25F5D49F4(v23, v25, v81);
  v32 = v31;

  v33 = *(v19 + v17);
  v34 = sub_25F5BD5A0(v16);
  if (!v15)
  {
    v37 = v34;
    v72 = v23;
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v38 = sub_25F5E3FB4();
    __swift_project_value_buffer(v38, qword_27FD9EA20);

    v39 = sub_25F5E3F94();
    v40 = sub_25F5E47A4();

    v73 = v33;
    v74 = v30;
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v33;
      v42 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v81[0] = v71;
      *v42 = 134218242;
      *(v42 + 4) = v41;
      *(v42 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E540, &qword_25F5E9D60);
      v43 = sub_25F5E4314();
      v45 = v32;
      v46 = sub_25F570AF8(v43, v44, v81);

      *(v42 + 14) = v46;
      v32 = v45;
      v30 = v74;
      _os_log_impl(&dword_25F56A000, v39, v40, "Message metadata %ld:%s", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x25F8E3B70](v71, -1, -1);
      MEMORY[0x25F8E3B70](v42, -1, -1);
    }

    if (v27)
    {
      v47 = HIBYTE(v32) & 0xF;
      if ((v32 & 0x2000000000000000) == 0)
      {
        v47 = v30 & 0xFFFFFFFFFFFFLL;
      }

      v48 = v73;
      if (!v47)
      {

LABEL_32:
        if (__OFADD__(v48, 1))
        {
          __break(1u);
          return;
        }

        v60 = *(v0 + 128);
        v61 = *(v0 + 48);
        *(*(v0 + 56) + *(v0 + 152)) = v48 + 1;
        v62 = [v60 date];
        sub_25F5E3674();

        v63 = [v60 conversationID];
        v64 = type metadata accessor for ExtractedMessage(0);
        v65 = v64[11];
        sub_25F571FC4(MEMORY[0x277D84F90]);

        v66 = (v61 + v64[5]);
        *v66 = v75;
        v66[1] = v78;
        v67 = (v61 + v64[6]);
        *v67 = 25965;
        v67[1] = 0xE200000000000000;
        v68 = (v61 + v64[7]);
        *v68 = v76;
        v68[1] = v79;
        v69 = (v61 + v64[8]);
        *v69 = v74;
        v69[1] = v32;
        *(v61 + v64[9]) = v63;
        v70 = (v61 + v64[10]);
        *v70 = v77;
        v70[1] = v80;
        *(v61 + v65) = v37;
        (*(*(v64 - 1) + 56))(v61, 0, 1, v64);
        goto LABEL_34;
      }

      v49 = sub_25F5E3F94();
      v50 = sub_25F5E47A4();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = v37;
        v53 = swift_slowAlloc();
        v81[0] = v53;
        *v51 = 134218242;
        *(v51 + 4) = v73;
        *(v51 + 12) = 2080;
        v54 = sub_25F570AF8(v72, v25, v81);

        *(v51 + 14) = v54;
        _os_log_impl(&dword_25F56A000, v49, v50, "Parsed body %ld: %s", v51, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v55 = v53;
        v37 = v52;
        MEMORY[0x25F8E3B70](v55, -1, -1);
        MEMORY[0x25F8E3B70](v51, -1, -1);
      }

      else
      {
      }

      v56 = sub_25F5E3F94();
      v57 = sub_25F5E47A4();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v81[0] = v59;
        *v58 = 134218242;
        *(v58 + 4) = v73;
        *(v58 + 12) = 2080;
        *(v58 + 14) = sub_25F570AF8(v74, v32, v81);
        _os_log_impl(&dword_25F56A000, v56, v57, "Cleaned body %ld: %s", v58, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v59);
        MEMORY[0x25F8E3B70](v59, -1, -1);
        MEMORY[0x25F8E3B70](v58, -1, -1);

        v48 = v73;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v48 = v73;
    goto LABEL_32;
  }

  v35 = *(v0 + 128);

  v36 = *(v0 + 8);
LABEL_35:

  v36();
}

void sub_25F5BF9E8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = aBlock - v10;
  v12 = *(a3 + 8);
  (*(v7 + 16))(aBlock - v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v11, v6);
  aBlock[4] = sub_25F5C3330;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F5BFE90;
  aBlock[3] = &block_descriptor_34;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  v17 = [a2 requestRepresentationWithOptions:v16 completionHandler:v15];
  _Block_release(v15);
}

void sub_25F5BFBC4(void *a1)
{
  v2 = sub_25F5E4444();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v5 = sub_25F5E3554();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = &v27[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27[-v13];
  if (a1)
  {
    v15 = a1;
    v16 = [v15 contentURL];
    if (v16)
    {
      v17 = v16;
      sub_25F5E3534();

      (*(v6 + 32))(v14, v11, v5);
      sub_25F5E4424();
      v18 = sub_25F5E43A4();
      v20 = v19;
      v21 = [v15 requestedHeaders];
      if (v21 && (v22 = v21, v23 = [v21 firstHeaderForKey_], v22, v23))
      {
        v24 = sub_25F5E43F4();
        v26 = v25;
      }

      else
      {
        v24 = 0;
        v26 = 0;
      }

      *&v28 = v18;
      *(&v28 + 1) = v20;
      *&v29 = v24;
      *(&v29 + 1) = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
      sub_25F5E4694();

      (*(v6 + 8))(v14, v5);
    }

    else
    {
      v28 = 0u;
      v29 = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
      sub_25F5E4694();
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
    sub_25F5E4694();
  }
}

void sub_25F5BFE90(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_25F5BFF50(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F5BFFE8;

  return MessageExtractor.next()(a1);
}

uint64_t sub_25F5BFFE8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_25F5C00DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_25F5C017C;

  return MessageExtractor.next()(a1);
}

uint64_t sub_25F5C017C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {
    if (v3[3])
    {
      v4 = v3[4];
      swift_getObjectType();
      v5 = sub_25F5E4684();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    return MEMORY[0x2822009F8](sub_25F5C02EC, v5, v7);
  }

  else
  {
    v8 = v3[1];

    return v8();
  }
}

uint64_t sub_25F5C02EC()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  swift_willThrowTypedImpl();
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

Swift::String __swiftcall joinMessages(_:)(Swift::OpaquePointer a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D84F90];
  v9 = sub_25F5725A8(MEMORY[0x277D84F90]);
  v10 = *(a1._rawValue + 2);
  if (!v10)
  {
LABEL_27:
    v55 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50);
    v43 = sub_25F5E4364();
    v45 = v44;

    v46 = v43;
    v47 = v45;
    goto LABEL_31;
  }

  v11 = a1._rawValue + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v50 = *(v3 + 72);
  v51 = v7;
  v52 = v2;
  while (1)
  {
    sub_25F5B6EB8(v11, v7, type metadata accessor for ExtractedMessage);
    v12 = &v7[*(v2 + 20)];
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = HIBYTE(v14) & 0xF;
    if ((v14 & 0x2000000000000000) == 0)
    {
      v15 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v15)
    {
      v16 = sub_25F5E4464();
      v18 = v17;
    }

    else
    {
      v18 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    v20 = v9 + 2;
    v19 = v9[2];
    v53 = v8;
    if (v19)
    {
      v21 = sub_25F5709C8(v16, v18);
      if (v22)
      {
        v20 = (v9[7] + 8 * v21);
      }
    }

    v23 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v9;
    v26 = sub_25F5709C8(v16, v18);
    v27 = v9[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v9[3] >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v25)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_25F57B254();
        if (v30)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      sub_25F579D84(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_25F5709C8(v16, v18);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_30;
      }

      v26 = v31;
      if (v30)
      {
LABEL_18:

        v9 = v55;
        *(*(v55 + 56) + 8 * v26) = v23;
        goto LABEL_22;
      }
    }

    v9 = v55;
    *(v55 + 8 * (v26 >> 6) + 64) |= 1 << v26;
    v33 = (v9[6] + 16 * v26);
    *v33 = v16;
    v33[1] = v18;
    *(v9[7] + 8 * v26) = v23;
    v34 = v9[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_29;
    }

    v9[2] = v36;
LABEL_22:
    v54 = v23;
    v55 = 0x207265646E6553;
    v56 = 0xE700000000000000;
    v37 = sub_25F5E4B44();
    MEMORY[0x25F8E2BC0](v37);

    MEMORY[0x25F8E2BC0](8250, 0xE200000000000000);
    v7 = v51;
    v2 = v52;
    MEMORY[0x25F8E2BC0](*&v51[*(v52 + 32)], *&v51[*(v52 + 32) + 8]);
    v38 = v55;
    v39 = v56;
    v8 = v53;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_25F578544(0, *(v8 + 2) + 1, 1, v8);
    }

    v41 = *(v8 + 2);
    v40 = *(v8 + 3);
    if (v41 >= v40 >> 1)
    {
      v8 = sub_25F578544((v40 > 1), v41 + 1, 1, v8);
    }

    *(v8 + 2) = v41 + 1;
    v42 = &v8[16 * v41];
    *(v42 + 4) = v38;
    *(v42 + 5) = v39;
    sub_25F5C2F24(v7, type metadata accessor for ExtractedMessage);
    v11 += v50;
    if (!--v10)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  v46 = sub_25F5E4BC4();
  __break(1u);
LABEL_31:
  result._object = v47;
  result._countAndFlagsBits = v46;
  return result;
}

uint64_t joinMetadata(_:)(uint64_t a1)
{
  v2 = type metadata accessor for ExtractedMessage(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v71 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E558, &unk_25F5EA4F0);
  inited = swift_initStackObject();
  v74 = xmmword_25F5E5EE0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 16) = xmmword_25F5E5EE0;
  *(inited + 40) = 0x800000025F5EC780;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E560, &qword_25F5E68F8);
  v8 = swift_allocObject();
  *(v8 + 16) = v74;
  v9 = *(a1 + 16);
  if (v9 >> 31)
  {
LABEL_52:
    __break(1u);
LABEL_53:
    result = sub_25F5E4BC4();
    __break(1u);
    return result;
  }

  *(v8 + 32) = v9;
  *(v8 + 40) = 0;
  *(v8 + 48) = 0;
  *(inited + 48) = v8;
  v10 = sub_25F571FC4(inited);
  swift_setDeallocating();
  sub_25F57C148(inited + 32, &qword_27FD9E568, &qword_25F5EA500);
  v76 = v10;
  if (!v9)
  {
    return v10;
  }

  v11 = 0;
  v12 = *(v2 + 44);
  v69 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v70 = v12;
  v68 = *(v3 + 72);
  v67 = v9;
  while (2)
  {
    v13 = v71;
    sub_25F5B6EB8(v69 + v68 * v11, v71, type metadata accessor for ExtractedMessage);
    v73 = v11 + 1;
    v14 = *(v13 + v70);

    sub_25F5C2F24(v13, type metadata accessor for ExtractedMessage);
    v15 = 0;
    v17 = v14 + 64;
    v16 = *(v14 + 64);
    *&v74 = v14;
    v18 = 1 << *(v14 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & v16;
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
LABEL_15:
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v28 = v27 | (v15 << 6);
      v29 = (*(v74 + 48) + 16 * v28);
      v31 = *v29;
      v30 = v29[1];
      v32 = *(*(v74 + 56) + 8 * v28);
      v33 = v76;
      v34 = v76[2];

      if (v34 && (sub_25F5709C8(v31, v30), (v35 & 1) != 0))
      {
        v36 = sub_25F5C0D30(v75, v31, v30);
        v38 = v36;
        v39 = *v37;
        if (!*v37)
        {

          v38(v75, 0);
          goto LABEL_40;
        }

        v72 = v36;
        v40 = *(v32 + 16);
        v41 = *(v39 + 2);
        v42 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          goto LABEL_48;
        }

        v43 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v43 = v39;
        if (isUniquelyReferenced_nonNull_native && v42 <= *(v39 + 3) >> 1)
        {
          if (!*(v32 + 16))
          {
            goto LABEL_38;
          }
        }

        else
        {
          v60 = *(v39 + 2);
          if (v60 <= v42)
          {
            v60 = v42;
          }

          v66 = v60;
          v61 = isUniquelyReferenced_nonNull_native;

          v62 = sub_25F5782CC(v61, v66, 1, v39);
          v63 = *v43;
          *v43 = v62;

          v39 = *v43;
          if (!*(v32 + 16))
          {
LABEL_38:

            if (v40)
            {
              goto LABEL_49;
            }

            goto LABEL_39;
          }
        }

        if ((*(v39 + 3) >> 1) - *(v39 + 2) < v40)
        {
          goto LABEL_50;
        }

        swift_arrayInitWithCopy();

        if (v40)
        {
          v45 = *(*v43 + 2);
          v46 = __OFADD__(v45, v40);
          v47 = v45 + v40;
          if (v46)
          {
            goto LABEL_51;
          }

          *(*v43 + 2) = v47;
        }

LABEL_39:
        v72(v75, 0);
LABEL_40:
      }

      else
      {
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v75[0] = v33;
        v49 = sub_25F5709C8(v31, v30);
        v51 = v33[2];
        v52 = (v50 & 1) == 0;
        v46 = __OFADD__(v51, v52);
        v53 = v51 + v52;
        if (v46)
        {
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v54 = v50;
        if (v33[3] >= v53)
        {
          if (v48)
          {
            goto LABEL_31;
          }

          v64 = v49;
          sub_25F57AC68();
          v49 = v64;
          if (v54)
          {
            goto LABEL_9;
          }

LABEL_32:
          v56 = v75[0];
          v75[0][(v49 >> 6) + 8] |= 1 << v49;
          v57 = (v56[6] + 16 * v49);
          *v57 = v31;
          v57[1] = v30;
          *(v56[7] + 8 * v49) = v32;
          v58 = v56[2];
          v46 = __OFADD__(v58, 1);
          v59 = v58 + 1;
          if (v46)
          {
            goto LABEL_47;
          }

          v56[2] = v59;
          v76 = v56;
        }

        else
        {
          sub_25F5792E8(v53, v48);
          v49 = sub_25F5709C8(v31, v30);
          if ((v54 & 1) != (v55 & 1))
          {
            goto LABEL_53;
          }

LABEL_31:
          if ((v54 & 1) == 0)
          {
            goto LABEL_32;
          }

LABEL_9:
          v22 = v49;

          v23 = v75[0];
          v24 = v75[0][7];
          v25 = *(v24 + 8 * v22);
          *(v24 + 8 * v22) = v32;

          v76 = v23;
        }
      }
    }

    while (1)
    {
      v26 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_46;
      }

      if (v26 >= v21)
      {
        break;
      }

      v20 = *(v17 + 8 * v26);
      ++v15;
      if (v20)
      {
        v15 = v26;
        goto LABEL_15;
      }
    }

    v11 = v73;
    if (v73 != v67)
    {
      continue;
    }

    return v76;
  }
}

void (*sub_25F5C0D30(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_25F5C10CC(v6, a2, a3);
  return sub_25F5C0DB8;
}

void sub_25F5C0DB8(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25F5C0E18(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  swift_unknownObjectRetain();
  v4(a2);

  return swift_unknownObjectRelease();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  return sub_25F573A4C(a2 + 32, a1 + 32);
}

{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F5C0EB0()
{
  result = qword_27FD9E520;
  if (!qword_27FD9E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E520);
  }

  return result;
}

uint64_t sub_25F5C0F04(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F5C0F14(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F5E48F4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_25F5E4C34();

      sub_25F5E4334();
      v13 = sub_25F5E4C54();

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

void (*sub_25F5C10CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_25F5C13E4(v8);
  v8[9] = sub_25F5C11D8(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_25F5C1178;
}

void sub_25F5C1178(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_25F5C11D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_25F5709C8(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_25F57AC68();
      v13 = v21;
      goto LABEL_11;
    }

    sub_25F5792E8(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_25F5709C8(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_25F5E4BC4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_25F5C1330;
}

void sub_25F5C1330(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_25F57AA7C(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    sub_25F5C2ED0(*(v7 + 48) + 16 * v6);
    sub_25F5C0F14(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

uint64_t (*sub_25F5C13E4(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F5C140C;
}

uint64_t sub_25F5C1418(void **a1)
{
  v2 = *(type metadata accessor for ExtractedMessage(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F5C77E4(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25F5C14C0(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25F5C14C0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F5E4B34();
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
        type metadata accessor for ExtractedMessage(0);
        v6 = sub_25F5E4654();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ExtractedMessage(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25F5C183C(v8, v9, a1, v4);
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
    return sub_25F5C15EC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F5C15EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v38 = type metadata accessor for ExtractedMessage(0);
  v8 = *(*(v38 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v38, v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v30 - v15;
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = &v30 - v20;
  v32 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v37 = v22;
    v31 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v35 = v24;
    v36 = a3;
    v33 = v27;
    v34 = v26;
    while (1)
    {
      sub_25F5B6EB8(v27, v21, type metadata accessor for ExtractedMessage);
      sub_25F5B6EB8(v24, v16, type metadata accessor for ExtractedMessage);
      v28 = sub_25F5E3634();
      sub_25F5C2F24(v16, type metadata accessor for ExtractedMessage);
      result = sub_25F5C2F24(v21, type metadata accessor for ExtractedMessage);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v24 = v35 + v31;
        v26 = v34 - 1;
        v27 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      sub_25F5C2E68(v27, v12, type metadata accessor for ExtractedMessage);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_25F5C2E68(v12, v24, type metadata accessor for ExtractedMessage);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v26++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25F5C183C(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v114 = type metadata accessor for ExtractedMessage(0);
  v110 = *(v114 - 8);
  v9 = *(v110 + 64);
  v11 = MEMORY[0x28223BE20](v114, v10);
  v104 = &v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v113 = &v99 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v99 - v18;
  result = MEMORY[0x28223BE20](v17, v20);
  v23 = &v99 - v22;
  v112 = a3;
  v24 = a3[1];
  if (v24 < 1)
  {
    v26 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v26;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_25F5C2700(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *(result + 16 * a4);
        v96 = result;
        v97 = *(result + 16 * (a4 - 1) + 40);
        sub_25F5C2160(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *(result + 16 * (a4 - 1) + 32), *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_25F5C2700(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_25F5C2674(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v25 = 0;
  v26 = MEMORY[0x277D84F90];
  v101 = a4;
  while (1)
  {
    v27 = v25;
    v28 = v25 + 1;
    v105 = v26;
    if (v28 >= v24)
    {
      v34 = v28;
    }

    else
    {
      v29 = *(v110 + 72);
      v5 = *v112 + v29 * v28;
      v108 = *v112;
      v30 = v108;
      sub_25F5B6EB8(v108 + v29 * v28, v23, type metadata accessor for ExtractedMessage);
      sub_25F5B6EB8(v30 + v29 * v27, v19, type metadata accessor for ExtractedMessage);
      LODWORD(v109) = sub_25F5E3634();
      sub_25F5C2F24(v19, type metadata accessor for ExtractedMessage);
      result = sub_25F5C2F24(v23, type metadata accessor for ExtractedMessage);
      v100 = v27;
      v31 = v27 + 2;
      v111 = v29;
      v32 = v108 + v29 * (v27 + 2);
      while (v24 != v31)
      {
        sub_25F5B6EB8(v32, v23, type metadata accessor for ExtractedMessage);
        sub_25F5B6EB8(v5, v19, type metadata accessor for ExtractedMessage);
        v33 = sub_25F5E3634() & 1;
        sub_25F5C2F24(v19, type metadata accessor for ExtractedMessage);
        result = sub_25F5C2F24(v23, type metadata accessor for ExtractedMessage);
        ++v31;
        v32 += v111;
        v5 += v111;
        if ((v109 & 1) != v33)
        {
          v34 = v31 - 1;
          goto LABEL_11;
        }
      }

      v34 = v24;
LABEL_11:
      v27 = v100;
      a4 = v101;
      if (v109)
      {
        if (v34 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v34)
        {
          v99 = v6;
          v35 = v111 * (v34 - 1);
          v36 = v34 * v111;
          v109 = v34;
          v37 = v34;
          v38 = v100 * v111;
          do
          {
            if (v27 != --v37)
            {
              v39 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v39 + v38;
              sub_25F5C2E68(v39 + v38, v104, type metadata accessor for ExtractedMessage);
              if (v38 < v35 || v5 >= v39 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v38 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_25F5C2E68(v104, v39 + v35, type metadata accessor for ExtractedMessage);
            }

            ++v27;
            v35 -= v111;
            v36 -= v111;
            v38 += v111;
          }

          while (v27 < v37);
          v6 = v99;
          v27 = v100;
          a4 = v101;
          v34 = v109;
        }
      }
    }

    v40 = v112[1];
    if (v34 < v40)
    {
      if (__OFSUB__(v34, v27))
      {
        goto LABEL_125;
      }

      if (v34 - v27 < a4)
      {
        if (__OFADD__(v27, a4))
        {
          goto LABEL_127;
        }

        if ((v27 + a4) >= v40)
        {
          v41 = v112[1];
        }

        else
        {
          v41 = v27 + a4;
        }

        if (v41 < v27)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v34 != v41)
        {
          break;
        }
      }
    }

    v42 = v34;
    if (v34 < v27)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = v105;
    }

    else
    {
      result = sub_25F5788CC(0, *(v105 + 2) + 1, 1, v105);
      v26 = result;
    }

    a4 = *(v26 + 2);
    v43 = *(v26 + 3);
    v5 = a4 + 1;
    if (a4 >= v43 >> 1)
    {
      result = sub_25F5788CC((v43 > 1), a4 + 1, 1, v26);
      v26 = result;
    }

    *(v26 + 2) = v5;
    v44 = &v26[16 * a4];
    *(v44 + 4) = v27;
    *(v44 + 5) = v42;
    v45 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v42;
    if (a4)
    {
      while (1)
      {
        v46 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v47 = *(v26 + 4);
          v48 = *(v26 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_54:
          if (v50)
          {
            goto LABEL_113;
          }

          v63 = &v26[16 * v5];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_116;
          }

          v69 = &v26[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_120;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v73 = &v26[16 * v5];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_68:
        if (v68)
        {
          goto LABEL_115;
        }

        v76 = &v26[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_118;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v46 - 1;
        if (v46 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v84 = v26;
        v85 = *&v26[16 * a4 + 32];
        v5 = *&v26[16 * v46 + 40];
        sub_25F5C2160(*v112 + *(v110 + 72) * v85, *v112 + *(v110 + 72) * *&v26[16 * v46 + 32], *v112 + *(v110 + 72) * v5, v45);
        if (v6)
        {
        }

        if (v5 < v85)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_25F5C2700(v84);
        }

        if (a4 >= *(v84 + 2))
        {
          goto LABEL_110;
        }

        v86 = &v84[16 * a4];
        *(v86 + 4) = v85;
        *(v86 + 5) = v5;
        v115 = v84;
        result = sub_25F5C2674(v46);
        v26 = v115;
        v5 = *(v115 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v26[16 * v5 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_111;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_112;
      }

      v58 = &v26[16 * v5];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_114;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_117;
      }

      if (v62 >= v54)
      {
        v80 = &v26[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v49 < v83)
        {
          v46 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v24 = v112[1];
    v25 = v106;
    a4 = v101;
    if (v106 >= v24)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v27;
  v87 = *v112;
  v88 = *(v110 + 72);
  v89 = *v112 + v88 * (v34 - 1);
  v90 = -v88;
  v91 = v27 - v34;
  v103 = v88;
  v5 = v87 + v34 * v88;
  v106 = v41;
LABEL_86:
  v108 = v91;
  v109 = v34;
  v107 = v5;
  v92 = v91;
  v111 = v89;
  while (1)
  {
    sub_25F5B6EB8(v5, v23, type metadata accessor for ExtractedMessage);
    sub_25F5B6EB8(v89, v19, type metadata accessor for ExtractedMessage);
    a4 = sub_25F5E3634();
    sub_25F5C2F24(v19, type metadata accessor for ExtractedMessage);
    result = sub_25F5C2F24(v23, type metadata accessor for ExtractedMessage);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v34 = v109 + 1;
      v89 = v111 + v103;
      v91 = v108 - 1;
      v42 = v106;
      v5 = v107 + v103;
      if (v109 + 1 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v27 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for ExtractedMessage;
    v93 = v113;
    sub_25F5C2E68(v5, v113, type metadata accessor for ExtractedMessage);
    swift_arrayInitWithTakeFrontToBack();
    sub_25F5C2E68(v93, v89, type metadata accessor for ExtractedMessage);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v92++, 1))
    {
      goto LABEL_85;
    }
  }

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
  return result;
}

uint64_t sub_25F5C2160(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v45 = type metadata accessor for ExtractedMessage(0);
  v8 = *(*(v45 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v45, v9);
  v47 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10, v12);
  v46 = &v39 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v50 = a1;
  v49 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v20 < 1)
    {
      v28 = a4 + v20;
    }

    else
    {
      v25 = -v16;
      v26 = a4 + v20;
      v27 = v45;
      v28 = a4 + v20;
      v42 = a1;
      v43 = a4;
      v41 = v25;
      do
      {
        v39 = v28;
        v29 = a2 + v25;
        v44 = a2;
        v45 = a2 + v25;
        while (1)
        {
          if (a2 <= a1)
          {
            v50 = a2;
            v48 = v39;
            goto LABEL_59;
          }

          v40 = v28;
          v31 = v27;
          v32 = a3 + v25;
          v33 = v26 + v25;
          v34 = v46;
          sub_25F5B6EB8(v33, v46, type metadata accessor for ExtractedMessage);
          v35 = v29;
          v36 = v47;
          sub_25F5B6EB8(v35, v47, type metadata accessor for ExtractedMessage);
          v37 = sub_25F5E3634();
          sub_25F5C2F24(v36, type metadata accessor for ExtractedMessage);
          sub_25F5C2F24(v34, type metadata accessor for ExtractedMessage);
          if (v37)
          {
            break;
          }

          v28 = v33;
          if (a3 < v26 || v32 >= v26)
          {
            a3 = v32;
            v27 = v31;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v42;
          }

          else
          {
            v38 = a3 == v26;
            a3 = v32;
            v27 = v31;
            a1 = v42;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v33;
          a2 = v44;
          v30 = v33 > v43;
          v29 = v45;
          v25 = v41;
          if (!v30)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v44 || v32 >= v44)
        {
          a3 = v32;
          v27 = v31;
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v41;
          a1 = v42;
          v28 = v40;
        }

        else
        {
          v38 = a3 == v44;
          a3 = v32;
          v27 = v31;
          a2 = v45;
          v25 = v41;
          a1 = v42;
          v28 = v40;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v28;
  }

  else
  {
    v19 = v18 * v16;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v44 = a4 + v19;
    v48 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      do
      {
        v22 = v46;
        sub_25F5B6EB8(a2, v46, type metadata accessor for ExtractedMessage);
        v23 = v47;
        sub_25F5B6EB8(a4, v47, type metadata accessor for ExtractedMessage);
        v24 = sub_25F5E3634();
        sub_25F5C2F24(v23, type metadata accessor for ExtractedMessage);
        sub_25F5C2F24(v22, type metadata accessor for ExtractedMessage);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v16;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v16)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v16;
          a4 += v16;
        }

        a1 += v16;
        v50 = a1;
      }

      while (a4 < v44 && a2 < a3);
    }
  }

LABEL_59:
  sub_25F5C2714(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_25F5C2674(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F5C2700(v3);
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

uint64_t sub_25F5C2714(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ExtractedMessage(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_25F5C284C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_25F5C28A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25F5C290C(uint64_t a1)
{
  v1 = *(a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9DEE8, &unk_25F5E7910);
  sub_25F5E4C64();
  result = sub_25F5E47F4();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    sub_25F5E46A4();
    result = sub_25F5E47F4();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25F5C2A68(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_25F5C2B38(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_25F5C2BE8()
{
  sub_25F5C3254(319, &qword_27FD9E608, 0x277D06D78);
  if (v0 <= 0x3F)
  {
    sub_25F5C3254(319, &unk_27FD9E610, 0x277D06D60);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ECMessageBodyStringAccumulatorOptions(319);
      if (v2 <= 0x3F)
      {
        sub_25F5B2AE4();
        if (v3 <= 0x3F)
        {
          sub_25F5C2DB4(319, &qword_27FD9E620);
          if (v4 <= 0x3F)
          {
            sub_25F5C2D4C();
            if (v5 <= 0x3F)
            {
              sub_25F5C2DB4(319, &unk_27FD9E638);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_25F5C2D4C()
{
  if (!qword_27FD9E628)
  {
    sub_25F5C3254(255, &qword_27FD9E630, 0x277D06DB8);
    v0 = sub_25F5E4674();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD9E628);
    }
  }
}

void sub_25F5C2DB4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25F5E47F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_25F5C2E14()
{
  result = qword_27FD9E648;
  if (!qword_27FD9E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E648);
  }

  return result;
}

uint64_t sub_25F5C2E68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F5C2F24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_25F5C2F84()
{
  v1 = type metadata accessor for MessageExtractor();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v1[9];
  v7 = sub_25F5E3694();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v5 + v6, v7);
  }

  v9 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v5 + v1[11] + 8);

  v11 = *(v5 + v1[12] + 8);

  v12 = *(v5 + v1[14]);

  return MEMORY[0x2821FE8E8](v0, v9 + 8, v2 | 7);
}

uint64_t sub_25F5C3100(uint64_t a1)
{
  v4 = *(type metadata accessor for MessageExtractor() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F5BFFE8;

  return sub_25F5BD150(a1, v1 + v5, v6);
}

uint64_t sub_25F5C320C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25F5C3254(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25F5C329C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void sub_25F5C3330(void *a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E6C0, &unk_25F5EA7B0) - 8) + 80);

  sub_25F5BFBC4(a1);
}

uint64_t sub_25F5C33BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_25F5C3408(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    return a2;
  }

  return result;
}

uint64_t sub_25F5C3440(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16);
    v3 = *(type metadata accessor for ExtractedItem(0) - 8);
    v4 = a2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    return a2;
  }

  return result;
}

uint64_t sub_25F5C34D8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  if (v3 < a2)
  {

    return v2;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134218240;
    *(v8 + 4) = v3;

    *(v8 + 12) = 2048;
    *(v8 + 14) = a2;
    _os_log_impl(&dword_25F56A000, v6, v7, "Subsampling from %ld to %ld items.", v8, 0x16u);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  else
  {
  }

  sub_25F5C7558();
  v12 = sub_25F5C3440(a2, v2);
  if ((v11 & 1) == 0)
  {
LABEL_9:
    sub_25F5C722C(v12, v9, v10, v11);
    v2 = v13;
    swift_unknownObjectRelease();
    return v2;
  }

  v14 = v11;
  v15 = v10;
  v16 = v9;
  sub_25F5E4B94();
  swift_unknownObjectRetain_n();
  v17 = swift_dynamicCastClass();
  if (!v17)
  {
    swift_unknownObjectRelease();
    v17 = MEMORY[0x277D84F90];
  }

  v18 = *(v17 + 16);

  if (__OFSUB__(v14 >> 1, v15))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v18 != (v14 >> 1) - v15)
  {
LABEL_18:
    swift_unknownObjectRelease();
    v11 = v14;
    v10 = v15;
    v9 = v16;
    goto LABEL_9;
  }

  v2 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v2)
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F90];
  }

  return v2;
}

__n128 ExtractMorpheusParameters.init(morpheusProgram:samplingSize:generativeModelsAvailabilityType:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  v5 = a1[1].n128_u8[0];
  v6 = *a4;
  v7 = *(a4 + 8);
  a5[2].n128_u64[1] = 1;
  a5[3].n128_u8[0] = 0;
  result = *a1;
  *a5 = *a1;
  a5[1].n128_u8[0] = v5;
  a5[1].n128_u64[1] = a2;
  a5[2].n128_u8[0] = a3 & 1;
  a5[3].n128_u64[1] = v6;
  a5[4].n128_u8[0] = v7;
  return result;
}

unint64_t sub_25F5C3738()
{
  v1 = 0x7375656870726F6DLL;
  v2 = 0x6C706D61536E696DLL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000020;
  }

  if (*v0)
  {
    v1 = 0x676E696C706D6173;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5C37D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5C7974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5C3800(uint64_t a1)
{
  v2 = sub_25F5C3BE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5C383C(uint64_t a1)
{
  v2 = sub_25F5C3BE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractMorpheusParameters.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6E0, qword_25F5EA7D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v26 - v9;
  v48 = 1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5C3BE4();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v32) = 0;
  sub_25F5741E8();
  sub_25F5E4AD4();
  v12 = v37;
  v31 = v38;
  v51 = v39;
  LOBYTE(v37) = 1;
  v30 = sub_25F5E4A74();
  v50 = v13 & 1;
  LOBYTE(v37) = 2;
  v29 = sub_25F5E4A74();
  v49 = v14 & 1;
  v52 = 3;
  sub_25F5A9858();
  sub_25F5E4A84();
  (*(v6 + 8))(v10, v5);
  v26 = v46;
  v15 = v47;
  v48 = v47;
  v28 = v12;
  *&v32 = v12;
  v16 = v31;
  *(&v32 + 1) = v31;
  v27 = v51;
  LOBYTE(v33) = v51;
  v17 = v30;
  *(&v33 + 1) = v30;
  v18 = v50;
  LOBYTE(v34) = v50;
  v19 = v29;
  *(&v34 + 1) = v29;
  v20 = v49;
  LOBYTE(v35) = v49;
  *(&v35 + 1) = v46;
  v36 = v47;
  v21 = v32;
  v22 = v33;
  v23 = v34;
  v24 = v35;
  *(a2 + 64) = v47;
  *(a2 + 32) = v23;
  *(a2 + 48) = v24;
  *a2 = v21;
  *(a2 + 16) = v22;
  sub_25F5C3C38(&v32, &v37);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v37 = v28;
  v38 = v16;
  v39 = v27;
  v40 = v17;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v26;
  v45 = v15;
  return sub_25F5C3C70(&v37);
}

unint64_t sub_25F5C3BE4()
{
  result = qword_27FD9E6E8;
  if (!qword_27FD9E6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E6E8);
  }

  return result;
}

unint64_t sub_25F5C3CA0(uint64_t a1)
{
  result = sub_25F5A9E5C();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F5C3D04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F5C3D4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F5C3DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 80);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25F5C3EA8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 80) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MorpheusExtractor()
{
  result = qword_27FD9E6F0;
  if (!qword_27FD9E6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25F5C3FA4()
{
  sub_25F5B2AE4();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_25F5C402C()
{
  result = qword_27FD9E700;
  if (!qword_27FD9E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E700);
  }

  return result;
}

unint64_t sub_25F5C4084()
{
  result = qword_27FD9E708;
  if (!qword_27FD9E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E708);
  }

  return result;
}

unint64_t sub_25F5C40DC()
{
  result = qword_27FD9E710;
  if (!qword_27FD9E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E710);
  }

  return result;
}

uint64_t sub_25F5C4130(uint64_t a1)
{
  v2[47] = a1;
  v2[48] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40) - 8) + 64) + 15;
  v2[49] = swift_task_alloc();
  v4 = sub_25F5E3774();
  v2[50] = v4;
  v5 = *(v4 - 8);
  v2[51] = v5;
  v6 = *(v5 + 64) + 15;
  v2[52] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230) - 8) + 64) + 15;
  v2[53] = swift_task_alloc();
  v8 = sub_25F5E3794();
  v2[54] = v8;
  v9 = *(v8 - 8);
  v2[55] = v9;
  v10 = *(v9 + 64) + 15;
  v2[56] = swift_task_alloc();
  v11 = type metadata accessor for ExtractedItem(0);
  v2[57] = v11;
  v12 = *(v11 - 8);
  v2[58] = v12;
  v13 = *(v12 + 64) + 15;
  v2[59] = swift_task_alloc();
  v2[60] = swift_task_alloc();
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v14 = sub_25F5E3694();
  v2[63] = v14;
  v15 = *(v14 - 8);
  v2[64] = v15;
  v16 = *(v15 + 64) + 15;
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();
  v2[69] = swift_task_alloc();
  v2[70] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  v2[71] = swift_task_alloc();
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();
  v2[75] = swift_task_alloc();
  v2[76] = swift_task_alloc();
  v2[77] = swift_task_alloc();
  v2[78] = swift_task_alloc();
  v2[79] = swift_task_alloc();
  v18 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240) - 8) + 64) + 15;
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5C44C8, 0, 0);
}

uint64_t sub_25F5C44C8()
{
  v277 = v0;
  v1 = v0;
  v2 = *(v0 + 384);
  if (v2[2])
  {
    sub_25F5A31D0();
    swift_allocError();
    v4 = 10;
    goto LABEL_3;
  }

  v6 = *v2;
  v5 = v2[1];
  sub_25F5E4024();
  v7 = 0x27FD9D000uLL;
  sub_25F5E4014();
  sub_25F571A78(MEMORY[0x277D84F90]);
  sub_25F5E4004();

  if (!*(v1 + 72))
  {
    sub_25F57C148(v1 + 48, &qword_27FD9DD20, &unk_25F5E6DE0);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_73:
      v139 = sub_25F5E3FB4();
      __swift_project_value_buffer(v139, qword_27FD9EA20);
      v140 = sub_25F5E3F94();
      v141 = sub_25F5E47B4();
      if (os_log_type_enabled(v140, v141))
      {
        v142 = swift_slowAlloc();
        *v142 = 0;
        _os_log_impl(&dword_25F56A000, v140, v141, "Running Morpheus program failed: Returned nil.", v142, 2u);
        MEMORY[0x25F8E3B70](v142, -1, -1);
      }

      sub_25F5A31D0();
      v143 = swift_allocError();
      *v144 = 11;
      swift_willThrow();

      goto LABEL_5;
    }

LABEL_115:
    swift_once();
    goto LABEL_73;
  }

  sub_25F571D88((v1 + 48), (v1 + 16));
  sub_25F5E3FD4();
  sub_25F573A4C(v1 + 80, v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DC90, &qword_25F5E68F0);
  if (!swift_dynamicCast())
  {
    sub_25F5A31D0();
    v143 = swift_allocError();
    *v145 = 12;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
LABEL_5:
    if (*(v7 + 2224) != -1)
    {
      swift_once();
    }

    v8 = sub_25F5E3FB4();
    __swift_project_value_buffer(v8, qword_27FD9EA20);
    v9 = v143;
    v10 = sub_25F5E3F94();
    v11 = sub_25F5E47B4();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = v143;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_25F56A000, v10, v11, "Running Morpheus program failed with error: %@", v12, 0xCu);
      sub_25F57C148(v13, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v13, -1, -1);
      MEMORY[0x25F8E3B70](v12, -1, -1);
    }

    sub_25F5A31D0();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();

    goto LABEL_10;
  }

  v30 = *(v1 + 352);
  v31 = *(v30 + 16);
  v272 = v1;
  if (!v31)
  {
    v220 = MEMORY[0x277D84F90];
    goto LABEL_84;
  }

  v32 = 0;
  v33 = *(v1 + 512);
  v242 = (v33 + 48);
  v222 = (v33 + 16);
  v232 = (v33 + 8);
  v235 = (v33 + 32);
  v203 = (*(v1 + 408) + 8);
  v204 = (*(v1 + 440) + 8);
  v34 = v30 + 32;
  v206 = v31 - 1;
  v205 = *(v1 + 464);
  v208 = *(v1 + 456);
  v220 = MEMORY[0x277D84F90];
  v239 = *(v1 + 352);
  v225 = *(v30 + 16);
  v207 = v30 + 32;
  do
  {
    v35 = v34 + 32 * v32;
    v36 = v32;
    v7 = &unk_25F5EA410;
    while (1)
    {
      if (v36 >= *(v30 + 16))
      {
        __break(1u);
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      sub_25F573A4C(v35, v1 + 144);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_80;
      }

      v44 = *(v1 + 360);
      if (*(v44 + 16) != 6)
      {

LABEL_80:

        sub_25F5A31D0();
        v143 = swift_allocError();
        *v146 = 13;
        swift_willThrow();

LABEL_82:
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
        __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
        v7 = 0x27FD9D000;
        goto LABEL_5;
      }

      sub_25F5C6234(*(v1 + 360), *(v1 + 664));
      if (*(v44 + 16) < 2uLL)
      {
        goto LABEL_114;
      }

      sub_25F573A4C(v44 + 64, v1 + 176);
      if (!swift_dynamicCast())
      {
        v147 = *(v1 + 664);

        sub_25F5A31D0();
        v143 = swift_allocError();
        *v148 = 13;
        swift_willThrow();

        sub_25F57C148(v147, &qword_27FD9DE10, &unk_25F5E7240);
        goto LABEL_82;
      }

      v252 = v35;
      v257 = v36;
      v45 = *(v1 + 632);
      v46 = *(v1 + 624);
      v47 = *(v1 + 504);
      v228 = *(v1 + 304);
      v261 = *(v1 + 312);
      sub_25F5C64C4(v44, v45);
      sub_25F573B94(v45, v46, &unk_27FD9E500, &unk_25F5EA410);
      v48 = *v242;
      if ((*v242)(v46, 1, v47) == 1)
      {
        sub_25F57C148(*(v1 + 624), &unk_27FD9E500, &unk_25F5EA410);
        goto LABEL_38;
      }

      v49 = *(v1 + 616);
      v46 = *(v1 + 504);
      v50 = *(v1 + 384);
      v51 = *v235;
      (*v235)(*(v1 + 560), *(v1 + 624), v46);
      v52 = type metadata accessor for MorpheusExtractor();
      sub_25F573B94(v50 + *(v52 + 24), v49, &unk_27FD9E500, &unk_25F5EA410);
      v53 = v48(v49, 1, v46);
      v54 = *(v1 + 560);
      if (v53 == 1)
      {
        v83 = *(v1 + 616);
        (*v232)(*(v1 + 560), *(v1 + 504));
        sub_25F57C148(v83, &unk_27FD9E500, &unk_25F5EA410);
        goto LABEL_38;
      }

      v51(*(v1 + 552), *(v1 + 616), *(v1 + 504));
      if ((sub_25F5E3634() & 1) == 0)
      {
        break;
      }

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v55 = *(v1 + 664);
      v56 = *(v1 + 656);
      v57 = *(v1 + 560);
      v58 = *(v1 + 544);
      v59 = *(v1 + 504);
      v60 = sub_25F5E3FB4();
      __swift_project_value_buffer(v60, qword_27FD9EA20);
      sub_25F573B94(v55, v56, &qword_27FD9DE10, &unk_25F5E7240);
      (*v222)(v58, v57, v59);
      v61 = sub_25F5E3F94();
      v62 = sub_25F5E4794();
      if (os_log_type_enabled(v61, v62))
      {
        v267 = v62;
        v63 = *(v1 + 656);
        v64 = *(v1 + 648);
        v65 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        v262 = swift_slowAlloc();
        v276 = v262;
        *v65 = 138412546;
        sub_25F573B94(v63, v64, &qword_27FD9DE10, &unk_25F5E7240);
        v66 = sub_25F5E36D4();
        v67 = *(v66 - 8);
        v68 = (*(v67 + 48))(v64, 1, v66);
        v69 = *(v1 + 656);
        v70 = *(v1 + 648);
        if (v68 == 1)
        {
          sub_25F57C148(v70, &qword_27FD9DE10, &unk_25F5E7240);
          sub_25F57C148(v69, &qword_27FD9DE10, &unk_25F5E7240);
          v71 = 0;
        }

        else
        {
          v72 = sub_25F5E36A4();
          v74 = v73;
          sub_25F5BA894();
          swift_allocError();
          *v75 = v72;
          v75[1] = v74;
          v1 = v272;
          (*(v67 + 8))(v70, v66);
          v71 = _swift_stdlib_bridgeErrorToNSError();
          sub_25F57C148(v69, &qword_27FD9DE10, &unk_25F5E7240);
        }

        v212 = *(v1 + 632);
        v214 = *(v1 + 664);
        v209 = *(v1 + 552);
        v210 = *(v1 + 560);
        v76 = *(v1 + 544);
        v77 = *(v1 + 504);
        *(v65 + 4) = v71;
        *v229 = v71;
        *(v65 + 12) = 2080;
        sub_25F5C7830(&qword_27FD9E498);
        v78 = sub_25F5E4B44();
        v80 = v79;
        v81 = *v232;
        (*v232)(v76, v77);
        v82 = sub_25F570AF8(v78, v80, &v276);

        *(v65 + 14) = v82;
        _os_log_impl(&dword_25F56A000, v61, v267, "Skipping item %@ because it occurred before specified date: %s", v65, 0x16u);
        sub_25F57C148(v229, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v229, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v262);
        MEMORY[0x25F8E3B70](v262, -1, -1);
        MEMORY[0x25F8E3B70](v65, -1, -1);

        v81(v209, v77);
        v81(v210, v77);
        v1 = v272;
        sub_25F57C148(v212, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v214, &qword_27FD9DE10, &unk_25F5E7240);
      }

      else
      {
        v266 = *(v1 + 664);
        v37 = *(v1 + 656);
        v38 = *(v1 + 632);
        v39 = *(v1 + 560);
        v40 = *(v1 + 552);
        v41 = *(v1 + 544);
        v42 = *(v1 + 504);

        v43 = *v232;
        (*v232)(v41, v42);
        sub_25F57C148(v37, &qword_27FD9DE10, &unk_25F5E7240);
        v43(v40, v42);
        v43(v39, v42);
        v7 = &unk_25F5EA410;
        sub_25F57C148(v38, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v266, &qword_27FD9DE10, &unk_25F5E7240);
      }

      v36 = v257 + 1;
      v35 = v252 + 32;
      v30 = v239;
      if (v225 == v257 + 1)
      {
        v7 = 0x27FD9D000uLL;
        goto LABEL_84;
      }
    }

    v84 = *(v1 + 560);
    v46 = *(v1 + 504);
    v85 = *v232;
    (*v232)(*(v1 + 552), v46);
    v85(v84, v46);
LABEL_38:
    if (*(v44 + 16) < 4uLL)
    {
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    sub_25F573A4C(v44 + 128, v1 + 208);
    if (!swift_dynamicCast())
    {
      goto LABEL_44;
    }

    v86 = *(v1 + 328);
    v87 = HIBYTE(v86) & 0xF;
    v268 = *(v1 + 320);
    if ((v86 & 0x2000000000000000) == 0)
    {
      v87 = v268 & 0xFFFFFFFFFFFFLL;
    }

    if (!v87)
    {

LABEL_44:
      v268 = 0;
      v86 = 0;
    }

    if (*(v44 + 16) < 5uLL)
    {
      goto LABEL_117;
    }

    sub_25F573A4C(v44 + 160, v1 + 240);
    if (!swift_dynamicCast())
    {
      goto LABEL_51;
    }

    v88 = *(v1 + 336);
    v46 = *(v1 + 344);
    v89 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v89 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (!v89)
    {
      v90 = *(v1 + 344);

LABEL_51:
      v88 = 0;
      v46 = 0;
    }

    v91 = sub_25F571FC4(MEMORY[0x277D84F90]);
    if (*(v44 + 16) < 6uLL)
    {
      goto LABEL_118;
    }

    v92 = v91;
    sub_25F573A4C(v44 + 192, v1 + 272);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDF8, &unk_25F5E7220);
    v253 = v46;
    v211 = v88;
    if (swift_dynamicCast())
    {

      v215 = sub_25F5701E8(*(v1 + 368));
    }

    else
    {
      v215 = v92;
    }

    v93 = *(v1 + 640);
    v94 = *(v1 + 632);
    v95 = *(v1 + 608);
    v96 = *(v1 + 488);
    v97 = *(v1 + 448);
    sub_25F573B94(*(v1 + 664), v93, &qword_27FD9DE10, &unk_25F5E7240);
    sub_25F573B94(v94, v95, &unk_27FD9E500, &unk_25F5EA410);
    *(v96 + v208[6]) = 0;
    sub_25F571FC4(MEMORY[0x277D84F90]);
    v98 = v208;
    sub_25F5E3754();
    sub_25F573B94(v93, v96, &qword_27FD9DE10, &unk_25F5E7240);
    v99 = (v96 + v208[5]);
    *v99 = v228;
    v99[1] = v261;
    sub_25F573B94(v95, v96 + v208[7], &unk_27FD9E500, &unk_25F5EA410);
    v100 = v86;
    v101 = v268;
    if (!v86)
    {
      v102 = *(v1 + 448);
      v104 = *(v1 + 416);
      v103 = *(v1 + 424);
      v105 = *(v1 + 400);
      sub_25F5E3784();
      sub_25F5E3764();
      (*v203)(v104, v105);
      v106 = sub_25F5E3704();
      v107 = *(v106 - 8);
      v108 = (*(v107 + 48))(v103, 1, v106);
      v109 = *(v1 + 424);
      if (v108 == 1)
      {
        sub_25F57C148(*(v1 + 424), &qword_27FD9DE08, &unk_25F5E7230);
        v101 = 0;
        v100 = 0;
      }

      else
      {
        v101 = sub_25F5E36F4();
        v100 = v110;
        (*(v107 + 8))(v109, v106);
      }
    }

    v111 = (*(v1 + 488) + v208[8]);
    *v111 = v101;
    v111[1] = v100;
    v112 = v253;
    if (v253)
    {
      v113 = *(v1 + 640);
      v114 = *(v1 + 608);
      (*v204)(*(v1 + 448), *(v1 + 432));
      sub_25F57C148(v114, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v113, &qword_27FD9DE10, &unk_25F5E7240);

      v7 = 0x27FD9D000;
      v115 = v211;
    }

    else
    {
      v116 = *(v1 + 448);
      v117 = *(v1 + 392);
      sub_25F5E3744();
      v118 = sub_25F5E3734();
      v119 = *(v118 - 8);
      v120 = (*(v119 + 48))(v117, 1, v118);
      v121 = *(v1 + 640);
      v122 = *(v1 + 608);
      v123 = *(v1 + 448);
      v124 = *(v1 + 432);
      v125 = *(v1 + 392);
      v7 = 0x27FD9D000;
      if (v120 == 1)
      {
        (*v204)(*(v1 + 448), *(v1 + 432));
        sub_25F57C148(v122, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v121, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v125, &qword_27FD9DE00, &unk_25F5E9D40);

        v115 = 0;
        v112 = 0;
      }

      else
      {
        v126 = sub_25F5E36F4();
        v112 = v127;
        v128 = v123;
        v115 = v126;
        (*v204)(v128, v124);
        sub_25F57C148(v122, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v121, &qword_27FD9DE10, &unk_25F5E7240);
        (*(v119 + 8))(v125, v118);
      }

      v98 = v208;
    }

    v129 = *(v1 + 488);
    v130 = *(v1 + 496);
    v131 = *(v1 + 480);
    v132 = v98[10];
    v133 = (v129 + v98[9]);
    *v133 = v115;
    v133[1] = v112;
    *(v129 + v132) = v215;
    sub_25F57B6DC(v129, v130);
    sub_25F57B808(v130, v131);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v220 = sub_25F57851C(0, v220[2] + 1, 1, v220);
    }

    v135 = v220[2];
    v134 = v220[3];
    if (v135 >= v134 >> 1)
    {
      v220 = sub_25F57851C(v134 > 1, v135 + 1, 1, v220);
    }

    v32 = v257 + 1;
    v136 = *(v1 + 664);
    v137 = *(v1 + 632);
    v138 = *(v1 + 480);
    sub_25F57B8D4(*(v1 + 496));
    sub_25F57C148(v137, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v136, &qword_27FD9DE10, &unk_25F5E7240);
    v220[2] = v135 + 1;
    sub_25F57B6DC(v138, v220 + ((*(v205 + 80) + 32) & ~*(v205 + 80)) + *(v205 + 72) * v135);
    v34 = v207;
    v30 = v239;
  }

  while (v206 != v257);
LABEL_84:
  v149 = *(v1 + 384);

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  if (*(v149 + 32))
  {
LABEL_90:
    v247 = *(*(v1 + 512) + 56);
    v247(*(v1 + 376), 1, 1, *(v1 + 504));
    v157 = v220[2];
    if (v157)
    {
      v158 = *(v1 + 512);
      v159 = *(v1 + 464);
      v263 = *(v1 + 472);
      v258 = *(*(v1 + 456) + 28);
      v160 = v220 + ((*(v159 + 80) + 32) & ~*(v159 + 80));
      v254 = *(v159 + 72);
      v274 = (v158 + 48);
      v161 = (v158 + 32);
      v236 = (v158 + 8);

      do
      {
        v162 = *(v1 + 600);
        v163 = *(v1 + 504);
        v164 = *(v1 + 472);
        sub_25F57B808(v160, v164);
        sub_25F573B94(v263 + v258, v162, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57B8D4(v164);
        v165 = *v274;
        if ((*v274)(v162, 1, v163) == 1)
        {
          sub_25F57C148(*(v1 + 600), &unk_27FD9E500, &unk_25F5EA410);
        }

        else
        {
          v166 = *(v1 + 592);
          v167 = *(v1 + 504);
          v168 = *(v1 + 376);
          v269 = *v161;
          (*v161)(*(v1 + 536), *(v1 + 600), v167);
          sub_25F573B94(v168, v166, &unk_27FD9E500, &unk_25F5EA410);
          v169 = v165(v166, 1, v167);
          v170 = *(v1 + 592);
          if (v169 == 1)
          {
            v243 = *(v1 + 536);
            v171 = *(v1 + 504);
            v172 = *(v1 + 376);
            sub_25F57C148(v172, &unk_27FD9E500, &unk_25F5EA410);
            sub_25F57C148(v170, &unk_27FD9E500, &unk_25F5EA410);
            v269(v172, v243, v171);
            v247(v172, 0, 1, v171);
          }

          else
          {
            v244 = *(v1 + 584);
            v173 = *(v1 + 536);
            v174 = *(v1 + 528);
            v175 = *(v272 + 504);
            v176 = *(v272 + 376);
            v269(v174, v170, v175);
            sub_25F5C7830(&qword_27FD9E490);
            v177 = sub_25F5E4384();
            sub_25F57C148(v176, &unk_27FD9E500, &unk_25F5EA410);
            if (v177)
            {
              v178 = v173;
            }

            else
            {
              v178 = v174;
            }

            if (v177)
            {
              v179 = v174;
            }

            else
            {
              v179 = v173;
            }

            (*v236)(v178, v175);
            v269(v244, v179, v175);
            v180 = v175;
            v1 = v272;
            v247(v244, 0, 1, v180);
            sub_25F5B6F80(v244, v176);
          }
        }

        v160 += v254;
        --v157;
      }

      while (v157);
    }

    else
    {
    }

    v181 = *(v1 + 576);
    v183 = *(v1 + 504);
    v182 = *(v1 + 512);
    sub_25F573B94(*(v1 + 376), v181, &unk_27FD9E500, &unk_25F5EA410);
    v184 = (*(v182 + 48))(v181, 1, v183);
    v185 = *(v1 + 576);
    if (v184 == 1)
    {
      sub_25F57C148(*(v1 + 576), &unk_27FD9E500, &unk_25F5EA410);
    }

    else
    {
      v186 = *(v1 + 568);
      v187 = *(v1 + 520);
      v188 = *(v1 + 504);
      v189 = *(v1 + 512);
      v190 = *(v1 + 376);
      (*(v189 + 32))(v187, *(v1 + 576), v188);
      sub_25F5E3654();
      sub_25F5E3644();
      (*(v189 + 8))(v187, v188);
      sub_25F57C148(v190, &unk_27FD9E500, &unk_25F5EA410);
      v247(v186, 0, 1, v188);
      sub_25F5B6F80(v186, v190);
    }

    v191 = *(v1 + 664);
    v192 = *(v1 + 656);
    v193 = *(v1 + 648);
    v194 = *(v1 + 640);
    v195 = *(v1 + 632);
    v196 = *(v1 + 624);
    v197 = *(v1 + 616);
    v198 = *(v1 + 608);
    v199 = *(v1 + 600);
    v200 = v1;
    v201 = *(v1 + 592);
    v216 = v200[73];
    loga = v200[72];
    v223 = v200[71];
    v226 = v200[70];
    v230 = v200[69];
    v233 = v200[68];
    v237 = v200[67];
    v240 = v200[66];
    v245 = v200[65];
    v248 = v200[62];
    v250 = v200[61];
    v255 = v200[60];
    v259 = v200[59];
    v264 = v200[56];
    v270 = v200[53];
    v273 = v200[52];
    v275 = v200[49];

    v202 = v200[1];

    return v202(v220);
  }

  v46 = *(v149 + 24);
  if (v220[2] >= v46)
  {
    v155 = *(v1 + 384);
    v156 = sub_25F5C34D8(v220, v46);

    v220 = v156;
    goto LABEL_90;
  }

  if (*(v7 + 2224) != -1)
  {
LABEL_119:
    swift_once();
  }

  v150 = sub_25F5E3FB4();
  __swift_project_value_buffer(v150, qword_27FD9EA20);

  v151 = sub_25F5E3F94();
  v152 = sub_25F5E47B4();
  if (os_log_type_enabled(v151, v152))
  {
    v153 = swift_slowAlloc();
    *v153 = 134218240;
    v154 = v220[2];

    *(v153 + 4) = v154;

    *(v153 + 12) = 2048;
    *(v153 + 14) = v46;
    _os_log_impl(&dword_25F56A000, v151, v152, "Extracted items %ld less than required sample size %ld.", v153, 0x16u);
    MEMORY[0x25F8E3B70](v153, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  sub_25F5A31D0();
  swift_allocError();
  v4 = 7;
LABEL_3:
  *v3 = v4;
  swift_willThrow();
LABEL_10:
  v17 = *(v1 + 664);
  v18 = v1;
  v19 = *(v1 + 656);
  v20 = v18[81];
  v21 = v18[80];
  v22 = v18[79];
  v23 = v18[78];
  v24 = v18[77];
  v25 = v18[76];
  v26 = v18[75];
  v27 = v18[74];
  v213 = v18[73];
  log = v18[72];
  v219 = v18[71];
  v221 = v18[70];
  v224 = v18[69];
  v227 = v18[68];
  v231 = v18[67];
  v234 = v18[66];
  v238 = v18[65];
  v241 = v18[62];
  v246 = v18[61];
  v249 = v18[60];
  v251 = v18[59];
  v256 = v18[56];
  v260 = v18[53];
  v265 = v18[52];
  v271 = v18[49];

  v28 = v18[1];

  return v28();
}

uint64_t sub_25F5C6234@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  sub_25F573A4C(a1 + 32, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v4 = sub_25F5E36D4();
    return (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  }

  v3 = v32 >> 62;
  if ((v32 >> 62) > 1)
  {
    if (v3 != 2)
    {
LABEL_17:
      sub_25F5E36B4();
      sub_25F571820(v31, v32);
      v30 = sub_25F5E36D4();
      return (*(*(v30 - 8) + 56))(a2, 0, 1, v30);
    }

    v6 = *(v31 + 16);
    v7 = sub_25F5E3494();
    if (!v7)
    {
      goto LABEL_22;
    }

    v8 = v7;
    v9 = sub_25F5E34C4();
    if (!__OFSUB__(v6, v9))
    {
      v10 = (v6 - v9 + v8);
      sub_25F5E34B4();
      if (v10)
      {
LABEL_16:
        v14 = *v10;
        v15 = v10[1];
        v16 = v10[2];
        v17 = v10[3];
        v18 = v10[4];
        v19 = v10[5];
        v20 = v10[6];
        v21 = v10[7];
        v22 = v10[8];
        v23 = v10[9];
        v24 = v10[10];
        v25 = v10[11];
        v26 = v10[12];
        v27 = v10[13];
        v28 = v10[14];
        v29 = v10[15];
        goto LABEL_17;
      }

      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (!v3)
  {
    goto LABEL_17;
  }

  if (v31 > v31 >> 32)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    sub_25F5E34B4();
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v11 = sub_25F5E3494();
  if (!v11)
  {
LABEL_24:
    result = sub_25F5E34B4();
    __break(1u);
    goto LABEL_25;
  }

  v12 = v11;
  v13 = sub_25F5E34C4();
  if (__OFSUB__(v31, v13))
  {
    goto LABEL_21;
  }

  v10 = (v31 - v13 + v12);
  result = sub_25F5E34B4();
  if (v10)
  {
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_25F5C64C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v18 - v8;
  if (*(a1 + 16) < 3uLL)
  {
    __break(1u);
    return result;
  }

  sub_25F573A4C(a1 + 96, v20);
  if (swift_dynamicCast())
  {
    sub_25F5E3644();
    v10 = sub_25F5E3694();
    return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
  }

  sub_25F573A4C(a1 + 96, v20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v11 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {

LABEL_11:
    v16 = sub_25F5E3694();
    return (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v13 = sub_25F5E43C4();

  v14 = [v12 dateFromString_];

  if (v14)
  {
    sub_25F5E3674();

    v15 = 0;
    v12 = v14;
  }

  else
  {
    v15 = 1;
  }

  v17 = sub_25F5E3694();
  (*(*(v17 - 8) + 56))(v9, v15, 1, v17);
  return sub_25F5B6F80(v9, a2);
}

uint64_t sub_25F5C672C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5C4130(a1);
}

void *sub_25F5C67C4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E720, &unk_25F5EAA20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E540, &qword_25F5E9D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F5C68F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E718, &qword_25F5EAA18);
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

char *sub_25F5C6A08(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
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

char *sub_25F5C6B3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
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

char *sub_25F5C6C40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDD8, &qword_25F5E71F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_25F5C6D88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

size_t sub_25F5C6F64(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD98, &unk_25F5E7190);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_25F5C7154(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE0, &qword_25F5E71F8);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_25F5C722C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE8, &unk_25F5E7208);
      v7 = *(type metadata accessor for ExtractedItem(0) - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        v13 = *(type metadata accessor for ExtractedItem(0) - 8);
        v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
        v15 = *(v13 + 72);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_25F5C73CC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v21 = 0;
      MEMORY[0x25F8E3B80](&v21, 8);
      v6 = (v21 * v2) >> 64;
      if (v2 > v21 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v21 * v2)
        {
          do
          {
            v21 = 0;
            MEMORY[0x25F8E3B80](&v21, 8);
          }

          while (v7 > v21 * v2);
          v6 = (v21 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = &v1[16 * v4 + 32];
        v12 = *v10;
        v11 = *(v10 + 1);
        v13 = &v1[16 * v8 + 32];
        v15 = *v13;
        v14 = *(v13 + 1);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_25F5C7784(v1);
        }

        if (v4 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v4 + 32];
        v17 = *(v16 + 1);
        *v16 = v15;
        *(v16 + 1) = v14;

        if (v8 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v18 = &v1[16 * v8 + 32];
        v19 = *(v18 + 1);
        *v18 = v12;
        *(v18 + 1) = v11;

        *v20 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

uint64_t sub_25F5C7558()
{
  v1 = type metadata accessor for ExtractedItem(0);
  v25 = *(v1 - 8);
  v2 = *(v25 + 64);
  v4 = MEMORY[0x28223BE20](v1 - 8, v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4, v7);
  v26 = &v22 - v9;
  v24 = v0;
  v10 = *v0;
  v11 = *(*v0 + 16);
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    v13 = 0;
    v23 = v11 - 2;
    while (1)
    {
      v27 = 0;
      result = MEMORY[0x25F8E3B80](&v27, 8);
      v15 = (v27 * v11) >> 64;
      if (v11 > v27 * v11)
      {
        v16 = -v11 % v11;
        if (v16 > v27 * v11)
        {
          do
          {
            v27 = 0;
            result = MEMORY[0x25F8E3B80](&v27, 8);
          }

          while (v16 > v27 * v11);
          v15 = (v27 * v11) >> 64;
        }
      }

      v17 = v13 + v15;
      if (__OFADD__(v13, v15))
      {
        break;
      }

      if (v13 != v17)
      {
        v18 = v10[2];
        if (v13 >= v18)
        {
          goto LABEL_19;
        }

        v19 = (*(v25 + 80) + 32) & ~*(v25 + 80);
        v20 = *(v25 + 72);
        result = sub_25F57B808(v10 + v19 + v20 * v13, v26);
        if (v17 >= v18)
        {
          goto LABEL_20;
        }

        sub_25F57B808(v10 + v19 + v20 * v17, v6);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_25F5C7798(v10);
          v10 = result;
        }

        if (v13 >= v10[2])
        {
          goto LABEL_21;
        }

        v21 = v10 + v19;
        result = sub_25F5C7874(v6, &v21[v20 * v13]);
        if (v17 >= v10[2])
        {
          goto LABEL_22;
        }

        result = sub_25F5C7874(v26, &v21[v20 * v17]);
        v12 = v23;
        *v24 = v10;
      }

      --v11;
      if (v13++ == v12)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

uint64_t sub_25F5C7830(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_25F5E3694();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F5C7874(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtractedItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C78D8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_25F5E44E4();

    return sub_25F5E45B4();
  }

  return result;
}

uint64_t sub_25F5C7974(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7375656870726F6DLL && a2 == 0xEF6D6172676F7250;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C706D61536E696DLL && a2 == 0xED0000657A695365 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_25F5C7B94@<X0>(unint64_t result@<X0>, uint64_t (*a2)()@<X1>, uint64_t *a3@<X8>)
{
  v4 = MEMORY[0x277D837D0];
  if (*(result + 16) && (v6 = result, result = sub_25F5709C8(1954047348, 0xE400000000000000), (v7 & 1) != 0) && (sub_25F573A4C(*(v6 + 56) + 32 * result, v11), result = swift_dynamicCast(), (result & 1) != 0))
  {
    v8 = a2();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0xE000000000000000;
  }

  a3[3] = v4;
  *a3 = v8;
  a3[1] = v10;
  return result;
}

unint64_t sub_25F5C7C6C@<X0>(unint64_t result@<X0>, unint64_t *a2@<X8>)
{
  if (*(result + 16) && (v3 = result, result = sub_25F5709C8(1954047348, 0xE400000000000000), (v4 & 1) != 0) && (sub_25F573A4C(*(v3 + 56) + 32 * result, v13), v5 = MEMORY[0x277D837D0], result = swift_dynamicCast(), (result & 1) != 0))
  {
    v7 = v11;
    v6 = v12;
    v13[0] = v11;
    v13[1] = v12;
    sub_25F58C444();
    result = sub_25F5E4854();
    a2[3] = v5;
    if (v8)
    {
      v9 = result;
      v10 = v8;

      v7 = v9;
      v6 = v10;
    }

    *a2 = v7;
    a2[1] = v6;
  }

  else
  {
    a2[3] = MEMORY[0x277D837D0];
    *a2 = 0;
    a2[1] = 0xE000000000000000;
  }

  return result;
}

unint64_t sub_25F5C7D68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DCA8, &qword_25F5E6900);
    v3 = sub_25F5E49F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25F5C8268(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_25F5709C8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25F571D88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_25F5C7E78()
{
  v1 = sub_25F5E4064();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  sub_25F5E4024();
  v4 = MEMORY[0x277D84F90];
  sub_25F5E4054();
  sub_25F5C7D68(v4);
  v5 = sub_25F5E4044();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_25F5E4034();
  sub_25F5E3FF4();

  if (!v0)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v9);
    v10 = *(v5 + 48);
    v11 = *(v5 + 52);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();

    v12 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v12);
    v13 = *(v5 + 48);
    v14 = *(v5 + 52);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();

    v15 = MEMORY[0x277D84F90];
    sub_25F5E4054();
    sub_25F5C7D68(v15);
    v16 = *(v5 + 48);
    v17 = *(v5 + 52);
    swift_allocObject();
    sub_25F5E4034();
    sub_25F5E3FF4();
  }

  return result;
}

uint64_t sub_25F5C8268(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E6B0, &unk_25F5E85A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C82D8(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E44C4();
  v5 = MEMORY[0x25F8E2DC0](v4, MEMORY[0x277D835B0], MEMORY[0x277D835B8]);
  v14 = v5;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = v6;
  v7 = sub_25F5E4514();
  if (v8)
  {
    v9 = v7;
    v10 = v8;
    do
    {
      sub_25F5CEE20(v13, v9, v10);

      v9 = sub_25F5E4514();
      v10 = v11;
    }

    while (v11);
    v5 = v14;
  }

  return v5;
}

uint64_t sub_25F5C8398(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_25F571230(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_25F571230((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t SmsMessage.content.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t SmsMessage.subject.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t SmsMessage.sender.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t SmsMessage.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SmsMessage(0) + 32);
  v4 = sub_25F5E3694();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SmsMessage.groupID.getter()
{
  v1 = (v0 + *(type metadata accessor for SmsMessage(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SmsMessage.init(content:subject:sender:isMe:timestamp:groupID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  v13 = type metadata accessor for SmsMessage(0);
  v14 = *(v13 + 32);
  v15 = sub_25F5E3694();
  result = (*(*(v15 - 8) + 32))(a9 + v14, a8, v15);
  v17 = (a9 + *(v13 + 36));
  *v17 = a10;
  v17[1] = a11;
  return result;
}

uint64_t sub_25F5C8724()
{
  v1 = *v0;
  v2 = 0x746E65746E6F63;
  v3 = 1699574633;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0x444970756F7267;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7463656A627573;
  if (v1 != 1)
  {
    v5 = 0x7265646E6573;
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

uint64_t sub_25F5C87D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F5D0C00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F5C8800(uint64_t a1)
{
  v2 = sub_25F5C8D28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5C883C(uint64_t a1)
{
  v2 = sub_25F5C8D28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SmsMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_25F5E3694();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E728, &qword_25F5EAA50);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v45 - v11;
  v13 = type metadata accessor for SmsMessage(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = (&v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = a1[3];
  v19 = a1[4];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v18);
  sub_25F5C8D28();
  v20 = v12;
  v21 = v51;
  sub_25F5E4C74();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  v23 = v49;
  v22 = v50;
  v51 = v13;
  v58 = 0;
  v25 = v17;
  *v17 = sub_25F5E4A94();
  v17[1] = v26;
  v57 = 1;
  v17[2] = sub_25F5E4A44();
  v17[3] = v27;
  v56 = 2;
  v28 = v23;
  *(v25 + 32) = sub_25F5E4A44();
  *(v25 + 40) = v29;
  v55 = 3;
  v30 = sub_25F5E4A54();
  v46 = 0;
  v45 = 0;
  *(v25 + 48) = v30;
  v54 = 4;
  sub_25F5C7830(&qword_27FD9E380);
  v34 = v46;
  sub_25F5E4AD4();
  v46 = v34;
  v35 = v48;
  v36 = v51;
  if (v34)
  {
    (*(v28 + 8))(v20, v22);
    v37 = 0;
  }

  else
  {
    (*(v48 + 32))(v25 + *(v51 + 32), v7, v3);
    v53 = 5;
    v38 = v46;
    v39 = sub_25F5E4A94();
    v46 = v38;
    if (!v38)
    {
      v42 = v39;
      v43 = v40;
      (*(v28 + 8))(v20, v22);
      v44 = (v25 + *(v36 + 36));
      *v44 = v42;
      v44[1] = v43;
      sub_25F5C8D7C(v25, v47);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      return sub_25F5C8DE0(v25);
    }

    (*(v28 + 8))(v20, v22);
    v37 = 1;
  }

  v41 = v45;
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v31 = *(v25 + 8);

  v32 = *(v25 + 24);

  if (v41)
  {
    if (!v37)
    {
      return result;
    }
  }

  else
  {
    v33 = *(v25 + 40);

    if ((v37 & 1) == 0)
    {
      return result;
    }
  }

  return (*(v35 + 8))(v25 + *(v36 + 32), v3);
}

unint64_t sub_25F5C8D28()
{
  result = qword_27FD9E730;
  if (!qword_27FD9E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E730);
  }

  return result;
}

uint64_t sub_25F5C8D7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F5C8DE0(uint64_t a1)
{
  v2 = type metadata accessor for SmsMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5C8E54(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SmsMessage(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4 - 8, v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 < 0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {

    return MEMORY[0x277D84F90];
  }

  if (*(a2 + 16) >= a1)
  {
    v11 = a1;
  }

  else
  {
    v11 = *(a2 + 16);
  }

  v25 = MEMORY[0x277D84F90];
  sub_25F5712B0(0, v11, 0);
  v12 = v25;
  v13 = *(a2 + 16);
  if (!v13)
  {

    return v12;
  }

  v14 = 0;
  v15 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v23[1] = a2;
  v16 = a2 + v15;
  v17 = *(v5 + 72);
  do
  {
    result = sub_25F5C8D7C(v16, v10);
    v19 = *(v12 + 16);
    if (v19 < a1)
    {
      v25 = v12;
      v18 = *(v12 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25F5712B0(v18 > 1, v19 + 1, 1);
        v12 = v25;
      }

      *(v12 + 16) = v19 + 1;
      sub_25F5D0AF8(v10, v12 + v15 + v19 * v17, type metadata accessor for SmsMessage);
    }

    else
    {
      if (v14 >= v19)
      {
        __break(1u);
        goto LABEL_27;
      }

      sub_25F5D1008(v10, v12 + v15 + v17 * v14);
      if ((v14 + 1) < a1)
      {
        ++v14;
      }

      else
      {
        v14 = 0;
      }
    }

    v16 += v17;
    --v13;
  }

  while (v13);

  if (!v14)
  {
    return v12;
  }

  v20 = *(v12 + 16);
  v24 = MEMORY[0x277D84F90];
  result = sub_25F5712B0(0, v20, 0);
  if (v20 >= v14)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_29;
    }

    v21 = *(v12 + 16);
    if (v21 >= v14 && v21 >= v20)
    {

      sub_25F5CFE58(v22, v12 + v15, v14, (2 * v20) | 1);
      sub_25F5CFE58(v12, v12 + v15, 0, (2 * v14) | 1);
      return v24;
    }

    goto LABEL_30;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_25F5C90EC(uint64_t a1)
{
  v3 = sub_25F5E3694();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v47 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v46 = &v44 - v10;
  v45 = type metadata accessor for SmsMessage(0);
  v11 = *(v45 - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v45, v13);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v44 - v18;
  sub_25F5C8D7C(a1, &v44 - v18);
  v20 = (v1 + 16);
  v21 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v21 = sub_25F5789D0(0, v21[2] + 1, 1, v21);
  }

  v24 = v21[2];
  v23 = v21[3];
  v25 = v24 + 1;
  v48 = v4;
  if (v24 >= v23 >> 1)
  {
    v21 = sub_25F5789D0(v23 > 1, v24 + 1, 1, v21);
  }

  v21[2] = v25;
  v4 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v11 = *(v11 + 72);
  result = sub_25F5D0AF8(v19, v21 + v4 + v11 * v24, type metadata accessor for SmsMessage);
  *(v1 + 16) = v21;
  v27 = *(v1 + 50);
  if (v27 != 2 && (v27 & 1) != 0)
  {
    v19 = v21 + v4 + v24 * v11;
    while (1)
    {
      if (v25 > v21[2])
      {
        __break(1u);
        goto LABEL_25;
      }

      sub_25F5C8D7C(v19, v16);
      v28 = v16[48];
      result = sub_25F5C8DE0(v16);
      if (v28 != 2 && (v28 & 1) != 0)
      {
        break;
      }

      v19 -= v11;
      if (!--v25)
      {
        goto LABEL_13;
      }
    }

    if (v21[2] < v25)
    {
      goto LABEL_29;
    }

    result = sub_25F5D0F48(0, v25);
  }

LABEL_13:
  if ((*(v1 + 32) & 1) == 0)
  {
    v29 = *(*(v1 + 16) + 16);
    if (*(v1 + 24) < v29)
    {
      if (!v29)
      {
        __break(1u);
        goto LABEL_27;
      }

      result = sub_25F5D0F48(0, 1);
    }
  }

  if (*(v1 + 48))
  {
    return result;
  }

  v30 = *v20;
  v31 = *(*v20 + 16);
  if (v31 < 2)
  {
    return result;
  }

  v32 = *(v1 + 40);
  v33 = v30 + v4 + (v31 - 1) * v11;
  v34 = v45;
  v35 = v46;
  v37 = v48;
  v36 = v49;
  v38 = *(v48 + 16);
  v38(v46, v33 + *(v45 + 32), v49);
  v39 = v30 + v4 + *(v34 + 32);
  v40 = v47;
  v38(v47, v39, v36);
  sub_25F5E3614();
  v42 = v41;
  v43 = *(v37 + 8);
  v43(v40, v36);
  result = (v43)(v35, v36);
  if ((v32 * 86400) >> 64 == (86400 * v32) >> 63)
  {
    if (v42 <= (86400 * v32))
    {
      return result;
    }

    if (*(v30 + 16))
    {
      return sub_25F5D0F48(0, 1);
    }

    goto LABEL_28;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t Dialogue.description.getter()
{
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E738, &qword_25F5EAA58);
  v1 = *(*(v107 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v107, v2);
  v106 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v105 = &v98 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v103 = (&v98 - v10);
  MEMORY[0x28223BE20](v9, v11);
  v104 = &v98 - v12;
  v13 = type metadata accessor for SmsMessage(0);
  v109 = *(v13 - 8);
  v14 = *(v109 + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v102 = &v98 - v21;
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v98 - v23;
  v25 = *(v0 + 16);
  v26 = *(v0 + 49);
  v108 = v25;
  if (v26 != 2 && (v26 & 1) != 0)
  {
    v27 = *(v25 + 16);
    v28 = MEMORY[0x277D84F90];
    if (v27)
    {
      v112[0] = MEMORY[0x277D84F90];
      sub_25F571230(0, v27, 0);
      v28 = v112[0];
      v29 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v30 = *(v109 + 72);
      v31 = v27;
      do
      {
        sub_25F5C8D7C(v29, v24);
        if (*(v24 + 5))
        {
          v32 = *(v24 + 4);
          v33 = *(v24 + 5);
        }

        else
        {
          v33 = 0xE300000000000000;
          v32 = 6369134;
        }

        sub_25F5C8DE0(v24);
        v112[0] = v28;
        v35 = *(v28 + 16);
        v34 = *(v28 + 24);
        if (v35 >= v34 >> 1)
        {
          sub_25F571230((v34 > 1), v35 + 1, 1);
          v28 = v112[0];
        }

        *(v28 + 16) = v35 + 1;
        v36 = v28 + 16 * v35;
        *(v36 + 32) = v32;
        *(v36 + 40) = v33;
        v29 += v30;
        --v31;
      }

      while (v31);
      v25 = v108;
    }

    v82 = sub_25F5D03B8(v28);

    v112[0] = v82;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
    sub_25F5AB824(&qword_27FD9E740, &qword_27FD9DD40, &qword_25F5E85F0);
    sub_25F58C444();
    v83 = sub_25F5E45C4();
    v85 = v84;

    v86 = MEMORY[0x277D84F90];
    if (v27)
    {
      v108 = v85;
      v112[0] = MEMORY[0x277D84F90];
      sub_25F571230(0, v27, 0);
      v86 = v112[0];
      v87 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
      v88 = *(v109 + 72);
      v89 = v102;
      do
      {
        sub_25F5C8D7C(v87, v89);
        v90 = *v89;
        v91 = *(v89 + 1);

        sub_25F5C8DE0(v89);
        v112[0] = v86;
        v93 = *(v86 + 16);
        v92 = *(v86 + 24);
        if (v93 >= v92 >> 1)
        {
          sub_25F571230((v92 > 1), v93 + 1, 1);
          v89 = v102;
          v86 = v112[0];
        }

        *(v86 + 16) = v93 + 1;
        v94 = v86 + 16 * v93;
        *(v94 + 32) = v90;
        *(v94 + 40) = v91;
        v87 += v88;
        --v27;
      }

      while (v27);
      v85 = v108;
    }

    v112[0] = v86;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50);
    v95 = sub_25F5E4364();
    v97 = v96;

    v112[0] = v83;
    v112[1] = v85;
    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](v95, v97);

    goto LABEL_46;
  }

  v37 = *(v25 + 16);
  v38 = MEMORY[0x277D84F90];
  if (v37)
  {
    v112[0] = MEMORY[0x277D84F90];
    sub_25F571230(0, v37, 0);
    v38 = v112[0];
    v39 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
    v40 = *(v109 + 72);
    do
    {
      sub_25F5C8D7C(v39, v18);
      if (*(v18 + 5))
      {
        v41 = *(v18 + 4);
        v42 = *(v18 + 5);
      }

      else
      {
        v42 = 0xE300000000000000;
        v41 = 6369134;
      }

      sub_25F5C8DE0(v18);
      v112[0] = v38;
      v44 = *(v38 + 16);
      v43 = *(v38 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_25F571230((v43 > 1), v44 + 1, 1);
        v38 = v112[0];
      }

      *(v38 + 16) = v44 + 1;
      v45 = v38 + 16 * v44;
      *(v45 + 32) = v41;
      *(v45 + 40) = v42;
      v39 += v40;
      --v37;
    }

    while (v37);
    v25 = v108;
  }

  v46 = sub_25F5D03B8(v38);

  v112[0] = 0;
  v112[1] = 0xE000000000000000;
  sub_25F5E4954();

  strcpy(v112, "Participants: ");
  HIBYTE(v112[1]) = -18;
  v111 = v46;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  sub_25F5AB824(&qword_27FD9E740, &qword_27FD9DD40, &qword_25F5E85F0);
  sub_25F58C444();
  v47 = sub_25F5E45C4();
  v49 = v48;

  MEMORY[0x25F8E2BC0](v47, v49);

  v51 = v112[0];
  v50 = v112[1];
  v52 = *(v25 + 16);
  v53 = MEMORY[0x277D84F90];
  if (!v52)
  {
LABEL_38:
    v112[0] = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
    sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50);
    v79 = sub_25F5E4364();
    v81 = v80;

    strcpy(v112, "[Dialogue]\n");
    HIDWORD(v112[1]) = -352321536;
    MEMORY[0x25F8E2BC0](v51, v50);

    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](v79, v81);

    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    MEMORY[0x25F8E2BC0](0xD000000000000011, 0x800000025F5ECA80);
LABEL_46:
    MEMORY[0x25F8E2BC0](10, 0xE100000000000000);
    return v112[0];
  }

  v98 = v112[0];
  v99 = v112[1];
  v111 = MEMORY[0x277D84F90];
  result = sub_25F571230(0, v52, 0);
  v55 = 0;
  v53 = v111;
  v56 = *(v25 + 16);
  if (v56 >= v52)
  {
    v56 = v52;
  }

  v101 = v25 + ((*(v109 + 80) + 32) & ~*(v109 + 80));
  v102 = v56;
  v100 = v52;
  while (v102 != v55)
  {
    if (v55 >= *(v25 + 16))
    {
      goto LABEL_48;
    }

    v57 = v55 + 1;
    v58 = v107;
    v59 = *(v107 + 48);
    v60 = v104;
    sub_25F5C8D7C(v101 + *(v109 + 72) * v55, &v104[v59]);
    v61 = v103;
    *v103 = v55;
    sub_25F5D0AF8(&v60[v59], v61 + *(v58 + 48), type metadata accessor for SmsMessage);
    v112[0] = 0;
    v112[1] = 0xE000000000000000;
    sub_25F5E4954();

    strcpy(v112, "Message #");
    WORD1(v112[1]) = 0;
    HIDWORD(v112[1]) = -385875968;
    v110 = v55 + 1;
    v62 = sub_25F5E4B44();
    MEMORY[0x25F8E2BC0](v62);

    MEMORY[0x25F8E2BC0](0x7265646E65530A3ALL, 0xEA0000000000203ALL);
    v63 = v105;
    sub_25F573B94(v61, v105, &qword_27FD9E738, &qword_25F5EAA58);
    v64 = v63 + *(v58 + 48);
    v66 = *(v64 + 32);
    v65 = *(v64 + 40);

    sub_25F5C8DE0(v64);
    if (v65)
    {
      v67 = v66;
    }

    else
    {
      v67 = 6369134;
    }

    if (v65)
    {
      v68 = v65;
    }

    else
    {
      v68 = 0xE300000000000000;
    }

    MEMORY[0x25F8E2BC0](v67, v68);

    MEMORY[0x25F8E2BC0](0x203A79646F420ALL, 0xE700000000000000);
    v69 = v106;
    sub_25F573B94(v61, v106, &qword_27FD9E738, &qword_25F5EAA58);
    v70 = (v69 + *(v58 + 48));
    v71 = *v70;
    v72 = v70[1];

    sub_25F5C8DE0(v70);
    MEMORY[0x25F8E2BC0](v71, v72);

    v73 = v112[0];
    v74 = v112[1];
    result = sub_25F57C148(v61, &qword_27FD9E738, &qword_25F5EAA58);
    v111 = v53;
    v76 = *(v53 + 16);
    v75 = *(v53 + 24);
    if (v76 >= v75 >> 1)
    {
      result = sub_25F571230((v75 > 1), v76 + 1, 1);
      v53 = v111;
    }

    *(v53 + 16) = v76 + 1;
    v77 = v53 + 16 * v76;
    *(v77 + 32) = v73;
    *(v77 + 40) = v74;
    v55 = v57;
    v78 = v100 == v57;
    v25 = v108;
    if (v78)
    {
      v51 = v98;
      v50 = v99;
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_25F5C9ED8(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40) - 8) + 64) + 15;
  v2[10] = swift_task_alloc();
  v4 = sub_25F5E3774();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230) - 8) + 64) + 15;
  v2[14] = swift_task_alloc();
  v8 = sub_25F5E3794();
  v2[15] = v8;
  v9 = *(v8 - 8);
  v2[16] = v9;
  v10 = *(v9 + 64) + 15;
  v2[17] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240) - 8) + 64) + 15;
  v2[18] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E780, &qword_25F5EAC58) - 8) + 64) + 15;
  v2[19] = swift_task_alloc();
  v13 = type metadata accessor for ExtractedItem(0);
  v2[20] = v13;
  v14 = *(v13 - 8);
  v2[21] = v14;
  v15 = *(v14 + 64) + 15;
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v16 = type metadata accessor for SmsMessage(0);
  v2[25] = v16;
  v17 = *(v16 - 8);
  v2[26] = v17;
  v18 = *(v17 + 64) + 15;
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60) - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v20 = sub_25F5E37E4();
  v2[31] = v20;
  v21 = *(v20 - 8);
  v2[32] = v21;
  v22 = *(v21 + 64) + 15;
  v2[33] = swift_task_alloc();
  v23 = sub_25F5E3804();
  v2[34] = v23;
  v24 = *(v23 - 8);
  v2[35] = v24;
  v25 = *(v24 + 64) + 15;
  v2[36] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410) - 8) + 64) + 15;
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v2[42] = swift_task_alloc();
  v2[43] = swift_task_alloc();
  v2[44] = swift_task_alloc();
  v27 = sub_25F5E3694();
  v2[45] = v27;
  v28 = *(v27 - 8);
  v2[46] = v28;
  v29 = *(v28 + 64) + 15;
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();
  v2[52] = swift_task_alloc();
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5CA3E8, 0, 0);
}

uint64_t sub_25F5CA3E8()
{
  v330 = v0;
  v1 = v0[36];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[9];
  v6 = objc_opt_self();
  v7 = [v6 currentCalendar];
  sub_25F5E37A4();

  v8 = *MEMORY[0x277CC9968];
  v9 = *(v3 + 104);
  (v9)(v2, *MEMORY[0x277CC9968], v4);
  if (__OFSUB__(0, *v5))
  {
    goto LABEL_97;
  }

  v296 = v9;
  v301 = v8;
  v306 = v6;
  v10 = v0[53];
  v12 = v0[45];
  v11 = v0[46];
  v13 = v0[44];
  v15 = v0[35];
  v14 = v0[36];
  v16 = v0[33];
  v17 = v0[32];
  v317 = v0[31];
  v323 = v0[34];
  sub_25F5E3684();
  sub_25F5E37B4();
  v255 = *(v11 + 8);
  v255(v10, v12);
  v18 = *(v17 + 8);
  v18(v16, v317);
  v19 = *(v15 + 8);
  v19(v14, v323);
  v20 = *(v11 + 48);
  if ((v20)(v13, 1, v12) == 1)
  {
    sub_25F57C148(v0[44], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5A31D0();
    swift_allocError();
    *v21 = 2;
    swift_willThrow();
LABEL_91:
    v233 = v0[53];
    v232 = v0[54];
    v235 = v0[51];
    v234 = v0[52];
    v236 = v0[49];
    v237 = v0[50];
    v239 = v0[47];
    v238 = v0[48];
    v241 = v0[43];
    v240 = v0[44];
    v250 = v0[42];
    v251 = v0[41];
    v254 = v0[40];
    v256 = v0[39];
    v259 = v0[38];
    v262 = v0[37];
    v265 = v0[36];
    v268 = v0[33];
    v272 = v0[30];
    v275 = v0[29];
    v279 = v0[28];
    v282 = v0[27];
    v286 = v0[24];
    v290 = v0[23];
    v293 = v0[22];
    v295 = v0[19];
    v300 = v0[18];
    v305 = v0[17];
    v311 = v0[14];
    v316 = v0[13];
    v322 = v0[10];

    v242 = v0[1];

    return v242();
  }

  v283 = v19;
  v287 = v18;
  v22 = v0[45];
  v23 = v0[43];
  v24 = v0[9];
  v25 = *(v0[46] + 32);
  v25(v0[54], v0[44], v22);
  v9 = type metadata accessor for SmsExtractor(0);
  sub_25F573B94(v24 + *(v9 + 20), v23, &unk_27FD9E500, &unk_25F5EA410);
  if ((v20)(v23, 1, v22) == 1)
  {
    v26 = v0[45];
    v27 = v0[43];
    (*(v0[46] + 16))(v0[51], v0[54], v26);
    if ((v20)(v27, 1, v26) != 1)
    {
      sub_25F57C148(v0[43], &unk_27FD9E500, &unk_25F5EA410);
    }
  }

  else
  {
    v25(v0[51], v0[43], v0[45]);
  }

  v28 = v0[54];
  v29 = v0[51];
  v30 = v0[45];
  sub_25F5C7830(&qword_27FD9E490);
  if (sub_25F5E4384())
  {
    v25(v0[52], v0[51], v0[45]);
  }

  else
  {
    v31 = v0[54];
    v32 = v0[52];
    v34 = v0[45];
    v33 = v0[46];
    v255(v0[51], v34);
    (*(v33 + 16))(v32, v31, v34);
  }

  v35 = v0[9];
  v291 = *(v0[46] + 56);
  v291(v0[42], 1, 1, v0[45]);
  if (*(v35 + 16))
  {
    goto LABEL_12;
  }

  v276 = v25;
  v54 = *(v35 + 8);
  v55 = v0[36];
  v56 = v0[33];
  v57 = v0[31];
  v58 = [v306 currentCalendar];
  sub_25F5E37A4();

  v296(v56, v301, v57);
  if (__OFSUB__(0, v54))
  {
    __break(1u);
    goto LABEL_100;
  }

  v269 = v54;
  v313 = v9;
  v59 = v0[53];
  v297 = v0[45];
  v61 = v0[41];
  v60 = v0[42];
  v308 = v0[40];
  v62 = v0[36];
  v63 = v0[33];
  v303 = v0[34];
  v64 = v0[31];
  sub_25F5E3684();
  sub_25F5E37B4();
  v255(v59, v297);
  v287(v63, v64);
  v283(v62, v303);
  sub_25F5D0B60(v61, v60);
  sub_25F573B94(v60, v308, &unk_27FD9E500, &unk_25F5EA410);
  if ((v20)(v308, 1, v297) == 1)
  {
    v65 = v0[54];
    v66 = v0[52];
    v67 = v0[45];
    v68 = v0[42];
    sub_25F57C148(v0[40], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5A31D0();
    swift_allocError();
    *v69 = 2;
    swift_willThrow();
    v255(v66, v67);
    v255(v65, v67);
    v70 = v68;
    goto LABEL_90;
  }

  v71 = v0[52];
  v276(v0[50], v0[40], v0[45]);
  v9 = v313;
  if (sub_25F5E3634())
  {
    if (qword_27FD9D8B0 == -1)
    {
LABEL_22:
      v72 = v0[52];
      v74 = v0[49];
      v73 = v0[50];
      v75 = v0[48];
      v76 = v0[45];
      v77 = v0[46];
      v78 = sub_25F5E3FB4();
      __swift_project_value_buffer(v78, qword_27FD9EA20);
      v79 = *(v77 + 16);
      v79(v74, v73, v76);
      v79(v75, v72, v76);
      v80 = sub_25F5E3F94();
      v81 = sub_25F5E47B4();
      v82 = os_log_type_enabled(v80, v81);
      v84 = v0[48];
      v83 = v0[49];
      v85 = v0[45];
      if (v82)
      {
        v319 = v81;
        v86 = swift_slowAlloc();
        v324 = swift_slowAlloc();
        *&v327[0] = v324;
        *v86 = 136315650;
        sub_25F5C7830(&qword_27FD9E498);
        v87 = sub_25F5E4B44();
        v89 = v88;
        v90 = v255;
        v255(v83, v85);
        v91 = sub_25F570AF8(v87, v89, v327);

        *(v86 + 4) = v91;
        *(v86 + 12) = 2048;
        *(v86 + 14) = v269;
        *(v86 + 22) = 2080;
        v92 = sub_25F5E4B44();
        v94 = v93;
        v255(v84, v85);
        v95 = sub_25F570AF8(v92, v94, v327);

        *(v86 + 24) = v95;
        _os_log_impl(&dword_25F56A000, v80, v319, "End date '%s' derived from untilNDaysAgo '%ld' is earlier than start date '%s', abort.", v86, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x25F8E3B70](v324, -1, -1);
        MEMORY[0x25F8E3B70](v86, -1, -1);
      }

      else
      {

        v90 = v255;
        v255(v84, v85);
        v255(v83, v85);
      }

      v227 = v0[54];
      v228 = v0[52];
      v229 = v0[50];
      v230 = v0[45];
      v119 = v0[42];
      sub_25F5A31D0();
      swift_allocError();
      *v231 = 5;
      swift_willThrow();
      v90(v229, v230);
      v90(v228, v230);
      v90(v227, v230);
LABEL_89:
      v70 = v119;
LABEL_90:
      sub_25F57C148(v70, &unk_27FD9E500, &unk_25F5EA410);
      goto LABEL_91;
    }

LABEL_100:
    swift_once();
    goto LABEL_22;
  }

  v255(v0[50], v0[45]);
LABEL_12:
  v280 = v20;
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_98;
  }

  while (1)
  {
    v36 = v0[52];
    v38 = v0[46];
    v37 = v0[47];
    v39 = v0[45];
    v40 = sub_25F5E3FB4();
    __swift_project_value_buffer(v40, qword_27FD9EA20);
    v318 = *(v38 + 16);
    v318(v37, v36, v39);
    v41 = sub_25F5E3F94();
    v42 = sub_25F5E47A4();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v0[47];
    v45 = v0[45];
    if (v43)
    {
      v307 = v42;
      v312 = v9;
      v46 = v0[42];
      v47 = swift_slowAlloc();
      v302 = swift_slowAlloc();
      *&v327[0] = v302;
      *v47 = 136315394;
      sub_25F5C7830(&qword_27FD9E498);
      v48 = sub_25F5E4B44();
      v50 = v49;
      v255(v44, v45);
      v51 = sub_25F570AF8(v48, v50, v327);

      *(v47 + 4) = v51;
      *(v47 + 12) = 2080;
      swift_beginAccess();
      if ((v280)(v46, 1, v45))
      {
        v52 = 0xEB00000000657461;
        v53 = 0x6420646E65206F6ELL;
      }

      else
      {
        v96 = v0[53];
        v97 = v0[45];
        v318(v96, v0[42], v97);
        v98 = sub_25F5E3604();
        v52 = v99;
        v255(v96, v97);
        v53 = v98;
      }

      v9 = v312;
      v100 = sub_25F570AF8(v53, v52, v327);

      *(v47 + 14) = v100;
      _os_log_impl(&dword_25F56A000, v41, v307, "Query date start: %s, end: %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8E3B70](v302, -1, -1);
      MEMORY[0x25F8E3B70](v47, -1, -1);
    }

    else
    {

      v255(v44, v45);
    }

    v101 = v0[52];
    v102 = v0[42];
    v103 = v0[39];
    v104 = v0[9];
    swift_beginAccess();
    sub_25F573B94(v102, v103, &unk_27FD9E500, &unk_25F5EA410);
    if (*(v104 + 64))
    {
      v105 = 0;
    }

    else
    {
      v105 = *(v104 + 56);
    }

    if (*(v104 + 48))
    {
      v106 = 0;
    }

    else
    {
      v106 = *(v104 + 40);
    }

    v107 = sub_25F5CBF24(v101, v103, *(v104 + 129) & 1, *(v104 + *(v9 + 24)), *(v104 + *(v9 + 24) + 8), v105, v106);
    sub_25F57C148(v103, &unk_27FD9E500, &unk_25F5EA410);
    v108 = *(v107 + 16);
    if (!v108)
    {
      v116 = v0[54];
      v117 = v0[52];
      v118 = v0[45];
      v119 = v0[42];

      sub_25F5A31D0();
      swift_allocError();
      *v120 = 5;
      swift_willThrow();
      v255(v117, v118);
      v255(v116, v118);
      goto LABEL_89;
    }

    v109 = *(v0[26] + 80);
    v110 = v107 + ((v109 + 32) & ~v109);
    sub_25F5C8D7C(v110, v0[28]);
    if (v108 != 1)
    {
      v122 = v0[25];
      v121 = v0[26];
      v9 = 1;
      while (v9 < *(v107 + 16))
      {
        v123 = v0[28];
        sub_25F5C8D7C(v110 + *(v121 + 72) * v9, v0[27]);
        v124 = *(v122 + 32);
        if (sub_25F5E3634())
        {
          v126 = v0[27];
          v125 = v0[28];
          sub_25F5C8DE0(v125);
          sub_25F5D0AF8(v126, v125, type metadata accessor for SmsMessage);
        }

        else
        {
          sub_25F5C8DE0(v0[27]);
        }

        if (v108 == ++v9)
        {
          goto LABEL_35;
        }
      }

      goto LABEL_96;
    }

LABEL_35:
    v112 = v0[29];
    v111 = v0[30];
    v113 = v0[25];
    v114 = v0[26];
    sub_25F5D0AF8(v0[28], v111, type metadata accessor for SmsMessage);
    (*(v114 + 56))(v111, 0, 1, v113);
    sub_25F573B94(v111, v112, &qword_27FD9E788, &qword_25F5EAC60);
    if ((*(v114 + 48))(v112, 1, v113) == 1)
    {
      sub_25F57C148(v0[29], &qword_27FD9E788, &qword_25F5EAC60);
      v115 = 1;
    }

    else
    {
      v127 = v0[29];
      v318(v0[38], v127 + *(v0[25] + 32), v0[45]);
      sub_25F5C8DE0(v127);
      v115 = 0;
    }

    v128 = v0[9];
    v291(v0[38], v115, 1, v0[45]);
    v129 = sub_25F5CCAF0(v107, *(v128 + 97), *(v128 + 104), *(v128 + 112), 0, 1, *(v128 + 98), *(v128 + 99));

    v130 = *(v129 + 16);
    if (v130)
    {
      v131 = 0;
      v9 = v129 + 32;
      v132 = MEMORY[0x277D84F90];
      while (v131 < *(v129 + 16))
      {
        v133 = *(v9 + 16);
        v327[0] = *v9;
        v327[1] = v133;
        v328[0] = *(v9 + 32);
        *(v328 + 15) = *(v9 + 47);
        v134 = Dialogue.description.getter();
        v136 = v135;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v132 = sub_25F578544(0, *(v132 + 2) + 1, 1, v132);
        }

        v138 = *(v132 + 2);
        v137 = *(v132 + 3);
        if (v138 >= v137 >> 1)
        {
          v132 = sub_25F578544((v137 > 1), v138 + 1, 1, v132);
        }

        ++v131;
        *(v132 + 2) = v138 + 1;
        v139 = &v132[16 * v138];
        *(v139 + 4) = v134;
        *(v139 + 5) = v136;
        v9 += 56;
        if (v130 == v131)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v132 = MEMORY[0x277D84F90];
LABEL_55:
    v140 = v0[9];

    v9 = 0;
    v141 = *(v140 + 169);
    v142 = *(v140 + 176);
    v143 = *(v140 + 184);
    v329 = *(v140 + 168) & 1;
    LOBYTE(v327[0]) = v141 & 1;
    if ((v141 & 1) != 0 && v143)
    {
      sub_25F5E4024();
      v9 = sub_25F5E4014();
    }

    v144 = v0[9];
    v288 = v329;
    v284 = v327[0];
    v145 = swift_task_alloc();
    *(v145 + 16) = v144;
    v146 = sub_25F5C8398(sub_25F5D0AD8, v145, v132);

    v280 = *(v146 + 16);
    if (!v280)
    {
      break;
    }

    v147 = 0;
    v266 = (v0[16] + 8);
    v270 = (v0[12] + 8);
    v148 = v0[21];
    v325 = v0[20];
    v252 = v148;
    v260 = (v148 + 48);
    v263 = (v148 + 56);
    v149 = MEMORY[0x277D84F90];
    v150 = (v146 + 40);
    v257 = v0[9];
    v273 = v146;
    v277 = v9;
    while (v147 < *(v146 + 16))
    {
      v152 = v0[18];
      v153 = *(v150 - 1);
      v154 = *v150;
      v155 = sub_25F5E36D4();
      (*(*(v155 - 8) + 56))(v152, 1, 1, v155);
      v156 = *(v257 + 32);
      LOBYTE(v327[0]) = v288;
      BYTE1(v327[0]) = v284;
      *(&v327[0] + 1) = v9;

      v157 = sub_25F5D49F4(v153, v154, v327);
      v159 = v158;
      v314 = v147;
      v320 = v149;
      v309 = v150;
      if (v156 >= 1)
      {
        v160 = sub_25F5C78D8(v156);
        v162 = v161;
        v164 = v163;
        v166 = v165;

        v157 = MEMORY[0x25F8E2B40](v160, v162, v164, v166);
        v159 = v167;
      }

      v168 = v0[37];
      v169 = v0[23];
      v171 = v0[17];
      v170 = v0[18];
      v173 = v0[13];
      v172 = v0[14];
      v298 = v0[11];
      v291(v168, 1, 1, v0[45]);
      *(v169 + v325[6]) = 0;
      sub_25F5E3754();
      sub_25F573B94(v170, v169, &qword_27FD9DE10, &unk_25F5E7240);
      v174 = (v169 + v325[5]);
      *v174 = v157;
      v174[1] = v159;
      sub_25F573B94(v168, v169 + v325[7], &unk_27FD9E500, &unk_25F5EA410);
      sub_25F5E3784();
      sub_25F5E3764();
      (*v270)(v173, v298);
      v175 = sub_25F5E3704();
      v176 = *(v175 - 8);
      v177 = (*(v176 + 48))(v172, 1, v175);
      v178 = v0[14];
      if (v177 == 1)
      {
        sub_25F57C148(v0[14], &qword_27FD9DE08, &unk_25F5E7230);
        v179 = 0;
        v180 = 0;
      }

      else
      {
        v181 = v0[14];
        v179 = sub_25F5E36F4();
        v180 = v182;
        (*(v176 + 8))(v178, v175);
      }

      v183 = v0[17];
      v184 = v0[10];
      v185 = (v0[23] + v325[8]);
      *v185 = v179;
      v185[1] = v180;
      sub_25F5E3744();
      v186 = sub_25F5E3734();
      v187 = *(v186 - 8);
      v188 = (*(v187 + 48))(v184, 1, v186);
      v189 = v0[37];
      v190 = v0[17];
      v191 = v0[18];
      v192 = v0[15];
      v193 = v0[10];
      if (v188 == 1)
      {
        (*v266)(v0[17], v0[15]);
        sub_25F57C148(v189, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v191, &qword_27FD9DE10, &unk_25F5E7240);
        sub_25F57C148(v193, &qword_27FD9DE00, &unk_25F5E9D40);
        v194 = 0;
        v195 = 0;
      }

      else
      {
        v194 = sub_25F5E36F4();
        v195 = v196;
        (*v266)(v190, v192);
        sub_25F57C148(v189, &unk_27FD9E500, &unk_25F5EA410);
        sub_25F57C148(v191, &qword_27FD9DE10, &unk_25F5E7240);
        (*(v187 + 8))(v193, v186);
      }

      v197 = v0[23];
      v198 = v0[19];
      v199 = v0[20];
      v200 = v325[10];
      v201 = (v197 + v325[9]);
      *v201 = v194;
      v201[1] = v195;
      *(v197 + v200) = MEMORY[0x277D84F98];
      sub_25F5D0AF8(v197, v198, type metadata accessor for ExtractedItem);
      (*v263)(v198, 0, 1, v199);

      v9 = v277;
      if ((*v260)(v198, 1, v199) == 1)
      {
        sub_25F57C148(v0[19], &qword_27FD9E780, &qword_25F5EAC58);
        v151 = v314;
        v149 = v320;
        v146 = v273;
      }

      else
      {
        v202 = v0[24];
        v203 = v0[22];
        sub_25F5D0AF8(v0[19], v202, type metadata accessor for ExtractedItem);
        sub_25F5D0AF8(v202, v203, type metadata accessor for ExtractedItem);
        v149 = v320;
        v146 = v273;
        v151 = v314;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_25F57851C(0, v320[2] + 1, 1, v320);
        }

        v205 = v149[2];
        v204 = v149[3];
        if (v205 >= v204 >> 1)
        {
          v149 = sub_25F57851C(v204 > 1, v205 + 1, 1, v149);
        }

        v206 = v0[22];
        v149[2] = v205 + 1;
        sub_25F5D0AF8(v206, v149 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v205, type metadata accessor for ExtractedItem);
      }

      v147 = v151 + 1;
      v150 = v309 + 2;
      if (v280 == v147)
      {
        goto LABEL_78;
      }
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    swift_once();
  }

  v149 = MEMORY[0x277D84F90];
LABEL_78:
  v207 = v0[9];

  if (*(v207 + 80))
  {
    v321 = v149;
    goto LABEL_84;
  }

  v208 = v0[9];
  v209 = sub_25F5C7AF4(v149, *(v208 + 72));

  if ((*(v208 + 96) & 1) == 0 && *(v209 + 16) < *(v0[9] + 88))
  {
    v210 = v0[54];
    v211 = v0[52];
    v212 = v0[45];
    v213 = v0[42];
    v214 = v0[38];
    v215 = v0[30];

    sub_25F5A31D0();
    swift_allocError();
    *v216 = 7;
    swift_willThrow();

    sub_25F57C148(v214, &unk_27FD9E500, &unk_25F5EA410);
    sub_25F57C148(v215, &qword_27FD9E788, &qword_25F5EAC60);
    v255(v211, v212);
    v255(v210, v212);
    v70 = v213;
    goto LABEL_90;
  }

  v321 = v209;
LABEL_84:
  v217 = v0[53];
  v218 = v0[54];
  v219 = v0[52];
  v243 = v0[51];
  v244 = v0[50];
  v245 = v0[49];
  v246 = v0[48];
  v220 = v0[45];
  v247 = v0[47];
  v248 = v0[44];
  v221 = v0[42];
  v253 = v0[41];
  v222 = v0[38];
  v258 = v0[40];
  v261 = v0[39];
  v264 = v0[37];
  v267 = v0[36];
  v223 = v0[30];
  v249 = v0[43];
  v271 = v0[33];
  v274 = v0[29];
  v278 = v0[28];
  v281 = v0[27];
  v285 = v0[24];
  v289 = v0[23];
  v292 = v0[22];
  v294 = v0[19];
  v299 = v0[18];
  v304 = v0[17];
  v310 = v0[14];
  v315 = v0[13];
  v326 = v0[10];
  v224 = v0[8];

  sub_25F57C148(v223, &qword_27FD9E788, &qword_25F5EAC60);
  v255(v219, v220);
  v255(v218, v220);
  sub_25F57B86C(v222, v224, &unk_27FD9E500, &unk_25F5EA410);
  sub_25F57C148(v221, &unk_27FD9E500, &unk_25F5EA410);

  v225 = v0[1];

  return v225(v321);
}

uint64_t sub_25F5CBF24(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v115 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E788, &qword_25F5EAC60);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v99 = (&v95 - v14);
  v103 = type metadata accessor for SmsMessage(0);
  v98 = *(v103 - 8);
  v15 = *(v98 + 64);
  v17 = MEMORY[0x28223BE20](v103, v16);
  v102 = &v95 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v96 = &v95 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v106 = *(v113 - 8);
  v21 = *(v106 + 64);
  v23 = MEMORY[0x28223BE20](v113, v22);
  v104 = &v95 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v109 = (&v95 - v27);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v108 = (&v95 - v30);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v97 = &v95 - v33;
  MEMORY[0x28223BE20](v32, v34);
  v107 = &v95 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v40 = &v95 - v39;
  sub_25F573B94(a2, &v95 - v39, &unk_27FD9E500, &unk_25F5EA410);
  v41 = sub_25F5E3624();
  v42 = sub_25F5E3694();
  v43 = *(v42 - 8);
  v44 = *(v43 + 48);
  v114 = v42;
  v45 = 0;
  if (v44(v40, 1) != 1)
  {
    v45 = sub_25F5E3624();
    (*(v43 + 8))(v40, v114);
  }

  v110 = v43;
  v46 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v41 endDate:v45 maxEvents:a6 lastN:a7 reversed:0];
  v112 = v46;

  v47 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v48 = [v47 Intent];
  swift_unknownObjectRelease();
  v49 = sub_25F5E43C4();
  v111 = v48;
  v50 = [v48 publisherWithUseCase:v49 options:v46];

  v51 = [v48 identifier];
  v52 = sub_25F5E43F4();
  v54 = v53;

  v55 = swift_allocObject();
  *(v55 + 16) = MEMORY[0x277D84F90];
  v56 = swift_allocObject();
  *(v56 + 16) = a3 & 1;
  v121 = sub_25F5D10B4;
  v122 = v56;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_25F5CE0D4;
  v120 = &block_descriptor_1;
  v57 = _Block_copy(&aBlock);

  v58 = [v50 filterWithIsIncluded_];
  _Block_release(v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v52;
  *(v59 + 24) = v54;
  v121 = sub_25F5D110C;
  v122 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_25F5D127C;
  v120 = &block_descriptor_31;
  v60 = _Block_copy(&aBlock);

  v61 = swift_allocObject();
  v61[2] = v55;
  v61[3] = v52;
  v61[4] = v54;
  v121 = sub_25F5D1154;
  v122 = v61;
  aBlock = MEMORY[0x277D85DD0];
  v118 = 1107296256;
  v119 = sub_25F5D127C;
  v120 = &block_descriptor_37;
  v62 = _Block_copy(&aBlock);

  v63 = [v58 sinkWithCompletion:v60 receiveInput:v62];

  _Block_release(v62);
  _Block_release(v60);

  swift_beginAccess();
  v64 = *(v55 + 16);

  v65 = *(v64 + 16);
  if (!v65)
  {

    return MEMORY[0x277D84F90];
  }

  v66 = 0;
  v105 = v108 + 1;
  v100 = v109 + 1;
  v112 = (v110 + 8);
  v110 = MEMORY[0x277D84F90];
  v67 = v107;
  v101 = v65;
  do
  {
    if (v66 >= *(v64 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);

      sub_25F57C148(v52, &qword_27FD9DDA0, &qword_25F5EAA10);

      __break(1u);
      return result;
    }

    v111 = ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v115 = *(v106 + 72);
    sub_25F573B94(&v111[v64 + v115 * v66], v67, &qword_27FD9DDA0, &qword_25F5EAA10);
    v68 = v108;
    sub_25F573B94(v67, v108, &qword_27FD9DDA0, &qword_25F5EAA10);
    v69 = *v68;
    v52 = *(v113 + 48);
    v70 = *(v105 + *(v113 + 64));

    v71 = [v69 outgoingMessageType];

    v72 = *v112;
    (*v112)(v68 + v52, v114);
    v73 = v71 == 2;
    v67 = v107;
    v74 = v109;
    if (v73)
    {
      goto LABEL_6;
    }

    v75 = v64;
    sub_25F573B94(v107, v109, &qword_27FD9DDA0, &qword_25F5EAA10);
    v76 = v67;
    v77 = *v74;
    v52 = *(v113 + 48);
    v78 = *(v100 + *(v113 + 64));

    v79 = [v77 content];

    if (!v79)
    {
      v72(v74 + v52, v114);
      v67 = v76;
      v64 = v75;
      v65 = v101;
LABEL_6:
      sub_25F57C148(v67, &qword_27FD9DDA0, &qword_25F5EAA10);
      goto LABEL_7;
    }

    v72(v74 + v52, v114);
    sub_25F57B86C(v76, v104, &qword_27FD9DDA0, &qword_25F5EAA10);
    v80 = v110;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v116 = v80;
    v67 = v76;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_25F5712D0(0, *(v80 + 16) + 1, 1);
      v80 = v116;
    }

    v64 = v75;
    v52 = *(v80 + 16);
    v82 = *(v80 + 24);
    v65 = v101;
    if (v52 >= v82 >> 1)
    {
      sub_25F5712D0(v82 > 1, v52 + 1, 1);
      v80 = v116;
    }

    *(v80 + 16) = v52 + 1;
    v110 = v80;
    sub_25F57B86C(v104, &v111[v80 + v52 * v115], &qword_27FD9DDA0, &qword_25F5EAA10);
LABEL_7:
    ++v66;
  }

  while (v65 != v66);

  v83 = *(v110 + 16);
  if (v83)
  {
    v84 = 0;
    v66 = 0;
    v85 = (v98 + 48);
    v86 = v110;
    v87 = &v111[v110];
    v88 = MEMORY[0x277D84F90];
    v89 = v99;
    v52 = v97;
    while (v84 < *(v86 + 16))
    {
      sub_25F573B94(v87, v52, &qword_27FD9DDA0, &qword_25F5EAA10);
      sub_25F5CD858(v52, v89);
      sub_25F57C148(v52, &qword_27FD9DDA0, &qword_25F5EAA10);
      if ((*v85)(v89, 1, v103) == 1)
      {
        sub_25F57C148(v89, &qword_27FD9E788, &qword_25F5EAC60);
      }

      else
      {
        v90 = v89;
        v91 = v96;
        sub_25F5D0AF8(v90, v96, type metadata accessor for SmsMessage);
        sub_25F5D0AF8(v91, v102, type metadata accessor for SmsMessage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = sub_25F5789D0(0, v88[2] + 1, 1, v88);
        }

        v93 = v88[2];
        v92 = v88[3];
        if (v93 >= v92 >> 1)
        {
          v88 = sub_25F5789D0(v92 > 1, v93 + 1, 1, v88);
        }

        v88[2] = v93 + 1;
        sub_25F5D0AF8(v102, v88 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v93, type metadata accessor for SmsMessage);
        v89 = v99;
        v52 = v97;
      }

      ++v84;
      v87 += v115;
      v86 = v110;
      if (v83 == v84)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_32;
  }

  v88 = MEMORY[0x277D84F90];
LABEL_29:

  return v88;
}

uint64_t sub_25F5CCAF0(uint64_t a1, unsigned __int8 a2, int64_t a3, int a4, uint64_t a5, int a6, int a7, int a8)
{
  v130 = a7;
  v131 = a8;
  v132 = a6;
  v129 = a5;
  v134 = a4;
  v133 = a3;
  v10 = a2;
  v126 = type metadata accessor for SmsMessage(0);
  isUniquelyReferenced_nonNull_native = *(v126 - 8);
  v12 = *(isUniquelyReferenced_nonNull_native + 64);
  v14 = MEMORY[0x28223BE20](v126, v13);
  v128 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v120 - v17;
  if (v10 == 2 || (a2 & 1) != 0)
  {
    if (qword_27FD9D8B0 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_69;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v40 = sub_25F5E3FB4();
  __swift_project_value_buffer(v40, qword_27FD9EA20);
  v41 = sub_25F5E3F94();
  v42 = sub_25F5E47A4();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25F56A000, v41, v42, "Grouping SMS messages into dialogues.", v43, 2u);
    MEMORY[0x25F8E3B70](v43, -1, -1);
  }

  v44 = sub_25F5726A4(MEMORY[0x277D84F90]);
  if (*(a1 + 16))
  {
    v45 = *(a1 + 16);
    v46 = *(isUniquelyReferenced_nonNull_native + 80);
    v124 = (v46 + 32) & ~v46;
    v125 = v46;
    v47 = a1 + v124;
    v135 = *(isUniquelyReferenced_nonNull_native + 72);
    v48 = v133;
    if (v134)
    {
      v48 = 1;
    }

    v123 = v48;
    v122 = xmmword_25F5E5EE0;
    isUniquelyReferenced_nonNull_native = v45;
    v121 = v18;
    while (1)
    {
      sub_25F5C8D7C(v47, v18);
      v54 = &v18[*(v126 + 36)];
      v55 = *v54;
      v56 = v54[1];
      if (*(v44 + 16))
      {
        v57 = sub_25F5709C8(v55, v56);
        if (v58)
        {
          break;
        }
      }

      v127 = v47;
      v75 = isUniquelyReferenced_nonNull_native;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD88, &unk_25F5EAA00);
      v76 = v124;
      v77 = swift_allocObject();
      *(v77 + 16) = v122;
      sub_25F5C8D7C(v18, v77 + v76);

      v128 = sub_25F5C8E54(v123, v77);
      v78 = v134 & 1;
      LOBYTE(v136[0]) = v134 & 1;
      v79 = v132 & 1;
      LOBYTE(v138) = v132 & 1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v141 = v44;
      a1 = v55;
      v80 = v55;
      v81 = v56;
      v82 = sub_25F5709C8(v80, v56);
      v84 = *(v44 + 16);
      v85 = (v83 & 1) == 0;
      v71 = __OFADD__(v84, v85);
      v86 = v84 + v85;
      if (v71)
      {
        goto LABEL_65;
      }

      v87 = v83;
      if (*(v44 + 24) >= v86)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v98 = v82;
          sub_25F57B3BC();
          v82 = v98;
        }
      }

      else
      {
        sub_25F57A024(v86, isUniquelyReferenced_nonNull_native);
        v82 = sub_25F5709C8(a1, v81);
        if ((v87 & 1) != (v88 & 1))
        {
LABEL_70:
          result = sub_25F5E4BC4();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v75;
      v47 = v127;
      if (v87)
      {
        v44 = v141;
        v49 = *(v141 + 56) + 56 * v82;
        v51 = *(v49 + 16);
        v50 = *(v49 + 32);
        v52 = *v49;
        *(v146 + 15) = *(v49 + 47);
        v145 = v51;
        v146[0] = v50;
        v144 = v52;
        *v49 = a1;
        *(v49 + 8) = v81;
        v53 = v133;
        *(v49 + 16) = v128;
        *(v49 + 24) = v53;
        *(v49 + 32) = v78;
        *(v49 + 33) = v139[0];
        *(v49 + 36) = *(v139 + 3);
        *(v49 + 40) = v129;
        *(v49 + 48) = v79;
        LOBYTE(v53) = v131;
        *(v49 + 49) = v130;
        *(v49 + 50) = v53;
        sub_25F5D0BD0(&v144);
      }

      else
      {
        v44 = v141;
        *(v141 + 8 * (v82 >> 6) + 64) |= 1 << v82;
        v89 = (*(v44 + 48) + 16 * v82);
        *v89 = a1;
        v89[1] = v81;
        v90 = *(v44 + 56) + 56 * v82;
        *v90 = a1;
        *(v90 + 8) = v81;
        v91 = v133;
        *(v90 + 16) = v128;
        *(v90 + 24) = v91;
        *(v90 + 32) = v78;
        *(v90 + 33) = v139[0];
        *(v90 + 36) = *(v139 + 3);
        *(v90 + 40) = v129;
        *(v90 + 48) = v79;
        LOBYTE(v91) = v131;
        *(v90 + 49) = v130;
        *(v90 + 50) = v91;
        v92 = *(v44 + 16);
        v71 = __OFADD__(v92, 1);
        v93 = v92 + 1;
        if (v71)
        {
          goto LABEL_66;
        }

        *(v44 + 16) = v93;
      }

      v18 = v121;
LABEL_27:
      sub_25F5C8DE0(v18);
      v47 += v135;
      if (!--isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_49;
      }
    }

    v59 = *(v44 + 56) + 56 * v57;
    v61 = *(v59 + 16);
    v60 = *(v59 + 32);
    v62 = *v59;
    *(v140 + 15) = *(v59 + 47);
    v139[1] = v61;
    v140[0] = v60;
    v139[0] = v62;
    v144 = *v59;
    v145 = *(v59 + 16);
    v146[0] = *(v59 + 32);
    *(v146 + 15) = *(v59 + 47);
    sub_25F57C030(v139, &v141);
    sub_25F5C90EC(v18);
    v141 = v144;
    v142 = v145;
    v143[0] = v146[0];
    *(v143 + 15) = *(v146 + 15);
    v63 = swift_isUniquelyReferenced_nonNull_native();
    v64 = v56;
    v65 = v63;
    v138 = v44;
    v66 = v55;
    a1 = v64;
    v67 = sub_25F5709C8(v55, v64);
    v69 = *(v44 + 16);
    v70 = (v68 & 1) == 0;
    v71 = __OFADD__(v69, v70);
    v72 = v69 + v70;
    if (v71)
    {
      goto LABEL_67;
    }

    v73 = v68;
    if (*(v44 + 24) >= v72)
    {
      if ((v65 & 1) == 0)
      {
        v99 = v67;
        sub_25F57B3BC();
        v67 = v99;
        if (v73)
        {
LABEL_45:
          v44 = v138;
          v94 = *(v138 + 56) + 56 * v67;
          v96 = *(v94 + 16);
          v95 = *(v94 + 32);
          v97 = *v94;
          *&v137[15] = *(v94 + 47);
          v136[1] = v96;
          *v137 = v95;
          v136[0] = v97;
          *v94 = v141;
          *(v94 + 16) = v142;
          *(v94 + 32) = v143[0];
          *(v94 + 47) = *(v143 + 15);
          sub_25F5D0BD0(v136);
          goto LABEL_27;
        }

        goto LABEL_47;
      }
    }

    else
    {
      sub_25F57A024(v72, v65);
      v67 = sub_25F5709C8(v66, a1);
      if ((v73 & 1) != (v74 & 1))
      {
        goto LABEL_70;
      }
    }

    if (v73)
    {
      goto LABEL_45;
    }

LABEL_47:
    v44 = v138;
    *(v138 + 8 * (v67 >> 6) + 64) |= 1 << v67;
    v100 = (*(v44 + 48) + 16 * v67);
    *v100 = v66;
    v100[1] = a1;
    v101 = *(v44 + 56) + 56 * v67;
    *v101 = v141;
    *(v101 + 16) = v142;
    *(v101 + 32) = v143[0];
    *(v101 + 47) = *(v143 + 15);
    v102 = *(v44 + 16);
    v71 = __OFADD__(v102, 1);
    v103 = v102 + 1;
    if (v71)
    {
      goto LABEL_68;
    }

    *(v44 + 16) = v103;

    goto LABEL_27;
  }

LABEL_49:
  a1 = v44 + 64;
  v104 = 1 << *(v44 + 32);
  v105 = -1;
  if (v104 < 64)
  {
    v105 = ~(-1 << v104);
  }

  isUniquelyReferenced_nonNull_native = v105 & *(v44 + 64);
  v106 = (v104 + 63) >> 6;

  v107 = 0;
  v27 = MEMORY[0x277D84F90];
  if (isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v108 = v107 + 1;
    if (__OFADD__(v107, 1))
    {
      break;
    }

    if (v108 >= v106)
    {

      return v27;
    }

    isUniquelyReferenced_nonNull_native = *(a1 + 8 * v108);
    ++v107;
    if (isUniquelyReferenced_nonNull_native)
    {
      v107 = v108;
      do
      {
LABEL_56:
        v109 = *(v44 + 56) + 56 * (__clz(__rbit64(isUniquelyReferenced_nonNull_native)) | (v107 << 6));
        v111 = *(v109 + 16);
        v110 = *(v109 + 32);
        v112 = *v109;
        *(v146 + 15) = *(v109 + 47);
        v145 = v111;
        v146[0] = v110;
        v144 = v112;
        sub_25F57C030(&v144, &v141);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25F578BD4(0, *(v27 + 2) + 1, 1, v27);
        }

        v114 = *(v27 + 2);
        v113 = *(v27 + 3);
        if (v114 >= v113 >> 1)
        {
          v27 = sub_25F578BD4((v113 > 1), v114 + 1, 1, v27);
        }

        isUniquelyReferenced_nonNull_native &= isUniquelyReferenced_nonNull_native - 1;
        *(v27 + 2) = v114 + 1;
        v115 = &v27[56 * v114];
        v116 = v144;
        v117 = v145;
        v118 = v146[0];
        *(v115 + 79) = *(v146 + 15);
        *(v115 + 3) = v117;
        *(v115 + 4) = v118;
        *(v115 + 2) = v116;
      }

      while (isUniquelyReferenced_nonNull_native);
    }
  }

  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  swift_once();
LABEL_4:
  v19 = sub_25F5E3FB4();
  __swift_project_value_buffer(v19, qword_27FD9EA20);
  v20 = sub_25F5E3F94();
  v21 = sub_25F5E47A4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_25F56A000, v20, v21, "Convert single SMS messages into dialogues.", v22, 2u);
    MEMORY[0x25F8E3B70](v22, -1, -1);
  }

  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x277D84F90];
  }

  v127 = (v128 + *(v126 + 36));
  v24 = *(isUniquelyReferenced_nonNull_native + 80);
  v125 = (v24 + 32) & ~v24;
  v126 = v24;
  v25 = a1 + v125;
  v26 = *(isUniquelyReferenced_nonNull_native + 72);
  v27 = MEMORY[0x277D84F90];
  v28 = v133;
  if (v134)
  {
    v28 = 1;
  }

  v123 = v28;
  v122 = xmmword_25F5E5EE0;
  v124 = v26;
  do
  {
    v29 = v128;
    sub_25F5C8D7C(v25, v128);
    v30 = v127[1];
    v135 = *v127;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD88, &unk_25F5EAA00);
    v31 = v125;
    v32 = swift_allocObject();
    *(v32 + 16) = v122;
    sub_25F5C8D7C(v29, v32 + v31);

    v33 = sub_25F5C8E54(v123, v32);
    sub_25F5C8DE0(v29);
    v34 = v134 & 1;
    LOBYTE(v141) = v134 & 1;
    v35 = v132 & 1;
    LOBYTE(v139[0]) = v132 & 1;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_25F578BD4(0, *(v27 + 2) + 1, 1, v27);
    }

    v37 = *(v27 + 2);
    v36 = *(v27 + 3);
    if (v37 >= v36 >> 1)
    {
      v27 = sub_25F578BD4((v36 > 1), v37 + 1, 1, v27);
    }

    *(v27 + 2) = v37 + 1;
    v38 = &v27[56 * v37];
    *(v38 + 4) = v135;
    *(v38 + 5) = v30;
    v39 = v133;
    *(v38 + 6) = v33;
    *(v38 + 7) = v39;
    v38[64] = v34;
    LODWORD(v39) = *(&v144 + 3);
    *(v38 + 65) = v144;
    *(v38 + 17) = v39;
    *(v38 + 9) = v129;
    v38[80] = v35;
    LOBYTE(v39) = v131;
    v38[81] = v130;
    v38[82] = v39;
    v25 += v124;
    --v23;
  }

  while (v23);
  return v27;
}

BOOL sub_25F5CD548(uint64_t *a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E790, &qword_25F5EAC68);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E518, &qword_25F5EA4B8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v15 = v22 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = a2[3];
  if (a2[20])
  {
    v19 = a2[19];

    sub_25F5E3C04();
    if (v2)
    {

      (*(v11 + 56))(v9, 1, 1, v10);
      sub_25F57C148(v9, &qword_27FD9E790, &qword_25F5EAC68);
    }

    else
    {
      (*(v11 + 56))(v9, 0, 1, v10);
      (*(v11 + 32))(v15, v9, v10);
      v22[0] = v16;
      v22[1] = v17;
      sub_25F5C0EB0();
      sub_25F5AB824(&qword_27FD9E528, &qword_27FD9E518, &qword_25F5EA4B8);
      v20 = sub_25F5E4354();
      (*(v11 + 8))(v15, v10);
      result = 0;
      if (v20)
      {
        return result;
      }
    }
  }

  return sub_25F5E44C4() >= v18;
}

uint64_t sub_25F5CD7C0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5C9ED8(a1);
}

void sub_25F5CD858(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v95 = (&v83 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6, v8);
  v94 = (&v83 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v92 = &v83 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v83 - v16);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v83 - v20);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = (&v83 - v24);
  MEMORY[0x28223BE20](v23, v26);
  v28 = (&v83 - v27);
  sub_25F573B94(a1, &v83 - v27, &qword_27FD9DDA0, &qword_25F5EAA10);
  v29 = *v28;
  v30 = *(v3 + 64);
  v93 = v28;
  v31 = *(v28 + v30 + 8);

  v32 = [v29 content];

  if (v32)
  {
    v33 = sub_25F5E43F4();
    v90 = v34;
    v91 = v33;

    sub_25F573B94(a1, v25, &qword_27FD9DDA0, &qword_25F5EAA10);
    v35 = *v25;
    v36 = *(v3 + 48);
    v37 = *(v25 + *(v3 + 64) + 8);

    v38 = [v35 sender];

    if (v38)
    {
      v39 = [v38 displayName];

      v40 = sub_25F5E43F4();
      v88 = v41;
      v89 = v40;

      v42 = sub_25F5E3694();
      (*(*(v42 - 8) + 8))(v25 + v36, v42);
    }

    else
    {
      v43 = sub_25F5E3694();
      v86 = *(*(v43 - 8) + 8);
      v87 = v43;
      v86(v25 + v36);
      sub_25F573B94(a1, v21, &qword_27FD9DDA0, &qword_25F5EAA10);
      v44 = *v21;
      v45 = *(v3 + 48);
      v46 = *(v21 + *(v3 + 64) + 8);

      v47 = [v44 0x279A854F8];

      if (v47 && (v48 = [v47 contactIdentifier], v47, v48))
      {
        v49 = sub_25F5E43F4();
        v88 = v50;
        v89 = v49;

        (v86)(v21 + v45, v87);
      }

      else
      {
        v51 = v21 + v45;
        v52 = v86;
        v53 = v87;
        (v86)(v51, v87);
        v85 = a1;
        sub_25F573B94(a1, v17, &qword_27FD9DDA0, &qword_25F5EAA10);
        v54 = *v17;
        v55 = *(v3 + 48);
        v56 = *(v17 + *(v3 + 64) + 8);

        v57 = [v54 sender];

        if (v57)
        {
          v58 = [v57 customIdentifier];

          if (v58)
          {
            v59 = sub_25F5E43F4();
            v88 = v60;
            v89 = v59;
          }

          else
          {
            v88 = 0;
            v89 = 0;
          }

          (v86)(v17 + v55, v87);
        }

        else
        {
          v52(v17 + v55, v53);
          v88 = 0;
          v89 = 0;
        }

        a1 = v85;
      }
    }

    v61 = v92;
    sub_25F573B94(a1, v92, &qword_27FD9DDA0, &qword_25F5EAA10);
    v62 = *v61;
    v63 = *(v61 + *(v3 + 64) + 8);

    v64 = [v62 sender];

    if (v64)
    {
      LODWORD(v87) = [v64 isMe];
    }

    else
    {
      LODWORD(v87) = 0;
    }

    v65 = *(v3 + 48);
    v86 = v65;
    v66 = sub_25F5E3694();
    v67 = *(v66 - 8);
    v85 = *(v67 + 8);
    v85(v65 + v61, v66);
    v68 = a1;
    v69 = a1;
    v70 = v94;
    sub_25F573B94(v68, v94, &qword_27FD9DDA0, &qword_25F5EAA10);

    v92 = *(v3 + 48);
    v71 = *(v70 + *(v3 + 64) + 8);

    v72 = v69;
    v73 = v95;
    sub_25F573B94(v72, v95, &qword_27FD9DDA0, &qword_25F5EAA10);

    v84 = *(v3 + 48);
    v74 = (v73 + *(v3 + 64));
    v75 = *v74;
    v76 = v74[1];
    v77 = v96;
    v78 = v90;
    *v96 = v91;
    v77[1] = v78;
    v77[2] = 0;
    v77[3] = 0;
    v79 = v88;
    v77[4] = v89;
    v77[5] = v79;
    *(v77 + 48) = v87;
    v80 = type metadata accessor for SmsMessage(0);
    (*(v67 + 32))(v77 + *(v80 + 32), v70 + v92, v66);
    v81 = (v77 + *(v80 + 36));
    *v81 = v75;
    v81[1] = v76;
    v82 = v85;
    v85(v73 + v84, v66);
    v82(v86 + v93, v66);
    (*(*(v80 - 8) + 56))(v77, 0, 1, v80);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_25F5CDEFC(void *a1, char a2)
{
  v4 = [a1 eventBody];
  if (!v4)
  {
    goto LABEL_20;
  }

  v5 = v4;
  v6 = [v4 intentClass];

  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = sub_25F5E43F4();
  v9 = v8;

  if (v7 == 0xD000000000000013 && 0x800000025F5ECAD0 == v9)
  {
  }

  else
  {
    v11 = sub_25F5E4B84();

    if ((v11 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  v12 = [a1 eventBody];
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 bundleID];

  if (v14)
  {
    v15 = sub_25F5E43F4();
    v17 = v16;

    if (v15 == 0xD000000000000013 && 0x800000025F5ECAF0 == v17)
    {

      if ((a2 & 1) == 0)
      {
        LOBYTE(v14) = 1;
        return v14 & 1;
      }

      goto LABEL_18;
    }

    LOBYTE(v14) = sub_25F5E4B84();

    if (v14 & 1) != 0 && (a2)
    {
LABEL_18:
      v18 = [a1 eventBody];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 interactionDirection];

        LOBYTE(v14) = v20 == 2;
        return v14 & 1;
      }

LABEL_20:
      LOBYTE(v14) = 0;
    }
  }

  return v14 & 1;
}

uint64_t sub_25F5CE0D4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  LOBYTE(v4) = v4();

  return v4 & 1;
}

void sub_25F5CE12C(void *a1, uint64_t a2, unint64_t a3)
{
  if ([a1 state])
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v6 = sub_25F5E3FB4();
    __swift_project_value_buffer(v6, qword_27FD9EA20);

    v7 = a1;
    oslog = sub_25F5E3F94();
    v8 = sub_25F5E47B4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_25F570AF8(a2, a3, &v17);
      *(v9 + 12) = 2080;
      [v7 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A0, &qword_25F5EAC70);
      v11 = sub_25F5E4454();
      v13 = sub_25F570AF8(v11, v12, &v17);

      *(v9 + 14) = v13;
      _os_log_impl(&dword_25F56A000, oslog, v8, "Failed to read events from biome stream %s, error %s", v9, 0x16u);
      swift_arrayDestroy();
LABEL_10:
      MEMORY[0x25F8E3B70](v10, -1, -1);
      MEMORY[0x25F8E3B70](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v14 = sub_25F5E3FB4();
    __swift_project_value_buffer(v14, qword_27FD9EA20);

    oslog = sub_25F5E3F94();
    v15 = sub_25F5E47A4();

    if (os_log_type_enabled(oslog, v15))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_25F570AF8(a2, a3, &v17);
      _os_log_impl(&dword_25F56A000, oslog, v15, "Read events from biome stream %s successfully.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      goto LABEL_10;
    }
  }
}

void sub_25F5CE418(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDA0, &qword_25F5EAA10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = (&v66 - v12);
  v14 = sub_25F5E3694();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 eventBody];
  if (!v20)
  {
    return;
  }

  v76 = v20;
  v21 = [v20 interaction];
  if (v21)
  {
    v72 = a3;
    v73 = a4;
    v22 = v21;
    v23 = sub_25F5E35E4();
    v25 = v24;

    v26 = [v76 absoluteTimestamp];
    if (v26)
    {
      v74 = v25;
      v75 = v23;
      v27 = v26;
      sub_25F5E3674();

      v28 = [v76 groupIdentifier];
      if (!v28)
      {
        (*(v15 + 8))(v19, v14);

        sub_25F571820(v75, v74);
        return;
      }

      v69 = v9;
      v70 = v14;
      v71 = v15;
      v29 = v28;
      v30 = sub_25F5E43F4();
      v32 = v31;

      v33 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      v35 = v74;
      v34 = v75;
      sub_25F5717CC(v75, v74);
      v36 = sub_25F5D1160();
      v66 = a2;
      v67 = v32;
      v38 = v36;
      sub_25F571820(v34, v35);
      sub_25F5D1220();
      v39 = *MEMORY[0x277CCA308];
      sub_25F5E43F4();
      v68 = v38;
      v40 = sub_25F5E47C4();

      if (v40)
      {
        v41 = [v40 intent];
        v42 = v70;
        v43 = v71;
        v44 = v73;
        v45 = v67;
        if (v41)
        {
          v46 = v41;
          objc_opt_self();
          v47 = swift_dynamicCastObjCClass();
          if (v47)
          {
            v48 = *(v8 + 48);
            v49 = (v13 + *(v8 + 64));
            *v13 = v47;
            (*(v43 + 16))(v13 + v48, v19, v42);
            *v49 = v30;
            v49[1] = v45;
            v50 = v66;
            swift_beginAccess();
            v51 = *(v50 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v50 + 16) = v51;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v51 = sub_25F578CF8(0, v51[2] + 1, 1, v51);
              *(v50 + 16) = v51;
            }

            v53 = v69;
            v55 = v51[2];
            v54 = v51[3];
            if (v55 >= v54 >> 1)
            {
              v51 = sub_25F578CF8(v54 > 1, v55 + 1, 1, v51);
            }

            v51[2] = v55 + 1;
            sub_25F57B86C(v13, v51 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v55, &qword_27FD9DDA0, &qword_25F5EAA10);
            *(v50 + 16) = v51;
            swift_endAccess();

            sub_25F571820(v75, v74);
            (*(v71 + 8))(v19, v42);
            return;
          }
        }

        else
        {
        }
      }

      else
      {

        v42 = v70;
        v43 = v71;
        v44 = v73;
      }

      v56 = v74;
      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v57 = sub_25F5E3FB4();
      __swift_project_value_buffer(v57, qword_27FD9EA20);

      v58 = sub_25F5E3F94();
      v59 = sub_25F5E47B4();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = v40;
        v61 = v43;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v64 = v44;
        v65 = v63;
        v77[0] = v63;
        *v62 = 136315138;
        *(v62 + 4) = sub_25F570AF8(v72, v64, v77);
        _os_log_impl(&dword_25F56A000, v58, v59, "Interaction intent read from biome stream %s is not of INSendMessageIntent type, message will be discarded.", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v65);
        MEMORY[0x25F8E3B70](v65, -1, -1);
        MEMORY[0x25F8E3B70](v62, -1, -1);

        sub_25F571820(v75, v56);
        (*(v61 + 8))(v19, v42);
      }

      else
      {

        sub_25F571820(v75, v56);
        (*(v43 + 8))(v19, v42);
      }
    }

    else
    {

      sub_25F571820(v23, v25);
    }
  }

  else
  {
    v37 = v76;
  }
}

void sub_25F5CEC68(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_25F5CECD0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  v9 = sub_25F5E4C54();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25F5CF430(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F5CEE20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_25F5E4C34();
  sub_25F5E4334();
  v9 = sub_25F5E4C54();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_25F5CF5B0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F5CEF70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E7A8, &qword_25F5EAC78);
  result = sub_25F5E4914();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_25F5E4C34();
      sub_25F5E4334();
      result = sub_25F5E4C54();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}