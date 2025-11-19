uint64_t ToolKitActionStreamEvent.encodedTool.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  sub_260DE17F4(v1, *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8));
  return v1;
}

uint64_t ToolKitActionStreamEvent.toolID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);
  v2 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID + 8);

  return v1;
}

uint64_t ToolKitActionStreamEvent.bundleID.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);
  v2 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID + 8);

  return v1;
}

uint64_t ToolKitActionStreamEvent.title.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_title);
  v2 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_title + 8);

  return v1;
}

uint64_t ToolKitActionStreamEvent.subtitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);
  v2 = *(v0 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle + 8);

  return v1;
}

uint64_t ToolKitActionStreamEvent.eventTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v4 = sub_260DF5444();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id ToolKitActionStreamEvent.__allocating_init(encodedTool:toolID:bundleID:title:subtitle:eventTimeStamp:parameterKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v20 = objc_allocWithZone(v12);
  v21 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool];
  *v21 = a1;
  *(v21 + 1) = a2;
  v22 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  *v22 = a3;
  *(v22 + 1) = a4;
  v23 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  *v23 = a5;
  *(v23 + 1) = a6;
  v24 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  *v24 = a7;
  *(v24 + 1) = a8;
  v25 = &v20[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v25 = a9;
  *(v25 + 1) = a10;
  v26 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v27 = sub_260DF5444();
  v28 = *(v27 - 8);
  (*(v28 + 16))(&v20[v26], a11, v27);
  *&v20[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = a12;
  v33.receiver = v20;
  v33.super_class = v32;
  v29 = objc_msgSendSuper2(&v33, sel_init);
  (*(v28 + 8))(a11, v27);
  return v29;
}

id ToolKitActionStreamEvent.init(encodedTool:toolID:bundleID:title:subtitle:eventTimeStamp:parameterKeys:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  ObjectType = swift_getObjectType();
  v20 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool];
  *v20 = a1;
  *(v20 + 1) = a2;
  v21 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  *v21 = a3;
  *(v21 + 1) = a4;
  v22 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  *v22 = a5;
  *(v22 + 1) = a6;
  v23 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  *v23 = a7;
  *(v23 + 1) = a8;
  v24 = &v12[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v24 = a9;
  *(v24 + 1) = a10;
  v25 = OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp;
  v26 = sub_260DF5444();
  v27 = *(v26 - 8);
  (*(v27 + 16))(&v12[v25], a11, v26);
  *&v12[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = a12;
  v32.receiver = v12;
  v32.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v32, sel_init);
  (*(v27 + 8))(a11, v26);
  return v28;
}

id ToolKitActionStreamEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t ToolKitActionStreamEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FED8, &qword_260DF8A00);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DED0B8();
  sub_260DF5E94();
  v11 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool + 8);
  v23 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool);
  v24 = v11;
  v22 = 0;
  sub_260DE17F4(v23, v11);
  sub_260DED10C();
  sub_260DF5DB4();
  if (v2)
  {
    sub_260DD2994(v23, v24);
  }

  else
  {
    sub_260DD2994(v23, v24);
    v12 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID);
    v13 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_toolID + 8);
    LOBYTE(v23) = 1;
    sub_260DF5D84();
    v14 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID);
    v15 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID + 8);
    LOBYTE(v23) = 2;
    sub_260DF5D84();
    v16 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_title);
    v17 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_title + 8);
    LOBYTE(v23) = 3;
    sub_260DF5D84();
    v18 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle);
    v19 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle + 8);
    LOBYTE(v23) = 4;
    sub_260DF5D84();
    LOBYTE(v23) = 5;
    sub_260DF5444();
    sub_260DF4A24(&qword_27FE4FEF0, MEMORY[0x277CC9578]);
    sub_260DF5DB4();
    v23 = *(v3 + OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys);
    v22 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
    sub_260DED1B4(&qword_27FE4FF00);
    sub_260DF5D74();
  }

  return (*(v6 + 8))(v9, v5);
}

id ToolKitActionStreamEvent.init(from:)(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v3 = sub_260DF5444();
  v35 = *(v3 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF08, &qword_260DF8A10);
  v7 = *(v36 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v36);
  v10 = &v34 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_260DED0B8();
  v37 = v10;
  sub_260DF5E84();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v33 = v38;
    v15 = *((*MEMORY[0x277D85000] & *v38) + 0x30);
    v16 = *((*MEMORY[0x277D85000] & *v38) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    v13 = v7;
    v14 = v35;
    v34 = v3;
    v42 = 0;
    sub_260DED160();
    sub_260DF5D44();
    v18 = v38;
    *(v38 + OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool) = v41;
    LOBYTE(v41) = 1;
    v19 = sub_260DF5D14();
    v20 = v13;
    v21 = &v18[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
    *v21 = v19;
    v21[1] = v22;
    LOBYTE(v41) = 2;
    v23 = sub_260DF5D14();
    v24 = &v18[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v41) = 3;
    v26 = sub_260DF5D14();
    v27 = &v18[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
    *v27 = v26;
    v27[1] = v28;
    LOBYTE(v41) = 4;
    v29 = sub_260DF5D14();
    v30 = &v18[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
    *v30 = v29;
    v30[1] = v31;
    LOBYTE(v41) = 5;
    sub_260DF4A24(&qword_27FE4FF18, MEMORY[0x277CC9578]);
    v32 = v34;
    sub_260DF5D44();
    (*(v14 + 32))(&v18[OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp], v12, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
    v42 = 6;
    sub_260DED1B4(&qword_27FE4FF20);
    sub_260DF5D04();
    *&v18[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = v41;
    v40.receiver = v18;
    v40.super_class = ObjectType;
    v33 = objc_msgSendSuper2(&v40, sel_init);
    (*(v20 + 8))(v37, v36);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v33;
}

id sub_260DE5D14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = ToolKitActionStreamEvent.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_260DE5D88(uint64_t a1, uint64_t a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v3 = sub_260DF5844();
  v2[13] = v3;
  v4 = *(v3 - 8);
  v2[14] = v4;
  v5 = *(v4 + 64) + 15;
  v2[15] = swift_task_alloc();
  v6 = sub_260DF5854();
  v2[16] = v6;
  v7 = *(v6 - 8);
  v2[17] = v7;
  v8 = *(v7 + 64) + 15;
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v9 = sub_260DF51D4();
  v2[20] = v9;
  v10 = *(v9 - 8);
  v2[21] = v10;
  v11 = *(v10 + 64) + 15;
  v2[22] = swift_task_alloc();
  v12 = sub_260DF5864();
  v2[23] = v12;
  v13 = *(v12 - 8);
  v2[24] = v13;
  v14 = *(v13 + 64) + 15;
  v2[25] = swift_task_alloc();
  v15 = sub_260DF56E4();
  v2[26] = v15;
  v16 = *(v15 - 8);
  v2[27] = v16;
  v17 = *(v16 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v18 = sub_260DF5884();
  v2[30] = v18;
  v19 = *(v18 - 8);
  v2[31] = v19;
  v20 = *(v19 + 64) + 15;
  v2[32] = swift_task_alloc();
  v21 = sub_260DF5764();
  v2[33] = v21;
  v22 = *(v21 - 8);
  v2[34] = v22;
  v23 = *(v22 + 64) + 15;
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE6088, 0, 0);
}

uint64_t sub_260DE6088()
{
  v1 = *(v0 + 88);
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_260DF5264();
  v5 = v4;

  *(v0 + 288) = v3;
  *(v0 + 296) = v5;
  v6 = *(v1 + 16);
  *(v0 + 304) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 272);
    *(v0 + 360) = *(v8 + 80);
    v9 = MEMORY[0x277D72660];
    *(v0 + 364) = *MEMORY[0x277D72658];
    *(v0 + 368) = *v9;
    *(v0 + 372) = *MEMORY[0x277D72648];
    v10 = MEMORY[0x277D72640];
    *(v0 + 376) = *MEMORY[0x277D72650];
    *(v0 + 380) = *v10;
    *(v0 + 312) = *(v8 + 72);
    *(v0 + 320) = *(v8 + 16);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 328) = v7;
      *(v0 + 336) = v11;
      v12 = *(v0 + 272) + 16;
      (*(v0 + 320))(*(v0 + 280), *(v0 + 88) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 312) * v7, *(v0 + 264));
      v13 = *(sub_260DF5724() + 16);

      if (v13)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v14 = sub_260DF55C4();
      __swift_project_value_buffer(v14, qword_27FE53CE8);
      v15 = sub_260DF55A4();
      v16 = sub_260DF5B64();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_260DCE000, v15, v16, "Skipping here as count is 0", v17, 2u);
        MEMORY[0x2666EFFA0](v17, -1, -1);
      }

      v18 = *(v0 + 280);
      v19 = *(v0 + 232);
      v21 = *(v0 + 208);
      v20 = *(v0 + 216);

      sub_260DF5704();
      v22 = sub_260DF56D4();
      v24 = v23;
      (*(v20 + 8))(v19, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_260DED930(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_260DED930((v25 > 1), v26 + 1, 1, v11);
      }

      (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
      *(v11 + 2) = v26 + 1;
      v27 = &v11[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      v7 = *(v0 + 328) + 1;
      if (v7 == *(v0 + 304))
      {
        v35 = *(v0 + 296);
        goto LABEL_18;
      }
    }

    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v30 = *(MEMORY[0x277D724F8] + 4);
    v31 = swift_task_alloc();
    *(v0 + 344) = v31;
    *v31 = v0;
    v31[1] = sub_260DE6528;
    v32 = *(v0 + 280);
    v33 = *(v0 + 256);
    v34 = *(v0 + 96);

    return MEMORY[0x2821DAA28](v33, v32, v28, OpaqueTypeConformance2);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    v36 = *(v0 + 280);
    v37 = *(v0 + 256);
    v39 = *(v0 + 224);
    v38 = *(v0 + 232);
    v40 = *(v0 + 200);
    v41 = *(v0 + 176);
    v43 = *(v0 + 144);
    v42 = *(v0 + 152);
    v44 = *(v0 + 120);

    v45 = *(v0 + 8);

    return v45(v11);
  }
}

uint64_t sub_260DE6528()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v8 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v4 = *(v2 + 336);
    v5 = *(v2 + 296);

    v6 = sub_260DE6FB8;
  }

  else
  {
    v6 = sub_260DE6650;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260DE6650()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 256);
  *(v0 + 24) = 0xE000000000000000;
  v2 = sub_260DF5824();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v121 = v2;
    v122 = *(v2 + 16);
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v9 = *(v0 + 364);
      v11 = *(v0 + 192);
      v10 = *(v0 + 200);
      v12 = *(v0 + 184);
      (*(v11 + 16))(v10, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v5, v12);
      v13 = (*(v11 + 88))(v10, v12);
      if (v13 == v9)
      {
        v6 = *(v0 + 200);
        (*(*(v0 + 192) + 96))(v6, *(v0 + 184));
        v7 = *v6;
        v8 = v6[1];
        v1 = v0 + 16;
        MEMORY[0x2666EF400](v7, v8);
      }

      else
      {
        if (v13 != *(v0 + 368))
        {
          v47 = *(v0 + 280);
          v49 = *(v0 + 216);
          v48 = *(v0 + 224);
          v51 = *(v0 + 200);
          v50 = *(v0 + 208);
          v52 = *(v0 + 184);
          v53 = *(v0 + 192);
          v54 = *(v0 + 24);

          sub_260DF5704();
          v55 = sub_260DF56D4();
          v57 = v56;
          (*(v49 + 8))(v48, v50);
          *(v0 + 16) = v55;
          *(v0 + 24) = v57;
          (*(v53 + 8))(v51, v52);
          goto LABEL_17;
        }

        v14 = *(v0 + 372);
        v15 = *(v0 + 200);
        v17 = *(v0 + 144);
        v16 = *(v0 + 152);
        v19 = *(v0 + 128);
        v18 = *(v0 + 136);
        (*(*(v0 + 192) + 96))(v15, *(v0 + 184));
        v20 = *(v15 + 8);

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
        (*(v18 + 32))(v16, v15 + *(v21 + 48), v19);
        (*(v18 + 16))(v17, v16, v19);
        v22 = (*(v18 + 88))(v17, v19);
        if (v22 == v14)
        {
          v23 = *(v0 + 144);
          v24 = *(v0 + 152);
          v26 = *(v0 + 128);
          v25 = *(v0 + 136);
          v27 = *(v0 + 112);
          v28 = *(v0 + 120);
          v29 = *(v0 + 104);
          (*(v25 + 96))(v23, v26);
          (*(v27 + 32))(v28, v23, v29);
          v30 = sub_260DF5834();
          v1 = v0 + 16;
          MEMORY[0x2666EF400](v30);

          (*(v27 + 8))(v28, v29);
          v3 = v121;
          (*(v25 + 8))(v24, v26);
LABEL_14:
          v4 = v122;
          goto LABEL_4;
        }

        if (v22 != *(v0 + 376))
        {
          if (v22 != *(v0 + 380))
          {
            v107 = *(v0 + 280);
            v108 = *(v0 + 216);
            v109 = *(v0 + 224);
            v110 = *(v0 + 208);
            v112 = *(v0 + 144);
            v111 = *(v0 + 152);
            v113 = *(v0 + 128);
            v114 = *(v0 + 136);
            v115 = *(v0 + 24);

            sub_260DF5704();
            v116 = sub_260DF56D4();
            v118 = v117;
            (*(v108 + 8))(v109, v110);
            v119 = *(v114 + 8);
            v119(v111, v113);
            *(v0 + 16) = v116;
            *(v0 + 24) = v118;
            v119(v112, v113);
            goto LABEL_17;
          }

          v39 = *(v0 + 144);
          v40 = *(v0 + 152);
          v42 = *(v0 + 128);
          v41 = *(v0 + 136);
          v43 = *(v0 + 112);
          v44 = *(v0 + 120);
          v45 = *(v0 + 104);
          (*(v41 + 96))(v39, v42);
          (*(v43 + 32))(v44, v39, v45);
          v46 = sub_260DF5834();
          v1 = v0 + 16;
          MEMORY[0x2666EF400](v46);

          (*(v43 + 8))(v44, v45);
          v3 = v121;
          (*(v41 + 8))(v40, v42);
          goto LABEL_14;
        }

        v31 = *(v0 + 288);
        v32 = *(v0 + 296);
        v33 = *(v0 + 144);
        v120 = *(v0 + 152);
        v35 = *(v0 + 128);
        v34 = *(v0 + 136);
        (*(v34 + 96))(v33, v35);
        v36 = *(*v33 + 16);

        *(v0 + 80) = v36;
        *(v0 + 48) = sub_260DF5DD4();
        *(v0 + 56) = v37;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v38 = *(v0 + 56);
        *(v0 + 64) = *(v0 + 48);
        *(v0 + 72) = v38;

        MEMORY[0x2666EF400](v31, v32);

        v1 = v0 + 16;
        v4 = v122;
        MEMORY[0x2666EF400](*(v0 + 64), *(v0 + 72));

        (*(v34 + 8))(v120, v35);
      }

LABEL_4:
      ++v5;
    }

    while (v4 != v5);
  }

LABEL_17:
  v58 = *(v0 + 336);
  v60 = *(v0 + 168);
  v59 = *(v0 + 176);
  v61 = *(v0 + 160);
  v62 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v62;
  sub_260DF51C4();
  sub_260DED220();
  v1 = sub_260DF5BA4();
  v3 = v63;
  (*(v60 + 8))(v59, v61);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 336);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v4 = sub_260DED930(0, *(v4 + 2) + 1, 1, v4);
  }

  v66 = *(v4 + 2);
  v65 = *(v4 + 3);
  if (v66 >= v65 >> 1)
  {
    v4 = sub_260DED930((v65 > 1), v66 + 1, 1, v4);
  }

  v68 = *(v0 + 272);
  v67 = *(v0 + 280);
  v69 = *(v0 + 264);
  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  (*(v68 + 8))(v67, v69);
  *(v4 + 2) = v66 + 1;
  v70 = &v4[16 * v66];
  *(v70 + 4) = v1;
  *(v70 + 5) = v3;
  v71 = *(v0 + 328) + 1;
  if (v71 == *(v0 + 304))
  {
LABEL_21:
    v72 = *(v0 + 296);

    v73 = *(v0 + 280);
    v74 = *(v0 + 256);
    v76 = *(v0 + 224);
    v75 = *(v0 + 232);
    v77 = *(v0 + 200);
    v78 = *(v0 + 176);
    v80 = *(v0 + 144);
    v79 = *(v0 + 152);
    v81 = *(v0 + 120);

    v82 = *(v0 + 8);

    return v82(v4);
  }

  else
  {
    while (1)
    {
      *(v0 + 328) = v71;
      *(v0 + 336) = v4;
      v84 = *(v0 + 272) + 16;
      (*(v0 + 320))(*(v0 + 280), *(v0 + 88) + ((*(v0 + 360) + 32) & ~*(v0 + 360)) + *(v0 + 312) * v71, *(v0 + 264));
      v85 = *(sub_260DF5724() + 16);

      if (v85)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v86 = sub_260DF55C4();
      __swift_project_value_buffer(v86, qword_27FE53CE8);
      v87 = sub_260DF55A4();
      v88 = sub_260DF5B64();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_260DCE000, v87, v88, "Skipping here as count is 0", v89, 2u);
        MEMORY[0x2666EFFA0](v89, -1, -1);
      }

      v90 = *(v0 + 280);
      v91 = *(v0 + 232);
      v93 = *(v0 + 208);
      v92 = *(v0 + 216);

      sub_260DF5704();
      v94 = sub_260DF56D4();
      v96 = v95;
      (*(v92 + 8))(v91, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_260DED930(0, *(v4 + 2) + 1, 1, v4);
      }

      v98 = *(v4 + 2);
      v97 = *(v4 + 3);
      if (v98 >= v97 >> 1)
      {
        v4 = sub_260DED930((v97 > 1), v98 + 1, 1, v4);
      }

      (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
      *(v4 + 2) = v98 + 1;
      v99 = &v4[16 * v98];
      *(v99 + 4) = v94;
      *(v99 + 5) = v96;
      v71 = *(v0 + 328) + 1;
      if (v71 == *(v0 + 304))
      {
        goto LABEL_21;
      }
    }

    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v102 = *(MEMORY[0x277D724F8] + 4);
    v103 = swift_task_alloc();
    *(v0 + 344) = v103;
    *v103 = v0;
    v103[1] = sub_260DE6528;
    v104 = *(v0 + 280);
    v105 = *(v0 + 256);
    v106 = *(v0 + 96);

    return MEMORY[0x2821DAA28](v105, v104, v100, OpaqueTypeConformance2);
  }
}

uint64_t sub_260DE6FB8()
{
  v1 = v0[32];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[25];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  (*(v0[34] + 8))(v0[35], v0[33]);

  v9 = v0[1];
  v10 = v0[44];

  return v9();
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromRawToolInvocationsWithSession<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[11] = a1;
  v4[12] = a2;
  v5 = sub_260DF51D4();
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v7 = *(v6 + 64) + 15;
  v4[17] = swift_task_alloc();
  v8 = sub_260DF5844();
  v4[18] = v8;
  v9 = *(v8 - 8);
  v4[19] = v9;
  v10 = *(v9 + 64) + 15;
  v4[20] = swift_task_alloc();
  v11 = sub_260DF5854();
  v4[21] = v11;
  v12 = *(v11 - 8);
  v4[22] = v12;
  v13 = *(v12 + 64) + 15;
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v14 = sub_260DF5864();
  v4[25] = v14;
  v15 = *(v14 - 8);
  v4[26] = v15;
  v16 = *(v15 + 64) + 15;
  v4[27] = swift_task_alloc();
  v17 = sub_260DF5884();
  v4[28] = v17;
  v18 = *(v17 - 8);
  v4[29] = v18;
  v19 = *(v18 + 64) + 15;
  v4[30] = swift_task_alloc();
  v20 = sub_260DF56E4();
  v4[31] = v20;
  v21 = *(v20 - 8);
  v4[32] = v21;
  v22 = *(v21 + 64) + 15;
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v23 = sub_260DF5764();
  v4[35] = v23;
  v24 = *(v23 - 8);
  v4[36] = v24;
  v25 = *(v24 + 64) + 15;
  v4[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DE73B0, 0, 0);
}

uint64_t sub_260DE73B0()
{
  v1 = *(v0 + 88);
  v2 = [objc_opt_self() mainBundle];
  v3 = sub_260DF5264();
  v5 = v4;

  *(v0 + 304) = v3;
  *(v0 + 312) = v5;
  v6 = *(v1 + 16);
  *(v0 + 320) = v6;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 288);
    *(v0 + 376) = *(v8 + 80);
    v9 = MEMORY[0x277D72660];
    *(v0 + 380) = *MEMORY[0x277D72658];
    *(v0 + 384) = *v9;
    *(v0 + 388) = *MEMORY[0x277D72648];
    v10 = MEMORY[0x277D72640];
    *(v0 + 392) = *MEMORY[0x277D72650];
    *(v0 + 396) = *v10;
    *(v0 + 328) = *(v8 + 72);
    *(v0 + 336) = *(v8 + 16);
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      *(v0 + 344) = v7;
      *(v0 + 352) = v11;
      v12 = *(v0 + 288) + 16;
      (*(v0 + 336))(*(v0 + 296), *(v0 + 88) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v7, *(v0 + 280));
      v13 = *(sub_260DF5724() + 16);

      if (v13)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v14 = sub_260DF55C4();
      __swift_project_value_buffer(v14, qword_27FE53CE8);
      v15 = sub_260DF55A4();
      v16 = sub_260DF5B64();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_260DCE000, v15, v16, "Skipping here as count is 0", v17, 2u);
        MEMORY[0x2666EFFA0](v17, -1, -1);
      }

      v18 = *(v0 + 296);
      v19 = *(v0 + 272);
      v21 = *(v0 + 248);
      v20 = *(v0 + 256);

      sub_260DF5704();
      v22 = sub_260DF56D4();
      v24 = v23;
      (*(v20 + 8))(v19, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_260DED930(0, *(v11 + 2) + 1, 1, v11);
      }

      v26 = *(v11 + 2);
      v25 = *(v11 + 3);
      if (v26 >= v25 >> 1)
      {
        v11 = sub_260DED930((v25 > 1), v26 + 1, 1, v11);
      }

      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      *(v11 + 2) = v26 + 1;
      v27 = &v11[16 * v26];
      *(v27 + 4) = v22;
      *(v27 + 5) = v24;
      v7 = *(v0 + 344) + 1;
      if (v7 == *(v0 + 320))
      {
        v35 = *(v0 + 312);
        goto LABEL_18;
      }
    }

    v28 = *(MEMORY[0x277D724F8] + 4);
    v29 = swift_task_alloc();
    *(v0 + 360) = v29;
    *v29 = v0;
    v29[1] = sub_260DE7814;
    v30 = *(v0 + 296);
    v31 = *(v0 + 240);
    v32 = *(v0 + 104);
    v33 = *(v0 + 112);
    v34 = *(v0 + 96);

    return MEMORY[0x2821DAA28](v31, v30, v32, v33);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
LABEL_18:

    v36 = *(v0 + 296);
    v38 = *(v0 + 264);
    v37 = *(v0 + 272);
    v39 = *(v0 + 240);
    v40 = *(v0 + 216);
    v42 = *(v0 + 184);
    v41 = *(v0 + 192);
    v43 = *(v0 + 160);
    v44 = *(v0 + 136);

    v45 = *(v0 + 8);

    return v45(v11);
  }
}

uint64_t sub_260DE7814()
{
  v2 = *v1;
  v3 = *(*v1 + 360);
  v8 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v4 = *(v2 + 352);
    v5 = *(v2 + 312);

    v6 = sub_260DE8270;
  }

  else
  {
    v6 = sub_260DE793C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_260DE793C()
{
  *(v0 + 16) = 0;
  v1 = *(v0 + 240);
  *(v0 + 24) = 0xE000000000000000;
  v2 = sub_260DF5824();
  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = 0;
    v121 = v2;
    v122 = *(v2 + 16);
    do
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
        goto LABEL_40;
      }

      v9 = *(v0 + 380);
      v11 = *(v0 + 208);
      v10 = *(v0 + 216);
      v12 = *(v0 + 200);
      (*(v11 + 16))(v10, v3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v5, v12);
      v13 = (*(v11 + 88))(v10, v12);
      if (v13 == v9)
      {
        v6 = *(v0 + 216);
        (*(*(v0 + 208) + 96))(v6, *(v0 + 200));
        v7 = *v6;
        v8 = v6[1];
        v1 = v0 + 16;
        MEMORY[0x2666EF400](v7, v8);
      }

      else
      {
        if (v13 != *(v0 + 384))
        {
          v47 = *(v0 + 296);
          v48 = *(v0 + 256);
          v49 = *(v0 + 264);
          v50 = *(v0 + 248);
          v52 = *(v0 + 208);
          v51 = *(v0 + 216);
          v53 = *(v0 + 200);
          v54 = *(v0 + 24);

          sub_260DF5704();
          v55 = sub_260DF56D4();
          v57 = v56;
          (*(v48 + 8))(v49, v50);
          *(v0 + 16) = v55;
          *(v0 + 24) = v57;
          (*(v52 + 8))(v51, v53);
          goto LABEL_17;
        }

        v14 = *(v0 + 388);
        v15 = *(v0 + 216);
        v16 = *(v0 + 192);
        v17 = *(v0 + 176);
        v18 = *(v0 + 184);
        v19 = *(v0 + 168);
        (*(*(v0 + 208) + 96))(v15, *(v0 + 200));
        v20 = *(v15 + 8);

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF30, &qword_260DF8650);
        (*(v17 + 32))(v16, v15 + *(v21 + 48), v19);
        (*(v17 + 16))(v18, v16, v19);
        v22 = (*(v17 + 88))(v18, v19);
        if (v22 == v14)
        {
          v23 = *(v0 + 184);
          v24 = *(v0 + 192);
          v26 = *(v0 + 168);
          v25 = *(v0 + 176);
          v27 = *(v0 + 152);
          v28 = *(v0 + 160);
          v29 = *(v0 + 144);
          (*(v25 + 96))(v23, v26);
          (*(v27 + 32))(v28, v23, v29);
          v30 = sub_260DF5834();
          v1 = v0 + 16;
          MEMORY[0x2666EF400](v30);

          (*(v27 + 8))(v28, v29);
          v3 = v121;
          (*(v25 + 8))(v24, v26);
LABEL_14:
          v4 = v122;
          goto LABEL_4;
        }

        if (v22 != *(v0 + 392))
        {
          if (v22 != *(v0 + 396))
          {
            v107 = *(v0 + 296);
            v108 = *(v0 + 256);
            v109 = *(v0 + 264);
            v110 = *(v0 + 248);
            v112 = *(v0 + 184);
            v111 = *(v0 + 192);
            v113 = *(v0 + 168);
            v114 = *(v0 + 176);
            v115 = *(v0 + 24);

            sub_260DF5704();
            v116 = sub_260DF56D4();
            v118 = v117;
            (*(v108 + 8))(v109, v110);
            v119 = *(v114 + 8);
            v119(v111, v113);
            *(v0 + 16) = v116;
            *(v0 + 24) = v118;
            v119(v112, v113);
            goto LABEL_17;
          }

          v39 = *(v0 + 184);
          v40 = *(v0 + 192);
          v42 = *(v0 + 168);
          v41 = *(v0 + 176);
          v43 = *(v0 + 152);
          v44 = *(v0 + 160);
          v45 = *(v0 + 144);
          (*(v41 + 96))(v39, v42);
          (*(v43 + 32))(v44, v39, v45);
          v46 = sub_260DF5834();
          v1 = v0 + 16;
          MEMORY[0x2666EF400](v46);

          (*(v43 + 8))(v44, v45);
          v3 = v121;
          (*(v41 + 8))(v40, v42);
          goto LABEL_14;
        }

        v31 = *(v0 + 304);
        v32 = *(v0 + 312);
        v33 = *(v0 + 184);
        v120 = *(v0 + 192);
        v35 = *(v0 + 168);
        v34 = *(v0 + 176);
        (*(v34 + 96))(v33, v35);
        v36 = *(*v33 + 16);

        *(v0 + 80) = v36;
        *(v0 + 48) = sub_260DF5DD4();
        *(v0 + 56) = v37;

        MEMORY[0x2666EF400](32, 0xE100000000000000);

        v38 = *(v0 + 56);
        *(v0 + 64) = *(v0 + 48);
        *(v0 + 72) = v38;

        MEMORY[0x2666EF400](v31, v32);

        v1 = v0 + 16;
        v4 = v122;
        MEMORY[0x2666EF400](*(v0 + 64), *(v0 + 72));

        (*(v34 + 8))(v120, v35);
      }

LABEL_4:
      ++v5;
    }

    while (v4 != v5);
  }

LABEL_17:
  v58 = *(v0 + 352);
  v59 = *(v0 + 128);
  v60 = *(v0 + 136);
  v61 = *(v0 + 120);
  v62 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v62;
  sub_260DF51C4();
  sub_260DED220();
  v1 = sub_260DF5BA4();
  v3 = v63;
  (*(v59 + 8))(v60, v61);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + 352);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_40:
    v4 = sub_260DED930(0, *(v4 + 2) + 1, 1, v4);
  }

  v66 = *(v4 + 2);
  v65 = *(v4 + 3);
  if (v66 >= v65 >> 1)
  {
    v4 = sub_260DED930((v65 > 1), v66 + 1, 1, v4);
  }

  v68 = *(v0 + 288);
  v67 = *(v0 + 296);
  v69 = *(v0 + 280);
  (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
  (*(v68 + 8))(v67, v69);
  *(v4 + 2) = v66 + 1;
  v70 = &v4[16 * v66];
  *(v70 + 4) = v1;
  *(v70 + 5) = v3;
  v71 = *(v0 + 344) + 1;
  if (v71 == *(v0 + 320))
  {
LABEL_21:
    v72 = *(v0 + 312);

    v73 = *(v0 + 296);
    v75 = *(v0 + 264);
    v74 = *(v0 + 272);
    v76 = *(v0 + 240);
    v77 = *(v0 + 216);
    v79 = *(v0 + 184);
    v78 = *(v0 + 192);
    v80 = *(v0 + 160);
    v81 = *(v0 + 136);

    v82 = *(v0 + 8);

    return v82(v4);
  }

  else
  {
    while (1)
    {
      *(v0 + 344) = v71;
      *(v0 + 352) = v4;
      v84 = *(v0 + 288) + 16;
      (*(v0 + 336))(*(v0 + 296), *(v0 + 88) + ((*(v0 + 376) + 32) & ~*(v0 + 376)) + *(v0 + 328) * v71, *(v0 + 280));
      v85 = *(sub_260DF5724() + 16);

      if (v85)
      {
        break;
      }

      if (qword_27FE4F990 != -1)
      {
        swift_once();
      }

      v86 = sub_260DF55C4();
      __swift_project_value_buffer(v86, qword_27FE53CE8);
      v87 = sub_260DF55A4();
      v88 = sub_260DF5B64();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_260DCE000, v87, v88, "Skipping here as count is 0", v89, 2u);
        MEMORY[0x2666EFFA0](v89, -1, -1);
      }

      v90 = *(v0 + 296);
      v91 = *(v0 + 272);
      v93 = *(v0 + 248);
      v92 = *(v0 + 256);

      sub_260DF5704();
      v94 = sub_260DF56D4();
      v96 = v95;
      (*(v92 + 8))(v91, v93);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_260DED930(0, *(v4 + 2) + 1, 1, v4);
      }

      v98 = *(v4 + 2);
      v97 = *(v4 + 3);
      if (v98 >= v97 >> 1)
      {
        v4 = sub_260DED930((v97 > 1), v98 + 1, 1, v4);
      }

      (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
      *(v4 + 2) = v98 + 1;
      v99 = &v4[16 * v98];
      *(v99 + 4) = v94;
      *(v99 + 5) = v96;
      v71 = *(v0 + 344) + 1;
      if (v71 == *(v0 + 320))
      {
        goto LABEL_21;
      }
    }

    v100 = *(MEMORY[0x277D724F8] + 4);
    v101 = swift_task_alloc();
    *(v0 + 360) = v101;
    *v101 = v0;
    v101[1] = sub_260DE7814;
    v102 = *(v0 + 296);
    v103 = *(v0 + 240);
    v104 = *(v0 + 104);
    v105 = *(v0 + 112);
    v106 = *(v0 + 96);

    return MEMORY[0x2821DAA28](v103, v102, v104, v105);
  }
}

uint64_t sub_260DE8270()
{
  v1 = v0[34];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[27];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v8 = v0[17];
  (*(v0[36] + 8))(v0[37], v0[35]);

  v9 = v0[1];
  v10 = v0[46];

  return v9();
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromRawToolInvocations(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260DF4C6C;

  return sub_260DEFD88(a1);
}

uint64_t static ToolKitActionStreamWrapper.fetchTitlesFromToolInvocations(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260DE84B8;

  return sub_260DF0494(a1);
}

uint64_t sub_260DE84B8(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_260DE873C(int a1, void *aBlock)
{
  v2[2] = _Block_copy(aBlock);
  sub_260DDE814(0, &qword_27FE4FE18, 0x277CBEA90);
  v3 = sub_260DF5AB4();
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_260DE881C;

  return sub_260DF0494(v3);
}

uint64_t sub_260DE881C()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  v6 = *v1;

  if (v2)
  {
    v7 = sub_260DF52D4();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    v10 = sub_260DF5A94();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v3 + 16);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

void sub_260DE89AC(uint64_t a1, char *a2, unint64_t a3, uint64_t a4, unint64_t a5, void (*a6)(id), uint64_t a7)
{
  v365 = a7;
  v366 = a6;
  v391 = a5;
  v386 = a4;
  v399 = a1;
  v400 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v337 - v10;
  v364 = sub_260DF5444();
  v363 = *(v364 - 8);
  v12 = *(v363 + 64);
  MEMORY[0x28223BE20](v364);
  v368 = &v337 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = sub_260DF5974();
  v361 = *(v362 - 8);
  v14 = *(v361 + 64);
  MEMORY[0x28223BE20](v362);
  v355 = &v337 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50078, &qword_260DF8D98);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v360 = &v337 - v18;
  v379 = sub_260DF54A4();
  v375 = *(v379 - 8);
  v19 = *(v375 + 64);
  MEMORY[0x28223BE20](v379);
  v378 = &v337 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v381 = sub_260DF54B4();
  v374 = *(v381 - 8);
  v21 = *(v374 + 64);
  MEMORY[0x28223BE20](v381);
  v380 = &v337 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B0, &qword_260DF8DE8);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v373 = &v337 - v25;
  v371 = sub_260DF5764();
  v370 = *(v371 - 8);
  v26 = *(v370 + 64);
  v27 = MEMORY[0x28223BE20](v371);
  v357 = (&v337 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v27);
  v377 = &v337 - v29;
  *(&v394 + 1) = sub_260DF5564();
  v390 = *(*(&v394 + 1) - 8);
  v30 = *(v390 + 64);
  v31 = MEMORY[0x28223BE20](*(&v394 + 1));
  v392 = &v337 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v388 = &v337 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B8, &qword_260DF8DF0);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v389 = &v337 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v393 = (&v337 - v38);
  v383 = sub_260DF56E4();
  v376 = *(v383 - 8);
  v39 = *(v376 + 64);
  v40 = MEMORY[0x28223BE20](v383);
  v359 = &v337 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x28223BE20](v40);
  v358 = &v337 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v356 = &v337 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v367 = &v337 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v372 = &v337 - v49;
  MEMORY[0x28223BE20](v48);
  v382 = &v337 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500C0, &qword_260DF8DF8);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x28223BE20](v51 - 8);
  v387 = &v337 - v53;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500C8, &qword_260DF8E00);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x28223BE20](v54 - 8);
  v397 = (&v337 - v56);
  v57 = sub_260DF54E4();
  v58 = *(v57 - 8);
  v59 = *(v58 + 64);
  v60 = MEMORY[0x28223BE20](v57);
  v395 = (&v337 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v60);
  v63 = &v337 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500D0, &qword_260DF8E08);
  v65 = *(*(v64 - 8) + 64);
  MEMORY[0x28223BE20](v64 - 8);
  v398 = &v337 - v66;
  v67 = sub_260DF5534();
  v68 = *(v67 - 8);
  v69 = *(v68 + 8);
  v70 = MEMORY[0x28223BE20](v67);
  v396 = &v337 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = MEMORY[0x28223BE20](v70);
  *&v394 = &v337 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v369 = &v337 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v384 = &v337 - v77;
  MEMORY[0x28223BE20](v76);
  v79 = &v337 - v78;
  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v80 = sub_260DF55C4();
  v401 = __swift_project_value_buffer(v80, qword_27FE53CE8);
  v81 = sub_260DF55A4();
  v82 = sub_260DF5B44();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = swift_slowAlloc();
    v385 = v11;
    v84 = a2;
    v85 = v63;
    v86 = v57;
    v87 = v58;
    v88 = v68;
    v89 = v79;
    v90 = v67;
    v91 = v83;
    *v83 = 0;
    _os_log_impl(&dword_260DCE000, v81, v82, "ToolKit got some event", v83, 2u);
    v92 = v91;
    v67 = v90;
    v79 = v89;
    v68 = v88;
    v58 = v87;
    v57 = v86;
    v63 = v85;
    a2 = v84;
    v11 = v385;
    MEMORY[0x2666EFFA0](v92, -1, -1);
  }

  swift_beginAccess();
  v93 = v400;
  if (*(a2 + 2) >= v400)
  {
    v95 = sub_260DF55A4();
    v103 = sub_260DF5B54();
    if (os_log_type_enabled(v95, v103))
    {
      v97 = swift_slowAlloc();
      *v97 = 134217984;
      *(v97 + 4) = v93;
      v98 = "ToolKit event limit hit: %lu";
      v99 = v103;
      v100 = v95;
      v101 = v97;
      v102 = 12;
      goto LABEL_11;
    }

LABEL_12:

    return;
  }

  v94 = v398;
  sub_260DF5574();
  if ((*(v68 + 6))(v94, 1, v67) == 1)
  {
    sub_260DDE7B4(v94, &qword_27FE500D0, &qword_260DF8E08);
    v95 = sub_260DF55A4();
    v96 = sub_260DF5B64();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 0;
      v98 = "ToolKit tool definition is nil";
      v99 = v96;
      v100 = v95;
      v101 = v97;
      v102 = 2;
LABEL_11:
      _os_log_impl(&dword_260DCE000, v100, v99, v98, v101, v102);
      MEMORY[0x2666EFFA0](v97, -1, -1);
      goto LABEL_12;
    }

    goto LABEL_12;
  }

  (*(v68 + 4))(v79, v94, v67);
  v104 = v397;
  sub_260DF5524();
  if ((*(v58 + 48))(v104, 1, v57) == 1)
  {
    sub_260DDE7B4(v104, &qword_27FE500C8, &qword_260DF8E00);
LABEL_22:
    v115 = v396;
    (*(v68 + 2))(v396, v79, v67);
    v116 = v68;
    v117 = sub_260DF55A4();
    v118 = sub_260DF5B64();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = v67;
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v354 = v79;
      v122 = v121;
      *&v405 = v121;
      *v120 = 136315138;
      v123 = sub_260DF5514();
      if (v124)
      {
        v125 = v123;
      }

      else
      {
        v125 = 7104878;
      }

      if (v124)
      {
        v126 = v124;
      }

      else
      {
        v126 = 0xE300000000000000;
      }

      v127 = *(v116 + 1);
      v127(v115, v119);
      v128 = sub_260DEDBC4(v125, v126, &v405);

      *(v120 + 4) = v128;
      _os_log_impl(&dword_260DCE000, v117, v118, "Ignoring ToolKit event which is not an action %s", v120, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x2666EFFA0](v122, -1, -1);
      MEMORY[0x2666EFFA0](v120, -1, -1);

LABEL_30:
      v127(v354, v119);
      return;
    }

    v129 = *(v116 + 1);
    v129(v115, v67);
    goto LABEL_32;
  }

  v398 = a2;
  v400 = v67;
  (*(v58 + 32))(v63, v104, v57);
  v105 = v395;
  (*(v58 + 104))(v395, *MEMORY[0x277D1F648], v57);
  sub_260DF4A24(&qword_27FE500D8, MEMORY[0x277D1F650]);
  sub_260DF5A74();
  sub_260DF5A74();
  v108 = *(v58 + 8);
  v106 = v58 + 8;
  v107 = v108;
  v108(v105, v57);
  if (v405 != v403)
  {
    v107(v63, v57);
    v67 = v400;
    goto LABEL_22;
  }

  sub_260DF5514();
  v67 = v400;
  v353 = v63;
  if (!v109)
  {
LABEL_34:
    v130 = v394;
    (*(v68 + 2))(v394, v79, v67);
    v131 = v68;
    v132 = sub_260DF55A4();
    v133 = sub_260DF5B64();
    if (os_log_type_enabled(v132, v133))
    {
      v134 = swift_slowAlloc();
      v352 = v107;
      v119 = v67;
      v135 = v134;
      v136 = swift_slowAlloc();
      v351 = v57;
      v137 = v136;
      *&v405 = v136;
      *v135 = 136315138;
      v138 = sub_260DF5514();
      if (v139)
      {
        v140 = v138;
      }

      else
      {
        v140 = 7104878;
      }

      v354 = v79;
      if (v139)
      {
        v141 = v139;
      }

      else
      {
        v141 = 0xE300000000000000;
      }

      v142 = v130;
      v127 = *(v131 + 1);
      v127(v142, v119);
      v143 = sub_260DEDBC4(v140, v141, &v405);

      *(v135 + 4) = v143;
      _os_log_impl(&dword_260DCE000, v132, v133, "Ignoring ToolKit event which is not a workflow action %s", v135, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v137);
      MEMORY[0x2666EFFA0](v137, -1, -1);
      MEMORY[0x2666EFFA0](v135, -1, -1);

      v352(v353, v351);
      goto LABEL_30;
    }

    v129 = *(v131 + 1);
    v129(v130, v67);
    v107(v353, v57);
LABEL_32:
    v129(v79, v67);
    return;
  }

  v110 = v109;
  if ((sub_260DF5A64() & 1) == 0)
  {

    goto LABEL_34;
  }

  v396 = v68;
  if (v391)
  {
    v111 = v57;
    v112 = v387;
    sub_260DF5504();
    v113 = sub_260DF54D4();
    v114 = *(v113 - 8);
    if ((*(v114 + 48))(v112, 1, v113) == 1)
    {
      sub_260DDE7B4(v112, &qword_27FE500C0, &qword_260DF8DF8);
      v67 = v400;
      v57 = v111;
      goto LABEL_56;
    }

    v144 = sub_260DF54C4();
    v145 = v112;
    v146 = v144;
    v148 = v147;
    (*(v114 + 8))(v145, v113);
    v67 = v400;
    v57 = v111;
    if (v148)
    {
      if (v146 == v386 && v148 == v391)
      {

        goto LABEL_48;
      }

      v149 = sub_260DF5DE4();

      if (v149)
      {
        goto LABEL_48;
      }
    }

LABEL_56:

    v170 = v391;

    v171 = sub_260DF55A4();
    v172 = sub_260DF5B64();

    if (os_log_type_enabled(v171, v172))
    {
      v173 = v57;
      v174 = v67;
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v405 = v176;
      *v175 = 136315138;
      *(v175 + 4) = sub_260DEDBC4(v386, v170, &v405);
      _os_log_impl(&dword_260DCE000, v171, v172, "Ignoring ToolKit event that didn't match bundleID filter %s", v175, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v176);
      MEMORY[0x2666EFFA0](v176, -1, -1);
      MEMORY[0x2666EFFA0](v175, -1, -1);

      v107(v353, v173);
      (*(v396 + 1))(v79, v174);
    }

    else
    {

      v107(v353, v57);
      (*(v396 + 1))(v79, v67);
    }

    return;
  }

LABEL_48:
  v350 = v110;
  v352 = v107;
  v150 = v396;
  v151 = *(v396 + 2);
  v152 = v384;
  v348 = v396 + 16;
  v347 = v151;
  v151(v384, v79, v67);
  v153 = sub_260DF55A4();
  v154 = sub_260DF5B44();
  v155 = os_log_type_enabled(v153, v154);
  v385 = v11;
  if (v155)
  {
    v156 = v67;
    v157 = swift_slowAlloc();
    v158 = swift_slowAlloc();
    v351 = v57;
    v159 = v158;
    *&v405 = v158;
    *v157 = 136315138;
    v160 = sub_260DF5514();
    if (v161)
    {
      v162 = v160;
    }

    else
    {
      v162 = 7104878;
    }

    v163 = v152;
    v164 = v106;
    if (v161)
    {
      v165 = v161;
    }

    else
    {
      v165 = 0xE300000000000000;
    }

    v166 = *(v150 + 1);
    v166(v163, v156);
    v167 = sub_260DEDBC4(v162, v165, &v405);
    v106 = v164;
    v168 = v166;

    *(v157 + 4) = v167;
    _os_log_impl(&dword_260DCE000, v153, v154, "ToolKit trying to convert %s", v157, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v159);
    v169 = v159;
    v57 = v351;
    MEMORY[0x2666EFFA0](v169, -1, -1);
    MEMORY[0x2666EFFA0](v157, -1, -1);
  }

  else
  {

    v168 = *(v150 + 1);
    v168(v152, v67);
  }

  v177 = v393;
  sub_260DF54F4();
  sub_260DF4A24(&qword_27FE500E0, MEMORY[0x277D72238]);
  sub_260DF4A24(&qword_27FE500E8, MEMORY[0x277D72898]);
  sub_260DF5474();
  v345 = 0;
  v342 = v168;
  v351 = v57;
  v343 = v106;
  v354 = v79;
  v346 = sub_260DF10A8(MEMORY[0x277D84F90]);
  v178 = sub_260DF5594();
  v179 = 0;
  v180 = *(v178 + 64);
  v349 = v178 + 64;
  v386 = v178;
  v181 = 1 << *(v178 + 32);
  v182 = -1;
  if (v181 < 64)
  {
    v182 = ~(-1 << v181);
  }

  v183 = v182 & v180;
  v184 = (v181 + 63) >> 6;
  v384 = (v390 + 16);
  v397 = (v390 + 32);
  v395 = (v390 + 88);
  LODWORD(v394) = *MEMORY[0x277D20518];
  LODWORD(v391) = *MEMORY[0x277D20520];
  v387 = (v390 + 8);
  v344 = (v390 + 96);
  v341 = (v375 + 16);
  v340 = (v375 + 8);
  v375 = v374 + 16;
  v374 += 8;
  v185 = v392;
  v186 = v389;
LABEL_64:
  v187 = v179;
  if (v183)
  {
    while (1)
    {
      v188 = v187;
LABEL_73:
      v190 = __clz(__rbit64(v183));
      v183 &= v183 - 1;
      v191 = v190 | (v188 << 6);
      v192 = (*(v386 + 48) + 16 * v191);
      v194 = *v192;
      v193 = v192[1];
      v195 = v390;
      v196 = v388;
      v197 = *(&v394 + 1);
      (*(v390 + 16))(v388, *(v386 + 56) + *(v390 + 72) * v191, *(&v394 + 1));
      v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
      v199 = *(v198 + 48);
      v200 = v389;
      *v389 = v194;
      *(v200 + 1) = v193;
      v201 = v196;
      v186 = v200;
      (*(v195 + 32))(&v200[v199], v201, v197);
      (*(*(v198 - 8) + 56))(v186, 0, 1, v198);

      v179 = v188;
      v185 = v392;
      v177 = v393;
LABEL_74:
      sub_260DF49B4(v186, v177);
      v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
      if ((*(*(v202 - 8) + 48))(v177, 1, v202) == 1)
      {
        break;
      }

      v204 = *v177;
      v203 = v177[1];
      v205 = v177 + *(v202 + 48);
      v206 = *(&v394 + 1);
      (*v397)(v185, v205, *(&v394 + 1));
      v207 = (*v395)(v185, v206);
      if (v207 == v394)
      {
        (*v344)(v185, *(&v394 + 1));
        v209 = *v185;
        v210 = swift_projectBox();
        (*v375)(v380, v210, v381);
        v211 = v345;
        v345 = sub_260DF5484();
        v339 = v212;
        if (v211)
        {

          (*v374)(v380, v381);
          goto LABEL_146;
        }

        v406 = sub_260DF5944();
        v407 = MEMORY[0x277D72A68];
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v405);
        v337 = sub_260DF4A24(&qword_27FE500F8, MEMORY[0x277D72A78]);
        sub_260DF4A24(&qword_27FE50100, MEMORY[0x277D727E0]);
        sub_260DF5474();
        v345 = 0;
        sub_260DF4854(&v405, &v403);
        v213 = v346;
        LODWORD(v339) = swift_isUniquelyReferenced_nonNull_native();
        v402 = v213;
        v214 = sub_260DEE470(v204, v203);
        v216 = *(v213 + 16);
        v217 = (v215 & 1) == 0;
        v218 = __OFADD__(v216, v217);
        v219 = v216 + v217;
        v185 = v392;
        if (v218)
        {
          __break(1u);
          goto LABEL_148;
        }

        if (*(v213 + 24) >= v219)
        {
          if (v339)
          {
            goto LABEL_91;
          }

          v346 = v214;
          v339 = v209;
          v235 = v215;
          sub_260DEE864();
          v214 = v346;
          if (v235)
          {
LABEL_92:
            v231 = v214;

            v346 = v402;
            v232 = (v402[7] + 40 * v231);
            __swift_destroy_boxed_opaque_existential_1(v232);
            sub_260DF4854(&v403, v232);
            (*v374)(v380, v381);
            goto LABEL_103;
          }
        }

        else
        {
          LODWORD(v346) = v215;
          sub_260DEE4E8(v219, v339);
          v214 = sub_260DEE470(v204, v203);
          v220 = v215 & 1;
          LOBYTE(v215) = v346;
          if ((v346 & 1) != v220)
          {
            goto LABEL_152;
          }

LABEL_91:
          if (v215)
          {
            goto LABEL_92;
          }
        }

        v236 = v402;
        v402[(v214 >> 6) + 8] |= 1 << v214;
        v237 = (v236[6] + 16 * v214);
        *v237 = v204;
        v237[1] = v203;
        sub_260DF4854(&v403, v236[7] + 40 * v214);
        (*v374)(v380, v381);
        v238 = v236[2];
        v218 = __OFADD__(v238, 1);
        v239 = v238 + 1;
        if (!v218)
        {
          goto LABEL_102;
        }

        goto LABEL_149;
      }

      if (v207 == v391)
      {
        (*v344)(v185, *(&v394 + 1));
        v221 = *v185;
        v222 = swift_projectBox();
        (*v341)(v378, v222, v379);
        v211 = v345;
        v345 = sub_260DF5494();
        v339 = v223;
        if (!v211)
        {
          v406 = sub_260DF5944();
          v407 = MEMORY[0x277D72A68];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v405);
          v337 = sub_260DF4A24(&qword_27FE500F8, MEMORY[0x277D72A78]);
          sub_260DF4A24(&qword_27FE50100, MEMORY[0x277D727E0]);
          sub_260DF5474();
          v345 = 0;
          sub_260DF4854(&v405, &v403);
          v224 = v346;
          LODWORD(v339) = swift_isUniquelyReferenced_nonNull_native();
          v402 = v224;
          v225 = sub_260DEE470(v204, v203);
          v227 = *(v224 + 16);
          v228 = (v226 & 1) == 0;
          v218 = __OFADD__(v227, v228);
          v229 = v227 + v228;
          v185 = v392;
          if (!v218)
          {
            if (*(v224 + 24) < v229)
            {
              LODWORD(v346) = v226;
              sub_260DEE4E8(v229, v339);
              v225 = sub_260DEE470(v204, v203);
              v230 = v226 & 1;
              LOBYTE(v226) = v346;
              if ((v346 & 1) != v230)
              {
                goto LABEL_152;
              }

LABEL_94:
              if (v226)
              {
                goto LABEL_95;
              }

LABEL_101:
              v236 = v402;
              v402[(v225 >> 6) + 8] |= 1 << v225;
              v241 = (v236[6] + 16 * v225);
              *v241 = v204;
              v241[1] = v203;
              sub_260DF4854(&v403, v236[7] + 40 * v225);
              (*v340)(v378, v379);
              v242 = v236[2];
              v218 = __OFADD__(v242, 1);
              v239 = v242 + 1;
              if (!v218)
              {
LABEL_102:
                v346 = v236;
                v236[2] = v239;
                goto LABEL_103;
              }

LABEL_150:
              __break(1u);
LABEL_151:
              __break(1u);
LABEL_152:
              sub_260DF5E04();
              __break(1u);
              return;
            }

            if (v339)
            {
              goto LABEL_94;
            }

            v346 = v225;
            v339 = v221;
            v240 = v226;
            sub_260DEE864();
            v225 = v346;
            if ((v240 & 1) == 0)
            {
              goto LABEL_101;
            }

LABEL_95:
            v233 = v225;

            v346 = v402;
            v234 = (v402[7] + 40 * v233);
            __swift_destroy_boxed_opaque_existential_1(v234);
            sub_260DF4854(&v403, v234);
            (*v340)(v378, v379);
LABEL_103:

            goto LABEL_64;
          }

LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
          goto LABEL_150;
        }

        (*v340)(v378, v379);
LABEL_146:
        (*(v376 + 8))(v382, v383);

LABEL_106:

        v247 = v354;
        v248 = v351;
        v249 = v353;
        v250 = v352;
        v251 = v342;
        v252 = v211;
        v253 = sub_260DF55A4();
        v254 = sub_260DF5B64();

        if (os_log_type_enabled(v253, v254))
        {
          v255 = swift_slowAlloc();
          v256 = v211;
          v257 = v251;
          v258 = v248;
          v259 = swift_slowAlloc();
          *v255 = 138412290;
          v260 = v256;
          v261 = _swift_stdlib_bridgeErrorToNSError();
          *(v255 + 4) = v261;
          *v259 = v261;
          _os_log_impl(&dword_260DCE000, v253, v254, "Failed to get ToolInvocation %@", v255, 0xCu);
          sub_260DDE7B4(v259, &unk_27FE4FF50, &qword_260DF8A50);
          v262 = v259;
          v248 = v258;
          v251 = v257;
          v211 = v256;
          MEMORY[0x2666EFFA0](v262, -1, -1);
          v263 = v255;
          v249 = v353;
          MEMORY[0x2666EFFA0](v263, -1, -1);
        }

        v250(v249, v248);
        v251(v247, v400);
        return;
      }

      (*v387)(v185, *(&v394 + 1));
      v187 = v179;
      if (!v183)
      {
        goto LABEL_66;
      }
    }

    v243 = v376;
    v244 = v382;
    v245 = v383;
    (*(v376 + 16))(v372, v382, v383);
    v246 = sub_260DF5814();
    (*(*(v246 - 8) + 56))(v373, 1, 1, v246);

    v211 = v345;
    sub_260DF56F4();
    if (v211)
    {
      (*(v243 + 8))(v244, v245);
      goto LABEL_106;
    }

    v264 = sub_260DF5754();
    v265 = v354;
    v266 = v351;
    v267 = v352;
    if (!v264)
    {

      v269 = v400;
      v270 = v369;
LABEL_113:
      v347(v270, v265, v269);
      v271 = sub_260DF55A4();
      v272 = sub_260DF5B64();
      if (os_log_type_enabled(v271, v272))
      {
        v273 = swift_slowAlloc();
        v274 = swift_slowAlloc();
        *&v405 = v274;
        *v273 = 136315138;
        v275 = sub_260DF5514();
        if (v276)
        {
          v277 = v275;
        }

        else
        {
          v277 = 7104878;
        }

        if (v276)
        {
          v278 = v276;
        }

        else
        {
          v278 = 0xE300000000000000;
        }

        v279 = v270;
        v280 = v342;
        v342(v279, v269);
        v281 = sub_260DEDBC4(v277, v278, &v405);

        *(v273 + 4) = v281;
        _os_log_impl(&dword_260DCE000, v271, v272, "Failed to encode ToolKit event %s", v273, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v274);
        MEMORY[0x2666EFFA0](v274, -1, -1);
        MEMORY[0x2666EFFA0](v273, -1, -1);

        (*(v370 + 8))(v377, v371);
        (*(v376 + 8))(v382, v383);
        v352(v353, v351);
        v280(v354, v269);
      }

      else
      {

        v282 = v342;
        v342(v270, v269);
        (*(v370 + 8))(v377, v371);
        (*(v376 + 8))(v382, v383);
        v267(v353, v266);
        v282(v265, v269);
      }

      return;
    }

    v405 = xmmword_260DF89D0;
    v268 = v264;
    sub_260DF53A4();

    v269 = v400;
    v270 = v369;
    if (*(&v405 + 1) >> 60 == 15)
    {

      goto LABEL_113;
    }

    v394 = v405;
    v283 = v367;
    v284 = v377;
    sub_260DF5704();
    v395 = sub_260DF56D4();
    v286 = v285;
    v397 = *(v243 + 8);
    v397(v283, v383);
    v183 = v370;
    v177 = v357;
    v185 = v371;
    (*(v370 + 16))(v357, v284, v371);

    v188 = sub_260DF55A4();
    v287 = sub_260DF5B44();
    v401 = v286;

    if (os_log_type_enabled(v188, v287))
    {
      v288 = v183;
      v289 = swift_slowAlloc();
      v290 = swift_slowAlloc();
      *&v405 = v290;
      *v289 = 136315394;
      v291 = v367;
      sub_260DF5704();
      v292 = sub_260DF56C4();
      v294 = v293;
      v397(v291, v383);
      v393 = *(v288 + 8);
      (v393)(v177, v371);
      v295 = sub_260DEDBC4(v292, v294, &v405);

      *(v289 + 4) = v295;
      *(v289 + 12) = 2080;
      *(v289 + 14) = sub_260DEDBC4(v395, v401, &v405);
      _os_log_impl(&dword_260DCE000, v188, v287, "Got tool %s:%s", v289, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666EFFA0](v290, -1, -1);
      MEMORY[0x2666EFFA0](v289, -1, -1);

      goto LABEL_126;
    }
  }

  else
  {
LABEL_66:
    if (v184 <= v187 + 1)
    {
      v189 = v187 + 1;
    }

    else
    {
      v189 = v184;
    }

    v179 = v189 - 1;
    while (1)
    {
      v188 = v187 + 1;
      if (__OFADD__(v187, 1))
      {
        break;
      }

      if (v188 >= v184)
      {
        v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500F0, &qword_260DF8E10);
        (*(*(v208 - 8) + 56))(v186, 1, 1, v208);
        v183 = 0;
        goto LABEL_74;
      }

      v183 = *(v349 + 8 * v188);
      ++v187;
      if (v183)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
  }

  v393 = *(v183 + 8);
  (v393)(v177, v185);
LABEL_126:
  v296 = v356;
  sub_260DF5704();
  v392 = sub_260DF56C4();
  v391 = v297;
  v298 = v383;
  v299 = v397;
  v397(v296, v383);
  v300 = v358;
  sub_260DF5704();
  v301 = v360;
  sub_260DF56B4();
  v299(v300, v298);
  v302 = v361;
  v303 = v362;
  v304 = (*(v361 + 48))(v301, 1, v362);
  v305 = v363;
  v306 = v385;
  if (v304 == 1)
  {
    sub_260DDE7B4(v301, &qword_27FE50078, &qword_260DF8D98);
    v307 = v367;
    sub_260DF5704();
    v301 = v355;
    sub_260DF5674();
    v397(v307, v298);
  }

  v390 = sub_260DF5964();
  v389 = v308;
  (*(v302 + 8))(v301, v303);
  v309 = v359;
  sub_260DF5704();
  v310 = sub_260DF56A4();
  v312 = v311;
  v397(v309, v298);
  if (v312)
  {
    v313 = v310;
  }

  else
  {
    v313 = 0;
  }

  if (v312)
  {
    v314 = v312;
  }

  else
  {
    v314 = 0xE000000000000000;
  }

  sub_260DF5584();
  v315 = *(v305 + 48);
  v316 = v364;
  if (v315(v306, 1, v364) == 1)
  {
    sub_260DF5434();
    if (v315(v306, 1, v316) != 1)
    {
      sub_260DDE7B4(v306, &qword_27FE4FF38, &qword_260DF8A48);
    }
  }

  else
  {
    (*(v305 + 32))(v368, v306, v316);
  }

  v317 = v346;
  v318 = *(v346 + 16);
  if (!v318)
  {
    goto LABEL_141;
  }

  v319 = sub_260DEDB40(*(v346 + 16), 0);
  v320 = sub_260DEFB04(&v405, v319 + 4, v318, v317);
  sub_260DF472C();
  if (v320 != v318)
  {
    __break(1u);
LABEL_141:

    v319 = MEMORY[0x277D84F90];
  }

  v321 = type metadata accessor for ToolKitActionStreamEvent();
  v322 = objc_allocWithZone(v321);
  v323 = v394;
  *&v322[OBJC_IVAR___ATXToolKitActionStreamEvent_encodedTool] = v394;
  v324 = &v322[OBJC_IVAR___ATXToolKitActionStreamEvent_toolID];
  v325 = v391;
  *v324 = v392;
  *(v324 + 1) = v325;
  v326 = &v322[OBJC_IVAR___ATXToolKitActionStreamEvent_bundleID];
  v327 = v389;
  *v326 = v390;
  v326[1] = v327;
  v328 = &v322[OBJC_IVAR___ATXToolKitActionStreamEvent_title];
  v329 = v401;
  *v328 = v395;
  *(v328 + 1) = v329;
  v330 = &v322[OBJC_IVAR___ATXToolKitActionStreamEvent_subtitle];
  *v330 = v313;
  v330[1] = v314;
  v331 = v368;
  (*(v305 + 16))(&v322[OBJC_IVAR___ATXToolKitActionStreamEvent_eventTimeStamp], v368, v316);
  *&v322[OBJC_IVAR___ATXToolKitActionStreamEvent_parameterKeys] = v319;
  sub_260DE17F4(v323, *(&v323 + 1));
  v404.receiver = v322;
  v404.super_class = v321;
  v332 = objc_msgSendSuper2(&v404, sel_init);
  (*(v305 + 8))(v331, v316);
  v366(v332);

  sub_260DE1BC8(v323, *(&v323 + 1));
  (v393)(v377, v371);
  v397(v382, v383);
  v352(v353, v351);
  v342(v354, v400);
  v333 = v398;
  swift_beginAccess();
  v334 = *(v333 + 2);
  v335 = __CFADD__(v334, 1);
  v336 = v334 + 1;
  if (v335)
  {
    goto LABEL_151;
  }

  *(v333 + 2) = v336;
}

uint64_t sub_260DEB9FC(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = a1;
  MEMORY[0x2666EF480]();
  if (*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v6 = *((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_260DF5AC4();
  }

  sub_260DF5AE4();
  return swift_endAccess();
}

uint64_t static ToolKitActionStreamWrapper.lastDateForToolKitActionEvent()@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_260DF5444();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v33 - v11;
  v35 = swift_allocBox();
  v14 = v13;
  sub_260DF5434();
  sub_260DF5434();
  v15 = *(v2 + 56);
  v15(v12, 0, 1, v1);
  sub_260DF5404();
  v15(v10, 0, 1, v1);
  v16 = *(v2 + 48);
  v17 = 0;
  if (v16(v12, 1, v1) != 1)
  {
    v17 = sub_260DF5414();
    (*(v2 + 8))(v12, v1);
  }

  if (v16(v10, 1, v1) == 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = sub_260DF5414();
    (*(v2 + 8))(v10, v1);
  }

  v19 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v17 endDate:v18 maxEvents:1 lastN:100000 reversed:1];

  sub_260DF5544();
  v20 = *MEMORY[0x277CEBB48];
  sub_260DF59C4();
  sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460]);
  v21 = v19;
  sub_260DF5554();
  v33 = v21;

  __swift_project_boxed_opaque_existential_1(v36, v36[3]);

  sub_260DF5634();

  __swift_destroy_boxed_opaque_existential_1(v36);
  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v22 = sub_260DF55C4();
  __swift_project_value_buffer(v22, qword_27FE53CE8);

  v23 = sub_260DF55A4();
  v24 = sub_260DF5B54();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36[0] = v26;
    *v25 = 136315138;
    swift_beginAccess();
    v27 = v5;
    (*(v2 + 16))(v5, v14, v1);
    sub_260DF4A24(&qword_27FE4FF48, MEMORY[0x277CC9578]);
    v28 = sub_260DF5DD4();
    v30 = v29;
    (*(v2 + 8))(v27, v1);
    v31 = sub_260DEDBC4(v28, v30, v36);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_260DCE000, v23, v24, "Last date of ToolKit event %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2666EFFA0](v26, -1, -1);
    MEMORY[0x2666EFFA0](v25, -1, -1);
  }

  swift_beginAccess();
  (*(v2 + 16))(v34, v14, v1);
}

void sub_260DEC2F4(void **a1)
{
  v1 = *a1;
  if (!*a1)
  {
    if (qword_27FE4F990 != -1)
    {
      swift_once();
    }

    v9 = sub_260DF55C4();
    __swift_project_value_buffer(v9, qword_27FE53CE8);
    oslog = sub_260DF55A4();
    v10 = sub_260DF5B54();
    if (!os_log_type_enabled(oslog, v10))
    {
      goto LABEL_11;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_260DCE000, oslog, v10, "ToolKit stream finished", v11, 2u);
    v8 = v11;
LABEL_10:
    MEMORY[0x2666EFFA0](v8, -1, -1);
LABEL_11:
    v12 = oslog;

    goto LABEL_13;
  }

  if (qword_27FE4F990 != -1)
  {
    swift_once();
  }

  v2 = sub_260DF55C4();
  __swift_project_value_buffer(v2, qword_27FE53CE8);
  v3 = v1;
  oslog = sub_260DF55A4();
  v4 = sub_260DF5B64();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&dword_260DCE000, oslog, v4, "Failed to enumerate toolKit stream %@", v5, 0xCu);
    sub_260DDE7B4(v6, &unk_27FE4FF50, &qword_260DF8A50);
    MEMORY[0x2666EFFA0](v6, -1, -1);
    v8 = v5;
    goto LABEL_10;
  }

  v12 = v1;

LABEL_13:
}

uint64_t sub_260DEC51C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  v4 = sub_260DF5444();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_projectBox();
  sub_260DF5584();
  v10 = *(v5 + 48);
  if (v10(v3, 1, v4) == 1)
  {
    sub_260DF5434();
    if (v10(v3, 1, v4) != 1)
    {
      sub_260DDE7B4(v3, &qword_27FE4FF38, &qword_260DF8A48);
    }
  }

  else
  {
    (*(v5 + 32))(v8, v3, v4);
  }

  swift_beginAccess();
  return (*(v5 + 40))(v9, v8, v4);
}

uint64_t sub_260DEC7D4(uint64_t a1)
{
  v2 = sub_260DF5644();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_260DF57A4();
}

uint64_t sub_260DEC93C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50050, &qword_260DF8D58);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - v4, a1);
  return sub_260DF57D4();
}

uint64_t sub_260DECA80(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x277D85DE8];
  *&v41 = a1;
  *(&v41 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50040, &qword_260DF8D48);
  if (swift_dynamicCast())
  {
    sub_260DF4854(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_260DF5254();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_260DDE7B4(__src, &qword_27FE50048, &qword_260DF8D50);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_260DF5C34();
  }

  sub_260DEEA0C(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_260DF34D0(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x28223BE20](*&__src[0]);
  v10 = sub_260DEEAD4(sub_260DF47EC);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_260DF5374();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_260DEFC70(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_260DF5A14();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_260DF5A44();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_260DF5C34();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_260DEFC70(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_260DF5A24();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_260DF5384();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_260DF5384();
    sub_260DE1BC8(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_260DE1BC8(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_260DE17F4(*&__src[0], *(&__src[0] + 1));

  sub_260DD2994(v32, *(&v32 + 1));
  v33 = *MEMORY[0x277D85DE8];
  return v32;
}

id ToolKitActionStreamWrapper.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id _s25ProactivePredictionClient24ToolKitActionStreamEventCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_260DED0B8()
{
  result = qword_27FE4FEE0;
  if (!qword_27FE4FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FEE0);
  }

  return result;
}

unint64_t sub_260DED10C()
{
  result = qword_27FE4FEE8;
  if (!qword_27FE4FEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FEE8);
  }

  return result;
}

unint64_t sub_260DED160()
{
  result = qword_27FE4FF10;
  if (!qword_27FE4FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FF10);
  }

  return result;
}

uint64_t sub_260DED1B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4FEF8, &qword_260DF8A08);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_260DED220()
{
  result = qword_27FE4FF28;
  if (!qword_27FE4FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FF28);
  }

  return result;
}

uint64_t sub_260DED274(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_260DF4C58;

  return v7();
}

uint64_t sub_260DED35C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_260DDA5F8;

  return v8();
}

uint64_t sub_260DED444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF0, &qword_260DF8CD0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v25 - v11;
  sub_260DF4B20(a3, v25 - v11, &qword_27FE4FFF0, &qword_260DF8CD0);
  v13 = sub_260DF5B34();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_260DDE7B4(v12, &qword_27FE4FFF0, &qword_260DF8CD0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_260DF5B24();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = sub_260DF5AF4();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = sub_260DF59E4() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_260DDE7B4(a3, &qword_27FE4FFF0, &qword_260DF8CD0);

    return v23;
  }

LABEL_8:
  sub_260DDE7B4(a3, &qword_27FE4FFF0, &qword_260DF8CD0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_260DED740(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260DED838;

  return v7(a1);
}

uint64_t sub_260DED838()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

char *sub_260DED930(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
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

char *sub_260DEDA3C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50030, &qword_260DF8D38);
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

void *sub_260DEDB40(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_260DEDBC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_260DEDC90(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_260DE16C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_260DEDC90(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_260DEDD9C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_260DF5C34();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_260DEDD9C(uint64_t a1, unint64_t a2)
{
  v4 = sub_260DEDDE8(a1, a2);
  sub_260DEDF18(&unk_2873598C0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_260DEDDE8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_260DEE004(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_260DF5C34();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_260DF5A14();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_260DEE004(v10, 0);
        result = sub_260DF5BD4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_260DEDF18(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_260DEE078(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_260DEE004(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500A8, &qword_260DF8DE0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_260DEE078(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500A8, &qword_260DF8DE0);
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

size_t sub_260DEE16C(size_t a1, int64_t a2, char a3)
{
  result = sub_260DEE18C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_260DEE18C(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50120, &qword_260DF8E28);
  v10 = *(sub_260DF5764() - 8);
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
  v15 = *(sub_260DF5764() - 8);
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

char *sub_260DEE364(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50038, &qword_260DF8D40);
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

unint64_t sub_260DEE470(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_260DF5E54();
  sub_260DF59F4();
  v6 = sub_260DF5E74();

  return sub_260DEE7AC(a1, a2, v6);
}

uint64_t sub_260DEE4E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
  v36 = a2;
  result = sub_260DF5CB4();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_260DF4854(v25, v37);
      }

      else
      {
        sub_260DF4ABC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_260DF5E54();
      sub_260DF59F4();
      result = sub_260DF5E74();
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
      result = sub_260DF4854(v37, *(v8 + 56) + 40 * v16);
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

unint64_t sub_260DEE7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_260DF5DE4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_260DEE864()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
  v2 = *v0;
  v3 = sub_260DF5CA4();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_260DF4ABC(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_260DF4854(v25, *(v4 + 56) + v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_260DEEA0C@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_260DF3418(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_260DF5244();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_260DF51F4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_260DF5364();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_260DEEAD4(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x277D85DE8];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_260DD2994(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_260DD2994(v6, v5);
    *v3 = xmmword_260DF89E0;
    sub_260DD2994(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_260DF5204() && __OFSUB__(v6, sub_260DF5234()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = sub_260DF5244();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_260DF51E4();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_260DEFA50(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    sub_260DD2994(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_260DF89E0;
    sub_260DD2994(0, 0xC000000000000000);
    sub_260DF5344();
    result = sub_260DEFA50(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_260DEEE78@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_260DF3418(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_260DF3570(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_260DF35EC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_260DEEF0C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_260DEFC5C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_260DEEF78(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_260DEEF78(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_260DF5DC4();
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
        v5 = sub_260DF5AD4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_260DEF140(v7, v8, a1, v4);
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
    return sub_260DEF070(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_260DEF070(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_260DF5DE4(), (result & 1) == 0))
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

uint64_t sub_260DEF140(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_260DEF9D0(v8);
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
        sub_260DEF71C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_260DF5DE4();
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
            result = sub_260DF5DE4();
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
      result = sub_260DEDA3C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_260DEDA3C((v39 > 1), v40 + 1, 1, v8);
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
        sub_260DEF71C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_260DEF9D0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_260DEF944(v44);
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
    if (v37 || (result = sub_260DF5DE4(), (result & 1) == 0))
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

uint64_t sub_260DEF71C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_260DF5DE4() & 1) != 0)
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
      if (!v21 && (sub_260DF5DE4() & 1) != 0)
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

uint64_t sub_260DEF944(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_260DEF9D0(v3);
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

void *sub_260DEF9E4(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_260DEFA50(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_260DF5204();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_260DF5234();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_260DF5224();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

void *sub_260DEFB04(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_260DEFC70(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_260DF5A54();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x2666EF430](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_260DEFCEC@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = sub_260DF5BF4();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_260DEFD3C()
{
  v0 = sub_260DF5CD4();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_260DEFD88(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(sub_260DF5464() - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v3 = *(*(sub_260DF5914() - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v4 = sub_260DF58E4();
  v1[5] = v4;
  v5 = *(v4 - 8);
  v1[6] = v5;
  v6 = *(v5 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DEFEA0, 0, 0);
}

uint64_t sub_260DEFEA0()
{
  v1 = v0[7];
  v3 = v0[3];
  v2 = v0[4];
  sub_260DF5904();
  sub_260DF5454();
  sub_260DF58D4();
  v4 = *(MEMORY[0x277D727A0] + 4);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_260DEFF70;
  v6 = v0[7];

  return MEMORY[0x2821DADB0](v6);
}

uint64_t sub_260DEFF70(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {
    (*(v4[6] + 8))(v4[7], v4[5]);

    return MEMORY[0x2822009F8](sub_260DF0348, 0, 0);
  }

  else
  {
    (*(v4[6] + 8))(v4[7], v4[5]);
    v7 = swift_task_alloc();
    v4[11] = v7;
    *v7 = v6;
    v7[1] = sub_260DF0144;
    v8 = v4[2];

    return sub_260DE5D88(v8, a1);
  }
}

uint64_t sub_260DF0144(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_260DF03C8;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_260DF026C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_260DF026C()
{
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
  swift_getOpaqueTypeConformance2();
  sub_260DF57F4();
  swift_unknownObjectRelease();

  v5 = v0[1];
  v6 = v0[13];

  return v5(v6);
}

uint64_t sub_260DF0348()
{
  v1 = v0[10];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t sub_260DF03C8()
{
  v1 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50128, &qword_260DF8E38);
  swift_getOpaqueTypeConformance2();
  sub_260DF57F4();
  swift_unknownObjectRelease();
  v2 = v0[12];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

uint64_t sub_260DF0494(uint64_t a1)
{
  v1[2] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = sub_260DF5764();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260DF0598, 0, 0);
}

size_t sub_260DF0598()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
LABEL_23:
    v2 = sub_260DF5C94();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v37 = MEMORY[0x277D84F90];
    result = sub_260DEE16C(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = 0;
      v6 = v0[6];
      v3 = v37;
      v30 = v0[2] + 32;
      v31 = v1 & 0xFFFFFFFFFFFFFF8;
      v33 = (v6 + 48);
      v34 = v1 & 0xC000000000000001;
      v32 = v6;
      v7 = (v6 + 32);
      v1 = &qword_27FE50000;
      while (1)
      {
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if (v34)
        {
          v8 = MEMORY[0x2666EF600](v5, v0[2]);
        }

        else
        {
          if (v5 >= *(v31 + 16))
          {
            goto LABEL_22;
          }

          v8 = *(v30 + 8 * v5);
        }

        v10 = v0[4];
        v9 = v0[5];
        v11 = v0[3];
        v36 = v8;
        sub_260DF5744();
        sub_260DF4B20(v10, v11, &qword_27FE50000, &qword_260DF8648);
        if ((*v33)(v11, 1, v9) == 1)
        {
          break;
        }

        v35 = v5 + 1;
        v12 = v0[7];
        v14 = v0[4];
        v13 = v0[5];
        v15 = v3;
        v16 = v0[3];

        sub_260DDE7B4(v14, &qword_27FE50000, &qword_260DF8648);
        v17 = *v7;
        v18 = v16;
        v3 = v15;
        (*v7)(v12, v18, v13);
        v20 = *(v15 + 16);
        v19 = *(v15 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_260DEE16C(v19 > 1, v20 + 1, 1);
          v3 = v15;
        }

        v21 = v0[7];
        v22 = v0[5];
        *(v3 + 16) = v20 + 1;
        v17(v3 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v20, v21, v22);
        ++v5;
        v1 = &qword_27FE50000;
        if (v35 == v2)
        {
          goto LABEL_15;
        }
      }

      v24 = v0[4];
      sub_260DDE7B4(v0[3], &qword_27FE50000, &qword_260DF8648);
      sub_260DF4BE0();
      swift_allocError();
      *v25 = 0xD00000000000001BLL;
      v25[1] = 0x8000000260DF9C20;
      swift_willThrow();

      sub_260DDE7B4(v24, &qword_27FE50000, &qword_260DF8648);

      v26 = v0[7];
      v27 = v0[3];
      v28 = v0[4];

      v29 = v0[1];

      return v29();
    }
  }

  else
  {
LABEL_15:
    v0[8] = v3;
    v23 = swift_task_alloc();
    v0[9] = v23;
    *v23 = v0;
    v23[1] = sub_260DF0944;

    return sub_260DEFD88(v3);
  }

  return result;
}

uint64_t sub_260DF0944(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_260DF0AF8;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_260DF0A6C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_260DF0A6C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[3];
  v3 = v0[4];

  v5 = v0[1];
  v6 = v0[11];

  return v5(v6);
}

uint64_t sub_260DF0AF8()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];
  v5 = v0[3];
  v4 = v0[4];

  v6 = v0[1];

  return v6();
}

void _s25ProactivePredictionClient26ToolKitActionStreamWrapperC09enumeratedE6Events9startDate03endL05limit14bundleIDFilter8reversed10enumeratory10Foundation0L0V_AMSuSSSgSbyAA0defG5EventCctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v45 = a5;
  v46 = a8;
  v43 = a4;
  v44 = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  v47 = swift_allocObject();
  *(v47 + 16) = 0;
  v19 = sub_260DF5444();
  v20 = *(v19 - 8);
  v21 = v20;
  v22 = (v20 + 16);
  if (a6)
  {
    v23 = a2;
  }

  else
  {
    v23 = a1;
  }

  if (a6)
  {
    a2 = a1;
  }

  (*(v20 + 16))(v18, v23, v19);
  sub_260DF5444();
  v24 = *(v21 + 56);
  v24(v18, 0, 1, v19);
  (*v22)(v16, a2, v19);
  v24(v16, 0, 1, v19);
  if (a3 < 0)
  {
    __break(1u);
    swift_once();
    v31 = sub_260DF55C4();
    __swift_project_value_buffer(v31, qword_27FE53CE8);
    v32 = a6;
    v33 = sub_260DF55A4();
    v34 = sub_260DF5B64();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138412290;
      v37 = a6;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v35 + 4) = v38;
      *v36 = v38;
      _os_log_impl(&dword_260DCE000, v33, v34, "Failed to get events from ToolKit stream %@", v35, 0xCu);
      sub_260DDE7B4(v36, &unk_27FE4FF50, &qword_260DF8A50);
      MEMORY[0x2666EFFA0](v36, -1, -1);
      MEMORY[0x2666EFFA0](v35, -1, -1);

      return;
    }
  }

  else
  {
    v25 = *(v21 + 48);
    if (v25(v18, 1, v19) == 1)
    {
      v26 = 0;
    }

    else
    {
      v26 = sub_260DF5414();
      (*(v21 + 8))(v18, v19);
    }

    if (v25(v16, 1, v19) == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = sub_260DF5414();
      (*(v21 + 8))(v16, v19);
    }

    v28 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v26 endDate:v27 maxEvents:a3 lastN:a3 reversed:a6 & 1];

    sub_260DF5544();
    v29 = *MEMORY[0x277CEBB48];
    sub_260DF59C4();
    sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460]);
    v30 = v28;
    sub_260DF5554();

    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v39 = swift_allocObject();
    v40 = v46;
    v39[2] = v47;
    v39[3] = a3;
    v41 = v44;
    v39[4] = v43;
    v39[5] = v45;
    v39[6] = v41;
    v39[7] = v40;

    sub_260DF5634();

    __swift_destroy_boxed_opaque_existential_1(v48);
  }
}

unint64_t sub_260DF10A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50108, &qword_260DF8E18);
    v3 = sub_260DF5CC4();
    v4 = a1 + 32;

    while (1)
    {
      sub_260DF4B20(v4, &v13, &qword_27FE50110, &qword_260DF8E20);
      v5 = v13;
      v6 = v14;
      result = sub_260DEE470(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260DF4854(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC04toolE6Events9startDate03endL05limit14bundleIDFilterSayAA0defG5EventCG10Foundation0L0V_ANSuSSSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v55 = a4;
  v56 = a5;
  v8 = sub_260DF5444();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v55 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FF38, &qword_260DF8A48);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v55 - v18;
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F90];
  v61 = swift_allocObject();
  *(v61 + 16) = 0;
  v62 = *(v9 + 16);
  v63 = v9 + 16;
  v62(v19, a2, v8);
  (*(v9 + 56))(v19, 0, 1, v8);
  if (a3 < 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  v64 = v20;

  v57 = a1;
  v21 = sub_260DF5414();
  v22 = (*(v9 + 48))(v19, 1, v8);
  v59 = v15;
  v60 = (v20 + 16);
  v58 = a2;
  if (v22 == 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = sub_260DF5414();
    (*(v9 + 8))(v19, v8);
  }

  v24 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v21 endDate:v23 maxEvents:a3 lastN:a3 reversed:0];

  sub_260DF5544();
  v25 = *MEMORY[0x277CEBB48];
  sub_260DF59C4();
  sub_260DF4A24(&qword_27FE4FF40, MEMORY[0x277D20460]);
  v26 = v24;
  sub_260DF5554();

  __swift_project_boxed_opaque_existential_1(v65, v65[3]);
  v27 = swift_allocObject();
  v27[2] = v61;
  v27[3] = a3;
  v27[4] = v55;
  v27[5] = v56;
  v27[6] = sub_260DF4994;
  v28 = v64;
  v27[7] = v64;

  sub_260DF5634();

  a1 = v28;

  __swift_destroy_boxed_opaque_existential_1(v65);

  v15 = v13;
  if (qword_27FE4F990 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v29 = sub_260DF55C4();
  __swift_project_value_buffer(v29, qword_27FE53CE8);
  v30 = v59;
  v31 = v62;
  v62(v59, v57, v8);
  v31(v15, v58, v8);
  swift_retain_n();
  v32 = sub_260DF55A4();
  v33 = sub_260DF5B74();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v65[0] = v63;
    *v34 = 136315650;
    sub_260DF4A24(&qword_27FE4FF48, MEMORY[0x277CC9578]);
    v35 = sub_260DF5DD4();
    v36 = v15;
    v38 = v37;
    v39 = *(v9 + 8);
    v39(v30, v8);
    v40 = sub_260DEDBC4(v35, v38, v65);

    *(v34 + 4) = v40;
    *(v34 + 12) = 2080;
    v41 = sub_260DF5DD4();
    v43 = v42;
    v39(v36, v8);
    v44 = sub_260DEDBC4(v41, v43, v65);

    *(v34 + 14) = v44;
    *(v34 + 22) = 2048;
    v45 = v60;
    swift_beginAccess();
    v46 = *v45;
    if (*v45 >> 62)
    {
      if (v46 < 0)
      {
        v54 = *v45;
      }

      v47 = sub_260DF5C94();
    }

    else
    {
      v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v48 = v64;

    *(v34 + 24) = v47;

    _os_log_impl(&dword_260DCE000, v32, v33, "Enumerate toolKit stream %s ----> %s: %ld events", v34, 0x20u);
    v49 = v63;
    swift_arrayDestroy();
    MEMORY[0x2666EFFA0](v49, -1, -1);
    v50 = v34;
    a1 = v48;
    MEMORY[0x2666EFFA0](v50, -1, -1);
  }

  else
  {

    v51 = *(v9 + 8);
    v51(v15, v8);
    v51(v30, v8);
  }

  swift_beginAccess();
  v52 = *(a1 + 16);

  return v52;
}

uint64_t sub_260DF1A38(uint64_t a1)
{
  v2 = sub_260DF5654();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50090, &qword_260DF8DD8);
    v10 = sub_260DF5BC4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_260DF4A24(&qword_27FE50098, MEMORY[0x277D72108]);
      v18 = sub_260DF5984();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_260DF4A24(&qword_27FE500A0, MEMORY[0x277D72108]);
          v25 = sub_260DF59A4();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC013toolIDForSiriE6Intent8bundleID15intentClassNameS2S_SStFZ_0(unint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v104 = a4;
  v105 = a1;
  v111 = a3;
  v106 = a2;
  v4 = sub_260DF5664();
  v107 = *(v4 - 8);
  v5 = *(v107 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = (v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v95 = sub_260DF5974();
  v93 = *(v95 - 8);
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v95);
  v112 = v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50078, &qword_260DF8D98);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v88 - v12;
  v14 = sub_260DF56E4();
  v96 = *(v14 - 8);
  v15 = *(v96 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = v88 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_260DF5934();
  v103 = *(v108 - 8);
  v18 = *(v103 + 64);
  MEMORY[0x28223BE20](v108);
  v101 = v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_260DF5464();
  v102 = *(v20 - 8);
  v21 = *(v102 + 64);
  MEMORY[0x28223BE20](v20);
  v100 = v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_260DF5644();
  v97 = *(v23 - 8);
  v98 = v23;
  v24 = *(v97 + 64);
  MEMORY[0x28223BE20](v23);
  v26 = (v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = sub_260DF57E4();
  v110 = *(v99 - 8);
  v27 = *(v110 + 64);
  v28 = MEMORY[0x28223BE20](v99);
  v30 = v88 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v109 = v88 - v31;
  sub_260DF58C4();
  v32 = sub_260DF58B4();
  v89 = v20;
  v90 = v13;
  v94 = v17;
  v92 = v14;
  v91 = v32;
  sub_260DF57B4();
  v88[1] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50080, &qword_260DF8DD0);
  v33 = sub_260DF5654();
  v34 = *(v33 - 8);
  v35 = *(v34 + 72);
  v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_260DF89F0;
  (*(v34 + 104))(v37 + v36, *MEMORY[0x277D720D0], v33);
  v38 = sub_260DF1A38(v37);
  swift_setDeallocating();
  (*(v34 + 8))(v37 + v36, v33);
  swift_deallocClassInstance();
  *v26 = v38;
  v40 = v97;
  v39 = v98;
  (*(v97 + 104))(v26, *MEMORY[0x277D720B0], v98);
  sub_260DF4A24(&qword_27FE50060, MEMORY[0x277D724B8]);
  sub_260DF4A24(&qword_27FE50088, MEMORY[0x277D720C0]);
  v88[0] = 0;
  sub_260DF5924();

  (*(v40 + 8))(v26, v39);
  v41 = *(v110 + 8);
  v42 = v30;
  v43 = v99;
  v110 += 8;
  v98 = v41;
  (v41)(v42, v99);
  v44 = v100;
  sub_260DF5454();
  v45 = v103;
  v46 = v101;
  v47 = v108;
  (*(v103 + 104))(v101, *MEMORY[0x277D72858], v108);
  v48 = v88[0];
  v49 = sub_260DF58A4();
  if (v48)
  {

    (*(v45 + 8))(v46, v47);
    (*(v102 + 8))(v44, v89);
    (v98)(v109, v43);
    v50 = v104;
    v51 = v105;
    v7 = v106;
    if (qword_27FE4F990 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_3;
  }

  v63 = v49;
  (*(v45 + 8))(v46, v47);
  (*(v102 + 8))(v44, v89);
  (v98)(v109, v43);
  result = v63;
  v50 = v104;
  v64 = v105;
  v65 = v106;
  v89 = *(v63 + 2);
  if (!v89)
  {
LABEL_33:

    v113 = v64;
    v114 = v65;

    MEMORY[0x2666EF400](46, 0xE100000000000000);

    MEMORY[0x2666EF400](v111, v50);

    return v113;
  }

  v66 = 0;
  v67 = v96;
  v100 = &v63[(*(v67 + 80) + 32) & ~*(v67 + 80)];
  v101 = v63;
  v99 = v96 + 16;
  v97 = v93 + 8;
  v98 = (v93 + 48);
  v109 = (v107 + 88);
  v110 = v107 + 16;
  LODWORD(v108) = *MEMORY[0x277D720C8];
  v103 = v107 + 8;
  v68 = (v107 + 96);
  v93 = v96 + 8;
  v69 = v95;
  v70 = v112;
  v71 = v94;
  while (1)
  {
    if (v66 >= *(v101 + 2))
    {
      __break(1u);
      return result;
    }

    v72 = *(v67 + 72);
    v102 = v66;
    (*(v67 + 16))(v71, &v100[v72 * v66], v92);
    v73 = v90;
    sub_260DF56B4();
    if ((*v98)(v73, 1, v69) == 1)
    {
      sub_260DDE7B4(v90, &qword_27FE50078, &qword_260DF8D98);
      sub_260DF5674();
      v73 = v70;
    }

    v74 = sub_260DF5964();
    v76 = v75;
    (*v97)(v73, v69);
    if (v74 == v64 && v76 == v65)
    {
      break;
    }

    v77 = sub_260DF5DE4();

    v70 = v112;
    if (v77)
    {
      goto LABEL_17;
    }

LABEL_32:
    v66 = v102 + 1;
    v71 = v94;
    result = (*v93)(v94, v92);
    v67 = v96;
    if (v66 == v89)
    {
      goto LABEL_33;
    }
  }

  v70 = v112;
LABEL_17:
  v78 = sub_260DF5684();
  v79 = v78;
  v48 = *(v78 + 16);
  if (!v48)
  {

LABEL_31:
    v69 = v95;
    goto LABEL_32;
  }

  v51 = 0;
  v80 = v107;
  v81 = v78 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
  while (v51 < *(v79 + 16))
  {
    (*(v80 + 16))(v7, v81 + *(v80 + 72) * v51, v4);
    v82 = (*(v80 + 88))(v7, v4);
    if (v82 == v108)
    {
      (*v68)(v7, v4);
      if (*v7 == v111 && v7[1] == v50)
      {

        goto LABEL_35;
      }

      v84 = v7[1];
      v85 = sub_260DF5DE4();

      v80 = v107;
      if (v85)
      {

LABEL_35:

        v86 = v94;
        v87 = sub_260DF56C4();

        (*v93)(v86, v92);
        return v87;
      }
    }

    else
    {
      (*v103)(v7, v4);
    }

    ++v51;
    v70 = v112;
    if (v48 == v51)
    {

      v64 = v105;
      v65 = v106;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_3:
  v52 = sub_260DF55C4();
  __swift_project_value_buffer(v52, qword_27FE53CE8);

  v53 = v48;
  v54 = sub_260DF55A4();
  v55 = sub_260DF5B64();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v113 = v58;
    *v56 = 136315650;
    *(v56 + 4) = sub_260DEDBC4(v51, v7, &v113);
    *(v56 + 12) = 2080;
    v59 = v111;
    *(v56 + 14) = sub_260DEDBC4(v111, v50, &v113);
    *(v56 + 22) = 2112;
    v60 = v48;
    v61 = _swift_stdlib_bridgeErrorToNSError();
    *(v56 + 24) = v61;
    *v57 = v61;
    _os_log_impl(&dword_260DCE000, v54, v55, "Failed to fetch toolID for %s.%s is relevant for Spotlight %@", v56, 0x20u);
    sub_260DDE7B4(v57, &unk_27FE4FF50, &qword_260DF8A50);
    MEMORY[0x2666EFFA0](v57, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x2666EFFA0](v58, -1, -1);
    MEMORY[0x2666EFFA0](v56, -1, -1);
  }

  else
  {

    v59 = v111;
  }

  v113 = v51;
  v114 = v7;

  MEMORY[0x2666EF400](46, 0xE100000000000000);

  MEMORY[0x2666EF400](v59, v50);

  return v113;
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC26intentApprovedForSpotlight8bundleID0I9ClassNameSbSS_SStFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v75 = a2;
  v76 = a4;
  v73 = a3;
  v74 = a1;
  v4 = sub_260DF5784();
  v5 = *(v4 - 8);
  v62 = v4;
  v63 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v55 - v10;
  v12 = sub_260DF56E4();
  v64 = *(v12 - 8);
  v13 = *(v64 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_260DF5464();
  v72 = *(v16 - 8);
  v17 = *(v72 + 64);
  MEMORY[0x28223BE20](v16);
  v70 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50050, &qword_260DF8D58);
  v65 = *(v19 - 8);
  v66 = v19;
  v20 = *(v65 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = (&v55 - v21);
  v23 = sub_260DF57E4();
  v68 = *(v23 - 8);
  v69 = v23;
  v24 = *(v68 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v55 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v67 = &v55 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50058, &qword_260DF8D60);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v33 = &v55 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v71 = &v55 - v34;
  sub_260DF58C4();
  sub_260DF58B4();
  v59 = v33;
  v61 = v16;
  v56 = v15;
  v57 = v11;
  v60 = v12;
  v58 = v9;
  v77 = v74;
  v78 = v75;

  MEMORY[0x2666EF400](46, 0xE100000000000000);

  MEMORY[0x2666EF400](v73, v76);

  v35 = v77;
  v36 = v78;
  sub_260DF57B4();
  swift_getKeyPath();
  v37 = swift_allocObject();
  *(v37 + 16) = v35;
  *(v37 + 24) = v36;
  *v22 = v37;
  v39 = v65;
  v38 = v66;
  (*(v65 + 104))(v22, *MEMORY[0x277D721C8], v66);
  sub_260DF4A24(&qword_27FE50060, MEMORY[0x277D724B8]);
  sub_260DF48EC(&qword_27FE50068, &qword_27FE50050, &qword_260DF8D58);
  v40 = v67;
  sub_260DF5924();

  (*(v39 + 8))(v22, v38);
  v41 = v69;
  v42 = *(v68 + 8);
  v42(v27, v69);
  v43 = v70;
  sub_260DF5454();
  v44 = v71;
  sub_260DF5894();
  (*(v72 + 8))(v43, v61);
  v42(v40, v41);
  v47 = v59;
  sub_260DF4B20(v44, v59, &qword_27FE50058, &qword_260DF8D60);
  v48 = v64;
  v49 = v60;
  if ((*(v64 + 48))(v47, 1, v60) == 1)
  {
    sub_260DDE7B4(v44, &qword_27FE50058, &qword_260DF8D60);

    sub_260DDE7B4(v47, &qword_27FE50058, &qword_260DF8D60);
    v45 = 0;
  }

  else
  {
    v50 = v56;
    (*(v48 + 32))(v56, v47, v49);
    v51 = v57;
    sub_260DF5694();
    v52 = v58;
    sub_260DF5774();
    sub_260DF4A24(&qword_27FE50070, MEMORY[0x277D72418]);
    v53 = v62;
    v45 = sub_260DF5BB4();

    v54 = *(v63 + 8);
    v54(v52, v53);
    v54(v51, v53);
    (*(v48 + 8))(v50, v49);
    sub_260DDE7B4(v44, &qword_27FE50058, &qword_260DF8D60);
  }

  return v45 & 1;
}

uint64_t sub_260DF3418(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_260DF34D0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_260DF5244();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_260DF5214();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_260DF5364();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_260DF3570(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_260DF5244();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_260DF51F4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_260DF5364();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_260DF35EC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = sub_260DF5244();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = sub_260DF51F4();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t _s25ProactivePredictionClient26ToolKitActionStreamWrapperC029canonicalIdentifierForEncodedD10Invocation07encodedM0SSSo6NSDataC_tFZ_0()
{
  v69 = sub_260DF53E4();
  v65 = *(v69 - 8);
  v0 = *(v65 + 64);
  MEMORY[0x28223BE20](v69);
  v68 = v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FFF8, &unk_260DF8D20);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = v60 - v4;
  v6 = sub_260DF5764();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50000, &qword_260DF8648);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v60 - v16;
  sub_260DF5744();
  sub_260DF4B20(v17, v15, &qword_27FE50000, &qword_260DF8648);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    sub_260DDE7B4(v15, &qword_27FE50000, &qword_260DF8648);
    sub_260DDE7B4(v17, &qword_27FE50000, &qword_260DF8648);
    return 0;
  }

  v63 = v17;
  v64 = v7;
  (*(v7 + 32))(v10, v15, v6);
  v19 = sub_260DF5714();
  v21 = sub_260DECA80(v19, v20);
  v66 = v10;
  *&v67 = v21;
  v71 = v21;
  v72 = v22;
  v61 = v22;
  v23 = sub_260DF5724();
  v24 = v23;
  v25 = *(v23 + 16);
  if (v25)
  {
    v26 = sub_260DEDB40(*(v23 + 16), 0);
    v62 = sub_260DEFB04(v70, v26 + 4, v25, v24);
    v60[1] = v70[4];

    sub_260DF472C();
    if (v62 == v25)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v26 = MEMORY[0x277D84F90];
LABEL_7:
  v62 = v6;
  v70[0] = v26;
  sub_260DEEF0C(v70);

  v27 = *(v70[0] + 2);
  if (v27)
  {
    *&v67 = v70[0];
    v28 = (v70[0] + 40);
    while (1)
    {
      v32 = *(v28 - 1);
      v33 = *v28;

      v34 = sub_260DF5724();
      if (*(v34 + 16))
      {
        v35 = sub_260DEE470(v32, v33);
        v37 = v36;

        if (v37)
        {
          v38 = *(v34 + 56);
          v39 = sub_260DF5954();
          v40 = *(v39 - 8);
          (*(v40 + 16))(v5, v38 + *(v40 + 72) * v35, v39);

          (*(v40 + 56))(v5, 0, 1, v39);
          goto LABEL_15;
        }
      }

      else
      {
      }

      v41 = sub_260DF5954();
      (*(*(v41 - 8) + 56))(v5, 1, 1, v41);
LABEL_15:
      v42 = sub_260DF51B4();
      v43 = *(v42 + 48);
      v44 = *(v42 + 52);
      swift_allocObject();
      sub_260DF51A4();
      sub_260DF4734();
      v29 = sub_260DF5194();
      v31 = v30;
      sub_260DF53D4();
      sub_260DD2994(v29, v31);

      sub_260DDE7B4(v5, &qword_27FE4FFF8, &unk_260DF8D20);
      v28 += 2;
      if (!--v27)
      {

        v45 = v71;
        v46 = v72;
        goto LABEL_18;
      }
    }
  }

  v45 = v67;
  v46 = v61;
LABEL_18:
  if (v46 >> 62 == 2)
  {
    v47 = *(v45 + 16);
  }

  sub_260DE17F4(v45, v46);
  sub_260DF53F4();
  sub_260DF4A24(&qword_27FE50018, MEMORY[0x277CC92E0]);
  sub_260DF5B94();
  if (BYTE1(v70[0]))
  {
    v48 = MEMORY[0x277D84F90];
  }

  else
  {
    v48 = MEMORY[0x277D84F90];
    v67 = xmmword_260DF89F0;
    v50 = MEMORY[0x277D84B78];
    v51 = MEMORY[0x277D84BC0];
    do
    {
      v52 = v70[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE50028, &qword_260DF8D30);
      v53 = swift_allocObject();
      *(v53 + 16) = v67;
      *(v53 + 56) = v50;
      *(v53 + 64) = v51;
      *(v53 + 32) = v52;
      v54 = sub_260DF59D4();
      v56 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v48 = sub_260DED930(0, *(v48 + 2) + 1, 1, v48);
      }

      v58 = *(v48 + 2);
      v57 = *(v48 + 3);
      if (v58 >= v57 >> 1)
      {
        v48 = sub_260DED930((v57 > 1), v58 + 1, 1, v48);
      }

      *(v48 + 2) = v58 + 1;
      v59 = &v48[16 * v58];
      *(v59 + 4) = v54;
      *(v59 + 5) = v56;
      sub_260DF5B94();
    }

    while (BYTE1(v70[0]) != 1);
  }

  (*(v65 + 8))(v68, v69);
  v70[0] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE4FEF8, &qword_260DF8A08);
  sub_260DF48EC(&qword_27FE50020, &qword_27FE4FEF8, &qword_260DF8A08);
  v49 = sub_260DF5994();

  (*(v64 + 8))(v66, v62);
  sub_260DDE7B4(v63, &qword_27FE50000, &qword_260DF8648);
  sub_260DD2994(v71, v72);
  return v49;
}

uint64_t type metadata accessor for ToolKitActionStreamEvent()
{
  result = qword_27FE4FFC0;
  if (!qword_27FE4FFC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_260DF3ED8()
{
  result = sub_260DF5444();
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

uint64_t getEnumTagSinglePayload for ToolKitActionStreamEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolKitActionStreamEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_260DF4170()
{
  result = qword_27FE4FFD8;
  if (!qword_27FE4FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FFD8);
  }

  return result;
}

unint64_t sub_260DF41C8()
{
  result = qword_27FE4FFE0;
  if (!qword_27FE4FFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FFE0);
  }

  return result;
}

unint64_t sub_260DF4220()
{
  result = qword_27FE4FFE8;
  if (!qword_27FE4FFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE4FFE8);
  }

  return result;
}

uint64_t sub_260DF4274()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260DF42C0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_260DF4300()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_260DDA5F8;

  return sub_260DE873C(v2, v3);
}

uint64_t sub_260DF43B8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260DF4C58;

  return sub_260DED274(v2, v3, v5);
}

uint64_t objectdestroy_23Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_260DF44B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_260DF4C58;

  return sub_260DED35C(a1, v4, v5, v7);
}

uint64_t sub_260DF4584()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260DF45BC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260DF4C58;

  return sub_260DED740(a1, v5);
}

uint64_t sub_260DF4674(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_260DDA5F8;

  return sub_260DED740(a1, v5);
}

unint64_t sub_260DF4734()
{
  result = qword_27FE50008;
  if (!qword_27FE50008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FE4FFF8, &unk_260DF8D20);
    sub_260DF4A24(&qword_27FE50010, MEMORY[0x277D72E48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE50008);
  }

  return result;
}

void *sub_260DF47EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_260DEF9E4(sub_260DF486C, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_260DF4854(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_260DF48B4()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260DF48EC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_260DF495C()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260DF49B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE500B8, &qword_260DF8DF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260DF4A24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x2666EFFA0);
  }

  return result;
}

uint64_t sub_260DF4ABC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260DF4B20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_58Tm()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_260DF4BE0()
{
  result = qword_27FE50118;
  if (!qword_27FE50118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE50118);
  }

  return result;
}