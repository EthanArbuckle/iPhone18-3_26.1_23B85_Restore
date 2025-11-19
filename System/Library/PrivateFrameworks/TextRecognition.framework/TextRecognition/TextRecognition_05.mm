uint64_t sub_1B413AA6C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B413ABA8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B413ABA8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static ImageReader.supportedComputeDevices(configuration:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(v3 + 72))(&v11, v2, v3);
  v4 = ImageReader.Pipeline.engineClass.getter();
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  return (*(v6 + 56))(v9, v4, v6);
}

uint64_t static ImageReader.supportedLanguages(configuration:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v2);
  (*(v3 + 72))(&v11, v2, v3);
  v4 = ImageReader.Pipeline.engineClass.getter();
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v7);
  v9 = (*(v8 + 24))(v7, v8);
  return (*(v6 + 48))(v9, v4, v6);
}

uint64_t sub_1B413ADBC()
{
  (*(*v0 + 176))();
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = (*(v2 + 32))(ObjectType, v2);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1B413AE58(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    (*(*v3 + 176))();
    v8 = v7;
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(ObjectType, v8, a1, a2, a3);
    swift_unknownObjectRelease();
  }
}

uint64_t static ImageReader.detectorImageSize(configuration:imageSize:)(void *a1, double a2, double a3)
{
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v6);
  (*(v7 + 72))(&v11, v6, v7);
  v8 = ImageReader.Pipeline.engineClass.getter();
  return (*(v9 + 72))(a1, v8, v9, a2, a3);
}

uint64_t sub_1B413AFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[32] = a5;
  v6[33] = v5;
  v6[30] = a3;
  v6[31] = a4;
  v6[28] = a1;
  v6[29] = a2;
  v7 = sub_1B429FA68();
  v6[34] = v7;
  v6[35] = *(v7 - 8);
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B413B0B4, v5, 0);
}

char *sub_1B413B0B4()
{
  v62 = v0;
  sub_1B413C900(*(v0 + 240), v0 + 16);
  if (*(v0 + 40))
  {
    sub_1B40D5F90((v0 + 16), v0 + 176);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1B4109CDC((v0 + 176));
    __swift_destroy_boxed_opaque_existential_0(v0 + 176);
  }

  v1 = sub_1B413C900(*(v0 + 240), v0 + 96);
  if (*(v0 + 120))
  {
    sub_1B40D5F90((v0 + 96), v0 + 56);
  }

  else
  {
    (*(**(v0 + 264) + 112))(v1);
    if (*(v0 + 120))
    {
      sub_1B413C970(v0 + 96);
    }
  }

  v2 = *(v0 + 224);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  *(v0 + 304) = v5;
  v57 = v5;
  if (*(v0 + 232))
  {
    v8 = *(v0 + 232);
  }

  else
  {
    v8 = &unk_1F2BB1C60;
  }

  v9 = v8[2];
  if (v9)
  {
    v60 = MEMORY[0x1E69E7CC0];

    result = sub_1B40FE1A8(0, v9, 0);
    v10 = 0;
    v11 = (v8 + 7);
    v59 = v8;
    do
    {
      if (v10 >= v8[2])
      {
        __break(1u);
        return result;
      }

      sub_1B42A0408();

      v61[0] = 3831931;
      v61[1] = 0xE300000000000000;
      v12 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v12);

      MEMORY[0x1B8C72530](3832108, 0xE300000000000000);
      v13 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v13);

      MEMORY[0x1B8C72530](3831596, 0xE300000000000000);
      v14 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v14);

      MEMORY[0x1B8C72530](3827756, 0xE300000000000000);
      v15 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v15);

      result = MEMORY[0x1B8C72530](125, 0xE100000000000000);
      v17 = *(v60 + 16);
      v16 = *(v60 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B40FE1A8((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v60 + 16) = v17 + 1;
      v18 = v60 + 16 * v17;
      *(v18 + 32) = 3831931;
      *(v18 + 40) = 0xE300000000000000;
      v11 += 32;
      v8 = v59;
    }

    while (v9 != v10);
    v19 = *(v0 + 280);
    v20 = *(v0 + 288);
    v21 = *(v0 + 272);
    *(v0 + 216) = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
    sub_1B40FE2D4();
    v22 = sub_1B429FB48();
    v24 = v23;

    v25 = sub_1B41252AC();
    (*(v19 + 16))(v20, v25, v21);
    sub_1B40E33EC(v0 + 56, v0 + 136);
    v26 = v57;

    v27 = sub_1B429FA48();
    v28 = sub_1B42A0158();

    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 280);
    v30 = *(v0 + 288);
    v32 = *(v0 + 272);
    if (v29)
    {
      v56 = v22;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v61[0] = v34;
      *v33 = 136316162;
      *(v33 + 4) = sub_1B40DDE8C(0xD000000000000043, 0x80000001B42B51F0, v61);
      v58 = v30;
      *(v33 + 12) = 2048;
      *(v33 + 14) = [v26 width];

      *(v33 + 22) = 2048;
      *(v33 + 24) = [v26 height];

      *(v33 + 32) = 2080;
      v35 = sub_1B40DDE8C(v56, v24, v61);

      *(v33 + 34) = v35;
      *(v33 + 42) = 2080;
      __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
      v36 = sub_1B42A0688();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(v0 + 136);
      v39 = sub_1B40DDE8C(v36, v38, v61);

      *(v33 + 44) = v39;
      _os_log_impl(&dword_1B40D2000, v27, v28, "%s: image={w:%ld,h:%ld} rois=[%s] config=%s", v33, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v34, -1, -1);
      MEMORY[0x1B8C74FA0](v33, -1, -1);

      (*(v31 + 8))(v58, v32);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 136);
    }

    v53 = swift_task_alloc();
    *(v0 + 312) = v53;
    *v53 = v0;
    v53[1] = sub_1B413B890;
    v54 = *(v0 + 256);
    v55 = *(v0 + 248);

    return sub_1B411AB80(v26, v59, v0 + 56, v55, v54);
  }

  else
  {
    v40 = *(v0 + 296);
    v42 = *(v0 + 272);
    v41 = *(v0 + 280);

    v43 = sub_1B41252AC();
    (*(v41 + 16))(v40, v43, v42);
    v44 = sub_1B429FA48();
    v45 = sub_1B42A0138();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 296);
    v48 = *(v0 + 272);
    v49 = *(v0 + 280);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v61[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1B40DDE8C(0xD000000000000043, 0x80000001B42B51F0, v61);
      _os_log_impl(&dword_1B40D2000, v44, v45, "%s: Empty regionsOfInterest!", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1B8C74FA0](v51, -1, -1);
      MEMORY[0x1B8C74FA0](v50, -1, -1);
    }

    (*(v49 + 8))(v47, v48);
    sub_1B40DF594();
    swift_allocError();
    *v52 = 1;
    *(v52 + 4) = 1;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 56);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B413B890(uint64_t a1)
{
  v4 = *v2;
  v4[40] = v1;

  v5 = v4[33];

  if (v1)
  {
    v6 = sub_1B413BAA4;
  }

  else
  {
    v4[41] = a1;
    v6 = sub_1B413B9F8;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B413B9F8()
{
  v1 = v0[38];
  v2 = sub_1B413BB20(v0[41]);

  __swift_destroy_boxed_opaque_existential_0((v0 + 7));

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1B413BAA4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

void *sub_1B413BB20(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1B42A0518();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1B413C9D8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1B8C72CD0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1B413C9D8((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_1B413CFB0();
        v16 = &protocol witness table for CRImageReaderOutput;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1B40D5F90(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);
        v13 = v10;
        if (v11 >= v12 >> 1)
        {
          sub_1B413C9D8((v12 > 1), v11 + 1, 1);
          v3 = v17;
        }

        v15 = sub_1B413CFB0();
        v16 = &protocol witness table for CRImageReaderOutput;
        *&v14 = v13;
        *(v3 + 16) = v11 + 1;
        sub_1B40D5F90(&v14, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B413BCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[33] = a6;
  v7[34] = v6;
  v7[31] = a4;
  v7[32] = a5;
  v7[29] = a2;
  v7[30] = a3;
  v7[28] = a1;
  v8 = sub_1B429FA68();
  v7[35] = v8;
  v7[36] = *(v8 - 8);
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B413BDB0, v6, 0);
}

char *sub_1B413BDB0()
{
  v63 = v0;
  sub_1B413C900(*(v0 + 240), v0 + 16);
  if (*(v0 + 40))
  {
    sub_1B40D5F90((v0 + 16), v0 + 176);
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1B4109CDC((v0 + 176));
    __swift_destroy_boxed_opaque_existential_0(v0 + 176);
  }

  v1 = sub_1B413C900(*(v0 + 240), v0 + 96);
  if (*(v0 + 120))
  {
    sub_1B40D5F90((v0 + 96), v0 + 56);
  }

  else
  {
    (*(**(v0 + 272) + 112))(v1);
    if (*(v0 + 120))
    {
      sub_1B413C970(v0 + 96);
    }
  }

  v2 = *(v0 + 224);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = (*(v4 + 8))(v3, v4);
  *(v0 + 312) = v5;
  v58 = v5;
  if (*(v0 + 232))
  {
    v8 = *(v0 + 232);
  }

  else
  {
    v8 = &unk_1F2BB1CA0;
  }

  v9 = v8[2];
  if (v9)
  {
    v61 = MEMORY[0x1E69E7CC0];

    result = sub_1B40FE1A8(0, v9, 0);
    v10 = 0;
    v11 = (v8 + 7);
    v60 = v8;
    do
    {
      if (v10 >= v8[2])
      {
        __break(1u);
        return result;
      }

      sub_1B42A0408();

      v62[0] = 3831931;
      v62[1] = 0xE300000000000000;
      v12 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v12);

      MEMORY[0x1B8C72530](3832108, 0xE300000000000000);
      v13 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v13);

      MEMORY[0x1B8C72530](3831596, 0xE300000000000000);
      v14 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v14);

      MEMORY[0x1B8C72530](3827756, 0xE300000000000000);
      v15 = sub_1B42A0028();
      MEMORY[0x1B8C72530](v15);

      result = MEMORY[0x1B8C72530](125, 0xE100000000000000);
      v17 = *(v61 + 16);
      v16 = *(v61 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_1B40FE1A8((v16 > 1), v17 + 1, 1);
      }

      ++v10;
      *(v61 + 16) = v17 + 1;
      v18 = v61 + 16 * v17;
      *(v18 + 32) = 3831931;
      *(v18 + 40) = 0xE300000000000000;
      v11 += 32;
      v8 = v60;
    }

    while (v9 != v10);
    v19 = *(v0 + 288);
    v20 = *(v0 + 296);
    v21 = *(v0 + 280);
    *(v0 + 216) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
    sub_1B40FE2D4();
    v22 = sub_1B429FB48();
    v24 = v23;

    v25 = sub_1B41252AC();
    (*(v19 + 16))(v20, v25, v21);
    sub_1B40E33EC(v0 + 56, v0 + 136);
    v26 = v58;

    v27 = sub_1B429FA48();
    v28 = sub_1B42A0158();

    v29 = os_log_type_enabled(v27, v28);
    v31 = *(v0 + 288);
    v30 = *(v0 + 296);
    v32 = *(v0 + 280);
    if (v29)
    {
      v57 = v22;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v62[0] = v34;
      *v33 = 136316162;
      *(v33 + 4) = sub_1B40DDE8C(0xD000000000000050, 0x80000001B42B5270, v62);
      v59 = v30;
      *(v33 + 12) = 2048;
      *(v33 + 14) = [v26 width];

      *(v33 + 22) = 2048;
      *(v33 + 24) = [v26 height];

      *(v33 + 32) = 2080;
      v35 = sub_1B40DDE8C(v57, v24, v62);

      *(v33 + 34) = v35;
      *(v33 + 42) = 2080;
      __swift_project_boxed_opaque_existential_0((v0 + 136), *(v0 + 160));
      v36 = sub_1B42A0688();
      v38 = v37;
      __swift_destroy_boxed_opaque_existential_0(v0 + 136);
      v39 = sub_1B40DDE8C(v36, v38, v62);

      *(v33 + 44) = v39;
      _os_log_impl(&dword_1B40D2000, v27, v28, "%s: image={w:%ld,h:%ld} rois=[%s] config=%s", v33, 0x34u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v34, -1, -1);
      MEMORY[0x1B8C74FA0](v33, -1, -1);

      (*(v31 + 8))(v59, v32);
    }

    else
    {

      (*(v31 + 8))(v30, v32);
      __swift_destroy_boxed_opaque_existential_0(v0 + 136);
    }

    v53 = swift_task_alloc();
    *(v0 + 320) = v53;
    *v53 = v0;
    v53[1] = sub_1B413C58C;
    v54 = *(v0 + 264);
    v55 = *(v0 + 248);
    v56 = *(v0 + 256);

    return sub_1B411AFE0(v26, v60, v0 + 56, v55, v56, v54);
  }

  else
  {
    v40 = *(v0 + 304);
    v42 = *(v0 + 280);
    v41 = *(v0 + 288);

    v43 = sub_1B41252AC();
    (*(v41 + 16))(v40, v43, v42);
    v44 = sub_1B429FA48();
    v45 = sub_1B42A0138();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 304);
    v48 = *(v0 + 280);
    v49 = *(v0 + 288);
    if (v46)
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v62[0] = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_1B40DDE8C(0xD000000000000050, 0x80000001B42B5270, v62);
      _os_log_impl(&dword_1B40D2000, v44, v45, "%s: Empty regionsOfInterest!", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v51);
      MEMORY[0x1B8C74FA0](v51, -1, -1);
      MEMORY[0x1B8C74FA0](v50, -1, -1);
    }

    (*(v49 + 8))(v47, v48);
    sub_1B40DF594();
    swift_allocError();
    *v52 = 1;
    *(v52 + 4) = 1;
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v0 + 56);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1B413C58C(uint64_t a1)
{
  v4 = *v2;
  v4[41] = v1;

  v5 = v4[34];

  if (v1)
  {
    v6 = sub_1B413C778;
  }

  else
  {
    v4[42] = a1;
    v6 = sub_1B413C6F4;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1B413C6F4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);
  v2 = *(v0 + 336);

  return v1(v2);
}

uint64_t sub_1B413C778()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 56);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t ImageReader.deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
  v2 = sub_1B429F6D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ImageReader.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 112);
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC15TextRecognition11ImageReader_uuid;
  v2 = sub_1B429F6D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B413C900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8855F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B413C970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8855F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1B413C9D8(void *a1, int64_t a2, char a3)
{
  result = sub_1B413CFFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for ImageReader()
{
  result = qword_1EB895360;
  if (!qword_1EB895360)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B413CA54()
{
  result = sub_1B429F6D8();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ImageReader.textResults(image:regionsOfInterest:configuration:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 200) + **(*v5 + 200));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B40E6368;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ImageReader.document(image:regionsOfInterest:configuration:trackingSession:progressHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 208) + **(*v6 + 208));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B410252C;

  return v16(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_1B413CFB0()
{
  result = qword_1EB884820;
  if (!qword_1EB884820)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB884820);
  }

  return result;
}

void *sub_1B413CFFC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853F8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B413D16C()
{
  sub_1B429FB98();
  sub_1B429FCA8();
  if (v0)
  {
    do
    {
      sub_1B429FC98();

      sub_1B429FCA8();
    }

    while (v1);
  }

  return 0;
}

id sub_1B413D214(void *a1)
{
  v1 = a1;
  sub_1B413D16C();

  v2 = sub_1B429FB88();

  return v2;
}

uint64_t sub_1B413D27C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = v9 - v2;
  v9[0] = 58;
  v9[1] = 0xE100000000000000;
  v4 = sub_1B429F768();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  sub_1B40EEE90();
  v5 = sub_1B42A0328();
  v7 = v6;
  result = sub_1B412AFE4(v3);
  qword_1EB896258 = v5;
  unk_1EB896260 = v7;
  return result;
}

uint64_t sub_1B413D37C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885210);
  MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v3 = &v16 - v2;
  v4 = sub_1B429F578();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B429FB98();
  v17 = v9;
  sub_1B429F538();
  sub_1B40EEE90();
  v10 = sub_1B42A0318();
  v12 = v11;
  (*(v5 + 8))(v8, v4);

  v16 = v10;
  v17 = v12;
  v13 = sub_1B429F768();
  (*(*(v13 - 8) + 56))(v3, 1, 1, v13);
  sub_1B42A0328();
  sub_1B412AFE4(v3);

  if (qword_1EB895BE0 != -1)
  {
    swift_once();
  }

  v14 = sub_1B429FD38();

  return v14 & 1;
}

uint64_t sub_1B413D5B4(void *a1)
{
  v1 = a1;
  v2 = sub_1B413D37C();

  return v2 & 1;
}

uint64_t CRImageReaderOutput.string.getter()
{
  v1 = [v0 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B429FB98();

  return v3;
}

uint64_t sub_1B413D660()
{
  v1 = [*v0 stringValue];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B429FB98();

  return v3;
}

id sub_1B413D718()
{
  result = lmConfig();
  if (result)
  {
    v1 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885400);
    v2 = sub_1B429FAF8();

    v3 = sub_1B42A0648();
    if (*(v2 + 16))
    {
      v5 = sub_1B40F0030(v3, v4);
      v7 = v6;

      if (v7)
      {
        v8 = *(*(v2 + 56) + 8 * v5);

        v9 = CRLocale.rawValue.getter();
        if (*(v8 + 16))
        {
          v11 = sub_1B40F0030(v9, v10);
          v13 = v12;

          if (v13)
          {
            v14 = *(*(v8 + 56) + 8 * v11);

            v15 = sub_1B413DAC0(v14);

            return v15;
          }
        }

        else
        {
        }
      }
    }

    else
    {
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CRLocale.rawValue.getter()
{
  result = 0x53552D6E65;
  switch(*v0)
  {
    case 1:
      result = 0x52462D7266;
      break;
    case 2:
      result = 0x54492D7469;
      break;
    case 3:
      result = 0x45442D6564;
      break;
    case 4:
      result = 0x53452D7365;
      break;
    case 5:
      result = 0x52422D7470;
      break;
    case 6:
      result = 0x55522D7572;
      break;
    case 7:
      result = 0x41552D6B75;
      break;
    case 8:
      result = 0x48542D6874;
      break;
    case 9:
      result = 0x54562D6976;
      break;
    case 0xA:
      result = 0x52542D7274;
      break;
    case 0xB:
      result = 0x44492D6469;
      break;
    case 0xC:
      result = 0x5A432D7363;
      break;
    case 0xD:
      result = 0x4B442D6164;
      break;
    case 0xE:
      result = 0x4C4E2D6C6ELL;
      break;
    case 0xF:
      result = 0x4F4E2D6F6ELL;
      break;
    case 0x10:
      result = 0x4F4E2D6E6ELL;
      break;
    case 0x11:
      result = 0x4F4E2D626ELL;
      break;
    case 0x12:
      result = 0x594D2D736DLL;
      break;
    case 0x13:
      result = 0x4C502D6C70;
      break;
    case 0x14:
      result = 0x4F522D6F72;
      break;
    case 0x15:
      result = 0x45532D7673;
      break;
    case 0x16:
      result = 0x736E61482D687ALL;
      break;
    case 0x17:
      result = 0x746E61482D687ALL;
      break;
    case 0x18:
      result = 0x736E61482D657579;
      break;
    case 0x19:
      result = 0x746E61482D657579;
      break;
    case 0x1A:
      result = 0x524B2D6F6BLL;
      break;
    case 0x1B:
      result = 0x504A2D616ALL;
      break;
    case 0x1C:
      result = 0x41532D7261;
      break;
    case 0x1D:
      result = 0x41532D737261;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B413DAC0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884B88);
    v2 = sub_1B42A05F8();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);
        sub_1B40F1DD0();

        v19 = v18;
        swift_dynamicCast();
        sub_1B40E28EC(&v25, v27);
        sub_1B40E28EC(v27, v28);
        sub_1B40E28EC(v28, &v26);
        result = sub_1B40F0030(v17, v16);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v17;
          v9[1] = v16;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0(v11);
          result = sub_1B40E28EC(&v26, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v17;
          v21[1] = v16;
          result = sub_1B40E28EC(&v26, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

TextRecognition::CRLocale_optional __swiftcall CRLocale.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B42A06B8();

  v5 = 0;
  v6 = 12;
  switch(v3)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v5 = 1;
      goto LABEL_24;
    case 2:
      v5 = 2;
      goto LABEL_24;
    case 3:
      v5 = 3;
      goto LABEL_24;
    case 4:
      v5 = 4;
      goto LABEL_24;
    case 5:
      v5 = 5;
      goto LABEL_24;
    case 6:
      v5 = 6;
      goto LABEL_24;
    case 7:
      v5 = 7;
      goto LABEL_24;
    case 8:
      v5 = 8;
      goto LABEL_24;
    case 9:
      v5 = 9;
      goto LABEL_24;
    case 10:
      v5 = 10;
      goto LABEL_24;
    case 11:
      v5 = 11;
LABEL_24:
      v6 = v5;
      break;
    case 12:
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    case 22:
      v6 = 22;
      break;
    case 23:
      v6 = 23;
      break;
    case 24:
      v6 = 24;
      break;
    case 25:
      v6 = 25;
      break;
    case 26:
      v6 = 26;
      break;
    case 27:
      v6 = 27;
      break;
    case 28:
      v6 = 28;
      break;
    case 29:
      v6 = 29;
      break;
    default:
      v6 = 30;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B413DE9C()
{
  v0 = CRLocale.rawValue.getter();
  v2 = v1;
  if (v0 == CRLocale.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1B42A0678();
  }

  return v5 & 1;
}

uint64_t sub_1B413DF38()
{
  sub_1B42A0778();
  CRLocale.rawValue.getter();
  sub_1B429FC48();

  return sub_1B42A07A8();
}

uint64_t sub_1B413DFA0()
{
  CRLocale.rawValue.getter();
  sub_1B429FC48();
}

uint64_t sub_1B413E004()
{
  sub_1B42A0778();
  CRLocale.rawValue.getter();
  sub_1B429FC48();

  return sub_1B42A07A8();
}

uint64_t sub_1B413E074@<X0>(uint64_t *a1@<X8>)
{
  result = CRLocale.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B413E0AC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B429FB98();
  v4 = v3;
  if (v2 == sub_1B429FB98() && v4 == v5)
  {
    v9 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v7 = sub_1B42A0678();

  v9 = 0;
  if (v7)
  {
    goto LABEL_14;
  }

  v10 = sub_1B429FB98();
  v12 = v11;
  if (v10 == sub_1B429FB98() && v12 == v13)
  {
    v9 = 5;
    goto LABEL_13;
  }

  v15 = sub_1B42A0678();

  if (v15)
  {
    v9 = 5;
    goto LABEL_14;
  }

  v16 = sub_1B429FB98();
  v18 = v17;
  if (v16 == sub_1B429FB98() && v18 == v19)
  {
    v9 = 1;
    goto LABEL_13;
  }

  v20 = sub_1B42A0678();

  if (v20)
  {
    v9 = 1;
    goto LABEL_14;
  }

  v21 = sub_1B429FB98();
  v23 = v22;
  if (v21 == sub_1B429FB98() && v23 == v24)
  {
    v9 = 2;
    goto LABEL_13;
  }

  v25 = sub_1B42A0678();

  if (v25)
  {
    v9 = 2;
    goto LABEL_14;
  }

  v26 = sub_1B429FB98();
  v28 = v27;
  if (v26 == sub_1B429FB98() && v28 == v29)
  {
    v9 = 3;
    goto LABEL_13;
  }

  v30 = sub_1B42A0678();

  if (v30)
  {
    v9 = 3;
    goto LABEL_14;
  }

  v31 = sub_1B429FB98();
  v33 = v32;
  if (v31 == sub_1B429FB98() && v33 == v34)
  {
    v9 = 4;
    goto LABEL_13;
  }

  v35 = sub_1B42A0678();

  if (v35)
  {
    v9 = 4;
    goto LABEL_14;
  }

  v36 = sub_1B429FB98();
  v38 = v37;
  if (v36 == sub_1B429FB98() && v38 == v39)
  {
    v9 = 6;
    goto LABEL_13;
  }

  v40 = sub_1B42A0678();

  if (v40)
  {
    v9 = 6;
    goto LABEL_14;
  }

  v41 = sub_1B429FB98();
  v43 = v42;
  if (v41 == sub_1B429FB98() && v43 == v44)
  {
    v9 = 7;
    goto LABEL_13;
  }

  v45 = sub_1B42A0678();

  if (v45)
  {
    v9 = 7;
    goto LABEL_14;
  }

  v46 = sub_1B429FB98();
  v48 = v47;
  if (v46 == sub_1B429FB98() && v48 == v49)
  {
    v9 = 8;
    goto LABEL_13;
  }

  v50 = sub_1B42A0678();

  if (v50)
  {
    v9 = 8;
    goto LABEL_14;
  }

  v51 = sub_1B429FB98();
  v53 = v52;
  if (v51 == sub_1B429FB98() && v53 == v54)
  {
    v9 = 9;
    goto LABEL_13;
  }

  v55 = sub_1B42A0678();

  if (v55)
  {
    v9 = 9;
    goto LABEL_14;
  }

  v56 = sub_1B429FB98();
  v58 = v57;
  if (v56 == sub_1B429FB98() && v58 == v59)
  {
    v9 = 10;
    goto LABEL_13;
  }

  v60 = sub_1B42A0678();

  if (v60)
  {
    v9 = 10;
    goto LABEL_14;
  }

  v61 = sub_1B429FB98();
  v63 = v62;
  if (v61 == sub_1B429FB98() && v63 == v64)
  {
    v9 = 11;
    goto LABEL_13;
  }

  v65 = sub_1B42A0678();

  if (v65)
  {
    v9 = 11;
    goto LABEL_14;
  }

  v66 = sub_1B429FB98();
  v68 = v67;
  if (v66 == sub_1B429FB98() && v68 == v69)
  {
    v9 = 12;
    goto LABEL_13;
  }

  v70 = sub_1B42A0678();

  if (v70)
  {
    v9 = 12;
    goto LABEL_14;
  }

  v71 = sub_1B429FB98();
  v73 = v72;
  if (v71 == sub_1B429FB98() && v73 == v74)
  {
    v9 = 13;
    goto LABEL_13;
  }

  v75 = sub_1B42A0678();

  if (v75)
  {
    v9 = 13;
    goto LABEL_14;
  }

  v76 = sub_1B429FB98();
  v78 = v77;
  if (v76 == sub_1B429FB98() && v78 == v79)
  {
    v9 = 14;
    goto LABEL_13;
  }

  v80 = sub_1B42A0678();

  if (v80)
  {
    v9 = 14;
    goto LABEL_14;
  }

  v81 = sub_1B429FB98();
  v83 = v82;
  if (v81 == sub_1B429FB98() && v83 == v84)
  {
    v9 = 15;
    goto LABEL_13;
  }

  v85 = sub_1B42A0678();

  if (v85)
  {
    v9 = 15;
    goto LABEL_14;
  }

  v86 = sub_1B429FB98();
  v88 = v87;
  if (v86 == sub_1B429FB98() && v88 == v89)
  {
    v9 = 18;
    goto LABEL_13;
  }

  v90 = sub_1B42A0678();

  if (v90)
  {
    v9 = 18;
    goto LABEL_14;
  }

  v91 = sub_1B429FB98();
  v93 = v92;
  if (v91 == sub_1B429FB98() && v93 == v94)
  {
    v9 = 19;
    goto LABEL_13;
  }

  v95 = sub_1B42A0678();

  if (v95)
  {
    v9 = 19;
    goto LABEL_14;
  }

  v96 = sub_1B429FB98();
  v98 = v97;
  if (v96 == sub_1B429FB98() && v98 == v99)
  {
    v9 = 20;
    goto LABEL_13;
  }

  v100 = sub_1B42A0678();

  if (v100)
  {
    v9 = 20;
    goto LABEL_14;
  }

  v101 = sub_1B429FB98();
  v103 = v102;
  if (v101 == sub_1B429FB98() && v103 == v104)
  {
    v9 = 21;
    goto LABEL_13;
  }

  v105 = sub_1B42A0678();

  if (v105)
  {
    v9 = 21;
    goto LABEL_14;
  }

  v106 = sub_1B429FB98();
  v108 = v107;
  if (v106 == sub_1B429FB98() && v108 == v109)
  {
    v9 = 22;
    goto LABEL_13;
  }

  v110 = sub_1B42A0678();

  if (v110)
  {
    v9 = 22;
    goto LABEL_14;
  }

  v111 = sub_1B429FB98();
  v113 = v112;
  if (v111 == sub_1B429FB98() && v113 == v114)
  {
    v9 = 23;
    goto LABEL_13;
  }

  v115 = sub_1B42A0678();

  if (v115)
  {
    v9 = 23;
    goto LABEL_14;
  }

  v116 = sub_1B429FB98();
  v118 = v117;
  if (v116 == sub_1B429FB98() && v118 == v119)
  {
    v9 = 27;
    goto LABEL_13;
  }

  v120 = sub_1B42A0678();

  if (v120)
  {
    v9 = 27;
    goto LABEL_14;
  }

  v121 = sub_1B429FB98();
  v123 = v122;
  if (v121 == sub_1B429FB98() && v123 == v124)
  {
    v9 = 26;
    goto LABEL_13;
  }

  v125 = sub_1B42A0678();

  if (v125)
  {
    v9 = 26;
    goto LABEL_14;
  }

  v126 = sub_1B429FB98();
  v128 = v127;
  v9 = 28;
  if (v126 == sub_1B429FB98() && v128 == v129)
  {
    goto LABEL_13;
  }

  v130 = sub_1B42A0678();

  if (v130)
  {
    v9 = 28;
  }

  else
  {
    v9 = 30;
  }

LABEL_14:
  *a1 = v9;
  return result;
}

unint64_t sub_1B413EC3C()
{
  result = qword_1ED95E110;
  if (!qword_1ED95E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E110);
  }

  return result;
}

unint64_t sub_1B413EC94()
{
  result = qword_1ED95E0E0;
  if (!qword_1ED95E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB8856B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E0E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRLocale(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE3)
  {
    goto LABEL_17;
  }

  if (a2 + 29 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 29) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 29;
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

      return (*a1 | (v4 << 8)) - 29;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 29;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1E;
  v8 = v6 - 30;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLocale(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 29 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 29) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE3)
  {
    v4 = 0;
  }

  if (a2 > 0xE2)
  {
    v5 = ((a2 - 227) >> 8) + 1;
    *result = a2 + 29;
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
    *result = a2 + 29;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B413EE48@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 152))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1B413EEE0()
{
  v1 = OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_keepAllResourcesLoadedWhenNotInUse;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B413EF24(char a1)
{
  v3 = OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_keepAllResourcesLoadedWhenNotInUse;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1B413EFD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v6[14] = MEMORY[0x1E69E7CC8];
  *(v6 + OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_keepAllResourcesLoadedWhenNotInUse) = 0;
  v6[15] = a1;
  v6[16] = a2;
  sub_1B40E3B64(a3, v6 + OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_owner);
  return v6;
}

void sub_1B413F060()
{
  v2 = CRLocale.rawValue.getter();
  v3 = *(*v0 + 24);
  v4 = (v3)(v2);
  if (v1)
  {
  }

  else
  {
    v5 = v4;

    sub_1B4165BBC();
    v6 = [v0[16] languages];
    v7 = [v6 objectAtIndexedSubscript_];

    sub_1B42A0348();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v8 = objc_opt_self();
      v9 = sub_1B429FB88();
      v10 = [v8 languageIsLatin_];

      if (v10 || (v11 = sub_1B429FB88(), v12 = [v8 languageIsCyrillic_], v11, v12))
      {
      }

      else
      {
        v13 = v3();

        sub_1B4165BBC();
      }
    }
  }
}

uint64_t sub_1B413F27C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884870);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v62 = &v54[-v9];
  v10 = sub_1B429F9B8();
  v60 = *(v10 - 8);
  v61 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v54[-v16];
  v18 = sub_1B429F9E8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v54[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (!a2)
  {
    sub_1B40DF594();
    swift_allocError();
    *v28 = 5;
    *(v28 + 4) = 1;
    swift_willThrow();
    return v22;
  }

  swift_beginAccess();
  v58 = v2;
  v23 = *(v2 + 112);
  v24 = *(v23 + 16);

  v59 = a1;
  if (v24)
  {

    v25 = sub_1B40F0030(a1, a2);
    if (v26)
    {
      v27 = v25;

      v22 = *(*(v23 + 56) + 8 * v27);

      return v22;
    }
  }

  v56 = v4;
  v57 = a2;
  v29 = sub_1B410F8A0();
  (*(v19 + 16))(v22, v29, v18);
  v30 = sub_1B410F94C();
  v31 = *v30;
  v32 = *(v30 + 16);
  sub_1B429F9A8();
  v33 = sub_1B429F9C8();
  v55 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_16:

    v38 = v60;
    v37 = v61;
    (*(v60 + 16))(v13, v17, v61);
    sub_1B429FA28();
    swift_allocObject();
    sub_1B429FA18();
    (*(v38 + 8))(v17, v37);
    (*(v19 + 8))(v22, v18);
    type metadata accessor for CRNeuralTextRecognizer(0);
    v39 = v58;
    v22 = *(v58 + 120);
    v40 = v62;
    sub_1B40DDA80(v58 + OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_owner, v62);
    v41 = v57;

    v42 = v56;
    v43 = CRNeuralTextRecognizer.init(forLocale:imageReaderOptions:owner:)(v59, v41, v22, v40);
    if (v42)
    {

      sub_1B413F8CC();

      return v22;
    }

    v44 = v43;
    if (((*(*v39 + 152))() & 1) == 0)
    {
      v45 = [*(v39 + 128) languages];
      v46 = [v45 objectAtIndexedSubscript_];

      sub_1B42A0348();
      swift_unknownObjectRelease();
      if (swift_dynamicCast())
      {
        if (v63 != v59 || v64 != v57)
        {
          v48 = sub_1B42A0678();

          v39 = v58;
          if ((v48 & 1) == 0)
          {
            v49 = objc_opt_self();
            v50 = sub_1B429FB88();
            v51 = [v49 languageIsLatin_];

            if ((v51 & 1) == 0)
            {
              v52 = sub_1B429FB88();
              v53 = [v49 languageIsCyrillic_];

              if ((v53 & 1) == 0)
              {
                [v44 setUnloadResourcesWhenNotInUse_];
              }
            }
          }

          goto LABEL_24;
        }
      }

      v39 = v58;
    }

LABEL_24:
    swift_beginAccess();
    v22 = v44;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v63 = *(v39 + 112);
    *(v39 + 112) = 0x8000000000000000;
    sub_1B4140648(v22, v59, v57, isUniquelyReferenced_nonNull_native);

    *(v39 + 112) = v63;
    swift_endAccess();
    sub_1B413F8CC();

    return v22;
  }

  if ((v32 & 1) == 0)
  {
    if (v31)
    {
LABEL_15:
      v35 = swift_slowAlloc();
      *v35 = 0;
      v36 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v33, v55, v36, v31, "", v35, 2u);
      MEMORY[0x1B8C74FA0](v35, -1, -1);
      goto LABEL_16;
    }

    __break(1u);
  }

  if (v31 >> 32)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v31 & 0xFFFFF800) != 0xD800)
  {
    if (v31 >> 16 <= 0x10)
    {
      v31 = &v65;
      goto LABEL_15;
    }

    goto LABEL_31;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B413F8CC()
{
  v0 = sub_1B429F9F8();
  v27 = *(v0 - 8);
  v28 = v0;
  MEMORY[0x1EEE9AC00](v0, v1);
  v29 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B429F9E8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B410F8A0();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_1B410F94C();
  v30 = *v14;
  v15 = *(v14 + 16);
  v16 = sub_1B429F9C8();
  sub_1B429FA08();
  v26 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v4 + 8))(v7, v3);
    return (*(v9 + 8))(v12, v8);
  }

  v25 = v4;
  if ((v15 & 1) == 0)
  {
    if (v30)
    {
      v18 = v29;
LABEL_9:

      sub_1B429FA38();

      v20 = v27;
      v19 = v28;
      if ((*(v27 + 88))(v18, v28) == *MEMORY[0x1E69E93E8])
      {
        v21 = "[Error] Interval already ended";
      }

      else
      {
        (*(v20 + 8))(v18, v19);
        v21 = "";
      }

      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v16, v26, v23, v30, v21, v22, 2u);
      MEMORY[0x1B8C74FA0](v22, -1, -1);
      v4 = v25;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v30 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v30 & 0xFFFFF800) != 0xD800)
  {
    v18 = v29;
    if (v30 >> 16 <= 0x10)
    {
      v30 = &v31;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1B413FC40()
{
  v1 = objc_allocWithZone(CRPerformanceStatistics);
  v2 = sub_1B429FB88();
  v3 = [v1 initWithName:v2 measureRecentPeak:0];

  swift_beginAccess();
  v4 = *(v0 + 112);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = [v12 inferenceStats];
    [v3 addStatistics_];
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1B413FDC8()
{
  v1 = objc_allocWithZone(CRPerformanceStatistics);
  v2 = sub_1B429FB88();
  v3 = [v1 initWithName:v2 measureRecentPeak:0];

  swift_beginAccess();
  v4 = *(v0 + 112);
  v5 = 1 << *(v4 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v4 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = *(*(v4 + 56) + ((v10 << 9) | (8 * v11)));
    v13 = [v12 decodingStats];
    [v3 addStatistics_];
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 64 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B413FF50()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (!v0)
  {
    return CRLocale.rawValue.getter();
  }

  v1 = v0;
  swift_unknownObjectRetain();
  v2 = [v1 locale];
  v3 = sub_1B429FB98();
  swift_unknownObjectRelease();

  return v3;
}

id sub_1B4140008()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  for (i = 0; v4; result = [*(*(v1 + 56) + ((v8 << 9) | (8 * v9))) cancel])
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
    }

    v4 = *(v1 + 64 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t CRMultiLocaleRecognizerProvider.deinit()
{

  sub_1B40EF494(v0 + OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_owner);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t CRMultiLocaleRecognizerProvider.__deallocating_deinit()
{

  sub_1B40EF494(v0 + OBJC_IVAR____TtC15TextRecognition31CRMultiLocaleRecognizerProvider_owner);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

void (*sub_1B41401F0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 168))();
  return sub_1B40EF70C;
}

uint64_t sub_1B41403A4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885408);
  v35 = a2;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1B42A0778();
      sub_1B429FC48();
      result = sub_1B42A07A8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1B4140648(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B40F0030(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B41403A4(v16, a4 & 1);
      v11 = sub_1B40F0030(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1B42A06E8();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1B4140AFC();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_1B41407C0(uint64_t a1)
{
  result = sub_1B41407E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B41407E8()
{
  result = qword_1ED95E258[0];
  if (!qword_1ED95E258[0])
  {
    type metadata accessor for CRMultiLocaleRecognizerProvider();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED95E258);
  }

  return result;
}

uint64_t type metadata accessor for CRMultiLocaleRecognizerProvider()
{
  result = qword_1ED95F060;
  if (!qword_1ED95F060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B4140894()
{
  sub_1B4124B78();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id sub_1B4140AFC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885408);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

BOOL sub_1B4140CC4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_1B4140CF4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_1B4140D20@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_1B4140E0C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B4140E3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1B4141218(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1B4140E7C()
{
  v0 = sub_1B4141250();
  if (sub_1B4141250())
  {
    v1 = v0 & 1 | 2;
  }

  else
  {
    v1 = v0 & 1;
  }

  if (sub_1B4141250())
  {
    v1 |= 4uLL;
  }

  if (sub_1B4141250() & 1) != 0 || (sub_1B4141614(9u))
  {
    v1 |= 8uLL;
  }

  result = sub_1B4141250();
  if (result & 1) != 0 || (result = sub_1B4141614(0xAu), (result))
  {
    v1 |= 0x10uLL;
  }

  qword_1ED960360 = v1;
  byte_1ED960368 = v1 != 0;
  return result;
}

uint64_t *sub_1B4140F8C()
{
  if (qword_1ED95F610 != -1)
  {
    swift_once();
  }

  return &qword_1ED960360;
}

unint64_t sub_1B4140FF0()
{
  result = qword_1EB885410;
  if (!qword_1EB885410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885410);
  }

  return result;
}

unint64_t sub_1B4141048()
{
  result = qword_1EB885418;
  if (!qword_1EB885418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885418);
  }

  return result;
}

unint64_t sub_1B41410A0()
{
  result = qword_1EB885420;
  if (!qword_1EB885420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885420);
  }

  return result;
}

unint64_t sub_1B41410F8()
{
  result = qword_1EB885428;
  if (!qword_1EB885428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885428);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CRLogger(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CRLogger(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B4141218(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1B4141250()
{
  v0 = sub_1B429FC08();
  v1 = getenv((v0 + 32));

  if (v1 && (v2 = sub_1B429FB68(), v3))
  {
    if (v2 == 49 && v3 == 0xE100000000000000)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1B42A0678();
    }
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

unint64_t sub_1B41412E8(unsigned __int8 a1)
{
  v1 = 0xD000000000000034;
  if (a1 <= 4u)
  {
    v6 = 0xD000000000000030;
    v7 = 0xD00000000000002CLL;
    if (a1 != 3)
    {
      v7 = 0xD00000000000002DLL;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000029;
    if (!a1)
    {
      v8 = 0xD000000000000035;
    }

    if (a1 <= 1u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000030;
    v3 = 0xD00000000000002ELL;
    if (a1 == 9)
    {
      v4 = 0xD000000000000034;
    }

    else
    {
      v4 = 0xD00000000000002ELL;
    }

    if (a1 != 8)
    {
      v2 = v4;
    }

    if (a1 == 6)
    {
      v3 = 0xD000000000000034;
    }

    if (a1 != 5)
    {
      v1 = v3;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B4141418(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1B41412E8(*a1);
  v5 = v4;
  if (v3 == sub_1B41412E8(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B42A0678();
  }

  return v8 & 1;
}

uint64_t sub_1B41414A0()
{
  v1 = *v0;
  sub_1B42A0778();
  sub_1B41412E8(v1);
  sub_1B429FC48();

  return sub_1B42A07A8();
}

uint64_t sub_1B4141504()
{
  sub_1B41412E8(*v0);
  sub_1B429FC48();
}

uint64_t sub_1B4141558()
{
  v1 = *v0;
  sub_1B42A0778();
  sub_1B41412E8(v1);
  sub_1B429FC48();

  return sub_1B42A07A8();
}

uint64_t sub_1B41415B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B4141734();
  *a1 = result;
  return result;
}

unint64_t sub_1B41415E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B41412E8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1B4141614(unsigned __int8 a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1B41412E8(a1);
  v3 = sub_1B429FB88();

  v4 = [v2 BOOLForKey_];

  return v4;
}

float sub_1B41416A0(unsigned __int8 a1)
{
  v2 = [objc_opt_self() standardUserDefaults];
  sub_1B41412E8(a1);
  v3 = sub_1B429FB88();

  [v2 floatForKey_];
  v5 = v4;

  return v5;
}

uint64_t sub_1B4141734()
{
  v0 = sub_1B42A0608();

  if (v0 >= 0xB)
  {
    return 11;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1B4141784()
{
  result = qword_1EB885430;
  if (!qword_1EB885430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB885430);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CRUserDefaultsKey(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CRUserDefaultsKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1B4141938()
{
  v0 = sub_1B429FB98();
  v2 = v1;
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  v4 = getTunableInt(_:_:)(1000, v3);

  qword_1ED95F418 = v4;
  return result;
}

id sub_1B414265C()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR___CRDetectorConfiguration_customModelPath];
  *v2 = 0;
  v2[1] = 0;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_metalDevice] = 0;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_computeDeviceType] = 0;
  v1[OBJC_IVAR___CRDetectorConfiguration_skipVerticalText] = 0;
  v1[OBJC_IVAR___CRDetectorConfiguration_disableScriptDetection] = 0;
  v1[OBJC_IVAR___CRDetectorConfiguration_disableTextTypeDetection] = 1;
  v1[OBJC_IVAR___CRDetectorConfiguration_logIntermediateResults] = 0;
  v3 = vdupq_n_s64(0x407E000000000000uLL);
  *&v1[OBJC_IVAR___CRDetectorConfiguration_tileSize] = v3;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_tileOverlap] = 0x4040000000000000;
  v1[OBJC_IVAR___CRDetectorConfiguration_runFullTile] = 1;
  v1[OBJC_IVAR___CRDetectorConfiguration_runFineScale] = 1;
  v1[OBJC_IVAR___CRDetectorConfiguration_mergeFullTile] = 0;
  v1[OBJC_IVAR___CRDetectorConfiguration_useScaleTraversal] = 1;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_minimumInputSize] = v3;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_maximumInputSize] = vdupq_n_s64(0x4095800000000000uLL);
  *&v1[OBJC_IVAR___CRDetectorConfiguration_inputLengthLimit] = 0x40AFC00000000000;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_minimumTextHeight] = 0;
  *&v1[OBJC_IVAR___CRDetectorConfiguration_scoreMapScaleFactor] = 0x3FD0000000000000;
  swift_beginAccess();
  *v2 = 0;
  v2[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8854F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B42ACFB0;
  *(inited + 32) = 0xD000000000000022;
  *(inited + 40) = 0x80000001B42B57F0;
  sub_1B40E27B4(0, &qword_1ED95EE90);
  *(inited + 48) = sub_1B42A0228();
  v5 = sub_1B414323C(inited);
  swift_setDeallocating();
  sub_1B4143340(inited + 32);
  *&v1[OBJC_IVAR___CRDetectorConfiguration_scriptRatioThresholds] = v5;
  v11 = 2;
  v6 = sub_1B4107AB8();
  v7 = &v1[OBJC_IVAR___CRDetectorConfiguration_prioritization];
  *v7 = v6;
  v7[1] = v8;
  v1[OBJC_IVAR___CRDetectorConfiguration_extractPolygons] = 1;
  v1[OBJC_IVAR___CRDetectorConfiguration_detectTables] = 1;
  if (qword_1ED95F410 != -1)
  {
    swift_once();
  }

  *&v1[OBJC_IVAR___CRDetectorConfiguration_tableMinDetectableArea] = qword_1ED95F418;
  v10.receiver = v1;
  v10.super_class = CRDetectorConfiguration;
  return objc_msgSendSuper2(&v10, sel_init);
}

void (**CRDetectorConfiguration.init(configuration:)(void *a1))(char *, uint64_t, uint64_t)
{
  v2 = sub_1B429FA68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v81 - v9;
  v12 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v12);
  v13 = (*(v11 + 24))(v12, v11);
  if (v13 != 3)
  {
    if (v13 != 2)
    {
      if (v13 != 1)
      {
        sub_1B40DF594();
        swift_allocError();
        *v79 = 4;
        *(v79 + 4) = 1;
        swift_willThrow();
        __swift_destroy_boxed_opaque_existential_0(a1);
        return v3;
      }

      v14 = sub_1B412535C();
      v3[2](v10, v14, v2);
      v15 = sub_1B429FA48();
      v16 = sub_1B42A0148();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1B40D2000, v15, v16, "Unexpected attempt to load V1 detector config", v17, 2u);
        MEMORY[0x1B8C74FA0](v17, -1, -1);
      }

      (v3[1])(v10, v2);
    }

    v18 = sub_1B412535C();
    v3[2](v6, v18, v2);
    v19 = sub_1B429FA48();
    v20 = sub_1B42A0148();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B40D2000, v19, v20, "Unexpected attempt to load V2 detector config", v21, 2u);
      MEMORY[0x1B8C74FA0](v21, -1, -1);
    }

    (v3[1])(v6, v2);
  }

  v22 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v23 = a1[3];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v23);
  v25 = *(v24 + 408);
  v3 = v22;
  v26 = v25(v23, v24);
  v27 = OBJC_IVAR___CRDetectorConfiguration_minimumTextHeight;
  swift_beginAccess();
  *(v3 + v27) = v26;
  v28 = a1[3];
  v29 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v28);
  LOBYTE(v27) = (*(v29 + 216))(v28, v29);
  v30 = OBJC_IVAR___CRDetectorConfiguration_disableScriptDetection;
  swift_beginAccess();
  *(v3 + v30) = (v27 & 1) == 0;
  v31 = a1[3];
  v32 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v31);
  LOBYTE(v27) = (*(v32 + 240))(v31, v32);
  v33 = OBJC_IVAR___CRDetectorConfiguration_disableTextTypeDetection;
  swift_beginAccess();
  *(v3 + v33) = (v27 & 1) == 0;
  sub_1B40E27B4(0, &qword_1ED95E658);
  v34 = a1[3];
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v34);
  v36 = (*(v35 + 560))(v34, v35);
  v37 = sub_1B40EFA9C(v36);
  v39 = v38;

  v40 = OBJC_IVAR___CRDetectorConfiguration_computeDeviceType;
  swift_beginAccess();
  *(v3 + v40) = v37;
  v41 = OBJC_IVAR___CRDetectorConfiguration_metalDevice;
  swift_beginAccess();
  *(v3 + v41) = v39;
  swift_unknownObjectRelease();
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v42);
  (*(v43 + 552))(v84, v42, v43);
  LOBYTE(v41) = BYTE1(v84[0]);

  v44 = OBJC_IVAR___CRDetectorConfiguration_logIntermediateResults;
  swift_beginAccess();
  *(v3 + v44) = v41;
  v45 = a1[3];
  v46 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v45);
  (*(v46 + 552))(v84, v45, v46);
  v47 = v84[1];
  v48 = v84[2];
  v49 = (v3 + OBJC_IVAR___CRDetectorConfiguration_customModelPath);
  swift_beginAccess();
  *v49 = v47;
  v49[1] = v48;

  v50 = a1[3];
  v51 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v50);
  if ((*(v51 + 168))(v50, v51))
  {
    v52 = 0;
  }

  else
  {
    v53 = a1[3];
    v54 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, v53);
    v52 = (*(v54 + 264))(v53, v54);
  }

  v55 = OBJC_IVAR___CRDetectorConfiguration_detectTables;
  swift_beginAccess();
  *(v3 + v55) = v52 & 1;
  v56 = a1[3];
  v57 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v56);
  v58 = (*(v57 + 360))(v56, v57);
  v59 = OBJC_IVAR___CRDetectorConfiguration_skipVerticalText;
  swift_beginAccess();
  *(v3 + v59) = (v58 & 1) == 0;
  v60 = a1[3];
  v61 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v60);
  (*(v61 + 48))(v83, v60, v61);
  v62 = sub_1B4107AB8();
  v64 = v63;
  v65 = (v3 + OBJC_IVAR___CRDetectorConfiguration_prioritization);
  swift_beginAccess();
  *v65 = v62;
  v65[1] = v64;

  v66 = a1[3];
  v67 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v66);
  (*(v67 + 48))(v83, v66, v67);
  v82 = 1;
  sub_1B410C85C();
  if (sub_1B429FB58())
  {
    v68 = OBJC_IVAR___CRDetectorConfiguration_maximumInputSize;
    swift_beginAccess();
    *(v3 + v68) = vdupq_n_s64(0x408D000000000000uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8854F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B42ACFB0;
    *(inited + 32) = 0xD000000000000022;
    *(inited + 40) = 0x80000001B42B57F0;
    sub_1B40E27B4(0, &qword_1ED95EE90);
    *(inited + 48) = sub_1B42A0228();
    v70 = sub_1B414323C(inited);
    swift_setDeallocating();
    sub_1B4143340(inited + 32);
    v71 = OBJC_IVAR___CRDetectorConfiguration_scriptRatioThresholds;
    swift_beginAccess();
    *(v3 + v71) = v70;

    v72 = OBJC_IVAR___CRDetectorConfiguration_inputLengthLimit;
    swift_beginAccess();
    *(v3 + v72) = 0x409E000000000000;
  }

  v73 = a1[3];
  v74 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v73);
  v75 = (*(v74 + 384))(v73, v74);
  if ((v76 & 1) == 0 && v75 >= 1)
  {
    v77 = v75;
    v78 = (v3 + OBJC_IVAR___CRDetectorConfiguration_maximumInputSize);
    swift_beginAccess();
    *v78 = v77;
    v78[1] = v77;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v3;
}

unint64_t sub_1B414323C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885500);
    v3 = sub_1B42A05F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1B40F0030(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1B4143340(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8854F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CVBufferRef.crImage()(CRImage *__return_ptr retstr)
{
  if (![objc_allocWithZone(CRImage_PixelBuffer) initWithCVPixelBuffer_])
  {
    sub_1B40DF594();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    swift_willThrow();
  }
}

id sub_1B414343C()
{
  result = [objc_allocWithZone(CRImage_PixelBuffer) initWithCVPixelBuffer_];
  if (!result)
  {
    sub_1B40DF594();
    swift_allocError();
    *v2 = 0;
    *(v2 + 4) = 1;
    swift_willThrow();
    return 0;
  }

  return result;
}

id sub_1B4143838(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v6 = *a3;
  swift_beginAccess();
  if (*(a1 + v6))
  {
    sub_1B40E27B4(0, a4);

    v7 = sub_1B429FDE8();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1B41438F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, uint64_t *a6)
{
  v7 = a3;
  if (a3)
  {
    sub_1B40E27B4(0, a4);
    v7 = sub_1B429FDF8();
  }

  v9 = *a6;
  swift_beginAccess();
  *(a1 + v9) = v7;
}

id sub_1B4143978(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___CRDetectionResult_tableRegionsMutex;
  v3 = MEMORY[0x1E69E7CC0];
  *v2 = 0;
  *(v2 + 8) = v3;
  *(v1 + OBJC_IVAR___CRDetectionResult_pyramidPreIntraScaleNMSTextFeatures) = 0;
  *(v1 + OBJC_IVAR___CRDetectionResult_pyramidScaleSize) = 0;
  *(v1 + OBJC_IVAR___CRDetectionResult_pyramidScaleName) = 0;
  *(v1 + OBJC_IVAR___CRDetectionResult_lines) = a1;
  v5.super_class = CRDetectionResult;
  return objc_msgSendSuper2(&v5, sel_init);
}

id CRDetectionResult.filteredResult(roi:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v25 - v4;
  v6 = sub_1B429F868();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4143DE0(a1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1B40E26E8(v5, &qword_1EB8855E0);
  }

  else
  {
    (*(v7 + 32))(v10, v5, v6);
    if ((sub_1B429F858() & 1) == 0)
    {
      v13 = [v25[0] lines];
      sub_1B40E27B4(0, &unk_1ED95E680);
      v14 = sub_1B429FDF8();

      MEMORY[0x1EEE9AC00](v15, v16);
      v25[-2] = v10;
      sub_1B40F06F0(sub_1B4143E50, &v25[-4], v14);
      v17 = [v25[0] tableRegions];
      sub_1B40E27B4(0, &qword_1ED95E6D0);
      v18 = sub_1B429FDF8();

      MEMORY[0x1EEE9AC00](v19, v20);
      v25[-2] = v10;
      sub_1B40F06F0(sub_1B4143EBC, &v25[-4], v18);
      v21 = objc_allocWithZone(CRDetectionResult);
      v22 = sub_1B429FDE8();

      v23 = [v21 initWithLines_];

      v24 = sub_1B429FDE8();

      [v23 setTableRegions_];

      (*(v7 + 8))(v10, v6);
      return v23;
    }

    (*(v7 + 8))(v10, v6);
  }

  v11 = v25[0];

  return v11;
}

uint64_t sub_1B4143DE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1B4143E50(id *a1)
{
  v2 = *(v1 + 16);
  result = [*a1 boundingQuad];
  if (result)
  {
    v4 = result;
    v5 = sub_1B4126F44(v2);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id CRDetectionResult.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1B4144030()
{
  v0 = sub_1B429FB98();
  v2 = v1;
  v3._countAndFlagsBits = v0;
  v3._object = v2;
  v4 = getTunableInt(_:_:)(3, v3);

  qword_1ED95F408 = v4;
  return result;
}

uint64_t sub_1B4144084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_1B429FB88();
  v7 = sub_1B429FB88();
  v8 = (*(a5 + 16))(a5, v6, v7);

  return v8;
}

id sub_1B41440F4(unint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885540);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B42AE540;
  *(inited + 32) = 1;
  v3 = MEMORY[0x1E69E7CC0];
  *(inited + 40) = MEMORY[0x1E69E7CC0];
  *(inited + 48) = 2;
  *(inited + 56) = v3;
  *(inited + 64) = 3;
  *(inited + 72) = v3;
  v4 = sub_1B4146744(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885548);
  swift_arrayDestroy();
  result = v4;
  v6 = a1;
  v36 = result;
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v7)
  {
    v8 = 0;
    v9 = v6 & 0xC000000000000001;
    v10 = v6 & 0xFFFFFFFFFFFFFF8;
    v32 = v6;
    v33 = v7;
    v34 = v6 & 0xFFFFFFFFFFFFFF8;
    v35 = v6 & 0xC000000000000001;
    while (1)
    {
      if (v9)
      {
        result = MEMORY[0x1B8C72CD0](v8, v6);
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_37;
        }

        result = *(v6 + 8 * v8 + 32);
      }

      v11 = result;
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v13 = objc_autoreleasePoolPush();
      if (![(CRFeatureSequenceRecognitionInfo *)v11 transientDecodingResult])
      {
        goto LABEL_7;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      if (v15)
      {
        v16 = [v15 greedyDecodingResult];
        if (v16)
        {
          v17 = v16;
          v18 = [v16 candidates];

          sub_1B40E27B4(0, &qword_1ED95E058);
          v19 = sub_1B429FDF8();

          if (v19 >> 62)
          {
            result = sub_1B42A0518();
            if (!result)
            {
              goto LABEL_4;
            }

LABEL_17:
            if ((v19 & 0xC000000000000001) != 0)
            {
              v20 = MEMORY[0x1B8C72CD0](0, v19);
            }

            else
            {
              if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_38;
              }

              v20 = *(v19 + 32);
            }

            v21 = v20;

            v22 = [v21 fullString];

            if (!v22)
            {
              sub_1B429FB98();
              v22 = sub_1B429FB88();
            }

            v23 = [swift_getObjCClassFromMetadata() _disambiguatedScriptForString_];

            v25 = sub_1B41444D4(v37, v23);
            v26 = *v24;
            if (*v24)
            {
              v27 = v24;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *v27 = v26;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v26 = sub_1B4145D48(0, *(v26 + 2) + 1, 1, v26);
                *v27 = v26;
              }

              v30 = *(v26 + 2);
              v29 = *(v26 + 3);
              if (v30 >= v29 >> 1)
              {
                v26 = sub_1B4145D48((v29 > 1), v30 + 1, 1, v26);
                *v27 = v26;
              }

              *(v26 + 2) = v30 + 1;
              *&v26[8 * v30 + 32] = v8;
              (v25)(v37, 0);
              v6 = v32;
            }

            else
            {
              (v25)(v37, 0);
            }

            v7 = v33;
          }

          else
          {
            result = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (result)
            {
              goto LABEL_17;
            }

LABEL_4:
          }

          v10 = v34;
          v9 = v35;
        }
      }

      swift_unknownObjectRelease();
LABEL_7:
      objc_autoreleasePoolPop(v13);

      ++v8;
      if (v12 == v7)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    v31 = result;
    v7 = sub_1B42A0518();
    result = v31;
  }

  return result;
}

void (*sub_1B41444D4(uint64_t **a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1B4145EB8(v4, a2);
  return sub_1B4112CFC;
}

uint64_t sub_1B414454C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E6828;

  return sub_1B414684C(a1, a2);
}

uint64_t sub_1B4144604(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    sub_1B40E27B4(0, &qword_1ED95E068);

    v6 = sub_1B42A0558();

    return v6;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFFF8;

    sub_1B42A0698();
    sub_1B40E27B4(0, &qword_1ED95E068);
    if (!swift_dynamicCastMetatype())
    {
      v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
        for (i = v2 + 32; ; i += 8)
        {
          objc_opt_self();
          if (!swift_dynamicCastObjCClass())
          {
            break;
          }

          if (!--v4)
          {
            return v1;
          }
        }

        return v2 | 1;
      }
    }

    return v1;
  }
}

uint64_t sub_1B4144710(uint64_t a1, double a2, double a3)
{
  *(v4 + 40) = v3;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B4144738, 0, 0);
}

uint64_t sub_1B4144738()
{
  v1 = [*(v0 + 16) textFeatureInfo];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855B0);
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    sub_1B40E27B4(0, &qword_1ED95E068);

    v10 = sub_1B42A0558();
    swift_bridgeObjectRelease_n();
    v2 = v10;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;

    sub_1B42A0698();
    sub_1B40E27B4(0, &qword_1ED95E068);
    if (swift_dynamicCastMetatype() || (v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v9 = v3 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v9 += 8;
        if (!--v8)
        {
          goto LABEL_3;
        }
      }

      v2 = v3 | 1;
    }
  }

  *(v0 + 48) = v2;
  [*(v0 + 40) _buildActivationMatrices_];
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1B4144928;
  v5 = *(v0 + 24);
  v6 = *(v0 + 32);

  return sub_1B4144A3C(v2, v5, v6);
}

uint64_t sub_1B4144928()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B414839C;
  }

  else
  {
    v2 = sub_1B41483A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4144A3C(uint64_t a1, double a2, double a3)
{
  *(v4 + 248) = v3;
  *(v4 + 232) = a2;
  *(v4 + 240) = a3;
  *(v4 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B4144AD4, 0, 0);
}

uint64_t sub_1B4144AD4()
{
  v1 = (v0 + 16);
  v2 = (v0 + 64);
  v3 = [*(v0 + 248) configuration];
  v4 = [v3 numTopStringCandidates];

  if (v4 <= 1)
  {
    v4 = 1;
  }

  if (qword_1ED95F400 != -1)
  {
LABEL_48:
    swift_once();
  }

  v5 = *(v0 + 248);
  if (v4 <= qword_1ED95F408)
  {
    v6 = qword_1ED95F408;
  }

  else
  {
    v6 = v4;
  }

  v7 = [*(v0 + 248) _shouldUseCharacterDecodingToken];
  v8 = objc_opt_self();
  v9 = &selRef_defaultCharacterCommitActionBehavior;
  if (v7)
  {
    v10 = sub_1B4148398;
  }

  else
  {
    v9 = &selRef_defaultWhitespaceCommitActionBehavior;
    v10 = sub_1B41482F8;
  }

  v11 = [v8 *v9];
  v12 = swift_allocObject();
  *(v0 + 256) = v12;
  *(v12 + 16) = v11;
  v13 = objc_allocWithZone(MEMORY[0x1E6991FF8]);
  *(v0 + 48) = v10;
  *(v0 + 56) = v12;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B4145BFC;
  *(v0 + 40) = &block_descriptor_5;
  v14 = _Block_copy(v1);
  swift_retain_n();

  v4 = [v13 initWithCommitActionBehavior:v14 beamWidth:v6 pathCount:v4 shouldOptimizeAlignment:0 pruneProblematicMixedScriptWordPaths:1];
  *(v0 + 264) = v4;
  _Block_release(v14);
  [v4 setShouldApplyWordLMToLastWord_];
  v1 = objc_allocWithZone(MEMORY[0x1E6992000]);
  *(v0 + 96) = v10;
  *(v0 + 104) = v12;
  *(v0 + 64) = MEMORY[0x1E69E9820];
  *(v0 + 72) = 1107296256;
  *(v0 + 80) = sub_1B4145BFC;
  *(v0 + 88) = &block_descriptor_6;
  v15 = _Block_copy(v2);

  *(v0 + 272) = [v1 initWithCommitActionBehavior_];
  _Block_release(v15);
  if ([v5 shouldUseLM])
  {
    v16 = 0;
  }

  else
  {
    v16 = [objc_allocWithZone(MEMORY[0x1E6991FD0]) initWithLanguageResourceBundle_];
  }

  *(v0 + 280) = v16;
  v17 = *(v0 + 224);
  v2 = [*(v0 + 248) model];
  *(v0 + 336) = [v2 supportCharacterBoxes];

  if (v17 >> 62)
  {
    v18 = sub_1B42A0518();
    if (v18 < 0)
    {
      __break(1u);
    }
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *(v0 + 288) = v18;
  if (v18)
  {
    v19 = 0;
    *(v0 + 192) = *(v0 + 232);
    do
    {
      *(v0 + 296) = v19;
      v20 = *(v0 + 224);
      if ((v20 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (v19 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_48;
        }

        v21 = *(v20 + 8 * v19 + 32);
      }

      v1 = v21;
      v23 = [(CRFeatureSequenceRecognitionInfo *)v21 transientDecodingResult];
      *(v0 + 304) = v23;

      if (v23)
      {
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        *(v0 + 312) = v24;
        if (v24)
        {
          if ([v24 languageRecognitionPromise])
          {
            sub_1B42A0348();
            swift_unknownObjectRelease();
          }

          else
          {
            *(v0 + 144) = 0u;
            *(v0 + 160) = 0u;
          }

          v25 = *(v0 + 160);
          *(v0 + 112) = *(v0 + 144);
          *(v0 + 128) = v25;
          if (*(v0 + 136))
          {
            type metadata accessor for EmptyPromise();
            if (swift_dynamicCast())
            {
              *(v0 + 320) = *(v0 + 216);
              v55 = swift_task_alloc();
              *(v0 + 328) = v55;
              *v55 = v0;
              v55[1] = sub_1B4145234;

              return sub_1B40E80B8();
            }
          }

          else
          {
            sub_1B410F21C(v0 + 112);
          }

          v26 = [*(v0 + 312) decodingLocale];
          if (!v26)
          {
            sub_1B429FB98();
            v26 = sub_1B429FB88();
          }

          v27 = *(v0 + 248);
          v2 = (*(v0 + 224) & 0xC000000000000001);
          v28 = sub_1B429FB98();
          v30 = v29;
          v31 = [v27 configuration];
          v32 = [v31 revision];

          *(v0 + 176) = v28;
          *(v0 + 184) = v30;

          v33 = sub_1B42A06D8();
          v4 = [objc_opt_self() configurationForLanguageIdentifier:v33 rev:v32];
          swift_unknownObjectRelease();

          v34 = *(v0 + 296);
          v35 = *(v0 + 224);
          if (v2)
          {
            v36 = MEMORY[0x1B8C72CD0](v34, v35);
          }

          else
          {
            v36 = *(v35 + 8 * v34 + 32);
          }

          v37 = v36;
          v38 = *(v0 + 192);
          v39 = *(v0 + 200);
          v40 = *(v0 + 336);
          v42 = *(v0 + 272);
          v41 = *(v0 + 280);
          v43 = *(v0 + 264);
          v44 = *(v0 + 248);
          *(v0 + 208) = 0;
          v45 = [v44 _decodeSingleFeatureWithInfo_decodingLocale_greedyDecoder_greedyConfig_beamSearchConfig_imageSize_useCharacterBoxes_lmConfig_error_];

          v1 = *(v0 + 208);
          if (!v45)
          {
            v52 = *(v0 + 272);
            v51 = *(v0 + 280);
            v53 = *(v0 + 264);
            v54 = v1;
            sub_1B429F598();

            swift_willThrow();

            swift_unknownObjectRelease();
            v49 = *(v0 + 8);
            goto LABEL_40;
          }

          v46 = v1;
        }

        swift_unknownObjectRelease();
      }

      v19 = *(v0 + 296) + 1;
    }

    while (v19 != *(v0 + 288));
  }

  v48 = *(v0 + 272);
  v47 = *(v0 + 280);

  v49 = *(v0 + 8);
LABEL_40:

  return v49();
}

uint64_t sub_1B4145234()
{

  return MEMORY[0x1EEE6DFA0](sub_1B414535C, 0, 0);
}

unint64_t sub_1B414535C()
{
  [*(v0 + 312) setLanguageRecognitionPromise_];

  v1 = &_OBJC_LABEL_PROTOCOL___CRFormPostProcessingStep;
LABEL_2:
  v2 = v1;
  v3 = [*(v0 + 312) v1[142]];
  if (!v3)
  {
    sub_1B429FB98();
    v3 = sub_1B429FB88();
  }

  v4 = *(v0 + 248);
  v5 = *(v0 + 224) & 0xC000000000000001;
  v6 = sub_1B429FB98();
  v8 = v7;
  v9 = [v4 configuration];
  v10 = [v9 revision];

  *(v0 + 176) = v6;
  *(v0 + 184) = v8;

  v11 = sub_1B42A06D8();
  v12 = [objc_opt_self() configurationForLanguageIdentifier:v11 rev:v10];
  swift_unknownObjectRelease();

  v13 = *(v0 + 296);
  v14 = *(v0 + 224);
  if (v5)
  {
    v15 = MEMORY[0x1B8C72CD0](v13, v14);
  }

  else
  {
    v15 = *(v14 + 8 * v13 + 32);
  }

  v16 = v15;
  v17 = *(v0 + 192);
  v18 = *(v0 + 200);
  v19 = *(v0 + 336);
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 264);
  v23 = *(v0 + 248);
  *(v0 + 208) = 0;
  v24 = [v23 _decodeSingleFeatureWithInfo_decodingLocale_greedyDecoder_greedyConfig_beamSearchConfig_imageSize_useCharacterBoxes_lmConfig_error_];

  v25 = *(v0 + 208);
  if (v24)
  {
    v26 = v25;

LABEL_9:
    swift_unknownObjectRelease();
    while (1)
    {
      result = *(v0 + 296) + 1;
      if (result == *(v0 + 288))
      {
        break;
      }

      *(v0 + 296) = result;
      v28 = *(v0 + 224);
      if ((v28 & 0xC000000000000001) != 0)
      {
        v29 = MEMORY[0x1B8C72CD0]();
      }

      else
      {
        if (result >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v29 = *(v28 + 8 * result + 32);
      }

      v31 = v29;
      v32 = [(CRFeatureSequenceRecognitionInfo *)v29 transientDecodingResult];
      *(v0 + 304) = v32;

      if (v32)
      {
        objc_opt_self();
        v33 = swift_dynamicCastObjCClass();
        *(v0 + 312) = v33;
        if (!v33)
        {
          goto LABEL_9;
        }

        if ([v33 languageRecognitionPromise])
        {
          sub_1B42A0348();
          swift_unknownObjectRelease();
        }

        else
        {
          *(v0 + 144) = 0u;
          *(v0 + 160) = 0u;
        }

        v34 = *(v0 + 160);
        *(v0 + 112) = *(v0 + 144);
        *(v0 + 128) = v34;
        if (*(v0 + 136))
        {
          type metadata accessor for EmptyPromise();
          if (swift_dynamicCast())
          {
            *(v0 + 320) = *(v0 + 216);
            v42 = swift_task_alloc();
            *(v0 + 328) = v42;
            *v42 = v0;
            v42[1] = sub_1B4145234;

            return sub_1B40E80B8();
          }
        }

        else
        {
          sub_1B410F21C(v0 + 112);
        }

        v1 = v2;
        goto LABEL_2;
      }
    }

    v36 = *(v0 + 272);
    v35 = *(v0 + 280);

    v37 = *(v0 + 8);
  }

  else
  {
    v39 = *(v0 + 272);
    v38 = *(v0 + 280);
    v40 = *(v0 + 264);
    v41 = v25;
    sub_1B429F598();

    swift_willThrow();

    swift_unknownObjectRelease();
    v37 = *(v0 + 8);
  }

  return v37();
}

uint64_t sub_1B41457B4()
{
  v1 = [*v0 configuration];
  v2 = [v1 revision];

  if (v2 < 3)
  {
    return 0;
  }

  type metadata accessor for CRLanguageRecognitionSession();
  return CRLanguageRecognitionSession.__allocating_init()();
}

uint64_t sub_1B4145820(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B40E17D0;

  return sub_1B414684C(a1, a2);
}

uint64_t sub_1B41458DC(uint64_t a1, double a2, double a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1B4145908, 0, 0);
}

uint64_t sub_1B4145908()
{
  v1 = *(v0 + 5);
  v2 = *(v0 + 2);
  v3 = [v2 textFeatureInfo];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855B0);
  v4 = sub_1B429FDF8();

  v5 = sub_1B4144604(v4);
  *(v0 + 6) = v5;

  [v1 _buildActivationMatrices_];
  v6 = swift_task_alloc();
  *(v0 + 7) = v6;
  *v6 = v0;
  v6[1] = sub_1B4145A20;
  v7 = v0[3];
  v8 = v0[4];

  return sub_1B4144A3C(v5, v7, v8);
}

uint64_t sub_1B4145A20()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1B4145B98;
  }

  else
  {
    v2 = sub_1B4145B34;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B4145B34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4145B98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B4145BFC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_1B429FB98();
  v4 = v3;
  v5 = sub_1B429FB98();
  v7 = v6;

  v8 = v1(v2, v4, v5, v7);

  return v8;
}

uint64_t sub_1B4145C90()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

uint64_t sub_1B4145D04()
{
  v1 = *v0;
  sub_1B42A0778();
  MEMORY[0x1B8C73030](v1);
  return sub_1B42A07A8();
}

char *sub_1B4145D48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855C0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1B4145E4C(uint64_t a1)
{
  sub_1B42A0778();
  MEMORY[0x1B8C73030](a1);
  v2 = sub_1B42A07A8();

  return sub_1B4116A88(a1, v2);
}

void (*sub_1B4145EB8(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1B4116F3C(v5);
  v5[9] = sub_1B4145F5C(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1B4116550;
}

void (*sub_1B4145F5C(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1, char a2)
{
  v4 = v3;
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = sub_1B4145E4C(a2);
  *(v9 + 32) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_1B41465E8();
      v11 = v19;
      goto LABEL_11;
    }

    sub_1B41461C4(v16, a3 & 1);
    v11 = sub_1B4145E4C(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for CRDisambiguatedScript();
    result = sub_1B42A06E8();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  return sub_1B41460A4;
}

void sub_1B41460A4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(v2 + 32);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[3];
    v6 = *v2[2];
    if (v2[4])
    {
      goto LABEL_9;
    }

    v7 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v7;
    *(v6[7] + 8 * v5) = v3;
    v8 = v6[2];
    v9 = __OFADD__(v8, 1);
    v4 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v6[2] = v4;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      sub_1B4146454(v2[3], *v2[2]);
    }

    goto LABEL_14;
  }

  v5 = v2[3];
  v6 = *v2[2];
  if ((v4 & 1) == 0)
  {
    v10 = v2[1];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *(v6[6] + 8 * v5) = v10;
    *(v6[7] + 8 * v5) = v3;
    v11 = v6[2];
    v9 = __OFADD__(v11, 1);
    v4 = v11 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
}

uint64_t sub_1B41461C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8855C8);
  v30 = a2;
  result = sub_1B42A05D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1B42A0778();
      MEMORY[0x1B8C73030](v20);
      result = sub_1B42A07A8();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4146454(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B42A0388() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_1B42A0778();
      MEMORY[0x1B8C73030](v9);
      result = sub_1B42A07A8();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_1B41465E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8855C8);
  v2 = *v0;
  v3 = sub_1B42A05C8();
  v4 = v3;
  if (*(v2 + 16))
  {
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
        goto LABEL_19;
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
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1B4146744(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8855C8);
  v3 = sub_1B42A05F8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1B4145E4C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1B4145E4C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B414684C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = swift_getObjectType();
  v4 = sub_1B429FA68();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_1B429F768();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4146978, 0, 0);
}

uint64_t sub_1B4146978()
{
  v88 = v0;
  v1 = [*(v0 + 72) textFeatureInfo];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855B0);
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    sub_1B40E27B4(0, &qword_1ED95E068);

    v32 = sub_1B42A0558();
    swift_bridgeObjectRelease_n();
    v2 = v32;
  }

  else
  {
    v3 = v2 & 0xFFFFFFFFFFFFFF8;

    sub_1B42A0698();
    sub_1B40E27B4(0, &qword_1ED95E068);
    if (swift_dynamicCastMetatype() || (v10 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10)) == 0)
    {
LABEL_3:
    }

    else
    {
      v11 = v3 + 32;
      while (1)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          break;
        }

        v11 += 8;
        if (!--v10)
        {
          goto LABEL_3;
        }
      }

      v2 = v3 | 1;
    }
  }

  *(v0 + 144) = v2;
  v4 = *(v0 + 80);
  [v4 _buildActivationMatrices_];
  v5 = [v4 configuration];
  v6 = [v5 revision];

  if (v6 < 3)
  {

LABEL_69:

    v78 = *(v0 + 8);

    return v78();
  }

  v7 = [*(v0 + 80) shouldUseModernizedDecoder];
  v8 = *(v0 + 80);
  if (v7)
  {
    sub_1B40E27B4(0, &qword_1ED95E068);
    v9 = sub_1B429FDE8();
    [v8 _populateTransientResultGreedyDecodingResultsForFeatureInfo_];

    goto LABEL_31;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E6991FD0]) initWithLanguageResourceBundle_];
  v13 = [v8 _shouldUseCharacterDecodingToken];
  v14 = objc_opt_self();
  v15 = &selRef_defaultCharacterCommitActionBehavior;
  if (!v13)
  {
    v15 = &selRef_defaultWhitespaceCommitActionBehavior;
  }

  v16 = [v14 *v15];
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  v18 = objc_allocWithZone(MEMORY[0x1E6992000]);
  *(v0 + 48) = sub_1B4148398;
  *(v0 + 56) = v17;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1B4145BFC;
  *(v0 + 40) = &block_descriptor_23_0;
  v19 = _Block_copy((v0 + 16));

  v84 = [v18 initWithCommitActionBehavior_];
  _Block_release(v19);
  if (v2 >> 62)
  {
    v20 = sub_1B42A0518();
    v23 = v20;
    if (v20)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v23 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v23)
    {
LABEL_17:
      if (v23 < 1)
      {
LABEL_82:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v20, v21, v22);
      }

      for (i = 0; i != v23; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1B8C72CD0](i, v2);
        }

        else
        {
          v25 = *(v2 + 8 * i + 32);
        }

        v27 = v25;
        if ([(CRFeatureSequenceRecognitionInfo *)v25 transientDecodingResult])
        {
          objc_opt_self();
          v28 = swift_dynamicCastObjCClass();
          if (v28)
          {
            v29 = v28;
            v30 = [v28 activationMatrix];
            [v12 setActivationMatrix_];

            v31 = [v12 greedyDecodingResultWithConfiguration_];
            [v29 setGreedyDecodingResult_];
          }

          swift_unknownObjectRelease();
        }
      }
    }
  }

LABEL_31:
  *(v0 + 152) = v2;
  v20 = sub_1B41440F4(v2);
  v33 = 0;
  *(v0 + 160) = v20;
  v34 = *(v20 + 32);
  *(v0 + 290) = v34;
  v35 = 1 << v34;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v20 + 64);
  do
  {
LABEL_35:
    if (!v37)
    {
      while (1)
      {
        v39 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        v38 = *(v0 + 160);
        if (v39 >= (((1 << *(v0 + 290)) + 63) >> 6))
        {

          goto LABEL_69;
        }

        v37 = *(v38 + 8 * v39 + 64);
        ++v33;
        if (v37)
        {
          v33 = v39;
          goto LABEL_41;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v38 = *(v0 + 160);
LABEL_41:
    *(v0 + 168) = v37;
    *(v0 + 176) = v33;
    v40 = __clz(__rbit64(v37));
    v37 &= v37 - 1;
    v41 = v40 | (v33 << 6);
    v20 = *(*(v38 + 56) + 8 * v41);
    *(v0 + 184) = v20;
    v42 = *(v20 + 16);
    *(v0 + 192) = v42;
  }

  while (!v42);
  v43 = *(v0 + 128);
  v44 = *(v0 + 136);
  v45 = *(v0 + 120);
  v46 = *(v0 + 80);
  v47 = *(*(v38 + 48) + 8 * v41);

  v48 = [v46 locale];
  sub_1B429F728();

  v49 = sub_1B429F6F8();
  v51 = v50;
  (*(v43 + 8))(v44, v45);
  v52._countAndFlagsBits = v49;
  v52._object = v51;
  LOBYTE(v20) = CRLocale.init(rawValue:)(v52);
  *(v0 + 291) = v86;
  if (v86 == 30)
  {
    v53 = 0;
  }

  else
  {
    v53 = v86;
  }

  switch(v47)
  {
    case 2:
      v53 = 6;
      break;
    case 3:
      v53 = 7;
      break;
    case 1:
      v82 = *(v0 + 64);
      CRLocale.script.getter(&v87);
      *(v0 + 288) = v87;
      *(v0 + 289) = 1;
      sub_1B410D624();
      *(v0 + 292) = sub_1B429FB58() & 1;
      v83 = (*v82 + 96) & 0xFFFFFFFFFFFFLL | 0x6AA6000000000000;
      *(v0 + 200) = *(*v82 + 96);
      *(v0 + 208) = v83;
      v20 = sub_1B41473D8;
      v21 = v82;
      v22 = 0;

      return MEMORY[0x1EEE6DFA0](v20, v21, v22);
    default:
      v55 = *(v0 + 104);
      v54 = *(v0 + 112);
      v56 = *(v0 + 96);
      v57 = sub_1B41253CC();
      (*(v55 + 16))(v54, v57, v56);
      v58 = sub_1B429FA48();
      v59 = sub_1B42A0148();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 134217984;
        *(v60 + 4) = v47;
        _os_log_impl(&dword_1B40D2000, v58, v59, "Unhandled disambiguated script type: %lu", v60, 0xCu);
        MEMORY[0x1B8C74FA0](v60, -1, -1);
      }

      v61 = *(v0 + 104);
      v62 = *(v0 + 112);
      v63 = *(v0 + 96);

      v20 = (*(v61 + 8))(v62, v63);
      break;
  }

  v64 = 0;
  *(v0 + 256) = 0;
  *(v0 + 293) = v53;
  while (1)
  {
    *(v0 + 264) = v64;
    v65 = *(v0 + 152);
    v66 = *(v0 + 184) + 8 * v64;
    v67 = *(v66 + 32);
    if ((v65 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x1B8C72CD0](*(v66 + 32), *(v0 + 144));
    }

    else
    {
      if ((v67 & 0x8000000000000000) != 0)
      {
        goto LABEL_80;
      }

      if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_81;
      }

      v68 = *(*(v0 + 144) + 8 * v67 + 32);
    }

    v70 = v68;
    v71 = [(CRFeatureSequenceRecognitionInfo *)v68 transientDecodingResult];

    if (v71)
    {
      objc_opt_self();
      v72 = swift_dynamicCastObjCClass();
      if (v72)
      {
        v73 = v72;
        CRLocale.rawValue.getter();
        v74 = sub_1B429FB88();

        [v73 setDecodingLocale_];
      }

      v20 = swift_unknownObjectRelease();
    }

    v75 = *(v0 + 256);
    if (v75)
    {
      break;
    }

    v64 = *(v0 + 264) + 1;
    if (v64 == *(v0 + 192))
    {

      v33 = *(v0 + 176);
      v37 = (*(v0 + 168) - 1) & *(v0 + 168);
      goto LABEL_35;
    }
  }

  v76 = *(v0 + 144);
  if ((*(v0 + 152) & 0xC000000000000001) != 0)
  {

    v77 = MEMORY[0x1B8C72CD0](v67, v76);
    v75 = *(v0 + 256);
  }

  else
  {
    v80 = *(v76 + 8 * v67 + 32);

    v77 = v80;
  }

  *(v0 + 272) = v77;
  v85 = (*(**(v0 + 64) + 128) + **(**(v0 + 64) + 128));
  v81 = swift_task_alloc();
  *(v0 + 280) = v81;
  *v81 = v0;
  v81[1] = sub_1B4147C04;

  return v85(v77, v75);
}

uint64_t sub_1B41473D8()
{
  *(v0 + 216) = (*(v0 + 200))();

  return MEMORY[0x1EEE6DFA0](sub_1B4147448, 0, 0);
}

uint64_t sub_1B4147448()
{
  v8 = v0;
  if (*(v0 + 216))
  {

    v1 = *(v0 + 64);
    v2 = sub_1B41475AC;
  }

  else
  {
    v3 = *(v0 + 64);
    if (*(v0 + 292) & 1 | (*(v0 + 291) == 30))
    {
      v4 = 0;
    }

    else
    {
      v4 = *(v0 + 291);
    }

    type metadata accessor for CRLanguageRecognitionContext();
    v7 = v4;
    *(v0 + 224) = CRLanguageRecognitionContext.__allocating_init(script:defaultLocale:)(1, &v7);
    v5 = (*v3 + 144) & 0xFFFFFFFFFFFFLL | 0xBA52000000000000;
    *(v0 + 232) = *(*v3 + 144);
    *(v0 + 240) = v5;
    v2 = sub_1B4147530;
    v1 = v3;
  }

  return MEMORY[0x1EEE6DFA0](v2, v1, 0);
}

uint64_t sub_1B4147530()
{
  (*(v0 + 232))(*(v0 + 224));

  v1 = *(v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1B41475AC, v1, 0);
}

uint64_t sub_1B41475AC()
{
  *(v0 + 248) = (*(v0 + 200))();

  return MEMORY[0x1EEE6DFA0](sub_1B414761C, 0, 0);
}

uint64_t sub_1B414761C()
{
  v57 = v0;
  v1 = *(v0 + 248);
  if (*(v0 + 292) & 1 | (*(v0 + 291) == 30))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 291);
  }

  v3 = 0x1FB17E000uLL;
LABEL_5:
  v4 = 0;
  *(v0 + 256) = v1;
  *(v0 + 293) = v2;
  while (1)
  {
    *(v0 + 264) = v4;
    v5 = *(v0 + 152);
    v6 = *(*(v0 + 184) + 8 * v4 + 32);
    if ((v5 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x1B8C72CD0](*(*(v0 + 184) + 8 * v4 + 32), *(v0 + 144));
LABEL_11:
    v9 = v7;
    v10 = [(CRFeatureSequenceRecognitionInfo *)v7 transientDecodingResult];

    if (v10)
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        CRLocale.rawValue.getter();
        v13 = sub_1B429FB88();

        [v12 setDecodingLocale_];
      }

      swift_unknownObjectRelease();
    }

    v14 = *(v0 + 256);
    if (v14)
    {
      v45 = *(v0 + 144);
      if ((*(v0 + 152) & 0xC000000000000001) != 0)
      {

        v46 = MEMORY[0x1B8C72CD0](v6, v45);
        v14 = *(v0 + 256);
      }

      else
      {
        v49 = *(v45 + 8 * v6 + 32);

        v46 = v49;
      }

      *(v0 + 272) = v46;
      v54 = (*(**(v0 + 64) + 128) + **(**(v0 + 64) + 128));
      v50 = swift_task_alloc();
      *(v0 + 280) = v50;
      *v50 = v0;
      v50[1] = sub_1B4147C04;

      return v54(v46, v14);
    }

    v4 = *(v0 + 264) + 1;
    if (v4 == *(v0 + 192))
    {

      v15 = *(v0 + 176);
      v16 = (*(v0 + 168) - 1) & *(v0 + 168);
      do
      {
        if (!v16)
        {
          while (1)
          {
            v18 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_45;
            }

            v17 = *(v0 + 160);
            if (v18 >= (((1 << *(v0 + 290)) + 63) >> 6))
            {
              break;
            }

            v16 = *(v17 + 8 * v18 + 64);
            ++v15;
            if (v16)
            {
              v15 = v18;
              goto LABEL_24;
            }
          }

          v47 = *(v0 + 8);

          return v47();
        }

        v17 = *(v0 + 160);
LABEL_24:
        *(v0 + 168) = v16;
        *(v0 + 176) = v15;
        v19 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v20 = v19 | (v15 << 6);
        v21 = *(*(v17 + 56) + 8 * v20);
        *(v0 + 184) = v21;
        v22 = *(v21 + 16);
        *(v0 + 192) = v22;
      }

      while (!v22);
      v23 = v3;
      v25 = *(v0 + 128);
      v24 = *(v0 + 136);
      v53 = *(v0 + 120);
      v26 = *(v0 + 80);
      v27 = *(*(v17 + 48) + 8 * v20);

      v28 = [v26 (v23 + 248)];
      sub_1B429F728();

      v29 = sub_1B429F6F8();
      v31 = v30;
      (*(v25 + 8))(v24, v53);
      v3 = v23;
      v32 = v27;
      v33._countAndFlagsBits = v29;
      v33._object = v31;
      CRLocale.init(rawValue:)(v33);
      v1 = 0;
      *(v0 + 291) = v55;
      if (v55 == 30)
      {
        v34 = 0;
      }

      else
      {
        v34 = v55;
      }

      v2 = 6;
      if (v27 != 2)
      {
        if (v27 == 3)
        {
          v1 = 0;
          v2 = 7;
        }

        else
        {
          if (v27 == 1)
          {
            goto LABEL_47;
          }

          v36 = *(v0 + 104);
          v35 = *(v0 + 112);
          v37 = *(v0 + 96);
          v38 = sub_1B41253CC();
          (*(v36 + 16))(v35, v38, v37);
          v39 = sub_1B429FA48();
          v40 = sub_1B42A0148();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 134217984;
            *(v41 + 4) = v32;
            _os_log_impl(&dword_1B40D2000, v39, v40, "Unhandled disambiguated script type: %lu", v41, 0xCu);
            MEMORY[0x1B8C74FA0](v41, -1, -1);
          }

          v43 = *(v0 + 104);
          v42 = *(v0 + 112);
          v44 = *(v0 + 96);

          (*(v43 + 8))(v42, v44);
          v1 = 0;
          v2 = v34;
        }
      }

      goto LABEL_5;
    }
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    if (v6 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v7 = *(*(v0 + 144) + 8 * v6 + 32);
    goto LABEL_11;
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  v51 = *(v0 + 64);
  CRLocale.script.getter(&v56);
  *(v0 + 288) = v56;
  *(v0 + 289) = 1;
  sub_1B410D624();
  *(v0 + 292) = sub_1B429FB58() & 1;
  v52 = (*v51 + 96) & 0xFFFFFFFFFFFFLL | 0x6AA6000000000000;
  *(v0 + 200) = *(*v51 + 96);
  *(v0 + 208) = v52;

  return MEMORY[0x1EEE6DFA0](sub_1B41473D8, v51, 0);
}

uint64_t sub_1B4147C04()
{
  v1 = *(*v0 + 272);

  return MEMORY[0x1EEE6DFA0](sub_1B4147D18, 0, 0);
}

uint64_t sub_1B4147D18()
{
  v60 = v0;

  v6 = 0x1FB17E000uLL;
  v7 = &dword_1B40D2000;
  v8 = 0x1E7BC0000;
  while (1)
  {
    v9 = *(v0 + 264) + 1;
    if (v9 == *(v0 + 192))
    {
      break;
    }

LABEL_23:
    *(v0 + 264) = v9;
    v41 = *(v0 + 152);
    v42 = *(v0 + 184) + 8 * v9;
    v1 = *(v42 + 32);
    if ((v41 & 0xC000000000000001) != 0)
    {
      v43 = MEMORY[0x1B8C72CD0](*(v42 + 32), *(v0 + 144));
    }

    else
    {
      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_47:
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v3, v4, v5);
      }

      if (v1 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_47;
      }

      v43 = *(*(v0 + 144) + 8 * v1 + 32);
    }

    v45 = v43;
    v46 = [(CRFeatureSequenceRecognitionInfo *)v43 transientDecodingResult];

    if (v46)
    {
      objc_opt_self();
      v47 = swift_dynamicCastObjCClass();
      if (v47)
      {
        v48 = v47;
        CRLocale.rawValue.getter();
        v49 = sub_1B429FB88();

        [v48 setDecodingLocale_];
      }

      v3 = swift_unknownObjectRelease();
    }

    v2 = *(v0 + 256);
    if (v2)
    {
      v8 = *(v0 + 144);
      if ((*(v0 + 152) & 0xC000000000000001) != 0)
      {

        v50 = MEMORY[0x1B8C72CD0](v1, v8);
        v2 = *(v0 + 256);
      }

      else
      {
LABEL_39:
        v53 = *(v8 + 8 * v1 + 32);

        v50 = v53;
      }

      *(v0 + 272) = v50;
      v57 = (*(**(v0 + 64) + 128) + **(**(v0 + 64) + 128));
      v54 = swift_task_alloc();
      *(v0 + 280) = v54;
      *v54 = v0;
      v54[1] = sub_1B4147C04;

      return v57(v50, v2);
    }
  }

  v10 = *(v0 + 176);
  v11 = (*(v0 + 168) - 1) & *(v0 + 168);
  do
  {
    if (!v11)
    {
      while (1)
      {
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
          goto LABEL_39;
        }

        v12 = *(v0 + 160);
        if (v13 >= (((1 << *(v0 + 290)) + 63) >> 6))
        {
          break;
        }

        v11 = *(v12 + 8 * v13 + 64);
        ++v10;
        if (v11)
        {
          v10 = v13;
          goto LABEL_10;
        }
      }

      v51 = *(v0 + 8);

      return v51();
    }

    v12 = *(v0 + 160);
LABEL_10:
    *(v0 + 168) = v11;
    *(v0 + 176) = v10;
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v15 = v14 | (v10 << 6);
    v16 = *(*(v12 + 56) + 8 * v15);
    *(v0 + 184) = v16;
    v17 = *(v16 + 16);
    *(v0 + 192) = v17;
  }

  while (!v17);
  v18 = v7;
  v19 = v6;
  v21 = *(v0 + 128);
  v20 = *(v0 + 136);
  v22 = *(v0 + 120);
  v23 = *(v0 + 80);
  v24 = *(*(v12 + 48) + 8 * v15);

  v25 = [v23 (v19 + 248)];
  sub_1B429F728();

  v26 = sub_1B429F6F8();
  v28 = v27;
  (*(v21 + 8))(v20, v22);
  v29._countAndFlagsBits = v26;
  v29._object = v28;
  LOBYTE(v3) = CRLocale.init(rawValue:)(v29);
  *(v0 + 291) = v58;
  if (v58 == 30)
  {
    v30 = 0;
  }

  else
  {
    v30 = v58;
  }

  if (v24 == 2)
  {
    v30 = 6;
    v6 = 0x1FB17E000;
    v7 = v18;
    goto LABEL_22;
  }

  v7 = v18;
  if (v24 == 3)
  {
    v30 = 7;
    v6 = 0x1FB17E000;
LABEL_22:
    v9 = 0;
    *(v0 + 256) = 0;
    *(v0 + 293) = v30;
    v8 = 0x1E7BC0000uLL;
    goto LABEL_23;
  }

  if (v24 != 1)
  {
    v32 = *(v0 + 104);
    v31 = *(v0 + 112);
    v33 = *(v0 + 96);
    v34 = sub_1B41253CC();
    (*(v32 + 16))(v31, v34, v33);
    v35 = sub_1B429FA48();
    v36 = sub_1B42A0148();
    v6 = 0x1FB17E000;
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 134217984;
      *(v37 + 4) = v24;
      _os_log_impl(v18, v35, v36, "Unhandled disambiguated script type: %lu", v37, 0xCu);
      MEMORY[0x1B8C74FA0](v37, -1, -1);
    }

    v39 = *(v0 + 104);
    v38 = *(v0 + 112);
    v40 = *(v0 + 96);

    v3 = (*(v39 + 8))(v38, v40);
    goto LABEL_22;
  }

  v55 = *(v0 + 64);
  CRLocale.script.getter(&v59);
  *(v0 + 288) = v59;
  *(v0 + 289) = 1;
  sub_1B410D624();
  *(v0 + 292) = sub_1B429FB58() & 1;
  v56 = (*v55 + 96) & 0xFFFFFFFFFFFFLL | 0x6AA6000000000000;
  *(v0 + 200) = *(*v55 + 96);
  *(v0 + 208) = v56;
  v3 = sub_1B41473D8;
  v4 = v55;
  v5 = 0;

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1B4148330()
{
  result = qword_1ED95E098;
  if (!qword_1ED95E098)
  {
    type metadata accessor for CRDisambiguatedScript();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED95E098);
  }

  return result;
}

uint64_t sub_1B41483DC()
{
  v1 = [*(v0 + 64) engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  v2 = *(v0 + 56);
  *(v0 + 72) = *(v0 + 48);
  ObjectType = swift_getObjectType();
  v6 = (*(v2 + 40) + **(v2 + 40));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B4148560;

  return v6(ObjectType, v2);
}

uint64_t sub_1B4148560()
{
  v3 = *v0;

  swift_unknownObjectRelease();
  v1 = *(v3 + 8);

  return v1();
}

void sub_1B4148B58(double a1, double a2, double a3)
{
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    v7 = [v3 engine];
    sub_1B42A0348();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
    swift_dynamicCast();
    ObjectType = swift_getObjectType();
    (*(v9 + 24))(ObjectType, v9, a1, a2, a3);
    swift_unknownObjectRelease();
  }
}

void *sub_1B4148CB8(uint64_t a1)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1B40DF594();
    swift_allocError();
    *v7 = 0;
    *(v7 + 4) = 1;
LABEL_6:
    swift_willThrow();
    return v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v2 = sub_1B429FAE8();
  v10[0] = 0;
  v4 = [v1 resultsForPixelBuffer:a1 roi:v2 options:v10 error:{0.0, 0.0, 1.0, 1.0}];

  v5 = v10[0];
  if (!v4)
  {
    v8 = v10[0];
    sub_1B429F598();

    goto LABEL_6;
  }

  sub_1B40E27B4(0, &qword_1EB884820);
  v2 = sub_1B429FDF8();
  v6 = v5;

  return v2;
}

void *sub_1B4148F60(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    sub_1B40DF594();
    swift_allocError();
    *v15 = 0;
    *(v15 + 4) = 1;
LABEL_6:
    swift_willThrow();
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v6 = sub_1B429FAE8();
  v18[0] = 0;
  v12 = [v5 resultsForPixelBuffer:a1 roi:v6 options:v18 error:0 withProgressHandler:{a2, a3, a4, a5}];

  v13 = v18[0];
  if (!v12)
  {
    v16 = v18[0];
    sub_1B429F598();

    goto LABEL_6;
  }

  sub_1B40E27B4(0, &qword_1EB884820);
  v6 = sub_1B429FDF8();
  v14 = v13;

  return v6;
}

void sub_1B414925C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v55 = a3;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = &v50 - v17;
  v19 = sub_1B429FA68();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v24 = [objc_allocWithZone(CRImage_PixelBuffer) initWithCVPixelBuffer_];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1B41252AC();
      (*(v20 + 16))(v23, v26, v19);
      v27 = v25;

      v28 = sub_1B429FA48();
      v29 = sub_1B42A0158();

      v52 = v29;
      v53 = v28;
      v30 = os_log_type_enabled(v28, v29);
      v54 = v27;
      if (v30)
      {
        v31 = swift_slowAlloc();
        v51 = a4;
        v32 = v31;
        v33 = swift_slowAlloc();
        v57[0] = v33;
        *v32 = 136316930;
        *(v32 + 4) = sub_1B40DDE8C(0xD00000000000002DLL, 0x80000001B42B5EF0, v57);
        v50 = v19;
        *(v32 + 12) = 2048;
        *(v32 + 14) = [v27 width];
        *(v32 + 22) = 2048;
        *(v32 + 24) = [v27 height];

        *(v32 + 32) = 2048;
        *(v32 + 34) = a5;
        *(v32 + 42) = 2048;
        *(v32 + 44) = a6;
        *(v32 + 52) = 2048;
        *(v32 + 54) = a7;
        *(v32 + 62) = 2048;
        *(v32 + 64) = a8;
        *(v32 + 72) = 2080;
        v34 = sub_1B415302C(a2);
        v36 = sub_1B40DDE8C(v34, v35, v57);

        *(v32 + 74) = v36;
        v37 = v53;
        _os_log_impl(&dword_1B40D2000, v53, v52, "%s: image={w:%ld,h:%ld} roi={x:%f,y:%f,w:%f,h:%f} options=%s", v32, 0x52u);
        swift_arrayDestroy();
        MEMORY[0x1B8C74FA0](v33, -1, -1);
        v38 = v32;
        a4 = v51;
        MEMORY[0x1B8C74FA0](v38, -1, -1);

        (*(v20 + 8))(v23, v50);
      }

      else
      {

        (*(v20 + 8))(v23, v19);
      }

      v40 = swift_allocObject();
      *(v40 + 16) = 0;
      v41 = sub_1B429FEE8();
      (*(*(v41 - 8) + 56))(v18, 1, 1, v41);
      v42 = v18;
      v43 = swift_allocObject();
      v45 = v55;
      v44 = v56;
      *(v43 + 16) = v40;
      *(v43 + 24) = v44;
      v46 = v54;
      *(v43 + 32) = v54;
      *(v43 + 40) = a5;
      *(v43 + 48) = a6;
      *(v43 + 56) = a7;
      *(v43 + 64) = a8;
      *(v43 + 72) = a2;
      *(v43 + 80) = v45;
      *(v43 + 88) = a4;
      v47 = v46;

      v48 = v44;
      sub_1B40D5FF0(v45);
      v49 = v57[8];
      sub_1B40E6C14(v42, &unk_1B42AE6F0, v43, MEMORY[0x1E69E7CA8] + 8);
      sub_1B40E26E8(v42, &unk_1EB884C70);
      if (v49)
      {
      }

      else
      {

        swift_beginAccess();
        if (*(v40 + 16))
        {
        }
      }
    }

    else
    {
      sub_1B40DF594();
      swift_allocError();
      *v39 = 0;
      *(v39 + 4) = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1B414976C(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(v11 + 40) = a6;
  v20 = swift_task_alloc();
  *(v11 + 48) = v20;
  *v20 = v11;
  v20[1] = sub_1B4149864;

  return sub_1B4149A34(a8, a9, a10, a11, a1, a2, a3, a4);
}

uint64_t sub_1B4149864(uint64_t a1)
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
    *(v4 + 56) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1B41499B0, 0, 0);
  }
}

uint64_t sub_1B41499B0()
{
  v1 = v0[7];
  v2 = v0[5];
  swift_beginAccess();
  *(v2 + 16) = v1;

  v3 = v0[1];

  return v3();
}

uint64_t sub_1B4149A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 96) = a4;
  *(v9 + 104) = v8;
  *(v9 + 80) = a2;
  *(v9 + 88) = a3;
  *(v9 + 64) = a7;
  *(v9 + 72) = a8;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  *(v9 + 40) = a1;
  v10 = sub_1B429F9B8();
  *(v9 + 112) = v10;
  *(v9 + 120) = *(v10 - 8);
  *(v9 + 128) = swift_task_alloc();
  *(v9 + 136) = swift_task_alloc();
  v11 = sub_1B429F9E8();
  *(v9 + 144) = v11;
  *(v9 + 152) = *(v11 - 8);
  *(v9 + 160) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4149B6C, 0, 0);
}

uint64_t sub_1B4149B6C()
{
  v1 = [*(v0 + 104) outputObjectTypes];
  if (!v1)
  {
    goto LABEL_7;
  }

  v2 = v1;
  v3 = sub_1B429FDF8();

  *(v0 + 168) = @"CROutputTypeText";
  *(v0 + 16) = sub_1B429FB98();
  *(v0 + 24) = v4;
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 16;
  v6 = sub_1B410CD54(sub_1B410D504, v5, v3);

  if ((v6 & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v0 + 152);
  v7 = *(v0 + 160);
  v9 = *(v0 + 144);
  v10 = sub_1B410F8A0();
  (*(v8 + 16))(v7, v10, v9);
  v11 = sub_1B410F904();
  v12 = *v11;
  v13 = *(v11 + 16);
  sub_1B429F9A8();
  v14 = sub_1B429F9C8();
  v15 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if (result)
  {
    if ((v13 & 1) == 0)
    {
      if (!v12)
      {
        __break(1u);
LABEL_7:
        v17 = *(v0 + 88);
        if (v17)
        {
          v17(0, 0.0);
        }

        sub_1B40DF594();
        swift_allocError();
        *v18 = 2;
        *(v18 + 4) = 1;
        swift_willThrow();

        v19 = *(v0 + 8);

        return v19();
      }

      goto LABEL_16;
    }

    if (v12 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v12 & 0xFFFFF800) == 0xD800)
      {
LABEL_22:
        __break(1u);
        return result;
      }

      if (v12 >> 16 <= 0x10)
      {
        v12 = (v0 + 32);
LABEL_16:
        v20 = swift_slowAlloc();
        *v20 = 0;
        v21 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v14, v15, v21, v12, "", v20, 2u);
        MEMORY[0x1B8C74FA0](v20, -1, -1);
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_17:
  v23 = *(v0 + 152);
  v22 = *(v0 + 160);
  v25 = *(v0 + 136);
  v24 = *(v0 + 144);
  v27 = *(v0 + 120);
  v26 = *(v0 + 128);
  v28 = *(v0 + 112);

  (*(v27 + 16))(v26, v25, v28);
  sub_1B429FA28();
  swift_allocObject();
  *(v0 + 176) = sub_1B429FA18();
  (*(v27 + 8))(v25, v28);
  (*(v23 + 8))(v22, v24);
  v29 = swift_task_alloc();
  *(v0 + 184) = v29;
  *v29 = v0;
  v29[1] = sub_1B4149F0C;
  v30 = *(v0 + 96);
  v31 = *(v0 + 80);
  v32 = *(v0 + 88);
  v33 = *(v0 + 64);
  v34 = *(v0 + 72);
  v35 = *(v0 + 48);
  v36 = *(v0 + 56);
  v37 = *(v0 + 40);

  return sub_1B414A530(v37, v31, 0, v32, v30, v35, v36, v33, v34);
}

uint64_t sub_1B4149F0C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v4 = sub_1B414A2C0;
  }

  else
  {
    v4 = sub_1B414A020;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B414A020()
{
  v1 = [*(v0 + 192) contentsWithTypes_];
  sub_1B40E27B4(0, &qword_1ED95EE70);
  v2 = sub_1B429FDF8();

  if (v2 >> 62)
  {
    v3 = sub_1B42A0518();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_14:
    v17 = *(v0 + 192);

    v16 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1B42A0488();
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1B8C72CD0](v5, v2);
    }

    else
    {
      v11 = *(v2 + 8 * v5 + 32);
    }

    v12 = v11;
    v13 = [*(v0 + 192) title];
    v14 = v12;
    v15 = v14;
    if (v13)
    {
      v6 = v14;
      v7 = sub_1B42A0258();
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 168);
    ++v5;
    v9 = objc_allocWithZone(CRImageReaderOutput);
    v10 = v8;
    [v9 initWithType:v10 outputRegion:v15 isTitle:v7 & 1];

    sub_1B42A0458();
    sub_1B42A0498();
    sub_1B42A04A8();
    sub_1B42A0468();
  }

  while (v3 != v5);

  v16 = v19;
LABEL_15:
  sub_1B414C734(*(v0 + 176), sub_1B410F904);

  v18 = *(v0 + 8);

  return v18(v16);
}

uint64_t sub_1B414A2C0()
{
  sub_1B414C734(*(v0 + 176), sub_1B410F904);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B414A530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  *(v10 + 280) = a5;
  *(v10 + 288) = v9;
  *(v10 + 264) = a3;
  *(v10 + 272) = a4;
  *(v10 + 256) = a2;
  *(v10 + 240) = a8;
  *(v10 + 248) = a9;
  *(v10 + 224) = a6;
  *(v10 + 232) = a7;
  *(v10 + 216) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  *(v10 + 296) = swift_task_alloc();
  *(v10 + 304) = type metadata accessor for ImageReaderConfiguration();
  *(v10 + 312) = swift_task_alloc();
  v11 = sub_1B429FA68();
  *(v10 + 320) = v11;
  *(v10 + 328) = *(v11 - 8);
  *(v10 + 336) = swift_task_alloc();
  *(v10 + 344) = swift_task_alloc();
  v12 = sub_1B429F658();
  *(v10 + 352) = v12;
  *(v10 + 360) = *(v12 - 8);
  *(v10 + 368) = swift_task_alloc();
  *(v10 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B414A6E0, 0, 0);
}

uint64_t sub_1B414A6E0()
{
  v64 = v0;
  if (os_variant_has_internal_diagnostics() && (sub_1B4141614(4u) & 1) != 0)
  {
    v1 = [*(v0 + 216) bufferHash];
    sub_1B42A0408();

    v63[0] = 0x75706E695F72636FLL;
    v63[1] = 0xEA00000000005F74;
    v62 = v1;
    *(v0 + 208) = v1;
    v2 = sub_1B42A0648();
    MEMORY[0x1B8C72530](v2);

    MEMORY[0x1B8C72530](1735290926, 0xE400000000000000);
    if (qword_1EB896170 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 376);
    v60 = *(v0 + 368);
    v5 = *(v0 + 352);
    v4 = *(v0 + 360);
    v6 = *(v0 + 344);
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 216);
    __swift_project_value_buffer(v5, qword_1EB896178);
    sub_1B429F618();

    v10 = sub_1B429F5F8();
    [v9 writeToURL_];

    v11 = sub_1B41254F0();
    (*(v7 + 16))(v6, v11, v8);
    (*(v4 + 16))(v60, v3, v5);
    v12 = sub_1B429FA48();
    v13 = sub_1B42A0128();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 368);
    v61 = *(v0 + 376);
    v17 = *(v0 + 352);
    v16 = *(v0 + 360);
    v18 = *(v0 + 344);
    v20 = *(v0 + 320);
    v19 = *(v0 + 328);
    if (v14)
    {
      v59 = *(v0 + 320);
      v21 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v63[0] = v58;
      *v21 = 136315394;
      *(v21 + 4) = sub_1B40DDE8C(0xD000000000000045, 0x80000001B42B5F20, v63);
      *(v21 + 12) = 2080;
      v22 = sub_1B429F5C8();
      v23 = v17;
      v56 = v17;
      v57 = v18;
      v24 = v22;
      v26 = v25;
      v27 = *(v16 + 8);
      v27(v15, v23);
      v28 = sub_1B40DDE8C(v24, v26, v63);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_1B40D2000, v12, v13, "%s: Saving image at location: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v58, -1, -1);
      MEMORY[0x1B8C74FA0](v21, -1, -1);

      (*(v19 + 8))(v57, v59);
      v29 = v61;
      v30 = v56;
    }

    else
    {

      v27 = *(v16 + 8);
      v27(v15, v17);
      (*(v19 + 8))(v18, v20);
      v29 = v61;
      v30 = v17;
    }

    v27(v29, v30);
    v32 = 1;
    v31 = v62;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  *(v0 + 461) = v32;
  *(v0 + 384) = v31;
  v33 = *(v0 + 272);
  if (v33)
  {
    v33(0, 0.0);
  }

  v34 = *(v0 + 240);
  v35 = *(v0 + 248);
  v36 = *(v0 + 224);
  v37 = *(v0 + 232);
  v38 = *(v0 + 216);
  v39 = v36 * [v38 width];
  v40 = v37 * [v38 height];
  v41 = v34 * [v38 width];
  v66.size.height = v35 * [v38 height];
  v66.origin.x = v39;
  v66.origin.y = v40;
  v66.size.width = v41;
  v67 = CGRectIntegral(v66);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v46 = [v38 width];
  v47 = [v38 height];
  v69.size.width = v46;
  v69.size.height = v47;
  v69.origin.x = 0.0;
  v69.origin.y = 0.0;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v48 = CGRectEqualToRect(v68, v69);
  *(v0 + 462) = v48;
  if (v48)
  {
    v49 = *(v0 + 216);
LABEL_16:
    v51 = v49;
    goto LABEL_17;
  }

  objc_opt_self();
  v50 = swift_dynamicCastObjCClass();
  if (v50)
  {
    v49 = [v50 imageByCroppingRectangle:1 iosurfaceBacking:{x, y, width, height}];
    goto LABEL_16;
  }

  v51 = [*(v0 + 216) imageByCroppingRectangle_];
  if (v51)
  {
LABEL_17:
    *(v0 + 392) = v51;
    *(v0 + 400) = sub_1B414BA4C(*(v0 + 256));
    sub_1B429FF98();
    v54 = swift_task_alloc();
    *(v0 + 408) = v54;
    *v54 = v0;
    v54[1] = sub_1B414AD5C;

    return MEMORY[0x1EEE6DA78]();
  }

  sub_1B40DF594();
  swift_allocError();
  *v55 = 3;
  *(v55 + 4) = 1;
  swift_willThrow();

  v52 = *(v0 + 8);

  return v52();
}

uint64_t sub_1B414AD5C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B414AE58, 0, 0);
}

uint64_t sub_1B414AE58()
{
  v1 = *(v0 + 400);
  v2 = sub_1B429FB98();
  if (*(v1 + 16))
  {
    v4 = sub_1B40F0030(v2, v3);
    v6 = v5;

    if (v6)
    {
      v7 = *(v0 + 400);
      sub_1B40E2888(*(v7 + 56) + 32 * v4, v0 + 56);
      sub_1B40E26E8(v0 + 56, &qword_1EB884FE8);
      v8 = sub_1B429FB98();
      if (*(v1 + 16))
      {
        v10 = sub_1B40F0030(v8, v9);
        v12 = v11;

        if (v12)
        {
          v13 = (v0 + 456);
          sub_1B40E2888(*(v7 + 56) + 32 * v10, v0 + 152);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
          if (swift_dynamicCast())
          {
            v14 = *v13;
            if ((v14 - 9) < 0xFFFFFFF8)
            {
              v15 = *(v0 + 392);
              v16 = *v13;

              sub_1B40DF594();
              swift_allocError();
              *v17 = v16;
              *(v17 + 4) = 0;
LABEL_24:
              swift_willThrow();

              v41 = *(v0 + 8);

              return v41();
            }

LABEL_22:
            v24 = [*(v0 + 392) imageByCorrectingFromOrientation_];
            if (!v24)
            {
              goto LABEL_23;
            }

LABEL_16:
            v23 = v24;

            goto LABEL_17;
          }
        }
      }

      else
      {
      }

      v14 = 1;
      goto LABEL_22;
    }
  }

  else
  {
  }

  *(v0 + 72) = 0u;
  *(v0 + 56) = 0u;
  sub_1B40E26E8(v0 + 56, &qword_1EB884FE8);
  v18 = sub_1B429FB98();
  if (!*(v1 + 16))
  {

    goto LABEL_15;
  }

  v20 = sub_1B40F0030(v18, v19);
  v22 = v21;

  if (v22 & 1) == 0 || (sub_1B40E2888(*(*(v0 + 400) + 56) + 32 * v20, v0 + 88), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990), !swift_dynamicCast()) || (*(v0 + 460))
  {
LABEL_15:
    v24 = [*(v0 + 392) imageByRotating90CW];
    if (!v24)
    {
LABEL_23:
      v15 = *(v0 + 392);

      sub_1B40DF594();
      swift_allocError();
      *v40 = 3;
      *(v40 + 4) = 1;
      goto LABEL_24;
    }

    goto LABEL_16;
  }

  v23 = *(v0 + 392);
LABEL_17:
  *(v0 + 416) = v23;
  v26 = *(v0 + 304);
  v25 = *(v0 + 312);
  v27 = *(v0 + 288);
  v28 = *(v0 + 296);
  ImageReaderConfiguration.init(options:)(*(v0 + 400), v25);
  v29 = [v27 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  v30 = *(v0 + 192);
  *(v0 + 424) = *(v0 + 184);
  ObjectType = swift_getObjectType();
  v32 = sub_1B429F868();
  (*(*(v32 - 8) + 56))(v28, 1, 1, v32);
  *(v0 + 40) = v26;
  *(v0 + 48) = sub_1B4155024(&qword_1ED95E850, type metadata accessor for ImageReaderConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 16));
  sub_1B4153A3C(v25, boxed_opaque_existential_0);
  v42 = (*(v30 + 16) + **(v30 + 16));
  v34 = swift_task_alloc();
  *(v0 + 432) = v34;
  *v34 = v0;
  v34[1] = sub_1B414B3A8;
  v35 = *(v0 + 296);
  v36 = *(v0 + 272);
  v37 = *(v0 + 280);
  v38 = *(v0 + 264);

  return v42(v23, v35, v0 + 16, v38, v36, v37, ObjectType, v30);
}

uint64_t sub_1B414B3A8(uint64_t a1)
{
  v3 = *v2;
  v3[55] = a1;
  v3[56] = v1;

  sub_1B40E26E8(v3[37], &qword_1EB8855E0);
  swift_unknownObjectRelease();
  if (v1)
  {
    v4 = sub_1B414B8F4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 2));
    v4 = sub_1B414B50C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B414B50C()
{
  v36 = v0;
  if ((*(v0 + 462) & 1) == 0)
  {
    [*(v0 + 440) scaleBy:*(v0 + 240) normalizedOffset:{*(v0 + 248), *(v0 + 224), *(v0 + 232)}];
  }

  if (*(v0 + 461) == 1)
  {
    v1 = *(v0 + 384);
    sub_1B42A0408();

    v34 = 0x75706E695F72636FLL;
    v35 = 0xEA00000000005F74;
    *(v0 + 200) = v1;
    v2 = sub_1B42A0648();
    MEMORY[0x1B8C72530](v2);

    MEMORY[0x1B8C72530](1952539694, 0xE400000000000000);
    v3 = v35;
    if (qword_1EB896170 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 440);
    v5 = *(v0 + 328);
    v6 = *(v0 + 336);
    v7 = *(v0 + 320);
    __swift_project_value_buffer(*(v0 + 352), qword_1EB896178);
    v8 = sub_1B429F5F8();
    v33 = v34;
    v9 = sub_1B429FB88();
    v10 = [v4 writeToFileInFolder:v8 basename:v9];

    v11 = sub_1B41254F0();
    (*(v5 + 16))(v6, v11, v7);

    v12 = sub_1B429FA48();
    v13 = sub_1B42A0128();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 328);
    v15 = *(v0 + 336);
    v17 = *(v0 + 312);
    v18 = *(v0 + 320);
    if (v14)
    {
      v31 = *(v0 + 416);
      v32 = *(v0 + 320);
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v34 = v20;
      *v19 = 136315650;
      *(v19 + 4) = sub_1B40DDE8C(0xD000000000000045, 0x80000001B42B5F20, &v34);
      v30 = v17;
      *(v19 + 12) = 2080;
      v21 = sub_1B429F648();
      v23 = sub_1B40DDE8C(v21, v22, &v34);

      *(v19 + 14) = v23;
      *(v19 + 22) = 2080;
      v24 = sub_1B40DDE8C(v33, v3, &v34);

      *(v19 + 24) = v24;
      _os_log_impl(&dword_1B40D2000, v12, v13, "%s: Saving OCR output results at location: %s/%s", v19, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C74FA0](v20, -1, -1);
      MEMORY[0x1B8C74FA0](v19, -1, -1);

      (*(v16 + 8))(v15, v32);
      v25 = v30;
    }

    else
    {

      (*(v16 + 8))(v15, v18);
      v25 = v17;
    }

    sub_1B40FC988(v25);
  }

  else
  {
    v26 = *(v0 + 416);
    sub_1B40FC988(*(v0 + 312));
  }

  v27 = *(v0 + 8);
  v28 = *(v0 + 440);

  return v27(v28);
}

uint64_t sub_1B414B8F4()
{
  v1 = *(v0 + 312);

  sub_1B40FC988(v1);
  __swift_destroy_boxed_opaque_existential_0(v0 + 16);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B414B9B8()
{
  v0 = sub_1B429F658();
  __swift_allocate_value_buffer(v0, qword_1EB896178);
  __swift_project_value_buffer(v0, qword_1EB896178);
  v1 = NSTemporaryDirectory();
  sub_1B429FB98();

  sub_1B429F5D8();
}

uint64_t sub_1B414BA4C(uint64_t a1)
{
  v3 = [v1 userOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v4 = sub_1B429FAF8();

  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v12 = v9;
LABEL_14:
    v15 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1B40E2888(*(a1 + 56) + 32 * v16, v36);
    *&v37 = v19;
    *(&v37 + 1) = v18;
    sub_1B40D4758(v36, &v38);

    v14 = v12;
LABEL_15:
    v40 = v37;
    v41[0] = v38;
    v41[1] = v39;
    v20 = *(&v37 + 1);
    if (!*(&v37 + 1))
    {

      return v4;
    }

    v21 = v40;
    sub_1B40D4758(v41, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v4;
    v23 = sub_1B40F0030(v21, v20);
    v25 = v4[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      break;
    }

    v29 = v24;
    if (v4[3] >= v28)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_21;
      }

      v34 = v23;
      sub_1B410B07C();
      v23 = v34;
      if ((v29 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_5:
      v10 = v23;

      v4 = *&v36[0];
      v11 = (*(*&v36[0] + 56) + 32 * v10);
      __swift_destroy_boxed_opaque_existential_0(v11);
      sub_1B40D4758(&v37, v11);
      v9 = v14;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_1B410AC14(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1B40F0030(v21, v20);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_32;
      }

LABEL_21:
      if (v29)
      {
        goto LABEL_5;
      }

LABEL_22:
      v4 = *&v36[0];
      *(*&v36[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v31 = (v4[6] + 16 * v23);
      *v31 = v21;
      v31[1] = v20;
      sub_1B40D4758(&v37, (v4[7] + 32 * v23));
      v32 = v4[2];
      v27 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v27)
      {
        goto LABEL_31;
      }

      v4[2] = v33;
      v9 = v14;
      if (!v7)
      {
LABEL_7:
        if (v8 <= v9 + 1)
        {
          v13 = v9 + 1;
        }

        else
        {
          v13 = v8;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v12 >= v8)
          {
            v7 = 0;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            goto LABEL_15;
          }

          v7 = *(a1 + 64 + 8 * v12);
          ++v9;
          if (v7)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1B42A06E8();
  __break(1u);
  return result;
}

void sub_1B414BE4C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B429FA68();
  MEMORY[0x1EEE9AC00](v4, v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = *(v8 + 16);
  if (v9)
  {
    v30 = v1;
    v33 = (v6 + 8);
    v34 = (v6 + 16);
    v29 = a1;

    v28[1] = v8;
    v10 = (v8 + 40);
    *&v11 = 136315138;
    v31 = v11;
    v12 = v32;
    do
    {
      v14 = *(v10 - 1);
      v13 = *v10;
      v16 = v14 == sub_1B429FB98() && v13 == v15;
      if (v16 || (v17 = sub_1B42A0678(), , , (v17 & 1) != 0))
      {
      }

      else
      {
        v18 = sub_1B41252AC();
        (*v34)(v12, v18, v4);

        v19 = sub_1B429FA48();
        v20 = sub_1B42A0138();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = v4;
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v35 = v23;
          *v22 = v31;
          v24 = sub_1B40DDE8C(v14, v13, &v35);

          *(v22 + 4) = v24;
          _os_log_impl(&dword_1B40D2000, v19, v20, "Output object type %s not supported by CRImageReader", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v23);
          v25 = v23;
          v12 = v32;
          MEMORY[0x1B8C74FA0](v25, -1, -1);
          v26 = v22;
          v4 = v21;
          MEMORY[0x1B8C74FA0](v26, -1, -1);

          (*v33)(v12, v21);
        }

        else
        {

          (*v33)(v12, v4);
        }
      }

      v10 += 2;
      --v9;
    }

    while (v9);

    v2 = v30;
    if (v29)
    {
      goto LABEL_17;
    }

LABEL_19:
    v27 = 0;
    goto LABEL_20;
  }

  if (!a1)
  {
    goto LABEL_19;
  }

LABEL_17:
  v27 = sub_1B429FDE8();

LABEL_20:
  [v2 set:v27 outputObjectTypes:?];
}

uint64_t sub_1B414C178(uint64_t a1)
{
  v52 = a1;
  v56 = sub_1B429FA68();
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v1);
  v53 = &v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1B429F9B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v46 - v10;
  v12 = sub_1B429F9E8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1B410F8A0();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_1B410F910();
  v50 = *v18;
  v19 = *(v18 + 16);
  sub_1B429F9A8();
  v20 = sub_1B429F9C8();
  v49 = sub_1B42A01C8();
  result = sub_1B42A0278();
  if (result)
  {
    v47 = v13;
    v48 = v16;
    v22 = v11;
    if (v19)
    {
      if (!HIDWORD(v50))
      {
        if ((v50 & 0xFFFFF800) == 0xD800)
        {
LABEL_20:
          __break(1u);
          return result;
        }

        if (v50 >> 16 <= 0x10)
        {
          v24 = v20;
          v23 = &v57;
          goto LABEL_9;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    else
    {
      v23 = v50;
      if (v50)
      {
        v24 = v20;
LABEL_9:
        v25 = swift_slowAlloc();
        *v25 = 0;
        v26 = sub_1B429F998();
        _os_signpost_emit_with_name_impl(&dword_1B40D2000, v24, v49, v26, v23, "", v25, 2u);
        MEMORY[0x1B8C74FA0](v25, -1, -1);
        v20 = v24;
        v11 = v22;
        v13 = v47;
        v16 = v48;
        goto LABEL_10;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_10:

  (*(v4 + 16))(v7, v11, v3);
  sub_1B429FA28();
  swift_allocObject();
  v50 = sub_1B429FA18();
  (*(v4 + 8))(v11, v3);
  (*(v13 + 8))(v16, v12);
  v27 = sub_1B41252AC();
  v28 = v53;
  v29 = v54;
  v30 = v56;
  (*(v54 + 16))(v53, v27, v56);
  v31 = v52;

  v32 = sub_1B429FA48();
  v33 = sub_1B42A0158();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v58 = v35;
    *v34 = 136315138;
    v36 = sub_1B415302C(v31);
    v38 = sub_1B40DDE8C(v36, v37, &v58);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_1B40D2000, v32, v33, "CRImageReader.init(options:): options=%s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1B8C74FA0](v35, -1, -1);
    MEMORY[0x1B8C74FA0](v34, -1, -1);

    (*(v29 + 8))(v28, v56);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
  }

  v39 = v51;
  sub_1B41536B4(v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v40 = sub_1B429FAE8();

  [v39 setUserOptions_];

  v41 = [v39 userOptions];
  v42 = sub_1B429FAF8();

  v43 = v55;
  v44 = sub_1B415432C(v42);
  if (v43)
  {
  }

  else
  {
    v45 = v44;

    [v39 setEngine_];
    swift_unknownObjectRelease();
  }

  sub_1B414C734(v50, sub_1B410F910);
}

uint64_t sub_1B414C734(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_1B429F9F8();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B429F9B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B429F9E8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1B410F8A0();
  v17 = (*(v12 + 16))(v15, v16, v11);
  v18 = a2(v17);
  v34 = *v18;
  v19 = *(v18 + 16);
  v20 = sub_1B429F9C8();
  sub_1B429FA08();
  v30 = sub_1B42A01B8();
  result = sub_1B42A0278();
  if ((result & 1) == 0)
  {
LABEL_13:

    (*(v7 + 8))(v10, v6);
    return (*(v12 + 8))(v15, v11);
  }

  v29 = v7;
  if ((v19 & 1) == 0)
  {
    if (v34)
    {
      v22 = v33;
LABEL_9:

      sub_1B429FA38();

      v24 = v31;
      v23 = v32;
      if ((*(v31 + 88))(v22, v32) == *MEMORY[0x1E69E93E8])
      {
        v25 = "[Error] Interval already ended";
      }

      else
      {
        (*(v24 + 8))(v22, v23);
        v25 = "";
      }

      v26 = swift_slowAlloc();
      *v26 = 0;
      v27 = sub_1B429F998();
      _os_signpost_emit_with_name_impl(&dword_1B40D2000, v20, v30, v27, v34, v25, v26, 2u);
      MEMORY[0x1B8C74FA0](v26, -1, -1);
      v7 = v29;
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (v34 >> 32)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((v34 & 0xFFFFF800) != 0xD800)
  {
    v22 = v33;
    if (v34 >> 16 <= 0x10)
    {
      v34 = &v35;
      goto LABEL_9;
    }

    goto LABEL_16;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_1B414CC10(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v4 = sub_1B429FAE8();
  v7[0] = 0;
  LODWORD(a2) = [ObjCClassFromMetadata preheatModelsForOptions:v4 revision:a2 extendedTimeoutBlock:0 error:v7];

  if (a2)
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1B429F598();

  return swift_willThrow();
}

uint64_t sub_1B414CDEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = (*(a3 + 64) + **(a3 + 64));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1B40E17D0;

  return v16(a4, a5, a6, a7, a2, a3);
}

uint64_t sub_1B414D1B0(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a1;
  *(v7 + 120) = a2;
  *(v7 + 96) = a6;
  *(v7 + 104) = a7;
  *(v7 + 80) = a4;
  *(v7 + 88) = a5;
  *(v7 + 128) = type metadata accessor for ImageReaderConfiguration();
  *(v7 + 136) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B414D24C, 0, 0);
}

uint64_t sub_1B414D24C()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = *(v0 + 14);
  v3 = *(v0 + 15);
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[11];

  ImageReaderConfiguration.init(options:)(v8, v1);
  v0[5] = v2;
  v0[6] = sub_1B4155024(&qword_1ED95E850, type metadata accessor for ImageReaderConfiguration);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1B4153A3C(v1, boxed_opaque_existential_0);
  v10 = (*(v6 + 72))(v0 + 2, v5, v6, v4, v3);
  v12 = v11;
  sub_1B40FC988(v1);
  __swift_destroy_boxed_opaque_existential_0((v0 + 2));
  swift_beginAccess();
  *(v7 + 16) = v10;
  *(v7 + 24) = v12;
  *(v7 + 32) = 0;

  v13 = v0[1];

  return v13();
}

id sub_1B414D4E8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  sub_1B40FC7D4(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v15 = sub_1B429FAE8();

  if (a2)
  {
    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    aBlock[4] = sub_1B4137600;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B414D6E4;
    aBlock[3] = &block_descriptor_6;
    v17 = _Block_copy(aBlock);
  }

  else
  {
    v17 = 0;
  }

  aBlock[0] = 0;
  v18 = [v7 documentOutputRegionForImage:a1 options:v15 roi:0 trackingSession:aBlock error:v17 withProgressHandler:{a4, a5, a6, a7}];
  _Block_release(v17);

  if (v18)
  {
    v19 = aBlock[0];
  }

  else
  {
    v20 = aBlock[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v18;
}

void sub_1B414D6E4(uint64_t a1, void *a2, double a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v5(a2, a3);
}

void sub_1B414D8A4(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (a1)
  {
    v4 = a3.n128_u64[0];
    v5 = sub_1B429F588();
    a3.n128_u64[0] = v4;
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a2 + 16))(a2, a3);
}

id sub_1B414D918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  v15 = a2;
  aBlock[6] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    v15 = sub_1B429FAE8();
  }

  if (a3)
  {
    v17 = swift_allocObject();
    v17[2] = a3;
    v17[3] = a4;
    aBlock[4] = sub_1B4137780;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B414D6E4;
    aBlock[3] = &block_descriptor_27;
    v18 = _Block_copy(aBlock);
  }

  else
  {
    v18 = 0;
  }

  aBlock[0] = 0;
  v19 = [v8 documentOutputRegionForImage:a1 options:v15 roi:0 trackingSession:aBlock error:v18 withProgressHandler:{a5, a6, a7, a8}];
  _Block_release(v18);

  if (v19)
  {
    v20 = aBlock[0];
  }

  else
  {
    v21 = aBlock[0];
    sub_1B429F598();

    swift_willThrow();
  }

  return v19;
}

uint64_t sub_1B414DC98(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v56 = a3;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v58 = &v52 - v19;
  v20 = sub_1B429FA68();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B41252AC();
  (*(v21 + 16))(v24, v25, v20);

  v26 = a1;
  v27 = sub_1B429FA48();
  v28 = sub_1B42A0158();

  v29 = os_log_type_enabled(v27, v28);
  v55 = v26;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v53 = v20;
    v31 = v30;
    v52 = swift_slowAlloc();
    v59[0] = v52;
    *v31 = 136316930;
    *(v31 + 4) = sub_1B40DDE8C(0xD00000000000004ALL, 0x80000001B42B5F70, v59);
    v54 = a5;
    *(v31 + 12) = 2048;
    *(v31 + 14) = [v26 width];
    *(v31 + 22) = 2048;
    *(v31 + 24) = [v26 height];

    *(v31 + 32) = 2048;
    *(v31 + 34) = a6;
    *(v31 + 42) = 2048;
    *(v31 + 44) = a7;
    *(v31 + 52) = 2048;
    *(v31 + 54) = a8;
    *(v31 + 62) = 2048;
    *(v31 + 64) = a9;
    *(v31 + 72) = 2080;
    v32 = sub_1B415302C(a2);
    v34 = a2;
    v35 = a4;
    v36 = sub_1B40DDE8C(v32, v33, v59);
    a5 = v54;

    *(v31 + 74) = v36;
    a4 = v35;
    _os_log_impl(&dword_1B40D2000, v27, v28, "%s: image={w:%ld,h:%ld} roi={x:%f,y:%f,w:%f,h:%f} options=%s", v31, 0x52u);
    v37 = v52;
    swift_arrayDestroy();
    MEMORY[0x1B8C74FA0](v37, -1, -1);
    MEMORY[0x1B8C74FA0](v31, -1, -1);

    (*(v21 + 8))(v24, v53);
  }

  else
  {

    (*(v21 + 8))(v24, v20);
    v34 = a2;
  }

  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  v39 = (v38 + 16);
  v40 = sub_1B429FEE8();
  v41 = v58;
  (*(*(v40 - 8) + 56))(v58, 1, 1, v40);
  v42 = swift_allocObject();
  v43 = v56;
  v44 = v57;
  *(v42 + 16) = v38;
  *(v42 + 24) = v44;
  v45 = v55;
  *(v42 + 32) = v55;
  *(v42 + 40) = a6;
  *(v42 + 48) = a7;
  *(v42 + 56) = a8;
  *(v42 + 64) = a9;
  *(v42 + 72) = v34;
  *(v42 + 80) = v43;
  *(v42 + 88) = a4;
  *(v42 + 96) = a5;
  v46 = v43;
  v47 = v45;

  v48 = v44;
  sub_1B40D5FF0(a4);
  v49 = v59[8];
  sub_1B40E6C14(v41, &unk_1B42AE730, v42, MEMORY[0x1E69E7CA8] + 8);
  sub_1B40E26E8(v41, &unk_1EB884C70);
  if (v49)
  {
  }

  else
  {

    result = swift_beginAccess();
    if (*v39)
    {
      v51 = *v39;

      return v51;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B414E138(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 112) = a11;
  *(v12 + 120) = a12;
  *(v12 + 96) = a9;
  *(v12 + 104) = a10;
  *(v12 + 80) = a3;
  *(v12 + 88) = a4;
  *(v12 + 64) = a1;
  *(v12 + 72) = a2;
  *(v12 + 48) = a7;
  *(v12 + 56) = a8;
  *(v12 + 40) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1B414E16C, 0, 0);
}

uint64_t sub_1B414E16C()
{
  if (*(v0 + 12))
  {
    v1 = *(v0 + 12);
  }

  else
  {
    v1 = sub_1B40FC7D4(MEMORY[0x1E69E7CC0]);
  }

  *(v0 + 16) = v1;

  v2 = swift_task_alloc();
  *(v0 + 17) = v2;
  *v2 = v0;
  v2[1] = sub_1B414E24C;
  v3 = *(v0 + 14);
  v4 = *(v0 + 15);
  v5 = *(v0 + 13);
  v6 = v0[10];
  v7 = v0[11];
  v8 = v0[8];
  v9 = v0[9];
  v10 = *(v0 + 7);

  return sub_1B414A530(v10, v1, v5, v3, v4, v8, v9, v6, v7);
}

uint64_t sub_1B414E24C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1B414E400;
  }

  else
  {

    *(v4 + 152) = a1;
    v5 = sub_1B414E37C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B414E37C()
{
  v1 = v0[19];
  v2 = v0[5];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B414E400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B414E61C(unint64_t a1, void *a2)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  *&v8 = MEMORY[0x1EEE9AC00](v6 - 8, v7).n128_u64[0];
  v10 = &v32 - v9;
  v11 = [v2 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E8);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v34 = v37;
  v36 = 0;
  *&v37 = MEMORY[0x1E69E7CC0];
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v10;
    if (v12)
    {
      goto LABEL_4;
    }

LABEL_18:
    v23 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = sub_1B429FEE8();
    v26 = v33;
    (*(*(v25 - 8) + 56))(v33, 1, 1, v25);
    v27 = swift_allocObject();
    *(v27 + 16) = v12;
    *(v27 + 24) = v24;
    *(v27 + 32) = v34;
    *(v27 + 48) = v23;
    *(v27 + 56) = a2;
    v28 = v12;

    swift_unknownObjectRetain();
    v29 = a2;

    sub_1B40E6C14(v26, &unk_1B42AE750, v27, MEMORY[0x1E69E7CA8] + 8);
    swift_unknownObjectRelease();

    sub_1B40E26E8(v26, &unk_1EB884C70);

    swift_beginAccess();
    v22 = *(v24 + 16);
    v30 = v22;

    return v22;
  }

  v12 = sub_1B42A0518();
  v33 = v10;
  if (!v12)
  {
    goto LABEL_18;
  }

LABEL_4:
  if (v12 >= 1)
  {
    v13 = 0;
    v35 = xmmword_1B42AC090;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8C72CD0](v13, a1);
      }

      else
      {
        v18 = *(a1 + 8 * v13 + 32);
      }

      v19 = v18;
      if ([v18 type] == 1)
      {
        v20 = [v19 subFeatures];
        if (v20)
        {
          v21 = v20;
          sub_1B40E27B4(0, &qword_1ED95E6D8);
          v14 = sub_1B429FDF8();
        }

        else
        {
          v14 = MEMORY[0x1E69E7CC0];
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB884E90);
        v14 = swift_allocObject();
        *(v14 + 16) = v35;
        *(v14 + 32) = v19;
        v15 = v19;
      }

      ++v13;
      v16 = a2;
      v17 = sub_1B4153AA0(v14, v16, &v36);

      sub_1B414EA34(v17);
    }

    while (v12 != v13);
    v12 = v36;
    v23 = v37;
    goto LABEL_19;
  }

  __break(1u);
  sub_1B40E26E8(v3, &unk_1EB884C70);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B414EA34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1B42A0518();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1B42A0518();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1B4118344(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1B4118494(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B414EB24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B414EB4C, 0, 0);
}

uint64_t sub_1B414EB4C()
{
  v1 = v0[8];
  if (v1)
  {
    v18 = v0[11];
    ObjectType = swift_getObjectType();
    v3 = *(v18 + 24);
    v4 = v1;
    v16 = (v3 + *v3);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *v5 = v0;
    v5[1] = sub_1B414EDF4;
    v6 = v0[11];
    v7 = v0[12];

    return v16(v7, v4, ObjectType, v6);
  }

  else
  {
    v19 = v0[11];
    v9 = objc_allocWithZone(CRDetectionResult);
    sub_1B40E27B4(0, &unk_1ED95E680);
    v10 = sub_1B429FDE8();
    v11 = [v9 initWithLines_];
    v0[15] = v11;

    v12 = swift_getObjectType();
    v17 = (*(v19 + 16) + **(v19 + 16));
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1B414EF20;
    v14 = v0[13];
    v15 = v0[11];

    return v17(v11, v14, 0, 0, 0, v12, v15);
  }
}

uint64_t sub_1B414EDF4(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1B414F164;
  }

  else
  {
    *(v4 + 136) = a1;
    v5 = sub_1B414F04C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B414EF20(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1B414F1EC;
  }

  else
  {
    *(v4 + 144) = a1;
    v5 = sub_1B414F0D8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B414F04C()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B414F0D8()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 72);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1B414F164()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B414F1EC()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B414F310(unint64_t a1, void (**a2)(uint64_t a1, void *a2), void (**a3)(uint64_t a1, void *a2), void *a4)
{
  v6 = v5;
  v7 = v4;
  v12 = sub_1B429FA68();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  *&v19 = MEMORY[0x1EEE9AC00](v17 - 8, v18).n128_u64[0];
  v77 = &v66 - v20;
  v21 = [v7 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E8);
  if (!swift_dynamicCast())
  {
    sub_1B40DF594();
    swift_allocError();
    *v28 = 1;
    *(v28 + 4) = 1;
    swift_willThrow();
    return v6;
  }

  v69 = v16;
  v76 = v80;
  v22 = swift_allocObject();
  *(v22 + 16) = MEMORY[0x1E69E7CC0];
  v70 = v22 + 16;
  v68 = v12;
  v67 = v13;
  v74 = v5;
  v73 = a4;
  v72 = a3;
  v71 = a2;
  if (a1 >> 62)
  {
    v23 = a1;
    v78 = sub_1B42A0518();
    if (!v78)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v23 = a1;
    v78 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v78)
    {
      goto LABEL_12;
    }
  }

  if (v78 < 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v24 = 0;
  do
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1B8C72CD0](v24, v23);
    }

    else
    {
      v25 = *(v23 + 8 * v24 + 32);
    }

    v26 = v25;
    ++v24;
    v85 = sub_1B4154AEC;
    v86 = v22;
    aBlock = MEMORY[0x1E69E9820];
    v82 = 1107296256;
    v83 = sub_1B414FD9C;
    v84 = &block_descriptor_45;
    v27 = _Block_copy(&aBlock);

    [v26 enumerateContentsWithTypes:8 usingBlock:v27];
    _Block_release(v27);
  }

  while (v78 != v24);
LABEL_12:
  v75 = swift_allocObject();
  *(v75 + 16) = MEMORY[0x1E69E7CC8];
  swift_beginAccess();
  v29 = objc_allocWithZone(CRDetectionResult);
  sub_1B40E27B4(0, &unk_1ED95E680);

  v30 = sub_1B429FDE8();

  v31 = [v29 initWithLines_];

  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  v33 = (v32 + 16);
  v34 = sub_1B429FEE8();
  a4 = v77;
  (*(*(v34 - 8) + 56))(v77, 1, 1, v34);
  v35 = swift_allocObject();
  *(v35 + 16) = v32;
  *(v35 + 24) = v76;
  v36 = v31;
  v6 = v71;
  *(v35 + 40) = v31;
  *(v35 + 48) = v6;
  v37 = v72;
  v38 = v73;
  *(v35 + 56) = v72;
  *(v35 + 64) = v38;
  v70 = v32;

  v39 = v76;
  swift_unknownObjectRetain();
  *&v76 = v36;
  v40 = v6;
  sub_1B40D5FF0(v37);
  v41 = v74;
  sub_1B40E6C14(a4, &unk_1B42AE760, v35, MEMORY[0x1E69E7CA8] + 8);
  if (!v41)
  {
    v74 = v39;
    sub_1B40E26E8(a4, &unk_1EB884C70);

    swift_beginAccess();
    v42 = *v33;
    if (*v33)
    {
      v77 = 0;
      v85 = sub_1B4154CE0;
      v86 = v75;
      aBlock = MEMORY[0x1E69E9820];
      v82 = 1107296256;
      v71 = &v83;
      v83 = sub_1B414FD9C;
      v84 = &block_descriptor_56;
      v43 = _Block_copy(&aBlock);
      v44 = v42;

      v73 = v44;
      [v44 enumerateContentsWithTypes:8 usingBlock:v43];
      _Block_release(v43);
      v6 = MEMORY[0x1E69E7CC0];
      v79 = MEMORY[0x1E69E7CC0];
      v45 = v78;
      if (v78)
      {
        v46 = 0;
        a4 = (v23 & 0xC000000000000001);
        do
        {
          v72 = v6;
          v47 = v46;
          while (1)
          {
            if (a4)
            {
              v48 = MEMORY[0x1B8C72CD0](v47, v23);
            }

            else
            {
              if (v47 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_35;
              }

              v48 = *(v23 + 8 * v47 + 32);
            }

            v49 = v48;
            v46 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
LABEL_35:
              __break(1u);
              goto LABEL_36;
            }

            objc_opt_self();
            v50 = swift_dynamicCastObjCClass();
            if (v50)
            {
              break;
            }

            ++v47;
            if (v46 == v45)
            {
              v6 = v72;
              goto LABEL_32;
            }
          }

          v51 = v50;
          v52 = swift_allocObject();
          v72 = v52;
          *(v52 + 16) = MEMORY[0x1E69E7CC0];
          v69 = (v52 + 16);
          v53 = swift_allocObject();
          *(v53 + 16) = v75;
          *(v53 + 24) = v52;
          v85 = sub_1B4154CE8;
          v86 = v53;
          aBlock = MEMORY[0x1E69E9820];
          v82 = 1107296256;
          v83 = sub_1B414FD9C;
          v84 = &block_descriptor_65;
          v54 = _Block_copy(&aBlock);

          [v51 enumerateContentsWithTypes:8 usingBlock:v54];
          _Block_release(v54);
          v68 = objc_opt_self();
          swift_beginAccess();
          sub_1B40E27B4(0, &qword_1ED95EE70);

          v55 = sub_1B429FDE8();

          v56 = [v68 blockWithBlock:v51 children:v55];

          MEMORY[0x1B8C72680]();
          if (*((v79 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v79 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          v6 = v79;
          v45 = v78;
        }

        while (v46 != v78);
      }

LABEL_32:

      swift_unknownObjectRelease();
    }

    else
    {
      v57 = sub_1B41252AC();
      v58 = v67;
      v59 = v69;
      v60 = v68;
      (*(v67 + 16))(v69, v57, v68);
      v61 = sub_1B429FA48();
      v62 = sub_1B42A0138();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        *v63 = 0;
        _os_log_impl(&dword_1B40D2000, v61, v62, "Recognition of detected regions is not supported for this CRImageReader configuration.", v63, 2u);
        v59 = v69;
        MEMORY[0x1B8C74FA0](v63, -1, -1);
      }

      (*(v58 + 8))(v59, v60);
      sub_1B40DF594();
      swift_allocError();
      *v64 = 1;
      *(v64 + 4) = 1;
      swift_willThrow();
      swift_unknownObjectRelease();
    }

    return v6;
  }

LABEL_37:
  sub_1B40E26E8(a4, &unk_1EB884C70);

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_1B414FD9C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1B414FE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 40) = a2;
  ObjectType = swift_getObjectType();
  v17 = (*(a4 + 16) + **(a4 + 16));
  v15 = swift_task_alloc();
  *(v8 + 48) = v15;
  *v15 = v8;
  v15[1] = sub_1B414FF70;

  return v17(a5, a6, 0, a7, a8, ObjectType, a4);
}

uint64_t sub_1B414FF70(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_1B415009C;
  }

  else
  {
    *(v4 + 56) = a1;
    v5 = sub_1B40F33CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B415009C()
{
  v1 = *(v0 + 40);
  swift_beginAccess();
  v2 = *(v1 + 16);
  *(v1 + 16) = 0;

  v3 = *(v0 + 8);

  return v3();
}

void sub_1B415011C(void *a1, uint64_t a2)
{
  v4 = sub_1B429F6D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v19 = a1;
    v11 = [v10 detectedLineRegion];
    if (v11)
    {
      v12 = v11;
      v13 = [v11 uuid];
      if (v13)
      {
        v14 = v13;
        sub_1B429F6B8();

        swift_beginAccess();
        v15 = v19;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(a2 + 16);
        *(a2 + 16) = 0x8000000000000000;
        sub_1B41528D0(v10, v8, isUniquelyReferenced_nonNull_native);
        (*(v5 + 8))(v8, v4);
        *(a2 + 16) = v20;
        swift_endAccess();
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v17 = v19;
    }
  }
}

void sub_1B41502F8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B429F6D8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v31 - v13;
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v16 = v15;
    v33 = a1;
    v17 = [v16 detectedLineRegion];
    if (v17)
    {
      v18 = v17;
      v19 = [v17 uuid];
      if (v19)
      {
        v20 = v19;
        sub_1B429F6B8();

        swift_beginAccess();
        v21 = *(a2 + 16);
        if (*(v21 + 16) && (v22 = sub_1B4152028(v14), (v23 & 1) != 0))
        {
          v24 = *(*(v21 + 56) + 8 * v22);
          swift_endAccess();
          v25 = *(v7 + 8);
          v32 = v24;
          v25(v14, v6);
          v26 = [v16 uuid];
          sub_1B429F6B8();

          v27 = sub_1B429F6A8();
          v25(v10, v6);
          v28 = v32;
          [v32 setUuid_];

          swift_beginAccess();
          v29 = v28;
          MEMORY[0x1B8C72680]();
          if (*((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a3 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1B429FE08();
          }

          sub_1B429FE38();
          swift_endAccess();
        }

        else
        {
          swift_endAccess();

          (*(v7 + 8))(v14, v6);
        }
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v30 = v33;
    }
  }
}

id sub_1B41507EC()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v4 + 24);

  return v2;
}

id sub_1B4150900(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = [v4 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (swift_dynamicCast())
  {
    v6 = a3();

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

void *sub_1B4150ACC()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v5 + 32);
  v3 = v2;

  return v2;
}

void *sub_1B4150BC0()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v5 + 40);
  v3 = v2;

  return v2;
}

void *sub_1B4150CB4()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v5 + 48);
  v3 = v2;

  return v2;
}

void *sub_1B4150DA8()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v5 + 56);
  v3 = v2;

  return v2;
}

void *sub_1B4150E9C()
{
  v1 = [v0 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  type metadata accessor for CREngineAccurate();
  if (!swift_dynamicCast())
  {
    return 0;
  }

  swift_beginAccess();
  v2 = *(v5 + 64);
  v3 = v2;

  return v2;
}

uint64_t sub_1B4150F4C(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v4 = sub_1B40F0030(v2, v3);
      v6 = v5;

      if (v6)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v4, v54);
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  memset(v54, 0, sizeof(v54));
LABEL_7:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = [ObjCClassFromMetadata defaultRevisionNumber];
  if (a1)
  {
    v9 = sub_1B429FB98();
    if (*(a1 + 16))
    {
      v11 = sub_1B40F0030(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1B40E2888(*(a1 + 56) + 32 * v11, &v55);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
        if (swift_dynamicCast())
        {
          v8 = *&v53[0];
        }
      }
    }

    else
    {
    }
  }

  else
  {
    sub_1B40FC7D4(MEMORY[0x1E69E7CC0]);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
  v14 = sub_1B429FAE8();

  *&v55 = 0;
  v15 = [ObjCClassFromMetadata supportedLanguagesForOptions:v14 revision:v8 error:&v55];

  v16 = v55;
  if (v15)
  {
    sub_1B40E6464(v54, &v55, &qword_1EB884FE8);
    if (!v56)
    {
      v28 = v16;

      sub_1B40E26E8(&v55, &qword_1EB884FE8);
      v29 = sub_1B429FB98();
      v31 = v30;
      v32 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
      *&v55 = v29;
      *(&v55 + 1) = v31;

      v27 = [v32 initWithObject_];

      swift_unknownObjectRelease();
LABEL_41:
      sub_1B40E26E8(v54, &qword_1EB884FE8);
      return v27;
    }

    sub_1B40D4758(&v55, v53);
    sub_1B40E2888(v53, &v55);
    v17 = v16;
    v18 = v15;
    if (swift_dynamicCast())
    {
      v19 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B42ACFB0;
      *(v20 + 32) = v51;
      *(v20 + 40) = v52;
      v21 = sub_1B429FDE8();

      v22 = [v19 preferredLocalizationsFromArray:v18 forPreferences:v21];

      v23 = sub_1B429FDF8();
      if (v23[2])
      {

        if (!v23[2])
        {
          __break(1u);
        }

        v25 = v23[4];
        v24 = v23[5];

        v26 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
        *&v55 = v25;
        *(&v55 + 1) = v24;

        v27 = [v26 initWithObject_];

        swift_unknownObjectRelease();
LABEL_40:
        __swift_destroy_boxed_opaque_existential_0(v53);
        goto LABEL_41;
      }
    }

    else
    {
    }

    sub_1B40E2888(v53, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884990);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884E80);
    if (swift_dynamicCast())
    {
      v33 = v51;
      goto LABEL_33;
    }

    sub_1B40E2888(v53, &v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB885610);
    if (swift_dynamicCast())
    {
      v34 = v51[2];
      if (!v34)
      {

        v33 = MEMORY[0x1E69E7CC0];
        goto LABEL_33;
      }

      v33 = sub_1B4151FA4(v51[2], 0);
      v35 = sub_1B4152B54(&v55, v33 + 4, v34, v51);
      sub_1B41187E8();
      if (v35 == v34)
      {
LABEL_33:
        v27 = [objc_allocWithZone(MEMORY[0x1E695DFA0]) init];
        v39 = v33[2];
        if (v39)
        {
          v40 = objc_opt_self();
          v41 = v33 + 5;
          do
          {
            v44 = *(v41 - 1);
            v43 = *v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
            v45 = swift_allocObject();
            *(v45 + 16) = xmmword_1B42ACFB0;
            *(v45 + 32) = v44;
            *(v45 + 40) = v43;

            v46 = sub_1B429FDE8();

            v47 = [v40 preferredLocalizationsFromArray:v18 forPreferences:v46];

            v48 = sub_1B429FDF8();
            if (*(v48 + 16))
            {

              v42 = sub_1B429FB88();

              [v27 addObject_];
            }

            else
            {
            }

            v41 += 2;
            --v39;
          }

          while (v39);
        }

        goto LABEL_40;
      }

      __break(1u);
    }

    sub_1B40E2888(v53, &v55);
    sub_1B40E27B4(0, &qword_1EB885618);
    if ((swift_dynamicCast() & 1) == 0 || (v36 = [v51 array], v37 = sub_1B429FDF8(), v36, v33 = sub_1B41392D8(v37), , v51, !v33))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
      v33 = swift_allocObject();
      *(v33 + 1) = xmmword_1B42ACFB0;
      v33[4] = sub_1B429FB98();
      v33[5] = v38;
    }

    goto LABEL_33;
  }

  v50 = v55;
  sub_1B429F598();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1B41517E0(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB884C70);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8, v5).n128_u64[0];
  v8 = &v21 - v7;
  v9 = [v1 engine];
  sub_1B42A0348();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855D8);
  swift_dynamicCast();
  v10 = v21;
  swift_getObjectType();
  v11 = swift_conformsToProtocol2();
  if (v11 && v10)
  {
    v12 = v11;
    v13 = swift_allocObject();
    *(v13 + 16) = 0;
    v14 = (v13 + 16);
    v15 = sub_1B429FEE8();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v10;
    v16[4] = v12;
    v16[5] = a1;

    swift_unknownObjectRetain();
    v17 = a1;
    sub_1B40E6C14(v8, &unk_1B42AE778, v16, MEMORY[0x1E69E7CA8] + 8);
    sub_1B40E26E8(v8, &unk_1EB884C70);
    if (v2)
    {

      return swift_unknownObjectRelease();
    }

    else
    {

      result = swift_beginAccess();
      if (*v14)
      {
        v20 = *v14;
        swift_unknownObjectRelease();

        return v20;
      }

      else
      {
        __break(1u);
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
    sub_1B40DF594();
    swift_allocError();
    *v19 = 1;
    *(v19 + 4) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1B4151A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v5[10] = a2;
  v5[11] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8855E0);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4151B28, 0, 0);
}

uint64_t sub_1B4151B28()
{
  v1 = *(v0 + 112);
  v10 = *(v0 + 96);
  ObjectType = swift_getObjectType();
  v3 = sub_1B429F868();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v9 = (*(v10 + 16) + **(v10 + 16));
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1B4151CB0;
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);

  return v9(v6, v5, v0 + 16, 0, ObjectType, v7);
}

uint64_t sub_1B4151CB0(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[14];
  if (v1)
  {
    sub_1B40E26E8((v4 + 2), &unk_1EB8855F0);
    sub_1B40E26E8(v5, &qword_1EB8855E0);
    v6 = sub_1B40EB080;
  }

  else
  {
    v4[17] = a1;
    sub_1B40E26E8((v4 + 2), &unk_1EB8855F0);
    sub_1B40E26E8(v5, &qword_1EB8855E0);
    v6 = sub_1B4151E50;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1B4151E50()
{
  v1 = v0[17];
  v2 = v0[10];
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;

  v4 = v0[1];

  return v4();
}

void *sub_1B4151FA4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8853C0);
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