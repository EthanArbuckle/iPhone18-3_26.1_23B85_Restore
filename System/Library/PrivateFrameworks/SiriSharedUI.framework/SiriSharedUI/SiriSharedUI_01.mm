uint64_t sub_21E434B00()
{

  return MEMORY[0x2822009F8](sub_21E434C18, 0, 0);
}

uint64_t sub_21E434C18()
{
  v32 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[9];
  sub_21E424848(v0[8], v3, &qword_27CEC5278);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21E424BC0(v0[9], &qword_27CEC5278);
LABEL_5:
    v7 = v0[15];
    sub_21E4DD188();
    if (v7)
    {
      v8 = v0[5];
      v9 = sub_21E4DB908();
      (*(*(v9 - 8) + 8))(v8, v9);
    }

    v10 = v0[1];

    return v10();
  }

  v4 = v0[7];
  (*(v0[11] + 32))(v0[12], v0[9], v0[10]);
  v5 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink;
  v0[23] = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink;
  v6 = v0[20];
  if (*(v4 + v5))
  {
    v6(v0[12], v0[10]);
    goto LABEL_5;
  }

  v29 = v0[17];
  v12 = v0[16];
  v13 = v0[13];
  v14 = v0[10];
  v15 = v0[7];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD000000000000038, 0x800000021E4EC2C0);
  sub_21E43EAF8();
  v16 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v16);

  MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4EC130);
  v29(v13, v15 + v12, v14);
  v17 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v17);

  v6(v13, v14);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v18 = sub_21E4DBCC8();
  __swift_project_value_buffer(v18, qword_280C14558);
  v19 = sub_21E4DD208();
  v20 = sub_21E45C20C(0);
  if (v21)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v20);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v22 = sub_21E4DBCB8();
  if (os_log_type_enabled(v22, v19))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    v25 = sub_21E426648(0xD000000000000077, 0x800000021E4EBB30, &v30);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_21E3EB000, v22, v19, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223D5BF10](v24, -1, -1);
    MEMORY[0x223D5BF10](v23, -1, -1);
  }

  else
  {
  }

  (v0[17])(v0[13], v0[7] + v0[16], v0[10]);
  v26 = swift_task_alloc();
  v0[24] = v26;
  *v26 = v0;
  v26[1] = sub_21E435140;
  v27 = v0[13];
  v28 = v0[12];

  return MEMORY[0x2821C6058](v28, v27);
}

uint64_t sub_21E435140()
{
  v1 = *(*v0 + 160);
  v2 = *(*v0 + 104);
  v3 = *(*v0 + 80);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_21E4352A0, 0, 0);
}

uint64_t sub_21E4352A0()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 56);
  (*(v0 + 160))(*(v0 + 96), *(v0 + 80));
  *(v2 + v1) = 1;
  v3 = *(v0 + 120);
  sub_21E4DD188();
  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = sub_21E4DB908();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21E4353D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_21E424848(a3, v22 - v9, &qword_27CEC4968);
  v11 = sub_21E4DD158();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21E424BC0(v10, &qword_27CEC4968);
  }

  else
  {
    sub_21E4DD148();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21E4DD0F8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21E4DCFC8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_21E424BC0(a3, &qword_27CEC4968);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21E424BC0(a3, &qword_27CEC4968);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21E435680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v24 - v11;
  sub_21E424848(a3, v24 - v11, &qword_27CEC4968);
  v13 = sub_21E4DD158();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21E424BC0(v12, &qword_27CEC4968);
  }

  else
  {
    sub_21E4DD148();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21E4DD0F8();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v24[0] = a2;
      v20 = sub_21E4DCFC8() + 32;
      a6(0);

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

      sub_21E424BC0(a3, &qword_27CEC4968);

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

  sub_21E424BC0(a3, &qword_27CEC4968);
  a6(0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21E435948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_21E4359EC;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_21E4359EC()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21E435B1C, 0, 0);
  }
}

uint64_t sub_21E435B1C()
{
  sub_21E4DB908();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD178();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E435BB4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  *(v6 + 256) = a5;
  *(v6 + 264) = v5;
  *(v6 + 824) = a4;
  *(v6 + 240) = a2;
  *(v6 + 248) = a3;
  *(v6 + 232) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  *(v6 + 272) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  *(v6 + 280) = swift_task_alloc();
  v7 = sub_21E4DBB38();
  *(v6 + 288) = v7;
  *(v6 + 296) = *(v7 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  *(v6 + 320) = swift_task_alloc();
  v8 = sub_21E4DB698();
  *(v6 + 328) = v8;
  *(v6 + 336) = *(v8 - 8);
  *(v6 + 344) = swift_task_alloc();
  v9 = sub_21E4DBB28();
  *(v6 + 352) = v9;
  *(v6 + 360) = *(v9 - 8);
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  *(v6 + 384) = swift_task_alloc();
  *(v6 + 392) = swift_task_alloc();
  v10 = sub_21E4DBAD8();
  *(v6 + 400) = v10;
  v11 = *(v10 - 8);
  *(v6 + 408) = v11;
  *(v6 + 416) = *(v11 + 64);
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  v12 = sub_21E4DBAF8();
  *(v6 + 440) = v12;
  *(v6 + 448) = *(v12 - 8);
  *(v6 + 456) = swift_task_alloc();
  v13 = sub_21E4DB908();
  *(v6 + 464) = v13;
  v14 = *(v13 - 8);
  *(v6 + 472) = v14;
  *(v6 + 480) = *(v14 + 64);
  *(v6 + 488) = swift_task_alloc();
  *(v6 + 496) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  *(v6 + 504) = swift_task_alloc();
  v15 = sub_21E4DBA28();
  *(v6 + 512) = v15;
  *(v6 + 520) = *(v15 - 8);
  *(v6 + 528) = swift_task_alloc();
  *(v6 + 536) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5280);
  *(v6 + 544) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5288);
  *(v6 + 552) = swift_task_alloc();
  v16 = sub_21E4DBA98();
  *(v6 + 560) = v16;
  *(v6 + 568) = *(v16 - 8);
  *(v6 + 576) = swift_task_alloc();
  *(v6 + 584) = swift_task_alloc();
  v17 = sub_21E4DB7A8();
  *(v6 + 592) = v17;
  *(v6 + 600) = *(v17 - 8);
  *(v6 + 608) = swift_task_alloc();
  sub_21E4DBA58();
  *(v6 + 616) = swift_task_alloc();
  v18 = sub_21E4DB6D8();
  *(v6 + 624) = v18;
  *(v6 + 632) = *(v18 - 8);
  *(v6 + 640) = swift_task_alloc();
  *(v6 + 648) = swift_task_alloc();
  v19 = sub_21E4DB7D8();
  *(v6 + 656) = v19;
  *(v6 + 664) = *(v19 - 8);
  *(v6 + 672) = swift_task_alloc();
  *(v6 + 680) = swift_task_alloc();
  sub_21E4DBB98();
  *(v6 + 688) = swift_task_alloc();
  v20 = sub_21E4DBB58();
  *(v6 + 696) = v20;
  *(v6 + 704) = *(v20 - 8);
  *(v6 + 712) = swift_task_alloc();
  v21 = sub_21E4DBA68();
  *(v6 + 720) = v21;
  *(v6 + 728) = *(v21 - 8);
  *(v6 + 736) = swift_task_alloc();
  *(v6 + 744) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E436338, 0, 0);
}

uint64_t sub_21E436338()
{
  v100 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v1 = sub_21E4DBCC8();
  *(v0 + 752) = __swift_project_value_buffer(v1, qword_280C14558);
  v2 = sub_21E4DD1F8();
  v3 = sub_21E45C20C(0);
  if (v4)
  {
    v99[0] = 32;
    v99[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v3);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("ked:invocationSource:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v99[0] = 32;
    v99[1] = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD00000000000004DLL, 0x800000021E4EBE20);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = sub_21E4DBCB8();
  if (os_log_type_enabled(v5, v2))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v99[0] = v7;
    *v6 = 136315138;
    v8 = sub_21E426648(0xD000000000000066, 0x800000021E4EBDB0, v99);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_21E3EB000, v5, v2, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223D5BF10](v7, -1, -1);
    MEMORY[0x223D5BF10](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 712);
  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 264);
  v13 = *(v0 + 824);
  *(v0 + 208) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback;
  *(v0 + 760) = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback;
  v15 = (v12 + v14);
  swift_beginAccess();
  v16 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_21E3F1EB0(v16);
  v17 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback;
  *(v0 + 768) = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback;
  v18 = (v12 + v17);
  swift_beginAccess();
  v19 = *v18;
  *v18 = 0;
  v18[1] = 0;
  sub_21E3F1EB0(v19);
  v20 = MEMORY[0x277D60BE0];
  if (!v13)
  {
    v20 = MEMORY[0x277D60BE8];
  }

  (*(v10 + 104))(v9, *v20, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5290);
  v21 = sub_21E4DBB48();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_21E4E57E0;
  v25 = SiriSharedUICurrentDeviceType();
  if ((v25 - 1) > 5)
  {
    v26 = MEMORY[0x277D609A8];
  }

  else
  {
    v26 = qword_278354E00[v25 - 1];
  }

  v27 = *(v0 + 680);
  v28 = *(v0 + 672);
  v29 = *(v0 + 664);
  v30 = *(v0 + 656);
  (*(v22 + 104))(v24 + v23, *v26, v21);
  sub_21E4DB798();
  sub_21E4DB788();
  sub_21E4DB778();

  sub_21E4DB7E8();
  (*(v29 + 104))(v28, *MEMORY[0x277D61DE0], v30);
  sub_21E4DB7C8();
  v31 = *(v29 + 8);
  v31(v28, v30);
  v31(v27, v30);
  sub_21E4DB7B8();
  sub_21E4DBB88();

  v32 = objc_opt_self();
  v33 = [v32 sharedPreferences];
  v34 = [v33 languageCode];

  if (v34 || (v35 = [v32 sharedPreferences], v34 = objc_msgSend(v35, sel_bestSupportedLanguageCodeForLanguageCode_, 0), v35, v34))
  {
    v41 = *(v0 + 616);
    v42 = *(v0 + 248);
    v95 = *(v0 + 256);
    sub_21E4DCF78();

    sub_21E4DB6A8();
    sub_21E43AFDC(v42, v41);
    sub_21E4DBA38();
    v99[0] = 0;
    v99[1] = 0xE000000000000000;
    sub_21E4DD3A8();
    v43 = v99[1];
    *(v0 + 176) = v99[0];
    *(v0 + 184) = v43;
    MEMORY[0x223D5ACB0](0xD000000000000034, 0x800000021E4EBC40);
    *(v0 + 216) = v95;
    type metadata accessor for SiriSharedUISuggestionsInputOrigin(0);
    sub_21E4DD458();
    v45 = *(v0 + 176);
    v44 = *(v0 + 184);
    v46 = sub_21E4DD1F8();
    v47 = sub_21E45C20C(0);
    if (v48)
    {
      v99[0] = 32;
      v99[1] = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v47);

      MEMORY[0x223D5ACB0](v99[0], v99[1]);
    }

    v49 = HIBYTE(v44) & 0xF;
    if ((v44 & 0x2000000000000000) == 0)
    {
      v49 = v45 & 0xFFFFFFFFFFFFLL;
    }

    if (v49)
    {
      v99[0] = 32;
      v99[1] = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v45, v44);
      MEMORY[0x223D5ACB0](v99[0], v99[1]);
    }

    v50 = sub_21E4DBCB8();
    if (os_log_type_enabled(v50, v46))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v99[0] = v52;
      *v51 = 136315138;
      v53 = sub_21E426648(0xD000000000000033, 0x800000021E4EBC00, v99);

      *(v51 + 4) = v53;
      _os_log_impl(&dword_21E3EB000, v50, v46, "%s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x223D5BF10](v52, -1, -1);
      MEMORY[0x223D5BF10](v51, -1, -1);
    }

    else
    {
    }

    v92 = *(v0 + 736);
    v94 = *(v0 + 720);
    v54 = *(v0 + 640);
    v55 = *(v0 + 632);
    v84 = *(v0 + 744);
    v85 = *(v0 + 624);
    v56 = *(v0 + 608);
    v57 = *(v0 + 600);
    v58 = *(v0 + 592);
    v59 = *(v0 + 584);
    v88 = *(v0 + 728);
    v89 = *(v0 + 576);
    v60 = *(v0 + 568);
    v61 = *(v0 + 552);
    v62 = *(v0 + 544);
    v90 = *(v0 + 560);
    v91 = *(v0 + 528);
    v86 = *(v0 + 536);
    v87 = *(v0 + 520);
    v93 = *(v0 + 512);
    v96 = *(v0 + 504);
    v63 = *(v0 + 256);
    v98 = *(v0 + 240);
    v97 = *(v0 + 232);
    v64 = MEMORY[0x277D61C48];
    if (v63 != 2)
    {
      v64 = MEMORY[0x277D61C70];
    }

    if (v63 == 3)
    {
      v65 = MEMORY[0x277D61C80];
    }

    else
    {
      v65 = v64;
    }

    (*(v57 + 104))(v56, *v65, v58);
    (*(v57 + 16))(v61, v56, v58);
    (*(v57 + 56))(v61, 0, 1, v58);
    v66 = *MEMORY[0x277D60E60];
    v67 = sub_21E4DBB78();
    (*(*(v67 - 8) + 104))(v62, v66, v67);
    v68 = *MEMORY[0x277D60DC0];
    v69 = sub_21E4DBB68();
    v70 = *(v69 - 8);
    (*(v70 + 104))(v62, v68, v69);
    (*(v70 + 56))(v62, 0, 1, v69);
    sub_21E4DBA88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5298);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_21E4E57E0;
    *(inited + 32) = 0x656C61636F6CLL;
    *(inited + 40) = 0xE600000000000000;
    sub_21E4DBA48();
    v72 = sub_21E4DB6B8();
    v74 = v73;
    (*(v55 + 8))(v54, v85);
    v75 = MEMORY[0x277D837D8];
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 80) = v75;
    *(inited + 48) = v72;
    *(inited + 56) = v74;
    sub_21E43B824(inited);
    swift_setDeallocating();
    sub_21E424BC0(inited + 32, &qword_27CEC52A0);
    sub_21E4DBA18();
    (*(v88 + 16))(v92, v84, v94);
    (*(v60 + 16))(v89, v59, v90);
    (*(v87 + 16))(v91, v86, v93);
    sub_21E4DB8C8();
    memset(v99, 0, 40);
    swift_allocObject();
    v76 = sub_21E4DB8B8();
    *(v0 + 776) = v76;
    v77 = sub_21E4DD158();
    v78 = *(*(v77 - 8) + 56);
    v78(v96, 1, 1, v77);
    v79 = swift_allocObject();
    v79[2] = 0;
    v79[3] = 0;
    v79[4] = v76;
    v79[5] = v97;
    v79[6] = v98;

    v80 = sub_21E435680(0, 0, v96, &unk_21E4E65E0, v79, MEMORY[0x277D604C8]);
    *(v0 + 784) = v80;
    v78(v96, 1, 1, v77);
    v81 = swift_allocObject();
    v81[2] = 0;
    v81[3] = 0;
    v81[4] = v80;

    *(v0 + 792) = sub_21E4353D4(0, 0, v96, &unk_21E4E65F0, v81);
    v82 = swift_task_alloc();
    *(v0 + 800) = v82;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
    *(v0 + 808) = v39;
    *v82 = v0;
    v82[1] = sub_21E436FDC;
    v36 = *(v0 + 496);
    v38 = *(v0 + 464);
    v40 = MEMORY[0x277D84950];
    v37 = v80;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200430](v36, v37, v38, v39, v40);
}

uint64_t sub_21E436FDC()
{
  *(*v1 + 816) = v0;

  if (v0)
  {
    v2 = sub_21E4381E4;
  }

  else
  {
    v2 = sub_21E4370F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E4370F0()
{
  v174 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  sub_21E4DD178();
  sub_21E4DB8D8();
  v4 = sub_21E4DBAE8();
  v5 = *(v2 + 8);
  v5(v1, v3);
  v6 = *(v4 + 16);

  if (v6)
  {
    v7 = v0[57];
    v8 = v0[55];
    sub_21E4DB8D8();
    v9 = sub_21E4DBAE8();
    v5(v7, v8);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = v0[51];
      v12 = *(v11 + 16);
      v11 += 16;
      v166 = v12;
      v13 = *(v11 + 64);
      v126 = ~v13;
      v14 = v9 + ((v13 + 32) & ~v13);
      v15 = v0[42];
      v124 = (v15 + 48);
      v125 = (v0[45] + 8);
      v127 = (v15 + 32);
      v16 = v0[37];
      v122 = (v16 + 32);
      v123 = (v11 + 40);
      v121 = (v16 + 88);
      v112 = (v16 + 8);
      v119 = v0[60] + v13;
      v120 = v0[59];
      v118 = (v11 + 16);
      v117 = *(v11 + 56);
      v116 = (v11 - 8);
      v115 = *MEMORY[0x277D608F0];
      v113 = *MEMORY[0x277D60900];
      v114 = *MEMORY[0x277D608F8];
      do
      {
        v152 = v14;
        v156 = v10;
        v17 = v0[49];
        v19 = v0[47];
        v18 = v0[48];
        v20 = v0[46];
        v21 = v0[44];
        v137 = v0[41];
        v166(v0[54]);
        sub_21E4DBAB8();
        sub_21E4DB638();

        sub_21E4DBAA8();
        v22 = sub_21E4DBB08();
        v144 = v23;
        v148 = v22;
        v24 = *v125;
        (*v125)(v19, v21);
        sub_21E4DBAA8();
        v25 = sub_21E4DBB08();
        v140 = v26;
        v142 = v25;
        v24(v20, v21);
        sub_21E424848(v17, v18, &qword_27CEC5278);
        v27 = *v124;
        v28 = (*v124)(v18, 1, v137);
        v29 = v0[48];
        v30 = v0[41];
        if (v28 == 1)
        {
          sub_21E4DB688();
          if (v27(v29, 1, v30) != 1)
          {
            sub_21E424BC0(v0[48], &qword_27CEC5278);
          }
        }

        else
        {
          (*v127)(v0[43], v0[48], v0[41]);
        }

        v31 = v0[50];
        v33 = v0[39];
        v32 = v0[40];
        v34 = v0[38];
        v35 = v0[36];
        (v166)(v32, v0[54], v31);
        (*v123)(v32, 0, 1, v31);
        sub_21E4DBAC8();
        (*v122)(v34, v33, v35);
        v36 = (*v121)(v34, v35);
        if (v36 == v115)
        {
          v138 = 1;
        }

        else if (v36 == v114)
        {
          v138 = 2;
        }

        else if (v36 == v113)
        {
          v138 = 3;
        }

        else
        {
          (*v112)(v0[38], v0[36]);
          v138 = 0;
        }

        v37 = v0[61];
        v38 = v0[62];
        v39 = v0[58];
        v40 = v0[53];
        v41 = v0[54];
        v131 = v38;
        v132 = v41;
        v42 = v0[50];
        v133 = v0[41];
        v134 = v0[43];
        v136 = v0[40];
        v43 = v0[34];
        v44 = v0[35];
        v135 = v44;
        v45 = sub_21E4DB978();
        (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
        v46 = sub_21E4DCBD8();
        (*(*(v46 - 8) + 56))(v43, 1, 1, v46);
        v130 = *(v120 + 16);
        v130(v37, v38, v39);
        (v166)(v40, v41, v42);
        v47 = (*(v120 + 80) + 16) & ~*(v120 + 80);
        v48 = (v119 + v47) & v126;
        v49 = swift_allocObject();
        v129 = *(v120 + 32);
        v129(v49 + v47, v37, v39);
        v128 = *v118;
        (*v118)(v49 + v48, v40, v42);
        type metadata accessor for SiriSharedUISuggestion();
        v50 = swift_allocObject();
        v51 = &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
        *v51 = 0;
        *(v51 + 1) = 0;
        v52 = &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
        strcpy(&v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier], "com.apple.siri");
        v52[15] = -18;
        *(v50 + 2) = v148;
        *(v50 + 3) = v144;
        *(v50 + 4) = v142;
        *(v50 + 5) = v140;
        (*v127)(&v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v134, v133);
        v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 2;
        sub_21E42D214(v136, &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
        *&v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = v138;
        sub_21E42D214(v135, &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
        sub_21E42D214(v43, &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
        v53 = &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
        *v53 = sub_21E43EB54;
        v53[1] = v49;
        v130(v37, v131, v39);
        (v166)(v40, v132, v42);
        v54 = swift_allocObject();
        v129(v54 + v47, v37, v39);
        v128(v54 + v48, v40, v42);
        v55 = &v50[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
        swift_beginAccess();
        v56 = *v55;
        *v55 = sub_21E43DD78;
        v55[1] = v54;
        sub_21E3F1EB0(v56);

        MEMORY[0x223D5AD10](v57);
        if (*((v0[26] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[26] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
        }

        v58 = v0[54];
        v60 = v0[49];
        v59 = v0[50];
        sub_21E4DD0D8();

        sub_21E424BC0(v60, &qword_27CEC5278);
        (*v116)(v58, v59);
        v14 = v152 + v117;
        v10 = v156 - 1;
      }

      while (v156 != 1);
      v170 = v0[26];
    }

    else
    {

      v170 = MEMORY[0x277D84F90];
    }

    v167 = v0[93];
    v68 = v0[91];
    v163 = v0[90];
    v160 = v0[76];
    v69 = v0[75];
    v157 = v0[74];
    v153 = v0[73];
    v70 = v0[71];
    v149 = v0[70];
    v145 = v0[67];
    v71 = v0[65];
    v141 = v0[64];
    v72 = v0[62];
    v73 = v0[33];
    v74 = (v73 + v0[96]);
    v75 = (v73 + v0[95]);
    v76 = v0[58];
    v77 = v0[59];
    v78 = sub_21E4DB8E8();
    v79 = *v75;
    *v75 = v78;
    v75[1] = v80;
    sub_21E3F1EB0(v79);
    v81 = sub_21E4DB8F8();
    v139 = v82;

    (*(v77 + 8))(v72, v76);
    (*(v71 + 8))(v145, v141);
    (*(v70 + 8))(v153, v149);
    (*(v69 + 8))(v160, v157);
    (*(v68 + 8))(v167, v163);
    v83 = *v74;
    *v74 = v81;
    v74[1] = v139;
    sub_21E3F1EB0(v83);
  }

  else
  {
    v61 = sub_21E4DD1F8();
    v62 = sub_21E45C20C(0);
    if (v63)
    {
      v172 = 32;
      v173 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v62);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if ((" from SiriSuggestions: " & 0x2F00000000000000) != 0x2000000000000000)
    {
      v172 = 32;
      v173 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000033, 0x800000021E4EBEC0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v64 = sub_21E4DBCB8();
    if (os_log_type_enabled(v64, v61))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v172 = v66;
      *v65 = 136315138;
      v67 = sub_21E426648(0xD000000000000066, 0x800000021E4EBDB0, &v172);

      *(v65 + 4) = v67;
      _os_log_impl(&dword_21E3EB000, v64, v61, "%s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      MEMORY[0x223D5BF10](v66, -1, -1);
      MEMORY[0x223D5BF10](v65, -1, -1);
    }

    else
    {
    }

    v84 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v85 = sub_21E4DCF68();
    v86 = [v84 initWithSuiteName_];

    if (v86 && (v87 = sub_21E4DCF68(), v88 = [v86 BOOLForKey_], v87, v86, v88))
    {
      v89 = sub_21E4DD1F8();
      v90 = sub_21E45C20C(0);
      if (v91)
      {
        v172 = 32;
        v173 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](v90);

        MEMORY[0x223D5ACB0](v172, v173);
      }

      if (("onsListAssistantEngine" & 0x2F00000000000000) != 0x2000000000000000)
      {
        v172 = 32;
        v173 = 0xE100000000000000;
        MEMORY[0x223D5ACB0](0xD000000000000042, 0x800000021E4EBD60);
        MEMORY[0x223D5ACB0](v172, v173);
      }

      v92 = sub_21E4DBCB8();
      if (os_log_type_enabled(v92, v89))
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v172 = v94;
        *v93 = 136315138;
        v95 = sub_21E426648(0xD000000000000066, 0x800000021E4EBDB0, &v172);

        *(v93 + 4) = v95;
        _os_log_impl(&dword_21E3EB000, v92, v89, "%s", v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v94);
        MEMORY[0x223D5BF10](v94, -1, -1);
        MEMORY[0x223D5BF10](v93, -1, -1);
      }

      else
      {
      }

      v103 = v0[91];
      v165 = v0[90];
      v169 = v0[93];
      v104 = v0[75];
      v159 = v0[74];
      v162 = v0[76];
      v105 = v0[71];
      v151 = v0[70];
      v155 = v0[73];
      v147 = v0[67];
      v106 = v0[65];
      v143 = v0[64];
      v107 = v0[62];
      v109 = v0[58];
      v108 = v0[59];
      v170 = sub_21E43D210();

      (*(v108 + 8))(v107, v109);
      (*(v106 + 8))(v147, v143);
      (*(v105 + 8))(v155, v151);
      (*(v104 + 8))(v162, v159);
      (*(v103 + 8))(v169, v165);
    }

    else
    {
      v96 = v0[91];
      v168 = v0[90];
      v171 = v0[93];
      v97 = v0[75];
      v161 = v0[74];
      v164 = v0[76];
      v98 = v0[71];
      v154 = v0[70];
      v158 = v0[73];
      v99 = v0[65];
      v146 = v0[64];
      v150 = v0[67];
      v100 = v0[62];
      v102 = v0[58];
      v101 = v0[59];

      (*(v101 + 8))(v100, v102);
      (*(v99 + 8))(v150, v146);
      (*(v98 + 8))(v158, v154);
      (*(v97 + 8))(v164, v161);
      (*(v96 + 8))(v171, v168);
      v170 = MEMORY[0x277D84F90];
    }
  }

  v110 = v0[1];

  return v110(v170);
}

uint64_t sub_21E4381E4()
{
  v31 = v0;
  v1 = v0[102];
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_21E4DD3A8();
  v0[24] = 0;
  v0[25] = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD000000000000047, 0x800000021E4EBE70);
  v0[28] = v1;
  sub_21E4DD458();
  v2 = v0[24];
  v3 = v0[25];
  v4 = sub_21E4DD218();
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v29 = 32;
    v30 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = sub_21E4DBCB8();
  v9 = os_log_type_enabled(v8, v4);
  v10 = v0[102];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v29 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(0xD000000000000066, 0x800000021E4EBDB0, &v29);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v8, v4, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[91];
  v27 = v0[90];
  v28 = v0[93];
  v26 = v0[76];
  v15 = v0[75];
  v25 = v0[74];
  v16 = v0[73];
  v17 = v0[71];
  v18 = v0[70];
  v19 = v0[67];
  v20 = v0[65];
  v21 = v0[64];

  (*(v20 + 8))(v19, v21);
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v26, v25);
  (*(v14 + 8))(v28, v27);

  v22 = v0[1];
  v23 = MEMORY[0x277D84F90];

  return v22(v23);
}

uint64_t sub_21E4386BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x2822009F8](sub_21E4386E0, 0, 0);
}

uint64_t sub_21E4386E0()
{
  sub_21E4DBA08();
  sub_21E4DB8C8();

  v0[6] = sub_21E4DB9D8();
  v0[7] = 0;
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_21E438808;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];

  return MEMORY[0x2821C6030](v4, v2, v3);
}

uint64_t sub_21E438808()
{

  return MEMORY[0x2822009F8](sub_21E438904, 0, 0);
}

uint64_t sub_21E438904()
{
  v1 = v0[7];
  sub_21E4DD188();
  if (v1)
  {
    v2 = v0[2];
    v3 = sub_21E4DB908();
    (*(*(v3 - 8) + 8))(v2, v3);
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_21E4389D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_21E438A78;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_21E438A78()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21E43EB68, 0, 0);
  }
}

uint64_t sub_21E438BA8(uint64_t a1, uint64_t a2)
{
  v3 = sub_21E4DB8E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52E0);
  v4 = sub_21E4DBAD8();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_21E4E57E0;
  (*(v5 + 16))(v7 + v6, a2, v4);
  v3(v7);
}

uint64_t sub_21E438CC8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 352) = a3;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  *(v5 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  *(v5 + 112) = swift_task_alloc();
  v6 = sub_21E4DBB38();
  *(v5 + 120) = v6;
  *(v5 + 128) = *(v6 - 8);
  *(v5 + 136) = swift_task_alloc();
  *(v5 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  *(v5 + 152) = swift_task_alloc();
  v7 = sub_21E4DB698();
  *(v5 + 160) = v7;
  *(v5 + 168) = *(v7 - 8);
  *(v5 + 176) = swift_task_alloc();
  v8 = sub_21E4DB978();
  *(v5 + 184) = v8;
  v9 = *(v8 - 8);
  *(v5 + 192) = v9;
  *(v5 + 200) = *(v9 + 64);
  *(v5 + 208) = swift_task_alloc();
  *(v5 + 216) = swift_task_alloc();
  v10 = sub_21E4DB9A8();
  *(v5 + 224) = v10;
  v11 = *(v10 - 8);
  *(v5 + 232) = v11;
  *(v5 + 240) = *(v11 + 64);
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  *(v5 + 264) = v12;
  *(v5 + 272) = *(v12 + 64);
  *(v5 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4968);
  *(v5 + 288) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E439024, 0, 0);
}

uint64_t sub_21E439024()
{
  v35 = v0;
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v1 = sub_21E4DBCC8();
  *(v0 + 296) = __swift_project_value_buffer(v1, qword_280C14558);
  v2 = sub_21E4DD1F8();
  v3 = sub_21E45C20C(0);
  if (v4)
  {
    v33 = 32;
    v34 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v3);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  if (("viceLocked:turnId:)" & 0x2F00000000000000) != 0x2000000000000000)
  {
    v33 = 32;
    v34 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000043, 0x800000021E4EBF50);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v5 = sub_21E4DBCB8();
  if (os_log_type_enabled(v5, v2))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v33 = v7;
    *v6 = 136315138;
    v8 = sub_21E426648(0xD000000000000043, 0x800000021E4EBF00, &v33);

    *(v6 + 4) = v8;
    _os_log_impl(&dword_21E3EB000, v5, v2, "%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x223D5BF10](v7, -1, -1);
    MEMORY[0x223D5BF10](v6, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 280);
  v10 = *(v0 + 288);
  v11 = *(v0 + 264);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v32 = *(v0 + 352);
  *(v0 + 56) = MEMORY[0x277D84F90];
  v14 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback;
  *(v0 + 304) = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback;
  v15 = &v13[v14];
  v16 = *(v0 + 80);
  v31 = *(v0 + 72);
  swift_beginAccess();
  v17 = *v15;
  *v15 = 0;
  v15[1] = 0;
  sub_21E3F1EB0(v17);
  v18 = sub_21E4DD158();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  sub_21E424848(v12, v9, &qword_27CEC5278);
  v20 = (*(v11 + 80) + 57) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = v13;
  *(v21 + 40) = v31;
  *(v21 + 48) = v16;
  *(v21 + 56) = v32;
  sub_21E42D214(v9, v21 + v20, &qword_27CEC5278);
  v22 = v13;

  v23 = sub_21E435680(0, 0, v10, &unk_21E4E6608, v21, MEMORY[0x277D60530]);
  *(v0 + 312) = v23;
  v19(v10, 1, 1, v18);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = v23;

  *(v0 + 320) = sub_21E4353D4(0, 0, v10, &unk_21E4E6618, v24);
  v25 = swift_task_alloc();
  *(v0 + 328) = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  *(v0 + 336) = v26;
  *v25 = v0;
  v25[1] = sub_21E4394B8;
  v27 = *(v0 + 256);
  v28 = *(v0 + 224);
  v29 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v27, v23, v28, v26, v29);
}

uint64_t sub_21E4394B8()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_21E439E5C;
  }

  else
  {
    v2 = sub_21E4395CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21E4395CC()
{
  v81 = v0;
  sub_21E4DD178();
  v1 = *(sub_21E4DB988() + 16);

  if (v1)
  {
    v2 = sub_21E4DB988();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = v0[24];
      v6 = *(v4 + 16);
      v5 = v4 + 16;
      v77 = v6;
      v7 = *(v5 + 64);
      v63 = ~v7;
      v8 = v0[16];
      v9 = v2 + ((v7 + 32) & ~v7);
      v61 = (v8 + 88);
      v62 = (v8 + 32);
      v53 = (v8 + 8);
      v60 = v0[29];
      v59 = v0[30] + v7;
      v58 = *(v5 + 56);
      v57 = (v0[21] + 32);
      v55 = *MEMORY[0x277D608F8];
      v56 = *MEMORY[0x277D608F0];
      v54 = *MEMORY[0x277D60900];
      do
      {
        v75 = v9;
        v76 = v3;
        v11 = v0[18];
        v10 = v0[19];
        v12 = v0[17];
        v13 = v0[15];
        (v77)(v0[27]);
        v14 = sub_21E4DB918();
        v73 = v15;
        v74 = v14;
        v16 = sub_21E4DB928();
        v71 = v17;
        v72 = v16;
        sub_21E4DB958();
        v18 = sub_21E4DBAD8();
        (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
        sub_21E4DB938();
        (*v62)(v12, v11, v13);
        v19 = (*v61)(v12, v13);
        if (v19 == v56)
        {
          v70 = 1;
        }

        else if (v19 == v55)
        {
          v70 = 2;
        }

        else if (v19 == v54)
        {
          v70 = 3;
        }

        else
        {
          (*v53)(v0[17], v0[15]);
          v70 = 0;
        }

        v20 = v0[31];
        v21 = v0[27];
        v22 = v0[28];
        v23 = v0[26];
        v64 = v23;
        v65 = v0[32];
        v24 = v0[23];
        v66 = v0[20];
        v25 = v0[14];
        v68 = v0[19];
        v69 = v0[13];
        v67 = v0[22];
        v77(v25, v21, v24);
        (*(v5 + 40))(v25, 0, 1, v24);
        sub_21E4DB948();
        (*(v60 + 16))(v20, v65, v22);
        v77(v23, v21, v24);
        v26 = (*(v60 + 80) + 16) & ~*(v60 + 80);
        v27 = swift_allocObject();
        (*(v60 + 32))(v27 + v26, v20, v22);
        (*(v5 + 16))(v27 + ((v59 + v26) & v63), v64, v24);
        type metadata accessor for SiriSharedUISuggestion();
        v28 = swift_allocObject();
        v29 = &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
        *v29 = 0;
        *(v29 + 1) = 0;
        v30 = &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
        strcpy(&v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier], "com.apple.siri");
        v30[15] = -18;
        *(v28 + 2) = v74;
        *(v28 + 3) = v73;
        *(v28 + 4) = v72;
        *(v28 + 5) = v71;
        (*v57)(&v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v67, v66);
        v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 0;
        sub_21E42D214(v68, &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
        *&v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = v70;
        sub_21E42D214(v25, &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
        sub_21E42D214(v69, &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
        v31 = &v28[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
        *v31 = sub_21E43E1B8;
        v31[1] = v27;

        MEMORY[0x223D5AD10](v32);
        if (*((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[7] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_21E4DD0A8();
        }

        v33 = v0[27];
        v34 = v0[23];
        sub_21E4DD0D8();

        (*(v5 - 8))(v33, v34);
        v9 = v75 + v58;
        v3 = v76 - 1;
      }

      while (v76 != 1);
      v35 = v0[7];
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    v78 = v35;
    v43 = v0[32];
    v45 = v0[28];
    v44 = v0[29];
    v46 = (v0[12] + v0[38]);
    v47 = sub_21E4DB998();
    v49 = v48;

    (*(v44 + 8))(v43, v45);
    v50 = *v46;
    *v46 = v47;
    v46[1] = v49;
    sub_21E3F1EB0(v50);
  }

  else
  {
    v36 = sub_21E4DD1F8();
    v37 = sub_21E45C20C(0);
    if (v38)
    {
      v79 = 32;
      v80 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](v37);

      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    if (("rom SiriSuggestions" & 0x2F00000000000000) != 0x2000000000000000)
    {
      v79 = 32;
      v80 = 0xE100000000000000;
      MEMORY[0x223D5ACB0](0xD000000000000036, 0x800000021E4EBFA0);
      MEMORY[0x223D5ACB0](32, 0xE100000000000000);
    }

    v39 = sub_21E4DBCB8();
    if (os_log_type_enabled(v39, v36))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v79 = v41;
      *v40 = 136315138;
      v42 = sub_21E426648(0xD000000000000043, 0x800000021E4EBF00, &v79);

      *(v40 + 4) = v42;
      _os_log_impl(&dword_21E3EB000, v39, v36, "%s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v41);
      MEMORY[0x223D5BF10](v41, -1, -1);
      MEMORY[0x223D5BF10](v40, -1, -1);
    }

    else
    {
    }

    (*(v0[29] + 8))(v0[32], v0[28]);
    v78 = MEMORY[0x277D84F90];
  }

  v51 = v0[1];

  return v51(v78);
}

uint64_t sub_21E439E5C()
{
  v19 = v0;
  v1 = v0[43];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_21E4DD3A8();
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  MEMORY[0x223D5ACB0](0xD000000000000047, 0x800000021E4EBE70);
  v0[8] = v1;
  sub_21E4DD458();
  v2 = v0[5];
  v3 = v0[6];
  v4 = sub_21E4DD218();
  v5 = sub_21E45C20C(0);
  if (v6)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v5);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v7 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v7 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v17 = 32;
    v18 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v2, v3);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v8 = sub_21E4DBCB8();
  v9 = os_log_type_enabled(v8, v4);
  v10 = v0[43];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    v13 = sub_21E426648(0xD000000000000043, 0x800000021E4EBF00, &v17);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_21E3EB000, v8, v4, "%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x223D5BF10](v12, -1, -1);
    MEMORY[0x223D5BF10](v11, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];
  v15 = MEMORY[0x277D84F90];

  return v14(v15);
}

uint64_t sub_21E43A16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 64) = a6;
  *(v8 + 72) = a8;
  *(v8 + 208) = a7;
  *(v8 + 48) = a4;
  *(v8 + 56) = a5;
  *(v8 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278);
  *(v8 + 80) = swift_task_alloc();
  v9 = sub_21E4DB698();
  *(v8 + 88) = v9;
  *(v8 + 96) = *(v9 - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21E43A27C, 0, 0);
}

uint64_t sub_21E43A27C()
{
  v1 = *(v0 + 48);
  v2 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_cachedAutoCompletionsFacade;
  if (*(v1 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_cachedAutoCompletionsFacade))
  {
    v3 = *(v0 + 48);
    v4 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_cachedAutoCompletionsFacade);
  }

  else
  {
    sub_21E4DBA08();
    v4 = sub_21E4DB9F8();
    v3 = *(v0 + 48);
  }

  *(v0 + 120) = 0;
  *(v0 + 128) = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);
  v7 = *(v0 + 96);
  *(v1 + v2) = v4;

  v8 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  *(v0 + 136) = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  swift_beginAccess();
  v9 = *(v7 + 16);
  *(v0 + 144) = v9;
  *(v0 + 152) = (v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v9(v5, v3 + v8, v6);
  v10 = sub_21E4DB648();
  v12 = v11;
  *(v0 + 160) = v11;
  v13 = *(v7 + 8);
  *(v0 + 168) = v13;
  *(v0 + 176) = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v5, v6);
  v14 = swift_task_alloc();
  *(v0 + 184) = v14;
  *v14 = v0;
  v14[1] = sub_21E43A49C;
  v15 = *(v0 + 208);
  v16 = *(v0 + 56);
  v17 = *(v0 + 64);
  v18 = *(v0 + 40);

  return MEMORY[0x2821C6038](v18, v16, v17, v10, v12, v15);
}

uint64_t sub_21E43A49C()
{

  return MEMORY[0x2822009F8](sub_21E43A5B4, 0, 0);
}

uint64_t sub_21E43A5B4()
{
  v32 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  sub_21E424848(v0[9], v3, &qword_27CEC5278);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21E424BC0(v0[10], &qword_27CEC5278);
LABEL_5:
    v7 = v0[15];
    sub_21E4DD188();
    if (v7)
    {
      v8 = v0[5];
      v9 = sub_21E4DB9A8();
      (*(*(v9 - 8) + 8))(v8, v9);
    }

    v10 = v0[1];

    return v10();
  }

  v4 = v0[6];
  (*(v0[12] + 32))(v0[13], v0[10], v0[11]);
  v5 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink;
  v0[24] = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink;
  v6 = v0[21];
  if (*(v4 + v5))
  {
    v6(v0[13], v0[11]);
    goto LABEL_5;
  }

  v29 = v0[18];
  v12 = v0[17];
  v13 = v0[14];
  v14 = v0[11];
  v15 = v0[6];
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_21E4DD3A8();
  MEMORY[0x223D5ACB0](0xD00000000000003DLL, 0x800000021E4EC0F0);
  sub_21E43EAF8();
  v16 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v16);

  MEMORY[0x223D5ACB0](0xD000000000000013, 0x800000021E4EC130);
  v29(v13, v15 + v12, v14);
  v17 = sub_21E4DD4E8();
  MEMORY[0x223D5ACB0](v17);

  v6(v13, v14);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v18 = sub_21E4DBCC8();
  __swift_project_value_buffer(v18, qword_280C14558);
  v19 = sub_21E4DD208();
  v20 = sub_21E45C20C(0);
  if (v21)
  {
    v30 = 32;
    v31 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v20);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v22 = sub_21E4DBCB8();
  if (os_log_type_enabled(v22, v19))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v30 = v24;
    *v23 = 136315138;
    v25 = sub_21E426648(0xD000000000000043, 0x800000021E4EBF00, &v30);

    *(v23 + 4) = v25;
    _os_log_impl(&dword_21E3EB000, v22, v19, "%s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x223D5BF10](v24, -1, -1);
    MEMORY[0x223D5BF10](v23, -1, -1);
  }

  else
  {
  }

  (v0[18])(v0[14], v0[6] + v0[17], v0[11]);
  v26 = swift_task_alloc();
  v0[25] = v26;
  *v26 = v0;
  v26[1] = sub_21E43AADC;
  v28 = v0[13];
  v27 = v0[14];

  return MEMORY[0x2821C6058](v28, v27);
}

uint64_t sub_21E43AADC()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 112);
  v3 = *(*v0 + 88);

  v1(v2, v3);

  return MEMORY[0x2822009F8](sub_21E43AC3C, 0, 0);
}

uint64_t sub_21E43AC3C()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 48);
  (*(v0 + 168))(*(v0 + 104), *(v0 + 88));
  *(v2 + v1) = 1;
  v3 = *(v0 + 120);
  sub_21E4DD188();
  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = sub_21E4DB9A8();
    (*(*(v5 - 8) + 8))(v4, v5);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_21E43AD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_21E43AE14;

  return MEMORY[0x282200480](5000000000);
}

uint64_t sub_21E43AE14()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_21E43AF44, 0, 0);
  }
}

uint64_t sub_21E43AF44()
{
  sub_21E4DB9A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6720);
  sub_21E4DD178();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21E43AFDC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 lowercaseString];
  v4 = sub_21E4DCF78();
  v6 = v5;

  sub_21E4DD3A8();

  MEMORY[0x223D5ACB0](v4, v6);
  if (qword_280C14550 != -1)
  {
    swift_once();
  }

  v7 = sub_21E4DBCC8();
  __swift_project_value_buffer(v7, qword_280C14558);
  v8 = sub_21E4DD1F8();
  v26 = 0xD000000000000023;
  v27 = 0x800000021E4EC1D0;
  v9 = sub_21E45C20C(0);
  if (v10)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](v9);

    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v11 = (0x800000021E4EC200 >> 56) & 0xF;
  if ((0x800000021E4EC200 & 0x2000000000000000) == 0)
  {
    v11 = 48;
  }

  if (v11)
  {
    v24 = 32;
    v25 = 0xE100000000000000;
    MEMORY[0x223D5ACB0](0xD000000000000030, 0x800000021E4EC200);
    MEMORY[0x223D5ACB0](32, 0xE100000000000000);
  }

  v13 = v26;
  v12 = v27;
  v14 = sub_21E4DBCB8();
  if (os_log_type_enabled(v14, v8))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v24 = v16;
    *v15 = 136315138;
    v17 = sub_21E426648(v13, v12, &v24);

    *(v15 + 4) = v17;
    _os_log_impl(&dword_21E3EB000, v14, v8, "%s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x223D5BF10](v16, -1, -1);
    MEMORY[0x223D5BF10](v15, -1, -1);
  }

  else
  {
  }

  if (v4 == 0x6679616C70736964 && v6 == 0xEE0064726177726FLL || (sub_21E4DD518() & 1) != 0 || v4 == 0x646578696DLL && v6 == 0xE500000000000000 || (sub_21E4DD518() & 1) != 0)
  {

    v18 = MEMORY[0x277D60828];
  }

  else if (v4 == 0x6F79616C70736964 && v6 == 0xEB00000000796C6ELL || (sub_21E4DD518() & 1) != 0 || v4 == 0x746E656C6973 && v6 == 0xE600000000000000 || (sub_21E4DD518() & 1) != 0)
  {

    v18 = MEMORY[0x277D60818];
  }

  else if (v4 == 0x726F666563696F76 && v6 == 0xEC00000064726177 || (sub_21E4DD518() & 1) != 0)
  {

    v18 = MEMORY[0x277D60820];
  }

  else if (v4 == 0x6C6E6F6563696F76 && v6 == 0xE900000000000079 || (sub_21E4DD518() & 1) != 0 || v4 == 0x6563696F76 && v6 == 0xE500000000000000)
  {

    v18 = MEMORY[0x277D60838];
  }

  else
  {
    v23 = sub_21E4DD518();

    v18 = MEMORY[0x277D60830];
    if (v23)
    {
      v18 = MEMORY[0x277D60838];
    }
  }

  v19 = *v18;
  v20 = sub_21E4DBA58();
  v21 = *(*(v20 - 8) + 104);

  return v21(a2, v19, v20);
}

uint64_t sub_21E43B4CC()
{
  v1 = sub_21E4DB698();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21E4DB688();
  v5 = OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_typingSessionId;
  swift_beginAccess();
  (*(v2 + 40))(v0 + v5, v4, v1);
  result = swift_endAccess();
  *(v0 + OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink) = 0;
  return result;
}

id SiriSharedUISuggestionsProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SiriSharedUISuggestionsProvider.init()()
{
  v1 = &v0[OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_suggestionsExposureCallback];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_autoCompleteSuggestionsExposureCallback];
  *v2 = 0;
  v2[1] = 0;
  v3 = &v0[OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_continuerSuggestionsRenderedCallback];
  *v3 = 0;
  v3[1] = 0;
  sub_21E4DB688();
  v0[OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_emittedRequestLink] = 0;
  *&v0[OBJC_IVAR____TtC12SiriSharedUI31SiriSharedUISuggestionsProvider_cachedAutoCompletionsFacade] = 0;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for SiriSharedUISuggestionsProvider();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SiriSharedUISuggestionsProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUISuggestionsProvider();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_21E43B824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52E8);
    v3 = sub_21E4DD4C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21E424848(v4, &v13, &qword_27CEC52A0);
      v5 = v13;
      v6 = v14;
      result = sub_21E4B143C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21E424A24(&v15, v3[7] + 40 * result);
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

uint64_t sub_21E43B958(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_21E424FF4;

  return sub_21E434808(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_21E43BA68(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E424FF4;

  return sub_21E435948(a1, v4, v5, v6);
}

uint64_t sub_21E43BB1C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  MEMORY[0x28223BE20](v0 - 8);
  v94 = &v71 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v71 - v3;
  v93 = &v71 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v71 - v6;
  v8 = sub_21E4DB698();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = v12;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v71 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v92 = &v71 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v71 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v71 - v21;
  v97 = MEMORY[0x277D84F90];
  sub_21E4DB688();
  sub_21E4DB688();
  sub_21E4DB688();
  v24 = v9 + 2;
  v23 = v9[2];
  v76 = v22;
  v25 = v22;
  v26 = v23;
  v78 = v23;
  v23(v15, v25, v8);
  v27 = v12;
  v28 = v15;
  v26(v27, v15, v8);
  v89 = sub_21E4DBAD8();
  v29 = *(v89 - 8);
  v88 = *(v29 + 56);
  v90 = v29 + 56;
  v88(v7, 1, 1, v89);
  v86 = sub_21E4DB978();
  v30 = *(v86 - 8);
  v85 = *(v30 + 56);
  v87 = v30 + 56;
  v85(v4, 1, 1, v86);
  v83 = sub_21E4DCBD8();
  v31 = *(v83 - 8);
  v82 = *(v31 + 56);
  v84 = v31 + 56;
  v82(v94, 1, 1, v83);
  v32 = type metadata accessor for SiriSharedUISuggestion();
  v33 = swift_allocObject();
  v34 = &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v34 = 0;
  *(v34 + 1) = 0;
  v35 = &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v91 = v9[1];
  v95 = v9 + 1;
  v91(v15, v8);
  strcpy(v35, "com.apple.siri");
  v35[15] = -18;
  *(v33 + 2) = 0x73754D2079616C50;
  *(v33 + 3) = 0xEA00000000006369;
  *(v33 + 4) = 0x73754D2079616C50;
  *(v33 + 5) = 0xEA00000000006369;
  v36 = v9[4];
  v80 = v9 + 4;
  v81 = v36;
  v36(&v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v96, v8);
  v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 1;
  v37 = v7;
  v73 = v7;
  sub_21E42D214(v7, &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 0;
  v38 = v93;
  sub_21E42D214(v93, &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  v39 = v94;
  sub_21E42D214(v94, &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v40 = &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  v79 = CGPointMake;
  *v40 = CGPointMake;
  *(v40 + 1) = 0;
  v72 = 0x800000021E4EC240;
  v71 = v28;
  v77 = v20;
  v41 = v20;
  v42 = v8;
  v43 = v78;
  v74 = v24;
  v78(v28, v41, v8);
  v44 = v96;
  v43(v96, v28, v42);
  v45 = v42;
  v88(v37, 1, 1, v89);
  v85(v38, 1, 1, v86);
  v82(v39, 1, 1, v83);
  v75 = v32;
  v46 = swift_allocObject();
  v47 = &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v47 = 0;
  *(v47 + 1) = 0;
  v48 = &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v49 = v71;
  v50 = v91;
  v91(v71, v45);
  strcpy(v48, "com.apple.siri");
  v48[15] = -18;
  v51 = v72;
  *(v46 + 2) = 0xD000000000000013;
  *(v46 + 3) = v51;
  *(v46 + 4) = 0xD000000000000013;
  *(v46 + 5) = v51;
  v81(&v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v44, v45);
  v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 1;
  v52 = v73;
  sub_21E42D214(v73, &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 0;
  v53 = v93;
  sub_21E42D214(v93, &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  v54 = v94;
  sub_21E42D214(v94, &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v55 = &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  *v55 = v79;
  v55[1] = 0;
  v72 = 0x800000021E4EC260;
  v56 = v50;
  v57 = v78;
  v78(v49, v92, v45);
  v57(v96, v49, v45);
  v88(v52, 1, 1, v89);
  v85(v53, 1, 1, v86);
  v82(v54, 1, 1, v83);
  v58 = swift_allocObject();
  v59 = &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v59 = 0;
  *(v59 + 1) = 0;
  v60 = &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v56(v49, v45);
  strcpy(v60, "com.apple.siri");
  v60[15] = -18;
  v61 = v72;
  *(v58 + 2) = 0xD000000000000011;
  *(v58 + 3) = v61;
  *(v58 + 4) = 0xD000000000000011;
  *(v58 + 5) = v61;
  v81(&v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v96, v45);
  v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 1;
  sub_21E42D214(v52, &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 0;
  sub_21E42D214(v93, &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  sub_21E42D214(v54, &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v62 = &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  *v62 = v79;
  v62[1] = 0;
  v63 = &v33[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  *v63 = 0x6C7070612E6D6F63;
  *(v63 + 1) = 0xEF636973754D2E65;

  v64 = &v46[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  *v64 = 0xD000000000000015;
  *(v64 + 1) = 0x800000021E4EC280;

  v65 = &v58[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  *v65 = 0xD000000000000011;
  *(v65 + 1) = 0x800000021E4EC2A0;

  MEMORY[0x223D5AD10](v66);
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  MEMORY[0x223D5AD10](v67);
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  MEMORY[0x223D5AD10](v68);
  if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  v69 = v91;
  v91(v92, v45);
  v69(v77, v45);
  v69(v76, v45);
  return v97;
}

uint64_t sub_21E43C6D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21E424FF4;

  return sub_21E4386BC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_21E43C79C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E424FF4;

  return sub_21E4389D4(a1, v4, v5, v6);
}

unint64_t sub_21E43C850(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52D8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E40);
    v7 = sub_21E4DD4C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21E424848(v9, v5, &qword_27CEC52D8);
      result = sub_21E4B14B4(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E4DB8A8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21E43CA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52F0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52F8);
    v7 = sub_21E4DD4C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21E424848(v9, v5, &qword_27CEC52F0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_21E4B143C(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_21E4DCD28();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void *sub_21E43CC24(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52C0);
  v3 = sub_21E4DD4C8();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_21E4B1588(v4);
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

    v8 = sub_21E4B1588(v4);
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

unint64_t sub_21E43CD2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52B8);
    v3 = sub_21E4DD4C8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_21E4B1588(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_21E43CE08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52C8);
    v3 = sub_21E4DD4C8();
    v4 = a1 + 32;

    while (1)
    {
      sub_21E424848(v4, &v13, &qword_27CEC52D0);
      v5 = v13;
      v6 = v14;
      result = sub_21E4B143C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_21E43EAE8(&v15, (v3[7] + 32 * result));
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

unint64_t sub_21E43CF38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC52B0);
    v7 = sub_21E4DD4C8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_21E424848(v9, v5, &qword_27CEC52A8);
      result = sub_21E4B15CC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_21E4DB698();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_21E43D120(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E20);
    v3 = sub_21E4DD4C8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_21E4B16A0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

uint64_t sub_21E43D210()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5260);
  MEMORY[0x28223BE20](v0 - 8);
  v92 = &v68 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5268);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v68 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v68 - v6;
  v8 = sub_21E4DB698();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v68 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v90 = &v68 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v91 = &v68 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v94 = MEMORY[0x277D84F90];
  sub_21E4DB688();
  sub_21E4DB688();
  sub_21E4DB688();
  v22 = v9[2];
  v74 = v21;
  v23 = v21;
  v24 = v22;
  v76 = v22;
  v22(v15, v23, v8);
  v24(v12, v15, v8);
  v25 = v9 + 2;
  v88 = sub_21E4DBAD8();
  v26 = *(v88 - 8);
  v87 = *(v26 + 56);
  v77 = v26 + 56;
  v69 = v7;
  v87(v7, 1, 1, v88);
  v85 = sub_21E4DB978();
  v27 = *(v85 - 8);
  v84 = *(v27 + 56);
  v86 = v27 + 56;
  v84(v4, 1, 1, v85);
  v82 = sub_21E4DCBD8();
  v28 = *(v82 - 8);
  v81 = *(v28 + 56);
  v83 = v28 + 56;
  v81(v92, 1, 1, v82);
  v75 = type metadata accessor for SiriSharedUISuggestion();
  v29 = swift_allocObject();
  v30 = &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v32 = v9[1];
  v89 = v9 + 1;
  v93 = v32;
  v32(v15, v8);
  strcpy(v31, "com.apple.siri");
  v31[15] = -18;
  *(v29 + 2) = 0x43206F7420646441;
  *(v29 + 3) = 0xEF7261646E656C61;
  *(v29 + 4) = 0x43206F7420646441;
  *(v29 + 5) = 0xEF7261646E656C61;
  v33 = v9[4];
  v79 = v9 + 4;
  v80 = v33;
  v33(&v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v12, v8);
  v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 2;
  sub_21E42D214(v7, &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 1;
  v34 = v4;
  v72 = v4;
  sub_21E42D214(v4, &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  v35 = v92;
  sub_21E42D214(v92, &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v36 = &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  v78 = CGPointMake;
  *v36 = CGPointMake;
  *(v36 + 1) = 0;
  v71 = 0x800000021E4EC150;
  v37 = v76;
  v73 = v25;
  v76(v15, v91, v8);
  v38 = v12;
  v39 = v12;
  v40 = v15;
  v37(v39, v15, v8);
  v41 = v69;
  v87(v69, 1, 1, v88);
  v84(v34, 1, 1, v85);
  v81(v35, 1, 1, v82);
  v42 = swift_allocObject();
  v43 = &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v43 = 0;
  *(v43 + 1) = 0;
  v44 = &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v93(v40, v8);
  strcpy(v44, "com.apple.siri");
  v44[15] = -18;
  v45 = v71;
  *(v42 + 2) = 0xD00000000000001BLL;
  *(v42 + 3) = v45;
  *(v42 + 4) = 0xD00000000000001BLL;
  *(v42 + 5) = v45;
  v46 = v38;
  v70 = v38;
  v80(&v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v38, v8);
  v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 2;
  v47 = v41;
  sub_21E42D214(v41, &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 1;
  v48 = v72;
  sub_21E42D214(v72, &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  sub_21E42D214(v35, &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v49 = &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  *v49 = v78;
  v49[1] = 0;
  v71 = 0x800000021E4EC170;
  v50 = v40;
  v51 = v40;
  v52 = v76;
  v76(v51, v90, v8);
  v52(v46, v50, v8);
  v53 = v8;
  v87(v47, 1, 1, v88);
  v84(v48, 1, 1, v85);
  v54 = v92;
  v81(v92, 1, 1, v82);
  v55 = swift_allocObject();
  v56 = &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_exposureCallback];
  *v56 = 0;
  *(v56 + 1) = 0;
  v57 = &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  v93(v50, v53);
  strcpy(v57, "com.apple.siri");
  v57[15] = -18;
  v58 = v71;
  *(v55 + 2) = 0xD000000000000010;
  *(v55 + 3) = v58;
  *(v55 + 4) = 0xD000000000000010;
  *(v55 + 5) = v58;
  v80(&v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionId], v70, v53);
  v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_type] = 2;
  sub_21E42D214(v47, &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionData], &qword_27CEC5270);
  *&v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_suggestionRequestType] = 1;
  sub_21E42D214(v48, &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_autoCompleteData], &qword_27CEC5268);
  sub_21E42D214(v54, &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_toolInvocationData], &qword_27CEC5260);
  v59 = &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_tappedCallback];
  *v59 = v78;
  v59[1] = 0;
  v60 = &v29[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  *v60 = 0xD000000000000013;
  *(v60 + 1) = 0x800000021E4EC190;

  v61 = &v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  strcpy(&v42[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier], "com.apple.siri");
  v61[15] = -18;

  v62 = &v55[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUISuggestion_mockIconBundleIdentifier];
  *v62 = 0xD000000000000013;
  *(v62 + 1) = 0x800000021E4EC1B0;

  MEMORY[0x223D5AD10](v63);
  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  MEMORY[0x223D5AD10](v64);
  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  MEMORY[0x223D5AD10](v65);
  if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_21E4DD0A8();
  }

  sub_21E4DD0D8();

  v66 = v93;
  v93(v90, v53);
  v66(v91, v53);
  v66(v74, v53);
  return v94;
}

uint64_t sub_21E43DD78()
{
  v1 = *(sub_21E4DB908() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_21E4DBAD8() - 8);
  v5 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_21E438BA8(v0 + v2, v5);
}

uint64_t sub_21E43DE44(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5278) - 8);
  v5 = (*(v4 + 80) + 57) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_21E4240F0;

  return sub_21E43A16C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21E43DFAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21E424FF4;

  return sub_21E43AD70(a1, v4, v5, v6);
}

uint64_t objectdestroy_8Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return MEMORY[0x2821FE8E8](v2, v12 + v13, v14 | 7);
}

uint64_t sub_21E43E1F8(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v6 = v3;
  v7 = *(a1(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(a2(0) - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = a3();
  v12(v6 + v11);
}

uint64_t type metadata accessor for SiriSharedUISuggestionsProvider()
{
  result = qword_280C159E0;
  if (!qword_280C159E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E43E354()
{
  result = sub_21E4DB698();
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

uint64_t dispatch thunk of SiriSharedUISuggestionsProvider.fetchConversationStarterSuggestionsWithTimeout(deviceLocked:invocationSource:isFirstInvocationSinceOSInstalled:turnId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x120);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21E43EB58;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SiriSharedUISuggestionsProvider.fetchConversationContinuerSuggestionsWithTimeout(requestId:currentMode:deviceLocked:invocationSource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *((*MEMORY[0x277D85000] & *v5) + 0x128);
  v15 = (v12 + *v12);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_21E43EB58;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SiriSharedUISuggestionsProvider.fetchAutoCompleteSuggestionsWithTimeout(query:deviceLocked:turnId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x130);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21E43E8D4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_21E43E8D4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_21E43EA84(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

_OWORD *sub_21E43EAE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_21E43EAF8()
{
  result = qword_27CEC6680;
  if (!qword_27CEC6680)
  {
    sub_21E4DB698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC6680);
  }

  return result;
}

uint64_t sub_21E43EB74()
{
  result = sub_21E4DCF78();
  qword_280C16A48 = result;
  unk_280C16A50 = v1;
  return result;
}

uint64_t sub_21E43EBA4()
{
  result = sub_21E4DCF78();
  qword_280C16A38 = result;
  unk_280C16A40 = v1;
  return result;
}

void sub_21E43EBD4(void *a1)
{
  v3 = qword_280C15B28;
  v4 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_speechRecognized);
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = sub_21E4DCF68();
  [a1 encodeObject:v4 forKey:v5];

  v6 = qword_280C15B20;
  v7 = *(v1 + OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_addViews);
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_21E4DCF68();
  [a1 encodeObject:v7 forKey:v8];
}

uint64_t sub_21E43ED70(void *a1)
{
  sub_21E43F008(0, &qword_280C14140);
  if (qword_280C15B28 != -1)
  {
    swift_once();
  }

  v2 = sub_21E4DD2B8();
  if (v2)
  {
    v3 = v2;
    sub_21E43F008(0, &qword_280C141B8);
    if (qword_280C15B20 != -1)
    {
      swift_once();
    }

    v4 = sub_21E4DD2B8();
    if (v4)
    {
      v5 = v4;
      v6 = objc_allocWithZone(type metadata accessor for SiriSharedUIReplayData());
      sub_21E43F050(v3, v5);
      v8 = v7;

      swift_getObjectType();
      swift_deallocPartialClassInstance();
      return v8;
    }
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

id sub_21E43EF50()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SiriSharedUIReplayData();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_21E43F008(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_21E43F050(void *a1, void *a2)
{
  v4 = &v2[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_utterance];
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  *&v2[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_speechRecognized] = a1;
  *&v2[OBJC_IVAR____TtC12SiriSharedUI22SiriSharedUIReplayData_addViews] = a2;
  v5 = a1;
  v6 = a2;
  v7 = [v5 af_userUtteranceValue];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 bestTextInterpretation];

    if (v9)
    {
      v10 = sub_21E4DCF78();
      v12 = v11;

      *v4 = v10;
      v4[1] = v12;

      v13.receiver = v2;
      v13.super_class = type metadata accessor for SiriSharedUIReplayData();
      objc_msgSendSuper2(&v13, sel_init);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_21E43F140()
{
  v1 = [objc_opt_self() scheduledTimerWithTimeInterval:v0 target:sel_notifyDelegate selector:0 userInfo:0 repeats:2.0];
  v2 = *(v0 + 16);
  *(v0 + 16) = v1;
  v3 = v1;

  if (v3)
  {
    v4 = [objc_opt_self() mainRunLoop];
    [v4 addTimer:v3 forMode:*MEMORY[0x277CBE738]];
  }
}

uint64_t sub_21E43F2C8()
{
  sub_21E3F1E88(v0 + 24);

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

id sub_21E43F370()
{
  v1 = [objc_opt_self() effectWithStyle_];
  v2 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  return v2;
}

void sub_21E43F3E0(void *a1)
{
  v3 = [objc_opt_self() effectWithStyle_];
  [a1 setEffect_];
}

uint64_t sub_21E43F45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E43F5A4();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E43F4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E43F5A4();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E43F524()
{
  sub_21E43F5A4();
  sub_21E4DC368();
  __break(1u);
}

unint64_t sub_21E43F550()
{
  result = qword_27CEC5318;
  if (!qword_27CEC5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5318);
  }

  return result;
}

unint64_t sub_21E43F5A4()
{
  result = qword_27CEC5320;
  if (!qword_27CEC5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5320);
  }

  return result;
}

uint64_t sub_21E43F5F8()
{
  v0 = sub_21E4DB4F8();
  __swift_allocate_value_buffer(v0, qword_27CEC5328);
  v1 = __swift_project_value_buffer(v0, qword_27CEC5328);
  *v1 = type metadata accessor for SiriSharedUIFeedbackController(v1);
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t SiriSharedUIFeedbackController.isProvidingFeedback.getter()
{
  v1 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SiriSharedUIFeedbackController.isProvidingFeedback.setter(char a1)
{
  v3 = OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void __swiftcall SiriSharedUIFeedbackController.init(nibName:bundle:)(SiriSharedUIFeedbackController *__return_ptr retstr, Swift::String_optional nibName, NSBundle_optional bundle)
{
  isa = bundle.value.super.isa;
  if (nibName.value._object)
  {
    v4 = sub_21E4DCF68();
  }

  else
  {
    v4 = 0;
  }

  [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNibName:v4 bundle:isa];
}

char *SiriSharedUIFeedbackController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v3[OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback] = 0;
  *&v3[OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController] = 0;
  *&v3[OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult] = 0;
  if (a2)
  {
    v5 = sub_21E4DCF68();
  }

  else
  {
    v5 = 0;
  }

  v11.receiver = v3;
  v11.super_class = SiriSharedUIFeedbackController;
  v6 = objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, v5, a3);

  sub_21E4DCCC8();
  sub_21E444794(&qword_280C14118);
  v7 = v6;
  v8 = MEMORY[0x223D5A960]();

  v9 = *&v7[OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController];
  *&v7[OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController] = v8;

  return v7;
}

void SiriSharedUIFeedbackController.init(coder:)()
{
  *(v0 + OBJC_IVAR___SiriSharedUIFeedbackController_isProvidingFeedback) = 0;
  *(v0 + OBJC_IVAR___SiriSharedUIFeedbackController_feedbackController) = 0;
  *(v0 + OBJC_IVAR___SiriSharedUIFeedbackController_evaluationResult) = 0;
  sub_21E4DD468();
  __break(1u);
}

Swift::Void __swiftcall SiriSharedUIFeedbackController.userDidReportConcernForSuggestions(with:)(SiriSharedUIFeedbackModel *with)
{
  v141 = sub_21E4DB7F8();
  v140 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v3 = (&v128 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5358);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v136 = &v128 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v144 = &v128 - v7;
  v132 = sub_21E4DB8A8();
  v131 = *(v132 - 1);
  MEMORY[0x28223BE20](v132);
  v130 = (&v128 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v160 = sub_21E4DB828();
  v171 = *(v160 - 8);
  v9 = MEMORY[0x28223BE20](v160);
  v135 = &v128 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v170 = &v128 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5360);
  MEMORY[0x28223BE20](v12 - 8);
  v167 = &v128 - v13;
  v14 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v14 - 8);
  v166 = &v128 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_21E4DB4F8();
  v16 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v165 = &v128 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v18 - 8);
  v163 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_21E4DB508();
  MEMORY[0x28223BE20](v20 - 8);
  v162 = &v128 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_21E4DB868();
  v22 = *(v172 - 8);
  v23 = MEMORY[0x28223BE20](v172);
  v128 = &v128 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v143 = &v128 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v168 = &v128 - v28;
  MEMORY[0x28223BE20](v27);
  v169 = &v128 - v29;
  v30 = sub_21E4DB888();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v142 = (&v128 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x28223BE20](v32);
  v155 = &v128 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v159 = (&v128 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = &v128 - v39;
  MEMORY[0x28223BE20](v38);
  v158 = (&v128 - v41);
  v173 = with;
  v42 = [(SiriSharedUIFeedbackModel *)with userInput];
  if (v42)
  {
    v43 = v42;
    v44 = sub_21E4DCF78();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xE000000000000000;
  }

  v138 = v3;
  v47 = v158;
  *v158 = v44;
  v47[1] = v46;
  v48 = *(v31 + 104);
  LODWORD(v134) = *MEMORY[0x277D08638];
  v154 = v31 + 104;
  v153 = v48;
  v48(v47);
  v49 = *(v31 + 16);
  v152 = v31 + 16;
  v151 = v49;
  v49(v40, v47, v30);
  sub_21E4DCEF8();
  if (qword_27CEC4708 != -1)
  {
    swift_once();
  }

  v157 = v22;
  v50 = __swift_project_value_buffer(v164, qword_27CEC5328);
  v51 = *(v16 + 16);
  v150 = v50;
  v156 = v16 + 16;
  v149 = v51;
  (v51)(v165);
  sub_21E4DB6C8();
  sub_21E4DB518();
  sub_21E4DCF98();
  v52 = [(SiriSharedUIFeedbackModel *)v173 userInput];
  v161 = v30;
  v137 = v31;
  if (v52)
  {
    v53 = v52;
    sub_21E4DCF78();
  }

  v54 = v160;
  v55 = *MEMORY[0x277D085D8];
  v56 = sub_21E4DB858();
  v57 = *(v56 - 8);
  v58 = v57;
  v59 = v167;
  v146 = *(v57 + 104);
  v145 = v57 + 104;
  v146(v167, v55, v56);
  v60 = *(v58 + 56);
  v148 = v56;
  v147 = v58 + 56;
  v60(v59, 0, 1, v56);
  sub_21E4DB848();
  v61 = [(SiriSharedUIFeedbackModel *)v173 siriSuggestionText];
  if (v61)
  {
    v62 = v61;
    v63 = sub_21E4DCF78();
    v65 = v64;
  }

  else
  {
    v63 = 0;
    v65 = 0xE000000000000000;
  }

  v66 = v161;
  v67 = v54;
  v68 = v159;
  *v159 = v63;
  v68[1] = v65;
  v153(v68, v134, v66);
  v151(v155, v68, v66);

  sub_21E4DCEF8();
  v149(v165, v150, v164);
  sub_21E4DB6C8();
  sub_21E4DB518();
  sub_21E4DCF98();
  v69 = v167;
  v70 = v148;
  v146(v167, *MEMORY[0x277D085E8], v148);
  v134 = v60;
  v60(v69, 0, 1, v70);

  v129 = v63;
  sub_21E4DB848();
  v71 = sub_21E43C850(MEMORY[0x277D84F90]);
  (*(v171 + 104))(v170, *MEMORY[0x277D08588], v54);
  v72 = [(SiriSharedUIFeedbackModel *)v173 subFeature];
  v133 = v65;
  if (v72)
  {
    v73 = v72;
    v74 = sub_21E4DCF78();
    v76 = v75;

    v77 = v130;
    *v130 = 0x6165665F6275733ALL;
    *(v77 + 8) = 0xEC00000065727574;
    v78 = v131;
    v79 = v132;
    (*(v131 + 104))(v77, *MEMORY[0x277D08658], v132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5368);
    v80 = swift_allocObject();
    *(v80 + 16) = xmmword_21E4E57E0;
    *(v80 + 32) = v74;
    *(v80 + 40) = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v174 = v71;
    sub_21E443FB4(v80, v77, isUniquelyReferenced_nonNull_native);
    (*(v78 + 8))(v77, v79);
  }

  (*(v171 + 16))(v135, v170, v67);
  v82 = v157;
  v83 = *(v157 + 16);
  v84 = v144;
  v85 = v172;
  v83(v144, v169, v172);
  v86 = *(v82 + 56);
  (v86)(v84, 0, 1, v85);
  v87 = v136;
  v83(v136, v168, v85);
  v132 = v86;
  (v86)(v87, 0, 1, v85);
  v88 = objc_allocWithZone(sub_21E4DB898());
  v89 = sub_21E4DB838();
  v90 = [(SiriSharedUIFeedbackModel *)v173 imageRepresentationOfSnippet];
  if (v90)
  {
    v136 = v83;
    v173 = v89;
    v91 = v90;
    v92 = sub_21E4DB5B8();
    v94 = v93;

    v95 = v142;
    *v142 = v92;
    v95[1] = v94;
    v96 = v161;
    v153(v95, *MEMORY[0x277D08640], v161);
    v151(v155, v95, v96);
    v153 = v92;
    v154 = v94;
    sub_21E4248CC(v92, v94);
    sub_21E4DCEF8();
    v149(v165, v150, v164);
    sub_21E4DB6C8();
    sub_21E4DB518();
    sub_21E4DCF98();
    v97 = v167;
    v98 = v148;
    v146(v167, *MEMORY[0x277D085F0], v148);
    v134(v97, 0, 1, v98);
    v99 = v143;
    sub_21E4DB848();
    v100 = v133;

    v101 = HIBYTE(v100) & 0xF;
    if ((v100 & 0x2000000000000000) == 0)
    {
      v101 = v129 & 0xFFFFFFFFFFFFLL;
    }

    if (v101)
    {
      v102 = v128;
      (v136)(v128, v99, v172);
      v103 = sub_21E4DB808();
      v105 = v104;
      v106 = *v104;
      v107 = swift_isUniquelyReferenced_nonNull_native();
      *v105 = v106;
      if ((v107 & 1) == 0)
      {
        v106 = sub_21E443B9C(0, v106[2] + 1, 1, v106, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
        *v105 = v106;
      }

      v108 = v160;
      v109 = v161;
      v110 = v137;
      v112 = v106[2];
      v111 = v106[3];
      v89 = v173;
      if (v112 >= v111 >> 1)
      {
        v106 = sub_21E443B9C(v111 > 1, v112 + 1, 1, v106, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
        *v105 = v106;
      }

      v113 = v140;
      v106[2] = v112 + 1;
      v82 = v157;
      v114 = v102;
      v115 = v172;
      (*(v157 + 32))(v106 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v112, v114, v172);
      v103(&v174, 0);
      sub_21E424920(v153, v154);
      (*(v82 + 8))(v143, v115);
      (*(v110 + 8))(v142, v109);
    }

    else
    {
      v116 = v96;
      v117 = v144;
      v118 = v172;
      (v136)(v144, v99, v172);
      (v132)(v117, 0, 1, v118);
      v89 = v173;
      sub_21E4DB878();
      sub_21E424920(v153, v154);
      v82 = v157;
      (*(v157 + 8))(v99, v118);
      v110 = v137;
      (*(v137 + 8))(v95, v116);
      v113 = v140;
      v108 = v160;
      v109 = v116;
    }
  }

  else
  {

    v113 = v140;
    v108 = v160;
    v109 = v161;
    v110 = v137;
  }

  v119 = v138;
  *v138 = v89;
  v120 = v141;
  (*(v113 + 104))(v119, *MEMORY[0x277D08530], v141);
  v121 = v89;
  v122 = v139;
  v123 = [v139 feedbackController];
  if (v123)
  {
    v124 = v123;
    sub_21E4DCCA8();
  }

  [v122 setIsProvidingFeedback_];

  (*(v113 + 8))(v119, v120);
  (*(v171 + 8))(v170, v108);
  v125 = *(v82 + 8);
  v126 = v172;
  v125(v168, v172);
  v127 = *(v110 + 8);
  v127(v159, v109);
  v125(v169, v126);
  v127(v158, v109);
}

Swift::Void __swiftcall SiriSharedUIFeedbackController.userDidReportConcern(with:)(SiriSharedUIFeedbackModel *with)
{
  v213 = sub_21E4DB7F8();
  v212 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v210 = (&v199 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5358);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v208 = &v199 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v214 = &v199 - v6;
  v224 = sub_21E4DB8A8();
  v206 = *(v224 - 1);
  MEMORY[0x28223BE20](v224);
  v205 = (&v199 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21E4DB828();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v225 = &v199 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v247 = &v199 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5360);
  MEMORY[0x28223BE20](v13 - 8);
  v253 = &v199 - v14;
  v15 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v15 - 8);
  v250 = &v199 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_21E4DB4F8();
  v17 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v249 = &v199 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v199 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_21E4DB508();
  MEMORY[0x28223BE20](v22 - 8);
  v252 = &v199 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v228 = sub_21E4DB868();
  v254 = *(v228 - 8);
  v24 = MEMORY[0x28223BE20](v228);
  v220 = &v199 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v221 = &v199 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v217 = &v199 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v218 = &v199 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v203 = &v199 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v204 = &v199 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v200 = &v199 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v243 = &v199 - v39;
  MEMORY[0x28223BE20](v38);
  v236 = &v199 - v40;
  v41 = sub_21E4DB888();
  v251 = *(v41 - 8);
  v42 = MEMORY[0x28223BE20](v41);
  v219 = (&v199 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = MEMORY[0x28223BE20](v42);
  v216 = (&v199 - v45);
  v46 = MEMORY[0x28223BE20](v44);
  v215 = (&v199 - v47);
  v48 = MEMORY[0x28223BE20](v46);
  v245 = &v199 - v49;
  v50 = MEMORY[0x28223BE20](v48);
  v227 = (&v199 - v51);
  v52 = MEMORY[0x28223BE20](v50);
  v54 = &v199 - v53;
  MEMORY[0x28223BE20](v52);
  v56 = (&v199 - v55);
  v255 = with;
  v57 = [(SiriSharedUIFeedbackModel *)with userInput];
  v242 = v21;
  if (v57)
  {
    v58 = v57;
    v59 = sub_21E4DCF78();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0xE000000000000000;
  }

  *v56 = v59;
  v56[1] = v61;
  v62 = v251;
  v63 = *(v251 + 104);
  v223 = *MEMORY[0x277D08638];
  v235 = v251 + 104;
  v234 = v63;
  v63(v56);
  v64 = *(v62 + 16);
  v209 = v56;
  v246 = v41;
  v241 = v62 + 16;
  v240 = v64;
  v64(v54, v56, v41);
  sub_21E4DCEF8();
  if (qword_27CEC4708 != -1)
  {
    swift_once();
  }

  v226 = v8;
  v65 = __swift_project_value_buffer(v248, qword_27CEC5328);
  v66 = *(v17 + 16);
  v232 = v65;
  v233 = v17 + 16;
  v231 = v66;
  (v66)(v249);
  sub_21E4DB6C8();
  sub_21E4DB518();
  sub_21E4DCF98();
  v67 = [(SiriSharedUIFeedbackModel *)v255 userInput];
  v68 = v9;
  if (v67)
  {
    v69 = v67;
    sub_21E4DCF78();
  }

  v70 = *MEMORY[0x277D085D8];
  v71 = sub_21E4DB858();
  v72 = *(v71 - 8);
  v73 = v72;
  v74 = v253;
  v230 = *(v72 + 104);
  v229 = v72 + 104;
  v230(v253, v70, v71);
  v75 = *(v73 + 56);
  v239 = v71;
  v238 = v73 + 56;
  v237 = v75;
  v75(v74, 0, 1, v71);
  sub_21E4DB848();
  v76 = [(SiriSharedUIFeedbackModel *)v255 siriDialog];
  if (v76)
  {
    v77 = v76;
    v78 = sub_21E4DCF78();
    v80 = v79;
  }

  else
  {
    v78 = 0;
    v80 = 0xE000000000000000;
  }

  v81 = v246;
  v222 = v78;
  v82 = v227;
  *v227 = v78;
  v82[1] = v80;
  v234(v82, v223, v81);
  v240(v245, v82, v81);

  sub_21E4DCEF8();
  v231(v249, v232, v248);
  sub_21E4DB6C8();
  sub_21E4DB518();
  sub_21E4DCF98();
  v83 = *MEMORY[0x277D085E8];
  v84 = v253;
  v85 = v239;
  v230(v253, v83, v239);
  v237(v84, 0, 1, v85);

  sub_21E4DB848();
  v86 = sub_21E43C850(MEMORY[0x277D84F90]);
  v87 = [(SiriSharedUIFeedbackModel *)v255 feedbackDomain];
  v244 = v68;
  v88 = *(v68 + 104);
  v207 = v80;
  v202 = v68 + 104;
  v201 = v88;
  if (v87 <= 2)
  {
    v89 = v247;
    v90 = v225;
    v91 = v226;
    if (!v87)
    {
      v92 = MEMORY[0x277D08588];
      goto LABEL_20;
    }

    if (v87 == 2)
    {
      v92 = MEMORY[0x277D085C0];
LABEL_20:
      v88(v89, *v92, v91);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  v89 = v247;
  v90 = v225;
  v91 = v226;
  if (v87 != 3)
  {
    if (v87 == 4)
    {
      v92 = MEMORY[0x277D085A0];
      goto LABEL_20;
    }

LABEL_18:
    v92 = MEMORY[0x277D08560];
    goto LABEL_20;
  }

  v88(v247, *MEMORY[0x277D08580], v226);
  v240(v245, v227, v246);
  sub_21E44301C();
  sub_21E4DCF98();
  v184 = v253;
  v185 = v83;
  v186 = v239;
  v230(v253, v185, v239);
  v237(v184, 0, 1, v186);

  v187 = v200;
  sub_21E4DB848();
  v188 = v254;
  v189 = v243;
  v190 = v228;
  (*(v254 + 8))(v243, v228);
  (*(v188 + 32))(v189, v187, v190);
  sub_21E4DBC28();
  sub_21E4DBC18();
  sub_21E4DBBF8();

  if (v257)
  {
    __swift_project_boxed_opaque_existential_0Tm(&v256, v257);
    v191 = sub_21E4DBC58();
    v193 = v192;
    __swift_destroy_boxed_opaque_existential_0Tm(&v256);
    v194 = v205;
    *v205 = 0xD000000000000012;
    *(v194 + 8) = 0x800000021E4EC600;
    v195 = v206;
    v196 = v224;
    (*(v206 + 104))(v194, *MEMORY[0x277D08658], v224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5368);
    v197 = swift_allocObject();
    *(v197 + 16) = xmmword_21E4E57E0;
    *(v197 + 32) = v191;
    *(v197 + 40) = v193;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v256 = v86;
    sub_21E443FB4(v197, v194, isUniquelyReferenced_nonNull_native);
    (*(v195 + 8))(v194, v196);
    v86 = v256;
  }

  else
  {
    sub_21E4446F8(&v256);
  }

  v89 = v247;
LABEL_21:
  v93 = [(SiriSharedUIFeedbackModel *)v255 subFeature];
  if (v93)
  {
    v94 = v93;
    v95 = sub_21E4DCF78();
    v97 = v96;

    v98 = v205;
    *v205 = 0x6165665F6275733ALL;
    *(v98 + 8) = 0xEC00000065727574;
    v99 = v206;
    v100 = v224;
    (*(v206 + 104))(v98, *MEMORY[0x277D08658], v224);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5368);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_21E4E57E0;
    *(v101 + 32) = v95;
    *(v101 + 40) = v97;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v256 = v86;
    v103 = v101;
    v89 = v247;
    sub_21E443FB4(v103, v98, v102);
    (*(v99 + 8))(v98, v100);
  }

  (*(v244 + 16))(v90, v89, v91);
  v104 = v254;
  v105 = (v254 + 16);
  v106 = *(v254 + 16);
  v107 = v90;
  v108 = v214;
  v109 = v228;
  v106(v214, v236, v228);
  v110 = (v104 + 56);
  v111 = *(v104 + 56);
  (v111)(v108, 0, 1, v109);
  v112 = v208;
  v225 = v105;
  v224 = v106;
  v106(v208, v243, v109);
  v205 = v110;
  v200 = v111;
  (v111)(v112, 0, 1, v109);
  v113 = objc_allocWithZone(sub_21E4DB898());
  v114 = sub_21E4DB838();
  v115 = [(SiriSharedUIFeedbackModel *)v255 imageRepresentationOfSnippet];
  v116 = MEMORY[0x277D08640];
  if (v115)
  {
    v117 = v115;
    v118 = sub_21E4DB5B8();
    v120 = v119;

    v121 = v215;
    *v215 = v118;
    v121[1] = v120;
    v122 = v246;
    v234(v121, *v116, v246);
    v201(v107, *MEMORY[0x277D08580], v91);
    v206 = v118;
    v208 = v120;
    sub_21E4248CC(v118, v120);
    LOBYTE(v117) = MEMORY[0x223D594C0](v247, v107);
    (*(v244 + 8))(v107, v91);
    v240(v245, v121, v122);
    if (v117)
    {
      sub_21E44301C();
      sub_21E4DCF98();
      v123 = v253;
      v124 = v239;
      v230(v253, *MEMORY[0x277D085F0], v239);
      v237(v123, 0, 1, v124);
    }

    else
    {
      sub_21E4DCEF8();
      v231(v249, v232, v248);
      sub_21E4DB6C8();
      sub_21E4DB518();
      sub_21E4DCF98();
      v129 = v253;
      v130 = v239;
      v230(v253, *MEMORY[0x277D085F0], v239);
      v237(v129, 0, 1, v130);
    }

    v125 = v204;
    sub_21E4DB848();
    v131 = v203;
    v132 = v207;

    v133 = HIBYTE(v132) & 0xF;
    if ((v132 & 0x2000000000000000) == 0)
    {
      v133 = v222 & 0xFFFFFFFFFFFFLL;
    }

    if (v133)
    {
      v127 = v228;
      (v224)(v131, v125, v228);
      v134 = sub_21E4DB808();
      v136 = v135;
      v137 = *v135;
      v138 = swift_isUniquelyReferenced_nonNull_native();
      *v136 = v137;
      if ((v138 & 1) == 0)
      {
        v137 = sub_21E443B9C(0, v137[2] + 1, 1, v137, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
        *v136 = v137;
      }

      v126 = v244;
      v140 = v137[2];
      v139 = v137[3];
      if (v140 >= v139 >> 1)
      {
        v137 = sub_21E443B9C(v139 > 1, v140 + 1, 1, v137, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
        *v136 = v137;
      }

      v137[2] = v140 + 1;
      v141 = v254;
      (*(v254 + 32))(v137 + ((*(v141 + 80) + 32) & ~*(v141 + 80)) + *(v141 + 72) * v140, v131, v127);
      v134(&v256, 0);
      sub_21E424920(v206, v208);
      (*(v141 + 8))(v125, v127);
      v128 = v246;
      (*(v251 + 8))(v215, v246);
    }

    else
    {
      v142 = v214;
      v127 = v228;
      (v224)(v214, v125, v228);
      (v200)(v142, 0, 1, v127);
      sub_21E4DB878();
      sub_21E424920(v206, v208);
      (*(v254 + 8))(v125, v127);
      v128 = v246;
      (*(v251 + 8))(v215, v246);
      v126 = v244;
    }

    v116 = MEMORY[0x277D08640];
  }

  else
  {

    v126 = v244;
    v127 = v228;
    v128 = v246;
  }

  v143 = [(SiriSharedUIFeedbackModel *)v255 imageRepresentationOfRequestImage];
  if (v143)
  {
    v144 = v143;
    v145 = sub_21E4DB5B8();
    v147 = v146;

    v148 = v216;
    *v216 = v145;
    v148[1] = v147;
    v234(v148, *v116, v128);
    v240(v245, v148, v128);
    sub_21E4248CC(v145, v147);
    sub_21E4DCEF8();
    v231(v249, v232, v248);
    sub_21E4DB6C8();
    sub_21E4DB528();
    sub_21E4DCF98();
    v149 = v253;
    v150 = v239;
    v230(v253, *MEMORY[0x277D085F0], v239);
    v237(v149, 0, 1, v150);
    v151 = v218;
    sub_21E4DB848();
    (v224)(v217, v151, v127);
    v152 = sub_21E4DB808();
    v154 = v153;
    v155 = *v153;
    v156 = swift_isUniquelyReferenced_nonNull_native();
    *v154 = v155;
    if ((v156 & 1) == 0)
    {
      v155 = sub_21E443B9C(0, v155[2] + 1, 1, v155, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
      *v154 = v155;
    }

    v158 = v155[2];
    v157 = v155[3];
    if (v158 >= v157 >> 1)
    {
      v155 = sub_21E443B9C(v157 > 1, v158 + 1, 1, v155, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
      *v154 = v155;
    }

    v155[2] = v158 + 1;
    v159 = v254;
    (*(v254 + 32))(v155 + ((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v158, v217, v127);
    v152(&v256, 0);
    sub_21E424920(v145, v147);
    (*(v159 + 8))(v218, v127);
    v128 = v246;
    (*(v251 + 8))(v216, v246);
    v126 = v244;
  }

  v160 = [(SiriSharedUIFeedbackModel *)v255 diagnosticContent];
  if (v160)
  {
    v161 = v160;
    v162 = sub_21E4DCF78();
    v164 = v163;

    v165 = v219;
    *v219 = v162;
    v165[1] = v164;
    v234(v165, v223, v128);
    v240(v245, v165, v128);
    sub_21E4DCEF8();
    v231(v249, v232, v248);
    sub_21E4DB6C8();
    sub_21E4DB518();
    sub_21E4DCF98();
    v237(v253, 1, 1, v239);
    v166 = v221;
    sub_21E4DB848();
    (v224)(v220, v166, v127);
    v167 = sub_21E4DB808();
    v169 = v168;
    v170 = *v168;
    v171 = swift_isUniquelyReferenced_nonNull_native();
    *v169 = v170;
    if ((v171 & 1) == 0)
    {
      v170 = sub_21E443B9C(0, v170[2] + 1, 1, v170, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
      *v169 = v170;
    }

    v173 = v170[2];
    v172 = v170[3];
    if (v173 >= v172 >> 1)
    {
      v170 = sub_21E443B9C(v172 > 1, v173 + 1, 1, v170, &qword_27CEC53E0, &unk_21E4E69B8, MEMORY[0x277D08618]);
      *v169 = v170;
    }

    v170[2] = v173 + 1;
    v174 = v254;
    (*(v254 + 32))(v170 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v173, v220, v127);
    v167(&v256, 0);
    (*(v174 + 8))(v221, v127);
    (*(v251 + 8))(v219, v128);
  }

  v175 = v210;
  *v210 = v114;
  v176 = v212;
  v177 = v213;
  (*(v212 + 104))(v175, *MEMORY[0x277D08530], v213);
  v178 = v114;
  v179 = v211;
  v180 = [v211 feedbackController];
  if (v180)
  {
    v181 = v180;
    sub_21E4DCCA8();
  }

  [v179 setIsProvidingFeedback_];

  (*(v176 + 8))(v175, v177);
  (*(v126 + 8))(v247, v226);
  v182 = *(v254 + 8);
  v182(v243, v127);
  v183 = *(v251 + 8);
  v183(v227, v128);
  v182(v236, v127);
  v183(v209, v128);
}

uint64_t sub_21E44301C()
{
  v0 = sub_21E4DB6D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_21E4DB4F8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_21E4DCF58();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_21E4DCF38();
  MEMORY[0x28223BE20](v6 - 8);
  sub_21E4DCF28();
  sub_21E4DCF18();
  sub_21E4447E0();
  sub_21E4DCF08();

  sub_21E4DCF18();
  sub_21E4DCF48();
  if (qword_27CEC4708 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_27CEC5328);
  (*(v2 + 16))(v4, v7, v1);
  sub_21E4DB6C8();
  return sub_21E4DB528();
}

void sub_21E44336C()
{
  swift_getWitnessTable();

  JUMPOUT(0x223D5A980);
}

char *sub_21E4433D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53E8);
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

char *sub_21E4434DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5368);
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

char *sub_21E443610(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5398);
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

char *sub_21E443728(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5380);
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

char *sub_21E443850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53D8);
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

void *sub_21E4439C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_21E443B9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_21E443D78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53B0);
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

unint64_t sub_21E443E7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E4B13D0(a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E4D039C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E474C68(v16, a4 & 1);
    v11 = sub_21E4B13D0(a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E4DD548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 16 * v11);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {

    return sub_21E4760A8(v11, a3, a1, a2, v21);
  }
}

uint64_t sub_21E443FB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21E4DB8A8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21E4B14B4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21E4D0504();
      goto LABEL_7;
    }

    sub_21E474F04(v17, a3 & 1);
    v22 = sub_21E4B14B4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21E4760F0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21E4DD548();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

_OWORD *sub_21E444180(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_21E4B143C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_21E4D052C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_21E4752E0(v16, a4 & 1);
    v11 = sub_21E4B143C(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_21E4DD548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_21E43EAE8(a1, v22);
  }

  else
  {
    sub_21E476108(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_21E4442D0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_21E4DB698();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_21E4B15CC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_21E4D06D0();
      goto LABEL_7;
    }

    sub_21E475598(v17, a3 & 1);
    v22 = sub_21E4B15CC(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_21E476174(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_21E4DD548();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_21E44449C(void *a1, char a2, double a3, double a4)
{
  v5 = v4;
  v9 = *v4;
  result = sub_21E4B16E4(a1);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v9[3];
  if (v17 < v15 || (a2 & 1) == 0)
  {
    if (v17 >= v15 && (a2 & 1) == 0)
    {
      v18 = result;
      sub_21E4D0C2C();
      result = v18;
      goto LABEL_8;
    }

    sub_21E475E40(v15, a2 & 1);
    result = sub_21E4B16E4(a1);
    if ((v16 & 1) != (v19 & 1))
    {
LABEL_14:
      type metadata accessor for SiriSharedUIDropletContainerView();
      result = sub_21E4DD548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v5;
  if (v16)
  {
    v21 = (v20[7] + 16 * result);
    *v21 = a3;
    v21[1] = a4;
  }

  else
  {
    sub_21E476248(result, a1, v20, a3, a4);

    return a1;
  }

  return result;
}

_BYTE *sub_21E4445C4(char a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_21E4B16A0(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = result;
      sub_21E4D0AD0();
      result = v16;
      goto LABEL_8;
    }

    sub_21E475BDC(v13, a3 & 1);
    result = sub_21E4B16A0(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_14:
      sub_21E43F008(0, &qword_280C140A0);
      result = sub_21E4DD548();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    result[v18[7]] = a1 & 1;
  }

  else
  {
    sub_21E476290(result, a2, a1 & 1, v18);

    return a2;
  }

  return result;
}

uint64_t sub_21E4446F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5370);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21E444794(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSharedUIFeedbackController(0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E4447E0()
{
  sub_21E4DBC28();
  sub_21E4DBC18();
  sub_21E4DBBF8();

  if (v3)
  {
    __swift_project_boxed_opaque_existential_0Tm(v2, v3);
    v0 = sub_21E4DBC48();
    __swift_destroy_boxed_opaque_existential_0Tm(v2);
  }

  else
  {
    sub_21E4446F8(v2);
    return 0xD000000000000011;
  }

  return v0;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t type metadata accessor for SiriSharedUIWebView()
{
  result = qword_280C15230;
  if (!qword_280C15230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21E444974()
{
  result = sub_21E4DB588();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_21E444A14()
{
  v1 = v0;
  v2 = sub_21E4DB588();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E4DB3F8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  sub_21E4DB3E8();
  v10 = [objc_allocWithZone(MEMORY[0x277CE3850]) init];
  v11 = sub_21E4DB3D8();

  (*(v7 + 8))(v9, v6);
  return v10;
}

uint64_t sub_21E444BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E444D1C(&unk_27CEC5400);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_21E444C58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_21E444D1C(&unk_27CEC5400);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_21E444CD8()
{
  sub_21E444D1C(&unk_27CEC5400);
  sub_21E4DC368();
  __break(1u);
}

uint64_t sub_21E444D1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SiriSharedUIWebView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21E444D60()
{
  v0 = sub_21E4DCA68();
  __swift_allocate_value_buffer(v0, qword_280C16A20);
  __swift_project_value_buffer(v0, qword_280C16A20);
  SiriSharedUIReducedMotionEnabled();
  return sub_21E4DCA58();
}

uint64_t type metadata accessor for SiriSharedUISmartDialog()
{
  result = qword_280C15AF8;
  if (!qword_280C15AF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21E444E4C()
{
  sub_21E4DCDA8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_21E445040();
      if (v2 <= 0x3F)
      {
        sub_21E4450D4();
        if (v3 <= 0x3F)
        {
          sub_21E4451EC(319, &qword_280C14500, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_21E44513C();
            if (v5 <= 0x3F)
            {
              sub_21E4451EC(319, &qword_280C142C8, type metadata accessor for CGSize, MEMORY[0x277CE10B8]);
              if (v6 <= 0x3F)
              {
                sub_21E445250(319, &qword_280C142D0);
                if (v7 <= 0x3F)
                {
                  sub_21E445250(319, &unk_280C142D8);
                  if (v8 <= 0x3F)
                  {
                    sub_21E44529C();
                    if (v9 <= 0x3F)
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
    }
  }
}

void sub_21E445040()
{
  if (!qword_280C144D8)
  {
    type metadata accessor for SmartDialogData();
    sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
    v0 = sub_21E4DBFA8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C144D8);
    }
  }
}

void sub_21E4450D4()
{
  if (!qword_280C14528)
  {
    sub_21E4DCDB8();
    v0 = sub_21E4DBDA8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C14528);
    }
  }
}

void sub_21E44513C()
{
  if (!qword_280C144E8)
  {
    sub_21E445198();
    v0 = sub_21E4DBEC8();
    if (!v1)
    {
      atomic_store(v0, &qword_280C144E8);
    }
  }
}

unint64_t sub_21E445198()
{
  result = qword_280C14220;
  if (!qword_280C14220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14220);
  }

  return result;
}

void sub_21E4451EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21E445250(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_21E4DCA38();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_21E44529C()
{
  if (!qword_280C142C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5D10);
    v0 = sub_21E4DCA38();
    if (!v1)
    {
      atomic_store(v0, &qword_280C142C0);
    }
  }
}

uint64_t sub_21E44531C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v3 = type metadata accessor for SiriSharedUISmartDialog();
  v4 = *(v3 - 8);
  v5 = v3 - 8;
  v43 = v3 - 8;
  v6 = MEMORY[0x28223BE20](v3 - 8);
  v44 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v7;
  MEMORY[0x28223BE20](v6);
  v10 = v40 - v9;
  v11 = sub_21E4DCDA8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5420) - 8;
  MEMORY[0x28223BE20](v48);
  v45 = v40 - v15;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5428);
  MEMORY[0x28223BE20](v49);
  v46 = v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5430);
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v47 = v40 - v18;
  (*(v12 + 16))(v14, v1, v11);
  v53 = *(v1 + *(v5 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5438);
  sub_21E42D5A8(&unk_280C14530, &qword_27CEC5438);
  v40[1] = sub_21E4DBE18();
  v41 = v10;
  sub_21E44BCC8(v1, v10);
  v19 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v40[2] = v8;
  v20 = swift_allocObject();
  sub_21E44BD2C(v10, v20 + v19);
  v21 = v44;
  sub_21E44BCC8(v1, v44);
  v22 = swift_allocObject();
  sub_21E44BD2C(v21, v22 + v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5448);
  sub_21E44BE74();
  sub_21E42D5A8(&qword_280C14278, &unk_27CEC5448);
  v23 = v45;
  sub_21E4DCD18();
  KeyPath = swift_getKeyPath();
  v25 = *(v1 + *(v43 + 52) + 8);
  v26 = *(v25 + 104);
  v27 = &v23[*(v48 + 44)];
  v28 = v23;
  *v27 = KeyPath;
  v27[8] = v26;
  v29 = swift_getKeyPath();
  if (*(v25 + 104))
  {
    v30 = 2.0;
  }

  else
  {
    v30 = 1.0;
  }

  v31 = v46;
  sub_21E42D214(v28, v46, &qword_27CEC5420);
  v32 = v31 + *(v49 + 36);
  *v32 = v29;
  *(v32 + 8) = v30;
  v33 = v41;
  sub_21E44BCC8(v2, v41);
  v34 = swift_allocObject();
  sub_21E44BD2C(v33, v34 + v19);
  sub_21E44BF08();
  v35 = v47;
  sub_21E4DC728();

  sub_21E424BC0(v31, &qword_27CEC5428);
  sub_21E44BCC8(v2, v33);
  v36 = swift_allocObject();
  sub_21E44BD2C(v33, v36 + v19);
  v37 = v52;
  (*(v50 + 32))(v52, v35, v51);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5470);
  v39 = (v37 + *(result + 36));
  *v39 = sub_21E44C0A4;
  v39[1] = v36;
  v39[2] = 0;
  v39[3] = 0;
  return result;
}

uint64_t sub_21E44591C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SiriSharedUISmartDialog();
  v5 = v4 - 8;
  v51 = *(v4 - 8);
  v6 = *(v51 + 64);
  MEMORY[0x28223BE20](v4);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC54E8);
  MEMORY[0x28223BE20](v52);
  v8 = v47 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54E0);
  MEMORY[0x28223BE20](v53);
  v10 = v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5518);
  v55 = *(v11 - 8);
  v56 = v11;
  MEMORY[0x28223BE20](v11);
  v54 = v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D8);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = v47 - v18;
  v20 = *(v2 + *(v5 + 52) + 8);
  v21 = v20[14];
  if (v21 >> 62)
  {
    v50 = v17;
    v44 = v47 - v18;
    v45 = sub_21E4DD488();
    v19 = v44;
    v17 = v50;
    if (v45)
    {
      goto LABEL_3;
    }
  }

  else if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v49 = v19;
    v50 = v17;
    *v8 = sub_21E4DC278();
    *(v8 + 1) = 0;
    v8[16] = 1;
    v47[1] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5520) + 44);
    v57 = sub_21E478070();
    swift_getKeyPath();
    sub_21E44BCC8(v2, v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = *(v51 + 80);
    v51 = a1;
    v23 = (v22 + 16) & ~v22;
    v24 = swift_allocObject();
    sub_21E44BD2C(v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5530);
    v48 = v13;
    sub_21E42D5A8(&qword_280C141D8, &qword_27CEC5E00);
    sub_21E44C4B0();
    sub_21E44C52C();
    sub_21E4DCA98();
    KeyPath = swift_getKeyPath();
    v26 = &v8[*(v52 + 36)];
    *v26 = KeyPath;
    v26[8] = 0;
    v27 = v20[15];
    v28 = v27;
    v29 = sub_21E4DCB08();
    v31 = v30;
    sub_21E42D214(v8, v10, &unk_27CEC54E8);
    v32 = &v10[*(v53 + 36)];
    *v32 = v27;
    *(v32 + 1) = v29;
    *(v32 + 2) = v31;
    sub_21E44C27C();
    v33 = v54;
    sub_21E4DC6E8();
    sub_21E424BC0(v10, &qword_27CEC54E0);
    v34 = v20[20];
    v35 = v48;
    v36 = &v16[*(v48 + 36)];
    v37 = *(sub_21E4DC038() + 20);
    v38 = *MEMORY[0x277CE0118];
    v39 = sub_21E4DC248();
    (*(*(v39 - 8) + 104))(&v36[v37], v38, v39);
    *v36 = v34;
    *(v36 + 1) = v34;
    *&v36[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC51C8) + 36)] = 256;
    (*(v55 + 32))(v16, v33, v56);
    v40 = v49;
    sub_21E42D214(v16, v49, &qword_27CEC54D8);
    v41 = v40;
    v42 = v51;
    sub_21E42D214(v41, v51, &qword_27CEC54D8);
    return (*(v50 + 56))(v42, 0, 1, v35);
  }

  v46 = *(v17 + 56);

  return v46(a1, 1, 1, v13);
}

uint64_t sub_21E445F30@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = sub_21E4DB428();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for SiriSharedUISmartDialog();
  v42 = v1;
  v10 = *(v1 + *(v41 + 44) + 8);
  v11 = *(v10 + 16);
  v12 = *(v11 + 24);
  v43 = *(v11 + 16);
  v44 = v12;

  sub_21E4DB408();
  sub_21E42C090();
  v13 = sub_21E4DD328();
  v15 = v14;
  (*(v7 + 8))(v9, v6);

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v40[0] = v5;
    v18 = *(v10 + 16);
    v19 = *(v18 + 24);
    v43 = *(v18 + 16);
    v44 = v19;

    v20 = sub_21E4DC688();
    v22 = v21;
    v24 = v23;
    v43 = *(*(v10 + 16) + 32);

    v25 = sub_21E4DC648();
    v27 = v26;
    v29 = v28;
    v40[1] = v30;
    sub_21E42C0F4(v20, v22, v24 & 1);

    if (*(v10 + 104) == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5418);
      sub_21E4DBEB8();
      v31 = sub_21E4DC5D8();
      v32 = v40[0];
      (*(*(v31 - 8) + 56))(v40[0], 1, 1, v31);
      sub_21E4DC5E8();
      sub_21E424BC0(v32, &qword_27CEC57E0);
    }

    else
    {
      sub_21E4DC5C8();
    }

    v33 = sub_21E4DC668();
    v34 = v36;
    v38 = v37;
    v35 = v39;

    sub_21E42C0F4(v25, v27, v29 & 1);

    v17 = v38 & 1;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
  }

  *a1 = v33;
  a1[1] = v34;
  a1[2] = v17;
  a1[3] = v35;
  return result;
}

uint64_t sub_21E4462A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21E4DC288();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5488);
  return sub_21E4462FC(a1, a2 + *(v4 + 44));
}

uint64_t sub_21E4462FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v3 = sub_21E4DCCE8();
  v91 = *(v3 - 8);
  v92 = v3;
  MEMORY[0x28223BE20](v3);
  v90 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21E4DCDC8();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5490);
  MEMORY[0x28223BE20](v82);
  v76 = &v72 - v6;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5498);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v79 = &v72 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54A0);
  MEMORY[0x28223BE20](v81);
  v84 = &v72 - v8;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54A8);
  v9 = MEMORY[0x28223BE20](v80);
  v89 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v77 = &v72 - v12;
  MEMORY[0x28223BE20](v11);
  v88 = &v72 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54B0);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54B8);
  v17 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v19 = &v72 - v18;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54C0);
  v20 = MEMORY[0x28223BE20](v73);
  v75 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v22);
  v94 = &v72 - v25;
  *v16 = sub_21E4DC288();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54C8);
  sub_21E446C4C(a1, &v16[*(v26 + 44)]);
  v27 = type metadata accessor for SiriSharedUISmartDialog();
  v28 = *(a1 + v27[11] + 8);
  v29 = *(v28 + 192);
  v98 = *(v28 + 176);
  v99 = v29;
  v100 = *(v28 + 208);
  sub_21E42D5A8(&unk_280C14280, &qword_27CEC54B0);
  sub_21E4DC6F8();
  sub_21E424BC0(v16, &qword_27CEC54B0);
  v31 = *(v28 + 40);
  v30 = *(v28 + 48);
  v32 = a1 + v27[20];
  v33 = *v32;
  v34 = *(v32 + 8);
  LOBYTE(v96) = v33;
  v97 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  v35 = *(v28 + 56);
  if ((LOBYTE(v95) & 1) == 0)
  {
    v36 = (a1 + v27[21]);
    v37 = *v36;
    v38 = v36[1];
    v96 = v37;
    v97 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
    sub_21E4DCA08();
    v35 = v35 + v95;
  }

  v39 = *(v28 + 64);
  v40 = sub_21E4DC598();
  (*(v17 + 32))(v24, v19, v74);
  v41 = &v24[*(v73 + 36)];
  *v41 = v40;
  *(v41 + 1) = v31;
  *(v41 + 2) = v30;
  *(v41 + 3) = v35;
  *(v41 + 4) = v39;
  v41[40] = 0;
  sub_21E42D214(v24, v94, &qword_27CEC54C0);
  v42 = v76;
  sub_21E44591C(v76);
  v43 = v83;
  v44 = v78;
  v45 = v86;
  (*(v83 + 104))(v78, *MEMORY[0x277D63EE8], v86);
  v46 = sub_21E44C104();
  v47 = v79;
  v48 = v82;
  sub_21E4DC718();
  (*(v43 + 8))(v44, v45);
  sub_21E424BC0(v42, &qword_27CEC5490);
  v50 = v90;
  v49 = v91;
  v51 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277D63AB0], v92);
  v96 = v48;
  v97 = v46;
  swift_getOpaqueTypeConformance2();
  v52 = v84;
  v53 = v87;
  sub_21E4DC6A8();
  (*(v49 + 8))(v50, v51);
  (*(v85 + 8))(v47, v53);
  v54 = sub_21E448AD0();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = sub_21E4DC598();
  v62 = v52 + *(v81 + 36);
  *v62 = v61;
  *(v62 + 8) = v54;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
  *(v62 + 32) = v60;
  *(v62 + 40) = 0;
  if (*(v28 + 104))
  {
    v63 = 2.0;
  }

  else
  {
    v63 = 1.0;
  }

  v64 = v77;
  sub_21E42D214(v52, v77, &qword_27CEC54A0);
  *(v64 + *(v80 + 36)) = v63;
  v65 = v88;
  sub_21E42D214(v64, v88, &qword_27CEC54A8);
  v66 = v94;
  v67 = v75;
  sub_21E424848(v94, v75, &qword_27CEC54C0);
  v68 = v89;
  sub_21E424848(v65, v89, &qword_27CEC54A8);
  v69 = v93;
  sub_21E424848(v67, v93, &qword_27CEC54C0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5510);
  sub_21E424848(v68, v69 + *(v70 + 48), &qword_27CEC54A8);
  sub_21E424BC0(v65, &qword_27CEC54A8);
  sub_21E424BC0(v66, &qword_27CEC54C0);
  sub_21E424BC0(v68, &qword_27CEC54A8);
  return sub_21E424BC0(v67, &qword_27CEC54C0);
}

uint64_t sub_21E446C4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5618);
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v43 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5620);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v52 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v49 = &v43 - v8;
  v9 = type metadata accessor for SiriSharedUISmartDialog();
  v10 = v9 - 8;
  v46 = *(v9 - 8);
  v11 = *(v46 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5628);
  MEMORY[0x28223BE20](v12);
  v14 = &v43 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5630);
  MEMORY[0x28223BE20](v15);
  v17 = &v43 - v16;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5638);
  v45 = *(v47 - 8);
  v18 = MEMORY[0x28223BE20](v47);
  v48 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - v20;
  sub_21E4471D8(v14);
  sub_21E44C994();
  sub_21E4DC828();
  sub_21E424BC0(v14, &qword_27CEC5628);
  sub_21E44BCC8(a1, &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = (*(v46 + 80) + 16) & ~*(v46 + 80);
  v23 = swift_allocObject();
  sub_21E44BD2C(&v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22);
  sub_21E44D230();
  sub_21E4DC728();

  sub_21E424BC0(v17, &qword_27CEC5630);
  v24 = a1 + *(v10 + 88);
  v25 = *v24;
  v26 = *(v24 + 8);
  v55 = v25;
  v56 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  if (v54 == 1)
  {
    v27 = v44;
    sub_21E448730(v44);
    v29 = v49;
    v28 = v50;
    v30 = v51;
    (*(v50 + 32))(v49, v27, v51);
    v31 = 0;
    v32 = v30;
    v33 = v28;
  }

  else
  {
    v31 = 1;
    v33 = v50;
    v32 = v51;
    v29 = v49;
  }

  (*(v33 + 56))(v29, v31, 1, v32);
  v34 = v45;
  v35 = *(v45 + 16);
  v36 = v47;
  v37 = v48;
  v35(v48, v21, v47);
  v38 = v52;
  sub_21E424848(v29, v52, &qword_27CEC5620);
  v39 = v53;
  v35(v53, v37, v36);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56E0);
  sub_21E424848(v38, &v39[*(v40 + 48)], &qword_27CEC5620);
  sub_21E424BC0(v29, &qword_27CEC5620);
  v41 = *(v34 + 8);
  v41(v21, v36);
  sub_21E424BC0(v38, &qword_27CEC5620);
  return (v41)(v37, v36);
}

uint64_t sub_21E4471D8@<X0>(uint64_t a1@<X8>)
{
  v85 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5798);
  MEMORY[0x28223BE20](v71);
  v72 = &v64 - v2;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5690);
  MEMORY[0x28223BE20](v89);
  v73 = &v64 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC56A0);
  MEMORY[0x28223BE20](v70);
  v66 = &v64 - v4;
  v69 = sub_21E4DB428();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v67 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SiriSharedUISmartDialog();
  v74 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v75 = v7;
  v76 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5658);
  *&v78 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v77 = &v64 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57A0);
  MEMORY[0x28223BE20](v86);
  v88 = &v64 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC57A8);
  MEMORY[0x28223BE20](v81);
  *&v84 = &v64 - v10;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5640);
  MEMORY[0x28223BE20](v87);
  v83 = &v64 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5650);
  MEMORY[0x28223BE20](v12);
  v79 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5720);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v64 - v15;
  v17 = sub_21E4DCCF8();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v1 + *(v6 + 44) + 8);
  v22 = v21[11];
  v23 = v22;
  sub_21E448DD4(v22, v16);

  v24 = (*(v18 + 48))(v16, 1, v17);
  v80 = v12;
  if (v24 == 1)
  {
    v25 = v84;
    sub_21E424BC0(v16, &qword_27CEC5720);
    if (*(v21[9] + 16))
    {
      *&v91 = v21[9];
      v26 = v76;
      sub_21E44BCC8(v1, v76);
      v27 = (*(v74 + 80) + 16) & ~*(v74 + 80);
      v28 = swift_allocObject();
      sub_21E44BD2C(v26, v28 + v27);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57B8);
      sub_21E4DB698();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5668);
      sub_21E42D5A8(&qword_280C14200, &qword_27CEC57B8);
      sub_21E44CC18(&qword_280C143A0, &unk_27CEC5668, &unk_21E4E6E30, sub_21E44CC94);
      sub_21E44D9A4(qword_280C148F8, type metadata accessor for IndentifiableCardSection);
      v29 = v77;
      sub_21E4DCAA8();
      v30 = v78;
      v31 = v82;
      (*(v78 + 16))(v25, v29, v82);
      swift_storeEnumTagMultiPayload();
      sub_21E44CAAC();
      sub_21E44CB68();
      v32 = v83;
      sub_21E4DC398();
      sub_21E424848(v32, v88, &unk_27CEC5640);
      swift_storeEnumTagMultiPayload();
      sub_21E44CA20();
      sub_21E44CE18();
      sub_21E4DC398();
      sub_21E424BC0(v32, &unk_27CEC5640);
      return (*(v30 + 8))(v29, v31);
    }

    else
    {
      v46 = v21[4];
      *&v91 = v21[3];
      *(&v91 + 1) = v46;

      v47 = v67;
      sub_21E4DB418();
      sub_21E42C090();
      v48 = sub_21E4DD328();
      v50 = v49;
      (*(v68 + 8))(v47, v69);

      v51 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v51 = v48 & 0xFFFFFFFFFFFFLL;
      }

      if (v51)
      {
        v52 = v66;
        sub_21E44991C(v66);
        swift_unknownObjectWeakLoadStrong();
        v53 = v52 + *(v70 + 36);
        swift_unknownObjectWeakInit();
        v84 = xmmword_21E4E6AE0;
        v90 = xmmword_21E4E6AE0;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
        sub_21E4DC9F8();
        v54 = v92;
        *(v53 + 40) = v91;
        *(v53 + 56) = v54;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_21E4E57E0;
        *(v55 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
        *&v90 = v55;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
        sub_21E4DC9F8();
        v56 = *(&v91 + 1);
        *(v53 + 64) = v91;
        *(v53 + 72) = v56;
        type metadata accessor for CGSize(0);
        v90 = 0uLL;
        sub_21E4DC9F8();
        v57 = v92;
        *(v53 + 80) = v91;
        *(v53 + 96) = v57;
        v90 = v84;
        sub_21E4DC9F8();
        v58 = v92;
        *(v53 + 104) = v91;
        *(v53 + 120) = v58;
        type metadata accessor for SmartDialogData();
        sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
        *v53 = sub_21E4DBF98();
        *(v53 + 8) = v59;
        swift_unknownObjectWeakAssign();
        swift_unknownObjectRelease();
        *(v53 + 24) = 0;
        *(v53 + 32) = 0;
        v60 = &unk_27CEC56A0;
        sub_21E424848(v52, v72, &unk_27CEC56A0);
        swift_storeEnumTagMultiPayload();
        sub_21E44CEA4();
        v61 = v73;
        sub_21E4DC398();
        sub_21E424848(v61, v88, &unk_27CEC5690);
        swift_storeEnumTagMultiPayload();
        sub_21E44CA20();
        sub_21E44CE18();
        sub_21E4DC398();
        sub_21E424BC0(v61, &unk_27CEC5690);
        v62 = v52;
      }

      else
      {
        swift_storeEnumTagMultiPayload();
        sub_21E44CEA4();
        v63 = v73;
        sub_21E4DC398();
        v60 = &unk_27CEC5690;
        sub_21E424848(v63, v88, &unk_27CEC5690);
        swift_storeEnumTagMultiPayload();
        sub_21E44CA20();
        sub_21E44CE18();
        sub_21E4DC398();
        v62 = v63;
      }

      return sub_21E424BC0(v62, v60);
    }
  }

  else
  {
    v34 = *(v18 + 32);
    v65 = v20;
    v34(v20, v16, v17);
    swift_unknownObjectWeakLoadStrong();
    v35 = *(v12 + 36);
    v36 = v79;
    v37 = &v79[v35];
    swift_unknownObjectWeakInit();
    v78 = xmmword_21E4E6AE0;
    v90 = xmmword_21E4E6AE0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
    sub_21E4DC9F8();
    v38 = v92;
    *(v37 + 40) = v91;
    *(v37 + 7) = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_21E4E57E0;
    *(v39 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
    *&v90 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
    sub_21E4DC9F8();
    v40 = *(&v91 + 1);
    *(v37 + 8) = v91;
    *(v37 + 9) = v40;
    type metadata accessor for CGSize(0);
    v90 = 0uLL;
    sub_21E4DC9F8();
    v41 = v92;
    *(v37 + 5) = v91;
    *(v37 + 12) = v41;
    v90 = v78;
    sub_21E4DC9F8();
    v42 = v92;
    *(v37 + 104) = v91;
    *(v37 + 15) = v42;
    type metadata accessor for SmartDialogData();
    sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
    *v37 = sub_21E4DBF98();
    *(v37 + 1) = v43;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v37 + 3) = 0;
    v37[32] = 0;
    v44 = v65;
    (*(v18 + 16))(v36, v65, v17);
    sub_21E424848(v36, v84, &qword_27CEC5650);
    swift_storeEnumTagMultiPayload();
    sub_21E44CAAC();
    sub_21E44CB68();
    v45 = v83;
    sub_21E4DC398();
    sub_21E424848(v45, v88, &unk_27CEC5640);
    swift_storeEnumTagMultiPayload();
    sub_21E44CA20();
    sub_21E44CE18();
    sub_21E4DC398();
    sub_21E424BC0(v45, &unk_27CEC5640);
    sub_21E424BC0(v36, &qword_27CEC5650);
    return (*(v18 + 8))(v44, v17);
  }
}

void sub_21E4480EC()
{
  type metadata accessor for SiriSharedUISmartDialog();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5480);
  sub_21E4DCA18();
  sub_21E448174();
}

void sub_21E448174()
{
  v1 = v0;
  v2 = sub_21E4DC518();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5780);
  MEMORY[0x28223BE20](v3);
  v5 = &v56 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5788);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v56 - v10;
  v12 = type metadata accessor for SiriSharedUISmartDialog();
  v13 = *(v0 + v12[11] + 8);
  if (!*(v13 + 96))
  {
    v14 = sub_21E477DD4();
    if (v14 >> 62)
    {
      v56 = v14;
      v48 = sub_21E4DD488();

      if (!v48)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v15)
      {
        goto LABEL_13;
      }
    }
  }

  if ((sub_21E44AC88() & 1) == 0 && (*(v13 + 280) & 1) == 0)
  {
    v16 = *(v13 + 272);
    v17 = (v1 + v12[19]);
    v18 = *(v17 + 2);
    v60 = *v17;
    *&v61 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5480);
    sub_21E4DCA08();
    if (v16 < v59 + 50.0)
    {
      sub_21E448730(v5);
      v19 = sub_21E4DC588();
      sub_21E4DBE28();
      v20 = &v5[*(v3 + 36)];
      *v20 = v19;
      *(v20 + 1) = v21;
      *(v20 + 2) = v22;
      *(v20 + 3) = v23;
      *(v20 + 4) = v24;
      v20[40] = 0;
      sub_21E4DCB18();
      sub_21E4DC048();
      sub_21E42D214(v5, v11, &qword_27CEC5780);
      v25 = &v11[*(v6 + 36)];
      v26 = v65;
      *(v25 + 4) = v64;
      *(v25 + 5) = v26;
      *(v25 + 6) = v66;
      v27 = v61;
      *v25 = v60;
      *(v25 + 1) = v27;
      v28 = v63;
      *(v25 + 2) = v62;
      *(v25 + 3) = v28;
      v29 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5790));
      sub_21E424848(v11, v9, &qword_27CEC5788);
      v30 = sub_21E4DC2C8();
      v31 = [v30 view];
      if (v31)
      {
        v32 = v31;
        [v31 setBackgroundColor_];

        sub_21E4DC508();
        sub_21E4DC2A8();

        sub_21E424BC0(v11, &qword_27CEC5788);
        v33 = [v30 view];
        if (*&v33 != 0.0)
        {
          v34 = v33;

          v35 = (v1 + v12[22]);
          v36 = *v35;
          v37 = v35[1];
          v58 = *v35;
          v59 = v37;
          v57 = *&v34;
          v38 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5708);
          sub_21E4DCA18();
          v39 = (v1 + v12[20]);
          v40 = *v39;
          v41 = v39[1];
          LOBYTE(v58) = v40;
          v59 = v41;
          LOBYTE(v57) = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
          sub_21E4DCA18();
          Strong = swift_unknownObjectWeakLoadStrong();
          if (Strong)
          {
            v43 = Strong;
            v58 = v36;
            v59 = v37;
            sub_21E4DCA08();
            v44 = v57;
            v45 = (v1 + v12[21]);
            v46 = *v45;
            v47 = v45[1];
            v58 = v46;
            v59 = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
            sub_21E4DCA08();
            [v43 didReceiveAttributionView:*&v44 height:v57 + 16.0];

            swift_unknownObjectRelease();
          }

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }
  }

LABEL_13:
  if (*(v13 + 96))
  {
    v49 = 1;
  }

  else
  {
    v50 = sub_21E477DD4();
    if (v50 >> 62)
    {
      v51 = sub_21E4DD488();
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v49 = v51 != 0;
  }

  v52 = (v1 + v12[20]);
  v53 = *v52;
  v54 = *(v52 + 1);
  LOBYTE(v60) = v53;
  *(&v60 + 1) = v54;
  LOBYTE(v58) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA18();
  v55 = swift_unknownObjectWeakLoadStrong();
  if (v55)
  {
    [v55 didReceiveAttributionView:0 height:0.0];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_21E448730@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v3 = type metadata accessor for SiriSharedUISmartDialog();
  v28 = *(v3 - 8);
  v27 = *(v28 + 64);
  MEMORY[0x28223BE20](v3);
  v26 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_21E4DC268();
  v5 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56E8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56F0);
  v23 = *(v11 - 8);
  v24 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  v14 = sub_21E477DD4();
  *v10 = sub_21E4DC278();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC56F8);
  sub_21E44A100(v2, v14, &v10[*(v15 + 44)]);

  sub_21E4DC258();
  v16 = sub_21E42D5A8(&qword_280C142A0, &qword_27CEC56E8);
  sub_21E4DC7F8();
  (*(v5 + 8))(v7, v25);
  sub_21E424BC0(v10, &qword_27CEC56E8);
  v17 = v26;
  sub_21E44BCC8(v2, v26);
  v18 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v19 = swift_allocObject();
  sub_21E44BD2C(v17, v19 + v18);
  v30 = v8;
  v31 = v16;
  swift_getOpaqueTypeConformance2();
  v20 = v24;
  sub_21E4DC728();

  return (*(v23 + 8))(v13, v20);
}

double sub_21E448AD0()
{
  v1 = *(v0 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8);

  v2 = sub_21E4DCFE8();

  if (v2 > 0)
  {
    return *(v1 + 128);
  }

  if (*(*(v1 + 72) + 16))
  {
    return *(v1 + 128);
  }

  if (*(v1 + 88))
  {
    return *(v1 + 128);
  }

  result = 0.0;
  if (*(v1 + 232) == 1)
  {
    return *(v1 + 128);
  }

  return result;
}

uint64_t sub_21E448B6C(double a1, double a2)
{
  type metadata accessor for SiriSharedUISmartDialog();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong smartDialogSizeDidChangeWithSize_];
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5480);
  return sub_21E4DCA18();
}

uint64_t sub_21E448C28()
{
  v0 = sub_21E4DCDB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SiriSharedUISmartDialog();
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5CD0) + 48);
  v5 = *MEMORY[0x277D63EF8];
  v6 = sub_21E4DCDD8();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  v7 = *MEMORY[0x277D63F00];
  v8 = sub_21E4DCDE8();
  (*(*(v8 - 8) + 104))(&v3[v4], v7, v8);
  (*(v1 + 104))(v3, *MEMORY[0x277D63ED8], v0);
  sub_21E4DBD88();
  return (*(v1 + 8))(v3, v0);
}

id sub_21E448DD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_21E4DCCF8();
  MEMORY[0x28223BE20](v6);
  v9 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v38 = v7;
    v10 = a1;
    v11 = [v10 modelData];
    if (v11)
    {
      v12 = v11;
      v13 = sub_21E4DB5B8();
      v15 = v14;

      v16 = [v10 bundleName];
      if (v16)
      {
        v17 = v16;
        sub_21E4DCF78();
        v19 = v18;

        v36 = [objc_allocWithZone(sub_21E4DCD88()) init];
        v37 = v15;
        v34[1] = v19;
        v20 = sub_21E4DCD68();
        v21 = *(v3 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8);
        v22 = *(v21 + 224);
        *(v21 + 224) = v20;
        v35 = v20;

        v23 = *(v21 + 224);
        swift_unknownObjectWeakLoadStrong();
        v24 = v23;
        sub_21E4DCE38();

        v25 = *(v21 + 224);
        sub_21E4DCDF8();

        v26 = *(v21 + 224);
        sub_21E4DCE08();

        v27 = *(v21 + 224);
        v28 = [v10 responseViewId];
        sub_21E4DCF78();

        sub_21E4DCE28();
        v29 = *(v21 + 224);
        result = [v10 viewId];
        if (result)
        {
          v31 = result;

          sub_21E4DCF78();

          sub_21E4DCE68();
          v32 = *(v21 + 224);
          sub_21E4DCE48();

          sub_21E424920(v13, v37);
          (*(v38 + 32))(a2, v9, v6);
          return (*(v38 + 56))(a2, 0, 1, v6);
        }

        else
        {
          __break(1u);
        }

        return result;
      }

      sub_21E424920(v13, v15);
    }

    v7 = v38;
  }

  v33 = *(v7 + 56);

  return v33(a2, 1, 1, v6);
}

uint64_t sub_21E449184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a3;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC57C0);
  MEMORY[0x28223BE20](v46);
  v47 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5678);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6700);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v45 - v10;
  v12 = *(a1 + *(type metadata accessor for IndentifiableCardSection(0) + 20));
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    v28 = sub_21E4DB588();
    (*(*(v28 - 8) + 56))(v11, 1, 1, v28);
    goto LABEL_5;
  }

  SFCardSection.punchoutCommandUrl()(v11);
  v13 = sub_21E4DB588();
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
LABEL_5:
    sub_21E424BC0(v11, &qword_27CEC6700);
    sub_21E4DCD88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_21E4E6AF0;
    *(v29 + 32) = v12;
    v30 = *(*(a2 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8) + 224);
    v31 = v12;
    v32 = v30;
    MEMORY[0x223D5AA20](v29, v32);

    Strong = swift_unknownObjectWeakLoadStrong();
    v34 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5688) + 36)];
    swift_unknownObjectWeakInit();

    *(v34 + 1) = v31;
    swift_unknownObjectWeakLoadStrong();
    v35 = &v8[*(v6 + 36)];
    swift_unknownObjectWeakInit();
    v45 = xmmword_21E4E6AE0;
    v49 = xmmword_21E4E6AE0;
    v36 = v31;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
    sub_21E4DC9F8();
    v37 = v51;
    *(v35 + 40) = v50;
    *(v35 + 7) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_21E4E57E0;
    *(v38 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
    *&v49 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
    sub_21E4DC9F8();
    v39 = *(&v50 + 1);
    *(v35 + 8) = v50;
    *(v35 + 9) = v39;
    type metadata accessor for CGSize(0);
    v49 = 0uLL;
    sub_21E4DC9F8();
    v40 = v51;
    *(v35 + 5) = v50;
    *(v35 + 12) = v40;
    v49 = v45;
    sub_21E4DC9F8();
    v41 = v51;
    *(v35 + 104) = v50;
    *(v35 + 15) = v41;
    type metadata accessor for SmartDialogData();
    sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
    *v35 = sub_21E4DBF98();
    *(v35 + 1) = v42;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(v35 + 3) = v31;
    v35[32] = 0;
    goto LABEL_6;
  }

  sub_21E424BC0(v11, &qword_27CEC6700);
  sub_21E4DCD88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_21E4E6AF0;
  *(v14 + 32) = v12;
  v15 = *(*(a2 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8) + 224);
  v16 = v12;
  v17 = v15;
  MEMORY[0x223D5AA20](v14, v17);

  v18 = swift_unknownObjectWeakLoadStrong();
  v19 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5688) + 36)];
  swift_unknownObjectWeakInit();

  *(v19 + 1) = v16;
  swift_unknownObjectWeakLoadStrong();
  v20 = &v8[*(v6 + 36)];
  swift_unknownObjectWeakInit();
  v45 = xmmword_21E4E6AE0;
  v49 = xmmword_21E4E6AE0;
  v21 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
  sub_21E4DC9F8();
  v22 = v51;
  *(v20 + 40) = v50;
  *(v20 + 7) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21E4E57E0;
  *(v23 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
  *&v49 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
  sub_21E4DC9F8();
  v24 = *(&v50 + 1);
  *(v20 + 8) = v50;
  *(v20 + 9) = v24;
  type metadata accessor for CGSize(0);
  v49 = 0uLL;
  sub_21E4DC9F8();
  v25 = v51;
  *(v20 + 5) = v50;
  *(v20 + 12) = v25;
  v49 = v45;
  sub_21E4DC9F8();
  v26 = v51;
  *(v20 + 104) = v50;
  *(v20 + 15) = v26;
  type metadata accessor for SmartDialogData();
  sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
  *v20 = sub_21E4DBF98();
  *(v20 + 1) = v27;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(v20 + 3) = v16;
  v20[32] = 1;
LABEL_6:
  sub_21E424848(v8, v47, &unk_27CEC5678);
  swift_storeEnumTagMultiPayload();
  sub_21E44CC94();
  v43 = v12;
  sub_21E4DC398();
  return sub_21E424BC0(v8, &unk_27CEC5678);
}

uint64_t sub_21E44991C@<X0>(uint64_t a1@<X8>)
{
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC56D0);
  v51 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v4 = &v48 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56C0);
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v53 = &v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56B8);
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57D8);
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = &v48 - v10;
  v11 = sub_21E4DB428();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for SiriSharedUISmartDialog() + 44);
  v55 = v1;
  v16 = *(v1 + v15 + 8);
  v17 = *(v16 + 32);
  v64 = *(v16 + 24);
  v65 = v17;

  sub_21E4DB408();
  sub_21E42C090();
  v18 = sub_21E4DD328();
  v20 = v19;
  (*(v12 + 8))(v14, v11);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_21E4DC238();
    v22 = sub_21E4DC678();
    v24 = v23;
    v64 = v22;
    v65 = v23;
    v26 = v25 & 1;
    LOBYTE(v66) = v25 & 1;
    v67 = v27;
    v28 = *(v16 + 32);
    v62 = *(v16 + 24);
    v63 = v28;
    v29 = MEMORY[0x277CE0BD8];
    v49 = a1;
    v50 = v9;
    v30 = MEMORY[0x277CE0BC8];
    v31 = MEMORY[0x277D837D0];
    sub_21E4DC6C8();
    sub_21E42C0F4(v22, v24, v26);

    v32 = *(v16 + 32);
    v62 = *(v16 + 24);
    v63 = v32;
    v64 = v29;
    v65 = v31;
    v33 = v31;
    v66 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v36 = v53;
    v35 = v54;
    sub_21E4DC6B8();
    v37 = (*(v51 + 8))(v4, v35);
    MEMORY[0x28223BE20](v37);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56C8);
    v64 = v35;
    v65 = v33;
    v66 = OpaqueTypeConformance2;
    v39 = swift_getOpaqueTypeConformance2();
    v40 = sub_21E44D0DC();
    v41 = v56;
    v9 = v50;
    v42 = v58;
    sub_21E4DC708();
    (*(v57 + 8))(v36, v42);
    v64 = v42;
    v65 = v38;
    v66 = v39;
    v67 = v40;
    swift_getOpaqueTypeConformance2();
    v43 = v60;
    sub_21E4DC7D8();
    (*(v59 + 8))(v41, v43);
    v44 = v61;
    a1 = v49;
    (*(v61 + 32))();
    v45 = 0;
    v46 = v44;
  }

  else
  {
    v45 = 1;
    v46 = v61;
  }

  return (*(v46 + 56))(a1, v45, 1, v9);
}

uint64_t sub_21E449F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  type metadata accessor for SiriSharedUISmartDialog();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5418);
  sub_21E4DBEB8();
  v7 = sub_21E4DC5D8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = sub_21E4DC5E8();
  sub_21E424BC0(v6, &qword_27CEC57E0);
  KeyPath = swift_getKeyPath();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56C0);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC56C8);
  v12 = (a2 + *(result + 36));
  *v12 = KeyPath;
  v12[1] = v8;
  return result;
}

uint64_t sub_21E44A100@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5710);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = v46 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5718);
  MEMORY[0x28223BE20](v6);
  v8 = v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5720);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5728);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v18 = type metadata accessor for SiriSharedUISmartDialog();
  v19 = *(*(a1 + *(v18 + 44) + 8) + 96);
  if (v19)
  {
    v20 = v18;
    v48 = v19;
    sub_21E448DD4(v19, v11);
    v21 = sub_21E4DC5A8();
    v22 = (a1 + *(v20 + 80));
    v23 = *v22;
    v24 = *(v22 + 1);
    LOBYTE(v51) = v23;
    v52 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
    sub_21E4DCA08();
    sub_21E4DBE28();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    sub_21E42D214(v11, v15, &qword_27CEC5720);
    v33 = &v15[*(v12 + 36)];
    *v33 = v21;
    *(v33 + 1) = v26;
    *(v33 + 2) = v28;
    *(v33 + 3) = v30;
    *(v33 + 4) = v32;
    v33[40] = 0;
    sub_21E42D214(v15, v17, &qword_27CEC5728);
    sub_21E424848(v17, v8, &qword_27CEC5728);
    swift_storeEnumTagMultiPayload();
    sub_21E44D510();
    sub_21E44D650();
    v34 = v50;
    sub_21E4DC398();

    sub_21E424BC0(v17, &qword_27CEC5728);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5770);
    return (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
  }

  v46[2] = v12;
  v37 = v6;
  v38 = v49;
  v39 = v50;
  v40 = v48;
  if (v48 >> 62)
  {
    if (sub_21E4DD488())
    {
      goto LABEL_5;
    }
  }

  else if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v46[1] = v37;
    v51 = v40;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5E00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5730);
    sub_21E42D5A8(&qword_280C141D8, &qword_27CEC5E00);
    sub_21E44C4B0();
    sub_21E44D390();
    v41 = v5;
    sub_21E4DCA98();
    v42 = v47;
    (*(v47 + 16))(v8, v41, v38);
    swift_storeEnumTagMultiPayload();
    sub_21E44D510();
    sub_21E44D650();
    sub_21E4DC398();
    (*(v42 + 8))(v41, v38);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5770);
    return (*(*(v43 - 8) + 56))(v39, 0, 1, v43);
  }

  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5770);
  v45 = *(*(v44 - 8) + 56);

  return v45(v39, 1, 1, v44);
}

void sub_21E44A6DC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 aceId];
  if (v3)
  {
    v4 = v3;
    v5 = sub_21E4DCF78();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_21E44A744(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_21E4DCF68();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAceId_];
}

uint64_t sub_21E44A7B4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5778);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5748);
  v19[0] = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v19 - v9;
  v11 = *a1;
  v12 = [v11 viewController];
  if (v12)
  {

    v13 = [v11 viewController];
    if (v13)
    {
      v14 = v13;
      ObjectType = swift_getObjectType();
      v16 = swift_conformsToProtocol2();
      if (v16)
      {
        v19[3] = (*(v16 + 8))(ObjectType, v16);
        [objc_opt_self() isEnhancedMaterialEnabled];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5750);
        v19[1] = MEMORY[0x277CE11C8];
        v19[2] = MEMORY[0x277CE11C0];
        swift_getOpaqueTypeConformance2();
        sub_21E4DC708();

        (*(v5 + 32))(v10, v7, v4);
        (*(v5 + 56))(v10, 0, 1, v4);
LABEL_10:
        sub_21E42D214(v10, a2, &qword_27CEC5748);
        return (*(v19[0] + 56))(a2, 0, 1, v8);
      }
    }

    (*(v5 + 56))(v10, 1, 1, v4);
    goto LABEL_10;
  }

  v17 = *(v19[0] + 56);

  return v17(a2, 1, 1, v8);
}

uint64_t sub_21E44AB68(double a1, double a2)
{
  type metadata accessor for SiriSharedUISmartDialog();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
  sub_21E4DCA18();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5708);
    sub_21E4DCA08();
    sub_21E4DCA08();
    [v4 didReceiveAttributionView:*&a2 height:a2 + 16.0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21E44AC88()
{
  v16 = sub_21E4DC1E8();
  v1 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5D00);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = sub_21E4DBFD8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SiriSharedUISmartDialog();
  sub_21E424848(v0 + *(v11 + 60), v6, &unk_27CEC5D00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  else
  {
    sub_21E4DD228();
    v12 = sub_21E4DC548();
    sub_21E4DBCA8();

    sub_21E4DC1D8();
    swift_getAtKeyPath();

    (*(v1 + 8))(v3, v16);
  }

  v13 = sub_21E4DBFC8();
  (*(v8 + 8))(v10, v7);
  return v13 & 1;
}

id sub_21E44AF14@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21E4DCD08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v44[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = [*a1 viewController];
  if (!result)
  {
    *(a3 + 192) = 0;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 200) = -2;
    return result;
  }

  *&v43 = v7;

  v12 = [v10 viewController];
  if (!v12)
  {
LABEL_7:
    v21 = [v10 viewController];
    if (v21)
    {
      v22 = v21;
      v45 = &unk_282FC33A0;
      v23 = swift_dynamicCastObjCProtocolConditional();
      if (v23)
      {
        v24 = v23;
        v25 = v22;
        v26 = [v24 currentResponseView];
        v22 = v25;
        if (v26)
        {
          v27 = v26;
          sub_21E4DCD58();
          if (swift_dynamicCastClass())
          {
            sub_21E4DCD48();
            sub_21E44D9A4(&qword_27CEC5610, MEMORY[0x277D63AF8]);
            v28 = sub_21E4DC698();

            (*(v43 + 8))(v9, v6);
            type metadata accessor for SiriSharedUISmartDialog();
            swift_unknownObjectWeakLoadStrong();
            swift_unknownObjectWeakInit();
            v43 = xmmword_21E4E6AE0;
            v49 = xmmword_21E4E6AE0;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
            sub_21E4DC9F8();
            *&v57[1] = v46;
            v57[3] = v47;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
            v29 = swift_allocObject();
            *(v29 + 16) = xmmword_21E4E57E0;
            *(v29 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
            *&v49 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
            sub_21E4DC9F8();
            v58 = v46;
            type metadata accessor for CGSize(0);
            v49 = 0uLL;
            sub_21E4DC9F8();
            v59 = v46;
            v60[0] = v47;
            v49 = v43;
            sub_21E4DC9F8();
            *&v60[1] = v46;
            v60[3] = v47;
            type metadata accessor for SmartDialogData();
            sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
            *&v55 = sub_21E4DBF98();
            *(&v55 + 1) = v30;
            swift_unknownObjectWeakAssign();
            swift_unknownObjectRelease();
            *(&v56 + 1) = 0;
            LOBYTE(v57[0]) = 0;
            sub_21E44C8E4(&v55, v44 + 8);
            *&v44[0] = v28;
            sub_21E44C940(&v55);
            v31 = &qword_27CEC5570;
            sub_21E424848(v44, &v55, &qword_27CEC5570);
            BYTE8(v61) = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5570);
            sub_21E44C6EC();
            sub_21E4DC398();
            sub_21E424848(&v49, &v46, &unk_27CEC5560);
            v48 = 0;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5560);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5578);
            sub_21E44CC18(&unk_280C143A8, &unk_27CEC5560, &unk_21E4E6D88, sub_21E44C6EC);
            sub_21E44C7CC();
            sub_21E4DC398();

            sub_21E424BC0(&v49, &unk_27CEC5560);
            v19 = v44;
LABEL_19:
            v20 = v31;
            goto LABEL_20;
          }

          v22 = v27;
        }
      }
    }

    v32 = [v10 viewController];
    if (!v32)
    {
      v65 = 0;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      memset(v60, 0, sizeof(v60));
      v58 = 0u;
      v59 = 0u;
      memset(v57, 0, sizeof(v57));
      v55 = 0u;
      v56 = 0u;
      v66 = -1;
      return sub_21E42D214(&v55, a3, &unk_27CEC5540);
    }

    v33 = v32;
    v34 = *(a2 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8);
    v35 = 2.0;
    if (!*(v34 + 104))
    {
      v35 = 1.0;
    }

    v36 = *(v34 + 240) / v35;
    v37 = v33;
    sub_21E44BB3C(v37);
    v39 = v38;
    v40 = v37;
    sub_21E44BB3C(v40);

    sub_21E4DCB08();
    sub_21E4DBF18();
    swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();
    v43 = xmmword_21E4E6AE0;
    v49 = xmmword_21E4E6AE0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
    sub_21E4DC9F8();
    *&v57[1] = v46;
    v57[3] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_21E4E57E0;
    *(v41 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
    *&v49 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
    sub_21E4DC9F8();
    v58 = v46;
    type metadata accessor for CGSize(0);
    v49 = 0uLL;
    sub_21E4DC9F8();
    v59 = v46;
    v60[0] = v47;
    v49 = v43;
    sub_21E4DC9F8();
    *&v60[1] = v46;
    v60[3] = v47;
    type metadata accessor for SmartDialogData();
    sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
    *&v55 = sub_21E4DBF98();
    *(&v55 + 1) = v42;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    *(&v56 + 1) = 0;
    LOBYTE(v57[0]) = 0;
    sub_21E44C8E4(&v55, &v54);
    *&v49 = v40;
    *(&v49 + 1) = v36;
    v50 = v39;
    v51 = v44[0];
    v52 = v44[1];
    v53 = v44[2];
    sub_21E44C940(&v55);
    v31 = &unk_27CEC5578;
    sub_21E424848(&v49, &v46, &unk_27CEC5578);
    v48 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5578);
    sub_21E44CC18(&unk_280C143A8, &unk_27CEC5560, &unk_21E4E6D88, sub_21E44C6EC);
    sub_21E44C7CC();
    sub_21E4DC398();

    v19 = &v49;
    goto LABEL_19;
  }

  v13 = v12;
  ObjectType = swift_getObjectType();
  v15 = swift_conformsToProtocol2();
  if (!v15)
  {

    goto LABEL_7;
  }

  v16 = (*(v15 + 8))(ObjectType, v15);
  type metadata accessor for SiriSharedUISmartDialog();
  swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();
  v43 = xmmword_21E4E6AE0;
  v49 = xmmword_21E4E6AE0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5598);
  sub_21E4DC9F8();
  *&v57[1] = v46;
  v57[3] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_21E4E57E0;
  *(v17 + 32) = sub_21E43CA38(MEMORY[0x277D84F90]);
  *&v49 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC55A8);
  sub_21E4DC9F8();
  v58 = v46;
  type metadata accessor for CGSize(0);
  v49 = 0uLL;
  sub_21E4DC9F8();
  v59 = v46;
  v60[0] = v47;
  v49 = v43;
  sub_21E4DC9F8();
  *&v60[1] = v46;
  v60[3] = v47;
  type metadata accessor for SmartDialogData();
  sub_21E44D9A4(&qword_280C14DC0, type metadata accessor for SmartDialogData);
  *&v55 = sub_21E4DBF98();
  *(&v55 + 1) = v18;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  *(&v56 + 1) = 0;
  LOBYTE(v57[0]) = 0;
  sub_21E44C8E4(&v55, v44 + 8);
  *&v44[0] = v16;
  sub_21E44C940(&v55);
  sub_21E424848(v44, &v55, &qword_27CEC5570);
  BYTE8(v61) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5570);
  sub_21E44C6EC();
  sub_21E4DC398();
  sub_21E424848(&v49, &v46, &unk_27CEC5560);
  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5578);
  sub_21E44CC18(&unk_280C143A8, &unk_27CEC5560, &unk_21E4E6D88, sub_21E44C6EC);
  sub_21E44C7CC();
  sub_21E4DC398();

  sub_21E424BC0(&v49, &unk_27CEC5560);
  v19 = v44;
  v20 = &qword_27CEC5570;
LABEL_20:
  sub_21E424BC0(v19, v20);
  return sub_21E42D214(&v55, a3, &unk_27CEC5540);
}

uint64_t sub_21E44BB3C(id a1)
{
  v3 = *(v1 + *(type metadata accessor for SiriSharedUISmartDialog() + 44) + 8);
  v4 = *(v3 + 112);
  if (v4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_21E4DD488())
  {

    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223D5B080](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v7 viewController];

      if (v9)
      {

        if (v9 == a1)
        {
          goto LABEL_13;
        }
      }

      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      ++v6;
      if (v10 == i)
      {
        v6 = 0;
LABEL_13:

        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v6 = 0;
LABEL_18:
  v11 = *(*(v3 + 168) + 16);
  v12 = *(v3 + 112);
  if (v12 >> 62)
  {
    result = sub_21E4DD488();
  }

  else
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11 == result)
  {
    v14 = *(*(v3 + 168) + 16);
    if (v14)
    {
      if ((v6 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v6 < v14)
      {
        return result;
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21E44BCC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSharedUISmartDialog();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21E44BD2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSharedUISmartDialog();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_21E44BD90@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SiriSharedUISmartDialog();
  sub_21E445F30(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  a1[1] = v3;
  return result;
}

uint64_t sub_21E44BE04@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SiriSharedUISmartDialog() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21E4462A4(v4, a1);
}

unint64_t sub_21E44BE74()
{
  result = qword_280C142F0;
  if (!qword_280C142F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C142F0);
  }

  return result;
}

unint64_t sub_21E44BF08()
{
  result = qword_280C14430;
  if (!qword_280C14430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5428);
    sub_21E44BFC0();
    sub_21E42D5A8(&unk_280C14310, &qword_27CEC5468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14430);
  }

  return result;
}

unint64_t sub_21E44BFC0()
{
  result = qword_280C144A8;
  if (!qword_280C144A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5420);
    sub_21E42D5A8(&qword_280C14240, &unk_27CEC5458);
    sub_21E42D5A8(&unk_280C14320, &qword_27CEC5068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C144A8);
  }

  return result;
}

uint64_t sub_21E44C0A4()
{
  type metadata accessor for SiriSharedUISmartDialog();

  return sub_21E448C28();
}

unint64_t sub_21E44C104()
{
  result = qword_280C14478;
  if (!qword_280C14478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5490);
    sub_21E44C188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14478);
  }

  return result;
}

unint64_t sub_21E44C188()
{
  result = qword_280C14480;
  if (!qword_280C14480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC54D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC54E0);
    sub_21E44C27C();
    swift_getOpaqueTypeConformance2();
    sub_21E42D5A8(&unk_280C144F0, &qword_27CEC51C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14480);
  }

  return result;
}

unint64_t sub_21E44C27C()
{
  result = qword_280C14408;
  if (!qword_280C14408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC54E0);
    sub_21E44C334();
    sub_21E42D5A8(&qword_280C143E0, &qword_27CEC5508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14408);
  }

  return result;
}

unint64_t sub_21E44C334()
{
  result = qword_280C14450;
  if (!qword_280C14450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC54E8);
    sub_21E42D5A8(&unk_280C14290, &unk_27CEC54F8);
    sub_21E42D5A8(&unk_280C14320, &qword_27CEC5068);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14450);
  }

  return result;
}

id sub_21E44C430@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriSharedUISmartDialog() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E44AF14(a1, v6, a2);
}

unint64_t sub_21E44C4B0()
{
  result = qword_280C14210;
  if (!qword_280C14210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14210);
  }

  return result;
}

unint64_t sub_21E44C52C()
{
  result = qword_280C14370;
  if (!qword_280C14370)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5530);
    sub_21E44C5B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14370);
  }

  return result;
}

unint64_t sub_21E44C5B0()
{
  result = qword_280C14368;
  if (!qword_280C14368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5540);
    sub_21E44C634();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14368);
  }

  return result;
}

unint64_t sub_21E44C634()
{
  result = qword_280C14378;
  if (!qword_280C14378)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5550);
    sub_21E44CC18(&unk_280C143A8, &unk_27CEC5560, &unk_21E4E6D88, sub_21E44C6EC);
    sub_21E44C7CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14378);
  }

  return result;
}

unint64_t sub_21E44C6EC()
{
  result = qword_280C14448;
  if (!qword_280C14448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5570);
    sub_21E44C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14448);
  }

  return result;
}

unint64_t sub_21E44C778()
{
  result = qword_280C152C8;
  if (!qword_280C152C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C152C8);
  }

  return result;
}

unint64_t sub_21E44C7CC()
{
  result = qword_280C14440;
  if (!qword_280C14440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5578);
    sub_21E44C858();
    sub_21E44C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14440);
  }

  return result;
}

unint64_t sub_21E44C858()
{
  result = qword_280C144D0;
  if (!qword_280C144D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5588);
    sub_21E431464();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C144D0);
  }

  return result;
}

unint64_t sub_21E44C994()
{
  result = qword_280C14380;
  if (!qword_280C14380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5628);
    sub_21E44CA20();
    sub_21E44CE18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14380);
  }

  return result;
}

unint64_t sub_21E44CA20()
{
  result = qword_280C143C8;
  if (!qword_280C143C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5640);
    sub_21E44CAAC();
    sub_21E44CB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143C8);
  }

  return result;
}

unint64_t sub_21E44CAAC()
{
  result = qword_280C144B8;
  if (!qword_280C144B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5650);
    sub_21E44D9A4(&qword_280C14248, MEMORY[0x277D63AE8]);
    sub_21E44C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C144B8);
  }

  return result;
}

unint64_t sub_21E44CB68()
{
  result = qword_280C14260;
  if (!qword_280C14260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5658);
    sub_21E44CC18(&qword_280C143A0, &unk_27CEC5668, &unk_21E4E6E30, sub_21E44CC94);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14260);
  }

  return result;
}

uint64_t sub_21E44CC18(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21E44CC94()
{
  result = qword_280C14420;
  if (!qword_280C14420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5678);
    sub_21E44CD20();
    sub_21E44C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14420);
  }

  return result;
}

unint64_t sub_21E44CD20()
{
  result = qword_280C144A0;
  if (!qword_280C144A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5688);
    swift_getOpaqueTypeConformance2();
    sub_21E44CDC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C144A0);
  }

  return result;
}

unint64_t sub_21E44CDC4()
{
  result = qword_280C152E0;
  if (!qword_280C152E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C152E0);
  }

  return result;
}

unint64_t sub_21E44CE18()
{
  result = qword_280C143B8;
  if (!qword_280C143B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5690);
    sub_21E44CEA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C143B8);
  }

  return result;
}

unint64_t sub_21E44CEA4()
{
  result = qword_280C14458;
  if (!qword_280C14458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC56A0);
    sub_21E44CF30();
    sub_21E44C778();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14458);
  }

  return result;
}

unint64_t sub_21E44CF30()
{
  result = qword_280C142E8;
  if (!qword_280C142E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC56B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC56B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC56C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC56C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC56D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21E44D0DC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C142E8);
  }

  return result;
}

unint64_t sub_21E44D0DC()
{
  result = qword_280C14488;
  if (!qword_280C14488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC56C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC56D0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_21E42D5A8(&qword_280C14330, &qword_27CEC50D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14488);
  }

  return result;
}

unint64_t sub_21E44D230()
{
  result = qword_280C14490;
  if (!qword_280C14490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5630);
    sub_21E44C994();
    sub_21E44D9A4(&unk_280C14300, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14490);
  }

  return result;
}

uint64_t sub_21E44D304(uint64_t (*a1)(uint64_t, __n128, __n128), double a2, double a3)
{
  v6 = *(type metadata accessor for SiriSharedUISmartDialog() - 8);
  v7 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));
  v8.n128_f64[0] = a2;
  v9.n128_f64[0] = a3;

  return a1(v7, v8, v9);
}

unint64_t sub_21E44D390()
{
  result = qword_27CEC5738;
  if (!qword_27CEC5738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5730);
    sub_21E44D414();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5738);
  }

  return result;
}

unint64_t sub_21E44D414()
{
  result = qword_27CEC5740;
  if (!qword_27CEC5740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5750);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5740);
  }

  return result;
}

unint64_t sub_21E44D510()
{
  result = qword_27CEC5758;
  if (!qword_27CEC5758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5728);
    sub_21E44D59C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5758);
  }

  return result;
}

unint64_t sub_21E44D59C()
{
  result = qword_27CEC5760;
  if (!qword_27CEC5760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5720);
    sub_21E44D9A4(&qword_280C14248, MEMORY[0x277D63AE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5760);
  }

  return result;
}

unint64_t sub_21E44D650()
{
  result = qword_27CEC5768;
  if (!qword_27CEC5768)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5710);
    sub_21E44D390();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5768);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for SiriSharedUISmartDialog();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_21E4DCDA8();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  MEMORY[0x223D5BFD0](v0 + v3 + v1[13]);
  MEMORY[0x223D5BFD0](v0 + v3 + v1[14]);
  v7 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC5D00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_21E4DBFD8();
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
  }

  else
  {
  }

  v9 = v1[16];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5418);
  v11 = *(*(v10 - 8) + 8);
  v11(v5 + v9, v10);
  v11(v5 + v1[17], v10);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21E44D924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SiriSharedUISmartDialog() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21E449184(a1, v6, a2);
}

uint64_t sub_21E44D9A4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21E44D9F4()
{
  result = qword_280C14468;
  if (!qword_280C14468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27CEC5470);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5428);
    sub_21E44BF08();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C14468);
  }

  return result;
}

uint64_t sub_21E44DABC@<X0>(_BYTE *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E6F90;
  v4 = sub_21E4DC558();
  *(inited + 32) = v4;
  v5 = sub_21E4DC578();
  *(inited + 33) = v5;
  v6 = sub_21E4DC568();
  sub_21E4DC568();
  if (sub_21E4DC568() != v4)
  {
    v6 = sub_21E4DC568();
  }

  sub_21E4DC568();
  if (sub_21E4DC568() != v5)
  {
    v6 = sub_21E4DC568();
  }

  *a1 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5820);
  return sub_21E44DBC0(v1, &a1[*(v7 + 44)]);
}

uint64_t sub_21E44DBC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v39 = a2;
  v38 = sub_21E4DC228();
  v3 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5828);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v47 = *(a1 + 128);
  v13 = swift_allocObject();
  v14 = *(a1 + 112);
  v13[7] = *(a1 + 96);
  v13[8] = v14;
  v15 = *(a1 + 144);
  v13[9] = *(a1 + 128);
  v13[10] = v15;
  v16 = *(a1 + 48);
  v13[3] = *(a1 + 32);
  v13[4] = v16;
  v17 = *(a1 + 80);
  v13[5] = *(a1 + 64);
  v13[6] = v17;
  v18 = *(a1 + 16);
  v13[1] = *a1;
  v13[2] = v18;
  v19 = swift_allocObject();
  v20 = *(a1 + 112);
  v19[7] = *(a1 + 96);
  v19[8] = v20;
  v21 = *(a1 + 144);
  v19[9] = *(a1 + 128);
  v19[10] = v21;
  v22 = *(a1 + 48);
  v19[3] = *(a1 + 32);
  v19[4] = v22;
  v23 = *(a1 + 48);
  v25 = *(a1 + 64);
  v24 = *(a1 + 80);
  v19[5] = v25;
  v19[6] = v24;
  v26 = *(a1 + 16);
  v19[1] = *a1;
  v19[2] = v26;
  v45 = v23;
  v46 = v25;
  sub_21E45073C(a1, &v40);
  sub_21E45073C(a1, &v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
  sub_21E4DCA08();
  v27 = 0.0;
  if (v41)
  {
    v28 = 0.0;
  }

  else
  {
    v28 = *&v40;
  }

  if (v41)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(&v40 + 1);
  }

  v40 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
  sub_21E4DCA08();
  *&v40 = sub_21E45072C;
  *(&v40 + 1) = v13;
  v41 = sub_21E450D94;
  v42 = 0;
  v43 = sub_21E450734;
  v44 = v19;
  v30 = fmin(*&v45, 0.5);
  if (v30 >= 0.0)
  {
    v27 = v30;
  }

  v31 = swift_allocObject();
  *(v31 + 16) = v28;
  *(v31 + 24) = v29;
  *(v31 + 32) = v27;
  *(v31 + 40) = 0x3FA999999999999ALL;
  (*(v3 + 104))(v5, *MEMORY[0x277CE00F0], v38);
  sub_21E4DC9C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5838);
  sub_21E450780();
  sub_21E4DC7A8();

  v32 = v47;
  v33 = *(v7 + 16);
  v33(v10, v12, v6);
  v34 = v39;
  *v39 = v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5868);
  v33(&v34[*(v35 + 48)], v10, v6);
  sub_21E450864(&v47, &v40);
  v36 = *(v7 + 8);

  v36(v12, v6);
  v36(v10, v6);
}

uint64_t sub_21E44E064@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_21E4DC468();
  v20 = *(v3 - 8);
  v21 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5890);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5898);
  v10 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v12 = &v19 - v11;
  sub_21E4DC558();
  v23 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC58A0);
  sub_21E450A34();
  sub_21E4DBE38();
  sub_21E4DC458();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5818);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_21E4E6F90;
  v14 = sub_21E4DC578();
  *(inited + 32) = v14;
  v15 = sub_21E4DC558();
  *(inited + 33) = v15;
  sub_21E4DC568();
  sub_21E4DC568();
  if (sub_21E4DC568() != v14)
  {
    sub_21E4DC568();
  }

  sub_21E4DC568();
  if (sub_21E4DC568() != v15)
  {
    sub_21E4DC568();
  }

  v16 = sub_21E42D5A8(&qword_27CEC58F0, &qword_27CEC5890);
  sub_21E4DC7E8();
  (*(v20 + 8))(v5, v21);
  (*(v7 + 8))(v9, v6);
  v24 = v6;
  v25 = v16;
  swift_getOpaqueTypeConformance2();
  v17 = v19;
  sub_21E4DC7C8();
  return (*(v10 + 8))(v12, v17);
}

uint64_t sub_21E44E3FC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_21E4DC218();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC58F8);
  v43[0] = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5880);
  sub_21E4DCA08();
  v4 = swift_allocObject();
  v5 = a1[7];
  v4[7] = a1[6];
  v4[8] = v5;
  v6 = a1[9];
  v4[9] = a1[8];
  v4[10] = v6;
  v7 = a1[3];
  v4[3] = a1[2];
  v4[4] = v7;
  v8 = a1[5];
  v4[5] = a1[4];
  v4[6] = v8;
  v9 = a1[1];
  v4[1] = *a1;
  v4[2] = v9;
  sub_21E45073C(a1, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57E8);
  sub_21E4DB698();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5900);
  sub_21E42D5A8(&qword_27CEC5908, &qword_27CEC57E8);
  sub_21E450C38();
  sub_21E450CBC(&qword_27CEC5918, type metadata accessor for SiriSharedUIAutoscrollTextView.IdentifiableView);
  sub_21E4DCAA8();
  v43[0] = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
  sub_21E4DCA08();
  v10 = v54;
  v11 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC58C8) + 36));
  *v11 = v10;
  v11[1] = 0;
  v12 = swift_allocObject();
  v13 = a1[7];
  *(v12 + 7) = a1[6];
  *(v12 + 8) = v13;
  v14 = a1[9];
  *(v12 + 9) = a1[8];
  *(v12 + 10) = v14;
  v15 = a1[3];
  *(v12 + 3) = a1[2];
  *(v12 + 4) = v15;
  v16 = a1[5];
  *(v12 + 5) = a1[4];
  *(v12 + 6) = v16;
  v17 = a1[1];
  *(v12 + 1) = *a1;
  *(v12 + 2) = v17;
  v18 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC58B8) + 36));
  *v18 = sub_21E450D04;
  v18[1] = v12;
  v18[2] = 0;
  v18[3] = 0;
  sub_21E45073C(a1, v43);
  v19 = sub_21E4DCB08();
  v21 = v20;
  v22 = *(a1 + 16);
  v23 = sub_21E4DC5B8();
  sub_21E4DBE28();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  LOBYTE(v43[0]) = 0;
  v32 = swift_allocObject();
  v33 = a1[7];
  v32[7] = a1[6];
  v32[8] = v33;
  v34 = a1[9];
  v32[9] = a1[8];
  v32[10] = v34;
  v35 = a1[3];
  v32[3] = a1[2];
  v32[4] = v35;
  v36 = a1[5];
  v32[5] = a1[4];
  v32[6] = v36;
  v37 = a1[1];
  v32[1] = *a1;
  v32[2] = v37;
  *&v47 = v22;
  BYTE8(v47) = v23;
  *(&v47 + 9) = *v44;
  HIDWORD(v47) = *&v44[3];
  *&v48 = v25;
  *(&v48 + 1) = v27;
  *&v49 = v29;
  *(&v49 + 1) = v31;
  LOBYTE(v50) = 0;
  *(&v50 + 1) = 257;
  *(&v50 + 3) = v45;
  BYTE7(v50) = v46;
  *(&v50 + 1) = sub_21E450D94;
  *&v51 = 0;
  *(&v51 + 1) = sub_21E450D7C;
  *&v52 = v32;
  *(&v52 + 1) = v19;
  v53 = v21;
  v38 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC58A0) + 36);
  v39 = v52;
  *(v38 + 64) = v51;
  *(v38 + 80) = v39;
  *(v38 + 96) = v53;
  v40 = v48;
  *v38 = v47;
  *(v38 + 16) = v40;
  v41 = v50;
  *(v38 + 32) = v49;
  *(v38 + 48) = v41;
  v54 = v22;
  v55 = v23;
  *&v56[3] = *&v44[3];
  *v56 = *v44;
  v57 = v25;
  v58 = v27;
  v59 = v29;
  v60 = v31;
  v61 = 0;
  v62 = 257;
  v64 = v46;
  v63 = v45;
  v65 = sub_21E450D94;
  v66 = 0;
  v67 = sub_21E450D7C;
  v68 = v32;
  v69 = v19;
  v70 = v21;
  sub_21E45073C(a1, v43);

  sub_21E424848(&v47, v43, &qword_27CEC58E8);
  return sub_21E424BC0(&v54, &qword_27CEC58E8);
}

uint64_t sub_21E44E860@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_0Tm(a1, a1[3]);
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_21E4DCA78();
  v7 = sub_21E4DC5B8();
  result = sub_21E4DBE28();
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_21E44E964(__int128 *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC53F0);
  v2 = *(type metadata accessor for SiriSharedUIAutoscrollTextView.IdentifiableView() - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_21E4E6FA0;
  v6 = (v5 + v4);
  v14 = *(a1 + 16);
  v7 = v14;
  v8 = MEMORY[0x277CE11C8];
  v9 = MEMORY[0x277CE11C0];
  v6[3] = MEMORY[0x277CE11C8];
  v6[4] = v9;
  *v6 = v7;
  sub_21E450864(&v14, &v13);
  swift_retain_n();
  sub_21E4DB688();
  v10 = (v6 + v3);
  v10[3] = v8;
  v10[4] = v9;
  *v10 = v14;
  sub_21E4DB688();
  v11 = (v6 + 2 * v3);
  v11[3] = v8;
  v11[4] = v9;
  *v11 = v14;
  sub_21E4DB688();
  v13 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5880);
  return sub_21E4DCA18();
}

uint64_t sub_21E44EAF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
  sub_21E4DCA18();
  return sub_21E44EB5C();
}

uint64_t sub_21E44EB5C()
{
  v29 = sub_21E4DCBF8();
  v1 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21E4DCC18();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_21E4DCC38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - v11;
  v39 = *(v0 + 112);
  v32 = *(v0 + 112);
  v40 = *(&v39 + 1);
  sub_21E424848(&v40, aBlock, &qword_27CEC51D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC4E18);
  sub_21E4DCA08();
  if (LOBYTE(aBlock[0]))
  {
    return sub_21E424BC0(&v39, &qword_27CEC4E18);
  }

  v28 = v1;
  v13 = *(v0 + 96);
  v32 = *(v0 + 80);
  v33 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
  sub_21E4DCA08();
  if (v35)
  {
    return sub_21E424BC0(&v39, &qword_27CEC4E18);
  }

  v14 = aBlock[0];
  v15 = *(v0 + 64);
  v32 = *(v0 + 48);
  v33 = v15;
  sub_21E4DCA08();
  if ((v35 & 1) != 0 || aBlock[0] >= v14 - *(v0 + 144) + -2.0)
  {
    return sub_21E424BC0(&v39, &qword_27CEC4E18);
  }

  v32 = v39;
  LOBYTE(aBlock[0]) = 1;
  sub_21E4DCA18();
  sub_21E424BC0(&v39, &qword_27CEC4E18);
  sub_21E42E2C0();
  v26 = sub_21E4DD278();
  sub_21E4DCC28();
  sub_21E4DCC88();
  v27 = *(v7 + 8);
  v27(v10, v6);
  v16 = swift_allocObject();
  v17 = *(v0 + 112);
  v16[7] = *(v0 + 96);
  v16[8] = v17;
  v18 = *(v0 + 144);
  v16[9] = *(v0 + 128);
  v16[10] = v18;
  v19 = *(v0 + 48);
  v16[3] = *(v0 + 32);
  v16[4] = v19;
  v20 = *(v0 + 80);
  v16[5] = *(v0 + 64);
  v16[6] = v20;
  v21 = *(v0 + 16);
  v16[1] = *v0;
  v16[2] = v21;
  v37 = sub_21E450914;
  v38 = v16;
  *&aBlock[0] = MEMORY[0x277D85DD0];
  *&aBlock[1] = 1107296256;
  v35 = sub_21E46C644;
  v36 = &block_descriptor_3;
  v22 = _Block_copy(aBlock);
  sub_21E45073C(v0, &v32);

  sub_21E4DCC08();
  *&v32 = MEMORY[0x277D84F90];
  sub_21E450CBC(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42D5A8(&qword_280C141F0, &unk_27CEC6660);
  v23 = v29;
  sub_21E4DD358();
  v24 = v26;
  MEMORY[0x223D5AF00](v12, v5, v3, v22);
  _Block_release(v22);

  (*(v28 + 8))(v3, v23);
  (*(v30 + 8))(v5, v31);
  return (v27)(v12, v6);
}

uint64_t sub_21E44F0D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC6280);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_21E4E57E0;
  type metadata accessor for CGSize(0);
  *(v3 + 56) = v4;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;
  sub_21E4DD5A8();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
  sub_21E4DCA18();
  return sub_21E44EB5C();
}

void sub_21E44F1A4(uint64_t a1)
{
  sub_21E44F34C();
  v2 = objc_opt_self();
  v3 = *(a1 + 136) + 2.0;
  v4 = swift_allocObject();
  v5 = *(a1 + 112);
  v4[7] = *(a1 + 96);
  v4[8] = v5;
  v6 = *(a1 + 144);
  v4[9] = *(a1 + 128);
  v4[10] = v6;
  v7 = *(a1 + 48);
  v4[3] = *(a1 + 32);
  v4[4] = v7;
  v8 = *(a1 + 80);
  v4[5] = *(a1 + 64);
  v4[6] = v8;
  v9 = *(a1 + 16);
  v4[1] = *a1;
  v4[2] = v9;
  aBlock[4] = sub_21E450934;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21E4263C4;
  aBlock[3] = &block_descriptor_21;
  v10 = _Block_copy(aBlock);
  sub_21E45073C(a1, &v13);

  v11 = [v2 scheduledTimerWithTimeInterval:1 repeats:v10 block:v3];
  _Block_release(v10);
  v12 = [objc_opt_self() currentRunLoop];
  [v12 addTimer:v11 forMode:*MEMORY[0x277CBE738]];

  [v11 setTolerance_];
}

uint64_t sub_21E44F34C()
{
  v1 = v0;
  v2 = sub_21E4DCBF8();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x28223BE20](v2);
  v54 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_21E4DCC18();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_21E4DCC38();
  v51 = *(v58 - 8);
  v5 = MEMORY[0x28223BE20](v58);
  v48 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v49 = v46 - v8;
  MEMORY[0x28223BE20](v7);
  v50 = v46 - v9;
  v10 = type metadata accessor for SiriSharedUIAutoscrollTextView.IdentifiableView();
  v11 = *(v10 - 8);
  v46[1] = v10;
  v47 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = (v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v0 + 152);
  v59[0] = *(v0 + 16);
  *&aBlock = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
  sub_21E4DCA18();
  v16 = *v0;
  v15 = *(v0 + 8);
  v69 = v15;
  v70[0] = v16;
  *&v59[0] = v16;
  *(&v59[0] + 1) = v15;
  sub_21E424848(v70, &aBlock, &qword_27CEC57E8);
  sub_21E424848(&v69, &aBlock, &qword_27CEC5878);
  sub_21E424848(v70, &aBlock, &qword_27CEC57E8);
  sub_21E424848(&v69, &aBlock, &qword_27CEC5878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5880);
  sub_21E4DCA08();
  v17 = *(aBlock + 16);

  if (v17 < 4)
  {
    sub_21E424BC0(v70, &qword_27CEC57E8);
    sub_21E424BC0(&v69, &qword_27CEC5878);
  }

  else
  {
    v18 = *(v1 + 96);
    v59[0] = *(v1 + 80);
    v59[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
    sub_21E4DCA08();
    if (v61)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = *&aBlock;
    }

    v67 = *(v1 + 32);
    v59[0] = *(v1 + 32);
    v68 = *(&v67 + 1);
    sub_21E424848(&v68, &aBlock, &qword_27CEC5888);
    sub_21E4DCA08();
    aBlock = v67;
    v65 = v19 + v66;
    sub_21E4DCA18();
    sub_21E424BC0(&v67, &qword_27CEC54D0);
    *&v59[0] = v16;
    *(&v59[0] + 1) = v15;
    result = sub_21E4DCA08();
    v21 = v66;
    v22 = *(*&v66 + 16);
    if (!v22)
    {
      __break(1u);
      return result;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v21;
    if (!isUniquelyReferenced_nonNull_native || (v22 - 1) > *(*&v21 + 24) >> 1)
    {
      v21 = COERCE_DOUBLE(sub_21E4435E8(isUniquelyReferenced_nonNull_native, v22, 1, *&v21));
      v66 = v21;
    }

    sub_21E4D1438(0, 1, 0);
    *&aBlock = v16;
    *(&aBlock + 1) = v15;
    v65 = v21;
    sub_21E4DCA18();
    sub_21E424BC0(v70, &qword_27CEC57E8);
    sub_21E424BC0(&v69, &qword_27CEC5878);
  }

  v24 = *(v1 + 128);
  v25 = MEMORY[0x277CE11C0];
  v13[3] = MEMORY[0x277CE11C8];
  v13[4] = v25;
  *v13 = v24;

  sub_21E4DB688();
  *&v59[0] = v16;
  *(&v59[0] + 1) = v15;
  sub_21E4DCA08();
  v26 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = COERCE_DOUBLE(sub_21E4435E8(0, *(*&v26 + 16) + 1, 1, *&v26));
  }

  v28 = *(*&v26 + 16);
  v27 = *(*&v26 + 24);
  if (v28 >= v27 >> 1)
  {
    v26 = COERCE_DOUBLE(sub_21E4435E8(v27 > 1, v28 + 1, 1, *&v26));
  }

  *(*&v26 + 16) = v28 + 1;
  sub_21E450958(v13, *&v26 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v28);
  *&aBlock = v16;
  *(&aBlock + 1) = v15;
  v65 = v26;
  sub_21E4DCA18();
  sub_21E424BC0(v70, &qword_27CEC57E8);
  sub_21E424BC0(&v69, &qword_27CEC5878);
  v29 = sub_21E4DCB38();
  MEMORY[0x28223BE20](v29);
  v46[-2] = v1;
  sub_21E4DBF78();

  sub_21E42E2C0();
  v47 = sub_21E4DD278();
  v30 = v48;
  sub_21E4DCC28();
  v31 = v49;
  sub_21E4DCC88();
  v32 = *(v51 + 1);
  v33 = v58;
  v32(v30, v58);
  v51 = v32;
  v34 = v50;
  sub_21E4DCC98();
  v32(v31, v33);
  v35 = swift_allocObject();
  v36 = *(v1 + 112);
  v35[7] = *(v1 + 96);
  v35[8] = v36;
  v37 = *(v1 + 144);
  v35[9] = *(v1 + 128);
  v35[10] = v37;
  v38 = *(v1 + 48);
  v35[3] = *(v1 + 32);
  v35[4] = v38;
  v39 = *(v1 + 80);
  v35[5] = *(v1 + 64);
  v35[6] = v39;
  v40 = *(v1 + 16);
  v35[1] = *v1;
  v35[2] = v40;
  v63 = sub_21E4509D8;
  v64 = v35;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v61 = sub_21E46C644;
  v62 = &block_descriptor_27;
  v41 = _Block_copy(&aBlock);
  sub_21E45073C(v1, v59);

  v42 = v52;
  sub_21E4DCC08();
  *&v59[0] = MEMORY[0x277D84F90];
  sub_21E450CBC(&qword_280C14250, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CEC6660);
  sub_21E42D5A8(&qword_280C141F0, &unk_27CEC6660);
  v43 = v54;
  v44 = v57;
  sub_21E4DD358();
  v45 = v47;
  MEMORY[0x223D5AF00](v34, v42, v43, v41);
  _Block_release(v41);

  (*(v56 + 8))(v43, v44);
  (*(v53 + 8))(v42, v55);
  return v51(v34, v58);
}

uint64_t sub_21E44FC50(_OWORD *a1)
{
  v2 = a1[6];
  v5[0] = a1[5];
  v5[1] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5830);
  sub_21E4DCA08();
  v5[0] = a1[2];
  v4[2] = a1[2];
  v6 = *(&v5[0] + 1);
  sub_21E424848(&v6, v4, &qword_27CEC5888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC54D0);
  sub_21E4DCA08();
  v4[0] = v5[0];
  sub_21E4DCA18();
  return sub_21E424BC0(v5, &qword_27CEC54D0);
}

uint64_t sub_21E44FD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_21E4DB698();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_21E44FDDC()
{
  sub_21E4DD5C8();
  sub_21E4DB698();
  sub_21E450CBC(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  return sub_21E4DD608();
}

uint64_t sub_21E44FE78()
{
  sub_21E4DB698();
  sub_21E450CBC(&qword_280C15B50, MEMORY[0x277CC95F0]);
  return sub_21E4DCEC8();
}

uint64_t sub_21E44FEF8()
{
  sub_21E4DD5C8();
  sub_21E4DB698();
  sub_21E450CBC(&qword_280C15B50, MEMORY[0x277CC95F0]);
  sub_21E4DCEC8();
  return sub_21E4DD608();
}

uint64_t sub_21E44FFF4(CGFloat a1, CGFloat a2)
{
  v4 = sub_21E4DC008();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5870);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_21E4E6FB0;
  sub_21E4DC8C8();
  *(v8 + 32) = sub_21E4DCAC8();
  *(v8 + 40) = v9;
  sub_21E4DC8D8();
  *(v8 + 48) = sub_21E4DCAC8();
  *(v8 + 56) = v10;
  sub_21E4DC8D8();
  *(v8 + 64) = sub_21E4DCAC8();
  *(v8 + 72) = v11;
  sub_21E4DC8C8();
  *(v8 + 80) = sub_21E4DCAC8();
  *(v8 + 88) = v12;
  sub_21E4DCAD8();
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a1;
  v16.size.height = a2;
  CGRectGetMinX(v16);
  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = a1;
  v17.size.height = a2;
  CGRectGetMinY(v17);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = a1;
  v18.size.height = a2;
  CGRectGetHeight(v18);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = a1;
  v19.size.height = a2;
  CGRectGetMaxX(v19);
  v20.origin.x = 0.0;
  v20.origin.y = 0.0;
  v20.size.width = a1;
  v20.size.height = a2;
  CGRectGetMaxY(v20);
  v21.origin.x = 0.0;
  v21.origin.y = 0.0;
  v21.size.width = a1;
  v21.size.height = a2;
  CGRectGetHeight(v21);
  sub_21E4DBFF8();

  sub_21E4DC638();
  sub_21E4DBFE8();
  sub_21E4508C0(v15);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_21E450274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57E8);
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC57F0);
  sub_21E4DC9F8();
  sub_21E4DC9F8();
  result = sub_21E4DC9F8();
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  *(a2 + 48) = v9;
  *(a2 + 56) = v10;
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  *(a2 + 80) = v9;
  *(a2 + 88) = v10;
  *(a2 + 96) = v11;
  *(a2 + 104) = v12;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  *(a2 + 128) = a1;
  *(a2 + 136) = a3;
  *(a2 + 144) = a4;
  *(a2 + 152) = 0x3F9EB851EB851EB8;
  return result;
}

uint64_t type metadata accessor for SiriSharedUIAutoscrollTextView.IdentifiableView()
{
  result = qword_27CEC57F8;
  if (!qword_27CEC57F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_21E4504AC()
{
  result = sub_21E450530();
  if (v1 <= 0x3F)
  {
    result = sub_21E4DB698();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_21E450530()
{
  result = qword_27CEC5808;
  if (!qword_27CEC5808)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CEC5808);
  }

  return result;
}

__n128 __swift_memcpy160_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_21E4505C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
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

uint64_t sub_21E450608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21E450780()
{
  result = qword_27CEC5840;
  if (!qword_27CEC5840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5838);
    sub_21E42D5A8(&qword_27CEC5848, &qword_27CEC5850);
    sub_21E42D5A8(&qword_27CEC5858, &qword_27CEC5860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5840);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_21E450958(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SiriSharedUIAutoscrollTextView.IdentifiableView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21E450A34()
{
  result = qword_27CEC58A8;
  if (!qword_27CEC58A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC58A0);
    sub_21E450AEC();
    sub_21E42D5A8(&qword_27CEC58E0, &qword_27CEC58E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC58A8);
  }

  return result;
}

unint64_t sub_21E450AEC()
{
  result = qword_27CEC58B0;
  if (!qword_27CEC58B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC58B8);
    sub_21E450B78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC58B0);
  }

  return result;
}

unint64_t sub_21E450B78()
{
  result = qword_27CEC58C0;
  if (!qword_27CEC58C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC58C8);
    sub_21E42D5A8(&qword_27CEC58D0, &qword_27CEC58D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC58C0);
  }

  return result;
}

unint64_t sub_21E450C38()
{
  result = qword_27CEC5910;
  if (!qword_27CEC5910)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CEC5900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CEC5910);
  }

  return result;
}

uint64_t sub_21E450CBC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroyTm_2()
{

  return MEMORY[0x2821FE8E8](v0, 176, 7);
}

uint64_t sub_21E450DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5930);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v23 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  v10 = 1;
  if (v26 == 1)
  {
    *v9 = sub_21E4DC278();
    *(v9 + 1) = 0;
    v9[16] = 1;
    v23[2] = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5938) + 44);
    v11 = sub_21E457F8C();
    v12 = sub_21E451328(v11);

    v25 = v12;
    v23[1] = swift_getKeyPath();
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_21E451518;
    *(v14 + 24) = v13;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5940);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5948);
    v24 = a3;
    sub_21E42D5A8(&qword_27CEC5950, &qword_27CEC5940);
    sub_21E451588();
    sub_21E4516A4(&qword_27CEC5960, &qword_27CEC5948, &unk_21E4E7320, sub_21E4515E0);
    sub_21E4DCA98();
    sub_21E4DBF28();
    sub_21E4DBF38();
    v15 = sub_21E4DBF48();

    *&v9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5970) + 36)] = v15;
    v16 = sub_21E4DC598();
    sub_21E4DBE28();
    v17 = &v9[*(v6 + 36)];
    *v17 = v16;
    a3 = v24;
    *(v17 + 1) = v18;
    *(v17 + 2) = v19;
    *(v17 + 3) = v20;
    *(v17 + 4) = v21;
    v17[40] = 0;
    sub_21E451634(v9, a3);
    v10 = 0;
  }

  return (*(v7 + 56))(a3, v10, 1, v6);
}

void sub_21E451124(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = 0uLL;
  if (*(a1 + 16))
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 24) == 0xE000000000000000;
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
  }

  else if (sub_21E4DD518())
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v3 = 0uLL;
  }

  else
  {

    sub_21E480D24(v10);
    v3 = v10[0];
    v6 = v10[1];
    v7 = v10[2];
    v8 = v10[3];
    v9 = v10[4];
    v5 = v11;
  }

  *a2 = v3;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = v8;
  *(a2 + 64) = v9;
  *(a2 + 80) = v5;
}

uint64_t sub_21E451234@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_21E4DBDE8();

  *a1 = v3;
  return result;
}

uint64_t sub_21E4512B4()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_21E4DBDF8();
}

unint64_t sub_21E451328(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    v5 = 0;
    v6 = v1 & 0xC000000000000001;
    v7 = (MEMORY[0x277D84F90] + 32);
    v8 = v1 & 0xFFFFFFFFFFFFFF8;
    v27 = v1 & 0xC000000000000001;
    v28 = v1;
    v26 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v6)
      {
        result = MEMORY[0x223D5B080](v4, v1);
        v9 = result;
        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_26:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *(v8 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_21E4DD488();
          v2 = result;
          goto LABEL_3;
        }

        v9 = *(v1 + 8 * v4 + 32);

        v10 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_26;
        }
      }

      if (!v5)
      {
        v11 = v3[3];
        if (((v11 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_34;
        }

        v12 = v2;
        v13 = v11 & 0xFFFFFFFFFFFFFFFELL;
        if (v13 <= 1)
        {
          v14 = 1;
        }

        else
        {
          v14 = v13;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CEC5978);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v18 = v17 >> 4;
        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v19 = (v15 + 4);
        v20 = v3[3] >> 1;
        if (v3[2])
        {
          v21 = v3 + 4;
          if (v15 != v3 || v19 >= v21 + 16 * v20)
          {
            memmove(v15 + 4, v21, 16 * v20);
          }

          v3[2] = 0;
        }

        v7 = (v19 + 16 * v20);
        v5 = (v18 & 0x7FFFFFFFFFFFFFFFLL) - v20;

        v3 = v15;
        v2 = v12;
        v6 = v27;
        v1 = v28;
        v8 = v26;
      }

      v22 = __OFSUB__(v5--, 1);
      if (v22)
      {
        goto LABEL_33;
      }

      *v7 = v4;
      v7[1] = v9;
      v7 += 2;
      ++v4;
      if (v10 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  v5 = 0;
LABEL_28:
  v23 = v3[3];
  if (v23 < 2)
  {
    return v3;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v3[2] = v25;
    return v3;
  }

  __break(1u);
  return result;
}