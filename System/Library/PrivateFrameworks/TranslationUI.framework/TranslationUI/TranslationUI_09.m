uint64_t sub_26F480E80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F480EC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F480F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_26F3B8DD4(a3, v24 - v10, &unk_2806E0710, &qword_26F4A60A0);
  v12 = sub_26F49FC08();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_26F3B6B4C(v11, &unk_2806E0710, &qword_26F4A60A0);
  }

  else
  {
    sub_26F49FBF8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_26F49FB68();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_26F49F958() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);

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

  sub_26F3B6B4C(a3, &unk_2806E0710, &qword_26F4A60A0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

void *sub_26F4811D4(uint64_t a1)
{
  v3 = sub_26F49D968();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for VisualTranslationModel(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v38 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v38 - v19;
  v21 = *(a1 + 16);
  v42 = v9;
  v43 = v1;
  v45 = v11;
  v40 = v3;
  v41 = v6;
  if (v21)
  {
    v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v23 = a1 + v22;
    swift_beginAccess();
    v24 = *(v11 + 72);
    v44 = MEMORY[0x277D84F90];
    do
    {
      sub_26F480DC4(v23, v20, type metadata accessor for VisualTranslationModel);
      if (sub_26F46D23C() & 1) != 0 || (v25 = *(v43 + 112), , v26 = sub_26F47A7F8(v20, v25), , (v26))
      {
        sub_26F487D48(v20, type metadata accessor for VisualTranslationModel);
      }

      else
      {
        sub_26F3BEF64(v20, v14, type metadata accessor for VisualTranslationModel);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_26F44650C(0, v44[2] + 1, 1, v44);
        }

        v28 = v44[2];
        v27 = v44[3];
        if (v28 >= v27 >> 1)
        {
          v44 = sub_26F44650C(v27 > 1, v28 + 1, 1, v44);
        }

        v29 = v44;
        v44[2] = v28 + 1;
        sub_26F3BEF64(v14, v29 + v22 + v28 * v24, type metadata accessor for VisualTranslationModel);
      }

      v23 += v24;
      --v21;
    }

    while (v21);
  }

  else
  {
    v44 = MEMORY[0x277D84F90];
  }

  v30 = v44[2];
  v31 = v40;
  v32 = v41;
  v33 = v42;
  if (v30)
  {
    v34 = v44 + ((*(v45 + 80) + 32) & ~*(v45 + 80));
    v45 = *(v45 + 72);
    v35 = (v39 + 16);
    v36 = (v39 + 8);
    do
    {
      sub_26F480DC4(v34, v17, type metadata accessor for VisualTranslationModel);
      (*v35)(v32, v17, v31);
      sub_26F487D48(v17, type metadata accessor for VisualTranslationModel);
      swift_beginAccess();
      sub_26F485190(v33, v32);
      (*v36)(v33, v31);
      swift_endAccess();
      v34 += v45;
      --v30;
    }

    while (v30);
  }

  return v44;
}

uint64_t sub_26F4815E4()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t VisualTranslationStream.translate(models:taskHint:)(uint64_t a1, _BYTE *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16[-v8];
  v10 = sub_26F49D968();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  LOBYTE(a2) = *a2;
  sub_26F49D958();
  v17 = v2;
  v18 = a1;
  v19 = a2;
  v20 = v14;
  type metadata accessor for VisualTranslationModel(0);
  (*(v6 + 104))(v9, *MEMORY[0x277D858A0], v5);
  sub_26F49FD08();
  return (*(v11 + 8))(v14, v10);
}

uint64_t VisualTranslationStream.translate(models:taskHint:selfLoggingInvocationId:)(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v13[-v10];
  LOBYTE(v10) = *a2;
  v14 = v3;
  v15 = a1;
  v16 = v10;
  v17 = a3;
  type metadata accessor for VisualTranslationModel(0);
  (*(v8 + 104))(v11, *MEMORY[0x277D858A0], v7);
  return sub_26F49FD08();
}

uint64_t sub_26F481928(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v30 = a5;
  v31 = a3;
  v32 = a4;
  v28 = a2;
  v29 = a1;
  v5 = sub_26F49D968();
  v26 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v27 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v25 - v15;
  v17 = sub_26F49FC08();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  swift_weakInit();
  (*(v9 + 16))(v12, v29, v8);
  (*(v6 + 16))(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v30, v5);
  v19 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v20 = (v10 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (*(v6 + 80) + v20 + 9) & ~*(v6 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  *(v22 + 4) = v18;
  (*(v9 + 32))(&v22[v19], v12, v8);
  v23 = &v22[v20];
  *v23 = v31;
  v23[8] = v32 & 1;
  (*(v6 + 32))(&v22[v21], v27, v26);

  sub_26F480F28(0, 0, v16, &unk_26F4AB8A0, v22);
}

uint64_t sub_26F481C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 628) = a7;
  *(v8 + 232) = a6;
  *(v8 + 240) = a8;
  *(v8 + 216) = a4;
  *(v8 + 224) = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228) - 8) + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  v11 = type metadata accessor for TextModel();
  *(v8 + 272) = v11;
  v12 = *(v11 - 8);
  *(v8 + 280) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  *(v8 + 296) = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  *(v8 + 304) = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v8 + 312) = v15;
  v16 = *(v15 - 8);
  *(v8 + 320) = v16;
  v17 = *(v16 + 64) + 15;
  *(v8 + 328) = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v8 + 336) = v18;
  v19 = *(v18 - 8);
  *(v8 + 344) = v19;
  v20 = *(v19 + 64) + 15;
  *(v8 + 352) = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1608, &qword_26F4AB8C0);
  *(v8 + 360) = v21;
  v22 = *(v21 - 8);
  *(v8 + 368) = v22;
  v23 = *(v22 + 64) + 15;
  *(v8 + 376) = swift_task_alloc();
  v24 = sub_26F49D968();
  *(v8 + 384) = v24;
  v25 = *(v24 - 8);
  *(v8 + 392) = v25;
  v26 = *(v25 + 64) + 15;
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v27 = type metadata accessor for VisualTranslationModel(0);
  *(v8 + 416) = v27;
  v28 = *(v27 - 8);
  *(v8 + 424) = v28;
  v29 = *(v28 + 64) + 15;
  *(v8 + 432) = swift_task_alloc();
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  v30 = *(*(type metadata accessor for Signpost() - 8) + 64) + 15;
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F48202C, 0, 0);
}

uint64_t sub_26F48202C()
{
  v70 = v0;
  v1 = *(v0 + 216);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    v3 = *(*(v0 + 232) + 16);
    *(v0 + 488) = v3;
    if (qword_280F66CB0 != -1)
    {
      swift_once();
    }

    v4 = sub_26F49DCA8();
    *(v0 + 496) = __swift_project_value_buffer(v4, qword_280F67ED0);
    v5 = sub_26F49DC88();
    v6 = sub_26F49FDB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v3;
      _os_log_impl(&dword_26F39E000, v5, v6, "Cache phase input: %ld", v7, 0xCu);
      MEMORY[0x274391F70](v7, -1, -1);
    }

    v8 = *(v0 + 472);

    sub_26F43762C(4, 0, v8);
    if (v3)
    {
      v9 = *(v0 + 424);
      *(v0 + 624) = *(v9 + 80);
      v10 = MEMORY[0x277D84F90];
      v11 = *(v9 + 72);
      *(v0 + 544) = MEMORY[0x277D84F90];
      *(v0 + 536) = v10;
      *(v0 + 504) = v11;
      *(v0 + 512) = 0;
      *(v0 + 528) = 0;
      *(v0 + 520) = 0;
      v12 = *(*(v0 + 480) + 16);
      *(v0 + 552) = v12;

      return MEMORY[0x2822009F8](sub_26F4826B0, v12, 0);
    }

    v25 = MEMORY[0x277D84F90];
    *(v0 + 576) = MEMORY[0x277D84F90];
    v26 = *(v0 + 496);
    v27 = *(v0 + 472);
    sub_26F437AD0();
    v28 = *(v25 + 16);
    *(v0 + 584) = v28;
    v29 = sub_26F49DC88();
    v30 = sub_26F49FDB8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = *(v0 + 488);
      v32 = swift_slowAlloc();
      *v32 = 134218240;
      *(v32 + 4) = v31;
      *(v32 + 12) = 2048;
      *(v32 + 14) = v28;
      _os_log_impl(&dword_26F39E000, v29, v30, "Cache phase output: %ld missed %ld ", v32, 0x16u);
      MEMORY[0x274391F70](v32, -1, -1);
    }

    v33 = *(v0 + 496);
    v34 = *(v0 + 232);

    v35 = MEMORY[0x277D84F90];

    v36 = sub_26F49DC88();
    v37 = sub_26F49FDC8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = *(v0 + 488);
      v39 = *(v0 + 232);
      v40 = swift_slowAlloc();
      *v40 = 134218496;
      *(v40 + 4) = v38;

      *(v40 + 12) = 2048;
      *(v40 + 14) = *(v35 + 16);

      *(v40 + 22) = 2048;
      *(v40 + 24) = 0;
      _os_log_impl(&dword_26F39E000, v36, v37, "%ld observations. %ld to translate, preserving %ld", v40, 0x20u);
      MEMORY[0x274391F70](v40, -1, -1);
    }

    else
    {
      v41 = *(v0 + 232);
    }

    if (*(v35 + 16))
    {
      v42 = *(v0 + 496);
      v43 = sub_26F49DC88();
      v44 = sub_26F49FDB8();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134217984;
        *(v45 + 4) = v28;
        _os_log_impl(&dword_26F39E000, v43, v44, "Translate phase input: %ld", v45, 0xCu);
        MEMORY[0x274391F70](v45, -1, -1);
      }

      v46 = *(v0 + 464);
      v47 = *(v0 + 352);
      v49 = *(v0 + 320);
      v48 = *(v0 + 328);
      v50 = *(v0 + 312);
      v51 = *(v0 + 240);
      v52 = *(v0 + 628);

      sub_26F43762C(1, 0, v46);
      type metadata accessor for VisualTranslationService();
      v69 = v52 & 1;
      static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(MEMORY[0x277D84F90], 1, &v69, v48);
      sub_26F49FC58();
      (*(v49 + 8))(v48, v50);
      v53 = *(MEMORY[0x277D858B8] + 4);
      v54 = swift_task_alloc();
      *(v0 + 592) = v54;
      *v54 = v0;
      v54[1] = sub_26F483C10;
      v55 = *(v0 + 352);
      v56 = *(v0 + 336);
      v57 = *(v0 + 304);

      return MEMORY[0x2822005A8](v57, 0, 0, v56, v0 + 192);
    }

    v59 = *(v0 + 472);
    v58 = *(v0 + 480);
    v60 = *(v0 + 224);

    *(v0 + 208) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

    sub_26F487D48(v59, type metadata accessor for Signpost);
  }

  else
  {
    *(v0 + 184) = 0;
    v13 = *(v0 + 224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();
  }

  v15 = *(v0 + 464);
  v14 = *(v0 + 472);
  v17 = *(v0 + 448);
  v16 = *(v0 + 456);
  v19 = *(v0 + 432);
  v18 = *(v0 + 440);
  v20 = *(v0 + 400);
  v21 = *(v0 + 408);
  v22 = *(v0 + 376);
  v23 = *(v0 + 352);
  v62 = *(v0 + 328);
  v63 = *(v0 + 304);
  v64 = *(v0 + 296);
  v65 = *(v0 + 288);
  v66 = *(v0 + 264);
  v67 = *(v0 + 256);
  v68 = *(v0 + 248);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_26F4826B0()
{
  v1 = *(v0 + 552);
  sub_26F448A60(*(v0 + 232) + ((*(v0 + 624) + 32) & ~*(v0 + 624)) + *(v0 + 504) * *(v0 + 528), 0, *(v0 + 456));

  return MEMORY[0x2822009F8](sub_26F482740, 0, 0);
}

uint64_t sub_26F482740()
{
  v76 = v0;
  v1 = *(v0 + 456);
  v2 = sub_26F46D23C();
  v3 = *(v0 + 472);
  if ((v2 & 1) == 0)
  {
    v31 = *(v0 + 480);
    sub_26F437948(1);
    v32 = *(v31 + 24);
    *(v0 + 560) = v32;

    v33 = sub_26F482D78;
    v34 = v32;
LABEL_10:

    return MEMORY[0x2822009F8](v33, v34, 0);
  }

  v4 = *(v0 + 520);
  v5 = sub_26F437948(0);
  if (__OFADD__(v4, 1))
  {
    __break(1u);
    return MEMORY[0x2822005A8](v5, v6, v7, v8, v9);
  }

  v71 = v4 + 1;
  v73 = *(v0 + 536);
  v10 = *(v0 + 488);
  v11 = *(v0 + 456);
  v13 = *(v0 + 368);
  v12 = *(v0 + 376);
  v14 = *(v0 + 360);
  v15 = *(v0 + 224);
  v16 = *(v0 + 528) + 1;
  sub_26F480DC4(v11, *(v0 + 440), type metadata accessor for VisualTranslationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCC8();
  (*(v13 + 8))(v12, v14);
  sub_26F487D48(v11, type metadata accessor for VisualTranslationModel);
  if (v16 != v10)
  {
    v35 = *(v0 + 528) + 1;
    *(v0 + 536) = v73;
    *(v0 + 528) = v35;
    *(v0 + 520) = v71;
    *(v0 + 512) = v71;
    v34 = *(*(v0 + 480) + 16);
    *(v0 + 552) = v34;
    v33 = sub_26F4826B0;
    goto LABEL_10;
  }

  *(v0 + 576) = v73;
  v17 = *(v0 + 496);
  v18 = *(v0 + 472);
  sub_26F437AD0();
  v19 = *(v73 + 16);
  *(v0 + 584) = v19;
  v20 = sub_26F49DC88();
  v21 = sub_26F49FDB8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v0 + 488);
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = v22;
    *(v23 + 12) = 2048;
    *(v23 + 14) = v19;
    _os_log_impl(&dword_26F39E000, v20, v21, "Cache phase output: %ld missed %ld ", v23, 0x16u);
    MEMORY[0x274391F70](v23, -1, -1);
  }

  v24 = *(v0 + 496);
  v25 = *(v0 + 232);

  v26 = sub_26F49DC88();
  v27 = sub_26F49FDC8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = *(v0 + 488);
    v29 = *(v0 + 232);
    v30 = swift_slowAlloc();
    *v30 = 134218496;
    *(v30 + 4) = v28;

    *(v30 + 12) = 2048;
    *(v30 + 14) = *(v73 + 16);

    *(v30 + 22) = 2048;
    *(v30 + 24) = v71;
    _os_log_impl(&dword_26F39E000, v26, v27, "%ld observations. %ld to translate, preserving %ld", v30, 0x20u);
    MEMORY[0x274391F70](v30, -1, -1);
  }

  else
  {
    v36 = *(v0 + 232);
  }

  if (*(v73 + 16))
  {
    v37 = *(v0 + 496);
    v38 = sub_26F49DC88();
    v39 = sub_26F49FDB8();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v19;
      _os_log_impl(&dword_26F39E000, v38, v39, "Translate phase input: %ld", v40, 0xCu);
      MEMORY[0x274391F70](v40, -1, -1);
    }

    v41 = *(v0 + 464);
    v42 = *(v0 + 352);
    v44 = *(v0 + 320);
    v43 = *(v0 + 328);
    v45 = *(v0 + 312);
    v46 = *(v0 + 240);
    v47 = *(v0 + 628);

    sub_26F43762C(1, 0, v41);
    type metadata accessor for VisualTranslationService();
    v75 = v47 & 1;
    static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v73, 1, &v75, v43);
    sub_26F49FC58();
    (*(v44 + 8))(v43, v45);
    v48 = *(MEMORY[0x277D858B8] + 4);
    v49 = swift_task_alloc();
    *(v0 + 592) = v49;
    *v49 = v0;
    v49[1] = sub_26F483C10;
    v50 = *(v0 + 352);
    v8 = *(v0 + 336);
    v5 = *(v0 + 304);
    v9 = v0 + 192;
    v6 = 0;
    v7 = 0;

    return MEMORY[0x2822005A8](v5, v6, v7, v8, v9);
  }

  v52 = *(v0 + 472);
  v51 = *(v0 + 480);
  v53 = *(v0 + 224);

  *(v0 + 208) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCD8();

  sub_26F487D48(v52, type metadata accessor for Signpost);
  v55 = *(v0 + 464);
  v54 = *(v0 + 472);
  v57 = *(v0 + 448);
  v56 = *(v0 + 456);
  v59 = *(v0 + 432);
  v58 = *(v0 + 440);
  v60 = *(v0 + 400);
  v61 = *(v0 + 408);
  v62 = *(v0 + 376);
  v63 = *(v0 + 352);
  v66 = *(v0 + 328);
  v67 = *(v0 + 304);
  v68 = *(v0 + 296);
  v69 = *(v0 + 288);
  v70 = *(v0 + 264);
  v72 = *(v0 + 256);
  v74 = *(v0 + 248);

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_26F482D78()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 456);
  swift_beginAccess();
  v3 = *(v1 + 112);

  *(v0 + 629) = sub_26F47A7F8(v2, v3) & 1;

  return MEMORY[0x2822009F8](sub_26F482E2C, 0, 0);
}

uint64_t sub_26F482E2C()
{
  v74 = v0;
  v1 = (v0 + 536);
  if (*(v0 + 629) == 1)
  {
    v71 = *v1;
    v67 = *(v0 + 520);
    v69 = *(v0 + 512);
    v2 = *(v0 + 488);
    v3 = *(v0 + 456);
    v5 = *(v0 + 368);
    v4 = *(v0 + 376);
    v6 = *(v0 + 360);
    v7 = *(v0 + 528) + 1;
    v8 = *(v0 + 224);
    sub_26F480DC4(v3, *(v0 + 440), type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v5 + 8))(v4, v6);
    sub_26F487D48(v3, type metadata accessor for VisualTranslationModel);
    if (v7 == v2)
    {
      *(v0 + 576) = v71;
      v9 = *(v0 + 496);
      v10 = *(v0 + 472);
      sub_26F437AD0();
      v11 = *(v71 + 16);
      *(v0 + 584) = v11;
      v12 = sub_26F49DC88();
      v13 = sub_26F49FDB8();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = *(v0 + 488);
        v15 = swift_slowAlloc();
        *v15 = 134218240;
        *(v15 + 4) = v14;
        *(v15 + 12) = 2048;
        *(v15 + 14) = v11;
        _os_log_impl(&dword_26F39E000, v12, v13, "Cache phase output: %ld missed %ld ", v15, 0x16u);
        MEMORY[0x274391F70](v15, -1, -1);
      }

      v16 = *(v0 + 496);
      v17 = *(v0 + 232);

      v18 = sub_26F49DC88();
      v19 = sub_26F49FDC8();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = *(v0 + 488);
        v21 = *(v0 + 232);
        v22 = swift_slowAlloc();
        *v22 = 134218496;
        *(v22 + 4) = v20;

        *(v22 + 12) = 2048;
        *(v22 + 14) = *(v71 + 16);

        *(v22 + 22) = 2048;
        *(v22 + 24) = v69;
        _os_log_impl(&dword_26F39E000, v18, v19, "%ld observations. %ld to translate, preserving %ld", v22, 0x20u);
        MEMORY[0x274391F70](v22, -1, -1);
      }

      else
      {
        v31 = *(v0 + 232);
      }

      if (*(v71 + 16))
      {
        v32 = *(v0 + 496);
        v33 = sub_26F49DC88();
        v34 = sub_26F49FDB8();
        if (os_log_type_enabled(v33, v34))
        {
          v35 = swift_slowAlloc();
          *v35 = 134217984;
          *(v35 + 4) = v11;
          _os_log_impl(&dword_26F39E000, v33, v34, "Translate phase input: %ld", v35, 0xCu);
          MEMORY[0x274391F70](v35, -1, -1);
        }

        v36 = *(v0 + 464);
        v37 = *(v0 + 352);
        v39 = *(v0 + 320);
        v38 = *(v0 + 328);
        v40 = *(v0 + 312);
        v41 = *(v0 + 240);
        v42 = *(v0 + 628);

        sub_26F43762C(1, 0, v36);
        type metadata accessor for VisualTranslationService();
        v73 = v42 & 1;
        static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v71, 1, &v73, v38);
        sub_26F49FC58();
        (*(v39 + 8))(v38, v40);
        v43 = *(MEMORY[0x277D858B8] + 4);
        v44 = swift_task_alloc();
        *(v0 + 592) = v44;
        *v44 = v0;
        v44[1] = sub_26F483C10;
        v45 = *(v0 + 352);
        v46 = *(v0 + 336);
        v47 = *(v0 + 304);

        return MEMORY[0x2822005A8](v47, 0, 0, v46, v0 + 192);
      }

      else
      {
        v49 = *(v0 + 472);
        v48 = *(v0 + 480);
        v50 = *(v0 + 224);

        *(v0 + 208) = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
        sub_26F49FCD8();

        sub_26F487D48(v49, type metadata accessor for Signpost);
        v52 = *(v0 + 464);
        v51 = *(v0 + 472);
        v54 = *(v0 + 448);
        v53 = *(v0 + 456);
        v56 = *(v0 + 432);
        v55 = *(v0 + 440);
        v57 = *(v0 + 400);
        v58 = *(v0 + 408);
        v59 = *(v0 + 376);
        v60 = *(v0 + 352);
        v63 = *(v0 + 328);
        v64 = *(v0 + 304);
        v65 = *(v0 + 296);
        v66 = *(v0 + 288);
        v68 = *(v0 + 264);
        v70 = *(v0 + 256);
        v72 = *(v0 + 248);

        v61 = *(v0 + 8);

        return v61();
      }
    }

    v30 = *(v0 + 528) + 1;
    *v1 = v71;
    *(v0 + 528) = v30;
    *(v0 + 520) = v67;
    *(v0 + 512) = v69;
    v28 = *(*(v0 + 480) + 16);
    *(v0 + 552) = v28;
    v29 = sub_26F4826B0;
  }

  else
  {
    v23 = *(v0 + 496);
    v24 = sub_26F49DC88();
    v25 = sub_26F49FDC8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_26F39E000, v24, v25, "Detected untranslated item", v26, 2u);
      MEMORY[0x274391F70](v26, -1, -1);
    }

    v27 = *(v0 + 480);

    v28 = *(v27 + 24);
    *(v0 + 568) = v28;
    v29 = sub_26F4834A8;
  }

  return MEMORY[0x2822009F8](v29, v28, 0);
}

uint64_t sub_26F4834A8()
{
  v1 = v0[71];
  v3 = v0[50];
  v2 = v0[51];
  v4 = v0[48];
  v5 = v0[49];
  (*(v5 + 16))(v3, v0[57], v4);
  swift_beginAccess();
  sub_26F485190(v2, v3);
  (*(v5 + 8))(v2, v4);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F483588, 0, 0);
}

uint64_t sub_26F483588()
{
  v75 = v0;
  v1 = *(v0 + 544);
  sub_26F480DC4(*(v0 + 456), *(v0 + 448), type metadata accessor for VisualTranslationModel);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *(v0 + 544);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_26F44650C(0, v3[2] + 1, 1, *(v0 + 544));
  }

  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_26F44650C(v4 > 1, v5 + 1, 1, v3);
  }

  v6 = *(v0 + 504);
  v7 = *(v0 + 624);
  v8 = *(v0 + 448);
  v3[2] = v5 + 1;
  sub_26F3BEF64(v8, v3 + ((v7 + 32) & ~v7) + v6 * v5, type metadata accessor for VisualTranslationModel);
  v72 = *(v0 + 512);
  v68 = *(v0 + 520);
  v70 = *(v0 + 488);
  v9 = *(v0 + 456);
  v11 = *(v0 + 368);
  v10 = *(v0 + 376);
  v12 = *(v0 + 360);
  v13 = *(v0 + 224);
  v14 = *(v0 + 528) + 1;
  sub_26F480DC4(v9, *(v0 + 440), type metadata accessor for VisualTranslationModel);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
  sub_26F49FCC8();
  (*(v11 + 8))(v10, v12);
  sub_26F487D48(v9, type metadata accessor for VisualTranslationModel);
  if (v14 == v70)
  {
    *(v0 + 576) = v3;
    v15 = *(v0 + 496);
    v16 = *(v0 + 472);
    sub_26F437AD0();
    v17 = v3[2];
    *(v0 + 584) = v17;
    v18 = sub_26F49DC88();
    v19 = sub_26F49FDB8();
    v20 = v3;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = *(v0 + 488);
      v22 = swift_slowAlloc();
      *v22 = 134218240;
      *(v22 + 4) = v21;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v17;
      _os_log_impl(&dword_26F39E000, v18, v19, "Cache phase output: %ld missed %ld ", v22, 0x16u);
      MEMORY[0x274391F70](v22, -1, -1);
    }

    v23 = *(v0 + 496);
    v24 = *(v0 + 232);

    v25 = sub_26F49DC88();
    v26 = sub_26F49FDC8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 488);
      v28 = *(v0 + 232);
      v29 = swift_slowAlloc();
      *v29 = 134218496;
      *(v29 + 4) = v27;

      *(v29 + 12) = 2048;
      *(v29 + 14) = *(v20 + 16);

      *(v29 + 22) = 2048;
      *(v29 + 24) = v72;
      _os_log_impl(&dword_26F39E000, v25, v26, "%ld observations. %ld to translate, preserving %ld", v29, 0x20u);
      MEMORY[0x274391F70](v29, -1, -1);
    }

    else
    {
      v32 = *(v0 + 232);
    }

    if (*(v20 + 16))
    {
      v33 = *(v0 + 496);
      v34 = sub_26F49DC88();
      v35 = sub_26F49FDB8();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 134217984;
        *(v36 + 4) = v17;
        _os_log_impl(&dword_26F39E000, v34, v35, "Translate phase input: %ld", v36, 0xCu);
        MEMORY[0x274391F70](v36, -1, -1);
      }

      v37 = *(v0 + 464);
      v38 = *(v0 + 352);
      v39 = *(v0 + 320);
      v40 = *(v0 + 328);
      v41 = *(v0 + 312);
      v42 = *(v0 + 240);
      v43 = *(v0 + 628);

      sub_26F43762C(1, 0, v37);
      type metadata accessor for VisualTranslationService();
      v74 = v43 & 1;
      static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v20, 1, &v74, v40);
      sub_26F49FC58();
      (*(v39 + 8))(v40, v41);
      v44 = *(MEMORY[0x277D858B8] + 4);
      v45 = swift_task_alloc();
      *(v0 + 592) = v45;
      *v45 = v0;
      v45[1] = sub_26F483C10;
      v46 = *(v0 + 352);
      v47 = *(v0 + 336);
      v48 = *(v0 + 304);

      return MEMORY[0x2822005A8](v48, 0, 0, v47, v0 + 192);
    }

    else
    {
      v50 = *(v0 + 472);
      v49 = *(v0 + 480);
      v51 = *(v0 + 224);

      *(v0 + 208) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
      sub_26F49FCD8();

      sub_26F487D48(v50, type metadata accessor for Signpost);
      v53 = *(v0 + 464);
      v52 = *(v0 + 472);
      v55 = *(v0 + 448);
      v54 = *(v0 + 456);
      v57 = *(v0 + 432);
      v56 = *(v0 + 440);
      v58 = *(v0 + 400);
      v59 = *(v0 + 408);
      v60 = *(v0 + 376);
      v61 = *(v0 + 352);
      v64 = *(v0 + 328);
      v65 = *(v0 + 304);
      v66 = *(v0 + 296);
      v67 = *(v0 + 288);
      v69 = *(v0 + 264);
      v71 = *(v0 + 256);
      v73 = *(v0 + 248);

      v62 = *(v0 + 8);

      return v62();
    }
  }

  else
  {
    v30 = *(v0 + 528) + 1;
    *(v0 + 544) = v3;
    *(v0 + 536) = v3;
    *(v0 + 528) = v30;
    *(v0 + 520) = v68;
    *(v0 + 512) = v72;
    v31 = *(*(v0 + 480) + 16);
    *(v0 + 552) = v31;

    return MEMORY[0x2822009F8](sub_26F4826B0, v31, 0);
  }
}

uint64_t sub_26F483C10()
{
  v2 = *(*v1 + 592);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26F484658;
  }

  else
  {
    v3 = sub_26F483D20;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F483D20()
{
  v1 = v0[38];
  if ((*(v0[53] + 48))(v1, 1, v0[52]) == 1)
  {
    v2 = v0[72];
    v3 = v0[62];
    (*(v0[43] + 8))(v0[44], v0[42]);

    v4 = sub_26F49DC88();
    v5 = sub_26F49FDB8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      *v7 = 134217984;
      *(v7 + 4) = v6;
      _os_log_impl(&dword_26F39E000, v4, v5, "Translate phase output: %ld", v7, 0xCu);
      MEMORY[0x274391F70](v7, -1, -1);
    }

    v9 = v0[59];
    v8 = v0[60];
    v10 = v0[58];
    v11 = v0[28];

    sub_26F437AD0();
    v0[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCD8();

    sub_26F487D48(v10, type metadata accessor for Signpost);
    sub_26F487D48(v9, type metadata accessor for Signpost);
    v13 = v0[58];
    v12 = v0[59];
    v15 = v0[56];
    v14 = v0[57];
    v17 = v0[54];
    v16 = v0[55];
    v18 = v0[50];
    v19 = v0[51];
    v20 = v0[47];
    v21 = v0[44];
    v38 = v0[41];
    v39 = v0[38];
    v40 = v0[37];
    v41 = v0[36];
    v42 = v0[33];
    v43 = v0[32];
    v44 = v0[31];

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = v0[58];
    v26 = v0[54];
    v25 = v0[55];
    v28 = v0[46];
    v27 = v0[47];
    v29 = v0[45];
    v30 = v0[28];
    sub_26F3BEF64(v1, v26, type metadata accessor for VisualTranslationModel);
    v31 = sub_26F46D23C();
    sub_26F437948((v31 & 1) == 0);
    sub_26F480DC4(v26, v25, type metadata accessor for VisualTranslationModel);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0);
    sub_26F49FCC8();
    (*(v28 + 8))(v27, v29);
    v32 = sub_26F46D23C();
    v33 = v0[60];
    if (v32)
    {
      v34 = v0[54];
      v35 = v0[52];
      v36 = *(v33 + 16);
      v0[75] = v36;
      v0[76] = *(v34 + *(v35 + 28));
      v37 = sub_26F4840C4;
    }

    else
    {
      v36 = *(v33 + 24);
      v0[77] = v36;
      v37 = sub_26F4844D8;
    }

    return MEMORY[0x2822009F8](v37, v36, 0);
  }
}

uint64_t sub_26F4840C4()
{
  v1 = *(v0 + 608);
  v2 = *(v1 + 16);
  if (v2)
  {
    v38 = *(v0 + 600);
    v3 = *(v0 + 296);
    v4 = *(v0 + 280);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = *(*(v0 + 272) + 44);
    v43 = *(v4 + 72);
    v41 = v3;
    v42 = v6;
    do
    {
      sub_26F480DC4(v5, *(v0 + 296), type metadata accessor for TextModel);
      if (!*(v3 + v6))
      {
        v19 = *(v0 + 296);
        v20 = *(v0 + 272);
        v21 = (v19 + *(v20 + 24));
        v22 = *v21;
        v23 = v21[1];
        v24 = HIBYTE(v23) & 0xF;
        v25 = v22 & 0xFFFFFFFFFFFFLL;
        if ((v23 & 0x2000000000000000) == 0)
        {
          v24 = v25;
        }

        if (v24)
        {
          v26 = *(v0 + 264);
          v40 = *(v20 + 28);
          sub_26F3B8DD4(v19 + v40, v26, &qword_2806DEFD8, &qword_26F4A3670);
          v27 = sub_26F49DAB8();
          v39 = *(v27 - 8);
          v28 = *(v39 + 48);
          v29 = v28(v26, 1, v27);
          v30 = v26;
          v6 = v42;
          sub_26F3B6B4C(v30, &qword_2806DEFD8, &qword_26F4A3670);
          v31 = v29 == 1;
          v3 = v41;
          if (!v31)
          {
            v32 = (*(v0 + 296) + *(*(v0 + 272) + 32));
            v33 = v32[1];
            if (v33)
            {
              v34 = *v32 & 0xFFFFFFFFFFFFLL;
              if ((v33 & 0x2000000000000000) != 0 ? HIBYTE(v33) & 0xF : v34)
              {
                v36 = *(v0 + 256);
                sub_26F3B8DD4(v19 + v40, v36, &qword_2806DEFD8, &qword_26F4A3670);
                if (v28(v36, 1, v27) == 1)
                {
                  sub_26F3B6B4C(*(v0 + 256), &qword_2806DEFD8, &qword_26F4A3670);
                }

                else
                {
                  v8 = *(v0 + 288);
                  v7 = *(v0 + 296);
                  v9 = *(v0 + 272);
                  v10 = *(v0 + 256);
                  sub_26F49D988();
                  (*(v39 + 8))(v10, v27);
                  sub_26F4A0578();
                  sub_26F49F9A8();

                  v11 = v7 + *(v9 + 36);
                  sub_26F49D988();
                  sub_26F49F9A8();

                  sub_26F4A0548();
                  sub_26F49F9A8();
                  *(v0 + 48) = v46;
                  *(v0 + 64) = v47;
                  *(v0 + 80) = v48;
                  *(v0 + 16) = v44;
                  *(v0 + 32) = v45;
                  sub_26F4A0558();
                  v12 = *(v38 + 136);
                  sub_26F480DC4(v7, v8, type metadata accessor for TextModel);
                  v13 = type metadata accessor for TextModelContainer();
                  v14 = *(v13 + 48);
                  v15 = *(v13 + 52);
                  v16 = swift_allocObject();
                  sub_26F3BEF64(v8, v16 + OBJC_IVAR____TtC13TranslationUI18TextModelContainer_textModel, type metadata accessor for TextModel);
                  sub_26F404B4C();
                  v17 = v12;
                  v18 = sub_26F49FF28();
                  [v17 setObject:v16 forKey:v18];

                  v3 = v41;
                }

                v6 = v42;
              }
            }
          }
        }
      }

      sub_26F487D48(*(v0 + 296), type metadata accessor for TextModel);
      v5 += v43;
      --v2;
    }

    while (v2);
  }

  return MEMORY[0x2822009F8](sub_26F4844B4, 0, 0);
}

uint64_t sub_26F4844B4()
{
  v1 = *(*(v0 + 480) + 24);
  *(v0 + 616) = v1;
  return MEMORY[0x2822009F8](sub_26F4844D8, v1, 0);
}

uint64_t sub_26F4844D8()
{
  v1 = v0[77];
  v2 = v0[54];
  v3 = v0[31];
  swift_beginAccess();
  sub_26F498FE8(v2, v3);
  sub_26F3B6B4C(v3, &qword_2806E1470, &qword_26F4AB228);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F484590, 0, 0);
}

uint64_t sub_26F484590()
{
  sub_26F487D48(v0[54], type metadata accessor for VisualTranslationModel);
  v1 = *(MEMORY[0x277D858B8] + 4);
  v2 = swift_task_alloc();
  v0[74] = v2;
  *v2 = v0;
  v2[1] = sub_26F483C10;
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[38];

  return MEMORY[0x2822005A8](v5, 0, 0, v4, v0 + 24);
}

uint64_t sub_26F484658()
{
  v1 = v0[72];
  v3 = v0[59];
  v2 = v0[60];
  v5 = v0[57];
  v4 = v0[58];
  v7 = v0[55];
  v6 = v0[56];
  v14 = v0[54];
  v15 = v0[51];
  v16 = v0[50];
  v17 = v0[47];
  v8 = v0[43];
  v9 = v0[44];
  v10 = v0[42];
  v18 = v0[41];
  v19 = v0[38];
  v20 = v0[37];
  v21 = v0[36];
  v22 = v0[33];
  v23 = v0[32];
  v24 = v0[31];

  (*(v8 + 8))(v9, v10);
  sub_26F487D48(v4, type metadata accessor for Signpost);
  sub_26F487D48(v3, type metadata accessor for Signpost);

  v11 = v0[24];

  v12 = v0[1];

  return v12();
}

uint64_t VisualTranslationStream.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t VisualTranslationStream.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26F4848C0()
{
  type metadata accessor for TextTranslationCache();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  v1[14] = 0;
  v1[15] = 0;
  v1[16] = 100;
  v1[17] = [objc_allocWithZone(MEMORY[0x277CBEA78]) init];
  *(v0 + 16) = v1;
  type metadata accessor for OngoingTranslationActor();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = MEMORY[0x277D84FA0];
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_26F484950(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26F4A00B8();

    if (v9)
    {

      sub_26F404B4C();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_26F4A00A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_26F485470(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_26F485650(v22 + 1);
    }

    v20 = v8;
    sub_26F486424(v20, v21);

    *v3 = v21;
    goto LABEL_16;
  }

  sub_26F404B4C();
  v11 = *(v6 + 40);
  v12 = sub_26F49FF38();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_26F4864A8(v20, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_26F49FF48();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_26F484B68(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788]);
  v36 = a2;
  v13 = sub_26F49F818();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_26F487DA8(qword_2806E07F0, MEMORY[0x277CC9788]);
      v23 = sub_26F49F868();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_26F486608(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26F484E48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_26F4A0528();
  sub_26F49F9A8();
  v9 = sub_26F4A0568();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_26F4A0458() & 1) != 0)
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

    sub_26F4868AC(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_26F484F98(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_26F4A0528();
  v6 = *a2;
  v7 = a2[1];
  sub_26F49F9A8();
  v8 = sub_26F4A0568();
  v9 = v4 + 56;
  v10 = -1 << *(v4 + 32);
  v11 = v8 & ~v10;
  v34 = a2;
  if ((*(v4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = a2[2];
    v14 = *(a2 + 24);
    v32 = v4;
    v15 = *(v4 + 48);
    v21 = v13 == 0;
    v16 = v13 != 0;
    v17 = v21;
    v37 = v14 & v16;
    v36 = v14 & v17;
    do
    {
      v18 = v15 + 48 * v11;
      v19 = *(v18 + 16);
      v20 = *(v18 + 24);
      v21 = *v18 == v6 && *(v18 + 8) == v7;
      if (v21 || (sub_26F4A0458() & 1) != 0)
      {
        if (v20)
        {
          if (v19)
          {
            if (v37)
            {
              goto LABEL_18;
            }
          }

          else if (v36)
          {
LABEL_18:
            sub_26F487DF0(v34);
            v22 = *(v32 + 48) + 48 * v11;
            v23 = *(v22 + 8);
            v24 = *(v22 + 16);
            v25 = *(v22 + 24);
            v26 = *(v22 + 32);
            v27 = *(v22 + 40);
            *a1 = *v22;
            *(a1 + 8) = v23;
            *(a1 + 16) = v24;
            *(a1 + 24) = v25;
            *(a1 + 32) = v26;
            *(a1 + 40) = v27;

            return 0;
          }
        }

        else if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  v29 = *v33;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v33;
  sub_26F3E2CA4(v34, v39);
  sub_26F486A2C(v34, v11, isUniquelyReferenced_nonNull_native);
  *v33 = v38;
  v31 = v34[1];
  *a1 = *v34;
  *(a1 + 16) = v31;
  *(a1 + 32) = v34[2];
  return 1;
}

uint64_t sub_26F485190(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0]);
  v36 = a2;
  v13 = sub_26F49F818();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_26F487DA8(&qword_2806E1128, MEMORY[0x277CC95F0]);
      v23 = sub_26F49F868();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_26F486C14(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_26F485470(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
    v2 = sub_26F4A0128();
    v16 = v2;
    sub_26F4A0098();
    if (sub_26F4A00C8())
    {
      sub_26F404B4C();
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_26F485650(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_26F49FF38();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_26F4A00C8());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_26F485650(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  result = sub_26F4A0118();
  v6 = result;
  if (*(v3 + 16))
  {
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
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = sub_26F49FF38();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26F485878(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26F49DAB8();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1628, &qword_26F4AB8D0);
  result = sub_26F4A0118();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788]);
      result = sub_26F49F818();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_26F485BD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  result = sub_26F4A0118();
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
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
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

uint64_t sub_26F485E34(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  result = sub_26F4A0118();
  v6 = result;
  if (*(v3 + 16))
  {
    v32 = v2;
    v33 = v3;
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
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v36 = *(v19 + 24);
      v34 = *(v19 + 40);
      v35 = *(v19 + 32);
      v23 = *(v6 + 40);
      sub_26F4A0528();
      sub_26F49F9A8();
      result = sub_26F4A0568();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 48 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      *(v15 + 24) = v36;
      *(v15 + 32) = v35;
      *(v15 + 40) = v34;
      ++*(v6 + 16);
      v3 = v33;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v8, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_26F4860C8(uint64_t a1)
{
  v2 = v1;
  v41 = sub_26F49D968();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1618, &qword_26F4AB890);
  result = sub_26F4A0118();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0]);
      result = sub_26F49F818();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

unint64_t sub_26F486424(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_26F49FF38();
  v5 = -1 << *(a2 + 32);
  result = sub_26F4A0088();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_26F4864A8(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F485650(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_26F498934();
      goto LABEL_12;
    }

    sub_26F486EB8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = sub_26F49FF38();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    sub_26F404B4C();
    do
    {
      v13 = *(*(v8 + 48) + 8 * a2);
      v14 = sub_26F49FF48();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_26F4A0498();
  __break(1u);
}

uint64_t sub_26F486608(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F485878(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_26F498A84();
      goto LABEL_12;
    }

    sub_26F4870CC(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788]);
  v16 = sub_26F49F818();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_26F487DA8(qword_2806E07F0, MEMORY[0x277CC9788]);
      v24 = sub_26F49F868();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26F4A0498();
  __break(1u);
  return result;
}

uint64_t sub_26F4868AC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_26F485BD4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_26F498AAC();
      goto LABEL_16;
    }

    sub_26F4873E8(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_26F4A0528();
  sub_26F49F9A8();
  result = sub_26F4A0568();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_26F4A0458();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_26F4A0498();
  __break(1u);
  return result;
}

uint64_t sub_26F486A2C(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v32 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_26F485E34(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26F498C08();
      goto LABEL_26;
    }

    sub_26F487620(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_26F4A0528();
  v10 = *v5;
  v11 = *(v5 + 8);
  sub_26F49F9A8();
  result = sub_26F4A0568();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *(v5 + 16);
    v15 = *(v5 + 24);
    v16 = *(v8 + 48);
    v22 = v14 == 0;
    v17 = v14 != 0;
    v18 = v22;
    v30 = v15 & v17;
    v29 = v15 & v18;
    do
    {
      v19 = v16 + 48 * a2;
      result = *v19;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      v22 = *v19 == v10 && *(v19 + 8) == v11;
      if (v22 || (result = sub_26F4A0458(), (result & 1) != 0))
      {
        if (v21)
        {
          if (v20)
          {
            if (v30)
            {
              goto LABEL_25;
            }
          }

          else if (v29)
          {
LABEL_25:
            result = sub_26F4A0498();
            __break(1u);
            break;
          }
        }

        else if ((v15 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v23 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v24 = (*(v23 + 48) + 48 * a2);
  v25 = v32[1];
  *v24 = *v32;
  v24[1] = v25;
  v24[2] = v32[2];
  v26 = *(v23 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v28;
  }

  return result;
}

uint64_t sub_26F486C14(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_26F4860C8(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_26F498D88();
      goto LABEL_12;
    }

    sub_26F487898(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0]);
  v16 = sub_26F49F818();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_26F487DA8(&qword_2806E1128, MEMORY[0x277CC95F0]);
      v24 = sub_26F49F868();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_26F4A0498();
  __break(1u);
  return result;
}

uint64_t sub_26F486EB8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  result = sub_26F4A0118();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(v6 + 40);
      v18 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      result = sub_26F49FF38();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v18;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26F4870CC(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26F49DAB8();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1628, &qword_26F4AB8D0);
  v10 = sub_26F4A0118();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26F487DA8(&qword_2806DFC18, MEMORY[0x277CC9788]);
      result = sub_26F49F818();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26F4873E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  result = sub_26F4A0118();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_26F4A0528();

      sub_26F49F9A8();
      result = sub_26F4A0568();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26F487620(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  result = sub_26F4A0118();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
      v19 = *(v3 + 48) + 48 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v35 = *(v19 + 16);
      v34 = *(v19 + 24);
      v22 = *(v19 + 40);
      v33 = *(v19 + 32);
      v23 = *(v6 + 40);
      sub_26F4A0528();

      sub_26F49F9A8();
      result = sub_26F4A0568();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 48 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v35;
      *(v15 + 24) = v34;
      v3 = v32;
      *(v15 + 32) = v33;
      *(v15 + 40) = v22;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_26F487898(uint64_t a1)
{
  v2 = v1;
  v37 = sub_26F49D968();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1618, &qword_26F4AB890);
  v10 = sub_26F4A0118();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_26F487DA8(&qword_280F663A8, MEMORY[0x277CC95F0]);
      result = sub_26F49F818();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_26F487BB4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1600, &qword_26F4AB7D0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_26F49D968() - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1 + v7;
  v14 = *(v1 + v7);
  v15 = v13[8];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26F3CEEAC;

  return sub_26F481C4C(a1, v10, v11, v12, v1 + v6, v14, v15, v1 + v9);
}

uint64_t sub_26F487D48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F487DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F487E48(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1130, &unk_26F4ABFF0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - v12;
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_26F3B6B4C(a1, &qword_2806E1130, &unk_26F4ABFF0);
    sub_26F497324(a2, v8);
    v15 = sub_26F49D968();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_26F3B6B4C(v8, &qword_2806E1130, &unk_26F4ABFF0);
  }

  else
  {
    sub_26F3BBAEC(a1, v13, &qword_2806DED80, &qword_26F4A3660);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_26F4982C8(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_26F49D968();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_26F48806C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - v7;
  v9 = type metadata accessor for VisualTranslationModel(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v14 + 48))(a1, 1, v11) == 1)
  {
    sub_26F3B6B4C(a1, &qword_2806E0908, &qword_26F4AB220);
    sub_26F4974DC(a2, v8);
    v15 = sub_26F49D968();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_26F3B6B4C(v8, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    sub_26F49C978(a1, v13, type metadata accessor for VisualTranslationModel);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_26F4984A4(v13, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_26F49D968();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_26F48828C(uint64_t a1, char a2)
{
  **(*(*__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return MEMORY[0x282200948]();
}

uint64_t SecureHostingController.__allocating_init(rootView:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_26F499A84(a1);
  (*(*(*(v2 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v5;
}

void RecognizedItem.originalBounds.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49F728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v47 = v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v41 - v9;
  v11 = sub_26F49F7D8();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v49 = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v41 - v17;
  v19 = *(v12 + 16);
  v50 = v2;
  v48 = v19;
  (v19)(v41 - v17, v2, v11, v16);
  v20 = *(v12 + 88);
  v21 = v20(v18, v11);
  if (v21 != *MEMORY[0x277CE3090])
  {
    (*(v12 + 8))(v18, v11);
    goto LABEL_9;
  }

  v51 = a1;
  v46 = v21;
  v44 = *(v12 + 96);
  v45 = v12 + 96;
  v44(v18, v11);
  v42 = *(v5 + 32);
  v43 = v5 + 32;
  v42(v10, v18, v4);
  v22 = sub_26F49F708();
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (!v23)
  {

    (*(v5 + 8))(v10, v4);
    a1 = v51;
    goto LABEL_9;
  }

  v24 = [v23 getCROutputRegion];

  v25 = *(v5 + 8);
  v26 = v10;
  v27 = v4;
  v28 = v4;
  v41[1] = v5 + 8;
  v29 = v25;
  v25(v26, v28);
  a1 = v51;
  if (!v24)
  {
LABEL_9:
    v37 = sub_26F49F7B8();
    v38 = *(*(v37 - 8) + 56);
    v39 = a1;
    goto LABEL_10;
  }

  v30 = [v24 originalBoundingQuad];
  if (!v30)
  {
    v40 = sub_26F49F7B8();
    (*(*(v40 - 8) + 56))(v51, 1, 1, v40);

    return;
  }

  v31 = v30;
  v32 = v49;
  v48(v49, v50, v11);
  v33 = v20(v32, v11);
  if (v33 == v46)
  {
    v44(v32, v11);
    v34 = v47;
    v42(v47, v32, v27);
    v35 = v51;
    sub_26F49F718();
    [v31 bottomLeft];
    sub_26F49F748();
    [v31 bottomRight];
    sub_26F49F768();
    [v31 topLeft];
    sub_26F49F788();
    [v31 topRight];
    sub_26F49F7A8();

    v29(v34, v27);
    v36 = sub_26F49F7B8();
    (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
    return;
  }

  (*(v12 + 8))(v32, v11);
  v37 = sub_26F49F7B8();
  v38 = *(*(v37 - 8) + 56);
  v39 = v51;
LABEL_10:
  v38(v39, 1, 1, v37);
}

void RecognizedItem.homography.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49F728();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26F49F7D8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v2, v9, v12);
  if ((*(v10 + 88))(v14, v9) != *MEMORY[0x277CE3090])
  {
    (*(v10 + 8))(v14, v9);
LABEL_8:
    v18 = 0uLL;
    goto LABEL_9;
  }

  (*(v10 + 96))(v14, v9);
  (*(v5 + 32))(v8, v14, v4);
  v15 = sub_26F49F708();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (!v16)
  {

    (*(v5 + 8))(v8, v4);
    goto LABEL_8;
  }

  v17 = [v16 getCROutputRegion];

  (*(v5 + 8))(v8, v4);
  v18 = 0uLL;
  if (!v17)
  {
LABEL_9:
    v25 = 1;
    v23 = 0uLL;
    v24 = 0uLL;
    goto LABEL_10;
  }

  v19 = [v17 originalBoundingQuad];
  if (v19)
  {

    [v17 boundingQuadHomography];
    v27 = v21;
    v28 = v20;
    v26 = v22;

    v24 = v26;
    v23 = v27;
    v18 = v28;
    v25 = 0;
  }

  else
  {

    v25 = 1;
    v23 = 0uLL;
    v24 = 0uLL;
    v18 = 0uLL;
  }

LABEL_10:
  *a1 = v18;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 48) = v25;
}

uint64_t RecognizedItem.baselineAngle.getter()
{
  v1 = v0;
  v2 = sub_26F49F728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F7D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  if ((*(v8 + 88))(v12, v7) == *MEMORY[0x277CE3090])
  {
    (*(v8 + 96))(v12, v7);
    (*(v3 + 32))(v6, v12, v2);
    v13 = sub_26F49F708();
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 getCROutputRegion];

      (*(v3 + 8))(v6, v2);
      if (v15)
      {
        v16 = [v15 originalBoundingQuad];
        if (v16)
        {
          v17 = v16;
          [v16 baselineAngle];
          v19 = v18;

          return v19;
        }
      }
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    (*(v8 + 8))(v12, v7);
  }

  return 0;
}

uint64_t RecognizedItem.homographySize.getter()
{
  v1 = v0;
  v2 = sub_26F49F728();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F7D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  if ((*(v8 + 88))(v12, v7) == *MEMORY[0x277CE3090])
  {
    (*(v8 + 96))(v12, v7);
    (*(v3 + 32))(v6, v12, v2);
    v13 = sub_26F49F708();
    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 getCROutputRegion];

      (*(v3 + 8))(v6, v2);
      if (v15)
      {
        v16 = [v15 originalBoundingQuad];
        if (v16)
        {
          v17 = v16;
          [v16 normalizationSize];
          v19 = v18;

          *&result = v19 * 0.25;
          return result;
        }
      }
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }
  }

  else
  {
    (*(v8 + 8))(v12, v7);
  }

  *&result = 0.0;
  return result;
}

void sub_26F489090(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26F49D7E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t sub_26F489100@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v5;
  return result;
}

uint64_t sub_26F489180(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F4891FC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  return v1;
}

uint64_t sub_26F489270()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*sub_26F4892E0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t sub_26F489384(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v16 - v11;
  v13 = *(v5 + 16);
  v13(&v16 - v11, a1, v4, v10);
  v14 = *a2;
  (v13)(v8, v12, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v5 + 8))(v12, v4);
}

uint64_t sub_26F489524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v8 - v6, a1, v2, v5);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*sub_26F48965C(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1648, &qword_26F4AB940);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

uint64_t (*sub_26F48981C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F407368;
}

uint64_t sub_26F4898C0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = *(v9 + 16);
  v16(&v20 - v14, a1, v8);
  v17 = *a2;
  v16(v13, v15, v8);
  v18 = *a5;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_26F489A74(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  (*(v5 + 16))(&v11 - v8, a1, v4, v7);
  v9 = *a2;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_26F489BAC(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F4077B4;
}

uint64_t sub_26F489D44(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F489DDC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*sub_26F489E48(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

uint64_t (*sub_26F489F14(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

double sub_26F48A084()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_26F48A0C8()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream;
  if (*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream))
  {
    v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream);
  }

  else
  {
    v3 = v0;
    type metadata accessor for VisualTranslationStream();
    swift_allocObject();
    v2 = sub_26F4848C0();
    v4 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t VisualTranslationObservable.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return VisualTranslationObservable.init()();
}

uint64_t VisualTranslationObservable.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v23[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  v11 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v12 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
  sub_26F49DD68();
  (*(v7 + 32))(v0 + v11, v10, v6);
  v13 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  *(v0 + v13) = sub_26F3BE714(v12);
  v14 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels;
  type metadata accessor for OngoingTranslationActor();
  v15 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v15 + 112) = MEMORY[0x277D84FA0];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v23[7] = 0;
  sub_26F49DD68();
  v17 = *(v2 + 32);
  v17(v0 + v16, v5, v1);
  v18 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent;
  v23[6] = 0;
  sub_26F49DD68();
  v17(v0 + v18, v5, v1);
  *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale) = 0x3FF0000000000000;
  v19 = (v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  *v19 = 0;
  v19[1] = 0;
  *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream) = 0;
  v20 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
  v21 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  (*(*(v21 - 8) + 56))(v0 + v20, 1, 1, v21);
  return VisualTranslationErrorViewModel.init()();
}

size_t sub_26F48A444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v110 - v5;
  v7 = sub_26F49D968();
  v122 = *(v7 - 8);
  v123 = v7;
  v8 = *(v122 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for VisualTranslationModel(0);
  v121 = *(v11 - 1);
  v12 = *(v121 + 64);
  MEMORY[0x28223BE20](v11);
  v117 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v118 = &v110 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v110 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v110 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v110 - v23;
  MEMORY[0x28223BE20](v25);
  v120 = &v110 - v26;
  v27 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  result = swift_beginAccess();
  v119 = v1;
  v29 = *(v1 + v27);
  if (*(v29 + 16))
  {

    v30 = sub_26F45FF48(a1);
    if ((v31 & 1) == 0)
    {
    }

    v32 = *(v29 + 56);
    v114 = *(v121 + 72);
    v115 = v18;
    sub_26F49B18C(v32 + v114 * v30, v24, type metadata accessor for VisualTranslationModel);

    v33 = v120;
    sub_26F49C978(v24, v120, type metadata accessor for VisualTranslationModel);
    v34 = v33 + v11[5];
    v35 = *(v34 + 144);
    v155 = *(v34 + 128);
    v156 = v35;
    v157 = *(v34 + 160);
    v36 = *(v34 + 80);
    v151 = *(v34 + 64);
    v152 = v36;
    v37 = *(v34 + 112);
    v153 = *(v34 + 96);
    v154 = v37;
    v38 = *(v34 + 48);
    v149 = *(v34 + 32);
    v150 = v38;
    v39 = *(v34 + 16);
    v147 = *v34;
    v148 = v39;
    v40 = v11[6];
    sub_26F49D8F8();
    if (v41 <= 0.0)
    {
      v116 = *(v122 + 16);
      v122 = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v116(v21, a1, v123);
      v44 = v11[6];
      v45 = sub_26F49D918();
      (*(*(v45 - 8) + 16))(&v21[v44], v33 + v40, v45);
      v46 = *(a1 + v11[7]);
      v47 = *(a1 + v11[8]);
      v48 = *(a1 + v11[9]);
      v49 = *(a1 + v11[10]);
      v50 = &v21[v11[5]];
      v51 = v156;
      *(v50 + 8) = v155;
      *(v50 + 9) = v51;
      *(v50 + 20) = v157;
      v52 = v152;
      *(v50 + 4) = v151;
      *(v50 + 5) = v52;
      v53 = v154;
      *(v50 + 6) = v153;
      *(v50 + 7) = v53;
      v54 = v148;
      *v50 = v147;
      *(v50 + 1) = v54;
      v55 = v150;
      *(v50 + 2) = v149;
      *(v50 + 3) = v55;
      *&v21[v11[7]] = v46;
      *&v21[v11[8]] = v47;
      v21[v11[9]] = v48;
      v21[v11[10]] = v49;
      v21[v11[11]] = 0;

      v42 = v116;
      v43 = v122;
    }

    else
    {
      sub_26F49B18C(a1, v21, type metadata accessor for VisualTranslationModel);
      v42 = *(v122 + 16);
      v43 = (v122 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    }

    v122 = v43;
    v116 = v42;
    v42(v10, a1, v123);
    sub_26F49B18C(v21, v6, type metadata accessor for VisualTranslationModel);
    (*(v121 + 56))(v6, 0, 1, v11);
    v56 = v119;
    swift_beginAccess();
    sub_26F48806C(v6, v10);
    swift_endAccess();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    v58 = v136;
    MEMORY[0x28223BE20](v57);
    *(&v110 - 2) = v21;
    v59 = sub_26F48AE7C(sub_26F49CBA0, (&v110 - 4), v58);
    v61 = v60;

    v63 = v115;
    v64 = v123;
    if (v61)
    {
      MEMORY[0x28223BE20](v62);
      *(&v110 - 2) = v56;
      *(&v110 - 1) = v21;
      sub_26F49F5F8();
      sub_26F49E1F8();

      v65 = v120;
LABEL_17:
      sub_26F499BA4(v65, type metadata accessor for VisualTranslationModel);
      return sub_26F499BA4(v21, type metadata accessor for VisualTranslationModel);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F49DDA8();

    if ((v59 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v66 = v59 >= *(v136 + 16);
      v67 = v59;
      v68 = v118;
      if (!v66)
      {
        v113 = (*(v121 + 80) + 32) & ~*(v121 + 80);
        v121 = v67;
        v114 *= v67;
        v69 = v117;
        sub_26F49B18C(v136 + v113 + v114, v117, type metadata accessor for VisualTranslationModel);

        v116(v68, v69, v64);
        v70 = v69 + v11[5];
        v71 = *(v70 + 144);
        v133 = *(v70 + 128);
        v134 = v71;
        v135 = *(v70 + 160);
        v72 = *(v70 + 80);
        v129 = *(v70 + 64);
        v130 = v72;
        v73 = *(v70 + 112);
        v131 = *(v70 + 96);
        v132 = v73;
        v74 = *(v70 + 48);
        v127 = *(v70 + 32);
        v128 = v74;
        v75 = *(v70 + 16);
        v125 = *v70;
        v126 = v75;
        v76 = v11[6];
        v77 = sub_26F49D918();
        v78 = *(v77 - 8);
        v79 = *(v78 + 16);
        v110 = v78 + 16;
        v111 = v79;
        v79(v68 + v76, (v69 + v76), v77);
        sub_26F499BA4(v69, type metadata accessor for VisualTranslationModel);
        v80 = *&v21[v11[7]];
        v81 = *&v21[v11[8]];
        v82 = v21[v11[9]];
        v83 = v21[v11[10]];
        v84 = v68 + v11[5];
        v85 = v126;
        *v84 = v125;
        *(v84 + 16) = v85;
        v86 = v130;
        *(v84 + 64) = v129;
        *(v84 + 80) = v86;
        v87 = v128;
        *(v84 + 32) = v127;
        *(v84 + 48) = v87;
        *(v84 + 160) = v135;
        v88 = v134;
        *(v84 + 128) = v133;
        *(v84 + 144) = v88;
        v89 = v132;
        *(v84 + 96) = v131;
        *(v84 + 112) = v89;
        *(v68 + v11[7]) = v80;
        v90 = v11[8];
        v117 = v81;
        *(v68 + v90) = v81;
        v91 = v11[9];
        v112 = v82;
        *(v68 + v91) = v82;
        v92 = v11[10];
        *(v68 + v92) = v83;
        *(v68 + v11[11]) = 0;
        v93 = &v21[v11[5]];
        v94 = *(v93 + 9);
        v144 = *(v93 + 8);
        v145 = v94;
        v146 = *(v93 + 20);
        v95 = *(v93 + 5);
        v140 = *(v93 + 4);
        v141 = v95;
        v96 = *(v93 + 7);
        v142 = *(v93 + 6);
        v143 = v96;
        v97 = *(v93 + 3);
        v138 = *(v93 + 2);
        v139 = v97;
        v98 = *(v93 + 1);
        v136 = *v93;
        v137 = v98;
        v99 = v11[6];

        sub_26F49D8F8();
        if (v100 <= 0.0)
        {
          v116(v63, v68, v123);
          v111(v63 + v11[6], &v21[v99], v77);
          v101 = *(v68 + v92);

          sub_26F499BA4(v68, type metadata accessor for VisualTranslationModel);
          v102 = v63 + v11[5];
          v103 = v145;
          *(v102 + 128) = v144;
          *(v102 + 144) = v103;
          *(v102 + 160) = v146;
          v104 = v141;
          *(v102 + 64) = v140;
          *(v102 + 80) = v104;
          v105 = v143;
          *(v102 + 96) = v142;
          *(v102 + 112) = v105;
          v106 = v137;
          *v102 = v136;
          *(v102 + 16) = v106;
          v107 = v139;
          *(v102 + 32) = v138;
          *(v102 + 48) = v107;
          *(v63 + v11[7]) = v80;
          *(v63 + v11[8]) = v117;
          *(v63 + v11[9]) = v112;
          *(v63 + v11[10]) = v101;
          *(v63 + v11[11]) = 0;
        }

        else
        {
          sub_26F49C978(v68, v63, type metadata accessor for VisualTranslationModel);
        }

        swift_getKeyPath();
        swift_getKeyPath();
        v64 = sub_26F49DD98();
        v56 = v108;
        v61 = *v108;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v56 = v61;
        v11 = v121;
        if (result)
        {
          goto LABEL_15;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_21:
    result = sub_26F446D78(v61);
    v61 = result;
    *v56 = result;
LABEL_15:
    v109 = v120;
    if (v11 >= v61[2])
    {
      __break(1u);
      return result;
    }

    sub_26F49CF68(v63, v61 + v113 + v114, type metadata accessor for VisualTranslationModel);
    v64(&v124, 0);

    v65 = v109;
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_26F48AE7C(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_26F48AF68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for VisualTranslationModel(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_26F49B18C(a2, v7, type metadata accessor for VisualTranslationModel);
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = sub_26F49DD98();
  v10 = v9;
  v11 = *v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v10 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_26F44650C(0, v11[2] + 1, 1, v11);
    *v10 = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_26F44650C(v13 > 1, v14 + 1, 1, v11);
    *v10 = v11;
  }

  v11[2] = v14 + 1;
  sub_26F49C978(v7, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for VisualTranslationModel);
  v8(v16, 0);
}

uint64_t sub_26F48B154()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = sub_26F49DD98();
  v3 = *v2;
  *v2 = MEMORY[0x277D84F90];

  v1(&v7, 0);

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v5 = *(v0 + v4);
  *(v0 + v4) = MEMORY[0x277D84F98];
}

uint64_t sub_26F48B22C(void *a1)
{
  v108 = type metadata accessor for VisualTranslationModel(0);
  v117 = *(v108 - 8);
  v3 = *(v117 + 64);
  MEMORY[0x28223BE20](v108);
  v101 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v100 = &v98 - v6;
  MEMORY[0x28223BE20](v7);
  v107 = &v98 - v8;
  MEMORY[0x28223BE20](v9);
  v109 = &v98 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v11 = *(*(v118 - 8) + 64);
  MEMORY[0x28223BE20](v118);
  v102 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v116 = &v98 - v14;
  MEMORY[0x28223BE20](v15);
  v121 = &v98 - v16;
  MEMORY[0x28223BE20](v17);
  v115 = &v98 - v18;
  v19 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v105 = v1;
  v104 = v19;
  v20 = *(v1 + v19);
  v122 = a1;
  v21 = v20 + 64;
  v22 = 1 << *(v20 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v20 + 64);
  v25 = (v22 + 63) >> 6;

  v120 = v20;

  v26 = 0;
  v106 = a1;
  v114 = v25;
  v113 = v20 + 64;
  while (v24)
  {
LABEL_11:
    while (1)
    {
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v120;
      v31 = *(v120 + 48);
      v32 = sub_26F49D968();
      v33 = *(v32 - 8);
      v34 = v33;
      v110 = *(v33 + 72);
      v35 = v115;
      v112 = *(v33 + 16);
      v111 = v33 + 16;
      v112(v115, v31 + v110 * v29, v32);
      v36 = *(v30 + 56);
      v119 = *(v117 + 72);
      v37 = v36 + v119 * v29;
      v38 = v118;
      v39 = *(v118 + 48);
      sub_26F49B18C(v37, &v35[v39], type metadata accessor for VisualTranslationModel);
      v40 = v121;
      v41 = v121 + *(v38 + 48);
      (*(v34 + 32))(v121, v35, v32);
      sub_26F49C978(&v35[v39], v41, type metadata accessor for VisualTranslationModel);
      v42 = v40;
      v43 = v116;
      sub_26F3B8DD4(v42, v116, &qword_2806E1750, &qword_26F4ABFA8);
      v44 = *(v38 + 48);
      if (v122[2])
      {
        v45 = sub_26F45FF48(v43);
        if (v46)
        {
          break;
        }
      }

      sub_26F3B6B4C(v121, &qword_2806E1750, &qword_26F4ABFA8);
      sub_26F499BA4(v43 + v44, type metadata accessor for VisualTranslationModel);
      (*(v34 + 8))(v43, v32);
LABEL_6:
      v25 = v114;
      v21 = v113;
      if (!v24)
      {
        goto LABEL_7;
      }
    }

    v103 = v41;
    v47 = v107;
    sub_26F49B18C(v122[7] + v45 * v119, v107, type metadata accessor for VisualTranslationModel);
    v48 = v47;
    v49 = v109;
    sub_26F49C978(v48, v109, type metadata accessor for VisualTranslationModel);
    sub_26F499BA4(v43 + v44, type metadata accessor for VisualTranslationModel);
    v50 = *(v34 + 8);
    v51 = v32;
    v50(v43, v32);
    v52 = v49;
    v53 = v108;
    if (*(v52 + *(v108 + 44)))
    {
      sub_26F499BA4(v52, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v121, &qword_2806E1750, &qword_26F4ABFA8);
      goto LABEL_6;
    }

    v54 = v52;
    sub_26F3B8DD4(v121, v102, &qword_2806E1750, &qword_26F4ABFA8);
    v55 = v54 + v53[5];
    v56 = *(v55 + 144);
    v132 = *(v55 + 128);
    v133 = v56;
    v134 = *(v55 + 160);
    v57 = *(v55 + 80);
    v128 = *(v55 + 64);
    v129 = v57;
    v58 = *(v55 + 112);
    v130 = *(v55 + 96);
    v131 = v58;
    v59 = *(v55 + 48);
    v126 = *(v55 + 32);
    v127 = v59;
    v60 = *v55;
    v125 = *(v55 + 16);
    v124 = v60;
    v61 = v53[6];
    v62 = v103;
    v63 = v53;
    sub_26F49D8F8();
    v99 = v50;
    v65 = v100;
    if (v64 <= 0.0)
    {
      v112(v100, v62, v32);
      v66 = v63[6];
      v67 = sub_26F49D918();
      (*(*(v67 - 8) + 16))(v65 + v66, v109 + v61, v67);
      v68 = *(v62 + v63[7]);
      v69 = *(v62 + v63[8]);
      v70 = *(v62 + v63[9]);
      v71 = *(v62 + v63[10]);
      v72 = v65 + v63[5];
      v73 = v133;
      *(v72 + 128) = v132;
      *(v72 + 144) = v73;
      *(v72 + 160) = v134;
      v74 = v129;
      *(v72 + 64) = v128;
      *(v72 + 80) = v74;
      v75 = v131;
      *(v72 + 96) = v130;
      *(v72 + 112) = v75;
      v76 = v125;
      *v72 = v124;
      *(v72 + 16) = v76;
      v77 = v127;
      *(v72 + 32) = v126;
      *(v72 + 48) = v77;
      *(v65 + v63[7]) = v68;
      *(v65 + v63[8]) = v69;
      *(v65 + v63[9]) = v70;
      *(v65 + v63[10]) = v71;
      *(v65 + v63[11]) = 0;
    }

    else
    {
      sub_26F49B18C(v62, v100, type metadata accessor for VisualTranslationModel);
    }

    sub_26F49C978(v65, v101, type metadata accessor for VisualTranslationModel);
    v78 = v106;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v123 = v78;
    v80 = sub_26F45FF48(v102);
    v82 = v78[2];
    v83 = (v81 & 1) == 0;
    v84 = __OFADD__(v82, v83);
    v85 = v82 + v83;
    if (v84)
    {
      goto LABEL_32;
    }

    v86 = v81;
    if (v78[3] >= v85)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v95 = v80;
        sub_26F3C77D4();
        v80 = v95;
      }
    }

    else
    {
      sub_26F3C6314(v85, isUniquelyReferenced_nonNull_native);
      v80 = sub_26F45FF48(v102);
      if ((v86 & 1) != (v87 & 1))
      {
        goto LABEL_34;
      }
    }

    v88 = v119;
    v89 = v123;
    v106 = v123;
    if (v86)
    {
      sub_26F49CF68(v101, v123[7] + v80 * v119, type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v109, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v121, &qword_2806E1750, &qword_26F4ABFA8);
    }

    else
    {
      v123[(v80 >> 6) + 8] |= 1 << v80;
      v90 = v80;
      v112((v89[6] + v80 * v110), v102, v32);
      sub_26F49C978(v101, v89[7] + v90 * v88, type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v109, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v121, &qword_2806E1750, &qword_26F4ABFA8);
      v91 = v89[2];
      v84 = __OFADD__(v91, 1);
      v92 = v91 + 1;
      if (v84)
      {
        goto LABEL_33;
      }

      v89[2] = v92;
    }

    v25 = v114;
    v21 = v113;
    v93 = *(v118 + 48);
    v94 = v102;
    v99(v102, v51);
    sub_26F499BA4(v94 + v93, type metadata accessor for VisualTranslationModel);
  }

LABEL_7:
  while (1)
  {
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      v96 = *(v105 + v104);
      *(v105 + v104) = v106;
    }

    v24 = *(v21 + 8 * v27);
    ++v26;
    if (v24)
    {
      v26 = v27;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_26F4A04A8();
  __break(1u);
  return result;
}

uint64_t sub_26F48BCAC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v26 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1650, &qword_26F4AB9F8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v26 - v14;
  if (qword_2806DE788 != -1)
  {
    swift_once();
  }

  v16 = sub_26F49DCA8();
  __swift_project_value_buffer(v16, qword_2806EA8A8);
  v17 = sub_26F49DC88();
  v18 = sub_26F49FDF8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26F39E000, v17, v18, "User confirmed first use consent, continuing visual translation", v19, 2u);
    MEMORY[0x274391F70](v19, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v27 = 0;

  sub_26F49DDB8();
  v20 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
  swift_beginAccess();
  sub_26F3B8DD4(v1 + v20, v8, &qword_2806E1650, &qword_26F4AB9F8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_26F3B6B4C(v8, &qword_2806E1650, &qword_26F4AB9F8);
  }

  sub_26F49C978(v8, v15, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
  v22 = sub_26F49FC08();
  v23 = v26;
  (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  sub_26F49B18C(v15, v12, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
  v24 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v1;
  sub_26F49C978(v12, v25 + v24, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);

  sub_26F405D00(0, 0, v23, &unk_26F4ABEE8, v25);

  return sub_26F499BA4(v15, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest);
}

uint64_t sub_26F48C0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v6 = sub_26F49D968();
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F48C170, 0, 0);
}

uint64_t sub_26F48C170()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  v3 = *v2;
  v4 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
  v5 = *(v4 + 20);
  v6 = *(v4 + 24);
  *(v0 + 80) = 1;
  sub_26F49D958();
  v7 = swift_task_alloc();
  *(v0 + 64) = v7;
  *v7 = v0;
  v7[1] = sub_26F48C250;
  v8 = *(v0 + 56);
  v9 = *(v0 + 24);

  return sub_26F48C80C(v3, v2 + v5, v2 + v6, (v0 + 80), v8);
}

uint64_t sub_26F48C250(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 48);
  v14 = *v2;

  v7 = (v6 + 8);
  if (v1)
  {
    v8 = v4[7];
    v9 = v4[5];

    (*v7)(v8, v9);
    v10 = sub_26F48C434;
  }

  else
  {
    v11 = v4[7];
    v12 = v4[5];
    v4[9] = a1;
    (*v7)(v11, v12);
    v10 = sub_26F48C3C8;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_26F48C3C8()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F48C434()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F48C49C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_26F49D968();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 89) = *a4;

  return MEMORY[0x2822009F8](sub_26F48C56C, 0, 0);
}

uint64_t sub_26F48C56C()
{
  v1 = *(v0 + 64);
  *(v0 + 88) = *(v0 + 89);
  sub_26F49D958();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_26F48C620;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_26F48C80C(v7, v6, v4, (v0 + 88), v3);
}

uint64_t sub_26F48C620(uint64_t a1)
{
  v4 = *(*v2 + 72);
  v5 = *v2;
  v5[10] = v1;

  if (v1)
  {
    (*(v5[7] + 8))(v5[8], v5[6]);

    return MEMORY[0x2822009F8](sub_26F48C7A8, 0, 0);
  }

  else
  {
    (*(v5[7] + 8))(v5[8], v5[6]);

    v6 = v5[1];

    return v6(a1);
  }
}

uint64_t sub_26F48C7A8()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[10];

  return v2();
}

uint64_t sub_26F48C80C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 424) = a5;
  *(v6 + 432) = v5;
  *(v6 + 408) = a2;
  *(v6 + 416) = a3;
  *(v6 + 400) = a1;
  v8 = *(*(type metadata accessor for TextDiagnosticsModel() - 8) + 64) + 15;
  *(v6 + 440) = swift_task_alloc();
  v9 = type metadata accessor for VisualTranslationModel(0);
  *(v6 + 448) = v9;
  v10 = *(v9 - 8);
  *(v6 + 456) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 472) = swift_task_alloc();
  *(v6 + 480) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  *(v6 + 488) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v6 + 496) = v13;
  v14 = *(v13 - 8);
  *(v6 + 504) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 512) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v6 + 520) = v16;
  v17 = *(v16 - 8);
  *(v6 + 528) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 536) = swift_task_alloc();
  v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1650, &qword_26F4AB9F8) - 8) + 64) + 15;
  *(v6 + 544) = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  *(v6 + 552) = swift_task_alloc();
  *(v6 + 560) = swift_task_alloc();
  *(v6 + 568) = swift_task_alloc();
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 666) = *a4;

  return MEMORY[0x2822009F8](sub_26F48CAC0, 0, 0);
}

uint64_t sub_26F48CAC0()
{
  v54 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[72];
  v2 = v0[71];
  v4 = v0[51];
  v3 = v0[52];
  v5 = v0[50];
  v6 = sub_26F49DCA8();
  v0[73] = v6;
  v0[74] = __swift_project_value_buffer(v6, qword_280F67ED0);
  sub_26F3B8DD4(v4, v1, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(v3, v2, &qword_2806DEFD8, &qword_26F4A3670);

  v7 = sub_26F49DC88();
  v8 = sub_26F49FDF8();
  if (os_log_type_enabled(v7, v8))
  {
    v50 = v8;
    v9 = v0[50];
    v10 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    buf = v10;
    *v10 = 134349570;
    if (v9 >> 62)
    {
      if (v0[50] < 0)
      {
        v46 = v0[50];
      }

      v11 = sub_26F4A00A8();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0[72];
    v13 = v0[70];
    v14 = v0[50];
    *(v10 + 4) = v11;

    *(v10 + 12) = 2082;
    sub_26F3B8DD4(v12, v13, &qword_2806DEFD8, &qword_26F4A3670);
    v15 = sub_26F49DAB8();
    v16 = *(v15 - 8);
    v48 = *(v16 + 48);
    v17 = v48(v13, 1, v15);
    v18 = v0[70];
    log = v7;
    if (v17 == 1)
    {
      sub_26F3B6B4C(v18, &qword_2806DEFD8, &qword_26F4A3670);
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v0[42] = sub_26F49D988();
      v0[43] = v24;
      v0[44] = 45;
      v0[45] = 0xE100000000000000;
      v0[46] = 95;
      v0[47] = 0xE100000000000000;
      sub_26F3BDC0C();
      v19 = sub_26F49FFF8();
      v20 = v25;

      (*(v16 + 8))(v18, v15);
    }

    v26 = v0[72];
    v27 = v0[71];
    v28 = v0[69];
    v0[32] = v19;
    v0[33] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1658, &unk_26F4ABA00);
    v29 = sub_26F49F938();
    v31 = v30;
    sub_26F3B6B4C(v26, &qword_2806DEFD8, &qword_26F4A3670);
    v32 = sub_26F3B38D0(v29, v31, &v53);

    *(buf + 14) = v32;
    *(buf + 11) = 2082;
    sub_26F3B8DD4(v27, v28, &qword_2806DEFD8, &qword_26F4A3670);
    if (v48(v28, 1, v15) == 1)
    {
      sub_26F3B6B4C(v0[69], &qword_2806DEFD8, &qword_26F4A3670);
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v35 = v15;
      v36 = v0[69];
      v0[36] = sub_26F49D988();
      v0[37] = v37;
      v0[38] = 45;
      v0[39] = 0xE100000000000000;
      v0[40] = 95;
      v0[41] = 0xE100000000000000;
      sub_26F3BDC0C();
      v33 = sub_26F49FFF8();
      v34 = v38;

      (*(v16 + 8))(v36, v35);
    }

    v39 = v0[71];
    v0[34] = v33;
    v0[35] = v34;
    v40 = sub_26F49F938();
    v42 = v41;
    sub_26F3B6B4C(v39, &qword_2806DEFD8, &qword_26F4A3670);
    v43 = sub_26F3B38D0(v40, v42, &v53);

    *(buf + 3) = v43;
    _os_log_impl(&dword_26F39E000, log, v50, "Got request to translate %{public}ld observations; sourceLocale: %{public}s; targetLocale: %{public}s", buf, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v49, -1, -1);
    MEMORY[0x274391F70](buf, -1, -1);
  }

  else
  {
    v21 = v0[72];
    v22 = v0[71];
    v23 = v0[50];

    sub_26F3B6B4C(v22, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v21, &qword_2806DEFD8, &qword_26F4A3670);
  }

  v0[75] = _s13TranslationUI06VisualA5ModelV6models4from5group12sourceLocale06targetI0SayACGSaySo27VNRecognizedTextObservationCG_Sb10Foundation0I0VSgAPtFZ_0(v0[50], 1, v0[51], v0[52]);
  v0[76] = sub_26F49FBD8();
  v0[77] = sub_26F49FBC8();
  v45 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48D0A4, v45, v44);
}

uint64_t sub_26F48D0A4()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 432);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = sub_26F49DD98();
  v5 = *v4;
  *v4 = MEMORY[0x277D84F90];

  v3(v0 + 144, 0);

  v6 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v7 = *(v2 + v6);
  *(v2 + v6) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_26F48D1C4, 0, 0);
}

uint64_t sub_26F48D1C4()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 83;
  v0[3] = sub_26F48D2F0;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F48828C;
  v0[13] = &block_descriptor_12;
  v0[14] = v2;
  [v1 shouldPresentSystemFirstUseConsentWithDedicatedMachPort:1 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F48D2F0()
{
  v1 = *v0;
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F48D3D0, 0, 0);
}

uint64_t sub_26F48D3D0()
{
  v41 = v0;
  if (*(v0 + 664) == 1)
  {
    v1 = *(v0 + 600);

    if (qword_2806DE788 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(*(v0 + 584), qword_2806EA8A8);
    v2 = sub_26F49DC88();
    v3 = sub_26F49FDB8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_26F39E000, v2, v3, "Present first use experience and delay translation", v4, 2u);
      MEMORY[0x274391F70](v4, -1, -1);
    }

    v5 = *(v0 + 544);
    v6 = *(v0 + 432);
    v8 = *(v0 + 408);
    v7 = *(v0 + 416);
    v9 = *(v0 + 400);

    swift_getKeyPath();
    swift_getKeyPath();
    *(v0 + 665) = 1;

    sub_26F49DDB8();
    v10 = type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0);
    sub_26F3B8DD4(v8, v5 + *(v10 + 20), &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B8DD4(v7, v5 + *(v10 + 24), &qword_2806DEFD8, &qword_26F4A3670);
    *v5 = v9;
    (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    v11 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest;
    swift_beginAccess();

    sub_26F49CFD0(v5, v6 + v11, &qword_2806E1650, &qword_26F4AB9F8);
    swift_endAccess();
    v12 = *(v0 + 576);
    v13 = *(v0 + 568);
    v14 = *(v0 + 560);
    v15 = *(v0 + 552);
    v16 = *(v0 + 544);
    v17 = *(v0 + 536);
    v18 = *(v0 + 512);
    v20 = *(v0 + 480);
    v19 = *(v0 + 488);
    v21 = *(v0 + 472);
    v38 = *(v0 + 464);
    v39 = *(v0 + 440);

    v22 = *(v0 + 8);
    v23 = MEMORY[0x277D84F90];

    return v22(v23);
  }

  else
  {
    v25 = *(v0 + 600);
    v26 = *(v0 + 666);
    v27 = *(v0 + 536);
    v29 = *(v0 + 504);
    v28 = *(v0 + 512);
    v30 = *(v0 + 496);
    v31 = *(v0 + 424);
    v32 = MEMORY[0x277D84F90];
    *(v0 + 384) = MEMORY[0x277D84F90];
    type metadata accessor for VisualTranslationService();
    v40 = v26;
    static VisualTranslationService.translate(models:strictLocales:taskHint:selfLoggingInvocationId:)(v25, 0, &v40, v28);

    sub_26F49FC58();
    (*(v29 + 8))(v28, v30);
    *(v0 + 624) = v32;
    v33 = *(MEMORY[0x277D858B8] + 4);
    v34 = swift_task_alloc();
    *(v0 + 632) = v34;
    *v34 = v0;
    v34[1] = sub_26F48D7DC;
    v35 = *(v0 + 536);
    v36 = *(v0 + 520);
    v37 = *(v0 + 488);

    return MEMORY[0x2822005A8](v37, 0, 0, v36, v0 + 392);
  }
}

uint64_t sub_26F48D7DC()
{
  v2 = *v1;
  v3 = *(*v1 + 632);
  v7 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v4 = *(v2 + 624);

    v5 = sub_26F48E08C;
  }

  else
  {
    v5 = sub_26F48D8F8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_26F48D8F8()
{
  v55 = v0;
  v1 = *(v0 + 488);
  v2 = *(v0 + 448);
  if ((*(*(v0 + 456) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 528) + 8))(*(v0 + 536), *(v0 + 520));
    v3 = *(v0 + 576);
    v4 = *(v0 + 568);
    v5 = *(v0 + 560);
    v6 = *(v0 + 552);
    v7 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 512);
    v11 = *(v0 + 480);
    v10 = *(v0 + 488);
    v12 = *(v0 + 472);
    v51 = *(v0 + 464);
    v52 = *(v0 + 440);
    v53 = *(v0 + 624);

    v13 = *(v0 + 8);

    return v13(v53);
  }

  else
  {
    v15 = *(v0 + 472);
    v16 = *(v0 + 480);
    sub_26F49C978(v1, v16, type metadata accessor for VisualTranslationModel);
    sub_26F49B18C(v16, v15, type metadata accessor for VisualTranslationModel);
    v17 = type metadata accessor for VisualTranslationResult(0);
    v18 = objc_allocWithZone(v17);
    v19 = OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_uuid;
    v20 = sub_26F49D968();
    (*(*(v20 - 8) + 16))(&v18[v19], v15, v20);
    v21 = Array<A>.targetParagraph.getter(*(v15 + *(v2 + 28)));
    v22 = &v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_string];
    *v22 = v21;
    v22[1] = v23;
    v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_isPassthrough] = sub_26F46DC20() & 1;
    v24 = (v15 + *(v2 + 20));
    *&v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topLeft] = v24[1];
    *&v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_topRight] = v24[2];
    *&v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomLeft] = v24[3];
    *&v18[OBJC_IVAR____TtC13TranslationUI23VisualTranslationResult_bottomRight] = v24[4];
    *(v0 + 224) = v18;
    *(v0 + 232) = v17;
    objc_msgSendSuper2((v0 + 224), sel_init);
    v25 = sub_26F499BA4(v15, type metadata accessor for VisualTranslationModel);
    MEMORY[0x2743908C0](v25);
    if (*((*(v0 + 384) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 384) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v50 = *((*(v0 + 384) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_26F49FB18();
    }

    v26 = *(v0 + 480);
    sub_26F49FB38();
    *(v0 + 648) = *(v0 + 384);
    if (sub_26F46D23C())
    {
      v27 = *(v0 + 608);
      *(v0 + 656) = sub_26F49FBC8();
      v29 = sub_26F49FB68();

      return MEMORY[0x2822009F8](sub_26F48DEE8, v29, v28);
    }

    else
    {
      v30 = *(v0 + 592);
      sub_26F49B18C(*(v0 + 480), *(v0 + 464), type metadata accessor for VisualTranslationModel);
      v31 = sub_26F49DC88();
      v32 = sub_26F49FDC8();
      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 480);
      if (v33)
      {
        v36 = *(v0 + 464);
        v35 = *(v0 + 472);
        v37 = *(v0 + 440);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v54 = v39;
        *v38 = 136315138;
        sub_26F49B18C(v36, v35, type metadata accessor for VisualTranslationModel);
        TextDiagnosticsModel.init(model:)(v35, v37);
        *(v0 + 240) = TextDiagnosticsModel.json.getter();
        *(v0 + 248) = v40;
        MEMORY[0x2743907E0](10, 0xE100000000000000);
        v41 = *(v0 + 240);
        v42 = *(v0 + 248);
        sub_26F499BA4(v37, type metadata accessor for TextDiagnosticsModel);
        sub_26F499BA4(v36, type metadata accessor for VisualTranslationModel);
        v43 = sub_26F3B38D0(v41, v42, &v54);

        *(v38 + 4) = v43;
        _os_log_impl(&dword_26F39E000, v31, v32, "No translation for %s", v38, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v39);
        MEMORY[0x274391F70](v39, -1, -1);
        MEMORY[0x274391F70](v38, -1, -1);
      }

      else
      {
        v44 = *(v0 + 464);

        sub_26F499BA4(v44, type metadata accessor for VisualTranslationModel);
      }

      sub_26F499BA4(v34, type metadata accessor for VisualTranslationModel);
      *(v0 + 624) = *(v0 + 648);
      v45 = *(MEMORY[0x277D858B8] + 4);
      v46 = swift_task_alloc();
      *(v0 + 632) = v46;
      *v46 = v0;
      v46[1] = sub_26F48D7DC;
      v47 = *(v0 + 536);
      v48 = *(v0 + 520);
      v49 = *(v0 + 488);

      return MEMORY[0x2822005A8](v49, 0, 0, v48, v0 + 392);
    }
  }
}

uint64_t sub_26F48DEE8()
{
  v1 = v0[82];
  v2 = v0[80];
  v3 = v0[60];
  v4 = v0[54];

  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  sub_26F49F5F8();
  sub_26F49E1F8();

  return MEMORY[0x2822009F8](sub_26F48DFBC, 0, 0);
}

uint64_t sub_26F48DFBC()
{
  sub_26F499BA4(v0[60], type metadata accessor for VisualTranslationModel);
  v0[78] = v0[81];
  v1 = *(MEMORY[0x277D858B8] + 4);
  v2 = swift_task_alloc();
  v0[79] = v2;
  *v2 = v0;
  v2[1] = sub_26F48D7DC;
  v3 = v0[67];
  v4 = v0[65];
  v5 = v0[61];

  return MEMORY[0x2822005A8](v5, 0, 0, v4, v0 + 49);
}

uint64_t sub_26F48E08C()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[68];
  v6 = v0[64];
  v8 = v0[60];
  v7 = v0[61];
  v11 = v0[59];
  v12 = v0[58];
  v14 = v0[55];
  (*(v0[66] + 8))(v0[67], v0[65]);
  v13 = v0[49];

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F48E1BC(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = v4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7 = sub_26F49D968();
  *(v5 + 48) = v7;
  v8 = *(v7 - 8);
  *(v5 + 56) = v8;
  v9 = *(v8 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 81) = *a4;

  return MEMORY[0x2822009F8](sub_26F48E28C, 0, 0);
}

uint64_t sub_26F48E28C()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = *(v0 + 81);
  sub_26F49D958();
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_26F48E340;
  v3 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  v6 = *(v0 + 24);

  return sub_26F48E498(v7, v6, v4, (v0 + 80), v3);
}

uint64_t sub_26F48E340()
{
  v1 = *(*v0 + 72);
  v2 = *(*v0 + 64);
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 48);
  v7 = *v0;

  (*(v3 + 8))(v2, v4);

  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_26F48E498(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5)
{
  *(v6 + 208) = a5;
  *(v6 + 216) = v5;
  *(v6 + 192) = a2;
  *(v6 + 200) = a3;
  *(v6 + 184) = a1;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1470, &qword_26F4AB228) - 8) + 64) + 15;
  *(v6 + 224) = swift_task_alloc();
  v9 = type metadata accessor for VisualTranslationModel(0);
  *(v6 + 232) = v9;
  v10 = *(v9 - 8);
  *(v6 + 240) = v10;
  v11 = *(v10 + 64) + 15;
  *(v6 + 248) = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  *(v6 + 256) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15E8, &qword_26F4AB800);
  *(v6 + 264) = v13;
  v14 = *(v13 - 8);
  *(v6 + 272) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 280) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F8, &unk_26F4AB8B0);
  *(v6 + 288) = v16;
  v17 = *(v16 - 8);
  *(v6 + 296) = v17;
  v18 = *(v17 + 64) + 15;
  *(v6 + 304) = swift_task_alloc();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E15F0, &qword_26F4AB750);
  *(v6 + 312) = v19;
  v20 = *(v19 - 8);
  *(v6 + 320) = v20;
  v21 = *(v20 + 64) + 15;
  *(v6 + 328) = swift_task_alloc();
  v22 = sub_26F49DAB8();
  *(v6 + 336) = v22;
  v23 = *(v22 - 8);
  *(v6 + 344) = v23;
  v24 = *(v23 + 64) + 15;
  *(v6 + 352) = swift_task_alloc();
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 544) = *a4;

  return MEMORY[0x2822009F8](sub_26F48E77C, 0, 0);
}

uint64_t sub_26F48E77C()
{
  v35 = v0;
  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v1 = v0[44];
  v2 = v0[45];
  v3 = v0[42];
  v4 = v0[43];
  v6 = v0[24];
  v5 = v0[25];
  v7 = v0[23];
  v8 = sub_26F49DCA8();
  v0[46] = __swift_project_value_buffer(v8, qword_280F67ED0);
  v9 = *(v4 + 16);
  v9(v2, v6, v3);
  v9(v1, v5, v3);

  v10 = sub_26F49DC88();
  v11 = sub_26F49FDC8();
  v12 = os_log_type_enabled(v10, v11);
  v14 = v0[44];
  v13 = v0[45];
  v16 = v0[42];
  v15 = v0[43];
  v17 = v0[23];
  if (v12)
  {
    v32 = v11;
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v18 = 134218498;
    *(v18 + 4) = *(v17 + 16);

    *(v18 + 12) = 2082;
    sub_26F49AAC4(&unk_280F66398, MEMORY[0x277CC9788]);
    v19 = sub_26F4A0428();
    v21 = v20;
    v22 = *(v15 + 8);
    v22(v13, v16);
    v23 = sub_26F3B38D0(v19, v21, &v34);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2082;
    v24 = sub_26F4A0428();
    v26 = v25;
    v22(v14, v16);
    v27 = sub_26F3B38D0(v24, v26, &v34);

    *(v18 + 24) = v27;
    _os_log_impl(&dword_26F39E000, v10, v32, "Translate %ld items from source %{public}s to target %{public}s", v18, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x274391F70](v33, -1, -1);
    MEMORY[0x274391F70](v18, -1, -1);
  }

  else
  {

    v28 = *(v15 + 8);
    v28(v14, v16);
    v28(v13, v16);
  }

  v0[47] = sub_26F49FBD8();
  v0[48] = sub_26F49FBC8();
  v30 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48EAC8, v30, v29);
}

uint64_t sub_26F48EAC8()
{
  v1 = v0[48];
  v2 = v0[27];

  v3 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  v0[49] = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v0[50] = *(v2 + v3);

  return MEMORY[0x2822009F8](sub_26F48EB64, 0, 0);
}

uint64_t sub_26F48EB64()
{
  v1 = *(v0 + 400);
  v2 = *(v0 + 184);
  v3 = swift_task_alloc();
  v4 = *(v0 + 192);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  v5 = sub_26F46C864(MEMORY[0x277D84F98], sub_26F475C90, v3, v2);
  *(v0 + 408) = v5;

  v6 = sub_26F499C20(v5);
  *(v0 + 416) = v6;
  if (v6)
  {
    v7 = *(v0 + 376);

    *(v0 + 424) = sub_26F49FBC8();
    v8 = sub_26F49FB68();
    v10 = v9;
    v11 = sub_26F48ED04;
  }

  else
  {
    v12 = *(v0 + 376);
    if (*(*(v0 + 184) + 16))
    {
      v13 = *(v0 + 376);
      *(v0 + 432) = sub_26F49FBC8();
      v8 = sub_26F49FB68();
      v10 = v14;
      v11 = sub_26F48EE18;
    }

    else
    {

      *(v0 + 520) = sub_26F49FBC8();
      v8 = sub_26F49FB68();
      v10 = v15;
      v11 = sub_26F48FB98;
    }
  }

  return MEMORY[0x2822009F8](v11, v8, v10);
}

uint64_t sub_26F48ED04()
{
  v2 = v0[52];
  v1 = v0[53];
  v3 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[22] = v2;

  sub_26F49DDB8();
  v5 = v0[44];
  v4 = v0[45];
  v6 = v0[41];
  v7 = v0[38];
  v8 = v0[35];
  v10 = v0[31];
  v9 = v0[32];
  v11 = v0[28];

  v12 = v0[1];

  return v12();
}

uint64_t sub_26F48EE18()
{
  v1 = v0[54];
  v2 = v0[51];
  v3 = v0[27];

  sub_26F48B22C(v2);

  return MEMORY[0x2822009F8](sub_26F48EE98, 0, 0);
}

uint64_t sub_26F48EE98()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1518, &qword_26F4AB488);
  v3 = *(MEMORY[0x277D858E8] + 4);
  v4 = swift_task_alloc();
  *(v0 + 440) = v4;
  *v4 = v0;
  v4[1] = sub_26F48EF94;
  v5 = *(v0 + 216);

  return MEMORY[0x282200600](v0 + 152, v1, v2, 0, 0, &unk_26F4ABA28, v5, v1);
}

uint64_t sub_26F48EF94()
{
  v1 = *(*v0 + 440);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_26F48F090, 0, 0);
}

uint64_t sub_26F48F090()
{
  v1 = v0[47];
  v0[56] = v0[19];
  v0[57] = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48F124, v3, v2);
}

uint64_t sub_26F48F124()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[20] = v2;

  sub_26F49DDB8();

  return MEMORY[0x2822009F8](sub_26F48F1E4, 0, 0);
}

uint64_t sub_26F48F1E4()
{
  v1 = v0[47];
  v0[58] = *(v0[27] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels);
  v0[59] = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48F284, v3, v2);
}

uint64_t sub_26F48F284()
{
  v1 = v0[59];
  v2 = v0[49];
  v3 = v0[27];

  v0[60] = *(v3 + v2);

  return MEMORY[0x2822009F8](sub_26F48F304, 0, 0);
}

uint64_t sub_26F48F304()
{
  v10 = v0;
  v1 = v0[60];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[30];
    v4 = sub_26F497184(*(v1 + 16), 0, &qword_2806E0120, &qword_26F4A6650, type metadata accessor for VisualTranslationModel);
    sub_26F499820(&v9, v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2, v1);
    v6 = v5;
    sub_26F3C8E34();
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v4 = MEMORY[0x277D84F90];
LABEL_5:
  v0[61] = v4;
  v7 = v0[58];

  return MEMORY[0x2822009F8](sub_26F48F40C, v7, 0);
}

uint64_t sub_26F48F40C()
{
  v1 = v0[58];
  v0[62] = sub_26F4811D4(v0[61]);

  return MEMORY[0x2822009F8](sub_26F48F488, 0, 0);
}

uint64_t sub_26F48F488()
{
  v1 = *(v0 + 496);
  v17 = *(v0 + 544);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 280);
  v19 = *(v0 + 288);
  v20 = *(v0 + 328);
  v5 = *(v0 + 272);
  v18 = *(v0 + 264);
  v6 = *(v0 + 232);
  v8 = *(v0 + 208);
  v7 = *(v0 + 216);
  v9 = sub_26F48A0C8();
  v10 = swift_task_alloc();
  *(v10 + 16) = v9;
  *(v10 + 24) = v1;
  *(v10 + 32) = v17;
  *(v10 + 40) = v8;
  (*(v5 + 104))(v4, *MEMORY[0x277D858A0], v18);
  sub_26F49FD08();

  sub_26F49FC58();
  (*(v3 + 8))(v2, v19);
  v11 = *(MEMORY[0x277D858B8] + 4);
  v12 = swift_task_alloc();
  *(v0 + 504) = v12;
  *v12 = v0;
  v12[1] = sub_26F48F634;
  v13 = *(v0 + 328);
  v14 = *(v0 + 312);
  v15 = *(v0 + 256);

  return MEMORY[0x2822005A8](v15, 0, 0, v14, v0 + 168);
}

uint64_t sub_26F48F634()
{
  v2 = *(*v1 + 504);
  v5 = *v1;

  if (v0)
  {
    v3 = sub_26F48FCF4;
  }

  else
  {
    v3 = sub_26F48F744;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_26F48F744()
{
  v1 = v0[32];
  if ((*(v0[30] + 48))(v1, 1, v0[29]) == 1)
  {
    (*(v0[40] + 8))(v0[41], v0[39]);
    v3 = v0[44];
    v2 = v0[45];
    v4 = v0[41];
    v5 = v0[38];
    v6 = v0[35];
    v8 = v0[31];
    v7 = v0[32];
    v9 = v0[28];

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_26F49C978(v1, v0[31], type metadata accessor for VisualTranslationModel);
    if (sub_26F46D23C())
    {
      v12 = v0[47];
      v0[64] = sub_26F49FBC8();
      v14 = sub_26F49FB68();

      return MEMORY[0x2822009F8](sub_26F48F994, v14, v13);
    }

    else
    {
      sub_26F499BA4(v0[31], type metadata accessor for VisualTranslationModel);
      v15 = *(MEMORY[0x277D858B8] + 4);
      v16 = swift_task_alloc();
      v0[63] = v16;
      *v16 = v0;
      v16[1] = sub_26F48F634;
      v17 = v0[41];
      v18 = v0[39];
      v19 = v0[32];

      return MEMORY[0x2822005A8](v19, 0, 0, v18, v0 + 21);
    }
  }
}

uint64_t sub_26F48F994()
{
  v1 = v0[64];
  v2 = v0[58];
  v3 = v0[31];
  v4 = v0[27];

  sub_26F48A444(v3);

  return MEMORY[0x2822009F8](sub_26F48FA18, v2, 0);
}

uint64_t sub_26F48FA18()
{
  v1 = v0[58];
  v2 = v0[31];
  v3 = v0[28];
  swift_beginAccess();
  sub_26F498FE8(v2, v3);
  sub_26F3B6B4C(v3, &qword_2806E1470, &qword_26F4AB228);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F48FAD0, 0, 0);
}

uint64_t sub_26F48FAD0()
{
  sub_26F499BA4(v0[31], type metadata accessor for VisualTranslationModel);
  v1 = *(MEMORY[0x277D858B8] + 4);
  v2 = swift_task_alloc();
  v0[63] = v2;
  *v2 = v0;
  v2[1] = sub_26F48F634;
  v3 = v0[41];
  v4 = v0[39];
  v5 = v0[32];

  return MEMORY[0x2822005A8](v5, 0, 0, v4, v0 + 21);
}

uint64_t sub_26F48FB98()
{
  v1 = v0[65];
  v2 = v0[49];
  v3 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_26F49DD98();
  v6 = *v5;
  *v5 = MEMORY[0x277D84F90];

  v4(v0 + 6, 0);

  v7 = *(v3 + v2);
  *(v3 + v2) = MEMORY[0x277D84F98];

  v9 = v0[44];
  v8 = v0[45];
  v10 = v0[41];
  v11 = v0[38];
  v12 = v0[35];
  v14 = v0[31];
  v13 = v0[32];
  v15 = v0[28];

  v16 = v0[1];

  return v16();
}

uint64_t sub_26F48FCF4()
{
  v1 = v0[46];
  (*(v0[40] + 8))(v0[41], v0[39]);
  v2 = v0[21];
  v0[66] = v2;
  v3 = v2;
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDD8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_26F49D7E8();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_26F39E000, v4, v5, "Failed to translate in stream: %@", v6, 0xCu);
    sub_26F3B6B4C(v7, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v7, -1, -1);
    MEMORY[0x274391F70](v6, -1, -1);
  }

  v9 = v0[58];

  return MEMORY[0x2822009F8](sub_26F48FE58, v9, 0);
}

uint64_t sub_26F48FE58()
{
  v1 = *(v0 + 464);
  swift_beginAccess();
  v2 = *(v1 + 112);
  *(v1 + 112) = MEMORY[0x277D84FA0];

  return MEMORY[0x2822009F8](sub_26F48FEE4, 0, 0);
}

uint64_t sub_26F48FEE4()
{
  v1 = *(v0 + 376);
  *(v0 + 536) = sub_26F49FBC8();
  v3 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F48FF70, v3, v2);
}

uint64_t sub_26F48FF70()
{
  v1 = v0[67];
  v2 = v0[49];
  v3 = v0[27];

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = sub_26F49DD98();
  v6 = *v5;
  *v5 = MEMORY[0x277D84F90];

  v4(v0 + 2, 0);

  v7 = *(v3 + v2);
  *(v3 + v2) = MEMORY[0x277D84F98];

  return MEMORY[0x2822009F8](sub_26F490078, 0, 0);
}

uint64_t sub_26F490078()
{
  v2 = *(v0 + 352);
  v1 = *(v0 + 360);
  v3 = *(v0 + 328);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v7 = *(v0 + 248);
  v6 = *(v0 + 256);
  v8 = *(v0 + 224);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_26F490144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[23] = a2;
  v3[24] = a3;
  v3[22] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1740, &qword_26F4ABF98) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v3[26] = v5;
  v6 = *(v5 - 8);
  v3[27] = v6;
  v7 = *(v6 + 64) + 15;
  v3[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1748, &qword_26F4ABFA0);
  v3[29] = v8;
  v9 = *(v8 - 8);
  v3[30] = v9;
  v10 = *(v9 + 64) + 15;
  v3[31] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0) - 8) + 64) + 15;
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v12 = sub_26F49D968();
  v3[36] = v12;
  v13 = *(v12 - 8);
  v3[37] = v13;
  v14 = *(v13 + 64) + 15;
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v3[40] = v15;
  v16 = *(v15 - 8);
  v3[41] = v16;
  v3[42] = *(v16 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();
  v17 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v3[46] = v17;
  v3[47] = *(v17 + 64);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F49046C, 0, 0);
}

uint64_t sub_26F49046C()
{
  v0[19] = MEMORY[0x277D84FA0];
  v0[50] = sub_26F49FBD8();
  v0[51] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F490510, v2, v1);
}

uint64_t sub_26F490510()
{
  v1 = v0[51];
  v2 = v0[24];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v0[52] = v0[20];

  return MEMORY[0x2822009F8](sub_26F4905D0, 0, 0);
}

uint64_t sub_26F4905D0()
{
  v1 = *(v0 + 416);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 296);
    v37 = **(v0 + 184);
    v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v6 = v1 + v5;
    v34 = (v4 + 8);
    v35 = (v4 + 16);
    v36 = v5;
    v32 = *(v3 + 72);
    v33 = (*(v0 + 376) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
    while (1)
    {
      v39 = v6;
      v40 = v2;
      v10 = *(v0 + 384);
      v11 = *(v0 + 392);
      v12 = *(v0 + 304);
      v13 = *(v0 + 312);
      v15 = *(v0 + 280);
      v14 = *(v0 + 288);
      v16 = *(v0 + 272);
      v38 = *(v0 + 192);
      sub_26F49B18C(v6, v11, type metadata accessor for VisualTranslationModel);
      (*v35)(v12, v11, v14);
      sub_26F485190(v13, v12);
      (*v34)(v13, v14);
      v17 = sub_26F49FC08();
      v18 = *(v17 - 8);
      (*(v18 + 56))(v15, 1, 1, v17);
      sub_26F49C978(v11, v10, type metadata accessor for VisualTranslationModel);
      v19 = swift_allocObject();
      *(v19 + 16) = 0;
      v20 = (v19 + 16);
      *(v19 + 24) = 0;
      sub_26F49C978(v10, v19 + v36, type metadata accessor for VisualTranslationModel);
      *(v19 + v33) = v38;
      sub_26F3B8DD4(v15, v16, &unk_2806E0710, &qword_26F4A60A0);
      LODWORD(v14) = (*(v18 + 48))(v16, 1, v17);

      v21 = *(v0 + 272);
      if (v14 == 1)
      {
        sub_26F3B6B4C(*(v0 + 272), &unk_2806E0710, &qword_26F4A60A0);
        if (*v20)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v18 + 8))(v21, v17);
        if (*v20)
        {
LABEL_9:
          v24 = *(v19 + 24);
          swift_getObjectType();
          swift_unknownObjectRetain();
          v22 = sub_26F49FB68();
          v23 = v25;
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      v22 = 0;
      v23 = 0;
LABEL_10:
      v26 = swift_allocObject();
      *(v26 + 16) = &unk_26F4ABFC0;
      *(v26 + 24) = v19;

      if (v23 | v22)
      {
        v7 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v22;
        *(v0 + 40) = v23;
      }

      else
      {
        v7 = 0;
      }

      v8 = *(v0 + 280);
      v9 = *(v0 + 208);
      *(v0 + 80) = 1;
      *(v0 + 88) = v7;
      *(v0 + 96) = v37;
      swift_task_create();

      sub_26F3B6B4C(v8, &unk_2806E0710, &qword_26F4A60A0);
      v6 = v39 + v32;
      v2 = v40 - 1;
      if (v40 == 1)
      {
        v27 = *(v0 + 416);
        break;
      }
    }
  }

  v28 = *(v0 + 400);
  *(v0 + 424) = sub_26F49FBC8();
  v30 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4909E0, v30, v29);
}

uint64_t sub_26F4909E0()
{
  v1 = v0[53];
  v2 = v0[24];

  v3 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v0[54] = *(v2 + v3);

  return MEMORY[0x2822009F8](sub_26F490A78, 0, 0);
}

uint64_t sub_26F490A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = *(v3 + 432);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v68 = *(v3 + 432);
  v9 = -1 << *(v68 + 32);
  v66 = *(v3 + 368);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v62 = *(v3 + 328);
  v65 = *(v3 + 320);
  v12 = (63 - v9) >> 6;
  v63 = v12;
  v64 = *(v3 + 296);
  v67 = v7;
  if (v11)
  {
    while (1)
    {
LABEL_9:
      v15 = *(v3 + 352);
      v14 = *(v3 + 360);
      v16 = *(v3 + 288);
      v17 = __clz(__rbit64(v11)) | (v4 << 6);
      v70 = *(v64 + 72);
      v69 = *(v64 + 16);
      v69(v14, *(v68 + 48) + v70 * v17, v16);
      v18 = *(v68 + 56) + *(v66 + 72) * v17;
      v19 = *(v65 + 48);
      sub_26F49B18C(v18, v14 + v19, type metadata accessor for VisualTranslationModel);
      v20 = *(v65 + 48);
      (*(v64 + 32))(v15, v14, v16);
      sub_26F49C978(v14 + v19, v15 + v20, type metadata accessor for VisualTranslationModel);
      v21 = *(v3 + 152);
      if (*(v21 + 16))
      {
        v22 = *(v3 + 352);
        v23 = *(v3 + 288);
        v24 = *(v21 + 40);
        sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0]);
        v25 = sub_26F49F818();
        v26 = -1 << *(v21 + 32);
        v27 = v25 & ~v26;
        if ((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
        {
          v28 = ~v26;
          do
          {
            v29 = *(v3 + 352);
            v30 = *(v3 + 312);
            v31 = *(v3 + 288);
            v69(v30, *(v21 + 48) + v27 * v70, v31);
            sub_26F49AAC4(&qword_2806E1128, MEMORY[0x277CC95F0]);
            LOBYTE(v29) = sub_26F49F868();
            (*(v64 + 8))(v30, v31);
            if (v29)
            {
              goto LABEL_23;
            }

            v27 = (v27 + 1) & v28;
          }

          while (((*(v21 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
        }
      }

      v33 = *(v3 + 344);
      v32 = *(v3 + 352);
      v34 = *(v3 + 336);
      v35 = *(v3 + 264);
      v71 = *(v3 + 256);
      v36 = sub_26F49FC08();
      v37 = *(v36 - 8);
      (*(v37 + 56))(v35, 1, 1, v36);
      sub_26F3B8DD4(v32, v33, &qword_2806E1750, &qword_26F4ABFA8);
      v38 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v39 = swift_allocObject();
      *(v39 + 16) = 0;
      v40 = (v39 + 16);
      *(v39 + 24) = 0;
      sub_26F3BBAEC(v33, v39 + v38, &qword_2806E1750, &qword_26F4ABFA8);
      sub_26F3B8DD4(v35, v71, &unk_2806E0710, &qword_26F4A60A0);
      v41 = (*(v37 + 48))(v71, 1, v36);
      v42 = *(v3 + 256);
      if (v41 == 1)
      {
        sub_26F3B6B4C(*(v3 + 256), &unk_2806E0710, &qword_26F4A60A0);
        if (!*v40)
        {
          goto LABEL_18;
        }
      }

      else
      {
        sub_26F49FBF8();
        (*(v37 + 8))(v42, v36);
        if (!*v40)
        {
LABEL_18:
          v44 = 0;
          v46 = 0;
          goto LABEL_19;
        }
      }

      v43 = *(v39 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v44 = sub_26F49FB68();
      v46 = v45;
      swift_unknownObjectRelease();
LABEL_19:
      v47 = **(v3 + 184);
      v48 = swift_allocObject();
      *(v48 + 16) = &unk_26F4ABFD8;
      *(v48 + 24) = v39;

      if (v46 | v44)
      {
        v49 = v3 + 48;
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
        *(v3 + 64) = v44;
        *(v3 + 72) = v46;
      }

      else
      {
        v49 = 0;
      }

      v50 = *(v3 + 264);
      v51 = *(v3 + 208);
      *(v3 + 128) = 1;
      *(v3 + 136) = v49;
      *(v3 + 144) = v47;
      swift_task_create();

      sub_26F3B6B4C(v50, &unk_2806E0710, &qword_26F4A60A0);
LABEL_23:
      v11 &= v11 - 1;
      a1 = sub_26F3B6B4C(*(v3 + 352), &qword_2806E1750, &qword_26F4ABFA8);
      v7 = v67;
      v12 = v63;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return MEMORY[0x282200308](a1, a2, a3);
    }

    if (v13 >= v12)
    {
      break;
    }

    v11 = *(v7 + 8 * v13);
    ++v4;
    if (v11)
    {
      v4 = v13;
      goto LABEL_9;
    }
  }

  v52 = *(v3 + 432);
  v53 = *(v3 + 248);
  v54 = *(v3 + 208);
  v55 = *(v3 + 184);

  v56 = *v55;
  *(v3 + 168) = MEMORY[0x277D84F90];
  sub_26F49FB98();
  v57 = sub_26F3B18CC(&qword_2806E1758, &qword_2806E1748, &qword_26F4ABFA0);
  v58 = *(MEMORY[0x277D856D0] + 4);
  v59 = swift_task_alloc();
  *(v3 + 440) = v59;
  *v59 = v3;
  v59[1] = sub_26F4910EC;
  v60 = *(v3 + 248);
  a2 = *(v3 + 232);
  a1 = *(v3 + 200);
  a3 = v57;

  return MEMORY[0x282200308](a1, a2, a3);
}

uint64_t sub_26F4910EC()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v10 = *v1;

  if (v0)
  {
    v5 = v2[30];
    v4 = v2[31];
    v6 = v2[29];

    (*(v5 + 8))(v4, v6);
    v7 = v2[21];

    v8 = j__CGPointMake;
  }

  else
  {
    v8 = sub_26F49123C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_26F49123C()
{
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    v3 = v0[48];
    v2 = v0[49];
    v5 = v0[44];
    v4 = v0[45];
    v6 = v0[43];
    v7 = v0[39];
    v14 = v0[38];
    v15 = v0[35];
    v16 = v0[34];
    v17 = v0[33];
    v18 = v0[32];
    v19 = v0[28];
    v8 = v0[22];
    (*(v0[30] + 8))(v0[31], v0[29]);
    sub_26F3B6B4C(v1, &qword_2806E1740, &qword_26F4ABF98);
    *v8 = v0[21];
    v9 = v0[19];

    v10 = v0[1];

    return v10();
  }

  else
  {
    sub_26F3BBAEC(v1, v0[28], &qword_2806E1660, &qword_26F4ABA18);
    v12 = swift_task_alloc();
    v0[56] = v12;
    *v12 = v0;
    v12[1] = sub_26F491454;
    v13 = v0[28];

    return sub_26F491B2C((v0 + 21), v13);
  }
}

uint64_t sub_26F491454()
{
  v2 = *v1;
  v3 = *(*v1 + 448);
  v11 = *v1;

  if (v0)
  {
    v5 = v2[30];
    v4 = v2[31];
    v7 = v2[28];
    v6 = v2[29];

    sub_26F3B6B4C(v7, &qword_2806E1660, &qword_26F4ABA18);
    (*(v5 + 8))(v4, v6);
    v8 = v2[21];

    v9 = CGPointMake;
  }

  else
  {
    sub_26F3B6B4C(v2[28], &qword_2806E1660, &qword_26F4ABA18);
    v9 = sub_26F4915D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_26F4915D4()
{
  v1 = sub_26F3B18CC(&qword_2806E1758, &qword_2806E1748, &qword_26F4ABFA0);
  v2 = *(MEMORY[0x277D856D0] + 4);
  v3 = swift_task_alloc();
  v0[55] = v3;
  *v3 = v0;
  v3[1] = sub_26F4910EC;
  v4 = v0[31];
  v5 = v0[29];
  v6 = v0[25];

  return MEMORY[0x282200308](v6, v5, v1);
}

uint64_t sub_26F4916AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x2822009F8](sub_26F4916D0, 0, 0);
}

uint64_t sub_26F4916D0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  *(v0 + 104) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18) + 48);
  sub_26F49B18C(v2, v1, type metadata accessor for VisualTranslationModel);
  v3 = type metadata accessor for VisualTranslationModel(0);
  *(v0 + 64) = v3;
  v4 = *(v3 - 8);
  *(v0 + 72) = v4;
  v5 = *(v4 + 56);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 0, 1, v3);
  sub_26F49FBD8();
  *(v0 + 96) = sub_26F49FBC8();
  v7 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F491808, v7, v6);
}

uint64_t sub_26F491808()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  v3 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (*(v4 + 16))
  {
    v5 = *(v0 + 48);

    v6 = sub_26F45FF48(v5);
    if (v7)
    {
      sub_26F49B18C(*(v4 + 56) + *(*(v0 + 72) + 72) * v6, *(v0 + 40) + *(v0 + 104), type metadata accessor for VisualTranslationModel);
      v8 = 0;
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 88);
  (*(v0 + 80))(*(v0 + 40) + *(v0 + 104), v8, 1, *(v0 + 64));
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_26F49191C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v4[4] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4919BC, 0, 0);
}

uint64_t sub_26F4919BC()
{
  v2 = v0[4];
  v1 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18) + 48);
  v6 = type metadata accessor for VisualTranslationModel(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_26F3B8DD4(v3, v1, &qword_2806E1750, &qword_26F4ABFA8);
  sub_26F49C978(v1 + *(v2 + 48), v4 + v5, type metadata accessor for VisualTranslationModel);
  v7(v4 + v5, 0, 1, v6);
  v8 = sub_26F49D968();
  (*(*(v8 - 8) + 8))(v1, v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_26F491B2C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for VisualTranslationModel(0);
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1660, &qword_26F4ABA18);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220) - 8) + 64) + 15;
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F491CA8, 0, 0);
}

uint64_t sub_26F491CA8()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 40);
  v63 = *(v0 + 104);
  v64 = *(v0 + 32);
  v6 = *(v0 + 24);
  sub_26F3B8DD4(v6, v3, &qword_2806E1660, &qword_26F4ABA18);
  v7 = *(v4 + 48);
  sub_26F3BBAEC(v3, v1, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v3 + v7, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B8DD4(v6, v3, &qword_2806E1660, &qword_26F4ABA18);
  sub_26F3BBAEC(v3 + *(v4 + 48), v2, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v3, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B8DD4(v2, v63, &qword_2806E0908, &qword_26F4AB220);
  v8 = *(v5 + 48);
  v9 = v8(v63, 1, v64);
  v10 = *(v0 + 120);
  if (v9 == 1)
  {
    v11 = *(v0 + 104);
    sub_26F3B6B4C(*(v0 + 112), &qword_2806E0908, &qword_26F4AB220);
    sub_26F3B6B4C(v10, &qword_2806E0908, &qword_26F4AB220);
    sub_26F3B6B4C(v11, &qword_2806E0908, &qword_26F4AB220);
    goto LABEL_21;
  }

  v12 = *(v0 + 96);
  v13 = *(v0 + 32);
  sub_26F49C978(*(v0 + 104), *(v0 + 72), type metadata accessor for VisualTranslationModel);
  sub_26F3B8DD4(v10, v12, &qword_2806E0908, &qword_26F4AB220);
  v14 = v8(v12, 1, v13);
  v15 = *(v0 + 96);
  if (v14 == 1)
  {
    sub_26F3B6B4C(v15, &qword_2806E0908, &qword_26F4AB220);
  }

  else
  {
    v16 = *(v0 + 72);
    sub_26F49C978(v15, *(v0 + 64), type metadata accessor for VisualTranslationModel);
    if ((sub_26F46D23C() & 1) == 0)
    {
      v28 = *(v0 + 64);
      v29 = *(v0 + 72);
      v30 = *(v0 + 32);
      v31 = *(v30 + 24);
      v32 = (v29 + *(v30 + 20));
      v75 = *(v32 + 20);
      v73 = v32[8];
      v74 = v32[9];
      v69 = v32[4];
      v70 = v32[5];
      v71 = v32[6];
      v72 = v32[7];
      v65 = *v32;
      v66 = v32[1];
      v67 = v32[2];
      v68 = v32[3];
      sub_26F49D8F8();
      v34 = *(v0 + 56);
      v33 = *(v0 + 64);
      if (v35 <= 0.0)
      {
        v36 = *(v0 + 32);
        v37 = sub_26F49D968();
        (*(*(v37 - 8) + 16))(v34, v33, v37);
        v38 = *(v30 + 24);
        v39 = sub_26F49D918();
        (*(*(v39 - 8) + 16))(v34 + v38, v29 + v31, v39);
        v40 = *(v33 + v36[7]);
        v41 = *(v33 + v36[8]);
        v42 = *(v33 + v36[9]);
        v43 = *(v33 + v36[10]);
        v44 = v34 + *(v30 + 20);
        *v44 = v65;
        *(v44 + 16) = v66;
        *(v44 + 64) = v69;
        *(v44 + 80) = v70;
        *(v44 + 32) = v67;
        *(v44 + 48) = v68;
        *(v44 + 160) = v75;
        *(v44 + 128) = v73;
        *(v44 + 144) = v74;
        *(v44 + 96) = v71;
        *(v44 + 112) = v72;
        *(v34 + v36[7]) = v40;
        *(v34 + v36[8]) = v41;
        *(v34 + v36[9]) = v42;
        *(v34 + v36[10]) = v43;
        *(v34 + v36[11]) = 0;
      }

      else
      {
        sub_26F49B18C(*(v0 + 64), *(v0 + 56), type metadata accessor for VisualTranslationModel);
      }

      v18 = **(v0 + 16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_26F44650C(0, v18[2] + 1, 1, v18);
      }

      v46 = v18[2];
      v45 = v18[3];
      if (v46 >= v45 >> 1)
      {
        v18 = sub_26F44650C(v45 > 1, v46 + 1, 1, v18);
      }

      v48 = *(v0 + 112);
      v47 = *(v0 + 120);
      v49 = *(v0 + 72);
      v50 = *(v0 + 56);
      v51 = *(v0 + 40);
      v25 = *(v0 + 16);
      sub_26F499BA4(*(v0 + 64), type metadata accessor for VisualTranslationModel);
      sub_26F499BA4(v49, type metadata accessor for VisualTranslationModel);
      sub_26F3B6B4C(v48, &qword_2806E0908, &qword_26F4AB220);
      sub_26F3B6B4C(v47, &qword_2806E0908, &qword_26F4AB220);
      v18[2] = v46 + 1;
      v26 = v18 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v46;
      v27 = v50;
      goto LABEL_20;
    }

    sub_26F499BA4(*(v0 + 64), type metadata accessor for VisualTranslationModel);
  }

  v17 = *(v0 + 16);
  sub_26F49B18C(*(v0 + 72), *(v0 + 48), type metadata accessor for VisualTranslationModel);
  v18 = *v17;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_26F44650C(0, v18[2] + 1, 1, v18);
  }

  v20 = v18[2];
  v19 = v18[3];
  if (v20 >= v19 >> 1)
  {
    v18 = sub_26F44650C(v19 > 1, v20 + 1, 1, v18);
  }

  v22 = *(v0 + 112);
  v21 = *(v0 + 120);
  v24 = *(v0 + 40);
  v23 = *(v0 + 48);
  v25 = *(v0 + 16);
  sub_26F499BA4(*(v0 + 72), type metadata accessor for VisualTranslationModel);
  sub_26F3B6B4C(v22, &qword_2806E0908, &qword_26F4AB220);
  sub_26F3B6B4C(v21, &qword_2806E0908, &qword_26F4AB220);
  v18[2] = v20 + 1;
  v26 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v20;
  v27 = v23;
LABEL_20:
  sub_26F49C978(v27, v26, type metadata accessor for VisualTranslationModel);
  *v25 = v18;
LABEL_21:
  v53 = *(v0 + 112);
  v52 = *(v0 + 120);
  v55 = *(v0 + 96);
  v54 = *(v0 + 104);
  v56 = *(v0 + 88);
  v58 = *(v0 + 64);
  v57 = *(v0 + 72);
  v60 = *(v0 + 48);
  v59 = *(v0 + 56);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t sub_26F492310(double a1)
{
  v2 = v1;
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  sub_26F49DD48();
  sub_26F49DD58();

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (a1 <= 0.0)
  {
    a1 = COERCE_DOUBLE(1);
  }

  result = swift_beginAccess();
  *(v2 + v4) = a1;
  return result;
}

uint64_t sub_26F4923DC()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels);

  v4 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels);

  v5 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v5, v6);
  v7(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent, v6);
  v8 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  sub_26F3ACE98(*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler));
  v9 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream);

  return sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest, &qword_2806E1650, &qword_26F4AB9F8);
}

uint64_t VisualTranslationObservable.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__popoverAttachmentAnchor;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1208, &qword_26F4AA5D0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__errorModel;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E11F8, &qword_26F4AA5C0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel, &qword_2806E1200, &qword_26F4AA5C8);
  v5 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__models;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1640, &qword_26F4AB938);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_detectedModels);

  v8 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_translationInProgressModels);

  v9 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__debugMenuVisible;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable__showFirstUseConsent, v10);
  v12 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  sub_26F3ACE98(*(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler));
  v13 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable____lazy_storage___stream);

  sub_26F3B6B4C(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_savedTranslationRequest, &qword_2806E1650, &qword_26F4AB9F8);
  return v0;
}

uint64_t VisualTranslationObservable.__deallocating_deinit()
{
  VisualTranslationObservable.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t SecureHostingController.init(rootView:)(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_26F499A84(a1);
  (*(*(*(v3 + class metadata base offset for SecureHostingController) - 8) + 8))(a1);
  return v4;
}

void *SecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v4 = *((*MEMORY[0x277D85000] & *v2) + class metadata base offset for SecureHostingController);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v13 - v8, v7);
  v9 = sub_26F49E848();
  v10 = *(v5 + 8);
  v11 = v9;
  v10(a2, v4);
  if (v9)
  {
  }

  return v9;
}

id SecureHostingController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id SecureHostingController.init(coder:)(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + class metadata base offset for SecureHostingController);
  v5 = *(v3 + class metadata base offset for SecureHostingController + 8);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SecureHostingController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithCoder_, a1);

  if (v6)
  {
  }

  return v6;
}

id SecureHostingController.__deallocating_deinit()
{
  v1 = *MEMORY[0x277D85000] & *v0;
  v2 = *(v1 + class metadata base offset for SecureHostingController);
  v3 = *(v1 + class metadata base offset for SecureHostingController + 8);
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SecureHostingController();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

Swift::Void __swiftcall VisualTranslationViewBridge.setPresentationAnchor(rect:contentRect:)(__C::CGRect rect, __C::CGRect contentRect)
{
  height = contentRect.size.height;
  width = contentRect.size.width;
  y = contentRect.origin.y;
  x = contentRect.origin.x;
  v7 = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v18 - v13;
  v15 = sub_26F49FC08();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0.0;
  v16[3] = 0.0;
  *(v16 + 4) = v2;
  v16[5] = v10;
  v16[6] = v9;
  v16[7] = v8;
  v16[8] = v7;
  v16[9] = x;
  v16[10] = y;
  v16[11] = width;
  v16[12] = height;
  v17 = v2;
  sub_26F40570C(0, 0, v14, &unk_26F4ABA40, v16);
}

uint64_t sub_26F492C9C(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(v12 + 72) = a7;
  *(v12 + 80) = a8;
  *(v12 + 56) = a5;
  *(v12 + 64) = a6;
  *(v12 + 40) = a3;
  *(v12 + 48) = a4;
  *(v12 + 24) = a1;
  *(v12 + 32) = a2;
  *(v12 + 16) = a12;
  return MEMORY[0x2822009F8](sub_26F492CCC, 0, 0);
}

uint64_t sub_26F492CCC()
{
  v0[11] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  sub_26F49FBD8();
  v0[12] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F492D74, v2, v1);
}

uint64_t sub_26F492D74()
{
  v2 = *(v0 + 11);
  v1 = *(v0 + 12);
  v4 = v0[9];
  v3 = v0[10];
  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];

  sub_26F4685E0(v10, v9, v8, v7, v6, v5, v4, v3);
  v11 = *(v0 + 1);

  return v11();
}

uint64_t sub_26F492F80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_26F492FA4, 0, 0);
}

uint64_t sub_26F492FA4()
{
  v1 = v0[4];
  v0[5] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  if (v1)
  {
    v2 = v0[3];
    sub_26F45A980();
    v3 = swift_allocError();
    *v4 = v2;
    *(v4 + 8) = v1;
  }

  else
  {
    v3 = 0;
  }

  v0[6] = v3;
  sub_26F49FBD8();

  v0[7] = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4930A0, v6, v5);
}

uint64_t sub_26F4930A0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];

  sub_26F468204(v2);

  v4 = v0[1];

  return v4();
}

Swift::Void __swiftcall VisualTranslationViewBridge.dismissErrorUI()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v8 - v3;
  v5 = sub_26F49FC08();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;
  v7 = v0;
  sub_26F40570C(0, 0, v4, &unk_26F4ABA50, v6);
}

uint64_t sub_26F493218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8) - 8) + 64) + 15;
  v4[3] = swift_task_alloc();
  v4[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4932C0, 0, 0);
}

uint64_t sub_26F4932C0()
{
  v0[5] = *(v0[2] + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  sub_26F49FBD8();
  v0[6] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F493368, v2, v1);
}

uint64_t sub_26F493368()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];

  v5 = type metadata accessor for TranslationUnavailableModel(0);
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3B8DD4(v3, v4, &qword_2806E1200, &qword_26F4AA5C8);

  sub_26F49DDB8();
  sub_26F3B6B4C(v3, &qword_2806E1200, &qword_26F4AA5C8);

  v6 = v0[1];

  return v6();
}

uint64_t VisualTranslationViewBridge.dismissHandler.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_26F3ACF68(v3);
  return v3;
}

uint64_t VisualTranslationViewBridge.dismissHandler.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_26F3ACE98(v6);
}

uint64_t sub_26F493804@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_26F435DA4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_26F3ACF68(v4);
}

uint64_t sub_26F4938A4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_26F435D9C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_26F3ACF68(v3);
  return sub_26F3ACE98(v8);
}

id VisualTranslationViewBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

char *VisualTranslationViewBridge.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable;
  v3 = type metadata accessor for VisualTranslationObservable(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  *&v0[v2] = VisualTranslationObservable.init()();
  v6 = &v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler];
  *v6 = 0;
  v6[1] = 0;
  *&v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController] = 0;
  v0[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_optimizedForExtendedExperience] = 0;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v14, sel_init);
  v8 = *&v7[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = (v8 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v11 = *(v8 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v12 = *(v8 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  *v10 = sub_26F49D084;
  v10[1] = v9;

  sub_26F3ACE98(v11);

  return v7;
}

char *VisualTranslationViewBridge.init(optimizedForExtendedExperience:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable;
  v5 = type metadata accessor for VisualTranslationObservable(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *&v1[v4] = VisualTranslationObservable.init()();
  v8 = &v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler];
  *v8 = 0;
  v8[1] = 0;
  *&v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController] = 0;
  v1[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_optimizedForExtendedExperience] = a1;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = *&v9[OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable];
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = (v10 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v13 = *(v10 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler);
  v14 = *(v10 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_dismissHandler + 8);
  *v12 = sub_26F49ACE4;
  v12[1] = v11;

  sub_26F3ACE98(v13);

  return v9;
}

void sub_26F493CB4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_dismissHandler;
    swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);
      sub_26F3ACF68(v3);

      v3();
      sub_26F3ACE98(v3);
    }

    else
    {
    }
  }
}

id sub_26F493D60()
{
  v1 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController;
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge____lazy_storage___hostingController);
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_optimizedForExtendedExperience);
    v5 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    type metadata accessor for VisualTranslationObservable(0);
    sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);

    sub_26F49E288();
    v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1738, &qword_26F4ABF90));
    v7 = v0;
    v8 = sub_26F49E858();
    v9 = *(v0 + v1);
    *(v7 + v1) = v8;
    v3 = v8;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

uint64_t VisualTranslationView.init(observable:options:systemTranslationDismissHandler:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  result = sub_26F49E288();
  *a4 = result;
  a4[1] = v9;
  a4[2] = v7;
  a4[3] = a2;
  a4[4] = a3;
  return result;
}

id VisualTranslationViewBridge.view.getter()
{
  v0 = sub_26F493D60();
  v1 = [v0 view];

  return v1;
}

uint64_t VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a1;
  v31 = a4;
  v32 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v29 - v16;
  v18 = sub_26F49FC08();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F3B8DD4(a2, v13, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(a3, v10, &qword_2806DEFD8, &qword_26F4A3670);
  v20 = *(v8 + 80);
  v21 = (v20 + 48) & ~v20;
  v22 = (v9 + v20 + v21) & ~v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v24 = v30;
  v23[4] = v19;
  v23[5] = v24;
  sub_26F3BBAEC(v13, v23 + v21, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3BBAEC(v10, v23 + v22, &qword_2806DEFD8, &qword_26F4A3670);
  v25 = (v23 + ((v9 + v22 + 7) & 0xFFFFFFFFFFFFFFF8));
  v27 = v31;
  v26 = v32;
  *v25 = v31;
  v25[1] = v26;

  sub_26F3ACF68(v27);
  sub_26F40570C(0, 0, v17, &unk_26F4ABA68, v23);
}

uint64_t sub_26F49435C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[44] = a8;
  v8[45] = v17;
  v8[42] = a6;
  v8[43] = a7;
  v8[40] = a4;
  v8[41] = a5;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0) - 8) + 64) + 15;
  v8[46] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v11 = sub_26F49D968();
  v8[49] = v11;
  v12 = *(v11 - 8);
  v8[50] = v12;
  v13 = *(v12 + 64) + 15;
  v8[51] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1200, &qword_26F4AA5C8) - 8) + 64) + 15;
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4944EC, 0, 0);
}

uint64_t sub_26F4944EC()
{
  v1 = *(v0 + 320);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(v0 + 432) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v3 = Strong;

    sub_26F49FBD8();
    *(v0 + 440) = sub_26F49FBC8();
    v4 = sub_26F49FB68();
    v6 = v5;
    v7 = sub_26F4947F4;
LABEL_3:

    return MEMORY[0x2822009F8](v7, v4, v6);
  }

  v8 = *(v0 + 320);
  swift_beginAccess();
  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v10 = *(v0 + 408);
    *(v0 + 448) = *(v9 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v11 = v9;

    *(v0 + 504) = 1;
    sub_26F49D958();
    v12 = swift_task_alloc();
    *(v0 + 456) = v12;
    *v12 = v0;
    v12[1] = sub_26F494C14;
    v13 = *(v0 + 408);
    v14 = *(v0 + 336);
    v15 = *(v0 + 344);
    v16 = *(v0 + 328);

    return sub_26F48C80C(v16, v14, v15, (v0 + 504), v13);
  }

  else
  {
    if (*(v0 + 352))
    {
      v17 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
        v18 = sub_26F4A0248();
      }

      else
      {

        sub_26F4A0468();
        v18 = v17;
      }

      *(v0 + 480) = v18;

      sub_26F49FBD8();
      *(v0 + 488) = sub_26F49FBC8();
      v4 = sub_26F49FB68();
      v6 = v19;
      v7 = sub_26F49550C;
      goto LABEL_3;
    }

    v21 = *(v0 + 416);
    v20 = *(v0 + 424);
    v22 = *(v0 + 408);
    v24 = *(v0 + 376);
    v23 = *(v0 + 384);
    v25 = *(v0 + 368);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_26F4947F4()
{
  v2 = v0[54];
  v1 = v0[55];
  v4 = v0[52];
  v3 = v0[53];

  v5 = type metadata accessor for TranslationUnavailableModel(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v3, 1, 1, v5);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3B8DD4(v3, v4, &qword_2806E1200, &qword_26F4AA5C8);

  sub_26F49DDB8();
  sub_26F3B6B4C(v3, &qword_2806E1200, &qword_26F4AA5C8);
  v6(v3, 1, 1, v5);
  v7 = OBJC_IVAR____TtC13TranslationUI31VisualTranslationErrorViewModel__lastErrorModel;
  swift_beginAccess();
  sub_26F49CFD0(v3, v2 + v7, &qword_2806E1200, &qword_26F4AA5C8);
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_26F494994, 0, 0);
}

uint64_t sub_26F494994()
{
  v1 = *(v0 + 320);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 408);
    *(v0 + 448) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v4 = Strong;

    *(v0 + 504) = 1;
    sub_26F49D958();
    v5 = swift_task_alloc();
    *(v0 + 456) = v5;
    *v5 = v0;
    v5[1] = sub_26F494C14;
    v6 = *(v0 + 408);
    v7 = *(v0 + 336);
    v8 = *(v0 + 344);
    v9 = *(v0 + 328);

    return sub_26F48C80C(v9, v7, v8, (v0 + 504), v6);
  }

  else if (*(v0 + 352))
  {
    v11 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
      v12 = sub_26F4A0248();
    }

    else
    {

      sub_26F4A0468();
      v12 = v11;
    }

    *(v0 + 480) = v12;

    sub_26F49FBD8();
    *(v0 + 488) = sub_26F49FBC8();
    v14 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F49550C, v14, v13);
  }

  else
  {

    v16 = *(v0 + 416);
    v15 = *(v0 + 424);
    v17 = *(v0 + 408);
    v19 = *(v0 + 376);
    v18 = *(v0 + 384);
    v20 = *(v0 + 368);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_26F494C14(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 456);
  v12 = *v2;
  *(*v2 + 464) = v1;

  if (v1)
  {
    (*(v4[50] + 8))(v4[51], v4[49]);
    v6 = sub_26F494F18;
  }

  else
  {
    v7 = v4[56];
    v9 = v4[50];
    v8 = v4[51];
    v10 = v4[49];

    v4[59] = a1;
    (*(v9 + 8))(v8, v10);
    v6 = sub_26F494D80;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_26F494D80()
{
  v1 = v0[59];
  if (v0[44])
  {
    if (v1 >> 62)
    {
      if (v1 < 0)
      {
        v14 = v0[59];
      }

      v15 = v0[59];

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
      v3 = sub_26F4A0248();
    }

    else
    {
      v2 = v0[59];

      sub_26F4A0468();
      v3 = v1;
    }

    v0[60] = v3;

    sub_26F49FBD8();
    v0[61] = sub_26F49FBC8();
    v5 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F49550C, v5, v4);
  }

  else
  {
    v6 = v0[59];

    v8 = v0[52];
    v7 = v0[53];
    v9 = v0[51];
    v11 = v0[47];
    v10 = v0[48];
    v12 = v0[46];

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_26F494F18()
{
  v1 = *(v0 + 448);

  if (qword_280F66CB0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 464);
  v3 = *(v0 + 328);
  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67ED0);

  v5 = v2;
  v6 = sub_26F49DC88();
  v7 = sub_26F49FDD8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 328);
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 134349314;
    if (v9 >> 62)
    {
      if (*(v0 + 328) < 0)
      {
        v52 = *(v0 + 328);
      }

      v12 = sub_26F4A00A8();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = *(v0 + 464);
    v14 = *(v0 + 328);
    *(v10 + 4) = v12;

    *(v10 + 12) = 2112;
    v15 = sub_26F49D7E8();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_26F39E000, v6, v7, "Failed to translate %{public}ld observations: %@", v10, 0x16u);
    sub_26F3B6B4C(v11, &qword_2806DF258, &qword_26F4A6220);
    MEMORY[0x274391F70](v11, -1, -1);
    MEMORY[0x274391F70](v10, -1, -1);
  }

  else
  {
    v16 = *(v0 + 328);
  }

  v17 = *(v0 + 464);
  v18 = v17;
  sub_26F458904(v17, (v0 + 304));
  if (*(v0 + 312))
  {
    v19 = *(v0 + 384);
    sub_26F3B8DD4(*(v0 + 336), v19, &qword_2806DEFD8, &qword_26F4A3670);
    v20 = sub_26F49DAB8();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    v23 = v22(v19, 1, v20);
    v24 = *(v0 + 384);
    if (v23 == 1)
    {
      sub_26F3B6B4C(*(v0 + 384), &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F497280(0xD000000000000018, 0x800000026F4AC580, (v0 + 48));
      sub_26F3B6B4C(v0 + 48, &qword_2806E1730, &qword_26F4ABF78);
      if (!*(v0 + 312))
      {
        goto LABEL_16;
      }
    }

    else
    {
      *(v0 + 40) = v20;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      (*(v21 + 32))(boxed_opaque_existential_1, v24, v20);
      sub_26F3BE15C((v0 + 16), (v0 + 176));
      v26 = *(v0 + 312);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_26F498178((v0 + 176), 0xD000000000000018, 0x800000026F4AC580, isUniquelyReferenced_nonNull_native);
      *(v0 + 312) = v26;
      if (!v26)
      {
        goto LABEL_16;
      }
    }

    v28 = *(v0 + 376);
    sub_26F3B8DD4(*(v0 + 344), v28, &qword_2806DEFD8, &qword_26F4A3670);
    v29 = v22(v28, 1, v20);
    v30 = *(v0 + 376);
    if (v29 == 1)
    {
      sub_26F3B6B4C(*(v0 + 376), &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F497280(0xD000000000000018, 0x800000026F4AC5A0, (v0 + 112));
      sub_26F3B6B4C(v0 + 112, &qword_2806E1730, &qword_26F4ABF78);
    }

    else
    {
      *(v0 + 104) = v20;
      v31 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
      (*(v21 + 32))(v31, v30, v20);
      sub_26F3BE15C((v0 + 80), (v0 + 144));
      v32 = *(v0 + 312);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      sub_26F498178((v0 + 144), 0xD000000000000018, 0x800000026F4AC5A0, v33);
      *(v0 + 312) = v32;
    }
  }

LABEL_16:
  v34 = *(v0 + 320);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = Strong;
    v37 = *(v0 + 368);
    v39 = *(v0 + 304);
    v38 = *(v0 + 312);
    v40 = sub_26F49FC08();
    (*(*(v40 - 8) + 56))(v37, 1, 1, v40);
    v41 = swift_allocObject();
    v41[2] = 0;
    v41[3] = 0;
    v41[4] = v36;
    v41[5] = v39;
    v41[6] = v38;

    sub_26F40570C(0, 0, v37, &unk_26F4ABF88, v41);
  }

  if (*(v0 + 352))
  {
    sub_26F49FBD8();
    *(v0 + 496) = sub_26F49FBC8();
    v43 = sub_26F49FB68();

    return MEMORY[0x2822009F8](sub_26F4955D4, v43, v42);
  }

  else
  {

    v44 = *(v0 + 312);

    v46 = *(v0 + 416);
    v45 = *(v0 + 424);
    v47 = *(v0 + 408);
    v49 = *(v0 + 376);
    v48 = *(v0 + 384);
    v50 = *(v0 + 368);

    v51 = *(v0 + 8);

    return v51();
  }
}

uint64_t sub_26F49550C()
{
  v2 = v0[60];
  v1 = v0[61];
  v4 = v0[44];
  v3 = v0[45];

  v4(v2, 0);

  v6 = v0[52];
  v5 = v0[53];
  v7 = v0[51];
  v9 = v0[47];
  v8 = v0[48];
  v10 = v0[46];

  v11 = v0[1];

  return v11();
}

uint64_t sub_26F4955D4()
{
  v1 = v0[62];
  v2 = v0[44];
  v3 = v0[45];

  v2(MEMORY[0x277D84F90], 0);

  return MEMORY[0x2822009F8](sub_26F495654, 0, 0);
}

uint64_t sub_26F495654()
{
  v1 = *(v0 + 312);

  v3 = *(v0 + 416);
  v2 = *(v0 + 424);
  v4 = *(v0 + 408);
  v6 = *(v0 + 376);
  v5 = *(v0 + 384);
  v7 = *(v0 + 368);

  v8 = *(v0 + 8);

  return v8();
}

void sub_26F49596C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1728, &qword_26F4ABEC8);
  v5 = sub_26F49FAD8();
  if (a2)
  {
    v6 = sub_26F49D7E8();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v44 = a2;
  v45 = a3;
  v46 = a1;
  v48 = sub_26F49DAB8();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v37 - v8;
  v38 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v37 - v12;
  v43 = &v37 - v12;
  v41 = sub_26F49D968();
  v14 = *(v41 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v41);
  v39 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v37 - v17;
  v42 = *a4;
  v40 = &v37 - v17;
  sub_26F49D958();
  v19 = sub_26F49FC08();
  (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v5 + 16);
  v22 = v9;
  v23 = v48;
  v21(v22, v44, v48);
  v21(v47, v45, v23);
  v24 = v18;
  v25 = v41;
  (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v41);
  v26 = *(v5 + 80);
  v27 = (v26 + 48) & ~v26;
  v28 = (v6 + v26 + v27) & ~v26;
  v29 = v28 + v6;
  v30 = (*(v14 + 80) + v28 + v6 + 1) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v46;
  *(v31 + 4) = v20;
  *(v31 + 5) = v32;
  v33 = *(v5 + 32);
  v34 = &v31[v27];
  v35 = v48;
  v33(v34, v38, v48);
  v33(&v31[v28], v47, v35);
  v31[v29] = v42;
  (*(v14 + 32))(&v31[v30], v39, v25);

  sub_26F406004(0, 0, v43, &unk_26F4ABA78, v31);

  return (*(v14 + 8))(v40, v25);
}

uint64_t VisualTranslationViewBridge.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4, uint64_t a5)
{
  v39 = a3;
  v40 = a5;
  v37 = a2;
  v41 = a1;
  v42 = sub_26F49D968();
  v6 = *(v42 - 8);
  v38 = *(v6 + 64);
  MEMORY[0x28223BE20](v42);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v8;
  v9 = sub_26F49DAB8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v33 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v32 = &v31 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v31 - v17;
  v36 = &v31 - v17;
  v35 = *a4;
  v19 = sub_26F49FC08();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = *(v10 + 16);
  v21(v14, v37, v9);
  v21(&v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v9);
  (*(v6 + 16))(v8, v40, v42);
  v22 = *(v10 + 80);
  v23 = (v22 + 48) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = v24 + v11;
  v26 = (*(v6 + 80) + v25 + 1) & ~*(v6 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = 0;
  *(v27 + 3) = 0;
  v28 = v41;
  *(v27 + 4) = v20;
  *(v27 + 5) = v28;
  v29 = *(v10 + 32);
  v29(&v27[v23], v32, v9);
  v29(&v27[v24], v33, v9);
  v27[v25] = v35;
  (*(v6 + 32))(&v27[v26], v34, v42);

  sub_26F406004(0, 0, v36, &unk_26F4ABA80, v27);
}

uint64_t sub_26F496138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 113) = a8;
  *(v8 + 72) = a7;
  *(v8 + 80) = v10;
  *(v8 + 56) = a5;
  *(v8 + 64) = a6;
  *(v8 + 40) = a1;
  *(v8 + 48) = a4;
  return MEMORY[0x2822009F8](sub_26F49616C, 0, 0);
}

uint64_t sub_26F49616C()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 88) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 113);
    *(v0 + 96) = *(Strong + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    v4 = Strong;

    *(v0 + 112) = v3 & 1;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_26F4962A8;
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v9 = *(v0 + 56);
    v8 = *(v0 + 64);

    return sub_26F48E498(v9, v8, v6, (v0 + 112), v7);
  }

  else
  {
    **(v0 + 40) = 1;
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_26F4962A8()
{
  v1 = *(*v0 + 104);
  v2 = *(*v0 + 96);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_26F4963C0, 0, 0);
}

Swift::Void __swiftcall VisualTranslationViewBridge.showDebugMenu()()
{
  if (_LTIsInternalInstall())
  {
    v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
    swift_getKeyPath();
    swift_getKeyPath();

    sub_26F49DDB8();
  }
}

uint64_t VisualTranslationViewBridge.setZoomScale(_:)(double a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC13TranslationUI27VisualTranslationViewBridge_observable);
  type metadata accessor for VisualTranslationObservable(0);
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  sub_26F49DD48();
  sub_26F49DD58();

  v4 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  if (a1 <= 0.0)
  {
    a1 = COERCE_DOUBLE(1);
  }

  result = swift_beginAccess();
  *(v3 + v4) = a1;
  return result;
}

id VisualTranslationViewBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t VisualTranslationView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0908, &qword_26F4AB220);
  v2 = *(*(v56 - 1) + 64);
  MEMORY[0x28223BE20](v56);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  v8 = type metadata accessor for VisualTranslationOverlay();
  v9 = v8 - 8;
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1690, &qword_26F4ABA88);
  v13 = *(*(v58 - 8) + 64);
  MEMORY[0x28223BE20](v58);
  v53 = &v51 - v14;
  v15 = v1[1];
  v63 = *v1;
  v64 = v15;
  v65 = *(v1 + 4);
  v16 = *(&v63 + 1);
  v54 = *(&v63 + 1);
  v55 = v63;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  v52 = v66;
  v17 = OBJC_IVAR____TtC13TranslationUI27VisualTranslationObservable_zoomScale;
  swift_beginAccess();
  v18 = *(v16 + v17);
  v20 = *(&v64 + 1);
  v19 = v65;
  memset(v59, 0, 32);
  sub_26F3ACF68(*(&v64 + 1));
  type metadata accessor for CGRect(0);
  sub_26F49F338();
  v21 = *&v67[16];
  v22 = *v67;
  *(v12 + 2) = v66;
  *(v12 + 3) = v22;
  *(v12 + 8) = v21;
  v23 = *(v9 + 40);
  v24 = type metadata accessor for VisualTranslationModel(0);
  (*(*(v24 - 8) + 56))(v7, 1, 1, v24);
  sub_26F3B8DD4(v7, v4, &qword_2806E0908, &qword_26F4AB220);
  sub_26F49F338();
  sub_26F3B6B4C(v7, &qword_2806E0908, &qword_26F4AB220);
  v25 = &v12[*(v9 + 44)];
  *v25 = swift_getKeyPath();
  v25[8] = 0;
  *v12 = v52;
  *(v12 + 1) = v18;
  *(v12 + 2) = v20;
  *(v12 + 3) = v19;
  v26 = sub_26F49E328();
  LOBYTE(v9) = sub_26F49EC48();
  v27 = v53;
  sub_26F49B18C(v12, v53, type metadata accessor for VisualTranslationOverlay);
  v28 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1698, &qword_26F4ABAB8) + 36);
  *v28 = v26;
  *(v28 + 8) = v9;
  sub_26F499BA4(v12, type metadata accessor for VisualTranslationOverlay);
  KeyPath = swift_getKeyPath();
  LOBYTE(v25) = v64;
  v30 = v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16A0, &qword_26F4ABAE8) + 36);
  *v30 = KeyPath;
  *(v30 + 8) = v25 & 1;
  v31 = swift_getKeyPath();
  v32 = v27 + *(v58 + 36);
  *v32 = v31;
  *(v32 + 8) = (v25 & 2) != 0;
  v52 = type metadata accessor for VisualTranslationObservable(0);
  v56 = &protocol conformance descriptor for VisualTranslationErrorViewModel;
  sub_26F49AAC4(&qword_2806E1668, type metadata accessor for VisualTranslationObservable);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  type metadata accessor for CameraPreviewDebugView();
  sub_26F49B1F4();
  sub_26F49AAC4(&qword_2806E16C8, type metadata accessor for CameraPreviewDebugView);
  v33 = v57;
  sub_26F49F118();

  sub_26F3B6B4C(v27, &qword_2806E1690, &qword_26F4ABA88);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  v34 = v60;
  v35 = v61;
  LOBYTE(v27) = v62;
  v36 = swift_allocObject();
  v37 = v64;
  *(v36 + 16) = v63;
  *(v36 + 32) = v37;
  *(v36 + 48) = v65;
  *&v66 = v34;
  *(&v66 + 1) = v35;
  v67[0] = v27;
  memset(&v67[8], 0, 32);
  *&v67[40] = sub_26F49B420;
  v68 = v36;
  v38 = v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16D0, &qword_26F4ABAF8) + 36);
  sub_26F49B44C(&v63, v59);
  sub_26F49B484(&v66, v59);

  v39 = *&v67[32];
  *(v38 + 32) = *&v67[16];
  *(v38 + 48) = v39;
  *(v38 + 64) = v68;
  v40 = *v67;
  *v38 = v66;
  *(v38 + 16) = v40;

  v41 = swift_getKeyPath();
  v42 = (v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16D8, &unk_26F4ABB30) + 36));
  v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF3E0, &qword_26F4A82B0) + 28);
  v44 = *MEMORY[0x277CDFA88];
  v45 = sub_26F49E2E8();
  (*(*(v45 - 8) + 104))(v42 + v43, v44, v45);
  *v42 = v41;
  type metadata accessor for VisualTranslationErrorViewModel();
  sub_26F49AAC4(&qword_2806E1210, type metadata accessor for VisualTranslationErrorViewModel);

  v46 = sub_26F49E288();
  v48 = v47;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E16E0, &qword_26F4ABB40);
  v50 = (v33 + *(result + 36));
  *v50 = v46;
  v50[1] = v48;
  return result;
}

uint64_t sub_26F496EE4@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_26F49DEF8();
  a1[1] = sub_26F49DEE8();
  a1[2] = sub_26F49DEE8();
  v2 = *(type metadata accessor for CameraPreviewDebugView() + 28);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEB30, &qword_26F4A2660);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_26F496FDC(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F49D088;

  return v7(a1);
}

void *sub_26F4970D4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

size_t sub_26F497184(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if (result - v10 != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_26F497280@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_26F45FD88(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C6FEC();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_26F3BE15C((*(v12 + 56) + 32 * v9), a3);
    sub_26F497678(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_26F497324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26F45FF48(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C7190();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26F49D968();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
    v22 = *(v15 - 8);
    sub_26F3BBAEC(v14 + *(v22 + 72) * v8, a2, &qword_2806DED80, &qword_26F4A3660);
    sub_26F497828(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26F4974DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_26F45FF48(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26F3C77D4();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_26F49D968();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for VisualTranslationModel(0);
    v22 = *(v15 - 8);
    sub_26F49C978(v14 + *(v22 + 72) * v8, a2, type metadata accessor for VisualTranslationModel);
    sub_26F497B78(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for VisualTranslationModel(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_26F497678(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26F4A0078() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_26F4A0528();

      sub_26F49F9A8();
      v14 = sub_26F4A0568();

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

void sub_26F497828(int64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_26F4A0078();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0]);
      v23 = sub_26F49F818();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660) - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

void sub_26F497B78(int64_t a1, uint64_t a2)
{
  v4 = sub_26F49D968();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v43 = a2;
    v12 = ~v10;
    v13 = sub_26F4A0078();
    v14 = v12;
    a2 = v43;
    v42 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = v9;
    v41 = v16;
    v17 = *(v15 + 56);
    v39 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v41(v8, *(a2 + 48) + v17 * v11, v4);
      v22 = *(a2 + 40);
      sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0]);
      v23 = sub_26F49F818();
      (*v39)(v8, v4);
      v14 = v20;
      v24 = v23 & v20;
      if (a1 >= v42)
      {
        if (v24 >= v42 && a1 >= v24)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v43 + 48) + v18 * a1 >= (*(v43 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v27 = *(v43 + 56);
          v28 = *(*(type metadata accessor for VisualTranslationModel(0) - 8) + 72);
          v29 = v28 * a1;
          v30 = v27 + v28 * a1;
          v31 = v28 * v11;
          v32 = v27 + v28 * v11 + v28;
          if (v29 < v31 || v30 >= v32)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v40;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v34 = v29 == v31;
            v9 = v40;
            v14 = v20;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v42 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v40;
      a2 = v43;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

_OWORD *sub_26F497EBC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_26F45FE00(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_26F3C6CFC();
      v8 = v16;
      goto LABEL_8;
    }

    sub_26F3C51B8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_26F45FE00(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = sub_26F4A04A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_0(v20);

    return sub_26F3BE15C(a1, v20);
  }

  else
  {
    sub_26F498678(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_26F497FFC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F45FD88(a2, a3);
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
      sub_26F3C5488(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26F45FD88(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26F4A04A8();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26F3C6E7C();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

_OWORD *sub_26F498178(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26F45FD88(a2, a3);
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
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_26F3C6FEC();
      v11 = v19;
      goto LABEL_8;
    }

    sub_26F3C5730(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_26F45FD88(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_26F4A04A8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_26F3BE15C(a1, v23);
  }

  else
  {
    sub_26F4986E0(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_26F4982C8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26F45FF48(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
      return sub_26F49CFD0(a1, v22 + *(*(v23 - 8) + 72) * v15, &qword_2806DED80, &qword_26F4A3660);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_26F3C7190();
    goto LABEL_7;
  }

  sub_26F3C59E8(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_26F45FF48(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_26F4A04A8();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_26F49874C(v15, v12, a1, v21);
}

uint64_t sub_26F4984A4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_26F49D968();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_26F45FF48(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for VisualTranslationModel(0);
      return sub_26F49CF68(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for VisualTranslationModel);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_26F3C77D4();
    goto LABEL_7;
  }

  sub_26F3C6314(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_26F45FF48(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_26F4A04A8();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_26F498844(v15, v12, a1, v21);
}

_OWORD *sub_26F498678(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_26F3BE15C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_26F4986E0(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_26F3BE15C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_26F49874C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26F49D968();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DED80, &qword_26F4A3660);
  result = sub_26F3BBAEC(a3, v10 + *(*(v11 - 8) + 72) * a1, &qword_2806DED80, &qword_26F4A3660);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_26F498844(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_26F49D968();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for VisualTranslationModel(0);
  result = sub_26F49C978(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for VisualTranslationModel);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

id sub_26F498934()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1638, &unk_26F4AB8E0);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26F498AAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1620, &qword_26F4AB8C8);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26F498C08()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1630, &qword_26F4AB8D8);
  v2 = *v0;
  v3 = sub_26F4A0108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v18 + 16);
        v21 = *(v18 + 24);
        v22 = *(v18 + 32);
        v23 = *(v18 + 40);
        v24 = *(v4 + 48) + v17;
        *v24 = *v18;
        *(v24 + 8) = v19;
        *(v24 + 16) = v20;
        *(v24 + 24) = v21;
        *(v24 + 32) = v22;
        *(v24 + 40) = v23;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_26F498DB0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v12 = *v3;
  v13 = sub_26F4A0108();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

uint64_t sub_26F498FE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_26F49D968();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0]);
  v35 = a1;
  v13 = sub_26F49F818();
  v14 = v11 + 56;
  v33 = v11 + 56;
  v34 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v30 = v3;
    v31 = v7;
    v32 = a2;
    v17 = ~v15;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    while (1)
    {
      v18(v10, *(v34 + 48) + v21 * v16, v6);
      sub_26F49AAC4(&qword_2806E1128, MEMORY[0x277CC95F0]);
      v22 = sub_26F49F868();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v33 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v23 = 1;
        v7 = v31;
        a2 = v32;
        return (*(v7 + 56))(a2, v23, 1, v6);
      }
    }

    v24 = v30;
    v25 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v24;
    v36 = *v24;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_26F498DB0(MEMORY[0x277CC95F0], &qword_2806E1618, &qword_26F4AB890);
      v27 = v36;
    }

    v7 = v31;
    a2 = v32;
    (*(v31 + 32))(v32, *(v27 + 48) + v21 * v16, v6);
    sub_26F4992B4(v16);
    v23 = 0;
    *v24 = v36;
  }

  else
  {
    v23 = 1;
  }

  return (*(v7 + 56))(a2, v23, 1, v6);
}

void sub_26F4992B4(int64_t a1)
{
  v3 = sub_26F49D968();
  v4 = *(v3 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v3);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_26F4A0078();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = v12;
      v16 = (v14 + 1) & v12;
      v37 = v4[2];
      v38 = v4 + 2;
      v17 = v4[9];
      v35 = (v4 + 1);
      v36 = v9;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v11;
        v37(v7, *(v8 + 48) + v18 * v11, v3);
        v21 = v8;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        v25 = *(v21 + 40);
        sub_26F49AAC4(&qword_280F663A8, MEMORY[0x277CC95F0]);
        v26 = sub_26F49F818();
        (*v35)(v7, v3);
        v27 = v26 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v27 >= v22 && a1 >= v27)
          {
LABEL_16:
            v8 = v24;
            v30 = *(v24 + 48);
            v18 = v19;
            v31 = v19 * a1;
            if (v19 * a1 < v20 || v30 + v19 * a1 >= (v30 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v31 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v27 >= v22 || a1 >= v27)
        {
          goto LABEL_16;
        }

        v8 = v24;
        v18 = v19;
LABEL_5:
        v11 = (v11 + 1) & v15;
        v9 = v36;
      }

      while (((*(v36 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v32 = *(v8 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v34;
    ++*(v8 + 36);
  }
}

void sub_26F4995BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for TextModel();
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_26F49B18C(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for TextModel);
      v24 = v23;
      v25 = v31;
      sub_26F49C978(v24, v31, type metadata accessor for TextModel);
      sub_26F49C978(v25, a2, type metadata accessor for TextModel);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

void sub_26F499820(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for VisualTranslationModel(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_26F49B18C(*(a4 + 56) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for VisualTranslationModel);
      v24 = v23;
      v25 = v31;
      sub_26F49C978(v24, v31, type metadata accessor for VisualTranslationModel);
      sub_26F49C978(v25, a2, type metadata accessor for VisualTranslationModel);
      if (v19 == v30)
      {
        a1 = v29;
        goto LABEL_23;
      }

      a2 += a1;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_26F499A84(uint64_t a1)
{
  v2 = *(*(*((*MEMORY[0x277D85000] & *v1) + class metadata base offset for SecureHostingController) - 8) + 64);
  v3 = MEMORY[0x28223BE20](a1);
  (*(v5 + 16))(&v7 - v4, v3);
  return sub_26F49E858();
}

uint64_t sub_26F499BA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26F499C20(uint64_t a1)
{
  v123 = type metadata accessor for TextModel();
  v122 = *(v123 - 8);
  v2 = *(v122 + 64);
  MEMORY[0x28223BE20](v123);
  v4 = &v120 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8);
  v5 = *(*(v136 - 8) + 64);
  MEMORY[0x28223BE20](v136);
  v124 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v129 = &v120 - v8;
  MEMORY[0x28223BE20](v9);
  v134 = (&v120 - v10);
  MEMORY[0x28223BE20](v11);
  v133 = &v120 - v12;
  MEMORY[0x28223BE20](v13);
  v132 = &v120 - v14;
  v15 = type metadata accessor for VisualTranslationModel(0);
  v16 = *(v15 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v128 = &v120 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v131 = &v120 - v20;
  v21 = objc_opt_self();
  v22 = [v21 standardUserDefaults];
  v23 = sub_26F49F898();
  v24 = [v22 BOOLForKey_];

  if (v24)
  {
    v25 = *(a1 + 16);
    v26 = MEMORY[0x277D84F90];
    if (v25)
    {
      v27 = a1;
      *&v144 = MEMORY[0x277D84F90];
      sub_26F4034EC(0, v25, 0);
      v26 = v144;
      v28 = ~(-1 << *(a1 + 32));
      v142 = a1 + 64;
      result = sub_26F4A0068();
      v30 = result;
      v31 = 0;
      v129 = (a1 + 72);
      v137 = a1;
      v135 = v16;
      v130 = v25;
      while ((v30 & 0x8000000000000000) == 0 && v30 < 1 << *(v27 + 32))
      {
        v35 = v30 >> 6;
        if ((*(v142 + 8 * (v30 >> 6)) & (1 << v30)) == 0)
        {
          goto LABEL_62;
        }

        v140 = 1 << v30;
        v138 = v31;
        v139 = *(v27 + 36);
        v143 = v26;
        v36 = v136;
        v37 = *(v136 + 48);
        v38 = *(v27 + 48);
        v39 = sub_26F49D968();
        v40 = *(v39 - 8);
        v41 = v132;
        (*(v40 + 16))(v132, v38 + *(v40 + 72) * v30, v39);
        v42 = *(v27 + 56);
        v141 = *(v16 + 72);
        sub_26F49B18C(v42 + v141 * v30, &v41[v37], type metadata accessor for VisualTranslationModel);
        v43 = v133;
        (*(v40 + 32))(v133, v41, v39);
        sub_26F49C978(&v41[v37], v43 + *(v36 + 48), type metadata accessor for VisualTranslationModel);
        v44 = v134;
        sub_26F3BBAEC(v43, v134, &qword_2806E1750, &qword_26F4ABFA8);
        v45 = *(v36 + 48);
        v26 = v143;
        v46 = v131;
        sub_26F49C978(v44 + v45, v131, type metadata accessor for VisualTranslationModel);
        (*(v40 + 8))(v44, v39);
        *&v144 = v26;
        v48 = *(v26 + 16);
        v47 = *(v26 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_26F4034EC(v47 > 1, v48 + 1, 1);
          v26 = v144;
        }

        *(v26 + 16) = v48 + 1;
        v16 = v135;
        result = sub_26F49C978(v46, v26 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + v48 * v141, type metadata accessor for VisualTranslationModel);
        v27 = v137;
        v32 = 1 << *(v137 + 32);
        if (v30 >= v32)
        {
          goto LABEL_63;
        }

        v49 = *(v142 + 8 * v35);
        if ((v49 & v140) == 0)
        {
          goto LABEL_64;
        }

        if (v139 != *(v137 + 36))
        {
          goto LABEL_65;
        }

        v50 = v49 & (-2 << (v30 & 0x3F));
        if (v50)
        {
          v32 = __clz(__rbit64(v50)) | v30 & 0x7FFFFFFFFFFFFFC0;
          v33 = v130;
          v34 = v138;
        }

        else
        {
          v51 = v35 << 6;
          v52 = v35 + 1;
          v53 = &v129[8 * v35];
          v33 = v130;
          while (v52 < (v32 + 63) >> 6)
          {
            v55 = *v53++;
            v54 = v55;
            v51 += 64;
            ++v52;
            if (v55)
            {
              result = sub_26F49CF5C(v30, v139, 0);
              v32 = __clz(__rbit64(v54)) + v51;
              goto LABEL_20;
            }
          }

          result = sub_26F49CF5C(v30, v139, 0);
LABEL_20:
          v34 = v138;
        }

        v31 = v34 + 1;
        v30 = v32;
        if (v31 == v33)
        {
          return v26;
        }
      }

LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    return v26;
  }

  v137 = a1;
  v56 = [v21 standardUserDefaults];
  v57 = sub_26F49F898();
  v58 = [v56 BOOLForKey_];

  if (!v58)
  {
    return 0;
  }

  v59 = v137;
  v60 = *(v137 + 16);
  if (!v60)
  {
    return MEMORY[0x277D84F90];
  }

  v155 = MEMORY[0x277D84F90];
  sub_26F4034EC(0, v60, 0);
  v143 = v155;
  v61 = v59 + 64;
  v62 = -1 << *(v59 + 32);
  result = sub_26F4A0068();
  v63 = v124;
  if ((result & 0x8000000000000000) == 0)
  {
    v64 = result;
    if (result < 1 << *(v59 + 32))
    {
      v65 = 0;
      v142 = *(v59 + 36);
      v121 = v59 + 72;
      v135 = v16;
      v127 = v15;
      v125 = v60;
      v126 = v59 + 64;
      while ((*(v61 + 8 * (v64 >> 6)) & (1 << v64)) != 0)
      {
        if (v142 != *(v59 + 36))
        {
          goto LABEL_68;
        }

        v131 = 1 << v64;
        v132 = v64 >> 6;
        v130 = v65;
        v66 = v136;
        v141 = *(v136 + 48);
        v67 = *(v59 + 48);
        v68 = v15;
        v69 = v63;
        v70 = sub_26F49D968();
        v71 = *(v70 - 8);
        v72 = v71;
        v73 = v67 + *(v71 + 72) * v64;
        v74 = v129;
        v134 = *(v71 + 16);
        v133 = (v71 + 16);
        (v134)(v129, v73, v70);
        v75 = *(v59 + 56);
        v76 = *(v16 + 72);
        v140 = v64;
        v139 = v76;
        v77 = v141;
        sub_26F49B18C(v75 + v76 * v64, &v74[v141], type metadata accessor for VisualTranslationModel);
        v78 = *(v72 + 32);
        v138 = v70;
        v79 = v70;
        v63 = v69;
        v78(v69, v74, v79);
        v80 = v69 + *(v66 + 48);
        sub_26F49C978(&v74[v77], v80, type metadata accessor for VisualTranslationModel);
        v81 = *(v80 + v68[7]);
        v82 = sub_26F445924(v81);
        v83 = *(v82 + 16);
        if (v83)
        {
          v84 = *(v123 + 20);
          v85 = v122;
          v86 = (*(v122 + 80) + 32) & ~*(v122 + 80);
          v87 = v82 + v86;

          v88 = *(v85 + 72);
          while (1)
          {
            sub_26F49B18C(v87, v4, type metadata accessor for TextModel);
            v89 = *&v4[v84];
            if ((v89 & 0x8000000000000000) != 0 || v89 >= v81[2])
            {
              sub_26F499BA4(v4, type metadata accessor for TextModel);
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_26F4469BC(v81);
                v81 = result;
              }

              if (v89 >= v81[2])
              {
                __break(1u);
                goto LABEL_61;
              }

              sub_26F49CF68(v4, v81 + v86 + v89 * v88, type metadata accessor for TextModel);
            }

            v87 += v88;
            if (!--v83)
            {

              v16 = v135;
              v63 = v124;
              goto LABEL_40;
            }
          }
        }

        v16 = v135;
LABEL_40:
        v90 = v128;
        (v134)(v128, v80, v138);
        v15 = v127;
        v91 = v80 + v127[5];
        v92 = *(v91 + 144);
        v152 = *(v91 + 128);
        v153 = v92;
        v154 = *(v91 + 160);
        v93 = *(v91 + 80);
        v148 = *(v91 + 64);
        v149 = v93;
        v94 = *(v91 + 112);
        v150 = *(v91 + 96);
        v151 = v94;
        v95 = *(v91 + 48);
        v146 = *(v91 + 32);
        v147 = v95;
        v96 = *v91;
        v145 = *(v91 + 16);
        v144 = v96;
        v97 = v127[6];
        v98 = sub_26F49D918();
        (*(*(v98 - 8) + 16))(v90 + v97, v80 + v97, v98);
        v99 = *(v80 + v15[8]);
        v100 = *(v80 + v15[9]);
        v101 = *(v80 + v15[10]);
        v102 = v90 + v15[5];
        v103 = v153;
        *(v102 + 128) = v152;
        *(v102 + 144) = v103;
        *(v102 + 160) = v154;
        v104 = v149;
        *(v102 + 64) = v148;
        *(v102 + 80) = v104;
        v105 = v151;
        *(v102 + 96) = v150;
        *(v102 + 112) = v105;
        v107 = v145;
        v106 = v146;
        *v102 = v144;
        *(v102 + 16) = v107;
        v108 = v147;
        *(v102 + 32) = v106;
        *(v102 + 48) = v108;
        *(v90 + v15[7]) = v81;
        *(v90 + v15[8]) = v99;
        *(v90 + v15[9]) = v100;
        *(v90 + v15[10]) = v101;
        *(v90 + v15[11]) = 0;
        sub_26F3B6B4C(v63, &qword_2806E1750, &qword_26F4ABFA8);
        v109 = v143;
        v155 = v143;
        v111 = *(v143 + 16);
        v110 = *(v143 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_26F4034EC(v110 > 1, v111 + 1, 1);
          v109 = v155;
        }

        *(v109 + 16) = v111 + 1;
        v112 = (*(v16 + 80) + 32) & ~*(v16 + 80);
        v143 = v109;
        sub_26F49C978(v90, v109 + v112 + v111 * v139, type metadata accessor for VisualTranslationModel);
        v59 = v137;
        v64 = 1 << *(v137 + 32);
        result = v140;
        if (v140 >= v64)
        {
          goto LABEL_69;
        }

        v61 = v126;
        v113 = *(v126 + 8 * v132);
        if ((v113 & v131) == 0)
        {
          goto LABEL_70;
        }

        if (v142 != *(v137 + 36))
        {
          goto LABEL_71;
        }

        v114 = v113 & (-2 << (v140 & 0x3F));
        if (v114)
        {
          v64 = __clz(__rbit64(v114)) | v140 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v115 = v132 << 6;
          v116 = v132 + 1;
          v117 = (v121 + 8 * v132);
          while (v116 < (v64 + 63) >> 6)
          {
            v119 = *v117++;
            v118 = v119;
            v115 += 64;
            ++v116;
            if (v119)
            {
              result = sub_26F49CF5C(v140, v142, 0);
              v64 = __clz(__rbit64(v118)) + v115;
              goto LABEL_52;
            }
          }

          result = sub_26F49CF5C(v140, v142, 0);
        }

LABEL_52:
        v65 = v130 + 1;
        if (v130 + 1 == v125)
        {
          return v143;
        }

        if ((v64 & 0x8000000000000000) != 0 || v64 >= 1 << *(v59 + 32))
        {
          goto LABEL_66;
        }
      }

      goto LABEL_67;
    }
  }

LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_26F49A9F8(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_26F3CF3AC;

  return sub_26F490144(a1, a2, v2);
}

uint64_t sub_26F49AAC4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26F49AB24(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[12];
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_26F3CF3AC;

  return sub_26F492C9C(v7, v8, v9, v10, v11, v12, v13, v14, a1, v4, v5, v6);
}

uint64_t sub_26F49AC30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F493218(a1, v4, v5, v6);
}

uint64_t sub_26F49AD00(uint64_t a1)
{
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = *(v4 + 64);
  v8 = (v7 + v5 + v6) & ~v5;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = v1[5];
  v13 = (v1 + ((v7 + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v13;
  v14 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_26F3CF3AC;

  return sub_26F49435C(a1, v9, v10, v11, v12, v1 + v6, v1 + v8, v15);
}

uint64_t sub_26F49AE68(uint64_t a1)
{
  v3 = *(sub_26F49DAB8() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = v7 + v6;
  v9 = *(*(sub_26F49D968() - 8) + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = *(v1 + v8);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_26F3CF3AC;

  return sub_26F496138(a1, v10, v11, v12, v13, v1 + v5, v1 + v7, v14);
}

uint64_t objectdestroy_41Tm()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = sub_26F49D968();
  v8 = *(v7 - 8);
  v9 = (v5 + *(v8 + 80) + v6 + 1) & ~*(v8 + 80);
  v10 = *(v8 + 64);
  v11 = *(v0 + 2);
  swift_unknownObjectRelease();
  v12 = *(v0 + 4);

  v13 = *(v0 + 5);

  v14 = *(v2 + 8);
  v14(&v0[v4], v1);
  v14(&v0[v6], v1);
  (*(v8 + 8))(&v0[v9], v7);

  return swift_deallocObject();
}

uint64_t sub_26F49B18C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_26F49B1F4()
{
  result = qword_2806E16A8;
  if (!qword_2806E16A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1690, &qword_26F4ABA88);
    sub_26F49B2AC();
    sub_26F3B18CC(&qword_2806E16B8, &qword_2806E16C0, &qword_26F4ABAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16A8);
  }

  return result;
}

unint64_t sub_26F49B2AC()
{
  result = qword_2806E16B0;
  if (!qword_2806E16B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16A0, &qword_26F4ABAE8);
    sub_26F49B364();
    sub_26F3B18CC(&qword_2806E16B8, &qword_2806E16C0, &qword_26F4ABAF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16B0);
  }

  return result;
}

unint64_t sub_26F49B364()
{
  result = qword_280F65750;
  if (!qword_280F65750)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1698, &qword_26F4ABAB8);
    sub_26F49AAC4(&qword_280F66028, type metadata accessor for VisualTranslationOverlay);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65750);
  }

  return result;
}

uint64_t sub_26F49B420(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    return sub_26F48BCAC();
  }

  return result;
}

unint64_t sub_26F49B4E4()
{
  result = qword_2806E16E8;
  if (!qword_2806E16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16E8);
  }

  return result;
}

unint64_t sub_26F49B53C()
{
  result = qword_2806E16F0;
  if (!qword_2806E16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16F0);
  }

  return result;
}

unint64_t sub_26F49B594()
{
  result = qword_2806E16F8;
  if (!qword_2806E16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E16F8);
  }

  return result;
}

unint64_t sub_26F49B5EC()
{
  result = qword_2806E1700;
  if (!qword_2806E1700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1700);
  }

  return result;
}

void sub_26F49B664()
{
  sub_26F49C1C8();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_26F3B2A20();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_26F49C798(319, &qword_280F66990, type metadata accessor for VisualTranslationObservable.SavedTranslationRequest, MEMORY[0x277D83D88]);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(*v4 + 728);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26F49D08C;

  return v14(a1, a2, a3, a4);
}

{
  v10 = *(*v4 + 744);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_26F3CF3AC;

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of VisualTranslationObservable.translate(_:sourceLocale:targetLocale:taskHint:selfLoggingInvocationId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(*v5 + 736);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_26F49BE00;

  return v16(a1, a2, a3, a4, a5);
}

{
  v12 = *(*v5 + 752);
  v16 = (v12 + *v12);
  v13 = v12[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_26F3CF3AC;

  return v16(a1, a2, a3, a4, a5);
}

uint64_t sub_26F49BE00(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

void sub_26F49C1C8()
{
  if (!qword_280F663C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1518, &qword_26F4AB488);
    v0 = sub_26F49DDC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280F663C0);
    }
  }
}

uint64_t getEnumTagSinglePayload for VisualTranslationOptions(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VisualTranslationOptions(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
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

uint64_t sub_26F49C33C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26F49C384(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_26F49C3DC()
{
  result = qword_2806E1708;
  if (!qword_2806E1708)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16E0, &qword_26F4ABB40);
    sub_26F49C468();
    sub_26F469DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1708);
  }

  return result;
}

unint64_t sub_26F49C468()
{
  result = qword_2806E1710;
  if (!qword_2806E1710)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16D8, &unk_26F4ABB30);
    sub_26F49C520();
    sub_26F3B18CC(&qword_2806DF430, &qword_2806DF3E0, &qword_26F4A82B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1710);
  }

  return result;
}

unint64_t sub_26F49C520()
{
  result = qword_2806E1718;
  if (!qword_2806E1718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E16D0, &qword_26F4ABAF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E1690, &qword_26F4ABA88);
    type metadata accessor for CameraPreviewDebugView();
    sub_26F49B1F4();
    sub_26F49AAC4(&qword_2806E16C8, type metadata accessor for CameraPreviewDebugView);
    swift_getOpaqueTypeConformance2();
    sub_26F49C638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1718);
  }

  return result;
}

unint64_t sub_26F49C638()
{
  result = qword_2806E1720;
  if (!qword_2806E1720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E1720);
  }

  return result;
}

void sub_26F49C6B4()
{
  sub_26F49C798(319, &qword_280F656B8, sub_26F49C7FC, MEMORY[0x277D83940]);
  if (v0 <= 0x3F)
  {
    sub_26F49C798(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_26F49C798(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_26F49C7FC()
{
  result = qword_280F66CC0;
  if (!qword_280F66CC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F66CC0);
  }

  return result;
}

uint64_t block_copy_helper_137(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F49C878(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F493218(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_14()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F49C978(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F49C9E0(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualTranslationObservable.SavedTranslationRequest(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CEEAC;

  return sub_26F48C0AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_26F49CAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F492F80(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_26F49CBD0(uint64_t a1)
{
  v4 = *(type metadata accessor for VisualTranslationModel(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_26F3CF3AC;

  return sub_26F4916AC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_26F49CCF0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CF3AC;

  return sub_26F40C3A4(a1, v5);
}

uint64_t sub_26F49CDA8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E1750, &qword_26F4ABFA8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F49191C(a1, v6, v7, v1 + v5);
}

uint64_t sub_26F49CEA4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_26F3CEEAC;

  return sub_26F40C3A4(a1, v5);
}

uint64_t sub_26F49CF5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_26F49CF68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F49CFD0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t __isPlatformVersionAtLeast(uint64_t a1, int a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if (qword_2806EA850 == -1)
  {
    if (qword_2806EA858)
    {
LABEL_3:
      result = _availability_version_check();
      v5 = *MEMORY[0x277D85DE8];
      return result;
    }
  }

  else
  {
    v6 = a4;
    v7 = a3;
    v8 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v8;
    a3 = v7;
    a4 = v6;
    if (qword_2806EA858)
    {
      goto LABEL_3;
    }
  }

  if (qword_2806EA848 != -1)
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    __isPlatformVersionAtLeast_cold_2();
    a3 = v14;
    a4 = v13;
    v9 = _MergedGlobals < v15;
    if (_MergedGlobals > v15)
    {
      goto LABEL_11;
    }

LABEL_7:
    if (!v9)
    {
      if (dword_2806EA83C > a3)
      {
        goto LABEL_11;
      }

      if (dword_2806EA83C >= a3)
      {
        result = dword_2806EA840 >= a4;
        v12 = *MEMORY[0x277D85DE8];
        return result;
      }
    }

    result = 0;
    v10 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

LABEL_11:
  result = 1;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _initializeAvailabilityCheck(unint64_t result)
{
  v30 = *MEMORY[0x277D85DE8];
  v1 = qword_2806EA858;
  if (qword_2806EA858)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_2806EA858 = MEMORY[0x28223BE68];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v28 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v27 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x274391710](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v26 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v26, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v27)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v28(v23, v29, 32, 134217984))
                                        {
                                          sscanf(v29, "%d.%d.%d", &_MergedGlobals, &dword_2806EA83C, &dword_2806EA840);
                                        }
                                      }
                                    }
                                  }

                                  (v27)(v20);
                                }

                                (v27)(v18);
                                v16 = v26;
                              }

                              else
                              {
                                v16 = v26;
                              }
                            }
                          }

                          free(v16);
                          result = fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}