uint64_t sub_22F282C30()
{
  v2 = *v1;
  v3 = *(*v1 + 520);
  v4 = *v1;
  *(*v1 + 528) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_22F283CD4;
  }

  else
  {
    v6 = sub_22F282D5C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F282D5C()
{
  if (*(*(v0 + 416) + 136) == 1)
  {
    v1 = *(v0 + 504);
    v2 = *(v0 + 488);
    v3 = *(v0 + 496);
    v5 = *(v0 + 472);
    v4 = *(v0 + 480);
    v6 = *(v0 + 464);

    sub_22F20AD9C(v6, v5, v4, v2);
    sub_22F20AD9C(v6, v5, v4, v2);
    v7 = *(v0 + 440);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 536) = v10;
    *v10 = v0;
    v10[1] = sub_22F282E9C;
    v11 = *(v0 + 512);
    v12 = *(v0 + 408);
    v13 = *(v0 + 416);

    return sub_22F284884(v11, v12);
  }
}

uint64_t sub_22F282E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 536);
  v4 = *v1;
  *(*v1 + 544) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_22F283F7C;
  }

  else
  {
    v6 = sub_22F282FC8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F282FC8()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 496);
  v5 = *(v0 + 472);
  v4 = *(v0 + 480);
  v6 = *(v0 + 464);
  v7 = *(v0 + 416);

  sub_22F20AD9C(v6, v5, v4, v2);
  if (*(v7 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
    v8 = *(v0 + 440);

    v9 = *(v0 + 8);
LABEL_5:

    return v9();
  }

  v10 = *(v0 + 544);
  v11 = *(*(v0 + 416) + 152);
  v12 = sub_22F73F350();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v11;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v15 = sub_22F73F330();
  *(v0 + 600) = v15;
  *(v0 + 608) = v16;
  if (v10)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v17 = *(v0 + 440);

    v9 = *(v0 + 8);
    goto LABEL_5;
  }

  v19 = *(v0 + 408);
  v20 = *(v0 + 416);
  v21 = v15;
  v22 = v16;

  v24 = *(v20 + 112);
  v23 = *(v20 + 120);
  *(v0 + 616) = v23;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v20;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v25 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v25;
  *(v0 + 32) = v21;
  *(v0 + 40) = v22;
  *(v0 + 48) = v24;
  *(v0 + 56) = v23;
  sub_22F15C3C4(v21, v22);

  sub_22F15C3C4(v21, v22);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v19, 0);
}

uint64_t sub_22F2831E0()
{
  v2 = *v1;
  v3 = *(*v1 + 552);
  v4 = *v1;
  *(*v1 + 560) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_22F284224;
  }

  else
  {
    v6 = sub_22F28330C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F28330C()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);
  v6 = *(v0 + 416);

  sub_22F20AD9C(v5, v4, v2, v3);
  if (*(v6 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
    v7 = *(v0 + 440);

    v8 = *(v0 + 8);
LABEL_5:

    return v8();
  }

  v9 = *(v0 + 560);
  v10 = *(*(v0 + 416) + 152);
  v11 = sub_22F73F350();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v10;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v14 = sub_22F73F330();
  *(v0 + 600) = v14;
  *(v0 + 608) = v15;
  if (v9)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v16 = *(v0 + 440);

    v8 = *(v0 + 8);
    goto LABEL_5;
  }

  v18 = *(v0 + 408);
  v19 = *(v0 + 416);
  v20 = v14;
  v21 = v15;

  v23 = *(v19 + 112);
  v22 = *(v19 + 120);
  *(v0 + 616) = v22;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v19;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v24 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v24;
  *(v0 + 32) = v20;
  *(v0 + 40) = v21;
  *(v0 + 48) = v23;
  *(v0 + 56) = v22;
  sub_22F15C3C4(v20, v21);

  sub_22F15C3C4(v20, v21);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v18, 0);
}

uint64_t sub_22F28351C()
{
  v2 = *v1;
  v3 = *(*v1 + 568);
  v4 = *v1;
  *(*v1 + 576) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_22F283740;
  }

  else
  {
    v6 = sub_22F283648;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F283648()
{
  if (*(v0[52] + 136))
  {
    sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
    v1 = v0[55];

    v2 = v0[1];

    return v2();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v0 + 24);
    v4 = swift_task_alloc();
    v0[73] = v4;
    *v4 = v0;
    v4[1] = sub_22F2837B8;
    v5 = v0[51];
    v6 = v0[52];

    return sub_22F28691C(v5);
  }
}

uint64_t sub_22F283740()
{
  sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v1 = v0[72];
  v2 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22F2837B8()
{
  v2 = *v1;
  v3 = *(*v1 + 584);
  v4 = *v1;
  *(*v1 + 592) = v0;

  v5 = *(v2 + 416);
  if (v0)
  {
    v6 = sub_22F2842D4;
  }

  else
  {
    v6 = sub_22F2838E4;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F2838E4()
{
  v1 = *(v0 + 416);
  if (*(v1 + 136))
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));
    v2 = *(v0 + 440);

    v3 = *(v0 + 8);
LABEL_5:

    return v3();
  }

  v4 = *(v0 + 592);
  v5 = *(v1 + 152);
  v6 = sub_22F73F350();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 368) = v5;
  *(v0 + 376) = 0;
  sub_22F288AD0();
  v9 = sub_22F73F330();
  *(v0 + 600) = v9;
  *(v0 + 608) = v10;
  if (v4)
  {
    sub_22F20AD9C(*(v0 + 464), *(v0 + 472), *(v0 + 480), *(v0 + 488));

    v11 = *(v0 + 440);

    v3 = *(v0 + 8);
    goto LABEL_5;
  }

  v13 = *(v0 + 408);
  v14 = *(v0 + 416);
  v15 = v9;
  v16 = v10;

  v18 = *(v14 + 112);
  v17 = *(v14 + 120);
  *(v0 + 616) = v17;
  *(v0 + 296) = type metadata accessor for PhotoKitInputStream();
  *(v0 + 304) = &off_2843E9240;
  *(v0 + 272) = v14;
  sub_22F15C30C(v0 + 272, v0 + 64);
  v19 = MEMORY[0x277D84F90];
  *(v0 + 16) = MEMORY[0x277D84F90];
  *(v0 + 24) = v19;
  *(v0 + 32) = v15;
  *(v0 + 40) = v16;
  *(v0 + 48) = v18;
  *(v0 + 56) = v17;
  sub_22F15C3C4(v15, v16);

  sub_22F15C3C4(v15, v16);

  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  return MEMORY[0x2822009F8](sub_22F283AC8, v13, 0);
}

uint64_t sub_22F283AC8()
{
  v1 = *(v0 + 408);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 416);
  *(v2 + 2) = v5 + 1;
  v7 = &v2[88 * v5];
  v8 = *(v0 + 120);
  *(v7 + 2) = *(v0 + 104);
  *(v7 + 3) = v8;
  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168);
  *(v7 + 14) = *(v0 + 184);
  *(v7 + 5) = v10;
  *(v7 + 6) = v11;
  *(v7 + 4) = v9;
  *(v1 + 112) = v2;
  swift_endAccess();
  sub_22F20AC78(v0 + 16);

  return MEMORY[0x2822009F8](sub_22F283C10, v6, 0);
}

uint64_t sub_22F283C10()
{
  v1 = v0[77];
  v2 = v0[76];
  v3 = v0[75];
  v5 = v0[60];
  v4 = v0[61];
  v7 = v0[58];
  v6 = v0[59];
  sub_22F133BF0(v3, v2);

  sub_22F133BF0(v3, v2);
  sub_22F20AD9C(v7, v6, v5, v4);
  v8 = v0[55];

  v9 = v0[1];

  return v9();
}

uint64_t sub_22F283CD4()
{
  v1 = *(v0 + 528);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  v3 = swift_dynamicCast();
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  if (v3 && *(v0 + 377) == 1)
  {

    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      v10 = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v11 = swift_task_alloc();
      *(v0 + 568) = v11;
      *v11 = v0;
      v11[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    else
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v15 = swift_task_alloc();
      *(v0 + 584) = v15;
      *v15 = v0;
      v15[1] = sub_22F2837B8;
      v16 = *(v0 + 408);
      v17 = *(v0 + 416);

      return sub_22F28691C(v16);
    }
  }

  else
  {

    swift_willThrow();
    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F20AD9C(v9, v8, v7, v6);
    v13 = *(v0 + 440);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22F283F7C()
{
  v1 = *(v0 + 544);
  *(v0 + 400) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
  v3 = swift_dynamicCast();
  v5 = *(v0 + 496);
  v4 = *(v0 + 504);
  v7 = *(v0 + 480);
  v6 = *(v0 + 488);
  v9 = *(v0 + 464);
  v8 = *(v0 + 472);
  if (v3 && *(v0 + 377) == 1)
  {

    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F13BA9C(*(v0 + 416) + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (*(v0 + 256))
    {
      sub_22F100260((v0 + 232), v0 + 192);
      v10 = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
      v11 = swift_task_alloc();
      *(v0 + 568) = v11;
      *v11 = v0;
      v11[1] = sub_22F28351C;

      return sub_22F20A1B8(&unk_2843DACD8);
    }

    else
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v15 = swift_task_alloc();
      *(v0 + 584) = v15;
      *v15 = v0;
      v15[1] = sub_22F2837B8;
      v16 = *(v0 + 408);
      v17 = *(v0 + 416);

      return sub_22F28691C(v16);
    }
  }

  else
  {

    swift_willThrow();
    sub_22F20AD9C(v9, v8, v7, v6);
    sub_22F20AD9C(v9, v8, v7, v6);
    v13 = *(v0 + 440);

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_22F284224()
{
  v1 = *(v0 + 496);
  v2 = *(v0 + 480);
  v3 = *(v0 + 488);
  v5 = *(v0 + 464);
  v4 = *(v0 + 472);

  sub_22F20AD9C(v5, v4, v2, v3);
  sub_22F20AD9C(v5, v4, v2, v3);
  v6 = *(v0 + 560);
  v7 = *(v0 + 440);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_22F2842D4()
{
  sub_22F20AD9C(v0[58], v0[59], v0[60], v0[61]);
  v1 = v0[74];
  v2 = v0[55];

  v3 = v0[1];

  return v3();
}

uint64_t sub_22F284344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    if (*(v4 + 112) == a3 && *(v4 + 120) == a4)
    {
      return 1;
    }

    else
    {
      v6 = *(v4 + 112);
      v7 = *(v4 + 120);

      return sub_22F742040();
    }
  }

  else
  {
    if (qword_2810A93F0 != -1)
    {
      swift_once();
    }

    v9 = sub_22F740B90();
    __swift_project_value_buffer(v9, qword_2810B4CB0);
    v10 = sub_22F740B70();
    v11 = sub_22F7415C0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22F0FC000, v10, v11, "[IncrementalRebuild] No token persisted yet", v12, 2u);
      MEMORY[0x2319033A0](v12, -1, -1);
    }

    return 0;
  }
}

id sub_22F284470(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [objc_allocWithZone(MEMORY[0x277CD9928]) init];
  [v3 setToken_];
  v4 = *(v1 + 144);
  v10[0] = 0;
  v5 = [v4 fetchPersistentChangesWithRequest:v3 error:v10];
  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_22F73F370();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_22F284568(void *a1)
{
  v2 = v1;
  v15 = MEMORY[0x277D84F90];
  v14 = 1;
  v4 = swift_allocObject();
  v4[2] = &v14;
  v4[3] = &v15;
  v4[4] = v2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22F288CA4;
  *(v5 + 24) = v4;
  v13[4] = sub_22F1F68E8;
  v13[5] = v5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_22F107E24;
  v13[3] = &block_descriptor_16;
  v6 = _Block_copy(v13);

  [a1 enumeratePHChangesWithBlock_];
  _Block_release(v6);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if ((a1 & 1) == 0)
  {
    if (v14 == 1)
    {
      v8 = objc_opt_self();
      sub_22F120634(0, &qword_27DAB2DA8, 0x277CD9830);

      v9 = sub_22F741160();

      v10 = [v8 mergePersistedChanges_];

      if (v10)
      {

        return v10;
      }

      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    sub_22F2886A4();
    swift_allocError();
    *v12 = v11;
    swift_willThrow();
    v10 = v15;

    return v10;
  }

  __break(1u);
  return result;
}

uint64_t sub_22F2847CC(void *a1, _BYTE *a2, _BYTE *a3, void *a4, uint64_t a5)
{
  result = [a1 hasIncrementalChanges];
  if ((result & 1) == 0)
  {
    *a3 = 0;
LABEL_7:
    *a2 = 1;
    return result;
  }

  v11 = a1;
  MEMORY[0x231900D00]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v12 = *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22F7411C0();
  }

  result = sub_22F741220();
  if (*(a5 + 136) == 1)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F284884(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[35] = a2;
  v3[36] = v2;
  v3[34] = a1;
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22F284918, v2, 0);
}

uint64_t sub_22F284918()
{
  v167 = v0;
  v166[1] = *MEMORY[0x277D85DE8];
  v2 = [*(v0 + 272) changeToken];
  *(v0 + 296) = v2;
  if (!v2)
  {
    sub_22F2886A4();
    swift_allocError();
    *v123 = 3;
    swift_willThrow();
LABEL_102:
    v128 = *(v0 + 8);
    v136 = *MEMORY[0x277D85DE8];
    goto LABEL_103;
  }

  v147 = v2;
  v3 = MEMORY[0x277D84F90];
  v4 = *(v0 + 288);
  *(v0 + 256) = MEMORY[0x277D84F90];
  *(v0 + 264) = v3;
  v5 = [*(v4 + 144) managedObjectContext];
  *(v0 + 304) = v5;
  v149 = v5;
  if (!v5)
  {
    sub_22F2886A4();
    swift_allocError();
    *v124 = 5;
    swift_willThrow();

    goto LABEL_102;
  }

  v7 = 0;
  v163 = (v0 + 16);
  v154 = *(v0 + 288);
  *&v6 = 136315394;
  v148 = v6;
  v160 = v0;
  do
  {
    v8 = *(&unk_2843DACB0 + v7 + 32);
    v156 = v7;
    if (v8 == 1)
    {
      v9 = &qword_2810A8EA0;
      v10 = 0x277CD9938;
      goto LABEL_8;
    }

    if (v8 != 2)
    {
      sub_22F2886A4();
      swift_allocError();
      *v133 = 4;
      swift_willThrow();

      v134 = *(v0 + 256);

      v135 = *(v0 + 264);

      goto LABEL_102;
    }

    v9 = &qword_2810A8EE0;
    v10 = 0x277CD97A8;
LABEL_8:
    v11 = sub_22F120634(0, v9, v10);
    v12 = *(v0 + 272);
    v152 = v11;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v14 = [v12 insertedObjectIDs];
    v15 = sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
    sub_22F288C08();
    sub_22F741420();

    v16 = sub_22F741410();

    v17 = v149;
    v161 = ObjCClassFromMetadata;
    v153 = v17;
    v18 = [ObjCClassFromMetadata objectIDsMatchingEntityFromObjectIDs:v16 context:?];

    if (!v18)
    {
      __break(1u);
LABEL_113:
      __break(1u);
    }

    v19 = sub_22F741420();

    if ((v19 & 0xC000000000000001) != 0)
    {
      v20 = sub_22F741A00();
    }

    else
    {
      v20 = *(v19 + 16);
    }

    v162 = v8;
    v155 = v15;
    if (v20 >= 1)
    {
      v21 = *(v0 + 288);
      v22 = sub_22F10AC68(v19);
      sub_22F285D7C(v8, v22);
      v1 = 0;
      v24 = v23;

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v25 = sub_22F740B90();
      __swift_project_value_buffer(v25, qword_2810B4CB0);
      swift_bridgeObjectRetain_n();
      v26 = sub_22F740B70();
      v27 = sub_22F7415C0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v166[0] = v164;
        *v28 = v148;
        *v163 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v29 = sub_22F740E90();
        v31 = sub_22F145F20(v29, v30, v166);
        v8 = v162;

        *(v28 + 4) = v31;
        *(v28 + 12) = 2048;
        v32 = *(v24 + 16);

        *(v28 + 14) = v32;
        v1 = 0;
        v0 = v160;

        _os_log_impl(&dword_22F0FC000, v26, v27, "[IncrementalRebuild] Number of Entity Change Upserts from PhotoKit Insertions for %s = %ld", v28, 0x16u);
        v33 = v164;
        __swift_destroy_boxed_opaque_existential_0(v164);
        MEMORY[0x2319033A0](v33, -1, -1);
        MEMORY[0x2319033A0](v28, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_22F14507C(v24);
    }

    if (*(v154 + 136))
    {
      v125 = v153;

      goto LABEL_96;
    }

    v34 = [*(v0 + 272) updatedObjectIDs];
    sub_22F741420();

    v35 = sub_22F741410();

    v36 = v153;
    v37 = [v161 objectIDsMatchingEntityFromObjectIDs:v35 context:v153];

    if (!v37)
    {
      goto LABEL_113;
    }

    v38 = sub_22F741420();

    v41 = &unk_2843DAC70;
    if (v8 == 1)
    {
      v41 = &unk_2843DAC20;
    }

    v159 = v41;
    v165 = MEMORY[0x277D84F90];
    if ((v38 & 0xC000000000000001) != 0)
    {
      sub_22F7419C0();
      isUniquelyReferenced_nonNull_native = sub_22F741470();
      v38 = *(v0 + 192);
      v42 = *(v0 + 200);
      v43 = *(v0 + 208);
      v44 = *(v0 + 216);
      v45 = *(v0 + 224);
    }

    else
    {
      v44 = 0;
      v46 = -1 << *(v38 + 32);
      v42 = v38 + 56;
      v43 = ~v46;
      v47 = -v46;
      if (v47 < 64)
      {
        v48 = ~(-1 << v47);
      }

      else
      {
        v48 = -1;
      }

      v45 = (v48 & *(v38 + 56));
    }

    ++v156;
    v150 = v43;
    v49 = (v43 + 64) >> 6;
    v151 = MEMORY[0x277D84F90];
    v157 = v38;
    v158 = v42;
LABEL_30:
    v50 = v44;
    while ((v38 & 0x8000000000000000) == 0)
    {
      v51 = v50;
      v52 = v45;
      v44 = v50;
      if (!v45)
      {
        while (1)
        {
          v44 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v44 >= v49)
          {
            goto LABEL_52;
          }

          v52 = *(v42 + 8 * v44);
          ++v51;
          if (v52)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        v138 = isUniquelyReferenced_nonNull_native;
        v139 = v40;
        v140 = *(v0 + 280);
        v141 = *(v0 + 288);

        v143 = *(v141 + 112);
        v142 = *(v141 + 120);
        v144 = *(v0 + 264);
        *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
        *(v0 + 96) = &off_2843E9240;
        *(v0 + 56) = v142;
        *(v0 + 64) = v141;
        *(v0 + 16) = v45;
        *(v0 + 24) = v144;
        *(v0 + 32) = v138;
        *(v0 + 40) = v139;
        *(v0 + 48) = v143;

        v145 = *MEMORY[0x277D85DE8];

        return MEMORY[0x2822009F8](sub_22F285B6C, v140, 0);
      }

LABEL_37:
      v53 = ((v52 - 1) & v52);
      v54 = *(*(v38 + 48) + ((v44 << 9) | (8 * __clz(__rbit64(v52)))));
      if (!v54)
      {
        goto LABEL_52;
      }

LABEL_41:
      v164 = v53;
      v57 = [*(v0 + 272) changedPropertyNamesForObjectID:v54 entityClass:v161];
      v58 = sub_22F741420();

      v59 = v159;
      *(v0 + 16) = v159;
      v60 = v59;
      LOBYTE(v59) = *(v58 + 32);
      v61 = v59 & 0x3F;
      v62 = 1 << v59;
      isStackAllocationSafe = swift_task_alloc();
      *(isStackAllocationSafe + 16) = v163;
      *(isStackAllocationSafe + 24) = v58;
      v64 = (v62 + 63) >> 6;
      if (v61 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
      {
        MEMORY[0x28223BE20](isStackAllocationSafe);
        v66 = &v146 - ((v65 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v66, v65);
        v67 = sub_22F2881A0(v66, v64, v60, v58);
        v1 = 0;
        v68 = v67;
      }

      else
      {
        v70 = swift_slowAlloc();
        bzero(v70, 8 * v64);
        sub_22F288C70(v70, v64, v166);
        v1 = 0;
        v68 = v166[0];

        MEMORY[0x2319033A0](v70, -1, -1);
      }

      v0 = v160;
      v38 = v157;
      v69 = *(v68 + 16);

      v8 = v162;
      if (v69 || v162 == 2 && ([*(v0 + 272) trashedStateChangedForPHAssetOID_] & 1) != 0)
      {
        v71 = v54;
        MEMORY[0x231900D00]();
        if (*((v165 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v165 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v72 = *((v165 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_22F7411C0();
        }

        sub_22F741220();

        v45 = v164;
        v151 = v165;
        v42 = v158;
        goto LABEL_30;
      }

      v50 = v44;
      v45 = v164;
      v42 = v158;
    }

    v55 = sub_22F741A40();
    if (v55)
    {
      *(v0 + 104) = v55;
      v56 = v163;
      swift_dynamicCast();
      v54 = *v56;
      v44 = v50;
      v53 = v45;
      if (v54)
      {
        goto LABEL_41;
      }
    }

LABEL_52:

    sub_22F0FF590();
    v73 = v151;
    if (v151 >> 62)
    {
      if (sub_22F741A00() < 1)
      {
        goto LABEL_64;
      }

LABEL_54:
      v74 = *(v0 + 288);
      sub_22F285D7C(v8, v73);
      v1 = 0;
      v76 = v75;
      v78 = v77;

      if (qword_2810A93F0 != -1)
      {
        swift_once();
      }

      v79 = sub_22F740B90();
      v80 = __swift_project_value_buffer(v79, qword_2810B4CB0);
      swift_bridgeObjectRetain_n();
      v81 = sub_22F740B70();
      v82 = sub_22F7415C0();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v164 = v80;
        v84 = v83;
        v85 = swift_slowAlloc();
        v166[0] = v85;
        *v84 = v148;
        *v163 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v86 = sub_22F740E90();
        v88 = sub_22F145F20(v86, v87, v166);

        *(v84 + 4) = v88;
        *(v84 + 12) = 2048;
        v89 = *(v76 + 16);

        *(v84 + 14) = v89;

        _os_log_impl(&dword_22F0FC000, v81, v82, "[IncrementalRebuild] Number of Entity Change Upserts from PhotoKit Updates for %s = %ld", v84, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x2319033A0](v85, -1, -1);
        MEMORY[0x2319033A0](v84, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      swift_bridgeObjectRetain_n();
      v90 = sub_22F740B70();
      v91 = sub_22F7415C0();
      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        v166[0] = v93;
        *v92 = v148;
        *v163 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
        v94 = sub_22F740E90();
        v96 = sub_22F145F20(v94, v95, v166);

        *(v92 + 4) = v96;
        *(v92 + 12) = 2048;
        v97 = *(v78 + 16);

        *(v92 + 14) = v97;

        _os_log_impl(&dword_22F0FC000, v90, v91, "[IncrementalRebuild] Number of Entity Change Deletes from PhotoKit Updates for %s = %ld", v92, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x2319033A0](v93, -1, -1);
        MEMORY[0x2319033A0](v92, -1, -1);
      }

      else
      {
        swift_bridgeObjectRelease_n();
      }

      sub_22F14507C(v76);
      sub_22F14507C(v78);
    }

    else
    {
      if (*((v151 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
        goto LABEL_54;
      }

LABEL_64:
    }

    if ((*(v154 + 136) & 1) == 0)
    {
      v98 = [*(v0 + 272) deletedLocalIdentifiersForEntityClass_];
      v99 = sub_22F741420();

      if (v99[2])
      {
        if (qword_2810A93F0 != -1)
        {
          swift_once();
        }

        v100 = sub_22F740B90();
        __swift_project_value_buffer(v100, qword_2810B4CB0);
        swift_bridgeObjectRetain_n();
        v101 = sub_22F740B70();
        v38 = sub_22F7415C0();
        if (os_log_type_enabled(v101, v38))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          v166[0] = v103;
          *v102 = v148;
          *v163 = v152;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2DA0, &unk_22F7816C8);
          v104 = sub_22F740E90();
          v106 = sub_22F145F20(v104, v105, v166);

          *(v102 + 4) = v106;
          *(v102 + 12) = 2048;
          v107 = v99[2];

          *(v102 + 14) = v107;

          _os_log_impl(&dword_22F0FC000, v101, v38, "[IncrementalRebuild] Number of Entity Change Deletes from PhotoKit Deletes for %s = %ld", v102, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v103);
          MEMORY[0x2319033A0](v103, -1, -1);
          MEMORY[0x2319033A0](v102, -1, -1);
        }

        else
        {
          swift_bridgeObjectRelease_n();
        }

        v108 = 0;
        v45 = v99 + 7;
        v109 = -1 << *(v99 + 32);
        if (-v109 < 64)
        {
          v110 = ~(-1 << -v109);
        }

        else
        {
          v110 = -1;
        }

        v111 = v110 & v99[7];
        v112 = (63 - v109) >> 6;
        v164 = v99;
        if (v111)
        {
          while (1)
          {
            v113 = v0;
LABEL_82:
            v115 = (v99[6] + ((v108 << 10) | (16 * __clz(__rbit64(v111)))));
            v117 = *v115;
            v116 = v115[1];
            v118 = *(v113 + 264);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v119 = v1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_22F13EDE0(0, *(v118 + 16) + 1, 1, v118);
              v118 = isUniquelyReferenced_nonNull_native;
            }

            v121 = *(v118 + 16);
            v120 = *(v118 + 24);
            v38 = v121 + 1;
            if (v121 >= v120 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_22F13EDE0((v120 > 1), v121 + 1, 1, v118);
              v118 = isUniquelyReferenced_nonNull_native;
            }

            *(v118 + 16) = v38;
            v122 = v118 + 32 * v121;
            *(v122 + 32) = v162;
            v111 &= v111 - 1;
            *(v122 + 40) = v117;
            *(v122 + 48) = v116;
            *(v122 + 56) = MEMORY[0x277D84F98];
            v0 = v160;
            *(v160 + 264) = v118;
            v1 = v119;
            v99 = v164;
            if (!v111)
            {
              goto LABEL_78;
            }
          }
        }

        while (1)
        {
LABEL_78:
          v114 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            goto LABEL_107;
          }

          if (v114 >= v112)
          {
            break;
          }

          v111 = v45[v114];
          ++v108;
          if (v111)
          {
            v113 = v0;
            v108 = v114;
            goto LABEL_82;
          }
        }
      }

      else
      {
      }

      v7 = v156;
      if ((*(v154 + 136) & 1) == 0)
      {
        continue;
      }
    }

LABEL_96:
    v126 = *(v0 + 256);
    goto LABEL_97;
  }

  while (v156 != 2);
  v45 = *(v0 + 256);
  if (v45[2] || *(*(v0 + 264) + 16))
  {
    v130 = sub_22F73F350();
    v131 = *(v130 + 48);
    v132 = *(v130 + 52);
    swift_allocObject();
    v38 = v147;
    sub_22F73F340();
    *(v0 + 16) = v38;
    *(v0 + 24) = 0;
    sub_22F288AD0();
    isUniquelyReferenced_nonNull_native = sub_22F73F330();
    goto LABEL_108;
  }

LABEL_97:

  v127 = *(v0 + 264);

  v128 = *(v0 + 8);
  v129 = *MEMORY[0x277D85DE8];
LABEL_103:

  return v128();
}

uint64_t sub_22F285B6C()
{
  v14 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 280);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 288);
  *(v2 + 2) = v5 + 1;
  v7 = &v2[88 * v5];
  v8 = *(v0 + 120);
  *(v7 + 2) = *(v0 + 104);
  *(v7 + 3) = v8;
  v9 = *(v0 + 136);
  v10 = *(v0 + 152);
  v11 = *(v0 + 168);
  *(v7 + 14) = *(v0 + 184);
  *(v7 + 5) = v10;
  *(v7 + 6) = v11;
  *(v7 + 4) = v9;
  *(v1 + 112) = v2;
  swift_endAccess();
  v12 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22F285CD8, v6, 0);
}

uint64_t sub_22F285CD8()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 304);

  sub_22F20AC78(v0 + 16);
  v2 = *(v0 + 264);

  v3 = *(v0 + 8);
  v4 = *MEMORY[0x277D85DE8];

  return v3();
}

void sub_22F285D7C(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2 >> 62)
  {
    goto LABEL_65;
  }

  if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
  {
    return;
  }

LABEL_3:
  if (!a1)
  {
    sub_22F2886A4();
    swift_allocError();
    *v39 = 4;
    swift_willThrow();
    return;
  }

  if (a1 == 1)
  {
    v3 = *(v114 + 144);
    v4 = [v3 librarySpecificFetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22F771340;
    v6 = *MEMORY[0x277CD9C58];
    *(v5 + 32) = sub_22F740E20();
    *(v5 + 40) = v7;
    v8 = sub_22F741160();

    [v4 setFetchPropertySets_];

    [v4 setPersonContext_];
    v9 = objc_opt_self();
    sub_22F120634(0, &qword_2810A9100, 0x277CBE448);
    v10 = sub_22F741160();
    v11 = [v9 fetchPersonsWithObjectIDs:v10 options:v4];

    if (!v11)
    {
      sub_22F2886A4();
      swift_allocError();
      *v68 = 6;
      swift_willThrow();

      return;
    }

    v12 = v11;
    v13 = [v11 count];
    if ((v13 & 0x8000000000000000) != 0)
    {
      goto LABEL_68;
    }

    v14 = v13;
    v99 = v3;
    v100 = v9;
    v101 = v4;
    if (!v13)
    {
      v16 = v12;
LABEL_45:
      v98 = v16;
      v70 = [v99 librarySpecificFetchOptions];
      v71 = swift_allocObject();
      *(v71 + 16) = xmmword_22F771340;
      v72 = *MEMORY[0x277CD9C60];
      *(v71 + 32) = sub_22F740E20();
      *(v71 + 40) = v73;
      v74 = sub_22F741160();

      [v70 setFetchPropertySets_];

      [v70 setPersonContext_];
      [v70 setIncludeTorsoOnlyPerson_];
      sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v75 = swift_allocObject();
      *(v75 + 16) = xmmword_22F770DF0;
      v76 = MEMORY[0x277D83B88];
      v77 = MEMORY[0x277D83C10];
      *(v75 + 56) = MEMORY[0x277D83B88];
      *(v75 + 64) = v77;
      *(v75 + 32) = -2;
      *(v75 + 96) = v76;
      *(v75 + 104) = v77;
      *(v75 + 72) = -1;
      v78 = sub_22F741560();
      [v70 setPredicate_];

      v79 = sub_22F741160();
      v93 = [v100 fetchPersonsWithObjectIDs:v79 options:v70];

      if (!v93)
      {

        sub_22F2886A4();
        swift_allocError();
        *v94 = 6;
        swift_willThrow();

        return;
      }

      v106 = v70;
      v80 = [v93 count];
      if ((v80 & 0x8000000000000000) == 0)
      {
        v81 = v80;
        v82 = 0;
        v83 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v81 == v82)
          {

            v92 = v106;
            goto LABEL_61;
          }

          if (__OFADD__(v82, 1))
          {
            break;
          }

          v84 = [v93 objectAtIndexedSubscript_];
          v85 = [v84 localIdentifier];
          v86 = sub_22F740E20();
          v88 = v87;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_22F13EDE0(0, *(v83 + 2) + 1, 1, v83);
          }

          v90 = *(v83 + 2);
          v89 = *(v83 + 3);
          if (v90 >= v89 >> 1)
          {
            v83 = sub_22F13EDE0((v89 > 1), v90 + 1, 1, v83);
          }

          *(v83 + 2) = v90 + 1;
          v91 = &v83[32 * v90];
          v91[32] = 1;
          *(v91 + 5) = v86;
          *(v91 + 6) = v88;
          *(v91 + 7) = MEMORY[0x277D84F98];
          ++v82;
          if (*(v114 + 136) == 1)
          {

            v95 = v101;
            goto LABEL_62;
          }
        }

        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
      }

      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v2 = 0;
    v15 = MEMORY[0x277D84F90];
    v16 = v12;
    v103 = v14;
    while (1)
    {
      v17 = v16;
      v18 = [v16 objectAtIndexedSubscript_];
      v19 = [v18 localIdentifier];
      v20 = sub_22F740E20();
      v22 = v21;

      v112[0] = 1701667182;
      v112[1] = 0xE400000000000000;
      v23 = [v18 name];
      if (v23)
      {
        v24 = v23;
        v25 = sub_22F740E20();
        v27 = v26;

        v113 = MEMORY[0x277D837D0];
        if (v27)
        {
          goto LABEL_14;
        }

        v25 = 0;
      }

      else
      {
        v25 = 0;
        v113 = MEMORY[0x277D837D0];
      }

      v27 = 0xE000000000000000;
LABEL_14:
      v112[2] = v25;
      v112[3] = v27;
      v28 = sub_22F741DF0();

      sub_22F13BA9C(v112, &v109, &unk_27DAB0FF0, &unk_22F771410);
      v29 = v109;
      v30 = v110;
      a1 = sub_22F1229E8(v109, v110);
      if (v31)
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        v96 = a1;
        v97 = sub_22F741A00();
        LOBYTE(a1) = v96;
        if (v97 < 1)
        {
          return;
        }

        goto LABEL_3;
      }

      v28[(a1 >> 6) + 8] |= 1 << a1;
      v32 = (v28[6] + 16 * a1);
      *v32 = v29;
      v32[1] = v30;
      LOBYTE(a1) = sub_22F1534F8(&v111, (v28[7] + 32 * a1));
      v33 = v28[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_64;
      }

      v28[2] = v35;

      sub_22F120ADC(v112, &unk_27DAB0FF0, &unk_22F771410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13EDE0(0, *(v15 + 2) + 1, 1, v15);
      }

      v37 = *(v15 + 2);
      v36 = *(v15 + 3);
      v107 = v15;
      if (v37 >= v36 >> 1)
      {
        v107 = sub_22F13EDE0((v36 > 1), v37 + 1, 1, v15);
      }

      v15 = v107;
      *(v107 + 2) = v37 + 1;
      v38 = &v107[32 * v37];
      v38[32] = 1;
      *(v38 + 5) = v20;
      *(v38 + 6) = v22;
      *(v38 + 7) = v28;
      if (*(v114 + 136))
      {

        return;
      }

      ++v2;
      v16 = v17;
      if (v103 == v2)
      {
        goto LABEL_45;
      }
    }
  }

  v40 = [*(v114 + 144) librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22F771340;
  v42 = *MEMORY[0x277CD9A78];
  *(v41 + 32) = sub_22F740E20();
  *(v41 + 40) = v43;
  v44 = sub_22F741160();

  [v40 setFetchPropertySets_];

  v45 = objc_opt_self();
  sub_22F16165C(v2);
  v46 = sub_22F741160();

  v47 = [v45 fetchAssetsWithObjectIDs:v46 options:v40];

  if (!v47)
  {
    sub_22F2886A4();
    swift_allocError();
    *v69 = 6;
    swift_willThrow();

    return;
  }

  v48 = [v47 count];
  if ((v48 & 0x8000000000000000) != 0)
  {
    goto LABEL_69;
  }

  v49 = v48;
  if (!v48)
  {

    return;
  }

  v102 = v40;
  v50 = 0;
  v51 = MEMORY[0x277D84F90];
  v105 = v47;
  v108 = MEMORY[0x277D84F90];
  v52 = v47;
  v104 = v49;
  do
  {
    v53 = [v52 objectAtIndexedSubscript_];
    if (([v53 isTrashed] & 1) != 0 || objc_msgSend(v53, sel_isHidden))
    {
      v54 = [v53 localIdentifier];
      v55 = sub_22F740E20();
      v57 = v56;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v51 = sub_22F13EDE0(0, *(v51 + 2) + 1, 1, v51);
      }

      v59 = *(v51 + 2);
      v58 = *(v51 + 3);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        v61 = sub_22F13EDE0((v58 > 1), v59 + 1, 1, v51);
        v62 = MEMORY[0x277D84F98];
        v51 = v61;
      }

      else
      {
        v61 = v51;
        v62 = MEMORY[0x277D84F98];
      }
    }

    else
    {
      v63 = [v53 localIdentifier];
      v55 = sub_22F740E20();
      v57 = v64;

      sub_22F2886F8(v53);
      v62 = v65;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v108 = sub_22F13EDE0(0, *(v108 + 2) + 1, 1, v108);
      }

      v61 = v108;
      v59 = *(v108 + 2);
      v66 = *(v108 + 3);
      v60 = v59 + 1;
      if (v59 >= v66 >> 1)
      {
        v61 = sub_22F13EDE0((v66 > 1), v59 + 1, 1, v108);
        v108 = v61;
      }
    }

    *(v61 + 2) = v60;
    v67 = &v61[32 * v59];
    v67[32] = 2;
    *(v67 + 5) = v55;
    *(v67 + 6) = v57;
    *(v67 + 7) = v62;
    if (*(v114 + 136))
    {

      v95 = v102;
LABEL_62:

      return;
    }

    ++v50;
    v52 = v105;
  }

  while (v104 != v50);
  v92 = v102;
  v93 = v105;
LABEL_61:
}

uint64_t sub_22F28691C(uint64_t a1)
{
  *(v2 + 320) = a1;
  *(v2 + 328) = v1;
  return MEMORY[0x2822009F8](sub_22F28693C, v1, 0);
}

uint64_t sub_22F28693C()
{
  v1 = *(*(v0 + 328) + 152);
  v2 = sub_22F73F350();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_22F73F340();
  *(v0 + 296) = v1;
  *(v0 + 304) = 1;
  sub_22F288AD0();
  *(v0 + 336) = sub_22F73F330();
  *(v0 + 344) = v5;
  v8 = *(v0 + 328);

  *(v0 + 352) = *(v8 + 112);
  *(v0 + 360) = *(v8 + 120);
  *(v0 + 305) = 0;
  v9 = *(v0 + 328);
  *(v0 + 306) = byte_2843DAC18;

  sub_22F13BA9C(v9 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
  if (*(v0 + 256))
  {
LABEL_6:
    sub_22F100260((v0 + 232), v0 + 192);
    *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
    v10 = sub_22F286CC0;
    v11 = 0;
LABEL_7:

    return MEMORY[0x2822009F8](v10, v11, 0);
  }

  else
  {
    v12 = 0;
    v13 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v14 = *(v0 + 328);
      sub_22F287A08(*(v0 + 306), v13);
      *(v0 + 440) = v15;
      *(v0 + 448) = v12;
      if (v12)
      {
        v22 = *(v0 + 360);
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v6 = *(v0 + 8);
        goto LABEL_2;
      }

      v16 = v15;
      v17 = *(v0 + 328);

      if (*(v17 + 136))
      {
        break;
      }

      v18 = *(v16 + 16);
      *(v0 + 456) = v18;
      if (v18)
      {
        *(v0 + 464) = 0;
        v24 = *(v0 + 440);
        v33 = *(v0 + 352);
        v34 = *(v0 + 360);
        v26 = *(v0 + 336);
        v25 = *(v0 + 344);
        v27 = *(v0 + 328);
        v35 = *(v0 + 320);
        v28 = *(v24 + 32);
        v29 = *(v24 + 40);
        v30 = *(v24 + 48);
        v31 = *(v24 + 56);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_22F771340;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
        *(v32 + 48) = v30;
        *(v32 + 56) = v31;
        *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
        *(v0 + 96) = &off_2843E9240;
        *(v0 + 16) = v32;
        *(v0 + 24) = v13;
        *(v0 + 32) = v26;
        *(v0 + 40) = v25;
        *(v0 + 48) = v33;
        *(v0 + 56) = v34;
        *(v0 + 64) = v27;

        sub_22F15C3C4(v26, v25);

        v10 = sub_22F2875DC;
        v11 = v35;
        goto LABEL_7;
      }

      v19 = *(v0 + 440);
      v20 = *(v0 + 328);

      if (*(v20 + 136) & 1) != 0 || (*(v0 + 305))
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));
        goto LABEL_21;
      }

      v12 = *(v0 + 448);
      *(v0 + 305) = 1;
      v21 = *(v0 + 328);
      *(v0 + 306) = byte_2843DAC19;
      sub_22F13BA9C(v21 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      if (*(v0 + 256))
      {
        goto LABEL_6;
      }
    }

    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_21:
    v23 = *(v0 + 360);

    v6 = *(v0 + 8);
LABEL_2:

    return v6();
  }
}

uint64_t sub_22F286CC0()
{
  if (*(v0 + 306))
  {
    v1 = *(v0 + 368);
    v2 = objc_allocWithZone(MEMORY[0x277D22BE0]);
    v3 = sub_22F741160();
    v4 = sub_22F741160();
    v5 = sub_22F740C80();
    v6 = [v2 initWithRequiredLabels:v3 optionalLabels:v4 properties:v5];
    *(v0 + 376) = v6;

    v7 = *(v1 + 24);
    *(v0 + 384) = v7;
    v8 = swift_task_alloc();
    *(v0 + 392) = v8;
    *(v8 + 16) = v6;
    v9 = sub_22F286E4C;
    v10 = v7;
  }

  else
  {
    sub_22F20B070();
    v11 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
    *(v0 + 432) = v11;
    v10 = *(v0 + 328);
    v9 = sub_22F287564;
  }

  return MEMORY[0x2822009F8](v9, v10, 0);
}

uint64_t sub_22F286E4C()
{
  v1 = v0[49];
  v2 = *(v0[48] + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v3 = swift_task_alloc();
  v0[50] = v3;
  *(v3 + 16) = sub_22F288B24;
  *(v3 + 24) = v1;
  v4 = *(MEMORY[0x277D22B30] + 4);
  v5 = swift_task_alloc();
  v0[51] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *v5 = v0;
  v5[1] = sub_22F286F50;

  return MEMORY[0x282181580](v0 + 39, &unk_22F7816C0, v3, v6);
}

uint64_t sub_22F286F50()
{
  v2 = *v1;
  v3 = *(*v1 + 408);
  v9 = *v1;
  *(*v1 + 416) = v0;

  if (v0)
  {
    v4 = v2[48];
    v5 = sub_22F287484;
  }

  else
  {
    v7 = v2[49];
    v6 = v2[50];

    v2[53] = v2[39];

    v5 = sub_22F287084;
    v4 = 0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22F287084()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_22F2870F0, v1, 0);
}

uint64_t sub_22F2870F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 192));
  v1 = *(v0 + 416);
  v2 = *(v0 + 328);
  sub_22F287A08(*(v0 + 306), *(v0 + 424));
  *(v0 + 440) = v3;
  *(v0 + 448) = v1;
  if (v1)
  {
    goto LABEL_2;
  }

  v6 = v3;
  v7 = *(v0 + 328);

  if (*(v7 + 136))
  {
LABEL_4:
    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_13:
    v24 = *(v0 + 360);

    v5 = *(v0 + 8);
    goto LABEL_14;
  }

  v8 = *(v6 + 16);
  *(v0 + 456) = v8;
  if (v8)
  {
LABEL_6:
    *(v0 + 464) = 0;
    v9 = *(v0 + 440);
    v10 = *(v0 + 360);
    v12 = *(v0 + 336);
    v11 = *(v0 + 344);
    v13 = *(v0 + 328);
    v39 = *(v0 + 352);
    v40 = *(v0 + 320);
    v14 = *(v9 + 32);
    v16 = *(v9 + 40);
    v15 = *(v9 + 48);
    v17 = *(v9 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22F771340;
    *(v18 + 32) = v14;
    *(v18 + 40) = v16;
    *(v18 + 48) = v15;
    *(v18 + 56) = v17;
    *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 96) = &off_2843E9240;
    *(v0 + 64) = v13;
    v19 = MEMORY[0x277D84F90];
    *(v0 + 16) = v18;
    *(v0 + 24) = v19;
    *(v0 + 32) = v12;
    *(v0 + 40) = v11;
    *(v0 + 48) = v39;
    *(v0 + 56) = v10;

    sub_22F15C3C4(v12, v11);

    v20 = sub_22F2875DC;
    v21 = v40;
  }

  else
  {
    v22 = *(v0 + 440);
    v23 = *(v0 + 328);

    if (*(v23 + 136) & 1) != 0 || (*(v0 + 305))
    {
LABEL_12:
      sub_22F133BF0(*(v0 + 336), *(v0 + 344));
      goto LABEL_13;
    }

    v25 = *(v0 + 448);
    *(v0 + 305) = 1;
    v26 = *(v0 + 328);
    *(v0 + 306) = byte_2843DAC19;
    sub_22F13BA9C(v26 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
    if (!*(v0 + 256))
    {
      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v27 = *(v0 + 328);
      v28 = MEMORY[0x277D84F90];
      sub_22F287A08(*(v0 + 306), MEMORY[0x277D84F90]);
      *(v0 + 440) = v29;
      *(v0 + 448) = v25;
      if (v25)
      {
LABEL_2:
        v4 = *(v0 + 360);
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v5 = *(v0 + 8);
LABEL_14:

        return v5();
      }

      while (1)
      {
        v30 = v29;
        v31 = *(v0 + 328);

        if (*(v31 + 136))
        {
          goto LABEL_4;
        }

        v32 = *(v30 + 16);
        *(v0 + 456) = v32;
        if (v32)
        {
          goto LABEL_6;
        }

        v33 = *(v0 + 440);
        v34 = *(v0 + 328);

        if (*(v34 + 136) & 1) != 0 || (*(v0 + 305))
        {
          goto LABEL_12;
        }

        v35 = *(v0 + 448);
        *(v0 + 305) = 1;
        v36 = *(v0 + 328);
        *(v0 + 306) = byte_2843DAC19;
        sub_22F13BA9C(v36 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
        if (*(v0 + 256))
        {
          break;
        }

        sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
        v37 = *(v0 + 328);
        sub_22F287A08(*(v0 + 306), v28);
        *(v0 + 440) = v29;
        *(v0 + 448) = v35;
        if (v35)
        {
          goto LABEL_2;
        }
      }
    }

    sub_22F100260((v0 + 232), v0 + 192);
    *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
    v20 = sub_22F286CC0;
    v21 = 0;
  }

  return MEMORY[0x2822009F8](v20, v21, 0);
}

uint64_t sub_22F287484()
{
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);

  return MEMORY[0x2822009F8](sub_22F2874F4, 0, 0);
}

uint64_t sub_22F2874F4()
{
  *(v0 + 432) = *(v0 + 416);
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_22F287564, v1, 0);
}

uint64_t sub_22F287564()
{
  v1 = v0[45];
  sub_22F133BF0(v0[42], v0[43]);

  __swift_destroy_boxed_opaque_existential_0(v0 + 24);
  v2 = v0[54];
  v3 = v0[1];

  return v3();
}

uint64_t sub_22F2875DC()
{
  v1 = *(v0 + 320);
  sub_22F20AC1C(v0 + 16, v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = *(v0 + 320);
    v2 = sub_22F13EEEC(0, *(v2 + 2) + 1, 1, v2);
    *(v13 + 112) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_22F13EEEC((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 320);
  v7 = *(v0 + 328);
  *(v2 + 2) = v5 + 1;
  v8 = &v2[88 * v5];
  v9 = *(v0 + 120);
  *(v8 + 2) = *(v0 + 104);
  *(v8 + 3) = v9;
  v10 = *(v0 + 136);
  v11 = *(v0 + 152);
  v12 = *(v0 + 168);
  *(v8 + 14) = *(v0 + 184);
  *(v8 + 5) = v11;
  *(v8 + 6) = v12;
  *(v8 + 4) = v10;
  *(v6 + 112) = v2;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_22F287718, v7, 0);
}

uint64_t sub_22F287718()
{
  v1 = *(v0 + 456);
  v2 = *(v0 + 464) + 1;
  sub_22F20AC78(v0 + 16);
  if (v2 == v1)
  {
    v3 = MEMORY[0x277D84F90];
    while (1)
    {
      v4 = *(v0 + 440);
      v5 = *(v0 + 328);

      if (*(v5 + 136) & 1) != 0 || (*(v0 + 305))
      {
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));
        goto LABEL_19;
      }

      v6 = *(v0 + 448);
      *(v0 + 305) = 1;
      v7 = *(v0 + 328);
      *(v0 + 306) = byte_2843DAC19;
      sub_22F13BA9C(v7 + 160, v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      if (*(v0 + 256))
      {
        sub_22F100260((v0 + 232), v0 + 192);
        *(v0 + 368) = *__swift_project_boxed_opaque_existential_1((v0 + 192), *(v0 + 216));
        v25 = sub_22F286CC0;
        v26 = 0;
        goto LABEL_12;
      }

      sub_22F120ADC(v0 + 232, &qword_27DAB2D98, &unk_22F7816A8);
      v8 = *(v0 + 328);
      sub_22F287A08(*(v0 + 306), v3);
      *(v0 + 440) = v9;
      *(v0 + 448) = v6;
      if (v6)
      {
        v27 = *(v0 + 360);
        sub_22F133BF0(*(v0 + 336), *(v0 + 344));

        v28 = *(v0 + 8);
        goto LABEL_20;
      }

      v10 = v9;
      v11 = *(v0 + 328);

      if (*(v11 + 136))
      {
        break;
      }

      v12 = *(v10 + 16);
      *(v0 + 456) = v12;
      if (v12)
      {
        v13 = 0;
        goto LABEL_11;
      }
    }

    sub_22F133BF0(*(v0 + 336), *(v0 + 344));

LABEL_19:
    v29 = *(v0 + 360);

    v28 = *(v0 + 8);
LABEL_20:

    return v28();
  }

  else
  {
    v13 = *(v0 + 464) + 1;
LABEL_11:
    *(v0 + 464) = v13;
    v14 = *(v0 + 360);
    v16 = *(v0 + 336);
    v15 = *(v0 + 344);
    v17 = *(v0 + 328);
    v31 = *(v0 + 352);
    v32 = *(v0 + 320);
    v18 = *(v0 + 440) + 32 * v13;
    v19 = *(v18 + 32);
    v21 = *(v18 + 40);
    v20 = *(v18 + 48);
    v22 = *(v18 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0CE0, &qword_22F771070);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_22F771340;
    *(v23 + 32) = v19;
    *(v23 + 40) = v21;
    *(v23 + 48) = v20;
    *(v23 + 56) = v22;
    *(v0 + 88) = type metadata accessor for PhotoKitInputStream();
    *(v0 + 96) = &off_2843E9240;
    *(v0 + 64) = v17;
    v24 = MEMORY[0x277D84F90];
    *(v0 + 16) = v23;
    *(v0 + 24) = v24;
    *(v0 + 32) = v16;
    *(v0 + 40) = v15;
    *(v0 + 48) = v31;
    *(v0 + 56) = v14;

    sub_22F15C3C4(v16, v15);

    v25 = sub_22F2875DC;
    v26 = v32;
LABEL_12:

    return MEMORY[0x2822009F8](v25, v26, 0);
  }
}

void sub_22F287A08(char a1, uint64_t a2)
{
  v5 = [*(v2 + 144) librarySpecificFetchOptions];
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771340;
  *(v6 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v6 + 64) = sub_22F25F050();
  *(v6 + 32) = a2;

  v7 = sub_22F741560();
  [v5 setPredicate_];

  if (!a1)
  {
    sub_22F2886A4();
    swift_allocError();
    *v38 = 4;
    swift_willThrow();

    return;
  }

  if (a1 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_22F771340;
    v40 = *MEMORY[0x277CD9A78];
    *(v39 + 32) = sub_22F740E20();
    *(v39 + 40) = v41;
    v42 = sub_22F741160();

    [v5 setFetchPropertySets_];

    [v5 setIncludeHiddenAssets_];
    [v5 setIncludeTrashedAssets_];
    v59 = [objc_opt_self() fetchAssetsWithOptions_];
    v43 = [v59 count];
    if ((v43 & 0x8000000000000000) != 0)
    {
LABEL_39:
      __break(1u);
      return;
    }

    v44 = v43;
    v58 = v5;
    v45 = 0;
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v44 == v45)
      {
LABEL_31:

        v57 = v59;
LABEL_33:

        return;
      }

      if (__OFADD__(v45, 1))
      {
        break;
      }

      v47 = [v59 objectAtIndexedSubscript_];
      v48 = [v47 localIdentifier];
      v49 = sub_22F740E20();
      v51 = v50;

      sub_22F2886F8(v47);
      v53 = v52;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = sub_22F13EDE0(0, *(v46 + 2) + 1, 1, v46);
      }

      v55 = *(v46 + 2);
      v54 = *(v46 + 3);
      if (v55 >= v54 >> 1)
      {
        v46 = sub_22F13EDE0((v54 > 1), v55 + 1, 1, v46);
      }

      *(v46 + 2) = v55 + 1;
      v56 = &v46[32 * v55];
      v56[32] = 2;
      *(v56 + 5) = v49;
      *(v56 + 6) = v51;
      *(v56 + 7) = v53;
      ++v45;
      if (*(v65 + 136) == 1)
      {
LABEL_32:

        v57 = v58;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771340;
  v9 = *MEMORY[0x277CD9C58];
  *(v8 + 32) = sub_22F740E20();
  *(v8 + 40) = v10;
  v11 = sub_22F741160();

  [v5 setFetchPropertySets_];

  [v5 setPersonContext_];
  v59 = [objc_opt_self() fetchPersonsWithOptions_];
  v12 = [v59 count];
  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_38;
  }

  v13 = v12;
  if (v12)
  {
    v58 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FE8, &unk_22F781690);
    v14 = 0;
    v15 = MEMORY[0x277D84F90];
    while (1)
    {
      v16 = [v59 objectAtIndexedSubscript_];
      v17 = [v16 localIdentifier];
      v18 = sub_22F740E20();
      v20 = v19;

      v63[0] = 1701667182;
      v63[1] = 0xE400000000000000;
      v21 = [v16 name];
      if (v21)
      {
        v22 = v21;
        v23 = sub_22F740E20();
        v25 = v24;

        v64 = MEMORY[0x277D837D0];
        if (v25)
        {
          goto LABEL_11;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        v64 = MEMORY[0x277D837D0];
      }

      v25 = 0xE000000000000000;
LABEL_11:
      v63[2] = v23;
      v63[3] = v25;
      v26 = sub_22F741DF0();

      sub_22F13BA9C(v63, &v60, &unk_27DAB0FF0, &unk_22F771410);
      v27 = v60;
      v28 = v61;
      v29 = sub_22F1229E8(v60, v61);
      if (v30)
      {
        goto LABEL_36;
      }

      v26[(v29 >> 6) + 8] |= 1 << v29;
      v31 = (v26[6] + 16 * v29);
      *v31 = v27;
      v31[1] = v28;
      sub_22F1534F8(&v62, (v26[7] + 32 * v29));
      v32 = v26[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_37;
      }

      v26[2] = v34;

      sub_22F120ADC(v63, &unk_27DAB0FF0, &unk_22F771410);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13EDE0(0, *(v15 + 2) + 1, 1, v15);
      }

      v36 = *(v15 + 2);
      v35 = *(v15 + 3);
      if (v36 >= v35 >> 1)
      {
        v15 = sub_22F13EDE0((v35 > 1), v36 + 1, 1, v15);
      }

      *(v15 + 2) = v36 + 1;
      v37 = &v15[32 * v36];
      v37[32] = 1;
      *(v37 + 5) = v18;
      *(v37 + 6) = v20;
      *(v37 + 7) = v26;
      if (*(v65 + 136))
      {
        goto LABEL_32;
      }

      if (v13 == ++v14)
      {
        goto LABEL_31;
      }
    }
  }
}

uint64_t sub_22F288098()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 128);

  sub_22F120ADC(v0 + 160, &qword_27DAB2D98, &unk_22F7816A8);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void *sub_22F288124(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
    }

    result = a3(&v7, result, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_22F2881A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v28 = a3 + 32;
  v8 = a4 + 56;
  v26 = result;
  v27 = v7;
  while (2)
  {
    v25 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v28 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          v13 = *(a4 + 40);
          sub_22F742170();

          sub_22F740D60();
          v14 = sub_22F7421D0();
          v15 = -1 << *(a4 + 32);
          v16 = v14 & ~v15;
          v17 = v16 >> 6;
          v18 = 1 << v16;
          if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v19 = (*(a4 + 48) + 16 * v16);
        if (*v19 != v12 || v19[1] != v11)
        {
          v21 = ~v15;
          while ((sub_22F742040() & 1) == 0)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = 1 << v16;
            if (((1 << v16) & *(v8 + 8 * (v16 >> 6))) == 0)
            {
              v7 = v27;
              goto LABEL_5;
            }

            v22 = (*(a4 + 48) + 16 * v16);
            if (*v22 == v12 && v22[1] == v11)
            {
              break;
            }
          }
        }

        v23 = v26[v17];
        v26[v17] = v23 | v18;
        if ((v23 & v18) == 0)
        {
          break;
        }

        v7 = v27;
        v6 = v9;
        if (v9 == v27)
        {
          goto LABEL_24;
        }
      }

      v5 = v25 + 1;
      v7 = v27;
      v6 = v9;
      if (!__OFADD__(v25, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_22F1B8E24(v26, a2, v25, a4);
}

uint64_t sub_22F288380(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 62)
  {
LABEL_25:
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = a3;
    v31 = sub_22F741A00();
    v4 = v23;
  }

  else
  {
    v29 = a3 & 0xFFFFFFFFFFFFFF8;
    v31 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = a3;
  }

  v5 = 0;
  v6 = 0;
  v30 = v4 & 0xC000000000000001;
  v24 = v4;
  v28 = v4 + 32;
  v32 = a4 + 56;
LABEL_4:
  v26 = v5;
  while (v6 != v31)
  {
    if (v30)
    {
      v7 = MEMORY[0x2319016F0](v6, v24);
    }

    else
    {
      if (v6 >= *(v29 + 16))
      {
        goto LABEL_24;
      }

      v7 = *(v28 + 8 * v6);
    }

    v8 = v7;
    if (__OFADD__(v6++, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v10 = *(a4 + 40);
    v11 = sub_22F741800();
    v12 = -1 << *(a4 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) != 0)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v16 = *(*(a4 + 48) + 8 * v13);
      v17 = sub_22F741810();

      if ((v17 & 1) == 0)
      {
        v18 = ~v12;
        do
        {
          v13 = (v13 + 1) & v18;
          v14 = v13 >> 6;
          v15 = 1 << v13;
          if (((1 << v13) & *(v32 + 8 * (v13 >> 6))) == 0)
          {
            goto LABEL_5;
          }

          v19 = *(*(a4 + 48) + 8 * v13);
          v20 = sub_22F741810();
        }

        while ((v20 & 1) == 0);
      }

      v21 = a1[v14];
      a1[v14] = v21 | v15;
      if ((v21 & v15) == 0)
      {
        v5 = v26 + 1;
        if (!__OFADD__(v26, 1))
        {
          goto LABEL_4;
        }

        __break(1u);
        break;
      }
    }

    else
    {
LABEL_5:
    }
  }

  return sub_22F1B9314(a1, a2, v26, a4);
}

uint64_t sub_22F2885B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_22F2885DC, 0, 0);
}

uint64_t sub_22F2885DC()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v5 = sub_22F73FA70();
  v2();

  **(v0 + 24) = *(v0 + 16);
  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_22F2886A4()
{
  result = qword_27DAB2D88;
  if (!qword_27DAB2D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2D88);
  }

  return result;
}

void sub_22F2886F8(void *a1)
{
  v2 = sub_22F73F690();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v28[-v8];
  v10 = [a1 creationDate];
  if (v10)
  {
    v11 = v10;
    sub_22F73F640();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2D90, &qword_22F7816A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22F771340;
    strcpy((inited + 32), "creationDate");
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    sub_22F73F620();
    *(inited + 72) = MEMORY[0x277D839F8];
    *(inited + 48) = v13;
    sub_22F14F4A0(inited);
    swift_setDeallocating();
    sub_22F120ADC(inited + 32, &unk_27DAB0FF0, &unk_22F771410);
    (*(v3 + 8))(v9, v2);
    return;
  }

  if (qword_2810A93F0 != -1)
  {
    swift_once();
  }

  v14 = sub_22F740B90();
  __swift_project_value_buffer(v14, qword_2810B4CB0);
  v15 = a1;
  v16 = sub_22F740B70();
  v17 = sub_22F7415E0();
  if (!os_log_type_enabled(v16, v17))
  {

    goto LABEL_9;
  }

  v18 = swift_slowAlloc();
  v19 = swift_slowAlloc();
  v29 = v19;
  *v18 = 136315138;
  v20 = [v15 uuid];

  if (v20)
  {
    v21 = sub_22F740E20();
    v23 = v22;

    v24 = sub_22F145F20(v21, v23, &v29);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_22F0FC000, v16, v17, "[IncrementalRebuild] Asset with uuid %s does not have a creation date, this is unexpected", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2319033A0](v19, -1, -1);
    MEMORY[0x2319033A0](v18, -1, -1);
LABEL_9:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2D90, &qword_22F7816A0);
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_22F771340;
    strcpy((v25 + 32), "creationDate");
    *(v25 + 45) = 0;
    *(v25 + 46) = -5120;
    sub_22F73F550();
    sub_22F73F620();
    v27 = v26;
    (*(v3 + 8))(v7, v2);
    *(v25 + 72) = MEMORY[0x277D839F8];
    *(v25 + 48) = v27;
    sub_22F14F4A0(v25);
    swift_setDeallocating();
    sub_22F120ADC(v25 + 32, &unk_27DAB0FF0, &unk_22F771410);
    return;
  }

  __break(1u);
}

unint64_t sub_22F288AD0()
{
  result = qword_27DAB3D50;
  if (!qword_27DAB3D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D50);
  }

  return result;
}

uint64_t sub_22F288B40(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F12094C;

  return sub_22F2885B8(a1, a2, v7, v6);
}

unint64_t sub_22F288C08()
{
  result = qword_27DAB0578;
  if (!qword_27DAB0578)
  {
    sub_22F120634(255, &qword_2810A9100, 0x277CBE448);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB0578);
  }

  return result;
}

uint64_t sub_22F288C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22F2881A0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F288CC8()
{
  result = qword_27DAB2DB0;
  if (!qword_27DAB2DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DB0);
  }

  return result;
}

unint64_t sub_22F288D1C()
{
  result = qword_27DAB2DB8;
  if (!qword_27DAB2DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DB8);
  }

  return result;
}

uint64_t sub_22F288D70(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  v4 = sub_22F73F470();
  v2[11] = v4;
  v5 = *(v4 - 8);
  v2[12] = v5;
  v6 = *(v5 + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F288E34, a1, 0);
}

uint64_t sub_22F288E34()
{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager);
  v2 = *(MEMORY[0x277D22B30] + 4);
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_22F288EFC;
  v4 = MEMORY[0x277D837D0];

  return MEMORY[0x282181580](v0 + 56, &unk_22F7821C0, 0, v4);
}

uint64_t sub_22F288EFC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 72);
  if (v0)
  {
    v6 = sub_22F2891BC;
  }

  else
  {
    v6 = sub_22F289028;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22F289028()
{
  v1 = v0[8];
  v0[16] = v0[7];
  v0[17] = v1;
  return MEMORY[0x2822009F8](sub_22F28904C, 0, 0);
}

uint64_t sub_22F28904C()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[9];
  v7 = *(v6 + 112);
  (*(v0[12] + 16))(v4, v6 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL, v0[11]);
  sub_22F13BA9C(v5, (v0 + 2), &qword_27DAB2D98, &unk_22F7816A8);
  type metadata accessor for PhotoKitInputStream();
  v8 = swift_allocObject();
  v0[18] = v8;
  sub_22F281C54(v7, v2, v1, v4, (v0 + 2));
  if (v3)
  {
    v9 = v0[9];
    v10 = v0[10];

    sub_22F120ADC(v10, &qword_27DAB2D98, &unk_22F7816A8);
    v11 = v0[13];

    v12 = v0[1];

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22F28925C, v8, 0);
  }
}

uint64_t sub_22F2891D8()
{
  v1 = v0[9];
  v2 = v0[10];

  sub_22F120ADC(v2, &qword_27DAB2D98, &unk_22F7816A8);
  v3 = v0[15];
  v4 = v0[13];

  v5 = v0[1];

  return v5();
}

uint64_t sub_22F28925C()
{
  v1 = v0[13];
  v2 = v0[9];
  v3 = v0[10];

  sub_22F120ADC(v3, &qword_27DAB2D98, &unk_22F7816A8);

  v4 = v0[1];
  v5 = v0[18];

  return v4(v5);
}

unint64_t sub_22F2892FC()
{
  result = qword_27DAB2DC0;
  if (!qword_27DAB2DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2DC0);
  }

  return result;
}

uint64_t static LocalizedString.localizedString(forKey:arguments:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_22F740DF0();
  v3 = sub_22F740DF0();
  v4 = sub_22F740DF0();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  sub_22F740E20();

  v6 = sub_22F740E60();

  return v6;
}

uint64_t static LocalizedString.localizedString(forKey:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_22F740DF0();
  v3 = sub_22F740DF0();
  v4 = sub_22F740DF0();
  v5 = [v1 localizedStringForKey:v2 value:v3 table:v4];

  v6 = sub_22F740E20();
  return v6;
}

id LocalizedString.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LocalizedString.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LocalizedString.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id LocalizedString.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for LocalizedString();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id LocalizedString.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LocalizedString();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2897A0(char a1)
{
  result = 0x6E6F5F6E656B6174;
  switch(a1)
  {
    case 2:
      result = 0x5F6F65675F736168;
      break;
    case 3:
    case 14:
    case 29:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
    case 6:
      result = 0x736E6961746E6F63;
      break;
    case 7:
      result = 0x736E6961746E6F63;
      break;
    case 8:
      result = 0x666F5F646C696863;
      break;
    case 9:
      result = 0x6F7661665F736177;
      break;
    case 10:
      v3 = 10;
      goto LABEL_20;
    case 11:
      result = 0x74615F6E656B6174;
      break;
    case 12:
      v3 = 5;
LABEL_20:
      result = v3 | 0xD000000000000010;
      break;
    case 13:
      result = 0x61635F666F5F7369;
      break;
    case 15:
      result = 0x656D726F66726570;
      break;
    case 16:
      result = 0x74615F646C6568;
      break;
    case 17:
      result = 0xD000000000000010;
      break;
    case 18:
      result = 7954788;
      break;
    case 19:
      result = 0x7961646B656577;
      break;
    case 20:
      result = 0x68746E6F6DLL;
      break;
    case 21:
      result = 0x72657472617571;
      break;
    case 22:
      result = 1918985593;
      break;
    case 23:
      result = 0x65746174735F6E69;
      break;
    case 24:
      result = 0x746E756F635F6E69;
      break;
    case 25:
    case 26:
      result = 0x6E695F6E656B6174;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    case 28:
      result = 0xD000000000000012;
      break;
    case 30:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22F289AF4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22F2897A0(*a1);
  v5 = v4;
  if (v3 == sub_22F2897A0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F289B7C()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2897A0(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F289BE0()
{
  sub_22F2897A0(*v0);
  sub_22F740D60();
}

uint64_t sub_22F289C34()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F2897A0(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F289C94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22F28A378();
  *a2 = result;
  return result;
}

unint64_t sub_22F289CC4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F2897A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22F289D80(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + *a4);
  *(a1 + *a4) = a3;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

id sub_22F28A0A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Edge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t getEnumTagSinglePayload for Edge.Label(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE2)
  {
    goto LABEL_17;
  }

  if (a2 + 30 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 30) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 30;
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

      return (*a1 | (v4 << 8)) - 30;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 30;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1F;
  v8 = v6 - 31;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Edge.Label(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 30 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 30) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE2)
  {
    v4 = 0;
  }

  if (a2 > 0xE1)
  {
    v5 = ((a2 - 226) >> 8) + 1;
    *result = a2 + 30;
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
    *result = a2 + 30;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F28A2BC()
{
  result = qword_27DAB2EC8;
  if (!qword_27DAB2EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2ED0, qword_22F7817E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EC8);
  }

  return result;
}

unint64_t sub_22F28A324()
{
  result = qword_27DAB2ED8;
  if (!qword_27DAB2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2ED8);
  }

  return result;
}

uint64_t sub_22F28A378()
{
  v0 = sub_22F742080();

  if (v0 >= 0x1F)
  {
    return 31;
  }

  else
  {
    return v0;
  }
}

void static MusicForTopicCacher.prefetchCuratedSongLibraryAssets(withProgressReporter:completionHandler:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v35 = a2;
  v34 = sub_22F740BB0();
  v32 = *(v34 - 8);
  v4 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v6 = (v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_22F740C30();
  v7 = *(v33 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v33);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v29 - v12;
  v14 = dispatch_group_create();
  dispatch_group_enter(v14);
  v30 = sub_22F7416B0();
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  type metadata accessor for CuratedSongLibrary();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v35;
  v18[5] = a3;
  v18[6] = v14;
  v31 = v16;
  v19 = v17;
  v29[1] = a3;
  v20 = v30;

  v21 = v14;
  static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(v20, sub_22F28A8D4, v18);

  sub_22F740C10();
  v22 = qos_class_self();
  v23 = 270;
  if (((v22 - 25) & 0xFFFFFFF7) == 0)
  {
    v23 = 5;
  }

  *v6 = v23;
  v24 = v32;
  v25 = v34;
  (*(v32 + 104))(v6, *MEMORY[0x277D85188], v34);
  MEMORY[0x2319007F0](v10, v6);
  (*(v24 + 8))(v6, v25);
  v26 = *(v7 + 8);
  v27 = v33;
  v26(v10, v33);
  LOBYTE(v25) = sub_22F741610();
  v26(v13, v27);
  if ((v25 & 1) != 0 && [v19 tryLockWhenCondition_])
  {
    sub_22F28AC14();
    v28 = swift_allocError();
    v35(0, v28);

    [v19 unlockWithCondition_];
  }
}

void sub_22F28A794(void *a1, char a2, void *a3, id a4, void (*a5)(uint64_t, void *), uint64_t a6, NSObject *a7)
{
  if (a2)
  {
    if ([a4 tryLockWhenCondition_])
    {
      a5(0, a1);
      [a4 unlockWithCondition_];
    }

    dispatch_group_leave(a7);
  }

  else
  {
    v13 = type metadata accessor for CuratedSongLibrary();
    v14 = sub_22F1DE138();
    v16 = v15;
    v17 = a4;

    v18 = a7;
    sub_22F36E3E4(v14, v16, a3, v13, v17, a5, a6, v18);
  }
}

void sub_22F28A8D8(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, NSObject *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  v10 = *(*(v9 - 8) + 64);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = (&v16 - v12);
  if ([a2 tryLockWhenCondition_])
  {
    sub_22F28BD50(a1, v13);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v14 = *v13;
      v15 = sub_22F73F360();
      a3(0, v15);
    }

    else
    {
      a3(1, 0);
      sub_22F28BDC0(v13);
    }

    [a2 unlockWithCondition_];
  }

  dispatch_group_leave(a5);
}

id MusicForTopicCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTopicCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTopicCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F28AC14()
{
  result = qword_27DAB2EE0;
  if (!qword_27DAB2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EE0);
  }

  return result;
}

uint64_t sub_22F28AC68(char *a1, uint64_t a2)
{
  v92 = a1;
  v93 = sub_22F740AD0();
  v90 = *(v93 - 8);
  v4 = *(v90 + 64);
  MEMORY[0x28223BE20](v93);
  v6 = v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Song();
  v91 = *(v7 - 8);
  v8 = v91[8];
  MEMORY[0x28223BE20](v7);
  v10 = v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1250, &qword_22F781A10);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v70 - v13;
  if (qword_2810A9B30 != -1)
  {
    swift_once();
  }

  v15 = qword_2810B4E30;
  *&v16 = CACurrentMediaTime();
  sub_22F1B560C("Music For Topic Cacher", 22, 2u, v16, 0, v15, v99);
  v17 = sub_22F7416D0();
  v19 = v18;
  v21 = v20;
  static MaestroMusicMatrixGenerator.maestroSongsInfo()(&v95);
  if (v2)
  {
    v94 = v2;

    goto LABEL_5;
  }

  v88 = v21;
  v89 = v19;
  v87 = a2;
  v22 = v96;
  v23 = v97;
  v24 = v98;
  static MaestroMusicMatrixGenerator.maestroSongs(schemaVersion:)(v95, v96, &v95);
  v85 = v23;
  v86 = v24;
  v26 = v95;
  sub_22F7416A0();
  v73 = v26;
  MusicCache.removeSongSources(songSourceIdentifiers:progressReporter:)(qword_2843DAA68);
  v94 = 0;
  v27 = sub_22F741C40();
  v72 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v84 = v27;
  sub_22F741E10();
  v28 = v91;
  v29 = v91[6];
  v83 = (v91 + 6);
  v82 = v29;
  v30 = v29(v14, 1, v7);
  v70[1] = v22;
  if (v30 == 1)
  {
    v31 = MEMORY[0x277D84F90];
LABEL_10:
    v32 = v31;

    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v33 = v90 + 8;
    v34 = *(v90 + 8);
    v34(v6, v93);
    v35 = v88;
    v36 = v94;
    sub_22F741690();
    v94 = v36;
    if (v36)
    {
    }

    v90 = v33;
    v54 = sub_22F7416E0();
    v84 = v70;
    v55 = *&v92[v72];
    MEMORY[0x28223BE20](v54);
    strcpy(&v70[-14], "humanCurated");
    BYTE5(v70[-13]) = 0;
    HIWORD(v70[-13]) = -5120;
    v56 = v85;
    v57 = v86;
    v70[-12] = v58;
    v70[-11] = v56;
    v70[-10] = v57;
    v70[-9] = 0;
    v70[-8] = 0;
    v70[-7] = v59;
    v85 = v59;
    v70[-6] = v32;
    LODWORD(v70[-5]) = 0x1000000;
    v91 = v60;
    v92 = v61;
    v70[-4] = v61;
    v70[-3] = v60;
    v63 = v62;
    v70[-2] = v62;
    v64 = v94;
    sub_22F7417A0();
    v94 = v64;
    if (v64)
    {

      v65 = &v101;
      goto LABEL_30;
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v34(v6, v93);
    sub_22F1B2BBC(0);
    v67 = v94;
    sub_22F7416A0();
    if (v67)
    {
    }

    v94 = 0;
    v68 = v88;
    v69 = v89;

LABEL_5:
  }

  v81 = (v90 + 8);
  v31 = MEMORY[0x277D84F90];
  v71 = xmmword_22F7818D0;
  while (1)
  {
    sub_22F15CB04(v14, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_22F13E558(0, v31[2] + 1, 1, v31);
    }

    v38 = v31[2];
    v37 = v31[3];
    if (v38 >= v37 >> 1)
    {
      v31 = sub_22F13E558(v37 > 1, v38 + 1, 1, v31);
    }

    v31[2] = v38 + 1;
    sub_22F15CB04(v10, v31 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + v28[9] * v38);
    if (v38 < 0x63)
    {
      goto LABEL_15;
    }

    v80 = v31;
    v39 = [objc_opt_self() ignoreProgress];
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v40 = *v81;
    (*v81)(v6, v93);
    v41 = v94;
    sub_22F741690();
    v94 = v41;
    if (v41)
    {
    }

    v74 = v40;
    v42 = sub_22F7416E0();
    v78 = v39;
    v44 = v43;
    v75 = v70;
    v45 = *&v92[v72];
    MEMORY[0x28223BE20](v42);
    strcpy(&v70[-14], "humanCurated");
    BYTE5(v70[-13]) = 0;
    HIWORD(v70[-13]) = -5120;
    v70[-12] = v46;
    v47 = v86;
    v70[-11] = v85;
    v70[-10] = v47;
    *&v70[-9] = v71;
    v79 = v48;
    v49 = v80;
    v70[-7] = v48;
    v70[-6] = v49;
    LODWORD(v70[-5]) = 0x1000000;
    v77 = v50;
    v70[-4] = v50;
    v70[-3] = v51;
    v76 = v51;
    v70[-2] = v52;
    v53 = v94;
    sub_22F7417A0();
    v94 = v53;
    if (v53)
    {
      break;
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v74(v6, v93);

    v31 = MEMORY[0x277D84F90];
    v28 = v91;
LABEL_15:
    sub_22F741E10();
    if (v82(v14, 1, v7) == 1)
    {
      goto LABEL_10;
    }
  }

  v65 = &v100;
LABEL_30:
  v66 = *(v65 - 32);
  return result;
}

unint64_t sub_22F28B840()
{
  result = qword_27DAB2EE8;
  if (!qword_27DAB2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EE8);
  }

  return result;
}

void sub_22F28B894(uint64_t a1, void (**a2)(const void *, void, void *))
{
  v36 = sub_22F740BB0();
  v34 = *(v36 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v5 = (&v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = sub_22F740C30();
  v33 = *(v35 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x28223BE20](v35);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v31 = a2;
  _Block_copy(a2);
  v13 = dispatch_group_create();
  dispatch_group_enter(v13);
  v14 = sub_22F7416B0();
  v16 = v15;
  v17 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  type metadata accessor for CuratedSongLibrary();
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = sub_22F1E088C;
  v18[5] = v12;
  v18[6] = v13;
  v32 = v16;
  v19 = v17;
  v37 = v12;
  v20 = v14;

  v21 = v13;
  static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(v14, sub_22F28BE28, v18);

  sub_22F740C10();
  v22 = qos_class_self();
  v23 = 270;
  if (((v22 - 25) & 0xFFFFFFF7) == 0)
  {
    v23 = 5;
  }

  *v5 = v23;
  v24 = v34;
  v25 = v36;
  (*(v34 + 104))(v5, *MEMORY[0x277D85188], v36);
  MEMORY[0x2319007F0](v8, v5);
  (*(v24 + 8))(v5, v25);
  v26 = *(v33 + 8);
  v27 = v35;
  v26(v8, v35);
  LOBYTE(v25) = sub_22F741610();
  v26(v11, v27);
  if (v25 & 1) != 0 && ([v19 tryLockWhenCondition_])
  {
    sub_22F28AC14();
    v28 = swift_allocError();
    v29 = sub_22F73F360();
    v31[2](v31, 0, v29);

    [v19 unlockWithCondition_];
  }
}

uint64_t objectdestroyTm_3()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void sub_22F28BCC4()
{
  if (*(v0 + 91))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 90))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 89))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(v0 + 112);
  sub_22F19B1E0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v3 | *(v0 + 88) | v2 | v1, (v3 | *(v0 + 88) | v2 | v1) >> 16, *(v0 + 96));
}

uint64_t sub_22F28BD50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F28BDC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MusicForTimeBackfillCacher.MusicForTimeError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F28BF18()
{
  v0 = sub_22F73F690();
  __swift_allocate_value_buffer(v0, qword_2810AA1B8);
  __swift_project_value_buffer(v0, qword_2810AA1B8);
  return sub_22F73F5F0();
}

uint64_t static MusicForTimeBackfillCacher.minimumValidQueryDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v2 = sub_22F73F690();
  v3 = __swift_project_value_buffer(v2, qword_2810AA1B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22F28C018()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v5, qword_2810AA190);
  v6 = __swift_project_value_buffer(v0, qword_2810AA190);
  v7 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v6, v4, v0);
}

void static MusicForTimeBackfillCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, NSObject *a4, unint64_t a5)
{
  v222 = a5;
  v223 = a4;
  LODWORD(v220) = a2;
  v200 = type metadata accessor for CacherStatus(0);
  v198 = *(v200 - 8);
  v7 = *(v198 + 64);
  MEMORY[0x28223BE20](v200);
  v195 = v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v199 = v179 - v10;
  v193 = sub_22F73EEC0();
  v191 = *(v193 - 8);
  v11 = *(v191 + 64);
  MEMORY[0x28223BE20](v193);
  v194 = v179 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = v12;
  MEMORY[0x28223BE20](v13);
  v196 = v179 - v14;
  v203 = sub_22F740AD0();
  v204 = *(v203 - 8);
  v15 = *(v204 + 64);
  MEMORY[0x28223BE20](v203);
  v202 = v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F740C00();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v206 = v179 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = sub_22F73F990();
  v214 = *(v215 - 1);
  v20 = v214[8];
  MEMORY[0x28223BE20](v215);
  v213 = v179 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v192 = v179 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v197 = v179 - v26;
  MEMORY[0x28223BE20](v27);
  v212 = v179 - v28;
  v218 = sub_22F73F690();
  v219 = *(v218 - 8);
  v29 = *(v219 + 64);
  MEMORY[0x28223BE20](v218);
  v216 = v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v205 = v179 - v31;
  MEMORY[0x28223BE20](v32);
  v209 = v179 - v33;
  MEMORY[0x28223BE20](v34);
  v210 = v179 - v35;
  MEMORY[0x28223BE20](v36);
  v211 = v179 - v37;
  MEMORY[0x28223BE20](v38);
  v208 = v179 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v201 = *(v40 - 8);
  v41 = *(v201 + 64);
  MEMORY[0x28223BE20](v40 - 8);
  MEMORY[0x28223BE20](v42);
  v44 = v179 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = (v179 - v46);
  MEMORY[0x28223BE20](v48);
  v50 = v179 - v49;
  MEMORY[0x28223BE20](v51);
  v221 = v179 - v52;
  v217 = a3;
  v53 = sub_22F7416D0();
  v55 = v54;
  v57 = v56;
  v58 = sub_22F1A26E0(a1);
  v184 = v41;
  v185 = v50;
  v186 = v29;
  v183 = v44;
  v182 = v179 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v53;
  v189 = v55;
  v187 = v47;
  v59 = v58;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v60 = v59;
  v61 = sub_22F1ED5B0(v59);

  v62 = v221;
  MusicCache.readCacherStatus(category:)(0xD000000000000014, 0x800000022F78E880, v221);
  v181 = v60;
  v63 = v188;
  v64 = sub_22F291068(v62, v61, v188);
  if (((v64 | v220) & 1) == 0)
  {
    sub_22F7416A0();
    (v223)(1, 0);

    v85 = v221;
LABEL_12:
    sub_22F120ADC(v85, &qword_27DAB1DA0, &unk_22F7771B0);
    return;
  }

  v220 = v57;
  v180 = 0x800000022F78E880;
  if (qword_2810AA188 != -1)
  {
    swift_once();
  }

  v66 = sub_22F73F9B0();
  __swift_project_value_buffer(v66, qword_2810AA190);
  v67 = v214;
  v68 = v213;
  v69 = v215;
  (v214[13])(v213, *MEMORY[0x277CC9998], v215);
  v70 = v211;
  sub_22F73F680();
  v71 = v212;
  sub_22F73F940();
  v72 = v219;
  v73 = *(v219 + 8);
  v74 = v70;
  v75 = v218;
  v211 = (v219 + 8);
  v73(v74, v218);
  (v67[1])(v68, v69);
  v76 = v71;
  v77 = (*(v72 + 48))(v71, 1, v75);
  v78 = v216;
  if (v77 == 1)
  {
    sub_22F120ADC(v71, &qword_27DAB0920, &qword_22F770B20);
    sub_22F291560();
    v79 = swift_allocError();
    *v80 = 2;
    swift_willThrow();

    sub_22F120ADC(v221, &qword_27DAB1DA0, &unk_22F7771B0);
    v65 = v79;
    (v223)(0, v79);

    return;
  }

  v214 = v61;
  v215 = v73;
  v81 = *(v72 + 32);
  v82 = v208;
  v81(v208, v76, v75);
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v75, qword_2810AA1B8);
  v84 = v207;
  static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(v210, v209, v82, v181, v83);
  v86 = v206;
  sub_22F740BD0();
  v87 = sub_22F22FB24(v86, 0);
  v88 = v221;
  v213 = 0;
  v212 = v87;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000014, v180, &v232);
  v89 = v185;
  sub_22F13BA9C(v88, v185, &qword_27DAB1DA0, &unk_22F7771B0);
  v90 = v219 + 16;
  v91 = *(v219 + 16);
  v91(v205, v210, v75);
  v179[0] = v91;
  v91(v78, v209, v75);
  sub_22F13BA9C(v89, v187, &qword_27DAB1DA0, &unk_22F7771B0);
  v92 = (*(v201 + 80) + 24) & ~*(v201 + 80);
  v184 = (v184 + v92 + 7) & 0xFFFFFFFFFFFFFFF8;
  v179[1] = v90;
  v93 = *(v90 + 64);
  v94 = (v93 + v184 + 8) & ~v93;
  v95 = (v186 + v93 + v94) & ~v93;
  v201 = (v186 + v95 + 7) & 0xFFFFFFFFFFFFFFF8;
  v186 = (v201 + 15) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v186 + 15) & 0xFFFFFFFFFFFFFFF8;
  v97 = swift_allocObject();
  *(v97 + 16) = v84;
  sub_22F1207AC(v89, v97 + v92, &qword_27DAB1DA0, &unk_22F7771B0);
  v98 = v181;
  *(v97 + v184) = v181;
  v81((v97 + v94), v205, v75);
  v81((v97 + v95), v216, v75);
  v99 = v209;
  v100 = v210;
  v101 = v220;
  *(v97 + v201) = v220;
  v102 = v217;
  *(v97 + v186) = v217;
  v206 = v97;
  v103 = (v97 + v96);
  v104 = v222;
  *v103 = v223;
  v103[1] = v104;
  v216 = v98;
  v220 = v101;

  v217 = v102;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError();
    sub_22F294A3C(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v105 = v75;
    v207 = swift_allocError();
    v107 = v106;
    v108 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v109 = v179[0];
    (v179[0])(v107, v100, v75);
    v109(v107 + v108, v99, v75);
    swift_storeEnumTagMultiPayload();
    v110 = v183;
    sub_22F13BA9C(v187, v183, &qword_27DAB1DA0, &unk_22F7771B0);
    v111 = v200;
    v112 = (*(v198 + 48))(v110, 1, v200);
    v113 = v203;
    v114 = v202;
    if (v112 == 1)
    {
      sub_22F120ADC(v110, &qword_27DAB1DA0, &unk_22F7771B0);
      v115 = v219;
      v116 = v197;
      (*(v219 + 56))(v197, 1, 1, v105);
    }

    else
    {
      v116 = v197;
      sub_22F13BA9C(v110 + *(v111 + 20), v197, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v110, type metadata accessor for CacherStatus);
      v115 = v219;
    }

    v139 = v180;
    v140 = *(v111 + 24);
    v141 = v199;
    sub_22F73F680();
    (*(v115 + 56))(&v141[v140], 0, 1, v105);
    *v141 = 0xD000000000000014;
    *(v141 + 1) = v139;
    sub_22F1207AC(v116, &v141[*(v111 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v142 = *(v204 + 8);
    v143 = v142(v114, v113);
    v144 = *&v216[OBJC_IVAR___PGMusicCache_managedObjectContext];
    MEMORY[0x28223BE20](v143);
    v179[-4] = 0xD000000000000014;
    v179[-3] = v139;
    v179[-2] = v145;
    v179[-1] = v141;
    v146 = v213;
    sub_22F7417A0();
    if (v146)
    {
      v130 = v187;
      v147 = v210;
      v148 = v209;
      sub_22F2949DC(v141, type metadata accessor for CacherStatus);
      v149 = v146;
      (v223)(0, v146);

      sub_22F1D210C(&v232);

      v150 = v218;
LABEL_34:
      sub_22F120ADC(v130, &qword_27DAB1DA0, &unk_22F7771B0);
      v178 = v215;
      (v215)(v148, v150);
      v178(v147, v150);
      v178(v208, v150);
      v85 = v221;
      goto LABEL_12;
    }

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v142(v114, v113);
    sub_22F7416A0();
    v177 = v207;
    (v223)(0, v207);

    sub_22F1D210C(&v232);

    sub_22F2949DC(v199, type metadata accessor for CacherStatus);
    v150 = v218;
    v130 = v187;
LABEL_33:
    v147 = v210;
    v148 = v209;
    goto LABEL_34;
  }

  sub_22F741740();
  v117 = v203;
  v118 = v202;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v119 = v204 + 8;
  v120 = *(v204 + 8);
  v120(v118, v117);
  v122 = *(v212 + 3);
  v121 = *(v212 + 4);
  v224[0] = v232;
  v123 = *(v212 + 5);
  v124 = *(v212 + 6);
  v125 = *(v212 + 7);
  v126 = *(v212 + 8);
  aBlock = v122;
  v227 = v121;
  v228 = v123;
  v229 = v124;
  v230 = v125;
  v231 = v126;
  v224[1] = v233;
  v224[2] = v234;
  v225 = v235;

  v127 = v196;
  v128 = v213;
  sub_22F3E29C0(v209, v224, v196);
  v129 = v194;
  if (v128)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v120(v118, v117);
    v130 = v187;
    v131 = v182;
    sub_22F13BA9C(v187, v182, &qword_27DAB1DA0, &unk_22F7771B0);
    v132 = v200;
    v133 = (*(v198 + 48))(v131, 1, v200);
    v134 = v119;
    v213 = v128;
    v207 = v120;
    if (v133 == 1)
    {
      v135 = v128;
      sub_22F120ADC(v131, &qword_27DAB1DA0, &unk_22F7771B0);
      v136 = v219;
      v137 = v192;
      v138 = v218;
      (*(v219 + 56))(v192, 1, 1, v218);
LABEL_30:
      v167 = v132[6];
      v168 = v132;
      v169 = v195;
      sub_22F73F680();
      (*(v136 + 56))(&v169[v167], 0, 1, v138);
      *v169 = 0xD000000000000014;
      v170 = v180;
      *(v169 + 1) = v180;
      sub_22F1207AC(v137, &v169[v168[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v171 = v203;
      v172 = v207;
      v173 = (v207)(v118, v203);
      v204 = v134;
      v174 = *&v216[OBJC_IVAR___PGMusicCache_managedObjectContext];
      MEMORY[0x28223BE20](v173);
      v179[-4] = 0xD000000000000014;
      v179[-3] = v170;
      v179[-2] = v175;
      v179[-1] = v169;
      sub_22F7417A0();
      v176 = v213;
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v172(v118, v171);
      sub_22F7416A0();
      (v223)(0, v176);

      sub_22F1D210C(&v232);

      sub_22F2949DC(v195, type metadata accessor for CacherStatus);
      v150 = v218;
      goto LABEL_33;
    }

LABEL_29:
    v137 = v192;
    sub_22F13BA9C(v131 + v132[5], v192, &qword_27DAB0920, &qword_22F770B20);
    v166 = v128;
    sub_22F2949DC(v131, type metadata accessor for CacherStatus);
    v138 = v218;
    v136 = v219;
    goto LABEL_30;
  }

  v151 = v127;

  v152 = swift_allocObject();
  *(v152 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v152 + 24) = 36;
  *(v152 + 32) = 2;
  *(v152 + 40) = sub_22F2915B4;
  *(v152 + 48) = v206;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v120(v118, v117);
  v223 = *(v212 + 9);
  v153 = v191;
  v154 = v193;
  (*(v191 + 16))(v129, v151, v193);
  v155 = (*(v153 + 80) + 16) & ~*(v153 + 80);
  v156 = (v190 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v156 + 63) & 0xFFFFFFFFFFFFFFF8;
  v222 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v118 + 39) & 0xFFFFFFFFFFFFFFF8;
  v131 = swift_allocObject();
  (*(v153 + 32))(v131 + v155, v129, v154);
  v158 = v131 + v156;
  v159 = v233;
  v160 = v234;
  *v158 = v232;
  *(v158 + 16) = v159;
  *(v158 + 32) = v160;
  *(v158 + 48) = v235;
  *(v131 + v118) = v212;
  v161 = v131 + v222;
  *v161 = "MusicKitClient HTTP Request";
  *(v161 + 8) = 27;
  *(v161 + 16) = 2;
  v162 = v189;
  *(v131 + v157) = v189;
  v163 = (v131 + ((v157 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v163 = sub_22F2915B8;
  v163[1] = v152;
  v128 = swift_allocObject();
  *(v128 + 2) = sub_22F233FAC;
  *(v128 + 3) = v131;
  v230 = sub_22F2915BC;
  v231 = v128;
  aBlock = MEMORY[0x277D85DD0];
  v227 = 1107296256;
  v228 = sub_22F2280B0;
  v229 = &block_descriptor_17;
  v164 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v232, v224);

  v165 = v162;

  dispatch_sync(v223, v164);

  _Block_release(v164);

  sub_22F1D210C(&v232);

  (*(v153 + 8))(v196, v193);
  v132 = &unk_22F7771B0;
  sub_22F120ADC(v187, &qword_27DAB1DA0, &unk_22F7771B0);
  v134 = v218;
  v130 = v215;
  (v215)(v209, v218);
  v130(v210, v134);
  v130(v208, v134);
  sub_22F120ADC(v221, &qword_27DAB1DA0, &unk_22F7771B0);

  LOBYTE(v152) = swift_isEscapingClosureAtFileLocation();

  if (v152)
  {
    __break(1u);
    goto LABEL_29;
  }
}

uint64_t static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v101 = a4;
  v88 = a1;
  v111 = sub_22F73F990();
  v104 = *(v111 - 8);
  v8 = *(v104 + 64);
  MEMORY[0x28223BE20](v111);
  v98 = &v88 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v97 = &v88 - v12;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  v13 = *(v121 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v121);
  v16 = &v88 - v15;
  v100 = sub_22F73F270();
  v116 = *(v100 - 8);
  v17 = *(v116 + 8);
  MEMORY[0x28223BE20](v100);
  v99 = &v88 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F73F690();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v103 = &v88 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v112 = &v88 - v24;
  MEMORY[0x28223BE20](v25);
  v102 = &v88 - v26;
  MEMORY[0x28223BE20](v27);
  v29 = &v88 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v88 - v31;
  MEMORY[0x28223BE20](v33);
  v114 = &v88 - v34;
  sub_22F73F550();
  v113 = a2;
  sub_22F73F570();
  v119 = *(v20 + 16);
  v120 = v20 + 16;
  v119(v32, a3, v19);
  v35 = sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578]);
  v96 = a5;
  v95 = v35;
  v36 = sub_22F740DB0();
  v94 = v20;
  if (v36)
  {
    v37 = v103;
LABEL_3:
    sub_22F73F550();
    sub_22F294A3C(&qword_2810AC700, MEMORY[0x277CC9578]);
    v38 = v113;
    v39 = sub_22F740DE0();
    v40 = *(v94 + 8);
    v40(v37, v19);
    if (v39 & 1) != 0 || (sub_22F73F570(), v41 = sub_22F740DE0(), v40(v37, v19), (v41))
    {
      sub_22F291560();
      swift_allocError();
      *v42 = 2;
      swift_willThrow();
      v40(v32, v19);
      v40(v38, v19);
      return (v40)(v114, v19);
    }

    else
    {
      v40(v32, v19);
      return (*(v94 + 32))(v88, v114, v19);
    }
  }

  else
  {
    v117 = (v20 + 8);
    v109 = (v20 + 32);
    v108 = v104 + 104;
    v107 = *MEMORY[0x277CC9968];
    v106 = v104 + 8;
    v93 = (v116 + 8);
    v90 = (v20 + 48);
    v92 = xmmword_22F771340;
    v110 = v32;
    v44 = v118;
    v89 = v29;
    v91 = v19;
    while (1)
    {
      v45 = v102;
      static MusicForTimeBackfillCacher.dateBlock(forMomentStartDate:)(v29, v102, v32);
      if (v44)
      {
        v83 = *v117;
        (*v117)(v32, v19);
        v83(v113, v19);
        return (v83)(v114, v19);
      }

      v118 = 0;
      v46 = *v117;
      v47 = v29;
      v48 = v45;
      v49 = v113;
      (*v117)(v113, v19);
      v50 = v114;
      v116 = v46;
      (v46)(v114, v19);
      v51 = *v109;
      (*v109)(v50, v47, v19);
      v105 = v51;
      v51(v49, v48, v19);
      v52 = v112;
      sub_22F73F5A0();
      started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(v50, v52);
      v54 = *(started + 16);
      if (v54)
      {
        v55 = *(v94 + 80);
        v115 = started;
        v56 = started + ((v55 + 32) & ~v55);
        v57 = *(v94 + 72);
        v58 = MEMORY[0x277D84F90];
        do
        {
          v59 = *(v121 + 48);
          strcpy(v16, "MusicForTime");
          v16[13] = 0;
          *(v16 + 7) = -5120;
          v119(&v16[v59], v56, v19);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v58 = sub_22F13F8D8(0, v58[2] + 1, 1, v58);
          }

          v61 = v58[2];
          v60 = v58[3];
          if (v61 >= v60 >> 1)
          {
            v58 = sub_22F13F8D8(v60 > 1, v61 + 1, 1, v58);
          }

          v58[2] = v61 + 1;
          sub_22F1207AC(v16, v58 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v61, &qword_27DAB1DC0, &qword_22F7711C0);
          v56 += v57;
          --v54;
        }

        while (v54);
      }

      else
      {

        v58 = MEMORY[0x277D84F90];
      }

      v62 = v118;
      v63 = v110;
      v64 = v104;
      v65 = [objc_opt_self() ignoreProgress];
      v115 = MusicCache.readSongSources(identifiersAndDates:progressReporter:)(v58, v65);
      if (v62)
      {

        v84 = v116;
        (v116)(v112, v19);
        v84(v63, v19);
        v84(v113, v19);
        return (v84)(v114, v19);
      }

      v118 = 0;

      (v116)(v112, v19);
      if (qword_2810AA188 != -1)
      {
        swift_once();
      }

      v66 = sub_22F73F9B0();
      __swift_project_value_buffer(v66, qword_2810AA190);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E50, &unk_22F77F310);
      v67 = *(v64 + 72);
      v68 = (*(v64 + 80) + 32) & ~*(v64 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = v92;
      v70 = v64;
      v71 = *(v64 + 104);
      v72 = v111;
      v71(v69 + v68, v107, v111);
      sub_22F3D97CC(v69);
      swift_setDeallocating();
      v73 = *(v70 + 8);
      v73(v69 + v68, v72);
      swift_deallocClassInstance();
      v74 = v99;
      v75 = v113;
      sub_22F73F850();

      v76 = sub_22F73F1C0();
      v78 = v77;
      result = (*v93)(v74, v100);
      if (v78)
      {

        sub_22F291560();
        swift_allocError();
        *v85 = 2;
        swift_willThrow();
        v86 = v91;
        v87 = v116;
        (v116)(v110, v91);
        v87(v75, v86);
        return (v87)(v114, v86);
      }

      if (__OFSUB__(v76, 1))
      {
        break;
      }

      if (*(v115 + 16) != v76 - 1)
      {

        v32 = v110;
        v37 = v103;
        v19 = v91;
        goto LABEL_3;
      }

      v79 = v98;
      v80 = v111;
      v71(v98, v107, v111);
      v81 = v97;
      v32 = v110;
      sub_22F73F940();
      v73(v79, v80);
      v19 = v91;
      result = (*v90)(v81, 1, v91);
      if (result == 1)
      {
        goto LABEL_32;
      }

      (v116)(v32, v19);

      v105(v32, v81, v19);
      v82 = sub_22F740DB0();
      v44 = v118;
      v37 = v103;
      v29 = v89;
      if (v82)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  return result;
}

uint64_t sub_22F28ECB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11)
{
  v80 = a7;
  v81 = a8;
  v79 = a6;
  v92 = a5;
  v86 = a4;
  v85 = a2;
  v82 = a1;
  v89 = a11;
  v90 = a10;
  v83 = a9;
  v11 = type metadata accessor for Song();
  v78 = *(v11 - 8);
  v12 = *(v78 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_22F740AD0();
  v88 = *(v91 - 8);
  v15 = *(v88 + 64);
  MEMORY[0x28223BE20](v91);
  v87 = &v77 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v77 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v77 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = &v77 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v77 - v32;
  v34 = type metadata accessor for CacherStatus(0);
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  v38 = &v77 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v84 = (&v77 - v40);
  if (v85)
  {
    sub_22F13BA9C(v86, v20, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v35 + 48))(v20, 1, v34) == 1)
    {
      sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
      v41 = sub_22F73F690();
      (*(*(v41 - 8) + 56))(v27, 1, 1, v41);
    }

    else
    {
      sub_22F13BA9C(&v20[*(v34 + 20)], v27, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v20, type metadata accessor for CacherStatus);
    }

    v46 = v92;
    v47 = v87;
    v48 = *(v34 + 24);
    sub_22F73F680();
    v49 = sub_22F73F690();
    (*(*(v49 - 8) + 56))(&v38[v48], 0, 1, v49);
    *v38 = 0xD000000000000014;
    *(v38 + 1) = 0x800000022F78E880;
    sub_22F1207AC(v27, &v38[*(v34 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v50 = v91;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v51 = *(v88 + 8);
    v52 = v51(v47, v50);
    v53 = *(v46 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v52);
    *(&v77 - 4) = 0xD000000000000014;
    *(&v77 - 3) = 0x800000022F78E880;
    *(&v77 - 2) = v46;
    *(&v77 - 1) = v38;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v51(v47, v91);
    sub_22F7416A0();
    v90(0, v82);
    return sub_22F2949DC(v38, type metadata accessor for CacherStatus);
  }

  else
  {
    sub_22F73F680();
    v42 = sub_22F73F690();
    v43 = *(*(v42 - 8) + 56);
    v43(v33, 0, 1, v42);
    sub_22F13BA9C(v86, v23, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v35 + 48))(v23, 1, v34) == 1)
    {
      sub_22F120ADC(v23, &qword_27DAB1DA0, &unk_22F7771B0);
      v44 = v43;
      v45 = v30;
      v44(v30, 1, 1, v42);
    }

    else
    {
      v45 = v30;
      sub_22F13BA9C(&v23[*(v34 + 24)], v30, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v23, type metadata accessor for CacherStatus);
    }

    v55 = v87;
    v54 = v88;
    v56 = v84;
    *v84 = 0xD000000000000014;
    *(v56 + 8) = 0x800000022F78E880;
    v88 = 0x800000022F78E880;
    sub_22F1207AC(v33, v56 + *(v34 + 20), &qword_27DAB0920, &qword_22F770B20);
    sub_22F1207AC(v45, v56 + *(v34 + 24), &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v57 = *(v54 + 8);
    v58 = v91;
    v87 = v57;
    v59 = (v57)(v55, v91);
    v60 = *(v92 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    MEMORY[0x28223BE20](v59);
    *(&v77 - 4) = 0xD000000000000014;
    *(&v77 - 3) = v88;
    *(&v77 - 2) = v61;
    *(&v77 - 1) = v56;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v87)(v55, v58);
    v62 = v82;
    v63 = *(v82 + 16);
    v64 = MEMORY[0x277D84F90];
    if (v63)
    {
      v96 = MEMORY[0x277D84F90];
      sub_22F146514(0, v63, 0);
      v64 = v96;
      v65 = (v62 + 32);
      v66 = v78;
      do
      {
        memcpy(v95, v65, sizeof(v95));
        memcpy(v94, v65, sizeof(v94));
        sub_22F18C4EC(v95, &v93);
        Song.init(_:)(v94);
        v96 = v64;
        v68 = *(v64 + 16);
        v67 = *(v64 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_22F146514(v67 > 1, v68 + 1, 1);
          v64 = v96;
        }

        *(v64 + 16) = v68 + 1;
        sub_22F294B10(v14, v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v68, type metadata accessor for Song);
        v65 += 296;
        --v63;
      }

      while (v63);
      v56 = v84;
    }

    v69 = _s11PhotosGraph26MusicForTimeBackfillCacherC6filterySayAA4SongVGAGFZ_0(v64);
    sub_22F293974(v69, v79, v80, v92, v81);

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v71 = sub_22F740B90();
    __swift_project_value_buffer(v71, qword_2810B4DC0);

    v72 = sub_22F740B70();
    v73 = sub_22F7415C0();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v95[0] = v75;
      *v74 = 134218242;
      v76 = *(v64 + 16);

      *(v74 + 4) = v76;

      *(v74 + 12) = 2080;
      *(v74 + 14) = sub_22F145F20(0x726F46636973754DLL, 0xEC000000656D6954, v95);
      _os_log_impl(&dword_22F0FC000, v72, v73, "Saving %ld of type %s", v74, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2319033A0](v75, -1, -1);
      MEMORY[0x2319033A0](v74, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F2949DC(v56, type metadata accessor for CacherStatus);
    return (v90)(1, 0);
  }
}

uint64_t static MusicForTimeBackfillCacher.dateBlock(forMomentStartDate:)(uint64_t a1, uint64_t a2, char *a3)
{
  v96 = a2;
  v95 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v101 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v108 = &v93 - v8;
  MEMORY[0x28223BE20](v9);
  v107 = &v93 - v10;
  v102 = sub_22F73F690();
  v122 = *(v102 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x28223BE20](v102);
  v94 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v110 = &v93 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = (&v93 - v16);
  MEMORY[0x28223BE20](v18);
  v124 = &v93 - v19;
  MEMORY[0x28223BE20](v20);
  v99 = &v93 - v21;
  MEMORY[0x28223BE20](v22);
  v116 = &v93 - v23;
  MEMORY[0x28223BE20](v24);
  v106 = &v93 - v25;
  MEMORY[0x28223BE20](v26);
  v105 = &v93 - v27;
  v28 = sub_22F73F990();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v32 = &v93 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33 - 8);
  v36 = &v93 - v35;
  v37 = sub_22F73F090();
  i = *(v37 - 8);
  v39 = i[8];
  MEMORY[0x28223BE20](v37);
  v109 = &v93 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v98 = &v93 - v42;
  if (qword_2810AA188 != -1)
  {
LABEL_30:
    swift_once();
  }

  v43 = sub_22F73F9B0();
  v44 = __swift_project_value_buffer(v43, qword_2810AA190);
  v45 = *MEMORY[0x277CC9988];
  v118 = *(v29 + 104);
  v119 = v29 + 104;
  v118(v32, v45, v28);
  v100 = a3;
  v121 = v44;
  sub_22F73F820();
  v46 = *(v29 + 8);
  v128 = v32;
  v120 = v29 + 8;
  v117 = v46;
  v46(v32, v28);
  if ((i[6])(v36, 1, v37) == 1)
  {
    sub_22F120ADC(v36, &qword_27DAB40E0, &unk_22F779200);
    sub_22F291560();
    swift_allocError();
    *v47 = 2;
    return swift_willThrow();
  }

  else
  {
    v115 = v28;
    v103 = v17;
    v49 = v98;
    (i[4])(v98, v36, v37);
    v93 = i;
    v50 = i[2];
    v112 = v37;
    v50(v109, v49, v37);
    v125 = 0;
    v113 = *MEMORY[0x277CC9998];
    v114 = (v122 + 8);
    v127 = (v122 + 48);
    v97 = v122 + 32;
    v129 = (v122 + 32);
    v104 = (v122 + 56);
    v126 = MEMORY[0x277D84F90];
    v32 = v116;
    for (i = v102; ; i = a3)
    {
      v51 = v128;
      v52 = v115;
      v118(v128, v113, v115);
      sub_22F73F060();
      v29 = v108;
      sub_22F73F940();
      v36 = v114;
      a3 = *v114;
      (*v114)(v32, i);
      v53 = v51;
      v54 = v29;
      v117(v53, v52);
      v28 = *v127;
      v55 = (*v127)(v29, 1, i);
      v111 = a3;
      if (v55 == 1)
      {
        break;
      }

      v37 = v129;
      v29 = v106;
      v123 = *v129;
      (v123)(v106, v54, i);
      sub_22F73F030();
      sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578]);
      v56 = sub_22F740DB0();
      (a3)(v32, i);
      if (v56)
      {
        v17 = v126;
        if (__OFADD__(v125++, 1))
        {
          goto LABEL_29;
        }

        v58 = v107;
        v59 = v29;
        a3 = v102;
        v29 = v123;
        (v123)(v107, v59, v102);
        v60 = 0;
      }

      else
      {
        (a3)(v29, i);
        v60 = 1;
        v58 = v107;
        v17 = v126;
        a3 = i;
        v29 = v123;
      }

      (*v104)(v58, v60, 1, a3);
      i = v28;
      v61 = (v28)(v58, 1, a3);
      v62 = v112;
      if (v61 == 1)
      {
        goto LABEL_17;
      }

      v63 = v105;
      (v29)(v105, v58, a3);
      (v29)(v124, v63, a3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F13E15C(0, v17[2] + 1, 1, v17);
      }

      v32 = v116;
      v65 = v17[2];
      v64 = v17[3];
      if (v65 >= v64 >> 1)
      {
        v17 = sub_22F13E15C(v64 > 1, v65 + 1, 1, v17);
      }

      v17[2] = v65 + 1;
      v66 = (*(v122 + 80) + 32) & ~*(v122 + 80);
      v126 = v17;
      (v29)(v17 + v66 + *(v122 + 72) * v65, v124, a3);
    }

    sub_22F120ADC(v29, &qword_27DAB0920, &qword_22F770B20);
    v58 = v107;
    (*v104)(v107, 1, 1, i);
    v62 = v112;
    v17 = v126;
    a3 = i;
    i = v28;
    v37 = v129;
LABEL_17:
    sub_22F120ADC(v58, &qword_27DAB0920, &qword_22F770B20);
    sub_22F73F550();
    sub_22F73F570();
    v67 = v17[2];
    v97 = v97 & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v36 = v128;
    v124 = v67;
    if (v67)
    {
      v28 = 0;
      v125 = v122 + 16;
      while (v28 < v17[2])
      {
        v68 = v110;
        v69 = v17 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v28;
        v70 = v103;
        v123 = *(v122 + 16);
        (v123)(v103, v69, a3);
        v71 = v36;
        v72 = v115;
        v118(v71, v113, v115);
        v73 = v101;
        sub_22F73F940();
        v117(v128, v72);
        if ((i)(v73, 1, a3) == 1)
        {

          sub_22F120ADC(v73, &qword_27DAB0920, &qword_22F770B20);
          sub_22F291560();
          swift_allocError();
          *v89 = 2;
          swift_willThrow();
          v90 = v93[1];
          v91 = v112;
          v90(v109, v112);
          v92 = v111;
          (v111)(v70, a3);
          (v92)(v96, a3);
          (v92)(v99, a3);
          return (v90)(v98, v91);
        }

        v108 = *v129;
        (v108)(v68, v73, a3);
        v29 = v116;
        sub_22F73F800();
        sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578]);
        v32 = v100;
        v74 = sub_22F740DB0();
        v75 = v111;
        (v111)(v29, a3);
        if ((v74 & 1) == 0)
        {
          sub_22F73F800();
          v76 = sub_22F73F5D0();
          (v75)(v29, a3);
          if (v76)
          {

            v77 = v103;
            sub_22F73F800();
            v78 = v99;
            (v75)(v99, a3);
            v79 = a3;
            v80 = v108;
            (v108)(v78, v29, v79);
            v81 = v110;
            (v123)(v94, v110, v102);
            sub_22F73F560();
            v82 = v93[1];
            v83 = v112;
            v82(v109, v112);
            (v75)(v81, v102);
            (v75)(v77, v102);
            v84 = v96;
            (v75)(v96, v102);
            v85 = v83;
            v86 = v80;
            v82(v98, v85);
            v80(v84, v29, v102);
            a3 = v102;
            return v86(v95, v99, a3);
          }
        }

        ++v28;
        (v75)(v110, a3);
        (v75)(v103, a3);
        v62 = v112;
        v37 = v129;
        v17 = v126;
        v36 = v128;
        if (v124 == v28)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_25:
    v87 = v37;
    v88 = v93[1];
    v88(v98, v62);
    v88(v109, v62);

    v86 = *v87;
    return v86(v95, v99, a3);
  }
}

uint64_t sub_22F2907FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[1];
  v55 = *v2;
  v47 = v2[2];
  v54 = v2[3];
  v46 = v2[4];
  v58 = v2[5];
  v5 = v2[7];
  v45 = v2[6];
  v57 = v2[8];
  v44 = *(v2 + 72);
  v43 = v2[10];
  v41 = *(v2 + 23);
  v42 = *(v2 + 88);
  v40 = *(v2 + 96);
  v6 = v2[14];
  v7 = v2[16];
  v38 = v2[15];
  v39 = v2[13];
  v53 = v2[17];
  v52 = v2[18];
  v8 = type metadata accessor for Song();
  sub_22F13BA9C(v2 + v8[15], a2 + v8[15], &qword_27DAB0C90, &unk_22F785B70);
  v9 = v2 + v8[26];
  v10 = *(v9 + 8);
  v50 = *v9;
  v51 = *(v9 + 16);
  v49 = *(v9 + 24);
  v48 = *(v9 + 32);
  v11 = *(v9 + 44);
  v12 = *(v9 + 40);
  sub_22F13BA9C(v2 + v8[16], a2 + v8[16], &qword_27DAB0920, &qword_22F770B20);
  v14 = v8[18];
  v13 = v8[19];
  v16 = v8[20];
  v15 = v8[21];
  v18 = v8[22];
  v17 = v8[23];
  v19 = v8[25];
  *(a2 + 16) = v47;
  *(a2 + 32) = v46;
  *(a2 + 48) = v45;
  *(a2 + 72) = v44;
  *(a2 + 80) = v43;
  *(a2 + 88) = v42;
  *(a2 + 92) = v41;
  *(a2 + 96) = v40;
  *(a2 + 104) = v39;
  *(a2 + 112) = v6;
  *(a2 + 120) = v38;
  *(a2 + 128) = v7;
  *a2 = v55;
  *(a2 + 8) = v4;
  *(a2 + 24) = v54;
  *(a2 + 40) = v58;
  *(a2 + 56) = v5;
  *(a2 + 64) = v57;
  *(a2 + 136) = v53;
  *(a2 + 144) = v52;
  v20 = a2 + v8[26];
  *(v20 + 44) = v11;
  v21 = (v2 + v14);
  *(v20 + 40) = v12;
  v22 = *v21;
  *v20 = v50;
  *(v20 + 8) = v10;
  *(v20 + 16) = v51;
  *(v20 + 24) = v49;
  *(v20 + 32) = v48;
  *(a2 + v8[17]) = a1;
  v23 = a2 + v8[18];
  *v23 = v22;
  v24 = v2 + v13;
  *(v23 + 4) = *(v21 + 4);
  v25 = a2 + v8[19];
  *v25 = *v24;
  v26 = v2 + v16;
  *(v25 + 4) = *(v24 + 4);
  v27 = a2 + v8[20];
  *v27 = *v26;
  v28 = v2 + v15;
  *(v27 + 4) = *(v26 + 4);
  v29 = a2 + v8[21];
  *v29 = *v28;
  v30 = v2 + v18;
  *(v29 + 4) = *(v28 + 4);
  v31 = a2 + v8[22];
  *v31 = *v30;
  v32 = v2 + v17;
  *(v31 + 4) = *(v30 + 4);
  v33 = a2 + v8[23];
  *v33 = *v32;
  *(v33 + 4) = *(v32 + 4);
  v34 = (v2 + v19);
  *(a2 + v8[24]) = 0;
  v35 = (a2 + v8[25]);
  v36 = v34[1];
  *v35 = *v34;
  v35[1] = v36;

  sub_22F13BB04(v50, v10, v51);
}

id MusicForTimeBackfillCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTimeBackfillCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTimeBackfillCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v38 = sub_22F73F990();
  v4 = *(v38 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v38);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v40 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v29 - v18;
  v36 = *(v13 + 16);
  v37 = v13 + 16;
  v36(&v29 - v18, a1, v12, v17);
  v34 = sub_22F294A3C(&qword_2810AC708, MEMORY[0x277CC9578]);
  v35 = a2;
  if (sub_22F740DB0())
  {
    v20 = MEMORY[0x277D84F90];
    (*(v13 + 8))(v19, v12);
    return v20;
  }

  else
  {
    v39 = v13 + 32;
    v33 = *MEMORY[0x277CC9968];
    v31 = (v4 + 8);
    v32 = (v4 + 104);
    v30 = (v13 + 48);
    v20 = MEMORY[0x277D84F90];
    v21 = (v13 + 8);
    while (1)
    {
      (v36)(v40, v19, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_22F13E15C(0, *(v20 + 2) + 1, 1, v20);
      }

      v23 = *(v20 + 2);
      v22 = *(v20 + 3);
      if (v23 >= v22 >> 1)
      {
        v20 = sub_22F13E15C(v22 > 1, v23 + 1, 1, v20);
      }

      *(v20 + 2) = v23 + 1;
      v24 = *(v13 + 32);
      v24(&v20[((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v23], v40, v12);
      if (qword_2810AA188 != -1)
      {
        swift_once();
      }

      v25 = sub_22F73F9B0();
      __swift_project_value_buffer(v25, qword_2810AA190);
      v26 = v38;
      (*v32)(v7, v33, v38);
      sub_22F73F940();
      (*v31)(v7, v26);
      result = (*v30)(v11, 1, v12);
      if (result == 1)
      {
        break;
      }

      v28 = *v21;
      (*v21)(v19, v12);
      v24(v19, v11, v12);
      if (sub_22F740DB0())
      {
        v28(v19, v12);
        return v20;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22F291068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a3;
  v42 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v40 - v6;
  v8 = sub_22F73F690();
  v44 = *(v8 - 8);
  v45 = v8;
  v9 = *(v44 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v43 = &v40 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v40 - v15;
  v17 = type metadata accessor for CacherStatus(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v16, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    v22 = &qword_27DAB1DA0;
    v23 = &unk_22F7771B0;
    v24 = v16;
LABEL_5:
    sub_22F120ADC(v24, v22, v23);
    LOBYTE(v27) = 1;
    return v27 & 1;
  }

  sub_22F294B10(v16, v21, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v21[*(v17 + 20)], v7, &qword_27DAB0920, &qword_22F770B20);
  v26 = v44;
  v25 = v45;
  if ((*(v44 + 48))(v7, 1, v45) == 1)
  {
    sub_22F2949DC(v21, type metadata accessor for CacherStatus);
    v22 = &qword_27DAB0920;
    v23 = &qword_22F770B20;
    v24 = v7;
    goto LABEL_5;
  }

  v29 = v43;
  (*(v26 + 32))(v43, v7, v25);
  sub_22F1E3F74(v49);
  memcpy(v50, v49, 0x121uLL);
  if (sub_22F1EDAB8(v50) == 1)
  {
    GEOLocationCoordinate2DMake(v50);
    memcpy(v47, v49, 0x121uLL);
    v27 = *GEOLocationCoordinate2DMake(v47);
    v48 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v26 + 8))(v29, v25);
    sub_22F2949DC(v21, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake(v50);
    sub_22F120ADC(v49, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v47, v49, 0x121uLL);
    v30 = GEOLocationCoordinate2DMake(v47);
    v31 = *(v30 + 144);
    v32 = *(v30 + 176);
    v33 = *(v30 + 208);
    v27 = v40;
    sub_22F73F680();
    sub_22F73F590();
    v35 = v34;
    v36 = v29;
    v37 = *(v26 + 8);
    v37(v27, v25);
    LOBYTE(v27) = v41;
    v38 = v46;
    sub_22F7416A0();
    if (v38)
    {
      v37(v36, v25);
      sub_22F2949DC(v21, type metadata accessor for CacherStatus);
    }

    else
    {
      if (v33)
      {
        v39 = v31;
      }

      else
      {
        v39 = v32;
      }

      LOBYTE(v27) = v39 < v35;
      v37(v36, v25);
      sub_22F2949DC(v21, type metadata accessor for CacherStatus);
    }
  }

  return v27 & 1;
}

unint64_t sub_22F291560()
{
  result = qword_27DAB2EF8;
  if (!qword_27DAB2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2EF8);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2915DC(void *a1, int a2, void *a3, void *a4, NSObject *a5)
{
  v217 = a4;
  LODWORD(v228) = a2;
  v208 = type metadata accessor for CacherStatus(0);
  v207 = *(v208 - 8);
  v8 = *(v207 + 64);
  MEMORY[0x28223BE20](v208);
  v204 = &v186 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v213 = &v186 - v11;
  v203 = sub_22F73EEC0();
  v200 = *(v203 - 8);
  v12 = *(v200 + 64);
  MEMORY[0x28223BE20](v203);
  v199 = &v186 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = v13;
  MEMORY[0x28223BE20](v14);
  v206 = &v186 - v15;
  v212 = sub_22F740AD0();
  v211 = *(v212 - 8);
  v16 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v210 = &v186 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F740C00();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v216 = &v186 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_22F73F990();
  v224 = *(v227 - 1);
  v21 = v224[8];
  MEMORY[0x28223BE20](v227);
  v223 = &v186 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v201 = &v186 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v205 = &v186 - v27;
  MEMORY[0x28223BE20](v28);
  v222 = &v186 - v29;
  v226 = sub_22F73F690();
  v225 = *(v226 - 8);
  v30 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v215 = &v186 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v214 = &v186 - v32;
  MEMORY[0x28223BE20](v33);
  v220 = &v186 - v34;
  MEMORY[0x28223BE20](v35);
  v219 = &v186 - v36;
  MEMORY[0x28223BE20](v37);
  v221 = &v186 - v38;
  MEMORY[0x28223BE20](v39);
  v218 = &v186 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v209 = *(v41 - 8);
  v42 = *(v209 + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v202 = &v186 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v186 - v44;
  MEMORY[0x28223BE20](v46);
  v48 = &v186 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v186 - v50;
  MEMORY[0x28223BE20](v52);
  v229 = &v186 - v53;
  v231 = swift_allocObject();
  *(v231 + 16) = a5;
  v230 = a5;
  _Block_copy(a5);
  v54 = a3;
  v55 = sub_22F7416D0();
  v57 = v56;
  v59 = v58;
  v60 = sub_22F1A26E0(a1);
  v192 = v42;
  v193 = v51;
  v191 = v30;
  v190 = v45;
  v195 = v54;
  v196 = v55;
  v197 = v57;
  v194 = v48;
  v61 = v60;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v62 = v61;
  v63 = sub_22F1ED5B0(v61);

  v64 = v229;
  MusicCache.readCacherStatus(category:)(0xD000000000000014, 0x800000022F78E880, v229);
  v189 = v62;
  v65 = v196;
  v66 = sub_22F291068(v64, v63, v196);
  if (((v66 | v228) & 1) == 0)
  {
    sub_22F7416A0();
    (v230[2].isa)(v230, 1, 0);

    v84 = v229;
LABEL_13:
    sub_22F120ADC(v84, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v188 = 0x800000022F78E880;
  if (qword_2810AA188 != -1)
  {
    swift_once();
  }

  v70 = sub_22F73F9B0();
  __swift_project_value_buffer(v70, qword_2810AA190);
  v71 = v224;
  v72 = v223;
  (v224[13])(v223, *MEMORY[0x277CC9998], v227);
  v73 = v221;
  sub_22F73F680();
  v74 = v222;
  sub_22F73F940();
  v75 = v225;
  v76 = *(v225 + 8);
  v77 = v73;
  v78 = v226;
  v228 = v225 + 8;
  v76(v77, v226);
  (v71[1])(v72, v227);
  if ((*(v75 + 48))(v74, 1, v78) == 1)
  {
    sub_22F120ADC(v74, &qword_27DAB0920, &qword_22F770B20);
    sub_22F291560();
    v79 = swift_allocError();
    *v80 = 2;
    swift_willThrow();

    sub_22F120ADC(v229, &qword_27DAB1DA0, &unk_22F7771B0);
    v67 = v79;
    v68 = sub_22F73F360();
    (v230[2].isa)(v230, 0, v68);
  }

  v224 = v63;
  v227 = v76;
  v81 = *(v75 + 32);
  v82 = v218;
  v81(v218, v74, v78);
  if (qword_2810AA1B0 != -1)
  {
    swift_once();
  }

  v83 = __swift_project_value_buffer(v78, qword_2810AA1B8);
  static MusicForTimeBackfillCacher.nextTimeSpan(forDate:cache:minimumValidQueryDate:)(v219, v220, v82, v189, v83);
  v85 = v216;
  sub_22F740BD0();
  v86 = sub_22F22FB24(v85, 0);
  v87 = v229;
  v216 = 0;
  v222 = v86;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000014, v188, &v240);
  v88 = v193;
  sub_22F13BA9C(v87, v193, &qword_27DAB1DA0, &unk_22F7771B0);
  v89 = v225 + 16;
  v90 = *(v225 + 16);
  v90(v214, v219, v78);
  v187 = v90;
  v90(v215, v220, v78);
  sub_22F13BA9C(v88, v194, &qword_27DAB1DA0, &unk_22F7771B0);
  v91 = (*(v209 + 80) + 24) & ~*(v209 + 80);
  v209 = (v192 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
  v192 = v89;
  v92 = *(v89 + 64);
  v93 = (v92 + v209 + 8) & ~v92;
  v94 = (v191 + v92 + v93) & ~v92;
  v95 = (v191 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v223 = ((v95 + 15) & 0xFFFFFFFFFFFFFFF8);
  v96 = (v223 + 15) & 0xFFFFFFFFFFFFFFF8;
  v97 = v81;
  v98 = swift_allocObject();
  *(v98 + 16) = v217;
  v99 = v98 + v91;
  v100 = v226;
  sub_22F1207AC(v88, v99, &qword_27DAB1DA0, &unk_22F7771B0);
  v101 = v189;
  *(v98 + v209) = v189;
  v97(v98 + v93, v214, v100);
  v97(v98 + v94, v215, v100);
  v102 = v219;
  v103 = v59;
  *(v98 + v95) = v59;
  v104 = v195;
  *&v223[v98] = v195;
  v221 = v98;
  v105 = (v98 + v96);
  v106 = v220;
  v107 = v231;
  *v105 = sub_22F1E088C;
  v105[1] = v107;
  v223 = v101;
  v217 = v103;

  v215 = v104;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError();
    sub_22F294A3C(&qword_27DAB2948, type metadata accessor for MusicKitClientError);
    v214 = swift_allocError();
    v109 = v108;
    v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v111 = v187;
    v187(v109, v102, v100);
    v111(v109 + v110, v106, v100);
    swift_storeEnumTagMultiPayload();
    v112 = v190;
    sub_22F13BA9C(v194, v190, &qword_27DAB1DA0, &unk_22F7771B0);
    v113 = v208;
    v114 = (*(v207 + 48))(v112, 1, v208);
    v115 = v211;
    v116 = v210;
    if (v114 == 1)
    {
      sub_22F120ADC(v112, &qword_27DAB1DA0, &unk_22F7771B0);
      v117 = v225;
      v118 = v205;
      (*(v225 + 56))(v205, 1, 1, v100);
      v119 = v213;
    }

    else
    {
      v118 = v205;
      sub_22F13BA9C(v112 + *(v113 + 20), v205, &qword_27DAB0920, &qword_22F770B20);
      sub_22F2949DC(v112, type metadata accessor for CacherStatus);
      v119 = v213;
      v117 = v225;
    }

    v140 = *(v113 + 24);
    sub_22F73F680();
    (*(v117 + 56))(&v119[v140], 0, 1, v100);
    *v119 = 0xD000000000000014;
    v141 = v188;
    *(v119 + 1) = v188;
    sub_22F1207AC(v118, &v119[*(v113 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v142 = *(v115 + 8);
    v143 = v212;
    v144 = v142(v116, v212);
    v145 = *&v223[OBJC_IVAR___PGMusicCache_managedObjectContext];
    MEMORY[0x28223BE20](v144);
    *(&v186 - 4) = 0xD000000000000014;
    *(&v186 - 3) = v141;
    *(&v186 - 2) = v146;
    *(&v186 - 1) = v119;
    v147 = v216;
    sub_22F7417A0();
    if (v147)
    {
      v139 = v220;
      v148 = v224;
      v183 = v226;
      v184 = v219;
      sub_22F2949DC(v213, type metadata accessor for CacherStatus);
      v149 = v147;
      v150 = sub_22F73F360();
      (v230[2].isa)(v230, 0, v150);

      sub_22F1D210C(&v240);
    }

    else
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v142(v116, v143);
      sub_22F7416A0();
      v181 = v214;
      v182 = sub_22F73F360();
      (v230[2].isa)(v230, 0, v182);

      sub_22F1D210C(&v240);

      sub_22F2949DC(v213, type metadata accessor for CacherStatus);
      v139 = v220;
      v183 = v226;
      v184 = v219;
    }

LABEL_34:
    sub_22F120ADC(v194, &qword_27DAB1DA0, &unk_22F7771B0);
    v180 = v227;
    (v227)(v139, v183);
    v180(v184, v183);
    v180(v218, v183);
    v84 = v229;
    goto LABEL_13;
  }

  sub_22F741740();
  v120 = v211;
  v121 = v210;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v122 = *(v120 + 8);
  v123 = v212;
  v122(v121, v212);
  v125 = *(v222 + 3);
  v124 = *(v222 + 4);
  v232[0] = v240;
  v126 = *(v222 + 5);
  v127 = *(v222 + 6);
  v128 = *(v222 + 7);
  v129 = *(v222 + 8);
  aBlock = v125;
  v235 = v124;
  v236 = v126;
  v237 = v127;
  v238 = v128;
  v239 = v129;
  v232[1] = v241;
  v232[2] = v242;
  v233 = v243;

  v130 = v216;
  sub_22F3E29C0(v220, v232, v206);
  v131 = v194;
  if (v130)
  {

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v214 = v122;
    v122(v121, v123);
    v132 = v202;
    sub_22F13BA9C(v131, v202, &qword_27DAB1DA0, &unk_22F7771B0);
    v133 = v208;
    v134 = (*(v207 + 48))(v132, 1, v208);
    v216 = v130;
    if (v134 == 1)
    {
      v135 = v130;
      sub_22F120ADC(v132, &qword_27DAB1DA0, &unk_22F7771B0);
      v136 = v225;
      v137 = v201;
      v138 = v226;
      (*(v225 + 56))(v201, 1, 1, v226);
      v139 = v220;
LABEL_31:
      v171 = v133[6];
      v172 = v133;
      v173 = v204;
      sub_22F73F680();
      (*(v136 + 56))(&v173[v171], 0, 1, v138);
      *v173 = 0xD000000000000014;
      v174 = v188;
      *(v173 + 1) = v188;
      sub_22F1207AC(v137, &v173[v172[5]], &qword_27DAB0920, &qword_22F770B20);
      sub_22F741740();
      if (qword_2810A8E80 != -1)
      {
        swift_once();
      }

      sub_22F740AC0();
      sub_22F740A90();
      v175 = v214;
      v176 = (v214)(v121, v123);
      v177 = *&v223[OBJC_IVAR___PGMusicCache_managedObjectContext];
      MEMORY[0x28223BE20](v176);
      *(&v186 - 4) = 0xD000000000000014;
      *(&v186 - 3) = v174;
      *(&v186 - 2) = v178;
      *(&v186 - 1) = v173;
      sub_22F7417A0();
      v179 = v216;
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v175(v121, v123);
      sub_22F7416A0();
      v185 = sub_22F73F360();
      (v230[2].isa)(v230, 0, v185);

      sub_22F1D210C(&v240);

      sub_22F2949DC(v204, type metadata accessor for CacherStatus);
      v183 = v226;
      v184 = v219;
      goto LABEL_34;
    }

LABEL_30:
    v137 = v201;
    sub_22F13BA9C(v132 + v133[5], v201, &qword_27DAB0920, &qword_22F770B20);
    v170 = v130;
    sub_22F2949DC(v132, type metadata accessor for CacherStatus);
    v139 = v220;
    v138 = v226;
    v136 = v225;
    goto LABEL_31;
  }

  v151 = swift_allocObject();
  *(v151 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v151 + 24) = 36;
  *(v151 + 32) = 2;
  *(v151 + 40) = sub_22F294B8C;
  *(v151 + 48) = v221;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v122(v121, v123);
  v230 = *(v222 + 9);
  v152 = v200;
  v153 = v199;
  v154 = v203;
  (*(v200 + 16))(v199, v206, v203);
  v155 = (*(v152 + 80) + 16) & ~*(v152 + 80);
  v156 = (v198 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = (v156 + 63) & 0xFFFFFFFFFFFFFFF8;
  v225 = (v157 + 15) & 0xFFFFFFFFFFFFFFF8;
  v158 = (v157 + 39) & 0xFFFFFFFFFFFFFFF8;
  v121 = swift_allocObject();
  (*(v152 + 32))(v121 + v155, v153, v154);
  v159 = v121 + v156;
  v160 = v241;
  v161 = v242;
  *v159 = v240;
  *(v159 + 16) = v160;
  *(v159 + 32) = v161;
  *(v159 + 48) = v243;
  *(v121 + v157) = v222;
  v162 = v121 + v225;
  *v162 = "MusicKitClient HTTP Request";
  *(v162 + 8) = 27;
  *(v162 + 16) = 2;
  v163 = v197;
  *(v121 + v158) = v197;
  v164 = (v121 + ((v158 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v164 = sub_22F294B7C;
  v164[1] = v151;
  v130 = swift_allocObject();
  *(v130 + 2) = sub_22F294B80;
  *(v130 + 3) = v121;
  v238 = sub_22F294B84;
  v239 = v130;
  aBlock = MEMORY[0x277D85DD0];
  v235 = 1107296256;
  v236 = sub_22F2280B0;
  v237 = &block_descriptor_39;
  v165 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v240, v232);

  v166 = v163;

  dispatch_sync(v230, v165);

  _Block_release(v165);

  sub_22F1D210C(&v240);

  v167 = *(v152 + 8);
  v132 = v152 + 8;
  v167(v206, v203);
  v133 = &unk_22F7771B0;
  sub_22F120ADC(v194, &qword_27DAB1DA0, &unk_22F7771B0);
  v168 = v226;
  v123 = v228;
  v169 = v227;
  (v227)(v220, v226);
  v169(v219, v168);
  v169(v218, v168);
  sub_22F120ADC(v229, &qword_27DAB1DA0, &unk_22F7771B0);

  LOBYTE(v151) = swift_isEscapingClosureAtFileLocation();

  if (v151)
  {
    __break(1u);
    goto LABEL_30;
  }

  return result;
}

uint64_t _s11PhotosGraph26MusicForTimeBackfillCacherC6filterySayAA4SongVGAGFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Song();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v42 = *(a1 + 16);
  if (!v42)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = 0;
  v36 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v41 = a1 + v36;
  v11 = *(v7 + 72);
  v12 = MEMORY[0x277D84F90];
  v35 = v2;
  v34 = v5;
  v37 = v11;
  v38 = &v34 - v8;
  do
  {
    result = sub_22F15CAA0(v41 + v11 * v10, v9);
    v14 = *&v9[*(v2 + 68)];
    if (v14)
    {
      v43 = v12;
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 0;
        v17 = v14 + 32;
        v18 = v15 - 1;
        v19 = MEMORY[0x277D84F90];
        do
        {
          v20 = (v17 + 80 * v16);
          v21 = v16;
          while (1)
          {
            if (v21 >= *(v14 + 16))
            {
              __break(1u);
              return result;
            }

            v22 = v20[1];
            v23 = v20[2];
            v24 = v20[3];
            *&v48[9] = *(v20 + 57);
            v25 = *v20;
            v47 = v23;
            *v48 = v24;
            v45 = v25;
            v46 = v22;
            v16 = v21 + 1;
            if ((v48[24] & 1) == 0)
            {
              break;
            }

            v20 += 5;
            ++v21;
            if (v15 == v16)
            {
              goto LABEL_20;
            }
          }

          v39 = v18;
          v40 = v17;
          sub_22F13A7E4(&v45, v44);
          result = swift_isUniquelyReferenced_nonNull_native();
          v49 = v19;
          if ((result & 1) == 0)
          {
            result = sub_22F146494(0, *(v19 + 16) + 1, 1);
            v11 = v37;
            v19 = v49;
          }

          v18 = v39;
          v27 = *(v19 + 16);
          v26 = *(v19 + 24);
          v17 = v40;
          if (v27 >= v26 >> 1)
          {
            result = sub_22F146494((v26 > 1), v27 + 1, 1);
            v18 = v39;
            v17 = v40;
            v11 = v37;
            v19 = v49;
          }

          *(v19 + 16) = v27 + 1;
          v28 = (v19 + 80 * v27);
          v28[2] = v45;
          v29 = v46;
          v30 = v47;
          v31 = *v48;
          *(v28 + 89) = *&v48[9];
          v28[4] = v30;
          v28[5] = v31;
          v28[3] = v29;
          v2 = v35;
          v5 = v34;
        }

        while (v18 != v21);
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
      }

LABEL_20:
      if (*(v19 + 16))
      {
        v9 = v38;
        sub_22F2907FC(v19, v5);

        v12 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_22F13E558(0, v12[2] + 1, 1, v12);
        }

        v33 = v12[2];
        v32 = v12[3];
        if (v33 >= v32 >> 1)
        {
          v12 = sub_22F13E558(v32 > 1, v33 + 1, 1, v12);
        }

        sub_22F2949DC(v9, type metadata accessor for Song);
        v12[2] = v33 + 1;
        v11 = v37;
        sub_22F294B10(v5, v12 + v36 + v33 * v37, type metadata accessor for Song);
      }

      else
      {
        v9 = v38;
        sub_22F2949DC(v38, type metadata accessor for Song);

        v12 = v43;
      }
    }

    else
    {
      sub_22F2949DC(v9, type metadata accessor for Song);
    }

    ++v10;
  }

  while (v10 != v42);
  return v12;
}

uint64_t sub_22F293974(uint64_t a1, void *a2, uint64_t started, uint64_t a4, uint64_t a5)
{
  v92 = a5;
  v89 = a4;
  v103 = a1;
  v94 = sub_22F740AD0();
  v97 = *(v94 - 8);
  v7 = *(v97 + 64);
  MEMORY[0x28223BE20](v94);
  v93 = &v86 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Song();
  v101 = *(v9 - 8);
  v10 = *(v101 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = (&v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v15 = &v86 - v14;
  MEMORY[0x28223BE20](v16);
  v115 = &v86 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = (&v86 - v19);
  v21 = sub_22F73F690();
  v106 = *(v21 - 8);
  v22 = *(v106 + 64);
  MEMORY[0x28223BE20](v21);
  v107 = &v86 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v114 = &v86 - v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v86 - v27;
  MEMORY[0x28223BE20](v29);
  v118 = &v86 - v30;
  if (qword_2810A9168 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v116 = qword_2810A9170;
    started = _s11PhotosGraph26MusicForTimeBackfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, started);
    v31 = sub_22F14FAE0(MEMORY[0x277D84F90]);
    v95 = *(started + 16);
    if (!v95)
    {
      break;
    }

    v32 = 0;
    v109 = *(v103 + 16);
    v33 = started + ((*(v106 + 80) + 32) & ~*(v106 + 80));
    v105 = v106 + 16;
    v113 = (v106 + 32);
    v117 = (v106 + 8);
    a2 = MEMORY[0x277D84F90];
    v104 = v9;
    v87 = v12;
    v86 = v15;
    v111 = v20;
    v98 = started;
    v88 = v33;
    while (1)
    {
      if (v32 >= *(started + 16))
      {
        goto LABEL_45;
      }

      v102 = v31;
      v34 = *(v106 + 72);
      v96 = v32;
      v90 = v34;
      v99 = *(v106 + 16);
      v99(v118, v33 + v34 * v32, v21);
      if (v109)
      {
        break;
      }

LABEL_23:
      v99(v107, v118, v21);
      v43 = a2[2];
      v44 = sub_22F294A3C(&qword_2810A99B0, type metadata accessor for Song);
      v119 = MEMORY[0x231901000](v43, v9, v44);
      v45 = a2[2];
      if (v45)
      {
        v46 = a2 + ((*(v101 + 80) + 32) & ~*(v101 + 80));
        v47 = *(v101 + 72);
        v31 = v87;
        v15 = v86;
        do
        {
          sub_22F15CAA0(v46, v31);
          sub_22F10C40C(v15, v31);
          sub_22F2949DC(v15, type metadata accessor for Song);
          v46 += v47;
          --v45;
        }

        while (v45);

        v20 = v111;
      }

      else
      {
      }

      v48 = v102;
      v49 = v119;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v119 = v48;
      v51 = sub_22F1230FC(v107);
      v53 = *(v48 + 16);
      v54 = (v52 & 1) == 0;
      v55 = __OFADD__(v53, v54);
      v56 = v53 + v54;
      if (v55)
      {
        __break(1u);
        goto LABEL_48;
      }

      v57 = v52;
      if (*(v48 + 24) < v56)
      {
        sub_22F129770(v56, isUniquelyReferenced_nonNull_native);
        v51 = sub_22F1230FC(v107);
        if ((v57 & 1) != (v58 & 1))
        {
          goto LABEL_50;
        }

LABEL_33:
        v31 = v119;
        if (v57)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v61 = v51;
      sub_22F13685C();
      v51 = v61;
      v31 = v119;
      if (v57)
      {
LABEL_34:
        v59 = v31[7];
        v60 = *(v59 + 8 * v51);
        *(v59 + 8 * v51) = v49;

        goto LABEL_38;
      }

LABEL_36:
      v31[(v51 >> 6) + 8] |= 1 << v51;
      v62 = v51;
      v99((v31[6] + v51 * v90), v107, v21);
      *(v31[7] + 8 * v62) = v49;
      v63 = v31[2];
      v55 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v55)
      {
        __break(1u);
LABEL_50:
        result = sub_22F7420C0();
        __break(1u);
        return result;
      }

      v31[2] = v64;
LABEL_38:
      v9 = v104;
      started = v98;
      v15 = v96 + 1;
      v12 = *v117;
      (*v117)(v107, v21);
      v12(v118, v21);
      v32 = v15;
      v33 = v88;
      a2 = MEMORY[0x277D84F90];
      if (v15 == v95)
      {
        goto LABEL_39;
      }
    }

    v12 = 0;
    v110 = (*(v101 + 80) + 32) & ~*(v101 + 80);
    v15 = (v103 + v110);
    v112 = *(v101 + 72);
    v100 = (v103 + v110);
    while (1)
    {
      sub_22F15CAA0(&v15[v112 * v12], v20);
      started = *(v20 + *(v9 + 68));
      if (!started)
      {
        sub_22F2949DC(v20, type metadata accessor for Song);
        goto LABEL_8;
      }

      v108 = v12;
      v15 = *(started + 16);

      if (v15)
      {
        break;
      }

LABEL_7:
      v20 = v111;
      sub_22F2949DC(v111, type metadata accessor for Song);

      v9 = v104;
      v12 = v108;
      v15 = v100;
LABEL_8:
      v12 = (v12 + 1);
      if (v12 == v109)
      {
        goto LABEL_23;
      }
    }

    v9 = 0;
    v20 = (started + 40);
    while (v9 < *(started + 16))
    {
      v31 = v21;
      v36 = *(v20 - 1);
      v35 = *v20;

      v37 = sub_22F740DF0();

      v12 = [v116 dateFromString_];

      if (!v12)
      {

        sub_22F291560();
        swift_allocError();
        *v70 = 2;
        swift_willThrow();
        sub_22F2949DC(v111, type metadata accessor for Song);
        return (*v117)(v118, v31);
      }

      v38 = v114;
      sub_22F73F640();

      v39 = v38;
      v21 = v31;
      (*v113)(v28, v39, v31);
      if (sub_22F73F630())
      {
        sub_22F15CAA0(v111, v115);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E558(0, a2[2] + 1, 1, a2);
        }

        v41 = a2[2];
        v40 = a2[3];
        v12 = (v41 + 1);
        if (v41 >= v40 >> 1)
        {
          a2 = sub_22F13E558(v40 > 1, v41 + 1, 1, a2);
        }

        (*v117)(v28, v31);
        a2[2] = v12;
        v42 = a2 + v110 + v41 * v112;
        v21 = v31;
        sub_22F294B10(v115, v42, type metadata accessor for Song);
      }

      else
      {
        (*v117)(v28, v31);
      }

      ++v9;
      v20 += 10;
      if (v15 == v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_39:

  sub_22F741740();
  v15 = v94;
  v49 = v97;
  v20 = v93;
  if (qword_2810A8E80 != -1)
  {
LABEL_48:
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v67 = *(v49 + 8);
  v65 = v49 + 8;
  v66 = v67;
  v67(v20, v15);
  v68 = v91;
  sub_22F741690();
  if (v68)
  {
  }

  v97 = v65;
  v71 = sub_22F7416E0();
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v118 = &v86;
  v78 = *(v89 + OBJC_IVAR___PGMusicCache_managedObjectContext);
  MEMORY[0x28223BE20](v71);
  *(&v86 - 14) = v31;
  strcpy(&v86 - 104, "MusicForTime");
  *(&v86 - 91) = 0;
  *(&v86 - 45) = -5120;
  *(&v86 - 11) = v79;
  *(&v86 - 10) = 0;
  *(&v86 - 9) = 0;
  *(&v86 - 8) = 0xD000000000000014;
  *(&v86 - 7) = 0x800000022F78E880;
  v81 = v80;
  *(&v86 - 6) = v80;
  *(&v86 - 10) = 16843008;
  *(&v86 - 4) = v73;
  *(&v86 - 3) = v82;
  *(&v86 - 2) = v83;
  sub_22F7417A0();

  sub_22F741730();
  v84 = v81;
  v85 = v93;
  sub_22F740AC0();
  sub_22F740A90();

  return v66(v85, v94);
}

unint64_t sub_22F294554()
{
  result = qword_27DAB2F00;
  if (!qword_27DAB2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F00);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_22F73F690();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = v0 + v3;
  v10 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v10 - 8) + 48))(v0 + v3, 1, v10))
  {
    v11 = *(v9 + 8);

    v23 = *(v10 + 20);
    v24 = *(v6 + 48);
    if (!v24(v9 + v23, 1, v5))
    {
      (*(v6 + 8))(v9 + v23, v5);
    }

    v12 = *(v10 + 24);
    if (!v24(v9 + v12, 1, v5))
    {
      (*(v6 + 8))(v9 + v12, v5);
    }
  }

  v13 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + v7 + 8) & ~v7;
  v15 = (v8 + v7 + v14) & ~v7;
  v16 = (v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF8;
  v19 = v2 | v7;

  v20 = *(v6 + 8);
  v20(v0 + v14, v5);
  v20(v0 + v15, v5);

  v21 = *(v0 + v18 + 8);

  return MEMORY[0x2821FE8E8](v0, v18 + 16, v19 | 7);
}

uint64_t sub_22F294868(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22F73F690() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22F28ECB0(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), (v2 + v10), v2 + v12, *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F2949DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F294A3C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22F294A84()
{
  if (*(v0 + 91))
  {
    v1 = 0x1000000;
  }

  else
  {
    v1 = 0;
  }

  if (*(v0 + 90))
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  if (*(v0 + 89))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  sub_22F19D660(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), v3 | *(v0 + 88) | v2 | v1, *(v0 + 96), *(v0 + 104), *(v0 + 112));
}

uint64_t sub_22F294B10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F294B90(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v13[6] = *MEMORY[0x277D85DE8];
  v13[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v13[3] = v13;
  v13[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v7 = &v13[-1] - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v7, v6);
    v8 = sub_22F288380(v7, v5, v3, a2);
  }

  else
  {
    v11 = swift_slowAlloc();
    v8 = sub_22F288124(v11, v5, sub_22F2993C4);

    MEMORY[0x2319033A0](v11, -1, -1);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

id sub_22F294D30(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771EB0;
  *(v4 + 32) = a2;
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D22C38]);
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v7 = sub_22F741160();

  v8 = [v5 initWithArray_];

  v9 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v10 = v8;
  v11 = sub_22F741160();
  v12 = sub_22F741160();
  v13 = [v9 initWithName:0 rowLabels:v11 columnLabels:v12 matrix:v10];

  if (!v13)
  {
    sub_22F297A34();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x800000022F797890;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return v13;
}

id sub_22F294EF4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22F771EB0;
  v2 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v3) = 1008981770;
  *(v1 + 32) = [v2 initWithFloat_];
  *(v0 + 32) = v1;
  v4 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v5 = sub_22F741160();

  v6 = [v4 initWithArray_];

  v7 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v8 = v6;
  v9 = sub_22F741160();
  v10 = sub_22F741160();
  v11 = [v7 initWithName:0 rowLabels:v9 columnLabels:v10 matrix:v8];

  if (!v11)
  {
    sub_22F297A34();
    swift_allocError();
    *v12 = 0xD000000000000011;
    *(v12 + 8) = 0x800000022F7978F0;
    *(v12 + 16) = 0;
    swift_willThrow();
  }

  return v11;
}

void sub_22F2950D8(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [a1 matrix];
  v7 = [v6 columns];

  v8 = [objc_opt_self() vectorRepeatingFloat:v7 count:0.0];
  v10 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_49;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 >= 1)
  {
LABEL_3:
    v50 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_22F741A00() < 1)
      {
        return;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    if (v10)
    {
      v12 = sub_22F741A00();
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v45 = a2;
    v46 = v11;
    v47 = v8;
    if (!v12)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2319016F0](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v13 = *(a2 + 32);
    }

    v14 = v13;
    v15 = [v13 photoLibrary];

    if (!v15)
    {
      goto LABEL_56;
    }

    v16 = [v15 librarySpecificFetchOptions];

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22F771340;
      v18 = *MEMORY[0x277CD9AA8];
      *(v17 + 32) = sub_22F740E20();
      *(v17 + 40) = v19;
      v20 = v16;
      v21 = sub_22F741160();

      [v20 setFetchPropertySets_];

      v49 = v20;
      [v20 setWantsIncrementalChangeDetails_];
    }

    else
    {
LABEL_15:
      v49 = 0;
    }

    v22 = 0;
    a2 = a3 & 0xFFFFFFFFFFFFFF8;
    v23 = a3 & 0xC000000000000001;
    v8 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
    for (i = a3 & 0xC000000000000001; ; v23 = i)
    {
      while (1)
      {
        while (1)
        {
          if (v50)
          {
            if (v22 == sub_22F741A00())
            {
LABEL_46:
              *&v9 = v46;
              [v47 vectorByDividingByScalar_];

              return;
            }
          }

          else if (v22 == *(a2 + 16))
          {
            goto LABEL_46;
          }

          if (v23)
          {
            v24 = MEMORY[0x2319016F0](v22, a3);
            v10 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v22 >= *(a2 + 16))
            {
              goto LABEL_48;
            }

            v24 = *(a3 + 8 * v22 + 32);
            v10 = v22 + 1;
            if (__OFADD__(v22, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v11 = sub_22F741A00();
              if (v11 < 1)
              {
                return;
              }

              goto LABEL_3;
            }
          }

          v25 = v24;
          v26 = [v25 v8[150]];
          if (!v26)
          {
            goto LABEL_55;
          }

          v27 = v26;

          v28 = [v5 indexOfRowWithLabel_];
          if (v28 != sub_22F73EE70())
          {
            break;
          }

          ++v22;
        }

        v29 = a3;
        v30 = v8;
        v31 = v5;
        v32 = [objc_opt_self() fetchAssetsInAssetCollection:v25 options:v49];
        v33 = [v32 fetchedObjects];

        if (v33)
        {
          break;
        }

        v5 = v31;
        v8 = v30;
LABEL_33:
        a3 = v29;
        v23 = i;
        ++v22;
      }

      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v34 = sub_22F741180();

      if (v34 >> 62)
      {
        v35 = sub_22F741A00();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v31;
      if (v35 < 1)
      {
        v8 = v30;

        goto LABEL_33;
      }

      v36 = sub_22F151DF4(v34);

      if ((v36 & 0xC000000000000001) != 0)
      {
        if (v36 >= 0)
        {
          v36 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v37 = sub_22F741A00();
        v36 = sub_22F10FD34(v36, v37);
      }

      v38 = sub_22F294B90(v45, v36);
      if ((v38 & 0xC000000000000001) != 0)
      {
        v39 = sub_22F741A00();
      }

      else
      {
        v39 = *(v38 + 16);
      }

      v40 = [v31 matrix];
      v41 = [v40 row_];

      *&v42 = v39;
      v43 = [v41 vectorByMultiplyingByScalar_];
      v44 = [v47 vectorByAddingVector_];

      v47 = v44;
      v22 = v10;
      v8 = v30;
      a3 = v29;
    }
  }
}

id sub_22F29564C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v27 - v7;
  v9 = [a1 universalDateInterval];
  if (v9)
  {
    v10 = v9;
    sub_22F73F020();

    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
  }

  else
  {
    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  sub_22F299354(v6, v8);
  sub_22F73F090();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_22F1EDFCC(v8);
  }

  else
  {
    sub_22F73F080();
    (*(v12 + 8))(v8, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v13 = swift_allocObject();
  v27 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F771EB0;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  *(v14 + 32) = sub_22F7417F0();
  *(v13 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v16 = sub_22F741160();

  v17 = [v15 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  *(v18 + 32) = sub_22F740E20();
  *(v18 + 40) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v21 = v17;
  v22 = sub_22F741160();
  v23 = sub_22F741160();

  v24 = [v20 initWithName:0 rowLabels:v22 columnLabels:v23 matrix:v21];

  if (!v24)
  {
    sub_22F297A34();
    swift_allocError();
    *v25 = 0xD000000000000019;
    *(v25 + 8) = 0x800000022F797940;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  return v24;
}

id sub_22F295A48(void *a1, float a2)
{
  v4 = MEMORY[0x277D84F90];
  v33 = MEMORY[0x277D84F90];
  v5 = &off_27888E000;
  v6 = [a1 columnLabels];
  if (v6)
  {
    v7 = v6;
    v4 = sub_22F741180();
  }

  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = (v4 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;

      v12 = sub_22F740DF0();

      v13 = [a1 indexOfColumnWithLabel_];

      [a1 floatAtRowIndex:0 columnIndex:v13];
      if (v14 > a2)
      {
        v15 = v14;
      }

      else
      {
        v15 = 0.0;
      }

      v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v17 = v15;
      [v16 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v32 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v9 += 2;
      --v8;
    }

    while (v8);
    v18 = v33;
    v5 = &off_27888E000;
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22F771340;
  *(v19 + 32) = v18;
  v20 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v21 = sub_22F741160();

  v22 = [v20 initWithArray_];

  v23 = [a1 v5[365]];
  if (v23)
  {
    v24 = v23;
    v25 = sub_22F741180();
  }

  else
  {
    v25 = 0;
  }

  v26 = v22;
  v27 = sub_22F741160();
  if (v25)
  {
    v28 = sub_22F741160();
  }

  else
  {
    v28 = 0;
  }

  v29 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v27 columnLabels:v28 matrix:v26];

  if (!v29)
  {
    sub_22F297A34();
    swift_allocError();
    *v30 = xmmword_22F781B40;
    *(v30 + 16) = 2;
    swift_willThrow();
  }

  return v29;
}

id sub_22F295D88(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v94 = *MEMORY[0x277D85DE8];
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MaestroMusicCurationFeatureExtractor -momentKeywordsDataFrame", 61, 2u, 0, 1, qword_2810B4E90, v93);
  v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v14) = 1060320051;
  v15 = [v13 initWithFloat_];
  v16 = sub_22F294D30(&unk_2843DB160, v15);
  if (v6)
  {
    goto LABEL_4;
  }

  v17 = v16;

  v18 = sub_22F294EF4();
  v15 = v18;
  v21 = [v17 dataFrameByAppendingColumnsOfDataFrame:v18 withName:0];
  if (!v21)
  {
    sub_22F297A34();
    swift_allocError();
    *v35 = 0xD000000000000011;
    *(v35 + 8) = 0x800000022F7978F0;
    *(v35 + 16) = 1;
    swift_willThrow();

LABEL_4:
    goto LABEL_6;
  }

  v90 = v15;
  v91 = v21;

  if (a5)
  {
    if (a3)
    {
      v22 = objc_opt_self();
      v92 = 0;
      v23 = v91;
      v24 = a5;
      v25 = a3;
      v26 = [v22 momentNodeFingerprintsDataFrameWithVersion:a4 forMomentNodes:v25 withGraph:v24 progressReporter:a6 error:&v92];
      if (v26)
      {
        v27 = v26;
        v89 = v24;
        v28 = v92;
        sub_22F2950D8(v27, a1, a2);
        v30 = v29;
        v31 = [v27 columnLabels];
        v32 = v25;
        if (v31)
        {
          v33 = v31;
          v34 = sub_22F741180();
        }

        else
        {
          v34 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
        v47 = swift_allocObject();
        *(v47 + 16) = xmmword_22F771340;
        v48 = [v30 array];
        sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
        v49 = sub_22F741180();

        *(v47 + 32) = v49;
        v50 = objc_allocWithZone(MEMORY[0x277D22C38]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
        v51 = sub_22F741160();

        v52 = [v50 initWithArray_];

        v53 = sub_22F741160();
        v88 = v30;
        if (v34)
        {
          v54 = sub_22F741160();
        }

        else
        {
          v54 = 0;
        }

        v55 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v53 columnLabels:v54 matrix:v52];

        if (v55)
        {
          v56 = v32;
          v57 = sub_22F29564C(v32);
          v58 = v23;
          v60 = v57;
          v61 = v56;
          v62 = [v55 dataFrameByAppendingColumnsOfDataFrame:v57 withName:0];
          if (v62)
          {
            v63 = v62;
            v64 = sub_22F295A48(v62, 0.4);
            v66 = v64;
            v67 = [v64 dataFrameByAppendingColumnsOfDataFrame:v58 withName:0];
            if (v67)
            {
              v68 = v67;

              v91 = v68;
              v69 = sub_22F741520();
              v87 = v63;
              v71 = v69;
              if (*(v69 + 16) && (v72 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v73 & 1) != 0))
              {
                v74 = *(*(v71 + 56) + 8 * v72);
              }

              else
              {
              }

              if (qword_2810A9460 != -1)
              {
                swift_once();
              }

              v75 = sub_22F740B90();
              __swift_project_value_buffer(v75, qword_2810B4D90);

              v76 = sub_22F740B70();
              v77 = sub_22F7415C0();

              if (os_log_type_enabled(v76, v77))
              {
                v86 = v58;
                v78 = swift_slowAlloc();
                v85 = swift_slowAlloc();
                v92 = v85;
                *v78 = 136315138;
                v83 = v77;
                v79 = sub_22F740CB0();
                log = v76;
                v81 = v80;

                v82 = sub_22F145F20(v79, v81, &v92);

                *(v78 + 4) = v82;
                _os_log_impl(&dword_22F0FC000, log, v83, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Extracted moment keywords:\n%s", v78, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v85);
                MEMORY[0x2319033A0](v85, -1, -1);
                MEMORY[0x2319033A0](v78, -1, -1);
              }

              else
              {
              }
            }

            else
            {

              sub_22F297A34();
              swift_allocError();
              *v70 = 0xD00000000000001BLL;
              *(v70 + 8) = 0x800000022F797890;
              *(v70 + 16) = 1;
              swift_willThrow();
            }
          }

          else
          {

            sub_22F297A34();
            swift_allocError();
            *v65 = 0xD000000000000019;
            *(v65 + 8) = 0x800000022F797940;
            *(v65 + 16) = 1;
            swift_willThrow();
          }
        }

        else
        {

          sub_22F297A34();
          swift_allocError();
          *v59 = 0xD000000000000023;
          *(v59 + 8) = 0x800000022F797910;
          *(v59 + 16) = 0;
          swift_willThrow();
        }
      }

      else
      {
        v46 = v92;

        sub_22F73F370();
        swift_willThrow();
      }
    }

    else
    {
      v40 = qword_2810A9460;
      v41 = a5;
      if (v40 != -1)
      {
        swift_once();
      }

      v42 = sub_22F740B90();
      __swift_project_value_buffer(v42, qword_2810B4D90);
      v43 = sub_22F740B70();
      v44 = sub_22F7415E0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22F0FC000, v43, v44, "[MemoriesMusic] [FeatureExtraction] No moment nodes available: using generic keyword", v45, 2u);
        MEMORY[0x2319033A0](v45, -1, -1);
      }
    }
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D90);
    v37 = sub_22F740B70();
    v38 = sub_22F7415E0();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_22F0FC000, v37, v38, "[MemoriesMusic] [FeatureExtraction] No graph available: using generic keyword", v39, 2u);
      MEMORY[0x2319033A0](v39, -1, -1);
    }
  }

LABEL_6:
  sub_22F1B2BBC(0);

  v19 = *MEMORY[0x277D85DE8];
  return v91;
}

id sub_22F296884(void *a1)
{
  if ([a1 memoryCategory] == 19 || objc_msgSend(a1, sel_memoryCategory) == 18)
  {
    v2 = [objc_opt_self() memoryLabelForCategory_];
    v3 = sub_22F740E20();
    v5 = v4;
  }

  else
  {
    v5 = 0xE700000000000000;
    v3 = 0x6E776F6E6B6E75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F771EB0;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  *(v7 + 32) = sub_22F7417F0();
  *(v6 + 32) = v7;
  v8 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v9 = sub_22F741160();

  v10 = [v8 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_22F771340;
  *(v11 + 32) = v3;
  *(v11 + 40) = v5;
  v12 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v13 = v10;
  v14 = sub_22F741160();
  v15 = sub_22F741160();

  v16 = [v12 initWithName:0 rowLabels:v14 columnLabels:v15 matrix:v13];

  if (!v16)
  {
    sub_22F297A34();
    swift_allocError();
    *v17 = 0xD000000000000018;
    *(v17 + 8) = 0x800000022F797870;
    *(v17 + 16) = 0;
    swift_willThrow();
  }

  return v16;
}

id sub_22F296B4C(void *a1, uint64_t a2, uint64_t a3)
{
  v71 = *MEMORY[0x277D85DE8];
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MaestroMusicCurationFeatureExtractor -memoryKeywordsDataFrame", 61, 2u, 0, 1, qword_2810B4E90, v70);
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771EB0;
  *(v6 + 32) = [a1 memoryFeatureNodes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F10, &unk_22F781B58);
  v7 = sub_22F741160();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771340;
  v9 = a1;
  v10 = [a1 uniqueMemoryIdentifier];
  v11 = sub_22F740E20();
  v13 = v12;

  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  v14 = sub_22F741160();

  v69 = 0;
  v15 = [v5 memoryFeatureNodesFingerprintsDataFrameWithVersion:228 forFeatureNodes:v7 uniqueMemoryIdentifiers:v14 withGraph:a2 progressReporter:a3 error:&v69];

  v16 = v69;
  if (!v15)
  {
    v24 = v69;
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_13;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771340;
  v18 = v16;
  v19 = [v9 uniqueMemoryIdentifier];
  v20 = sub_22F740E20();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  v23 = sub_22F296884(v9);
  if (v65)
  {

LABEL_13:
    sub_22F1B2BBC(0);

    goto LABEL_14;
  }

  v25 = v23;
  v26 = v9;

  v27 = [v15 dataFrameByAppendingColumnsOfDataFrame:v25 withName:0];
  if (!v27)
  {
    sub_22F297A34();
    swift_allocError();
    *v31 = 0xD000000000000018;
    *(v31 + 8) = 0x800000022F797870;
    *(v31 + 16) = 1;
    swift_willThrow();

    goto LABEL_13;
  }

  v28 = v27;

  v29 = v28;
  v30 = [v9 &selRef_writeToFile_atomically_ + 5];
  sub_22F740E20();

  v32 = sub_22F741540();

  v33 = [v32 vector];

  [v33 sum];
  v35 = v34;

  if (v35 == 0.0 || [v9 memoryCategory] == 9)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_22F771340;
    v37 = [v26 uniqueMemoryIdentifier];
    v38 = sub_22F740E20();
    v40 = v39;

    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v41 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v42) = 1.0;
    v43 = [v41 initWithFloat_];
    v46 = sub_22F294D30(v36, v43);

    v9 = [v29 dataFrameByAppendingColumnsOfDataFrame:v46 withName:0];
    if (!v9)
    {
      sub_22F297A34();
      swift_allocError();
      *v56 = 0xD00000000000001BLL;
      *(v56 + 8) = 0x800000022F797890;
      *(v56 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }
  }

  else
  {
    v9 = v29;
  }

  v47 = sub_22F741520();
  v48 = [v26 uniqueMemoryIdentifier];
  v49 = sub_22F740E20();
  v51 = v50;

  if (!*(v47 + 16))
  {

    goto LABEL_23;
  }

  v52 = sub_22F1229E8(v49, v51);
  v54 = v53;

  if ((v54 & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

  v55 = *(*(v47 + 56) + 8 * v52);

LABEL_24:
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v57 = sub_22F740B90();
  __swift_project_value_buffer(v57, qword_2810B4D90);

  v58 = sub_22F740B70();
  v59 = sub_22F7415C0();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v69 = v68;
    *v60 = 136315138;
    v61 = sub_22F740CB0();
    v66 = v59;
    v63 = v62;

    v64 = sub_22F145F20(v61, v63, &v69);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_22F0FC000, v58, v66, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Extracted memory keywords:\n%s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v68);
    MEMORY[0x2319033A0](v68, -1, -1);
    MEMORY[0x2319033A0](v60, -1, -1);
  }

  else
  {
  }

  sub_22F1B2BBC(0);

LABEL_14:
  v44 = *MEMORY[0x277D85DE8];
  return v9;
}

id sub_22F297324(void *a1, void *a2, float a3)
{
  v4 = v3;
  if (qword_2810A9BD0 == -1)
  {
    goto LABEL_2;
  }

LABEL_42:
  swift_once();
LABEL_2:
  sub_22F1B560C("MusicCurator - mergeMomentAndMemoryKeywordDataFrames", 52, 2u, 0, 1, qword_2810B4E90, v74);
  v7 = MEMORY[0x277D84F90];
  v73 = MEMORY[0x277D84F90];
  v8 = [a2 columnLabels];
  if (v8)
  {
    v9 = v8;
    v7 = sub_22F741180();
  }

  v10 = [a1 columnLabels];
  v67 = v4;
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F741180();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_22F1515F8(v7);

  v14 = sub_22F1515F8(v12);

  v15 = sub_22F144608(v14, v13);
  v16 = 0;
  v18 = v15 + 56;
  v17 = *(v15 + 56);
  v68 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v4 = (v19 + 63) >> 6;
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v70 = a2;
  if ((v20 & v17) != 0)
  {
    do
    {
LABEL_14:
      v25 = (*(v68 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v21)))));
      v26 = *v25;
      v27 = v25[1];

      v28 = sub_22F740DF0();
      v29 = [a2 indexOfColumnWithLabel_];

      if (v29 == sub_22F73EE70() || ([v70 floatAtRowIndex:0 columnIndex:v29], v31 = v30 * a3, (v30 * a3) <= 0.0))
      {
        v32 = sub_22F740DF0();
        v33 = [a1 indexOfColumnWithLabel_];

        v31 = 0.0;
        if (v33 != sub_22F73EE70())
        {
          [a1 floatAtRowIndex:0 columnIndex:v33];
          v31 = fmaxf(v34, 0.0);
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_22F13E1A8(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = sub_22F13E1A8((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = v26;
      *(v37 + 5) = v27;
      v38 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v39 = v31;
      [v38 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      v21 &= v21 - 1;
      sub_22F741220();
      v23 = v73;
      a2 = v70;
    }

    while (v21);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v24 >= v4)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v16;
    if (v21)
    {
      v16 = v24;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22F771340;
  *(v41 + 32) = v23;
  v42 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v43 = sub_22F741160();

  v44 = [v42 initWithArray_];

  v45 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v46 = v44;
  v47 = sub_22F741160();
  v48 = sub_22F741160();

  v49 = [v45 initWithName:0 rowLabels:v47 columnLabels:v48 matrix:v46];

  if (!v49)
  {
    sub_22F297A34();
    swift_allocError();
    *v51 = 0;
    *(v51 + 8) = 0;
    *(v51 + 16) = 2;
    swift_willThrow();
LABEL_39:

    goto LABEL_40;
  }

  v50 = sub_22F741520();
  if (v67)
  {
  }

  else
  {
    v52 = v50;
    if (*(v50 + 16) && (v53 = sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v54 & 1) != 0))
    {
      v55 = *(*(v52 + 56) + 8 * v53);
    }

    else
    {
    }
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v56 = sub_22F740B90();
  __swift_project_value_buffer(v56, qword_2810B4D90);

  v57 = sub_22F740B70();
  v58 = sub_22F7415C0();

  if (!os_log_type_enabled(v57, v58))
  {

    goto LABEL_39;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v72 = v60;
  *v59 = 136315138;
  v61 = sub_22F740CB0();
  v71 = v46;
  v62 = v49;
  v64 = v63;

  v65 = sub_22F145F20(v61, v64, &v72);
  v49 = v62;

  *(v59 + 4) = v65;
  _os_log_impl(&dword_22F0FC000, v57, v58, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Merged memory and moment keywords:\n%s", v59, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v60);
  MEMORY[0x2319033A0](v60, -1, -1);
  MEMORY[0x2319033A0](v59, -1, -1);

LABEL_40:
  sub_22F1B2BBC(0);

  return v49;
}

unint64_t sub_22F297A34()
{
  result = qword_27DAB2F08;
  if (!qword_27DAB2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F08);
  }

  return result;
}

id sub_22F297A88(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
  v3 = sub_22F14EB58(&unk_2843DB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0D90, &unk_22F771130);
  swift_arrayDestroy();
  v4 = &off_27888E000;
  v5 = [a1 columnLabels];
  if (v5)
  {
    v6 = v5;
    v2 = sub_22F741180();
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_22F740DF0();
      v12 = [a1 indexOfColumnWithLabel_];

      [a1 floatAtRowIndex:0 columnIndex:v12];
      v14 = v13;
      if (*(v3 + 16))
      {
        v15 = sub_22F1229E8(v9, v10);
        v17 = v16;

        if ((v17 & 1) != 0 && v14 > 0.0)
        {
          v14 = v14 * *(*(v3 + 56) + 4 * v15);
        }
      }

      else
      {
      }

      v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v19 = v14;
      [v18 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v20 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_22F7411C0();
      }

      sub_22F741220();
      v8 += 2;
      --v7;
    }

    while (v7);
    v21 = v40;

    v4 = &off_27888E000;
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F771340;
  *(v22 + 32) = v21;
  v23 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v24 = sub_22F741160();

  v25 = [v23 initWithArray_];

  v26 = [a1 v4[365]];
  if (v26)
  {
    v27 = v26;
    v28 = sub_22F741180();
  }

  else
  {
    v28 = 0;
  }

  v29 = v25;
  v30 = sub_22F741160();
  if (v28)
  {
    v31 = sub_22F741160();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v30 columnLabels:v31 matrix:v29];

  if (!v32)
  {
    v33 = [a1 name];
    if (v33)
    {
      v34 = v33;
      v35 = sub_22F740E20();
      v37 = v36;
    }

    else
    {
      v35 = 0;
      v37 = 0xE000000000000000;
    }

    sub_22F297A34();
    swift_allocError();
    *v38 = v35;
    *(v38 + 8) = v37;
    *(v38 + 16) = 0;
    swift_willThrow();
  }

  return v32;
}

id sub_22F297E7C(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v64 = MEMORY[0x277D84F90];
  v3 = sub_22F14F0AC(&unk_2843DC8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
  swift_arrayDestroy();
  v4 = [a1 columnLabels];
  if (v4)
  {
    v5 = v4;
    v2 = sub_22F741180();
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    v61 = v2;
    v7 = (v2 + 40);
    v8 = MEMORY[0x277D84F90];
    do
    {
      if (*(v3 + 16))
      {
        v10 = *(v7 - 1);
        v9 = *v7;

        sub_22F1229E8(v10, v9);
        v12 = v11;

        if ((v12 & 1) != 0 && (v13 = sub_22F740DF0(), v14 = [a1 indexOfColumnWithLabel_], v13, objc_msgSend(a1, sel_floatAtRowIndex_columnIndex_, 0, v14), v15 > 0.0) && *(v3 + 16))
        {
          v16 = sub_22F1229E8(v10, v9);
          v18 = v17;

          if (v18)
          {
            v19 = (*(v3 + 56) + 16 * v16);
            v21 = *v19;
            v20 = v19[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_22F13E1A8(0, *(v8 + 2) + 1, 1, v8);
            }

            v23 = *(v8 + 2);
            v22 = *(v8 + 3);
            if (v23 >= v22 >> 1)
            {
              v8 = sub_22F13E1A8((v22 > 1), v23 + 1, 1, v8);
            }

            *(v8 + 2) = v23 + 1;
            v24 = &v8[16 * v23];
            *(v24 + 4) = v21;
            *(v24 + 5) = v20;
          }
        }

        else
        {
        }
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v25 = [a1 columnLabels];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22F741180();

    v28 = *(v27 + 16);
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_29:

    v41 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v27 = MEMORY[0x277D84F90];
  v28 = *(MEMORY[0x277D84F90] + 16);
  if (!v28)
  {
    goto LABEL_29;
  }

LABEL_21:
  v61 = v27;
  v29 = (v27 + 40);
  do
  {
    v30 = *(v29 - 1);
    v31 = *v29;

    v32 = sub_22F740DF0();
    v33 = [a1 indexOfColumnWithLabel_];

    v34 = [a1 floatAtRowIndex:0 columnIndex:v33];
    v36 = v35;
    v63[0] = v30;
    v63[1] = v31;
    MEMORY[0x28223BE20](v34);
    v60[2] = v63;
    v37 = v62;
    LOBYTE(v30) = sub_22F1C0E04(sub_22F15A388, v60, v8);
    v62 = v37;

    if (v30)
    {
      v36 = 0.0;
    }

    v38 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v39 = v36;
    [v38 initWithFloat_];
    MEMORY[0x231900D00]();
    if (*((v64 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v64 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v40 = *((v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_22F7411C0();
    }

    sub_22F741220();
    v29 += 2;
    --v28;
  }

  while (v28);
  v41 = v64;

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22F771340;
  *(v42 + 32) = v41;
  v43 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v44 = sub_22F741160();

  v45 = [v43 initWithArray_];

  v46 = [a1 columnLabels];
  if (v46)
  {
    v47 = v46;
    v48 = sub_22F741180();
  }

  else
  {
    v48 = 0;
  }

  v49 = v45;
  v50 = sub_22F741160();
  if (v48)
  {
    v51 = sub_22F741160();
  }

  else
  {
    v51 = 0;
  }

  v52 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v50 columnLabels:v51 matrix:v49];

  if (v52)
  {
  }

  else
  {
    v53 = [a1 name];
    if (v53)
    {
      v54 = v53;
      v55 = sub_22F740E20();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0xE000000000000000;
    }

    sub_22F297A34();
    swift_allocError();
    *v58 = v55;
    *(v58 + 8) = v57;
    *(v58 + 16) = 0;
    swift_willThrow();
  }

  return v52;
}

uint64_t sub_22F29845C(void *a1)
{
  v1 = a1;
  v2 = [a1 matrix];
  v3 = [v1 columnLabels];
  v139 = v2;
  if (!v3)
  {
LABEL_22:
    if (qword_2810A9460 == -1)
    {
LABEL_23:
      v30 = sub_22F740B90();
      __swift_project_value_buffer(v30, qword_2810B4D90);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (!os_log_type_enabled(v31, v32))
      {
LABEL_26:

        return v1;
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = "[MemoriesMusic] [FeatureExtraction] Input DataFrame has empty columnLabels";
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v31, v32, v34, v33, 2u);
      v35 = v33;
      v2 = v139;
      MEMORY[0x2319033A0](v35, -1, -1);
      goto LABEL_26;
    }

LABEL_104:
    swift_once();
    goto LABEL_23;
  }

  v4 = v3;
  v5 = sub_22F741180();

  v6 = *(v5 + 2);
  if (!v6)
  {

    goto LABEL_22;
  }

  if (v6 != [v2 columns])
  {
    if (qword_2810A9460 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_29;
  }

  v7 = [v1 matrix];
  v8 = [v7 rows];

  if (v8 != 1)
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v45 = sub_22F740B90();
    __swift_project_value_buffer(v45, qword_2810B4D90);
    v31 = sub_22F740B70();
    v32 = sub_22F7415E0();
    if (!os_log_type_enabled(v31, v32))
    {
      goto LABEL_26;
    }

    v33 = swift_slowAlloc();
    *v33 = 0;
    v34 = "[MemoriesMusic] [FeatureExtraction] Keyword rewrite operation only valid for keywordDataFrame with single row";
    goto LABEL_25;
  }

  v126 = v1;
  v9 = *(v5 + 2);
  if (!v9)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F98];
    v14 = MEMORY[0x277D84F98];
LABEL_39:

    if (!*(v13 + 16))
    {

      v101 = v126;

      return v101;
    }

    v47 = v13 + 64;
    v48 = 1 << *(v13 + 32);
    v49 = -1;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    v2 = v49 & *(v13 + 64);
    v50 = (v48 + 63) >> 6;

    v51 = 0;
    v52 = &qword_2843DCA78;
    v128 = v13 + 64;
    v129 = v14;
    v127 = v50;
    v134 = v13;
    while (1)
    {
      while (1)
      {
        v138 = v12;
        if (!v2)
        {
          while (1)
          {
            v1 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              __break(1u);
              goto LABEL_103;
            }

            if (v1 >= v50)
            {
              break;
            }

            v2 = *(v47 + 8 * v1);
            v51 = (v51 + 1);
            if (v2)
            {
              goto LABEL_48;
            }
          }

          v93 = v12[2];
          v94 = MEMORY[0x277D84F90];
          if (v93)
          {
            v140 = MEMORY[0x277D84F90];
            sub_22F1464F4(0, v93, 0);
            v95 = v140;
            v96 = (v12 + 6);
            v97 = *(v140 + 16);
            v98 = v93;
            do
            {
              v99 = *v96;
              v100 = *(v140 + 24);
              if (v97 >= v100 >> 1)
              {
                sub_22F1464F4((v100 > 1), v97 + 1, 1);
              }

              *(v140 + 16) = v97 + 1;
              *(v140 + 4 * v97 + 32) = v99;
              v96 += 6;
              ++v97;
              --v98;
            }

            while (v98);
          }

          else
          {
            v95 = MEMORY[0x277D84F90];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F20, &unk_22F781B68);
          v102 = swift_allocObject();
          *(v102 + 16) = xmmword_22F771340;
          *(v102 + 32) = v95;
          v103 = objc_allocWithZone(sub_22F73FBB0());
          v104 = MEMORY[0x2318FF750](v102);
          v105 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

          if (v93)
          {
            sub_22F146454(0, v93, 0);
            v106 = v94;
            v107 = v138 + 5;
            do
            {
              v108 = *(v107 - 1);
              v109 = *v107;
              v111 = *(v106 + 16);
              v110 = *(v106 + 24);

              if (v111 >= v110 >> 1)
              {
                sub_22F146454((v110 > 1), v111 + 1, 1);
              }

              *(v106 + 16) = v111 + 1;
              v112 = v106 + 16 * v111;
              *(v112 + 32) = v108;
              *(v112 + 40) = v109;
              v107 += 3;
              --v93;
            }

            while (v93);
          }

          v113 = [v126 name];
          if (v113)
          {
            v114 = v113;
            v115 = sub_22F740E20();
            v117 = v116;
          }

          else
          {

            v115 = 0;
            v117 = 0xE000000000000000;
          }

          MEMORY[0x231900B10](v115, v117);

          v118 = objc_allocWithZone(MEMORY[0x277D22C08]);
          v119 = v105;
          v120 = sub_22F740DF0();
          v121 = sub_22F741160();
          v122 = sub_22F741160();

          v18 = [v118 initWithName:v120 rowLabels:v121 columnLabels:v122 matrix:v119];

          if (v18)
          {
          }

          else
          {
            sub_22F297A34();
            swift_allocError();
            *v123 = 0x6574746972776572;
            *(v123 + 8) = 0xE90000000000006ELL;
            *(v123 + 16) = 0;
            swift_willThrow();
          }

          return v18;
        }

        v1 = v51;
LABEL_48:
        v53 = __clz(__rbit64(v2)) | (v1 << 6);
        v54 = (*(v13 + 48) + 16 * v53);
        v55 = v54[1];
        v130 = *v54;
        v136 = *(*(v13 + 56) + 8 * v53);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
        v56 = sub_22F741DF0();
        v132 = v55;

        v57 = *v52;
        v5 = v52[1];
        v58 = v52;
        v59 = v52[2];
        v60 = v52[3];

        v61 = sub_22F1229E8(v57, v5);
        if (v62)
        {
          goto LABEL_105;
        }

        *(v56 + ((v61 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v61;
        v63 = (v56[6] + 16 * v61);
        *v63 = v57;
        v63[1] = v5;
        v64 = (v56[7] + 16 * v61);
        *v64 = v59;
        v64[1] = v60;
        v65 = v56[2];
        v66 = __OFADD__(v65, 1);
        v67 = v65 + 1;
        if (v66)
        {
          goto LABEL_106;
        }

        v56[2] = v67;
        v68 = qword_2843DCA98;
        v69 = off_2843DCAA0;
        v70 = qword_2843DCAA8;
        v5 = off_2843DCAB0;

        v71 = sub_22F1229E8(v68, v69);
        if (v72)
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_once();
LABEL_29:
          v37 = sub_22F740B90();
          __swift_project_value_buffer(v37, qword_2810B4D90);

          v38 = v2;
          v39 = sub_22F740B70();
          v40 = sub_22F7415E0();
          if (os_log_type_enabled(v39, v40))
          {
            v41 = swift_slowAlloc();
            *v41 = 134218240;
            v42 = v5;
            v43 = v1;
            v44 = *(v42 + 2);

            *(v41 + 4) = v44;

            *(v41 + 12) = 2048;
            *(v41 + 14) = [v38 columns];

            _os_log_impl(&dword_22F0FC000, v39, v40, "[MemoriesMusic] [FeatureExtraction] Column labels count (%ld) does not match matrix column count (%ld)", v41, 0x16u);
            MEMORY[0x2319033A0](v41, -1, -1);

            return v43;
          }

          swift_bridgeObjectRelease_n();
          return v1;
        }

        *(v56 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v71;
        v73 = (v56[6] + 16 * v71);
        *v73 = v68;
        v73[1] = v69;
        v74 = (v56[7] + 16 * v71);
        *v74 = v70;
        v74[1] = v5;
        v75 = v56[2];
        v66 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v66)
        {
          goto LABEL_106;
        }

        v56[2] = v76;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
        v52 = v58;
        swift_arrayDestroy();
        if (v56[2])
        {
          v78 = v130;
          v77 = v132;
          v79 = sub_22F1229E8(v130, v132);
          v80 = v129;
          v13 = v134;
          if (v81)
          {
            v82 = v79;

            v83 = (v56[7] + 16 * v82);
            v78 = *v83;
            v77 = v83[1];
          }
        }

        else
        {
          v80 = v129;
          v78 = v130;
          v77 = v132;
          v13 = v134;
        }

        v2 &= v2 - 1;

        v18 = v136;
        if (!*(v80 + 16))
        {
          break;
        }

        v84 = sub_22F1229E8(v78, v77);
        if ((v85 & 1) == 0)
        {
          break;
        }

        v86 = v84;

        v87 = *(*(v80 + 56) + 8 * v86);
        if ([v139 rows] < 1 || (v136 & 0x8000000000000000) != 0 || v136 >= objc_msgSend(v139, sel_columns))
        {
          sub_22F299300();
          swift_allocError();
          *v124 = 0;
          v124[1] = v136;
LABEL_100:
          swift_willThrow();

          return v18;
        }

        [v139 floatAtRow:0 column:v136];
        v89 = v88;
        if ([v139 rows] < 1 || v87 < 0 || v87 >= objc_msgSend(v139, sel_columns))
        {
          sub_22F299300();
          swift_allocError();
          *v125 = 0;
          v125[1] = v87;
          goto LABEL_100;
        }

        [v139 floatAtRow:0 column:v87];
        v12 = v138;
        if (v90 < v89)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_22F2F2CA8(v138);
            v12 = result;
          }

          if (v87 >= v12[2])
          {
            goto LABEL_111;
          }

          *&v12[3 * v87 + 6] = v89;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v50 = v127;
        if ((result & 1) == 0)
        {
          result = sub_22F2F2CA8(v12);
          v12 = result;
        }

        v47 = v128;
        if (v136 >= v12[2])
        {
          goto LABEL_110;
        }

        LODWORD(v12[3 * v136 + 6]) = 0;
        v51 = v1;
      }

      v12 = v138;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v136 & 0x8000000000000000) != 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        result = sub_22F2F2CA8(v138);
        v12 = result;
        if ((v136 & 0x8000000000000000) != 0)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return result;
        }
      }

      if (v136 >= v12[2])
      {
        goto LABEL_109;
      }

      v91 = &v12[3 * v136];
      v92 = v91[5];
      v91[4] = v78;
      v91[5] = v77;

      v51 = v1;
      v50 = v127;
      v47 = v128;
    }
  }

  v10 = 0;
  v11 = v5 + 40;
  v12 = MEMORY[0x277D84F90];
  v135 = *(v5 + 2);
  v131 = v9 - 1;
  v13 = MEMORY[0x277D84F98];
  v14 = MEMORY[0x277D84F98];
  v137 = v5;
LABEL_7:
  v133 = v13;
  v15 = v14;
  v16 = &v11[16 * v10];
  while (1)
  {
    if (v10 >= *(v5 + 2))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v18 = *(v16 - 1);
    v17 = *v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22F131078(v10, v18, v17, isUniquelyReferenced_nonNull_native);
    if ([v2 rows] <= 0 || v10 >= objc_msgSend(v2, sel_columns))
    {
      break;
    }

    [v2 floatAtRow:0 column:v10];
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22F13F76C(0, v12[2] + 1, 1, v12);
    }

    v23 = v12[2];
    v22 = v12[3];
    v1 = v12;
    if (v23 >= v22 >> 1)
    {
      v1 = sub_22F13F76C((v22 > 1), v23 + 1, 1, v12);
    }

    *(v1 + 16) = v23 + 1;
    v24 = (v1 + 24 * v23);
    *(v24 + 4) = v18;
    *(v24 + 5) = v17;
    v24[12] = v21;
    v25 = sub_22F14F0AC(&unk_2843DC9F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
    swift_arrayDestroy();
    v26 = sub_22F1534D0(v25);
    v27 = sub_22F15E910(v18, v17, v26);

    if ((v27 & 1) != 0 && v21 > 0.0)
    {
      v28 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F131078(v10, v18, v17, v28);

      v2 = v139;
      v29 = v131 == v10++;
      v14 = v15;
      v13 = v133;
      v12 = v1;
      v5 = v137;
      if (v29)
      {
        goto LABEL_39;
      }

      goto LABEL_7;
    }

    ++v10;

    v16 += 2;
    v5 = v137;
    v2 = v139;
    v12 = v1;
    if (v135 == v10)
    {
      v14 = v15;
      v13 = v133;
      goto LABEL_39;
    }
  }

  sub_22F299300();
  swift_allocError();
  *v46 = 0;
  v46[1] = v10;
  swift_willThrow();

  return v18;
}

unint64_t sub_22F299300()
{
  result = qword_27DAB2F18;
  if (!qword_27DAB2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F18);
  }

  return result;
}

uint64_t sub_22F299354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F2993C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22F288380(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph36MaestroMusicCurationFeatureExtractorV0d7Curatorc7KeywordF15ExtractionError33_ADE8CC9DCE9E7513BF8BFAD382AEF020LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t MusicKitCatalogSongResponse.data.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_22F299488(uint64_t a1)
{
  v2 = sub_22F299680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2994C4(uint64_t a1)
{
  v2 = sub_22F299680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongResponse.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F28, &unk_22F781CF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F299680();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F2996D4();
    sub_22F741F10();
    (*(v6 + 8))(v9, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F299680()
{
  result = qword_2810AA140;
  if (!qword_2810AA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA140);
  }

  return result;
}

unint64_t sub_22F2996D4()
{
  result = qword_2810A9320;
  if (!qword_2810A9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F1A8480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9320);
  }

  return result;
}

unint64_t sub_22F299794()
{
  result = qword_27DAB2F30;
  if (!qword_27DAB2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F30);
  }

  return result;
}

unint64_t sub_22F2997EC()
{
  result = qword_2810AA130;
  if (!qword_2810AA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA130);
  }

  return result;
}

unint64_t sub_22F299844()
{
  result = qword_2810AA138;
  if (!qword_2810AA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA138);
  }

  return result;
}

uint64_t sub_22F299910()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F299954(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t *sub_22F299A7C(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  MEMORY[0x28223BE20](v7);
  v65 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v64 - v12;
  v14 = sub_22F73F690();
  v15 = *(v14 - 8);
  v70 = v14;
  v71 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v69 = v64 - v20;
  v21 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v21;
  v68 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_triggerResults) = MEMORY[0x277D84F90];
  v23 = a2[3];
  v22 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v24 = (*(v22 + 16))(v23, v22);
  if (v24)
  {
    v25 = v24;
    v64[1] = v6;
    v26 = a2[3];
    v27 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v26);
    v28 = (*(v27 + 24))(v26, v27);
    sub_22F29A0E8(v13);

    if ((*(v71 + 48))(v13, 1, v70) == 1)
    {
      sub_22F15FCF0(v13);
      v29 = sub_22F740B70();
      v30 = sub_22F7415E0();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_22F0FC000, v29, v30, "Unable to get first date in library", v31, 2u);
        MEMORY[0x2319033A0](v31, -1, -1);
      }
    }

    else
    {
      v40 = v70;
      v39 = v71;
      v41 = v69;
      (*(v71 + 32))(v69, v13, v70);
      LOBYTE(v72) = v21;
      v42 = v41;
      v43 = a2[3];
      v44 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v43);
      (*(v44 + 8))(v43, v44);
      v45 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v41, v18);
      v46 = *(v39 + 8);
      v47 = v18;
      v71 = v39 + 8;
      v48 = v46;
      v49 = (v46)(v47, v40);
      MEMORY[0x28223BE20](v49);
      v64[-2] = v45;
      v64[-1] = v25;
      v50 = sub_22F2A1FCC(sub_22F29B650, &v64[-4]);

      v51 = a2[3];
      v52 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v51);
      v53 = sub_22F2A6EB8(v50, v51, v52);

      if (v53)
      {
        v55 = v66;
        v54 = v67;
        v56 = v42;
        v57 = v65;
        (*(v66 + 104))(v65, *MEMORY[0x277D3C468], v67);
        v58 = static CollectionTrigger.generateTriggerResults(from:type:)(v53, v57);

        (*(v55 + 8))(v57, v54);
        v48(v56, v70);
        v59 = v68;
        swift_beginAccess();
        v60 = *(v3 + v59);
        *(v3 + v59) = v58;
      }

      else
      {

        v48(v42, v70);
        v61 = v68;
        swift_beginAccess();
        v62 = *(v3 + v61);
        *(v3 + v61) = MEMORY[0x277D84F90];
      }
    }
  }

  else
  {
    v32 = sub_22F740B70();
    v33 = sub_22F7415C0();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v72 = v35;
      *v34 = 136315138;
      v36 = sub_22F742240();
      v38 = sub_22F145F20(v36, v37, &v72);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_22F0FC000, v32, v33, "GraphWorkingContext not available. Skipping %s trigger", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x2319033A0](v35, -1, -1);
      MEMORY[0x2319033A0](v34, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

void sub_22F29A0E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v8 = &v23 - v7;
  v9 = [v2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_22F771EB0;
  v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v12 = sub_22F740DF0();
  v13 = [v11 initWithKey:v12 ascending:1];

  *(v10 + 32) = v13;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v14 = sub_22F741160();

  [v9 setSortDescriptors_];

  [v9 setFetchLimit_];
  v24 = [objc_opt_self() fetchAssetsWithOptions_];
  v15 = [v24 firstObject];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 creationDate];
    if (v17)
    {
      v18 = v17;
      sub_22F73F640();

      v19 = sub_22F73F690();
      (*(*(v19 - 8) + 56))(v8, 0, 1, v19);
    }

    else
    {

      v22 = sub_22F73F690();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
    }

    sub_22F168438(v8, a1);
  }

  else
  {
    v20 = sub_22F73F690();
    (*(*(v20 - 8) + 56))(a1, 1, 1, v20);

    v21 = v24;
  }
}

uint64_t sub_22F29A438()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22F29A48C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
}

uint64_t sub_22F29A568()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_22F29A5AC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t *sub_22F29A6D4(char *a1, uint64_t *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  MEMORY[0x28223BE20](v7);
  v70 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v65 - v12;
  v14 = sub_22F73F690();
  v75 = *(v14 - 8);
  v15 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v73 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v74 = &v65 - v18;
  v19 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v19;
  v69 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_triggerResults) = MEMORY[0x277D84F90];
  v20 = a2[3];
  v21 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v22 = (*(v21 + 16))(v20, v21);
  if (v22)
  {
    v23 = v22;
    v67 = v6;
    v68 = v3;
    v24 = a2[3];
    v25 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v24);
    v26 = (*(v25 + 24))(v24, v25);
    sub_22F29A0E8(v13);

    v27 = v75;
    if ((*(v75 + 48))(v13, 1, v14) == 1)
    {
      sub_22F15FCF0(v13);
      v3 = v68;
      v28 = sub_22F740B70();
      v29 = sub_22F7415E0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_22F0FC000, v28, v29, "Unable to get first date in library", v30, 2u);
        MEMORY[0x2319033A0](v30, -1, -1);
      }

      goto LABEL_14;
    }

    v38 = v74;
    (*(v27 + 32))(v74, v13, v14);
    LOBYTE(v76) = v19;
    v39 = a2[3];
    v40 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v39);
    v41 = v73;
    (*(v40 + 8))(v39, v40);
    v42 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v38, v41);
    v43 = *(v27 + 8);
    v73 = v14;
    v75 = v27 + 8;
    v44 = v43(v41, v14);
    MEMORY[0x28223BE20](v44);
    *(&v65 - 2) = v42;
    *(&v65 - 1) = v23;
    v45 = sub_22F2A1FCC(sub_22F29B648, (&v65 - 4));

    v46 = a2[3];
    v47 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v46);
    v48 = (*(v47 + 24))(v46, v47);
    v49 = [v48 librarySpecificFetchOptions];

    [v49 setPersonContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_22F771350;
    *(v50 + 32) = sub_22F742140();
    *(v50 + 40) = sub_22F742140();
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v51 = sub_22F741160();

    [v49 setIncludedDetectionTypes_];

    v52 = *(v45 + 16);
    v66 = v43;
    if (v52)
    {
      v53 = sub_22F10B348(v52, 0);
      v54 = sub_22F11A438(&v76, v53 + 4, v52, v45);
      sub_22F1534EC();
      if (v54 == v52)
      {
LABEL_13:
        v3 = v68;
        v55 = objc_opt_self();
        v56 = sub_22F741160();

        v57 = [v55 fetchPersonsWithLocalIdentifiers:v56 options:v49];

        v59 = v70;
        v58 = v71;
        v60 = v72;
        (*(v71 + 104))(v70, *MEMORY[0x277D3C468], v72);
        v61 = static CollectionTrigger.generateTriggerResults(from:type:)(v57, v59);

        (*(v58 + 8))(v59, v60);
        v66(v74, v73);
        v62 = v69;
        swift_beginAccess();
        v63 = *(v3 + v62);
        *(v3 + v62) = v61;

        goto LABEL_14;
      }

      __break(1u);
    }

    goto LABEL_13;
  }

  v31 = sub_22F740B70();
  v32 = sub_22F7415C0();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v76 = v34;
    *v33 = 136315138;
    v35 = sub_22F742240();
    v37 = sub_22F145F20(v35, v36, &v76);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_22F0FC000, v31, v32, "GraphWorkingContext not available. Skipping %s trigger", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2319033A0](v34, -1, -1);
    MEMORY[0x2319033A0](v33, -1, -1);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}